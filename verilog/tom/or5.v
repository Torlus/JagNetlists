`include "defs.v"

module or5
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e
);
wire zero;

// DUPLO.NET (606) - zero : tie0
assign zero = 1'b0;

// DUPLO.NET (607) - gate : or6
assign z = a | b | c | d | e | zero;
endmodule
