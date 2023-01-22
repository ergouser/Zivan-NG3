/* 
Zivan NG3 controller made by Wout Osse 
USE AT YOUR OWN RISK - i take zero responsibilities 

Greatly inspired by Dave Mellick from CustomCircuitSolutions and some insight from 'green caveman' on diyelectriccar.com

Original forum topic that got me started on this: https://www.diyelectriccar.com/threads/ng3-chargers-cant-current-limit-on-lithium-batteries.64827/page-1

NOTE: THE COOLING FINS ON THE NG3 ARE AC OR +vBAT, NO TOUCHING! 

VOLTAGE PART IS QUITE STABLE, CURRENT ONLY TESTED ON LOW AMPS. PLEASE START AT LOW AMPS AND WORK YOUR WAY UP.
*/

#define DEBUG //comment to disable - for final deployment --> Know that you have to unplug the USB before turning on the Zivan, then connect again.

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

// R20 next to battery out -> Somewhere in the neighbourhood of: 24V=92k, 72V=280k?, 96v = 390k, 144V = 560k
// 'constants' - depend upon your model.
unsigned long POWER_BOARD_RESISTOR = 280000; //value in ohms of the R20 resistor(s) on the power board. Somewhere in the neighbourhood of: 24V=92k, 72V=280k, 96v = 390k, 144V = 560k
uint16_t U_POT_RESISTANCE = 1750; // The value of the left U pot - In the middle, then adjust the pot so SET_mVOLTAGE matches real voltage (measure with DMM)
// More theory on good scaling: Set here to 2k - %actualVrange (from 2k -> 0) as SET_mVOLTAGE is from 'actual' voltagerange (actualMax - actualMin)
uint16_t R9 = 6800; // R9 is in series with U_POT.
float maxRatedAmps = 26400; //What is on the sticker? // probably the real max is quite a bit higher. I have a feeling that changing voltage, also changes (max) current, but at your own risk. So changing R20 is all you need.
// More theory: There are a few 'power versions'. ie max power or a lower power version of the NG3. Max power is 72V35A - 36A, lesser power is 26.4As. I have a 96V22A model, so that is the 'lower power' version ie I use the lower power 72V rating.


/////////////////////////////////////////////////////////////
//BATTERY SETTINGS -> DEPEND ON YOUR PACK!///////////////////
/////////////////////////////////////////////////////////////
uint16_t SET_mCURRENT = 1000;   // Max AMPS - Constant Current phase. Can be same or lower than maxRatedAmps. >>LOW FOR NOW, NOT SURE WHAT OUTCOME IS IF HIGH<<
uint16_t SET_CUTOFF_mAMPS = 200;    // Min amps for CV to idle. Rule of thumb = C/20. So for a 230Ah pack, 230/20 = 11.5A = 11500mA. >>TESTING TBD<<
unsigned long SET_mVOLTAGE = 70000; //-- CC to CV flipover point / max mV -- 3.4V * 24 cells = 81.6V = 81600mV for my pack. Set your desired voltage HERE. Then adjust Vpot to spec.

/////////////////////////////////////////////////////////////
//END OF SETTINGS/////MESS ON YOUR OWN RISK BEYOND HERE//////
/////////////////////////////////////////////////////////////

Display *display;
uint8_t counter = 0;
uint8_t TPmode;
unsigned long lastUpdate;

// State machine
enum States {IDLE, SOFTSTART, CONSTANT_CURRENT, CONSTANT_VOLTAGE, DARK};
uint8_t state = SOFTSTART; 
// Colors
enum Color {OFF, RED, YELLOW, GREEN};
uint8_t color = OFF;

// def -- all values are in mV or mA /x1000
unsigned long voltage; 
unsigned long current;
unsigned long lastVoltage;
unsigned long lastCurrent;
unsigned long idlingSince = 0;

uint8_t voltage_pot_bits; 
uint8_t current_pot_bits;

