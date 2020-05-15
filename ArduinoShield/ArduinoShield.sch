EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	1800 2150 1850 2150
Wire Wire Line
	1850 2150 1850 2250
Connection ~ 1850 2150
Wire Wire Line
	1850 2150 1900 2150
$Comp
L power:GND #PWR0101
U 1 1 5E6BDEA7
P 1850 2250
F 0 "#PWR0101" H 1850 2000 50  0001 C CNN
F 1 "GND" H 1855 2077 50  0000 C CNN
F 2 "" H 1850 2250 50  0001 C CNN
F 3 "" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1650 2200 1150
Wire Wire Line
	1400 1350 1250 1350
Wire Wire Line
	1250 1350 1250 1150
Wire Wire Line
	1400 1450 900  1450
Wire Wire Line
	900  1450 900  1150
Wire Wire Line
	800  1350 1250 1350
Connection ~ 1250 1350
Text GLabel 800  1350 0    50   Input ~ 0
SDA
Wire Wire Line
	900  1450 900  1500
Wire Wire Line
	900  1500 800  1500
Connection ~ 900  1450
Text GLabel 800  1500 0    50   Input ~ 0
SCL
Wire Wire Line
	1400 1750 1300 1750
Wire Wire Line
	1300 1750 1300 1850
Wire Wire Line
	1300 1850 1400 1850
Wire Wire Line
	1300 1850 1300 1950
Wire Wire Line
	1300 1950 1400 1950
Connection ~ 1300 1850
Wire Wire Line
	1300 1950 1300 2150
Wire Wire Line
	1300 2150 1800 2150
Connection ~ 1300 1950
Connection ~ 1800 2150
Wire Wire Line
	1800 1150 1800 850 
Wire Wire Line
	1800 850  1250 850 
Wire Wire Line
	900  850  1250 850 
Connection ~ 1250 850 
Wire Wire Line
	1800 850  2200 850 
Connection ~ 1800 850 
Wire Wire Line
	1800 850  1800 750 
$Comp
L power:+3V3 #PWR0102
U 1 1 5E6C2901
P 1800 750
F 0 "#PWR0102" H 1800 600 50  0001 C CNN
F 1 "+3V3" H 1815 923 50  0000 C CNN
F 2 "" H 1800 750 50  0001 C CNN
F 3 "" H 1800 750 50  0001 C CNN
	1    1800 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 850  2550 850 
Wire Wire Line
	2550 850  2550 1500
Connection ~ 2200 850 
Wire Wire Line
	2550 1800 2550 2150
Wire Wire Line
	2550 2150 1900 2150
Connection ~ 1900 2150
Wire Wire Line
	10050 2500 10400 2500
Text GLabel 10400 2500 2    50   Input ~ 0
SDA
Wire Wire Line
	10050 2600 10400 2600
Text GLabel 10400 2600 2    50   Input ~ 0
SCL
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5E6F2F0B
P 9550 2100
F 0 "A1" H 9550 1011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 9550 920 50  0000 C CNN
F 2 "ArduinoShield:Arduino_Nano" H 9550 2100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9550 2100 50  0001 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 900  9650 1100
$Comp
L power:+3V3 #PWR0105
U 1 1 5E6FC57F
P 9650 900
F 0 "#PWR0105" H 9650 750 50  0001 C CNN
F 1 "+3V3" H 9665 1073 50  0000 C CNN
F 2 "" H 9650 900 50  0001 C CNN
F 3 "" H 9650 900 50  0001 C CNN
	1    9650 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E6FCB68
P 9600 3400
F 0 "#PWR0106" H 9600 3150 50  0001 C CNN
F 1 "GND" H 9605 3227 50  0000 C CNN
F 2 "" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0001 C CNN
	1    9600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3100 9600 3100
Wire Wire Line
	9600 3100 9600 3400
Connection ~ 9600 3100
Wire Wire Line
	9600 3100 9650 3100
Wire Wire Line
	1250 3550 1250 3650
Wire Wire Line
	1250 3650 1450 3650
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E6F8695
P 1650 3650
F 0 "J2" H 1600 3450 50  0000 C CNN
F 1 "Molex 1053131102" V 1750 3650 50  0000 C CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105313-xx02_1x02_P2.50mm_Horizontal" H 1650 3650 50  0001 C CNN
F 3 "~" H 1650 3650 50  0001 C CNN
	1    1650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3750 1250 3750
Wire Wire Line
	1250 3750 1250 4100
