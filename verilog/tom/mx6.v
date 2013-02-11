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
	.z(lo4), // OUT
	.a0(a_0), // IN
	.a1(a_1), // IN
	.a2(a_2), // IN
	.a3(a_3), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);

// DUPLO.NET (437) - hi2 : mx2
mx2 hi2_inst
(
	.z(hi2), // OUT
	.a0(a_4), // IN
	.a1(a_5), // IN
	.s(sel_0)  // IN
);

// DUPLO.NET (438) - q : mx2
mx2 q_inst
(
	.z(q), // OUT
	.a0(lo4), // IN
	.a1(hi2), // IN
	.s(sel_2)  // IN
);
endmodule
