`include "defs.v"

module upcnt1
(
	output q,
	output co,
	input clk,
	input ci,
	input resl
);
wire d1;

// Output buffers
wire q_obuf;
wire co_obuf;


// Output buffers
assign q = q_obuf;
assign co = co_obuf;


// LEGO.NET (173) - q : fd2q
fd2q q_inst
(
	.q(q_obuf), // OUT
	.d(d1), // IN
	.cp(clk), // IN
	.cd(resl)  // IN
);

// LEGO.NET (174) - d1 : eo
assign d1 = q_obuf ^ ci;

// LEGO.NET (175) - co : an2
assign co_obuf = ci & q_obuf;
endmodule