$Comp
L power:GND #PWR0107
U 1 1 5E7046AD
P 1250 4100
F 0 "#PWR0107" H 1250 3850 50  0001 C CNN
F 1 "GND" H 1255 3927 50  0000 C CNN
F 2 "" H 1250 4100 50  0001 C CNN
F 3 "" H 1250 4100 50  0001 C CNN
	1    1250 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5E7050FE
P 1250 3100
F 0 "#PWR0108" H 1250 2950 50  0001 C CNN
F 1 "+3V3" H 1265 3273 50  0000 C CNN
F 2 "" H 1250 3100 50  0001 C CNN
F 3 "" H 1250 3100 50  0001 C CNN
	1    1250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3100 1250 3250
Wire Wire Line
	1250 3650 1000 3650
Wire Wire Line
	1000 3650 1000 3100
Connection ~ 1250 3650
Text GLabel 1000 3100 1    50   Input ~ 0
ATempMeas
Wire Wire Line
	1000 3650 1000 3700
Connection ~ 1000 3650
Wire Wire Line
	1000 4000 1000 4100
Wire Wire Line
	1000 4100 1250 4100
Connection ~ 1250 4100
Wire Wire Line
	10050 2100 10400 2100
Text GLabel 10400 2100 2    50   Input ~ 0
ATempMeas
Wire Wire Line
	9750 1100 9750 1050
$Comp
L power:+5V #PWR0109
U 1 1 5E70FAB2
P 9750 1050
F 0 "#PWR0109" H 9750 900 50  0001 C CNN
F 1 "+5V" H 9765 1223 50  0000 C CNN
F 2 "" H 9750 1050 50  0001 C CNN
F 3 "" H 9750 1050 50  0001 C CNN
	1    9750 1050
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  500  2900 500 
Wire Notes Line
	2900 500  2900 2500
Wire Notes Line
	2900 2500 550  2500
Wire Notes Line
	550  2500 550  500 
Text Notes 600  2450 0    50   ~ 0
Temperature Sensor
Wire Notes Line
	3050 500  6050 500 
Wire Notes Line
	6050 2500 3050 2500
Wire Notes Line
	3050 2500 3050 500 
Text Notes 3100 2450 0    50   ~ 0
Pressure, Humidity, Temperature
Wire Notes Line
	550  2600 1900 2600
Wire Notes Line
	1900 2600 1900 4550
Wire Notes Line
	1900 4550 550  4550
Wire Notes Line
	550  4550 550  2600
Text Notes 600  4500 0    50   ~ 0
Temp. Measurement with external\nThermistor 10kOhm
Wire Wire Line
	2850 3500 2750 3500
Wire Wire Line
	2750 3500 2750 3250
Wire Wire Line
	2850 3600 2400 3600
Wire Wire Line
	2400 3600 2400 3250
$Comp
L power:+3V3 #PWR02
U 1 1 5E718D0F
P 2600 2850
F 0 "#PWR02" H 2600 2700 50  0001 C CNN
F 1 "+3V3" H 2615 3023 50  0000 C CNN
F 2 "" H 2600 2850 50  0001 C CNN
F 3 "" H 2600 2850 50  0001 C CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2950 2600 2950
Wire Wire Line
	2600 2950 2600 2850
Wire Wire Line
	2600 2950 2400 2950
Connection ~ 2600 2950
Wire Wire Line
	2750 3500 2300 3500
Connection ~ 2750 3500
Text GLabel 2300 3500 0    50   Input ~ 0
SCL
Wire Wire Line
	2400 3600 2300 3600
Connection ~ 2400 3600
Text GLabel 2300 3600 0    50   Input ~ 0
SDA
$Comp
L power:+3V3 #PWR01
U 1 1 5E718325
P 2450 4150
F 0 "#PWR01" H 2450 4000 50  0001 C CNN
F 1 "+3V3" H 2450 4300 50  0000 L CNN
F 2 "" H 2450 4150 50  0001 C CNN
F 3 "" H 2450 4150 50  0001 C CNN
	1    2450 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E7179D1
P 3750 4250
F 0 "#PWR03" H 3750 4000 50  0001 C CNN
F 1 "GND" H 3755 4077 50  0000 C CNN
F 2 "" H 3750 4250 50  0001 C CNN
F 3 "" H 3750 4250 50  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4150 3750 4250
Wire Wire Line
	2850 3900 2850 4150
Wire Wire Line
	2850 4150 2800 4150
