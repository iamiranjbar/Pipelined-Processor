 module register_file
 (
      input                    clk,
      input                    rst,
      // write port
      input                    reg_write_en,
      input          [2:0]     reg_write_dest,
      input          [7:0]     reg_write_data,
      //read port 1
      input          [2:0]     reg_read_addr_1,
      output     logic     [7:0]     reg_read_data_1,
      //read port 2
      input          [2:0]     reg_read_addr_2,
      output      logic    [7:0]     reg_read_data_2
 );
      logic     [7:0]     reg_array [7:0];
      // write port
      //reg [2:0] i;
      always @ (posedge clk or posedge rst) begin
           if(rst) begin
                reg_array[0] <= 8'b0;
                reg_array[1] <= 8'b0;
                reg_array[2] <= 8'b0;
                reg_array[3] <= 8'b0;
                reg_array[4] <= 8'b0;
                reg_array[5] <= 8'b0;
                reg_array[6] <= 8'b0;
                reg_array[7] <= 8'b0;
           end
           else begin
                if(reg_write_en & reg_write_dest != 3'b000) begin
                     reg_array[reg_write_dest] <= reg_write_data;
                end
           end
      end
      always @ ( negedge clk ) begin
         reg_read_data_1 <= ( reg_read_addr_1 == 0)? 8'b0 : reg_array[reg_read_addr_1];
         reg_read_data_2 <= ( reg_read_addr_2 == 0)? 8'b0 : reg_array[reg_read_addr_2];
      end
 endmodule
