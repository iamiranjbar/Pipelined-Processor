module PC(input [11:0] in,input ld,clk,rst,output logic[11:0] out);
  always@(posedge clk,posedge rst)begin
    if(rst)out<=12'b0;
    else
      if(ld)out<=in;
      else out<=out+1;
  end
endmodule
