`include "defs.v"

module inner
(
	inout gpu_dout_2,
	inout gpu_dout_3,
	inout gpu_dout_4,
	inout gpu_dout_5,
	inout gpu_dout_6,
	inout gpu_dout_7,
	inout gpu_dout_8,
	inout gpu_dout_9,
	inout gpu_dout_10,
	inout gpu_dout_16,
	inout gpu_dout_17,
	inout gpu_dout_18,
	inout gpu_dout_19,
	inout gpu_dout_20,
	inout gpu_dout_21,
	inout gpu_dout_22,
	inout gpu_dout_23,
	inout gpu_dout_24,
	inout gpu_dout_25,
	inout gpu_dout_26,
	inout gpu_dout_27,
	inout gpu_dout_28,
	inout gpu_dout_29,
	inout gpu_dout_30,
	inout gpu_dout_31,
	output apipe,
	output atick_0,
	output atick_1,
	output aticki_0,
	output data_ena,
	output dest_cycle_1,
	output dpipe_0,
	output dpipe_1,
	output dsta_addi,
	output dstdread,
	output dstzread,
	output dwrite,
	output dwrite1,
	output dzwrite,
	output dzwrite1,
	output gena2,
	output icount_0,
	output icount_1,
	output icount_2,
	output indone,
	output inner0,
	output readreq,
	output srca_addi,
	output srcdread,
	output srcdreadd,
	output srcen,
	output srczread,
	output sread_1,
	output sreadx_1,
	output step,
	output writereq,
	output zaddr,
	output zpipe_0,
	output zpipe_1,
	input a1_outside,
	input blitack,
	input clk,
	input cmdld,
	input countld,
	input dsta2,
	input[0:15] dstxp;
	input gourd,
	input gourz,
	input[0:31] gpu_din;
	input inhiben,
	input instart,
	input memidle,
	input memready,
	input nowrite,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input read_ack,
	input reset_n,
	input srcshade,
	input statrd,
	input wactive
);
wire idle;
wire sreadx;
wire szreadx;
wire sread;
wire szread;
wire dread;
wire dzread;
wire gourd_n;
wire gourz_n;
wire nowrite_n;
wire read_ack_n;
wire instart_n;
wire srcenz;
wire srcenx;
wire dsten;
wire dstenzt;
wire dstenz;
wire dstwrz;
wire diso_a1;
wire stupt;
wire stupl;
wire stupi;
wire startup;
wire dnrt_0;
wire dzread_1;
wire dstzack_n;
wire dnrt_1;
wire dread_1;
wire dstenz_n;
wire dstdack_n;
wire dnrt_2;
wire szread_1;
wire dsten_n;
wire srczack_n;
wire dnrt_3;
wire srcenz_n;
wire srcdack_n;
wire dnrt_4;
wire srcen_n;
wire srcdxack_n;
wire dnrt_5;
wire dnrt_6;
wire dnreadyd;
wire dnready_n;
wire mready_n;
wire mready;
wire istept_0;
wire istept_1;
wire istep_n;
wire stept_n;
wire aready;
wire idle_n;
wire stepp1t_n;
wire step_p1;
wire dstwrz_n;
wire inner0_n;
wire srcenx_n;
wire step_n;
wire idlet_0;
wire idlet_1;
wire idlet_2;
wire idlei;
wire idlet;
wire sreadxt_0;
wire sreadxt_1;
wire sreadxi;
wire szreadxt_0;
wire szreadxt_1;
wire szreadxi;
wire sreadt_0;
wire sreadt_1;
wire sreadt_2;
wire sreadt_3;
wire sreadt_4;
wire sreadt_5;
wire sreadi;
wire szreadt_0;
wire szreadt_1;
wire szreadi;
wire dreadt_0;
wire dreadt_1;
wire dreadt_2;
wire dreadt_3;
wire dreadt_4;
wire dreadt_5;
wire dreadt_6;
wire dreadi;
wire dzreadt_0;
wire dzreadt_1;
wire dzreadt_2;
wire dzreadt_3;
wire dzreadt_4;
wire dzreadt_5;
wire dzreadt_6;
wire dzreadt_7;
wire dzreadi;
wire dwritet_0;
wire dwritet_1;
wire dwritet_2;
wire dwritet_3;
wire dwritet_4;
wire dwritet_5;
wire dwritet_6;
wire dwritet_7;
wire dwritet_8;
wire dwritei;
wire dzwritet_0;
wire dzwritet_1;
wire dzwritei;
wire atick0t_0;
wire atick_n_0;
wire atick_n_1;
wire indone_n;
wire atick0t_1;
wire atickt_1;
wire dpipe0t;
wire dpipe1t0;
wire dpipe1t1;
wire zpipe0t;
wire zpipe1t0;
wire zpipe1t1;
wire indot_0;
wire indot_1;
wire icntena;
wire oldoutld;
wire srca_add;
wire oldoutside;
wire oldoutsidel;
wire outside;
wire clip_n;
wire rreqt;
wire wreqt;
wire sraat_0;
wire sraat_1;
wire dstaat;
wire gensrc;
wire gendst;
wire dsta2_n;
wire gena2t_0;
wire gena2t_1;
wire gena2i;
wire srczxack_n;
wire srcdxpend;
wire srczxpend;
wire srcdpend;
wire srczpend;
wire dstdpend;
wire srcdpset_n;
wire srcdpt_1;
wire srcdpt_2;
wire srcdxpset_n;
wire srcdxpt_1;
wire srcdxpt_2;
wire sdpend;
wire srcdreadt;
wire srczpset_n;
wire srczpt_1;
wire srczpt_2;
wire srczxpset_n;
wire srczxpt_1;
wire srczxpt_2;
wire szpend;
wire dstdpset_n;
wire dstdpt_0;
wire dstdpt_1;
wire dstzpset_n;
wire dstzpt_0;
wire dstzpend;
wire dstzpt_1;
wire denat_0;
wire denat_1;
wire denat_2;
wire denat_3;

// Output buffers
wire atick_0_obuf;
wire atick_1_obuf;
wire aticki_0_obuf;
wire dwrite_obuf;
wire dwrite1_obuf;
wire dzwrite_obuf;
wire dzwrite1_obuf;
wire indone_obuf;
wire inner0_obuf;
wire readreq_obuf;
wire srca_addi_obuf;
wire srcdreadd_obuf;
wire srcen_obuf;
wire sread_1_obuf;
wire sreadx_1_obuf;
wire step_obuf;
wire writereq_obuf;


// Output buffers
assign atick_0 = atick_0_obuf;
assign atick_1 = atick_1_obuf;
assign aticki_0 = aticki_0_obuf;
assign dwrite = dwrite_obuf;
assign dwrite1 = dwrite1_obuf;
assign dzwrite = dzwrite_obuf;
assign dzwrite1 = dzwrite1_obuf;
assign indone = indone_obuf;
assign inner0 = inner0_obuf;
assign readreq = readreq_obuf;
assign srca_addi = srca_addi_obuf;
assign srcdreadd = srcdreadd_obuf;
assign srcen = srcen_obuf;
assign sread_1 = sread_1_obuf;
assign sreadx_1 = sreadx_1_obuf;
assign step = step_obuf;
assign writereq = writereq_obuf;


// INNER.NET (83) - stat[2] : ts
assign gpu_dout_2 = (statrd) ? idle : 1'bz;

// INNER.NET (84) - stat[3] : ts
assign gpu_dout_3 = (statrd) ? sreadx : 1'bz;

// INNER.NET (85) - stat[4] : ts
assign gpu_dout_4 = (statrd) ? szreadx : 1'bz;

// INNER.NET (86) - stat[5] : ts
assign gpu_dout_5 = (statrd) ? sread : 1'bz;

// INNER.NET (87) - stat[6] : ts
assign gpu_dout_6 = (statrd) ? szread : 1'bz;

// INNER.NET (88) - stat[7] : ts
assign gpu_dout_7 = (statrd) ? dread : 1'bz;

// INNER.NET (89) - stat[8] : ts
assign gpu_dout_8 = (statrd) ? dzread : 1'bz;

// INNER.NET (90) - stat[9] : ts
assign gpu_dout_9 = (statrd) ? dwrite_obuf : 1'bz;

// INNER.NET (91) - stat[10] : ts
assign gpu_dout_10 = (statrd) ? dzwrite_obuf : 1'bz;

// INNER.NET (93) - gourd\ : iv
assign gourd_n = ~gourd;

// INNER.NET (94) - gourz\ : iv
assign gourz_n = ~gourz;

// INNER.NET (95) - nowrite\ : iv
assign nowrite_n = ~nowrite;

// INNER.NET (96) - read_ack\ : iv
assign read_ack_n = ~read_ack;

// INNER.NET (97) - instart\ : iv
assign instart_n = ~instart;

// INNER.NET (101) - srcen : fdsync
fdsync srcen_inst
(
	.q(srcen_obuf), // IO
	.d(gpu_din[0]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (102) - srcenz : fdsync
fdsync srcenz_inst
(
	.q(srcenz), // IO
	.d(gpu_din[1]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (103) - srcenx : fdsync
fdsync srcenx_inst
(
	.q(srcenx), // IO
	.d(gpu_din[2]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (104) - dsten : fdsync
fdsync dsten_inst
(
	.q(dsten), // IO
	.d(gpu_din[3]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (105) - dstenzt : fdsync
fdsync dstenzt_inst
(
	.q(dstenzt), // IO
	.d(gpu_din[4]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (106) - dstenz : nivm
assign dstenz = dstenzt;

// INNER.NET (107) - dstwrz : fdsync
fdsync dstwrz_inst
(
	.q(dstwrz), // IO
	.d(gpu_din[5]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (108) - diso_a1 : fdsync
fdsync diso_a1_inst
(
	.q(diso_a1), // IO
	.d(gpu_din[6]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// INNER.NET (114) - stupt : nd2
assign stupt = ~(idle & stupl);

// INNER.NET (115) - stupi : nd2
assign stupi = ~(instart_n & stupt);

// INNER.NET (116) - stupl : fd2q
fd2q stupl_inst
(
	.q(stupl), // OUT
	.d(stupi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (117) - startup : or2
assign startup = instart | stupl;

// INNER.NET (158) - dnrt0 : nd2
assign dnrt_0 = ~(dzread_1 & dstzack_n);

// INNER.NET (159) - dnrt1 : nd3
assign dnrt_1 = ~(dread_1 & dstenz_n & dstdack_n);

// INNER.NET (160) - dnrt2 : nd4
assign dnrt_2 = ~(szread_1 & dsten_n & dstenz_n & srczack_n);

// INNER.NET (162) - dnrt3 : nd5
nd5 dnrt3_inst
(
	.q(dnrt_3), // OUT
	.a_0(sread_1_obuf), // IN
	.a_1(srcenz_n), // IN
	.a_2(dsten_n), // IN
	.a_3(dstenz_n), // IN
	.a_4(srcdack_n)  // IN
);

// INNER.NET (164) - dnrt4 : nd6
assign dnrt_4 = ~(sreadx_1_obuf & srcenz_n & srcen_n & dsten_n & dstenz_n & srcdxack_n);

// INNER.NET (166) - dnrt5 : nd5
nd5 dnrt5_inst
(
	.q(dnrt_5), // OUT
	.a_0(dnrt_0), // IN
	.a_1(dnrt_1), // IN
	.a_2(dnrt_2), // IN
	.a_3(dnrt_3), // IN
	.a_4(dnrt_4)  // IN
);

// INNER.NET (167) - dnrt6 : fd1q
fd1q dnrt6_inst
(
	.q(dnrt_6), // OUT
	.d(dnrt_5), // IN
	.cp(clk)  // IN
);

// INNER.NET (168) - dnreadyd : aor1
assign dnreadyd = (srcshade & gourz) | inhiben;

// INNER.NET (169) - dnready : mxi2
mxi2 dnready_inst
(
	.z(dnready_n), // OUT
	.a0(dnrt_5), // IN
	.a1(dnrt_6), // IN
	.s(dnreadyd)  // IN
);

// INNER.NET (171) - mready\ : nr2
assign mready_n = ~(memready | memidle);

// INNER.NET (172) - mready : iv
assign mready = ~mready_n;

// INNER.NET (173) - istept0 : or2
assign istept_0 = dwrite1_obuf | dzwrite1_obuf;

// INNER.NET (174) - istept1 : nd2
assign istept_1 = ~(istept_0 & mready_n);

// INNER.NET (175) - istep : nd3
assign istep_n = ~(idle & startup & istept_1);

// INNER.NET (176) - stept : nd4
assign stept_n = ~(aready & mready & dnready_n & idle_n);

// INNER.NET (177) - step : nd2u
assign step_obuf = ~(stept_n & istep_n);

// INNER.NET (183) - stepp1t : nd3
assign stepp1t_n = ~(aready & mready & dnready_n);

// INNER.NET (184) - step_p1 : nd2m
assign step_p1 = ~(stepp1t_n & istep_n);

// INNER.NET (192) - dsten\ : ivm
assign dsten_n = ~dsten;

// INNER.NET (193) - dstenz\ : ivm
assign dstenz_n = ~dstenz;

// INNER.NET (194) - dstwrz\ : iv
assign dstwrz_n = ~dstwrz;

// INNER.NET (195) - inner0\ : ivm
assign inner0_n = ~inner0_obuf;

// INNER.NET (196) - srcen\ : ivm
assign srcen_n = ~srcen_obuf;

// INNER.NET (197) - srcenx\ : iv
assign srcenx_n = ~srcenx;

// INNER.NET (198) - srcenz\ : ivm
assign srcenz_n = ~srcenz;

// INNER.NET (199) - step\ : ivm
assign step_n = ~step_obuf;

// INNER.NET (203) - idlet0 : nd2
assign idlet_0 = ~(idle & step_n);

// INNER.NET (204) - idlet1 : nd3
assign idlet_1 = ~(dzwrite_obuf & step_obuf & inner0_obuf);

// INNER.NET (205) - idlet2 : nd4
assign idlet_2 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_obuf);

// INNER.NET (206) - idlet3 : nd3
assign idlei = ~(idlet_0 & idlet_1 & idlet_2);

// INNER.NET (207) - idlet : fd4q
fd4q idlet_inst
(
	.q(idlet), // OUT
	.d(idlei), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// INNER.NET (208) - idle\ : iv
assign idle_n = ~idlet;

// INNER.NET (209) - idle : ivm
assign idle = ~idle_n;

// INNER.NET (213) - sreadxt0 : nd3
assign sreadxt_0 = ~(idle & step_obuf & srcenx);

// INNER.NET (214) - sreadxt1 : nd2
assign sreadxt_1 = ~(sreadx & step_n);

// INNER.NET (215) - sreadxt2 : nd2
assign sreadxi = ~(sreadxt_0 & sreadxt_1);

// INNER.NET (216) - sreadx : fd2qm
fd2q sreadx_inst
(
	.q(sreadx), // OUT
	.d(sreadxi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (220) - szreadxt0 : nd3
assign szreadxt_0 = ~(sreadx & step_obuf & srcenz);

// INNER.NET (221) - szreadxt1 : nd2
assign szreadxt_1 = ~(szreadx & step_n);

// INNER.NET (222) - szreadxt2 : nd2
assign szreadxi = ~(szreadxt_0 & szreadxt_1);

// INNER.NET (223) - szreadx : fd2q
fd2q szreadx_inst
(
	.q(szreadx), // OUT
	.d(szreadxi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (227) - sreadt0 : nd2
assign sreadt_0 = ~(szreadx & step_obuf);

// INNER.NET (228) - sreadt1 : nd4
assign sreadt_1 = ~(sreadx & step_obuf & srcenz_n & srcen_obuf);

// INNER.NET (229) - sreadt2 : nd4
assign sreadt_2 = ~(idle & step_obuf & srcenx_n & srcen_obuf);

// INNER.NET (230) - sreadt3 : nd4
assign sreadt_3 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_obuf);

// INNER.NET (231) - sreadt4 : nd5
nd5 sreadt4_inst
(
	.q(sreadt_4), // OUT
	.a_0(dwrite_obuf), // IN
	.a_1(step_obuf), // IN
	.a_2(dstwrz_n), // IN
	.a_3(inner0_n), // IN
	.a_4(srcen_obuf)  // IN
);

// INNER.NET (233) - sreadt5 : nd2
assign sreadt_5 = ~(sread & step_n);

// INNER.NET (234) - sreadt6 : nd6
assign sreadi = ~(sreadt_0 & sreadt_1 & sreadt_2 & sreadt_3 & sreadt_4 & sreadt_5);

// INNER.NET (235) - sread : fd2qm
fd2q sread_inst
(
	.q(sread), // OUT
	.d(sreadi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (239) - szreadt0 : nd3
assign szreadt_0 = ~(sread & step_obuf & srcenz);

// INNER.NET (240) - szreadt1 : nd2
assign szreadt_1 = ~(szread & step_n);

// INNER.NET (241) - szreadt2 : nd2
assign szreadi = ~(szreadt_0 & szreadt_1);

// INNER.NET (242) - szread : fd2qm
fd2q szread_inst
(
	.q(szread), // OUT
	.d(szreadi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (246) - dreadt0 : nd3
assign dreadt_0 = ~(szread & step_obuf & dsten);

// INNER.NET (247) - dreadt1 : nd4
assign dreadt_1 = ~(sread & step_obuf & srcenz_n & dsten);

// INNER.NET (248) - dreadt2 : nd5
nd5 dreadt2_inst
(
	.q(dreadt_2), // OUT
	.a_0(sreadx), // IN
	.a_1(step_obuf), // IN
	.a_2(srcenz_n), // IN
	.a_3(srcen_n), // IN
	.a_4(dsten)  // IN
);

// INNER.NET (250) - dreadt3 : nd5
nd5 dreadt3_inst
(
	.q(dreadt_3), // OUT
	.a_0(idle), // IN
	.a_1(step_obuf), // IN
	.a_2(srcenx_n), // IN
	.a_3(srcen_n), // IN
	.a_4(dsten)  // IN
);

// INNER.NET (252) - dreadt4 : nd5
nd5 dreadt4_inst
(
	.q(dreadt_4), // OUT
	.a_0(dzwrite_obuf), // IN
	.a_1(step_obuf), // IN
	.a_2(inner0_n), // IN
	.a_3(srcen_n), // IN
	.a_4(dsten)  // IN
);

// INNER.NET (254) - dreadt5 : nd6
assign dreadt_5 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_n & srcen_n & dsten);

// INNER.NET (256) - dreadt6 : nd2
assign dreadt_6 = ~(dread & step_n);

// INNER.NET (257) - dreadt7 : nd7
nd7 dreadt7_inst
(
	.q(dreadi), // OUT
	.a_0(dreadt_0), // IN
	.a_1(dreadt_1), // IN
	.a_2(dreadt_2), // IN
	.a_3(dreadt_3), // IN
	.a_4(dreadt_4), // IN
	.a_5(dreadt_5), // IN
	.a_6(dreadt_6)  // IN
);

// INNER.NET (258) - dread : fd2q
fd2q dread_inst
(
	.q(dread), // OUT
	.d(dreadi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (262) - dzreadt0 : nd3
assign dzreadt_0 = ~(dread & step_obuf & dstenz);

// INNER.NET (263) - dzreadt1 : nd4
assign dzreadt_1 = ~(szread & step_obuf & dsten_n & dstenz);

// INNER.NET (264) - dzreadt2 : nd5
nd5 dzreadt2_inst
(
	.q(dzreadt_2), // OUT
	.a_0(sread), // IN
	.a_1(step_obuf), // IN
	.a_2(srcenz_n), // IN
	.a_3(dsten_n), // IN
	.a_4(dstenz)  // IN
);

// INNER.NET (266) - dzreadt3 : nd6
assign dzreadt_3 = ~(sreadx & step_obuf & srcenz_n & srcen_n & dsten_n & dstenz);

// INNER.NET (268) - dzreadt4 : nd6
assign dzreadt_4 = ~(idle & step_obuf & srcenx_n & srcen_n & dsten_n & dstenz);

// INNER.NET (270) - dzreadt5 : nd6
assign dzreadt_5 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_n & dsten_n & dstenz);

// INNER.NET (272) - dzreadt6 : nd7
nd7 dzreadt6_inst
(
	.q(dzreadt_6), // OUT
	.a_0(dwrite_obuf), // IN
	.a_1(step_obuf), // IN
	.a_2(dstwrz_n), // IN
	.a_3(inner0_n), // IN
	.a_4(srcen_n), // IN
	.a_5(dsten_n), // IN
	.a_6(dstenz)  // IN
);

// INNER.NET (274) - dzreadt7 : nd2
assign dzreadt_7 = ~(dzread & step_n);

// INNER.NET (275) - dzreadt8 : nd8
assign dzreadi = ~(dzreadt_0 & dzreadt_1 & dzreadt_2 & dzreadt_3 & dzreadt_4 & dzreadt_5 & dzreadt_6 & dzreadt_7);

// INNER.NET (276) - dzread : fd2q
fd2q dzread_inst
(
	.q(dzread), // OUT
	.d(dzreadi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (280) - dwritet0 : nd2
assign dwritet_0 = ~(dzread & step_obuf);

// INNER.NET (281) - dwritet1 : nd3
assign dwritet_1 = ~(dread & step_obuf & dstenz_n);

// INNER.NET (282) - dwritet2 : nd4
assign dwritet_2 = ~(szread & step_obuf & dsten_n & dstenz_n);

// INNER.NET (283) - dwritet3 : nd5
nd5 dwritet3_inst
(
	.q(dwritet_3), // OUT
	.a_0(sread), // IN
	.a_1(step_obuf), // IN
	.a_2(srcenz_n), // IN
	.a_3(dsten_n), // IN
	.a_4(dstenz_n)  // IN
);

// INNER.NET (285) - dwritet4 : nd6
assign dwritet_4 = ~(sreadx & step_obuf & srcenz_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (287) - dwritet5 : nd6
assign dwritet_5 = ~(idle & step_obuf & srcenx_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (289) - dwritet6 : nd6
assign dwritet_6 = ~(dzwrite_obuf & step_obuf & inner0_n & srcen_n & dsten_n & dstenz_n);

// INNER.NET (291) - dwritet7 : nd7
nd7 dwritet7_inst
(
	.q(dwritet_7), // OUT
	.a_0(dwrite_obuf), // IN
	.a_1(step_obuf), // IN
	.a_2(dstwrz_n), // IN
	.a_3(inner0_n), // IN
	.a_4(srcen_n), // IN
	.a_5(dsten_n), // IN
	.a_6(dstenz_n)  // IN
);

// INNER.NET (293) - dwritet8 : nd2
assign dwritet_8 = ~(dwrite_obuf & step_n);

// INNER.NET (294) - dwritet9 : nd9
nd9 dwritet9_inst
(
	.q(dwritei), // OUT
	.a_0(dwritet_0), // IN
	.a_1(dwritet_1), // IN
	.a_2(dwritet_2), // IN
	.a_3(dwritet_3), // IN
	.a_4(dwritet_4), // IN
	.a_5(dwritet_5), // IN
	.a_6(dwritet_6), // IN
	.a_7(dwritet_7), // IN
	.a_8(dwritet_8)  // IN
);

// INNER.NET (295) - dwrite : fd2qh
fd2q dwrite_inst
(
	.q(dwrite_obuf), // OUT
	.d(dwritei), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (299) - dzwritet0 : nd2
assign dzwritet_0 = ~(dzwrite_obuf & step_n);

// INNER.NET (300) - dzwritet1 : nd3
assign dzwritet_1 = ~(dwrite_obuf & step_obuf & dstwrz);

// INNER.NET (301) - dzwritet2 : nd2
assign dzwritei = ~(dzwritet_0 & dzwritet_1);

// INNER.NET (302) - dzwrite : fd2qu
fd2q dzwrite_inst
(
	.q(dzwrite_obuf), // OUT
	.d(dzwritei), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (309) - atick0t0 : nd4
assign atick0t_0 = ~(atick_n_0 & atick_n_1 & step_obuf & indone_n);

// INNER.NET (310) - atick0t1 : nd3
assign atick0t_1 = ~(atick_1_obuf & step_obuf & indone_n);

// INNER.NET (311) - atick0t2 : nd2
assign aticki_0_obuf = ~(atick0t_0 & atick0t_1);

// INNER.NET (312) - atick0 : fd2h
fd2 atick0_inst
(
	.q(atick_0_obuf), // OUT
	.qn(atick_n_0), // OUT
	.d(aticki_0_obuf), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (314) - atick1 : fd2qp
fd2q atick1_inst
(
	.q(atickt_1), // OUT
	.d(atick_0_obuf), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (315) - atick\[1] : iv
assign atick_n_1 = ~atickt_1;

// INNER.NET (316) - atick[1] : nivu
assign atick_1_obuf = atickt_1;

// INNER.NET (320) - aready : join
assign aready = atick_n_0;

// INNER.NET (324) - apipe : niv
assign apipe = atick_1_obuf;

// INNER.NET (337) - dpipe0t : nd2
assign dpipe0t = ~(atick_1_obuf & dwrite_obuf);

// INNER.NET (338) - dpipe[0] : nd2
assign dpipe_0 = ~(dpipe0t & gourd);

// INNER.NET (339) - dpipe1t0 : an2
assign dpipe1t0 = writereq_obuf & dwrite_obuf;

// INNER.NET (340) - dpipe1t1 : fd1q
fd1q dpipe1t1_inst
(
	.q(dpipe1t1), // OUT
	.d(dpipe1t0), // IN
	.cp(clk)  // IN
);

// INNER.NET (341) - dpipe[1] : or2
assign dpipe_1 = dpipe1t1 | gourd_n;

// INNER.NET (349) - zpipe0t0 : nd2
assign zpipe0t = ~(atick_0_obuf & dzwrite_obuf);

// INNER.NET (350) - zpipe0t1 : nd2
assign zpipe_0 = ~(zpipe0t & gourz);

// INNER.NET (352) - zpipe1t0 : an2
assign zpipe1t0 = writereq_obuf & dzwrite_obuf;

// INNER.NET (353) - zpipe1t1 : fd1q
fd1q zpipe1t1_inst
(
	.q(zpipe1t1), // OUT
	.d(zpipe1t0), // IN
	.cp(clk)  // IN
);

// INNER.NET (354) - zpipe[1] : or2p
assign zpipe_1 = zpipe1t1 | gourz_n;

// INNER.NET (359) - indot0 : nd3
assign indot_0 = ~(dzwrite_obuf & step_obuf & inner0_obuf);

// INNER.NET (360) - indot1 : nd4
assign indot_1 = ~(dwrite_obuf & step_obuf & dstwrz_n & inner0_obuf);

// INNER.NET (361) - indone : nd2p
assign indone_obuf = ~(indot_0 & indot_1);

// INNER.NET (362) - indone\ : iv
assign indone_n = ~indone_obuf;

// INNER.NET (367) - icntena : an2u
assign icntena = atick_0_obuf & dwrite_obuf;

// INNER.NET (369) - inner_count : inner_cnt
inner_cnt inner_count_inst
(
	.gpu_dout_16(gpu_dout_16), // TRI
	.gpu_dout_17(gpu_dout_17), // TRI
	.gpu_dout_18(gpu_dout_18), // TRI
	.gpu_dout_19(gpu_dout_19), // TRI
	.gpu_dout_20(gpu_dout_20), // TRI
	.gpu_dout_21(gpu_dout_21), // TRI
	.gpu_dout_22(gpu_dout_22), // TRI
	.gpu_dout_23(gpu_dout_23), // TRI
	.gpu_dout_24(gpu_dout_24), // TRI
	.gpu_dout_25(gpu_dout_25), // TRI
	.gpu_dout_26(gpu_dout_26), // TRI
	.gpu_dout_27(gpu_dout_27), // TRI
	.gpu_dout_28(gpu_dout_28), // TRI
	.gpu_dout_29(gpu_dout_29), // TRI
	.gpu_dout_30(gpu_dout_30), // TRI
	.gpu_dout_31(gpu_dout_31), // TRI
	.icount_0(icount_0), // IO
	.icount_1(icount_1), // IO
	.icount_2(icount_2), // IO
	.inner0(inner0_obuf), // OUT
	.clk(clk), // IN
	.countld(countld), // IN
	.dstxp({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.icntena(icntena), // IN
	.ireload(instart), // IN
	.phrase_mode(phrase_mode), // IN
	.pixsize_0(pixsize_0), // IN
	.pixsize_1(pixsize_1), // IN
	.pixsize_2(pixsize_2), // IN
	.statrd(statrd)  // IN
);

// INNER.NET (385) - oldoutld : an2
assign oldoutld = srca_add & atick_1_obuf;

// INNER.NET (386) - oldoutside : mx2
mx2 oldoutside_inst
(
	.z(oldoutside), // OUT
	.a0(oldoutsidel), // IN
	.a1(a1_outside), // IN
	.s(oldoutld)  // IN
);

// INNER.NET (388) - oldoutsidel : fd1q
fd1q oldoutsidel_inst
(
	.q(oldoutsidel), // OUT
	.d(oldoutside), // IN
	.cp(clk)  // IN
);

// INNER.NET (389) - outside : mx2
mx2 outside_inst
(
	.z(outside), // OUT
	.a0(a1_outside), // IN
	.a1(oldoutside), // IN
	.s(dsta2)  // IN
);

// INNER.NET (390) - clip\ : nd2
assign clip_n = ~(diso_a1 & outside);

// INNER.NET (397) - rreqt : or6
assign rreqt = sreadx | szreadx | sread | szread | dread | dzread;

// INNER.NET (399) - readreq : an2p
assign readreq_obuf = rreqt & step_obuf;

// INNER.NET (400) - wreqt : or2
assign wreqt = dwrite_obuf | dzwrite_obuf;

// INNER.NET (401) - writereq : an4
assign writereq_obuf = wreqt & step_obuf & nowrite_n & clip_n;

// INNER.NET (406) - sraat0 : an2
assign sraat_0 = sreadxi & srcenz_n;

// INNER.NET (407) - sraat1 : an2
assign sraat_1 = sreadi & srcenz_n;

// INNER.NET (408) - srca_addi : or4
assign srca_addi_obuf = szreadxi | szreadi | sraat_0 | sraat_1;

// INNER.NET (409) - srca_add : fd1q
fd1q srca_add_inst
(
	.q(srca_add), // OUT
	.d(srca_addi_obuf), // IN
	.cp(clk)  // IN
);

// INNER.NET (411) - dstaat : an2
assign dstaat = dwritei & dstwrz_n;

// INNER.NET (412) - dsta_addi : or2
assign dsta_addi = dzwritei | dstaat;

// INNER.NET (416) - gensrc : or4
assign gensrc = sreadxi | szreadxi | sreadi | szreadi;

// INNER.NET (418) - gendst : or4
assign gendst = dreadi | dzreadi | dwritei | dzwritei;

// INNER.NET (420) - dsta2\ : iv
assign dsta2_n = ~dsta2;

// INNER.NET (421) - gena2t0 : nd2
assign gena2t_0 = ~(gensrc & dsta2_n);

// INNER.NET (422) - gena2t1 : nd2
assign gena2t_1 = ~(gendst & dsta2);

// INNER.NET (423) - gena2i : nd2
assign gena2i = ~(gena2t_0 & gena2t_1);

// INNER.NET (424) - gena2 : fd1qu
fd1q gena2_inst
(
	.q(gena2), // OUT
	.d(gena2i), // IN
	.cp(clk)  // IN
);

// INNER.NET (426) - zaddr : or4
assign zaddr = szreadx | szread | dzread | dzwrite_obuf;

// INNER.NET (430) - sreadx1 : fdsyncr
fdsyncr sreadx1_inst
(
	.q(sreadx_1_obuf), // IO
	.d(sreadx), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (432) - sread1 : fdsyncr
fdsyncr sread1_inst
(
	.q(sread_1_obuf), // IO
	.d(sread), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (434) - szread1 : fdsyncr
fdsyncr szread1_inst
(
	.q(szread_1), // IO
	.d(szread), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (436) - dread1 : fdsyncr
fdsyncr dread1_inst
(
	.q(dread_1), // IO
	.d(dread), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (438) - dzread1 : fdsyncr
fdsyncr dzread1_inst
(
	.q(dzread_1), // IO
	.d(dzread), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (440) - dwrite1 : fdsync
fdsync dwrite1_inst
(
	.q(dwrite1_obuf), // IO
	.d(dwrite_obuf), // IN
	.ld(step_p1), // IN
	.clk(clk)  // IN
);

// INNER.NET (441) - dzwrite1 : fdsync
fdsync dzwrite1_inst
(
	.q(dzwrite1_obuf), // IO
	.d(dzwrite_obuf), // IN
	.ld(step_p1), // IN
	.clk(clk)  // IN
);

// INNER.NET (445) - dest_cycle[1] : or4
assign dest_cycle_1 = dread_1 | dzread_1 | dwrite1_obuf | dzwrite1_obuf;

// INNER.NET (453) - srcdxack : join
assign srcdxack_n = read_ack_n;

// INNER.NET (454) - srczxack : or2
assign srczxack_n = read_ack_n | srcdxpend;

// INNER.NET (455) - srcdack : or3
assign srcdack_n = read_ack_n | srcdxpend | srczxpend;

// INNER.NET (457) - srczack : or4
assign srczack_n = read_ack_n | srcdpend | srcdxpend | srczxpend;

// INNER.NET (459) - dstdack : or5
or5 dstdack_inst
(
	.z(dstdack_n), // IO
	.a(read_ack_n), // IN
	.b(srcdpend), // IN
	.c(srczpend), // IN
	.d(srcdxpend), // IN
	.e(srczxpend)  // IN
);

// INNER.NET (461) - dstzack : or6
assign dstzack_n = read_ack_n | dstdpend | srcdpend | srczpend | srcdxpend | srczxpend;

// INNER.NET (466) - srcdpset\ : nd2
assign srcdpset_n = ~(readreq_obuf & sread);

// INNER.NET (467) - srcdpt1 : nd2
assign srcdpt_1 = ~(srcdpend & srcdack_n);

// INNER.NET (468) - srcdpt2 : nd2
assign srcdpt_2 = ~(srcdpset_n & srcdpt_1);

// INNER.NET (469) - srcdpend : fd2q
fd2q srcdpend_inst
(
	.q(srcdpend), // OUT
	.d(srcdpt_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (471) - srcdxpset\ : nd2
assign srcdxpset_n = ~(readreq_obuf & sreadx);

// INNER.NET (472) - srcdxpt1 : nd2
assign srcdxpt_1 = ~(srcdxpend & srcdxack_n);

// INNER.NET (473) - srcdxpt2 : nd2
assign srcdxpt_2 = ~(srcdxpset_n & srcdxpt_1);

// INNER.NET (474) - srcdxpend : fd2q
fd2q srcdxpend_inst
(
	.q(srcdxpend), // OUT
	.d(srcdxpt_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (476) - sdpend : or2
assign sdpend = srcdxpend | srcdpend;

// INNER.NET (477) - srcdreadt : an2
assign srcdreadt = sdpend & read_ack;

// INNER.NET (484) - srcdreadd : fd1q
fd1q srcdreadd_inst
(
	.q(srcdreadd_obuf), // OUT
	.d(srcdreadt), // IN
	.cp(clk)  // IN
);

// INNER.NET (485) - srcdread : aor1
assign srcdread = (srcshade & srcdreadd_obuf) | srcdreadt;

// INNER.NET (489) - srczpset\ : nd2
assign srczpset_n = ~(readreq_obuf & szread);

// INNER.NET (490) - srczpt1 : nd2
assign srczpt_1 = ~(srczpend & srczack_n);

// INNER.NET (491) - srczpt2 : nd2
assign srczpt_2 = ~(srczpset_n & srczpt_1);

// INNER.NET (492) - srczpend : fd2q
fd2q srczpend_inst
(
	.q(srczpend), // OUT
	.d(srczpt_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (494) - srczxpset\ : nd2
assign srczxpset_n = ~(readreq_obuf & szreadx);

// INNER.NET (495) - srczxpt1 : nd2
assign srczxpt_1 = ~(srczxpend & srczxack_n);

// INNER.NET (496) - srczxpt2 : nd2
assign srczxpt_2 = ~(srczxpset_n & srczxpt_1);

// INNER.NET (497) - srczxpend : fd2q
fd2q srczxpend_inst
(
	.q(srczxpend), // OUT
	.d(srczxpt_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (499) - szpend : or2
assign szpend = srczpend | srczxpend;

// INNER.NET (500) - srczread : an2
assign srczread = szpend & read_ack;

// INNER.NET (504) - dstdpset\ : nd2
assign dstdpset_n = ~(readreq_obuf & dread);

// INNER.NET (505) - dstdpt0 : nd2
assign dstdpt_0 = ~(dstdpend & dstdack_n);

// INNER.NET (506) - dstdpt1 : nd2
assign dstdpt_1 = ~(dstdpset_n & dstdpt_0);

// INNER.NET (507) - dstdpend : fd2q
fd2q dstdpend_inst
(
	.q(dstdpend), // OUT
	.d(dstdpt_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (508) - dstdread : an2
assign dstdread = dstdpend & read_ack;

// INNER.NET (512) - dstzpset\ : nd2
assign dstzpset_n = ~(readreq_obuf & dzread);

// INNER.NET (513) - dstzpt0 : nd2
assign dstzpt_0 = ~(dstzpend & dstzack_n);

// INNER.NET (514) - dstzpt1 : nd2
assign dstzpt_1 = ~(dstzpset_n & dstzpt_0);

// INNER.NET (515) - dstzpend : fd2q
fd2q dstzpend_inst
(
	.q(dstzpend), // OUT
	.d(dstzpt_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INNER.NET (516) - dstzread : an2
assign dstzread = dstzpend & read_ack;

// INNER.NET (523) - denat0 : or2
assign denat_0 = dwrite_obuf | dzwrite_obuf;

// INNER.NET (524) - denat1 : an3
assign denat_1 = denat_0 & nowrite_n & clip_n;

// INNER.NET (525) - denat2 : fdsyncr
fdsyncr denat2_inst
(
	.q(denat_2), // IO
	.d(denat_1), // IN
	.ld(step_p1), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INNER.NET (527) - dstdwt : an3
assign denat_3 = blitack & wactive & denat_2;

// INNER.NET (528) - data_ena : fd1qp
fd1q data_ena_inst
(
	.q(data_ena), // OUT
	.d(denat_3), // IN
	.cp(clk)  // IN
);
endmodule
