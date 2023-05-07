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


### If you're familiair with Arduino & code
Implementation instructions: >> Make sure you are familiar with the risks & have basic electronics knowledge. 

1) Unplug Zivan from all connections (power, battery), wait 30 minutes MINIMUM to allow the capacitors to discharge. The fins on the AC-side of the Zivan maintain high voltage for quite some time. (Do as I say not as I do..)
2) Remove jumpers from the control board, if you have a rotating button, figure out what setting means NO jumpers (only TP is currently used, the other ones are not connected, but can be implemented) 
3) Remove the socketed CPU carefully. I used a small flat-screwdriver twist. Store carefully and ESD safe.
4) Connect the Arduino to the pins, check the PDF for CPU socket pinout, see definitions.h for Arduino pins. Connect screen to arduino. The pins (TH1 - TH28) have names in the PDF. these correspond to pinout in the definitions.h -> the wires in the PDF don't mean anything anymore.
(Feel free to actually make a nice PDF!)
5) Download & install: Arduino IDE, VSCode. -> Install PlatformIO plugin on VSCode (with all required packages like python)
6) Change settings as desired: voltage, current
7) Change NG3 parameters as necessary: Rpot, R20, max current etc.
8) Upload to Arduino with VS-code / PlatformIO
9) Install TP jumper or uncomment "PSU OVERRIDE" (note; with TP connected, its always in PSU)
10) Remove USB from Arduino. Connect DMM to battery out
11) Connect mains, check there is voltage at the battery output (<reminder here to not touch fins>)
12) Now the fun begins.. getting all voltages aligned.
	1) Set voltage in settings, calculate what voltage pot should be & put in.
	2) Turn pot untill set voltage is actual output voltage, measured with multimeter.
	3) Change 'voltage_offset' so that sensed voltage == actual voltage == set voltage

13) Current can be done during charging later. My advice is to calibrate at cut-off amps. Change MAX-Current or the algorithm itself. Can be fine-tuned with the potentiometer. But all in all quite a rough setting still. It helps that it doesn't matter too much, aslong as it quits.
14) Remove TP, charge battery if happy with implementation. 
15) TIPS: 
	1) Store a USB stick inside the charger with these GitHub files. For anyone in the future coming across this.
	2) Don't use too long wires between Arduino and CPU, this messes up voltage sens. The one in mine are actually too long. Shorter = better, less distortion from the high switching power. Maybe make a PCB for it? You do you.

16) NOTES:
	1) Ye, high voltage, watch out. 
	2) Images below, do as I say, not as I do.


Questions: Please reach out on Discord: itsPointless#6048



<details>
<summary>Images</summary>

CPU Removed 
![CPU removed](/images/CPU_removed.jpeg)

Created a tiny circuitboard from a prototype board & 28 pin DIP sockets. 
The square one fits the 2.54 pinstrips. the round one doesn't. But they fit eachother...

Expect to spend 2-3 hours of soldering...
![Made a circuit board](/images/connected.jpg)
![All connected](/images/circuit_board.jpg)

Extension built into the casing
![Extension](/images/Extension.jpeg)

Everything in the Zivan, used 2 layers of battery pack crimping stuff to isolate it
![Built into Zivan](/images/Builtin.jpg)
![Built into Zivan](/images/detail.jpg)

Installing PlatformIO plugin
![Installing PlatformIO](/images/Platformio.png)

Install python
![Python](/images/Python.png)

Downloading the github repository
![Download ZIP](/images/ZIP.png)

Opening the project in PlatformIO
![Open Project](/images/Open_project.png)

-> Navigate to the unpacked ZIP folder

Change settings to your desires
![Settings](/images/Settings.png)

Now the fun begins.. getting all voltages aligned.
1) Set voltage in settings, calculate what voltage pot should be & put in.
2) Turn pot untill set voltage is actual output voltage, measured with multimeter.
3) Change 'voltage_offset' so that sensed voltage == actual voltage == set voltage

Adjust the pots (left is current, right is Voltage) 
![Change pots](/images/Pots.jpg)

Actions for PlatformIO, V to check code, arrow to write to Arduino (make sure its connected)
![Actions bar](/images/Actions.png)

![Check](/images/Check.png)

![Write](/images/Write.png)

![Confirm voltage](/images/Confirm.jpeg)

Now all connected, inside & pushed.
![Python](/images/working.jpeg)


</details>


### TIPS On how to get your voltages and currents in line.
To be really fair, I don't know, but here's what I think and tried:

#### Voltage: 
1) Make sure R20 values correct, otherwise this will all fail
2) set your U_POT to the calculation %scale 
	1) Example; I want 70v. Calculate min and max with pot at 1k. Let's say that's 66v and 92v = 26v range. Now 70-66=4. 4/26 = 0.15 -> 2k - 0.15*2k = 1700. For 70v I set this U_POT_VALUE here to 1700. Adjust the actual pot later to match the voltage. You could also use pot at the extremes (2k for min, 0 for high) - It's just a guideline.
3) Set your charger on PSU_MODE (uncomment PSU_OVERRIDE) - and right Voltage.
4) Adjust the actual voltage pot on the board, so the voltage on your multimeter reads the same as whatever you put in.
5) Now adjust correctionFactor so it matches. This only corrects for the change after minVoltage.
Example: lets say I want 90v, I put in 90v in SET_mVOLTAGE, I also adjusted the pot so I'm reading 90V with the DMM. Screen / DEBUG tells me the Zivan reads 91.2v
Min is 66v, max is 99. range therefore is 23. 1.2v/23 5% higher. So my correction factor is 95(%).



#### Current
You have to confirm the current is actually right at the cutoff amps and the max. This whole current reading thing is a bit janky, it doesn't quite work perfectly, I'll admit, but that doesn't really matter.

-> What you want, is that whatever you set, the charger actually outputs around this current, and adjust the pot so it does (this you can do quite exact).

-> Also you want it to call quits at the right current, this is how:

1) Change SET_mCURRENT to, say 1A and then 8A and check what comes out. If this is radically different(ie, not 1A and 8A, but 3A and 12A?) something is wrong with the MAX_RATED_AMPS. ' radically different ' is in this case, more than 1A different. You don't have to chase it, but you should be able to. - Also check if the current 'sensed' is within proportions. If this is very different from actual, let me know, something for better current sensing is in the workshop.

2) If you're satisfied you can jump up to the 25A. Then check again. If you have done your job well at 1A and 8A, 25A should be right around the mark. You can now adjust the current pot so it's exactly 25A.

3) now set it to your desired cutoff_mAmps (5000 in our case). Confirm this is coming out (kinda), then check what the current reading (from the sense part - screen or debug) is telling you. THIS is your new CutOff mAmps. That's the janky part, not actually being able to accurately read this current. This seems like the only way to get both right. Thing is, if its not 5.0A but 6A or 4.5A, it doesn't matter, really. It's just important it's not 5mA and overcharging the battery to death or 20A and not charging the battery full.

4) To actually confirm this cutoff is working correctly ->
You could set the 'set voltage' lower than your actual charging voltage, so you can check & see it going through the different stages realtime and not have to wait for ages till it's actually full and then discharge to see the whole procedure again. (You can set it a bit higher everytime which allows you to check it multiple times on one charge! effeciency!)

