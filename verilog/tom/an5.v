/* verilator lint_off LITENDIAN */
`include "defs.v"

module an5
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

// DUPLO.NET (54) - qt0 : iv
assign qt_0 = ~a_0;

// DUPLO.NET (55) - qt1 : nd4
assign qt_1 = ~(a_1 & a_2 & a_3 & a_4);

// DUPLO.NET (56) - q : nr2
assign q = ~(qt_0 | qt_1);
endmodule
/* verilator lint_on LITENDIAN */