Wire Wire Line
	3550 3600 3750 3600
Wire Wire Line
	3750 3600 3750 3800
Wire Wire Line
	3550 3500 4050 3500
Wire Wire Line
	4050 3500 4050 3800
Connection ~ 2850 4150
Wire Wire Line
	3750 4100 3750 4150
Wire Wire Line
	3750 4150 3600 4150
Connection ~ 3750 4150
Wire Wire Line
	4050 4150 3750 4150
Wire Wire Line
	4050 4100 4050 4150
Text Notes 2050 4500 0    50   ~ 0
Magnetic Field Sensor
Wire Notes Line
	2000 2600 2000 4550
Wire Notes Line
	2000 4550 4300 4550
Wire Notes Line
	4300 4550 4300 2600
Wire Notes Line
	4300 2600 2000 2600
Wire Notes Line
	550  4650 1850 4650
Wire Notes Line
	1850 4650 1850 6300
Wire Notes Line
	1850 6300 550  6300
Text Notes 600  6250 0    50   ~ 0
Seeedstudio Grove Water Sensor\n
Wire Wire Line
	10050 2200 10400 2200
Text GLabel 10400 2200 2    50   Input ~ 0
AFloodMeas
Wire Wire Line
	5150 850  5450 850 
Connection ~ 5150 850 
Wire Wire Line
	5150 950  5150 850 
Wire Wire Line
	5450 850  5750 850 
Connection ~ 5450 850 
Wire Wire Line
	5450 950  5450 850 
Wire Wire Line
	5750 850  6000 850 
Connection ~ 5750 850 
Wire Wire Line
	5750 950  5750 850 
Wire Wire Line
	4950 850  5150 850 
Connection ~ 4950 850 
Wire Wire Line
	4300 2150 4400 2150
Wire Wire Line
	4400 2150 4400 2250
Connection ~ 4400 2150
Wire Wire Line
	4400 2150 4500 2150
$Comp
L power:GND #PWR0104
U 1 1 5E6D5D02
P 4400 2250
F 0 "#PWR0104" H 4400 2000 50  0001 C CNN
F 1 "GND" H 4405 2077 50  0000 C CNN
F 2 "" H 4400 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
Connection ~ 4300 2150
Wire Wire Line
	5350 1450 5400 1450
Connection ~ 5350 1450
Wire Wire Line
	5350 1300 5350 1450
Wire Wire Line
	5450 1300 5350 1300
Wire Wire Line
	5450 1250 5450 1300
Wire Wire Line
	5000 1450 5350 1450
Connection ~ 3600 850 
Wire Wire Line
	3200 850  3600 850 
Wire Wire Line
	3200 1350 3200 850 
Wire Wire Line
	4500 850  4500 950 
Connection ~ 4500 850 
Wire Wire Line
	4300 850  4500 850 
Wire Wire Line
	4950 850  4500 850 
Wire Wire Line
	6000 1850 6000 850 
Wire Wire Line
	5000 1850 6000 1850
Wire Wire Line
	3600 2150 4300 2150
Connection ~ 3600 2150
Wire Wire Line
	3600 1350 3600 2150
Wire Wire Line
	3200 2150 3600 2150
Wire Wire Line
	3200 1650 3200 2150
Wire Wire Line
	3600 850  4300 850 
Wire Wire Line
	3600 1050 3600 850 
Wire Wire Line
	4300 850  4300 950 
Connection ~ 4300 850 
$Comp
L power:+3V3 #PWR0103
U 1 1 5E6CFAAD
P 4950 750
F 0 "#PWR0103" H 4950 600 50  0001 C CNN
F 1 "+3V3" H 4965 923 50  0000 C CNN
F 2 "" H 4950 750 50  0001 C CNN
F 3 "" H 4950 750 50  0001 C CNN
	1    4950 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 850  4950 750 
Wire Wire Line
	5350 1650 5400 1650
Connection ~ 5350 1650
Wire Wire Line
	5750 1550 5750 1250
Wire Wire Line
	5350 1550 5750 1550
Wire Wire Line
	5350 1650 5350 1550
Text GLabel 5400 1650 2    50   Input ~ 0
SDA
Wire Wire Line
	5000 1650 5350 1650
Wire Wire Line
	5000 1250 5150 1250
