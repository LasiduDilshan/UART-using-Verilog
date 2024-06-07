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

Copy code
vlog uart_TB.v
vsim uart_TB

### 3. Examine the waveforms:

Use a waveform viewer to inspect the signals and ensure that the transmitted data matches the received data. This can be done within your simulation tool by viewing the generated waveform files.

## Full Guidance for Implementation

This section provides a detailed step-by-step guide for simulating, implementing, and testing the UART communication project using Quartus II (or Quartus Prime) and ModelSim. If you are already familiar with Verilog simulation and synthesis platforms, you may skip this section.

### Software Installation

Before you begin, ensure that you have installed the following software:

- Quartus II or Quartus Prime
- ModelSim
 
### Steps for Implementation

1. **Clone the Repository:**

First, clone this repository to your local machine and extract the contents.

Copy code
git clone https://github.com/LasiduDilshan/UART-using-Verilog.git
cd UART-using-Verilog

2. **Open the Project File:**

In the extracted folder, you will find a file named uart_tx_rx.qpf. Open this file in Quartus II or Quartus Prime.

3. **Navigate to Files:**

In Quartus, go to the "Files" section. You will see synthesis files and testbenches listed there.

4. **Synthesize the Circuit:**

You can synthesize the circuits for transmitter.v, receiver.v, baudrate.v, and uart.v. Below is the process for synthesizing the circuit for transmitter.v. You can follow similar steps for the other files.

**Synthesizing Transmitter Circuit:**

- **Add File**: Ensure transmitter.v is added to your project. If it is not, right-click in the "Files" window and add transmitter.v.
- **Analyze and Synthesize**: Right-click on transmitter.v and select "Start" > "Analysis & Synthesis". Quartus will analyze the Verilog code and synthesize the circuit.
- **Compile Design**: Once synthesis is complete, right-click the project name and select "Start Compilation". This process will compile the entire project, including the synthesized transmitter circuit.
- **Check for Errors**: After compilation, check the message window for any errors or warnings. Resolve any issues that arise during this process.

5. **Simulate with ModelSim:**

- **Launch ModelSim**: Open ModelSim and set up a new project.
- **Add Files**: Add the necessary Verilog files (transmitter.v, receiver.v, baudrate.v, uart.v, and uart_TB.v) to the ModelSim project.
- **Compile Files**: Compile all the added Verilog files to ensure there are no syntax errors.
- **Run Simulation**: Load the uart_TB testbench and run the simulation. Use the waveform viewer to inspect the signals and verify that the transmitted data matches the received data.

6. **Review Results:**

- **Waveform Analysis**: Use ModelSim's waveform viewer to analyze the simulation results. Ensure the transmitted data is correctly received without errors.
- **Adjustments**: If necessary, make adjustments to the Verilog code and re-run the synthesis and simulation steps until the desired results are achieved.

7. **Implement on FPGA:**

- Compile the uart.v file in Quartus II.
- Go to "Program Device" and select the corresponding FPGA (e.g., EP4CE22F17).
- Upload the code to the FPGA and test it using the inbuilt LEDs. Ensure the pin assignments are correct based on the chosen FPGA. (For EP4CE22F17, refer to the datasheet for pin assignments.)

### Future Work

In the future, we plan to expand this project by:

- Modifying codes and adding more testbenches.
- Implementing the UART communication on seven-segment displays.

By following these steps, you can successfully simulate, implement, and test the UART communication project using Quartus II (or Quartus Prime) and ModelSim. This guide provides a structured approach to help you understand the process of synthesizing and simulating Verilog circuits effectively.

For further clarifications, you can refer to the provided "Step by Step Implementation.docx" (https://github.com/LasiduDilshan/UART-using-Verilog/blob/main/Step%20by%20Step%20Implementation.docx).

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes. Your contributions will help enhance the functionality and reliability of the UART communication system.


## Contact

For any questions or suggestions, please contact dilshanlasindu0@gmail.com.
