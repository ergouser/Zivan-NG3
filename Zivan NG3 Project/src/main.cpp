/* 
Zivan NG3 controller made by Wout Osse 
USE AT YOUR OWN RISK - i take zero responsibilities 

Greatly inspired by Dave Mellick from CustomCircuitSolutions and some insight from 'green caveman' on diyelectriccar.com

Original forum topic that got me started on this: https://www.diyelectriccar.com/threads/ng3-chargers-cant-current-limit-on-lithium-batteries.64827/page-1

NOTE: THE COOLING FINS ON THE NG3 ARE AC OR +vBAT, NO TOUCHING! 

VOLTAGE PART IS QUITE STABLE, CURRENT ONLY TESTED ON LOW AMPS. PLEASE START AT LOW AMPS AND WORK YOUR WAY UP.


>>> NOTE YOUR PINDEF. THIS ONE CHANGED ON MAY 7th 2023! 
*/

#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include "definitions.h"
#include "Display.h"

void set_cc(uint8_t value);
void set_cv(uint8_t value);
void buzzerHIGH(uint16_t ms);
void buzzerLOW(uint16_t ms);
void ledState(uint8_t color);


/////////////////////////////////////////////////////////////
//USER ZIVAN SETTINGS -> Change to YOUR model////////////////
/////////////////////////////////////////////////////////////

// R20 next to battery out -> Somewhere in the neighbourhood of: 24V=92k, 72V=270k, 96v = 390k, 144V = 560k
// 'constants' - depend upon your model.
const unsigned long POWER_BOARD_RESISTOR = 280000; //value in ohms of the R20 resistor(s) on the power board. Mine is 280k which I put in myself.
const uint16_t U_POT_RESISTANCE = 1750; // The value of the left U pot - In the middle, then adjust the pot so SET_mVOLTAGE matches real voltage (measure with DMM)
// More theory on good scaling: Set here to 2k - %actualVrange (from 2k -> 0) as SET_mVOLTAGE is from 'actual' voltagerange (actualMax - actualMin)
// Example; I want 70v. Calculate min and max with pot at 1k. Let's say that's 66v and 92v = 26v range. Now 70-66=4. 4/26 = 0.15 -> 2k - 0.15*2k = 1700. For 70v I set this U_POT_RESISTANCE value here to 1700. Adjust the actual pot later to match the voltage
const uint16_t R9 = 6800; // R9 is in series with U_POT - supposedly always 6.8k
const uint16_t maxRatedAmps = 26400; //What is on the sticker? // probably the real max is quite a bit higher. I have a feeling that changing voltage, also changes (max) current, but at your own risk. So changing R20 is all you need.
// More theory: There are a few 'power versions'. ie max power or a lower power version of the NG3. Max power is 72V35A - 36A, lesser power is 26.4As. I have a 96V22A model, so that is the 'lower power' version ie I use the lower power 72V rating.

/////////////////////////////////////////////////////////////
//BATTERY SETTINGS -> DEPEND ON YOUR PACK!///////////////////
/////////////////////////////////////////////////////////////
const uint16_t SET_mCURRENT = 2000;   // Max AMPS - Constant Current phase. Can be same or lower than maxRatedAmps. >>LOW FOR NOW, NOT SURE WHAT OUTCOME IS IF HIGH<<
const uint16_t SET_CUTOFF_mAMPS = 500;    // Min amps for CV to idle. Rule of thumb = C/20. So for a 230Ah pack, 230/20 = 11.5A = 11500mA. >>TESTING TBD<<
const unsigned long SET_mVOLTAGE = 68000; //-- CC to CV flipover point / max mV -- 3.4V * 24 cells = 81.6V = 81600mV for my pack. Set your desired voltage HERE. Then adjust Vpot to spec.

