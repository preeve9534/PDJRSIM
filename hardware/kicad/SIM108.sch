EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title "SIM108 Switch Input Module"
Date "2022-06-11"
Rev "2.0.0"
Comp "PDJR <preeve@pdjr.eu>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R10
U 1 1 5F1E6C5E
P 5050 5950
F 0 "R10" H 5000 5950 50  0000 R CNN
F 1 "4K7" V 5050 5950 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4980 5950 50  0001 C CNN
F 3 "~" H 5050 5950 50  0001 C CNN
	1    5050 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5F2B75CF
P 3100 5500
F 0 "R9" V 3150 5600 50  0000 L BNN
F 1 "470R" V 3100 5500 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3030 5500 50  0001 C CNN
F 3 "~" H 3100 5500 50  0001 C CNN
F 4 "0.125W" V 3200 5500 50  0001 C CNN "Power"
	1    3100 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F2A4B92
P 7100 3600
F 0 "F1" V 7000 3600 50  0000 C CNN
F 1 "1A" V 7200 3600 39  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 7150 3400 50  0001 L CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F37E57C
P 4850 5500
F 0 "C2" H 4650 5500 50  0000 L CNN
F 1 "100n" H 5000 5400 39  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.0mm_P2.50mm_MKS02_FKP02" H 4888 5350 50  0001 C CNN
F 3 "~" H 4850 5500 50  0001 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U2
U 1 1 5F1D12F5
P 5650 5350
F 0 "U2" H 5850 5700 50  0000 C CNN
F 1 "MCP2551-I-P" H 5900 5000 39  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5650 4850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 5650 5350 50  0001 C CNN
	1    5650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F38A0E7
P 6300 2550
F 0 "C4" V 6350 2500 50  0000 R CNN
F 1 "100nF" V 6250 2500 39  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.0mm_P2.50mm_MKS02_FKP02" H 6338 2400 50  0001 C CNN
F 3 "~" H 6300 2550 50  0001 C CNN
	1    6300 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2550 6950 2550
Wire Wire Line
	5750 2100 5450 2100
Wire Wire Line
	5450 2100 5450 2600
Wire Wire Line
	5750 2200 5650 2200
Wire Wire Line
	5650 2550 6150 2550
Wire Wire Line
	6950 2550 6950 2200
Wire Wire Line
	6950 2200 6850 2200
NoConn ~ 5750 2000
Wire Wire Line
	5050 6100 5650 6100
Connection ~ 5050 6100
Wire Wire Line
	5150 5550 5050 5550
Wire Wire Line
	5050 5550 5050 5800
Wire Wire Line
	4850 5750 5650 5750
Wire Wire Line
	4850 4850 5650 4850
Wire Wire Line
	5650 4850 5650 4950
Connection ~ 4850 4850
Text Label 7500 5250 2    50   ~ 0
CAN_H
Text Label 7500 5450 2    50   ~ 0
CAN_L
Wire Notes Line
	4300 4750 7500 4750
Wire Notes Line
	7500 4750 7500 6200
Wire Notes Line
	7500 6200 4300 6200
Wire Notes Line
	4300 4750 4300 6200
Wire Wire Line
	6700 3600 6850 3600
Text Label 7500 3600 2    50   ~ 0
NET_S
Text Label 7500 4000 2    50   ~ 0
NET_C
Wire Notes Line
	5400 3400 7500 3400
Wire Notes Line
	7500 3400 7500 4200
Wire Notes Line
	7500 4200 5400 4200
Wire Notes Line
	5400 3400 5400 4200
Wire Wire Line
	4300 5250 5150 5250
Wire Wire Line
	5650 5750 5650 6100
Connection ~ 5650 5750
NoConn ~ 5150 5450
Text Label 2700 2000 0    50   ~ 0
CAN_SCR
$Comp
L power:+5V #PWR06
U 1 1 5FC3AC81
P 5400 3600
F 0 "#PWR06" H 5400 3450 50  0001 C CNN
F 1 "+5V" V 5415 3728 50  0000 L CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FC3B74A
P 5400 4000
F 0 "#PWR07" H 5400 3750 50  0001 C CNN
F 1 "GND" V 5405 3872 50  0000 R CNN
F 2 "" H 5400 4000 50  0001 C CNN
F 3 "" H 5400 4000 50  0001 C CNN
	1    5400 4000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5FC442F6
