`include "defs.v"

module dncnt
(
	output q,
	output co,
	input d,
	input clk,
	input ci,
	input ld,
	input resl
);
wire d2;
wire d1;
wire ql;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (133) - q : fd2q
fd2q q_inst
(
	.q(q_obuf), // OUT
	.d(d2), // IN
	.cp(clk), // IN
	.cd(resl)  // IN
);

// LEGO.NET (134) - d2 : mx2
mx2 d2_inst
(
	.z(d2), // OUT
	.a0(d1), // IN
	.a1(d), // IN
	.s(ld)  // IN
);

// LEGO.NET (135) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (136) - ql : iv
assign ql = ~q_obuf;

// LEGO.NET (137) - co : an2
assign co_obuf = ci & ql;
endmodule
