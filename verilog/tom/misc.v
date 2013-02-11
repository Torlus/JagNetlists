`include "defs.v"

module misc
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input clk,
	input resetl,
	input pit0w,
	input pit1w,
	input int1w,
	input int2w,
	input intr,
	input obint,
	input gpuint,
	input vint,
	input dint,
	input refrate_0,
	input refrate_1,
	input refrate_2,
	input refrate_3,
	input refback,
	input ack,
	input startref,
	input wet,
	input pit0r,
	input pit1r,
	input tcount,
	input test3r,
	output ihandler,
	output tint,
	output refreq,
	output intl,
	inout dr_0,
	inout dr_1,
	inout dr_2,
	inout dr_3,
	inout dr_4,
	inout dr_5,
	inout dr_6,
	inout dr_7,
	inout dr_8,
	inout dr_9,
	inout dr_10,
	inout dr_11,
	inout dr_12,
	inout dr_13,
	inout dr_14,
	inout dr_15,
	inout mreq
);
wire [0:15] tp;
wire [0:15] t;
wire [0:3] rc;
wire vcc;
wire intw;
wire ie_0;
wire ie_1;
wire ie_2;
wire ie_3;
wire ie_4;
wire ack_0;
wire ack_1;
wire ack_2;
wire ack_3;
wire ack_4;
wire lvint;
wire vclr;
wire ackl_0;
wire vi1;
wire vi2;
wire vi2l;
wire vip;
wire gip;
wire oip;
wire tip;
wire di1;
wire di2;
wire di2l;
wire dip;
wire i_0;
wire il_0;
wire i_1;
wire il_1;
wire i_2;
wire il_2;
wire i_3;
wire il_3;
wire i_4;
wire il_4;
wire gnd;
wire notint2w;
wire ihd0;
wire ihd;
wire pit0;
wire pit1;
wire pd_0;
wire pd_1;
wire pd_2;
wire pd_3;
wire pd_4;
wire pd_5;
wire pd_6;
wire pd_7;
wire pd_8;
wire pd_9;
wire pd_10;
wire pd_11;
wire pd_12;
wire pd_13;
wire pd_14;
wire pd_15;
wire td_0;
wire td_1;
wire td_2;
wire td_3;
wire td_4;
wire td_5;
wire td_6;
wire td_7;
wire td_8;
wire td_9;
wire td_10;
wire td_11;
wire td_12;
wire td_13;
wire td_14;
wire td_15;
wire ten0;
wire ten1;
wire ten;
wire presl;
wire tp_0;
wire tpco_0;
wire tpld;
wire tp_1;
wire tp_2;
wire tp_3;
wire tp_4;
wire tp_5;
wire tp_6;
wire tp_7;
wire tpco_1;
wire tpco_2;
wire tpco_3;
wire tpco_4;
wire tpco_5;
wire tpco_6;
wire tpco_7;
wire tp_8;
wire tpco_8;
wire tpc8;
wire tp_9;
wire tp_10;
wire tp_11;
wire tp_12;
wire tp_13;
wire tp_14;
wire tp_15;
wire tpco_9;
wire tpco_10;
wire tpco_11;
wire tpco_12;
wire tpco_13;
wire tpco_14;
wire tpco_15;
wire tplac0;
wire tplac1;
wire tpc16;
wire tpldi;
wire t_0;
wire tco_0;
wire tld;
wire t_1;
wire t_2;
wire t_3;
wire t_4;
wire t_5;
wire t_6;
wire t_7;
wire tco_1;
wire tco_2;
wire tco_3;
wire tco_4;
wire tco_5;
wire tco_6;
wire tco_7;
wire t_8;
wire tco_8;
wire tc8;
wire t_9;
wire t_10;
wire t_11;
wire t_12;
wire t_13;
wire t_14;
wire t_15;
wire tco_9;
wire tco_10;
wire tco_11;
wire tco_12;
wire tco_13;
wire tco_14;
wire tco_15;
wire tlac0;
wire tlac1;
wire tc16;
wire tldi;
wire rc_0;
wire rc_1;
wire rc_2;
wire rc_3;
wire ps_0;
wire psco_0;
wire ps_1;
wire ps_2;
wire ps_3;
wire ps_4;
wire ps_5;
wire psco_1;
wire psco_2;
wire psco_3;
wire psco_4;
wire psco_5;
wire pen;
wire rq;
wire d0;
wire d00;
wire notrq;
wire full;
wire d01;
wire notempty;
wire d02;
wire decl;
wire refack;
wire dec;
wire rpcen;
wire rp_0;
wire rpc_0;
wire lrpc;
wire rp_1;
wire rp_2;
wire rp_3;
wire rpc_1;
wire rpc_2;
wire rpc_3;
wire rpl_0;
wire rpl_1;
wire rpl_2;
wire rpl_3;
wire lrpcl;
wire rpenl;
wire rpen;
wire rcc_0;
wire refcount;
wire rcc_1;
wire rcc_2;
wire rcc_3;
wire rfc0;
wire rfc1;
wire rfc2;
wire notrefack;

// Output buffers
wire ihandler_obuf;
wire tint_obuf;
wire refreq_obuf;
wire intl_obuf;


// Output buffers
assign ihandler = ihandler_obuf;
assign tint = tint_obuf;
assign refreq = refreq_obuf;
assign intl = intl_obuf;


// MISC.NET (44) - vcc : tie1
assign vcc = 1'b1;

// MISC.NET (48) - intw : an2
assign intw = int1w & wet;

// MISC.NET (49) - ie[0-4] : ldp2q
ldp2q ie_from_0_to_4_inst_0
(
	.q(ie_0), // OUT
	.d(din_0), // IN
	.g(intw), // IN
	.cd(resetl)  // IN
);
ldp2q ie_from_0_to_4_inst_1
(
	.q(ie_1), // OUT
	.d(din_1), // IN
	.g(intw), // IN
	.cd(resetl)  // IN
);
ldp2q ie_from_0_to_4_inst_2
(
	.q(ie_2), // OUT
	.d(din_2), // IN
	.g(intw), // IN
	.cd(resetl)  // IN
);
ldp2q ie_from_0_to_4_inst_3
(
	.q(ie_3), // OUT
	.d(din_3), // IN
	.g(intw), // IN
	.cd(resetl)  // IN
);
ldp2q ie_from_0_to_4_inst_4
(
	.q(ie_4), // OUT
	.d(din_4), // IN
	.g(intw), // IN
	.cd(resetl)  // IN
);

// MISC.NET (51) - ack[0-4] : an2
assign ack_0 = din_8 & int1w;
assign ack_1 = din_9 & int1w;
assign ack_2 = din_10 & int1w;
assign ack_3 = din_11 & int1w;
assign ack_4 = din_12 & int1w;

// MISC.NET (55) - lvint : lsrb
lsrb lvint_inst
(
	.q(lvint), // OUT
	.r(vclr), // IN
	.s(vint)  // IN
);

// MISC.NET (56) - vclr : nd2
assign vclr = ~(resetl & ackl_0);

// MISC.NET (57) - ackl[0] : iv
assign ackl_0 = ~ack_0;

// MISC.NET (61) - vi1 : fd2q
fd2q vi1_inst
(
	.q(vi1), // OUT
	.d(lvint), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (62) - vi2 : fd2q
fd2q vi2_inst
(
	.q(vi2), // OUT
	.d(vi1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (63) - vi2l : iv
assign vi2l = ~vi2;

// MISC.NET (64) - vip : an3
assign vip = vi1 & vi2l & ie_0;

// MISC.NET (66) - gip : an2
assign gip = gpuint & ie_1;

// MISC.NET (67) - oip : an2
assign oip = obint & ie_2;

// MISC.NET (68) - tip : an2
assign tip = tint_obuf & ie_3;

// MISC.NET (70) - di1 : fd2q
fd2q di1_inst
(
	.q(di1), // OUT
	.d(dint), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (71) - di2 : fd2q
fd2q di2_inst
(
	.q(di2), // OUT
	.d(di1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (72) - di2l : iv
assign di2l = ~di2;

// MISC.NET (73) - dip : an3
assign dip = di1 & di2l & ie_4;

// MISC.NET (77) - i[0] : fjk2
fjk2 i_index_0_inst
(
	.q(i_0), // OUT
	.qn(il_0), // OUT
	.j(vip), // IN
	.k(ack_0), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (78) - i[1] : fjk2
fjk2 i_index_1_inst
(
	.q(i_1), // OUT
	.qn(il_1), // OUT
	.j(gip), // IN
	.k(ack_1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (79) - i[2] : fjk2
fjk2 i_index_2_inst
(
	.q(i_2), // OUT
	.qn(il_2), // OUT
	.j(oip), // IN
	.k(ack_2), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (80) - i[3] : fjk2
fjk2 i_index_3_inst
(
	.q(i_3), // OUT
	.qn(il_3), // OUT
	.j(tip), // IN
	.k(ack_3), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (81) - i[4] : fjk2
fjk2 i_index_4_inst
(
	.q(i_4), // OUT
	.qn(il_4), // OUT
	.j(dip), // IN
	.k(ack_4), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (83) - ilu[0-4] : dummy

// MISC.NET (87) - intl : nr6
assign intl_obuf = ~(i_0 | i_1 | i_2 | i_3 | i_4 | gnd);

// MISC.NET (91) - di[0-4] : ts
assign dr_0 = (intr) ? i_0 : 1'bz;
assign dr_1 = (intr) ? i_1 : 1'bz;
assign dr_2 = (intr) ? i_2 : 1'bz;
assign dr_3 = (intr) ? i_3 : 1'bz;
assign dr_4 = (intr) ? i_4 : 1'bz;

// MISC.NET (92) - di[5-15] : ts
assign dr_5 = (intr) ? gnd : 1'bz;
assign dr_6 = (intr) ? gnd : 1'bz;
assign dr_7 = (intr) ? gnd : 1'bz;
assign dr_8 = (intr) ? gnd : 1'bz;
assign dr_9 = (intr) ? gnd : 1'bz;
assign dr_10 = (intr) ? gnd : 1'bz;
assign dr_11 = (intr) ? gnd : 1'bz;
assign dr_12 = (intr) ? gnd : 1'bz;
assign dr_13 = (intr) ? gnd : 1'bz;
assign dr_14 = (intr) ? gnd : 1'bz;
assign dr_15 = (intr) ? gnd : 1'bz;

// MISC.NET (93) - gnd : tie0
assign gnd = 1'b0;

// MISC.NET (100) - notint2w : iv
assign notint2w = ~int2w;

// MISC.NET (101) - ihd0 : nd2
assign ihd0 = ~(ihandler_obuf & notint2w);

// MISC.NET (102) - ihd : nd2
assign ihd = ~(ihd0 & intl_obuf);

// MISC.NET (103) - ihandler : fd2q
fd2q ihandler_inst
(
	.q(ihandler_obuf), // OUT
	.d(ihd), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (110) - pit0 : nivh
assign pit0 = pit0w;

// MISC.NET (111) - pit1 : an2h
assign pit1 = wet & pit1w;

// MISC.NET (113) - pd[0-15] : slatch
slatch pd_from_0_to_15_inst_0
(
	.q(pd_0), // IO
	.d(din_0), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_1
(
	.q(pd_1), // IO
	.d(din_1), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_2
(
	.q(pd_2), // IO
	.d(din_2), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_3
(
	.q(pd_3), // IO
	.d(din_3), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_4
(
	.q(pd_4), // IO
	.d(din_4), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_5
(
	.q(pd_5), // IO
	.d(din_5), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_6
(
	.q(pd_6), // IO
	.d(din_6), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_7
(
	.q(pd_7), // IO
	.d(din_7), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_8
(
	.q(pd_8), // IO
	.d(din_8), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_9
(
	.q(pd_9), // IO
	.d(din_9), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_10
(
	.q(pd_10), // IO
	.d(din_10), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_11
(
	.q(pd_11), // IO
	.d(din_11), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_12
(
	.q(pd_12), // IO
	.d(din_12), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_13
(
	.q(pd_13), // IO
	.d(din_13), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_14
(
	.q(pd_14), // IO
	.d(din_14), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);
slatch pd_from_0_to_15_inst_15
(
	.q(pd_15), // IO
	.d(din_15), // IN
	.clk(clk), // IN
	.en(pit0)  // IN
);

// MISC.NET (114) - td[0-15] : ldp1q
ldp1q td_from_0_to_15_inst_0
(
	.q(td_0), // OUT
	.d(din_0), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_1
(
	.q(td_1), // OUT
	.d(din_1), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_2
(
	.q(td_2), // OUT
	.d(din_2), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_3
(
	.q(td_3), // OUT
	.d(din_3), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_4
(
	.q(td_4), // OUT
	.d(din_4), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_5
(
	.q(td_5), // OUT
	.d(din_5), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_6
(
	.q(td_6), // OUT
	.d(din_6), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_7
(
	.q(td_7), // OUT
	.d(din_7), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_8
(
	.q(td_8), // OUT
	.d(din_8), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_9
(
	.q(td_9), // OUT
	.d(din_9), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_10
(
	.q(td_10), // OUT
	.d(din_10), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_11
(
	.q(td_11), // OUT
	.d(din_11), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_12
(
	.q(td_12), // OUT
	.d(din_12), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_13
(
	.q(td_13), // OUT
	.d(din_13), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_14
(
	.q(td_14), // OUT
	.d(din_14), // IN
	.g(pit1)  // IN
);
ldp1q td_from_0_to_15_inst_15
(
	.q(td_15), // OUT
	.d(din_15), // IN
	.g(pit1)  // IN
);

// MISC.NET (118) - ten0 : or8
assign ten0 = pd_0 | pd_1 | pd_2 | pd_3 | pd_4 | pd_5 | pd_6 | pd_7;

// MISC.NET (119) - ten1 : or8
assign ten1 = pd_8 | pd_9 | pd_10 | pd_11 | pd_12 | pd_13 | pd_14 | pd_15;

// MISC.NET (120) - ten : or2
assign ten = ten0 | ten1;

// MISC.NET (121) - presl : an2u
assign presl = ten & resetl;

// MISC.NET (125) - tp[0] : dncnt
dncnt tp_index_0_inst
(
	.q(tp_0), // IO
	.co(tpco_0), // IO
	.d(pd_0), // IN
	.clk(clk), // IN
	.ci(ten), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);

// MISC.NET (126) - tp[1-7] : dncnt
dncnt tp_from_1_to_7_inst_0
(
	.q(tp_1), // IO
	.co(tpco_1), // IO
	.d(pd_1), // IN
	.clk(clk), // IN
	.ci(tpco_0), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_1
(
	.q(tp_2), // IO
	.co(tpco_2), // IO
	.d(pd_2), // IN
	.clk(clk), // IN
	.ci(tpco_1), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_2
(
	.q(tp_3), // IO
	.co(tpco_3), // IO
	.d(pd_3), // IN
	.clk(clk), // IN
	.ci(tpco_2), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_3
(
	.q(tp_4), // IO
	.co(tpco_4), // IO
	.d(pd_4), // IN
	.clk(clk), // IN
	.ci(tpco_3), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_4
(
	.q(tp_5), // IO
	.co(tpco_5), // IO
	.d(pd_5), // IN
	.clk(clk), // IN
	.ci(tpco_4), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_5
(
	.q(tp_6), // IO
	.co(tpco_6), // IO
	.d(pd_6), // IN
	.clk(clk), // IN
	.ci(tpco_5), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_1_to_7_inst_6
(
	.q(tp_7), // IO
	.co(tpco_7), // IO
	.d(pd_7), // IN
	.clk(clk), // IN
	.ci(tpco_6), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);

// MISC.NET (127) - tp[8] : dncnt
dncnt tp_index_8_inst
(
	.q(tp_8), // IO
	.co(tpco_8), // IO
	.d(pd_8), // IN
	.clk(clk), // IN
	.ci(tpc8), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);

// MISC.NET (128) - tp[9-15] : dncnt
dncnt tp_from_9_to_15_inst_0
(
	.q(tp_9), // IO
	.co(tpco_9), // IO
	.d(pd_9), // IN
	.clk(clk), // IN
	.ci(tpco_8), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_1
(
	.q(tp_10), // IO
	.co(tpco_10), // IO
	.d(pd_10), // IN
	.clk(clk), // IN
	.ci(tpco_9), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_2
(
	.q(tp_11), // IO
	.co(tpco_11), // IO
	.d(pd_11), // IN
	.clk(clk), // IN
	.ci(tpco_10), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_3
(
	.q(tp_12), // IO
	.co(tpco_12), // IO
	.d(pd_12), // IN
	.clk(clk), // IN
	.ci(tpco_11), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_4
(
	.q(tp_13), // IO
	.co(tpco_13), // IO
	.d(pd_13), // IN
	.clk(clk), // IN
	.ci(tpco_12), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_5
(
	.q(tp_14), // IO
	.co(tpco_14), // IO
	.d(pd_14), // IN
	.clk(clk), // IN
	.ci(tpco_13), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);
dncnt tp_from_9_to_15_inst_6
(
	.q(tp_15), // IO
	.co(tpco_15), // IO
	.d(pd_15), // IN
	.clk(clk), // IN
	.ci(tpco_14), // IN
	.ld(tpld), // IN
	.resl(presl)  // IN
);

// MISC.NET (129) - tpu[0-15] : dummy

// MISC.NET (130) - tpco[7] : dummy

// MISC.NET (131) - tpco[15] : dummy

// MISC.NET (132) - tplac0 : nr8
assign tplac0 = ~(tp_0 | tp_1 | tp_2 | tp_3 | tp_4 | tp_5 | tp_6 | tp_7);

// MISC.NET (133) - tplac1 : nr8
assign tplac1 = ~(tp_8 | tp_9 | tp_10 | tp_11 | tp_12 | tp_13 | tp_14 | tp_15);

// MISC.NET (134) - tpc8 : an2
assign tpc8 = tplac0 & ten;

// MISC.NET (135) - tpc16 : an3
assign tpc16 = tplac0 & tplac1 & ten;

// MISC.NET (137) - tpldi : nr2
assign tpldi = ~(tpc16 | pit0w);

// MISC.NET (138) - tpld : ivh
assign tpld = ~tpldi;

// MISC.NET (140) - dtp[0-15] : ts
assign dr_0 = (pit0r) ? tp_0 : 1'bz;
assign dr_1 = (pit0r) ? tp_1 : 1'bz;
assign dr_2 = (pit0r) ? tp_2 : 1'bz;
assign dr_3 = (pit0r) ? tp_3 : 1'bz;
assign dr_4 = (pit0r) ? tp_4 : 1'bz;
assign dr_5 = (pit0r) ? tp_5 : 1'bz;
assign dr_6 = (pit0r) ? tp_6 : 1'bz;
assign dr_7 = (pit0r) ? tp_7 : 1'bz;
assign dr_8 = (pit0r) ? tp_8 : 1'bz;
assign dr_9 = (pit0r) ? tp_9 : 1'bz;
assign dr_10 = (pit0r) ? tp_10 : 1'bz;
assign dr_11 = (pit0r) ? tp_11 : 1'bz;
assign dr_12 = (pit0r) ? tp_12 : 1'bz;
assign dr_13 = (pit0r) ? tp_13 : 1'bz;
assign dr_14 = (pit0r) ? tp_14 : 1'bz;
assign dr_15 = (pit0r) ? tp_15 : 1'bz;

// MISC.NET (144) - t[0] : dncnt
dncnt t_index_0_inst
(
	.q(t_0), // IO
	.co(tco_0), // IO
	.d(td_0), // IN
	.clk(clk), // IN
	.ci(tpc16), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);

// MISC.NET (145) - t[1-7] : dncnt
dncnt t_from_1_to_7_inst_0
(
	.q(t_1), // IO
	.co(tco_1), // IO
	.d(td_1), // IN
	.clk(clk), // IN
	.ci(tco_0), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_1
(
	.q(t_2), // IO
	.co(tco_2), // IO
	.d(td_2), // IN
	.clk(clk), // IN
	.ci(tco_1), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_2
(
	.q(t_3), // IO
	.co(tco_3), // IO
	.d(td_3), // IN
	.clk(clk), // IN
	.ci(tco_2), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_3
(
	.q(t_4), // IO
	.co(tco_4), // IO
	.d(td_4), // IN
	.clk(clk), // IN
	.ci(tco_3), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_4
(
	.q(t_5), // IO
	.co(tco_5), // IO
	.d(td_5), // IN
	.clk(clk), // IN
	.ci(tco_4), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_5
(
	.q(t_6), // IO
	.co(tco_6), // IO
	.d(td_6), // IN
	.clk(clk), // IN
	.ci(tco_5), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_1_to_7_inst_6
(
	.q(t_7), // IO
	.co(tco_7), // IO
	.d(td_7), // IN
	.clk(clk), // IN
	.ci(tco_6), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);

// MISC.NET (146) - t[8] : dncnt
dncnt t_index_8_inst
(
	.q(t_8), // IO
	.co(tco_8), // IO
	.d(td_8), // IN
	.clk(clk), // IN
	.ci(tc8), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);

// MISC.NET (147) - t[9-15] : dncnt
dncnt t_from_9_to_15_inst_0
(
	.q(t_9), // IO
	.co(tco_9), // IO
	.d(td_9), // IN
	.clk(clk), // IN
	.ci(tco_8), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_1
(
	.q(t_10), // IO
	.co(tco_10), // IO
	.d(td_10), // IN
	.clk(clk), // IN
	.ci(tco_9), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_2
(
	.q(t_11), // IO
	.co(tco_11), // IO
	.d(td_11), // IN
	.clk(clk), // IN
	.ci(tco_10), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_3
(
	.q(t_12), // IO
	.co(tco_12), // IO
	.d(td_12), // IN
	.clk(clk), // IN
	.ci(tco_11), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_4
(
	.q(t_13), // IO
	.co(tco_13), // IO
	.d(td_13), // IN
	.clk(clk), // IN
	.ci(tco_12), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_5
(
	.q(t_14), // IO
	.co(tco_14), // IO
	.d(td_14), // IN
	.clk(clk), // IN
	.ci(tco_13), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);
dncnt t_from_9_to_15_inst_6
(
	.q(t_15), // IO
	.co(tco_15), // IO
	.d(td_15), // IN
	.clk(clk), // IN
	.ci(tco_14), // IN
	.ld(tld), // IN
	.resl(presl)  // IN
);

// MISC.NET (148) - tu[0-15] : dummy

// MISC.NET (149) - tco[7] : dummy

// MISC.NET (150) - tco[15] : dummy

// MISC.NET (151) - tlac0 : nr8
assign tlac0 = ~(t_0 | t_1 | t_2 | t_3 | t_4 | t_5 | t_6 | t_7);

// MISC.NET (152) - tlac1 : nr8
assign tlac1 = ~(t_8 | t_9 | t_10 | t_11 | t_12 | t_13 | t_14 | t_15);

// MISC.NET (153) - tc8 : an2
assign tc8 = tlac0 & tpc16;

// MISC.NET (154) - tc16 : an3
assign tc16 = tlac0 & tlac1 & tpc16;

// MISC.NET (155) - tldi : nr2
assign tldi = ~(tc16 | pit1w);

// MISC.NET (156) - tld : ivh
assign tld = ~tldi;

// MISC.NET (158) - dt[0-15] : ts
assign dr_0 = (pit1r) ? t_0 : 1'bz;
assign dr_1 = (pit1r) ? t_1 : 1'bz;
assign dr_2 = (pit1r) ? t_2 : 1'bz;
assign dr_3 = (pit1r) ? t_3 : 1'bz;
assign dr_4 = (pit1r) ? t_4 : 1'bz;
assign dr_5 = (pit1r) ? t_5 : 1'bz;
assign dr_6 = (pit1r) ? t_6 : 1'bz;
assign dr_7 = (pit1r) ? t_7 : 1'bz;
assign dr_8 = (pit1r) ? t_8 : 1'bz;
assign dr_9 = (pit1r) ? t_9 : 1'bz;
assign dr_10 = (pit1r) ? t_10 : 1'bz;
assign dr_11 = (pit1r) ? t_11 : 1'bz;
assign dr_12 = (pit1r) ? t_12 : 1'bz;
assign dr_13 = (pit1r) ? t_13 : 1'bz;
assign dr_14 = (pit1r) ? t_14 : 1'bz;
assign dr_15 = (pit1r) ? t_15 : 1'bz;

// MISC.NET (160) - tint : niv
assign tint_obuf = tc16;

// MISC.NET (162) - tp : join
assign tp[0] = tp_0;
assign tp[1] = tp_1;
assign tp[2] = tp_2;
assign tp[3] = tp_3;
assign tp[4] = tp_4;
assign tp[5] = tp_5;
assign tp[6] = tp_6;
assign tp[7] = tp_7;
assign tp[8] = tp_8;
assign tp[9] = tp_9;
assign tp[10] = tp_10;
assign tp[11] = tp_11;
assign tp[12] = tp_12;
assign tp[13] = tp_13;
assign tp[14] = tp_14;
assign tp[15] = tp_15;

// MISC.NET (163) - t : join
assign t[0] = t_0;
assign t[1] = t_1;
assign t[2] = t_2;
assign t[3] = t_3;
assign t[4] = t_4;
assign t[5] = t_5;
assign t[6] = t_6;
assign t[7] = t_7;
assign t[8] = t_8;
assign t[9] = t_9;
assign t[10] = t_10;
assign t[11] = t_11;
assign t[12] = t_12;
assign t[13] = t_13;
assign t[14] = t_14;
assign t[15] = t_15;

// MISC.NET (164) - rc : join
assign rc[0] = rc_0;
assign rc[1] = rc_1;
assign rc[2] = rc_2;
assign rc[3] = rc_3;

// MISC.NET (165) - tpu : dummy

// MISC.NET (166) - tu : dummy

// MISC.NET (167) - rcu : dummy

// MISC.NET (175) - ps[0] : upcnt1
upcnt1 ps_index_0_inst
(
	.q(ps_0), // IO
	.co(psco_0), // IO
	.clk(clk), // IN
	.ci(vcc), // IN
	.resl(resetl)  // IN
);

// MISC.NET (176) - ps[1-5] : upcnt1
upcnt1 ps_from_1_to_5_inst_0
(
	.q(ps_1), // IO
	.co(psco_1), // IO
	.clk(clk), // IN
	.ci(psco_0), // IN
	.resl(resetl)  // IN
);
upcnt1 ps_from_1_to_5_inst_1
(
	.q(ps_2), // IO
	.co(psco_2), // IO
	.clk(clk), // IN
	.ci(psco_1), // IN
	.resl(resetl)  // IN
);
upcnt1 ps_from_1_to_5_inst_2
(
	.q(ps_3), // IO
	.co(psco_3), // IO
	.clk(clk), // IN
	.ci(psco_2), // IN
	.resl(resetl)  // IN
);
upcnt1 ps_from_1_to_5_inst_3
(
	.q(ps_4), // IO
	.co(psco_4), // IO
	.clk(clk), // IN
	.ci(psco_3), // IN
	.resl(resetl)  // IN
);
upcnt1 ps_from_1_to_5_inst_4
(
	.q(ps_5), // IO
	.co(psco_5), // IO
	.clk(clk), // IN
	.ci(psco_4), // IN
	.resl(resetl)  // IN
);

// MISC.NET (177) - pen : an6
assign pen = ps_0 & ps_1 & ps_2 & ps_3 & ps_4 & ps_5;

// MISC.NET (178) - psco[5] : dummy

// MISC.NET (195) - rq : fd2q
fd2q rq_inst
(
	.q(rq), // OUT
	.d(d0), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MISC.NET (197) - d00 : nd2
assign d00 = ~(notrq & full);

// MISC.NET (198) - d01 : nd3
assign d01 = ~(notrq & startref & notempty);

// MISC.NET (199) - d02 : nd2
assign d02 = ~(rq & notempty);

// MISC.NET (200) - d0 : nd3
assign d0 = ~(d00 & d01 & d02);

// MISC.NET (202) - refbreq : an2
assign refreq_obuf = rq & notempty;

// MISC.NET (203) - mreq : ts
assign mreq = (refback) ? refreq_obuf : 1'bz;

// MISC.NET (205) - decl : nd2
assign decl = ~(refack & mreq);

// MISC.NET (206) - dec : iv
assign dec = ~decl;

// MISC.NET (215) - rpcen : or2
assign rpcen = pen | tcount;

// MISC.NET (217) - rp[0] : dncnt
dncnt rp_index_0_inst
(
	.q(rp_0), // IO
	.co(rpc_0), // IO
	.d(refrate_0), // IN
	.clk(clk), // IN
	.ci(rpcen), // IN
	.ld(lrpc), // IN
	.resl(resetl)  // IN
);

// MISC.NET (218) - rp[1-3] : dncnt
dncnt rp_from_1_to_3_inst_0
(
	.q(rp_1), // IO
	.co(rpc_1), // IO
	.d(refrate_1), // IN
	.clk(clk), // IN
	.ci(rpc_0), // IN
	.ld(lrpc), // IN
	.resl(resetl)  // IN
);
dncnt rp_from_1_to_3_inst_1
(
	.q(rp_2), // IO
	.co(rpc_2), // IO
	.d(refrate_2), // IN
	.clk(clk), // IN
	.ci(rpc_1), // IN
	.ld(lrpc), // IN
	.resl(resetl)  // IN
);
dncnt rp_from_1_to_3_inst_2
(
	.q(rp_3), // IO
	.co(rpc_3), // IO
	.d(refrate_3), // IN
	.clk(clk), // IN
	.ci(rpc_2), // IN
	.ld(lrpc), // IN
	.resl(resetl)  // IN
);

// MISC.NET (219) - rpd[0-3] : dummy

// MISC.NET (220) - rpc[3] : dummy

// MISC.NET (222) - rpl[0-3] : iv
assign rpl_0 = ~rp_0;
assign rpl_1 = ~rp_1;
assign rpl_2 = ~rp_2;
assign rpl_3 = ~rp_3;

// MISC.NET (223) - lrpcl : nd6
assign lrpcl = ~(rpl_0 & rpl_1 & rpl_2 & rpl_3 & rpcen & vcc);

// MISC.NET (224) - lrpc : ivh
assign lrpc = ~lrpcl;

// MISC.NET (228) - rpenl : nr4p
assign rpenl = ~(refrate_0 | refrate_1 | refrate_2 | refrate_3);

// MISC.NET (229) - rpen : iv
assign rpen = ~rpenl;

// MISC.NET (237) - rc[0] : udcnt1
udcnt1 rc_index_0_inst
(
	.q(rc_0), // IO
	.co(rcc_0), // IO
	.clk(clk), // IN
	.ci(refcount), // IN
	.up(lrpc), // IN
	.resl(resetl)  // IN
);

// MISC.NET (238) - rc[1-3] : udcnt1
udcnt1 rc_from_1_to_3_inst_0
(
	.q(rc_1), // IO
	.co(rcc_1), // IO
	.clk(clk), // IN
	.ci(rcc_0), // IN
	.up(lrpc), // IN
	.resl(resetl)  // IN
);
udcnt1 rc_from_1_to_3_inst_1
(
	.q(rc_2), // IO
	.co(rcc_2), // IO
	.clk(clk), // IN
	.ci(rcc_1), // IN
	.up(lrpc), // IN
	.resl(resetl)  // IN
);
udcnt1 rc_from_1_to_3_inst_2
(
	.q(rc_3), // IO
	.co(rcc_3), // IO
	.clk(clk), // IN
	.ci(rcc_2), // IN
	.up(lrpc), // IN
	.resl(resetl)  // IN
);

// MISC.NET (239) - rcc[3] : dummy

// MISC.NET (245) - drc[0-3] : ts
assign dr_12 = (test3r) ? rc_0 : 1'bz;
assign dr_13 = (test3r) ? rc_1 : 1'bz;
assign dr_14 = (test3r) ? rc_2 : 1'bz;
assign dr_15 = (test3r) ? rc_3 : 1'bz;

// MISC.NET (247) - rfc0 : nd3
assign rfc0 = ~(lrpc & rpen & decl);

// MISC.NET (248) - rfc1 : nd2
assign rfc1 = ~(lrpcl & dec);

// MISC.NET (249) - rfc2 : nd2
assign rfc2 = ~(rpenl & dec);

// MISC.NET (250) - refcount : nd3
assign refcount = ~(rfc0 & rfc1 & rfc2);

// MISC.NET (252) - full : niv
assign full = rc_3;

// MISC.NET (253) - notempty : or4
assign notempty = rc_0 | rc_1 | rc_2 | rc_3;

// MISC.NET (255) - notrefack : nd2
assign notrefack = ~(refback & ack);

// MISC.NET (256) - refack : iv
assign refack = ~notrefack;

// MISC.NET (258) - notrq : iv
assign notrq = ~rq;
endmodule
