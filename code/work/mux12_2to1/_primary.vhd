library verilog;
use verilog.vl_types.all;
entity mux12_2to1 is
    port(
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(11 downto 0)
    );
end mux12_2to1;
