module TB();
  logic Z,C,rst=1'b0,clk=1'b0,ld_pc,pcsrc,push,pop,sel1_pc_input,sel2_pc_input,reg_write_en,sel1_ALU_in,sel2_ALU_in,ldzero,ldcarry,sel_second_load,mem_write_en,mem_read,sel_data_RF_write;
  logic [4:0] func;
  control cc(func,Z,C,rst,ld_pc,pcsrc,push,pop,sel1_pc_input,sel2_pc_input,reg_write_en,sel1_ALU_in,sel2_ALU_in,ldzero,ldcarry,sel_second_load,mem_write_en,mem_read,sel_data_RF_write);    
  DP DD(clk,rst,ld_pc,pcsrc,push,pop,sel1_pc_input,sel2_pc_input,reg_write_en,sel1_ALU_in,sel2_ALU_in,ldzero,ldcarry,sel_second_load,mem_write_en,mem_read,sel_data_RF_write,Z,C,func);
  initial repeat (1000) #1000 clk=~clk;
  initial begin
    #50
    rst=~rst;
    #150
    rst=~rst;
  end
endmodule
