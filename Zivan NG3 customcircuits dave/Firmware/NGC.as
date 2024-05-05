opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 11162"

opt pagewidth 120

	opt lm

	processor	18F25K22
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 19 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 36 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 53 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 71 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 86 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 108 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 135 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 140 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 172 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 177 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 217 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 222 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 256 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 261 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 301 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 306 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 350 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 355 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 387 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 406 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 429 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 448 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 474 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 497 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 509 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 521 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 553 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 591 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 597 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 609 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 621 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 644 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 656 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 668 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 689 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 695 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 707 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 719 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 740 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 746 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 758 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 770 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 805 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 810 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 872 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 894 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 918 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 924 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 936 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 948 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 962 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 984 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 1000 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 1073 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 1078 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 1140 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 1162 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 1185 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 1197 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 1209 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 1221 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 1240 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 1262 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 1332 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 1385 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 1545 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 1588 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 1600 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 1605 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 1723 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 1728 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 1810 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 1815 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 1881 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 1886 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 1904 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 1909 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 1927 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 1932 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 1950 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 1955 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 1973 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 1978 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 2010 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 2015 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 2115 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 2120 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 2282 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 2296 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 2310 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 2327 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 2341 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 2355 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 2376 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 2469 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 2562 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 2651 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 2776 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 2829 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 2882 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 2935 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 2940 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 2998 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 3003 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 3061 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 3066 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 3124 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 3137 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 3159 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 3164 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 3234 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 3258 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 3282 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 3306 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 3334 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 3362 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 3390 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 3436 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 3463 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 3490 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 3513 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 3525 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 3537 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 3559 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 3564 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 3568 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 3699 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 3704 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 3708 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 3803 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 3808 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 3812 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 3844 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 3849 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 3853 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 3885 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 3890 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 3894 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 3926 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 3931 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 3935 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 3967 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 4004 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 4016 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 4028 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 4040 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 4072 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 4077 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 4169 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 4174 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 4238 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 4243 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 4247 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 4251 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 4559 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 4564 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 4628 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 4651 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 4663 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 4675 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 4699 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 4711 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 4723 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 4735 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 4758 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 4783 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 4839 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 4851 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 4863 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 4875 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 4880 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 5054 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 5059 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 5159 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 5164 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 5446 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 5451 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 5599 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 5604 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 5628 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 5633 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 5677 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 5682 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 5714 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 5746 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 5781 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 5793 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 5805 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 5817 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 5862 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 5877 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 5896 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 5921 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 5943 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 5955 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 5967 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 5979 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 6010 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 6022 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 6034 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 6058 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 6070 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 6082 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 6094 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 6106 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 6118 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 6130 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 6142 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 6154 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 6166 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 6178 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 6190 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 6202 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 6214 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 6237 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 6249 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 6261 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 6273 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 6285 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 6297 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 6309 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 6321 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 6333 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 6362 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 6389 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 6438 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 6450 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 6462 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 6474 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 6486 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 6499 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 6511 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 6523 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 6539 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 6544 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 6562 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 6574 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 6586 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 6598 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 6629 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 6641 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 6653 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 6665 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_initialization
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,_set_cv
	FNCALL	_main,_set_cc
	FNCALL	_main,_get_sample
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftge
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNROOT	_main
	global	_state
psect	idataCOMRAM,class=CODE,space=0,delta=1
global __pidataCOMRAM
__pidataCOMRAM:
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	102

;initializer for _state
	db	low(01h)
	global	_i
	global	_constant_current
	global	_constant_voltage
	global	_current
	global	_voltage
	global	_current_bits
	global	_voltage_bits
	global	_digital_pot_bits
	global	_cell_voltage_setpoint
	global	_ext_temp
	global	_minimum_current
	global	_over_temp
	global	_pri_current
	global	_ext_temp_bits
	global	_over_temp_bits
	global	_pri_current_bits
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ANSELC
_ANSELC	set	0xF3A
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_OSCCON2
_OSCCON2	set	0xFD2
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_SSP2BUF
_SSP2BUF	set	0xF6F
	global	_SSP2CON1
_SSP2CON1	set	0xF6C
	global	_SSP2STAT
_SSP2STAT	set	0xF6D
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_LATA4
_LATA4	set	0x7C4C
	global	_LATA6
_LATA6	set	0x7C4E
	global	_LATA7
_LATA7	set	0x7C4F
	global	_LATB0
_LATB0	set	0x7C50
	global	_LATB4
_LATB4	set	0x7C54
	global	_LATB5
_LATB5	set	0x7C55
	global	_LATC5
_LATC5	set	0x7C5D
	global	_LATC6
_LATC6	set	0x7C5E
	global	_LATC7
_LATC7	set	0x7C5F
; #config settings
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTIO67
__CFG_FOSC$INTIO67 equ 0x0
global __CFG_PRICLKEN$ON
__CFG_PRICLKEN$ON equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_PLLCFG$ON
__CFG_PLLCFG$ON equ 0x0
	file	"NGC.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
	global	_i
_i:
       ds      4
	global	_constant_current
_constant_current:
       ds      3
	global	_constant_voltage
_constant_voltage:
       ds      3
	global	_current
_current:
       ds      3
	global	_voltage
_voltage:
       ds      3
	global	_current_bits
_current_bits:
       ds      2
	global	_voltage_bits
_voltage_bits:
       ds      2
	global	_digital_pot_bits
_digital_pot_bits:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1
global __pdataCOMRAM
__pdataCOMRAM:
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	global	_state
_state:
       ds      1
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
	global	_cell_voltage_setpoint
_cell_voltage_setpoint:
       ds      3
	global	_ext_temp
	global	_ext_temp
_ext_temp:
       ds      3
	global	_minimum_current
_minimum_current:
       ds      3
	global	_over_temp
	global	_over_temp
_over_temp:
       ds      3
	global	_pri_current
	global	_pri_current
_pri_current:
       ds      3
	global	_ext_temp_bits
_ext_temp_bits:
       ds      2
	global	_over_temp_bits
_over_temp_bits:
       ds      2
	global	_pri_current_bits
	global	_pri_current_bits
_pri_current_bits:
       ds      2
