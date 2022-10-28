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
Wire Wire Line
	9800 3250 10350 3250
Wire Wire Line
	9150 2800 8850 2800
Wire Wire Line
	8850 2800 8850 3300
Wire Wire Line
	9150 2900 9050 2900
Wire Wire Line
	9050 3250 9600 3250
Wire Wire Line
	10350 3250 10350 2900
Wire Wire Line
	10350 2900 10250 2900
NoConn ~ 9150 2700
Text Label 10250 2400 0    50   ~ 0
CAN_RX
Text Label 10250 2500 0    50   ~ 0
CAN_TX
$Comp
L power:GND #PWR025
U 1 1 6336012A
P 8850 3300
F 0 "#PWR025" H 8850 3050 50  0001 C CNN
F 1 "GND" H 8855 3127 50  0000 C CNN
F 2 "" H 8850 3300 50  0001 C CNN
F 3 "" H 8850 3300 50  0001 C CNN
	1    8850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 6336012B
P 9050 3300
F 0 "#PWR026" H 9050 3150 50  0001 C CNN
F 1 "+5V" H 9065 3473 50  0000 C CNN
F 2 "" H 9050 3300 50  0001 C CNN
F 3 "" H 9050 3300 50  0001 C CNN
	1    9050 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 3300 9050 3250
Connection ~ 9050 3250
$Comp
L power:GND #PWR027
U 1 1 6096FBD9
P 10350 3300
F 0 "#PWR027" H 10350 3050 50  0001 C CNN
F 1 "GND" H 10355 3127 50  0000 C CNN
F 2 "" H 10350 3300 50  0001 C CNN
F 3 "" H 10350 3300 50  0001 C CNN
	1    10350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3300 10350 3250
Connection ~ 10350 3250
Wire Wire Line
	9050 2900 9050 3250
$Comp
L SIM108-rescue:Teensy_3.2-pdjr U5
U 1 1 60F2AB82
P 10250 2900
F 0 "U5" H 10400 1350 50  0000 C CNN
F 1 "Teensy_3.2" H 10550 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 10250 2900 50  0001 C CNN
F 3 "" H 10250 2900 50  0001 C CNN
	1    10250 2900
	-1   0    0    1   
$EndComp
NoConn ~ 9700 1400
NoConn ~ 9600 1400
NoConn ~ 9500 1400
Text Label 9150 2600 2    50   ~ 0
CH0
Text Label 9150 2500 2    50   ~ 0
CH1
Text Label 9150 2400 2    50   ~ 0
CH2
Text Label 9150 2300 2    50   ~ 0
CH3
Text Label 9150 2200 2    50   ~ 0
CH4
Text Label 9150 2100 2    50   ~ 0
CH5
Text Label 9150 2000 2    50   ~ 0
CH6
Text Label 9150 1900 2    50   ~ 0
CH7
$Comp
L Connector:Screw_Terminal_01x09 J1
U 1 1 62D3957B
P 800 2200
F 0 "J1" H 800 2700 50  0000 C CNN
F 1 "Screw_Terminal_01x09" H 800 2700 50  0001 C CNN
F 2 "PDJR-connectors:CAMDEN_BOSS_CSTBV2-9_TERMINAL" H 800 2200 50  0001 C CNN
F 3 "~" H 800 2200 50  0001 C CNN
	1    800  2200
	-1   0    0    -1  
$EndComp
Text Label 10250 2700 0    50   ~ 0
MPX_LATCH
Text Label 1000 1900 0    50   ~ 0
SPST_CH0
Text Label 1000 1800 0    50   ~ 0
SPST_GND
Text Label 1000 2000 0    50   ~ 0
SPST_CH1
Text Label 1000 2100 0    50   ~ 0
SPST_CH2
Text Label 1000 2200 0    50   ~ 0
SPST_CH3
Text Label 1000 2300 0    50   ~ 0
SPST_CH4
Text Label 1000 2400 0    50   ~ 0
SPST_CH5
Text Label 1000 2500 0    50   ~ 0
SPST_CH6
Text Label 1000 2600 0    50   ~ 0
SPST_CH7
Text Notes 900  1250 0    50   ~ 0
Opto-isolated SPST inputs. Each opto-isolator\nis driven by a constant current source which\noperates the isolator LED at 6mA from voltages\nin the range 5VDC through 50VDC.
$Sheet
S 3750 700  1100 400 
U 62FB7846
F0 "OII_00" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 3750 900 50 
F3 "OII_IN_GND" U L 3750 1000 50 
F4 "OII_OUT" O R 4850 900 50 
F5 "OII_OUT_GND" U R 4850 1000 50 
F6 "OII_OUT_VCC" I R 4850 800 50 
$EndSheet
Text Label 3650 900  2    50   ~ 0
SPST_CH0
Text Label 3650 1000 2    50   ~ 0
SPST_GND
Text Label 4950 900  0    50   ~ 0
CH0
$Comp
L power:GND #PWR06
U 1 1 63004795
P 4950 1000
F 0 "#PWR06" H 4950 750 50  0001 C CNN
F 1 "GND" H 4950 850 50  0000 C CNN
F 2 "" H 4950 1000 50  0001 C CNN
F 3 "" H 4950 1000 50  0001 C CNN
	1    4950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1000 4950 1000
