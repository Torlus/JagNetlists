`include "defs.v"

module an10
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
wire qt_0;
wire qt_1;
wire qt_2;
wire q_n;

// DUPLO.NET (90) - qt0 : nd4
assign qt_0 = ~(a_0 & a_1 & a_2 & a_3);

// DUPLO.NET (91) - qt1 : nd4
assign qt_1 = ~(a_4 & a_5 & a_6 & a_7);

// DUPLO.NET (92) - qt2 : nd2
assign qt_2 = ~(a_8 & a_9);

// DUPLO.NET (93) - q\ : or3
assign q_n = qt_0 | qt_1 | qt_2;

// DUPLO.NET (94) - q : iv
assign q = ~q_n;
endmodule
