module ID_EX_Reg(input clk, rst, input [2:0] RdIn , RtIn , RsIn, input[4:0] funcIn,
  input[7:0] regReadData1In, regReadData2In, pureAddrIn,
  output logic [2:0] RdOut , RtOut , RsOut, output logic [4:0] funcOut,
  output logic[7:0] regReadData1Out, regReadData2Out, pureAddrOut);
	always@(posedge clk,posedge rst)begin
    if(rst) begin
      RdOut <= 3'b0; 
      RtOut <= 3'b0;
      RsOut <= 3'b0;
      funcOut <= 5'b0;
      regReadData1Out <= 8'b0; 
      regReadData2Out <= 8'b0; 
      pureAddrOut <= 12'b0;
    end
    else begin
      RdOut <= RdIn; 
      RtOut <= RtIn;
      RsOut <= RsIn;
      funcOut <= funcIn;
      regReadData1Out <= regReadData1In; 
      regReadData2Out <= regReadData2In; 
      pureAddrOut <= pureAddrIn;
    end
  end
endmodule