psect	cinit
; Clear objects allocated to BANK0 (21 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	21
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (21 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	21
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_initialization
?_initialization:	; 0 bytes @ 0x0
	global	??_initialization
??_initialization:	; 0 bytes @ 0x0
	global	?_set_cv
?_set_cv:	; 0 bytes @ 0x0
	global	?_set_cc
?_set_cc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_get_sample
?_get_sample:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	set_cv@bits
set_cv@bits:	; 1 bytes @ 0x0
	global	set_cc@bits
set_cc@bits:	; 1 bytes @ 0x0
	global	get_sample@channel
get_sample@channel:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds   1
	global	??_set_cv
??_set_cv:	; 0 bytes @ 0x1
	global	??_set_cc
??_set_cc:	; 0 bytes @ 0x1
	ds   1
	global	??_get_sample
??_get_sample:	; 0 bytes @ 0x2
	ds   1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds   1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds   1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds   1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds   2
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds   3
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	ds   1
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x11
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x12
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x16
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x17
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x17
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1A
	ds   3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x1D
	ds   5
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x22
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x23
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x24
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x25
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x25
	ds   3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x28
	ds   3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x2B
	ds   5
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x30
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x31
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x34
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x35
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x36
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x36
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x39
	ds   3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x3C
	ds   5
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x41
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x42
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x45
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x46
	ds   1
	global	??_main
??_main:	; 0 bytes @ 0x47
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         42
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     72      94
;!    BANK0           160      0      21
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    ?___ftpack	float  size(2) Largest target is 0
;!
;!    ?___lwtoft	float  size(2) Largest target is 0
;!
;!    ?_get_sample	short  size(2) Largest target is 0
;!
;!    ?___fttol	long  size(2) Largest target is 0
;!
;!    ?___ftmul	float  size(2) Largest target is 0
;!
;!    ?___ftadd	float  size(2) Largest target is 0
;!
;!    ?___ftdiv	float  size(2) Largest target is 0
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___ftmul
;!    ___ftadd->___fttol
;!    ___ftdiv->___ftadd
;!    ___ftmul->___ftdiv
;!    ___fttol->___ftpack
;!    ___lwtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2758
;!                                             71 COMRAM     1     1      0
;!                     _initialization
;!                            ___ftdiv
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;!                             _set_cv
;!                             _set_cc
;!                         _get_sample
;!                           ___lwtoft
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (1) _initialization                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _set_cv                                               1     0      1      22
;!                                              0 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _set_cc                                               1     0      1      22
;!                                              0 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _get_sample                                           4     2      2      22
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) ___ftadd                                             14     8      6    1049
;!                                             23 COMRAM    14     8      6
;!                           ___ftpack
;!                            ___fttol (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             17    11      6     489
;!                                             37 COMRAM    17    11      6
;!                           ___ftpack
;!                            ___ftadd (ARG)
;!                            ___fttol (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftge                                               9     3      6     136
;!                                              0 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             17    11      6     535
;!                                             54 COMRAM    17    11      6
;!                           ___ftpack
;!                            ___ftdiv (ARG)
;!                            ___ftadd (ARG)
;!                            ___fttol (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     252
;!                                              8 COMRAM    15    11      4
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             5     2      3     231
;!                                              8 COMRAM     5     2      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5     209
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initialization
;!   ___ftdiv
;!     ___ftpack
;!     ___ftadd (ARG)
;!       ___ftpack
;!       ___fttol (ARG)
;!         ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol (ARG)
;!       ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftadd
;!     ___ftpack
;!     ___fttol (ARG)
;!       ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___ftpack
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___ftadd (ARG)
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol (ARG)
;!         ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftadd (ARG)
;!       ___ftpack
;!       ___fttol (ARG)
;!         ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol (ARG)
;!       ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___ftpack (ARG)
;!   _set_cv
;!   _set_cc
;!   _get_sample
;!   ___lwtoft
;!     ___ftpack
;!   ___ftge
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0      0      15       4       13.1%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     48      5E       1       98.9%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       2       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      73       9        0.0%
;!DATA                 0      0      75      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 115 in file "I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initialization
;;		___ftdiv
;;		___ftadd
;;		___ftmul
;;		___fttol
;;		_set_cv
;;		_set_cc
;;		_get_sample
;;		___lwtoft
;;		___ftge
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	115
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 29
	line	117
	
l2679:
;NGC.c: 117: initialization();
	call	_initialization	;wreg free
	line	122
	
l2681:
;NGC.c: 122: if( ( PORTCbits.RC4 == 0 ) && ( PORTCbits.RC3 == 0 ) ) {
	
	btfsc	((c:3970)),c,4	;volatile
	goto	u2641
	goto	u2640
u2641:
	goto	l2687
u2640:
	
l2683:
	
	btfsc	((c:3970)),c,3	;volatile
	goto	u2651
	goto	u2650
u2651:
	goto	l2687
u2650:
	line	123
	
l2685:
;NGC.c: 123: constant_voltage = 158.5;
	movlw	low(float24(158.50000000000000))
	movwf	((c:_constant_voltage)),c
	movlw	high(float24(158.50000000000000))
	movwf	((c:_constant_voltage+1)),c
	movlw	low highword(float24(158.50000000000000))
	movwf	((c:_constant_voltage+2)),c

	line	124
;NGC.c: 124: constant_current = 11.0;
	movlw	low(float24(11.000000000000000))
	movwf	((c:_constant_current)),c
	movlw	high(float24(11.000000000000000))
	movwf	((c:_constant_current+1)),c
	movlw	low highword(float24(11.000000000000000))
	movwf	((c:_constant_current+2)),c

	line	125
;NGC.c: 125: minimum_current = 0.2;
	movlw	low(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current))&0ffh
	movlw	high(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+1))&0ffh
	movlw	low highword(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+2))&0ffh

	goto	l2687
	line	126
	
l103:
	line	127
	
l2687:
;NGC.c: 126: }
;NGC.c: 127: if( ( PORTCbits.RC4 == 0 ) && ( PORTCbits.RC3 == 1 ) ) {
	
	btfsc	((c:3970)),c,4	;volatile
	goto	u2661
	goto	u2660
u2661:
	goto	l2693
u2660:
	
l2689:
	
	btfss	((c:3970)),c,3	;volatile
	goto	u2671
	goto	u2670
u2671:
	goto	l2693
u2670:
	line	128
	
l2691:
;NGC.c: 128: constant_voltage = 158.5;
	movlw	low(float24(158.50000000000000))
	movwf	((c:_constant_voltage)),c
	movlw	high(float24(158.50000000000000))
	movwf	((c:_constant_voltage+1)),c
	movlw	low highword(float24(158.50000000000000))
	movwf	((c:_constant_voltage+2)),c

	line	129
;NGC.c: 129: constant_current = 9.0;
	movlw	low(float24(9.0000000000000000))
	movwf	((c:_constant_current)),c
	movlw	high(float24(9.0000000000000000))
	movwf	((c:_constant_current+1)),c
	movlw	low highword(float24(9.0000000000000000))
	movwf	((c:_constant_current+2)),c

	line	130
;NGC.c: 130: minimum_current = 0.2;
	movlw	low(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current))&0ffh
	movlw	high(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+1))&0ffh
	movlw	low highword(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+2))&0ffh

	goto	l2693
	line	131
	
l104:
	line	132
	
l2693:
;NGC.c: 131: }
;NGC.c: 132: if( ( PORTCbits.RC4 == 1 ) && ( PORTCbits.RC3 == 0 ) ) {
	
	btfss	((c:3970)),c,4	;volatile
	goto	u2681
	goto	u2680
u2681:
	goto	l2699
u2680:
	
l2695:
	
	btfsc	((c:3970)),c,3	;volatile
	goto	u2691
	goto	u2690
u2691:
	goto	l2699
u2690:
	line	133
	
l2697:
;NGC.c: 133: constant_voltage = 158.5;
	movlw	low(float24(158.50000000000000))
	movwf	((c:_constant_voltage)),c
	movlw	high(float24(158.50000000000000))
	movwf	((c:_constant_voltage+1)),c
	movlw	low highword(float24(158.50000000000000))
	movwf	((c:_constant_voltage+2)),c

	line	134
;NGC.c: 134: constant_current = 7.0;
	movlw	low(float24(7.0000000000000000))
	movwf	((c:_constant_current)),c
	movlw	high(float24(7.0000000000000000))
	movwf	((c:_constant_current+1)),c
	movlw	low highword(float24(7.0000000000000000))
	movwf	((c:_constant_current+2)),c

	line	135
;NGC.c: 135: minimum_current = 0.2;
	movlw	low(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current))&0ffh
	movlw	high(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+1))&0ffh
	movlw	low highword(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+2))&0ffh

	goto	l2699
	line	136
	
