`include "defs.v"

module tben
(
	output this,
	output inho,
	input bit,
	input inhi
);
wire bit_n;

// ARITH.NET (504) - inho : or2
assign inho = bit | inhi;

// ARITH.NET (505) - bit\ : iv
assign bit_n = ~bit;

// ARITH.NET (506) - this : nr2
assign this = ~(bit_n | inhi);
endmodule
