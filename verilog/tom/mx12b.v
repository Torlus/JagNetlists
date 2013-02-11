`include "defs.v"

module mx12b
(
	output q,
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
	input sel_0,
	input sel_1,
	input sel_2,
	input sel_3
);
wire low8;
wire hi4;
wire ena_n;

// DUPLO.NET (445) - low8 : mx8
mx8 low8_inst
(
	.z(low8), // OUT
	.a0(a_0), // IN
	.a1(a_1), // IN
	.a2(a_2), // IN
	.a3(a_3), // IN
	.a4(a_4), // IN
	.a5(a_5), // IN
	.a6(a_6), // IN
	.a7(a_7), // IN
	.s0(sel_0), // IN
	.s1(sel_1), // IN
	.s2(sel_2)  // IN
);

// DUPLO.NET (446) - hi4 : mx4
mx4 hi4_inst
(
	.z(hi4), // OUT
	.a0(a_8), // IN
	.a1(a_9), // IN
	.a2(a_10), // IN
	.a3(a_11), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);

// DUPLO.NET (447) - ena\ : an2
assign ena_n = sel_2 & sel_3;

// DUPLO.NET (448) - q : mx2g
mx2g q_inst
(
	.z(q), // OUT
	.a0(low8), // IN
	.a1(hi4), // IN
	.s(sel_3), // IN
	.gn(ena_n)  // IN
);
endmodule
