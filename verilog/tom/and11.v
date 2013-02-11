`include "defs.v"

module and11
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
	input a_9,
	input a_10
);
wire z1;
wire z2;

// Output buffers
wire z_obuf;


// Output buffers
assign z = z_obuf;


// VID.NET (433) - z1 : nd6
assign z1 = ~(a_0 & a_1 & a_2 & a_3 & a_4 & a_5);

// VID.NET (434) - z2 : nd6
assign z2 = ~(a_6 & a_7 & a_8 & a_9 & a_10 & a_10);

// VID.NET (435) - z : nr2
assign z_obuf = ~(z1 | z2);
endmodule