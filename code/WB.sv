module WB(input dataBackSel, input[2:0] Rdin, input[7:0] readDataIn, ALUResIn
  output logic[2:0] RdOut, output logic[7:0] dataBack);
	mux2to1#(.WORD_LENGTH(8)) finalMux(.first(readDataIn) , .second(ALUResIn) , .sel(dataBackSel) , .out(dataBack));
	assign RdOut = RdIn;
endmodule