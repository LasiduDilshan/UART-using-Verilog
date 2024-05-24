// Testbench Module: uart_TB
// Description: This testbench is designed to verify the functionality of a UART module 
// by implementing a serial loopback. It transmits data bytes and checks if the received 
// data matches the transmitted data. This ensures both the transmitter and receiver 
// components of the UART are functioning correctly.

//`include "uart.v" // Include the UART module definition

module uart_TB();

    // Testbench control signals
    reg [7:0] data = 0;      // Data to be transmitted
    reg clk = 0;             // Test clock signal
    reg enable = 0;          // Enable signal for transmitter
    reg Rx_en = 0;           // Enable signal for receiver

    // UART module outputs to be monitored
    wire Tx_busy;            // Indicates if the transmitter is busy
    wire ready;              // Indicates if the receiver has data ready
    wire [7:0] Rx_data;      // Holds the data received from the UART

    // Loopback wire for connecting Tx and Rx internally
    wire loopback;
    reg ready_clr = 0;       // Signal to clear the 'ready' flag in the receiver

    // Instantiation of the UART module
    uart test_uart(
        .data_in(data),
        .Tx_en(enable),
        .clk_50m(clk),
        .Tx(loopback),
        .Tx_busy(Tx_busy),
        .Rx(loopback),
        .ready(ready),
        .ready_clr(ready_clr),
        .Rx_en(Rx_en),       // Connect the Rx_en signal
        .data_out(Rx_data)
    );

    // Initial block to setup and start the test
    initial begin
        $dumpfile("uart.vcd");  // Set up the VCD file for waveform analysis
        $dumpvars(0, uart_TB);  // Record simulation data for all variables in the testbench
        
        // Initial state of control signals
        enable <= 1'b1;  // Initially enable the transmitter
        Rx_en <= 1'b1;   // Initially enable the receiver
        #2 enable <= 1'b0;  // Disable after a short delay to simulate a transmission trigger
        #2 Rx_en <= 1'b0;   // Disable after a short delay
    end

    // Clock generation
    always begin
        #1 clk = ~clk;  // Toggle the clock every time unit to simulate a 50MHz clock
    end

    // Check the received data when it is ready
    always @(posedge ready) begin
        #2 ready_clr <= 1;  // Clear the ready signal after a delay to process the received data
        #2 ready_clr <= 0;  // Reset the ready clear signal
        if (Rx_data != data) begin
            // If the received data does not match the sent data, print an error message
            $display("FAIL: rx data %x does not match tx %x", Rx_data, data);
            //$finish;  // End the simulation
        end else begin
            // Check for specific data value to determine end of the test
            if (Rx_data == 8'h2) begin  // Arbitrary end condition based on expected test data sequence
                $display("SUCCESS: all bytes verified");
                //$finish;  // End the simulation on success
            end
            // Prepare for the next test iteration
            data <= data + 1'b1;  // Increment the data to send
            enable <= 1'b1;       // Re-enable the transmitter
            Rx_en <= 1'b1;        // Re-enable the receiver
            #2 enable <= 1'b0;    // Toggle enable signals to mimic behavior
            #2 Rx_en <= 1'b0;
        end
    end
endmodule
