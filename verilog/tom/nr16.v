/* verilator lint_off LITENDIAN */
`include "defs.v"

module nr16
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
	input a_13,
	input a_14,
	input a_15
);
wire b;
wire c;
wire d;
wire e;

// DUPLO.NET (710) - gate1 : nr4
assign b = ~(a_0 | a_1 | a_2 | a_3);

// DUPLO.NET (711) - gate2 : nr4
assign c = ~(a_4 | a_5 | a_6 | a_7);

// DUPLO.NET (712) - gate3 : nr4
assign d = ~(a_8 | a_9 | a_10 | a_11);

// DUPLO.NET (713) - gate4 : nr4
assign e = ~(a_12 | a_13 | a_14 | a_15);

// DUPLO.NET (714) - z : an4
assign z = b & c & d & e;
endmodule
/* verilator lint_on LITENDIAN */
