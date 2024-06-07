library verilog;
use verilog.vl_types.all;
entity baudrate is
    generic(
        RX_ACC_MAX      : integer := 27;
        TX_ACC_MAX      : integer := 434;
        RX_ACC_WIDTH    : vl_notype;
        TX_ACC_WIDTH    : vl_notype
    );
    port(
        clk_50m         : in     vl_logic;
        Rxclk_en        : out    vl_logic;
        Txclk_en        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of RX_ACC_MAX : constant is 1;
    attribute mti_svvh_generic_type of TX_ACC_MAX : constant is 1;
    attribute mti_svvh_generic_type of RX_ACC_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of TX_ACC_WIDTH : constant is 3;
end baudrate;
