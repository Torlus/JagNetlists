`include "defs.v"

module fdsync6
(
	output[0:5] q;
	input[0:5] d;
	input ld,
	input clk
);
wire [0:5] qb;

// Output buffers
wire q_b0_obuf;
wire q_b1_obuf;
wire q_b2_obuf;
wire q_b3_obuf;
wire q_b4_obuf;
wire q_b5_obuf;


// Output buffers
assign q[0] = q_b0_obuf;
assign q[1] = q_b1_obuf;
assign q[2] = q_b2_obuf;
assign q[3] = q_b3_obuf;
assign q[4] = q_b4_obuf;
assign q[5] = q_b5_obuf;


// DUPLO.NET (260) - q : fd1e
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

// DUPLO.NET (261) - dummy : dummy
endmodule
