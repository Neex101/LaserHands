EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:opa241pa
LIBS:LaserHands-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_2_3 J?
U 1 1 5963BBF2
P 2650 2700
F 0 "J?" H 3350 1450 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2250 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 3650 3950 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
$Comp
L MCP4921-E/P U?
U 1 1 5963BC88
P 4950 1800
F 0 "U?" H 4500 2100 50  0000 L CNN
F 1 "MCP4921-E/P" H 4950 2100 50  0000 L CNN
F 2 "" H 4950 1800 50  0001 C CIN
F 3 "" H 4950 1800 50  0001 C CNN
	1    4950 1800
	1    0    0    -1  
$EndComp
$Comp
L OPA241PA U?
U 1 1 5963EAFB
P 7250 1850
F 0 "U?" H 7250 2200 60  0000 C CNN
F 1 "OPA241PA" H 7250 1500 60  0000 C CNN
F 2 "" H 7200 1450 60  0001 C CNN
F 3 "" H 7200 1450 60  0001 C CNN
	1    7250 1850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59650AD5
P 4600 750
F 0 "#PWR?" H 4600 600 50  0001 C CNN
F 1 "+5V" H 4600 890 50  0000 C CNN
F 2 "" H 4600 750 50  0001 C CNN
F 3 "" H 4600 750 50  0001 C CNN
	1    4600 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59650D5F
P 4150 2000
F 0 "#PWR?" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4150 1850 50  0000 C CNN
F 2 "" H 4150 2000 50  0001 C CNN
F 3 "" H 4150 2000 50  0001 C CNN
	1    4150 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59650D8B
P 5200 2300
F 0 "#PWR?" H 5200 2150 50  0001 C CNN
F 1 "+5V" H 5200 2440 50  0000 C CNN
F 2 "" H 5200 2300 50  0001 C CNN
F 3 "" H 5200 2300 50  0001 C CNN
	1    5200 2300
	1    0    0    -1  
$EndComp
NoConn ~ 6600 1700
NoConn ~ 7850 1700
NoConn ~ 7850 2000
$Comp
L R R?
U 1 1 59651031
P 6250 1650
F 0 "R?" V 6330 1650 50  0000 C CNN
F 1 "10K" V 6250 1650 50  0000 C CNN
F 2 "" V 6180 1650 50  0001 C CNN
F 3 "" H 6250 1650 50  0001 C CNN
	1    6250 1650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59651089
P 6250 2200
F 0 "R?" V 6330 2200 50  0000 C CNN
F 1 "10K" V 6250 2200 50  0000 C CNN
F 2 "" V 6180 2200 50  0001 C CNN
F 3 "" H 6250 2200 50  0001 C CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
Text GLabel 6600 2000 0    60   Input ~ 0
-9V
Text GLabel 7850 1800 2    60   Input ~ 0
+9V
Text GLabel 8700 1900 2    60   Input ~ 0
+X(LASER)
$Comp
L MCP4921-E/P U?
U 1 1 5965143B
P 4950 4150
F 0 "U?" H 4500 4450 50  0000 L CNN
F 1 "MCP4921-E/P" H 4950 4450 50  0000 L CNN
F 2 "" H 4950 4150 50  0001 C CIN
F 3 "" H 4950 4150 50  0001 C CNN
	1    4950 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59651497
P 4850 3750
F 0 "#PWR?" H 4850 3600 50  0001 C CNN
F 1 "+5V" H 4850 3890 50  0000 C CNN
F 2 "" H 4850 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0001 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59651542
P 4150 4500
F 0 "#PWR?" H 4150 4250 50  0001 C CNN
F 1 "GND" H 4150 4350 50  0000 C CNN
F 2 "" H 4150 4500 50  0001 C CNN
F 3 "" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 596515D1
P 5300 4600
F 0 "#PWR?" H 5300 4450 50  0001 C CNN
F 1 "+5V" H 5300 4740 50  0000 C CNN
F 2 "" H 5300 4600 50  0001 C CNN
F 3 "" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
$Comp
L OPA241PA U?
U 1 1 5965162D
P 7250 2900
F 0 "U?" H 7250 3250 60  0000 C CNN
F 1 "OPA241PA" H 7250 2550 60  0000 C CNN
F 2 "" H 7200 2500 60  0001 C CNN
F 3 "" H 7200 2500 60  0001 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
NoConn ~ 6600 2750
NoConn ~ 7850 3050
NoConn ~ 7850 2750
$Comp
L R R?
U 1 1 596518AA
P 6250 2600
F 0 "R?" V 6330 2600 50  0000 C CNN
F 1 "10K" V 6250 2600 50  0000 C CNN
F 2 "" V 6180 2600 50  0001 C CNN
F 3 "" H 6250 2600 50  0001 C CNN
	1    6250 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59651932
