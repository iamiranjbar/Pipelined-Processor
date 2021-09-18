library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        fun             : in     vl_logic_vector(4 downto 0);
        cin             : in     vl_logic;
        result          : out    vl_logic_vector(7 downto 0);
        zero            : out    vl_logic;
        cout            : out    vl_logic
    );
end ALU;
