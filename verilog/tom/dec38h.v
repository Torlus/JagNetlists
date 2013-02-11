`include "defs.v"

module dec38h
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	input a,
	input b,
	input c
);
wire g;

// Output buffers
wire z_0_obuf;
wire z_1_obuf;
wire z_2_obuf;
wire z_3_obuf;
wire z_4_obuf;
wire z_5_obuf;
wire z_6_obuf;
wire z_7_obuf;


// Output buffers
assign z_0 = z_0_obuf;
assign z_1 = z_1_obuf;
assign z_2 = z_2_obuf;
assign z_3 = z_3_obuf;
assign z_4 = z_4_obuf;
assign z_5 = z_5_obuf;
assign z_6 = z_6_obuf;
assign z_7 = z_7_obuf;


// LEGO.NET (265) - g : tie0
assign g = 1'b0;

// LEGO.NET (266) - a : dec38gh
dec38gh a_inst
(
	.z_0(z_0_obuf), // IO
	.z_1(z_1_obuf), // IO
	.z_2(z_2_obuf), // IO
	.z_3(z_3_obuf), // IO
	.z_4(z_4_obuf), // IO
	.z_5(z_5_obuf), // IO
	.z_6(z_6_obuf), // IO
	.z_7(z_7_obuf), // IO
	.a(a), // IN
	.b(b), // IN
	.c(c), // IN
	.g(g)  // IN
);
endmodule
