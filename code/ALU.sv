module ALU(input[7:0] a,b, input[4:0] fun ,input cin, output logic [7:0] result,output zero,output logic cout);
  always @(*) 
  begin
  case(fun)
    5'b00000:{cout,result}=a+b;
    5'b00001:{cout,result}=a+b+cin;
    5'b00010:{cout,result}=a-b;
    5'b00011:{cout,result}=a-b-(~cin);
    5'b00100:begin 
      result=a&b;
      cout=1'b0;
    end
    5'b00101:begin 
      result=a|b;
      cout=1'b0;
    end
    5'b00110:begin 
      result=a^b;
      cout=1'b0;
    end
    5'b00111:begin 
      result=~(a&b);
      cout=1'b0;
    end
    5'b01000:{cout,result}=a+b;
    5'b01001:{cout,result}=a+b+cin;
    5'b01010:{cout,result}=a-b;
    5'b01011:{cout,result}=a-b-(~cin);
    5'b01100:begin 
      result=a&b;
      cout=1'b0;
    end
    5'b01101:begin 
      result=a|b;
      cout=1'b0;
    end
    5'b01110:begin 
      result=a^b;
      cout=1'b0;
    end
    5'b01111:begin 
      result=~(a&b);
      cout=1'b0;
    end
    5'b11000:begin 
      result=a<<b;
      cout=a[8-b];
    end
    5'b11001:begin 
      result=a>>b;
      cout=a[b];
    end
    5'b11010:begin
      //result = {a[7-b:0], a[7:8-b]};
      result=(a<<b | a>>(8-b));
      cout=a[8-b];
    end 
    5'b11011:begin
      //result = {a[b-1:0], a[7:b]};
      result=(a>>b | a<<(8-b));
      cout=a[b-1];
    end
    5'b10000:{cout,result}=a+b;
    5'b10001:{cout,result}=a+b; 
    endcase
    end
    assign zero = (result==8'd0) ? 1'b1: 1'b0;
endmodule
