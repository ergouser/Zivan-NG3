///////////////////////////////////////////////////////////
//FILE: NGC.c
//DATE: 1/12/2011
//AUTHOR: CCS
//VERSION: 1.1
//COMPILER: Microchip MPLAB with HI-TECH C Lite v9.8 for PIC18 devices
//REVISION HISTORY: 
//v1.0: Initial Release
///////////////////////////
//v1.1: First Public Release

///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
//DO NOT MODIFY ANY CODE IN THE FOLLOWING SECTION.
//CODE THAT CAN AND SHOULD BE MODIFIED WILL BE SPECIFIED 
//BELOW. IT IS HOWEVER RECOMMENDED THAT YOU READ AND TRY
//TO UNDERSTAND ALL CODE IN ORDER TO UNDERSTAND HOW IT
//WORKS.
///////////////////////////////////////////////////////////
#include <htc.h>

//Configuration bits for internal clock settings.
#pragma config IESO = OFF
#pragma config FOSC = INTIO67
#pragma config PRICLKEN = ON
#pragma config FCMEN = OFF
#pragma config PLLCFG = ON

//These are 4 digital inputs that can be configured anyway
//one wants to use them. There names mean nothing other than
//how they are labeled next to the pins on the digital 
//logic controller board.
#define C0  PORTCbits.RC4 
#define C1  PORTCbits.RC3
#define TP	PORTCbits.RC2
#define AH  PORTCbits.RC1

//These define the digital output pins used to control various 
//features of the board.
#define CS2     LATB0 //Chip select for the digital potentiometer
#define SS      LATC7 //Soft start pin, but used to enable/disable charging
#define WDO     LATB5 //Watchdog Output pin, must toggle to keep charger running
#define FANS    LATB4 //Enables the fans
#define AUX1    LATA7 //Controls aux relay #1
#define AUX2    LATA6 //Controls aud relay #2
#define SOUNDER LATA4 //Controls digital sounder, requires a square wave for sound
#define LEDG    LATC5 //Controls the green LED
#define LEDR    LATC6 //Controls the red LED

//These are the channel defines for the analog to digital converter
#define PRI_CURRENT_CH 0
#define OVER_TEMP_CH   1
#define EXT_TEMP_CH    2
#define VOLTAGE_CH     3
#define CURRENT_CH     4

//PROTOTYPE FUNCTIONS
void initialization(void);
short get_sample(short channel);
void set_cv(unsigned char bits);
void set_cc(unsigned char bits);

unsigned short pri_current_bits = 0;
unsigned short over_temp_bits = 0;
unsigned short ext_temp_bits = 0;
unsigned short voltage_bits = 0;
unsigned short current_bits = 0;
unsigned char digital_pot_bits = 0;

float pri_current = 0;
float over_temp = 0;
float ext_temp = 0;
float voltage = 0;
float current = 0;



#define IDLE             0
#define SOFT_START       1
#define CONSTANT_CURRENT 2
#define CONSTANT_VOLTAGE 3

//Different possible programming configurations
//Currently I'm only using a different constant current
#define MAX_VOLTS_1  158.5
#define MAX_AMPS_1    11.0
#define MIN_AMPS_1     0.2

#define MAX_VOLTS_2  158.5
#define MAX_AMPS_2     9.0
#define MIN_AMPS_2     0.2

#define MAX_VOLTS_3  158.5
#define MAX_AMPS_3     7.0
#define MIN_AMPS_3     0.2

#define MAX_VOLTS_4  158.5
#define MAX_AMPS_4     5.0
#define MIN_AMPS_4     0.2

unsigned char state = SOFT_START;
unsigned long i = 0;

float constant_current = 0;
float minimum_current = 0;
float constant_voltage = 0;
float cell_voltage_setpoint = 0; 


