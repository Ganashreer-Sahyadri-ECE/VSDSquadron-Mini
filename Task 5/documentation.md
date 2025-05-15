# Project Theme 1: UART-Controlled Display System Using FPGA

## Overview

This project revolves around designing a data reception and visualization setup using the VSDSquadron FPGA Mini board. It focuses on receiving data via UART communication and instantly displaying it on a 7-segment display or an LCD. The key aim is to ensure reliable serial data transfer, accurate decoding, and real-time visual feedback.

## Goals

Develop UART receiver logic (Rx-only) in Verilog

Convert incoming ASCII/hex data into displayable numbers

Drive a 7-segment display or LCD using the decoded data

Build a terminal interface on a PC

Ensure consistent, real-time updates to the display

## Hardware & Software Requirements

Hardware: VSDSquadron FPGA Mini, 7-Segment or LCD display

Software: Ubuntu OS, Docklight (or similar terminal tool)

## System Architecture

UART receiver takes input data over serial

Data is validated and temporarily stored

ASCII data is decoded into numeric values

Decoded values are sent to the display controller

Output is rendered instantly on the visual display

## Functional Workflow

The system begins with defining UART parameters such as baud rate and data format (8 data bits, no parity, 1 stop bit - 8N1). The FPGA board is set up with separate modules for UART communication, data conversion, and output control.

Initially, the UART receiver is coded to read and convert serial signals into parallel data. Timing accuracy is crucial here, especially while identifying the start bit and sampling the data bits. The design is simulated and tested with ASCII characters (e.g., '0' to '9') to ensure accurate reception.

Next, the ASCII codes are translated into either binary values or direct segment control patterns. This is followed by display logic which updates the output screen in real time based on the received input.

The final integration involves loading the design into the FPGA, using a serial-to-USB module to send data from a PC terminal. The expected result is that each character sent over UART will light up the appropriate segment or character on the display.

# Project Theme 2: UART-Based Actuator Control System

## Overview

This project is focused on creating a control system using FPGA and UART communication to manage actuators like LEDs, motors, or relays. The FPGA receives command strings over UART, decodes them, and triggers specific actions, making it ideal for embedded automation applications.

## Goals

Design and implement UART receiver module

Decode command strings such as "LED ON" or "MOTOR OFF"

Build a finite state machine (FSM) to execute control signals

Interface various actuators (LEDs, motors, relays)

Achieve interactive control via PC terminal

## Hardware & Software Requirements

Hardware: VSDSquadron FPGA Mini, LEDs, Relay, DC Motor, Motor Driver, Breadboard, Jumper Wires

Software: Ubuntu OS, Docklight (or similar serial terminal tool)

## System Architecture

UART input is received and converted into parallel form

A command buffer accumulates input strings

A parser or FSM detects valid commands

Valid commands are mapped to control signals

GPIO pins are activated to control the connected actuators

## Functional Workflow

The process starts with testing the board and verifying pin mappings using a basic LED blink program. After confirming hardware integrity, the UART receiver is developed. This component is essential for detecting start bits and capturing 8-bit data values correctly, adhering to baud rate timing.

Once reception is stable, command parsing logic is implemented. A small buffer or simple FSM is used to check incoming strings for specific instructions. Upon recognizing a command like "LED ON", the FSM activates corresponding GPIO outputs.

The final step involves hardware testing. The FPGA board receives command strings through a USB-to-serial module, and depending on the decoded instruction, the appropriate actuator is triggered in real time. This system demonstrates the ability to create responsive hardware interfaces driven by UART-controlled logic.

## Conclusion

Both these projects utilize UART communication and FPGA design fundamentals to build interactive, real-time systems. While the first theme is oriented toward data visualization through displays, the second targets control of hardware devices using command inputs. These projects provide foundational skills applicable in industrial control, embedded systems, and IoT applications.
