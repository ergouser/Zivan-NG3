#pragma once

class Adafruit_SSD1306;

class Display 
{ 
    private:
    Adafruit_SSD1306 *display;

    public:
    Display(); // init
    void off(); // turn off screen
    void printData(float Voltage, float Current, int mode);
};