l105:
	line	137
	
l2699:
;NGC.c: 136: }
;NGC.c: 137: if( ( PORTCbits.RC4 == 1 ) && ( PORTCbits.RC3 == 1 ) ) {
	
	btfss	((c:3970)),c,4	;volatile
	goto	u2701
	goto	u2700
u2701:
	goto	l2705
u2700:
	
l2701:
	
	btfss	((c:3970)),c,3	;volatile
	goto	u2711
	goto	u2710
u2711:
	goto	l2705
u2710:
	line	138
	
l2703:
;NGC.c: 138: constant_voltage = 158.5;
	movlw	low(float24(158.50000000000000))
	movwf	((c:_constant_voltage)),c
	movlw	high(float24(158.50000000000000))
	movwf	((c:_constant_voltage+1)),c
	movlw	low highword(float24(158.50000000000000))
	movwf	((c:_constant_voltage+2)),c

	line	139
;NGC.c: 139: constant_current = 5.0;
	movlw	low(float24(5.0000000000000000))
	movwf	((c:_constant_current)),c
	movlw	high(float24(5.0000000000000000))
	movwf	((c:_constant_current+1)),c
	movlw	low highword(float24(5.0000000000000000))
	movwf	((c:_constant_current+2)),c

	line	140
;NGC.c: 140: minimum_current = 0.2;
	movlw	low(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current))&0ffh
	movlw	high(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+1))&0ffh
	movlw	low highword(float24(0.20000000000000001))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_minimum_current+2))&0ffh

	goto	l2705
	line	141
	
l106:
	line	145
	
l2705:
;NGC.c: 141: }
;NGC.c: 145: cell_voltage_setpoint = constant_voltage / 72;
	movff	(c:_constant_voltage),(c:?___ftdiv)
	movff	(c:_constant_voltage+1),(c:?___ftdiv+1)
	movff	(c:_constant_voltage+2),(c:?___ftdiv+2)
	movlw	low(float24(72.000000000000000))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(72.000000000000000))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(72.000000000000000))
	movwf	(2+((c:?___ftdiv)+03h)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_cell_voltage_setpoint)
	movff	1+?___ftdiv,(_cell_voltage_setpoint+1)
	movff	2+?___ftdiv,(_cell_voltage_setpoint+2)
	line	147
	
l2707:
;NGC.c: 146: digital_pot_bits =
;NGC.c: 147: (unsigned char)( ( ( cell_voltage_setpoint - 1.954 ) / ( 0.756 ) ) * 256 );
	movlw	low(float24(256.00000000000000))
	movwf	(0+((c:?___ftmul)+03h)),c
	movlw	high(float24(256.00000000000000))
	movwf	(1+((c:?___ftmul)+03h)),c
	movlw	low highword(float24(256.00000000000000))
	movwf	(2+((c:?___ftmul)+03h)),c

	movlw	low(float24(0.75600000000000001))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(0.75600000000000001))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(0.75600000000000001))
	movwf	(2+((c:?___ftdiv)+03h)),c

	movlw	low(float24(-1.9540000000000000))
	movwf	(0+((c:?___ftadd)+03h)),c
	movlw	high(float24(-1.9540000000000000))
	movwf	(1+((c:?___ftadd)+03h)),c
	movlw	low highword(float24(-1.9540000000000000))
	movwf	(2+((c:?___ftadd)+03h)),c

	movff	(_cell_voltage_setpoint),(c:?___ftadd)
	movff	(_cell_voltage_setpoint+1),(c:?___ftadd+1)
	movff	(_cell_voltage_setpoint+2),(c:?___ftadd+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftdiv)
	movff	1+?___ftadd,(c:?___ftdiv+1)
	movff	2+?___ftadd,(c:?___ftdiv+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:?___ftmul)
	movff	1+?___ftdiv,(c:?___ftmul+1)
	movff	2+?___ftdiv,(c:?___ftmul+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?___fttol)
	movff	1+?___ftmul,(c:?___fttol+1)
	movff	2+?___ftmul,(c:?___fttol+2)
	call	___fttol	;wreg free
	movf	(0+?___fttol),c,w
	movwf	((c:_digital_pot_bits)),c
	line	148
	
l2709:
;NGC.c: 148: set_cv(digital_pot_bits);
	movff	(c:_digital_pot_bits),(c:?_set_cv)
	call	_set_cv	;wreg free
	line	154
	
l2711:
;NGC.c: 153: digital_pot_bits =
;NGC.c: 154: (unsigned char)( constant_current / .047 );
	movlw	low(float24(0.047000000000000000))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(0.047000000000000000))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(0.047000000000000000))
	movwf	(2+((c:?___ftdiv)+03h)),c

	movff	(c:_constant_current),(c:?___ftdiv)
	movff	(c:_constant_current+1),(c:?___ftdiv+1)
	movff	(c:_constant_current+2),(c:?___ftdiv+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:?___fttol)
	movff	1+?___ftdiv,(c:?___fttol+1)
	movff	2+?___ftdiv,(c:?___fttol+2)
	call	___fttol	;wreg free
	movf	(0+?___fttol),c,w
	movwf	((c:_digital_pot_bits)),c
	line	155
	
l2713:
;NGC.c: 155: set_cc(digital_pot_bits);
	movff	(c:_digital_pot_bits),(c:?_set_cc)
	call	_set_cc	;wreg free
	line	158
	
