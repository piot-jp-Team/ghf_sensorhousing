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
LIBS:MAX485
LIBS:SamacSys_Parts
LIBS:ghf_sensor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L ATMEGA328P-A IC1
U 1 1 5C5E9E7E
P 4675 3225
F 0 "IC1" H 3925 4475 50  0000 L BNN
F 1 "ATMEGA328P-A" H 5075 1825 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4675 3225 50  0000 C CIN
F 3 "" H 4675 3225 50  0000 C CNN
	1    4675 3225
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5C5E9F1E
P 3675 2050
F 0 "#PWR01" H 3675 1900 50  0001 C CNN
F 1 "+5V" H 3675 2190 50  0000 C CNN
F 2 "" H 3675 2050 50  0000 C CNN
F 3 "" H 3675 2050 50  0000 C CNN
	1    3675 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5C5E9F45
P 3400 2875
F 0 "C1" H 3425 2975 50  0000 L CNN
F 1 "0.1uF" H 3425 2775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3438 2725 50  0001 C CNN
F 3 "" H 3400 2875 50  0000 C CNN
	1    3400 2875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5C5E9FBF
P 3400 3100
F 0 "#PWR02" H 3400 2850 50  0001 C CNN
F 1 "GND" H 3400 2950 50  0000 C CNN
F 2 "" H 3400 3100 50  0000 C CNN
F 3 "" H 3400 3100 50  0000 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5C5EA074
P 3675 4550
F 0 "#PWR03" H 3675 4300 50  0001 C CNN
F 1 "GND" H 3675 4400 50  0000 C CNN
F 2 "" H 3675 4550 50  0000 C CNN
F 3 "" H 3675 4550 50  0000 C CNN
	1    3675 4550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 5C5EA204
P 9875 1500
F 0 "P1" H 9875 1750 50  0000 C CNN
F 1 "TEMP" V 9975 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9875 1500 50  0001 C CNN
F 3 "B4B-XH-A(LF)(SN)" V 10050 1500 50  0000 C CNN
	1    9875 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5C5EA537
P 9300 1000
F 0 "#PWR04" H 9300 850 50  0001 C CNN
F 1 "+5V" H 9300 1140 50  0000 C CNN
F 2 "" H 9300 1000 50  0000 C CNN
F 3 "" H 9300 1000 50  0000 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5C5EA5AA
P 9300 1700
F 0 "#PWR05" H 9300 1450 50  0001 C CNN
F 1 "GND" H 9300 1550 50  0000 C CNN
F 2 "" H 9300 1700 50  0000 C CNN
F 3 "" H 9300 1700 50  0000 C CNN
	1    9300 1700
	1    0    0    -1  
$EndComp
Text Label 9375 1450 0    60   ~ 0
SDA
Text Label 9375 1650 0    60   ~ 0
SCL
$Comp
L R R1
U 1 1 5C5EA662
P 9050 1225
F 0 "R1" V 9130 1225 50  0000 C CNN
F 1 "10k" V 9050 1225 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8980 1225 50  0001 C CNN
F 3 "" H 9050 1225 50  0000 C CNN
	1    9050 1225
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5C5EA6BF
P 8875 1225
F 0 "R2" V 8955 1225 50  0000 C CNN
F 1 "10k" V 8875 1225 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8805 1225 50  0001 C CNN
F 3 "" H 8875 1225 50  0000 C CNN
	1    8875 1225
	1    0    0    -1  
$EndComp
Text Label 9050 1625 1    60   ~ 0
SDA
Text Label 8875 1625 1    60   ~ 0
SCL
Text Label 6375 3375 2    60   ~ 0
SDA
Text Label 6375 3475 2    60   ~ 0
SCL
Text Label 6375 4225 2    60   ~ 0
S_RX
Text Label 6375 4125 2    60   ~ 0
S_TX
$Comp
L CONN_01X06 P2
U 1 1 5C5EBA18
P 9900 2625
F 0 "P2" H 9900 2975 50  0000 C CNN
F 1 "CO2" V 10000 2625 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9900 2625 50  0001 C CNN
F 3 "B6B-XH-A(LF)(SN)" V 10075 2625 50  0000 C CNN
	1    9900 2625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5C5EBEC8
P 9100 2400
F 0 "#PWR06" H 9100 2150 50  0001 C CNN
F 1 "GND" H 9100 2250 50  0000 C CNN
F 2 "" H 9100 2400 50  0000 C CNN
F 3 "" H 9100 2400 50  0000 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5C5EBF93
P 9275 2225
F 0 "#PWR07" H 9275 2075 50  0001 C CNN
F 1 "+5V" H 9275 2365 50  0000 C CNN
F 2 "" H 9275 2225 50  0000 C CNN
F 3 "" H 9275 2225 50  0000 C CNN
	1    9275 2225
	1    0    0    -1  
