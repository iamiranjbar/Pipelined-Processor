library verilog;
use verilog.vl_types.all;
entity Stack is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic_vector(11 downto 0);
        d               : in     vl_logic_vector(11 downto 0);
        push            : in     vl_logic;
        pop             : in     vl_logic
    );
end Stack;
