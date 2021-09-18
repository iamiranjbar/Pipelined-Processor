module IF_ID_reg(input clk, rst, writeEn, flush, input[11:0] PCPlus1In, input [18:0] instructionIn,
                output[11:0] PCPlus1Out, output [18:0] instructionOut);
  always@(posedge clk,posedge rst)begin
    if(rst or flush) begin
      PCPlus1Out<=12'b0;
      instructionOut<=19'b0;
    end
    else begin
      if (writeEn) begin
        PCPlus1Out <= PCPlus1In;
        instructionOut <= instructionIn;
      end
    end
  end
endmodule
