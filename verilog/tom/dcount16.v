`include "defs.v"

module dcount16
(
	output[0:15] count;
	input[0:15] data;
	input load,
	input ena,
	input clk
);
wire cnti_0;
wire count_0;
wire cnti_1;
wire cry_1;
wire count_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;
wire cnti_6;
wire cnti_7;
wire cnti_8;
wire cnti_9;
wire cnti_10;
wire cnti_11;
wire cnti_12;
wire cnti_13;
wire cnti_14;
wire cry_2;
wire cry_3;
wire cry_4;
wire cry_5;
wire cry_6;
wire cry_7;
wire cry_8;
wire cry_9;
wire cry_10;
wire cry_11;
wire cry_12;
wire cry_13;
wire cry_14;
wire count_2;
wire count_3;
wire count_4;
wire count_5;
wire count_6;
wire count_7;
wire count_8;
wire count_9;
wire count_10;
wire count_11;
wire count_12;
wire count_13;
wire count_14;
wire cnti_15;
wire count_15;
wire cntj_0;
wire cntj_1;
wire cntj_2;
wire cntj_3;
wire cntj_4;
wire cntj_5;
wire cntj_6;
wire cntj_7;
wire cntj_8;
wire cntj_9;
wire cntj_10;
wire cntj_11;
wire cntj_12;
wire cntj_13;
wire cntj_14;
wire cntj_15;

// DUPLO.NET (773) - cnti[0] : iv
assign cnti_0 = ~count_0;

// DUPLO.NET (774) - cnti[1] : hs1
hs1 cnti_index_1_inst
(
	.q(cnti_1), // OUT
	.co(cry_1), // OUT
	.a(count_1), // IN
	.ci(count_0)  // IN
);

// DUPLO.NET (775) - cnti[2-14] : hs1
hs1 cnti_from_2_to_14_inst_0
(
	.q(cnti_2), // OUT
	.co(cry_2), // OUT
	.a(count_2), // IN
	.ci(cry_1)  // IN
);
hs1 cnti_from_2_to_14_inst_1
(
	.q(cnti_3), // OUT
	.co(cry_3), // OUT
	.a(count_3), // IN
	.ci(cry_2)  // IN
);
hs1 cnti_from_2_to_14_inst_2
(
	.q(cnti_4), // OUT
	.co(cry_4), // OUT
	.a(count_4), // IN
	.ci(cry_3)  // IN
);
hs1 cnti_from_2_to_14_inst_3
(
	.q(cnti_5), // OUT
	.co(cry_5), // OUT
	.a(count_5), // IN
	.ci(cry_4)  // IN
);
hs1 cnti_from_2_to_14_inst_4
(
	.q(cnti_6), // OUT
	.co(cry_6), // OUT
	.a(count_6), // IN
	.ci(cry_5)  // IN
);
hs1 cnti_from_2_to_14_inst_5
(
	.q(cnti_7), // OUT
	.co(cry_7), // OUT
	.a(count_7), // IN
	.ci(cry_6)  // IN
);
hs1 cnti_from_2_to_14_inst_6
(
	.q(cnti_8), // OUT
	.co(cry_8), // OUT
	.a(count_8), // IN
	.ci(cry_7)  // IN
);
hs1 cnti_from_2_to_14_inst_7
(
	.q(cnti_9), // OUT
	.co(cry_9), // OUT
	.a(count_9), // IN
	.ci(cry_8)  // IN
);
hs1 cnti_from_2_to_14_inst_8
(
	.q(cnti_10), // OUT
	.co(cry_10), // OUT
	.a(count_10), // IN
	.ci(cry_9)  // IN
);
hs1 cnti_from_2_to_14_inst_9
(
	.q(cnti_11), // OUT
	.co(cry_11), // OUT
	.a(count_11), // IN
	.ci(cry_10)  // IN
);
hs1 cnti_from_2_to_14_inst_10
(
	.q(cnti_12), // OUT
	.co(cry_12), // OUT
	.a(count_12), // IN
	.ci(cry_11)  // IN
);
hs1 cnti_from_2_to_14_inst_11
(
	.q(cnti_13), // OUT
	.co(cry_13), // OUT
	.a(count_13), // IN
	.ci(cry_12)  // IN
);
hs1 cnti_from_2_to_14_inst_12
(
	.q(cnti_14), // OUT
	.co(cry_14), // OUT
	.a(count_14), // IN
	.ci(cry_13)  // IN
);

// DUPLO.NET (777) - cnti[15] : en
assign cnti_15 = ~(count_15 ^ cry_14);

// DUPLO.NET (778) - cntj[0-15] : mx4
mx4 cntj_from_0_to_15_inst_0
(
	.z(cntj_0), // OUT
	.a0(count_0), // IN
	.a1(cnti_0), // IN
	.a2(data[0]), // IN
	.a3(data[0]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_1
(
	.z(cntj_1), // OUT
	.a0(count_1), // IN
	.a1(cnti_1), // IN
	.a2(data[1]), // IN
	.a3(data[1]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_2
(
	.z(cntj_2), // OUT
	.a0(count_2), // IN
	.a1(cnti_2), // IN
	.a2(data[2]), // IN
	.a3(data[2]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_3
(
	.z(cntj_3), // OUT
	.a0(count_3), // IN
	.a1(cnti_3), // IN
	.a2(data[3]), // IN
	.a3(data[3]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_4
(
	.z(cntj_4), // OUT
	.a0(count_4), // IN
	.a1(cnti_4), // IN
	.a2(data[4]), // IN
	.a3(data[4]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_5
(
	.z(cntj_5), // OUT
	.a0(count_5), // IN
	.a1(cnti_5), // IN
	.a2(data[5]), // IN
	.a3(data[5]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_6
(
	.z(cntj_6), // OUT
	.a0(count_6), // IN
	.a1(cnti_6), // IN
	.a2(data[6]), // IN
	.a3(data[6]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_7
(
	.z(cntj_7), // OUT
	.a0(count_7), // IN
	.a1(cnti_7), // IN
	.a2(data[7]), // IN
	.a3(data[7]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_8
(
	.z(cntj_8), // OUT
	.a0(count_8), // IN
	.a1(cnti_8), // IN
	.a2(data[8]), // IN
	.a3(data[8]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_9
(
	.z(cntj_9), // OUT
	.a0(count_9), // IN
	.a1(cnti_9), // IN
	.a2(data[9]), // IN
	.a3(data[9]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_10
(
	.z(cntj_10), // OUT
	.a0(count_10), // IN
	.a1(cnti_10), // IN
	.a2(data[10]), // IN
	.a3(data[10]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_11
(
	.z(cntj_11), // OUT
	.a0(count_11), // IN
	.a1(cnti_11), // IN
	.a2(data[11]), // IN
	.a3(data[11]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_12
(
	.z(cntj_12), // OUT
	.a0(count_12), // IN
	.a1(cnti_12), // IN
	.a2(data[12]), // IN
	.a3(data[12]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_13
(
	.z(cntj_13), // OUT
	.a0(count_13), // IN
	.a1(cnti_13), // IN
	.a2(data[13]), // IN
	.a3(data[13]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_14
(
	.z(cntj_14), // OUT
	.a0(count_14), // IN
	.a1(cnti_14), // IN
	.a2(data[14]), // IN
	.a3(data[14]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);
mx4 cntj_from_0_to_15_inst_15
(
	.z(cntj_15), // OUT
	.a0(count_15), // IN
	.a1(cnti_15), // IN
	.a2(data[15]), // IN
	.a3(data[15]), // IN
	.s0(ena), // IN
	.s1(load)  // IN
);

// DUPLO.NET (780) - count[0-15] : fd1q
fd1q count_from_0_to_15_inst_0
(
	.q(count_0), // OUT
	.d(cntj_0), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_1
(
	.q(count_1), // OUT
	.d(cntj_1), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_2
(
	.q(count_2), // OUT
	.d(cntj_2), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_3
(
	.q(count_3), // OUT
	.d(cntj_3), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_4
(
	.q(count_4), // OUT
	.d(cntj_4), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_5
(
	.q(count_5), // OUT
	.d(cntj_5), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_6
(
	.q(count_6), // OUT
	.d(cntj_6), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_7
(
	.q(count_7), // OUT
	.d(cntj_7), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_8
(
	.q(count_8), // OUT
	.d(cntj_8), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_9
(
	.q(count_9), // OUT
	.d(cntj_9), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_10
(
	.q(count_10), // OUT
	.d(cntj_10), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_11
(
	.q(count_11), // OUT
	.d(cntj_11), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_12
(
	.q(count_12), // OUT
	.d(cntj_12), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_13
(
	.q(count_13), // OUT
	.d(cntj_13), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_14
(
	.q(count_14), // OUT
	.d(cntj_14), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_15_inst_15
(
	.q(count_15), // OUT
	.d(cntj_15), // IN
	.cp(clk)  // IN
);

// DUPLO.NET (781) - count : join
assign count[0] = count_0;
assign count[1] = count_1;
assign count[2] = count_2;
assign count[3] = count_3;
assign count[4] = count_4;
assign count[5] = count_5;
assign count[6] = count_6;
assign count[7] = count_7;
assign count[8] = count_8;
assign count[9] = count_9;
assign count[10] = count_10;
assign count[11] = count_11;
assign count[12] = count_12;
assign count[13] = count_13;
assign count[14] = count_14;
assign count[15] = count_15;
endmodule
