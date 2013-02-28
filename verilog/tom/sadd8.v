`include "defs.v"

module sadd8
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7
);
wire gnd;
wire s_0;
wire s_1;
wire s_2;
wire s_3;
wire co_3;
wire s_4;
wire s_5;
wire s_6;
wire s_7;
wire co_7;
wire overflowi;
wire overflow;
wire cob_7;

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


// LBUF.NET (274) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (275) - s0 : add4
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

// LBUF.NET (276) - s1 : add4
add4 s1_inst
(
	.q_0(s_4), // OUT
	.q_1(s_5), // OUT
	.q_2(s_6), // OUT
	.q_3(s_7), // OUT
	.co(co_7), // OUT
	.a_0(a_4), // IN
	.a_1(a_5), // IN
	.a_2(a_6), // IN
	.a_3(a_7), // IN
	.b_0(b_4), // IN
	.b_1(b_5), // IN
	.b_2(b_6), // IN
	.b_3(b_7), // IN
	.ci(co_3)  // IN
);

// LBUF.NET (277) - overflowi : en
assign overflowi = ~(co_7 ^ b_7);

// LBUF.NET (278) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (279) - cob[7] : nivm
assign cob_7 = co_7;

// LBUF.NET (280) - z[0-7] : mx2
mx2 z_from_0_to_7_inst_0
(
	.z(z_0_obuf), // OUT
	.a0(s_0), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_1
(
	.z(z_1_obuf), // OUT
	.a0(s_1), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_2
(
	.z(z_2_obuf), // OUT
	.a0(s_2), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_3
(
	.z(z_3_obuf), // OUT
	.a0(s_3), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_4
(
	.z(z_4_obuf), // OUT
	.a0(s_4), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_5
(
	.z(z_5_obuf), // OUT
	.a0(s_5), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_6
(
	.z(z_6_obuf), // OUT
	.a0(s_6), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
mx2 z_from_0_to_7_inst_7
(
	.z(z_7_obuf), // OUT
	.a0(s_7), // IN
	.a1(cob_7), // IN
	.s(overflow)  // IN
);
endmodule