l2715:
;NGC.c: 158: for( i = 0; i<1000; i++ ) {
	movlw	low(0)
	movwf	((c:_i)),c
	movlw	high(0)
	movwf	((c:_i+1)),c
	movlw	low highword(0)
	movwf	((c:_i+2)),c
	movlw	high highword(0)
	movwf	((c:_i+3)),c
	
l2717:
	movlw	low(03E8h)
	subwf	((c:_i)),c,w
	movlw	high(03E8h)
	subwfb	((c:_i+1)),c,w
	movlw	low highword(03E8h)
	subwfb	((c:_i+2)),c,w
	movlw	high highword(03E8h)
	subwfb	((c:_i+3)),c,w
	btfss	status,0
	goto	u2721
	goto	u2720
u2721:
	goto	l107
u2720:
	goto	l2729
	
l2719:
	goto	l2729
	
l107:
	line	159
;NGC.c: 159: LATA4 = 1;
	bsf	c:(31820/8),(31820)&7	;volatile
	line	160
	
l2721:
;NGC.c: 160: _delay(3000);
	movlw	4
movwf	(??_main+0+0)&0ffh,c,f
	movlw	228
u2797:
	decfsz	wreg,f
	goto	u2797
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u2797
	nop

	line	161
	
l2723:
;NGC.c: 161: LATA4 = 0;
	bcf	c:(31820/8),(31820)&7	;volatile
	line	162
;NGC.c: 162: _delay(3000);
	movlw	4
movwf	(??_main+0+0)&0ffh,c,f
	movlw	228
u2807:
	decfsz	wreg,f
	goto	u2807
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u2807
	nop

	line	158
	
l2725:
	movlw	01h
	addwf	((c:_i)),c
	movlw	0
	addwfc	((c:_i+1)),c
	movlw	0
	addwfc	((c:_i+2)),c
	movlw	0
	addwfc	((c:_i+3)),c
	
l2727:
	movlw	low(03E8h)
	subwf	((c:_i)),c,w
	movlw	high(03E8h)
	subwfb	((c:_i+1)),c,w
	movlw	low highword(03E8h)
	subwfb	((c:_i+2)),c,w
	movlw	high highword(03E8h)
	subwfb	((c:_i+3)),c,w
	btfss	status,0
	goto	u2731
	goto	u2730
u2731:
	goto	l107
u2730:
	goto	l2729
	
l108:
	goto	l2729
	line	168
;NGC.c: 163: }
;NGC.c: 168: while(1) {
	
l109:
	line	172
	
l2729:
;NGC.c: 172: voltage_bits = get_sample( 3 );
	movlw	high(03h)
	movwf	((c:?_get_sample+1)),c
	movlw	low(03h)
	movwf	((c:?_get_sample)),c
	call	_get_sample	;wreg free
	movff	0+?_get_sample,(c:_voltage_bits)
	movff	1+?_get_sample,(c:_voltage_bits+1)
	line	173
;NGC.c: 173: current_bits = get_sample( 4 );
	movlw	high(04h)
	movwf	((c:?_get_sample+1)),c
	movlw	low(04h)
	movwf	((c:?_get_sample)),c
	call	_get_sample	;wreg free
	movff	0+?_get_sample,(c:_current_bits)
	movff	1+?_get_sample,(c:_current_bits+1)
	line	186
;NGC.c: 186: voltage = ((float)voltage_bits) * 54 / 1024 + 140.69;
	movlw	low(float24(1024.0000000000000))
	movwf	(0+((c:?___ftdiv)+03h)),c
	movlw	high(float24(1024.0000000000000))
	movwf	(1+((c:?___ftdiv)+03h)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	(2+((c:?___ftdiv)+03h)),c

	movlw	low(float24(54.000000000000000))
	movwf	(0+((c:?___ftmul)+03h)),c
	movlw	high(float24(54.000000000000000))
	movwf	(1+((c:?___ftmul)+03h)),c
	movlw	low highword(float24(54.000000000000000))
	movwf	(2+((c:?___ftmul)+03h)),c

	movff	(c:_voltage_bits),(c:?___lwtoft)
	movff	(c:_voltage_bits+1),(c:?___lwtoft+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:?___ftmul)
	movff	1+?___lwtoft,(c:?___ftmul+1)
	movff	2+?___lwtoft,(c:?___ftmul+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?___ftdiv)
	movff	1+?___ftmul,(c:?___ftdiv+1)
	movff	2+?___ftmul,(c:?___ftdiv+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:?___ftadd)
	movff	1+?___ftdiv,(c:?___ftadd+1)
	movff	2+?___ftdiv,(c:?___ftadd+2)
	movlw	low(float24(140.69000000000000))
	movwf	(0+((c:?___ftadd)+03h)),c
	movlw	high(float24(140.69000000000000))
	movwf	(1+((c:?___ftadd)+03h)),c
	movlw	low highword(float24(140.69000000000000))
	movwf	(2+((c:?___ftadd)+03h)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_voltage)
	movff	1+?___ftadd,(c:_voltage+1)
	movff	2+?___ftadd,(c:_voltage+2)
	line	189
;NGC.c: 189: current = ((float)current_bits) * 0.011;
	movff	(c:_current_bits),(c:?___lwtoft)
	movff	(c:_current_bits+1),(c:?___lwtoft+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:?___ftmul)
	movff	1+?___lwtoft,(c:?___ftmul+1)
	movff	2+?___lwtoft,(c:?___ftmul+2)
	movlw	low(float24(0.010999999999999999))
	movwf	(0+((c:?___ftmul)+03h)),c
	movlw	high(float24(0.010999999999999999))
	movwf	(1+((c:?___ftmul)+03h)),c
	movlw	low highword(float24(0.010999999999999999))
	movwf	(2+((c:?___ftmul)+03h)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_current)
	movff	1+?___ftmul,(c:_current+1)
	movff	2+?___ftmul,(c:_current+2)
	line	193
	
l2731:
;NGC.c: 193: if( state == 1 ) {
	decf	((c:_state)),c,w

	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2745
u2740:
	line	195
	
l2733:
;NGC.c: 195: state = 2;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:_state)),c
	movf	(??_main+0+0)&0ffh,c,w
	line	197
	
l2735:
;NGC.c: 197: LATC7 = 0;
	bcf	c:(31839/8),(31839)&7	;volatile
	line	202
	
l2737:
;NGC.c: 202: LATC5 = 1;
	bsf	c:(31837/8),(31837)&7	;volatile
	line	203
	
l2739:
;NGC.c: 203: LATC6 = 0;
	bcf	c:(31838/8),(31838)&7	;volatile
	line	204
	
l2741:
;NGC.c: 204: LATA7 = 0;
	bcf	c:(31823/8),(31823)&7	;volatile
	line	205
	
l2743:
;NGC.c: 205: LATA6 = 1;
	bsf	c:(31822/8),(31822)&7	;volatile
	line	208
;NGC.c: 208: } else if ( state == 2 ) {
	goto	l2777
	
l110:
	
l2745:
	movf	((c:_state)),c,w
	xorlw	2

	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2759
u2750:
	line	211
	
l2747:
;NGC.c: 211: if( voltage >= constant_voltage ) {
	movff	(c:_voltage),(c:?___ftge)
	movff	(c:_voltage+1),(c:?___ftge+1)
	movff	(c:_voltage+2),(c:?___ftge+2)
	movff	(c:_constant_voltage),0+((c:?___ftge)+03h)
	movff	(c:_constant_voltage+1),1+((c:?___ftge)+03h)
	movff	(c:_constant_voltage+2),2+((c:?___ftge)+03h)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u2761
	goto	u2760
u2761:
	goto	l2777
u2760:
	line	213
	
l2749:
;NGC.c: 213: state = 3;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(03h)
	movwf	((c:_state)),c
	movf	(??_main+0+0)&0ffh,c,w
	line	218
	
l2751:
;NGC.c: 218: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	219
	
l2753:
;NGC.c: 219: LATC6 = 0;
	bcf	c:(31838/8),(31838)&7	;volatile
	line	220
	
l2755:
;NGC.c: 220: LATA7 = 1;
	bsf	c:(31823/8),(31823)&7	;volatile
	line	221
	
l2757:
;NGC.c: 221: LATA6 = 1;
	bsf	c:(31822/8),(31822)&7	;volatile
	goto	l2777
	line	223
	
l113:
	line	226
;NGC.c: 223: }
;NGC.c: 226: } else if ( state == 3 ) {
	goto	l2777
	
l112:
	
l2759:
	movf	((c:_state)),c,w
	xorlw	3

	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l2777
u2770:
	line	229
	
l2761:
;NGC.c: 229: if( current <= minimum_current ) {
	movff	(_minimum_current),(c:?___ftge)
	movff	(_minimum_current+1),(c:?___ftge+1)
	movff	(_minimum_current+2),(c:?___ftge+2)
	movff	(c:_current),0+((c:?___ftge)+03h)
	movff	(c:_current+1),1+((c:?___ftge)+03h)
	movff	(c:_current+2),2+((c:?___ftge)+03h)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u2781
	goto	u2780
u2781:
	goto	l2777
u2780:
	line	231
	
l2763:
;NGC.c: 231: state = 0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_state)),c
	movf	(??_main+0+0)&0ffh,c,w
	line	238
	