/////////////////////////////////////////////////////////////
//MAIN PROGRAM STARTS HERE///////////////////////////////////
/////////////////////////////////////////////////////////////
void main(void)
{
  //Initialize hardware
  initialization(); //Should not need to modify anything here

  //Determine the desired charging profile from two switches that are
  //connected to C0 and C1. Switches can be added to TP and AH as well
  //to add even more options.
  if( ( C0 == 0 ) && ( C1 == 0 ) ) { 
    constant_voltage = MAX_VOLTS_1;
    constant_current = MAX_AMPS_1;
    minimum_current =  MIN_AMPS_1;   
  }
  if( ( C0 == 0 ) && ( C1 == 1 ) ) {
    constant_voltage = MAX_VOLTS_2;
    constant_current = MAX_AMPS_2;
    minimum_current =  MIN_AMPS_2;   
  }
  if( ( C0 == 1 ) && ( C1 == 0 ) ) {
    constant_voltage = MAX_VOLTS_3;
    constant_current = MAX_AMPS_3;
    minimum_current =  MIN_AMPS_3;   
  }
  if( ( C0 == 1 ) && ( C1 == 1 ) ) {
    constant_voltage = MAX_VOLTS_4;
    constant_current = MAX_AMPS_4;
    minimum_current =  MIN_AMPS_4;
  }

  //Set the constant voltage settings of the AD8402
  //CV digital pot settings B2=1.954V, A2=2.71V
  cell_voltage_setpoint = constant_voltage / 72; //12V * 6 cells
  digital_pot_bits  = 
    (unsigned char)( ( ( cell_voltage_setpoint - 1.954 ) / ( 0.756 ) ) * 256 );
  set_cv(digital_pot_bits);

  //Set the constant current settings of the AD8402
  //CC digital pot settings B1=0.0V, A1=5.0V
  //1bit equals 47mA according to the digital pot settings
  digital_pot_bits  = 
    (unsigned char)( constant_current / .047 );
  set_cc(digital_pot_bits);

  //Sound the buzzer just for the heck of it
  for( i = 0; i<1000; i++ ) { 
    SOUNDER = 1;
    _delay(3000);
    SOUNDER = 0;
    _delay(3000);
  }

  ///////////////////////////////////////////////////////////////////////////
  //Continue running the main processing loop
  ///////////////////////////////////////////////////////////////////////////
  while(1) { 

    //Sample the currents and voltage inputs
    //pri_current_bits = get_sample( PRI_CURRENT_CH ); //Currently not used
    voltage_bits = get_sample( VOLTAGE_CH );
    current_bits = get_sample( CURRENT_CH );

    //Voltage equation based on following but simplified to reduce overhead 
    //A/D input is 0V to 5.0V
    //A/D ouput is 10^2 bits which gives 1024 possible values
    //This equates to 5V/1024bits or 4.9mV/bit.
    //The (15/100) is the ratio of the resistors in the difference amplifier and it's inverse gain.
    //1.954V is the voltage bias subtracted from the input voltage
    //72 is the total number of cells in the system. Our system is 144V. Zivan
    //treats this as 12 12V batteries, each with 6 cells, or rather 12 * 6 = 72 cells
    //voltage = ( voltage_bits * ( 5.0 / 1024 ) * ( 15 / 100 ) + 1.954 ) * 72;

    //1.954V => 140.7V min and 2.71V => 195.1V
    voltage = ((float)voltage_bits) * 54 / 1024 + 140.69;

    //Current equation based on a measured 11mA/bit
    current = ((float)current_bits) * 0.011;

    //If first time through, go to the CONSTANT_CURRENT state and
    //enable the charger output
    if( state == SOFT_START ) {
   
      state = CONSTANT_CURRENT; //Now we are in constant current state

      SS = 0; //Setting SOFT_START pin to low enables the actual output of the charger

      //Set the LED and AUX relays any way you want for the CC state
      //Remember, setting an LED to 0 actually turns it on. Setting it to 1 turns it off. 
      //Both LEDs set to 0 gives the YELLOW color.
      LEDG = 1;
      LEDR = 0;
      AUX1 = 0;
      AUX2 = 1;

    //Currently in the constant current mode
    } else if ( state == CONSTANT_CURRENT ) {

      //stay in constant current mode until the voltage >= CV setpoint then go to CV state 
      if( voltage >= constant_voltage ) {

        state = CONSTANT_VOLTAGE; //Now we are in the constant voltage state

        //Set the LED and AUX relays any way you want for the CV state
        //Remember, setting an LED to 0 actually turns it on. Setting it to 1 turns it off.
        //Both LEDs set to 0 gives the YELLOW color. 
        LEDG = 0;
        LEDR = 0;
        AUX1 = 1;
        AUX2 = 1;

      }

    //Currently in the constant voltage mode
    } else if ( state == CONSTANT_VOLTAGE ) {

      //Stay in CV state until current drops to Imin then goto IDLE state
      if( current <= minimum_current ) {
 
        state = IDLE; //Now in the IDLE state, the charger is essentially done
                      //until it gets power cycled. This can be handled 
                      //differently if you want.

        //Set the LED and AUX relays any way you want for the CV state
        //Remember, setting an LED to 0 actually turns it on. Setting it to 1 turns it off.
        //Both LEDs set to 0 gives the YELLOW color.
        LEDG = 0;
        LEDR = 1;
        AUX1 = 1;
        AUX2 = 0;

        SS = 1;   //Turns off the chargers output
        FANS = 0; //Stops the fans 

      }
    }

    //Sample the temperature inputs
    over_temp_bits = get_sample( OVER_TEMP_CH ); //NOT USED currently
    ext_temp_bits = get_sample( EXT_TEMP_CH );   //NOT USED currently 

    //Toggle the watchdog timer, it must be toggled frequently to keep the logic
    //board's reset controller from thinking the microprocessor is locked up and
    //shutting down the output.
    WDO = 1;
    WDO = 0;

  }/////END OF WHILE
	
}////END OF MAIN