$EndComp
Text Label 9275 2575 0    60   ~ 0
S_TX
Text Label 9275 2675 0    60   ~ 0
S_RX
Text Label 9275 2775 0    60   ~ 0
ACDL
Text Label 9275 2875 0    60   ~ 0
MCDL
Text Label 7575 4175 0    60   ~ 0
RX
Text Label 7575 4475 0    60   ~ 0
TX
$Comp
L Q_NPN_EBC Q1
U 1 1 5C5EF450
P 7700 3275
F 0 "Q1" H 8000 3325 50  0000 R CNN
F 1 "2SC4081T106Q" H 8300 3225 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 7900 3375 50  0001 C CNN
F 3 "2SC4081T106Q" V 7525 3300 50  0000 C CNN
	1    7700 3275
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5C5EF4D2
P 7800 2750
F 0 "R3" V 7880 2750 50  0000 C CNN
F 1 "10k" V 7800 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7730 2750 50  0001 C CNN
F 3 "" H 7800 2750 50  0000 C CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5C5EF527
P 7200 3425
F 0 "R4" V 7280 3425 50  0000 C CNN
F 1 "4.7k" V 7200 3425 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 3425 50  0001 C CNN
F 3 "" H 7200 3425 50  0000 C CNN
	1    7200 3425
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5C5EF920
P 7800 2500
F 0 "#PWR08" H 7800 2350 50  0001 C CNN
F 1 "+5V" H 7800 2640 50  0000 C CNN
F 2 "" H 7800 2500 50  0000 C CNN
F 3 "" H 7800 2500 50  0000 C CNN
	1    7800 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5C5EFCDC
P 7800 3600
F 0 "#PWR09" H 7800 3350 50  0001 C CNN
F 1 "GND" H 7800 3450 50  0000 C CNN
F 2 "" H 7800 3600 50  0000 C CNN
F 3 "" H 7800 3600 50  0000 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
Text Label 6375 3825 2    60   ~ 0
TX
Text Label 6375 3725 2    60   ~ 0
RX
$Comp
L +5V #PWR010
U 1 1 5C5F1652
P 9175 3625
F 0 "#PWR010" H 9175 3475 50  0001 C CNN
F 1 "+5V" H 9175 3765 50  0000 C CNN
F 2 "" H 9175 3625 50  0000 C CNN
F 3 "" H 9175 3625 50  0000 C CNN
	1    9175 3625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5C5F1B35
P 9175 4750
F 0 "#PWR011" H 9175 4500 50  0001 C CNN
F 1 "GND" H 9175 4600 50  0000 C CNN
F 2 "" H 9175 4750 50  0000 C CNN
F 3 "" H 9175 4750 50  0000 C CNN
	1    9175 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 5C5F31D1
P 9925 4325
F 0 "P3" H 9925 4575 50  0000 C CNN
F 1 "RS485" V 10025 4325 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-4_P5.08mm" H 9925 4325 50  0001 C CNN
F 3 "APF-102" V 10100 4325 50  0000 C CNN
	1    9925 4325
	1    0    0    -1  
$EndComp
Text Label 9625 3550 3    60   ~ 0
9V
Text Label 6375 2225 2    60   ~ 0
D9
Text Label 6375 2125 2    60   ~ 0
D8
Text Label 6375 4425 2    60   ~ 0
D7
$Comp
L KHS42E S1
U 1 1 5C615591
P 4525 5900
F 0 "S1" H 5175 6200 50  0000 L CNN
F 1 "KHS42E" H 5175 6100 50  0000 L CNN
F 2 "SamacSys_Parts:SOIC127P812X230-8N" H 5175 6000 50  0001 L CNN
F 3 "http://akizukidenshi.com/download/ds/otax/KHS.pdf" H 5175 5900 50  0001 L CNN
F 4 "HALF PITCH DIP SWITCH, 4-way" H 5175 5800 50  0001 L CNN "Description"
F 5 "2.3" H 5175 5700 50  0001 L CNN "Height"
F 6 "Otax" H 5175 5600 50  0001 L CNN "Manufacturer_Name"
F 7 "KHS42E" H 5175 5500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 5175 5400 50  0001 L CNN "RS Part Number"
F 9 "" H 5175 5300 50  0001 L CNN "RS Price/Stock"
F 10 "" H 5175 5200 50  0001 L CNN "Mouser Part Number"
F 11 "" H 5175 5100 50  0001 L CNN "Mouser Price/Stock"
	1    4525 5900
	1    0    0    -1  
$EndComp
$Comp
L MNR04M0ABJ103 RN1
U 1 1 5C616F55
P 3050 5900
F 0 "RN1" H 3700 6200 50  0000 L CNN
F 1 "MNR04M0ABJ103" H 3700 6100 50  0000 L CNN
F 2 "SamacSys_Parts:RESCAX50P100X200X36-8N" H 3700 6000 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor_network/mnr_a.pdf" H 3700 5900 50  0001 L CNN
F 4 "Chip Resistor Network" H 3700 5800 50  0001 L CNN "Description"
F 5 "" H 3700 5700 50  0001 L CNN "Height"
F 6 "ROHM Semiconductor" H 3700 5600 50  0001 L CNN "Manufacturer_Name"
F 7 "MNR04M0ABJ103" H 3700 5500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3700 5400 50  0001 L CNN "RS Part Number"
F 9 "" H 3700 5300 50  0001 L CNN "RS Price/Stock"
F 10 "" H 3700 5200 50  0001 L CNN "Mouser Part Number"
F 11 "" H 3700 5100 50  0001 L CNN "Mouser Price/Stock"
	1    3050 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5C617CC3
P 2875 5825
F 0 "#PWR012" H 2875 5675 50  0001 C CNN
F 1 "+5V" H 2875 5965 50  0000 C CNN
F 2 "" H 2875 5825 50  0000 C CNN
F 3 "" H 2875 5825 50  0000 C CNN
	1    2875 5825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5C6184DF
