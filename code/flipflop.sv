module flipflop(input in,ld,clk,rst,output logic out);
  always@(posedge clk,posedge rst)begin
    if(rst)out<=1'b0;
    else
      if(ld)out<=in;
      else out<=out;
  end
endmodule