P 4300 4850
F 0 "#PWR04" H 4300 4700 50  0001 C CNN
F 1 "+5V" V 4315 4978 50  0000 L CNN
F 2 "" H 4300 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
	1    4300 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FC44BAE
P 4300 6100
F 0 "#PWR05" H 4300 5850 50  0001 C CNN
F 1 "GND" V 4300 5900 50  0000 C CNN
F 2 "" H 4300 6100 50  0001 C CNN
F 3 "" H 4300 6100 50  0001 C CNN
	1    4300 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4850 4850 4850
Wire Wire Line
	4300 6100 5050 6100
Text Label 4300 5250 0    50   ~ 0
CAN_RX
Text Label 6850 1700 0    50   ~ 0
CAN_RX
Text Label 4300 5150 0    50   ~ 0
CAN_TX
Wire Wire Line
	4300 5150 5150 5150
Text Label 6850 1800 0    50   ~ 0
CAN_TX
Wire Wire Line
	7200 6100 7200 5900
Wire Wire Line
	7200 5900 7500 5900
Wire Wire Line
	7200 6100 7900 6100
$Comp
L power:GND #PWR02
U 1 1 6084E21C
P 2100 2950
F 0 "#PWR02" H 2100 2700 50  0001 C CNN
F 1 "GND" H 2105 2777 50  0000 C CNN
F 2 "" H 2100 2950 50  0001 C CNN
F 3 "" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6090D237
P 5450 2600
F 0 "#PWR08" H 5450 2350 50  0001 C CNN
F 1 "GND" H 5455 2427 50  0000 C CNN
F 2 "" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 6090DC41
P 5650 2600
F 0 "#PWR09" H 5650 2450 50  0001 C CNN
F 1 "+5V" H 5665 2773 50  0000 C CNN
F 2 "" H 5650 2600 50  0001 C CNN
F 3 "" H 5650 2600 50  0001 C CNN
	1    5650 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 2600 5650 2550
Connection ~ 5650 2550
$Comp
L power:GND #PWR010
U 1 1 6096FBD9
P 6950 2600
F 0 "#PWR010" H 6950 2350 50  0001 C CNN
F 1 "GND" H 6955 2427 50  0000 C CNN
F 2 "" H 6950 2600 50  0001 C CNN
F 3 "" H 6950 2600 50  0001 C CNN
	1    6950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2600 6950 2550
Connection ~ 6950 2550
Text Notes 7500 3400 2    50   ~ 10
12/5 V DC-DC CONVERTER
Text Notes 7500 4750 2    50   ~ 10
CAN INTERFACE
Text Label 1000 5500 2    50   ~ 0
LED_PWR
Wire Wire Line
	1000 5500 2650 5500
Text Label 5750 900  2    50   ~ 0
LED_PWR
Text Label 7500 5900 0    50   ~ 0
CAN_SCR
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 6069075F
P 8200 3800
F 0 "J2" H 8200 4100 50  0000 C CNN
F 1 "CAN" H 8200 3500 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-5-2.54_1x05_P2.54mm_Horizontal" H 8200 3800 50  0001 C CNN
F 3 "~" H 8200 3800 50  0001 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3900 7800 3900
Wire Wire Line
	8000 3800 7700 3800
Wire Wire Line
	6700 4000 6850 4000
Wire Wire Line
	4850 5350 4850 4850
Wire Wire Line
	4850 5750 4850 5650
$Comp
L Switch:SW_DIP_x08 SW1
U 1 1 605A9AEF
P 1000 2300
F 0 "SW1" H 1000 2850 50  0000 C CNN
F 1 "INSTANCE" H 1000 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1000 2300 50  0001 C CNN
F 3 "~" H 1000 2300 50  0001 C CNN
	1    1000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2600 700  2500
Connection ~ 700  2600
Wire Wire Line
	700  2500 700  2400
Connection ~ 700  2500
Wire Wire Line
	700  2400 700  2300
Connection ~ 700  2400
Wire Wire Line
	700  2300 700  2200
Connection ~ 700  2300
Wire Wire Line
	700  2200 700  2100
Connection ~ 700  2200
Wire Wire Line
	700  2100 700  2000
Connection ~ 700  2100
Wire Wire Line
	700  2000 700  1900
