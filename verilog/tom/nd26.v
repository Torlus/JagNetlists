`include "defs.v"

module nd26
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
	input a_15,
	input a_16,
	input a_17,
	input a_18,
	input a_19,
	input a_20,
	input a_21,
	input a_22,
	input a_23,
	input a_24,
	input a_25
);
wire qt0;
wire qt1;
wire qt2;
wire qt3;

// DUPLO.NET (589) - qt0 : an8
assign qt0 = a_0 & a_1 & a_2 & a_3 & a_4 & a_5 & a_6 & a_7;

// DUPLO.NET (590) - qt1 : an8
assign qt1 = a_8 & a_9 & a_10 & a_11 & a_12 & a_13 & a_14 & a_15;

// DUPLO.NET (591) - qt2 : an8
assign qt2 = a_16 & a_17 & a_18 & a_19 & a_20 & a_21 & a_22 & a_23;

// DUPLO.NET (592) - qt3 : an2
assign qt3 = a_24 & a_25;

// DUPLO.NET (593) - q : nd4
assign q = ~(qt0 & qt1 & qt2 & qt3);
endmodule
