/* verilator lint_off LITENDIAN */
`include "defs.v"

module nd10
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9
);
wire p;

// DUPLO.NET (523) - p : an8
assign p = a_0 & a_1 & a_2 & a_3 & a_4 & a_5 & a_6 & a_7;

// DUPLO.NET (524) - q : nd3
assign q = ~(p & a_8 & a_9);
endmodule
/* verilator lint_on LITENDIAN */
