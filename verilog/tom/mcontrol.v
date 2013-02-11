`include "defs.v"

module mcontrol
(
	inout[0:23] blit_addr;
	inout justify,
	inout mreq,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
	inout read,
	output active,
	output blitack,
	output memidle,
	output memready,
	output read_ack,
	output wactive,
	input ack,
	input[0:23] address;
	input bcompen,
	input blit_back,
	input clk,
	input phrase_cycle,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input pwidth_0,
	input pwidth_1,
	input pwidth_2,
	input pwidth_3,
	input readreq,
	input reset_n,
	input sread_1,
	input sreadx_1,
	input step_inner,
	input writereq
);
wire [0:23] blita;
wire ack_n;
wire pixsize_n_0;
wire pixsize_n_2;
wire busen;
wire blitack_n;
wire ractvt_0;
wire ractive_n;
wire ractvt_1;
wire ractive;
wire ractvt_2;
wire ractvt_3;
wire wactvt_0;
wire wactive_n;
wire wactvt_1;
wire wactvt_2;
wire wactvt_3;
wire active_n;
wire wt0t;
wire fontread;
wire wt_0;
wire wt_1;
wire wt_2;
wire pwrite;
wire wout_0;
wire wout_1;
wire wout_2;
wire wout_3;
wire fontread_n;
wire justt;
wire step_innerb;
wire waset_n;
wire wat0;
wire waitack;
wire wat1;

// Output buffers
wire active_obuf;
wire blitack_obuf;
wire wactive_obuf;


// Output buffers
assign active = active_obuf;
assign blitack = blitack_obuf;
assign wactive = wactive_obuf;


// MCONTROL.NET (47) - ack\ : iv
assign ack_n = ~ack;

// MCONTROL.NET (48) - pixsize\[0] : iv
assign pixsize_n_0 = ~pixsize_0;

// MCONTROL.NET (49) - pixsize\[2] : iv
assign pixsize_n_2 = ~pixsize_2;

// MCONTROL.NET (51) - busen : nivu
assign busen = blit_back;

// MCONTROL.NET (55) - blitack\ : nd2
assign blitack_n = ~(ack & blit_back);

// MCONTROL.NET (56) - blitack : iv
assign blitack_obuf = ~blitack_n;

// MCONTROL.NET (60) - ractvt0 : nd2
assign ractvt_0 = ~(ractive_n & readreq);

// MCONTROL.NET (61) - ractvt1 : nd2
assign ractvt_1 = ~(ractive & blitack_n);

// MCONTROL.NET (62) - ractvt2 : nd3
assign ractvt_2 = ~(ractive & blitack_obuf & readreq);

// MCONTROL.NET (63) - ractvt3 : nd3
assign ractvt_3 = ~(ractvt_0 & ractvt_1 & ractvt_2);

// MCONTROL.NET (64) - ractive : fd2
fd2 ractive_inst
(
	.q(ractive), // OUT
	.qn(ractive_n), // OUT
	.d(ractvt_3), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// MCONTROL.NET (66) - wactvt0 : nd2
assign wactvt_0 = ~(wactive_n & writereq);

// MCONTROL.NET (67) - wactvt1 : nd2
assign wactvt_1 = ~(wactive_obuf & blitack_n);

// MCONTROL.NET (68) - wactvt2 : nd3
assign wactvt_2 = ~(wactive_obuf & blitack_obuf & writereq);

// MCONTROL.NET (69) - wactvt3 : nd3
assign wactvt_3 = ~(wactvt_0 & wactvt_1 & wactvt_2);

// MCONTROL.NET (70) - wactive : fd2
fd2 wactive_inst
(
	.q(wactive_obuf), // OUT
	.qn(wactive_n), // OUT
	.d(wactvt_3), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// MCONTROL.NET (73) - active\ : nr2
assign active_n = ~(wactive_obuf | ractive);

// MCONTROL.NET (74) - active : iv
assign active_obuf = ~active_n;

// MCONTROL.NET (78) - memready : an2
assign memready = blitack_obuf & active_obuf;

// MCONTROL.NET (80) - memidle : iv
assign memidle = ~active_obuf;

// MCONTROL.NET (86) - mreq : tsm
assign mreq = (busen) ? active_obuf : 1'bz;

// MCONTROL.NET (88) - read : ts
assign read = (busen) ? ractive : 1'bz;

// MCONTROL.NET (101) - wt0t : nr2
assign wt0t = ~(pixsize_n_2 | fontread);

// MCONTROL.NET (102) - wt0 : nr2
assign wt_0 = ~(wt0t | phrase_cycle);

// MCONTROL.NET (103) - wt1 : nr5
nr5 wt1_inst
(
	.z(wt_1), // IO
	.a(pixsize_n_2), // IN
	.b(pixsize_1), // IN
	.c(pixsize_0), // IN
	.d(phrase_cycle), // IN
	.e(fontread)  // IN
);

// MCONTROL.NET (105) - wt2 : nr5
nr5 wt2_inst
(
	.z(wt_2), // IO
	.a(pixsize_n_2), // IN
	.b(pixsize_1), // IN
	.c(pixsize_n_0), // IN
	.d(phrase_cycle), // IN
	.e(fontread)  // IN
);

// MCONTROL.NET (107) - pwrite : an2
assign pwrite = phrase_cycle & wactive_obuf;

// MCONTROL.NET (108) - wout[0-2] : mx2
mx2 wout_from_0_to_2_inst_0
(
	.z(wout_0), // OUT
	.a0(wt_0), // IN
	.a1(pwidth_0), // IN
	.s(pwrite)  // IN
);
mx2 wout_from_0_to_2_inst_1
(
	.z(wout_1), // OUT
	.a0(wt_1), // IN
	.a1(pwidth_1), // IN
	.s(pwrite)  // IN
);
mx2 wout_from_0_to_2_inst_2
(
	.z(wout_2), // OUT
	.a0(wt_2), // IN
	.a1(pwidth_2), // IN
	.s(pwrite)  // IN
);

// MCONTROL.NET (109) - wout[3] : mx2
mx2 wout_index_3_inst
(
	.z(wout_3), // OUT
	.a0(phrase_cycle), // IN
	.a1(pwidth_3), // IN
	.s(pwrite)  // IN
);

// MCONTROL.NET (111) - width[0-3] : ts
assign width_0 = (busen) ? wout_0 : 1'bz;
assign width_1 = (busen) ? wout_1 : 1'bz;
assign width_2 = (busen) ? wout_2 : 1'bz;
assign width_3 = (busen) ? wout_3 : 1'bz;

// MCONTROL.NET (118) - fontread\ : ond1
assign fontread_n = ~( (sread_1 | sreadx_1) & bcompen );

// MCONTROL.NET (119) - fontread : iv
assign fontread = ~fontread_n;

// MCONTROL.NET (121) - justt : nd2
assign justt = ~(fontread_n & phrase_mode);

// MCONTROL.NET (122) - justify : ts
assign justify = (busen) ? justt : 1'bz;

// MCONTROL.NET (129) - step_innerb : nivu
assign step_innerb = step_inner;

// MCONTROL.NET (130) - blita : fdsync24
fdsync24 blita_inst
(
	.q({blita[0],blita[1],blita[2],blita[3],blita[4],blita[5],blita[6],blita[7],blita[8],blita[9],blita[10],blita[11],blita[12],blita[13],blita[14],blita[15],blita[16],blita[17],blita[18],blita[19],blita[20],blita[21],blita[22],blita[23]}), // IO
	.d({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // IN
	.ld(step_innerb), // IN
	.clk(clk)  // IN
);

// MCONTROL.NET (131) - blit_addr : tsm
assign blit_addr[0] = (busen) ? blita[0] : 1'bz;
assign blit_addr[1] = (busen) ? blita[1] : 1'bz;
assign blit_addr[2] = (busen) ? blita[2] : 1'bz;
assign blit_addr[3] = (busen) ? blita[3] : 1'bz;
assign blit_addr[4] = (busen) ? blita[4] : 1'bz;
assign blit_addr[5] = (busen) ? blita[5] : 1'bz;
assign blit_addr[6] = (busen) ? blita[6] : 1'bz;
assign blit_addr[7] = (busen) ? blita[7] : 1'bz;
assign blit_addr[8] = (busen) ? blita[8] : 1'bz;
assign blit_addr[9] = (busen) ? blita[9] : 1'bz;
assign blit_addr[10] = (busen) ? blita[10] : 1'bz;
assign blit_addr[11] = (busen) ? blita[11] : 1'bz;
assign blit_addr[12] = (busen) ? blita[12] : 1'bz;
assign blit_addr[13] = (busen) ? blita[13] : 1'bz;
assign blit_addr[14] = (busen) ? blita[14] : 1'bz;
assign blit_addr[15] = (busen) ? blita[15] : 1'bz;
assign blit_addr[16] = (busen) ? blita[16] : 1'bz;
assign blit_addr[17] = (busen) ? blita[17] : 1'bz;
assign blit_addr[18] = (busen) ? blita[18] : 1'bz;
assign blit_addr[19] = (busen) ? blita[19] : 1'bz;
assign blit_addr[20] = (busen) ? blita[20] : 1'bz;
assign blit_addr[21] = (busen) ? blita[21] : 1'bz;
assign blit_addr[22] = (busen) ? blita[22] : 1'bz;
assign blit_addr[23] = (busen) ? blita[23] : 1'bz;

// MCONTROL.NET (137) - waitackset : nd2
assign waset_n = ~(ractive & blitack_obuf);

// MCONTROL.NET (138) - wat0 : nd2
assign wat0 = ~(waitack & ack_n);

// MCONTROL.NET (139) - wat1 : nd2
assign wat1 = ~(waset_n & wat0);

// MCONTROL.NET (140) - waitack : fd2q
fd2q waitack_inst
(
	.q(waitack), // OUT
	.d(wat1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// MCONTROL.NET (141) - read_ack : an2
assign read_ack = waitack & ack;
endmodule
