//This is a simple testbench for UART Tx and Rx.  
//The Tx and Rx pins have been connected together creating a serial loopback.
//We check if we receive what we have transmitted by sending incremeting data bytes.

//It sends out byte 0xAB over the transmitter
//It then exercises the receive by receiving byte 0x3F
//`include "uart.v"

module uart_TB();

reg [7:0] data = 0;
reg clk = 0;
reg enable = 0;

wire Tx_busy;
wire rdy;
wire [7:0] Rx_data;

wire loopback;
reg ready_clr = 0;

uart test_uart(.data_in(data),
					.wr_en(enable),
					.clk_50m(clk),
					.Tx(loopback),
					.Tx_busy(Tx_busy),
					.Rx(loopback),
					.ready(ready),
					.ready_clr(ready_clr),
					.data_out(Rx_data)
					);
initial begin
	$dumpfile("uart.vcd");
	$dumpvars(0, uart_TB);
	enable <= 1'b1;
	#2 enable <= 1'b0;
end
always begin
	#1 clk = ~clk;
end
always @(posedge ready) begin
	#2 ready_clr <= 1;
	#2 ready_clr <= 0;
	if (Rx_data != data) begin
		$display("FAIL: rx data %x does not match tx %x", Rx_data, data);
		$finish;
	end 
	else begin
		if (Rx_data == 8'h2) begin //Check if received data is 11111111
			$display("SUCCESS: all bytes verified");
			$finish;
		end
		data <= data + 1'b1;
		enable <= 1'b1;
		#2 enable <= 1'b0;
	end
end
endmodule