P 6250 3150
F 0 "R?" V 6330 3150 50  0000 C CNN
F 1 "10K" V 6250 3150 50  0000 C CNN
F 2 "" V 6180 3150 50  0001 C CNN
F 3 "" H 6250 3150 50  0001 C CNN
	1    6250 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596519D9
P 6450 2950
F 0 "#PWR?" H 6450 2700 50  0001 C CNN
F 1 "GND" H 6450 2800 50  0000 C CNN
F 2 "" H 6450 2950 50  0001 C CNN
F 3 "" H 6450 2950 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
Text GLabel 6600 3350 3    60   Input ~ 0
-9V
Text GLabel 8700 2950 2    60   Input ~ 0
-X(LASER)
Text GLabel 7850 2850 2    60   Input ~ 0
+9V
$Comp
L OPA241PA U?
U 1 1 59651B9D
P 7250 4400
F 0 "U?" H 7250 4750 60  0000 C CNN
F 1 "OPA241PA" H 7250 4050 60  0000 C CNN
F 2 "" H 7200 4000 60  0001 C CNN
F 3 "" H 7200 4000 60  0001 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
$Comp
L OPA241PA U?
U 1 1 59651C57
P 7300 5450
F 0 "U?" H 7300 5800 60  0000 C CNN
F 1 "OPA241PA" H 7300 5100 60  0000 C CNN
F 2 "" H 7250 5050 60  0001 C CNN
F 3 "" H 7250 5050 60  0001 C CNN
	1    7300 5450
	1    0    0    -1  
$EndComp
NoConn ~ 6600 4250
NoConn ~ 7850 4250
NoConn ~ 7850 4550
NoConn ~ 6650 5300
NoConn ~ 7900 5300
NoConn ~ 7900 5600
Text GLabel 6600 4550 0    60   Input ~ 0
-9V
Text GLabel 6650 5600 0    60   Input ~ 0
-9V
Text GLabel 7850 4350 2    60   Input ~ 0
+9V
Text GLabel 7900 5400 2    60   Input ~ 0
+9V
$Comp
L GND #PWR?
U 1 1 59652136
P 6250 5500
F 0 "#PWR?" H 6250 5250 50  0001 C CNN
F 1 "GND" H 6250 5350 50  0000 C CNN
F 2 "" H 6250 5500 50  0001 C CNN
F 3 "" H 6250 5500 50  0001 C CNN
	1    6250 5500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 596523B5
P 6000 4150
F 0 "R?" V 6080 4150 50  0000 C CNN
F 1 "10K" V 6000 4150 50  0000 C CNN
F 2 "" V 5930 4150 50  0001 C CNN
F 3 "" H 6000 4150 50  0001 C CNN
	1    6000 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59652431
P 6000 4000
F 0 "#PWR?" H 6000 3850 50  0001 C CNN
F 1 "+5V" H 6000 4140 50  0000 C CNN
F 2 "" H 6000 4000 50  0001 C CNN
F 3 "" H 6000 4000 50  0001 C CNN
	1    6000 4000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 596524B8
P 6000 4750
F 0 "R?" V 6080 4750 50  0000 C CNN
F 1 "10K" V 6000 4750 50  0000 C CNN
F 2 "" V 5930 4750 50  0001 C CNN
F 3 "" H 6000 4750 50  0001 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 596525A8
P 6000 5200
F 0 "R?" V 6080 5200 50  0000 C CNN
F 1 "10K" V 6000 5200 50  0000 C CNN
F 2 "" V 5930 5200 50  0001 C CNN
F 3 "" H 6000 5200 50  0001 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5965260C
P 6000 5700
F 0 "R?" V 6080 5700 50  0000 C CNN
F 1 "10K" V 6000 5700 50  0000 C CNN
F 2 "" V 5930 5700 50  0001 C CNN
F 3 "" H 6000 5700 50  0001 C CNN
	1    6000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 750  4600 950 
Wire Wire Line
	4600 950  6250 950 
Wire Wire Line
	4850 950  4850 1400
Wire Wire Line
	4350 1800 4000 1800
Wire Wire Line
	4000 1800 4000 2600
Wire Wire Line
	4000 2600 3550 2600
