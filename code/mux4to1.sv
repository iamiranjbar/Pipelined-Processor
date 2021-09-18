module mux4to1#(parameter integer WORD_LENGTH)(first, second, third, forth, sel, out);
	input[WORD_LENGTH-1:0] first , second,third;
	input[1:0] sel;
	output [WORD_LENGTH-1:0] out;
	assign out = (sel == 2'b00) ? first : (sel == 2'b01) ? second : (sel == 2'b10) ? third : forth;
endmodule