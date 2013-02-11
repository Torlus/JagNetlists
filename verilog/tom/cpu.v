`include "defs.v"

module cpu
(
	input sizin_0,
	input sizin_1,
	input rwin,
	input notack,
	input ack,
	input dreqin,
	input resetl,
	input clk_0,
	input intbm,
	input intbms,
	input m68k,
	input ba,
	input dbgl,
	output dtackl,
	output erd,
	inout w_0,
	inout w_1,
	inout w_2,
	inout w_3,
	inout rw,
	inout mreq,
	inout justify
);
wire w68k_1;
wire w68k_0;
wire bmcpu;
wire bm68k;
wire sizin_2;
wire xw_0;
wire xw_1;
wire xw_2;
wire gnd;
wire xp;
wire extbms;
wire dbg;
wire cmreq;
wire vcc;
wire q11;
wire d11;
wire q12;
wire d12;
wire q13;
wire d13;
wire idlei;
wire idle;
wire mt11a;
wire mt11b;
wire not68k;
wire mt11c;
wire lds;
wire mt11d;
wire uds;
wire mt111;
wire mt120;
wire mt121;
wire mt130;
wire mt13a;
wire mt13b;
wire mt13c;
wire mt13d;
wire readcycle;

// Output buffers
wire dtackl_obuf;
wire erd_obuf;


// Output buffers
assign dtackl = dtackl_obuf;
assign erd = erd_obuf;


// CPU.NET (31) - w68k[1] : nr2
assign w68k_1 = ~(sizin_0 | sizin_1);

// CPU.NET (32) - w68k[0] : iv
assign w68k_0 = ~w68k_1;

// CPU.NET (33) - bmcpu : iv
assign bmcpu = ~ba;

// CPU.NET (34) - bm68k : an2
assign bm68k = m68k & bmcpu;

// CPU.NET (35) - jsizin[2] : nr2
assign sizin_2 = ~(sizin_0 | sizin_1);

// CPU.NET (38) - xw[0] : mx2
mx2 xw_index_0_inst
(
	.z(xw_0), // OUT
	.a0(sizin_0), // IN
	.a1(w68k_0), // IN
	.s(bm68k)  // IN
);

// CPU.NET (39) - xw[1] : mx2
mx2 xw_index_1_inst
(
	.z(xw_1), // OUT
	.a0(sizin_1), // IN
	.a1(w68k_1), // IN
	.s(bm68k)  // IN
);

// CPU.NET (40) - xw[2] : mx2
mx2 xw_index_2_inst
(
	.z(xw_2), // OUT
	.a0(sizin_2), // IN
	.a1(gnd), // IN
	.s(bm68k)  // IN
);

// CPU.NET (42) - xp : ivm
assign xp = ~intbm;

// CPU.NET (43) - extbms : ivm
assign extbms = ~intbms;

// CPU.NET (44) - dbg : iv
assign dbg = ~dbgl;

// CPU.NET (46) - w[0-2] : ts
assign w_0 = (xp) ? xw_0 : 1'bz;
assign w_1 = (xp) ? xw_1 : 1'bz;
assign w_2 = (xp) ? xw_2 : 1'bz;

// CPU.NET (47) - w[3] : ts
assign w_3 = (xp) ? gnd : 1'bz;

// CPU.NET (48) - rw : ts
assign rw = (xp) ? rwin : 1'bz;

// CPU.NET (49) - mreq : tsm
assign mreq = (xp) ? cmreq : 1'bz;

// CPU.NET (50) - justify : ts
assign justify = (xp) ? gnd : 1'bz;

// CPU.NET (51) - gnd : tie0
assign gnd = 1'b0;

// CPU.NET (52) - vcc : tie1
assign vcc = 1'b1;

// CPU.NET (74) - q11 : fd2q
fd2q q11_inst
(
	.q(q11), // OUT
	.d(d11), // IN
	.cp(clk_0), // IN
	.cd(resetl)  // IN
);

// CPU.NET (75) - q12 : fd2q
fd2q q12_inst
(
	.q(q12), // OUT
	.d(d12), // IN
	.cp(clk_0), // IN
	.cd(resetl)  // IN
);

// CPU.NET (76) - q13 : fd2q
fd2q q13_inst
(
	.q(q13), // OUT
	.d(d13), // IN
	.cp(clk_0), // IN
	.cd(resetl)  // IN
);

// CPU.NET (78) - idlei : nr3
assign idlei = ~(q11 | q12 | q13);

// CPU.NET (79) - idle : niv
assign idle = idlei;

// CPU.NET (81) - mt11a : nd3
assign mt11a = ~(dbg & dreqin & idle);

// CPU.NET (82) - mt11b : nd6
assign mt11b = ~(bmcpu & dreqin & not68k & extbms & vcc & idle);

// CPU.NET (83) - mt11c : nd6
assign mt11c = ~(bmcpu & dreqin & lds & m68k & extbms & idle);

// CPU.NET (84) - mt11d : nd6
assign mt11d = ~(bmcpu & dreqin & uds & m68k & extbms & idle);

// CPU.NET (85) - mt111 : nd2
assign mt111 = ~(q11 & notack);

// CPU.NET (86) - d11 : nd6
assign d11 = ~(mt11a & mt11b & mt11c & mt11d & vcc & mt111);

// CPU.NET (88) - mt120 : nd2
assign mt120 = ~(q11 & ack);

// CPU.NET (89) - mt121 : nd2
assign mt121 = ~(q12 & notack);

// CPU.NET (90) - d12 : nd2
assign d12 = ~(mt120 & mt121);

// CPU.NET (92) - mt130 : nd2
assign mt130 = ~(q12 & ack);

// CPU.NET (93) - mt13a : nd4
assign mt13a = ~(ba & dreqin & extbms & q13);

// CPU.NET (94) - mt13b : nd6
assign mt13b = ~(bmcpu & dreqin & not68k & extbms & vcc & q13);

// CPU.NET (95) - mt13c : nd6
assign mt13c = ~(bmcpu & dreqin & lds & m68k & extbms & q13);

// CPU.NET (96) - mt13d : nd6
assign mt13d = ~(bmcpu & dreqin & uds & m68k & extbms & q13);

// CPU.NET (97) - d13 : nd6
assign d13 = ~(mt130 & mt13a & mt13b & mt13c & mt13d & vcc);

// CPU.NET (99) - cmreq : niv
assign cmreq = q11;

// CPU.NET (101) - dt1 : iv
assign dtackl_obuf = ~q13;

// CPU.NET (103) - erd1 : an2
assign erd_obuf = q13 & readcycle;

// CPU.NET (107) - readcycle : slatch
slatch readcycle_inst
(
	.q(readcycle), // IO
	.d(rw), // IN
	.clk(clk_0), // IN
	.en(q11)  // IN
);

// CPU.NET (109) - lds : iv
assign lds = ~sizin_0;

// CPU.NET (110) - uds : iv
assign uds = ~sizin_1;

// CPU.NET (111) - not68k : iv
assign not68k = ~m68k;
endmodule
