`include "defs.v"

module slatch
(
	output q,
	input d,
	input clk,
	input en
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (25) - q : fd1e
fd1e q_inst
(
	.q(q_obuf), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.ti(d), // IN
	.te(en)  // IN
);

// LEGO.NET (26) - dummy : dummy
endmodule
