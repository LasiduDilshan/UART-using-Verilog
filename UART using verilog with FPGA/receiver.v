// Module: receiver
// Description: Implements a UART receiver that uses an FSM to handle data reception.
// It supports oversampling and handles synchronization issues by checking the received data
// across multiple clock cycles. The receiver processes data only when enabled by Rx_en.

module receiver (
    input wire Rx,             // Serial input receiving data
    input wire Rx_en,          // Receiver enable signal
    output reg ready,          // Signal to indicate data is ready to be read
    input wire ready_clr,      // Signal to clear the ready state
    input wire clk_50m,        // System clock
    input wire clken,          // Clock enable for controlling reception timing
    output reg [7:0] data      // Output data register
);

    // Initialize ready and data signals
    initial begin
        ready = 1'b0;          // Set ready to 0 initially
        data = 8'b0;           // Clear data initially
    end

    // Define states for the reception process
    parameter RX_STATE_START = 2'b00;  // Waiting for start bit
    parameter RX_STATE_DATA  = 2'b01;  // Receiving data bits
    parameter RX_STATE_STOP  = 2'b10;  // Checking stop bit

    // Internal state registers
    reg [1:0] state = RX_STATE_START;  // Initial state
    reg [3:0] sample = 0;              // Sample counter
    reg [3:0] bit_pos = 0;             // Position in the data byte being received
    reg [7:0] scratch = 8'b0;          // Temporary storage for the incoming data

    // Process incoming data on the positive edge of the system clock
    always @(posedge clk_50m) begin
        if (ready_clr)
            ready <= 1'b0;  // Reset ready signal when cleared

        if (clken && ~Rx_en) begin  // Only process data if clock is enabled and Rx is not enabled
            case (state)
                RX_STATE_START: begin  // Handle the start bit
                    if (!Rx || sample != 0)  // Check for the start condition
                        sample <= sample + 1;  // Increment sample counter
                    if (sample == 15) begin  // If a full bit has been sampled
                        state <= RX_STATE_DATA;  // Move to data receiving state
                        bit_pos <= 0;  // Reset bit position
                        sample <= 0;   // Reset sample counter
                        scratch <= 0;  // Clear scratch register
                    end
                end
                RX_STATE_DATA: begin  // Handle data reception
                    sample <= sample + 1;  // Increment sample counter
                    if (sample == 8) begin  // Midpoint of data bit sampling
                        scratch[bit_pos[2:0]] <= Rx;  // Store bit in scratch register
                        bit_pos <= bit_pos + 1;  // Move to the next bit
                    end
                    if (bit_pos == 8 && sample == 15)  // If last bit sampled
                        state <= RX_STATE_STOP;  // Move to stop bit verification
                end
                RX_STATE_STOP: begin  // Handle stop bit
                    if (sample == 15 || (sample >= 8 && !Rx)) begin  // Verify stop bit condition
                        state <= RX_STATE_START;  // Reset to start for new transmission
                        data <= scratch;  // Transfer received data
                        ready <= 1'b1;  // Indicate that data is ready
                        sample <= 0;  // Reset sample counter
                    end else
                        sample <= sample + 1;  // Continue sampling stop bit
                end
                default: begin  // Default case to handle unexpected states
                    state <= RX_STATE_START;  // Reset to initial state
                end
            endcase
        end
    end

endmodule
