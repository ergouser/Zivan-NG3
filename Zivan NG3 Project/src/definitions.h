// Display
#define DISPLAY_ADDR 0x3C // I2C Address - use 0x3C or 0x3D depending on your display --> Display connects A4 A5 <--
// Zivan Control - Don't forget the REF signal.
#define ZSS 9 // Zivan Soft start SS (low to enable output)
#define CLK 13 //digiPot CLK 
#define SlaveSelect 10 //digiPot Slave Select / Chip select
#define SDI 11 // digipot SDI
#define WDO A0 // Watchdog output
#define VOLTAGE_IN A2
#define CURRENT_IN A1
// Zivan extras
#define FANS A3
#define SOUNDER 6
#define LED1 7
#define LED2 8
#define TEMP_IN A6 //Overtemp ; gives a voltage correlating to the internal temp sensor. 

//Not used yet
//#define AH A0 //One of the jumpers, not used currently
//#define AUX1 2 //AUX relay 1; currently not used, but can be connected if you plan on 
//#define AUX2 3 //AUX relay 2; currently not used, but can be connected if you plan on 


