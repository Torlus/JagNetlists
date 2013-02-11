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
	.z(d1_obuf), // OUT
	.a0(q), // IN
	.a1(d), // IN
	.s(en)  // IN
);

// LEGO.NET (75) - q : fd1q
fd1q q_inst
(
	.q(q), // OUT
	.d(d1_obuf), // IN
	.cp(clk)  // IN
);
endmodule
