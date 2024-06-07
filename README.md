# UART Communication in Verilog

This repository contains Verilog code for implementing UART (Universal Asynchronous Receiver/Transmitter) communication. The project includes modules for the transmitter, receiver, baud rate generator, and a top-level UART module. Additionally, a testbench is provided to verify the functionality of the UART communication system.

## Overview

UART is a serial communication protocol that allows the transmission and reception of data between devices over a serial line. It is widely used in embedded systems and communication between microcontrollers and peripherals. This project simulates a UART communication system with the following components:

- **Transmitter**: Sends 8-bit data serially by converting parallel data into a serial bit stream.
- **Receiver**: Receives 8-bit data serially and converts the serial bit stream back into parallel data.
- **Baudrate Generator**: Generates the necessary clock signals for the transmitter and receiver to ensure proper timing and synchronization.
- **UART Module**: Integrates the transmitter, receiver, and baudrate generator into a single module for easy use.
- **Testbench**: Verifies the functionality of the UART system by simulating the transmission and reception of data.

## Files

### 1. transmitter.v
This module simulates the behavior of a UART transmitter. It takes an 8-bit data input and transmits it serially based on clock and enable signals. The transmission process involves four states:

- **IDLE**: The transmitter is idle and waiting for data to be transmitted.
- **START**: The transmitter sends a start bit to signal the beginning of a data frame.
- **DATA**: The transmitter sends the 8-bit data, one bit at a time.
- **STOP**: The transmitter sends a stop bit to signal the end of the data frame.

### 2. receiver.v

This module implements a UART receiver using a finite state machine (FSM). It supports oversampling and handles synchronization issues by checking the received data across multiple clock cycles. The receiver processes data only when enabled by Rx_en. The reception process involves the following states:

- **START**: Waiting for the start bit.
- **DATA**: Receiving the 8-bit data, one bit at a time.
- **STOP**: Waiting for the stop bit to complete the data frame.

### Upsampling Mechanism

The receiver uses an upsampling mechanism to improve the accuracy and reliability of data reception. The baudrate generator oversamples the incoming data by 16 times the baud rate. This means that each bit period is sampled 16 times, allowing the receiver to accurately determine the correct bit value even in the presence of noise or timing variations. The oversampling process involves:

1. **Sampling**: The incoming signal is sampled 16 times per bit period.
2. **Majority Voting**: The receiver checks multiple samples within each bit period to determine the most likely value of the bit. This helps in filtering out noise and ensuring correct data reception.

### 3. baudrate.v

This module divides a 50 MHz input clock to generate enable signals for both transmitting (Tx) and receiving (Rx) that operate at a baud rate of 115200. The Rx clock is oversampled by 16x to increase the reliability of data reception. The baudrate generator ensures that both the transmitter and receiver operate at the correct timing intervals.

### 4. uart.v

This top-level module integrates the components of a UART interface, including a baud rate generator, a transmitter, and a receiver. It handles both transmitting and receiving data at a specified baud rate, controlled by enabling signals. The UART module provides a simple interface for sending and receiving serial data.

### 5. uart_TB.v (Testbench)

This testbench verifies the functionality of the UART module by implementing a serial loopback. It transmits data bytes and checks if the received data matches the transmitted data, ensuring both the transmitter and receiver components of the UART are functioning correctly. The testbench includes:

- Initializing the UART module and setting up the test environment.
- Sending data through the transmitter.
- Receiving data through the receiver.
- Comparing the received data with the transmitted data to ensure correctness.

## How to Use

### 1. Clone the repository:

To get started, clone the repository to your local machine using the following command:

bash
Copy code
git clone https://github.com/LasiduDilshan/UART-using-Verilog.git
cd uart-verilog

### 2. Simulate the testbench:

Use a Verilog simulation tool like ModelSim or VCS to run the uart_TB.v testbench and verify the UART functionality. The following commands are used to compile and simulate the testbench:

bash
Copy code
vlog uart_TB.v
vsim uart_TB

### 3. Examine the waveforms:

Use a waveform viewer to inspect the signals and ensure that the transmitted data matches the received data. This can be done within your simulation tool by viewing the generated waveform files.

## Full guidance for implementation

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes. Your contributions will help enhance the functionality and reliability of the UART communication system.


## Contact

For any questions or suggestions, please contact dilshanlasindu0@gmail.com.