P 6125 6600
F 0 "#PWR013" H 6125 6350 50  0001 C CNN
F 1 "GND" H 6125 6450 50  0000 C CNN
F 2 "" H 6125 6600 50  0000 C CNN
F 3 "" H 6125 6600 50  0000 C CNN
	1    6125 6600
	1    0    0    -1  
$EndComp
Text Label 9325 4275 0    60   ~ 0
R_B
Text Label 9325 4375 0    60   ~ 0
R_A
Text Label 5775 6200 0    60   ~ 0
R_A
$Comp
L R R5
U 1 1 5C61A052
P 4400 6400
F 0 "R5" V 4480 6400 50  0000 C CNN
F 1 "120" V 4400 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 6400 50  0001 C CNN
F 3 "" H 4400 6400 50  0000 C CNN
	1    4400 6400
	1    0    0    -1  
$EndComp
Text Label 5775 6300 0    60   ~ 0
R_B
Text Label 4125 5900 0    60   ~ 0
D7
Text Label 4125 6000 0    60   ~ 0
D8
Text Label 4125 6100 0    60   ~ 0
D9
$Comp
L CONN_01X04 P4
U 1 1 5C61E882
P 9925 5700
F 0 "P4" H 9925 5950 50  0000 C CNN
F 1 "SoilSensor" V 10025 5700 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-4_P5.08mm" H 9925 5700 50  0001 C CNN
F 3 "APF-102" V 10100 5700 50  0000 C CNN
	1    9925 5700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5C61FF04
P 9450 5325
F 0 "#PWR014" H 9450 5175 50  0001 C CNN
F 1 "+5V" H 9450 5465 50  0000 C CNN
F 2 "" H 9450 5325 50  0000 C CNN
F 3 "" H 9450 5325 50  0000 C CNN
	1    9450 5325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5C620011
P 9450 5925
F 0 "#PWR015" H 9450 5675 50  0001 C CNN
F 1 "GND" H 9450 5775 50  0000 C CNN
F 2 "" H 9450 5925 50  0000 C CNN
F 3 "" H 9450 5925 50  0000 C CNN
	1    9450 5925
	1    0    0    -1  
$EndComp
NoConn ~ 9725 5650
$Comp
L R R6
U 1 1 5C6208CC
P 9300 5750
F 0 "R6" V 9380 5750 50  0000 C CNN
F 1 "100" V 9300 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9230 5750 50  0001 C CNN
F 3 "" H 9300 5750 50  0000 C CNN
	1    9300 5750
	0    1    1    0   
$EndComp
Text Label 8900 5750 0    60   ~ 0
A1
$Comp
L C C2
U 1 1 5C62267D
P 8450 5700
F 0 "C2" H 8475 5800 50  0000 L CNN
F 1 "0.1uF" H 8475 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8488 5550 50  0001 C CNN
F 3 "" H 8450 5700 50  0000 C CNN
	1    8450 5700
	1    0    0    -1  
$EndComp
Text Label 6375 3075 2    60   ~ 0
A1
$Comp
L GND #PWR016
U 1 1 5C626FAC
P 3850 6525
F 0 "#PWR016" H 3850 6275 50  0001 C CNN
F 1 "GND" H 3850 6375 50  0000 C CNN
F 2 "" H 3850 6525 50  0000 C CNN
F 3 "" H 3850 6525 50  0000 C CNN
	1    3850 6525
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5C627147
P 3025 4650
F 0 "#PWR017" H 3025 4500 50  0001 C CNN
F 1 "+5V" H 3025 4790 50  0000 C CNN
F 2 "" H 3025 4650 50  0000 C CNN
F 3 "" H 3025 4650 50  0000 C CNN
	1    3025 4650
	1    0    0    -1  
$EndComp
Text Label 6375 3175 2    60   ~ 0
A2
Text Label 3475 5500 2    60   ~ 0
A2
Text Label 6375 3575 2    60   ~ 0
RESET
$Comp
L CONN_01X05 P5
U 1 1 5C62A96D
P 1525 2275
F 0 "P5" H 1525 2600 50  0000 C CNN
F 1 "ProgramPort" V 1625 2275 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1525 2275 50  0001 C CNN
F 3 "" H 1525 2275 50  0000 C CNN
	1    1525 2275
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 5C62BE39
P 2025 2675
F 0 "C3" H 2050 2775 50  0000 L CNN
F 1 "0.1uF" H 2050 2575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2063 2525 50  0001 C CNN
F 3 "" H 2025 2675 50  0000 C CNN
	1    2025 2675
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5C62D44F
P 2475 2475
F 0 "R7" V 2555 2475 50  0000 C CNN
F 1 "10k" V 2475 2475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2405 2475 50  0001 C CNN
F 3 "" H 2475 2475 50  0000 C CNN
	1    2475 2475
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5C62DEBF
P 2475 3075
F 0 "SW1" H 2625 3185 50  0000 C CNN
F 1 "P-03647" H 2475 2995 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 2475 3075 50  0001 C CNN
F 3 "" H 2475 3075 50  0000 C CNN
	1    2475 3075
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5C62EE1A
P 2475 3450
F 0 "#PWR018" H 2475 3200 50  0001 C CNN
F 1 "GND" H 2475 3300 50  0000 C CNN
F 2 "" H 2475 3450 50  0000 C CNN
F 3 "" H 2475 3450 50  0000 C CNN
	1    2475 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 5C62F74D