Connection ~ 700  2000
Text Label 1300 1900 0    50   ~ 0
ADDR_0
Text Label 1300 2000 0    50   ~ 0
ADDR_1
Text Label 1300 2100 0    50   ~ 0
ADDR_2
Text Label 1300 2200 0    50   ~ 0
ADDR_3
Text Label 1300 2300 0    50   ~ 0
ADDR_4
Text Label 1300 2400 0    50   ~ 0
ADDR_5
Text Label 1300 2500 0    50   ~ 0
ADDR_6
Text Label 1300 2600 0    50   ~ 0
ADDR_7
Text Label 6850 1600 0    50   ~ 0
ADDR_0
Text Label 6850 1500 0    50   ~ 0
ADDR_1
Text Label 6850 1400 0    50   ~ 0
ADDR_2
Text Label 6850 1300 0    50   ~ 0
ADDR_3
Text Label 6850 1200 0    50   ~ 0
ADDR_4
Text Label 6850 1100 0    50   ~ 0
ADDR_5
Text Label 6850 1000 0    50   ~ 0
ADDR_6
Text Label 6850 900  0    50   ~ 0
ADDR_7
Wire Wire Line
	5650 2200 5650 2550
$Comp
L pdjr:TMR-1211 U3
U 1 1 60ECA8BF
P 6200 3800
F 0 "U3" H 6200 4150 50  0000 C CNN
F 1 "TMR-1211" H 6200 3450 50  0000 C CNN
F 2 "PDJR-connectors:TMR-1-1211" H 6200 3450 50  0001 C CNN
F 3 "" H 6200 3300 50  0001 C CNN
	1    6200 3800
	-1   0    0    -1  
$EndComp
$Comp
L pdjr:Teensy_3.2 U4
U 1 1 60F2AB82
P 6850 2200
F 0 "U4" H 7000 650 50  0000 C CNN
F 1 "Teensy_3.2" H 7150 750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	-1   0    0    1   
$EndComp
NoConn ~ 6700 3800
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60EF11B7
P 6850 3600
F 0 "#FLG01" H 6850 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 3773 50  0000 C CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "~" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60EF2D39
P 6850 4000
F 0 "#FLG02" H 6850 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 4173 50  0000 C CNN
F 2 "" H 6850 4000 50  0001 C CNN
F 3 "~" H 6850 4000 50  0001 C CNN
	1    6850 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 3600 5500 3600
Connection ~ 6850 3600
Wire Wire Line
	6850 3600 6950 3600
Connection ~ 6850 4000
Wire Wire Line
	6850 4000 7600 4000
$Comp
L Device:CP C3
U 1 1 629FD333
P 5500 3800
F 0 "C3" H 5618 3846 50  0000 L CNN
F 1 "1000uF" H 5500 3700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 5538 3650 50  0001 C CNN
F 3 "~" H 5500 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
Connection ~ 5500 3600
Wire Wire Line
	5400 4000 5500 4000
Wire Wire Line
	5500 3650 5500 3600
Wire Wire Line
	5500 3600 5700 3600
Wire Wire Line
	5500 3950 5500 4000
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 5700 4000
NoConn ~ 6300 700 
NoConn ~ 6200 700 
NoConn ~ 6100 700 
$Comp
L Device:R R11
U 1 1 62A3BFE8
P 7000 5600
F 0 "R11" V 6900 5650 50  0000 R CNN
F 1 "120R" V 7000 5600 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6930 5600 50  0001 C CNN
F 3 "~" H 7000 5600 50  0001 C CNN
	1    7000 5600
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW2
U 1 1 62A67242
P 2400 2000
F 0 "SW2" H 2400 2250 50  0000 C CNN
F 1 "BUS" H 2400 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm_LongPads" H 2400 2000 50  0001 C CNN
F 3 "~" H 2400 2000 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
Text Label 7500 5600 0    50   ~ 0
TERM_A
Wire Wire Line
	7500 5600 7150 5600
Text Label 7500 5750 0    50   ~ 0
TERM_B
Wire Wire Line
	6150 5250 6750 5250
Wire Wire Line
	6850 5600 6750 5600
Wire Wire Line
	6750 5600 6750 5250
Connection ~ 6750 5250
Wire Wire Line
	6750 5250 7700 5250
Wire Wire Line
	7500 5750 6550 5750
Wire Wire Line
	6550 5750 6550 5450
Connection ~ 6550 5450
Wire Wire Line
	6550 5450 7800 5450
Wire Wire Line
	6150 5450 6550 5450
Text Label 2100 1900 2    50   ~ 0
TERM_A
Text Label 2700 1900 0    50   ~ 0
TERM_B
Wire Wire Line
	7700 3800 7700 5250
