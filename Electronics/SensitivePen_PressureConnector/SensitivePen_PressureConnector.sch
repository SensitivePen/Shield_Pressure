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
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6160674E
P 4700 3750
F 0 "J1" V 4572 3830 50  0000 L CNN
F 1 "Conn_01x02" V 4663 3830 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x01_P2.00mm_Vertical" H 4700 3750 50  0001 C CNN
F 3 "~" H 4700 3750 50  0001 C CNN
	1    4700 3750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 619F9066
P 3850 3750
F 0 "J2" V 3722 3830 50  0000 L CNN
F 1 "Conn_01x02" V 3813 3830 50  0000 L CNN
F 2 "SensitivePressure:PressurePrint" H 3850 3750 50  0001 C CNN
F 3 "~" H 3850 3750 50  0001 C CNN
	1    3850 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3550 3850 3450
Wire Wire Line
	3850 3450 4700 3450
Wire Wire Line
	4700 3450 4700 3550
Wire Wire Line
	3750 3550 3750 3450
Wire Wire Line
	3750 3450 3550 3450
Wire Wire Line
	3550 3450 3550 3900
Wire Wire Line
	3550 3900 4450 3900
Wire Wire Line
	4450 3900 4450 3550
Wire Wire Line
	4450 3550 4600 3550
$EndSCHEMATC