P 2475 2050
F 0 "#PWR019" H 2475 1900 50  0001 C CNN
F 1 "+5V" H 2475 2190 50  0000 C CNN
F 2 "" H 2475 2050 50  0000 C CNN
F 3 "" H 2475 2050 50  0000 C CNN
	1    2475 2050
	1    0    0    -1  
$EndComp
Text Label 1725 2675 3    60   ~ 0
DTR
Text Label 2150 2375 2    60   ~ 0
RX
Text Label 2150 2275 2    60   ~ 0
TX
$Comp
L GND #PWR020
U 1 1 5C6318D3
P 2150 2075
F 0 "#PWR020" H 2150 1825 50  0001 C CNN
F 1 "GND" H 2150 1925 50  0000 C CNN
F 2 "" H 2150 2075 50  0000 C CNN
F 3 "" H 2150 2075 50  0000 C CNN
	1    2150 2075
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 5C632637
P 2725 2475
F 0 "C4" H 2750 2575 50  0000 L CNN
F 1 "0.1uF" H 2750 2375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2763 2325 50  0001 C CNN
F 3 "" H 2725 2475 50  0000 C CNN
	1    2725 2475
	1    0    0    -1  
$EndComp
Text Label 3150 2675 0    60   ~ 0
RESET
$Comp
L LT1129CST-3.3 U2
U 1 1 5C63BAFB
P 3825 1025
F 0 "U2" H 3575 1225 50  0000 C CNN
F 1 "NJM7805SDL1" H 3975 1225 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-252-3_TabPin2" H 3825 1125 50  0000 C CIN
F 3 "" H 3825 1025 50  0000 C CNN
	1    3825 1025
	1    0    0    -1  
$EndComp
$Comp
L 2920L075_60MR F1
U 1 1 5C63D791
P 1725 975
F 0 "F1" H 2375 1275 50  0000 L CNN
F 1 "2920L075_60MR" H 2375 1175 50  0000 L CNN
F 2 "SamacSys_Parts:FUSC7451X180N" H 2375 1075 50  0001 L CNN
F 3 "http://m.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_2920l_datasheet.pdf.pdf" H 2375 975 50  0001 L CNN
F 4 "Littelfuse 0.75A Resettable Surface Mount Fuse, 60V dc" H 2375 875 50  0001 L CNN "Description"
F 5 "1.8" H 2375 775 50  0001 L CNN "Height"
F 6 "LITTELFUSE" H 2375 675 50  0001 L CNN "Manufacturer_Name"
F 7 "2920L075/60MR" H 2375 575 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "8951647P" H 2375 475 50  0001 L CNN "RS Part Number"
F 9 "http://uk.rs-online.com/web/p/products/8951647P" H 2375 375 50  0001 L CNN "RS Price/Stock"
F 10 "576-2920L075/60MR" H 2375 275 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=576-2920L075%2F60MR" H 2375 175 50  0001 L CNN "Mouser Price/Stock"
	1    1725 975 
	1    0    0    -1  
$EndComp
Text Label 1025 975  0    60   ~ 0
9V
$Comp
L TVS D1
U 1 1 5C63EFE4
P 1075 1575
F 0 "D1" H 1075 1725 50  0000 C CNN
F 1 "VCAS06AP182R0LAT1A" H 1075 1425 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 1075 1575 50  0001 C CNN
F 3 "" H 1075 1575 50  0000 C CNN
	1    1075 1575
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5C63FDF5
P 1075 1950
F 0 "#PWR021" H 1075 1700 50  0001 C CNN
F 1 "GND" H 1075 1800 50  0000 C CNN
F 2 "" H 1075 1950 50  0000 C CNN
F 3 "" H 1075 1950 50  0000 C CNN
	1    1075 1950
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5C641BE0
P 3250 1225
F 0 "C6" H 3275 1325 50  0000 L CNN
F 1 "10uF" H 3275 1125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3288 1075 50  0001 C CNN
F 3 "" H 3250 1225 50  0000 C CNN
	1    3250 1225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5C641E3A
P 3825 1525
F 0 "#PWR022" H 3825 1275 50  0001 C CNN
F 1 "GND" H 3825 1375 50  0000 C CNN
F 2 "" H 3825 1525 50  0000 C CNN
F 3 "" H 3825 1525 50  0000 C CNN
	1    3825 1525
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5C6420BC
P 4450 1200
F 0 "C7" H 4475 1300 50  0000 L CNN
F 1 "10uF" H 4475 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4488 1050 50  0001 C CNN
F 3 "" H 4450 1200 50  0000 C CNN
	1    4450 1200
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5C642CB7
P 4750 1200
F 0 "C8" H 4775 1300 50  0000 L CNN
F 1 "0.1uF" H 4775 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 1050 50  0001 C CNN
F 3 "" H 4750 1200 50  0000 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 5C6433FD
P 4750 875
F 0 "#PWR023" H 4750 725 50  0001 C CNN
F 1 "+5V" H 4750 1015 50  0000 C CNN
F 2 "" H 4750 875 50  0000 C CNN
F 3 "" H 4750 875 50  0000 C CNN
	1    4750 875 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG024
U 1 1 5C6461FC
P 5050 950
F 0 "#FLG024" H 5050 1045 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 1130 50  0000 C CNN
F 2 "" H 5050 950 50  0000 C CNN
F 3 "" H 5050 950 50  0000 C CNN
	1    5050 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 5C646265
P 5050 1475
F 0 "#FLG025" H 5050 1570 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 1655 50  0000 C CNN
F 2 "" H 5050 1475 50  0000 C CNN
F 3 "" H 5050 1475 50  0000 C CNN
	1    5050 1475
	-1   0    0    1   
