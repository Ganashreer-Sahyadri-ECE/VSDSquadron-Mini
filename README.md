# VSDSquadron-Mini
# ABOUT ME
## Name: GANASHREE R
## College Name: Sahyadri College of Engineering and Management,Adyar,Mangaluru.
## Email ID:rameshganashree@gmail.com
Linkedln: Ganashree Ramesh
# Task 1: Understanding and Implementing the Verilog Code on FM

### 🎯 Objective

Implement Verilog code on the VSDSquadron FPGA Mini Board, including code review, PCF file creation, and hardware integration.

### Step 1: Understanding the Verilog Code
This task involves analyzing the Verilog design, mapping pins, and flashing the code to the VSDSquadron FPGA Mini board.

### Verilog Code Summary:

Uses internal oscillator (SB_HFOSC).

Counter drives RGB LED.

testwire used for debugging.

Internal Module Breakdown:

SB_HFOSC: Generates internal clock.

28-bit counter: Slows down frequency.

SB_RGBA_DRV: Drives RGB LED (only blue is on).

### Step 2: Creating the PCF File

Pin Mapping:

led_red: Pin 39

led_blue: Pin 40

led_green: Pin 41

hw_clk: Pin 20

testwire: Pin 17

### Step 3: Hardware Integration

Read the datasheet.

Mapped signals to pins in PCF file.

Used USB-C to connect board.

Ran make clean, make build, and sudo make flash.

Verified LED behavior.

### Step 4: Final Documentation

[Working vedio.mp4](./Task%201/Working%20vedio.mp4)

LED blinks as expected.

# Task 2: UART Loopback Mechanism

### Objective

Implement a UART loopback to test UART functionality.

### Step 1: Code Review

Modules: uart_rx, uart_tx, uart_loopback_top

Function: rx_dout is fed into tx module to echo back.

### Step 2: Block Diagram

Block diagram

### Step 3: Implementation

make build

sudo make flash

Used Docklight for testing.

### Step 4: Testing & Documentation

Docklight terminal screenshot

Video

# Task 3: UART Transmitter Module

Objective

Transmit data serially using UART from FPGA to external device.

### Step 1: Code Review

Verilog code

### Step 2: Design Docs

Block diagram

Circuit diagram

### Step 3: Implementation

Commands: make build, sudo make flash

Folder: uart_transmission

### Step 4: Testing

Used PuTTY terminal.

Verified repeated transmission of character 'd'.

### Step 5: Documentation

Video

Output

# Task 4: UART-Based Sensor Data Transmission

## Objective

Transmit real-time sensor data via UART.

### Step 1: Principle

Read sensor data via GPIO.

Use UART TX to send data serially.

### Step 2: Verilog Implementation

Sensor interface + UART TX + Baud generator.

### Step 3: Applications

Real-time monitoring.

Industrial & IoT.

### Step 4: Output

Putty screenshot

Video

# Task 5: UART-Controlled Display and Actuator Systems

## Theme 1: UART-Controlled Display System

Objective

Capture UART data and show on display (7-segment or LCD).

Components

UART RX

ASCII Decoder

Display Driver

Workflow

Create UART RX logic.

Simulate input ('0'-'9').

Decode ASCII.

Drive display.

Combine modules & test with Docklight.

## Theme 2: UART-Controlled Actuator System

Objective

Control actuators (LED, motor) via UART commands.

Steps

UART RX receives input.

Command decoder triggers GPIO.

Actuators respond to command.

Applications

Home automation

Robotics

Embedded control


*
