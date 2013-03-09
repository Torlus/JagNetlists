`include "defs.v"

module ack_pipe
(
	output latch,
	input latchd,
	input ack,
	input clk,
	input resetl
);
wire notack;
wire d0;
wire q;
wire d1;
wire d;

// OB.NET (683) - notack : iv
assign notack = ~ack;

// OB.NET (684) - d0 : nd2
assign d0 = ~(q & notack);

// OB.NET (685) - d1 : iv
assign d1 = ~latchd;

// OB.NET (686) - d : nd2
assign d = ~(d0 & d1);

// OB.NET (687) - q : fd2q
fd2q q_inst
(
	.q /* OUT */ (q),
	.d /* IN */ (d),
	.cp /* IN */ (clk),
	.cd /* IN */ (resetl)
);

// OB.NET (688) - latch : an2
assign latch = q & ack;
endmodule
