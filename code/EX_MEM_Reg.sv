module EX_MEM_Reg(input[2:0] RdIn, input[7:0] readDataIn, ALUResIn,
  output logic[2:0] RdOut, output logic[7:0] readDataOut,ALUResOut);
	always@(posedge clk,posedge rst)begin
    if(rst) begin
      RdOut <= 3'b0;
      readDataOut <= 8'b0;
      ALUResOut <= 8'b0;
    end
    else begin
      RdOut <= RdIn;
      readDataOut <= readDataIn;
      ALUResOut <= ALUResIn;
    end
  end
endmodule 