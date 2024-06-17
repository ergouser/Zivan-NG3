#include <SSD1306Ascii.h>
#include <SSD1306AsciiWire.h>
#include <Wire.h>

#include "definitions.h"
#include "Display.h"

#define SCREEN_WIDTH 128  // OLED display width, in pixels
#define SCREEN_HEIGHT 64  // OLED display height, in pixels


Display::Display() {
}

void Display::begin() {
    Wire.begin();  // Start I2C communication
    display.begin(&Adafruit128x64, 0x3C); // Initialize with the appropriate display size and I2C address
    display.setFont(System5x7);  // Set font, choose the font size that fits your needs

    display.clear();  // Clear the display
};

void Display::printInit(unsigned long setVoltage, char16_t setCurrent, char16_t setCutOff, bool chargeMode, uint16_t pbrK, float vMin, float vMax) { 
    display.clear();
    display.setFont(System5x7);  // Set font
    display.setCursor(2, 1);
    display.print(F("Set V:"));
    display.setCursor(50, 1);
    display.print(setVoltage/1000.f);
    display.setCursor(2, 2);
    display.print(F("Set C"));
    display.setCursor(50, 2);
    display.print(setCurrent/1000.f);
    display.setCursor(2, 3);
    display.print(F("CutOff"));
    display.setCursor(50, 3);
    display.print(setCutOff/1000.f);
    display.setCursor(2, 4);
    display.print(F("MODE"));
    display.setCursor(50, 4);
    if(chargeMode) { 
        display.print(F("CC/CV"));
    } else {
        display.print(F("PSU"));
    }
   display.setCursor(2, 5);
    display.print(F("PBR(K)"));
    display.setCursor(50, 5);
     display.print(pbrK);
   display.setCursor(2, 6);
    display.print(vMin,1);
    display.setCursor(50, 6);
     display.print(vMax,1);

}

void Display::printData(float Voltage, float Current, int mode, float mAh, float cutOver, int TEMP) { 
    //display.clear();
    display.setFont(fixed_bold10x15);  // Using the larger font

    // Adjust cursor positions to avoid overlap, considering font height of approx 16 pixels

    // Display voltage
    display.setCursor(0,0); // Top row
    display.print(F("V: "));
    if (Voltage == 0) { 
        display.print(F("<min"));
    } else {
        display.print(Voltage, 1);
    }

    // Display current
    display.setCursor(0, 2); // Next row, leave some space to avoid overlapping
    display.print(F("A: "));
    display.print(Current, 1);

    // Display milliamp-hours / amp-hours
    display.setCursor(0,4); // Further down
    display.print(F("Ah: "));
    if (mAh < 1000) {
        display.print(mAh, 0); // Show mAh if under 1000
    } else {
        display.print(mAh / 1000.0, 2); // Convert to Ah if 1000 mAh or more
        display.print(F("A"));
    }

    display.setCursor(0, 6); // show the CC/CV cutover voltage
    display.print(cutOver, 1);
    display.setCursor(64, 6); // current state
    switch (mode) {
        case 0: display.print(F("Off")); break;
        case 1: display.print(F("SS")); break;
        case 2: display.print(F("CC")); break;
        case 3: display.print(F("CV")); break;
        case 4: display.print(F("DRK")); break;
        case 5: display.print(F("BMS")); break;
        default: display.print(F("UKN")); break;
    }
};

void Display::printFailure(int error) { 
   display.clear();
    display.setFont(fixed_bold10x15);  // Change to a larger font
    display.setCursor(2, 1);
    display.print(F("ERROR"));
    display.setFont(System5x7);  // Set font, choose the font size that fits your needs
    display.setCursor(2,3);

    if (error == 0) {
    display.print(F("SETv:"));
    display.setCursor(30,4);
    display.print(setVoltage/1000.f, 1);
    display.setCursor(2,5);
    display.print(F("Max"));
    display.setCursor(30,5);
    display.print(maxVoltage/1000.f, 1);
    display.setCursor(2,6);
    display.print(F("Min"));
    display.setCursor(30,6);
    display.print(minVoltage/1000.f, 1);

    } else if (error == 1) { 
        display.print(F("NO BATTERY DETECTED"));
        display.setCursor(2,4);
        display.print(F("volt overshoot"));
    } else if (error == 2) { 
        display.print(F("OVERTEMP"));
        display.setCursor(2,4);
        display.print(Temp);
    }
};


void Display::off() { 
   display.clear();
};