#define OVERTEMP 100 //NO Clue what this is. It's close to 0 when cold. Might ramp up quickly when overtemp. Range between 0-1024 (analogread). Exceeding this puts Zivan in overtemp protection - max is calculated to be 3.75v or 3.75v/5v*1024 = 768
#define PSU_OVERRIDE //Comment to disable - if defined, the Zivan will run in PSU mode, independant of TP jumper.
//#define DEBUG //comment to disable - for final deployment --> Know that you have to unplug the USB before turning on the Zivan, then connect again.
//#define SELF_RESET //comment to disable - defining this, enables self reset after 20 min after an overtemp scenario. Otherwise goes DARK (Fans off, LED=RED, no output, screen shows error)
const int correctionFactor = 101; //100 = base - Voltage offset for the sensing part. Has no influence on the 'output'  part - theyre unconnected. However, If the sensed voltage is way lower than actual, it might never go into CV mode & quit.
// A higher  correctionFactor makes it read a higher voltage than it actually is. Only changes the ' voltage range ' not minvoltage.

#define alternative_current
/////////////////////////////////////////////////////////////
//END OF SETTINGS/////MESS ON YOUR OWN RISK BEYOND HERE//////
/////////////////////////////////////////////////////////////

Display *display;
uint8_t counter = 0;
bool charge_mode;
unsigned long lastUpdate;
unsigned long startTime;

// State machine
enum States {IDLE, SOFTSTART, CONSTANT_CURRENT, CONSTANT_VOLTAGE, DARK};
uint8_t state = SOFTSTART; 
// Colors
enum Color {OFF, RED, YELLOW, GREEN};
uint8_t color = OFF;

// def -- all values are in mV or mA /x1000
unsigned long voltage; 
unsigned long current;
unsigned long idlingSince = 0;

uint8_t voltage_pot_bits; 
uint8_t current_pot_bits;

uint16_t totalRes; // = (R9 + U_POT_RESISTANCE);
unsigned long minVoltage; // = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*1954); // Define min and max voltage this controller can instruct - mV 
unsigned long maxVoltage; // = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*2710); // PB:280k + R9 6.8k + POT: = 82.4V - 114.2 / UPOT@2k = 64.1V - 88.9V
uint16_t voltageRange; // = (maxVoltage - minVoltage);  note max 65v range due to 16bit int.

uint16_t TEMP;

//Capacity calc
float mAh = 0;

#ifdef SELF_RESET
void(* resetFunc) (void) = 0;//declare reset function at address 0
#endif


/////////////////////////////////////////////////////////////
//SETUP STARTS HERE//////////////////////////////////////////
/////////////////////////////////////////////////////////////


