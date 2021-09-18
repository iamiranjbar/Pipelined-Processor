module mux2to1#(parameter integer WORD_LENGTH)(first , second , sel , out);
	input[WORD_LENGTH-1:0] first , second;
	input sel;
	output [WORD_LENGTH-1:0] out;
	assign out = (sel) ? second : first;
endmodule
