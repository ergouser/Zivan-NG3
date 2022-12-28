# Zivan-NG3

Zivan NG3 controller, created & tested on a NG3 96V 22A model. I changed R20 to 280k to change the model to a 72V model.

NOTE: THE COOLING FINS ON THE NG3 ARE AC OR +vBAT >>!!NO TOUCHING!!<< 
NOTE: MAKE SURE THE ARDUINO IS POWERED OFF WHEN PLUGGING IN THE AC POWER
NOTE: UNPLUGGING & REPLUGGING AC POWER TOO QUICKLY CAN RESULT IN vHIGH INRUSH CURRENT
NOTE: >>USE AT YOUR OWN RISK!<<

Implementation instructions: >> Make sure you are familiar with the risks & have basic electronics knowledge. 

1) Unplug Zivan from all connections (power, battery), wait 30 minutes MINIMUM to allow the capacitors to discharge. The fins on the AC-side of the Zivan maintain high voltage for quite some time.
2) Remove jumpers from the control board, if you have a rotating button, figure out what setting means NO jumpers (only TP is currently used, the other ones are not connected, but can be implemented)
3) Remove the socketed CPU carefully. I used a small flat-screwdriver twist. Store carefully and ESD safe.
4) Connect the 