Wire Wire Line
	4950 800  4850 800 
Wire Wire Line
	3650 1000 3750 1000
Wire Wire Line
	3650 900  3750 900 
Text Label 3650 1550 2    50   ~ 0
SPST_CH1
Text Label 3650 1650 2    50   ~ 0
SPST_GND
Text Label 4950 1550 0    50   ~ 0
CH1
$Comp
L power:GND #PWR08
U 1 1 630DCFD4
P 4950 1650
F 0 "#PWR08" H 4950 1400 50  0001 C CNN
F 1 "GND" H 4950 1500 50  0000 C CNN
F 2 "" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0001 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
$Sheet
S 3750 2000 1100 400 
U 63103CAF
F0 "OII_02" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 3750 2200 50 
F3 "OII_IN_GND" U L 3750 2300 50 
F4 "OII_OUT" O R 4850 2200 50 
F5 "OII_OUT_GND" U R 4850 2300 50 
F6 "OII_OUT_VCC" I R 4850 2100 50 
$EndSheet
Wire Wire Line
	4850 2300 4950 2300
Wire Wire Line
	3750 2300 3650 2300
Wire Wire Line
	3750 2200 3650 2200
Text Label 3650 2200 2    50   ~ 0
SPST_CH2
Text Label 3650 2300 2    50   ~ 0
SPST_GND
Text Label 4950 2200 0    50   ~ 0
CH2
$Comp
L power:GND #PWR010
U 1 1 6316C272
P 4950 2300
F 0 "#PWR010" H 4950 2050 50  0001 C CNN
F 1 "GND" H 4950 2150 50  0000 C CNN
F 2 "" H 4950 2300 50  0001 C CNN
F 3 "" H 4950 2300 50  0001 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Sheet
S 3750 2650 1100 400 
U 62F64647
F0 "OOI_03" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 3750 2850 50 
F3 "OII_IN_GND" U L 3750 2950 50 
F4 "OII_OUT" O R 4850 2850 50 
F5 "OII_OUT_GND" U R 4850 2950 50 
F6 "OII_OUT_VCC" I R 4850 2750 50 
$EndSheet
Wire Wire Line
	4850 2750 4950 2750
Wire Wire Line
	4850 2850 4950 2850
Wire Wire Line
	3750 2850 3650 2850
Text Label 4950 2850 0    50   ~ 0
CH3
$Comp
L power:GND #PWR012
U 1 1 62FC668A
P 4950 2950
F 0 "#PWR012" H 4950 2700 50  0001 C CNN
F 1 "GND" H 4950 2800 50  0000 C CNN
F 2 "" H 4950 2950 50  0001 C CNN
F 3 "" H 4950 2950 50  0001 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
Text Label 3650 2850 2    50   ~ 0
SPST_CH3
Text Label 3650 2950 2    50   ~ 0
SPST_GND
$Sheet
S 5750 700  1100 400 
U 62FD589D
F0 "OOI_04" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 5750 900 50 
F3 "OII_IN_GND" U L 5750 1000 50 
F4 "OII_OUT" O R 6850 900 50 
F5 "OII_OUT_GND" U R 6850 1000 50 
F6 "OII_OUT_VCC" I R 6850 800 50 
$EndSheet
Wire Wire Line
	6850 800  6950 800 
Wire Wire Line
	6850 900  6950 900 
Wire Wire Line
	5750 900  5650 900 
Text Label 5650 900  2    50   ~ 0
SPST_CH4
Text Label 5650 1000 2    50   ~ 0
SPST_GND
Text Label 6950 900  0    50   ~ 0
CH4
$Comp
L power:GND #PWR016
U 1 1 6303B8FF
P 6950 1000
F 0 "#PWR016" H 6950 750 50  0001 C CNN
F 1 "GND" H 6950 850 50  0000 C CNN
F 2 "" H 6950 1000 50  0001 C CNN
F 3 "" H 6950 1000 50  0001 C CNN
	1    6950 1000
	1    0    0    -1  
$EndComp
$Sheet
S 5750 1350 1100 400 
U 63041ECA
F0 "OOI_05" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 5750 1550 50 
F3 "OII_IN_GND" U L 5750 1650 50 
F4 "OII_OUT" O R 6850 1550 50 
F5 "OII_OUT_GND" U R 6850 1650 50 
F6 "OII_OUT_VCC" I R 6850 1450 50 
$EndSheet
Wire Wire Line
	6850 1450 6950 1450
Wire Wire Line
	6850 1550 6950 1550
Wire Wire Line
	5750 1550 5650 1550
Text Label 5650 1550 2    50   ~ 0
SPST_CH5
Text Label 5650 1650 2    50   ~ 0
SPST_GND
Text Label 6950 1550 0    50   ~ 0
CH5
$Comp
L power:GND #PWR018
U 1 1 630A99B3
P 6950 1650
F 0 "#PWR018" H 6950 1400 50  0001 C CNN
F 1 "GND" H 6950 1500 50  0000 C CNN
F 2 "" H 6950 1650 50  0001 C CNN
F 3 "" H 6950 1650 50  0001 C CNN
	1    6950 1650
	1    0    0    -1  