float totalRes; // = (R9 + U_POT_RESISTANCE);
unsigned long minVoltage; // = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*1954); // Define min and max voltage this controller can instruct - mV 
unsigned long maxVoltage; // = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*2710); // PB:280k + R9 6.8k + POT: = 82.4V - 114.2 / UPOT@2k = 64.1V - 88.9V
float voltageRange; // = (maxVoltage - minVoltage); 

unsigned long actualMin;
unsigned long actualMax;

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
  pinMode(TP, INPUT);

  // Start up with Soft start and Chip select HIGH
  digitalWrite(SS, HIGH); //Ensure charger output is disable at startup
  digitalWrite(SlaveSelect, HIGH);


  totalRes = (R9 + U_POT_RESISTANCE);
  minVoltage = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*1954); // Define min and max voltage this controller can instruct based on set POT. 
  maxVoltage = (((totalRes + POWER_BOARD_RESISTOR)/totalRes)*2710); // PB:280k + R9 6.8k + POT: = 82.4V - 114.2 / UPOT@2k = 64.1V - 88.9V
  voltageRange = (maxVoltage - minVoltage);

  actualMin = ((((float)R9 + 2000 + POWER_BOARD_RESISTOR)/(R9 + 2000))*1954); //Assuming pot is at 2k
  actualMax = ((((float)R9 + POWER_BOARD_RESISTOR)/R9)*2710); //Assuming pot is at 0.


  //Check if the set voltage is OK
  if (SET_mVOLTAGE > actualMax || SET_mVOLTAGE < actualMin) {
    #ifdef DEBUG
    Serial.println("...failed! Set Voltage outside perimeters");
    Serial.print("SET: "), Serial.print(SET_mVOLTAGE), Serial.print("   MAX:"), Serial.print(actualMax), Serial.print("   MIN:"), Serial.print(actualMin);
    Serial.print("   totalRes:"), Serial.print(totalRes), Serial.print("  PBR"), Serial.println(POWER_BOARD_RESISTOR);
    #endif
    display->printFailure(0);
    while(1) {
      buzzerHIGH(200);    //let them know settings are incorrect
      delay(200);
      buzzerHIGH(500);
      delay(200);
    }
  }

  // Init digiPot SPI link.
  SPI.begin(); 
  SPI.beginTransaction(SPISettings(10000000,MSBFIRST,SPI_MODE0));

  // Setup OK
  digitalWrite(FANS, HIGH); // Fans on
  TPmode = digitalRead(TP); //Read TP mode, header in = LOW -- NOTE THIS ONLY WORKS WITH ZIVAN PLUGGED IN  
  

  #ifdef DEBUG
  Serial.println("...completed!");
  #endif
}


/////////////////////////////////////////////////////////////
//MAIN PROGRAM STARTS HERE///////////////////////////////////
/////////////////////////////////////////////////////////////