l2765:
;NGC.c: 238: LATC5 = 0;
	bcf	c:(31837/8),(31837)&7	;volatile
	line	239
	
l2767:
;NGC.c: 239: LATC6 = 1;
	bsf	c:(31838/8),(31838)&7	;volatile
	line	240
	
l2769:
;NGC.c: 240: LATA7 = 1;
	bsf	c:(31823/8),(31823)&7	;volatile
	line	241
	
l2771:
;NGC.c: 241: LATA6 = 0;
	bcf	c:(31822/8),(31822)&7	;volatile
	line	243
	
l2773:
;NGC.c: 243: LATC7 = 1;
	bsf	c:(31839/8),(31839)&7	;volatile
	line	244
	
l2775:
;NGC.c: 244: LATB4 = 0;
	bcf	c:(31828/8),(31828)&7	;volatile
	goto	l2777
	line	246
	
l116:
	goto	l2777
	line	247
	
l115:
	goto	l2777
	line	250
	
l114:
	goto	l2777
	
l111:
	
l2777:
;NGC.c: 246: }
;NGC.c: 247: }
;NGC.c: 250: over_temp_bits = get_sample( 1 );
	movlw	high(01h)
	movwf	((c:?_get_sample+1)),c
	movlw	low(01h)
	movwf	((c:?_get_sample)),c
	call	_get_sample	;wreg free
	movff	0+?_get_sample,(_over_temp_bits)
	movff	1+?_get_sample,(_over_temp_bits+1)
	line	251
	
l2779:
;NGC.c: 251: ext_temp_bits = get_sample( 2 );
	movlw	high(02h)
	movwf	((c:?_get_sample+1)),c
	movlw	low(02h)
	movwf	((c:?_get_sample)),c
	call	_get_sample	;wreg free
	movff	0+?_get_sample,(_ext_temp_bits)
	movff	1+?_get_sample,(_ext_temp_bits+1)
	line	256
	
l2781:
;NGC.c: 256: LATB5 = 1;
	bsf	c:(31829/8),(31829)&7	;volatile
	line	257
	
l2783:
;NGC.c: 257: LATB5 = 0;
	bcf	c:(31829/8),(31829)&7	;volatile
	goto	l2729
	line	259
	
l117:
	line	168
	goto	l2729
	
l118:
	line	261
	
l119:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initialization

;; *************** function _initialization *****************
;; Defined at:
;;		line 274 in file "I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	274
	global	__size_of_initialization
	__size_of_initialization	equ	__end_of_initialization-_initialization
	
_initialization:
	opt	stack 30
	line	277
	
l2293:
;NGC.c: 277: OSCCON = 0b01110000;
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	278
;NGC.c: 278: OSCCON2 = 0b10000000;
	movlw	low(080h)
	movwf	((c:4050)),c	;volatile
	line	279
;NGC.c: 279: OSCTUNE = 0b11011111;
	movlw	low(0DFh)
	movwf	((c:3995)),c	;volatile
	line	282
;NGC.c: 282: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	283
;NGC.c: 283: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	284
;NGC.c: 284: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	285
;NGC.c: 285: ANSELC = 0xE6;
	movlw	low(0E6h)
	movlb	15	; () banked
	movlb	15	; () banked
	movwf	((3898))&0ffh	;volatile
	line	287
	
l2295:
;NGC.c: 287: LATC7 = 1;
	bsf	c:(31839/8),(31839)&7	;volatile
	line	288
	
l2297:
;NGC.c: 288: LATB0 = 1;
	bsf	c:(31824/8),(31824)&7	;volatile
	line	291
;NGC.c: 291: TRISA = 0b00101111;
	movlw	low(02Fh)
	movwf	((c:3986)),c	;volatile
	line	292
;NGC.c: 292: TRISB = 0b11000000;
	movlw	low(0C0h)
	movwf	((c:3987)),c	;volatile
	line	293
;NGC.c: 293: TRISC = 0b00011110;
	movlw	low(01Eh)
	movwf	((c:3988)),c	;volatile
	line	296
;NGC.c: 296: ADCON0 = 0b00000010;
	movlw	low(02h)
	movwf	((c:4034)),c	;volatile
	line	297
;NGC.c: 297: ADCON1 = 0b00000000;
	movlw	low(0)
	movwf	((c:4033)),c	;volatile
	line	298
;NGC.c: 298: ADCON2 = 0b10110010;
	movlw	low(0B2h)
	movwf	((c:4032)),c	;volatile
	line	301
;NGC.c: 301: SSP2STAT = 0b01000000;
	movlw	low(040h)
	movwf	((c:3949)),c	;volatile
	line	302
;NGC.c: 302: SSP2CON1 = 0b00100000;
	movlw	low(020h)
	movwf	((c:3948)),c	;volatile
	line	305
	
l2299:
;NGC.c: 305: LATB4 = 1;
	bsf	c:(31828/8),(31828)&7	;volatile
	line	307
	
l122:
	return
	opt stack 0
GLOBAL	__end_of_initialization
	__end_of_initialization:
	signat	_initialization,88
	global	_set_cv

;; *************** function _set_cv *****************
;; Defined at:
;;		line 325 in file "I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
;; Parameters:    Size  Location     Type
;;  bits            1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	325
	global	__size_of_set_cv
	__size_of_set_cv	equ	__end_of_set_cv-_set_cv
	
_set_cv:
	opt	stack 30
	line	327
	
l2301:
;NGC.c: 327: LATB0 = 0;
	bcf	c:(31824/8),(31824)&7	;volatile
	line	328
	
l2303:
;NGC.c: 328: SSP2BUF = 0x01;
	movlw	low(01h)
	movwf	((c:3951)),c	;volatile
	line	329
;NGC.c: 329: while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
	goto	l131
	
l132:
	
l131:
	
	btfss	((c:3949)),c,(0)&7	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l131
u2030:
	goto	l2305
	
l133:
	line	330
	
l2305:
;NGC.c: 330: SSP2BUF;
	movf	((c:3951)),c,w	;volatile
	line	331
	
l2307:
;NGC.c: 331: SSP2BUF = bits;
	movff	(c:set_cv@bits),(c:3951)	;volatile
	line	332
;NGC.c: 332: while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
	goto	l134
	
l135:
	
l134:
	
	btfss	((c:3949)),c,(0)&7	;volatile
	goto	u2041
	goto	u2040
u2041:
	goto	l134
u2040:
	
l136:
	line	333
;NGC.c: 333: LATB0 = 1;
	bsf	c:(31824/8),(31824)&7	;volatile
	line	335
	
l137:
	return
	opt stack 0
GLOBAL	__end_of_set_cv
	__end_of_set_cv:
	signat	_set_cv,4216
	global	_set_cc