$EndComp
$Sheet
S 5750 2000 1100 400 
U 62F45EE0
F0 "OOI_06" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 5750 2200 50 
F3 "OII_IN_GND" U L 5750 2300 50 
F4 "OII_OUT" O R 6850 2200 50 
F5 "OII_OUT_GND" U R 6850 2300 50 
F6 "OII_OUT_VCC" I R 6850 2100 50 
$EndSheet
Wire Wire Line
	5750 2200 5650 2200
Wire Wire Line
	6850 2100 6950 2100
Wire Wire Line
	6850 2200 6950 2200
Text Label 5650 2200 2    50   ~ 0
SPST_CH6
Text Label 5650 2300 2    50   ~ 0
SPST_GND
Text Label 6950 2200 0    50   ~ 0
CH6
$Comp
L power:GND #PWR020
U 1 1 62FB7767
P 6950 2300
F 0 "#PWR020" H 6950 2050 50  0001 C CNN
F 1 "GND" H 6950 2150 50  0000 C CNN
F 2 "" H 6950 2300 50  0001 C CNN
F 3 "" H 6950 2300 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
$Sheet
S 5750 2650 1100 400 
U 62FB890E
F0 "OII_07" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 5750 2850 50 
F3 "OII_IN_GND" U L 5750 2950 50 
F4 "OII_OUT" O R 6850 2850 50 
F5 "OII_OUT_GND" U R 6850 2950 50 
F6 "OII_OUT_VCC" I R 6850 2750 50 
$EndSheet
Wire Wire Line
	6850 2750 6950 2750
Wire Wire Line
	6850 2850 6950 2850
Wire Wire Line
	5750 2850 5650 2850
$Comp
L power:GND #PWR022
U 1 1 6302523E
P 6950 2950
F 0 "#PWR022" H 6950 2700 50  0001 C CNN
F 1 "GND" H 6950 2800 50  0000 C CNN
F 2 "" H 6950 2950 50  0001 C CNN
F 3 "" H 6950 2950 50  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
Text Label 5650 2850 2    50   ~ 0
SPST_CH7
Text Label 6950 2850 0    50   ~ 0
CH7
$Comp
L Device:R R1
U 1 1 5F1E6C5E
P 1750 6950
F 0 "R1" H 1700 6950 50  0000 R CNN
F 1 "4K7 0.125W" V 1750 6950 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1680 6950 50  0001 C CNN
F 3 "~" H 1750 6950 50  0001 C CNN
	1    1750 6950
	-1   0    0    1   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F2A4B92
P 3800 4950
F 0 "F1" V 3700 4950 50  0000 C CNN
F 1 "1A" V 3900 4950 39  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 3850 4750 50  0001 L CNN
F 3 "~" H 3800 4950 50  0001 C CNN
	1    3800 4950
	0    1    1    0   
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U1
U 1 1 5F1D12F5
P 2350 6350
F 0 "U1" H 2550 6700 50  0000 C CNN
F 1 "MCP2551-I-P" H 2600 6000 39  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2350 5850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 2350 6350 50  0001 C CNN
	1    2350 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7100 2350 7100
Connection ~ 1750 7100
Wire Wire Line
	1850 6550 1750 6550
Wire Wire Line
	1750 6550 1750 6800
Wire Wire Line
	1550 6750 2350 6750
Wire Wire Line
	1550 5850 2350 5850
Wire Wire Line
	2350 5850 2350 5950
Connection ~ 1550 5850
Text Label 4200 6250 2    50   ~ 0
CAN_H
Text Label 4200 6450 2    50   ~ 0
CAN_L
Wire Wire Line
	3400 4950 3550 4950
Text Label 4200 5350 2    50   ~ 0
NET_C
Wire Wire Line
	1000 6250 1850 6250
Wire Wire Line
	2350 6750 2350 7100
Connection ~ 2350 6750
NoConn ~ 1850 6450
$Comp
L power:+5V #PWR01
U 1 1 5FC3AC81
P 1000 4950
F 0 "#PWR01" H 1000 4800 50  0001 C CNN
F 1 "+5V" V 1015 5078 50  0000 L CNN
F 2 "" H 1000 4950 50  0001 C CNN
F 3 "" H 1000 4950 50  0001 C CNN
	1    1000 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC3B74A
P 1000 5350
F 0 "#PWR02" H 1000 5100 50  0001 C CNN
F 1 "GND" V 1005 5222 50  0000 R CNN
F 2 "" H 1000 5350 50  0001 C CNN
F 3 "" H 1000 5350 50  0001 C CNN
	1    1000 5350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 63360127
P 1000 5850
F 0 "#PWR03" H 1000 5700 50  0001 C CNN
F 1 "+5V" V 1015 5978 50  0000 L CNN
F 2 "" H 1000 5850 50  0001 C CNN
F 3 "" H 1000 5850 50  0001 C CNN
	1    1000 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FC44BAE
P 1000 7100
F 0 "#PWR04" H 1000 6850 50  0001 C CNN
F 1 "GND" V 1000 6900 50  0000 C CNN
F 2 "" H 1000 7100 50  0001 C CNN
F 3 "" H 1000 7100 50  0001 C CNN
	1    1000 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 5850 1550 5850
Wire Wire Line
	1000 7100 1750 7100
