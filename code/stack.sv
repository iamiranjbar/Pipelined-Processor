module Stack (
	clk,
	reset,
	q,
	d,
	push,
	pop
);


	input                    clk;
	input                    reset;
	input      [11:0] d;
	output logic [11:0] q;
	input                    push;
	input                    pop;

	logic [2:0] ptr;
	logic [11:0] stack [7:0];

	always @(posedge clk) begin
		if (reset)
			ptr <= 0;
		else if (push)
			ptr <= ptr + 1;
		else if (pop)
			ptr <= ptr - 1;
	end

	always @(posedge clk) begin
		if (push || pop) begin
			if(push)
				stack[ptr] <= d;
      else
			 q <= stack[ptr - 1];
		end
	end

endmodule

