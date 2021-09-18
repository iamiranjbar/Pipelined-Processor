module signEX(input[7:0] in,output logic[11:0] out);
  assign out=(in[7]==1'b1)?{4'b1,in}:{4'b0,in};
endmodule