;; *************** function _set_cc *****************
;; Defined at:
;;		line 339 in file "I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
;; Parameters:    Size  Location     Type
;;  bits            1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	339
	global	__size_of_set_cc
	__size_of_set_cc	equ	__end_of_set_cc-_set_cc
	
_set_cc:
	opt	stack 30
	line	341
	
l2309:
;NGC.c: 341: LATB0 = 0;
	bcf	c:(31824/8),(31824)&7	;volatile
	line	342
	
l2311:
;NGC.c: 342: SSP2BUF = 0x00;
	movlw	low(0)
	movwf	((c:3951)),c	;volatile
	line	343
;NGC.c: 343: while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
	goto	l140
	
l141:
	
l140:
	
	btfss	((c:3949)),c,(0)&7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l140
u2050:
	goto	l2313
	
l142:
	line	344
	
l2313:
;NGC.c: 344: SSP2BUF;
	movf	((c:3951)),c,w	;volatile
	line	345
	
l2315:
;NGC.c: 345: SSP2BUF = bits;
	movff	(c:set_cc@bits),(c:3951)	;volatile
	line	346
;NGC.c: 346: while( ( SSP2STAT & 0b00000001 ) != 0x00000001 );
	goto	l143
	
l144:
	
l143:
	
	btfss	((c:3949)),c,(0)&7	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l143
u2060:
	
l145:
	line	347
;NGC.c: 347: LATB0 = 1;
	bsf	c:(31824/8),(31824)&7	;volatile
	line	349
	
l146:
	return
	opt stack 0
GLOBAL	__end_of_set_cc
	__end_of_set_cc:
	signat	_set_cc,4216
	global	_get_sample

;; *************** function _get_sample *****************
;; Defined at:
;;		line 311 in file "I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
;; Parameters:    Size  Location     Type
;;  channel         2    0[COMRAM] short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"I:\CCS\Projects\NG3 Controller\Firmware\NGC.c"
	line	311
	global	__size_of_get_sample
	__size_of_get_sample	equ	__end_of_get_sample-_get_sample
	
_get_sample:
	opt	stack 30
	line	313
	
l2317:
;NGC.c: 313: ADCON0 = (channel<<2) | 0b00000001;
	rlncf	((c:get_sample@channel)),c,w
	rlncf	wreg
	andlw	(0ffh shl 2) & 0ffh
	iorlw	low(01h)
	movwf	((c:4034)),c	;volatile
	line	315
;NGC.c: 315: ADCON0 = ADCON0 | 0b00000010;
	movf	((c:4034)),c,w	;volatile
	iorlw	low(02h)
	movwf	((c:4034)),c	;volatile
	line	318
;NGC.c: 318: while((ADCON0 & 0b00000010) != 0b00000000 ) {}
	goto	l125
	
l126:
	
l125:
	
	btfsc	((c:4034)),c,(1)&7	;volatile
	goto	u2071
	goto	u2070
u2071:
	goto	l125
u2070:
	goto	l2319
	
l127:
	line	320
	
l2319:
;NGC.c: 320: return (ADRESH<<8) | ADRESL;
	movf	((c:4035)),c,w	;volatile
	movff	(c:4036),??_get_sample+0+0	;volatile
	clrf	(??_get_sample+0+0+1)&0ffh,c
	movff	??_get_sample+0+0,??_get_sample+0+1
	clrf	(??_get_sample+0+0),c
	iorwf	(??_get_sample+0+0),c,w
	
	movwf	((c:?_get_sample)),c
	movf	(??_get_sample+0+1),c,w
	movwf	1+((c:?_get_sample)),c
	goto	l128
	
l2321:
	line	321
	
l128:
	return
	opt stack 0
GLOBAL	__end_of_get_sample
	__end_of_get_sample:
	signat	_get_sample,4218
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;;  f2              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   36[COMRAM] unsigned char 
;;  exp2            1   35[COMRAM] unsigned char 
;;  sign            1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;;		___asftadd
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
	opt	stack 29
	line	90
	
l2517:
	movlw	(0Fh)&0ffh
	movwf	(??___ftadd+0+0)&0ffh,c
	movff	(c:___ftadd@f1),??___ftadd+1+0
	movff	(c:___ftadd@f1+1),??___ftadd+1+0+1
	movff	(c:___ftadd@f1+2),??___ftadd+1+0+2
	incf	((??___ftadd+0+0)),c,w
	movwf	(??___ftadd+4+0)&0ffh,c
	goto	u2320
u2325:
	bcf	status,0
	rrcf	(??___ftadd+1+2),c
	rrcf	(??___ftadd+1+1),c
	rrcf	(??___ftadd+1+0),c
