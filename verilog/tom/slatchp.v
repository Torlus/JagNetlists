`include "defs.v"

module slatchp
(
	output q,
	input d,
	input clk,
	input en,
	input setl
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (64) - q : fd4e
fd4e q_inst
(
	.q(q_obuf), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.sd(setl), // IN
	.ti(d), // IN
	.te(en)  // IN
);

// LEGO.NET (65) - dummy : dummy
endmodule
