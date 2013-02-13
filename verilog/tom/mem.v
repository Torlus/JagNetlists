`include "defs.v"

module mem
(
	input bbreq_0,
	input bbreq_1,
	input gbreq_0,
	input gbreq_1,
	input obbreq,
	input sizin_0,
	input sizin_1,
	input dbrl_0,
	input dbrl_1,
	input dreqin,
	input rwin,
	input bs_0,
	input bs_1,
	input bs_2,
	input bs_3,
	input match,
	input intdev,
	input dram,
	input fextdev,
	input fintdev,
	input fdram,
	input from,
	input cpu32,
	input refreq,
	input dspd_0,
	input dspd_1,
	input romspd_0,
	input romspd_1,
	input iospd_0,
	input iospd_1,
	input a_0,
	input a_1,
	input a_2,
	input mw_0,
	input mw_1,
	input ourack,
	input resetl,
	input clk,
	input vcc,
	input gnd,
	input bglin,
	input brlin,
	input ihandler,
	input bigend,
	input bgain,
	input abs_2,
	input abs_3,
	input testen,
	input waitl,
	input fastrom,
	input m68k,
	input pclk,
	output ack,
	output bback,
	output gback,
	output obback,
	output romcsl_0,
	output romcsl_1,
	output rasl_0,
	output rasl_1,
	output casl_0,
	output casl_1,
	output oel_0,
	output oel_1,
	output oel_2,
	output wel_0,
	output wel_1,
	output wel_2,
	output wel_3,
	output wel_4,
	output wel_5,
	output wel_6,
	output wel_7,
	output sizout_0,
	output sizout_1,
	output sizout_2,
	output den_0,
	output den_1,
	output den_2,
	output aen,
	output dtackl,
	output brlout,
	output dbgl,
	output dreqlout,
	output d7a,
	output readt,
	output dinlatch_0,
	output dinlatch_1,
	output dinlatch_2,
	output dinlatch_3,
	output dinlatch_4,
	output dinlatch_5,
	output dinlatch_6,
	output dinlatch_7,
	output dmuxu_0,
	output dmuxu_1,
	output dmuxu_2,
	output dmuxd_0,
	output dmuxd_1,
	output dmuxd_2,
	output dren,
	output xdsrc,
	output maska_0,
	output maska_1,
	output maska_2,
	output at_0,
	output at_1,
	output at_2,
	output ainen,
	output newrow,
	output resrow,
	output mux,
	output refack,
	output reads,
	output wet,
	output oet,
	output ba,
	output intswe,
	output intwe,
	output dspcsl,
	inout w_0,
	inout w_1,
	inout w_2,
	inout w_3,
	inout rw,
	inout mreq,
	inout justify
);
wire notreadt;
wire intbm;
wire cpubm;
wire intbms;
wire intbmw;
wire mwt_0;
wire mwt_1;
wire nextc;
wire maskw_0;
wire maskw_1;
wire maskw_2;
wire maskw_3;
wire lastcycle;
wire lastc;
wire bm_0;
wire bm_1;
wire bm_2;
wire bm_3;
wire bm_4;
wire bm_5;
wire bm_6;
wire bm_7;
wire ba_0;
wire ba_1;
wire ba_2;
wire mws64;
wire mws16;
wire mws8;
wire erd;
wire idle;
wire notack;
wire d0;
wire q1a;
wire d1a;
wire q1b;
wire d1b;
wire q1c;
wire d1c;
wire q1d;
wire d1d;
wire q2a;
wire q2b;
wire d2b;
wire q2c;
wire d2c;
wire q3a;
wire d3a;
wire q3b;
wire q4a;
wire d4a;
wire q4b;
wire d4b;
wire q4c;
wire d4c;
wire q4d;
wire d4d;
wire q4e;
wire q4f;
wire d4f;
wire q4g;
wire d4g;
wire q4h;
wire d4h;
wire q4i;
wire q5ai;
wire d5a;
wire q5b;
wire d5b;
wire q5c;
wire d5c;
wire q7a;
wire q7b;
wire d7b;
wire q8a;
wire d8a;
wire q8b;
wire d8b;
wire q8c;
wire d8c;
wire q10;
wire d10;
wire q5a;
wire mtb0;
wire mtb1;
wire mtb2;
wire mtb3;
wire mtb5;
wire mtb6;
wire mtb8;
wire mtb9;
wire mtba;
wire mtbb;
wire mtbd;
wire mtb;
wire notmreq;
wire mreqb;
wire notmatch;
wire notrefack;
wire notourack;
wire mt1b0;
wire dramspeed0;
wire mt1b1;
wire dramspeed1;
wire mt1c0;
wire dramspeed2;
wire mt1c1;
wire mt1d0;
wire dramspeed3;
wire mt1d1;
wire mt2b0;
wire mt2b1;
wire mt2c0;
wire mt2c1;
wire mt3a0;
wire mt3a1;
wire mt3a2;
wire mt3a3;
wire notlastcycle;
wire mt4b0;
wire mt4b1;
wire mt4c0;
wire mt4c1;
wire mt4d0;
wire mt4d1;
wire mt4g0;
wire mt4g1;
wire mt4g2;
wire mt4h0;
wire mt4h1;
wire mt5a0;
wire mt5a1;
wire mt5b0;
wire slowrom;
wire mt5b1;
wire notwaitdone;
wire mt5c0;
wire mt5c1;
wire waitdone;
wire mt7a0;
wire mt7a1;
wire notreads;
wire mt7a2;
wire mt8a0;
wire mt8a1;
wire mt8b0;
wire mt8b1;
wire wait1;
wire iospeed2;
wire wait2;
wire romspeed3;
wire wait30;
wire romspeed2;
wire wait31;
wire iospeed3;
wire wait3;
wire wait5;
wire romspeed1;
wire wait70;
wire romspeed0;
wire wait71;
wire iospeed1;
wire wait7;
wire wait15;
wire iospeed0;
wire rasoffl_1;
wire rasoffl_2;
wire rason;
wire muxi;
wire oet0;
wire oet1;
wire oet2;
wire oet3;
wire oet4;
wire oet5;
wire oet6;
wire oet7;
wire oeti;
wire startcas;
wire dinl0;
wire dinl1;
wire dinl3;
wire dinl4;
wire dinlatchd;
wire dinlatch;
wire iwnext;
wire nextci;
wire sw0;
wire swd;
wire startwe;
wire notrw;
wire doll;
wire lwdli;
wire lwdl;
wire allrasoffl;
wire allrasonl;
wire allcasonl;
wire wq_0;
wire wco_0;
wire wd_0;
wire wcen;
wire wld;
wire wq_1;
wire wco_1;
wire wd_1;
wire wq_2;
wire wco_2;
wire wd_2;
wire wq_3;
wire wco_3;
wire _wait;
wire waitdonei;
wire dspdl_0;
wire dspdl_1;
wire iospdl_0;
wire iospdl_1;
wire romspdl_0;
wire romspdl_1;
wire clkl;
wire pclkl;
wire casd_0;
wire casd_1;
wire cas00;
wire cas01;
wire cas10;
wire cas11;
wire romcst;
wire dspcsli;
wire int_wel;
wire mwsl_0;
wire mwsl_1;
wire mws_0;
wire mws_1;
wire wet0;
wire wet0l;
wire weti;
wire mws32;
wire we00;
wire we01;
wire we02;
wire we03;
wire we04;
wire we05;
wire we_0;
wire we10;
wire we11;
wire we12;
wire we13;
wire we14;
wire we15;
wire we16;
wire we_1;
wire we20;
wire we21;
wire we22;
wire we_2;
wire we30;
wire we31;
wire we32;
wire we_3;
wire oe00;
wire oe01;
wire oe02;
wire oe03;
wire oe04;
wire oe05;
wire oe10;
wire oe11;
wire oe12;
wire oe13;
wire oe14;
wire oe15;
wire oe20;
wire oe21;
wire oe22;
wire oe23;
wire dinlatchl_0;
wire dinlatchl_1;
wire dinlatchl_2;
wire dinlatchl_3;
wire dinlatchl_4;
wire dinlatchl_5;
wire dinlatchl_6;
wire dinlatchl_7;
wire readsi;
wire mwti_0;
wire mwti_1;
wire dreqd;

// Output buffers
wire ack_obuf;
wire bback_obuf;
wire gback_obuf;
wire obback_obuf;
wire romcsl_0_obuf;
wire romcsl_1_obuf;
wire rasl_0_obuf;
wire rasl_1_obuf;
wire casl_0_obuf;
wire casl_1_obuf;
wire oel_0_obuf;
wire oel_1_obuf;
wire oel_2_obuf;
wire wel_0_obuf;
wire wel_1_obuf;
wire wel_2_obuf;
wire wel_3_obuf;
wire wel_4_obuf;
wire wel_5_obuf;
wire wel_6_obuf;
wire wel_7_obuf;
wire sizout_0_obuf;
wire sizout_1_obuf;
wire sizout_2_obuf;
wire den_0_obuf;
wire den_1_obuf;
wire den_2_obuf;
wire aen_obuf;
wire dtackl_obuf;
wire brlout_obuf;
wire dbgl_obuf;
wire dreqlout_obuf;
wire d7a_obuf;
wire readt_obuf;
wire dinlatch_0_obuf;
wire dinlatch_1_obuf;
wire dinlatch_2_obuf;
wire dinlatch_3_obuf;
wire dinlatch_4_obuf;
wire dinlatch_5_obuf;
wire dinlatch_6_obuf;
wire dinlatch_7_obuf;
wire dmuxu_0_obuf;
wire dmuxu_1_obuf;
wire dmuxu_2_obuf;
wire dmuxd_0_obuf;
wire dmuxd_1_obuf;
wire dmuxd_2_obuf;
wire dren_obuf;
wire xdsrc_obuf;
wire maska_0_obuf;
wire maska_1_obuf;
wire maska_2_obuf;
wire at_0_obuf;
wire at_1_obuf;
wire at_2_obuf;
wire ainen_obuf;
wire newrow_obuf;
wire resrow_obuf;
wire mux_obuf;
wire refack_obuf;
wire reads_obuf;
wire wet_obuf;
wire oet_obuf;
wire ba_obuf;
wire intswe_obuf;
wire intwe_obuf;
wire dspcsl_obuf;


// Output buffers
assign ack = ack_obuf;
assign bback = bback_obuf;
assign gback = gback_obuf;
assign obback = obback_obuf;
assign romcsl_0 = romcsl_0_obuf;
assign romcsl_1 = romcsl_1_obuf;
assign rasl_0 = rasl_0_obuf;
assign rasl_1 = rasl_1_obuf;
assign casl_0 = casl_0_obuf;
assign casl_1 = casl_1_obuf;
assign oel_0 = oel_0_obuf;
assign oel_1 = oel_1_obuf;
assign oel_2 = oel_2_obuf;
assign wel_0 = wel_0_obuf;
assign wel_1 = wel_1_obuf;
assign wel_2 = wel_2_obuf;
assign wel_3 = wel_3_obuf;
assign wel_4 = wel_4_obuf;
assign wel_5 = wel_5_obuf;
assign wel_6 = wel_6_obuf;
assign wel_7 = wel_7_obuf;
assign sizout_0 = sizout_0_obuf;
assign sizout_1 = sizout_1_obuf;
assign sizout_2 = sizout_2_obuf;
assign den_0 = den_0_obuf;
assign den_1 = den_1_obuf;
assign den_2 = den_2_obuf;
assign aen = aen_obuf;
assign dtackl = dtackl_obuf;
assign brlout = brlout_obuf;
assign dbgl = dbgl_obuf;
assign dreqlout = dreqlout_obuf;
assign d7a = d7a_obuf;
assign readt = readt_obuf;
assign dinlatch_0 = dinlatch_0_obuf;
assign dinlatch_1 = dinlatch_1_obuf;
assign dinlatch_2 = dinlatch_2_obuf;
assign dinlatch_3 = dinlatch_3_obuf;
assign dinlatch_4 = dinlatch_4_obuf;
assign dinlatch_5 = dinlatch_5_obuf;
assign dinlatch_6 = dinlatch_6_obuf;
assign dinlatch_7 = dinlatch_7_obuf;
assign dmuxu_0 = dmuxu_0_obuf;
assign dmuxu_1 = dmuxu_1_obuf;
assign dmuxu_2 = dmuxu_2_obuf;
assign dmuxd_0 = dmuxd_0_obuf;
assign dmuxd_1 = dmuxd_1_obuf;
assign dmuxd_2 = dmuxd_2_obuf;
assign dren = dren_obuf;
assign xdsrc = xdsrc_obuf;
assign maska_0 = maska_0_obuf;
assign maska_1 = maska_1_obuf;
assign maska_2 = maska_2_obuf;
assign at_0 = at_0_obuf;
assign at_1 = at_1_obuf;
assign at_2 = at_2_obuf;
assign ainen = ainen_obuf;
assign newrow = newrow_obuf;
assign resrow = resrow_obuf;
assign mux = mux_obuf;
assign refack = refack_obuf;
assign reads = reads_obuf;
assign wet = wet_obuf;
assign oet = oet_obuf;
assign ba = ba_obuf;
assign intswe = intswe_obuf;
assign intwe = intwe_obuf;
assign dspcsl = dspcsl_obuf;


// MEM.NET (116) - arb : arb
arb arb_inst
(
	.bbreq_0(bbreq_0), // IN
	.bbreq_1(bbreq_1), // IN
	.gbreq_0(gbreq_0), // IN
	.gbreq_1(gbreq_1), // IN
	.obbreq(obbreq), // IN
	.bglin(bglin), // IN
	.brlin(brlin), // IN
	.dbrl_0(dbrl_0), // IN
	.dbrl_1(dbrl_1), // IN
	.refreq(refreq), // IN
	.ihandler(ihandler), // IN
	.ack(ack_obuf), // IN
	.resetl(resetl), // IN
	.clk(clk), // IN
	.vcc(vcc), // IN
	.bgain(bgain), // IN
	.notreadt(notreadt), // IN
	.dreqin(dreqin), // IN
	.bback(bback_obuf), // IO
	.gback(gback_obuf), // IO
	.obback(obback_obuf), // IO
	.brlout(brlout_obuf), // IO
	.dbgl(dbgl_obuf), // IO
	.refack(refack_obuf), // IO
	.ba(ba_obuf), // IO
	.intbm(intbm), // IO
	.cpubm(cpubm), // IO
	.intbms(intbms), // IO
	.intbmw(intbmw)  // IO
);

// MEM.NET (123) - mw : memwidth
memwidth mw_inst
(
	.w_0(w_0), // IN
	.w_1(w_1), // IN
	.w_2(w_2), // IN
	.w_3(w_3), // IN
	.ba_0(a_0), // IN
	.ba_1(a_1), // IN
	.ba_2(a_2), // IN
	.mw_0(mwt_0), // IN
	.mw_1(mwt_1), // IN
	.ack(ack_obuf), // IN
	.nextc(nextc), // IN
	.clk(clk), // IN
	.vcc(vcc), // IN
	.gnd(gnd), // IN
	.bigend(bigend), // IN
	.maskw_0(maskw_0), // IO
	.maskw_1(maskw_1), // IO
	.maskw_2(maskw_2), // IO
	.maskw_3(maskw_3), // IO
	.maska_0(maska_0_obuf), // IO
	.maska_1(maska_1_obuf), // IO
	.maska_2(maska_2_obuf), // IO
	.at_0(at_0_obuf), // IO
	.at_1(at_1_obuf), // IO
	.at_2(at_2_obuf), // IO
	.lastcycle(lastcycle), // IO
	.lastc(lastc), // IO
	.bm_0(bm_0), // IO
	.bm_1(bm_1), // IO
	.bm_2(bm_2), // IO
	.bm_3(bm_3), // IO
	.bm_4(bm_4), // IO
	.bm_5(bm_5), // IO
	.bm_6(bm_6), // IO
	.bm_7(bm_7)  // IO
);

// MEM.NET (129) - bus : bus
bus bus_inst
(
	.reads(reads_obuf), // IN
	.ack(ack_obuf), // IN
	.intdev(intdev), // IN
	.cpu32(cpu32), // IN
	.ba_0(ba_0), // IN
	.ba_1(ba_1), // IN
	.ba_2(ba_2), // IN
	.mws64(mws64), // IN
	.mws16(mws16), // IN
	.mws8(mws8), // IN
	.notdbg(dbgl_obuf), // IN
	.ourack(ourack), // IN
	.w_0(w_0), // IN
	.w_1(w_1), // IN
	.w_2(w_2), // IN
	.w_3(w_3), // IN
	.erd(erd), // IN
	.justify(justify), // IN
	.intbm(intbm), // IN
	.intbms(intbms), // IN
	.cpubm(cpubm), // IN
	.clk(clk), // IN
	.testen(testen), // IN
	.intbmw(intbmw), // IN
	.resetl(resetl), // IN
	.idle(idle), // IN
	.den_0(den_0_obuf), // IO
	.den_1(den_1_obuf), // IO
	.den_2(den_2_obuf), // IO
	.aen(aen_obuf), // IO
	.dmuxu_0(dmuxu_0_obuf), // IO
	.dmuxu_1(dmuxu_1_obuf), // IO
	.dmuxu_2(dmuxu_2_obuf), // IO
	.dmuxd_0(dmuxd_0_obuf), // IO
	.dmuxd_1(dmuxd_1_obuf), // IO
	.dmuxd_2(dmuxd_2_obuf), // IO
	.dren(dren_obuf), // IO
	.xdsrc(xdsrc_obuf), // IO
	.ainen(ainen_obuf)  // IO
);

// MEM.NET (139) - cpu : cpu
cpu cpu_inst
(
	.sizin_0(sizin_0), // IN
	.sizin_1(sizin_1), // IN
	.rwin(rwin), // IN
	.notack(notack), // IN
	.ack(ack_obuf), // IN
	.dreqin(dreqin), // IN
	.resetl(resetl), // IN
	.clk_0(clk), // IN
	.intbm(intbm), // IN
	.intbms(intbms), // IN
	.m68k(m68k), // IN
	.ba(ba_obuf), // IN
	.dbgl(dbgl_obuf), // IN
	.dtackl(dtackl_obuf), // IO
	.erd(erd), // IO
	.w_0(w_0), // BUS
	.w_1(w_1), // BUS
	.w_2(w_2), // BUS
	.w_3(w_3), // BUS
	.rw(rw), // BUS
	.mreq(mreq), // BUS
	.justify(justify)  // BUS
);

// MEM.NET (275) - q0 : fd4q
fd4q q0_inst
(
	.q(idle), // OUT
	.d(d0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// MEM.NET (276) - q1a : fd2q
fd2q q1a_inst
(
	.q(q1a), // OUT
	.d(d1a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (277) - q1b : fd2q
fd2q q1b_inst
(
	.q(q1b), // OUT
	.d(d1b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (278) - q1c : fd2q
fd2q q1c_inst
(
	.q(q1c), // OUT
	.d(d1c), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (279) - q1d : fd2q
fd2q q1d_inst
(
	.q(q1d), // OUT
	.d(d1d), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (280) - q2a : fd2q
fd2q q2a_inst
(
	.q(q2a), // OUT
	.d(q1d), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (281) - q2b : fd2q
fd2q q2b_inst
(
	.q(q2b), // OUT
	.d(d2b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (282) - q2c : fd2q
fd2q q2c_inst
(
	.q(q2c), // OUT
	.d(d2c), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (283) - q3a : fd2q
fd2q q3a_inst
(
	.q(q3a), // OUT
	.d(d3a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (284) - q3b : fd2q
fd2q q3b_inst
(
	.q(q3b), // OUT
	.d(q3a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (285) - q4a : fd2q
fd2q q4a_inst
(
	.q(q4a), // OUT
	.d(d4a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (286) - q4b : fd2q
fd2q q4b_inst
(
	.q(q4b), // OUT
	.d(d4b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (287) - q4c : fd2q
fd2q q4c_inst
(
	.q(q4c), // OUT
	.d(d4c), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (288) - q4d : fd2q
fd2q q4d_inst
(
	.q(q4d), // OUT
	.d(d4d), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (289) - q4e : fd2q
fd2q q4e_inst
(
	.q(q4e), // OUT
	.d(q4d), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (290) - q4f : fd2q
fd2q q4f_inst
(
	.q(q4f), // OUT
	.d(d4f), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (291) - q4g : fd2q
fd2q q4g_inst
(
	.q(q4g), // OUT
	.d(d4g), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (292) - q4h : fd2q
fd2q q4h_inst
(
	.q(q4h), // OUT
	.d(d4h), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (293) - q4i : fd2q
fd2q q4i_inst
(
	.q(q4i), // OUT
	.d(q4h), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (294) - q5ai : fd2q
fd2q q5ai_inst
(
	.q(q5ai), // OUT
	.d(d5a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (295) - q5b : fd2q
fd2q q5b_inst
(
	.q(q5b), // OUT
	.d(d5b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (296) - q5c : fd2q
fd2q q5c_inst
(
	.q(q5c), // OUT
	.d(d5c), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (297) - q7a : fd2q
fd2q q7a_inst
(
	.q(q7a), // OUT
	.d(d7a_obuf), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (298) - q7b : fd2q
fd2q q7b_inst
(
	.q(q7b), // OUT
	.d(d7b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (299) - q8a : fd2q
fd2q q8a_inst
(
	.q(q8a), // OUT
	.d(d8a), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (300) - q8b : fd2q
fd2q q8b_inst
(
	.q(q8b), // OUT
	.d(d8b), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (301) - q8c : fd2q
fd2q q8c_inst
(
	.q(q8c), // OUT
	.d(d8c), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (302) - q10 : fd2q
fd2q q10_inst
(
	.q(q10), // OUT
	.d(d10), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// MEM.NET (304) - q5a : niv
assign q5a = q5ai;

// MEM.NET (306) - q10u : dummy

// MEM.NET (313) - mtb0 : iv
assign mtb0 = ~d0;

// MEM.NET (314) - mtb1 : nd2
assign mtb1 = ~(q3a & lastcycle);

// MEM.NET (315) - mtb2 : iv
assign mtb2 = ~q4h;

// MEM.NET (316) - mtb3 : nd2
assign mtb3 = ~(d5c & lastcycle);

// MEM.NET (317) - mtb5 : nd3
assign mtb5 = ~(d7a_obuf & lastc & notreadt);

// MEM.NET (318) - mtb6 : nd2
assign mtb6 = ~(d8c & lastcycle);

// MEM.NET (319) - mtb8 : iv
assign mtb8 = ~d10;

// MEM.NET (320) - mtb9 : nd2
assign mtb9 = ~(d7b & lastcycle);

// MEM.NET (321) - notreadt : ivm
assign notreadt = ~readt_obuf;

// MEM.NET (323) - mtba : an6
assign mtba = mtb0 & mtb1 & mtb2 & mtb3 & vcc & mtb5;

// MEM.NET (324) - mtbb : an3
assign mtbb = mtb6 & mtb8 & mtb9;

// MEM.NET (325) - mtbd : nd2
assign mtbd = ~(mtba & mtbb);

// MEM.NET (326) - mtb : fd4q
fd4q mtb_inst
(
	.q(mtb), // OUT
	.d(mtbd), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// MEM.NET (327) - ack : nivu2
assign ack_obuf = mtb;

// MEM.NET (329) - d0 : an2
assign d0 = ack_obuf & notmreq;

// MEM.NET (330) - d1a : an6
assign d1a = ack_obuf & mreqb & fdram & notmatch & notrefack & notourack;

// MEM.NET (332) - mt1b0 : nd2
assign mt1b0 = ~(q1a & dramspeed0);

// MEM.NET (333) - mt1b1 : nd2
assign mt1b1 = ~(q1a & dramspeed1);

// MEM.NET (334) - d1b : nd2
assign d1b = ~(mt1b0 & mt1b1);

// MEM.NET (336) - mt1c0 : nd2
assign mt1c0 = ~(q1a & dramspeed2);

// MEM.NET (337) - mt1c1 : iv
assign mt1c1 = ~q1b;

// MEM.NET (338) - d1c : nd2
assign d1c = ~(mt1c0 & mt1c1);

// MEM.NET (340) - mt1d0 : nd2
assign mt1d0 = ~(q1a & dramspeed3);

// MEM.NET (341) - mt1d1 : iv
assign mt1d1 = ~q1c;

// MEM.NET (342) - d1d : nd2
assign d1d = ~(mt1d0 & mt1d1);

// MEM.NET (344) - mt2b0 : nd2
assign mt2b0 = ~(q2a & dramspeed0);

// MEM.NET (345) - mt2b1 : nd2
assign mt2b1 = ~(q2a & dramspeed1);

// MEM.NET (346) - d2b : nd2
assign d2b = ~(mt2b0 & mt2b1);

// MEM.NET (348) - mt2c0 : nd2
assign mt2c0 = ~(q2a & dramspeed2);

// MEM.NET (349) - mt2c1 : iv
assign mt2c1 = ~q2b;

// MEM.NET (350) - d2c : nd2
assign d2c = ~(mt2c0 & mt2c1);

// MEM.NET (352) - mt3a0 : nd6
assign mt3a0 = ~(ack_obuf & mreqb & fdram & match & notrefack & notourack);

// MEM.NET (353) - mt3a1 : nd2
assign mt3a1 = ~(q2a & dramspeed3);

// MEM.NET (354) - mt3a2 : iv
assign mt3a2 = ~q2c;

// MEM.NET (355) - mt3a3 : nd2
assign mt3a3 = ~(q3b & notlastcycle);

// MEM.NET (356) - d3a : nd4
assign d3a = ~(mt3a0 & mt3a1 & mt3a2 & mt3a3);

// MEM.NET (358) - d4a : an3
assign d4a = ack_obuf & mreqb & refack_obuf;

// MEM.NET (360) - mt4b0 : nd2
assign mt4b0 = ~(q4a & dramspeed0);

// MEM.NET (361) - mt4b1 : nd2
assign mt4b1 = ~(q4a & dramspeed1);

// MEM.NET (362) - d4b : nd2
assign d4b = ~(mt4b0 & mt4b1);

// MEM.NET (364) - mt4c0 : nd2
assign mt4c0 = ~(q4a & dramspeed2);

// MEM.NET (365) - mt4c1 : iv
assign mt4c1 = ~q4b;

// MEM.NET (366) - d4c : nd2
assign d4c = ~(mt4c0 & mt4c1);

// MEM.NET (368) - mt4d0 : nd2
assign mt4d0 = ~(q4a & dramspeed3);

// MEM.NET (369) - mt4d1 : iv
assign mt4d1 = ~q4c;

// MEM.NET (370) - d4d : nd2
assign d4d = ~(mt4d0 & mt4d1);

// MEM.NET (372) - d4f : an2
assign d4f = q4e & dramspeed0;

// MEM.NET (374) - mt4g0 : nd2
assign mt4g0 = ~(q4e & dramspeed1);

// MEM.NET (375) - mt4g1 : nd2
assign mt4g1 = ~(q4e & dramspeed2);

// MEM.NET (376) - mt4g2 : iv
assign mt4g2 = ~q4f;

// MEM.NET (377) - d4g : nd3
assign d4g = ~(mt4g0 & mt4g1 & mt4g2);

// MEM.NET (379) - mt4h0 : nd2
assign mt4h0 = ~(q4e & dramspeed3);

// MEM.NET (380) - mt4h1 : iv
assign mt4h1 = ~q4g;

// MEM.NET (381) - d4h : nd2
assign d4h = ~(mt4h0 & mt4h1);

// MEM.NET (383) - mt5a0 : nd6
assign mt5a0 = ~(ack_obuf & mreqb & from & notrefack & notourack & vcc);

// MEM.NET (384) - mt5a1 : nd2
assign mt5a1 = ~(q5c & notlastcycle);

// MEM.NET (385) - d5a : nd2
assign d5a = ~(mt5a0 & mt5a1);

// MEM.NET (387) - mt5b0 : nd2
assign mt5b0 = ~(q5a & slowrom);

// MEM.NET (388) - mt5b1 : nd2
assign mt5b1 = ~(q5b & notwaitdone);

// MEM.NET (389) - d5b : nd2
assign d5b = ~(mt5b0 & mt5b1);

// MEM.NET (391) - slowrom : iv
assign slowrom = ~fastrom;

// MEM.NET (392) - mt5c0 : nd2
assign mt5c0 = ~(q5a & fastrom);

// MEM.NET (393) - mt5c1 : nd2
assign mt5c1 = ~(q5b & waitdone);

// MEM.NET (394) - d5c : nd2
assign d5c = ~(mt5c0 & mt5c1);

// MEM.NET (396) - mt7a0 : nd6
assign mt7a0 = ~(ack_obuf & mreqb & fintdev & notrefack & notourack & vcc);

// MEM.NET (397) - mt7a1 : nd3
assign mt7a1 = ~(q7a & notreads & notlastcycle);

// MEM.NET (398) - mt7a2 : nd2
assign mt7a2 = ~(q7b & notlastcycle);

// MEM.NET (399) - d7a : nd3
assign d7a_obuf = ~(mt7a0 & mt7a1 & mt7a2);

// MEM.NET (401) - d7b : an2
assign d7b = q7a & reads_obuf;

// MEM.NET (403) - mt8a0 : nd6
assign mt8a0 = ~(ack_obuf & mreqb & fextdev & notrefack & notourack & vcc);

// MEM.NET (404) - mt8a1 : nd2
assign mt8a1 = ~(q8c & notlastcycle);

// MEM.NET (405) - d8a : nd2
assign d8a = ~(mt8a0 & mt8a1);

// MEM.NET (407) - mt8b0 : iv
assign mt8b0 = ~q8a;

// MEM.NET (408) - mt8b1 : nd2
assign mt8b1 = ~(q8b & notwaitdone);

// MEM.NET (409) - d8b : nd2
assign d8b = ~(mt8b0 & mt8b1);

// MEM.NET (411) - d8c : an2
assign d8c = q8b & waitdone;

// MEM.NET (413) - d10 : an4
assign d10 = ack_obuf & mreqb & ourack & notrefack;

// MEM.NET (415) - wait1 : an2
assign wait1 = iospeed2 & q8a;

// MEM.NET (417) - wait2 : an3
assign wait2 = romspeed3 & q5a & slowrom;

// MEM.NET (419) - wait30 : nd3
assign wait30 = ~(romspeed2 & q5a & slowrom);

// MEM.NET (420) - wait31 : nd2
assign wait31 = ~(iospeed3 & q8a);

// MEM.NET (421) - wait3 : nd2
assign wait3 = ~(wait30 & wait31);

// MEM.NET (423) - wait5 : an3
assign wait5 = romspeed1 & q5a & slowrom;

// MEM.NET (425) - wait70 : nd3
assign wait70 = ~(romspeed0 & q5a & slowrom);

// MEM.NET (426) - wait71 : nd2
assign wait71 = ~(iospeed1 & q8a);

// MEM.NET (427) - wait7 : nd2
assign wait7 = ~(wait70 & wait71);

// MEM.NET (429) - wait15 : an2
assign wait15 = iospeed0 & q8a;

// MEM.NET (433) - rasoffl[1-2] : nd2
assign rasoffl_1 = ~(d1a & abs_2);
assign rasoffl_2 = ~(d1a & abs_3);

// MEM.NET (435) - rason : niv
assign rason = q1d;

// MEM.NET (437) - muxi : nr2
assign muxi = ~(d1d | q1d);

// MEM.NET (438) - mux : ivm
assign mux_obuf = ~muxi;

// MEM.NET (449) - oet0 : nd2
assign oet0 = ~(q3a & reads_obuf);

// MEM.NET (450) - oet1 : nd2
assign oet1 = ~(q3b & reads_obuf);

// MEM.NET (451) - oet2 : nd2
assign oet2 = ~(q5a & reads_obuf);

// MEM.NET (452) - oet3 : nd2
assign oet3 = ~(q5b & reads_obuf);

// MEM.NET (453) - oet4 : nd2
assign oet4 = ~(q5c & reads_obuf);

// MEM.NET (454) - oet5 : nd2
assign oet5 = ~(q7a & reads_obuf);

// MEM.NET (455) - oet6 : nd2
assign oet6 = ~(q7b & reads_obuf);

// MEM.NET (456) - oet7 : nd2
assign oet7 = ~(q8b & reads_obuf);

// MEM.NET (457) - oeti : nd8
assign oeti = ~(oet0 & oet1 & oet2 & oet3 & oet4 & oet5 & oet6 & oet7);

// MEM.NET (458) - oet : nivu2
assign oet_obuf = oeti;

// MEM.NET (460) - startcas : an2
assign startcas = q3a & dram;

// MEM.NET (462) - dinl0 : nd2
assign dinl0 = ~(q3b & reads_obuf);

// MEM.NET (463) - dinl1 : nd2
assign dinl1 = ~(q5c & reads_obuf);

// MEM.NET (464) - dinl3 : nd2
assign dinl3 = ~(q7b & reads_obuf);

// MEM.NET (465) - dinl4 : nd2
assign dinl4 = ~(d8c & reads_obuf);

// MEM.NET (466) - dinlatchd : nd4
assign dinlatchd = ~(dinl0 & dinl1 & dinl3 & dinl4);

// MEM.NET (468) - dinlatch : nivh
assign dinlatch = dinlatchd;

// MEM.NET (470) - iwnext : an2
assign iwnext = q7a & notreads;

// MEM.NET (471) - nextci : nr6
assign nextci = ~(q3b | q5c | iwnext | q7b | q8c | ack_obuf);

// MEM.NET (472) - nextc : ivh
assign nextc = ~nextci;

// MEM.NET (474) - sw0 : nr4
assign sw0 = ~(d3a | d5a | d5b | d8b);

// MEM.NET (475) - swd : nr2
assign swd = ~(sw0 | readt_obuf);

// MEM.NET (476) - startwe : fd1q
fd1q startwe_inst
(
	.q(startwe), // OUT
	.d(swd), // IN
	.cp(clk)  // IN
);

// MEM.NET (480) - notrw : iv
assign notrw = ~rw;

// MEM.NET (481) - dol : nd3
assign doll = ~(ack_obuf & notrw & mreqb);

// MEM.NET (482) - lwdli : fd1q
fd1q lwdli_inst
(
	.q(lwdli), // OUT
	.d(doll), // IN
	.cp(clk)  // IN
);

// MEM.NET (483) - lwdl : nivh
assign lwdl = lwdli;

// MEM.NET (485) - allrasoffl : nr2
assign allrasoffl = ~(d4a | q4i);

// MEM.NET (486) - allrasonl : iv
assign allrasonl = ~q4d;

// MEM.NET (487) - allcasonl : nr2
assign allcasonl = ~(q4d | q4e);

// MEM.NET (488) - resrow : niv
assign resrow_obuf = q4a;

// MEM.NET (494) - w[0] : dncnt
dncnt w_index_0_inst
(
	.q(wq_0), // IO
	.co(wco_0), // IO
	.d(wd_0), // IN
	.clk(clk), // IN
	.ci(wcen), // IN
	.ld(wld), // IN
	.resl(resetl)  // IN
);

// MEM.NET (495) - w[1] : dncnt
dncnt w_index_1_inst
(
	.q(wq_1), // IO
	.co(wco_1), // IO
	.d(wd_1), // IN
	.clk(clk), // IN
	.ci(wco_0), // IN
	.ld(wld), // IN
	.resl(resetl)  // IN
);

// MEM.NET (496) - w[2] : dncnt
dncnt w_index_2_inst
(
	.q(wq_2), // IO
	.co(wco_2), // IO
	.d(wd_2), // IN
	.clk(clk), // IN
	.ci(wco_1), // IN
	.ld(wld), // IN
	.resl(resetl)  // IN
);

// MEM.NET (497) - w[3] : dncnt
dncnt w_index_3_inst
(
	.q(wq_3), // IO
	.co(wco_3), // IO
	.d(wait15), // IN
	.clk(clk), // IN
	.ci(wco_2), // IN
	.ld(wld), // IN
	.resl(resetl)  // IN
);

// MEM.NET (498) - wco[3] : dummy

// MEM.NET (499) - wcen : or4
assign wcen = wq_0 | wq_1 | wq_2 | wq_3;

// MEM.NET (501) - wld : or6
assign wld = wait1 | wait2 | wait3 | wait5 | wait7 | wait15;

// MEM.NET (503) - wait : iv
assign _wait = ~waitl;

// MEM.NET (504) - waitdonei : nr6
assign waitdonei = ~(wq_0 | wq_1 | wq_2 | wq_3 | _wait | gnd);

// MEM.NET (505) - notwaitdone : iv
assign notwaitdone = ~waitdonei;

// MEM.NET (506) - waitdone : iv
assign waitdone = ~notwaitdone;

// MEM.NET (508) - wd[0] : or6
assign wd_0 = wait1 | wait3 | wait5 | wait7 | wait15 | gnd;

// MEM.NET (509) - wd[1] : or4
assign wd_1 = wait2 | wait3 | wait7 | wait15;

// MEM.NET (510) - wd[2] : or3
assign wd_2 = wait5 | wait7 | wait15;

// MEM.NET (512) - dspdl[0-1] : iv
assign dspdl_0 = ~dspd_0;
assign dspdl_1 = ~dspd_1;

// MEM.NET (513) - iospdl[0-1] : iv
assign iospdl_0 = ~iospd_0;
assign iospdl_1 = ~iospd_1;

// MEM.NET (514) - romspdl[0-1] : iv
assign romspdl_0 = ~romspd_0;
assign romspdl_1 = ~romspd_1;

// MEM.NET (516) - dramspeed0 : an2
assign dramspeed0 = dspdl_1 & dspdl_0;

// MEM.NET (517) - dramspeed1 : an2
assign dramspeed1 = dspdl_1 & dspd_0;

// MEM.NET (518) - dramspeed2 : an2
assign dramspeed2 = dspd_1 & dspdl_0;

// MEM.NET (519) - dramspeed3 : an2
assign dramspeed3 = dspd_1 & dspd_0;

// MEM.NET (521) - iospeed0 : an2
assign iospeed0 = iospdl_1 & iospdl_0;

// MEM.NET (522) - iospeed1 : an2
assign iospeed1 = iospdl_1 & iospd_0;

// MEM.NET (523) - iospeed2 : an2
assign iospeed2 = iospd_1 & iospdl_0;

// MEM.NET (524) - iospeed3 : an2
assign iospeed3 = iospd_1 & iospd_0;

// MEM.NET (526) - romspeed0 : an2
assign romspeed0 = romspdl_1 & romspdl_0;

// MEM.NET (527) - romspeed1 : an2
assign romspeed1 = romspdl_1 & romspd_0;

// MEM.NET (528) - romspeed2 : an2
assign romspeed2 = romspd_1 & romspdl_0;

// MEM.NET (529) - romspeed3 : an2
assign romspeed3 = romspd_1 & romspd_0;

// MEM.NET (534) - rasl[0] : rasgen
rasgen rasl_index_0_inst
(
	.csl(rasl_0_obuf), // IO
	.on1(rason), // IN
	.roffl(rasoffl_2), // IN
	.bs(bs_3), // IN
	.allonl(allrasonl), // IN
	.alloffl(allrasoffl), // IN
	.clk(clk), // IN
	.resl(resetl)  // IN
);

// MEM.NET (536) - rasl[1] : rasgen
rasgen rasl_index_1_inst
(
	.csl(rasl_1_obuf), // IO
	.on1(rason), // IN
	.roffl(rasoffl_1), // IN
	.bs(bs_2), // IN
	.allonl(allrasonl), // IN
	.alloffl(allrasoffl), // IN
	.clk(clk), // IN
	.resl(resetl)  // IN
);

// MEM.NET (539) - clkl : iv
assign clkl = ~clk;

// MEM.NET (540) - pclkl : ivh
assign pclkl = ~pclk;

// MEM.NET (541) - casd[0] : nd2
assign casd_0 = ~(startcas & bs_3);

// MEM.NET (542) - casd[1] : nd2
assign casd_1 = ~(startcas & bs_2);

// MEM.NET (543) - cas00 : fd4q
fd4q cas00_inst
(
	.q(cas00), // OUT
	.d(casd_0), // IN
	.cp(pclkl), // IN
	.sd(resetl)  // IN
);

// MEM.NET (544) - cas01 : fd4q
fd4q cas01_inst
(
	.q(cas01), // OUT
	.d(casd_0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// MEM.NET (545) - cas10 : fd4q
fd4q cas10_inst
(
	.q(cas10), // OUT
	.d(casd_1), // IN
	.cp(pclkl), // IN
	.sd(resetl)  // IN
);

// MEM.NET (546) - cas11 : fd4q
fd4q cas11_inst
(
	.q(cas11), // OUT
	.d(casd_1), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// MEM.NET (547) - casl[0] : an3
assign casl_0_obuf = cas00 & cas01 & allcasonl;

// MEM.NET (548) - casl[1] : an3
assign casl_1_obuf = cas10 & cas11 & allcasonl;

// MEM.NET (550) - romcst : or3
assign romcst = q5a | q5b | q5c;

// MEM.NET (551) - romcsl[0-1] : nd2
assign romcsl_0_obuf = ~(bs_0 & romcst);
assign romcsl_1_obuf = ~(bs_1 & romcst);

// MEM.NET (553) - dspcsli : nr3
assign dspcsli = ~(q8a | q8b | q8c);

// MEM.NET (554) - dspcsl : niv
assign dspcsl_obuf = dspcsli;

// MEM.NET (556) - int_we : nd3
assign int_wel = ~(q7a & notreads & clkl);

// MEM.NET (557) - intwe : ivm
assign intwe_obuf = ~int_wel;

// MEM.NET (558) - intswe : an2
assign intswe_obuf = q7a & notreads;

// MEM.NET (560) - ba[0-2] : eo
assign ba_0 = maska_0_obuf ^ bigend;
assign ba_1 = maska_1_obuf ^ bigend;
assign ba_2 = maska_2_obuf ^ bigend;

// MEM.NET (573) - mwsl[0-1] : iv
assign mwsl_0 = ~mws_0;
assign mwsl_1 = ~mws_1;

// MEM.NET (574) - wet0 : fd2
fd2 wet0_inst
(
	.q(wet0), // OUT
	.qn(wet0l), // OUT
	.d(startwe), // IN
	.cp(pclkl), // IN
	.cd(resetl)  // IN
);

// MEM.NET (575) - wetu : dummy

// MEM.NET (576) - weti : nd2
assign weti = ~(wet0l & int_wel);

// MEM.NET (577) - wet : nivu
assign wet_obuf = weti;

// MEM.NET (578) - mws8 : an2
assign mws8 = mwsl_1 & mwsl_0;

// MEM.NET (579) - mws16 : an2m
assign mws16 = mwsl_1 & mws_0;

// MEM.NET (580) - mws32 : an2m
assign mws32 = mws_1 & mwsl_0;

// MEM.NET (581) - mws64 : an2m
assign mws64 = mws_1 & mws_0;

// MEM.NET (583) - we00 : iv
assign we00 = ~mws8;

// MEM.NET (584) - we01 : iv
assign we01 = ~bm_0;

// MEM.NET (585) - we02 : nd2
assign we02 = ~(mws16 & bm_2);

// MEM.NET (586) - we03 : nd2
assign we03 = ~(mws16 & bm_4);

// MEM.NET (587) - we04 : nd2
assign we04 = ~(mws16 & bm_6);

// MEM.NET (588) - we05 : nd2
assign we05 = ~(mws32 & bm_4);

// MEM.NET (589) - we[0] : nd6
assign we_0 = ~(we00 & we01 & we02 & we03 & we04 & we05);

// MEM.NET (600) - we10 : nd2
assign we10 = ~(mws16 & bm_1);

// MEM.NET (601) - we11 : nd2
assign we11 = ~(mws16 & bm_3);

// MEM.NET (602) - we12 : nd2
assign we12 = ~(mws16 & bm_5);

// MEM.NET (603) - we13 : nd2
assign we13 = ~(mws16 & bm_7);

// MEM.NET (604) - we14 : nd2
assign we14 = ~(mws32 & bm_1);

// MEM.NET (605) - we15 : nd2
assign we15 = ~(mws32 & bm_5);

// MEM.NET (606) - we16 : nd2
assign we16 = ~(mws64 & bm_1);

// MEM.NET (607) - we[1] : nd8
assign we_1 = ~(we10 & we11 & we12 & we13 & we14 & we15 & we16 & vcc);

// MEM.NET (617) - we20 : nd2
assign we20 = ~(mws32 & bm_2);

// MEM.NET (618) - we21 : nd2
assign we21 = ~(mws32 & bm_6);

// MEM.NET (619) - we22 : nd2
assign we22 = ~(mws64 & bm_2);

// MEM.NET (620) - we[2] : nd3
assign we_2 = ~(we20 & we21 & we22);

// MEM.NET (630) - we30 : nd2
assign we30 = ~(mws32 & bm_3);

// MEM.NET (631) - we31 : nd2
assign we31 = ~(mws32 & bm_7);

// MEM.NET (632) - we32 : nd2
assign we32 = ~(mws64 & bm_3);

// MEM.NET (633) - we[3] : nd3
assign we_3 = ~(we30 & we31 & we32);

// MEM.NET (635) - wel[0-3] : nd2
assign wel_0_obuf = ~(we_0 & wet_obuf);
assign wel_1_obuf = ~(we_1 & wet_obuf);
assign wel_2_obuf = ~(we_2 & wet_obuf);
assign wel_3_obuf = ~(we_3 & wet_obuf);

// MEM.NET (636) - wel[4-7] : nd3
assign wel_4_obuf = ~(wet_obuf & mws64 & bm_4);
assign wel_5_obuf = ~(wet_obuf & mws64 & bm_5);
assign wel_6_obuf = ~(wet_obuf & mws64 & bm_6);
assign wel_7_obuf = ~(wet_obuf & mws64 & bm_7);

// MEM.NET (660) - oe00 : nd2
assign oe00 = ~(oet_obuf & mws8);

// MEM.NET (661) - oe01 : nd2
assign oe01 = ~(oet_obuf & mws16);

// MEM.NET (662) - oe02 : nd2
assign oe02 = ~(oet_obuf & bm_0);

// MEM.NET (663) - oe03 : nd2
assign oe03 = ~(oet_obuf & bm_1);

// MEM.NET (664) - oe04 : nd3
assign oe04 = ~(oet_obuf & mws32 & bm_4);

// MEM.NET (665) - oe05 : nd3
assign oe05 = ~(oet_obuf & mws32 & bm_5);

// MEM.NET (666) - oel[0] : an6
assign oel_0_obuf = oe00 & oe01 & oe02 & oe03 & oe04 & oe05;

// MEM.NET (668) - oe10 : nd3
assign oe10 = ~(oet_obuf & mws32 & bm_2);

// MEM.NET (669) - oe11 : nd3
assign oe11 = ~(oet_obuf & mws32 & bm_3);

// MEM.NET (670) - oe12 : nd3
assign oe12 = ~(oet_obuf & mws32 & bm_6);

// MEM.NET (671) - oe13 : nd3
assign oe13 = ~(oet_obuf & mws32 & bm_7);

// MEM.NET (672) - oe14 : nd3
assign oe14 = ~(oet_obuf & mws64 & bm_2);

// MEM.NET (673) - oe15 : nd3
assign oe15 = ~(oet_obuf & mws64 & bm_3);

// MEM.NET (674) - oel[1] : an6
assign oel_1_obuf = oe10 & oe11 & oe12 & oe13 & oe14 & oe15;

// MEM.NET (676) - oe20 : nd3
assign oe20 = ~(oet_obuf & mws64 & bm_4);

// MEM.NET (677) - oe21 : nd3
assign oe21 = ~(oet_obuf & mws64 & bm_5);

// MEM.NET (678) - oe22 : nd3
assign oe22 = ~(oet_obuf & mws64 & bm_6);

// MEM.NET (679) - oe23 : nd3
assign oe23 = ~(oet_obuf & mws64 & bm_7);

// MEM.NET (680) - oel[2] : an4
assign oel_2_obuf = oe20 & oe21 & oe22 & oe23;

// MEM.NET (684) - dinlatchl[0-7] : nd2p
assign dinlatchl_0 = ~(dinlatch & bm_0);
assign dinlatchl_1 = ~(dinlatch & bm_1);
assign dinlatchl_2 = ~(dinlatch & bm_2);
assign dinlatchl_3 = ~(dinlatch & bm_3);
assign dinlatchl_4 = ~(dinlatch & bm_4);
assign dinlatchl_5 = ~(dinlatch & bm_5);
assign dinlatchl_6 = ~(dinlatch & bm_6);
assign dinlatchl_7 = ~(dinlatch & bm_7);

// MEM.NET (685) - dinlatch[0-7] : nd2p
assign dinlatch_0_obuf = ~(dinlatchl_0 & lwdl);
assign dinlatch_1_obuf = ~(dinlatchl_1 & lwdl);
assign dinlatch_2_obuf = ~(dinlatchl_2 & lwdl);
assign dinlatch_3_obuf = ~(dinlatchl_3 & lwdl);
assign dinlatch_4_obuf = ~(dinlatchl_4 & lwdl);
assign dinlatch_5_obuf = ~(dinlatchl_5 & lwdl);
assign dinlatch_6_obuf = ~(dinlatchl_6 & lwdl);
assign dinlatch_7_obuf = ~(dinlatchl_7 & lwdl);

// MEM.NET (689) - sizout[0-2] : niv
assign sizout_0_obuf = maskw_0;
assign sizout_1_obuf = maskw_1;
assign sizout_2_obuf = maskw_2;

// MEM.NET (690) - maskwu : dummy

// MEM.NET (692) - readsi : fd1q
fd1q readsi_inst
(
	.q(readsi), // OUT
	.d(readt_obuf), // IN
	.cp(clk)  // IN
);

// MEM.NET (693) - readt : mx2p
mx2 readt_inst
(
	.z(readt_obuf), // OUT
	.a0(readsi), // IN
	.a1(rw), // IN
	.s(ack_obuf)  // IN
);

// MEM.NET (694) - reads : nivu
assign reads_obuf = readsi;

// MEM.NET (698) - mwti[0-1] : mx2p
mx2 mwti_from_0_to_1_inst_0
(
	.z(mwti_0), // OUT
	.a0(mws_0), // IN
	.a1(mw_0), // IN
	.s(ack_obuf)  // IN
);
mx2 mwti_from_0_to_1_inst_1
(
	.z(mwti_1), // OUT
	.a0(mws_1), // IN
	.a1(mw_1), // IN
	.s(ack_obuf)  // IN
);

// MEM.NET (699) - mws[0-1] : fd1q
fd1q mws_from_0_to_1_inst_0
(
	.q(mws_0), // OUT
	.d(mwti_0), // IN
	.cp(clk)  // IN
);
fd1q mws_from_0_to_1_inst_1
(
	.q(mws_1), // OUT
	.d(mwti_1), // IN
	.cp(clk)  // IN
);

// MEM.NET (700) - mwt[0-1] : nivh
assign mwt_0 = mwti_0;
assign mwt_1 = mwti_1;

// MEM.NET (702) - mreqb : nivh
assign mreqb = mreq;

// MEM.NET (703) - notmreq : iv
assign notmreq = ~mreqb;

// MEM.NET (704) - notmatch : iv
assign notmatch = ~match;

// MEM.NET (705) - notlastcycle : iv
assign notlastcycle = ~lastcycle;

// MEM.NET (706) - notreads : iv
assign notreads = ~readsi;

// MEM.NET (707) - notack : iv
assign notack = ~ack_obuf;

// MEM.NET (708) - notrefack : iv
assign notrefack = ~refack_obuf;

// MEM.NET (709) - notourack : iv
assign notourack = ~ourack;

// MEM.NET (712) - newrow : niv
assign newrow_obuf = q1a;

// MEM.NET (716) - dreqd : nd2
assign dreqd = ~(mreqb & ack_obuf);

// MEM.NET (717) - jdreqlout : fd1q
fd1q jdreqlout_inst
(
	.q(dreqlout_obuf), // OUT
	.d(dreqd), // IN
	.cp(clk)  // IN
);
endmodule
