# ADSB signal processing using FPGA

University project involving receiving plane ADSB signals from antenna, demodulating, sampling with high speed ADC and processing using FPGA.

This project includes:
* PCB board (shield) for ADC sampling and storing data in Magnetic RAM memory
* VHDL code for Cyclone 2 EP2C5T144C8 FPGA development board
* Computer aplication code to receive data, written in C#

##PCB board
Some images of high speed PCB:

![Foto1](/foto/Foto1.png)

![Foto1](/foto/Foto2.png)

##Features
* Receives 20MHz signal
* Filters down to 2MHz
* Samples signal at 50MHz frequency
* Stores read signal in Magnetic RAM memory
* Using convolution detects ADSB signal in real time
* Communicates with ADC using SPI and parralel interface
* Sends data to PC over UART