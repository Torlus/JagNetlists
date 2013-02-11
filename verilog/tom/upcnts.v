`include "defs.v"

module upcnts
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input res
);
wire d1;
wire d2;
wire d3;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (110) - d1 : eo
assign d1 = ci ^ q_obuf;

// LEGO.NET (111) - d2 : mxi2
mxi2 d2_inst
(
	.z(d2), // OUT
	.a0(d1), // IN
	.a1(d), // IN
	.s(ld)  // IN
);

// LEGO.NET (112) - d3 : nr2
assign d3 = ~(res | d2);

// LEGO.NET (113) - q : fd1q
fd1q q_inst
(
	.q(q_obuf), // OUT
	.d(d3), // IN
	.cp(clk)  // IN
);

// LEGO.NET (114) - co : an2
assign co_obuf = ci & q_obuf;
endmodule
