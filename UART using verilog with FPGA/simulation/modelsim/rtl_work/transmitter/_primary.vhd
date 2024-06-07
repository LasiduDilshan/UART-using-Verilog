library verilog;
use verilog.vl_types.all;
entity transmitter is
    generic(
        TX_STATE_IDLE   : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        TX_STATE_START  : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        TX_STATE_DATA   : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        TX_STATE_STOP   : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        data_in         : in     vl_logic_vector(7 downto 0);
        Tx_en           : in     vl_logic;
        clk_50m         : in     vl_logic;
        clken           : in     vl_logic;
        Tx              : out    vl_logic;
        Tx_busy         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TX_STATE_IDLE : constant is 1;
    attribute mti_svvh_generic_type of TX_STATE_START : constant is 1;
    attribute mti_svvh_generic_type of TX_STATE_DATA : constant is 1;
    attribute mti_svvh_generic_type of TX_STATE_STOP : constant is 1;
end transmitter;
