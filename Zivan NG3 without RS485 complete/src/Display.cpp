#include "definitions.h"
#include "Display.h"
#include <Adafruit_SSD1306.h>
#include <Adafruit_GFX.h>

Display::Display() { 
    display = new Adafruit_SSD1306(128, 64, &Wire, 4);

    if(!display->begin(SSD1306_SWITCHCAPVCC, DISPLAY_ADDR)) {
        for(;;); 
    }

    display->cp437(true);
    display->clearDisplay();
    display->display();
};


void Display::printData(float Voltage, float Current, int mode) { 
   
    display->clearDisplay();
    display->setTextSize(2);

    display->setCursor(10,10);
    display->print("V");
    display->setCursor(25, 10);
    if (Voltage == 0) { 
        display->print("< min");
    } else {
        display->print(Voltage, 1);
    } 

    display->setCursor(10,40);
    display->print("A");
    display->setCursor(25, 40);
    display->print(Current, 1);

    //print mode on right side of screen
    display->setCursor(134, 25);
    if (mode == 0) { 
        display->print("IDLE");
    } else if ( mode == 1) { 
        display->print("SS");
    } else if (mode == 2) { 
        display->print("CC");
    } else if (mode == 3) { 
        display->print("CV");
        } 
    
    display->display();
};

void Display::off() { 
    display->clearDisplay();
    display->display();
}