Wire Wire Line
	7800 3900 7800 5450
Wire Wire Line
	7900 4000 8000 4000
Wire Wire Line
	7900 4000 7900 6100
Wire Wire Line
	7250 3600 8000 3600
Wire Wire Line
	8000 3700 7600 3700
Wire Wire Line
	7600 3700 7600 4000
Text Label 5750 1000 2    50   ~ 0
CH0
Text Label 5750 1700 2    50   ~ 0
CH1
Text Label 5750 1600 2    50   ~ 0
CH2
Text Label 5750 1500 2    50   ~ 0
CH3
Text Label 5750 1400 2    50   ~ 0
CH4
Text Label 5750 1300 2    50   ~ 0
CH5
Text Label 5750 1200 2    50   ~ 0
CH6
Text Label 5750 1100 2    50   ~ 0
CH7
$Comp
L Connector:Screw_Terminal_01x09 J1
U 1 1 62D3957B
P 900 1150
F 0 "J1" H 900 1650 50  0000 C CNN
F 1 "Screw_Terminal_01x09" H 900 1650 50  0001 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-9-5.08_1x09_P5.08mm_Horizontal" H 900 1150 50  0001 C CNN
F 3 "~" H 900 1150 50  0001 C CNN
	1    900  1150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 62E4B10C
P 1000 7450
F 0 "#PWR03" H 1000 7200 50  0001 C CNN
F 1 "GND" H 1000 7300 50  0000 C CNN
F 2 "" H 1000 7450 50  0001 C CNN
F 3 "" H 1000 7450 50  0001 C CNN
	1    1000 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U1
U 1 1 62D8E5A2
P 2050 6550
F 0 "U1" H 2250 7100 50  0000 C CNN
F 1 "74HC595" H 2250 5900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2050 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2050 6550 50  0001 C CNN
	1    2050 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 62EC5C8C
P 1000 5700
F 0 "#PWR01" H 1000 5550 50  0001 C CNN
F 1 "+5V" H 800 5750 50  0000 L BNN
F 2 "" H 1000 5700 50  0001 C CNN
F 3 "" H 1000 5700 50  0001 C CNN
	1    1000 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 62D71F1E
P 2300 5800
F 0 "C1" V 2350 5750 50  0000 R CNN
F 1 "100nF" V 2250 5750 39  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2338 5650 50  0001 C CNN
F 3 "~" H 2300 5800 50  0001 C CNN
	1    2300 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 5950 2050 5800
Connection ~ 2050 5800
Text Label 1000 6150 2    50   ~ 0
DATA
Text Label 1000 6350 2    50   ~ 0
CLOCK
Text Label 5750 1800 2    50   ~ 0
DATA
Text Label 5750 1900 2    50   ~ 0
CLOCK
Text Label 6850 2000 0    50   ~ 0
LATCH
NoConn ~ 2450 7050
Wire Wire Line
	2150 5800 2050 5800
Wire Wire Line
	2050 7250 2050 7350
$Comp
L Device:LED_Small D9
U 1 1 62FFAF41
P 2750 5500
F 0 "D9" H 2800 5500 50  0000 L BNN
F 1 "LED_Small" H 2750 5384 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2750 5500 50  0001 C CNN
F 3 "~" V 2750 5500 50  0001 C CNN
	1    2750 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 5500 2950 5500
Wire Wire Line
	3450 5500 3450 5800
Wire Wire Line
	3250 5500 3450 5500
Wire Wire Line
	2050 7350 3450 7350
Wire Wire Line
	2450 5800 3450 5800
Connection ~ 3450 5800
Wire Wire Line
	1000 6150 1650 6150
Wire Wire Line
	1000 6350 1650 6350
Wire Notes Line
	3650 7700 600  7700
Wire Notes Line
	600  7700 600  5200
Wire Notes Line
	600  5200 3650 5200
Wire Notes Line
	3650 5200 3650 7700
Text Notes 3650 5200 2    50   ~ 10
LED INDICATORS
Wire Wire Line
	700  2850 2100 2850
Wire Wire Line
	700  2600 700  2850
Wire Wire Line
	2100 2000 2100 2850
Wire Wire Line
	2100 2850 2100 2950
Connection ~ 2100 2850
Text Label 1100 850  0    50   ~ 0
SPST_CH0
Text Label 1100 750  0    50   ~ 0
SPST_GND
Wire Wire Line
	3450 5800 3450 6150
