`include "defs.v"

module fdsyncu
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


// DUPLO.NET (301) - qt : fd1e
fd1e qt_inst
(
	.q(qt), // OUT
	.qn(qb), // OUT
	.d(q_obuf), // IN
	.cp(clk), // IN
	.ti(d), // IN
	.te(ld)  // IN
);

// DUPLO.NET (302) - dummy : dummy

// DUPLO.NET (303) - q : nivu
assign q_obuf = qt;
endmodule