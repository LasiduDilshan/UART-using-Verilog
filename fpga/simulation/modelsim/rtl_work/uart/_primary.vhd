library verilog;
use verilog.vl_types.all;
entity uart is
    port(
        data_in         : in     vl_logic_vector(7 downto 0);
        Tx_en           : in     vl_logic;
        clear           : in     vl_logic;
        clk_50m         : in     vl_logic;
        Tx              : out    vl_logic;
        Tx_busy         : out    vl_logic;
        Rx              : in     vl_logic;
        Rx_en           : in     vl_logic;
        ready           : out    vl_logic;
        ready_clr       : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        LEDR            : out    vl_logic_vector(7 downto 0);
        Tx2             : out    vl_logic
    );
end uart;
