#include "definitions.h"
#include "Display.h"
#include <Adafruit_SSD1306.h>

Display::Display() { 
    display = new Adafruit_SSD1306(128, 64, &Wire, 4);

    if(!display->begin(SSD1306_SWITCHCAPVCC, DISPLAY_ADDR)) {
        #ifdef DEBUG
   //     Serial.println("1306 alloc error");
        #endif
        for(;;); 
    }

    display->cp437(true);
    display->clearDisplay();
    display->display();
};

void Display::printInit(unsigned long setVoltage, char16_t setCurrent, char16_t setCutOff, bool chargeMode) { 
    display->clearDisplay();
    display->setTextColor(WHITE);
    display->setTextSize(1);
    display->setCursor(2, 2);
    display->print("Set V:");
    display->setCursor(50, 2);
    display->print(setVoltage/1000.f);
    display->setCursor(2, 10);
    display->print("Set C");
    display->setCursor(50, 10);
    display->print(setCurrent/1000.f);
    display->setCursor(2, 20);
    display->print("CutOff");
    display->setCursor(50, 20);
    display->print(setCutOff/1000.f);
    display->setCursor(2, 30);
    display->print("MODE");
    display->setCursor(50, 30);
    if(chargeMode) { 
        display->print("CC/CV");
    } else {
        display->print("PSU");
    }
    display->display();
}

void Display::printData(float Voltage, float Current, int mode, float mAh, int TEMP) { 
   
    display->clearDisplay();
    display->setTextColor(WHITE);
    display->setTextSize(2);
    display->setCursor(2, 2);
    display->print("V");
    display->setCursor(20, 2);
    if (Voltage == 0) { 
        display->print("< min");
    } else {
        display->print(Voltage, 1);
    }

    display->setCursor(2,26);
    display->print("A");
    display->setCursor(20, 26);
    display->print(Current, 1);

    display->setCursor(2,50);
    display->print("Ah");
    display->setCursor(35, 50);
    display->print(mAh < 1000 ? mAh : mAh/1000.f);

    //print mode on right side of screen
    display->setCursor(90, 2);
    if (mode == 0) { 
        display->print("off");
    } else if ( mode == 1) { 
        display->print("SS");
    } else if (mode == 2) { 
        display->print("CC");
    } else if (mode == 3) { 
        display->print("CV");
    } else if (mode == 4) { 
        display->print("PSU");
    }   
    display->display();
};

void Display::printFailure(int error) { 
    display->clearDisplay();
    display->setTextColor(WHITE);
    display->setTextSize(2);
    display->setCursor(2, 2);
    display->print("ERROR");
    display->setTextSize(1);
    display->setCursor(2,30);

    if (error == 0) {
    display->print("SETv:");
    display->setCursor(30,25);
    display->print(this->setVoltage/1000.f, 1);
    display->setCursor(2,37);
    display->print("Max");
    display->setCursor(30,37);
    display->print(this->maxVoltage/1000.f, 1);
    display->setCursor(2,53);
    display->print("Min");
    display->setCursor(30,53);
    display->print(this->minVoltage/1000.f, 1);

    } else if (error == 1) { 
        display->print("NO BATTERY DETECTED");
        display->setCursor(2,45);
        display->print("volt overshoot");
    } else if (error == 2) { 
        display->print("OVERTEMP");
        display->setCursor(2,40);
        display->print(this->Temp);
    }
   display->display();
};


void Display::off() { 
    display->clearDisplay();
    display->display();
};
