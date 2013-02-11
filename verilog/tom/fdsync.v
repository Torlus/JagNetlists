`include "defs.v"

module fdsync
(
	output q,
	input d,
	input ld,
	input clk
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (254) - q : fd1e
fd1e q_inst
(
	.q(q_obuf), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.ti(d), // IN
	.te(ld)  // IN
);

// DUPLO.NET (255) - dummy : dummy
endmodule
