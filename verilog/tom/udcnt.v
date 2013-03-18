`include "defs.v"

module udcnt
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input up,
	input sys_clk // Generated
);
wire d2;
wire d1;
wire q1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (194) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d2),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);

// LEGO.NET (195) - d2 : mx2
mx2 d2_inst
(
	.z /* OUT */ (d2),
	.a0 /* IN */ (d1),
	.a1 /* IN */ (d),
	.s /* IN */ (ld)
);

// LEGO.NET (196) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (197) - q1 : en
assign q1 = ~(q_obuf ^ up);

// LEGO.NET (198) - co : an2
assign co = ci & q1;
endmodule
