`include "defs.v"

module dncnts
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input resl
);
wire d3;
wire d2;
wire d1;
wire ql;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (147) - q : fd1q
fd1q q_inst
(
	.q(q_obuf), // OUT
	.d(d3), // IN
	.cp(clk)  // IN
);

// LEGO.NET (148) - d3 : an2
assign d3 = d2 & resl;

// LEGO.NET (149) - d2 : mx2
mx2 d2_inst
(
	.z(d2), // OUT
	.a0(d1), // IN
	.a1(d), // IN
	.s(ld)  // IN
);

// LEGO.NET (150) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (151) - ql : iv
assign ql = ~q_obuf;

// LEGO.NET (152) - co : an2
assign co_obuf = ci & ql;
endmodule
