-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/08/2024 12:21:51"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	data_in : IN std_logic_vector(7 DOWNTO 0);
	Tx_en : IN std_logic;
	clear : IN std_logic;
	clk_50m : IN std_logic;
	Tx : BUFFER std_logic;
	Tx_busy : BUFFER std_logic;
	Rx : IN std_logic;
	Rx_en : IN std_logic;
	ready : BUFFER std_logic;
	ready_clr : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0);
	Tx2 : BUFFER std_logic
	);
END uart;

-- Design Ports Information
-- clear	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Tx_busy	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[1]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[2]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- data_out[7]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- LEDR[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx2	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clk_50m	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Tx_en	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Rx_en	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ready_clr	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Tx_en : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk_50m : std_logic;
SIGNAL ww_Tx : std_logic;
SIGNAL ww_Tx_busy : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_Rx_en : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_ready_clr : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Tx2 : std_logic;
SIGNAL \clk_50m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \Tx_busy~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \Tx2~output_o\ : std_logic;
SIGNAL \clk_50m~input_o\ : std_logic;
SIGNAL \clk_50m~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_baud|Add1~0_combout\ : std_logic;
SIGNAL \uart_baud|Add1~1\ : std_logic;
SIGNAL \uart_baud|Add1~2_combout\ : std_logic;
SIGNAL \uart_baud|tx_acc~0_combout\ : std_logic;
SIGNAL \uart_baud|Add1~3\ : std_logic;
SIGNAL \uart_baud|Add1~4_combout\ : std_logic;
SIGNAL \uart_baud|Add1~5\ : std_logic;
SIGNAL \uart_baud|Add1~6_combout\ : std_logic;
SIGNAL \uart_baud|Add1~7\ : std_logic;
SIGNAL \uart_baud|Add1~8_combout\ : std_logic;
SIGNAL \uart_baud|tx_acc~3_combout\ : std_logic;
SIGNAL \uart_baud|Add1~9\ : std_logic;
SIGNAL \uart_baud|Add1~11\ : std_logic;
SIGNAL \uart_baud|Add1~12_combout\ : std_logic;
SIGNAL \uart_baud|Equal1~0_combout\ : std_logic;
SIGNAL \uart_baud|Add1~10_combout\ : std_logic;
SIGNAL \uart_baud|tx_acc~2_combout\ : std_logic;
SIGNAL \uart_baud|Add1~13\ : std_logic;
SIGNAL \uart_baud|Add1~14_combout\ : std_logic;
SIGNAL \uart_baud|tx_acc~1_combout\ : std_logic;
SIGNAL \uart_baud|Equal3~0_combout\ : std_logic;
SIGNAL \uart_baud|Add1~15\ : std_logic;
SIGNAL \uart_baud|Add1~16_combout\ : std_logic;
SIGNAL \uart_baud|tx_acc~4_combout\ : std_logic;
SIGNAL \uart_baud|Equal1~1_combout\ : std_logic;
SIGNAL \uart_baud|Equal1~2_combout\ : std_logic;
SIGNAL \Tx_en~input_o\ : std_logic;
SIGNAL \uart_Tx|Selector0~0_combout\ : std_logic;
SIGNAL \uart_Tx|state.TX_STATE_IDLE~q\ : std_logic;
SIGNAL \uart_Tx|data[7]~0_combout\ : std_logic;
SIGNAL \uart_Tx|Selector3~3_combout\ : std_logic;
SIGNAL \uart_Tx|Selector1~0_combout\ : std_logic;
SIGNAL \uart_Tx|state.TX_STATE_START~q\ : std_logic;
SIGNAL \uart_Tx|Selector2~1_combout\ : std_logic;
SIGNAL \uart_Tx|Selector2~2_combout\ : std_logic;
SIGNAL \uart_Tx|Selector2~3_combout\ : std_logic;
SIGNAL \uart_Tx|state.TX_STATE_DATA~q\ : std_logic;
SIGNAL \uart_Tx|Selector6~0_combout\ : std_logic;
SIGNAL \uart_Tx|bit_pos[0]~2_combout\ : std_logic;
SIGNAL \uart_Tx|Selector5~0_combout\ : std_logic;
SIGNAL \uart_Tx|Selector4~0_combout\ : std_logic;
SIGNAL \uart_Tx|Selector3~1_combout\ : std_logic;
SIGNAL \uart_Tx|Selector3~2_combout\ : std_logic;
SIGNAL \uart_Tx|state.TX_STATE_STOP~q\ : std_logic;
SIGNAL \uart_Tx|Selector7~0_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \uart_Tx|data[6]~feeder_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \uart_Tx|data[5]~feeder_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \uart_Tx|Mux0~0_combout\ : std_logic;
SIGNAL \uart_Tx|Mux0~1_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \uart_Tx|data[2]~feeder_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \uart_Tx|data[1]~feeder_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \uart_Tx|Mux0~2_combout\ : std_logic;
SIGNAL \uart_Tx|Mux0~3_combout\ : std_logic;
SIGNAL \uart_Tx|Selector7~3_combout\ : std_logic;
SIGNAL \uart_Tx|Selector7~1_combout\ : std_logic;
SIGNAL \uart_Tx|Selector7~2_combout\ : std_logic;
SIGNAL \uart_Tx|Selector7~4_combout\ : std_logic;
SIGNAL \uart_Tx|Tx~q\ : std_logic;
SIGNAL \ready_clr~input_o\ : std_logic;
SIGNAL \uart_Rx|state.RX_STATE_START~0_combout\ : std_logic;
SIGNAL \uart_baud|Add0~0_combout\ : std_logic;
SIGNAL \uart_baud|rx_acc~0_combout\ : std_logic;
SIGNAL \uart_baud|Add0~1\ : std_logic;
SIGNAL \uart_baud|Add0~2_combout\ : std_logic;
SIGNAL \uart_baud|rx_acc~1_combout\ : std_logic;
SIGNAL \uart_baud|Add0~3\ : std_logic;
SIGNAL \uart_baud|Add0~4_combout\ : std_logic;
SIGNAL \uart_baud|Add0~5\ : std_logic;
SIGNAL \uart_baud|Add0~6_combout\ : std_logic;
SIGNAL \uart_baud|rx_acc~2_combout\ : std_logic;
SIGNAL \uart_baud|Equal2~0_combout\ : std_logic;
SIGNAL \uart_baud|Add0~7\ : std_logic;
SIGNAL \uart_baud|Add0~8_combout\ : std_logic;
SIGNAL \uart_baud|rx_acc~3_combout\ : std_logic;
SIGNAL \Rx_en~input_o\ : std_logic;
SIGNAL \uart_Rx|always0~0_combout\ : std_logic;
SIGNAL \uart_Rx|always0~1_combout\ : std_logic;
SIGNAL \uart_Rx|Add0~0_combout\ : std_logic;
SIGNAL \uart_Rx|sample[2]~3_combout\ : std_logic;
SIGNAL \uart_Rx|sample[3]~4_combout\ : std_logic;
SIGNAL \Rx~input_o\ : std_logic;
SIGNAL \uart_Rx|sample[3]~1_combout\ : std_logic;
SIGNAL \uart_Rx|sample[3]~2_combout\ : std_logic;
SIGNAL \uart_Rx|sample[0]~6_combout\ : std_logic;
SIGNAL \uart_Rx|sample[1]~7_combout\ : std_logic;
SIGNAL \uart_Rx|Add0~1_combout\ : std_logic;
SIGNAL \uart_Rx|sample[2]~5_combout\ : std_logic;
SIGNAL \uart_Rx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_Rx|state~11_combout\ : std_logic;
SIGNAL \uart_Rx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_Rx|sample[1]~8_combout\ : std_logic;
SIGNAL \uart_Rx|bit_pos[0]~0_combout\ : std_logic;
SIGNAL \uart_Rx|Add1~1_combout\ : std_logic;
SIGNAL \uart_Rx|Add1~0_combout\ : std_logic;
SIGNAL \uart_Rx|Add1~2_combout\ : std_logic;
SIGNAL \uart_Rx|state~8_combout\ : std_logic;
SIGNAL \uart_Rx|state~9_combout\ : std_logic;
SIGNAL \uart_Rx|state~10_combout\ : std_logic;
SIGNAL \uart_Rx|state.RX_STATE_START~q\ : std_logic;
SIGNAL \uart_Rx|state.RX_STATE_DATA~0_combout\ : std_logic;
SIGNAL \uart_Rx|state.RX_STATE_DATA~q\ : std_logic;
SIGNAL \uart_Rx|state.RX_STATE_STOP~q\ : std_logic;
SIGNAL \uart_Rx|sample[1]~0_combout\ : std_logic;
SIGNAL \uart_Rx|ready~2_combout\ : std_logic;
SIGNAL \uart_Rx|ready~q\ : std_logic;
SIGNAL \uart_Rx|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[0]~1_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[0]~0_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[0]~2_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[0]~3_combout\ : std_logic;
SIGNAL \uart_Rx|ready~3_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[1]~4_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[1]~5_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[2]~6_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[2]~7_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[3]~8_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[3]~9_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[4]~10_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[4]~11_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[5]~12_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[5]~13_combout\ : std_logic;
SIGNAL \uart_Rx|data[5]~feeder_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[6]~14_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[6]~15_combout\ : std_logic;
SIGNAL \uart_Rx|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[7]~16_combout\ : std_logic;
SIGNAL \uart_Rx|scratch[7]~17_combout\ : std_logic;
SIGNAL \uart_baud|rx_acc\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_Tx|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_Tx|bit_pos\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_Rx|scratch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_Rx|sample\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_Rx|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_Rx|bit_pos\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_baud|tx_acc\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_Rx|ALT_INV_state.RX_STATE_DATA~q\ : std_logic;
SIGNAL \uart_Tx|ALT_INV_data[7]~0_combout\ : std_logic;
SIGNAL \uart_Tx|ALT_INV_Tx~q\ : std_logic;

BEGIN

ww_data_in <= data_in;
ww_Tx_en <= Tx_en;
ww_clear <= clear;
ww_clk_50m <= clk_50m;
Tx <= ww_Tx;
Tx_busy <= ww_Tx_busy;
ww_Rx <= Rx;
ww_Rx_en <= Rx_en;
ready <= ww_ready;
ww_ready_clr <= ready_clr;
data_out <= ww_data_out;
LEDR <= ww_LEDR;
Tx2 <= ww_Tx2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50m~input_o\);
\uart_Rx|ALT_INV_state.RX_STATE_DATA~q\ <= NOT \uart_Rx|state.RX_STATE_DATA~q\;
\uart_Tx|ALT_INV_data[7]~0_combout\ <= NOT \uart_Tx|data[7]~0_combout\;
\uart_Tx|ALT_INV_Tx~q\ <= NOT \uart_Tx|Tx~q\;

