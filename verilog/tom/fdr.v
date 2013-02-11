`include "defs.v"

module fdr
(
	output q,
	output ql,
	input d,
	input clk,
	input resl
);
wire d1;

// Output buffers
wire q_obuf;
wire ql_obuf;


// Output buffers
assign q = q_obuf;
assign ql = ql_obuf;


// LEGO.NET (11) - d : an2
assign d1 = d & resl;

// LEGO.NET (12) - q : fd1
fd1 q_inst
(
	.q(q_obuf), // OUT
	.qn(ql_obuf), // OUT
	.d(d1), // IN
	.cp(clk)  // IN
);
endmodule