$EndComp
Text Notes 7200 6900 0    157  ~ 0
ghf_sensor\n
Text Notes 7350 7525 0    118  ~ 0
sensor_board
$Comp
L Crystal Y1
U 1 1 5C651C2A
P 2050 4450
F 0 "Y1" H 2050 4600 50  0000 C CNN
F 1 "16MHz" H 2050 4300 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 2050 4450 50  0001 C CNN
F 3 "AT-16.000MAGE-T" H 2050 4225 50  0000 C CNN
	1    2050 4450
	1    0    0    -1  
$EndComp
Text Label 6375 2725 2    49   ~ 0
XTAL1
Text Label 6375 2825 2    49   ~ 0
XTAL2
Text Label 1075 4450 0    49   ~ 0
XTAL1
Text Label 1075 4550 0    49   ~ 0
XTAL2
$Comp
L C C9
U 1 1 5C654931
P 1550 5150
F 0 "C9" H 1575 5250 50  0000 L CNN
F 1 "22pF" H 1575 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1588 5000 50  0001 C CNN
F 3 "" H 1550 5150 50  0000 C CNN
	1    1550 5150
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5C655719
P 1775 5150
F 0 "C10" H 1800 5250 50  0000 L CNN
F 1 "22pF" H 1800 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1813 5000 50  0001 C CNN
F 3 "" H 1775 5150 50  0000 C CNN
	1    1775 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5C655B6A
P 1675 5575
F 0 "#PWR026" H 1675 5325 50  0001 C CNN
F 1 "GND" H 1675 5425 50  0000 C CNN
F 2 "" H 1675 5575 50  0000 C CNN
F 3 "" H 1675 5575 50  0000 C CNN
	1    1675 5575
	1    0    0    -1  
$EndComp
Text Notes 400  325  0    49   ~ 0
OD4010-05HB55
$Comp
L CONN_01X02 P6
U 1 1 5C65AF5B
P 6500 1200
F 0 "P6" H 6500 1350 50  0000 C CNN
F 1 "FAN" V 6600 1200 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 6500 1200 50  0001 C CNN
F 3 "APF-102" V 6675 1200 50  0000 C CNN
	1    6500 1200
	1    0    0    -1  
$EndComp
$Comp
L ES1DL_R2 D2
U 1 1 5C65F86A
P 5600 1000
F 0 "D2" H 6050 1200 50  0000 L CNN
F 1 "ES1DL_R2" H 6050 1100 50  0000 L CNN
F 2 "SamacSys_Parts:SODFL3618X143N" H 6050 1000 50  0001 L CNN
F 3 "http://www.mouser.com/datasheet/2/395/ES1AL SERIES_K15-884039.pdf" H 6050 900 50  0001 L CNN
F 4 "Taiwan Semi ES1DL R2, SMT Fast Recovery Diode, 200V 1A, 35ns, 2-Pin Sub SMA" H 6050 800 50  0001 L CNN "Description"
F 5 "1.43" H 6050 700 50  0001 L CNN "Height"
F 6 "821-ES1DLR2" H 6050 600 50  0001 L CNN "Mouser Part Number"
F 7 "Taiwan Semiconductor" H 6050 500 50  0001 L CNN "Manufacturer_Name"
F 8 "ES1DL R2" H 6050 400 50  0001 L CNN "Manufacturer_Part_Number"
	1    5600 1000
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 5C660007
P 5950 1275
F 0 "C11" H 5975 1375 50  0000 L CNN
F 1 "10uF" H 5975 1175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5988 1125 50  0001 C CNN
F 3 "" H 5950 1275 50  0000 C CNN
	1    5950 1275
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P10
U 1 1 5C6688C0
P 3250 3525
F 0 "P10" H 3250 3675 50  0000 C CNN
F 1 "ADC" V 3350 3525 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3250 3525 50  0001 C CNN
F 3 "" H 3250 3525 50  0000 C CNN
	1    3250 3525
	-1   0    0    1   
$EndComp
Text Label 6375 3925 0    60   ~ 0
ACDL
Text Label 6375 4025 0    60   ~ 0
MCDL
Wire Wire Line
	3775 2125 3675 2125
Wire Wire Line
	3675 2050 3675 2425
Wire Wire Line
	3675 2225 3775 2225
Connection ~ 3675 2125
Connection ~ 3675 2225
Wire Wire Line
	3400 2725 3775 2725
Wire Wire Line
	3400 3100 3400 3025
Wire Wire Line
	3775 4225 3675 4225
Wire Wire Line
	3675 4225 3675 4550
Wire Wire Line
	3775 4325 3675 4325
Connection ~ 3675 4325
Wire Wire Line
	3775 4425 3675 4425
Connection ~ 3675 4425
Wire Wire Line
	9300 1350 9675 1350
Wire Wire Line
	9300 1000 9300 1350
Wire Wire Line
	9375 1450 9675 1450
Wire Wire Line
	9675 1650 9375 1650
Wire Wire Line
	9300 1550 9675 1550
Wire Wire Line
	9300 1550 9300 1700
Wire Wire Line
	8875 1075 8875 1050
Wire Wire Line
	8875 1050 9300 1050
Wire Wire Line
	9050 1075 9050 1050
Connection ~ 9050 1050
Connection ~ 9300 1050
Wire Wire Line
	9050 1375 9050 1625
