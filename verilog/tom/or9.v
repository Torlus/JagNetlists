`include "defs.v"

module or9
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e,
	input f,
	input g,
	input h,
	input i
);
wire y;

// Output buffers
wire z_obuf;


// Output buffers
assign z = z_obuf;


// DUPLO.NET (620) - gate1 : or4
assign y = a | b | c | d;

// DUPLO.NET (621) - gate2 : or6
assign z_obuf = y | e | f | g | h | i;
endmodule