Wire Wire Line
	4350 1700 3900 1700
Wire Wire Line
	3900 1700 3900 4050
Wire Wire Line
	3900 2900 3550 2900
Wire Wire Line
	4350 1600 3800 1600
Wire Wire Line
	3800 1600 3800 2800
Wire Wire Line
	3550 2800 4350 2800
Wire Wire Line
	4150 1900 4350 1900
Wire Wire Line
	4150 1900 4150 2000
Wire Wire Line
	4850 2200 4300 2200
Wire Wire Line
	4300 2200 4300 1900
Connection ~ 4300 1900
Wire Wire Line
	5050 2200 5050 2300
Wire Wire Line
	5050 2300 5200 2300
Wire Wire Line
	6250 950  6250 1500
Connection ~ 4850 950 
Wire Wire Line
	6600 1800 6250 1800
Wire Wire Line
	5550 1800 5550 1900
Wire Wire Line
	5550 1900 6600 1900
Wire Wire Line
	6250 1800 6250 2050
Wire Wire Line
	7850 1900 8700 1900
Wire Wire Line
	6250 2350 8250 2350
Wire Wire Line
	8250 2350 8250 1900
Connection ~ 8250 1900
Wire Wire Line
	6250 2350 6250 2450
Wire Wire Line
	4350 4150 4150 4150
Wire Wire Line
	4150 4150 4150 2500
Wire Wire Line
	4150 2500 3550 2500
Wire Wire Line
	3900 4050 4350 4050
Connection ~ 3900 2900
Wire Wire Line
	4350 2800 4350 3950
Connection ~ 3800 2800
Wire Wire Line
	4150 4250 4350 4250
Wire Wire Line
	4150 4250 4150 4500
Wire Wire Line
	4850 4550 4300 4550
Wire Wire Line
	4300 4550 4300 4250
Wire Wire Line
	5050 4550 5050 4600
Wire Wire Line
	5050 4600 5300 4600
Connection ~ 4300 4250
Wire Wire Line
	6250 2750 6250 3000
Wire Wire Line
	6250 2850 6600 2850
Connection ~ 6250 2850
Connection ~ 6250 2350
Connection ~ 6250 1800
Wire Wire Line
	6450 2950 6600 2950
Wire Wire Line
	6600 3050 6600 3350
Wire Wire Line
	7850 2950 8700 2950
Wire Wire Line
	6250 3300 6250 3650
Wire Wire Line
	6250 3650 8300 3650
Wire Wire Line
	8300 3650 8300 2950
Connection ~ 8300 2950
Wire Wire Line
	6250 5500 6650 5500
Wire Wire Line
	5550 4150 5700 4150
Wire Wire Line
	5700 4150 5700 4450
Wire Wire Line
	5700 4450 6600 4450
Wire Wire Line
	6000 4300 6000 4600
Wire Wire Line
	6000 4350 6600 4350
Connection ~ 6000 4350
Wire Wire Line
	6000 4900 6000 5050
Wire Wire Line
	6000 5350 6000 5550
Text GLabel 8750 5500 2    60   Input ~ 0
-Y(LASER)
Text GLabel 8700 4450 2    60   Input ~ 0
+Y(LASER)
Wire Wire Line
	7850 4450 8700 4450
Wire Wire Line
	8750 5500 7900 5500
Wire Wire Line
	6000 4950 8300 4950
Wire Wire Line
	8300 4950 8300 4450
Connection ~ 8300 4450
Connection ~ 6000 4950
Wire Wire Line
	6000 5400 6650 5400
Connection ~ 6000 5400
Wire Wire Line
	6000 5850 6000 6000
Wire Wire Line
	6000 6000 8300 6000
Wire Wire Line
	8300 6000 8300 5500
Connection ~ 8300 5500
Text GLabel 2700 6550 0    60   Input ~ 0
-9V
Text GLabel 2950 5750 2    60   Input ~ 0
+9V
$Comp
L GND #PWR?
U 1 1 59652B8E
P 2600 6100
F 0 "#PWR?" H 2600 5850 50  0001 C CNN
F 1 "GND" H 2600 5950 50  0000 C CNN
F 2 "" H 2600 6100 50  0001 C CNN
F 3 "" H 2600 6100 50  0001 C CNN
	1    2600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5750 2800 5750
Wire Wire Line
	2800 5750 2800 6550
Wire Wire Line
	2800 6550 2700 6550
Wire Wire Line
	2600 6100 2800 6100
Connection ~ 2800 6100
$EndSCHEMATC