Connection ~ 3450 6150
Wire Wire Line
	3450 6150 3450 6250
Wire Wire Line
	2450 6150 2550 6150
Wire Wire Line
	2450 6250 2550 6250
Wire Wire Line
	2450 6350 2550 6350
Wire Wire Line
	2450 6450 2550 6450
Wire Wire Line
	2450 6550 2550 6550
Wire Wire Line
	2450 6650 2550 6650
Wire Wire Line
	2450 6750 2550 6750
Wire Wire Line
	2450 6850 2550 6850
$Comp
L Device:LED_Small D1
U 1 1 6300BF2B
P 2650 6150
F 0 "D1" H 2700 6150 50  0000 L BNN
F 1 "LED_Small" H 2650 6034 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6150 50  0001 C CNN
F 3 "~" V 2650 6150 50  0001 C CNN
	1    2650 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 6300CB9E
P 2650 6250
F 0 "D2" H 2700 6250 50  0000 L BNN
F 1 "LED_Small" H 2650 6134 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6250 50  0001 C CNN
F 3 "~" V 2650 6250 50  0001 C CNN
	1    2650 6250
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 6300D3E4
P 2650 6350
F 0 "D3" H 2700 6350 50  0000 L BNN
F 1 "LED_Small" H 2650 6234 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6350 50  0001 C CNN
F 3 "~" V 2650 6350 50  0001 C CNN
	1    2650 6350
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 6300DC43
P 2650 6450
F 0 "D4" H 2700 6450 50  0000 L BNN
F 1 "LED_Small" H 2650 6334 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6450 50  0001 C CNN
F 3 "~" V 2650 6450 50  0001 C CNN
	1    2650 6450
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6300E3C5
P 2650 6550
F 0 "D5" H 2700 6550 50  0000 L BNN
F 1 "LED_Small" H 2650 6434 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6550 50  0001 C CNN
F 3 "~" V 2650 6550 50  0001 C CNN
	1    2650 6550
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 6300EB4D
P 2650 6650
F 0 "D6" H 2700 6650 50  0000 L BNN
F 1 "LED_Small" H 2650 6534 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6650 50  0001 C CNN
F 3 "~" V 2650 6650 50  0001 C CNN
	1    2650 6650
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 6300F332
P 2650 6750
F 0 "D7" H 2700 6750 50  0000 L BNN
F 1 "LED_Small" H 2650 6634 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6750 50  0001 C CNN
F 3 "~" V 2650 6750 50  0001 C CNN
	1    2650 6750
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 6300FAE8
P 2650 6850
F 0 "D8" H 2700 6850 50  0000 L BNN
F 1 "LED_Small" H 2650 6734 50  0001 C CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" V 2650 6850 50  0001 C CNN
F 3 "~" V 2650 6850 50  0001 C CNN
	1    2650 6850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6307FA21
P 2900 6150
F 0 "R1" V 2900 6250 50  0000 L BNN
F 1 "470R" V 2900 6150 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6150 50  0001 C CNN
F 3 "~" H 2900 6150 50  0001 C CNN
F 4 "0.125W" V 3000 6150 50  0001 C CNN "Power"
	1    2900 6150
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 63083CDE
P 2900 6250
F 0 "R2" V 2900 6350 50  0000 L BNN
F 1 "470R" V 2900 6250 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6250 50  0001 C CNN
F 3 "~" H 2900 6250 50  0001 C CNN
F 4 "0.125W" V 3000 6250 50  0001 C CNN "Power"
	1    2900 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 63084183
P 2900 6350
F 0 "R3" V 2900 6450 50  0000 L BNN
F 1 "470R" V 2900 6350 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6350 50  0001 C CNN
F 3 "~" H 2900 6350 50  0001 C CNN
F 4 "0.125W" V 3000 6350 50  0001 C CNN "Power"
	1    2900 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 63084624
P 2900 6450
F 0 "R4" V 2900 6550 50  0000 L BNN
F 1 "470R" V 2900 6450 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6450 50  0001 C CNN
F 3 "~" H 2900 6450 50  0001 C CNN
F 4 "0.125W" V 3000 6450 50  0001 C CNN "Power"
	1    2900 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 63084ACB
P 2900 6550
F 0 "R5" V 2900 6650 50  0000 L BNN
F 1 "470R" V 2900 6550 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6550 50  0001 C CNN
F 3 "~" H 2900 6550 50  0001 C CNN
F 4 "0.125W" V 3000 6550 50  0001 C CNN "Power"
	1    2900 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 63084F6A
