/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_nr32
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
	input a_25,
	input a_26,
	input a_27,
	input a_28,
	input a_29,
	input a_30,
	input a_31
);
wire qt_0;
wire qt_1;
wire qt_2;
wire qt_3;
wire qt_4;
wire qt_5;
wire qt_6;
wire qt_7;
wire qt_8;
wire qt_9;

// _DUPLO.NET (747) - qt0 : nr4
assign qt_0 = ~(a_0 | a_1 | a_2 | a_3);

// _DUPLO.NET (748) - qt1 : nr4
assign qt_1 = ~(a_4 | a_5 | a_6 | a_7);

// _DUPLO.NET (749) - qt2 : nr4
assign qt_2 = ~(a_8 | a_9 | a_10 | a_11);

// _DUPLO.NET (750) - qt3 : nr4
assign qt_3 = ~(a_12 | a_13 | a_14 | a_15);

// _DUPLO.NET (751) - qt4 : nr4
assign qt_4 = ~(a_16 | a_17 | a_18 | a_19);

// _DUPLO.NET (752) - qt5 : nr4
assign qt_5 = ~(a_20 | a_21 | a_22 | a_23);

// _DUPLO.NET (753) - qt6 : nr4
assign qt_6 = ~(a_24 | a_25 | a_26 | a_27);

// _DUPLO.NET (754) - qt7 : nr4
assign qt_7 = ~(a_28 | a_29 | a_30 | a_31);

// _DUPLO.NET (755) - qt8 : nd4
assign qt_8 = ~(qt_0 & qt_1 & qt_2 & qt_3);

// _DUPLO.NET (756) - qt9 : nd4
assign qt_9 = ~(qt_4 & qt_5 & qt_6 & qt_7);

// _DUPLO.NET (757) - q : nr2
assign q = ~(qt_8 | qt_9);
endmodule
/* verilator lint_on LITENDIAN */
