#pragma once


class Display 
{ 
     public:
    Display(); // init
    void off(); // turn off screen
    void begin();
    void printData(float Voltage, float Current, int mode, float mAh, float cutOver, int TEMP);
    void printFailure(int error);
    void printInit(unsigned long setVoltage, char16_t setCurrent, char16_t setCutOff, bool PSUmode, uint16_t pbrK, float vMin, float vMax);
    // Error terms, easier this way than through printFailure.
    unsigned long maxVoltage;
    unsigned long minVoltage;
    unsigned long setVoltage;
    int Temp;
       private:
SSD1306AsciiWire display;


    };