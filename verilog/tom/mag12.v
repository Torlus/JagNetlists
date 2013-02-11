`include "defs.v"

module mag12
(
	output agb,
	output aeb,
	output alb,
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
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7,
	input b_8,
	input b_9,
	input b_10,
	input b_11
);
wire vcc;
wire gnd;
wire agb_0;
wire aeb_0;
wire alb_0;
wire agb_1;
wire aeb_1;
wire alb_1;

// Output buffers
wire agb_obuf;
wire aeb_obuf;
wire alb_obuf;


// Output buffers
assign agb = agb_obuf;
assign aeb = aeb_obuf;
assign alb = alb_obuf;


// OB.NET (736) - vcc : tie1
assign vcc = 1'b1;

// OB.NET (737) - gnd : tie0
assign gnd = 1'b0;

// OB.NET (739) - m0 : mag4
mag4 m0_inst
(
	.agb(agb_0), // OUT
	.aeb(aeb_0), // OUT
	.alb(alb_0), // OUT
	.agbi(gnd), // IN
	.aebi(vcc), // IN
	.albi(gnd), // IN
	.a3(a_11), // IN
	.b3(b_11), // IN
	.a2(a_10), // IN
	.b2(b_10), // IN
	.a1(a_9), // IN
	.b1(b_9), // IN
	.a0(a_8), // IN
	.b0(b_8)  // IN
);

// OB.NET (741) - m1 : mag4
mag4 m1_inst
(
	.agb(agb_1), // OUT
	.aeb(aeb_1), // OUT
	.alb(alb_1), // OUT
	.agbi(agb_0), // IN
	.aebi(aeb_0), // IN
	.albi(alb_0), // IN
	.a3(a_7), // IN
	.b3(b_7), // IN
	.a2(a_6), // IN
	.b2(b_6), // IN
	.a1(a_5), // IN
	.b1(b_5), // IN
	.a0(a_4), // IN
	.b0(b_4)  // IN
);

// OB.NET (743) - m2 : mag4
mag4 m2_inst
(
	.agb(agb_obuf), // OUT
	.aeb(aeb_obuf), // OUT
	.alb(alb_obuf), // OUT
	.agbi(agb_1), // IN
	.aebi(aeb_1), // IN
	.albi(alb_1), // IN
	.a3(a_3), // IN
	.b3(b_3), // IN
	.a2(a_2), // IN
	.b2(b_2), // IN
	.a1(a_1), // IN
	.b1(b_1), // IN
	.a0(a_0), // IN
	.b0(b_0)  // IN
);
endmodule