Wire Wire Line
	8875 1375 8875 1625
Wire Wire Line
	5675 3375 6375 3375
Wire Wire Line
	5675 3475 6375 3475
Wire Wire Line
	5675 4125 6375 4125
Wire Wire Line
	5675 4225 6375 4225
Wire Wire Line
	9700 2375 9100 2375
Wire Wire Line
	9100 2375 9100 2400
Wire Wire Line
	9700 2475 9275 2475
Wire Wire Line
	9275 2475 9275 2225
Wire Wire Line
	9700 2575 9275 2575
Wire Wire Line
	9700 2675 9275 2675
Wire Wire Line
	9700 2775 9275 2775
Wire Wire Line
	9700 2875 9275 2875
Wire Wire Line
	7575 4175 8175 4175
Wire Wire Line
	7200 4475 8175 4475
Wire Wire Line
	7800 2500 7800 2600
Wire Wire Line
	7800 2900 7800 3075
Wire Wire Line
	7500 3275 7200 3275
Wire Wire Line
	7800 4375 8175 4375
Wire Wire Line
	7800 4275 7800 4375
Wire Wire Line
	7800 4275 8175 4275
Wire Wire Line
	7800 4325 7400 4325
Wire Wire Line
	7400 4325 7400 3025
Wire Wire Line
	7400 3025 7800 3025
Connection ~ 7800 3025
Connection ~ 7800 4325
Wire Wire Line
	7800 3600 7800 3475
Wire Wire Line
	7200 4475 7200 3575
Wire Wire Line
	5675 3825 6375 3825
Wire Wire Line
	9175 3625 9175 4175
Wire Wire Line
	9175 4475 9175 4750
Wire Wire Line
	9625 4175 9725 4175
Wire Wire Line
	9625 4175 9625 3550
Wire Wire Line
	9725 4475 9725 4600
Wire Wire Line
	9725 4600 9175 4600
Connection ~ 9175 4600
Wire Wire Line
	9175 4275 9725 4275
Wire Wire Line
	9725 4375 9175 4375
Wire Wire Line
	5675 2125 6375 2125
Wire Wire Line
	5675 2225 6375 2225
Wire Wire Line
	5675 4425 6375 4425
Wire Wire Line
	4525 5900 3850 5900
Wire Wire Line
	4525 6000 3850 6000
Wire Wire Line
	4525 6100 3850 6100
Wire Wire Line
	3050 6000 2875 6000
Wire Wire Line
	2875 5825 2875 6200
Wire Wire Line
	2875 6200 3050 6200
Wire Wire Line
	3050 6100 2875 6100
Connection ~ 2875 6100
Connection ~ 2875 6000
Wire Wire Line
	5325 5900 6125 5900
Wire Wire Line
	6125 5900 6125 6600
Wire Wire Line
	5325 6000 6125 6000
Connection ~ 6125 6000
Wire Wire Line
	5325 6100 6125 6100
Connection ~ 6125 6100
Wire Wire Line
	5325 6200 5775 6200
Wire Wire Line
	4400 6625 5325 6625
Wire Wire Line
	4400 6250 4400 6200
Wire Wire Line
	4400 6200 4525 6200
Wire Wire Line
	4400 6625 4400 6550
Wire Wire Line
	5325 6625 5325 6300
Wire Wire Line
	5325 6300 5775 6300
Wire Wire Line
	8450 5550 9725 5550
Wire Wire Line
	9450 5550 9450 5325
Wire Wire Line
	9725 5750 9450 5750
Wire Wire Line
	8450 5850 9725 5850
Wire Wire Line
	9450 5850 9450 5925
Wire Wire Line
	9150 5750 8900 5750
Connection ~ 9450 5850
Connection ~ 9450 5550
Wire Wire Line
	5675 3075 6375 3075
Wire Wire Line
	3025 5900 3050 5900
Wire Wire Line
	3025 5400 3025 5900
Wire Wire Line
	3850 6525 3850 6200
Wire Wire Line
	3025 4800 3025 4650
Wire Wire Line
	3025 5500 3475 5500
Connection ~ 3025 5500
Wire Wire Line
	5675 3175 6375 3175
Wire Wire Line
	5675 3575 6875 3575
Wire Wire Line
	1875 2675 1725 2675
Wire Wire Line
	1725 2675 1725 2475
Wire Wire Line
	2175 2675 3150 2675
Wire Wire Line
	2475 2625 2475 2775
Connection ~ 2475 2675
Wire Wire Line
	2475 3375 2475 3450
Wire Wire Line
	2475 2050 2475 2325
Wire Wire Line
	1725 2375 2150 2375
Wire Wire Line
	1725 2275 2150 2275
Wire Wire Line
	1725 2175 2725 2175
Connection ~ 2475 2175
Wire Wire Line
	1725 2075 2150 2075
Wire Wire Line
	2725 2175 2725 2325
Wire Wire Line
	2725 2625 2725 3425
Wire Wire Line
	2725 3425 2475 3425
Connection ~ 2475 3425
Wire Wire Line
	2525 975  3375 975 
Wire Wire Line
	1025 975  1725 975 
Wire Wire Line
	1075 1275 1075 975 
Connection ~ 1075 975 
Wire Wire Line
	1075 1950 1075 1875
Wire Wire Line
	3250 1075 3250 975 
Connection ~ 3250 975 
Wire Wire Line
	3250 1375 3250 1475
Wire Wire Line
	3250 1475 5300 1475
