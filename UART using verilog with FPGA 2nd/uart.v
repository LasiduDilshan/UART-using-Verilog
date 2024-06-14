module uart(
    input wire [7:0] data_in,   // 8-bit input data to be transmitted
    input wire Tx_en,           // Enable signal for transmitter
    input wire clear,           // Not used in this instantiation (consider removal if not required)
    input wire clk_50m,         // System clock at 50 MHz
    output wire Tx,             // Transmitted serial data output
    output wire Tx_busy,        // Signal indicating transmitter is busy
    input wire Rx,              // Received serial data input
    input wire Rx_en,           // Enable signal for receiver
    output wire ready,          // Signal to indicate data is ready to be read
    input wire ready_clr,       // Signal to clear the ready state
    output wire [7:0] data_out, // 8-bit output data received
    output [7:0] LEDR,          // LED output directly reflecting input data (for debugging or status)
    output wire Tx2,            // Duplicate of Tx for additional interfacing
    output wire [6:0] seg_hundreds,  // Seven-segment display output for hundreds place
    output wire [6:0] seg_tens,      // Seven-segment display output for tens place
    output wire [6:0] seg_units      // Seven-segment display output for units place
);

    // Assign LEDs to mirror input data for visual debugging or demonstration
    assign LEDR = data_in;

    // Duplicate the Tx signal to an additional output pin for further use
    assign Tx2 = Tx;

    // Internal connections for baud rate enable signals
    wire Txclk_en, Rxclk_en;

    // Instantiate the baud rate generator
    baudrate uart_baud(
        .clk_50m(clk_50m),
        .Rxclk_en(Rxclk_en),    // Enable signal for the receiver clock
        .Txclk_en(Txclk_en)     // Enable signal for the transmitter clock
    );

    // Instantiate the transmitter module
    transmitter uart_Tx(
        .data_in(data_in),
        .Tx_en(Tx_en),
        .clk_50m(clk_50m),
        .clken(Txclk_en),       // Use Tx clock enable for transmitter operation
        .Tx(Tx),
        .Tx_busy(Tx_busy)
    );

    // Instantiate the receiver module
    receiver uart_Rx(
        .Rx(Rx),
        .Rx_en(Rx_en),
        .ready(ready),
        .ready_clr(ready_clr),
        .clk_50m(clk_50m),
        .clken(Rxclk_en),       // Use Rx clock enable for receiver operation
        .data(data_out)
    );

    // Split the received data into hundreds, tens, and units
    wire [3:0] hundreds = data_out / 100;
    wire [3:0] tens = (data_out % 100) / 10;
    wire [3:0] units = data_out % 10;

    // Instantiate the seven-segment display decoders for hundreds, tens, and units
    seven_segment_decoder ssd_hundreds(
        .binary_in(hundreds),
        .seg(seg_hundreds)
    );

    seven_segment_decoder ssd_tens(
        .binary_in(tens),
        .seg(seg_tens)
    );

    seven_segment_decoder ssd_units(
        .binary_in(units),
        .seg(seg_units)
    );

endmodule