-- Location: IOOBUF_X18_Y34_N2
\Tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Tx|ALT_INV_Tx~q\,
	devoe => ww_devoe,
	o => \Tx~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Tx_busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Tx|state.TX_STATE_IDLE~q\,
	devoe => ww_devoe,
	o => \Tx_busy~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|ready~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Rx|data\(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Tx2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_Tx|ALT_INV_Tx~q\,
	devoe => ww_devoe,
	o => \Tx2~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50m,
	o => \clk_50m~input_o\);

-- Location: CLKCTRL_G18
\clk_50m~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50m~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y22_N0
\uart_baud|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~0_combout\ = \uart_baud|tx_acc\(0) $ (VCC)
-- \uart_baud|Add1~1\ = CARRY(\uart_baud|tx_acc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(0),
	datad => VCC,
	combout => \uart_baud|Add1~0_combout\,
	cout => \uart_baud|Add1~1\);

-- Location: FF_X24_Y22_N1
\uart_baud|tx_acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(0));

-- Location: LCCOMB_X24_Y22_N2
\uart_baud|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~2_combout\ = (\uart_baud|tx_acc\(1) & (!\uart_baud|Add1~1\)) # (!\uart_baud|tx_acc\(1) & ((\uart_baud|Add1~1\) # (GND)))
-- \uart_baud|Add1~3\ = CARRY((!\uart_baud|Add1~1\) # (!\uart_baud|tx_acc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(1),
	datad => VCC,
	cin => \uart_baud|Add1~1\,
	combout => \uart_baud|Add1~2_combout\,
	cout => \uart_baud|Add1~3\);

-- Location: LCCOMB_X25_Y22_N28
\uart_baud|tx_acc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|tx_acc~0_combout\ = (\uart_baud|Add1~2_combout\ & (((!\uart_baud|Equal1~0_combout\) # (!\uart_baud|tx_acc\(8))) # (!\uart_baud|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|Equal3~0_combout\,
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Equal1~0_combout\,
	datad => \uart_baud|Add1~2_combout\,
	combout => \uart_baud|tx_acc~0_combout\);

-- Location: FF_X25_Y22_N29
\uart_baud|tx_acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|tx_acc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(1));

-- Location: LCCOMB_X24_Y22_N4
\uart_baud|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~4_combout\ = (\uart_baud|tx_acc\(2) & (\uart_baud|Add1~3\ $ (GND))) # (!\uart_baud|tx_acc\(2) & (!\uart_baud|Add1~3\ & VCC))
-- \uart_baud|Add1~5\ = CARRY((\uart_baud|tx_acc\(2) & !\uart_baud|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(2),
	datad => VCC,
	cin => \uart_baud|Add1~3\,
	combout => \uart_baud|Add1~4_combout\,
	cout => \uart_baud|Add1~5\);

-- Location: FF_X24_Y22_N5
\uart_baud|tx_acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(2));

-- Location: LCCOMB_X24_Y22_N6
\uart_baud|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~6_combout\ = (\uart_baud|tx_acc\(3) & (!\uart_baud|Add1~5\)) # (!\uart_baud|tx_acc\(3) & ((\uart_baud|Add1~5\) # (GND)))
-- \uart_baud|Add1~7\ = CARRY((!\uart_baud|Add1~5\) # (!\uart_baud|tx_acc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|tx_acc\(3),
	datad => VCC,
	cin => \uart_baud|Add1~5\,
	combout => \uart_baud|Add1~6_combout\,
	cout => \uart_baud|Add1~7\);

-- Location: FF_X24_Y22_N7
\uart_baud|tx_acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(3));

