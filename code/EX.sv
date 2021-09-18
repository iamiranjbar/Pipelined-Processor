module EX(input CIn, EX_MEM_regWrite, MEM_WB_regWrite, input [1:0] selAddrOrDataOrShift, input[2:0] RdIn , RtIn , RsIn, EX_MEM_Rd, MEM_WB_Rd, input[4:0] funcIn,
  input[7:0] regReadData1In, regReadData2In, regWriteDataIn, ALUResIn, pureAddr,
  output logic zeroOut, COut, output logic[2:0] RdOut,
  output logic[7:0] writeDataOut , ALUResOut);
	logic selA, selB;
	logic [7:0] muxAOut, muxBOut;
	mux3to1#(.WORD_LENGTH(8)) ALUSrcAMux(.first(regReadData1In) , .second(ALUResIn) , .third(regWriteDataIn), .sel(SelA) , .out(muxAOut));
	mux3to1#(.WORD_LENGTH(8)) ALUSrcBMux(.first(regReadData2In) , .second(ALUResIn) , .third(regWriteDataIn), .sel(SelB) , .out(writeDataOut));
	mux3to1#(.WORD_LENGTH(8)) AddrOrData(.first(writeDataOut) , .second(pureAddr), .third({5'b00000,RtIn}), .sel(selAddrOrDataOrShift) , .out(muxBOut));
	ALU ALUUnit(.a(muxAOut), .b(muxBOut), .fun(funcIn), .cin(CIn), .result(ALUResOut), .zero(zeroOut), .cout(COut));
	forwardingUnit FU(.EX_MEM_regWrite(EX_MEM_regWrite), .MEM_WB_regWrite(MEM_WB_regWrite),
	  .ID_EX_Rt(RtIn), .ID_EX_Rs(RsIn), .EX_MEM_Rd(EX_MEM_Rd), .MEM_WB_Rd(MEM_WB_Rd), .selA(selA) , .selB(selB));
	assign RdOut = RdIn;
endmodule