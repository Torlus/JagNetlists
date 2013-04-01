/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_stlatchc
(
	output d1,
	input d,
	input clk,
	input en,
	input resl,
	input sys_clk // Generated
);
wire q;

// Output buffers
wire d1_obuf;


// Output buffers
assign d1 = d1_obuf;


// LEGO.NET (81) - d : mx2
mx2 d_inst
(
	.z /* OUT */ (d1_obuf),
	.a0 /* IN */ (q),
	.a1 /* IN */ (d),
	.s /* IN */ (en)
);

// LEGO.NET (82) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q),
	.d /* IN */ (d1_obuf),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
