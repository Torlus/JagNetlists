/* verilator lint_off LITENDIAN */
`include "defs.v"

module mx6
(
	output q,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input sel_0,
	input sel_1,
	input sel_2
);
wire lo4;
wire hi2;

// DUPLO.NET (436) - lo4 : mx4
mx4 lo4_inst
(
	.z /* OUT */ (lo4),
	.a0 /* IN */ (a_0),
	.a1 /* IN */ (a_1),
	.a2 /* IN */ (a_2),
	.a3 /* IN */ (a_3),
	.s0 /* IN */ (sel_0),
	.s1 /* IN */ (sel_1)
);

// DUPLO.NET (437) - hi2 : mx2
mx2 hi2_inst
(
	.z /* OUT */ (hi2),
	.a0 /* IN */ (a_4),
	.a1 /* IN */ (a_5),
	.s /* IN */ (sel_0)
);

// DUPLO.NET (438) - q : mx2
mx2 q_inst
(
	.z /* OUT */ (q),
	.a0 /* IN */ (lo4),
	.a1 /* IN */ (hi2),
	.s /* IN */ (sel_2)
);
endmodule
/* verilator lint_on LITENDIAN */
