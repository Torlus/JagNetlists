`include "defs.v"

module sadd4
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input b_0,
	input b_1,
	input b_2,
	input b_3
);
wire gnd;
wire s_0;
wire s_1;
wire s_2;
wire s_3;
wire co_3;
wire overflowi;
wire overflow;

// Output buffers
wire z_0_obuf;
wire z_1_obuf;
wire z_2_obuf;
wire z_3_obuf;


// Output buffers
assign z_0 = z_0_obuf;
assign z_1 = z_1_obuf;
assign z_2 = z_2_obuf;
assign z_3 = z_3_obuf;


// LBUF.NET (252) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (253) - s0 : add4
add4 s0_inst
(
	.q_0(s_0), // OUT
	.q_1(s_1), // OUT
	.q_2(s_2), // OUT
	.q_3(s_3), // OUT
	.co(co_3), // OUT
	.a_0(a_0), // IN
	.a_1(a_1), // IN
	.a_2(a_2), // IN
	.a_3(a_3), // IN
	.b_0(b_0), // IN
	.b_1(b_1), // IN
	.b_2(b_2), // IN
	.b_3(b_3), // IN
	.ci(gnd)  // IN
);

// LBUF.NET (254) - overflowi : en
assign overflowi = ~(co_3 ^ b_3);

// LBUF.NET (255) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (256) - z[0-3] : mx2
mx2 z_from_0_to_3_inst_0
(
	.z(z_0_obuf), // OUT
	.a0(s_0), // IN
	.a1(co_3), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_3_inst_1
(
	.z(z_1_obuf), // OUT
	.a0(s_1), // IN
	.a1(co_3), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_3_inst_2
(
	.z(z_2_obuf), // OUT
	.a0(s_2), // IN
	.a1(co_3), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_3_inst_3
(
	.z(z_3_obuf), // OUT
	.a0(s_3), // IN
	.a1(co_3), // IN
	.s(overflow)  // IN
);
endmodule