P 2900 6650
F 0 "R6" V 2900 6750 50  0000 L BNN
F 1 "470R" V 2900 6650 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6650 50  0001 C CNN
F 3 "~" H 2900 6650 50  0001 C CNN
F 4 "0.125W" V 3000 6650 50  0001 C CNN "Power"
	1    2900 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 63085467
P 2900 6750
F 0 "R7" V 2900 6850 50  0000 L BNN
F 1 "470R" V 2900 6750 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6750 50  0001 C CNN
F 3 "~" H 2900 6750 50  0001 C CNN
F 4 "0.125W" V 3000 6750 50  0001 C CNN "Power"
	1    2900 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 63085970
P 2900 6850
F 0 "R8" V 2900 6950 50  0000 L BNN
F 1 "470R" V 2900 6850 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2830 6850 50  0001 C CNN
F 3 "~" H 2900 6850 50  0001 C CNN
F 4 "0.125W" V 3000 6850 50  0001 C CNN "Power"
	1    2900 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 6150 3450 6150
Wire Wire Line
	3050 6250 3450 6250
Connection ~ 3450 6250
Wire Wire Line
	3450 6250 3450 6350
Wire Wire Line
	3050 6350 3450 6350
Connection ~ 3450 6350
Wire Wire Line
	3450 6350 3450 6450
Wire Wire Line
	3050 6450 3450 6450
Connection ~ 3450 6450
Wire Wire Line
	3450 6450 3450 6550
Wire Wire Line
	3050 6550 3450 6550
Connection ~ 3450 6550
Wire Wire Line
	3450 6550 3450 6650
Wire Wire Line
	3050 6650 3450 6650
Connection ~ 3450 6650
Wire Wire Line
	3450 6650 3450 6750
Wire Wire Line
	3050 6750 3450 6750
Connection ~ 3450 6750
Wire Wire Line
	3450 6750 3450 6850
Wire Wire Line
	3050 6850 3450 6850
Connection ~ 3450 6850
Wire Wire Line
	3450 6850 3450 7350
Text Label 1100 950  0    50   ~ 0
SPST_CH1
Text Label 1100 1050 0    50   ~ 0
SPST_CH2
Text Label 1100 1150 0    50   ~ 0
SPST_CH3
Text Label 1100 1250 0    50   ~ 0
SPST_CH4
Text Label 1100 1350 0    50   ~ 0
SPST_CH5
Text Label 1100 1450 0    50   ~ 0
SPST_CH6
Text Label 1100 1550 0    50   ~ 0
SPST_CH7
Text Notes 9300 6400 0    50   ~ 0
Opto-isolated SPST inputs. Each opto-isolator\nis driven by a constant current source which\noperates the isolator LED at 6mA from voltages\nin the range 5VDC through 50VDC.
Wire Wire Line
	1650 6450 1200 6450
Wire Wire Line
	1200 6450 1200 5800
Wire Wire Line
	1200 5800 2050 5800
Wire Wire Line
	1650 6750 1550 6750
Wire Wire Line
	1550 6750 1550 7350
Wire Wire Line
	1550 7350 2050 7350
Connection ~ 2050 7350
NoConn ~ 6850 2100
NoConn ~ 6850 1900
Text Label 1000 6650 2    50   ~ 0
LATCH
Wire Wire Line
	1000 6650 1650 6650
$Sheet
S 9750 700  1100 300 
U 62FB7846
F0 "OII_00" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 800 50 
F3 "OII_IN_GND" U L 9750 900 50 
F4 "OII_OUT" O R 10850 800 50 
F5 "OII_OUT_GND" U R 10850 900 50 
$EndSheet
Text Label 9650 800  2    50   ~ 0
SPST_CH0
Text Label 9650 900  2    50   ~ 0
SPST_GND
Text Label 10950 800  0    50   ~ 0
CH0
$Comp
L power:GND #PWR011
U 1 1 63004795
P 10950 1000
F 0 "#PWR011" H 10950 750 50  0001 C CNN
F 1 "GND" H 10950 850 50  0000 C CNN
F 2 "" H 10950 1000 50  0001 C CNN
F 3 "" H 10950 1000 50  0001 C CNN
	1    10950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 900  10950 900 
Wire Wire Line
	10950 900  10950 1000
Wire Wire Line
	10950 800  10850 800 
Wire Wire Line
	9650 800  9750 800 
