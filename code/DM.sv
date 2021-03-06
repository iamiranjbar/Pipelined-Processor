module data_memory  
 (  
      input                         clk,  
      // address input, shared by read and write port  
      input     [7:0]               mem_access_addr,  
      // write port  
      input     [7:0]               mem_write_data,  
      input                         mem_write_en,  
      input mem_read,  
      // read port  
      output     [7:0]               mem_read_data  
 );  
      integer i;  
      logic [7:0] ram [255:0];  
      //wire [7 : 0] ram_addr = mem_access_addr[8 : 1];  
      initial begin  
           for(i=0;i<256;i=i+1)
                if(i==100)ram[i] <= 8'b11111110;
                else if(i==101)ram[i] <= 8'b0;
                else if(i==102)ram[i] <= 8'b00000001;
                else if(i==103)ram[i] <= 8'b00000001;
                else if(i==119)ram[i] <= 8'b11111111;  
                else ram[i] <= 8'b0;  
      end  
      always @(posedge clk) begin  
           if (mem_write_en)  
                ram[mem_access_addr] <= mem_write_data;  
      end  
      assign mem_read_data = (mem_read==1'b1) ? ram[mem_access_addr]: 16'd0;   
 endmodule 
