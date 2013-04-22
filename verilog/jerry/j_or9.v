/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_or9
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e,
	input f,
	input g,
	input h,
	input i
);
wire y;

// _DUPLO.NET (620) - gate1 : or4
assign y = a | b | c | d;

// _DUPLO.NET (621) - gate2 : or6
assign z = y | e | f | g | h | i;
endmodule
/* verilator lint_on LITENDIAN */