/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_nd5p
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4
);
wire qt;

// _DUPLO.NET (493) - qt : an4
assign qt = a_0 & a_1 & a_2 & a_3;

// _DUPLO.NET (494) - q : nd2p
assign q = ~(a_4 & qt);
endmodule
/* verilator lint_on LITENDIAN */