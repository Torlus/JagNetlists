/* verilator lint_off LITENDIAN */
`include "defs.v"

module nd5
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4
);
wire qt;

// DUPLO.NET (488) - qt : an4
assign qt = a_0 & a_1 & a_2 & a_3;

// DUPLO.NET (489) - q : nd2
assign q = ~(a_4 & qt);
endmodule
/* verilator lint_on LITENDIAN */
