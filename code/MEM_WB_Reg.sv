module EX_MEM_Reg(input zeroIn, COutIn, input[2:0] RdIn, input[7:0] writeDataIn, ALUResIn, 
  output logic zeroOut, COutOut, output logic[2:0] RdOut, output logic[7:0] writeDataOut , ALUResOut);
	always@(posedge clk,posedge rst)begin
    if(rst) begin
      zeroOut <= 1'b0; 
      COutOut <= 1'b0;
      writeDataOut <= 8'b0;
      ALUResOut <= 8'b0;
      RdOut <= 3'b0;
    end
    else begin
      zeroOut <= zeroIn; 
      COutOut <= COutIn;
      writeDataOut <= writeDataIn;
      ALUResOut <= ALUResIn;
      RdOut <= RdIn;
    end
  end
endmodule 