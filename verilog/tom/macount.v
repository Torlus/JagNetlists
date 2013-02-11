`include "defs.v"

module macount
(
	output maddr_0,
	output maddr_1,
	output maddr_2,
	output maddr_3,
	output maddr_4,
	output maddr_5,
	output maddr_6,
	output maddr_7,
	output maddr_8,
	output maddr_9,
	input clk,
	input cnten,
	input cntld,
	input gpu_din_2,
	input gpu_din_3,
	input gpu_din_4,
	input gpu_din_5,
	input gpu_din_6,
	input gpu_din_7,
	input gpu_din_8,
	input gpu_din_9,
	input gpu_din_10,
	input gpu_din_11,
	input maddw,
	input mwidth_0,
	input mwidth_1,
	input mwidth_2,
	input mwidth_3
);
wire maddw_n;
wire inc_0;
wire inc_1;
wire inc_2;
wire inc_3;
wire sum_0;
wire carry_0;
wire sum_1;
wire sum_2;
wire sum_3;
wire carry_1;
wire carry_2;
wire carry_3;
wire sum_4;
wire sum_5;
wire sum_6;
wire sum_7;
wire sum_8;
wire carry_4;
wire carry_5;
wire carry_6;
wire carry_7;
wire carry_8;
wire sum_9;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;
wire cnti_6;
wire cnti_7;
wire cnti_8;
wire cnti_9;

// Output buffers
wire maddr_0_obuf;
wire maddr_1_obuf;
wire maddr_2_obuf;
wire maddr_3_obuf;
wire maddr_4_obuf;
wire maddr_5_obuf;
wire maddr_6_obuf;
wire maddr_7_obuf;
wire maddr_8_obuf;
wire maddr_9_obuf;


// Output buffers
assign maddr_0 = maddr_0_obuf;
assign maddr_1 = maddr_1_obuf;
assign maddr_2 = maddr_2_obuf;
assign maddr_3 = maddr_3_obuf;
assign maddr_4 = maddr_4_obuf;
assign maddr_5 = maddr_5_obuf;
assign maddr_6 = maddr_6_obuf;
assign maddr_7 = maddr_7_obuf;
assign maddr_8 = maddr_8_obuf;
assign maddr_9 = maddr_9_obuf;


// SYSTOLIC.NET (254) - maddw\ : iv
assign maddw_n = ~maddw;

// SYSTOLIC.NET (255) - inc[0] : or2
assign inc_0 = mwidth_0 | maddw_n;

// SYSTOLIC.NET (256) - inc[1-3] : an2
assign inc_1 = mwidth_1 & maddw;
assign inc_2 = mwidth_2 & maddw;
assign inc_3 = mwidth_3 & maddw;

// SYSTOLIC.NET (258) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s(sum_0), // OUT
	.co(carry_0), // OUT
	.a(maddr_0_obuf), // IN
	.b(inc_0)  // IN
);

// SYSTOLIC.NET (259) - sum[1-3] : fa1
fa1 sum_from_1_to_3_inst_0
(
	.s(sum_1), // OUT
	.co(carry_1), // OUT
	.ci(carry_0), // IN
	.a(maddr_1_obuf), // IN
	.b(inc_1)  // IN
);
fa1 sum_from_1_to_3_inst_1
(
	.s(sum_2), // OUT
	.co(carry_2), // OUT
	.ci(carry_1), // IN
	.a(maddr_2_obuf), // IN
	.b(inc_2)  // IN
);
fa1 sum_from_1_to_3_inst_2
(
	.s(sum_3), // OUT
	.co(carry_3), // OUT
	.ci(carry_2), // IN
	.a(maddr_3_obuf), // IN
	.b(inc_3)  // IN
);

// SYSTOLIC.NET (261) - sum[4-8] : ha1
ha1 sum_from_4_to_8_inst_0
(
	.s(sum_4), // OUT
	.co(carry_4), // OUT
	.a(carry_3), // IN
	.b(maddr_4_obuf)  // IN
);
ha1 sum_from_4_to_8_inst_1
(
	.s(sum_5), // OUT
	.co(carry_5), // OUT
	.a(carry_4), // IN
	.b(maddr_5_obuf)  // IN
);
ha1 sum_from_4_to_8_inst_2
(
	.s(sum_6), // OUT
	.co(carry_6), // OUT
	.a(carry_5), // IN
	.b(maddr_6_obuf)  // IN
);
ha1 sum_from_4_to_8_inst_3
(
	.s(sum_7), // OUT
	.co(carry_7), // OUT
	.a(carry_6), // IN
	.b(maddr_7_obuf)  // IN
);
ha1 sum_from_4_to_8_inst_4
(
	.s(sum_8), // OUT
	.co(carry_8), // OUT
	.a(carry_7), // IN
	.b(maddr_8_obuf)  // IN
);

// SYSTOLIC.NET (263) - sum[9] : eo
assign sum_9 = maddr_9_obuf ^ carry_8;

// SYSTOLIC.NET (265) - cnti[0-9] : mx4
mx4 cnti_from_0_to_9_inst_0
(
	.z(cnti_0), // OUT
	.a0(maddr_0_obuf), // IN
	.a1(sum_0), // IN
	.a2(gpu_din_2), // IN
	.a3(gpu_din_2), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_1
(
	.z(cnti_1), // OUT
	.a0(maddr_1_obuf), // IN
	.a1(sum_1), // IN
	.a2(gpu_din_3), // IN
	.a3(gpu_din_3), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_2
(
	.z(cnti_2), // OUT
	.a0(maddr_2_obuf), // IN
	.a1(sum_2), // IN
	.a2(gpu_din_4), // IN
	.a3(gpu_din_4), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_3
(
	.z(cnti_3), // OUT
	.a0(maddr_3_obuf), // IN
	.a1(sum_3), // IN
	.a2(gpu_din_5), // IN
	.a3(gpu_din_5), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_4
(
	.z(cnti_4), // OUT
	.a0(maddr_4_obuf), // IN
	.a1(sum_4), // IN
	.a2(gpu_din_6), // IN
	.a3(gpu_din_6), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_5
(
	.z(cnti_5), // OUT
	.a0(maddr_5_obuf), // IN
	.a1(sum_5), // IN
	.a2(gpu_din_7), // IN
	.a3(gpu_din_7), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_6
(
	.z(cnti_6), // OUT
	.a0(maddr_6_obuf), // IN
	.a1(sum_6), // IN
	.a2(gpu_din_8), // IN
	.a3(gpu_din_8), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_7
(
	.z(cnti_7), // OUT
	.a0(maddr_7_obuf), // IN
	.a1(sum_7), // IN
	.a2(gpu_din_9), // IN
	.a3(gpu_din_9), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_8
(
	.z(cnti_8), // OUT
	.a0(maddr_8_obuf), // IN
	.a1(sum_8), // IN
	.a2(gpu_din_10), // IN
	.a3(gpu_din_10), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_9_inst_9
(
	.z(cnti_9), // OUT
	.a0(maddr_9_obuf), // IN
	.a1(sum_9), // IN
	.a2(gpu_din_11), // IN
	.a3(gpu_din_11), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);

// SYSTOLIC.NET (269) - maddr[0-9] : fd1q
fd1q maddr_from_0_to_9_inst_0
(
	.q(maddr_0_obuf), // OUT
	.d(cnti_0), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_1
(
	.q(maddr_1_obuf), // OUT
	.d(cnti_1), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_2
(
	.q(maddr_2_obuf), // OUT
	.d(cnti_2), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_3
(
	.q(maddr_3_obuf), // OUT
	.d(cnti_3), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_4
(
	.q(maddr_4_obuf), // OUT
	.d(cnti_4), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_5
(
	.q(maddr_5_obuf), // OUT
	.d(cnti_5), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_6
(
	.q(maddr_6_obuf), // OUT
	.d(cnti_6), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_7
(
	.q(maddr_7_obuf), // OUT
	.d(cnti_7), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_8
(
	.q(maddr_8_obuf), // OUT
	.d(cnti_8), // IN
	.cp(clk)  // IN
);
fd1q maddr_from_0_to_9_inst_9
(
	.q(maddr_9_obuf), // OUT
	.d(cnti_9), // IN
	.cp(clk)  // IN
);
endmodule
