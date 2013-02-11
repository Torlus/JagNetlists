`include "defs.v"

module clkgen
(
	output ramcs,
	input clk,
	input ena
);
wire ena_n;

// DUPLO.NET (115) - ena\ : iv
assign ena_n = ~ena;

// DUPLO.NET (116) - ramcs : or2x3
assign ramcs = clk | ena_n;
endmodule
