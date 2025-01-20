# ADSB Track - aircraft localization in passive radar configuration

University project trilaterating ADS-B signals in the aim to locate aircraft without their GPS receives working.
Project involves receiving plane ADS-B signals from antenna, demodulating, sampling with high speed ADC and processing using FPGA.
FPGA sends data to microcontroller that uploads high resolution timestamp and signal packet to PHP server doing all the math work.

This project includes:
* PCB board (shield) for ADC sampling and storing data in Magnetic RAM memory;
* VHDL code for Cyclone 2 EP2C5T144C8 FPGA development board;
* Computer aplication code to receive data, written in C#.

## Features
* Receives 20MHz signal;
* Filters down to 2MHz;
* Samples signal at 50MHz frequency;
* Stores read signal in Magnetic RAM memory;
* Using convolution detects ADSB signal in real time;
* Communicates with ADC using SPI and parralel interface;
* Sends data to PC over UART.

## PCB board
Some images of high speed PCB:

![PCB 3D render image](/foto/PCB_1.png)

![PCB layout image](/foto/PCB_2.png)

## Setup

### Python research files
Use requirements file found in `/Python/requirements.txt` to install needed dependencies.
Use command line to execute command with Python 3.12.2 installed:

```bash
pip install -r /Python/requirements.txt
```

MOst python research files written in Jupyter Notebook.
To get it working it is advisable to use "Visual Studio Code" with following plugins installed:
* For python support:

  ![Python extensions](/foto/Python_setup_1.png)

* For Jupyter Notebook support:

  ![Jupyter Notebook extensions](/foto/Jupyter_setup_1.png)

### C# application
Developed using "Microsoft Visual Studio 2022" with .NET Framework 4.7.2.
Files found under `PC_Code`directory:
* `PCKodas.sln` - Visual Studio project file;
* `PCKodas/` - Project program and design files;
* `PCKodas/bin/Debug/` - Where compiled executable is located. Also in this directory captured data is saved.