Text Label 1000 6250 0    50   ~ 0
CAN_RX
Text Label 1000 6150 0    50   ~ 0
CAN_TX
Wire Wire Line
	1000 6150 1850 6150
Wire Wire Line
	3900 7100 3900 6900
Wire Wire Line
	3900 6900 4200 6900
Wire Wire Line
	3900 7100 4600 7100
Text Notes 650  4750 0    50   ~ 10
POWER SUPPLY & CAN INTERFACE
Text Label 4200 6900 0    50   ~ 0
CAN_SCR
Wire Wire Line
	3400 5350 3550 5350
Wire Wire Line
	1550 6400 1550 5850
Wire Wire Line
	1550 6750 1550 6600
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6336012D
P 3550 4950
F 0 "#FLG01" H 3550 5025 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 5123 50  0001 C CNN
F 2 "" H 3550 4950 50  0001 C CNN
F 3 "~" H 3550 4950 50  0001 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6336012E
P 3550 5350
F 0 "#FLG02" H 3550 5425 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 5523 50  0001 C CNN
F 2 "" H 3550 5350 50  0001 C CNN
F 3 "~" H 3550 5350 50  0001 C CNN
	1    3550 5350
	-1   0    0    1   
$EndComp
Connection ~ 3550 4950
Wire Wire Line
	3550 4950 3650 4950
Connection ~ 3550 5350
Wire Wire Line
	3550 5350 4300 5350
$Comp
L Device:R R2
U 1 1 63360130
P 3700 6600
F 0 "R2" V 3600 6650 50  0000 R CNN
F 1 "120R 0.5W" V 3700 6600 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3630 6600 50  0001 C CNN
F 3 "~" H 3700 6600 50  0001 C CNN
	1    3700 6600
	0    -1   -1   0   
$EndComp
Text Label 4200 6600 0    50   ~ 0
TERM_A
Wire Wire Line
	4200 6600 3850 6600
Text Label 4200 6750 0    50   ~ 0
TERM_B
Wire Wire Line
	2850 6250 3450 6250
Wire Wire Line
	3550 6600 3450 6600
Wire Wire Line
	3450 6600 3450 6250
Connection ~ 3450 6250
Wire Wire Line
	3450 6250 4400 6250
Wire Wire Line
	4200 6750 3250 6750
Wire Wire Line
	3250 6750 3250 6450
Connection ~ 3250 6450
Wire Wire Line
	3250 6450 4500 6450
Wire Wire Line
	2850 6450 3250 6450
Text Label 5500 6150 2    50   ~ 0
TERM_A
Text Label 6450 6150 0    50   ~ 0
TERM_B
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 63360129
P 4900 5150
F 0 "J2" H 4900 5450 50  0000 C CNN
F 1 "CAN" H 4900 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4900 5150 50  0001 C CNN
F 3 "~" H 4900 5150 50  0001 C CNN
	1    4900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4950 4150 4950
Wire Wire Line
	4150 4950 4150 5050
Wire Wire Line
	4300 4950 4700 4950
Wire Wire Line
	4300 4950 4300 5350
Wire Wire Line
	4150 5050 4700 5050
Wire Wire Line
	4500 5150 4700 5150
Wire Wire Line
	4500 5150 4500 6450
Wire Wire Line
	4700 5250 4600 5250
$Comp
L Device:LED D1
U 1 1 631C329D
P 9800 5150
F 0 "D1" H 9900 5100 50  0000 C CNN
F 1 "LED" H 9793 4986 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9800 5150 50  0001 C CNN
F 3 "~" H 9800 5150 50  0001 C CNN
	1    9800 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 631D7AEF
P 10100 5250
F 0 "D6" H 10200 5200 50  0000 C CNN
F 1 "LED" H 10093 5086 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10100 5250 50  0001 C CNN
F 3 "~" H 10100 5250 50  0001 C CNN
	1    10100 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 631D7EE7
P 9800 5350
F 0 "D2" H 9900 5300 50  0000 C CNN
F 1 "LED" H 9793 5186 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9800 5350 50  0001 C CNN
F 3 "~" H 9800 5350 50  0001 C CNN
	1    9800 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 631D8355
P 10100 5450
F 0 "D7" H 10200 5400 50  0000 C CNN
F 1 "LED" H 10093 5286 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10100 5450 50  0001 C CNN
F 3 "~" H 10100 5450 50  0001 C CNN
	1    10100 5450
	-1   0    0    1   
$EndComp
$Comp
L SIM108-rescue:TMR_2411-pdjr U2
U 1 1 6327DB22
P 2900 5150
F 0 "U2" H 2900 5500 50  0000 C CNN
F 1 "TMR_2411" H 2900 4800 50  0000 C CNN
F 2 "PDJR_DC-DC_Converters:TMR_2411" H 2900 4800 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 5150
	-1   0    0    -1  
$EndComp
Text Label 6450 6250 0    50   ~ 0
CAN_SCR
$Comp
L Switch:SW_DIP_x02 SW3
U 1 1 62A67242
P 5800 6150
F 0 "SW3" H 5800 6000 50  0000 C CNN
F 1 "BUS" H 5800 6400 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm_LongPads" H 5800 6150 50  0001 C CNN
F 3 "~" H 5800 6150 50  0001 C CNN
	1    5800 6150
	1    0    0    1   
