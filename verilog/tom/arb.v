`include "defs.v"

module arb
(
	input bbreq_0,
	input bbreq_1,
	input gbreq_0,
	input gbreq_1,
	input obbreq,
	input bglin,
	input brlin,
	input dbrl_0,
	input dbrl_1,
	input refreq,
	input ihandler,
	input ack,
	input resetl,
	input clk,
	input vcc,
	input bgain,
	input notreadt,
	input dreqin,
	output bback,
	output gback,
	output obback,
	output brlout,
	output dbgl,
	output refack,
	output ba,
	output intbm,
	output cpubm,
	output intbms,
	output intbmw
);
wire q0;
wire d0;
wire q1;
wire d1;
wire q2i;
wire d2;
wire q2;
wire mt00;
wire lbrl;
wire mt01;
wire bgack;
wire mt02;
wire brs;
wire mt03;
wire lbackl;
wire mt04;
wire mt10;
wire lbr;
wire brsl;
wire notbgack;
wire mt11;
wire mt12;
wire mt20;
wire bgin;
wire notdreqin;
wire mt21;
wire lback;
wire mt22;
wire mt23;
wire ackl;
wire brin;
wire brd;
wire req_10;
wire req_9;
wire req_8;
wire req_7;
wire req_6;
wire req_5;
wire req_4;
wire req_3;
wire req_2;
wire req_1;
wire req_0;
wire dl_10;
wire dl_1;
wire dl_2;
wire dl_3;
wire dl_4;
wire dl_5;
wire dl_6;
wire dl_7;
wire dl_8;
wire dl_9;
wire d_2;
wire d_3;
wire d_4;
wire d_5;
wire d_6;
wire d_7;
wire d_8;
wire d_9;
wire d_10;
wire pr_0;
wire pr_1;
wire pr_2;
wire pr_3;
wire pr_4;
wire pr_5;
wire pr_6;
wire pr_7;
wire pr_8;
wire pr_9;
wire ack_1;
wire ack_2;
wire ack_3;
wire ack_4;
wire ack_5;
wire ack_6;
wire ack_7;
wire ack_8;
wire ack_9;
wire arben;
wire ack_0;
wire cpub1;
wire intbmt;
wire intbmwd;
wire ack48;
wire pr48;
wire dbg0;
wire dbg1;
wire dbg;
wire dbgd;

// Output buffers
wire bback_obuf;
wire gback_obuf;
wire obback_obuf;
wire brlout_obuf;
wire dbgl_obuf;
wire refack_obuf;
wire ba_obuf;
wire intbm_obuf;
wire cpubm_obuf;
wire intbms_obuf;
wire intbmw_obuf;


// Output buffers
assign bback = bback_obuf;
assign gback = gback_obuf;
assign obback = obback_obuf;
assign brlout = brlout_obuf;
assign dbgl = dbgl_obuf;
assign refack = refack_obuf;
assign ba = ba_obuf;
assign intbm = intbm_obuf;
assign cpubm = cpubm_obuf;
assign intbms = intbms_obuf;
assign intbmw = intbmw_obuf;


// ARB.NET (48) - q0 : fd4q
fd4q q0_inst
(
	.q(q0), // OUT
	.d(d0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// ARB.NET (49) - q1 : fd2q
fd2q q1_inst
(
	.q(q1), // OUT
	.d(d1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ARB.NET (50) - q2i : fd2q
fd2q q2i_inst
(
	.q(q2i), // OUT
	.d(d2), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ARB.NET (51) - q2 : nivm
assign q2 = q2i;

// ARB.NET (53) - mt00 : nd2
assign mt00 = ~(q0 & lbrl);

// ARB.NET (54) - mt01 : nd2
assign mt01 = ~(q0 & bgack);

// ARB.NET (55) - mt02 : nd2
assign mt02 = ~(q0 & brs);

// ARB.NET (56) - mt03 : nd4
assign mt03 = ~(q2 & lbackl & lbrl & ack);

// ARB.NET (57) - mt04 : nd3
assign mt04 = ~(q2 & brs & ack);

// ARB.NET (58) - d0 : nd6
assign d0 = ~(mt00 & mt01 & mt02 & mt03 & mt04 & vcc);

// ARB.NET (60) - mt10 : nd4
assign mt10 = ~(q0 & lbr & brsl & notbgack);

// ARB.NET (61) - mt11 : nd2
assign mt11 = ~(q1 & bglin);

// ARB.NET (62) - mt12 : nd2
assign mt12 = ~(q1 & dreqin);

// ARB.NET (63) - d1 : nd3
assign d1 = ~(mt10 & mt11 & mt12);

// ARB.NET (65) - mt20 : nd3
assign mt20 = ~(q1 & bgin & notdreqin);

// ARB.NET (66) - mt21 : nd3
assign mt21 = ~(q2 & brsl & lback);

// ARB.NET (67) - mt22 : nd3
assign mt22 = ~(q2 & brsl & lbr);

// ARB.NET (68) - mt23 : nd2
assign mt23 = ~(q2 & ackl);

// ARB.NET (69) - d2 : nd4
assign d2 = ~(mt20 & mt21 & mt22 & mt23);

// ARB.NET (71) - brlout : iv
assign brlout_obuf = ~q1;

// ARB.NET (72) - bgin : iv
assign bgin = ~bglin;

// ARB.NET (73) - ackl : iv
assign ackl = ~ack;

// ARB.NET (74) - ba : nivh
assign ba_obuf = q2;

// ARB.NET (75) - bgack : iv
assign bgack = ~bgain;

// ARB.NET (76) - notbgack : iv
assign notbgack = ~bgack;

// ARB.NET (77) - notdreqin : iv
assign notdreqin = ~dreqin;

// ARB.NET (81) - brin : iv
assign brin = ~brlin;

// ARB.NET (82) - brd : nd2
assign brd = ~(brin & brlout_obuf);

// ARB.NET (83) - brs : fd1
fd1 brs_inst
(
	.q(brsl), // OUT
	.qn(brs), // OUT
	.d(brd), // IN
	.cp(clk)  // IN
);

// ARB.NET (85) - req[10] : an2
assign req_10 = q2 & brs;

// ARB.NET (86) - req[9] : niv
assign req_9 = refreq;

// ARB.NET (87) - req[8] : iv
assign req_8 = ~dbrl_1;

// ARB.NET (88) - req[7] : niv
assign req_7 = gbreq_1;

// ARB.NET (89) - req[6] : niv
assign req_6 = bbreq_1;

// ARB.NET (90) - req[5] : niv
assign req_5 = obbreq;

// ARB.NET (91) - req[4] : iv
assign req_4 = ~dbrl_0;

// ARB.NET (92) - req[3] : niv
assign req_3 = ihandler;

// ARB.NET (93) - req[2] : niv
assign req_2 = gbreq_0;

// ARB.NET (94) - req[1] : niv
assign req_1 = bbreq_0;

// ARB.NET (95) - req[0] : niv
assign req_0 = vcc;

// ARB.NET (97) - dl[10] : iv
assign dl_10 = ~req_10;

// ARB.NET (98) - dl[1-9] : nr2
assign dl_1 = ~(d_2 | req_1);
assign dl_2 = ~(d_3 | req_2);
assign dl_3 = ~(d_4 | req_3);
assign dl_4 = ~(d_5 | req_4);
assign dl_5 = ~(d_6 | req_5);
assign dl_6 = ~(d_7 | req_6);
assign dl_7 = ~(d_8 | req_7);
assign dl_8 = ~(d_9 | req_8);
assign dl_9 = ~(d_10 | req_9);

// ARB.NET (99) - d[2-10] : iv
assign d_2 = ~dl_2;
assign d_3 = ~dl_3;
assign d_4 = ~dl_4;
assign d_5 = ~dl_5;
assign d_6 = ~dl_6;
assign d_7 = ~dl_7;
assign d_8 = ~dl_8;
assign d_9 = ~dl_9;
assign d_10 = ~dl_10;

// ARB.NET (103) - pr[0-9] : an2
assign pr_0 = req_0 & dl_1;
assign pr_1 = req_1 & dl_2;
assign pr_2 = req_2 & dl_3;
assign pr_3 = req_3 & dl_4;
assign pr_4 = req_4 & dl_5;
assign pr_5 = req_5 & dl_6;
assign pr_6 = req_6 & dl_7;
assign pr_7 = req_7 & dl_8;
assign pr_8 = req_8 & dl_9;
assign pr_9 = req_9 & dl_10;

// ARB.NET (109) - ack[1-9] : slatchc
slatchc ack_from_1_to_9_inst_0
(
	.q(ack_1), // IO
	.d(pr_1), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_1
(
	.q(ack_2), // IO
	.d(pr_2), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_2
(
	.q(ack_3), // IO
	.d(pr_3), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_3
(
	.q(ack_4), // IO
	.d(pr_4), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_4
(
	.q(ack_5), // IO
	.d(pr_5), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_5
(
	.q(ack_6), // IO
	.d(pr_6), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_6
(
	.q(ack_7), // IO
	.d(pr_7), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_7
(
	.q(ack_8), // IO
	.d(pr_8), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);
slatchc ack_from_1_to_9_inst_8
(
	.q(ack_9), // IO
	.d(pr_9), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.resl(resetl)  // IN
);

// ARB.NET (110) - ack[0] : slatchp
slatchp ack_index_0_inst
(
	.q(ack_0), // IO
	.d(pr_0), // IN
	.clk(clk), // IN
	.en(arben), // IN
	.setl(resetl)  // IN
);

// ARB.NET (114) - lbrl : nr8
assign lbrl = ~(pr_1 | pr_2 | pr_4 | pr_5 | pr_6 | pr_7 | pr_8 | pr_9);

// ARB.NET (115) - lbr : iv
assign lbr = ~lbrl;

// ARB.NET (116) - lbackl : nr8
assign lbackl = ~(ack_1 | ack_2 | ack_4 | ack_5 | ack_6 | ack_7 | ack_8 | ack_9);

// ARB.NET (117) - lback : iv
assign lback = ~lbackl;

// ARB.NET (124) - arben : an2m
assign arben = q2 & ack;

// ARB.NET (133) - cpub1 : an2
assign cpub1 = q0 & brsl;

// ARB.NET (134) - cpuback : or4
assign cpubm_obuf = ack_0 | ack_3 | q1 | cpub1;

// ARB.NET (135) - bback : or2
assign bback_obuf = ack_1 | ack_6;

// ARB.NET (136) - gback : or2
assign gback_obuf = ack_2 | ack_7;

// ARB.NET (137) - obback : nivh
assign obback_obuf = ack_5;

// ARB.NET (138) - refack : niv
assign refack_obuf = ack_9;

// ARB.NET (143) - intbm : or6
assign intbm_obuf = ack_1 | ack_2 | ack_5 | ack_6 | ack_7 | ack_9;

// ARB.NET (144) - intbmt : mx2
mx2 intbmt_inst
(
	.z(intbmt), // OUT
	.a0(intbms_obuf), // IN
	.a1(intbm_obuf), // IN
	.s(ack)  // IN
);

// ARB.NET (145) - intbms : fd2q
fd2q intbms_inst
(
	.q(intbms_obuf), // OUT
	.d(intbmt), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ARB.NET (147) - intbmwd : nd2
assign intbmwd = ~(notreadt & intbmt);

// ARB.NET (148) - intbmw : fd1q
fd1q intbmw_inst
(
	.q(intbmw_obuf), // OUT
	.d(intbmwd), // IN
	.cp(clk)  // IN
);

// ARB.NET (152) - ack48 : or2
assign ack48 = ack_4 | ack_8;

// ARB.NET (153) - pr48 : or2
assign pr48 = pr_4 | pr_8;

// ARB.NET (155) - dbg0 : nd3
assign dbg0 = ~(ack48 & ack & pr48);

// ARB.NET (156) - dbg1 : nd2
assign dbg1 = ~(dbg & pr48);

// ARB.NET (157) - dbgd : nd2
assign dbgd = ~(dbg0 & dbg1);

// ARB.NET (159) - dbg : fd2q
fd2q dbg_inst
(
	.q(dbg), // OUT
	.d(dbgd), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ARB.NET (160) - dbgl : iv
assign dbgl_obuf = ~dbg;
endmodule