Text GLabel 5400 1450 2    50   Input ~ 0
SCL
$Comp
L Sensor:BME280 U3
U 1 1 5E6C9436
P 4400 1550
F 0 "U3" H 3971 1596 50  0000 R CNN
F 1 "BME280" H 3971 1505 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 5900 1100 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 4400 1350 50  0001 C CNN
	1    4400 1550
	1    0    0    -1  
$EndComp
Wire Notes Line
	6050 500  6050 2500
$Comp
L power:GND #PWR0112
U 1 1 5E841A45
P 2350 5850
F 0 "#PWR0112" H 2350 5600 50  0001 C CNN
F 1 "GND" H 2355 5677 50  0000 C CNN
F 2 "" H 2350 5850 50  0001 C CNN
F 3 "" H 2350 5850 50  0001 C CNN
	1    2350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5850 2100 5850
Wire Wire Line
	2100 5850 2100 5800
Wire Wire Line
	2350 5800 2350 5850
Wire Wire Line
	2100 5300 2100 5500
Wire Wire Line
	2350 5500 2350 5300
Wire Wire Line
	2350 5300 2100 5300
Connection ~ 2350 5850
Text GLabel 8850 2500 0    50   Input ~ 0
DFlow
Wire Wire Line
	9050 2500 8850 2500
$Comp
L Diode:MM3Zxx D1
U 1 1 5E83429A
P 2100 5650
F 0 "D1" V 2054 5729 50  0000 L CNN
F 1 "MM3Z3V3B" H 1900 5550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323F" H 2100 5475 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/mm3z2v4.pdf" H 2100 5650 50  0001 C CNN
	1    2100 5650
	0    1    1    0   
$EndComp
Wire Notes Line
	550  6300 550  4650
Text GLabel 700  5250 1    50   Input ~ 0
AFloodMeas
$Comp
L power:+3V3 #PWR0111
U 1 1 5E7BDE1D
P 950 4900
F 0 "#PWR0111" H 950 4750 50  0001 C CNN
F 1 "+3V3" H 965 5073 50  0000 C CNN
F 2 "" H 950 4900 50  0001 C CNN
F 3 "" H 950 4900 50  0001 C CNN
	1    950  4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5350 950  5450
Wire Wire Line
	950  5550 950  5900
$Comp
L power:GND #PWR0110
U 1 1 5E7BDE17
P 950 5900
F 0 "#PWR0110" H 950 5650 50  0001 C CNN
F 1 "GND" H 955 5727 50  0000 C CNN
F 2 "" H 950 5900 50  0001 C CNN
F 3 "" H 950 5900 50  0001 C CNN
	1    950  5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4900 950  5000
Wire Wire Line
	950  5450 700  5450
Wire Wire Line
	700  5450 700  5250
Connection ~ 950  5450
Wire Wire Line
	700  5450 700  5500
Connection ~ 700  5450
Wire Wire Line
	700  5800 700  5900
Wire Wire Line
	700  5900 950  5900
Connection ~ 950  5900
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5E7C6271
P 1500 5450
F 0 "J1" H 1450 5650 50  0000 L CNN
F 1 "Molex 1053131103" V 1600 5050 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105313-xx03_1x03_P2.50mm_Horizontal" H 1500 5450 50  0001 C CNN
F 3 "~" H 1500 5450 50  0001 C CNN
	1    1500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5450 1300 5450
Wire Wire Line
	950  5550 1300 5550
Wire Wire Line
	1300 5350 1300 5000
Wire Wire Line
	1300 5000 950  5000
Connection ~ 950  5000
Wire Wire Line
	950  5000 950  5050
Wire Wire Line
	2750 5200 2650 5200
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5E829E89
P 2950 5300
F 0 "J3" H 2900 5500 50  0000 L CNN
F 1 "Molex 1053131103" V 3050 4900 50  0000 L CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105313-xx03_1x03_P2.50mm_Horizontal" H 2950 5300 50  0001 C CNN
F 3 "~" H 2950 5300 50  0001 C CNN
	1    2950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5E86F840
P 2650 4950
F 0 "#PWR0113" H 2650 4800 50  0001 C CNN
F 1 "+5V" H 2665 5123 50  0000 C CNN
F 2 "" H 2650 4950 50  0001 C CNN
F 3 "" H 2650 4950 50  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5200 2650 4950
Wire Wire Line
	2750 5400 2650 5400
Wire Wire Line
	2650 5400 2650 5850
Wire Wire Line
	2650 5850 2350 5850
Wire Notes Line
	1950 4650 1950 6300
Wire Notes Line
	1950 6300 3200 6300