$EndComp
Wire Wire Line
	4600 5250 4600 7100
Wire Wire Line
	4700 5350 4400 5350
Wire Wire Line
	4400 5350 4400 6250
$Comp
L 74xx:74HC595 U4
U 1 1 6338D277
P 9150 5550
F 0 "U4" H 9400 6100 50  0000 C CNN
F 1 "74HC595" H 9350 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 9150 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9150 5550 50  0001 C CNN
	1    9150 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 63F004DD
P 9800 5550
F 0 "D3" H 9900 5500 50  0000 C CNN
F 1 "LED" H 9793 5386 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9800 5550 50  0001 C CNN
F 3 "~" H 9800 5550 50  0001 C CNN
	1    9800 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 63F00A5B
P 10100 5650
F 0 "D8" H 10200 5600 50  0000 C CNN
F 1 "LED" H 10093 5486 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10100 5650 50  0001 C CNN
F 3 "~" H 10100 5650 50  0001 C CNN
	1    10100 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 5150 9650 5150
Wire Wire Line
	9550 5250 9950 5250
Wire Wire Line
	9550 5350 9650 5350
Wire Wire Line
	9550 5450 9950 5450
Wire Wire Line
	9550 5550 9650 5550
Wire Wire Line
	9550 5650 9950 5650
Wire Wire Line
	9950 5150 10350 5150
Wire Wire Line
	10250 5250 10350 5250
Wire Wire Line
	9950 5350 10350 5350
Wire Wire Line
	10250 5450 10350 5450
Wire Wire Line
	9950 5550 10350 5550
Wire Wire Line
	10250 5650 10350 5650
NoConn ~ 9550 6050
Text Label 8550 5150 2    50   ~ 0
MPX_DATA
Text Label 8550 5350 2    50   ~ 0
MPX_CLOCK
Text Label 8550 5650 2    50   ~ 0
MPX_LATCH
Wire Wire Line
	9150 6250 9150 6350
Wire Wire Line
	9150 6350 8650 6350
Wire Wire Line
	8650 6350 8650 5750
Wire Wire Line
	8650 5750 8750 5750
Wire Wire Line
	8650 6350 8550 6350
Connection ~ 8650 6350
$Comp
L power:GND #PWR024
U 1 1 640FFD0C
P 8550 6350
F 0 "#PWR024" H 8550 6100 50  0001 C CNN
F 1 "GND" V 8550 6150 50  0000 C CNN
F 2 "" H 8550 6350 50  0001 C CNN
F 3 "" H 8550 6350 50  0001 C CNN
	1    8550 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5450 8650 5450
Wire Wire Line
	8650 5450 8650 4850
Wire Wire Line
	8650 4850 9150 4850
Wire Wire Line
	9150 4850 9150 4950
Wire Wire Line
	8650 4850 8550 4850
Connection ~ 8650 4850
$Comp
L power:+5V #PWR023
U 1 1 64136A77
P 8550 4850
F 0 "#PWR023" H 8550 4700 50  0001 C CNN
F 1 "+5V" V 8550 5000 50  0000 L CNN
F 2 "" H 8550 4850 50  0001 C CNN
F 3 "" H 8550 4850 50  0001 C CNN
	1    8550 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10850 6350 9150 6350
Connection ~ 9150 6350
Wire Wire Line
	8550 5150 8750 5150
Wire Wire Line
	8550 5350 8750 5350
Wire Wire Line
	8550 5650 8750 5650
$Comp
L Device:LED D4
U 1 1 63327BC0
P 9800 5750
F 0 "D4" H 9900 5700 50  0000 C CNN
F 1 "LED" H 9793 5586 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9800 5750 50  0001 C CNN
F 3 "~" H 9800 5750 50  0001 C CNN
	1    9800 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 633284CB
P 10100 5850
F 0 "D9" H 10200 5800 50  0000 C CNN
F 1 "LED" H 10093 5686 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10100 5850 50  0001 C CNN
F 3 "~" H 10100 5850 50  0001 C CNN
	1    10100 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 5750 9650 5750
Wire Wire Line
	9550 5850 9950 5850
Wire Wire Line
	9950 5750 10350 5750
Wire Wire Line
	10250 5850 10350 5850
$Comp
L Switch:SW_DIP_x08 SW2
U 1 1 633236F9
P 5800 5350
F 0 "SW2" H 5800 5900 50  0000 C CNN
F 1 "INSTANCE" H 5800 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5800 5350 50  0001 C CNN
F 3 "~" H 5800 5350 50  0001 C CNN
	1    5800 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 4950 5200 5050
Wire Wire Line
	5200 6250 5500 6250
Connection ~ 5200 5050
Wire Wire Line
	5200 5050 5200 5150
Connection ~ 5200 5150
Wire Wire Line
	5200 5150 5200 5250
Connection ~ 5200 5250
Wire Wire Line
	5200 5250 5200 5350
Connection ~ 5200 5350
Wire Wire Line
	5200 5350 5200 5450
Connection ~ 5200 5450
Wire Wire Line
	5200 5450 5200 5550
Connection ~ 5200 5550
Wire Wire Line
	5200 5550 5200 5650
