module ID(input clk, rst, ID_EX_memRead, zeroIn, COut, 
  input [2:0] ID_EX_Rt,
  input[7:0] regWriteData, input[18:0] instructionIn, 
  input[11:0] PCPlus1In, 
  output logic IF_ID_Wr, zeroOut, CIn, ldPC, regWriteEn, output logic [2:0] Rd , Rt , Rs, PCSrc, output logic [4:0] funcOut,
  output logic[7:0] regReadData1, regReadData2, pureAddr, output logic[11:0] IDNewAddr, poppedAddr , jmpAddr);
	logic flushMuxSel,pushSig, popSig, ldZero, ldC;
	logic [11:0] extendedAddr;
	signEX signExt(.in(pureAddr),.out(extendedAddr));
	adder IDNewAddrAdder(.a(extendedAddr), .b(PCPlus1In), .out(IDNewAddr);
	register_file RF(.clk(clk), .rst(rst), .reg_write_en(regWriteEn), .reg_write_dest(Rd),
      .reg_write_data(regWriteData), .reg_read_addr_1(Rs),.reg_read_data_1(regReadData1),
      .reg_read_addr_2(regReadAddr2),.reg_read_data_2(Rt));
	//CU controller(.func(funcOut), .Z(zeroOut), .C(CIn), .rst(rst), 
	//  .ld_pc(ldPC), .pcsrc(PCSrc), .push(pushSig), .pop(popSig),.reg_write_en(regWriteEn),
	//  sel1_ALU_in,sel2_ALU_in, .ldzero(ldZero), .ldcarry(ldC), sel_second_load,mem_write_en,mem_read,sel_data_RF_write);
	//flushMux flushMuxUnit(.sel(flushMuxSel));
	//flushDetection FDUnit(.ID_EX_memRead(ID_EX_memRead), .Rs(Rs), .Rt(Rt),
	// .ID_EX_Rt(ID_EX_Rt), .flushMuxSel(flushMuxSel), .PCWr(ldPC), .IF_ID_Wr(IF_ID_Wr));
	Stack stack(.clk(clk), .reset(rst), .q(PCPlus1In), .d(poppedAddr), .push(pushSig), .pop(popSig));
	flipflop Z(.in(zeroIn), .ld(ldZero), .clk(clk), .rst(rst), .out(zeroOut));
  	flipflop C(.in(COut), .ld(ldC), .clk(clk), .rst(rst), .out(CIn));
	assign Rd = instructionIn[13:11];
	assign Rs = instructionIn[10:8];
	assign Rt = instructionIn[7:5];
	assign funcOut = instructionIn[18:14];
	assign jmpAddr = instructionIn[11:0];
	assign pureAddr = instructionIn[7:0];
endmodule