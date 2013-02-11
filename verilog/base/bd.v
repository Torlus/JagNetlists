`include "defs.v"

module bd
(
	inout		io,
	output	zi,
	output	po,
	input		a,
	input		en,
	input 	tn,
	input		pi
);

assign io = (~en & tn) ? a : 1'bz;
assign zi = io;
assign po = ~(io & pi);

endmodule
