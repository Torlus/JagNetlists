`include "defs.v"

module and10
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
	input a_9
);
wire z1;
wire z2;

// VID.NET (425) - z1 : nd6
assign z1 = ~(a_0 & a_1 & a_2 & a_3 & a_4 & a_5);

// VID.NET (426) - z2 : nd4
assign z2 = ~(a_6 & a_7 & a_8 & a_9);

// VID.NET (427) - z : nr2
assign z = ~(z1 | z2);
endmodule
