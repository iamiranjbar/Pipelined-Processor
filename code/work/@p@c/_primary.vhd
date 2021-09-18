library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        \in\            : in     vl_logic_vector(11 downto 0);
        ld              : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(11 downto 0)
    );
end PC;
