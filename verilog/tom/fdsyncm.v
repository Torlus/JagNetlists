`include "defs.v"

module fdsyncm
(
	output q,
	input d,
	input ld,
	input clk
);
wire qt;
wire qb;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (285) - qt : fd1e
fd1e qt_inst
(
	.q(qt), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.ti(d), // IN
	.te(ld)  // IN
);

// DUPLO.NET (286) - dummy : dummy

// DUPLO.NET (287) - q : nivm
assign q_obuf = qt;
endmodule
