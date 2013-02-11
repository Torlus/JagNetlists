`include "defs.v"

module dec38gh
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
	input c,
	input g
);
wire al;
wire bl;
wire cl;
wire gl;

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


// LEGO.NET (243) - al : ivh
assign al = ~a;

// LEGO.NET (244) - bl : ivh
assign bl = ~b;

// LEGO.NET (245) - cl : ivh
assign cl = ~c;

// LEGO.NET (246) - gl : ivh
assign gl = ~g;

// LEGO.NET (248) - z[0] : an4p
assign z_0_obuf = cl & bl & al & gl;

// LEGO.NET (249) - z[1] : an4p
assign z_1_obuf = cl & bl & a & gl;

// LEGO.NET (250) - z[2] : an4p
assign z_2_obuf = cl & b & al & gl;

// LEGO.NET (251) - z[3] : an4p
assign z_3_obuf = cl & b & a & gl;

// LEGO.NET (252) - z[4] : an4p
assign z_4_obuf = c & bl & al & gl;

// LEGO.NET (253) - z[5] : an4p
assign z_5_obuf = c & bl & a & gl;

// LEGO.NET (254) - z[6] : an4p
assign z_6_obuf = c & b & al & gl;

// LEGO.NET (255) - z[7] : an4p
assign z_7_obuf = c & b & a & gl;
endmodule