void setup() {
  #ifdef DEBUG
  Serial.begin(9600);
  Serial.println("setup...");
  #endif
  
  display = new Display();

  // Essentials
  pinMode(ZSS, OUTPUT);
  pinMode(WDO, OUTPUT);
  
  pinMode(SS, OUTPUT); // --- Should be handled by SPI.begin() here in Setup.
  pinMode(CLK, OUTPUT);
  pinMode(SDI, OUTPUT);
  
  // non-essentials 
  pinMode(FANS, OUTPUT);
  pinMode(SOUNDER, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  //pinMode(TP, INPUT);
  //pinMode(AH, INPUT);
  pinMode(TEMP_IN, INPUT);
  //pinMode(AUX1, OUTPUT);
  //pinMode(AUX2, OUTPUT);

  // Start up with Soft start and Chip select HIGH
  digitalWrite(ZSS, HIGH); //Ensure charger output is disable at startup
  digitalWrite(SlaveSelect, HIGH); 

  // These are used to calculate pot bits & voltage readings.
  totalRes = (R9 + U_POT_RESISTANCE);
  minVoltage = (((totalRes + POWER_BOARD_RESISTOR)/(float)totalRes)*1954); // Define min and max voltage this controller can instruct based on set POT. 
  maxVoltage = (((totalRes + POWER_BOARD_RESISTOR)/(float)totalRes)*2710); // PB:280k + R9 6.8k + POT: = 82.4V - 114.2 / UPOT@2k = 64.1V - 88.9V
  voltageRange = (maxVoltage - minVoltage);

  #ifdef PSU_OVERRIDE
  charge_mode = false; //If defined override, PSU mode enabled.
  #else 
  charge_mode = true;
  #endif
  
  display->printInit(SET_mVOLTAGE, SET_mCURRENT, SET_CUTOFF_mAMPS, charge_mode); // Print settings

  //delay(2000);
  //Check if the set voltage is OK. 
  if (SET_mVOLTAGE > maxVoltage || SET_mVOLTAGE < minVoltage) {
    #ifdef DEBUG
    Serial.println("Set v outside range");
    Serial.print("SET: "), Serial.print(SET_mVOLTAGE), Serial.print("   MAX:"), Serial.print(maxVoltage), Serial.print("   MIN:"), Serial.print(minVoltage);
    Serial.print("   totRes"), Serial.print(totalRes), Serial.print("  PBR"), Serial.println(POWER_BOARD_RESISTOR);
    #endif
    display->minVoltage = minVoltage;
    display->maxVoltage = maxVoltage;
    display->setVoltage = SET_mVOLTAGE;
    display->printFailure(0);
    while(millis() < 60000) {
      buzzerHIGH(200);    //let be known settings are incorrect
      delay(200);
      buzzerHIGH(500);
      delay(200);
    }
    state = DARK;
  }

  // Init digiPot SPI link - AD8402 that actually does the most important job here.
  SPI.begin(); 
  SPI.beginTransaction(SPISettings(10000000,MSBFIRST,SPI_MODE0));

  // Setup OK
  digitalWrite(FANS, HIGH); // Fans on

  #ifdef DEBUG
  Serial.println("..OK");
  #endif
}


/////////////////////////////////////////////////////////////
//MAIN PROGRAM STARTS HERE///////////////////////////////////
/////////////////////////////////////////////////////////////

void loop() {

  // Set CC and CV levels - these don't change during charging, cant increase during softstart pulled low.
  voltage_pot_bits = (((SET_mVOLTAGE - minVoltage)/((float)voltageRange))*256);
  set_cv(voltage_pot_bits);
  current_pot_bits = ((SET_mCURRENT/((float)maxRatedAmps))*256); // Better is to measure and make your own equation
  // Theory time! It seems like it reads the amps going INTO the charger. So if you take into account the 85-90% efficiency here too, that might work.
  delay (50);
  set_cc(current_pot_bits);
  

  #ifdef DEBUG
  Serial.println("Beep!");
  #endif
  buzzerHIGH(200); // 200 ms beep - to announce we're ready for take-off

  while(1) {
    // WATCHDOG
    digitalWrite(WDO, HIGH);
    delay(1);
    digitalWrite(WDO, LOW);

    // VOLTAGE & CURRENT READINGS
    voltage = (((analogRead(VOLTAGE_IN)/1024.f)*voltageRange)*(correctionFactor/100.f) + minVoltage);
    #ifdef alternative_current
    current = (analogRead(CURRENT_IN)/1024.f)*(2550000/(voltage/1000.f)); //The 2550*1000 comes from 3000W*0.85% efficiency - still prob doesn't equate, but OK.
    //TheoryTime, The 'shunt' in the reverse engineered diagram would actually assume it's linear. But that assumes its measuring currents going out the FETS, I think it's currents going INTO the FETs and therefore NOT linear. 
    //I think this because the idea is that there is only one version of the Zivan power board - with R20 and 21 swapped out as desired. 
    #else
    current = ((analogRead(CURRENT_IN)/1024.f)*maxRatedAmps); // this probably doesn't equate.
    #endif


    // OVERTEMP 
    TEMP = analogRead(TEMP_IN);
    if (TEMP>=OVERTEMP && millis()>5000) { //Overtemp?? No clue how this equates to actual temp. BUT, this should be monitored atleast.
      digitalWrite(ZSS, HIGH); //Disable output, even before our Wdog does it.
      #ifdef DEBUG
      Serial.println("overtemp!: ");
      Serial.println(TEMP);
      #endif
      display->Temp = TEMP;
      display->printFailure(2);
        while((lastUpdate + 12e5) > millis()) { //20 min of this annoying sound
          ledState(OFF);
          buzzerHIGH(200);    
          delay(200);
          ledState(RED);
          buzzerLOW(500);
          delay(200);
        } 

      #ifdef SELF_RESET //Self reset if defined in settings
      resetFunc(); //call reset  //MIGHT BE DANGEROUS TO KEEP THIS HERE, RESETS WHEN HOT?
      #endif

      ledState(RED); //Otherwise RED led, Fans OFF & dark so the screen stays on error.
      digitalWrite(FANS, LOW);    
      state = DARK;
      } // END OF OVERTEMP
    
    //ON DISPLAY
    if (state != DARK && (lastUpdate+200) < millis()) {  //millis over 2000, so gives some time  to read the settings.
      
      mAh += current*(millis()-lastUpdate)/float(3600000);
      display->printData(((voltage<(minVoltage+120)? 0 : voltage)/(float)1000), (current/(float)1000), charge_mode? state : 4, mAh, TEMP); //"voltage" will always be >= minVoltage, even with 0 analogRead. +125 makes sure one voltage byte is covered.
      lastUpdate = millis();

      // DEBUG
      #ifdef DEBUG
      Serial.print("V:"), Serial.print(voltage/(float)1000), Serial.print("_A:"), Serial.print(current/(float)1000);
      Serial.print("_VB:"), Serial.print(analogRead(VOLTAGE_IN)), Serial.print("_IB:"), Serial.print(analogRead(CURRENT_IN));
      Serial.print("_State:"), Serial.print(state);
      Serial.print("_VPB:"), Serial.print(voltage_pot_bits);
      Serial.print("_CPB:"), Serial.print(current_pot_bits);
      // Serial.print("   SET:"), Serial.print(SET_mVOLTAGE), Serial.print("   MAX:"), Serial.print(maxVoltage), Serial.print("    MIN:"), Serial.println(minVoltage);
      Serial.print("_MODE"), Serial.print(charge_mode);
      Serial.print("_T:"), Serial.println(TEMP);
      #endif 
    } //End of routine Display

    // Check for OVERSHOOT / CONNECTED BATTERY
    #ifdef BATTERY_CHECK
    if (charge_mode == true && millis() < 10000 && voltage > (SET_mVOLTAGE+2000)) { //Overshoot only when battery not connected //indicate failure
      #ifdef DEBUG
        Serial.println("Overshoot");
      #endif
      digitalWrite(ZSS, HIGH); //Turn off // We don't want people connecting the battery after turning on the power..
      display->printFailure(1);
      while((lastUpdate + 10000) > millis()) {
        ledState(OFF);
        buzzerHIGH(200);    // No battery connected
        delay(200);
        ledState(RED);
        buzzerLOW(500);
        delay(200);
      } 
      digitalWrite(FANS, LOW); //fans off, if they werent already.. 
      state = DARK;
    }
    #endif

    //STATE MACHINE 
    // >>>>
    // <<<< 
    
    if (state == SOFTSTART) { 
      digitalWrite(ZSS, LOW); // Pull SoftStart low to enable output
      
      ledState(RED);
      state = CONSTANT_CURRENT; //Switch to CC mode 
      
      #ifdef DEBUG
        Serial.println("SS-CC");
      #endif

    //CC
    } else if (state == CONSTANT_CURRENT) { 
      Serial.println("at CC");
      if ((voltage+500) >= SET_mVOLTAGE && millis()>10000) {  //Added 500mV to compensate for any voltage errors. So it actually goes into CV mode to allow it to quit.
        
        state = CONSTANT_VOLTAGE;
        ledState (YELLOW);
       
        #ifdef DEBUG
          Serial.println("CC-CV");
        #endif
      }

    //CV
    } else if (state == CONSTANT_VOLTAGE) { 
      delay(1);
      if (current <= SET_CUTOFF_mAMPS && charge_mode) {  
        #ifdef DEBUG
        Serial.println("CV-IDLE");
        #endif

        state = IDLE;
        idlingSince = millis();

        ledState(GREEN);

        digitalWrite(ZSS, HIGH); // Disable output
      } 

      // Note max current is limited by CC settings, this is just for show.
      if (charge_mode == 0) { 
        if (current < 1000) { 
          ledState(GREEN);
        } else if (current < 5000 && current > 1000) { 
          ledState(YELLOW); 
        } else if (current > 5000) { 
          ledState(RED);
        }
      }
    

    } else if (state == IDLE && (idlingSince + 12e5) < millis()) {  // turn off display after 20min of idling to prevent burn in.
      display->off();
      digitalWrite(FANS, LOW); // Turn off fans - we cool by now.
      #ifdef DEBUG
      Serial.println("IDLE -> DARK");
      #endif 
      state = DARK; // to prevent updating screen.

    } else if (state == DARK) {
      digitalWrite(ZSS, HIGH); //Make sure we're off - bitflips & all. 
      if (TEMP>OVERTEMP) { 
        digitalWrite(FANS, HIGH);
        delay(60000);
        digitalWrite(FANS, LOW);
      }
    }
  
  } //end of while
  //code  to run if while loop broken
} // End of loop


/////////////////////////////////////////////////////////////
//END OF MAIN -- SUBROUTINES/////////////////////////////////
/////////////////////////////////////////////////////////////



// The AD8402 uses the last 10 bits it received when SS goes low - 
// therefore it doesn't matter the Arduino can't send out 2bit channel followed by 8 bit value
// W1 = channel 0 = current control 
// W2 = channel 1 = voltage control 

void set_cv(uint8_t value) {
  // take the SS pin low to select the chip:
  digitalWrite(SlaveSelect, LOW);

  delay (1);

  //  send in the address and value via SPI:
  SPI.transfer((uint8_t)1);
  SPI.transfer(value);

  delay (1);

  // take the SS pin high to de-select the chip:
  digitalWrite(SlaveSelect, HIGH);
}


void set_cc(uint8_t value) {
  // take the SS pin low to select the chip:
  digitalWrite(SlaveSelect, LOW);
  delay(1);

  //  send in the address and value via SPI:
  SPI.transfer((uint8_t)0);
  SPI.transfer(value);
 
  delay (1);

  // take the SS pin high to de-select the chip:
  digitalWrite(SlaveSelect, HIGH);
}


void buzzerHIGH(uint16_t ms) {  // Can't be used during loop > 500ms, because watchdog needs kicking.
  startTime = millis();
  while ((startTime + ms) > millis()) { 
    digitalWrite(SOUNDER, HIGH);
    delay(1);
    digitalWrite(SOUNDER, LOW);
    delay(1);
  }
}

void buzzerLOW(uint16_t ms) {  // Can't be used during loop > 500ms, because watchdog needs kicking.
  startTime = millis();
  while ((startTime + ms) > millis()) { 
    digitalWrite(SOUNDER, HIGH);
    delay(1);
    digitalWrite(SOUNDER, LOW);
    delay(2);
  }
}


void ledState(uint8_t color) { 
  if (color == OFF) { 
    digitalWrite(LED1, HIGH); // HIGH disables the LED, LOW for on.
    digitalWrite(LED2, HIGH);
  } else if (color == RED) { 
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, LOW);
  } else if (color == YELLOW) { 
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
  } else if (color == GREEN) { 
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, HIGH);
  }
}