////////////////////////////////////////////////////////////////////////
//SUBROUTINES
//DO NOT MODIFY
////////////////////////////////////////////////////////////////////////
//Initialize the hardware
void initialization(void)
{

  //Configure the oscillator for xxMHz operation
  OSCCON  = 0b01110000;
  OSCCON2 = 0b10000000;
  OSCTUNE = 0b11011111;

  //Intialize the digital IO
  PORTA = 0x00;
  PORTB = 0x00;
  PORTC = 0x00;
  ANSELC = 0xE6;

  SS = 1; //Ensure charger output is disable at startup
  CS2 = 1;  //Start the chip select in a high state

  //Configure the IO directions, 1s are inputs
  TRISA = 0b00101111;
  TRISB = 0b11000000;
  TRISC = 0b00011110;

  //Configure the A/D unit
  ADCON0 = 0b00000010;
  ADCON1 = 0b00000000;
  ADCON2 = 0b10110010; 

  //Configure the SPI module
  SSP2STAT = 0b01000000;
  SSP2CON1 = 0b00100000;

  //Turn on the fans
  FANS = 1;  
 
}

//Get a sample from the specified channel
short get_sample(short channel)
{
  //Configure the A/D unit
  ADCON0 = (channel<<2) | 0b00000001; 

  ADCON0 = ADCON0 | 0b00000010;

  //Wait for conversion to be done
  while((ADCON0 & 0b00000010) != 0b00000000 ) {}
   
  return (ADRESH<<8) | ADRESL;
}

//Set the connstant voltage setting
void set_cv(unsigned char bits)
{
  //Set the constant voltage settings of the AD8402
  CS2 = 0;
  SSP2BUF = 0x01;
  while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
  SSP2BUF;
  SSP2BUF = bits;
  while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
  CS2 = 1; 
  
}

//Set the constant current setting
void set_cc(unsigned char bits)
{
  //Set the constant current settings of the AD8402
  CS2 = 0;
  SSP2BUF = 0x00;
  while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
  SSP2BUF;
  SSP2BUF = bits;
  while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
  CS2 = 1; 

}