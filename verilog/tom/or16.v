`include "defs.v"

module or16
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
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15
);
wire qt_0;
wire qt_1;
wire qt_2;
wire qt_3;

// DUPLO.NET (644) - qt0 : nr4
assign qt_0 = ~(a_0 | a_1 | a_2 | a_3);

// DUPLO.NET (645) - qt1 : nr4
assign qt_1 = ~(a_4 | a_5 | a_6 | a_7);

// DUPLO.NET (646) - qt2 : nr4
assign qt_2 = ~(a_8 | a_9 | a_10 | a_11);

// DUPLO.NET (647) - qt3 : nr4
assign qt_3 = ~(a_12 | a_13 | a_14 | a_15);

// DUPLO.NET (648) - q : nd4
assign q = ~(qt_0 & qt_1 & qt_2 & qt_3);
endmodule
