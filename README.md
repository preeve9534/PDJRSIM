# SIM108 - NMEA 2000 switch input module

__SIM108__ is an NMEA 2000 switch input module (switchbank) with
support for eight input channels.

Each input channel is optically isolated and reverse polarity
protected with reference to a shared common ground.
An input voltage of between 5VDC and 50VDC is interpreted as an ON
condition and nominal current draw per input channel is 8mA at 12VDC,
10mA at 24VDC.

The module connects to the host NMEA bus by either a screw terminal
block or M12 5-pin circular connector.
An internal DIL switch allows the installer to connect a 120 Ohm
resistor across the host data bus permitting the module to be installed
as either a drop node or a bus termination node.
The module is powered from the NMEA bus and has an LEN of 0.5.

Switchbank state information is transmitted over NMEA 2000 using 
[PGN 127501 Binary Status Report]().
Switchbank status is normally transmitted once every four seconds or
immediately a state change is detected on an input channel. 

The switchbank's instance number is configured during installation
using an 8-position DIL switch allowing multiple switchbank modules to
be addressed on a single NMEA bus.

## Hardware design

[__SIM108__](./SIM108.sch.pdf) is designed around a
[Teensy 3.2 microcontroller](https://www.pjrc.com/store/teensy32.html).
The Teensy 3.2 supports CAN and provides sufficient GPIO connections
that port expansion is not required.

A 1A DC-DC power supply connects to the CAN power bus and provides 5VDC
output for all electronic components.

NMEA/CAN interfacing is provided by the industry standard
[MCP2551 High-speed CAN Transceiver](http://ww1.microchip.com/downloads/en/devicedoc/20001667g.pdf).

Each switch input drives a simple constant current source that operates
the LED side of an opto-isolator whose output connects directly to a GPIO
input on the microcontroller.

The state of switchbank channels is reported visually by eight LEDs
which are driven by a
[74HC595 shift register](https://www.ti.com/lit/ds/symlink/sn74hc595.pdf?ts=1661075134940&ref_url=https%253A%252F%252Fwww.google.com%252F)
that is provisioned by the microcontroller.

## PCB

The
[module PCB](./SIM108.brd.pdf)
is a 75mm x 75mm square. 

### Electronic components

| Component   | Description                                     | Further information
|------------ |------------------------------------------------ |--------------------- |
| C1          | 1000uF aluminium capacitor                      | [711-1148](https://uk.rs-online.com/web/p/aluminium-capacitors/7111148)
| C2,C3       | 100nF ceramic capacitor]                        | [538-1427](https://uk.rs-online.com/web/p/mlccs-multilayer-ceramic-capacitors/5381427)
| D1,D2,D3,D4 | 2V 1.8mm rectangular LED                        | [229-2425](https://uk.rs-online.com/web/p/leds/2292425)
| D5          | 2V 3.0mm circular LED                           | [228-5916](https://uk.rs-online.com/web/p/leds/2285916)
| F1          | ECE BU135 1.35A polymer fuse                    | [ECE](https://www.ece.com.tw/images/cgcustom/file020170930043926.pdf)
| J1,J2       | Phoenix Contact FK-MPT terminal block 1x8 3.5mm | [229-2425](https://uk.rs-online.com/web/p/pcb-terminal-blocks/8020169)
| J3          | Phoenix Contact MPT terminal block 1x5 2.54"    | [220-4298](https://uk.rs-online.com/web/p/pcb-terminal-blocks/2204298)
| R1,R10-R13  | 390R 0.25W resistor                             | [707-7634](https://uk.rs-online.com/web/p/through-hole-resistors/7077634)
| R3-R9       | 2K2 0.25W resistor                              | [707-7690](https://uk.rs-online.com/web/p/through-hole-resistors/7077690)
| R14         | 120R 0.25W resistor                             | [707-7599](https://uk.rs-online.com/web/p/through-hole-resistors/7077599)
| SW1         | 6mm momentary push button                       | Sourced from eBay
| SW2         | 2-way SPST DIP switch                           | [177-4261](https://uk.rs-online.com/web/p/dip-sip-switches/1774261)
| SW3         | 8-way SPST DIP switch                           | [756-1347](https://uk.rs-online.com/web/p/dip-sip-switches/7561347)
| U1          | PJRC Teensy 3.2 MCU                             | [PJRC](https://www.pjrc.com/store/teensy32.html)
| U2          | TracoPower TMR-1-1211 DC-DC converter           | [781-3190](https://uk.rs-online.com/web/p/dc-dc-converters/7813190)
| U3          | MCP2551-I/P CAN transceiver                     | [040-2920](https://uk.rs-online.com/web/p/can-interface-ics/0402920)
| SENSORS     | LM335Z - if you choose to make your own sensors | [159-4685](https://uk.rs-online.com/web/p/temperature-humidity-sensor-ics/1594685)

### Suggested hardware

| Component   | Description                                     | Further information
|------------ |------------------------------------------------ |--------------------- |
| ENCLOSURE   | Plastic, general purpose, flange mount box      | [919-0391](https://uk.rs-online.com/web/p/general-purpose-enclosures/9190391)
| J4          | M12 5-pin male NMEA bus connector               | [877-1154](https://uk.rs-online.com/web/p/industrial-circular-connectors/8771154)
| CLIP        | 3mm LED panel clip                              | Sourced from eBay

### Assembly

Components must be placed and soldered with care taken to ensure
correct orientation and polarity.

The host NMEA bus can be wired directly to J1 or (and preferably)
ENCLOSURE can be drilled to accommodate J3 and J3's flying leads
connected to J1.

D9 through D17 can be soldered with long leads and holes drilled in
ENCLOSURE to expose the LED or (and preferably) preferably, they can
each be mounted with CLIP to ENCLOSURE and trailing leads used to
connect back to the PCB mounting location.
The latter approach means exact positioning of the holes which
expose the PCB mounted LEDs is not required except, of course, that
chassis mounted LEDs must not foul a PCB component or cable path.

## Module configuration

1. It will almost always be simpler to configure the module on the bench
   and then install it in its normal operating location.

2. Begin configuration by exposing the module PCB.

3. Configure bus termination.
   Set SW2[T] to ON(1) if the module will be connected as a terminating node
   at the end of its host NMEA bus backbone; or
   set SW2[T] to OFF(0) if the module will be connected to its host NMEA bus
   via a T-connector and drop cable.

4. Configure bus ground.
   Set SW2[G] to ON(1) to connect the NMEA bus shield to the module GND.
   Set SW2[G] to OFF(0) to isolate the NMEA bus shield from the module GND.
   Usually it is appropriate to set SW2[G] to OFF(0).

5. Configure switchbank instance address.
   Set SW1[1..8] to a binary representation of your chosen, unique, instance
   address in the range 0 through 252.
   Setting an address outside this range will disable the module.
   SW1[1] sets address bit 0; SW1[8] sets address bit 7.
   
### Connecting switch inputs

1. Connect a reference switch input ground to J2[9].

2. Connect up to a maximum of eight switch inputs to J2[1..8].
   Each input must supply an ON voltage in the range 5VDC through 50VDC
   relative to J2[9].
   Each input must be able to source around 10mA necessary to drive the
   opto-isolation input circuitry.
