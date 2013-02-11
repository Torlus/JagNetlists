`include "defs.v"

module tbenw
(
	output this,
	input bit,
	input inhi
);
wire bit_n;

// ARITH.NET (516) - bit\ : iv
assign bit_n = ~bit;

// ARITH.NET (517) - this : nr2
assign this = ~(bit_n | inhi);
endmodule
