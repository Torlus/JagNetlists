/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_an5p
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4
);
wire qt_0;
wire qt_1;

// _DUPLO.NET (60) - qt0 : iv
assign qt_0 = ~a_0;

// _DUPLO.NET (61) - qt1 : nd4
assign qt_1 = ~(a_1 & a_2 & a_3 & a_4);

// _DUPLO.NET (62) - q : nr2p
assign q = ~(qt_0 | qt_1);
endmodule
/* verilator lint_on LITENDIAN */
