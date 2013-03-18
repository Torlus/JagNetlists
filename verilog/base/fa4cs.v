`include "defs.v"

module fa4cs
(
	output	s0,
	output	s1,
	output	s2,
	output	s3,
	output	con,
	output	co0n,
	output	co1n,
	output	g,
	output	p,
	
	input		cin,
	input		ci0n,
	input		ci1n,
	input		a0,
	input		b0,
	input		a1,
	input		b1,
	input		a2,
	input		b2,
	input		a3,
	input		b3
);

wire ci, co0, co1, co2, co3;
wire g0, g1, g2, g3;
wire p0, p1, p2, p3;
wire gt0, gt1, gt2, gt3;

assign ci = ~((cin | ci1n) & ci0n);

assign {co0, s0} = a0 + b0 + ci;
assign {co1, s1} = a1 + b1 + co0;
assign {co2, s2} = a2 + b2 + co1;
assign {co3, s3} = a3 + b3 + co3;

assign g0 = a0 & b0;
assign g1 = a1 & b1;
assign g2 = a2 & b2;
assign g3 = a3 & b3;

assign p0 = a0 ^ b0;
assign p1 = a1 ^ b1;
assign p2 = a2 ^ b2;
assign p3 = a3 ^ b3;

assign p = p0 & p1 & p2 & p3;

assign gt0 = ~(g0 & p1 & p2 & p3);
assign gt1 = ~(g1 & p2 & p3);
assign gt2 = ~(g2 & p3);
assign gt3 = ~g3;

assign g = ~(gt0 & gt1 & gt2 & gt3);

assign con = ~ci;
assign co0n = ~g;
assign co1n = ~(g | p);

endmodule
