`include "defs.v"

module mp1010a
(
	output	[0:19]	q,
	input		[0:9]		a,
	input		[0:9]		b
);

assign q = a * b;

endmodule
