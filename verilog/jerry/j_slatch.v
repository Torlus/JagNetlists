/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_slatch
(
	output q,
	input d,
	input clk,
	input en,
	input sys_clk // Generated
);
wire d1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (22) - d : mx2
mx2 d_inst
(
	.z /* OUT */ (d1),
	.a0 /* IN */ (q_obuf),
	.a1 /* IN */ (d),
	.s /* IN */ (en)
);

// LEGO.NET (23) - q : fd1q
fd1q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
