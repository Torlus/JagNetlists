/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_slatchp
(
	output q,
	input d,
	input clk,
	input en,
	input setl,
	input sys_clk // Generated
);
wire d1;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// LEGO.NET (59) - d : mx2
mx2 d_inst
(
	.z /* OUT */ (d1),
	.a0 /* IN */ (q_obuf),
	.a1 /* IN */ (d),
	.s /* IN */ (en)
);

// LEGO.NET (60) - q : fd4q
fd4q q_inst
(
	.q /* OUT */ (q_obuf),
	.d /* IN */ (d1),
	.cp /* IN */ (clk),
	.sd /* IN */ (setl),
	.sys_clk(sys_clk) // Generated
);
endmodule
/* verilator lint_on LITENDIAN */
