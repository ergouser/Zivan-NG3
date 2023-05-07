#pragma once

class Adafruit_SSD1306;

class Display 
{ 
    private:
    Adafruit_SSD1306 *display;

    public:
    Display(); // init
    void off(); // turn off screen
    void printData(float Voltage, float Current, int mode, int TEMP);
    void printFailure(int error);
    void printInit(unsigned long setVoltage, char16_t setCurrent, char16_t setCutOff, bool PSUmode);
    // Error terms, easier this way than through printFailure.
    unsigned long maxVoltage;
    unsigned long minVoltage;
    unsigned long setVoltage;
    int Temp;
    };