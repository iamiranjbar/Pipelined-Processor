library verilog;
use verilog.vl_types.all;
entity control is
    port(
        func            : in     vl_logic_vector(4 downto 0);
        Z               : in     vl_logic;
        C               : in     vl_logic;
        rst             : in     vl_logic;
        ld_pc           : out    vl_logic;
        pcsrc           : out    vl_logic;
        push            : out    vl_logic;
        pop             : out    vl_logic;
        sel1_pc_input   : out    vl_logic;
        sel2_pc_input   : out    vl_logic;
        reg_write_en    : out    vl_logic;
        sel1_ALU_in     : out    vl_logic;
        sel2_ALU_in     : out    vl_logic;
        ldzero          : out    vl_logic;
        ldcarry         : out    vl_logic;
        sel_second_load : out    vl_logic;
        mem_write_en    : out    vl_logic;
        mem_read        : out    vl_logic;
        sel_data_RF_write: out    vl_logic
    );
end control;