Wire Notes Line
	3200 4650 1950 4650
Text Notes 2000 6250 0    50   ~ 0
5V Flow Sensor.\nPulsing once every revolution
Wire Notes Line
	3200 6300 3200 4650
Wire Wire Line
	2500 4150 2450 4150
Wire Wire Line
	2450 4150 2450 3800
Wire Wire Line
	2450 3800 2850 3800
Connection ~ 2450 4150
Wire Wire Line
	2850 3700 2300 3700
Wire Wire Line
	2300 3700 2300 3750
Wire Wire Line
	2300 4050 2300 4150
Wire Wire Line
	2300 4150 2450 4150
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5EA2CBF4
P 3750 5400
F 0 "J4" H 3668 5193 50  0000 C CNN
F 1 "Molex 1053131102" V 3850 5400 50  0000 C CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105313-xx02_1x02_P2.50mm_Horizontal" H 3750 5400 50  0001 C CNN
F 3 "~" H 3750 5400 50  0001 C CNN
	1    3750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EA36F98
P 3450 5600
F 0 "#PWR0114" H 3450 5350 50  0001 C CNN
F 1 "GND" H 3455 5427 50  0000 C CNN
F 2 "" H 3450 5600 50  0001 C CNN
F 3 "" H 3450 5600 50  0001 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5500 3450 5500
Wire Wire Line
	3450 5500 3450 5600
Wire Wire Line
	3550 5400 3450 5400
Wire Wire Line
	3450 5400 3450 5350
Wire Wire Line
	3450 5000 3450 5050
Wire Notes Line
	3300 4650 3300 6300
Wire Notes Line
	3300 6300 5200 6300
Wire Notes Line
	5200 6300 5200 4650
Wire Notes Line
	5200 4650 3300 4650
Text Notes 3350 6250 0    50   ~ 0
Connections for 2 solenoid valves\nusing a solid state relay.\nE.g. Crydom SSR series\nOutputs 5.9 mA @ 3.3V\n(compare with relay specification)
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5EA909C2
P 4700 5400
F 0 "J5" H 4618 5193 50  0000 C CNN
F 1 "Molex 1053131102" V 4800 5400 50  0000 C CNN
F 2 "Connector_Molex:Molex_Nano-Fit_105313-xx02_1x02_P2.50mm_Horizontal" H 4700 5400 50  0001 C CNN
F 3 "~" H 4700 5400 50  0001 C CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EA909C8
P 4400 5600
F 0 "#PWR0115" H 4400 5350 50  0001 C CNN
F 1 "GND" H 4405 5427 50  0000 C CNN
F 2 "" H 4400 5600 50  0001 C CNN
F 3 "" H 4400 5600 50  0001 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5500 4400 5500
Wire Wire Line
	4400 5500 4400 5600
Wire Wire Line
	4500 5400 4400 5400
Wire Wire Line
	4400 5400 4400 5350
Wire Wire Line
	4400 5000 4400 5050
Text GLabel 3450 5000 1    50   Input ~ 0
Relay2
Text GLabel 4400 5000 1    50   Input ~ 0
Relay1
Wire Wire Line
	9050 2400 8850 2400
Wire Wire Line
	9050 2300 8850 2300
Text GLabel 8850 2400 0    50   Input ~ 0
Relay2
Text GLabel 8850 2300 0    50   Input ~ 0
Relay1
$Comp
L ArduinoEnivronmentShield:ALS31300 U2
U 1 1 5E7117E0
P 3200 3700
F 0 "U2" H 3200 4125 50  0000 C CNN
F 1 "ALS31300" H 3200 4034 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-10-1EP_3x3mm_P0.5mm_EP1.55x2.48mm" H 3250 3400 50  0001 C CNN
F 3 "" H 3250 3400 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5EA909D2
P 4400 5200
F 0 "R14" H 4470 5246 50  0000 L CNN
F 1 "562R" H 4470 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 4330 5200 50  0001 C CNN
F 3 "~" H 4400 5200 50  0001 C CNN
	1    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5EA4A56A
P 3450 5200
F 0 "R11" H 3520 5246 50  0000 L CNN
F 1 "562R" H 3520 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3380 5200 50  0001 C CNN
F 3 "~" H 3450 5200 50  0001 C CNN
	1    3450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E82CBC1
P 2350 5650
F 0 "R7" H 2420 5696 50  0000 L CNN
F 1 "1.1k" H 2420 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2280 5650 50  0001 C CNN
F 3 "~" H 2350 5650 50  0001 C CNN
	1    2350 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E73D327