Wire Wire Line
	9650 900  9750 900 
$Sheet
S 9750 1350 1100 300 
U 63089671
F0 "OII_01" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 1450 50 
F3 "OII_IN_GND" U L 9750 1550 50 
F4 "OII_OUT" O R 10850 1450 50 
F5 "OII_OUT_GND" U R 10850 1550 50 
$EndSheet
Wire Wire Line
	10850 1450 10950 1450
Wire Wire Line
	10850 1550 10950 1550
Wire Wire Line
	10950 1550 10950 1650
Wire Wire Line
	9750 1450 9650 1450
Wire Wire Line
	9750 1550 9650 1550
Text Label 9650 1450 2    50   ~ 0
SPST_CH1
Text Label 9650 1550 2    50   ~ 0
SPST_GND
Text Label 10950 1450 0    50   ~ 0
CH1
$Comp
L power:GND #PWR012
U 1 1 630DCFD4
P 10950 1650
F 0 "#PWR012" H 10950 1400 50  0001 C CNN
F 1 "GND" H 10950 1500 50  0000 C CNN
F 2 "" H 10950 1650 50  0001 C CNN
F 3 "" H 10950 1650 50  0001 C CNN
	1    10950 1650
	1    0    0    -1  
$EndComp
$Sheet
S 9750 2000 1100 300 
U 63103CAF
F0 "OII_02" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 2100 50 
F3 "OII_IN_GND" U L 9750 2200 50 
F4 "OII_OUT" O R 10850 2100 50 
F5 "OII_OUT_GND" U R 10850 2200 50 
$EndSheet
Wire Wire Line
	10850 2100 10950 2100
Wire Wire Line
	10850 2200 10950 2200
Wire Wire Line
	10950 2200 10950 2300
Wire Wire Line
	9750 2100 9650 2100
Wire Wire Line
	9750 2200 9650 2200
Text Label 9650 2100 2    50   ~ 0
SPST_CH2
Text Label 9650 2200 2    50   ~ 0
SPST_GND
Text Label 10950 2100 0    50   ~ 0
CH2
$Comp
L power:GND #PWR013
U 1 1 6316C272
P 10950 2300
F 0 "#PWR013" H 10950 2050 50  0001 C CNN
F 1 "GND" H 10950 2150 50  0000 C CNN
F 2 "" H 10950 2300 50  0001 C CNN
F 3 "" H 10950 2300 50  0001 C CNN
	1    10950 2300
	1    0    0    -1  
$EndComp
$Sheet
S 9750 2650 1100 300 
U 62F64647
F0 "OOI_03" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 2750 50 
F3 "OII_IN_GND" U L 9750 2850 50 
F4 "OII_OUT" O R 10850 2750 50 
F5 "OII_OUT_GND" U R 10850 2850 50 
$EndSheet
Wire Wire Line
	10850 2750 10950 2750
Wire Wire Line
	10850 2850 10950 2850
Wire Wire Line
	9750 2750 9650 2750
Wire Wire Line
	9750 2850 9650 2850
Text Label 10950 2750 0    50   ~ 0
CH3
$Comp
L power:GND #PWR014
U 1 1 62FC668A
P 10950 2950
F 0 "#PWR014" H 10950 2700 50  0001 C CNN
F 1 "GND" H 10950 2800 50  0000 C CNN
F 2 "" H 10950 2950 50  0001 C CNN
F 3 "" H 10950 2950 50  0001 C CNN
	1    10950 2950
	1    0    0    -1  
$EndComp
Text Label 9650 2750 2    50   ~ 0
SPST_CH3
Text Label 9650 2850 2    50   ~ 0
SPST_GND
Wire Wire Line
	10950 2850 10950 2950
$Sheet
S 9750 3300 1100 300 
U 62FD589D
F0 "OOI_04" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 3400 50 
F3 "OII_IN_GND" U L 9750 3500 50 
F4 "OII_OUT" O R 10850 3400 50 
F5 "OII_OUT_GND" U R 10850 3500 50 
$EndSheet
Wire Wire Line
	10850 3400 10950 3400
Wire Wire Line
	10850 3500 10950 3500
Wire Wire Line
	10950 3500 10950 3600
Wire Wire Line
	9750 3400 9650 3400
Wire Wire Line
	9750 3500 9650 3500
