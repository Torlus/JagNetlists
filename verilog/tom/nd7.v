/* verilator lint_off LITENDIAN */
`include "defs.v"

module nd7
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6
);
wire qt_0;
wire qt_1;

// DUPLO.NET (500) - qt0 : an3
assign qt_0 = a_0 & a_1 & a_2;

// DUPLO.NET (501) - qt1 : an4
assign qt_1 = a_3 & a_4 & a_5 & a_6;

// DUPLO.NET (502) - q : nd2
assign q = ~(qt_0 & qt_1);
endmodule
/* verilator lint_on LITENDIAN */
