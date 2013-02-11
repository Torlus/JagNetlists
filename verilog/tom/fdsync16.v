`include "defs.v"

module fdsync16
(
	output[0:15] q;
	input[0:15] d;
	input ld,
	input clk
);
wire [0:15] qb;

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


// DUPLO.NET (266) - q : fd1e
fd1e q_inst_0
(
	.q(q_b0_obuf), // OUT
	.qn(qb[0]), // OUT
	.d(q_b0_obuf), // IN
	.cp(clk), // IN
	.ti(d[0]), // IN
	.te(ld)  // IN
);
fd1e q_inst_1
(
	.q(q_b1_obuf), // OUT
	.qn(qb[1]), // OUT
	.d(q_b1_obuf), // IN
	.cp(clk), // IN
	.ti(d[1]), // IN
	.te(ld)  // IN
);
fd1e q_inst_2
(
	.q(q_b2_obuf), // OUT
	.qn(qb[2]), // OUT
	.d(q_b2_obuf), // IN
	.cp(clk), // IN
	.ti(d[2]), // IN
	.te(ld)  // IN
);
fd1e q_inst_3
(
	.q(q_b3_obuf), // OUT
	.qn(qb[3]), // OUT
	.d(q_b3_obuf), // IN
	.cp(clk), // IN
	.ti(d[3]), // IN
	.te(ld)  // IN
);
fd1e q_inst_4
(
	.q(q_b4_obuf), // OUT
	.qn(qb[4]), // OUT
	.d(q_b4_obuf), // IN
	.cp(clk), // IN
	.ti(d[4]), // IN
	.te(ld)  // IN
);
fd1e q_inst_5
(
	.q(q_b5_obuf), // OUT
	.qn(qb[5]), // OUT
	.d(q_b5_obuf), // IN
	.cp(clk), // IN
	.ti(d[5]), // IN
	.te(ld)  // IN
);
fd1e q_inst_6
(
	.q(q_b6_obuf), // OUT
	.qn(qb[6]), // OUT
	.d(q_b6_obuf), // IN
	.cp(clk), // IN
	.ti(d[6]), // IN
	.te(ld)  // IN
);
fd1e q_inst_7
(
	.q(q_b7_obuf), // OUT
	.qn(qb[7]), // OUT
	.d(q_b7_obuf), // IN
	.cp(clk), // IN
	.ti(d[7]), // IN
	.te(ld)  // IN
);
fd1e q_inst_8
(
	.q(q_b8_obuf), // OUT
	.qn(qb[8]), // OUT
	.d(q_b8_obuf), // IN
	.cp(clk), // IN
	.ti(d[8]), // IN
	.te(ld)  // IN
);
fd1e q_inst_9
(
	.q(q_b9_obuf), // OUT
	.qn(qb[9]), // OUT
	.d(q_b9_obuf), // IN
	.cp(clk), // IN
	.ti(d[9]), // IN
	.te(ld)  // IN
);
fd1e q_inst_10
(
	.q(q_b10_obuf), // OUT
	.qn(qb[10]), // OUT
	.d(q_b10_obuf), // IN
	.cp(clk), // IN
	.ti(d[10]), // IN
	.te(ld)  // IN
);
fd1e q_inst_11
(
	.q(q_b11_obuf), // OUT
	.qn(qb[11]), // OUT
	.d(q_b11_obuf), // IN
	.cp(clk), // IN
	.ti(d[11]), // IN
	.te(ld)  // IN
);
fd1e q_inst_12
(
	.q(q_b12_obuf), // OUT
	.qn(qb[12]), // OUT
	.d(q_b12_obuf), // IN
	.cp(clk), // IN
	.ti(d[12]), // IN
	.te(ld)  // IN
);
fd1e q_inst_13
(
	.q(q_b13_obuf), // OUT
	.qn(qb[13]), // OUT
	.d(q_b13_obuf), // IN
	.cp(clk), // IN
	.ti(d[13]), // IN
	.te(ld)  // IN
);
fd1e q_inst_14
(
	.q(q_b14_obuf), // OUT
	.qn(qb[14]), // OUT
	.d(q_b14_obuf), // IN
	.cp(clk), // IN
	.ti(d[14]), // IN
	.te(ld)  // IN
);
fd1e q_inst_15
(
	.q(q_b15_obuf), // OUT
	.qn(qb[15]), // OUT
	.d(q_b15_obuf), // IN
	.cp(clk), // IN
	.ti(d[15]), // IN
	.te(ld)  // IN
);

// DUPLO.NET (267) - dummy : dummy
endmodule
