// Display
#define DISPLAY_ADDR 0x3C // I2C Address - use 0x3C or 0x3D depending on your display --> Display connects A4 A5 <--
// Zivan Control - Don't forget the REF signal.
#define ZSS 5 // Zivan Soft start SS (low to enable output)
#define CLK 13 //digiPot CLK 
#define SlaveSelect 10 //digiPot Slave Select / Chip select
#define SDI 11 // digipot SDI
#define WDO 6 // Watchdog output
#define VOLTAGE_IN A6
#define CURRENT_IN A7
// Zivan extras
#define FANS 7
#define SOUNDER A2
#define LED1 9
#define LED2 8
#define TP 12 //This is one of the jumpers, I only use TP, which, in this case makes the charger stay in CV mode when no battery is connected. aka PSU mode or Voltage-set
#define TEMP_IN A1 //Overtemp ; gives a voltage correlating to the internal temp sensor. -- not used yet
#define AH A0 //One of the jumpers, not used currently
#define AUX1 2 //AUX relay 1; currently not used, but can be connected if you plan on 
#define AUX2 3 //AUX relay 2; currently not used, but can be connected if you plan on 