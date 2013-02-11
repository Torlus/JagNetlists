`include "defs.v"

module slatchc
(
	output q,
	input d,
	input clk,
	input en,
	input resl
);
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (38) - q : fd2e
fd2e q_inst
(
	.q(q_obuf), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.cd(resl), // IN
	.ti(d), // IN
	.te(en)  // IN
);

// LEGO.NET (39) - dummy : dummy
endmodule
