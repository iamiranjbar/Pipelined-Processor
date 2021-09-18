library verilog;
use verilog.vl_types.all;
entity DP is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ld_pc           : in     vl_logic;
        pcsrc           : in     vl_logic;
        push            : in     vl_logic;
        pop             : in     vl_logic;
        sel1_pc_input   : in     vl_logic;
        sel2_pc_input   : in     vl_logic;
        reg_write_en    : in     vl_logic;
        sel1_ALU_in     : in     vl_logic;
        sel2_ALU_in     : in     vl_logic;
        ldzero          : in     vl_logic;
        ldcarry         : in     vl_logic;
        sel_second_load : in     vl_logic;
        mem_write_en    : in     vl_logic;
        mem_read        : in     vl_logic;
        sel_data_RF_write: in     vl_logic;
        Z_out           : out    vl_logic;
        C               : out    vl_logic;
        func            : out    vl_logic_vector(4 downto 0)
    );
end DP;