Wire Wire Line
	5200 5650 5200 6250
Text Label 6450 4950 0    50   ~ 0
ADDR_0
Text Label 6450 5050 0    50   ~ 0
ADDR_1
Text Label 6450 5150 0    50   ~ 0
ADDR_2
Text Label 6450 5250 0    50   ~ 0
ADDR_3
Text Label 6450 5350 0    50   ~ 0
ADDR_4
Text Label 6450 5450 0    50   ~ 0
ADDR_5
Text Label 6450 5550 0    50   ~ 0
ADDR_6
Text Label 6450 5650 0    50   ~ 0
ADDR_7
Text Label 10250 1600 0    50   ~ 0
ADDR_0
Text Label 10250 1700 0    50   ~ 0
ADDR_1
Text Label 10250 1800 0    50   ~ 0
ADDR_2
Text Label 10250 1900 0    50   ~ 0
ADDR_3
Text Label 10250 2000 0    50   ~ 0
ADDR_4
Text Label 10250 2100 0    50   ~ 0
ADDR_5
Text Label 10250 2200 0    50   ~ 0
ADDR_6
Text Label 10250 2300 0    50   ~ 0
ADDR_7
Connection ~ 9150 4850
Wire Wire Line
	9150 4850 9700 4850
Wire Wire Line
	9900 4850 10850 4850
$Comp
L Switch:SW_Push SW1
U 1 1 633332C8
P 5500 7100
F 0 "SW1" H 5500 7300 50  0000 C CNN
F 1 "PRG" H 5500 7000 50  0000 C CNN
F 2 "PDJR-connectors:PCB_PUSH_BUTTON" H 5500 7300 50  0001 C CNN
F 3 "~" H 5500 7300 50  0001 C CNN
	1    5500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6250 5200 6600
Text Label 6450 7100 0    50   ~ 0
PRG
$Comp
L Device:CP_Small C1
U 1 1 635FBF50
P 1550 6500
F 0 "C1" H 1700 6500 50  0000 C CNN
F 1 "100nF" H 1350 6500 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1550 6500 50  0001 C CNN
F 3 "~" H 1550 6500 50  0001 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4950 2400 4950
Wire Wire Line
	1000 5350 2400 5350
Wire Notes Line
	5100 4750 6850 4750
Text Notes 5100 4750 0    50   ~ 10
CONFIGURATION
Wire Notes Line
	10950 4750 10950 6450
Wire Notes Line
	10950 6450 8000 6450
Wire Notes Line
	8000 6450 8000 4750
Wire Notes Line
	8000 4750 10950 4750
Text Notes 8000 4750 0    50   ~ 10
DISPLAY
Wire Notes Line
	650  4750 650  7200
Wire Notes Line
	650  4750 5050 4750
Wire Notes Line
	5050 7200 5050 4750
Wire Notes Line
	650  7200 5050 7200
Wire Notes Line
	5100 7700 6850 7700
Wire Notes Line
	6850 4750 6850 7700
Wire Notes Line
	5100 4750 5100 7700
Connection ~ 5200 5650
Wire Wire Line
	5500 4950 5200 4950
Wire Wire Line
	5500 5050 5200 5050
Wire Wire Line
	5500 5150 5200 5150
Wire Wire Line
	5500 5250 5200 5250
Wire Wire Line
	5500 5350 5200 5350
Wire Wire Line
	5500 5450 5200 5450
Wire Wire Line
	5500 5550 5200 5550
Wire Wire Line
	5500 5650 5200 5650
$Comp
L Interface:MAX6816 U3
U 1 1 6336163A
P 6100 7100
F 0 "U3" H 6200 7450 50  0000 L CNN
F 1 "MAX6816" H 6150 6750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 6750 6650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/1896.pdf" H 6100 7100 50  0001 C CNN
	1    6100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7500 6100 7600
Wire Wire Line
	5800 7100 5700 7100
Wire Wire Line
	6100 6700 6100 6600
Wire Wire Line
	6100 6600 6500 6600
$Comp
L Device:CP_Small C2
U 1 1 6355CB0C
P 5800 6600
F 0 "C2" V 5850 6500 50  0000 C CNN
F 1 "100nF" V 5850 6750 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5800 6600 50  0001 C CNN
F 3 "~" H 5800 6600 50  0001 C CNN
	1    5800 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 6600 5200 6600
Connection ~ 5200 6600
Connection ~ 5200 6250
Wire Wire Line
	5900 6600 6100 6600
Connection ~ 6100 6600
Wire Wire Line
	6400 7100 6450 7100
Wire Wire Line
	6100 7600 5200 7600
Wire Wire Line
	5200 6600 5200 7100
Wire Wire Line
	5300 7100 5200 7100
Connection ~ 5200 7100
Wire Wire Line
	5200 7100 5200 7600
$Comp
L power:+5V #PWR013
U 1 1 6369DCBF
P 6500 6600
F 0 "#PWR013" H 6500 6450 50  0001 C CNN
F 1 "+5V" V 6515 6728 50  0000 L CNN
F 2 "" H 6500 6600 50  0001 C CNN
F 3 "" H 6500 6600 50  0001 C CNN
	1    6500 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 63724529