P 4050 3950
F 0 "R13" H 4120 3996 50  0000 L CNN
F 1 "10k" H 4120 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3980 3950 50  0001 C CNN
F 3 "~" H 4050 3950 50  0001 C CNN
	1    4050 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5E73D321
P 3750 3950
F 0 "R12" H 3820 3996 50  0000 L CNN
F 1 "10k" H 3820 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3680 3950 50  0001 C CNN
F 3 "~" H 3750 3950 50  0001 C CNN
	1    3750 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E736A88
P 2300 3900
F 0 "R6" H 2370 3946 50  0000 L CNN
F 1 "10k" H 2370 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2230 3900 50  0001 C CNN
F 3 "~" H 2300 3900 50  0001 C CNN
	1    2300 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5E705798
P 2750 3100
F 0 "R10" H 2820 3146 50  0000 L CNN
F 1 "10k" H 2820 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2680 3100 50  0001 C CNN
F 3 "~" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E70601D
P 2400 3100
F 0 "R8" H 2470 3146 50  0000 L CNN
F 1 "10k" H 2470 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2330 3100 50  0001 C CNN
F 3 "~" H 2400 3100 50  0001 C CNN
	1    2400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E6F66E7
P 1250 3400
F 0 "R4" H 1320 3446 50  0000 L CNN
F 1 "10k" H 1320 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 1180 3400 50  0001 C CNN
F 3 "~" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5E6CC8D9
P 5750 1100
F 0 "R17" H 5820 1146 50  0000 L CNN
F 1 "4.7k" H 5820 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 5680 1100 50  0001 C CNN
F 3 "~" H 5750 1100 50  0001 C CNN
	1    5750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5E6CC274
P 5450 1100
F 0 "R16" H 5520 1146 50  0000 L CNN
F 1 "4.7k" H 5520 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 5380 1100 50  0001 C CNN
F 3 "~" H 5450 1100 50  0001 C CNN
	1    5450 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5E6CBE2E
P 5150 1100
F 0 "R15" H 5220 1146 50  0000 L CNN
F 1 "4.7k" H 5220 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 5080 1100 50  0001 C CNN
F 3 "~" H 5150 1100 50  0001 C CNN
	1    5150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E6BF06F
P 2200 1000
F 0 "R5" H 2270 1046 50  0000 L CNN
F 1 "4.7k" H 2270 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2130 1000 50  0001 C CNN
F 3 "~" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E6BF4AC
P 1250 1000
F 0 "R3" H 1320 1046 50  0000 L CNN
F 1 "4.7k" H 1320 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 1180 1000 50  0001 C CNN
F 3 "~" H 1250 1000 50  0001 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E6C02B3
P 900 1000
F 0 "R1" H 970 1046 50  0000 L CNN
F 1 "4.7k" H 970 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 830 1000 50  0001 C CNN
F 3 "~" H 900 1000 50  0001 C CNN
	1    900  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E7BDE2A
P 700 5650
F 0 "C1" H 815 5696 50  0000 L CNN
F 1 "100nF" H 815 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 738 5500 50  0001 C CNN
F 3 "~" H 700 5650 50  0001 C CNN
	1    700  5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E70EE04
P 2650 4150
F 0 "C4" V 2400 4050 50  0000 L CNN
F 1 "100nF" V 2500 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 2688 4000 50  0001 C CNN
F 3 "~" H 2650 4150 50  0001 C CNN
	1    2650 4150
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E70EBE9
P 1000 3850
F 0 "C2" H 1115 3896 50  0000 L CNN
F 1 "100nF" H 1115 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 1038 3700 50  0001 C CNN
F 3 "~" H 1000 3850 50  0001 C CNN
	1    1000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E6DE4E7
P 3600 1200
F 0 "C6" H 3715 1246 50  0000 L CNN
F 1 "100nF" H 3715 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3638 1050 50  0001 C CNN
F 3 "~" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E6EAA6E
P 2550 1650
F 0 "C3" H 2665 1696 50  0000 L CNN
F 1 "100nF" H 2665 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 2588 1500 50  0001 C CNN
F 3 "~" H 2550 1650 50  0001 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E6DE9EE
P 3200 1500
F 0 "C5" H 3315 1546 50  0000 L CNN
F 1 "100nF" H 3315 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3238 1350 50  0001 C CNN
F 3 "~" H 3200 1500 50  0001 C CNN
	1    3200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E7BDE07
