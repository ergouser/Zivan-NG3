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


void Display::printData(float Voltage, float Current, int mode, int TEMP) { 
   
    display->clearDisplay();
    display->setTextColor(WHITE);
    display->setTextSize(2);
    display->setCursor(2, 10);
    display->print("V");
    display->setCursor(20, 10);
    if (Voltage == 0) { 
        display->print("< min");
    } else {
        display->print(Voltage, 1);
    } 

    display->setCursor(2,40);
    display->print("A");
    display->setCursor(20, 40);
    display->print(Current, 1);

    //print mode on right side of screen
    display->setCursor(90, 10);
    if (mode == 0) { 
        display->print("OFF");
    } else if ( mode == 1) { 
        display->print("SS");
    } else if (mode == 2) { 
        display->print("CC");
    } else if (mode == 3) { 
        display->print("CV");
        } 
    
    display->display();
};

void Display::printFailure(int error) { 
    display->clearDisplay();
    display->setTextColor(WHITE);
    display->setTextSize(2);
    display->setCursor(2, 10);
    display->print("ERROR");
    display->setTextSize(1);
    display->setCursor(2,40);
    if (error == 0) {
    display->print("Vs>max // Vs<min");
    } else if (error == 1) { 
        display->print("NO BATTERY");
    } else if (error == 2) { 
        display->print("OVERTEMP");
    }
   display->display();
};


void Display::off() { 
    display->clearDisplay();
    display->display();
};
