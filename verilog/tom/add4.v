`include "defs.v"

module add4
(
	output q_0,
	output q_1,
	output q_2,
	output q_3,
	output co,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input ci
);

// DUPLO.NET (47) - add4 : fa4r
fa4r add4_inst
(
	.s0(q_0), // OUT
	.s1(q_1), // OUT
	.s2(q_2), // OUT
	.s3(q_3), // OUT
	.co(co), // OUT
	.ci(ci), // IN
	.a0(a_0), // IN
	.b0(b_0), // IN
	.a1(a_1), // IN
	.b1(b_1), // IN
	.a2(a_2), // IN
	.b2(b_2), // IN
	.a3(a_3), // IN
	.b3(b_3)  // IN
);
endmodule
