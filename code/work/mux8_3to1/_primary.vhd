library verilog;
use verilog.vl_types.all;
entity mux8_3to1 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        sel1            : in     vl_logic;
        sel2            : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end mux8_3to1;
