library verilog;
use verilog.vl_types.all;
entity mux12_3to1 is
    port(
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        c               : in     vl_logic_vector(11 downto 0);
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        \out\           : out    vl_logic_vector(11 downto 0)
    );
end mux12_3to1;