Text Label 9650 3400 2    50   ~ 0
SPST_CH4
Text Label 9650 3500 2    50   ~ 0
SPST_GND
Text Label 10950 3400 0    50   ~ 0
CH4
$Comp
L power:GND #PWR015
U 1 1 6303B8FF
P 10950 3600
F 0 "#PWR015" H 10950 3350 50  0001 C CNN
F 1 "GND" H 10950 3450 50  0000 C CNN
F 2 "" H 10950 3600 50  0001 C CNN
F 3 "" H 10950 3600 50  0001 C CNN
	1    10950 3600
	1    0    0    -1  
$EndComp
$Sheet
S 9750 3950 1100 300 
U 63041ECA
F0 "OOI_05" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 4050 50 
F3 "OII_IN_GND" U L 9750 4150 50 
F4 "OII_OUT" O R 10850 4050 50 
F5 "OII_OUT_GND" U R 10850 4150 50 
$EndSheet
Wire Wire Line
	10850 4050 10950 4050
Wire Wire Line
	10850 4150 10950 4150
Wire Wire Line
	10950 4150 10950 4250
Wire Wire Line
	9750 4050 9650 4050
Wire Wire Line
	9750 4150 9650 4150
Text Label 9650 4050 2    50   ~ 0
SPST_CH5
Text Label 9650 4150 2    50   ~ 0
SPST_GND
Text Label 10950 4050 0    50   ~ 0
CH5
$Comp
L power:GND #PWR016
U 1 1 630A99B3
P 10950 4250
F 0 "#PWR016" H 10950 4000 50  0001 C CNN
F 1 "GND" H 10950 4100 50  0000 C CNN
F 2 "" H 10950 4250 50  0001 C CNN
F 3 "" H 10950 4250 50  0001 C CNN
	1    10950 4250
	1    0    0    -1  
$EndComp
$Sheet
S 9750 4600 1100 300 
U 62F45EE0
F0 "OOI_06" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 4700 50 
F3 "OII_IN_GND" U L 9750 4800 50 
F4 "OII_OUT" O R 10850 4700 50 
F5 "OII_OUT_GND" U R 10850 4800 50 
$EndSheet
Wire Wire Line
	9750 4700 9650 4700
Wire Wire Line
	9750 4800 9650 4800
Wire Wire Line
	10850 4700 10950 4700
Wire Wire Line
	10850 4800 10950 4800
Wire Wire Line
	10950 4800 10950 4900
Text Label 9650 4700 2    50   ~ 0
SPST_CH6
Text Label 9650 4800 2    50   ~ 0
SPST_GND
Text Label 10950 4700 0    50   ~ 0
CH6
$Comp
L power:GND #PWR017
U 1 1 62FB7767
P 10950 4900
F 0 "#PWR017" H 10950 4650 50  0001 C CNN
F 1 "GND" H 10950 4750 50  0000 C CNN
F 2 "" H 10950 4900 50  0001 C CNN
F 3 "" H 10950 4900 50  0001 C CNN
	1    10950 4900
	1    0    0    -1  
$EndComp
$Sheet
S 9750 5250 1100 300 
U 62FB890E
F0 "OII_07" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 9750 5350 50 
F3 "OII_IN_GND" U L 9750 5450 50 
F4 "OII_OUT" O R 10850 5350 50 
F5 "OII_OUT_GND" U R 10850 5450 50 
$EndSheet
Wire Wire Line
	10850 5350 10950 5350
Wire Wire Line
	10850 5450 10950 5450
Wire Wire Line
	10950 5450 10950 5550
Wire Wire Line
	9750 5350 9650 5350
Wire Wire Line
	9750 5450 9650 5450
$Comp
L power:GND #PWR018
U 1 1 6302523E
P 10950 5550
F 0 "#PWR018" H 10950 5300 50  0001 C CNN
F 1 "GND" H 10950 5400 50  0000 C CNN
F 2 "" H 10950 5550 50  0001 C CNN
F 3 "" H 10950 5550 50  0001 C CNN
	1    10950 5550
	1    0    0    -1  
$EndComp
Text Label 9650 5350 2    50   ~ 0
SPST_CH7
Text Label 9650 5450 2    50   ~ 0
SPST_GND
Text Label 10950 5350 0    50   ~ 0
CH7
Wire Wire Line
	1200 5800 1000 5800
Connection ~ 1200 5800
Wire Wire Line
	1000 5700 1000 5800
Wire Wire Line
	1550 7350 1000 7350
Wire Wire Line
	1000 7350 1000 7450
Connection ~ 1550 7350
$EndSCHEMATC
