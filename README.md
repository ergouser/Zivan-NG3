# Zivan-NG3

Zivan NG3 controller, created & tested on a NG3 96V 22A model. I changed R20 to 280k to change the model to a 72V model.

#### NOTE: THE COOLING FINS ON THE NG3 ARE AC OR +vBAT >>!!NO TOUCHING!!<< 
#### NOTE: MAKE SURE THE ARDUINO IS POWERED OFF WHEN PLUGGING IN THE AC POWER*
#### NOTE: UNPLUGGING & REPLUGGING AC POWER TOO QUICKLY CAN RESULT IN vHIGH INRUSH CURRENT*
#### NOTE: OVERTEMP NOT YET IMPLEMENTED
#### NOTE: >>USE AT YOUR OWN RISK!<<


## BOM:
- Arduino Nano (clone) 
- SSD1306 0.96" OLED (https://aliexpress.com/item/1005001621838435.html?)
- Screw-terminal board (https://aliexpress.com/item/1005004513646515.html?)
- 28 PIN wide DIP socket (https://aliexpress.com/item/1005003414478049.html?)
- micro USB extension cable (https://aliexpress.com/item/1005001565018866.html?)

## How to?


Implementation instructions: >> Make sure you are familiar with the risks & have basic electronics knowledge. 

1) Unplug Zivan from all connections (power, battery), wait 30 minutes MINIMUM to allow the capacitors to discharge. The fins on the AC-side of the Zivan maintain high voltage for quite some time. (Do as I say not as I do..)
2) Remove jumpers from the control board, if you have a rotating button, figure out what setting means NO jumpers (only TP is currently used, the other ones are not connected, but can be implemented) 
3) Remove the socketed CPU carefully. I used a small flat-screwdriver twist. Store carefully and ESD safe.
4) Connect the Arduino to the pins, check the PDF for CPU socket pinout, see definitions.h for Arduino pins. Connect screen to arduino. The pins (TH1 - TH28) have names in the PDF. these correspond to pinout in the definitions.h -> the wires in the PDF don't mean anything anymore.
(Feel free to actually make a nice PDF!)
5) Download & install: Arduino IDE, VScode, PlatformIO-plugin & Open project
6) Change settings as desired: voltage, current
7) Change NG3 parameters as necessary: Rpot, R20, max current etc.
8) Upload to Arduino with VS-code / PlatformIO
9) Install TP jumper
10) Remove USB from Arduino. Connect DMM to battery out
11) Connect mains, check there is voltage at the battery output (<reminder here to not touch fins>)
12) Adjust the voltage pot on the control board till measured voltage matches set voltage.
13) Current can be done during charging later. My advice is to calibrate at cut-off amps. Change MAX-Current or the algorithm itself. Can be fine-tuned with the potentiometer. But all in all quite a rough setting still. 
14) Remove TP, charge battery if happy with implementation. 
15) TIP: Store a USB stick inside the charger with these GitHub files. For anyone in the future coming across this.

Questions: Please reach out on Discord: itsPointless#6048
