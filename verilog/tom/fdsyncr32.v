`include "defs.v"

module fdsyncr32
(
	output[0:31] q;
	input[0:31] d;
	input ld,
	input clk,
	input rst_n
);
wire [0:31] qb;

// Output buffers
wire q_b0_obuf;
wire q_b1_obuf;
wire q_b2_obuf;
wire q_b3_obuf;
wire q_b4_obuf;
wire q_b5_obuf;
wire q_b6_obuf;
wire q_b7_obuf;
wire q_b8_obuf;
wire q_b9_obuf;
wire q_b10_obuf;
wire q_b11_obuf;
wire q_b12_obuf;
wire q_b13_obuf;
wire q_b14_obuf;
wire q_b15_obuf;
wire q_b16_obuf;
wire q_b17_obuf;
wire q_b18_obuf;
wire q_b19_obuf;
wire q_b20_obuf;
wire q_b21_obuf;
wire q_b22_obuf;
wire q_b23_obuf;
wire q_b24_obuf;
wire q_b25_obuf;
wire q_b26_obuf;
wire q_b27_obuf;
wire q_b28_obuf;
wire q_b29_obuf;
wire q_b30_obuf;
wire q_b31_obuf;


// Output buffers
assign q[0] = q_b0_obuf;
assign q[1] = q_b1_obuf;
assign q[2] = q_b2_obuf;
assign q[3] = q_b3_obuf;
assign q[4] = q_b4_obuf;
assign q[5] = q_b5_obuf;
assign q[6] = q_b6_obuf;
assign q[7] = q_b7_obuf;
assign q[8] = q_b8_obuf;
assign q[9] = q_b9_obuf;
assign q[10] = q_b10_obuf;
assign q[11] = q_b11_obuf;
assign q[12] = q_b12_obuf;
assign q[13] = q_b13_obuf;
assign q[14] = q_b14_obuf;
assign q[15] = q_b15_obuf;
assign q[16] = q_b16_obuf;
assign q[17] = q_b17_obuf;
assign q[18] = q_b18_obuf;
assign q[19] = q_b19_obuf;
assign q[20] = q_b20_obuf;
assign q[21] = q_b21_obuf;
assign q[22] = q_b22_obuf;
assign q[23] = q_b23_obuf;
assign q[24] = q_b24_obuf;
assign q[25] = q_b25_obuf;
assign q[26] = q_b26_obuf;
assign q[27] = q_b27_obuf;
assign q[28] = q_b28_obuf;
assign q[29] = q_b29_obuf;
assign q[30] = q_b30_obuf;
assign q[31] = q_b31_obuf;


// DUPLO.NET (321) - q : fd2e
fd2e q_inst_0
(
	.q(q_b0_obuf), // OUT
	.qn(qb[0]), // OUT
	.d(q_b0_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[0]), // IN
	.te(ld)  // IN
);
fd2e q_inst_1
(
	.q(q_b1_obuf), // OUT
	.qn(qb[1]), // OUT
	.d(q_b1_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[1]), // IN
	.te(ld)  // IN
);
fd2e q_inst_2
(
	.q(q_b2_obuf), // OUT
	.qn(qb[2]), // OUT
	.d(q_b2_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[2]), // IN
	.te(ld)  // IN
);
fd2e q_inst_3
(
	.q(q_b3_obuf), // OUT
	.qn(qb[3]), // OUT
	.d(q_b3_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[3]), // IN
	.te(ld)  // IN
);
fd2e q_inst_4
(
	.q(q_b4_obuf), // OUT
	.qn(qb[4]), // OUT
	.d(q_b4_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[4]), // IN
	.te(ld)  // IN
);
fd2e q_inst_5
(
	.q(q_b5_obuf), // OUT
	.qn(qb[5]), // OUT
	.d(q_b5_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[5]), // IN
	.te(ld)  // IN
);
fd2e q_inst_6
(
	.q(q_b6_obuf), // OUT
	.qn(qb[6]), // OUT
	.d(q_b6_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[6]), // IN
	.te(ld)  // IN
);
fd2e q_inst_7
(
	.q(q_b7_obuf), // OUT
	.qn(qb[7]), // OUT
	.d(q_b7_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[7]), // IN
	.te(ld)  // IN
);
fd2e q_inst_8
(
	.q(q_b8_obuf), // OUT
	.qn(qb[8]), // OUT
	.d(q_b8_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[8]), // IN
	.te(ld)  // IN
);
fd2e q_inst_9
(
	.q(q_b9_obuf), // OUT
	.qn(qb[9]), // OUT
	.d(q_b9_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[9]), // IN
	.te(ld)  // IN
);
fd2e q_inst_10
(
	.q(q_b10_obuf), // OUT
	.qn(qb[10]), // OUT
	.d(q_b10_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[10]), // IN
	.te(ld)  // IN
);
fd2e q_inst_11
(
	.q(q_b11_obuf), // OUT
	.qn(qb[11]), // OUT
	.d(q_b11_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[11]), // IN
	.te(ld)  // IN
);
fd2e q_inst_12
(
	.q(q_b12_obuf), // OUT
	.qn(qb[12]), // OUT
	.d(q_b12_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[12]), // IN
	.te(ld)  // IN
);
fd2e q_inst_13
(
	.q(q_b13_obuf), // OUT
	.qn(qb[13]), // OUT
	.d(q_b13_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[13]), // IN
	.te(ld)  // IN
);
fd2e q_inst_14
(
	.q(q_b14_obuf), // OUT
	.qn(qb[14]), // OUT
	.d(q_b14_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[14]), // IN
	.te(ld)  // IN
);
fd2e q_inst_15
(
	.q(q_b15_obuf), // OUT
	.qn(qb[15]), // OUT
	.d(q_b15_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[15]), // IN
	.te(ld)  // IN
);
fd2e q_inst_16
(
	.q(q_b16_obuf), // OUT
	.qn(qb[16]), // OUT
	.d(q_b16_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[16]), // IN
	.te(ld)  // IN
);
fd2e q_inst_17
(
	.q(q_b17_obuf), // OUT
	.qn(qb[17]), // OUT
	.d(q_b17_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[17]), // IN
	.te(ld)  // IN
);
fd2e q_inst_18
(
	.q(q_b18_obuf), // OUT
	.qn(qb[18]), // OUT
	.d(q_b18_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[18]), // IN
	.te(ld)  // IN
);
fd2e q_inst_19
(
	.q(q_b19_obuf), // OUT
	.qn(qb[19]), // OUT
	.d(q_b19_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[19]), // IN
	.te(ld)  // IN
);
fd2e q_inst_20
(
	.q(q_b20_obuf), // OUT
	.qn(qb[20]), // OUT
	.d(q_b20_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[20]), // IN
	.te(ld)  // IN
);
fd2e q_inst_21
(
	.q(q_b21_obuf), // OUT
	.qn(qb[21]), // OUT
	.d(q_b21_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[21]), // IN
	.te(ld)  // IN
);
fd2e q_inst_22
(
	.q(q_b22_obuf), // OUT
	.qn(qb[22]), // OUT
	.d(q_b22_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[22]), // IN
	.te(ld)  // IN
);
fd2e q_inst_23
(
	.q(q_b23_obuf), // OUT
	.qn(qb[23]), // OUT
	.d(q_b23_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[23]), // IN
	.te(ld)  // IN
);
fd2e q_inst_24
(
	.q(q_b24_obuf), // OUT
	.qn(qb[24]), // OUT
	.d(q_b24_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[24]), // IN
	.te(ld)  // IN
);
fd2e q_inst_25
(
	.q(q_b25_obuf), // OUT
	.qn(qb[25]), // OUT
	.d(q_b25_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[25]), // IN
	.te(ld)  // IN
);
fd2e q_inst_26
(
	.q(q_b26_obuf), // OUT
	.qn(qb[26]), // OUT
	.d(q_b26_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[26]), // IN
	.te(ld)  // IN
);
fd2e q_inst_27
(
	.q(q_b27_obuf), // OUT
	.qn(qb[27]), // OUT
	.d(q_b27_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[27]), // IN
	.te(ld)  // IN
);
fd2e q_inst_28
(
	.q(q_b28_obuf), // OUT
	.qn(qb[28]), // OUT
	.d(q_b28_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[28]), // IN
	.te(ld)  // IN
);
fd2e q_inst_29
(
	.q(q_b29_obuf), // OUT
	.qn(qb[29]), // OUT
	.d(q_b29_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[29]), // IN
	.te(ld)  // IN
);
fd2e q_inst_30
(
	.q(q_b30_obuf), // OUT
	.qn(qb[30]), // OUT
	.d(q_b30_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[30]), // IN
	.te(ld)  // IN
);
fd2e q_inst_31
(
	.q(q_b31_obuf), // OUT
	.qn(qb[31]), // OUT
	.d(q_b31_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d[31]), // IN
	.te(ld)  // IN
);

// DUPLO.NET (322) - dummy : dummy
endmodule
