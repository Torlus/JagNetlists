/* verilator lint_off LITENDIAN */
`include "defs.v"

module nr14
(
	output z,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13
);
wire zero;
wire y;

// DUPLO.NET (695) - zero : tie0
assign zero = 1'b0;

// DUPLO.NET (696) - gate1 : or8
assign y = a_0 | a_1 | a_2 | a_3 | a_4 | a_5 | a_6 | a_7;

// DUPLO.NET (697) - gate2 : nr8
assign z = ~(y | a_8 | a_9 | a_10 | a_11 | a_12 | a_13 | zero);
endmodule
/* verilator lint_on LITENDIAN */
