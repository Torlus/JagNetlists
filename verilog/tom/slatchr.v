`include "defs.v"

module slatchr
(
	output q,
	input d,
	input clk,
	input en,
	input resl
);
wire d1;
wire d2;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (48) - d1 : mx2
mx2 d1_inst
(
	.z /* OUT */ (d1),
	.a0 /* IN */ (q_obuf),
	.a1 /* IN */ (d),
	.s /* IN */ (en)
);

// LEGO.NET (49) - d2 : an2
assign d2 = d1 & resl;

// LEGO.NET (50) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d2),
	.cp /* IN */ (clk)
);
endmodule
