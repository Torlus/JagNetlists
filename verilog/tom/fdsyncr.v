`include "defs.v"

module fdsyncr
(
	output q,
	input d,
	input ld,
	input clk,
	input rst_n
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (309) - q : fd2e
fd2e q_inst
(
	.q(q_obuf), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.cd(rst_n), // IN
	.ti(d), // IN
	.te(ld)  // IN
);

// DUPLO.NET (310) - dummy : dummy
endmodule