P 950 5200
F 0 "R2" H 1020 5246 50  0000 L CNN
F 1 "10k" H 1020 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 880 5200 50  0001 C CNN
F 3 "~" H 950 5200 50  0001 C CNN
	1    950  5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3700 3600 3700
Wire Wire Line
	3600 3700 3600 3800
Connection ~ 3600 4150
Wire Wire Line
	3600 4150 2850 4150
Wire Wire Line
	3550 3900 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3600 3900 3600 4150
Wire Wire Line
	3550 3800 3600 3800
Connection ~ 3600 3800
Wire Wire Line
	3600 3800 3600 3900
Wire Wire Line
	9050 2200 8850 2200
Text GLabel 8850 2200 0    50   Input ~ 0
LED2
Text GLabel 8850 2100 0    50   Input ~ 0
LED1
Wire Wire Line
	8850 2100 9050 2100
Text GLabel 6300 1050 1    50   Input ~ 0
LED1
Text GLabel 6850 1050 1    50   Input ~ 0
LED2
$Comp
L Device:R R18
U 1 1 5E7DE10F
P 6300 1250
F 0 "R18" H 6370 1296 50  0000 L CNN
F 1 "562R" H 6370 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6230 1250 50  0001 C CNN
F 3 "~" H 6300 1250 50  0001 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1050 6300 1100
$Comp
L Device:R R19
U 1 1 5E7EC5BC
P 6850 1250
F 0 "R19" H 6920 1296 50  0000 L CNN
F 1 "562R" H 6920 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6780 1250 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1050 6850 1100
$Comp
L Connector_Generic:Conn_01x02 J_LED1
U 1 1 5E7FA4F3
P 6550 1550
F 0 "J_LED1" H 6468 1343 50  0000 C CNN
F 1 "PinHeader1x02" V 6650 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1400 6300 1550
Wire Wire Line
	6300 1550 6350 1550
Wire Wire Line
	6350 1650 6300 1650
Wire Wire Line
	6300 1650 6300 1950
$Comp
L power:GND #PWR0116
U 1 1 5E819BB7
P 6300 1950
F 0 "#PWR0116" H 6300 1700 50  0001 C CNN
F 1 "GND" H 6305 1777 50  0000 C CNN
F 2 "" H 6300 1950 50  0001 C CNN
F 3 "" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J_LED2
U 1 1 5E81ADB6
P 7100 1550
F 0 "J_LED2" H 7018 1343 50  0000 C CNN
F 1 "PinHeader1x02" V 7200 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 1550 50  0001 C CNN
F 3 "~" H 7100 1550 50  0001 C CNN
	1    7100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1400 6850 1550
Wire Wire Line
	6850 1550 6900 1550
Wire Wire Line
	6900 1650 6850 1650
Wire Wire Line
	6850 1650 6850 1950
$Comp
L power:GND #PWR0117
U 1 1 5E81ADC4
P 6850 1950
F 0 "#PWR0117" H 6850 1700 50  0001 C CNN
F 1 "GND" H 6855 1777 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	6200 500  6200 2500
Wire Notes Line
	6200 2500 7250 2500
Wire Notes Line
	7250 2500 7250 500 
Wire Notes Line
	7250 500  6200 500 
Text Notes 6250 2450 0    50   ~ 0
LED PinHeaders
Wire Wire Line
	10050 2300 10400 2300
Wire Wire Line
	10050 2400 10400 2400
Text GLabel 10400 2300 2    50   Input ~ 0
A2
Text GLabel 10400 2400 2    50   Input ~ 0
A3
Wire Notes Line
	7400 500  8300 500 
Wire Notes Line
	7400 2500 7400 500 
Text GLabel 7800 900  0    50   Input ~ 0
A2
Text GLabel 7800 800  0    50   Input ~ 0
A3
Wire Wire Line
	7900 800  7800 800 
Wire Wire Line
	7800 900  7900 900 
Text Notes 7450 2450 0    50   ~ 0
Headers
$Comp
L Connector_Generic:Conn_01x04 J_D1
U 1 1 5E8CE291
P 8050 1350
F 0 "J_D1" H 8000 1550 50  0000 L CNN
F 1 "J_D" V 8200 1050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8050 1350 50  0001 C CNN
F 3 "~" H 8050 1350 50  0001 C CNN
	1    8050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1250 7850 1250
Wire Wire Line
	7750 1350 7850 1350
