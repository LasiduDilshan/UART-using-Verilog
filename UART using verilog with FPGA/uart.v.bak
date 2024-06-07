module uart(input wire [7:0] data_in, //input data
				input wire wr_en,
				input wire clear,
				input wire clk_50m,
				output wire Tx,
				output wire Tx_busy,
				input wire Rx,
				output wire ready,
				input wire ready_clr,
				output wire [7:0] data_out,
				output [7:0] LEDR,
				output wire Tx2//output data
				);		
assign LEDR = data_in;
assign Tx2 = Tx;
wire Txclk_en, Rxclk_en;
baudrate uart_baud(	.clk_50m(clk_50m),
							.Rxclk_en(Rxclk_en),
							.Txclk_en(Txclk_en)
							);
transmitter uart_Tx(	.data_in(data_in),
							.wr_en(wr_en),
							.clk_50m(clk_50m),
							.clken(Txclk_en), //We assign Tx clock to enable clock 
							.Tx(Tx),
							.Tx_busy(Tx_busy)
							);
receiver uart_Rx(	.Rx(Rx),
						.ready(ready),
						.ready_clr(ready_clr),
						.clk_50m(clk_50m),
						.clken(Rxclk_en), //We assign Tx clock to enable clock 
						.data(data_out)
						);

endmodule
