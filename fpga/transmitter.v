// Module: transmitter
// Description: This module simulates the behavior of a UART transmitter.
// It takes an 8-bit data input and transmits it serially based on clock and enable signals.
// The transmission process involves four states: IDLE, START, DATA, and STOP.

module transmitter(
    input wire [7:0] data_in,  // 8-bit input data to be transmitted
    input wire Tx_en,          // Transmit enable signal
    input wire clk_50m,        // 50 MHz clock signal
    input wire clken,          // Clock enable for controlling transmission timing
    output reg Tx,             // Serial output transmitting data bit-by-bit
    output wire Tx_busy        // Signal indicating the transmitter is busy
);

    // Initial condition: Set the transmission line to high (idle state)
    initial begin
        Tx = 1'b1; 
    end

    // State definitions using 2-bit encoding for the finite state machine (FSM)
    parameter TX_STATE_IDLE  = 2'b00;  // IDLE state: waiting for enable signal
    parameter TX_STATE_START = 2'b01;  // START state: start bit transmission
    parameter TX_STATE_DATA  = 2'b10;  // DATA state: data bits transmission
    parameter TX_STATE_STOP  = 2'b11;  // STOP state: stop bit transmission to complete the cycle

    // Internal registers
    reg [7:0] data = 8'h00;          // Buffer to hold data being transmitted
    reg [2:0] bit_pos = 3'h0;        // Bit position counter for data transmission
    reg [1:0] state = TX_STATE_IDLE; // Current state of the FSM

    // FSM for controlling transmission based on state and clock signals
    always @(posedge clk_50m) begin
        case (state)
            TX_STATE_IDLE: begin  // Wait for enable signal to start transmission
                if (~Tx_en) begin
                    state <= TX_STATE_START;
                    data <= data_in;   // Load data from input
                    bit_pos <= 3'h0;   // Reset bit position
                end
            end
            TX_STATE_START: begin  // Transmit start bit (logic low)
                if (clken) begin
                    Tx <= 1'b0;
                    state <= TX_STATE_DATA;
                end
            end
            TX_STATE_DATA: begin  // Transmit data bits
                if (clken) begin
                    Tx <= data[bit_pos];
                    bit_pos <= bit_pos + 1;
                    if (bit_pos == 3'h7)  // Check if all bits are transmitted
                        state <= TX_STATE_STOP;
                end
            end
            TX_STATE_STOP: begin  // Transmit stop bit (logic high) and return to idle
                if (clken) begin
                    Tx <= 1'b1;
                    state <= TX_STATE_IDLE;
                end
            end
            default: begin  // Default case to handle unexpected states
                Tx <= 1'b1;  // Ensure line is idle
                state <= TX_STATE_IDLE;
            end
        endcase
    end

    // Output busy signal when the transmitter is not in IDLE state
    assign Tx_busy = (state != TX_STATE_IDLE);

endmodule
