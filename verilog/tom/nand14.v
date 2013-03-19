/* verilator lint_off LITENDIAN */
`include "defs.v"

module nand14
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e,
	input f,
	input g,
	input h,
	input i,
	input j,
	input k,
	input l,
	input m,
	input n
);
wire z0;
wire z1;
wire z2;
wire z3;

// ABUS.NET (507) - z0 : an4
assign z0 = a & b & c & d;

// ABUS.NET (508) - z1 : an4
assign z1 = e & f & g & h;

// ABUS.NET (509) - z2 : an4
assign z2 = i & j & k & l;

// ABUS.NET (510) - z3 : an2
assign z3 = m & n;

// ABUS.NET (511) - z : nd4p
assign z = ~(z0 & z1 & z2 & z3);
endmodule
/* verilator lint_on LITENDIAN */
