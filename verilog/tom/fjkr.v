`include "defs.v"

module fjkr
(
	output q,
	output ql,
	input j,
	input k,
	input clk,
	input r
);
wire a;
wire b;
wire d;
wire e;

// Output buffers
wire q_obuf;
wire ql_obuf;


// Output buffers
assign q = q_obuf;
assign ql = ql_obuf;


// LEGO.NET (231) - a : nd2
assign a = ~(j & ql_obuf);

// LEGO.NET (232) - b : or2
assign b = k | ql_obuf;

// LEGO.NET (233) - d : nd2
assign d = ~(a & b);

// LEGO.NET (234) - e : an2
assign e = d & r;

// LEGO.NET (235) - q : fd1
fd1 q_inst
(
	.q(q_obuf), // OUT
	.qn(ql_obuf), // OUT
	.d(e), // IN
	.cp(clk)  // IN
);
endmodule