P 6550 7600
F 0 "#PWR014" H 6550 7350 50  0001 C CNN
F 1 "GND" V 6550 7400 50  0000 C CNN
F 2 "" H 6550 7600 50  0001 C CNN
F 3 "" H 6550 7600 50  0001 C CNN
	1    6550 7600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 7600 6100 7600
Connection ~ 6100 7600
Wire Wire Line
	6100 4950 6450 4950
Wire Wire Line
	6100 5050 6450 5050
Wire Wire Line
	6100 5150 6450 5150
Wire Wire Line
	6100 5250 6450 5250
Wire Wire Line
	6100 5350 6450 5350
Wire Wire Line
	6100 5450 6450 5450
Wire Wire Line
	6100 5550 6450 5550
Wire Wire Line
	6100 5650 6450 5650
Wire Wire Line
	6100 6150 6450 6150
Wire Wire Line
	6100 6250 6450 6250
Text Label 10250 2600 0    50   ~ 0
MPX_DATA
Text Label 10250 2800 0    50   ~ 0
MPX_CLOCK
Text Label 9150 1700 2    50   ~ 0
PRG
NoConn ~ 9150 1600
NoConn ~ -3250 8100
Wire Wire Line
	4850 900  4950 900 
$Comp
L power:+5V #PWR05
U 1 1 634AE8DC
P 4950 800
F 0 "#PWR05" H 4950 650 50  0001 C CNN
F 1 "+5V" H 4965 973 50  0000 C CNN
F 2 "" H 4950 800 50  0001 C CNN
F 3 "" H 4950 800 50  0001 C CNN
	1    4950 800 
	1    0    0    -1  
$EndComp
$Sheet
S 3750 1350 1100 400 
U 63089671
F0 "OII_01" 50
F1 "opto_isolated_input.sch" 50
F2 "OII_IN" I L 3750 1550 50 
F3 "OII_IN_GND" U L 3750 1650 50 
F4 "OII_OUT" O R 4850 1550 50 
F5 "OII_OUT_GND" U R 4850 1650 50 
F6 "OII_OUT_VCC" I R 4850 1450 50 
$EndSheet
$Comp
L power:+5V #PWR07
U 1 1 63462A09
P 4950 1450
F 0 "#PWR07" H 4950 1300 50  0001 C CNN
F 1 "+5V" H 4965 1623 50  0000 C CNN
F 2 "" H 4950 1450 50  0001 C CNN
F 3 "" H 4950 1450 50  0001 C CNN
	1    4950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1550 3750 1550
Wire Wire Line
	3650 1650 3750 1650
Wire Wire Line
	4850 1450 4950 1450
Wire Wire Line
	4850 1550 4950 1550
Wire Wire Line
	4850 1650 4950 1650
$Comp
L power:+5V #PWR09
U 1 1 634E105F
P 4950 2100
F 0 "#PWR09" H 4950 1950 50  0001 C CNN
F 1 "+5V" H 4965 2273 50  0000 C CNN
F 2 "" H 4950 2100 50  0001 C CNN
F 3 "" H 4950 2100 50  0001 C CNN
	1    4950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2100 4950 2100
Wire Wire Line
	4850 2200 4950 2200
Wire Wire Line
	4850 2950 4950 2950
$Comp
L power:+5V #PWR011
U 1 1 6351340F
P 4950 2750
F 0 "#PWR011" H 4950 2600 50  0001 C CNN
F 1 "+5V" H 4965 2923 50  0000 C CNN
F 2 "" H 4950 2750 50  0001 C CNN
F 3 "" H 4950 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2950 3750 2950
Wire Wire Line
	6850 1000 6950 1000
$Comp
L power:+5V #PWR015
U 1 1 6352F708
P 6950 800
F 0 "#PWR015" H 6950 650 50  0001 C CNN
F 1 "+5V" H 6965 973 50  0000 C CNN
F 2 "" H 6950 800 50  0001 C CNN
F 3 "" H 6950 800 50  0001 C CNN
	1    6950 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1000 5650 1000
Wire Wire Line
	6850 1650 6950 1650
Wire Wire Line
	6850 2300 6950 2300
Wire Wire Line
	6850 2950 6950 2950
$Comp
L power:+5V #PWR017
U 1 1 6359AF9F
P 6950 1450
F 0 "#PWR017" H 6950 1300 50  0001 C CNN
F 1 "+5V" H 6965 1623 50  0000 C CNN
F 2 "" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 6359B793
P 6950 2100
F 0 "#PWR019" H 6950 1950 50  0001 C CNN
F 1 "+5V" H 6965 2273 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 6359BE30
P 6950 2750
F 0 "#PWR021" H 6950 2600 50  0001 C CNN
F 1 "+5V" H 6965 2923 50  0000 C CNN
F 2 "" H 6950 2750 50  0001 C CNN
F 3 "" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
Text Label 5650 2950 2    50   ~ 0
SPST_GND
Wire Wire Line
	5650 2950 5750 2950
Wire Wire Line
	5750 2300 5650 2300
Wire Wire Line
	5750 1650 5650 1650
$Comp
L Device:LED D5
U 1 1 6348B352
P 9850 4300
F 0 "D5" H 9950 4250 50  0000 C CNN
F 1 "LED" H 9843 4136 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9850 4300 50  0001 C CNN
F 3 "~" H 9850 4300 50  0001 C CNN
	1    9850 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 63493E4A
