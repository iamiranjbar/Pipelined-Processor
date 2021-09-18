library verilog;
use verilog.vl_types.all;
entity flipflop is
    port(
        \in\            : in     vl_logic;
        ld              : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic
    );
end flipflop;
