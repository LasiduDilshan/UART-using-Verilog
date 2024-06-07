library verilog;
use verilog.vl_types.all;
entity receiver is
    generic(
        RX_STATE_START  : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        RX_STATE_DATA   : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        RX_STATE_STOP   : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        Rx              : in     vl_logic;
        Rx_en           : in     vl_logic;
        ready           : out    vl_logic;
        ready_clr       : in     vl_logic;
        clk_50m         : in     vl_logic;
        clken           : in     vl_logic;
        data            : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RX_STATE_START : constant is 1;
    attribute mti_svvh_generic_type of RX_STATE_DATA : constant is 1;
    attribute mti_svvh_generic_type of RX_STATE_STOP : constant is 1;
end receiver;
