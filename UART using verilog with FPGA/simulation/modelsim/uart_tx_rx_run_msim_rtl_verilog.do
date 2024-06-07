transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/_Sem\ 4/2_Electronic\ Circuit\ Design/FPGA/_Final_/fpga_2 {C:/Users/HP/Desktop/_Sem 4/2_Electronic Circuit Design/FPGA/_Final_/fpga_2/baudrate.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/_Sem\ 4/2_Electronic\ Circuit\ Design/FPGA/_Final_/fpga_2 {C:/Users/HP/Desktop/_Sem 4/2_Electronic Circuit Design/FPGA/_Final_/fpga_2/uart_TB.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/_Sem\ 4/2_Electronic\ Circuit\ Design/FPGA/_Final_/fpga_2 {C:/Users/HP/Desktop/_Sem 4/2_Electronic Circuit Design/FPGA/_Final_/fpga_2/uart.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/_Sem\ 4/2_Electronic\ Circuit\ Design/FPGA/_Final_/fpga_2 {C:/Users/HP/Desktop/_Sem 4/2_Electronic Circuit Design/FPGA/_Final_/fpga_2/transmitter.v}
vlog -vlog01compat -work work +incdir+C:/Users/HP/Desktop/_Sem\ 4/2_Electronic\ Circuit\ Design/FPGA/_Final_/fpga_2 {C:/Users/HP/Desktop/_Sem 4/2_Electronic Circuit Design/FPGA/_Final_/fpga_2/receiver.v}

