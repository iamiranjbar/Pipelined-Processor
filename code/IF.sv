module IF(input clk , rst , ldPC , input[1:0] instSel , input [11:0] IDNewAddr, popAddr,jmpAddr ,  output logic[18:0] instruction);
  logic [11:0] PCIn , PCOut , PCPlus1;
  PC PCUnit(.in(PCIn),.ld(ldPC),.clk(clk),.rst(rst),.out(PCOut));
  instMem instMemUnit(.pc(PCOut),.instruction(instruction));
  adder plus4Unit(.a(PCOut),.b(1),.out(PCPlus1));
  mux4to1#(.WORD_LENGTH(12)) PCMux(.first(PCPlus1) , .second(IDNewAddr) , .third(popAddr), .forth(jmpAddr), .sel(instSel) , .out(PCIn));
endmodule
