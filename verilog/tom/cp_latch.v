`include "defs.v"

module cp_latch
(
	output q,
	input set,
	input clear,
	input clock,
	input reset_n
);
wire ipt;
wire ip;

// Output buffers
wire q_obuf;


// Output buffers
assign q = q_obuf;


// DUPLO.NET (765) - ipt : nr2
assign ipt = ~(set | q_obuf);

// DUPLO.NET (766) - ip : nr2
assign ip = ~(clear | ipt);

// DUPLO.NET (767) - q : fd2q
fd2q q_inst
(
	.q(q_obuf), // OUT
	.d(ip), // IN
	.cp(clock), // IN
	.cd(reset_n)  // IN
);
endmodule