Wire Wire Line
	7850 1450 7750 1450
Wire Wire Line
	7750 1550 7850 1550
Text GLabel 8850 1700 0    50   Input ~ 0
D2
Text GLabel 8850 1800 0    50   Input ~ 0
D3
Text GLabel 8850 1900 0    50   Input ~ 0
D4
Text GLabel 8850 2000 0    50   Input ~ 0
D5
Wire Wire Line
	8850 1700 9050 1700
Wire Wire Line
	8850 1800 9050 1800
Wire Wire Line
	8850 1900 9050 1900
Wire Wire Line
	9050 2000 8850 2000
Text GLabel 7750 1250 0    50   Input ~ 0
D2
Text GLabel 7750 1350 0    50   Input ~ 0
D3
Text GLabel 7750 1450 0    50   Input ~ 0
D4
Text GLabel 7750 1550 0    50   Input ~ 0
D5
$Comp
L Connector_Generic:Conn_01x04 J_3V3
U 1 1 5E915C9F
P 7700 1950
F 0 "J_3V3" H 7650 2150 50  0000 L CNN
F 1 "3V3" V 7800 1650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7700 1950 50  0001 C CNN
F 3 "~" H 7700 1950 50  0001 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	8300 500  8300 2500
$Comp
L power:+3V3 #PWR0118
U 1 1 5E93A84F
P 7500 1800
F 0 "#PWR0118" H 7500 1650 50  0001 C CNN
F 1 "+3V3" H 7515 1973 50  0000 C CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1850 7500 1800
Wire Wire Line
	7500 1850 7500 1950
Connection ~ 7500 1850
Connection ~ 7500 1950
Wire Wire Line
	7500 1950 7500 2050
Connection ~ 7500 2050
Wire Wire Line
	7500 2050 7500 2150
Wire Wire Line
	7900 2050 7900 2150
Connection ~ 7900 2050
Wire Wire Line
	7900 1950 7900 2050
Wire Wire Line
	7900 1850 7900 1950
Connection ~ 7900 1950
$Comp
L Connector_Generic:Conn_01x04 J_GND1
U 1 1 5E972E69
P 8100 1950
F 0 "J_GND1" H 8050 2150 50  0000 L CNN
F 1 "GND" V 8250 1650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8100 1950 50  0001 C CNN
F 3 "~" H 8100 1950 50  0001 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	8300 2500 7400 2500
$Comp
L power:GND #PWR0119
U 1 1 5E9981E9
P 7900 2200
F 0 "#PWR0119" H 7900 1950 50  0001 C CNN
F 1 "GND" H 8000 2100 50  0000 C CNN
F 2 "" H 7900 2200 50  0001 C CNN
F 3 "" H 7900 2200 50  0001 C CNN
	1    7900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2150 7900 2200
Connection ~ 7900 2150
Text GLabel 2100 4950 1    50   Input ~ 0
DFlow
Connection ~ 2100 5300
Wire Wire Line
	2100 4950 2100 5300
Wire Wire Line
	2650 5300 2750 5300
Connection ~ 2350 5300
$Comp
L Device:R R9
U 1 1 5E71C48D
P 2500 5300
F 0 "R9" H 2570 5346 50  0000 L CNN
F 1 "470R" H 2570 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 2430 5300 50  0001 C CNN
F 3 "~" H 2500 5300 50  0001 C CNN
	1    2500 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J_A1
U 1 1 5E898E60
P 8100 800
F 0 "J_A1" H 8018 593 50  0000 C CNN
F 1 "J_A" V 8200 800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8100 800 50  0001 C CNN
F 3 "~" H 8100 800 50  0001 C CNN
	1    8100 800 
	1    0    0    -1  
$EndComp
$Comp
L ArduinoEnivronmentShield:MCP9808_DFN U1
U 1 1 5E6BD66B
P 1800 1650
F 0 "U1" H 2244 1696 50  0000 L CNN
F 1 "MCP9808_DFN" H 1969 1181 50  0000 L CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x3mm_P0.65mm_EP1.55x2.4mm" H 700 1150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 1550 2100 50  0001 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
$Comp
L ArduinoEnivronmentShield:MCP9808_DFN U?
U 1 1 5EBF3F9E
P 6950 4350
F 0 "U?" H 7394 4396 50  0000 L CNN
F 1 "MCP9808_DFN" H 7394 4305 50  0000 L CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 5850 3850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 6700 4800 50  0001 C CNN
	1    6950 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
