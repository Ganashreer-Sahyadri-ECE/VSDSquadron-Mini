# VSDSquadron-Mini
# ABOUT ME
## Name: GANASHREE R
## College Name: Sahyadri College of Engineering and Management,Adyar,Mangaluru.
## Email ID:rameshganashree@gmail.com
Linkedln: Ganashree Ramesh

# Task 1: Verilog Code Deployment on VSDSquadron FPGA Mini Board
### 🎯 Objective
This task focuses on comprehending and implementing Verilog code onto the VSDSquadron FPGA Mini Board. Key activities involve reviewing Verilog modules, defining pin constraints via a PCF (Physical Constraint File), and uploading the design to the board as per the datasheet specifications.

### 🔹 Step 1: Verilog Code Analysis
The given Verilog module utilizes an internal oscillator (SB_HFOSC) to drive logic that controls an onboard RGB LED. A frequency divider (counter) is included to make the clock usable for human-observable LED blinking.

SB_HFOSC: Generates a clock internally without needing an external signal.

Counter: 28-bit register counts on each clock tick, with one bit (bit 5) exposed through testwire for signal probing.

RGB Driver (SB_RGBA_DRV): Drives the onboard LED. Blue is active; red and green are inactive.
This setup offers a minimal design for onboard LED control and timing verification using the FPGA’s internal resources.

### 🔹 Step 2: Creating a Pin Constraint File
Mapped Verilog signals to the FPGA hardware pins as follows:

led_red → Pin 39

led_blue → Pin 40

led_green → Pin 41

hw_clk → Pin 20

testwire → Pin 17
This ensures proper signal-routing between the FPGA logic and the physical I/O.

### 🔹 Step 3: Deployment to FPGA
After referencing the datasheet and finalizing PCF mappings, the board was connected via USB-C. Using terminal commands:

make clean was used to clear prior builds

make build compiled the Verilog source

sudo make flash uploaded the design
The onboard LED behavior confirmed a successful upload.

### 🔹 Step 4: Final Steps
A video was captured demonstrating the blinking LED behavior to verify the system’s functioning.

[Working vedio.mp4](./Task%201/Working%20vedio.mp4)

# Task 2: UART Loopback Implementation
🎯 Objective
Develop a simple UART echo mechanism to test UART transmission and reception by looping back the sent data.

### 🔹 Step 1: Code Review
The project contains three modules—uart_rx, uart_tx, and uart_loopback_top.

uart_rx: Receives serial input from the PC and converts it into 8-bit data.

uart_tx: Sends the same data back.

uart_loopback_top: Connects both for an echo test.
This setup allows basic testing of UART in 8N1 format (8 data bits, no parity, 1 stop bit).

### 🔹 Step 2: Documentation
Created a block diagram to illustrate the module interactions.

### 🔹 Step 3: Board Programming
Files were compiled and flashed using:

bash
Copy
Edit
cd VSDSquadron-mini/<project-folder>
make build
sudo make flash
### 🔹 Step 4: Testing and Output
Tested the design using the Docklight terminal. Sent characters were echoed back successfully.

# Task 3: UART Transmitter Module
🎯 Objective
Build a Verilog-based module to transmit serial data from FPGA to external devices like a computer.

### 🔹 Step 1: Review
The code continuously sends data (e.g., character 'd') through a UART transmitter module.

### 🔹 Step 2: System Design
Included:

Block diagram

Circuit diagram

### 🔹 Step 3: Upload to FPGA
Navigated to the transmission folder, then ran:

bash
Copy
Edit
make build
sudo make flash
### 🔹 Step 4: Testing
Opened PuTTY to verify that characters were continuously transmitted. The output confirmed regular transmission.

### 🔹 Step 5: Documentation
Included all diagrams and a video showing successful data output.

# Task 4: UART-Based Sensor Communication
### 🎯 Goal
Transmit real-time data from a connected sensor via UART to a PC for monitoring.

### 🔹 Working

Sensor input is read by the FPGA.

Data is prepared in UART format.

UART TX module sends it to an external device.

The system consists of:

Sensor interface module

UART transmission logic

Baud rate control
Real-time data is visible on PuTTY or Docklight.

### 🔹 Applications

Environmental data collection

Industrial monitoring

IoT sensor gateways
Block diagrams, circuit visuals, and output video were included for verification.

# Task 5: UART-Driven Display System (Theme 1)
### 🎯 Goal
Design a real-time system that displays incoming serial data on a 7-segment or LCD display using an FPGA.

### 🔹 Core Components

UART receiver to capture serial input

Decoder to convert characters to display format

Display controller for 7-segment or LCD updates

### Workflow:

UART module identifies start bits and receives characters.

Simulation tests input using '0'–'9'.

Received data is decoded for display.

Display driver updates visuals in real time.

System integrated and deployed to FPGA.

Communication verified using Docklight.

# Task 6: UART-Controlled Actuation System (Theme 2)
### 🎯 Objective
Create a UART-based command interface to control actuators like LEDs or motors via the FPGA.

### 🔹 System Components

UART receiver

Command parser

Output control logic

Connected peripherals (e.g., LEDs)

### Workflow:

FPGA tested with LED blink as baseline.

UART receiver developed and tested via terminal.

Parsing logic added to identify strings like "LED ON".

Commands translated into output actions.

Commands from Docklight directly triggered GPIO responses like turning LEDs on/off.


### Task 6: Final Output — Display Control Using UART
🎯 Overview
This implementation receives UART input and reflects it on a 7-segment display.

### 🔹 Function

UART receives serial data from Docklight.

Display value increases with each input.

Output is shown live on a 7-segment display.

Components include top.v, uart_rx, seven_seg_decoder, PCF file, Makefile, and demo video.

