P 10150 4300
F 0 "R3" V 10200 4200 50  0000 R CNN
F 1 "470R" V 10150 4300 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10080 4300 50  0001 C CNN
F 3 "~" H 10150 4300 50  0001 C CNN
	1    10150 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 63496532
P 10400 4400
F 0 "#PWR028" H 10400 4150 50  0001 C CNN
F 1 "GND" H 10405 4227 50  0000 C CNN
F 2 "" H 10400 4400 50  0001 C CNN
F 3 "" H 10400 4400 50  0001 C CNN
	1    10400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4300 10400 4300
Wire Wire Line
	10400 4300 10400 4400
Wire Wire Line
	9700 4300 9600 4300
Text Label 9600 4300 2    50   ~ 0
TRANSMIT_LED
Text Label 9150 1800 2    50   ~ 0
TRANSMIT_LED
$Comp
L Device:CP_Small C4
U 1 1 6357107B
P 9800 4850
F 0 "C4" V 9850 4950 50  0000 C CNN
F 1 "100nF" V 9850 4700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 9800 4850 50  0001 C CNN
F 3 "~" H 9800 4850 50  0001 C CNN
	1    9800 4850
	0    -1   1    0   
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 634CCFDB
P 9700 3250
F 0 "C3" V 9750 3350 50  0000 C CNN
F 1 "100nF" V 9750 3100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 9700 3250 50  0001 C CNN
F 3 "~" H 9700 3250 50  0001 C CNN
	1    9700 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 634C34EB
P 10500 5150
F 0 "R28" V 10550 5050 50  0000 R CNN
F 1 "470R" V 10500 5150 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5150 50  0001 C CNN
F 3 "~" H 10500 5150 50  0001 C CNN
	1    10500 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 634C3A8E
P 10500 5250
F 0 "R29" V 10550 5150 50  0000 R CNN
F 1 "470R" V 10500 5250 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5250 50  0001 C CNN
F 3 "~" H 10500 5250 50  0001 C CNN
	1    10500 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 634C3E87
P 10500 5350
F 0 "R30" V 10550 5250 50  0000 R CNN
F 1 "470R" V 10500 5350 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5350 50  0001 C CNN
F 3 "~" H 10500 5350 50  0001 C CNN
	1    10500 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 634C42EC
P 10500 5450
F 0 "R31" V 10550 5350 50  0000 R CNN
F 1 "470R" V 10500 5450 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5450 50  0001 C CNN
F 3 "~" H 10500 5450 50  0001 C CNN
	1    10500 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R32
U 1 1 634C469C
P 10500 5550
F 0 "R32" V 10550 5450 50  0000 R CNN
F 1 "470R" V 10500 5550 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5550 50  0001 C CNN
F 3 "~" H 10500 5550 50  0001 C CNN
	1    10500 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 634C4AC7
P 10500 5650
F 0 "R33" V 10550 5550 50  0000 R CNN
F 1 "470R" V 10500 5650 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5650 50  0001 C CNN
F 3 "~" H 10500 5650 50  0001 C CNN
	1    10500 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R34
U 1 1 634C4F7E
P 10500 5750
F 0 "R34" V 10550 5650 50  0000 R CNN
F 1 "470R" V 10500 5750 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5750 50  0001 C CNN
F 3 "~" H 10500 5750 50  0001 C CNN
	1    10500 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 634C53BF
P 10500 5850
F 0 "R35" V 10550 5750 50  0000 R CNN
F 1 "470R" V 10500 5850 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 10430 5850 50  0001 C CNN
F 3 "~" H 10500 5850 50  0001 C CNN
	1    10500 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10650 5150 10750 5150
Wire Wire Line
	10750 5150 10750 5250
Wire Wire Line
	10750 5850 10650 5850
Wire Wire Line
	10850 4850 10850 6350
Wire Wire Line
	10750 5850 10750 5950
Connection ~ 10750 5850
$Comp
L power:GND #PWR029
U 1 1 634F8D12
P 10750 5950
F 0 "#PWR029" H 10750 5700 50  0001 C CNN
F 1 "GND" H 10755 5777 50  0000 C CNN
F 2 "" H 10750 5950 50  0001 C CNN
F 3 "" H 10750 5950 50  0001 C CNN
	1    10750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5250 10750 5250
Connection ~ 10750 5250
Wire Wire Line
	10750 5250 10750 5350
Wire Wire Line
	10650 5350 10750 5350
Connection ~ 10750 5350
Wire Wire Line
	10750 5350 10750 5450
Wire Wire Line
	10650 5450 10750 5450
Connection ~ 10750 5450
Wire Wire Line
	10750 5450 10750 5550
Wire Wire Line
	10650 5550 10750 5550
Connection ~ 10750 5550
Wire Wire Line
	10750 5550 10750 5650
Wire Wire Line
	10650 5650 10750 5650
Connection ~ 10750 5650
Wire Wire Line
	10750 5650 10750 5750
Wire Wire Line
	10650 5750 10750 5750
Connection ~ 10750 5750
Wire Wire Line
	10750 5750 10750 5850
$EndSCHEMATC