void loop() {

  // Set CC and CV levels - these don't change during charging - in loop because of IO possibilities.
  voltage_pot_bits = (((SET_mVOLTAGE - minVoltage)/voltageRange) *256);
  set_cv(voltage_pot_bits);
  current_pot_bits = ((SET_mCURRENT/maxRatedAmps)*256); // Better is to measure and make your own equation
  delay (200);
  set_cc(2); // Low start

  #ifdef DEBUG
  Serial.println("Beep!");
  #endif
  buzzerHIGH(200); // 200 ms beep - to announce we're ready for take-off

  //Kick the first dog
  digitalWrite(WDO, HIGH);
  delay(1);
  digitalWrite(WDO, LOW);


while(1) { 
    //see how we doin
    voltage = (((analogRead(VOLTAGE_IN)/(float)1024)*voltageRange) + minVoltage); 
    current = ((analogRead(CURRENT_IN)/(float)1024)*maxRatedAmps); // this probably doesn't equate.

    //on display when new info available 
    if ( (lastVoltage != voltage || lastCurrent != current) && state != DARK && (lastUpdate+250) < millis()) { 
      if (voltage < (minVoltage + 10)) {  //"voltage" will always be >= minVoltage, even with 0 analogRead. 
        display->printData(0, (current/(float)1000), state);
        } else {
        display->printData((voltage/(float)1000), (current/(float)1000), state);
        }

    lastCurrent = current;
    lastVoltage = voltage;
    lastUpdate = millis();

    #ifdef DEBUG
    Serial.print("V:"), Serial.print(voltage/(float)1000), Serial.print("   A:"), Serial.print(current/(float)1000);
    Serial.print("   VBYTE:"), Serial.print(analogRead(VOLTAGE_IN)), Serial.print("   IBYTE:"), Serial.print(analogRead(CURRENT_IN));
    Serial.print("   State:"), Serial.print(state);
    Serial.print("   VPB:"), Serial.print(voltage_pot_bits);
    Serial.print("   CPB:"), Serial.print(current_pot_bits);
    // Serial.print("   SET:"), Serial.print(SET_mVOLTAGE), Serial.print("   MAX:"), Serial.print(maxVoltage), Serial.print("    MIN:"), Serial.println(minVoltage);
    Serial.print("   TP?:"), Serial.println(TPmode);
    #endif 
    }

    if (state == SOFTSTART) { 
      #ifdef DEBUG
      Serial.println("SoftStart -> CC");
      #endif

      state = CONSTANT_CURRENT; //Switch to CC mode 

      digitalWrite(ZSS, LOW); // Pull SoftStart low to enable output
      ledState(RED);
      delay(100);
      set_cc(current_pot_bits); //Now go to full power.

    
    } else if (state == CONSTANT_CURRENT) { 
      if (voltage >= SET_mVOLTAGE) {  
        #ifdef DEBUG
        Serial.println("CC -> CV");
        #endif

        state = CONSTANT_VOLTAGE;
        ledState (YELLOW);
      }

    } else if (state == CONSTANT_VOLTAGE) { 
      if (current <= SET_CUTOFF_mAMPS && TPmode == 1) { 
        #ifdef DEBUG
        Serial.println("CV -> IDLE");
        #endif

        state = IDLE;
        idlingSince = millis();

        ledState(GREEN);

        digitalWrite(ZSS, HIGH); // Disable output

        if (millis() < 1100 && voltage > (SET_mVOLTAGE+1000)) { //Overshoot only when battery not connected //indicate failure

          #ifdef DEBUG
          Serial.println("NO BATTERY CONNECTED / REACHED IDLE STATE in <1000MS");
          #endif
          digitalWrite(FANS, LOW); //fans off
          display->printFailure(1);
          while(1) {
            ledState(OFF);
            buzzerHIGH(200);    // No battery connected
            delay(200);
            ledState(RED);
            buzzerLOW(500);
            delay(200);
          }
        }
      } 
      // Note max current is still limited by CC settings.
      if (TPmode == 0) { 
        if (current < 1000) { 
          ledState(GREEN);
        } else if (current < 5000 && current > 1000) { 
          ledState(YELLOW); 
        } else if (current > 5000) { 
          ledState(RED);
        }
      }
    

    } else if (state == IDLE && (idlingSince + 1.8e6) < millis()) {  // turn off display after 30min of idling to prevent burn in.
      display->off();
      digitalWrite(FANS, LOW); // Turn off fans - we cool by now.
      #ifdef DEBUG
      Serial.println("IDLE -> DARK -- Houston we're going dark!");
      #endif 
      state = DARK; // to prevent updating screen. s
      }

    //kick the watchdog, 1.0 - 1.6sec timeout
    if (counter >= 10) { 
    digitalWrite(WDO, HIGH);
    delay(1);
    digitalWrite(WDO, LOW);
    counter = 0;
    } else {
    counter++;
    }

  }
  // Run this code if while loop broken
}


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
  unsigned long startTime = millis();
  while ((startTime + ms) > millis()) { 
    digitalWrite(SOUNDER, HIGH);
    delay(1);
    digitalWrite(SOUNDER, LOW);
    delay(1);
  }
}

void buzzerLOW(uint16_t ms) {  // Can't be used during loop > 500ms, because watchdog needs kicking.
  unsigned long startTime = millis();
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
