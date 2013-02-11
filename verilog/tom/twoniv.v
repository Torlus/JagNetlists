`include "defs.v"

module twoniv
(
	output z,
	input a
);
wire y;

// Output buffers
wire z_obuf;


// Output buffers
assign z = z_obuf;


// LEGO.NET (285) - y : niv
assign y = a;

// LEGO.NET (286) - z : niv
assign z_obuf = y;
endmodule
