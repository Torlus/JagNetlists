`include "defs.v"

module stlatch
(
	output d1,
	input d,
	input clk,
	input en
);
wire q;

// Output buffers
wire d1_obuf;


// Output buffers
assign d1 = d1_obuf;


// LEGO.NET (74) - d : mx2
mx2 d_inst
(
	.z /* OUT */ (d1_obuf),
	.a0 /* IN */ (q),
	.a1 /* IN */ (d),
	.s /* IN */ (en)
);

// LEGO.NET (75) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q),
	.d /* IN */ (d1_obuf),
	.cp /* IN */ (clk)
);
endmodule
