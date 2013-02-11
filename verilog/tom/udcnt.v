`include "defs.v"

module udcnt
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input up
);
wire d2;
wire d1;
wire q1;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (194) - q : fd1q
fd1q q_inst
(
	.q(q_obuf), // OUT
	.d(d2), // IN
	.cp(clk)  // IN
);

// LEGO.NET (195) - d2 : mx2
mx2 d2_inst
(
	.z(d2), // OUT
	.a0(d1), // IN
	.a1(d), // IN
	.s(ld)  // IN
);

// LEGO.NET (196) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (197) - q1 : en
assign q1 = ~(q_obuf ^ up);

// LEGO.NET (198) - co : an2
assign co_obuf = ci & q1;
endmodule