Wire Wire Line
	3825 1325 3825 1525
Connection ~ 3825 1475
Wire Wire Line
	4450 1475 4450 1350
Wire Wire Line
	4750 1475 4750 1350
Connection ~ 4450 1475
Wire Wire Line
	4275 975  5050 975 
Wire Wire Line
	4750 875  4750 1050
Wire Wire Line
	4450 1050 4450 975 
Connection ~ 4450 975 
Connection ~ 4750 975 
Wire Wire Line
	3675 2425 3775 2425
Wire Wire Line
	5050 950  5050 1000
Connection ~ 4750 1475
Wire Wire Line
	1075 4450 1900 4450
Wire Wire Line
	1075 4550 1800 4550
Wire Wire Line
	1800 4550 1800 4775
Wire Wire Line
	1775 4775 2275 4775
Wire Wire Line
	2275 4775 2275 4450
Wire Wire Line
	2275 4450 2200 4450
Wire Wire Line
	5675 2725 6375 2725
Wire Wire Line
	5675 2825 6375 2825
Wire Wire Line
	1550 5000 1550 4450
Connection ~ 1550 4450
Wire Wire Line
	1775 4775 1775 5000
Connection ~ 1800 4775
Wire Wire Line
	1550 5300 1550 5450
Wire Wire Line
	1550 5450 1775 5450
Wire Wire Line
	1775 5450 1775 5300
Wire Wire Line
	1675 5575 1675 5450
Connection ~ 1675 5450
Wire Wire Line
	5050 1000 6300 1000
Connection ~ 5050 975 
Wire Wire Line
	5300 1600 6300 1600
Wire Wire Line
	5300 1475 5300 1600
Connection ~ 5050 1475
Wire Wire Line
	5950 1000 5950 1125
Connection ~ 5600 1000
Wire Wire Line
	5950 1600 5950 1425
Connection ~ 5600 1600
Wire Wire Line
	6300 1000 6300 1150
Connection ~ 5950 1000
Wire Wire Line
	6300 1600 6300 1250
Connection ~ 5950 1600
Wire Wire Line
	6375 3925 5675 3925
Wire Wire Line
	6375 4025 5675 4025
Wire Wire Line
	6375 4325 5675 4325
Wire Wire Line
	6375 3275 5675 3275
Wire Wire Line
	6375 2975 5675 2975
Wire Wire Line
	5675 2625 6800 2625
Wire Wire Line
	5675 2325 6375 2325
Wire Wire Line
	3450 3575 3775 3575
Wire Wire Line
	3775 3475 3450 3475
$Comp
L TVS D3
U 1 1 5C635531
P 7425 5525
F 0 "D3" H 7425 5675 50  0000 C CNN
F 1 "AVR-M1005C080MTACB" H 7425 5375 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 7425 5525 50  0001 C CNN
F 3 "" H 7425 5525 50  0000 C CNN
	1    7425 5525
	0    1    1    0   
$EndComp
$Comp
L TVS D4
U 1 1 5C636D6C
P 7800 5525
F 0 "D4" H 7800 5675 50  0000 C CNN
F 1 "AVR-M1005C080MTACB" H 7800 5375 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 7800 5525 50  0001 C CNN
F 3 "" H 7800 5525 50  0000 C CNN
	1    7800 5525
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 5225 7425 4825
Wire Wire Line
	7800 5225 7800 4825
$Comp
L GND #PWR027
U 1 1 5C63727B
P 7675 6175
F 0 "#PWR027" H 7675 5925 50  0001 C CNN
F 1 "GND" H 7675 6025 50  0000 C CNN
F 2 "" H 7675 6175 50  0000 C CNN
F 3 "" H 7675 6175 50  0000 C CNN
	1    7675 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	7425 5825 7425 6025
Wire Wire Line
	7425 6025 7800 6025
Wire Wire Line
	7800 6025 7800 5825
Wire Wire Line
	7675 6175 7675 6025
Connection ~ 7675 6025
Text Label 7425 4825 3    60   ~ 0
R_B
Text Label 7800 4825 3    60   ~ 0
R_A
$Comp
L MAX485CSA+ IC2
U 1 1 5C63E902
P 8175 4175
F 0 "IC2" H 9025 4475 50  0000 L CNN
F 1 "MAX485CSA+" H 9025 4375 50  0000 L CNN
F 2 "SamacSys_Parts:SOIC127P600X175-8N" H 9025 4275 50  0001 L CNN
F 3 "http://www.mouser.com/datasheet/2/256/MAX490-1389177.pdf" H 9025 4175 50  0001 L CNN
F 4 "MAX485CSA+, Line Transceiver, RS-485, RS-422 2.5Mbit/s Differential, 5V, 8-Pin SOIC" H 9025 4075 50  0001 L CNN "Description"
F 5 "1.75" H 9025 3975 50  0001 L CNN "Height"
F 6 "700-MAX485CSA" H 9025 3875 50  0001 L CNN "Mouser Part Number"
F 7 "Maxim Integrated" H 9025 3775 50  0001 L CNN "Manufacturer_Name"
F 8 "MAX485CSA+" H 9025 3675 50  0001 L CNN "Manufacturer_Part_Number"
	1    8175 4175
	1    0    0    -1  
