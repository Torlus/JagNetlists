`include "defs.v"

module vid
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
	input vmwr,
	input hcwr,
	input hcrd,
	input hpwr,
	input hbbwr,
	input hbewr,
	input hdb1wr,
	input hdb2wr,
	input hdewr,
	input hswr,
	input hvswr,
	input vcwr,
	input vcrd,
	input vpwr,
	input vbbwr,
	input vbewr,
	input vdbwr,
	input vdewr,
	input vebwr,
	input veewr,
	input vswr,
	input viwr,
	input lphrd,
	input lpvrd,
	input hlock,
	input vlock,
	input resetl,
	input vclk,
	input lp,
	input heqw,
	input test1w,
	input test2r,
	input test3r,
	input wet,
	input vgy,
	input vey,
	input vly,
	input lock,
	output start,
	output dd,
	output lbufa,
	output lbufb,
	output noths,
	output notvs,
	output syncen,
	output vint,
	output vactive,
	output blank,
	output nextpixa,
	output nextpixd,
	output cry16,
	output rgb24,
	output rg16,
	output rgb16,
	output mptest,
	output ndtest,
	output varmod,
	output vcl_0,
	output vcl_1,
	output vcl_2,
	output vcl_3,
	output vcl_4,
	output vcl_5,
	output vcl_6,
	output vcl_7,
	output vcl_8,
	output vcl_9,
	output vcl_10,
	output tcount,
	output incen,
	output binc,
	output bgw,
	output word2,
	output pp,
	output lbaactive,
	output lbbactive,
	output hcb_10,
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
	inout dr_15
);
wire [0:10] hc;
wire [0:11] vc;
wire lockl;
wire viden;
wire videnl;
wire vm_1;
wire vml_1;
wire vm_2;
wire vml_2;
wire vm_3;
wire csyncen;
wire bgwen;
wire ppn_0;
wire ppn_1;
wire ppn_2;
wire rg16i;
wire tcountl;
wire startd3;
wire test1ws;
wire mptesti;
wire vcl;
wire ndtesti;
wire ppresl;
wire notstartd;
wire pp_0;
wire ppco_0;
wire vcc;
wire pp_1;
wire ppco_1;
wire pp_2;
wire ppco_2;
wire ppl;
wire word2d0;
wire word2l;
wire word2d1;
wire word2d;
wire hc_0;
wire hc_1;
wire hc_2;
wire hc_3;
wire hc_4;
wire hc_5;
wire hc_6;
wire hc_7;
wire hc_8;
wire hc_9;
wire hc_10;
wire vc_0;
wire vc_1;
wire vc_2;
wire vc_3;
wire vc_4;
wire vc_5;
wire vc_6;
wire vc_7;
wire vc_8;
wire vc_9;
wire vc_10;
wire vc_11;
wire vres;
wire vresl;
wire hlockl;
wire hcresi;
wire hpeql;
wire hcres;
wire hmres;
wire hcount;
wire hco_0;
wire hco_1;
wire hco_2;
wire hco_3;
wire hco_4;
wire hco_5;
wire hco_6;
wire hco_7;
wire hco_8;
wire hco_9;
wire hco_10;
wire hpeq;
wire hcb_0;
wire hcb_1;
wire hcb_2;
wire hcb_3;
wire hcb_4;
wire hcb_5;
wire hcb_6;
wire hcb_7;
wire hcb_8;
wire hcb_9;
wire hp_0;
wire hp_1;
wire hp_2;
wire hp_3;
wire hp_4;
wire hp_5;
wire hp_6;
wire hp_7;
wire hp_8;
wire hp_9;
wire hpe_0;
wire hpe_1;
wire hpe_2;
wire hpe_3;
wire hpe_4;
wire hpe_5;
wire hpe_6;
wire hpe_7;
wire hpe_8;
wire hpe_9;
wire hpeqt;
wire hpeqi;
wire hbbeq;
wire hbeeq;
wire hdb1eq;
wire hdb2eq;
wire hdeeq;
wire hs_0;
wire hs_1;
wire hs_2;
wire hs_3;
wire hs_4;
wire hs_5;
wire hs_6;
wire hs_7;
wire hs_8;
wire hs_9;
wire hs_10;
wire hse_0;
wire hse_1;
wire hse_2;
wire hse_3;
wire hse_4;
wire hse_5;
wire hse_6;
wire hse_7;
wire hse_8;
wire hse_9;
wire hse_10;
wire hseq;
wire hvsb;
wire hvs_0;
wire hvs_1;
wire hvs_2;
wire hvs_3;
wire hvs_4;
wire hvs_5;
wire hvs_6;
wire hvs_7;
wire hvs_8;
wire hvs_9;
wire hvse_0;
wire hvse_1;
wire hvse_2;
wire hvse_3;
wire hvse_4;
wire hvse_5;
wire hvse_6;
wire hvse_7;
wire hvse_8;
wire hvse_9;
wire hvse;
wire heq_0;
wire heq_1;
wire heq_2;
wire heq_3;
wire heq_4;
wire heq_5;
wire heq_6;
wire heq_7;
wire heq_8;
wire heq_9;
wire heqe_0;
wire heqe_1;
wire heqe_2;
wire heqe_3;
wire heqe_4;
wire heqe_5;
wire heqe_6;
wire heqe_7;
wire heqe_8;
wire heqe_9;
wire heqe;
wire nextfieldl;
wire vpeq;
wire nextfield;
wire vlockl;
wire vcresi;
wire vcres;
wire res;
wire vcount;
wire vco_0;
wire vco_1;
wire vco_2;
wire vco_3;
wire vco_4;
wire vco_5;
wire vco_6;
wire vco_7;
wire vco_8;
wire vco_9;
wire vco_10;
wire vco_11;
wire vcb_0;
wire vcb_1;
wire vcb_2;
wire vcb_3;
wire vcb_4;
wire vcb_5;
wire vcb_6;
wire vcb_7;
wire vcb_8;
wire vcb_9;
wire vcb_10;
wire vp_0;
wire vp_1;
wire vp_2;
wire vp_3;
wire vp_4;
wire vp_5;
wire vp_6;
wire vp_7;
wire vp_8;
wire vp_9;
wire vp_10;
wire vpe_0;
wire vpe_1;
wire vpe_2;
wire vpe_3;
wire vpe_4;
wire vpe_5;
wire vpe_6;
wire vpe_7;
wire vpe_8;
wire vpe_9;
wire vpe_10;
wire vpeqt;
wire vbbeq;
wire vbeeq;
wire vdbeq;
wire vdeeq;
wire vebeq;
wire veeeq;
wire vseq;
wire vieq;
wire vvactive;
wire notvvactive;
wire startd1;
wire startd2;
wire startd;
wire vcli;
wire vclb;
wire startd3p;
wire hdb;
wire vdactive;
wire notvactive;
wire lbufai;
wire lbufbi;
wire lbufad;
wire lbaai;
wire lbbai;
wire vblank;
wire notvblank;
wire hblank;
wire nothblank;
wire hs;
wire vvs;
wire notvvs;
wire hvstart;
wire hvs;
wire nothvs;
wire ves;
wire notves;
wire hestart;
wire hes;
wire nothes;
wire vsl;
wire csync;
wire vintd;
wire vintl;
wire ppnz;
wire longpix;
wire wordpix;
wire sxp;
wire nextpixd0;
wire nextpixd1;
wire nextpixad;
wire nextpixaq;
wire lp1;
wire lp2;
wire lp2l;
wire lpldi;
wire lpld;
wire lph_0;
wire lph_1;
wire lph_2;
wire lph_3;
wire lph_4;
wire lph_5;
wire lph_6;
wire lph_7;
wire lph_8;
wire lph_9;
wire lph_10;
wire lpv_0;
wire lpv_1;
wire lpv_2;
wire lpv_3;
wire lpv_4;
wire lpv_5;
wire lpv_6;
wire lpv_7;
wire lpv_8;
wire lpv_9;
wire lpv_10;
wire lpv_11;
wire lpe;
wire notlpe;
wire gnd;
wire e11;
wire e1215;

// Output buffers
wire start_obuf;
wire dd_obuf;
wire lbufa_obuf;
wire lbufb_obuf;
wire noths_obuf;
wire notvs_obuf;
wire syncen_obuf;
wire vint_obuf;
wire vactive_obuf;
wire blank_obuf;
wire nextpixa_obuf;
wire nextpixd_obuf;
wire cry16_obuf;
wire rgb24_obuf;
wire rg16_obuf;
wire rgb16_obuf;
wire mptest_obuf;
wire ndtest_obuf;
wire varmod_obuf;
wire vcl_0_obuf;
wire vcl_1_obuf;
wire vcl_2_obuf;
wire vcl_3_obuf;
wire vcl_4_obuf;
wire vcl_5_obuf;
wire vcl_6_obuf;
wire vcl_7_obuf;
wire vcl_8_obuf;
wire vcl_9_obuf;
wire vcl_10_obuf;
wire tcount_obuf;
wire incen_obuf;
wire binc_obuf;
wire bgw_obuf;
wire word2_obuf;
wire pp_obuf;
wire lbaactive_obuf;
wire lbbactive_obuf;
wire hcb_10_obuf;


// Output buffers
assign start = start_obuf;
assign dd = dd_obuf;
assign lbufa = lbufa_obuf;
assign lbufb = lbufb_obuf;
assign noths = noths_obuf;
assign notvs = notvs_obuf;
assign syncen = syncen_obuf;
assign vint = vint_obuf;
assign vactive = vactive_obuf;
assign blank = blank_obuf;
assign nextpixa = nextpixa_obuf;
assign nextpixd = nextpixd_obuf;
assign cry16 = cry16_obuf;
assign rgb24 = rgb24_obuf;
assign rg16 = rg16_obuf;
assign rgb16 = rgb16_obuf;
assign mptest = mptest_obuf;
assign ndtest = ndtest_obuf;
assign varmod = varmod_obuf;
assign vcl_0 = vcl_0_obuf;
assign vcl_1 = vcl_1_obuf;
assign vcl_2 = vcl_2_obuf;
assign vcl_3 = vcl_3_obuf;
assign vcl_4 = vcl_4_obuf;
assign vcl_5 = vcl_5_obuf;
assign vcl_6 = vcl_6_obuf;
assign vcl_7 = vcl_7_obuf;
assign vcl_8 = vcl_8_obuf;
assign vcl_9 = vcl_9_obuf;
assign vcl_10 = vcl_10_obuf;
assign tcount = tcount_obuf;
assign incen = incen_obuf;
assign binc = binc_obuf;
assign bgw = bgw_obuf;
assign word2 = word2_obuf;
assign pp = pp_obuf;
assign lbaactive = lbaactive_obuf;
assign lbbactive = lbbactive_obuf;
assign hcb_10 = hcb_10_obuf;


// VID.NET (34) - lockl : ivm
assign lockl = ~lock;

// VID.NET (54) - vm[0] : ldp2
ldp2 vm_index_0_inst
(
	.q(viden), // OUT
	.qn(videnl), // OUT
	.d(din_0), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);

// VID.NET (55) - vm[1] : ldp1
ldp1 vm_index_1_inst
(
	.q(vm_1), // OUT
	.qn(vml_1), // OUT
	.d(din_1), // IN
	.g(vmwr)  // IN
);

// VID.NET (56) - vm[2] : ldp1
ldp1 vm_index_2_inst
(
	.q(vm_2), // OUT
	.qn(vml_2), // OUT
	.d(din_2), // IN
	.g(vmwr)  // IN
);

// VID.NET (57) - vm[3] : ldp2q
ldp2q vm_index_3_inst
(
	.q(vm_3), // OUT
	.d(din_3), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);

// VID.NET (58) - vm[4] : ldp2q
ldp2q vm_index_4_inst
(
	.q(incen_obuf), // OUT
	.d(din_4), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);

// VID.NET (59) - vm[5] : ldp1q
ldp1q vm_index_5_inst
(
	.q(binc_obuf), // OUT
	.d(din_5), // IN
	.g(vmwr)  // IN
);

// VID.NET (60) - vm[6] : ldp1q
ldp1q vm_index_6_inst
(
	.q(csyncen), // OUT
	.d(din_6), // IN
	.g(vmwr)  // IN
);

// VID.NET (61) - vm[7] : ldp2q
ldp2q vm_index_7_inst
(
	.q(bgwen), // OUT
	.d(din_7), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);

// VID.NET (62) - vm[8] : ldp1q
ldp1q vm_index_8_inst
(
	.q(varmod_obuf), // OUT
	.d(din_8), // IN
	.g(vmwr)  // IN
);

// VID.NET (63) - ppn[9-11] : ldp2q
ldp2q ppn_from_9_to_11_inst_0
(
	.q(ppn_0), // OUT
	.d(din_9), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);
ldp2q ppn_from_9_to_11_inst_1
(
	.q(ppn_1), // OUT
	.d(din_10), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);
ldp2q ppn_from_9_to_11_inst_2
(
	.q(ppn_2), // OUT
	.d(din_11), // IN
	.g(vmwr), // IN
	.cd(resetl)  // IN
);

// VID.NET (65) - cry16 : an2
assign cry16_obuf = vml_2 & vml_1;

// VID.NET (66) - rgb24 : an2
assign rgb24_obuf = vml_2 & vm_1;

// VID.NET (67) - rg16i : nd2
assign rg16i = ~(vm_2 & vml_1);

// VID.NET (68) - rg16 : ivu
assign rg16_obuf = ~rg16i;

// VID.NET (69) - rgb16 : an2
assign rgb16_obuf = vm_2 & vm_1;

// VID.NET (70) - syncen : iv
assign syncen_obuf = ~vm_3;

// VID.NET (82) - tcountl : nd2
assign tcountl = ~(test1w & din_0);

// VID.NET (83) - tcount : iv
assign tcount_obuf = ~tcountl;

// VID.NET (84) - startd3 : nd2
assign startd3 = ~(test1w & din_1);

// VID.NET (85) - test1ws : an2
assign test1ws = test1w & wet;

// VID.NET (86) - mptesti : ldp2q
ldp2q mptesti_inst
(
	.q(mptesti), // OUT
	.d(din_2), // IN
	.g(test1ws), // IN
	.cd(resetl)  // IN
);

// VID.NET (87) - mptest : nivh
assign mptest_obuf = mptesti;

// VID.NET (88) - vcl : an2
assign vcl = test1w & din_3;

// VID.NET (89) - ndtesti : ldp2q
ldp2q ndtesti_inst
(
	.q(ndtesti), // OUT
	.d(din_4), // IN
	.g(test1ws), // IN
	.cd(resetl)  // IN
);

// VID.NET (90) - ndtest : nivh
assign ndtest_obuf = ndtesti;

// VID.NET (97) - ppresl : an2
assign ppresl = notstartd & resetl;

// VID.NET (98) - pp[0] : dncnts
dncnts pp_index_0_inst
(
	.q(pp_0), // IO
	.co(ppco_0), // IO
	.d(ppn_0), // IN
	.clk(vclk), // IN
	.ci(vcc), // IN
	.ld(pp_obuf), // IN
	.resl(ppresl)  // IN
);

// VID.NET (99) - pp[1] : dncnts
dncnts pp_index_1_inst
(
	.q(pp_1), // IO
	.co(ppco_1), // IO
	.d(ppn_1), // IN
	.clk(vclk), // IN
	.ci(ppco_0), // IN
	.ld(pp_obuf), // IN
	.resl(ppresl)  // IN
);

// VID.NET (100) - pp[2] : dncnts
dncnts pp_index_2_inst
(
	.q(pp_2), // IO
	.co(ppco_2), // IO
	.d(ppn_2), // IN
	.clk(vclk), // IN
	.ci(ppco_1), // IN
	.ld(pp_obuf), // IN
	.resl(ppresl)  // IN
);

// VID.NET (101) - pp : nivm
assign pp_obuf = ppco_2;

// VID.NET (102) - ppl : iv
assign ppl = ~pp_obuf;

// VID.NET (103) - vcc : tie1
assign vcc = 1'b1;

// VID.NET (104) - ppu[0-2] : dummy

// VID.NET (111) - word2d0 : nd2
assign word2d0 = ~(word2l & pp_obuf);

// VID.NET (112) - word2d1 : nd2
assign word2d1 = ~(word2_obuf & ppl);

// VID.NET (113) - word2d : nd3
assign word2d = ~(word2d0 & word2d1 & notstartd);

// VID.NET (114) - word2 : fd1
fd1 word2_inst
(
	.q(word2_obuf), // OUT
	.qn(word2l), // OUT
	.d(word2d), // IN
	.cp(vclk)  // IN
);

// VID.NET (125) - hc : join
assign hc[0] = hc_0;
assign hc[1] = hc_1;
assign hc[2] = hc_2;
assign hc[3] = hc_3;
assign hc[4] = hc_4;
assign hc[5] = hc_5;
assign hc[6] = hc_6;
assign hc[7] = hc_7;
assign hc[8] = hc_8;
assign hc[9] = hc_9;
assign hc[10] = hc_10;

// VID.NET (126) - vc : join
assign vc[0] = vc_0;
assign vc[1] = vc_1;
assign vc[2] = vc_2;
assign vc[3] = vc_3;
assign vc[4] = vc_4;
assign vc[5] = vc_5;
assign vc[6] = vc_6;
assign vc[7] = vc_7;
assign vc[8] = vc_8;
assign vc[9] = vc_9;
assign vc[10] = vc_10;
assign vc[11] = vc_11;

// VID.NET (127) - hcu : dummy

// VID.NET (128) - vcu : dummy

// VID.NET (130) - vres : nd3
assign vres = ~(lockl & viden & resetl);

// VID.NET (131) - vresl : ivh
assign vresl = ~vres;

// VID.NET (132) - hlockl : nd2
assign hlockl = ~(vm_3 & hlock);

// VID.NET (133) - hcresi : nd4
assign hcresi = ~(resetl & hpeql & hlockl & lockl);

// VID.NET (134) - hcres : nivm
assign hcres = hcresi;

// VID.NET (135) - hmresl : nd2
assign hmres = ~(resetl & hlockl);

// VID.NET (136) - hcount : nd2
assign hcount = ~(videnl & tcountl);

// VID.NET (138) - hc[0] : upcnts
upcnts hc_index_0_inst
(
	.q(hc_0), // IO
	.co(hco_0), // IO
	.d(din_0), // IN
	.clk(vclk), // IN
	.ci(hcount), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);

// VID.NET (139) - hc[1-9] : upcnts
upcnts hc_from_1_to_9_inst_0
(
	.q(hc_1), // IO
	.co(hco_1), // IO
	.d(din_1), // IN
	.clk(vclk), // IN
	.ci(hco_0), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_1
(
	.q(hc_2), // IO
	.co(hco_2), // IO
	.d(din_2), // IN
	.clk(vclk), // IN
	.ci(hco_1), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_2
(
	.q(hc_3), // IO
	.co(hco_3), // IO
	.d(din_3), // IN
	.clk(vclk), // IN
	.ci(hco_2), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_3
(
	.q(hc_4), // IO
	.co(hco_4), // IO
	.d(din_4), // IN
	.clk(vclk), // IN
	.ci(hco_3), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_4
(
	.q(hc_5), // IO
	.co(hco_5), // IO
	.d(din_5), // IN
	.clk(vclk), // IN
	.ci(hco_4), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_5
(
	.q(hc_6), // IO
	.co(hco_6), // IO
	.d(din_6), // IN
	.clk(vclk), // IN
	.ci(hco_5), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_6
(
	.q(hc_7), // IO
	.co(hco_7), // IO
	.d(din_7), // IN
	.clk(vclk), // IN
	.ci(hco_6), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_7
(
	.q(hc_8), // IO
	.co(hco_8), // IO
	.d(din_8), // IN
	.clk(vclk), // IN
	.ci(hco_7), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);
upcnts hc_from_1_to_9_inst_8
(
	.q(hc_9), // IO
	.co(hco_9), // IO
	.d(din_9), // IN
	.clk(vclk), // IN
	.ci(hco_8), // IN
	.ld(hcwr), // IN
	.res(hcres)  // IN
);

// VID.NET (141) - hc[10] : upcnts
upcnts hc_index_10_inst
(
	.q(hc_10), // IO
	.co(hco_10), // IO
	.d(din_10), // IN
	.clk(vclk), // IN
	.ci(hpeq), // IN
	.ld(hcwr), // IN
	.res(hmres)  // IN
);

// VID.NET (142) - hcb[0-10] : nivh
assign hcb_0 = hc_0;
assign hcb_1 = hc_1;
assign hcb_2 = hc_2;
assign hcb_3 = hc_3;
assign hcb_4 = hc_4;
assign hcb_5 = hc_5;
assign hcb_6 = hc_6;
assign hcb_7 = hc_7;
assign hcb_8 = hc_8;
assign hcb_9 = hc_9;
assign hcb_10_obuf = hc_10;

// VID.NET (144) - hcd[0-10] : ts
assign dr_0 = (hcrd) ? hcb_0 : 1'bz;
assign dr_1 = (hcrd) ? hcb_1 : 1'bz;
assign dr_2 = (hcrd) ? hcb_2 : 1'bz;
assign dr_3 = (hcrd) ? hcb_3 : 1'bz;
assign dr_4 = (hcrd) ? hcb_4 : 1'bz;
assign dr_5 = (hcrd) ? hcb_5 : 1'bz;
assign dr_6 = (hcrd) ? hcb_6 : 1'bz;
assign dr_7 = (hcrd) ? hcb_7 : 1'bz;
assign dr_8 = (hcrd) ? hcb_8 : 1'bz;
assign dr_9 = (hcrd) ? hcb_9 : 1'bz;
assign dr_10 = (hcrd) ? hcb_10_obuf : 1'bz;

// VID.NET (146) - hco[9] : dummy

// VID.NET (147) - hco[10] : dummy

// VID.NET (152) - hp[0-9] : ldp1q
ldp1q hp_from_0_to_9_inst_0
(
	.q(hp_0), // OUT
	.d(din_0), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_1
(
	.q(hp_1), // OUT
	.d(din_1), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_2
(
	.q(hp_2), // OUT
	.d(din_2), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_3
(
	.q(hp_3), // OUT
	.d(din_3), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_4
(
	.q(hp_4), // OUT
	.d(din_4), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_5
(
	.q(hp_5), // OUT
	.d(din_5), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_6
(
	.q(hp_6), // OUT
	.d(din_6), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_7
(
	.q(hp_7), // OUT
	.d(din_7), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_8
(
	.q(hp_8), // OUT
	.d(din_8), // IN
	.g(hpwr)  // IN
);
ldp1q hp_from_0_to_9_inst_9
(
	.q(hp_9), // OUT
	.d(din_9), // IN
	.g(hpwr)  // IN
);

// VID.NET (156) - hpe[0-9] : en
assign hpe_0 = ~(hp_0 ^ hcb_0);
assign hpe_1 = ~(hp_1 ^ hcb_1);
assign hpe_2 = ~(hp_2 ^ hcb_2);
assign hpe_3 = ~(hp_3 ^ hcb_3);
assign hpe_4 = ~(hp_4 ^ hcb_4);
assign hpe_5 = ~(hp_5 ^ hcb_5);
assign hpe_6 = ~(hp_6 ^ hcb_6);
assign hpe_7 = ~(hp_7 ^ hcb_7);
assign hpe_8 = ~(hp_8 ^ hcb_8);
assign hpe_9 = ~(hp_9 ^ hcb_9);

// VID.NET (157) - hpeqt : and10
and10 hpeqt_inst
(
	.z(hpeqt), // IO
	.a_0(hpe_0), // IN
	.a_1(hpe_1), // IN
	.a_2(hpe_2), // IN
	.a_3(hpe_3), // IN
	.a_4(hpe_4), // IN
	.a_5(hpe_5), // IN
	.a_6(hpe_6), // IN
	.a_7(hpe_7), // IN
	.a_8(hpe_8), // IN
	.a_9(hpe_9)  // IN
);

// VID.NET (158) - hpeqi : and11
and11 hpeqi_inst
(
	.z(hpeqi), // IO
	.a_0(hpe_0), // IN
	.a_1(hpe_1), // IN
	.a_2(hpe_2), // IN
	.a_3(hpe_3), // IN
	.a_4(hpe_4), // IN
	.a_5(hpe_5), // IN
	.a_6(hpe_6), // IN
	.a_7(hpe_7), // IN
	.a_8(hpe_8), // IN
	.a_9(hpe_9), // IN
	.a_10(viden)  // IN
);

// VID.NET (159) - hpeq : niv
assign hpeq = hpeqi;

// VID.NET (160) - hpeql : iv
assign hpeql = ~hpeq;

// VID.NET (164) - hbb : creg11
creg11 hbb_inst
(
	.creq(hbbeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(hcb_0), // IN
	.count_1(hcb_1), // IN
	.count_2(hcb_2), // IN
	.count_3(hcb_3), // IN
	.count_4(hcb_4), // IN
	.count_5(hcb_5), // IN
	.count_6(hcb_6), // IN
	.count_7(hcb_7), // IN
	.count_8(hcb_8), // IN
	.count_9(hcb_9), // IN
	.count_10(hcb_10_obuf), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(hbbwr)  // IN
);

// VID.NET (165) - hbe : creg11
creg11 hbe_inst
(
	.creq(hbeeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(hcb_0), // IN
	.count_1(hcb_1), // IN
	.count_2(hcb_2), // IN
	.count_3(hcb_3), // IN
	.count_4(hcb_4), // IN
	.count_5(hcb_5), // IN
	.count_6(hcb_6), // IN
	.count_7(hcb_7), // IN
	.count_8(hcb_8), // IN
	.count_9(hcb_9), // IN
	.count_10(hcb_10_obuf), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(hbewr)  // IN
);

// VID.NET (166) - hdb1 : creg11
creg11 hdb1_inst
(
	.creq(hdb1eq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(hcb_0), // IN
	.count_1(hcb_1), // IN
	.count_2(hcb_2), // IN
	.count_3(hcb_3), // IN
	.count_4(hcb_4), // IN
	.count_5(hcb_5), // IN
	.count_6(hcb_6), // IN
	.count_7(hcb_7), // IN
	.count_8(hcb_8), // IN
	.count_9(hcb_9), // IN
	.count_10(hcb_10_obuf), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(hdb1wr)  // IN
);

// VID.NET (167) - hdb2 : creg11
creg11 hdb2_inst
(
	.creq(hdb2eq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(hcb_0), // IN
	.count_1(hcb_1), // IN
	.count_2(hcb_2), // IN
	.count_3(hcb_3), // IN
	.count_4(hcb_4), // IN
	.count_5(hcb_5), // IN
	.count_6(hcb_6), // IN
	.count_7(hcb_7), // IN
	.count_8(hcb_8), // IN
	.count_9(hcb_9), // IN
	.count_10(hcb_10_obuf), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(hdb2wr)  // IN
);

// VID.NET (168) - hde : creg11
creg11 hde_inst
(
	.creq(hdeeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(hcb_0), // IN
	.count_1(hcb_1), // IN
	.count_2(hcb_2), // IN
	.count_3(hcb_3), // IN
	.count_4(hcb_4), // IN
	.count_5(hcb_5), // IN
	.count_6(hcb_6), // IN
	.count_7(hcb_7), // IN
	.count_8(hcb_8), // IN
	.count_9(hcb_9), // IN
	.count_10(hcb_10_obuf), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(hdewr)  // IN
);

// VID.NET (175) - hs[0-10] : ldp1q
ldp1q hs_from_0_to_10_inst_0
(
	.q(hs_0), // OUT
	.d(din_0), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_1
(
	.q(hs_1), // OUT
	.d(din_1), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_2
(
	.q(hs_2), // OUT
	.d(din_2), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_3
(
	.q(hs_3), // OUT
	.d(din_3), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_4
(
	.q(hs_4), // OUT
	.d(din_4), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_5
(
	.q(hs_5), // OUT
	.d(din_5), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_6
(
	.q(hs_6), // OUT
	.d(din_6), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_7
(
	.q(hs_7), // OUT
	.d(din_7), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_8
(
	.q(hs_8), // OUT
	.d(din_8), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_9
(
	.q(hs_9), // OUT
	.d(din_9), // IN
	.g(hswr)  // IN
);
ldp1q hs_from_0_to_10_inst_10
(
	.q(hs_10), // OUT
	.d(din_10), // IN
	.g(hswr)  // IN
);

// VID.NET (176) - hse[0-10] : en
assign hse_0 = ~(hs_0 ^ hcb_0);
assign hse_1 = ~(hs_1 ^ hcb_1);
assign hse_2 = ~(hs_2 ^ hcb_2);
assign hse_3 = ~(hs_3 ^ hcb_3);
assign hse_4 = ~(hs_4 ^ hcb_4);
assign hse_5 = ~(hs_5 ^ hcb_5);
assign hse_6 = ~(hs_6 ^ hcb_6);
assign hse_7 = ~(hs_7 ^ hcb_7);
assign hse_8 = ~(hs_8 ^ hcb_8);
assign hse_9 = ~(hs_9 ^ hcb_9);
assign hse_10 = ~(hs_10 ^ hcb_10_obuf);

// VID.NET (177) - hseq : and11
and11 hseq_inst
(
	.z(hseq), // IO
	.a_0(hse_0), // IN
	.a_1(hse_1), // IN
	.a_2(hse_2), // IN
	.a_3(hse_3), // IN
	.a_4(hse_4), // IN
	.a_5(hse_5), // IN
	.a_6(hse_6), // IN
	.a_7(hse_7), // IN
	.a_8(hse_8), // IN
	.a_9(hse_9), // IN
	.a_10(hse_10)  // IN
);

// VID.NET (178) - hvsb : and10
and10 hvsb_inst
(
	.z(hvsb), // IO
	.a_0(hse_0), // IN
	.a_1(hse_1), // IN
	.a_2(hse_2), // IN
	.a_3(hse_3), // IN
	.a_4(hse_4), // IN
	.a_5(hse_5), // IN
	.a_6(hse_6), // IN
	.a_7(hse_7), // IN
	.a_8(hse_8), // IN
	.a_9(hse_9)  // IN
);

// VID.NET (184) - hvs[0-9] : ldp1q
ldp1q hvs_from_0_to_9_inst_0
(
	.q(hvs_0), // OUT
	.d(din_0), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_1
(
	.q(hvs_1), // OUT
	.d(din_1), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_2
(
	.q(hvs_2), // OUT
	.d(din_2), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_3
(
	.q(hvs_3), // OUT
	.d(din_3), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_4
(
	.q(hvs_4), // OUT
	.d(din_4), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_5
(
	.q(hvs_5), // OUT
	.d(din_5), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_6
(
	.q(hvs_6), // OUT
	.d(din_6), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_7
(
	.q(hvs_7), // OUT
	.d(din_7), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_8
(
	.q(hvs_8), // OUT
	.d(din_8), // IN
	.g(hvswr)  // IN
);
ldp1q hvs_from_0_to_9_inst_9
(
	.q(hvs_9), // OUT
	.d(din_9), // IN
	.g(hvswr)  // IN
);

// VID.NET (185) - hvse[0-9] : en
assign hvse_0 = ~(hvs_0 ^ hcb_0);
assign hvse_1 = ~(hvs_1 ^ hcb_1);
assign hvse_2 = ~(hvs_2 ^ hcb_2);
assign hvse_3 = ~(hvs_3 ^ hcb_3);
assign hvse_4 = ~(hvs_4 ^ hcb_4);
assign hvse_5 = ~(hvs_5 ^ hcb_5);
assign hvse_6 = ~(hvs_6 ^ hcb_6);
assign hvse_7 = ~(hvs_7 ^ hcb_7);
assign hvse_8 = ~(hvs_8 ^ hcb_8);
assign hvse_9 = ~(hvs_9 ^ hcb_9);

// VID.NET (186) - hvse : and10
and10 hvse_inst
(
	.z(hvse), // IO
	.a_0(hvse_0), // IN
	.a_1(hvse_1), // IN
	.a_2(hvse_2), // IN
	.a_3(hvse_3), // IN
	.a_4(hvse_4), // IN
	.a_5(hvse_5), // IN
	.a_6(hvse_6), // IN
	.a_7(hvse_7), // IN
	.a_8(hvse_8), // IN
	.a_9(hvse_9)  // IN
);

// VID.NET (191) - heq[0-9] : ldp1q
ldp1q heq_from_0_to_9_inst_0
(
	.q(heq_0), // OUT
	.d(din_0), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_1
(
	.q(heq_1), // OUT
	.d(din_1), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_2
(
	.q(heq_2), // OUT
	.d(din_2), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_3
(
	.q(heq_3), // OUT
	.d(din_3), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_4
(
	.q(heq_4), // OUT
	.d(din_4), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_5
(
	.q(heq_5), // OUT
	.d(din_5), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_6
(
	.q(heq_6), // OUT
	.d(din_6), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_7
(
	.q(heq_7), // OUT
	.d(din_7), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_8
(
	.q(heq_8), // OUT
	.d(din_8), // IN
	.g(heqw)  // IN
);
ldp1q heq_from_0_to_9_inst_9
(
	.q(heq_9), // OUT
	.d(din_9), // IN
	.g(heqw)  // IN
);

// VID.NET (192) - heqe[0-9] : en
assign heqe_0 = ~(heq_0 ^ hcb_0);
assign heqe_1 = ~(heq_1 ^ hcb_1);
assign heqe_2 = ~(heq_2 ^ hcb_2);
assign heqe_3 = ~(heq_3 ^ hcb_3);
assign heqe_4 = ~(heq_4 ^ hcb_4);
assign heqe_5 = ~(heq_5 ^ hcb_5);
assign heqe_6 = ~(heq_6 ^ hcb_6);
assign heqe_7 = ~(heq_7 ^ hcb_7);
assign heqe_8 = ~(heq_8 ^ hcb_8);
assign heqe_9 = ~(heq_9 ^ hcb_9);

// VID.NET (193) - heqe : and10
and10 heqe_inst
(
	.z(heqe), // IO
	.a_0(heqe_0), // IN
	.a_1(heqe_1), // IN
	.a_2(heqe_2), // IN
	.a_3(heqe_3), // IN
	.a_4(heqe_4), // IN
	.a_5(heqe_5), // IN
	.a_6(heqe_6), // IN
	.a_7(heqe_7), // IN
	.a_8(heqe_8), // IN
	.a_9(heqe_9)  // IN
);

// VID.NET (202) - nextfieldl : nd2
assign nextfieldl = ~(vpeq & hpeq);

// VID.NET (203) - nextfield : iv
assign nextfield = ~nextfieldl;

// VID.NET (204) - vlockl : nd2
assign vlockl = ~(vm_3 & vlock);

// VID.NET (205) - vcresi : nd4
assign vcresi = ~(resetl & nextfieldl & vlockl & lockl);

// VID.NET (206) - vcres : nivm
assign vcres = vcresi;

// VID.NET (207) - res : iv
assign res = ~resetl;

// VID.NET (208) - vcount : or2
assign vcount = hpeq | tcount_obuf;

// VID.NET (210) - vc[0] : upcnts
upcnts vc_index_0_inst
(
	.q(vc_0), // IO
	.co(vco_0), // IO
	.d(din_0), // IN
	.clk(vclk), // IN
	.ci(vcount), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);

// VID.NET (211) - vc[1-10] : upcnts
upcnts vc_from_1_to_10_inst_0
(
	.q(vc_1), // IO
	.co(vco_1), // IO
	.d(din_1), // IN
	.clk(vclk), // IN
	.ci(vco_0), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_1
(
	.q(vc_2), // IO
	.co(vco_2), // IO
	.d(din_2), // IN
	.clk(vclk), // IN
	.ci(vco_1), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_2
(
	.q(vc_3), // IO
	.co(vco_3), // IO
	.d(din_3), // IN
	.clk(vclk), // IN
	.ci(vco_2), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_3
(
	.q(vc_4), // IO
	.co(vco_4), // IO
	.d(din_4), // IN
	.clk(vclk), // IN
	.ci(vco_3), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_4
(
	.q(vc_5), // IO
	.co(vco_5), // IO
	.d(din_5), // IN
	.clk(vclk), // IN
	.ci(vco_4), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_5
(
	.q(vc_6), // IO
	.co(vco_6), // IO
	.d(din_6), // IN
	.clk(vclk), // IN
	.ci(vco_5), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_6
(
	.q(vc_7), // IO
	.co(vco_7), // IO
	.d(din_7), // IN
	.clk(vclk), // IN
	.ci(vco_6), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_7
(
	.q(vc_8), // IO
	.co(vco_8), // IO
	.d(din_8), // IN
	.clk(vclk), // IN
	.ci(vco_7), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_8
(
	.q(vc_9), // IO
	.co(vco_9), // IO
	.d(din_9), // IN
	.clk(vclk), // IN
	.ci(vco_8), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);
upcnts vc_from_1_to_10_inst_9
(
	.q(vc_10), // IO
	.co(vco_10), // IO
	.d(din_10), // IN
	.clk(vclk), // IN
	.ci(vco_9), // IN
	.ld(vcwr), // IN
	.res(vcres)  // IN
);

// VID.NET (212) - vc[11] : upcnts
upcnts vc_index_11_inst
(
	.q(vc_11), // IO
	.co(vco_11), // IO
	.d(din_11), // IN
	.clk(vclk), // IN
	.ci(nextfield), // IN
	.ld(vcwr), // IN
	.res(res)  // IN
);

// VID.NET (213) - vcb[0-10] : nivm
assign vcb_0 = vc_0;
assign vcb_1 = vc_1;
assign vcb_2 = vc_2;
assign vcb_3 = vc_3;
assign vcb_4 = vc_4;
assign vcb_5 = vc_5;
assign vcb_6 = vc_6;
assign vcb_7 = vc_7;
assign vcb_8 = vc_8;
assign vcb_9 = vc_9;
assign vcb_10 = vc_10;

// VID.NET (215) - vcd[0-11] : ts
assign dr_0 = (vcrd) ? vc_0 : 1'bz;
assign dr_1 = (vcrd) ? vc_1 : 1'bz;
assign dr_2 = (vcrd) ? vc_2 : 1'bz;
assign dr_3 = (vcrd) ? vc_3 : 1'bz;
assign dr_4 = (vcrd) ? vc_4 : 1'bz;
assign dr_5 = (vcrd) ? vc_5 : 1'bz;
assign dr_6 = (vcrd) ? vc_6 : 1'bz;
assign dr_7 = (vcrd) ? vc_7 : 1'bz;
assign dr_8 = (vcrd) ? vc_8 : 1'bz;
assign dr_9 = (vcrd) ? vc_9 : 1'bz;
assign dr_10 = (vcrd) ? vc_10 : 1'bz;
assign dr_11 = (vcrd) ? vc_11 : 1'bz;

// VID.NET (217) - vco[10] : dummy

// VID.NET (218) - vco[11] : dummy

// VID.NET (222) - vp[0-10] : ldp1q
ldp1q vp_from_0_to_10_inst_0
(
	.q(vp_0), // OUT
	.d(din_0), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_1
(
	.q(vp_1), // OUT
	.d(din_1), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_2
(
	.q(vp_2), // OUT
	.d(din_2), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_3
(
	.q(vp_3), // OUT
	.d(din_3), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_4
(
	.q(vp_4), // OUT
	.d(din_4), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_5
(
	.q(vp_5), // OUT
	.d(din_5), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_6
(
	.q(vp_6), // OUT
	.d(din_6), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_7
(
	.q(vp_7), // OUT
	.d(din_7), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_8
(
	.q(vp_8), // OUT
	.d(din_8), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_9
(
	.q(vp_9), // OUT
	.d(din_9), // IN
	.g(vpwr)  // IN
);
ldp1q vp_from_0_to_10_inst_10
(
	.q(vp_10), // OUT
	.d(din_10), // IN
	.g(vpwr)  // IN
);

// VID.NET (223) - vpe[0-10] : en
assign vpe_0 = ~(vp_0 ^ vcb_0);
assign vpe_1 = ~(vp_1 ^ vcb_1);
assign vpe_2 = ~(vp_2 ^ vcb_2);
assign vpe_3 = ~(vp_3 ^ vcb_3);
assign vpe_4 = ~(vp_4 ^ vcb_4);
assign vpe_5 = ~(vp_5 ^ vcb_5);
assign vpe_6 = ~(vp_6 ^ vcb_6);
assign vpe_7 = ~(vp_7 ^ vcb_7);
assign vpe_8 = ~(vp_8 ^ vcb_8);
assign vpe_9 = ~(vp_9 ^ vcb_9);
assign vpe_10 = ~(vp_10 ^ vcb_10);

// VID.NET (224) - vpeqt : and11
and11 vpeqt_inst
(
	.z(vpeqt), // IO
	.a_0(vpe_0), // IN
	.a_1(vpe_1), // IN
	.a_2(vpe_2), // IN
	.a_3(vpe_3), // IN
	.a_4(vpe_4), // IN
	.a_5(vpe_5), // IN
	.a_6(vpe_6), // IN
	.a_7(vpe_7), // IN
	.a_8(vpe_8), // IN
	.a_9(vpe_9), // IN
	.a_10(vpe_10)  // IN
);

// VID.NET (225) - vpeq : and12
and12 vpeq_inst
(
	.z(vpeq), // IO
	.a_0(vpe_0), // IN
	.a_1(vpe_1), // IN
	.a_2(vpe_2), // IN
	.a_3(vpe_3), // IN
	.a_4(vpe_4), // IN
	.a_5(vpe_5), // IN
	.a_6(vpe_6), // IN
	.a_7(vpe_7), // IN
	.a_8(vpe_8), // IN
	.a_9(vpe_9), // IN
	.a_10(vpe_10), // IN
	.a_11(viden)  // IN
);

// VID.NET (227) - vbb : creg11
creg11 vbb_inst
(
	.creq(vbbeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vbbwr)  // IN
);

// VID.NET (228) - vbe : creg11
creg11 vbe_inst
(
	.creq(vbeeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vbewr)  // IN
);

// VID.NET (229) - vdb : creg11
creg11 vdb_inst
(
	.creq(vdbeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vdbwr)  // IN
);

// VID.NET (230) - vde : creg11
creg11 vde_inst
(
	.creq(vdeeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vdewr)  // IN
);

// VID.NET (231) - veb : creg11
creg11 veb_inst
(
	.creq(vebeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vebwr)  // IN
);

// VID.NET (232) - vee : creg11
creg11 vee_inst
(
	.creq(veeeq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(veewr)  // IN
);

// VID.NET (233) - vs : creg11
creg11 vs_inst
(
	.creq(vseq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(vswr)  // IN
);

// VID.NET (234) - vi : creg11
creg11 vi_inst
(
	.creq(vieq), // IO
	.dout_0(dr_0), // BUS
	.dout_1(dr_1), // BUS
	.dout_2(dr_2), // BUS
	.dout_3(dr_3), // BUS
	.dout_4(dr_4), // BUS
	.dout_5(dr_5), // BUS
	.dout_6(dr_6), // BUS
	.dout_7(dr_7), // BUS
	.dout_8(dr_8), // BUS
	.dout_9(dr_9), // BUS
	.dout_10(dr_10), // BUS
	.count_0(vcb_0), // IN
	.count_1(vcb_1), // IN
	.count_2(vcb_2), // IN
	.count_3(vcb_3), // IN
	.count_4(vcb_4), // IN
	.count_5(vcb_5), // IN
	.count_6(vcb_6), // IN
	.count_7(vcb_7), // IN
	.count_8(vcb_8), // IN
	.count_9(vcb_9), // IN
	.count_10(vcb_10), // IN
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.crwr(viwr)  // IN
);

// VID.NET (238) - vvactive : fjkr
fjkr vvactive_inst
(
	.q(vvactive), // IO
	.ql(notvvactive), // IO
	.j(vdbeq), // IN
	.k(vdeeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (239) - nvvu : dummy

// VID.NET (255) - startd1 : nd2
assign startd1 = ~(hdb1eq & vvactive);

// VID.NET (256) - startd2 : nd2
assign startd2 = ~(hdb2eq & vvactive);

// VID.NET (257) - startd : nd3
assign startd = ~(startd1 & startd2 & startd3);

// VID.NET (258) - start : fd2q
fd2q start_inst
(
	.q(start_obuf), // OUT
	.d(startd), // IN
	.cp(vclk), // IN
	.cd(resetl)  // IN
);

// VID.NET (262) - vcli : nr2
assign vcli = ~(vcl | start_obuf);

// VID.NET (263) - vclb : ivh
assign vclb = ~vcli;

// VID.NET (264) - vcl[0-10] : slatch
slatch vcl_from_0_to_10_inst_0
(
	.q(vcl_0_obuf), // IO
	.d(vcb_0), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_1
(
	.q(vcl_1_obuf), // IO
	.d(vcb_1), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_2
(
	.q(vcl_2_obuf), // IO
	.d(vcb_2), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_3
(
	.q(vcl_3_obuf), // IO
	.d(vcb_3), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_4
(
	.q(vcl_4_obuf), // IO
	.d(vcb_4), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_5
(
	.q(vcl_5_obuf), // IO
	.d(vcb_5), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_6
(
	.q(vcl_6_obuf), // IO
	.d(vcb_6), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_7
(
	.q(vcl_7_obuf), // IO
	.d(vcb_7), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_8
(
	.q(vcl_8_obuf), // IO
	.d(vcb_8), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_9
(
	.q(vcl_9_obuf), // IO
	.d(vcb_9), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);
slatch vcl_from_0_to_10_inst_10
(
	.q(vcl_10_obuf), // IO
	.d(vcb_10), // IN
	.clk(vclk), // IN
	.en(vclb)  // IN
);

// VID.NET (271) - startd3p : iv
assign startd3p = ~startd3;

// VID.NET (272) - hdb : or3
assign hdb = hdb1eq | hdb2eq | startd3p;

// VID.NET (273) - vdactive : slatchr
slatchr vdactive_inst
(
	.q(vdactive), // IO
	.d(vvactive), // IN
	.clk(vclk), // IN
	.en(hdb), // IN
	.resl(vresl)  // IN
);

// VID.NET (274) - dd : an2
assign dd_obuf = vdactive & hdb;

// VID.NET (275) - vactive : fjkr
fjkr vactive_inst
(
	.q(vactive_obuf), // IO
	.ql(notvactive), // IO
	.j(dd_obuf), // IN
	.k(hdeeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (276) - nvu : dummy

// VID.NET (278) - lbufai : fdr
fdr lbufai_inst
(
	.q(lbufai), // IO
	.ql(lbufbi), // IO
	.d(lbufad), // IN
	.clk(vclk), // IN
	.resl(vresl)  // IN
);

// VID.NET (279) - lbufd : mx2
mx2 lbufd_inst
(
	.z(lbufad), // OUT
	.a0(lbufa_obuf), // IN
	.a1(lbufb_obuf), // IN
	.s(dd_obuf)  // IN
);

// VID.NET (280) - lbufa : nivu2
assign lbufa_obuf = lbufai;

// VID.NET (281) - lbufb : nivu2
assign lbufb_obuf = lbufbi;

// VID.NET (283) - lbaai : nd2
assign lbaai = ~(lbufai & vactive_obuf);

// VID.NET (284) - lbbai : nd2
assign lbbai = ~(lbufbi & vactive_obuf);

// VID.NET (285) - lbaactive : ivu
assign lbaactive_obuf = ~lbaai;

// VID.NET (286) - lbbactive : ivu
assign lbbactive_obuf = ~lbbai;

// VID.NET (288) - vblank : fjkr
fjkr vblank_inst
(
	.q(vblank), // IO
	.ql(notvblank), // IO
	.j(vbbeq), // IN
	.k(vbeeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (289) - hblank : fjkr
fjkr hblank_inst
(
	.q(hblank), // IO
	.ql(nothblank), // IO
	.j(hbbeq), // IN
	.k(hbeeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (290) - blank : nd2
assign blank_obuf = ~(notvblank & nothblank);

// VID.NET (292) - unused1 : dummy

// VID.NET (293) - unused2 : dummy

// VID.NET (295) - hs : fjkr
fjkr hs_inst
(
	.q(hs), // IO
	.ql(noths_obuf), // IO
	.j(hseq), // IN
	.k(hpeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (296) - hsu : dummy

// VID.NET (303) - vvsync : fjkr
fjkr vvsync_inst
(
	.q(vvs), // IO
	.ql(notvvs), // IO
	.j(vseq), // IN
	.k(vpeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (304) - nvsu : dummy

// VID.NET (305) - hvstart : an2
assign hvstart = hvsb & vvs;

// VID.NET (306) - hvsync : fjkr
fjkr hvsync_inst
(
	.q(hvs), // IO
	.ql(nothvs), // IO
	.j(hvstart), // IN
	.k(hvse), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (307) - vesync : fjkr
fjkr vesync_inst
(
	.q(ves), // IO
	.ql(notves), // IO
	.j(vebeq), // IN
	.k(veeeq), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (308) - nvesu : dummy

// VID.NET (309) - hestart : an2
assign hestart = hvsb & ves;

// VID.NET (310) - hesync : fjkr
fjkr hesync_inst
(
	.q(hes), // IO
	.ql(nothes), // IO
	.j(hestart), // IN
	.k(heqe), // IN
	.clk(vclk), // IN
	.r(vresl)  // IN
);

// VID.NET (311) - vsync : an2
assign vsl = nothvs & nothes;

// VID.NET (312) - csync : mx2
mx2 csync_inst
(
	.z(csync), // OUT
	.a0(noths_obuf), // IN
	.a1(vsl), // IN
	.s(ves)  // IN
);

// VID.NET (313) - notvs : mx2
mx2 notvs_inst
(
	.z(notvs_obuf), // OUT
	.a0(vsl), // IN
	.a1(csync), // IN
	.s(csyncen)  // IN
);

// VID.NET (314) - hvs : dummy

// VID.NET (315) - hes : dummy

// VID.NET (319) - vintd : an2
assign vintd = vieq & hdeeq;

// VID.NET (320) - vint : fdr
fdr vint_inst
(
	.q(vint_obuf), // IO
	.ql(vintl), // IO
	.d(vintd), // IN
	.clk(vclk), // IN
	.resl(vresl)  // IN
);

// VID.NET (321) - vintl : dummy

// VID.NET (327) - ppnz : or3
assign ppnz = ppn_0 | ppn_1 | ppn_2;

// VID.NET (328) - longpix : nr2
assign longpix = ~(cry16_obuf | rgb16_obuf);

// VID.NET (329) - wordpix : iv
assign wordpix = ~longpix;

// VID.NET (330) - sxp : or2
assign sxp = wordpix | ppnz;

// VID.NET (331) - notstartd : iv
assign notstartd = ~startd;

// VID.NET (332) - nextpixd0 : nd2
assign nextpixd0 = ~(word2_obuf & pp_obuf);

// VID.NET (333) - nextpixd1 : nd2
assign nextpixd1 = ~(longpix & pp_obuf);

// VID.NET (334) - nextpixd : nd2
assign nextpixd_obuf = ~(nextpixd0 & nextpixd1);

// VID.NET (341) - nextpixad : an2
assign nextpixad = nextpixd_obuf & notstartd;

// VID.NET (342) - nextpixaq : fd1q
fd1q nextpixaq_inst
(
	.q(nextpixaq), // OUT
	.d(nextpixad), // IN
	.cp(vclk)  // IN
);

// VID.NET (343) - nextpixa : mx2
mx2 nextpixa_inst
(
	.z(nextpixa_obuf), // OUT
	.a0(nextpixd_obuf), // IN
	.a1(nextpixaq), // IN
	.s(sxp)  // IN
);

// VID.NET (344) - bgw : an3
assign bgw_obuf = bgwen & nextpixa_obuf & sxp;

// VID.NET (348) - lp1 : fd1q
fd1q lp1_inst
(
	.q(lp1), // OUT
	.d(lp), // IN
	.cp(vclk)  // IN
);

// VID.NET (349) - lp2 : fd1
fd1 lp2_inst
(
	.q(lp2), // OUT
	.qn(lp2l), // OUT
	.d(lp1), // IN
	.cp(vclk)  // IN
);

// VID.NET (350) - lpldi : nd2
assign lpldi = ~(lp1 & lp2l);

// VID.NET (351) - lpld : ivh
assign lpld = ~lpldi;

// VID.NET (352) - unused4 : dummy

// VID.NET (354) - lph[0-10] : slatch
slatch lph_from_0_to_10_inst_0
(
	.q(lph_0), // IO
	.d(hcb_0), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_1
(
	.q(lph_1), // IO
	.d(hcb_1), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_2
(
	.q(lph_2), // IO
	.d(hcb_2), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_3
(
	.q(lph_3), // IO
	.d(hcb_3), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_4
(
	.q(lph_4), // IO
	.d(hcb_4), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_5
(
	.q(lph_5), // IO
	.d(hcb_5), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_6
(
	.q(lph_6), // IO
	.d(hcb_6), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_7
(
	.q(lph_7), // IO
	.d(hcb_7), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_8
(
	.q(lph_8), // IO
	.d(hcb_8), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_9
(
	.q(lph_9), // IO
	.d(hcb_9), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lph_from_0_to_10_inst_10
(
	.q(lph_10), // IO
	.d(hcb_10_obuf), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);

// VID.NET (355) - lpv[0-11] : slatch
slatch lpv_from_0_to_11_inst_0
(
	.q(lpv_0), // IO
	.d(vc_0), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_1
(
	.q(lpv_1), // IO
	.d(vc_1), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_2
(
	.q(lpv_2), // IO
	.d(vc_2), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_3
(
	.q(lpv_3), // IO
	.d(vc_3), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_4
(
	.q(lpv_4), // IO
	.d(vc_4), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_5
(
	.q(lpv_5), // IO
	.d(vc_5), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_6
(
	.q(lpv_6), // IO
	.d(vc_6), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_7
(
	.q(lpv_7), // IO
	.d(vc_7), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_8
(
	.q(lpv_8), // IO
	.d(vc_8), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_9
(
	.q(lpv_9), // IO
	.d(vc_9), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_10
(
	.q(lpv_10), // IO
	.d(vc_10), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);
slatch lpv_from_0_to_11_inst_11
(
	.q(lpv_11), // IO
	.d(vc_11), // IN
	.clk(vclk), // IN
	.en(lpld)  // IN
);

// VID.NET (356) - lphd[0-10] : ts
assign dr_0 = (lphrd) ? lph_0 : 1'bz;
assign dr_1 = (lphrd) ? lph_1 : 1'bz;
assign dr_2 = (lphrd) ? lph_2 : 1'bz;
assign dr_3 = (lphrd) ? lph_3 : 1'bz;
assign dr_4 = (lphrd) ? lph_4 : 1'bz;
assign dr_5 = (lphrd) ? lph_5 : 1'bz;
assign dr_6 = (lphrd) ? lph_6 : 1'bz;
assign dr_7 = (lphrd) ? lph_7 : 1'bz;
assign dr_8 = (lphrd) ? lph_8 : 1'bz;
assign dr_9 = (lphrd) ? lph_9 : 1'bz;
assign dr_10 = (lphrd) ? lph_10 : 1'bz;

// VID.NET (357) - lphd[11] : ts
assign dr_11 = (lphrd) ? lpe : 1'bz;

// VID.NET (358) - lpvd[0-11] : ts
assign dr_0 = (lpvrd) ? lpv_0 : 1'bz;
assign dr_1 = (lpvrd) ? lpv_1 : 1'bz;
assign dr_2 = (lpvrd) ? lpv_2 : 1'bz;
assign dr_3 = (lpvrd) ? lpv_3 : 1'bz;
assign dr_4 = (lpvrd) ? lpv_4 : 1'bz;
assign dr_5 = (lpvrd) ? lpv_5 : 1'bz;
assign dr_6 = (lpvrd) ? lpv_6 : 1'bz;
assign dr_7 = (lpvrd) ? lpv_7 : 1'bz;
assign dr_8 = (lpvrd) ? lpv_8 : 1'bz;
assign dr_9 = (lpvrd) ? lpv_9 : 1'bz;
assign dr_10 = (lpvrd) ? lpv_10 : 1'bz;
assign dr_11 = (lpvrd) ? lpv_11 : 1'bz;

// VID.NET (360) - lp_event : fjk2
fjk2 lp_event_inst
(
	.q(lpe), // OUT
	.qn(notlpe), // OUT
	.j(lpld), // IN
	.k(nextfield), // IN
	.cp(vclk), // IN
	.cd(resetl)  // IN
);

// VID.NET (361) - lpeu : dummy

// VID.NET (365) - td2[0] : ts
assign dr_0 = (test2r) ? hpeqt : 1'bz;

// VID.NET (366) - td2[1] : ts
assign dr_1 = (test2r) ? hbbeq : 1'bz;

// VID.NET (367) - td2[2] : ts
assign dr_2 = (test2r) ? hbeeq : 1'bz;

// VID.NET (368) - td2[3] : ts
assign dr_3 = (test2r) ? hdb1eq : 1'bz;

// VID.NET (369) - td2[4] : ts
assign dr_4 = (test2r) ? hdb2eq : 1'bz;

// VID.NET (370) - td2[5] : ts
assign dr_5 = (test2r) ? hdeeq : 1'bz;

// VID.NET (371) - td2[6] : ts
assign dr_6 = (test2r) ? hseq : 1'bz;

// VID.NET (372) - td2[7] : ts
assign dr_7 = (test2r) ? hvsb : 1'bz;

// VID.NET (373) - td2[8] : ts
assign dr_8 = (test2r) ? hvse : 1'bz;

// VID.NET (374) - td2[9] : ts
assign dr_9 = (test2r) ? heqe : 1'bz;

// VID.NET (375) - td2[10] : ts
assign dr_10 = (test2r) ? gnd : 1'bz;

// VID.NET (377) - td3[0] : ts
assign dr_0 = (test3r) ? vpeqt : 1'bz;

// VID.NET (378) - td3[1] : ts
assign dr_1 = (test3r) ? vbbeq : 1'bz;

// VID.NET (379) - td3[2] : ts
assign dr_2 = (test3r) ? vbeeq : 1'bz;

// VID.NET (380) - td3[3] : ts
assign dr_3 = (test3r) ? vdbeq : 1'bz;

// VID.NET (381) - td3[4] : ts
assign dr_4 = (test3r) ? vdeeq : 1'bz;

// VID.NET (382) - td3[5] : ts
assign dr_5 = (test3r) ? vebeq : 1'bz;

// VID.NET (383) - td3[6] : ts
assign dr_6 = (test3r) ? veeeq : 1'bz;

// VID.NET (384) - td3[7] : ts
assign dr_7 = (test3r) ? vseq : 1'bz;

// VID.NET (385) - td3[8] : ts
assign dr_8 = (test3r) ? vieq : 1'bz;

// VID.NET (386) - td3[9] : ts
assign dr_9 = (test3r) ? vgy : 1'bz;

// VID.NET (387) - td3[10] : ts
assign dr_10 = (test3r) ? vey : 1'bz;

// VID.NET (388) - td3[11] : ts
assign dr_11 = (test3r) ? vly : 1'bz;

// VID.NET (395) - e11 : or2
assign e11 = hcrd | test2r;

// VID.NET (396) - e1215 : or4
assign e1215 = e11 | vcrd | lpvrd | lphrd;

// VID.NET (397) - gnd : tie0
assign gnd = 1'b0;

// VID.NET (398) - dr[11] : ts
assign dr_11 = (e11) ? gnd : 1'bz;

// VID.NET (399) - dr[12-15] : ts
assign dr_12 = (e1215) ? gnd : 1'bz;
assign dr_13 = (e1215) ? gnd : 1'bz;
assign dr_14 = (e1215) ? gnd : 1'bz;
assign dr_15 = (e1215) ? gnd : 1'bz;
endmodule
