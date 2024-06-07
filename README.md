# UART Communication in Verilog
This repository contains Verilog code for implementing UART (Universal Asynchronous Receiver/Transmitter) communication. The project includes modules for the transmitter, receiver, baud rate generator, and a top-level UART module. Additionally, a testbench is provided to verify the functionality of the UART communication.

## Overview
UART is a serial communication protocol that allows the transmission and reception of data between devices. This project simulates a UART communication system with the following components:

-**Transmitter**: Sends 8-bit data serially.
-**Receiver**: Receives 8-bit data serially.
-**Baudrate Generator**: Generates the necessary clock signals for the transmitter and receiver.
-**UART Module**: Integrates the transmitter, receiver, and baudrate generator.
-**Testbench**: Verifies the functionality of the UART system.
Files
### 1. transmitter.v
This module simulates the behavior of a UART transmitter. It takes an 8-bit data input and transmits it serially based on clock and enable signals. The transmission process involves four states: IDLE, START, DATA, and STOP.

### 2. receiver.v
This module implements a UART receiver using a finite state machine (FSM). It supports oversampling and handles synchronization issues by checking the received data across multiple clock cycles. The receiver processes data only when enabled by Rx_en.

### 3. baudrate.v
This module divides a 50 MHz input clock to generate enable signals for both transmitting (Tx) and receiving (Rx) that operate at a baud rate of 115200. The Rx clock is oversampled by 16x to increase the reliability of data reception.

### 4. uart.v
This top-level module integrates the components of a UART interface, including a baud rate generator, a transmitter, and a receiver. It handles both transmitting and receiving data at a specified baud rate, controlled by enabling signals.

### 5. uart_TB.v (Testbench)
This testbench verifies the functionality of the UART module by implementing a serial loopback. It transmits data bytes and checks if the received data matches the transmitted data, ensuring both the transmitter and receiver components of the UART are functioning correctly.

## How to Use
### 1.Clone the repository:

bash
Copy code
git clone https://github.com/your-username/uart-verilog.git
cd uart-verilog
###2. Simulate the testbench:
Use a Verilog simulation tool like ModelSim or VCS to run the uart_TB.v testbench and verify the UART functionality.

bash
Copy code
vlog uart_TB.v
vsim uart_TB
### 3.Examine the waveforms:
Use a waveform viewer to inspect the signals and ensure that the transmitted data matches the received data.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes.

## Contact
For any questions or suggestions, please contact your-email@example.com.

