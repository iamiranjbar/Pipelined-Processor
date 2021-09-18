module forwardingUnit(input EX_MEM_regWrite, MEM_WB_regWrite, 
  input[2:0] ID_EX_Rt, ID_EX_Rs, EX_MEM_Rd, MEM_WB_Rd, output logic[1:0] selA , selB);
	assign selA = (EX_MEM_regWrite == 1 &  EX_MEM_Rd == ID_EX_Rs) ? 2'b10 :
	 (MEM_WB_regWrite == 1 & MEM_WB_Rd == ID_EX_Rs & (EX_MEM_Rd != ID_EX_Rs | EX_MEM_regWrite == 0)) ? 2'b01 :
	 2'b00;
	assign selB = (EX_MEM_regWrite == 1 &  EX_MEM_Rd == ID_EX_Rt) ? 2'b10 :
	 (MEM_WB_regWrite == 1 & MEM_WB_Rd == ID_EX_Rt & (EX_MEM_Rd != ID_EX_Rt | EX_MEM_regWrite == 0)) ? 2'b01 :
	 2'b00;
endmodule