u2320:
	decfsz	(??___ftadd+4+0)&0ffh,c
	goto	u2325
	movf	(??___ftadd+1+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movlw	(0Fh)&0ffh
	movwf	(??___ftadd+0+0)&0ffh,c
	movff	(c:___ftadd@f2),??___ftadd+1+0
	movff	(c:___ftadd@f2+1),??___ftadd+1+0+1
	movff	(c:___ftadd@f2+2),??___ftadd+1+0+2
	incf	((??___ftadd+0+0)),c,w
	movwf	(??___ftadd+4+0)&0ffh,c
	goto	u2330
u2335:
	bcf	status,0
	rrcf	(??___ftadd+1+2),c
	rrcf	(??___ftadd+1+1),c
	rrcf	(??___ftadd+1+0),c
u2330:
	decfsz	(??___ftadd+4+0)&0ffh,c
	goto	u2335
	movf	(??___ftadd+1+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l2519:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l432
u2340:
	
l2521:
	movf	((c:___ftadd@exp2)),c,w
	cpfslt	((c:___ftadd@exp1)),c
	goto	u2351
	goto	u2350
u2351:
	goto	l2525
u2350:
	
l2523:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u2361
	goto	u2360
u2361:
	goto	l2525
u2360:
	
l432:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l433
	
l430:
	line	94
	
l2525:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l436
u2370:
	
l2527:
	movf	((c:___ftadd@exp1)),c,w
	cpfslt	((c:___ftadd@exp2)),c
	goto	u2381
	goto	u2380
u2381:
	goto	l2531
u2380:
	
l2529:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u2391
	goto	u2390
u2391:
	goto	l2531
u2390:
	
l436:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l433
	
l434:
	line	96
	
l2531:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	line	97
	
l2533:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2537
u2400:
	line	98
	
l2535:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l2537
	
l437:
	line	99
	
l2537:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l438
u2410:
	line	100
	
l2539:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l438:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l2541:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l2543:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l2545:
	movf	((c:___ftadd@exp2)),c,w
	cpfslt	((c:___ftadd@exp1)),c
	goto	u2421
	goto	u2420
u2421:
	goto	l2557
u2420:
	goto	l2547
	line	109
	
l440:
	line	110
	
l2547:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l2549:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2555
u2430:
	
l2551:
	decf	((c:___ftadd@sign)),c
	movf	((c:___ftadd@sign))&0ffh,w
	andlw	low(07h)
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2547
u2440:
	goto	l2555
	
l442:
	goto	l2555
	
l443:
	line	113
	goto	l2555
	
l445:
	line	114
	
l2553:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l2555
	line	116
	
l444:
	line	113
	
l2555:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u2451
	goto	u2450
u2451:
	goto	l2553
u2450:
	goto	l447
	
l446:
	line	117
	goto	l447
	
l439:
	
l2557:
	movf	((c:___ftadd@exp1)),c,w
	cpfslt	((c:___ftadd@exp2)),c
	goto	u2461
	goto	u2460
u2461:
	goto	l447
u2460:
	goto	l2559
	line	120
	
l449:
	line	121
	
l2559:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l2561:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2567
u2470:
	
l2563:
	decf	((c:___ftadd@sign)),c
	movf	((c:___ftadd@sign))&0ffh,w
	andlw	low(07h)
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2559
u2480:
	goto	l2567
	
l451:
	goto	l2567
	
l452:
	line	124
	goto	l2567
	
l454:
	line	125
	
l2565:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l2567
	line	127
	
l453:
	line	124
	
l2567:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u2491
	goto	u2490
u2491:
	goto	l2565
u2490:
	goto	l447
	
l455:
	goto	l447
	line	128
	
l448:
	line	129
	
l447:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l456
u2500:
	line	131
	
l2569:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l456:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2573
u2510:
	line	136
	
l2571:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l2573
	line	138
	
l457:
	line	139
	
l2573:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	line	140
	
l2575:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l2577:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2583
u2520:
	line	142
	
l2579:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l2581:
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	movf	(??___ftadd+0+0)&0ffh,c,w
	goto	l2583
	line	145
	
l458:
	line	146
	
l2583:
	movff	(c:___ftadd@f2),(c:?___ftpack)
	movff	(c:___ftadd@f2+1),(c:?___ftpack+1)
	movff	(c:___ftadd@f2+2),(c:?___ftpack+2)
	movff	(c:___ftadd@exp1),0+((c:?___ftpack)+03h)
	movff	(c:___ftadd@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l433
	
l2585:
	line	148
	
l433:
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   37[COMRAM] float 
;;  f2              3   40[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   49[COMRAM] float 
;;  sign            1   53[COMRAM] unsigned char 
;;  exp             1   52[COMRAM] unsigned char 
;;  cntr            1   48[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   37[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___asftdiv
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
	opt	stack 29
	line	55
	
l2587:
	movlw	(0Fh)&0ffh
	movwf	(??___ftdiv+0+0)&0ffh,c
	movff	(c:___ftdiv@f1),??___ftdiv+1+0
	movff	(c:___ftdiv@f1+1),??___ftdiv+1+0+1
	movff	(c:___ftdiv@f1+2),??___ftdiv+1+0+2
	incf	((??___ftdiv+0+0)),c,w
	movwf	(??___ftdiv+4+0)&0ffh,c
	goto	u2530
u2535:
	bcf	status,0
	rrcf	(??___ftdiv+1+2),c
	rrcf	(??___ftdiv+1+1),c
	rrcf	(??___ftdiv+1+0),c
u2530:
	decfsz	(??___ftdiv+4+0)&0ffh,c
	goto	u2535
	movf	(??___ftdiv+1+0),c,w
	movwf	((c:___ftdiv@exp)),c
	tstfsz	((c:___ftdiv@exp))&0ffh
	goto	u2541
	goto	u2540
u2541:
	goto	l2593
u2540:
	line	56
	
l2589:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l464
	
l2591:
	goto	l464
	
l463:
	line	57
	
l2593:
	movlw	(0Fh)&0ffh
	movwf	(??___ftdiv+0+0)&0ffh,c
	movff	(c:___ftdiv@f2),??___ftdiv+1+0
	movff	(c:___ftdiv@f2+1),??___ftdiv+1+0+1
	movff	(c:___ftdiv@f2+2),??___ftdiv+1+0+2
	incf	((??___ftdiv+0+0)),c,w
	movwf	(??___ftdiv+4+0)&0ffh,c
	goto	u2550
u2555:
	bcf	status,0
	rrcf	(??___ftdiv+1+2),c
	rrcf	(??___ftdiv+1+1),c
	rrcf	(??___ftdiv+1+0),c
u2550:
	decfsz	(??___ftdiv+4+0)&0ffh,c
	goto	u2555
	movf	(??___ftdiv+1+0),c,w
	movwf	((c:___ftdiv@sign)),c
	tstfsz	((c:___ftdiv@sign))&0ffh
	goto	u2561
	goto	u2560
u2561:
	goto	l2599
u2560:
	line	58
	
l2595:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l464
	
l2597:
	goto	l464
	
l465:
	line	59
	
l2599:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	60
	
l2601:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	61
	
l2603:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	62
	
l2605:
	movf	(0+2+(c:___ftdiv@f2))&0ffh,w
	xorwf	((c:___ftdiv@sign)),c
	line	63
	
l2607:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	64
	
l2609:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	65
	
l2611:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	66
	
l2613:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	67
	
l2615:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	68
	
l2617:
	movwf	(??___ftdiv+0+0)&0ffh,c
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	movf	(??___ftdiv+0+0)&0ffh,c,w
	line	69
	
l466:
	line	70
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	71
	
l2619:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u2571
	goto	u2570
u2571:
	goto	l467
u2570:
	line	72
	
l2621:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	73
	
l2623:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	74
	
l467:
	line	75
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	76
	
l2625:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l466
	goto	l2627
	
l468:
	line	77
	
l2627:
	movff	(c:___ftdiv@f3),(c:?___ftpack)
	movff	(c:___ftdiv@f3+1),(c:?___ftpack+1)
	movff	(c:___ftdiv@f3+2),(c:?___ftpack+2)
	movff	(c:___ftdiv@exp),0+((c:?___ftpack)+03h)
	movff	(c:___ftdiv@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l464
	
l2629:
	line	78
	
l464:
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMRAM] float 
;;  ff2             3    3[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
	opt	stack 30
	line	6
	
l2409:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l2413
u2200:
	line	7
	
l2411:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l2413
	
l471:
	line	8
	
l2413:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l2417
u2210:
	line	9
	
l2415:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l2417
	
l472:
	line	10
	
l2417:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l2419:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
	movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u2221
	goto	u2220
u2221:
	goto	l2423
u2220:
	
l2421:
	bcf	status,0
	goto	l473
	
l2289:
	
l2423:
	bsf	status,0
	goto	l473
	
l2291:
	goto	l473
	
l2425:
	line	13
	
l473:
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   54[COMRAM] float 
;;  f2              3   57[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   66[COMRAM] unsigned um
;;  sign            1   70[COMRAM] unsigned char 
;;  cntr            1   69[COMRAM] unsigned char 
;;  exp             1   65[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   54[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___asftmul
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
	opt	stack 29
	line	56
	
l2631:
	movlw	(0Fh)&0ffh
	movwf	(??___ftmul+0+0)&0ffh,c
	movff	(c:___ftmul@f1),??___ftmul+1+0
	movff	(c:___ftmul@f1+1),??___ftmul+1+0+1
	movff	(c:___ftmul@f1+2),??___ftmul+1+0+2
	incf	((??___ftmul+0+0)),c,w
	movwf	(??___ftmul+4+0)&0ffh,c
	goto	u2580
u2585:
	bcf	status,0
	rrcf	(??___ftmul+1+2),c
	rrcf	(??___ftmul+1+1),c
	rrcf	(??___ftmul+1+0),c
u2580:
	decfsz	(??___ftmul+4+0)&0ffh,c
	goto	u2585
	movf	(??___ftmul+1+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u2591
	goto	u2590
u2591:
	goto	l2637
u2590:
	line	57
	
l2633:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l479
	
l2635:
	goto	l479
	
l478:
	line	58
	
l2637:
	movlw	(0Fh)&0ffh
	movwf	(??___ftmul+0+0)&0ffh,c
	movff	(c:___ftmul@f2),??___ftmul+1+0
	movff	(c:___ftmul@f2+1),??___ftmul+1+0+1
	movff	(c:___ftmul@f2+2),??___ftmul+1+0+2
	incf	((??___ftmul+0+0)),c,w
	movwf	(??___ftmul+4+0)&0ffh,c
	goto	u2600
u2605:
	bcf	status,0
	rrcf	(??___ftmul+1+2),c
	rrcf	(??___ftmul+1+1),c
	rrcf	(??___ftmul+1+0),c
u2600:
	decfsz	(??___ftmul+4+0)&0ffh,c
	goto	u2605
	movf	(??___ftmul+1+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u2611
	goto	u2610
u2611:
	goto	l2643
u2610:
	line	59
	
l2639:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l479
	
l2641:
	goto	l479
	
l480:
	line	60
	
l2643:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	61
	
l2645:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	62
	movf	(0+2+(c:___ftmul@f2))&0ffh,w
	xorwf	((c:___ftmul@sign)),c
	line	63
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	64
	
l2647:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	66
	
l2649:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	67
	
l2651:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	68
	
l2653:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	69
	
l2655:
	movwf	(??___ftmul+0+0)&0ffh,c
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	movf	(??___ftmul+0+0)&0ffh,c,w
	goto	l2657
	line	70
	
l481:
	line	71
	
l2657:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l2661
u2620:
	line	72
	
l2659:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l2661
	
l482:
	line	73
	
l2661:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	74
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	75
	
l2663:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l2657
	goto	l2665
	
l483:
	line	76
	
l2665:
	movwf	(??___ftmul+0+0)&0ffh,c
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	movf	(??___ftmul+0+0)&0ffh,c,w
	goto	l2667
	line	77
	
l484:
	line	78
	
l2667:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2671
u2630:
	line	79
	
l2669:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l2671
	
l485:
	line	80
	
l2671:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	81
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	82
	
l2673:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l2667
	goto	l2675
	
l486:
	line	83
	
l2675:
	movff	(c:___ftmul@f3_as_product),(c:?___ftpack)
	movff	(c:___ftmul@f3_as_product+1),(c:?___ftpack+1)
	movff	(c:___ftmul@f3_as_product+2),(c:?___ftpack+2)
	movff	(c:___ftmul@exp),0+((c:?___ftpack)+03h)
	movff	(c:___ftmul@sign),0+((c:?___ftpack)+04h)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l479
	
l2677:
	line	84
	
l479:
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   18[COMRAM] unsigned long 
;;  exp1            1   22[COMRAM] unsigned char 
;;  sign1           1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
	opt	stack 30
	line	49
	
l2467:
	movlw	(0Fh)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u2240
u2245:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u2240:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u2245
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@exp1)),c
	tstfsz	((c:___fttol@exp1))&0ffh
	goto	u2251
	goto	u2250
u2251:
	goto	l2473
u2250:
	line	50
	
l2469:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l499
	
l2471:
	goto	l499
	
l498:
	line	51
	
l2473:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u2260
u2265:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u2260:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u2265
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l2475:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l2477:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l2479:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l2481:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l2483:
	btfss	((c:___fttol@exp1)),c,7
	goto	u2271
	goto	u2270
u2271:
	goto	l2495
u2270:
	line	57
	
l2485:
	movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	addlw	-((-15)^80h)
	btfsc	status,0
	goto	u2281
	goto	u2280
u2281:
	goto	l2491
u2280:
	line	58
	
l2487:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l499
	
l2489:
	goto	l499
	
l501:
	goto	l2491
	line	59
	
l502:
	line	60
	
l2491:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l2493:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l2491
	goto	l2505
	
l503:
	line	62
	goto	l2505
	
l500:
	line	63
	
l2495:
	movlw	(018h-1)
	cpfsgt	((c:___fttol@exp1)),c
	goto	u2291
	goto	u2290
u2291:
	goto	l2503
u2290:
	line	64
	
l2497:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l499
	
l2499:
	goto	l499
	
l505:
	line	65
	goto	l2503
	
l507:
	line	66
	
l2501:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l2503
	line	68
	
l506:
	line	65
	
l2503:
	tstfsz	((c:___fttol@exp1)),c
	goto	u2301
	goto	u2300
u2301:
	goto	l2501
u2300:
	goto	l2505
	
l508:
	goto	l2505
	line	69
	
l504:
	line	70
	
l2505:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2509
u2310:
	line	71
	
l2507:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l2509
	
l509:
	line	72
	
l2509:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l499
	
l2511:
	line	73
	
l499:
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
	opt	stack 29
	line	30
	
l2513:
	movff	(c:___lwtoft@c),(c:?___ftpack)
	movff	(c:___lwtoft@c+1),(c:?___ftpack+1)
	clrf	((c:?___ftpack+2)),c
	movwf	(??___lwtoft+0+0)&0ffh,c
	movlw	low(08Eh)
	movwf	(0+((c:?___ftpack)+03h)),c
	movf	(??___lwtoft+0+0)&0ffh,c,w
	movwf	(??___lwtoft+1+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?___ftpack)+04h)),c
	movf	(??___lwtoft+1+0)&0ffh,c,w
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	goto	l634
	
l2515:
	line	31
	
l634:
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___abtoft
;;		___altoft
;;		___attoft
;;		___awtoft
;;		___lbtoft
;;		___lltoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
	opt	stack 29
	line	64
	
l2335:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l2339
u2090:
	
l2337:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l2345
u2100:
	goto	l2339
	
l394:
	line	65
	
l2339:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l395
	
l2341:
	goto	l395
	
l392:
	line	66
	goto	l2345
	
l397:
	line	67
	
l2343:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l2345
	line	69
	
l396:
	line	66
	
l2345:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2343
u2110:
	goto	l2351
	
l398:
	line	70
	goto	l2351
	
l400:
	line	71
	
l2347:
	incf	((c:___ftpack@exp)),c
	line	72
	
l2349:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l2351
	line	74
	
l399:
	line	70
	
l2351:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2347
u2120:
	goto	l2355
	
l401:
	line	75
	goto	l2355
	
l403:
	line	76
	
l2353:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l2355
	line	78
	
l402:
	line	75
	
l2355:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l2353
u2130:
	
l404:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l2359
u2140:
	line	80
	
l2357:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l2359
	
l405:
	line	81
	
l2359:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	movwf	(??___ftpack+0+0+2)&0ffh,c
	clrf	(??___ftpack+0+0+1)&0ffh,c
	clrf	(??___ftpack+0+0)&0ffh,c
	movf	(??___ftpack+0+0),c,w
	iorwf	((c:___ftpack@arg)),c
	movf	(??___ftpack+0+1),c,w
	iorwf	((c:___ftpack@arg+1)),c
	movf	(??___ftpack+0+2),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l2361:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2365
u2150:
	line	84
	
l2363:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l2365
	
l406:
	line	85
	
l2365:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l395
	
l2367:
	line	86
	
l395:
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