$EndComp
$Comp
L BPX_81 Q2
U 1 1 5C644A13
P 3025 4800
F 0 "Q2" H 3175 4550 50  0000 L CNN
F 1 "BPX_81" H 3175 4450 50  0000 L CNN
F 2 "SamacSys_Parts:BPX81" H 3175 4350 50  0001 L CNN
F 3 "https://media.osram.info/media/resource/hires/osram-dam-2495884/BPX%2081.pdf" H 3175 4250 50  0001 L CNN
F 4 "Phototransistors PHOTOTRANSISTOR" H 3175 4150 50  0001 L CNN "Description"
F 5 "3.55" H 3175 4050 50  0001 L CNN "Height"
F 6 "Osram Opto Semiconductor" H 3175 3950 50  0001 L CNN "Manufacturer_Name"
F 7 "BPX 81" H 3175 3850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3175 3750 50  0001 L CNN "RS Part Number"
F 9 "" H 3175 3650 50  0001 L CNN "RS Price/Stock"
F 10 "70338301" H 3175 3550 50  0001 L CNN "Allied_Number"
F 11 "https://www.alliedelec.com/osramoptosemiconductors-bpx81/70338301/" H 3175 3450 50  0001 L CNN "Allied Price/Stock"
F 12 "720-BPX81" H 3175 3350 50  0001 L CNN "Mouser Part Number"
F 13 "" H 3175 3250 50  0001 L CNN "Mouser Price/Stock"
	1    3025 4800
	1    0    0    -1  
$EndComp
$Sheet
S 10500 1275 500  350 
U 5C65C39D
F0 "temp" 60
F1 "temp.sch" 60
$EndSheet
Wire Wire Line
	5675 3725 6375 3725
NoConn ~ 6375 3275
NoConn ~ 6375 2975
$Comp
L CONN_02X03 P7
U 1 1 5C684E72
P 7200 1850
F 0 "P7" H 7200 2050 50  0000 C CNN
F 1 "ICSP" H 7200 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 7200 650 50  0001 C CNN
F 3 "" H 7200 650 50  0000 C CNN
	1    7200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2625 6800 1850
Wire Wire Line
	6800 1850 6950 1850
Wire Wire Line
	6875 3575 6875 1950
Wire Wire Line
	6875 1950 6950 1950
Wire Wire Line
	5675 2525 6725 2525
Wire Wire Line
	6725 2525 6725 1750
Wire Wire Line
	6725 1750 6950 1750
Wire Wire Line
	5675 2425 7625 2425
Wire Wire Line
	7625 2425 7625 1850
Wire Wire Line
	7625 1850 7450 1850
$Comp
L GND #PWR028
U 1 1 5C68989C
P 7450 2150
F 0 "#PWR028" H 7450 1900 50  0001 C CNN
F 1 "GND" H 7450 2000 50  0000 C CNN
F 2 "" H 7450 2150 50  0000 C CNN
F 3 "" H 7450 2150 50  0000 C CNN
	1    7450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2150 7450 1950
$Comp
L +5V #PWR029
U 1 1 5C689E7F
P 7475 1525
F 0 "#PWR029" H 7475 1375 50  0001 C CNN
F 1 "+5V" H 7475 1665 50  0000 C CNN
F 2 "" H 7475 1525 50  0000 C CNN
F 3 "" H 7475 1525 50  0000 C CNN
	1    7475 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1750 7475 1750
Wire Wire Line
	7475 1750 7475 1525
$Comp
L CONN_01X03 P8
U 1 1 5C6ADA8C
P 6350 5075
F 0 "P8" H 6350 5275 50  0000 C CNN
F 1 "ca_button" V 6450 5075 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6350 5075 50  0001 C CNN
F 3 "" H 6350 5075 50  0000 C CNN
	1    6350 5075
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5C6AFCC3
P 5775 4975
F 0 "R8" V 5855 4975 50  0000 C CNN
F 1 "1k" V 5775 4975 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5705 4975 50  0001 C CNN
F 3 "" H 5775 4975 50  0000 C CNN
	1    5775 4975
	0    1    1    0   
$EndComp
Wire Wire Line
	5925 4975 6150 4975
$Comp
L R R9
U 1 1 5C6B46AC
P 5350 5075
F 0 "R9" V 5430 5075 50  0000 C CNN
F 1 "10k" V 5350 5075 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5280 5075 50  0001 C CNN
F 3 "" H 5350 5075 50  0000 C CNN
	1    5350 5075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5075 6150 5075
Wire Wire Line
	5625 4975 5450 4975
$Comp
L +5V #PWR030
U 1 1 5C6B4D16
P 4825 5075
F 0 "#PWR030" H 4825 4925 50  0001 C CNN
F 1 "+5V" H 4825 5215 50  0000 C CNN
F 2 "" H 4825 5075 50  0000 C CNN
F 3 "" H 4825 5075 50  0000 C CNN
	1    4825 5075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 5075 4825 5075
Text Label 5450 4975 0    60   ~ 0
LED
Text Label 5500 5075 0    60   ~ 0
SW
$Comp
L GND #PWR031
U 1 1 5C6B4F76
P 6050 5300
F 0 "#PWR031" H 6050 5050 50  0001 C CNN
F 1 "GND" H 6050 5150 50  0000 C CNN
F 2 "" H 6050 5300 50  0000 C CNN
F 3 "" H 6050 5300 50  0000 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5175 6050 5175
Wire Wire Line
	6050 5175 6050 5300
Text Label 6375 2325 2    60   ~ 0
LED
Text Label 6375 4325 2    60   ~ 0
SW
$EndSCHEMATC
