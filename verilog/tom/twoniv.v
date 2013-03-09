`include "defs.v"

module twoniv
(
	output z,
	input a
);
wire y;

// LEGO.NET (285) - y : niv
assign y = a;

// LEGO.NET (286) - z : niv
assign z = y;
endmodule
