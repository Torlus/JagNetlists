/* verilator lint_off LITENDIAN */
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

// LBUF.NET (258) - gnd : tie0
assign gnd = 1'b0;

// LBUF.NET (259) - s0 : add4
add4 s0_inst
(
	.q_0 /* OUT */ (s_0),
	.q_1 /* OUT */ (s_1),
	.q_2 /* OUT */ (s_2),
	.q_3 /* OUT */ (s_3),
	.co /* OUT */ (co_3),
	.a_0 /* IN */ (a_0),
	.a_1 /* IN */ (a_1),
	.a_2 /* IN */ (a_2),
	.a_3 /* IN */ (a_3),
	.b_0 /* IN */ (b_0),
	.b_1 /* IN */ (b_1),
	.b_2 /* IN */ (b_2),
	.b_3 /* IN */ (b_3),
	.ci /* IN */ (gnd)
);

// LBUF.NET (260) - overflowi : en
assign overflowi = ~(co_3 ^ b_3);

// LBUF.NET (261) - overflow : ivm
assign overflow = ~overflowi;

// LBUF.NET (262) - z[0-3] : mx2
mx2 z_from_0_to_3_inst_0
(
	.z /* OUT */ (z_0),
	.a0 /* IN */ (s_0),
	.a1 /* IN */ (co_3),
	.s /* IN */ (overflow)
);
mx2 z_from_0_to_3_inst_1
(
	.z /* OUT */ (z_1),
	.a0 /* IN */ (s_1),
	.a1 /* IN */ (co_3),
	.s /* IN */ (overflow)
);
mx2 z_from_0_to_3_inst_2
(
	.z /* OUT */ (z_2),
	.a0 /* IN */ (s_2),
	.a1 /* IN */ (co_3),
	.s /* IN */ (overflow)
);
mx2 z_from_0_to_3_inst_3
(
	.z /* OUT */ (z_3),
	.a0 /* IN */ (s_3),
	.a1 /* IN */ (co_3),
	.s /* IN */ (overflow)
);
endmodule
/* verilator lint_on LITENDIAN */
