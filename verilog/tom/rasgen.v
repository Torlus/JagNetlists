`include "defs.v"

module rasgen
(
	output csl,
	input on1,
	input roffl,
	input bs,
	input allonl,
	input alloffl,
	input clk,
	input resl
);
wire ronl;
wire ron;
wire roff;
wire cs;

// MEM.NET (729) - ronl : nd2
assign ronl = ~(bs & on1);

// MEM.NET (730) - ron : nd2
assign ron = ~(ronl & allonl);

// MEM.NET (731) - roff : nd2
assign roff = ~(roffl & alloffl);

// MEM.NET (732) - cs : fjk2
fjk2 cs_inst
(
	.q /* OUT */ (cs),
	.qn /* OUT */ (csl),
	.j /* IN */ (ron),
	.k /* IN */ (roff),
	.cp /* IN */ (clk),
	.cd /* IN */ (resl)
);

// MEM.NET (733) - csl : dummy
endmodule
