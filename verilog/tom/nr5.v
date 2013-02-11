`include "defs.v"

module nr5
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e
);
wire zero;

// Output buffers
wire z_obuf;


// Output buffers
assign z = z_obuf;


// DUPLO.NET (674) - zero : tie0
assign zero = 1'b0;

// DUPLO.NET (675) - gate : nr6
assign z_obuf = ~(a | b | c | d | e | zero);
endmodule