-- Location: LCCOMB_X24_Y22_N8
\uart_baud|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~8_combout\ = (\uart_baud|tx_acc\(4) & (\uart_baud|Add1~7\ $ (GND))) # (!\uart_baud|tx_acc\(4) & (!\uart_baud|Add1~7\ & VCC))
-- \uart_baud|Add1~9\ = CARRY((\uart_baud|tx_acc\(4) & !\uart_baud|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(4),
	datad => VCC,
	cin => \uart_baud|Add1~7\,
	combout => \uart_baud|Add1~8_combout\,
	cout => \uart_baud|Add1~9\);

-- Location: LCCOMB_X24_Y22_N20
\uart_baud|tx_acc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|tx_acc~3_combout\ = (\uart_baud|Add1~8_combout\ & (((!\uart_baud|Equal3~0_combout\) # (!\uart_baud|tx_acc\(8))) # (!\uart_baud|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|Equal1~0_combout\,
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Add1~8_combout\,
	datad => \uart_baud|Equal3~0_combout\,
	combout => \uart_baud|tx_acc~3_combout\);

-- Location: FF_X24_Y22_N21
\uart_baud|tx_acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|tx_acc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(4));

-- Location: LCCOMB_X24_Y22_N10
\uart_baud|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~10_combout\ = (\uart_baud|tx_acc\(5) & (!\uart_baud|Add1~9\)) # (!\uart_baud|tx_acc\(5) & ((\uart_baud|Add1~9\) # (GND)))
-- \uart_baud|Add1~11\ = CARRY((!\uart_baud|Add1~9\) # (!\uart_baud|tx_acc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|tx_acc\(5),
	datad => VCC,
	cin => \uart_baud|Add1~9\,
	combout => \uart_baud|Add1~10_combout\,
	cout => \uart_baud|Add1~11\);

-- Location: LCCOMB_X24_Y22_N12
\uart_baud|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~12_combout\ = (\uart_baud|tx_acc\(6) & (\uart_baud|Add1~11\ $ (GND))) # (!\uart_baud|tx_acc\(6) & (!\uart_baud|Add1~11\ & VCC))
-- \uart_baud|Add1~13\ = CARRY((\uart_baud|tx_acc\(6) & !\uart_baud|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(6),
	datad => VCC,
	cin => \uart_baud|Add1~11\,
	combout => \uart_baud|Add1~12_combout\,
	cout => \uart_baud|Add1~13\);

-- Location: FF_X24_Y22_N13
\uart_baud|tx_acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(6));

-- Location: LCCOMB_X24_Y22_N18
\uart_baud|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Equal1~0_combout\ = (!\uart_baud|tx_acc\(3) & (!\uart_baud|tx_acc\(2) & (!\uart_baud|tx_acc\(6) & !\uart_baud|tx_acc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|tx_acc\(3),
	datab => \uart_baud|tx_acc\(2),
	datac => \uart_baud|tx_acc\(6),
	datad => \uart_baud|tx_acc\(1),
	combout => \uart_baud|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\uart_baud|tx_acc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|tx_acc~2_combout\ = (\uart_baud|Add1~10_combout\ & (((!\uart_baud|Equal1~0_combout\) # (!\uart_baud|tx_acc\(8))) # (!\uart_baud|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|Equal3~0_combout\,
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Equal1~0_combout\,
	datad => \uart_baud|Add1~10_combout\,
	combout => \uart_baud|tx_acc~2_combout\);

-- Location: FF_X24_Y22_N31
\uart_baud|tx_acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|tx_acc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(5));

-- Location: LCCOMB_X24_Y22_N14
\uart_baud|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~14_combout\ = (\uart_baud|tx_acc\(7) & (!\uart_baud|Add1~13\)) # (!\uart_baud|tx_acc\(7) & ((\uart_baud|Add1~13\) # (GND)))
-- \uart_baud|Add1~15\ = CARRY((!\uart_baud|Add1~13\) # (!\uart_baud|tx_acc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(7),
	datad => VCC,
	cin => \uart_baud|Add1~13\,
	combout => \uart_baud|Add1~14_combout\,
	cout => \uart_baud|Add1~15\);

-- Location: LCCOMB_X24_Y22_N28
\uart_baud|tx_acc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|tx_acc~1_combout\ = (\uart_baud|Add1~14_combout\ & (((!\uart_baud|Equal3~0_combout\) # (!\uart_baud|tx_acc\(8))) # (!\uart_baud|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|Equal1~0_combout\,
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Add1~14_combout\,
	datad => \uart_baud|Equal3~0_combout\,
	combout => \uart_baud|tx_acc~1_combout\);

-- Location: FF_X24_Y22_N29
\uart_baud|tx_acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|tx_acc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(7));

-- Location: LCCOMB_X25_Y22_N6
\uart_baud|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Equal3~0_combout\ = (\uart_baud|tx_acc\(0) & (\uart_baud|tx_acc\(5) & (\uart_baud|tx_acc\(7) & \uart_baud|tx_acc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|tx_acc\(0),
	datab => \uart_baud|tx_acc\(5),
	datac => \uart_baud|tx_acc\(7),
	datad => \uart_baud|tx_acc\(4),
	combout => \uart_baud|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y22_N16
\uart_baud|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add1~16_combout\ = \uart_baud|Add1~15\ $ (!\uart_baud|tx_acc\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_baud|tx_acc\(8),
	cin => \uart_baud|Add1~15\,
	combout => \uart_baud|Add1~16_combout\);

-- Location: LCCOMB_X24_Y22_N24
\uart_baud|tx_acc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|tx_acc~4_combout\ = (\uart_baud|Add1~16_combout\ & (((!\uart_baud|tx_acc\(8)) # (!\uart_baud|Equal1~0_combout\)) # (!\uart_baud|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|Equal3~0_combout\,
	datab => \uart_baud|Equal1~0_combout\,
	datac => \uart_baud|tx_acc\(8),
	datad => \uart_baud|Add1~16_combout\,
	combout => \uart_baud|tx_acc~4_combout\);

-- Location: FF_X24_Y22_N25
\uart_baud|tx_acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|tx_acc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|tx_acc\(8));

-- Location: LCCOMB_X24_Y22_N26
\uart_baud|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Equal1~1_combout\ = (!\uart_baud|tx_acc\(5) & (!\uart_baud|tx_acc\(0) & (!\uart_baud|tx_acc\(4) & !\uart_baud|tx_acc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|tx_acc\(5),
	datab => \uart_baud|tx_acc\(0),
	datac => \uart_baud|tx_acc\(4),
	datad => \uart_baud|tx_acc\(7),
	combout => \uart_baud|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y22_N22
\uart_baud|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Equal1~2_combout\ = (!\uart_baud|tx_acc\(8) & (\uart_baud|Equal1~1_combout\ & \uart_baud|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Equal1~1_combout\,
	datad => \uart_baud|Equal1~0_combout\,
	combout => \uart_baud|Equal1~2_combout\);

-- Location: IOIBUF_X0_Y16_N22
\Tx_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Tx_en,
	o => \Tx_en~input_o\);

-- Location: LCCOMB_X25_Y22_N22
\uart_Tx|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector0~0_combout\ = (\uart_Tx|state.TX_STATE_STOP~q\ & (!\uart_baud|Equal1~2_combout\ & ((\uart_Tx|state.TX_STATE_IDLE~q\) # (!\Tx_en~input_o\)))) # (!\uart_Tx|state.TX_STATE_STOP~q\ & (((\uart_Tx|state.TX_STATE_IDLE~q\) # 
-- (!\Tx_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_STOP~q\,
	datab => \uart_baud|Equal1~2_combout\,
	datac => \uart_Tx|state.TX_STATE_IDLE~q\,
	datad => \Tx_en~input_o\,
	combout => \uart_Tx|Selector0~0_combout\);

-- Location: FF_X25_Y22_N23
\uart_Tx|state.TX_STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|state.TX_STATE_IDLE~q\);

-- Location: LCCOMB_X25_Y22_N0
\uart_Tx|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|data[7]~0_combout\ = (\uart_Tx|state.TX_STATE_IDLE~q\) # (\Tx_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_Tx|state.TX_STATE_IDLE~q\,
	datad => \Tx_en~input_o\,
	combout => \uart_Tx|data[7]~0_combout\);

-- Location: LCCOMB_X25_Y22_N18
\uart_Tx|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector3~3_combout\ = (\uart_Tx|state.TX_STATE_DATA~q\ & (\uart_Tx|Selector3~1_combout\ & \uart_baud|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_DATA~q\,
	datac => \uart_Tx|Selector3~1_combout\,
	datad => \uart_baud|Equal1~2_combout\,
	combout => \uart_Tx|Selector3~3_combout\);

-- Location: LCCOMB_X25_Y22_N30
\uart_Tx|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector1~0_combout\ = (!\uart_Tx|Selector3~3_combout\ & (((!\uart_baud|Equal1~2_combout\ & \uart_Tx|state.TX_STATE_START~q\)) # (!\uart_Tx|data[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|data[7]~0_combout\,
	datab => \uart_baud|Equal1~2_combout\,
	datac => \uart_Tx|state.TX_STATE_START~q\,
	datad => \uart_Tx|Selector3~3_combout\,
	combout => \uart_Tx|Selector1~0_combout\);

-- Location: FF_X25_Y22_N31
\uart_Tx|state.TX_STATE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|state.TX_STATE_START~q\);

-- Location: LCCOMB_X25_Y22_N24
\uart_Tx|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector2~1_combout\ = (!\uart_Tx|state.TX_STATE_STOP~q\ & \uart_Tx|state.TX_STATE_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_STOP~q\,
	datac => \uart_Tx|state.TX_STATE_START~q\,
	combout => \uart_Tx|Selector2~1_combout\);

-- Location: LCCOMB_X25_Y22_N10
\uart_Tx|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector2~2_combout\ = (\uart_baud|Equal1~2_combout\ & (((\uart_Tx|Selector2~1_combout\)))) # (!\uart_baud|Equal1~2_combout\ & (\uart_Tx|state.TX_STATE_DATA~q\ & ((\uart_Tx|state.TX_STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_DATA~q\,
	datab => \uart_Tx|Selector2~1_combout\,
	datac => \uart_Tx|state.TX_STATE_IDLE~q\,
	datad => \uart_baud|Equal1~2_combout\,
	combout => \uart_Tx|Selector2~2_combout\);

-- Location: LCCOMB_X25_Y22_N12
\uart_Tx|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector2~3_combout\ = (\uart_Tx|Selector2~2_combout\) # ((!\uart_Tx|Selector3~1_combout\ & (!\uart_Tx|Selector7~0_combout\ & \uart_Tx|state.TX_STATE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|Selector3~1_combout\,
	datab => \uart_Tx|Selector7~0_combout\,
	datac => \uart_Tx|state.TX_STATE_DATA~q\,
	datad => \uart_Tx|Selector2~2_combout\,
	combout => \uart_Tx|Selector2~3_combout\);

-- Location: FF_X25_Y22_N13
\uart_Tx|state.TX_STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|state.TX_STATE_DATA~q\);

-- Location: LCCOMB_X23_Y22_N24
\uart_Tx|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector6~0_combout\ = (\uart_Tx|state.TX_STATE_DATA~q\ & !\uart_Tx|bit_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Tx|state.TX_STATE_DATA~q\,
	datac => \uart_Tx|bit_pos\(0),
	combout => \uart_Tx|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y22_N30
\uart_Tx|bit_pos[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|bit_pos[0]~2_combout\ = (\Tx_en~input_o\ & (((\uart_Tx|state.TX_STATE_DATA~q\ & \uart_baud|Equal1~2_combout\)))) # (!\Tx_en~input_o\ & (((\uart_Tx|state.TX_STATE_DATA~q\ & \uart_baud|Equal1~2_combout\)) # (!\uart_Tx|state.TX_STATE_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tx_en~input_o\,
	datab => \uart_Tx|state.TX_STATE_IDLE~q\,
	datac => \uart_Tx|state.TX_STATE_DATA~q\,
	datad => \uart_baud|Equal1~2_combout\,
	combout => \uart_Tx|bit_pos[0]~2_combout\);

-- Location: FF_X23_Y22_N25
\uart_Tx|bit_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector6~0_combout\,
	ena => \uart_Tx|bit_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|bit_pos\(0));

-- Location: LCCOMB_X23_Y22_N12
\uart_Tx|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector5~0_combout\ = (\uart_Tx|state.TX_STATE_DATA~q\ & (\uart_Tx|bit_pos\(1) $ (\uart_Tx|bit_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Tx|state.TX_STATE_DATA~q\,
	datac => \uart_Tx|bit_pos\(1),
	datad => \uart_Tx|bit_pos\(0),
	combout => \uart_Tx|Selector5~0_combout\);

-- Location: FF_X23_Y22_N13
\uart_Tx|bit_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector5~0_combout\,
	ena => \uart_Tx|bit_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|bit_pos\(1));

-- Location: LCCOMB_X23_Y22_N4
\uart_Tx|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector4~0_combout\ = (\uart_Tx|state.TX_STATE_DATA~q\ & (\uart_Tx|bit_pos\(2) $ (((\uart_Tx|bit_pos\(0) & \uart_Tx|bit_pos\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_DATA~q\,
	datab => \uart_Tx|bit_pos\(0),
	datac => \uart_Tx|bit_pos\(2),
	datad => \uart_Tx|bit_pos\(1),
	combout => \uart_Tx|Selector4~0_combout\);

-- Location: FF_X23_Y22_N5
\uart_Tx|bit_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector4~0_combout\,
	ena => \uart_Tx|bit_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|bit_pos\(2));

-- Location: LCCOMB_X23_Y22_N28
\uart_Tx|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector3~1_combout\ = (\uart_Tx|bit_pos\(0) & (\uart_Tx|bit_pos\(2) & \uart_Tx|bit_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Tx|bit_pos\(0),
	datac => \uart_Tx|bit_pos\(2),
	datad => \uart_Tx|bit_pos\(1),
	combout => \uart_Tx|Selector3~1_combout\);

-- Location: LCCOMB_X25_Y22_N26
\uart_Tx|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector3~2_combout\ = (\uart_baud|Equal1~2_combout\ & (\uart_Tx|Selector3~1_combout\ & (\uart_Tx|state.TX_STATE_DATA~q\))) # (!\uart_baud|Equal1~2_combout\ & (((\uart_Tx|state.TX_STATE_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|Selector3~1_combout\,
	datab => \uart_Tx|state.TX_STATE_DATA~q\,
	datac => \uart_Tx|state.TX_STATE_STOP~q\,
	datad => \uart_baud|Equal1~2_combout\,
	combout => \uart_Tx|Selector3~2_combout\);

-- Location: FF_X25_Y22_N27
\uart_Tx|state.TX_STATE_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|state.TX_STATE_STOP~q\);

-- Location: LCCOMB_X25_Y22_N8
\uart_Tx|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector7~0_combout\ = (\uart_Tx|state.TX_STATE_STOP~q\ & (!\uart_baud|tx_acc\(8) & (\uart_baud|Equal1~1_combout\ & \uart_baud|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_STOP~q\,
	datab => \uart_baud|tx_acc\(8),
	datac => \uart_baud|Equal1~1_combout\,
	datad => \uart_baud|Equal1~0_combout\,
	combout => \uart_Tx|Selector7~0_combout\);

-- Location: IOIBUF_X20_Y34_N15
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X23_Y22_N6
\uart_Tx|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|data[6]~feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \uart_Tx|data[6]~feeder_combout\);

-- Location: FF_X23_Y22_N7
\uart_Tx|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|data[6]~feeder_combout\,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(6));

-- Location: IOIBUF_X29_Y34_N15
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: FF_X23_Y22_N9
\uart_Tx|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(7));

-- Location: IOIBUF_X23_Y34_N22
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X23_Y22_N14
\uart_Tx|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|data[5]~feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \uart_Tx|data[5]~feeder_combout\);

-- Location: FF_X23_Y22_N15
\uart_Tx|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|data[5]~feeder_combout\,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(5));

-- Location: IOIBUF_X14_Y34_N15
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X23_Y22_N3
\uart_Tx|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(4));

-- Location: LCCOMB_X23_Y22_N2
\uart_Tx|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Mux0~0_combout\ = (\uart_Tx|bit_pos\(1) & (((\uart_Tx|bit_pos\(0))))) # (!\uart_Tx|bit_pos\(1) & ((\uart_Tx|bit_pos\(0) & (\uart_Tx|data\(5))) # (!\uart_Tx|bit_pos\(0) & ((\uart_Tx|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|bit_pos\(1),
	datab => \uart_Tx|data\(5),
	datac => \uart_Tx|data\(4),
	datad => \uart_Tx|bit_pos\(0),
	combout => \uart_Tx|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y22_N8
\uart_Tx|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Mux0~1_combout\ = (\uart_Tx|bit_pos\(1) & ((\uart_Tx|Mux0~0_combout\ & ((\uart_Tx|data\(7)))) # (!\uart_Tx|Mux0~0_combout\ & (\uart_Tx|data\(6))))) # (!\uart_Tx|bit_pos\(1) & (((\uart_Tx|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|data\(6),
	datab => \uart_Tx|bit_pos\(1),
	datac => \uart_Tx|data\(7),
	datad => \uart_Tx|Mux0~0_combout\,
	combout => \uart_Tx|Mux0~1_combout\);

-- Location: IOIBUF_X9_Y34_N8
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X23_Y22_N26
\uart_Tx|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|data[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \uart_Tx|data[2]~feeder_combout\);

-- Location: FF_X23_Y22_N27
\uart_Tx|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|data[2]~feeder_combout\,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(2));

-- Location: IOIBUF_X18_Y34_N22
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X23_Y22_N17
\uart_Tx|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(3));

-- Location: IOIBUF_X16_Y34_N1
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X23_Y22_N20
\uart_Tx|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|data[1]~feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \uart_Tx|data[1]~feeder_combout\);

-- Location: FF_X23_Y22_N21
\uart_Tx|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|data[1]~feeder_combout\,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(1));

-- Location: IOIBUF_X5_Y34_N15
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: FF_X23_Y22_N19
\uart_Tx|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \uart_Tx|ALT_INV_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|data\(0));

-- Location: LCCOMB_X23_Y22_N18
\uart_Tx|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Mux0~2_combout\ = (\uart_Tx|bit_pos\(1) & (((\uart_Tx|bit_pos\(0))))) # (!\uart_Tx|bit_pos\(1) & ((\uart_Tx|bit_pos\(0) & (\uart_Tx|data\(1))) # (!\uart_Tx|bit_pos\(0) & ((\uart_Tx|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|bit_pos\(1),
	datab => \uart_Tx|data\(1),
	datac => \uart_Tx|data\(0),
	datad => \uart_Tx|bit_pos\(0),
	combout => \uart_Tx|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y22_N16
\uart_Tx|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Mux0~3_combout\ = (\uart_Tx|bit_pos\(1) & ((\uart_Tx|Mux0~2_combout\ & ((\uart_Tx|data\(3)))) # (!\uart_Tx|Mux0~2_combout\ & (\uart_Tx|data\(2))))) # (!\uart_Tx|bit_pos\(1) & (((\uart_Tx|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|data\(2),
	datab => \uart_Tx|bit_pos\(1),
	datac => \uart_Tx|data\(3),
	datad => \uart_Tx|Mux0~2_combout\,
	combout => \uart_Tx|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y22_N22
\uart_Tx|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector7~3_combout\ = (\uart_Tx|state.TX_STATE_DATA~q\ & ((\uart_Tx|bit_pos\(2) & (\uart_Tx|Mux0~1_combout\)) # (!\uart_Tx|bit_pos\(2) & ((\uart_Tx|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_DATA~q\,
	datab => \uart_Tx|bit_pos\(2),
	datac => \uart_Tx|Mux0~1_combout\,
	datad => \uart_Tx|Mux0~3_combout\,
	combout => \uart_Tx|Selector7~3_combout\);

-- Location: LCCOMB_X25_Y22_N2
\uart_Tx|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector7~1_combout\ = (!\uart_baud|Equal1~2_combout\ & ((\uart_Tx|state.TX_STATE_DATA~q\) # (\uart_Tx|state.TX_STATE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_DATA~q\,
	datac => \uart_Tx|state.TX_STATE_START~q\,
	datad => \uart_baud|Equal1~2_combout\,
	combout => \uart_Tx|Selector7~1_combout\);

-- Location: LCCOMB_X25_Y22_N20
\uart_Tx|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector7~2_combout\ = (!\uart_Tx|Tx~q\ & (((\uart_Tx|state.TX_STATE_STOP~q\) # (\uart_Tx|Selector7~1_combout\)) # (!\uart_Tx|state.TX_STATE_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|state.TX_STATE_IDLE~q\,
	datab => \uart_Tx|Tx~q\,
	datac => \uart_Tx|state.TX_STATE_STOP~q\,
	datad => \uart_Tx|Selector7~1_combout\,
	combout => \uart_Tx|Selector7~2_combout\);

-- Location: LCCOMB_X25_Y22_N4
\uart_Tx|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Tx|Selector7~4_combout\ = (!\uart_Tx|Selector7~0_combout\ & (!\uart_Tx|Selector7~2_combout\ & ((!\uart_Tx|Selector7~3_combout\) # (!\uart_baud|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Tx|Selector7~0_combout\,
	datab => \uart_baud|Equal1~2_combout\,
	datac => \uart_Tx|Selector7~3_combout\,
	datad => \uart_Tx|Selector7~2_combout\,
	combout => \uart_Tx|Selector7~4_combout\);

-- Location: FF_X25_Y22_N5
\uart_Tx|Tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Tx|Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Tx|Tx~q\);

-- Location: IOIBUF_X25_Y34_N8
\ready_clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ready_clr,
	o => \ready_clr~input_o\);

-- Location: LCCOMB_X24_Y30_N2
\uart_Rx|state.RX_STATE_START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state.RX_STATE_START~0_combout\ = !\uart_Rx|state.RX_STATE_STOP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_STOP~q\,
	combout => \uart_Rx|state.RX_STATE_START~0_combout\);

-- Location: LCCOMB_X24_Y30_N8
\uart_baud|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add0~0_combout\ = \uart_baud|rx_acc\(0) $ (VCC)
-- \uart_baud|Add0~1\ = CARRY(\uart_baud|rx_acc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(0),
	datad => VCC,
	combout => \uart_baud|Add0~0_combout\,
	cout => \uart_baud|Add0~1\);

-- Location: LCCOMB_X24_Y30_N26
\uart_baud|rx_acc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|rx_acc~0_combout\ = (\uart_baud|Add0~0_combout\ & ((!\uart_baud|Equal2~0_combout\) # (!\uart_baud|rx_acc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(4),
	datac => \uart_baud|Add0~0_combout\,
	datad => \uart_baud|Equal2~0_combout\,
	combout => \uart_baud|rx_acc~0_combout\);

-- Location: FF_X24_Y30_N27
\uart_baud|rx_acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|rx_acc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|rx_acc\(0));

-- Location: LCCOMB_X24_Y30_N10
\uart_baud|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add0~2_combout\ = (\uart_baud|rx_acc\(1) & (!\uart_baud|Add0~1\)) # (!\uart_baud|rx_acc\(1) & ((\uart_baud|Add0~1\) # (GND)))
-- \uart_baud|Add0~3\ = CARRY((!\uart_baud|Add0~1\) # (!\uart_baud|rx_acc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|rx_acc\(1),
	datad => VCC,
	cin => \uart_baud|Add0~1\,
	combout => \uart_baud|Add0~2_combout\,
	cout => \uart_baud|Add0~3\);

-- Location: LCCOMB_X24_Y30_N4
\uart_baud|rx_acc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|rx_acc~1_combout\ = (\uart_baud|Add0~2_combout\ & ((!\uart_baud|rx_acc\(4)) # (!\uart_baud|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|Equal2~0_combout\,
	datac => \uart_baud|rx_acc\(4),
	datad => \uart_baud|Add0~2_combout\,
	combout => \uart_baud|rx_acc~1_combout\);

-- Location: FF_X24_Y30_N5
\uart_baud|rx_acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|rx_acc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|rx_acc\(1));

-- Location: LCCOMB_X24_Y30_N12
\uart_baud|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add0~4_combout\ = (\uart_baud|rx_acc\(2) & (\uart_baud|Add0~3\ $ (GND))) # (!\uart_baud|rx_acc\(2) & (!\uart_baud|Add0~3\ & VCC))
-- \uart_baud|Add0~5\ = CARRY((\uart_baud|rx_acc\(2) & !\uart_baud|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(2),
	datad => VCC,
	cin => \uart_baud|Add0~3\,
	combout => \uart_baud|Add0~4_combout\,
	cout => \uart_baud|Add0~5\);

-- Location: FF_X24_Y30_N13
\uart_baud|rx_acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|rx_acc\(2));

-- Location: LCCOMB_X24_Y30_N14
\uart_baud|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add0~6_combout\ = (\uart_baud|rx_acc\(3) & (!\uart_baud|Add0~5\)) # (!\uart_baud|rx_acc\(3) & ((\uart_baud|Add0~5\) # (GND)))
-- \uart_baud|Add0~7\ = CARRY((!\uart_baud|Add0~5\) # (!\uart_baud|rx_acc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|rx_acc\(3),
	datad => VCC,
	cin => \uart_baud|Add0~5\,
	combout => \uart_baud|Add0~6_combout\,
	cout => \uart_baud|Add0~7\);

-- Location: LCCOMB_X24_Y30_N0
\uart_baud|rx_acc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|rx_acc~2_combout\ = (\uart_baud|Add0~6_combout\ & ((!\uart_baud|Equal2~0_combout\) # (!\uart_baud|rx_acc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(4),
	datac => \uart_baud|Add0~6_combout\,
	datad => \uart_baud|Equal2~0_combout\,
	combout => \uart_baud|rx_acc~2_combout\);

-- Location: FF_X24_Y30_N1
\uart_baud|rx_acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|rx_acc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|rx_acc\(3));

-- Location: LCCOMB_X23_Y30_N28
\uart_baud|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Equal2~0_combout\ = (\uart_baud|rx_acc\(1) & (\uart_baud|rx_acc\(3) & (!\uart_baud|rx_acc\(2) & !\uart_baud|rx_acc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(1),
	datab => \uart_baud|rx_acc\(3),
	datac => \uart_baud|rx_acc\(2),
	datad => \uart_baud|rx_acc\(0),
	combout => \uart_baud|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y30_N16
\uart_baud|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|Add0~8_combout\ = \uart_baud|rx_acc\(4) $ (!\uart_baud|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(4),
	cin => \uart_baud|Add0~7\,
	combout => \uart_baud|Add0~8_combout\);

-- Location: LCCOMB_X24_Y30_N22
\uart_baud|rx_acc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_baud|rx_acc~3_combout\ = (\uart_baud|Add0~8_combout\ & ((!\uart_baud|rx_acc\(4)) # (!\uart_baud|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_baud|Equal2~0_combout\,
	datac => \uart_baud|rx_acc\(4),
	datad => \uart_baud|Add0~8_combout\,
	combout => \uart_baud|rx_acc~3_combout\);

-- Location: FF_X24_Y30_N23
\uart_baud|rx_acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_baud|rx_acc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_baud|rx_acc\(4));

-- Location: IOIBUF_X27_Y0_N15
\Rx_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx_en,
	o => \Rx_en~input_o\);

-- Location: LCCOMB_X24_Y30_N18
\uart_Rx|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|always0~0_combout\ = (!\uart_baud|rx_acc\(0) & (!\Rx_en~input_o\ & (!\uart_baud|rx_acc\(1) & !\uart_baud|rx_acc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(0),
	datab => \Rx_en~input_o\,
	datac => \uart_baud|rx_acc\(1),
	datad => \uart_baud|rx_acc\(2),
	combout => \uart_Rx|always0~0_combout\);

-- Location: LCCOMB_X24_Y30_N20
\uart_Rx|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|always0~1_combout\ = (!\uart_baud|rx_acc\(4) & (!\uart_baud|rx_acc\(3) & \uart_Rx|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(4),
	datab => \uart_baud|rx_acc\(3),
	datad => \uart_Rx|always0~0_combout\,
	combout => \uart_Rx|always0~1_combout\);

-- Location: LCCOMB_X26_Y30_N30
\uart_Rx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Add0~0_combout\ = \uart_Rx|sample\(3) $ (((\uart_Rx|sample\(1) & (\uart_Rx|sample\(2) & \uart_Rx|sample\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(1),
	datab => \uart_Rx|sample\(2),
	datac => \uart_Rx|sample\(3),
	datad => \uart_Rx|sample\(0),
	combout => \uart_Rx|Add0~0_combout\);

-- Location: LCCOMB_X25_Y30_N20
\uart_Rx|sample[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[2]~3_combout\ = (!\uart_Rx|sample[1]~0_combout\ & (\uart_Rx|sample[3]~2_combout\ & ((\uart_Rx|state.RX_STATE_START~q\) # (!\uart_Rx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Equal3~0_combout\,
	datab => \uart_Rx|sample[1]~0_combout\,
	datac => \uart_Rx|state.RX_STATE_START~q\,
	datad => \uart_Rx|sample[3]~2_combout\,
	combout => \uart_Rx|sample[2]~3_combout\);

-- Location: LCCOMB_X25_Y30_N26
\uart_Rx|sample[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[3]~4_combout\ = (\uart_Rx|Add0~0_combout\ & ((\uart_Rx|sample[2]~3_combout\) # ((!\uart_Rx|sample[3]~2_combout\ & \uart_Rx|sample\(3))))) # (!\uart_Rx|Add0~0_combout\ & (!\uart_Rx|sample[3]~2_combout\ & (\uart_Rx|sample\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Add0~0_combout\,
	datab => \uart_Rx|sample[3]~2_combout\,
	datac => \uart_Rx|sample\(3),
	datad => \uart_Rx|sample[2]~3_combout\,
	combout => \uart_Rx|sample[3]~4_combout\);

-- Location: FF_X25_Y30_N27
\uart_Rx|sample[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|sample[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|sample\(3));

-- Location: IOIBUF_X20_Y34_N22
\Rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx,
	o => \Rx~input_o\);

-- Location: LCCOMB_X25_Y30_N8
\uart_Rx|sample[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[3]~1_combout\ = (\uart_Rx|sample\(0)) # (((\uart_Rx|sample\(1)) # (\uart_Rx|sample\(2))) # (!\Rx~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(0),
	datab => \Rx~input_o\,
	datac => \uart_Rx|sample\(1),
	datad => \uart_Rx|sample\(2),
	combout => \uart_Rx|sample[3]~1_combout\);

-- Location: LCCOMB_X25_Y30_N16
\uart_Rx|sample[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[3]~2_combout\ = (\uart_Rx|always0~1_combout\ & ((\uart_Rx|sample\(3)) # ((\uart_Rx|state.RX_STATE_START~q\) # (\uart_Rx|sample[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(3),
	datab => \uart_Rx|state.RX_STATE_START~q\,
	datac => \uart_Rx|sample[3]~1_combout\,
	datad => \uart_Rx|always0~1_combout\,
	combout => \uart_Rx|sample[3]~2_combout\);

-- Location: LCCOMB_X25_Y30_N24
\uart_Rx|sample[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[0]~6_combout\ = (\uart_Rx|sample\(0) & ((!\uart_Rx|sample[3]~2_combout\))) # (!\uart_Rx|sample\(0) & (!\uart_Rx|sample[1]~0_combout\ & \uart_Rx|sample[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|sample[1]~0_combout\,
	datac => \uart_Rx|sample\(0),
	datad => \uart_Rx|sample[3]~2_combout\,
	combout => \uart_Rx|sample[0]~6_combout\);

-- Location: FF_X25_Y30_N25
\uart_Rx|sample[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|sample[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|sample\(0));

-- Location: LCCOMB_X25_Y30_N0
\uart_Rx|sample[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[1]~7_combout\ = (\uart_Rx|sample\(1) & (((!\uart_Rx|sample\(0) & \uart_Rx|sample[2]~3_combout\)) # (!\uart_Rx|sample[3]~2_combout\))) # (!\uart_Rx|sample\(1) & (\uart_Rx|sample\(0) & ((\uart_Rx|sample[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(0),
	datab => \uart_Rx|sample[3]~2_combout\,
	datac => \uart_Rx|sample\(1),
	datad => \uart_Rx|sample[2]~3_combout\,
	combout => \uart_Rx|sample[1]~7_combout\);

-- Location: FF_X25_Y30_N1
\uart_Rx|sample[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|sample[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|sample\(1));

-- Location: LCCOMB_X25_Y30_N30
\uart_Rx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Add0~1_combout\ = \uart_Rx|sample\(2) $ (((\uart_Rx|sample\(1) & \uart_Rx|sample\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(1),
	datab => \uart_Rx|sample\(0),
	datad => \uart_Rx|sample\(2),
	combout => \uart_Rx|Add0~1_combout\);

-- Location: LCCOMB_X25_Y30_N22
\uart_Rx|sample[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[2]~5_combout\ = (\uart_Rx|Add0~1_combout\ & ((\uart_Rx|sample[2]~3_combout\) # ((!\uart_Rx|sample[3]~2_combout\ & \uart_Rx|sample\(2))))) # (!\uart_Rx|Add0~1_combout\ & (!\uart_Rx|sample[3]~2_combout\ & (\uart_Rx|sample\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Add0~1_combout\,
	datab => \uart_Rx|sample[3]~2_combout\,
	datac => \uart_Rx|sample\(2),
	datad => \uart_Rx|sample[2]~3_combout\,
	combout => \uart_Rx|sample[2]~5_combout\);

-- Location: FF_X25_Y30_N23
\uart_Rx|sample[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|sample[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|sample\(2));

-- Location: LCCOMB_X25_Y30_N10
\uart_Rx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Equal3~0_combout\ = (\uart_Rx|sample\(2) & (\uart_Rx|sample\(1) & (\uart_Rx|sample\(3) & \uart_Rx|sample\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(2),
	datab => \uart_Rx|sample\(1),
	datac => \uart_Rx|sample\(3),
	datad => \uart_Rx|sample\(0),
	combout => \uart_Rx|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y30_N26
\uart_Rx|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state~11_combout\ = (\uart_Rx|state.RX_STATE_DATA~q\ & !\uart_Rx|bit_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|bit_pos\(0),
	combout => \uart_Rx|state~11_combout\);

-- Location: LCCOMB_X25_Y30_N18
\uart_Rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Equal1~0_combout\ = (!\uart_Rx|sample\(2) & (!\uart_Rx|sample\(1) & (\uart_Rx|sample\(3) & !\uart_Rx|sample\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|sample\(2),
	datab => \uart_Rx|sample\(1),
	datac => \uart_Rx|sample\(3),
	datad => \uart_Rx|sample\(0),
	combout => \uart_Rx|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y30_N6
\uart_Rx|sample[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[1]~8_combout\ = (!\uart_Rx|state.RX_STATE_START~q\ & \uart_Rx|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_Rx|state.RX_STATE_START~q\,
	datad => \uart_Rx|Equal3~0_combout\,
	combout => \uart_Rx|sample[1]~8_combout\);

-- Location: LCCOMB_X26_Y30_N28
\uart_Rx|bit_pos[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|bit_pos[0]~0_combout\ = (\uart_Rx|always0~1_combout\ & ((\uart_Rx|sample[1]~8_combout\) # ((\uart_Rx|state.RX_STATE_DATA~q\ & \uart_Rx|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_DATA~q\,
	datab => \uart_Rx|Equal1~0_combout\,
	datac => \uart_Rx|sample[1]~8_combout\,
	datad => \uart_Rx|always0~1_combout\,
	combout => \uart_Rx|bit_pos[0]~0_combout\);

-- Location: FF_X26_Y30_N27
\uart_Rx|bit_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|state~11_combout\,
	ena => \uart_Rx|bit_pos[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|bit_pos\(0));

-- Location: LCCOMB_X26_Y30_N22
\uart_Rx|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Add1~1_combout\ = \uart_Rx|bit_pos\(1) $ (\uart_Rx|bit_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_Rx|bit_pos\(1),
	datad => \uart_Rx|bit_pos\(0),
	combout => \uart_Rx|Add1~1_combout\);

-- Location: FF_X26_Y30_N23
\uart_Rx|bit_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|Add1~1_combout\,
	sclr => \uart_Rx|ALT_INV_state.RX_STATE_DATA~q\,
	ena => \uart_Rx|bit_pos[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|bit_pos\(1));

-- Location: LCCOMB_X26_Y30_N4
\uart_Rx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Add1~0_combout\ = \uart_Rx|bit_pos\(2) $ (((\uart_Rx|bit_pos\(1) & \uart_Rx|bit_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datac => \uart_Rx|bit_pos\(2),
	datad => \uart_Rx|bit_pos\(0),
	combout => \uart_Rx|Add1~0_combout\);

-- Location: FF_X26_Y30_N5
\uart_Rx|bit_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|Add1~0_combout\,
	sclr => \uart_Rx|ALT_INV_state.RX_STATE_DATA~q\,
	ena => \uart_Rx|bit_pos[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|bit_pos\(2));

-- Location: LCCOMB_X26_Y30_N20
\uart_Rx|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Add1~2_combout\ = \uart_Rx|bit_pos\(3) $ (((\uart_Rx|bit_pos\(1) & (\uart_Rx|bit_pos\(2) & \uart_Rx|bit_pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(3),
	datad => \uart_Rx|bit_pos\(0),
	combout => \uart_Rx|Add1~2_combout\);

-- Location: FF_X26_Y30_N21
\uart_Rx|bit_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|Add1~2_combout\,
	sclr => \uart_Rx|ALT_INV_state.RX_STATE_DATA~q\,
	ena => \uart_Rx|bit_pos[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|bit_pos\(3));

-- Location: LCCOMB_X26_Y30_N24
\uart_Rx|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state~8_combout\ = (!\uart_Rx|bit_pos\(0) & (!\uart_Rx|bit_pos\(1) & \uart_Rx|bit_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(0),
	datac => \uart_Rx|bit_pos\(1),
	datad => \uart_Rx|bit_pos\(3),
	combout => \uart_Rx|state~8_combout\);

-- Location: LCCOMB_X25_Y30_N12
\uart_Rx|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state~9_combout\ = (\uart_Rx|Equal3~0_combout\ & (((!\uart_Rx|bit_pos\(2) & \uart_Rx|state~8_combout\)) # (!\uart_Rx|state.RX_STATE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Equal3~0_combout\,
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|state.RX_STATE_DATA~q\,
	datad => \uart_Rx|state~8_combout\,
	combout => \uart_Rx|state~9_combout\);

-- Location: LCCOMB_X25_Y30_N2
\uart_Rx|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state~10_combout\ = (\uart_Rx|always0~1_combout\ & ((\uart_Rx|sample[1]~0_combout\) # ((!\uart_Rx|state.RX_STATE_STOP~q\ & \uart_Rx|state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_STOP~q\,
	datab => \uart_Rx|always0~1_combout\,
	datac => \uart_Rx|sample[1]~0_combout\,
	datad => \uart_Rx|state~9_combout\,
	combout => \uart_Rx|state~10_combout\);

-- Location: FF_X25_Y30_N15
\uart_Rx|state.RX_STATE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|state.RX_STATE_START~0_combout\,
	sload => VCC,
	ena => \uart_Rx|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|state.RX_STATE_START~q\);

-- Location: LCCOMB_X25_Y30_N14
\uart_Rx|state.RX_STATE_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|state.RX_STATE_DATA~0_combout\ = !\uart_Rx|state.RX_STATE_START~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_Rx|state.RX_STATE_START~q\,
	combout => \uart_Rx|state.RX_STATE_DATA~0_combout\);

-- Location: FF_X25_Y30_N13
\uart_Rx|state.RX_STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|state.RX_STATE_DATA~0_combout\,
	sload => VCC,
	ena => \uart_Rx|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|state.RX_STATE_DATA~q\);

-- Location: FF_X25_Y30_N31
\uart_Rx|state.RX_STATE_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|state.RX_STATE_DATA~q\,
	sload => VCC,
	ena => \uart_Rx|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|state.RX_STATE_STOP~q\);

-- Location: LCCOMB_X25_Y30_N4
\uart_Rx|sample[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|sample[1]~0_combout\ = (\uart_Rx|state.RX_STATE_STOP~q\ & ((\uart_Rx|Equal3~0_combout\) # ((!\Rx~input_o\ & \uart_Rx|sample\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_STOP~q\,
	datab => \Rx~input_o\,
	datac => \uart_Rx|sample\(3),
	datad => \uart_Rx|Equal3~0_combout\,
	combout => \uart_Rx|sample[1]~0_combout\);

-- Location: LCCOMB_X25_Y30_N28
\uart_Rx|ready~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|ready~2_combout\ = (\ready_clr~input_o\ & (\uart_Rx|sample[1]~0_combout\ & ((\uart_Rx|always0~1_combout\)))) # (!\ready_clr~input_o\ & ((\uart_Rx|ready~q\) # ((\uart_Rx|sample[1]~0_combout\ & \uart_Rx|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_clr~input_o\,
	datab => \uart_Rx|sample[1]~0_combout\,
	datac => \uart_Rx|ready~q\,
	datad => \uart_Rx|always0~1_combout\,
	combout => \uart_Rx|ready~2_combout\);

-- Location: FF_X25_Y30_N29
\uart_Rx|ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|ready~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|ready~q\);

-- Location: LCCOMB_X21_Y30_N28
\uart_Rx|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~0_combout\ = (!\uart_Rx|bit_pos\(0) & (!\uart_Rx|bit_pos\(2) & (!\uart_Rx|bit_pos\(1) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(0),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(1),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y30_N24
\uart_Rx|scratch[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[0]~1_combout\ = (!\uart_Rx|state.RX_STATE_STOP~q\ & (\uart_Rx|state.RX_STATE_DATA~q\ & \uart_Rx|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_STOP~q\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datad => \uart_Rx|always0~1_combout\,
	combout => \uart_Rx|scratch[0]~1_combout\);

-- Location: LCCOMB_X24_Y30_N28
\uart_Rx|scratch[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[0]~0_combout\ = (!\uart_Rx|state.RX_STATE_STOP~q\ & (!\uart_Rx|state.RX_STATE_DATA~q\ & (\uart_Rx|Equal3~0_combout\ & \uart_Rx|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_STOP~q\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|Equal3~0_combout\,
	datad => \uart_Rx|always0~1_combout\,
	combout => \uart_Rx|scratch[0]~0_combout\);

-- Location: LCCOMB_X21_Y30_N18
\uart_Rx|scratch[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[0]~2_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~0_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|Decoder0~0_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[0]~2_combout\);

-- Location: LCCOMB_X21_Y30_N4
\uart_Rx|scratch[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[0]~3_combout\ = (\uart_Rx|scratch[0]~2_combout\ & (\uart_Rx|state.RX_STATE_DATA~q\ & (\Rx~input_o\))) # (!\uart_Rx|scratch[0]~2_combout\ & (((\uart_Rx|scratch\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_DATA~q\,
	datab => \Rx~input_o\,
	datac => \uart_Rx|scratch\(0),
	datad => \uart_Rx|scratch[0]~2_combout\,
	combout => \uart_Rx|scratch[0]~3_combout\);

-- Location: FF_X21_Y30_N5
\uart_Rx|scratch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(0));

-- Location: LCCOMB_X24_Y30_N30
\uart_Rx|ready~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|ready~3_combout\ = (!\uart_baud|rx_acc\(4) & (!\uart_baud|rx_acc\(3) & (\uart_Rx|always0~0_combout\ & \uart_Rx|sample[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_baud|rx_acc\(4),
	datab => \uart_baud|rx_acc\(3),
	datac => \uart_Rx|always0~0_combout\,
	datad => \uart_Rx|sample[1]~0_combout\,
	combout => \uart_Rx|ready~3_combout\);

-- Location: FF_X24_Y30_N25
\uart_Rx|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(0),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(0));

-- Location: LCCOMB_X21_Y30_N12
\uart_Rx|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~1_combout\ = (!\uart_Rx|bit_pos\(1) & (!\uart_Rx|bit_pos\(2) & (\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~1_combout\);

-- Location: LCCOMB_X21_Y30_N10
\uart_Rx|scratch[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[1]~4_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~1_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Decoder0~1_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[1]~4_combout\);

-- Location: LCCOMB_X21_Y30_N30
\uart_Rx|scratch[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[1]~5_combout\ = (\uart_Rx|scratch[1]~4_combout\ & (\uart_Rx|state.RX_STATE_DATA~q\ & (\Rx~input_o\))) # (!\uart_Rx|scratch[1]~4_combout\ & (((\uart_Rx|scratch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_DATA~q\,
	datab => \Rx~input_o\,
	datac => \uart_Rx|scratch\(1),
	datad => \uart_Rx|scratch[1]~4_combout\,
	combout => \uart_Rx|scratch[1]~5_combout\);

-- Location: FF_X21_Y30_N31
\uart_Rx|scratch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(1));

-- Location: FF_X24_Y30_N15
\uart_Rx|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(1),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(1));

-- Location: LCCOMB_X21_Y30_N8
\uart_Rx|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~2_combout\ = (\uart_Rx|bit_pos\(1) & (!\uart_Rx|bit_pos\(2) & (!\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~2_combout\);

-- Location: LCCOMB_X21_Y30_N6
\uart_Rx|scratch[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[2]~6_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~2_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|Decoder0~2_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[2]~6_combout\);

-- Location: LCCOMB_X21_Y30_N24
\uart_Rx|scratch[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[2]~7_combout\ = (\uart_Rx|scratch[2]~6_combout\ & (\uart_Rx|state.RX_STATE_DATA~q\ & (\Rx~input_o\))) # (!\uart_Rx|scratch[2]~6_combout\ & (((\uart_Rx|scratch\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_DATA~q\,
	datab => \Rx~input_o\,
	datac => \uart_Rx|scratch\(2),
	datad => \uart_Rx|scratch[2]~6_combout\,
	combout => \uart_Rx|scratch[2]~7_combout\);

-- Location: FF_X21_Y30_N25
\uart_Rx|scratch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(2));

-- Location: FF_X24_Y30_N3
\uart_Rx|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(2),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(2));

-- Location: LCCOMB_X23_Y30_N10
\uart_Rx|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~3_combout\ = (\uart_Rx|bit_pos\(1) & (!\uart_Rx|bit_pos\(2) & (\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y30_N0
\uart_Rx|scratch[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[3]~8_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~3_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|Decoder0~3_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[3]~8_combout\);

-- Location: LCCOMB_X23_Y30_N16
\uart_Rx|scratch[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[3]~9_combout\ = (\uart_Rx|scratch[3]~8_combout\ & (\Rx~input_o\ & (\uart_Rx|state.RX_STATE_DATA~q\))) # (!\uart_Rx|scratch[3]~8_combout\ & (((\uart_Rx|scratch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|scratch\(3),
	datad => \uart_Rx|scratch[3]~8_combout\,
	combout => \uart_Rx|scratch[3]~9_combout\);

-- Location: FF_X23_Y30_N17
\uart_Rx|scratch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(3));

-- Location: FF_X24_Y30_N17
\uart_Rx|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(3),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(3));

-- Location: LCCOMB_X21_Y30_N20
\uart_Rx|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~4_combout\ = (!\uart_Rx|bit_pos\(1) & (\uart_Rx|bit_pos\(2) & (!\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~4_combout\);

-- Location: LCCOMB_X21_Y30_N2
\uart_Rx|scratch[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[4]~10_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~4_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|Decoder0~4_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[4]~10_combout\);

-- Location: LCCOMB_X21_Y30_N26
\uart_Rx|scratch[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[4]~11_combout\ = (\uart_Rx|scratch[4]~10_combout\ & (\uart_Rx|state.RX_STATE_DATA~q\ & (\Rx~input_o\))) # (!\uart_Rx|scratch[4]~10_combout\ & (((\uart_Rx|scratch\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|state.RX_STATE_DATA~q\,
	datab => \Rx~input_o\,
	datac => \uart_Rx|scratch\(4),
	datad => \uart_Rx|scratch[4]~10_combout\,
	combout => \uart_Rx|scratch[4]~11_combout\);

-- Location: FF_X21_Y30_N27
\uart_Rx|scratch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(4));

-- Location: FF_X24_Y30_N21
\uart_Rx|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(4),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(4));

-- Location: LCCOMB_X23_Y30_N2
\uart_Rx|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~5_combout\ = (!\uart_Rx|bit_pos\(1) & (\uart_Rx|bit_pos\(2) & (\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y30_N24
\uart_Rx|scratch[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[5]~12_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|Decoder0~5_combout\ & \uart_Rx|scratch[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_Rx|Decoder0~5_combout\,
	datac => \uart_Rx|scratch[0]~1_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[5]~12_combout\);

-- Location: LCCOMB_X23_Y30_N30
\uart_Rx|scratch[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[5]~13_combout\ = (\uart_Rx|scratch[5]~12_combout\ & (\Rx~input_o\ & (\uart_Rx|state.RX_STATE_DATA~q\))) # (!\uart_Rx|scratch[5]~12_combout\ & (((\uart_Rx|scratch\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|scratch\(5),
	datad => \uart_Rx|scratch[5]~12_combout\,
	combout => \uart_Rx|scratch[5]~13_combout\);

-- Location: FF_X23_Y30_N31
\uart_Rx|scratch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(5));

-- Location: LCCOMB_X24_Y30_N6
\uart_Rx|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|data[5]~feeder_combout\ = \uart_Rx|scratch\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_Rx|scratch\(5),
	combout => \uart_Rx|data[5]~feeder_combout\);

-- Location: FF_X24_Y30_N7
\uart_Rx|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|data[5]~feeder_combout\,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(5));

-- Location: LCCOMB_X23_Y30_N26
\uart_Rx|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~6_combout\ = (\uart_Rx|bit_pos\(1) & (\uart_Rx|bit_pos\(2) & (!\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y30_N20
\uart_Rx|scratch[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[6]~14_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|scratch[0]~1_combout\ & \uart_Rx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|scratch[0]~1_combout\,
	datac => \uart_Rx|Decoder0~6_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[6]~14_combout\);

-- Location: LCCOMB_X23_Y30_N4
\uart_Rx|scratch[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[6]~15_combout\ = (\uart_Rx|scratch[6]~14_combout\ & (\Rx~input_o\ & (\uart_Rx|state.RX_STATE_DATA~q\))) # (!\uart_Rx|scratch[6]~14_combout\ & (((\uart_Rx|scratch\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|scratch\(6),
	datad => \uart_Rx|scratch[6]~14_combout\,
	combout => \uart_Rx|scratch[6]~15_combout\);

-- Location: FF_X23_Y30_N5
\uart_Rx|scratch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(6));

-- Location: FF_X24_Y30_N9
\uart_Rx|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(6),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(6));

-- Location: LCCOMB_X23_Y30_N14
\uart_Rx|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|Decoder0~7_combout\ = (\uart_Rx|bit_pos\(1) & (\uart_Rx|bit_pos\(2) & (\uart_Rx|bit_pos\(0) & \uart_Rx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|bit_pos\(1),
	datab => \uart_Rx|bit_pos\(2),
	datac => \uart_Rx|bit_pos\(0),
	datad => \uart_Rx|Equal1~0_combout\,
	combout => \uart_Rx|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y30_N12
\uart_Rx|scratch[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[7]~16_combout\ = (\uart_Rx|scratch[0]~0_combout\) # ((\uart_Rx|scratch[0]~1_combout\ & \uart_Rx|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_Rx|scratch[0]~1_combout\,
	datac => \uart_Rx|Decoder0~7_combout\,
	datad => \uart_Rx|scratch[0]~0_combout\,
	combout => \uart_Rx|scratch[7]~16_combout\);

-- Location: LCCOMB_X23_Y30_N6
\uart_Rx|scratch[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_Rx|scratch[7]~17_combout\ = (\uart_Rx|scratch[7]~16_combout\ & (\Rx~input_o\ & (\uart_Rx|state.RX_STATE_DATA~q\))) # (!\uart_Rx|scratch[7]~16_combout\ & (((\uart_Rx|scratch\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \uart_Rx|state.RX_STATE_DATA~q\,
	datac => \uart_Rx|scratch\(7),
	datad => \uart_Rx|scratch[7]~16_combout\,
	combout => \uart_Rx|scratch[7]~17_combout\);

-- Location: FF_X23_Y30_N7
\uart_Rx|scratch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \uart_Rx|scratch[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|scratch\(7));

-- Location: FF_X24_Y30_N11
\uart_Rx|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \uart_Rx|scratch\(7),
	sload => VCC,
	ena => \uart_Rx|ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_Rx|data\(7));

-- Location: IOIBUF_X53_Y17_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

ww_Tx <= \Tx~output_o\;

ww_Tx_busy <= \Tx_busy~output_o\;

ww_ready <= \ready~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_Tx2 <= \Tx2~output_o\;
END structure;


