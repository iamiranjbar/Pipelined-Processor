module MEM(input clk, memWriteEn, memReadEn, input [2:0] RdIn,
  input[7:0] ALUResIn, writeDataIn, output logic[2:0] RdOut,
  output logic[7:0] readDataOut,ALUResOut);
	data_memory DM(.clk(clk), .mem_access_addr(ALUResIn), .mem_write_data(writeDataIn),  
      .mem_write_en(memWriteEn), .mem_read(memReadEn), .mem_read_data(readDataOut)); 
	assign ALUResOut = ALUResIn;
	assign RdOut = RdIn;
endmodule