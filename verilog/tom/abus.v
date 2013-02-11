`include "defs.v"

module abus
(
	input ain_0,
	input ain_1,
	input ain_2,
	input ain_3,
	input ain_4,
	input ain_5,
	input ain_6,
	input ain_7,
	input ain_8,
	input ain_9,
	input ain_10,
	input ain_11,
	input ain_12,
	input ain_13,
	input ain_14,
	input ain_15,
	input ain_16,
	input ain_17,
	input ain_18,
	input ain_19,
	input ain_20,
	input ain_21,
	input ain_22,
	input ain_23,
	input ainen,
	input at_0,
	input at_1,
	input at_2,
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
	input newrow,
	input resrow,
	input mux,
	input resetl,
	input vcc,
	input memc1r,
	input memc2r,
	input memc1w,
	input memc2w,
	input cfg_0,
	input cfg_1,
	input cfg_2,
	input cfg_4,
	input cfg_5,
	input cfg_6,
	input cfg_8,
	input cfgw,
	input cfgen,
	input ack,
	input clk,
	input ba,
	input fc_0,
	input fc_1,
	input fc_2,
	input siz_1,
	input mreq,
	input dreqin,
	input lbufa,
	input d7a,
	input readt,
	input wet,
	output aout_3,
	output aout_4,
	output aout_5,
	output aout_6,
	output aout_7,
	output aout_8,
	output aout_9,
	output aout_10,
	output aout_11,
	output aout_12,
	output aout_13,
	output aout_14,
	output aout_15,
	output aout_16,
	output aout_17,
	output aout_18,
	output aout_19,
	output aout_20,
	output aout_21,
	output aout_22,
	output aout_23,
	output ma_0,
	output ma_1,
	output ma_2,
	output ma_3,
	output ma_4,
	output ma_5,
	output ma_6,
	output ma_7,
	output ma_8,
	output ma_9,
	output ma_10,
	output match,
	output intdev,
	output fintdev,
	output fextdev,
	output fdram,
	output from,
	output dspd_0,
	output dspd_1,
	output romspd_0,
	output romspd_1,
	output iospd_0,
	output iospd_1,
	output dram,
	output mw_0,
	output mw_1,
	output bs_0,
	output bs_1,
	output bs_2,
	output bs_3,
	output cpu32,
	output refrate_0,
	output refrate_1,
	output refrate_2,
	output refrate_3,
	output bigend,
	output ourack,
	output nocpu,
	output gpuread,
	output gpuwrite,
	output abs_2,
	output abs_3,
	output hilo,
	output lba,
	output lbb,
	output lbt,
	output clut,
	output clutt,
	output fastrom,
	output m68k,
	output at_3,
	output at_4,
	output at_5,
	output at_6,
	output at_7,
	output at_8,
	output at_9,
	output at_10,
	inout a_0,
	inout a_1,
	inout a_2,
	inout a_3,
	inout a_4,
	inout a_5,
	inout a_6,
	inout a_7,
	inout a_8,
	inout a_9,
	inout a_10,
	inout a_11,
	inout a_12,
	inout a_13,
	inout a_14,
	inout a_15,
	inout a_16,
	inout a_17,
	inout a_18,
	inout a_19,
	inout a_20,
	inout a_21,
	inout a_22,
	inout a_23,
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
wire [0:10] ma;
wire m1d_0;
wire m1d_1;
wire m1d_2;
wire m1d_13;
wire m1d_14;
wire m2d_12;
wire m1ld;
wire m2ld;
wire memc2;
wire romhii;
wire romhi;
wire romlo;
wire romwid_0;
wire romwid_1;
wire gnd;
wire cols0_0;
wire cols0_1;
wire dwid0_0;
wire dwid0_1;
wire cols1_0;
wire cols1_1;
wire dwid1_0;
wire dwid1_1;
wire bigd;
wire hiloi;
wire bigendi;
wire m68ki;
wire not68k;
wire aouti_3;
wire aouti_4;
wire aouti_5;
wire aouti_6;
wire aouti_7;
wire aouti_8;
wire aouti_9;
wire aouti_10;
wire aouti_11;
wire aouti_12;
wire aouti_13;
wire aouti_14;
wire aouti_15;
wire at_11;
wire at_12;
wire at_13;
wire at_14;
wire at_15;
wire at_16;
wire at_17;
wire at_18;
wire at_19;
wire at_20;
wire at_21;
wire at_22;
wire at_23;
wire ab_16;
wire ab_17;
wire ab_18;
wire ab_19;
wire ab_20;
wire ab_21;
wire ab_22;
wire ab_23;
wire mseti;
wire mset;
wire alb_10;
wire alb_11;
wire alb_12;
wire alb_13;
wire alb_14;
wire alb_15;
wire alb_16;
wire alb_17;
wire alb_18;
wire alb_19;
wire alb_20;
wire alb_21;
wire alb_22;
wire alb_23;
wire ab_10;
wire ab_11;
wire ab_12;
wire ab_15;
wire notmset;
wire mreqb;
wire abs01;
wire abs02;
wire abs03;
wire abs_0;
wire abs10;
wire abs11;
wire abs12;
wire abs13;
wire abs_1;
wire abs20;
wire abs21;
wire abs30;
wire abs31;
wire fintdev1;
wire fextdevl;
wire rom1;
wire notdev;
wire rom2;
wire rom3;
wire rom4;
wire rom5;
wire rom6;
wire rom7;
wire romcsl_0;
wire intdevi;
wire rom0;
wire bsi_2;
wire abti_2;
wire abt_2;
wire mw01;
wire mw02;
wire dev16;
wire mw03;
wire mw04;
wire mw05;
wire mw06;
wire mw07;
wire mw08;
wire mw09;
wire mw0a;
wire mw0b;
wire mw0c;
wire mw0d;
wire mw0e;
wire mw11;
wire mw12;
wire dev32;
wire mw13;
wire mw14;
wire mw15;
wire mw16;
wire mw17;
wire mw18;
wire mw19;
wire mw1a;
wire mw1b;
wire mw1c;
wire mw1d;
wire mw1e;
wire dev32l;
wire dev160;
wire dev161;
wire notba;
wire bm68k;
wire ai_0;
wire dwidi_0;
wire dwidi_1;
wire dwid_0;
wire dwid_1;
wire ald_0;
wire ald_1;
wire ald_2;
wire ald_3;
wire ald_4;
wire ald_5;
wire ald_6;
wire ald_7;
wire ald_8;
wire ald_9;
wire ald_10;
wire cw0i_0;
wire co0_0;
wire cw0i_1;
wire cw0i_2;
wire cw0_0;
wire cw0_1;
wire cw0_2;
wire cw1i_0;
wire co1_0;
wire cw1i_1;
wire cw1i_2;
wire cw1_0;
wire cw1_1;
wire cw1_2;
wire ahd0_0;
wire ahd0_1;
wire ahd0_2;
wire ahd0_3;
wire ahd0_4;
wire ahd0_5;
wire ahd0_6;
wire ahd0_7;
wire ahd0_8;
wire ahd0_9;
wire ahd0_10;
wire ahd1_0;
wire ahd1_1;
wire ahd1_2;
wire ahd1_3;
wire ahd1_4;
wire ahd1_5;
wire ahd1_6;
wire ahd1_7;
wire ahd1_8;
wire ahd1_9;
wire ahd1_10;
wire ahd_0;
wire ahd_1;
wire ahd_2;
wire ahd_3;
wire ahd_4;
wire ahd_5;
wire ahd_6;
wire ahd_7;
wire ahd_8;
wire ahd_9;
wire ahd_10;
wire mad_0;
wire mad_1;
wire mad_2;
wire mad_3;
wire mad_4;
wire mad_5;
wire mad_6;
wire mad_7;
wire mad_8;
wire mad_9;
wire mad_10;
wire newrow_0;
wire newrow_1;
wire reset;
wire bankresl;
wire match_0;
wire match_1;
wire m_0;
wire m_1;
wire intd0;
wire intd1;
wire fcl_0;
wire intd;
wire ouracki;
wire notourack;
wire gpuadd;
wire writet;
wire lbufb;
wire lba0;
wire lba1;
wire lbad;
wire lbb0;
wire lbb1;
wire lbbd;
wire clutd;
wire lb0;
wire lb1;
wire lbd;
wire lbat;
wire lbbt;
wire lb;

// Output buffers
wire aout_3_obuf;
wire aout_4_obuf;
wire aout_5_obuf;
wire aout_6_obuf;
wire aout_7_obuf;
wire aout_8_obuf;
wire aout_9_obuf;
wire aout_10_obuf;
wire aout_11_obuf;
wire aout_12_obuf;
wire aout_13_obuf;
wire aout_14_obuf;
wire aout_15_obuf;
wire aout_16_obuf;
wire aout_17_obuf;
wire aout_18_obuf;
wire aout_19_obuf;
wire aout_20_obuf;
wire aout_21_obuf;
wire aout_22_obuf;
wire aout_23_obuf;
wire ma_0_obuf;
wire ma_1_obuf;
wire ma_2_obuf;
wire ma_3_obuf;
wire ma_4_obuf;
wire ma_5_obuf;
wire ma_6_obuf;
wire ma_7_obuf;
wire ma_8_obuf;
wire ma_9_obuf;
wire ma_10_obuf;
wire match_obuf;
wire intdev_obuf;
wire fintdev_obuf;
wire fextdev_obuf;
wire fdram_obuf;
wire from_obuf;
wire dspd_0_obuf;
wire dspd_1_obuf;
wire romspd_0_obuf;
wire romspd_1_obuf;
wire iospd_0_obuf;
wire iospd_1_obuf;
wire dram_obuf;
wire mw_0_obuf;
wire mw_1_obuf;
wire bs_0_obuf;
wire bs_1_obuf;
wire bs_2_obuf;
wire bs_3_obuf;
wire cpu32_obuf;
wire refrate_0_obuf;
wire refrate_1_obuf;
wire refrate_2_obuf;
wire refrate_3_obuf;
wire bigend_obuf;
wire ourack_obuf;
wire nocpu_obuf;
wire gpuread_obuf;
wire gpuwrite_obuf;
wire abs_2_obuf;
wire abs_3_obuf;
wire hilo_obuf;
wire lba_obuf;
wire lbb_obuf;
wire lbt_obuf;
wire clut_obuf;
wire clutt_obuf;
wire fastrom_obuf;
wire m68k_obuf;
wire at_3_obuf;
wire at_4_obuf;
wire at_5_obuf;
wire at_6_obuf;
wire at_7_obuf;
wire at_8_obuf;
wire at_9_obuf;
wire at_10_obuf;


// Output buffers
assign aout_3 = aout_3_obuf;
assign aout_4 = aout_4_obuf;
assign aout_5 = aout_5_obuf;
assign aout_6 = aout_6_obuf;
assign aout_7 = aout_7_obuf;
assign aout_8 = aout_8_obuf;
assign aout_9 = aout_9_obuf;
assign aout_10 = aout_10_obuf;
assign aout_11 = aout_11_obuf;
assign aout_12 = aout_12_obuf;
assign aout_13 = aout_13_obuf;
assign aout_14 = aout_14_obuf;
assign aout_15 = aout_15_obuf;
assign aout_16 = aout_16_obuf;
assign aout_17 = aout_17_obuf;
assign aout_18 = aout_18_obuf;
assign aout_19 = aout_19_obuf;
assign aout_20 = aout_20_obuf;
assign aout_21 = aout_21_obuf;
assign aout_22 = aout_22_obuf;
assign aout_23 = aout_23_obuf;
assign ma_0 = ma_0_obuf;
assign ma_1 = ma_1_obuf;
assign ma_2 = ma_2_obuf;
assign ma_3 = ma_3_obuf;
assign ma_4 = ma_4_obuf;
assign ma_5 = ma_5_obuf;
assign ma_6 = ma_6_obuf;
assign ma_7 = ma_7_obuf;
assign ma_8 = ma_8_obuf;
assign ma_9 = ma_9_obuf;
assign ma_10 = ma_10_obuf;
assign match = match_obuf;
assign intdev = intdev_obuf;
assign fintdev = fintdev_obuf;
assign fextdev = fextdev_obuf;
assign fdram = fdram_obuf;
assign from = from_obuf;
assign dspd_0 = dspd_0_obuf;
assign dspd_1 = dspd_1_obuf;
assign romspd_0 = romspd_0_obuf;
assign romspd_1 = romspd_1_obuf;
assign iospd_0 = iospd_0_obuf;
assign iospd_1 = iospd_1_obuf;
assign dram = dram_obuf;
assign mw_0 = mw_0_obuf;
assign mw_1 = mw_1_obuf;
assign bs_0 = bs_0_obuf;
assign bs_1 = bs_1_obuf;
assign bs_2 = bs_2_obuf;
assign bs_3 = bs_3_obuf;
assign cpu32 = cpu32_obuf;
assign refrate_0 = refrate_0_obuf;
assign refrate_1 = refrate_1_obuf;
assign refrate_2 = refrate_2_obuf;
assign refrate_3 = refrate_3_obuf;
assign bigend = bigend_obuf;
assign ourack = ourack_obuf;
assign nocpu = nocpu_obuf;
assign gpuread = gpuread_obuf;
assign gpuwrite = gpuwrite_obuf;
assign abs_2 = abs_2_obuf;
assign abs_3 = abs_3_obuf;
assign hilo = hilo_obuf;
assign lba = lba_obuf;
assign lbb = lbb_obuf;
assign lbt = lbt_obuf;
assign clut = clut_obuf;
assign clutt = clutt_obuf;
assign fastrom = fastrom_obuf;
assign m68k = m68k_obuf;
assign at_3 = at_3_obuf;
assign at_4 = at_4_obuf;
assign at_5 = at_5_obuf;
assign at_6 = at_6_obuf;
assign at_7 = at_7_obuf;
assign at_8 = at_8_obuf;
assign at_9 = at_9_obuf;
assign at_10 = at_10_obuf;


// ABUS.NET (76) - ma : join
assign ma[0] = ma_0_obuf;
assign ma[1] = ma_1_obuf;
assign ma[2] = ma_2_obuf;
assign ma[3] = ma_3_obuf;
assign ma[4] = ma_4_obuf;
assign ma[5] = ma_5_obuf;
assign ma[6] = ma_6_obuf;
assign ma[7] = ma_7_obuf;
assign ma[8] = ma_8_obuf;
assign ma[9] = ma_9_obuf;
assign ma[10] = ma_10_obuf;

// ABUS.NET (77) - mau : dummy

// ABUS.NET (83) - m1d[0-2] : mx2
mx2 m1d_from_0_to_2_inst_0
(
	.z(m1d_0), // OUT
	.a0(cfg_0), // IN
	.a1(din_0), // IN
	.s(cfgen)  // IN
);
mx2 m1d_from_0_to_2_inst_1
(
	.z(m1d_1), // OUT
	.a0(cfg_1), // IN
	.a1(din_1), // IN
	.s(cfgen)  // IN
);
mx2 m1d_from_0_to_2_inst_2
(
	.z(m1d_2), // OUT
	.a0(cfg_2), // IN
	.a1(din_2), // IN
	.s(cfgen)  // IN
);

// ABUS.NET (84) - m1d[13] : mx2
mx2 m1d_index_13_inst
(
	.z(m1d_13), // OUT
	.a0(cfg_4), // IN
	.a1(din_13), // IN
	.s(cfgen)  // IN
);

// ABUS.NET (85) - m1d[14] : mx2
mx2 m1d_index_14_inst
(
	.z(m1d_14), // OUT
	.a0(cfg_5), // IN
	.a1(din_14), // IN
	.s(cfgen)  // IN
);

// ABUS.NET (86) - m2d[12] : mx2
mx2 m2d_index_12_inst
(
	.z(m2d_12), // OUT
	.a0(cfg_6), // IN
	.a1(din_12), // IN
	.s(cfgen)  // IN
);

// ABUS.NET (90) - m1ld : or2
assign m1ld = memc1w | cfgw;

// ABUS.NET (91) - m2ld : or2
assign m2ld = memc2 | cfgw;

// ABUS.NET (94) - romhii : ldp1q
ldp1q romhii_inst
(
	.q(romhii), // OUT
	.d(m1d_0), // IN
	.g(m1ld)  // IN
);

// ABUS.NET (95) - romhi : nivh
assign romhi = romhii;

// ABUS.NET (96) - romlo : ivh
assign romlo = ~romhii;

// ABUS.NET (97) - romwid[0-1] : ldp1q
ldp1q romwid_from_0_to_1_inst_0
(
	.q(romwid_0), // OUT
	.d(m1d_1), // IN
	.g(m1ld)  // IN
);
ldp1q romwid_from_0_to_1_inst_1
(
	.q(romwid_1), // OUT
	.d(m1d_2), // IN
	.g(m1ld)  // IN
);

// ABUS.NET (98) - romspd[0-1] : ldp2q
ldp2q romspd_from_0_to_1_inst_0
(
	.q(romspd_0_obuf), // OUT
	.d(din_3), // IN
	.g(memc1w), // IN
	.cd(resetl)  // IN
);
ldp2q romspd_from_0_to_1_inst_1
(
	.q(romspd_1_obuf), // OUT
	.d(din_4), // IN
	.g(memc1w), // IN
	.cd(resetl)  // IN
);

// ABUS.NET (99) - dspd[0-1] : ldp1q
ldp1q dspd_from_0_to_1_inst_0
(
	.q(dspd_0_obuf), // OUT
	.d(din_5), // IN
	.g(memc1w)  // IN
);
ldp1q dspd_from_0_to_1_inst_1
(
	.q(dspd_1_obuf), // OUT
	.d(din_6), // IN
	.g(memc1w)  // IN
);

// ABUS.NET (100) - fastrom : ldp2q
ldp2q fastrom_inst
(
	.q(fastrom_obuf), // OUT
	.d(din_7), // IN
	.g(memc1w), // IN
	.cd(resetl)  // IN
);

// ABUS.NET (101) - iospd[0-1] : ldp1q
ldp1q iospd_from_0_to_1_inst_0
(
	.q(iospd_0_obuf), // OUT
	.d(din_11), // IN
	.g(memc1w)  // IN
);
ldp1q iospd_from_0_to_1_inst_1
(
	.q(iospd_1_obuf), // OUT
	.d(din_12), // IN
	.g(memc1w)  // IN
);

// ABUS.NET (102) - nocpu : ldp1q
ldp1q nocpu_inst
(
	.q(nocpu_obuf), // OUT
	.d(m1d_13), // IN
	.g(m1ld)  // IN
);

// ABUS.NET (103) - cpu32 : ldp1q
ldp1q cpu32_inst
(
	.q(cpu32_obuf), // OUT
	.d(m1d_14), // IN
	.g(m1ld)  // IN
);

// ABUS.NET (105) - d1[0] : ts
assign dr_0 = (memc1r) ? romhi : 1'bz;

// ABUS.NET (106) - d1[1-2] : ts
assign dr_1 = (memc1r) ? romwid_0 : 1'bz;
assign dr_2 = (memc1r) ? romwid_1 : 1'bz;

// ABUS.NET (107) - d1[3-4] : ts
assign dr_3 = (memc1r) ? romspd_0_obuf : 1'bz;
assign dr_4 = (memc1r) ? romspd_1_obuf : 1'bz;

// ABUS.NET (108) - d1[5-6] : ts
assign dr_5 = (memc1r) ? dspd_0_obuf : 1'bz;
assign dr_6 = (memc1r) ? dspd_1_obuf : 1'bz;

// ABUS.NET (109) - d1[7] : ts
assign dr_7 = (memc1r) ? fastrom_obuf : 1'bz;

// ABUS.NET (110) - d1[8-10] : ts
assign dr_8 = (memc1r) ? gnd : 1'bz;
assign dr_9 = (memc1r) ? gnd : 1'bz;
assign dr_10 = (memc1r) ? gnd : 1'bz;

// ABUS.NET (111) - d1[11-12] : ts
assign dr_11 = (memc1r) ? iospd_0_obuf : 1'bz;
assign dr_12 = (memc1r) ? iospd_1_obuf : 1'bz;

// ABUS.NET (112) - d1[13] : ts
assign dr_13 = (memc1r) ? nocpu_obuf : 1'bz;

// ABUS.NET (113) - d1[14] : ts
assign dr_14 = (memc1r) ? cpu32_obuf : 1'bz;

// ABUS.NET (114) - d1[15] : ts
assign dr_15 = (memc1r) ? gnd : 1'bz;

// ABUS.NET (118) - memc2 : an2h
assign memc2 = wet & memc2w;

// ABUS.NET (119) - cols0[0-1] : ldp1q
ldp1q cols0_from_0_to_1_inst_0
(
	.q(cols0_0), // OUT
	.d(din_0), // IN
	.g(memc2)  // IN
);
ldp1q cols0_from_0_to_1_inst_1
(
	.q(cols0_1), // OUT
	.d(din_1), // IN
	.g(memc2)  // IN
);

// ABUS.NET (120) - dwid0[0-1] : ldp1q
ldp1q dwid0_from_0_to_1_inst_0
(
	.q(dwid0_0), // OUT
	.d(din_2), // IN
	.g(memc2)  // IN
);
ldp1q dwid0_from_0_to_1_inst_1
(
	.q(dwid0_1), // OUT
	.d(din_3), // IN
	.g(memc2)  // IN
);

// ABUS.NET (121) - cols1[0-1] : ldp1q
ldp1q cols1_from_0_to_1_inst_0
(
	.q(cols1_0), // OUT
	.d(din_4), // IN
	.g(memc2)  // IN
);
ldp1q cols1_from_0_to_1_inst_1
(
	.q(cols1_1), // OUT
	.d(din_5), // IN
	.g(memc2)  // IN
);

// ABUS.NET (122) - dwid1[0-1] : ldp1q
ldp1q dwid1_from_0_to_1_inst_0
(
	.q(dwid1_0), // OUT
	.d(din_6), // IN
	.g(memc2)  // IN
);
ldp1q dwid1_from_0_to_1_inst_1
(
	.q(dwid1_1), // OUT
	.d(din_7), // IN
	.g(memc2)  // IN
);

// ABUS.NET (123) - refrate[0-3] : slatch
slatch refrate_from_0_to_3_inst_0
(
	.q(refrate_0_obuf), // IO
	.d(din_8), // IN
	.clk(clk), // IN
	.en(memc2w)  // IN
);
slatch refrate_from_0_to_3_inst_1
(
	.q(refrate_1_obuf), // IO
	.d(din_9), // IN
	.clk(clk), // IN
	.en(memc2w)  // IN
);
slatch refrate_from_0_to_3_inst_2
(
	.q(refrate_2_obuf), // IO
	.d(din_10), // IN
	.clk(clk), // IN
	.en(memc2w)  // IN
);
slatch refrate_from_0_to_3_inst_3
(
	.q(refrate_3_obuf), // IO
	.d(din_11), // IN
	.clk(clk), // IN
	.en(memc2w)  // IN
);

// ABUS.NET (124) - bigd : ldp1q
ldp1q bigd_inst
(
	.q(bigd), // OUT
	.d(m2d_12), // IN
	.g(m2ld)  // IN
);

// ABUS.NET (125) - hiloi : ldp1q
ldp1q hiloi_inst
(
	.q(hiloi), // OUT
	.d(din_13), // IN
	.g(memc2)  // IN
);

// ABUS.NET (126) - hilo : nivh
assign hilo_obuf = hiloi;

// ABUS.NET (128) - d2[0-1] : ts
assign dr_0 = (memc2r) ? cols0_0 : 1'bz;
assign dr_1 = (memc2r) ? cols0_1 : 1'bz;

// ABUS.NET (129) - d2[2-3] : ts
assign dr_2 = (memc2r) ? dwid0_0 : 1'bz;
assign dr_3 = (memc2r) ? dwid0_1 : 1'bz;

// ABUS.NET (130) - d2[4-5] : ts
assign dr_4 = (memc2r) ? cols1_0 : 1'bz;
assign dr_5 = (memc2r) ? cols1_1 : 1'bz;

// ABUS.NET (131) - d2[6-7] : ts
assign dr_6 = (memc2r) ? dwid1_0 : 1'bz;
assign dr_7 = (memc2r) ? dwid1_1 : 1'bz;

// ABUS.NET (132) - d2[8-11] : ts
assign dr_8 = (memc2r) ? refrate_0_obuf : 1'bz;
assign dr_9 = (memc2r) ? refrate_1_obuf : 1'bz;
assign dr_10 = (memc2r) ? refrate_2_obuf : 1'bz;
assign dr_11 = (memc2r) ? refrate_3_obuf : 1'bz;

// ABUS.NET (133) - d2[12] : ts
assign dr_12 = (memc2r) ? bigd : 1'bz;

// ABUS.NET (134) - d2[13] : ts
assign dr_13 = (memc2r) ? hilo_obuf : 1'bz;

// ABUS.NET (135) - d2[14-15] : ts
assign dr_14 = (memc2r) ? gnd : 1'bz;
assign dr_15 = (memc2r) ? gnd : 1'bz;

// ABUS.NET (142) - bigendi : fd1q
fd1q bigendi_inst
(
	.q(bigendi), // OUT
	.d(bigd), // IN
	.cp(clk)  // IN
);

// ABUS.NET (143) - bigend : nivh
assign bigend_obuf = bigendi;

// ABUS.NET (149) - motorola : ldp1
ldp1 motorola_inst
(
	.q(m68ki), // OUT
	.qn(not68k), // OUT
	.d(cfg_8), // IN
	.g(cfgw)  // IN
);

// ABUS.NET (150) - m68k : nivh
assign m68k_obuf = m68ki;

// ABUS.NET (154) - aouti[3-15] : fd1qp
fd1q aouti_from_3_to_15_inst_0
(
	.q(aouti_3), // OUT
	.d(at_3_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_1
(
	.q(aouti_4), // OUT
	.d(at_4_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_2
(
	.q(aouti_5), // OUT
	.d(at_5_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_3
(
	.q(aouti_6), // OUT
	.d(at_6_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_4
(
	.q(aouti_7), // OUT
	.d(at_7_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_5
(
	.q(aouti_8), // OUT
	.d(at_8_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_6
(
	.q(aouti_9), // OUT
	.d(at_9_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_7
(
	.q(aouti_10), // OUT
	.d(at_10_obuf), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_8
(
	.q(aouti_11), // OUT
	.d(at_11), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_9
(
	.q(aouti_12), // OUT
	.d(at_12), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_10
(
	.q(aouti_13), // OUT
	.d(at_13), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_11
(
	.q(aouti_14), // OUT
	.d(at_14), // IN
	.cp(clk)  // IN
);
fd1q aouti_from_3_to_15_inst_12
(
	.q(aouti_15), // OUT
	.d(at_15), // IN
	.cp(clk)  // IN
);

// ABUS.NET (155) - at[3-15] : mx2h
mx2 at_from_3_to_15_inst_0
(
	.z(at_3_obuf), // OUT
	.a0(aouti_3), // IN
	.a1(a_3), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_1
(
	.z(at_4_obuf), // OUT
	.a0(aouti_4), // IN
	.a1(a_4), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_2
(
	.z(at_5_obuf), // OUT
	.a0(aouti_5), // IN
	.a1(a_5), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_3
(
	.z(at_6_obuf), // OUT
	.a0(aouti_6), // IN
	.a1(a_6), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_4
(
	.z(at_7_obuf), // OUT
	.a0(aouti_7), // IN
	.a1(a_7), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_5
(
	.z(at_8_obuf), // OUT
	.a0(aouti_8), // IN
	.a1(a_8), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_6
(
	.z(at_9_obuf), // OUT
	.a0(aouti_9), // IN
	.a1(a_9), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_7
(
	.z(at_10_obuf), // OUT
	.a0(aouti_10), // IN
	.a1(a_10), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_8
(
	.z(at_11), // OUT
	.a0(aouti_11), // IN
	.a1(a_11), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_9
(
	.z(at_12), // OUT
	.a0(aouti_12), // IN
	.a1(a_12), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_10
(
	.z(at_13), // OUT
	.a0(aouti_13), // IN
	.a1(a_13), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_11
(
	.z(at_14), // OUT
	.a0(aouti_14), // IN
	.a1(a_14), // IN
	.s(ack)  // IN
);
mx2 at_from_3_to_15_inst_12
(
	.z(at_15), // OUT
	.a0(aouti_15), // IN
	.a1(a_15), // IN
	.s(ack)  // IN
);

// ABUS.NET (156) - aout[3-8] : nivh
assign aout_3_obuf = aouti_3;
assign aout_4_obuf = aouti_4;
assign aout_5_obuf = aouti_5;
assign aout_6_obuf = aouti_6;
assign aout_7_obuf = aouti_7;
assign aout_8_obuf = aouti_8;

// ABUS.NET (157) - aout[9] : nivu
assign aout_9_obuf = aouti_9;

// ABUS.NET (158) - aout[10-14] : nivh
assign aout_10_obuf = aouti_10;
assign aout_11_obuf = aouti_11;
assign aout_12_obuf = aouti_12;
assign aout_13_obuf = aouti_13;
assign aout_14_obuf = aouti_14;

// ABUS.NET (159) - aout[15] : nivu
assign aout_15_obuf = aouti_15;

// ABUS.NET (160) - aout[16-23] : fd1q
fd1q aout_from_16_to_23_inst_0
(
	.q(aout_16_obuf), // OUT
	.d(at_16), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_1
(
	.q(aout_17_obuf), // OUT
	.d(at_17), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_2
(
	.q(aout_18_obuf), // OUT
	.d(at_18), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_3
(
	.q(aout_19_obuf), // OUT
	.d(at_19), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_4
(
	.q(aout_20_obuf), // OUT
	.d(at_20), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_5
(
	.q(aout_21_obuf), // OUT
	.d(at_21), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_6
(
	.q(aout_22_obuf), // OUT
	.d(at_22), // IN
	.cp(clk)  // IN
);
fd1q aout_from_16_to_23_inst_7
(
	.q(aout_23_obuf), // OUT
	.d(at_23), // IN
	.cp(clk)  // IN
);

// ABUS.NET (161) - at[16-23] : mx2m
mx2 at_from_16_to_23_inst_0
(
	.z(at_16), // OUT
	.a0(aout_16_obuf), // IN
	.a1(ab_16), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_1
(
	.z(at_17), // OUT
	.a0(aout_17_obuf), // IN
	.a1(ab_17), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_2
(
	.z(at_18), // OUT
	.a0(aout_18_obuf), // IN
	.a1(ab_18), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_3
(
	.z(at_19), // OUT
	.a0(aout_19_obuf), // IN
	.a1(ab_19), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_4
(
	.z(at_20), // OUT
	.a0(aout_20_obuf), // IN
	.a1(ab_20), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_5
(
	.z(at_21), // OUT
	.a0(aout_21_obuf), // IN
	.a1(ab_21), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_6
(
	.z(at_22), // OUT
	.a0(aout_22_obuf), // IN
	.a1(ab_22), // IN
	.s(ack)  // IN
);
mx2 at_from_16_to_23_inst_7
(
	.z(at_23), // OUT
	.a0(aout_23_obuf), // IN
	.a1(ab_23), // IN
	.s(ack)  // IN
);

// ABUS.NET (168) - mseti : fd2q
fd2q mseti_inst
(
	.q(mseti), // OUT
	.d(vcc), // IN
	.cp(memc1w), // IN
	.cd(cfgen)  // IN
);

// ABUS.NET (169) - mset : nivh
assign mset = mseti;

// ABUS.NET (193) - alb[10-23] : ivu
assign alb_10 = ~a_10;
assign alb_11 = ~a_11;
assign alb_12 = ~a_12;
assign alb_13 = ~a_13;
assign alb_14 = ~a_14;
assign alb_15 = ~a_15;
assign alb_16 = ~a_16;
assign alb_17 = ~a_17;
assign alb_18 = ~a_18;
assign alb_19 = ~a_19;
assign alb_20 = ~a_20;
assign alb_21 = ~a_21;
assign alb_22 = ~a_22;
assign alb_23 = ~a_23;

// ABUS.NET (194) - ab[10-12] : iv
assign ab_10 = ~alb_10;
assign ab_11 = ~alb_11;
assign ab_12 = ~alb_12;

// ABUS.NET (195) - ab[15-23] : ivu
assign ab_15 = ~alb_15;
assign ab_16 = ~alb_16;
assign ab_17 = ~alb_17;
assign ab_18 = ~alb_18;
assign ab_19 = ~alb_19;
assign ab_20 = ~alb_20;
assign ab_21 = ~alb_21;
assign ab_22 = ~alb_22;
assign ab_23 = ~alb_23;

// ABUS.NET (196) - notmset : iv
assign notmset = ~mset;

// ABUS.NET (197) - ab23 : dummy

// ABUS.NET (198) - mreqb : nivm
assign mreqb = mreq;

// ABUS.NET (200) - abs01 : nd2
assign abs01 = ~(mreqb & notmset);

// ABUS.NET (201) - abs02 : nd6
assign abs02 = ~(vcc & mreqb & romlo & alb_23 & alb_22 & alb_21);

// ABUS.NET (202) - abs03 : nd6
assign abs03 = ~(vcc & mreqb & romhi & ab_23 & ab_22 & ab_21);

// ABUS.NET (203) - abs0 : nd3
assign abs_0 = ~(abs01 & abs02 & abs03);

// ABUS.NET (205) - abs10 : nd6
assign abs10 = ~(mreqb & romlo & alb_23 & alb_22 & ab_21 & mset);

// ABUS.NET (206) - abs11 : nd6
assign abs11 = ~(vcc & mreqb & romlo & alb_23 & ab_22 & mset);

// ABUS.NET (207) - abs12 : nd6
assign abs12 = ~(mreqb & romhi & ab_23 & ab_22 & alb_21 & mset);

// ABUS.NET (208) - abs13 : nd6
assign abs13 = ~(vcc & mreqb & romhi & ab_23 & alb_22 & mset);

// ABUS.NET (209) - abs1 : nd4
assign abs_1 = ~(abs10 & abs11 & abs12 & abs13);

// ABUS.NET (211) - abs20 : nd6
assign abs20 = ~(vcc & mreqb & romlo & ab_23 & alb_22 & mset);

// ABUS.NET (212) - abs21 : nd6
assign abs21 = ~(vcc & mreqb & romhi & alb_23 & ab_22 & mset);

// ABUS.NET (213) - abs2 : nd2
assign abs_2_obuf = ~(abs20 & abs21);

// ABUS.NET (215) - abs30 : nd6
assign abs30 = ~(vcc & mreqb & romlo & ab_23 & ab_22 & mset);

// ABUS.NET (216) - abs31 : nd6
assign abs31 = ~(vcc & mreqb & romhi & alb_23 & alb_22 & mset);

// ABUS.NET (217) - abs3 : nd2
assign abs_3_obuf = ~(abs30 & abs31);

// ABUS.NET (223) - fdram : or2
assign fdram_obuf = abs_2_obuf | abs_3_obuf;

// ABUS.NET (230) - fintdev1 : nd6
assign fintdev1 = ~(abs_0 & alb_16 & alb_17 & alb_18 & alb_19 & ab_20);

// ABUS.NET (231) - fintdev : ivh
assign fintdev_obuf = ~fintdev1;

// ABUS.NET (232) - fextdevl : nd6
assign fextdevl = ~(abs_0 & ab_16 & alb_17 & alb_18 & alb_19 & ab_20);

// ABUS.NET (233) - fextdev : iv
assign fextdev_obuf = ~fextdevl;

// ABUS.NET (246) - rom1 : nd6
assign rom1 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & notdev);

// ABUS.NET (247) - rom2 : nd6
assign rom2 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & notdev);

// ABUS.NET (248) - rom3 : nd6
assign rom3 = ~(vcc & mset & romlo & alb_23 & alb_22 & ab_21);

// ABUS.NET (249) - rom4 : nd6
assign rom4 = ~(vcc & mset & romhi & ab_23 & ab_22 & alb_21);

// ABUS.NET (250) - rom5 : nd4
assign rom5 = ~(mset & romlo & alb_23 & ab_22);

// ABUS.NET (251) - rom6 : nd4
assign rom6 = ~(mset & romhi & ab_23 & alb_22);

// ABUS.NET (252) - rom7 : nd2
assign rom7 = ~(notmset & notdev);

// ABUS.NET (253) - from : nd8
assign from_obuf = ~(rom7 & rom1 & rom2 & rom3 & rom4 & rom5 & rom6 & vcc);

// ABUS.NET (255) - romcsl[0] : an3
assign romcsl_0 = rom1 & rom2 & rom7;

// ABUS.NET (260) - intdevi : slatchc
slatchc intdevi_inst
(
	.q(intdevi), // IO
	.d(fintdev_obuf), // IN
	.clk(clk), // IN
	.en(ack), // IN
	.resl(resetl)  // IN
);

// ABUS.NET (261) - intdev : nivh
assign intdev_obuf = intdevi;

// ABUS.NET (262) - dram : slatch
slatch dram_inst
(
	.q(dram_obuf), // IO
	.d(fdram_obuf), // IN
	.clk(clk), // IN
	.en(ack)  // IN
);

// ABUS.NET (268) - rom0 : iv
assign rom0 = ~romcsl_0;

// ABUS.NET (269) - bs[0] : slatch
slatch bs_index_0_inst
(
	.q(bs_0_obuf), // IO
	.d(rom0), // IN
	.clk(clk), // IN
	.en(ack)  // IN
);

// ABUS.NET (270) - bs[1] : slatch
slatch bs_index_1_inst
(
	.q(bs_1_obuf), // IO
	.d(abs_1), // IN
	.clk(clk), // IN
	.en(ack)  // IN
);

// ABUS.NET (271) - bsi[2] : fd1q
fd1q bsi_index_2_inst
(
	.q(bsi_2), // OUT
	.d(abti_2), // IN
	.cp(clk)  // IN
);

// ABUS.NET (272) - abti[2] : mx2
mx2 abti_index_2_inst
(
	.z(abti_2), // OUT
	.a0(bsi_2), // IN
	.a1(abs_2_obuf), // IN
	.s(ack)  // IN
);

// ABUS.NET (273) - abt[2] : nivh
assign abt_2 = abti_2;

// ABUS.NET (274) - bs[3] : slatch
slatch bs_index_3_inst
(
	.q(bs_3_obuf), // IO
	.d(abs_3_obuf), // IN
	.clk(clk), // IN
	.en(ack)  // IN
);

// ABUS.NET (275) - bs[2] : nivm
assign bs_2_obuf = bsi_2;

// ABUS.NET (297) - mw01 : nd3
assign mw01 = ~(notmset & notdev & romwid_0);

// ABUS.NET (298) - mw02 : nd2
assign mw02 = ~(notmset & dev16);

// ABUS.NET (299) - mw03 : nd8
assign mw03 = ~(vcc & mset & romlo & alb_23 & alb_22 & alb_21 & notdev & romwid_0);

// ABUS.NET (300) - mw04 : nd6
assign mw04 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & dev16);

// ABUS.NET (301) - mw05 : nd8
assign mw05 = ~(vcc & mset & romhi & ab_23 & ab_22 & ab_21 & notdev & romwid_0);

// ABUS.NET (302) - mw06 : nd6
assign mw06 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & dev16);

// ABUS.NET (303) - mw07 : nd6
assign mw07 = ~(mset & romlo & alb_23 & alb_22 & ab_21 & romwid_0);

// ABUS.NET (304) - mw08 : nd6
assign mw08 = ~(mset & romhi & ab_23 & ab_22 & alb_21 & romwid_0);

// ABUS.NET (305) - mw09 : nd6
assign mw09 = ~(vcc & mset & romlo & alb_23 & ab_22 & romwid_0);

// ABUS.NET (306) - mw0a : nd6
assign mw0a = ~(vcc & mset & romhi & ab_23 & alb_22 & romwid_0);

// ABUS.NET (307) - mw0b : nd6
assign mw0b = ~(vcc & mset & romlo & ab_23 & alb_22 & dwid1_0);

// ABUS.NET (308) - mw0c : nd6
assign mw0c = ~(vcc & mset & romhi & alb_23 & ab_22 & dwid1_0);

// ABUS.NET (309) - mw0d : nd6
assign mw0d = ~(vcc & mset & romlo & ab_23 & ab_22 & dwid0_0);

// ABUS.NET (310) - mw0e : nd6
assign mw0e = ~(vcc & mset & romhi & alb_23 & alb_22 & dwid0_0);

// ABUS.NET (312) - mw[0] : nand14
nand14 mw_index_0_inst
(
	.z(mw_0_obuf), // IO
	.a(mw01), // IN
	.b(mw02), // IN
	.c(mw03), // IN
	.d(mw04), // IN
	.e(mw05), // IN
	.f(mw06), // IN
	.g(mw07), // IN
	.h(mw08), // IN
	.i(mw09), // IN
	.j(mw0a), // IN
	.k(mw0b), // IN
	.l(mw0c), // IN
	.m(mw0d), // IN
	.n(mw0e)  // IN
);

// ABUS.NET (315) - mw11 : nd3
assign mw11 = ~(notmset & notdev & romwid_1);

// ABUS.NET (316) - mw12 : nd2
assign mw12 = ~(notmset & dev32);

// ABUS.NET (317) - mw13 : nd8
assign mw13 = ~(vcc & mset & romlo & alb_23 & alb_22 & alb_21 & notdev & romwid_1);

// ABUS.NET (318) - mw14 : nd6
assign mw14 = ~(mset & romlo & alb_23 & alb_22 & alb_21 & dev32);

// ABUS.NET (319) - mw15 : nd8
assign mw15 = ~(vcc & mset & romhi & ab_23 & ab_22 & ab_21 & notdev & romwid_1);

// ABUS.NET (320) - mw16 : nd6
assign mw16 = ~(mset & romhi & ab_23 & ab_22 & ab_21 & dev32);

// ABUS.NET (321) - mw17 : nd6
assign mw17 = ~(mset & romlo & alb_23 & alb_22 & ab_21 & romwid_1);

// ABUS.NET (322) - mw18 : nd6
assign mw18 = ~(mset & romhi & ab_23 & ab_22 & alb_21 & romwid_1);

// ABUS.NET (323) - mw19 : nd6
assign mw19 = ~(vcc & mset & romlo & alb_23 & ab_22 & romwid_1);

// ABUS.NET (324) - mw1a : nd6
assign mw1a = ~(vcc & mset & romhi & ab_23 & alb_22 & romwid_1);

// ABUS.NET (325) - mw1b : nd6
assign mw1b = ~(vcc & mset & romlo & ab_23 & alb_22 & dwid1_1);

// ABUS.NET (326) - mw1c : nd6
assign mw1c = ~(vcc & mset & romhi & alb_23 & ab_22 & dwid1_1);

// ABUS.NET (327) - mw1d : nd6
assign mw1d = ~(vcc & mset & romlo & ab_23 & ab_22 & dwid0_1);

// ABUS.NET (328) - mw1e : nd6
assign mw1e = ~(vcc & mset & romhi & alb_23 & alb_22 & dwid0_1);

// ABUS.NET (330) - mw[1] : nand14
nand14 mw_index_1_inst
(
	.z(mw_1_obuf), // IO
	.a(mw11), // IN
	.b(mw12), // IN
	.c(mw13), // IN
	.d(mw14), // IN
	.e(mw15), // IN
	.f(mw16), // IN
	.g(mw17), // IN
	.h(mw18), // IN
	.i(mw19), // IN
	.j(mw1a), // IN
	.k(mw1b), // IN
	.l(mw1c), // IN
	.m(mw1d), // IN
	.n(mw1e)  // IN
);

// ABUS.NET (333) - notdev : nd4p
assign notdev = ~(ab_20 & alb_19 & alb_18 & alb_17);

// ABUS.NET (334) - dev32l : nd6
assign dev32l = ~(ab_20 & alb_19 & alb_18 & alb_17 & alb_16 & ab_15);

// ABUS.NET (335) - dev32 : ivm
assign dev32 = ~dev32l;

// ABUS.NET (336) - dev160 : nd6
assign dev160 = ~(ab_20 & alb_19 & alb_18 & alb_17 & alb_16 & alb_15);

// ABUS.NET (337) - dev161 : nd6
assign dev161 = ~(ab_20 & alb_19 & alb_18 & alb_17 & ab_16 & vcc);

// ABUS.NET (338) - dev16 : nd2p
assign dev16 = ~(dev160 & dev161);

// ABUS.NET (346) - notba : iv
assign notba = ~ba;

// ABUS.NET (347) - bm68k : an2
assign bm68k = notba & m68k_obuf;

// ABUS.NET (348) - ai[0] : mx2
mx2 ai_index_0_inst
(
	.z(ai_0), // OUT
	.a0(ain_0), // IN
	.a1(siz_1), // IN
	.s(bm68k)  // IN
);

// ABUS.NET (350) - a[0] : tsm
assign a_0 = (ainen) ? ai_0 : 1'bz;

// ABUS.NET (351) - a[1-23] : tsm
assign a_1 = (ainen) ? ain_1 : 1'bz;
assign a_2 = (ainen) ? ain_2 : 1'bz;
assign a_3 = (ainen) ? ain_3 : 1'bz;
assign a_4 = (ainen) ? ain_4 : 1'bz;
assign a_5 = (ainen) ? ain_5 : 1'bz;
assign a_6 = (ainen) ? ain_6 : 1'bz;
assign a_7 = (ainen) ? ain_7 : 1'bz;
assign a_8 = (ainen) ? ain_8 : 1'bz;
assign a_9 = (ainen) ? ain_9 : 1'bz;
assign a_10 = (ainen) ? ain_10 : 1'bz;
assign a_11 = (ainen) ? ain_11 : 1'bz;
assign a_12 = (ainen) ? ain_12 : 1'bz;
assign a_13 = (ainen) ? ain_13 : 1'bz;
assign a_14 = (ainen) ? ain_14 : 1'bz;
assign a_15 = (ainen) ? ain_15 : 1'bz;
assign a_16 = (ainen) ? ain_16 : 1'bz;
assign a_17 = (ainen) ? ain_17 : 1'bz;
assign a_18 = (ainen) ? ain_18 : 1'bz;
assign a_19 = (ainen) ? ain_19 : 1'bz;
assign a_20 = (ainen) ? ain_20 : 1'bz;
assign a_21 = (ainen) ? ain_21 : 1'bz;
assign a_22 = (ainen) ? ain_22 : 1'bz;
assign a_23 = (ainen) ? ain_23 : 1'bz;

// ABUS.NET (375) - dwidi[0-1] : mx2
mx2 dwidi_from_0_to_1_inst_0
(
	.z(dwidi_0), // OUT
	.a0(dwid0_0), // IN
	.a1(dwid1_0), // IN
	.s(abt_2)  // IN
);
mx2 dwidi_from_0_to_1_inst_1
(
	.z(dwidi_1), // OUT
	.a0(dwid0_1), // IN
	.a1(dwid1_1), // IN
	.s(abt_2)  // IN
);

// ABUS.NET (376) - dwid[0-1] : nivh
assign dwid_0 = dwidi_0;
assign dwid_1 = dwidi_1;

// ABUS.NET (378) - ald[0-10] : mx4
mx4 ald_from_0_to_10_inst_0
(
	.z(ald_0), // OUT
	.a0(at_0), // IN
	.a1(at_1), // IN
	.a2(at_2), // IN
	.a3(at_3_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_1
(
	.z(ald_1), // OUT
	.a0(at_1), // IN
	.a1(at_2), // IN
	.a2(at_3_obuf), // IN
	.a3(at_4_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_2
(
	.z(ald_2), // OUT
	.a0(at_2), // IN
	.a1(at_3_obuf), // IN
	.a2(at_4_obuf), // IN
	.a3(at_5_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_3
(
	.z(ald_3), // OUT
	.a0(at_3_obuf), // IN
	.a1(at_4_obuf), // IN
	.a2(at_5_obuf), // IN
	.a3(at_6_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_4
(
	.z(ald_4), // OUT
	.a0(at_4_obuf), // IN
	.a1(at_5_obuf), // IN
	.a2(at_6_obuf), // IN
	.a3(at_7_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_5
(
	.z(ald_5), // OUT
	.a0(at_5_obuf), // IN
	.a1(at_6_obuf), // IN
	.a2(at_7_obuf), // IN
	.a3(at_8_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_6
(
	.z(ald_6), // OUT
	.a0(at_6_obuf), // IN
	.a1(at_7_obuf), // IN
	.a2(at_8_obuf), // IN
	.a3(at_9_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_7
(
	.z(ald_7), // OUT
	.a0(at_7_obuf), // IN
	.a1(at_8_obuf), // IN
	.a2(at_9_obuf), // IN
	.a3(at_10_obuf), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_8
(
	.z(ald_8), // OUT
	.a0(at_8_obuf), // IN
	.a1(at_9_obuf), // IN
	.a2(at_10_obuf), // IN
	.a3(at_11), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_9
(
	.z(ald_9), // OUT
	.a0(at_9_obuf), // IN
	.a1(at_10_obuf), // IN
	.a2(at_11), // IN
	.a3(at_12), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);
mx4 ald_from_0_to_10_inst_10
(
	.z(ald_10), // OUT
	.a0(at_10_obuf), // IN
	.a1(at_11), // IN
	.a2(at_12), // IN
	.a3(at_13), // IN
	.s0(dwid_0), // IN
	.s1(dwid_1)  // IN
);

// ABUS.NET (383) - cw0i[0] : ha1
ha1 cw0i_index_0_inst
(
	.s(cw0i_0), // OUT
	.co(co0_0), // OUT
	.a(dwid0_0), // IN
	.b(cols0_0)  // IN
);

// ABUS.NET (384) - cw0i[1] : fa1
fa1 cw0i_index_1_inst
(
	.s(cw0i_1), // OUT
	.co(cw0i_2), // OUT
	.ci(dwid0_1), // IN
	.a(cols0_1), // IN
	.b(co0_0)  // IN
);

// ABUS.NET (385) - cw0[0-2] : nivm
assign cw0_0 = cw0i_0;
assign cw0_1 = cw0i_1;
assign cw0_2 = cw0i_2;

// ABUS.NET (387) - cw1i[0] : ha1
ha1 cw1i_index_0_inst
(
	.s(cw1i_0), // OUT
	.co(co1_0), // OUT
	.a(dwid1_0), // IN
	.b(cols1_0)  // IN
);

// ABUS.NET (388) - cw1i[1] : fa1
fa1 cw1i_index_1_inst
(
	.s(cw1i_1), // OUT
	.co(cw1i_2), // OUT
	.ci(dwid1_1), // IN
	.a(cols1_1), // IN
	.b(co1_0)  // IN
);

// ABUS.NET (389) - cw1[0-2] : nivm
assign cw1_0 = cw1i_0;
assign cw1_1 = cw1i_1;
assign cw1_2 = cw1i_2;

// ABUS.NET (393) - ahd0[0-9] : mx8
mx8 ahd0_from_0_to_9_inst_0
(
	.z(ahd0_0), // OUT
	.a0(at_8_obuf), // IN
	.a1(at_9_obuf), // IN
	.a2(at_10_obuf), // IN
	.a3(at_11), // IN
	.a4(at_12), // IN
	.a5(at_13), // IN
	.a6(at_14), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_1
(
	.z(ahd0_1), // OUT
	.a0(at_9_obuf), // IN
	.a1(at_10_obuf), // IN
	.a2(at_11), // IN
	.a3(at_12), // IN
	.a4(at_13), // IN
	.a5(at_14), // IN
	.a6(at_15), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_2
(
	.z(ahd0_2), // OUT
	.a0(at_10_obuf), // IN
	.a1(at_11), // IN
	.a2(at_12), // IN
	.a3(at_13), // IN
	.a4(at_14), // IN
	.a5(at_15), // IN
	.a6(at_16), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_3
(
	.z(ahd0_3), // OUT
	.a0(at_11), // IN
	.a1(at_12), // IN
	.a2(at_13), // IN
	.a3(at_14), // IN
	.a4(at_15), // IN
	.a5(at_16), // IN
	.a6(at_17), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_4
(
	.z(ahd0_4), // OUT
	.a0(at_12), // IN
	.a1(at_13), // IN
	.a2(at_14), // IN
	.a3(at_15), // IN
	.a4(at_16), // IN
	.a5(at_17), // IN
	.a6(at_18), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_5
(
	.z(ahd0_5), // OUT
	.a0(at_13), // IN
	.a1(at_14), // IN
	.a2(at_15), // IN
	.a3(at_16), // IN
	.a4(at_17), // IN
	.a5(at_18), // IN
	.a6(at_19), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_6
(
	.z(ahd0_6), // OUT
	.a0(at_14), // IN
	.a1(at_15), // IN
	.a2(at_16), // IN
	.a3(at_17), // IN
	.a4(at_18), // IN
	.a5(at_19), // IN
	.a6(at_20), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_7
(
	.z(ahd0_7), // OUT
	.a0(at_15), // IN
	.a1(at_16), // IN
	.a2(at_17), // IN
	.a3(at_18), // IN
	.a4(at_19), // IN
	.a5(at_20), // IN
	.a6(at_21), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_8
(
	.z(ahd0_8), // OUT
	.a0(at_16), // IN
	.a1(at_17), // IN
	.a2(at_18), // IN
	.a3(at_19), // IN
	.a4(at_20), // IN
	.a5(at_21), // IN
	.a6(at_22), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);
mx8 ahd0_from_0_to_9_inst_9
(
	.z(ahd0_9), // OUT
	.a0(at_17), // IN
	.a1(at_18), // IN
	.a2(at_19), // IN
	.a3(at_20), // IN
	.a4(at_21), // IN
	.a5(at_22), // IN
	.a6(at_23), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);

// ABUS.NET (395) - ahd0[10] : mx8
mx8 ahd0_index_10_inst
(
	.z(ahd0_10), // OUT
	.a0(at_18), // IN
	.a1(at_19), // IN
	.a2(at_20), // IN
	.a3(at_21), // IN
	.a4(at_22), // IN
	.a5(at_23), // IN
	.a6(gnd), // IN
	.a7(gnd), // IN
	.s0(cw0_0), // IN
	.s1(cw0_1), // IN
	.s2(cw0_2)  // IN
);

// ABUS.NET (397) - ahd1[0-9] : mx8
mx8 ahd1_from_0_to_9_inst_0
(
	.z(ahd1_0), // OUT
	.a0(at_8_obuf), // IN
	.a1(at_9_obuf), // IN
	.a2(at_10_obuf), // IN
	.a3(at_11), // IN
	.a4(at_12), // IN
	.a5(at_13), // IN
	.a6(at_14), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_1
(
	.z(ahd1_1), // OUT
	.a0(at_9_obuf), // IN
	.a1(at_10_obuf), // IN
	.a2(at_11), // IN
	.a3(at_12), // IN
	.a4(at_13), // IN
	.a5(at_14), // IN
	.a6(at_15), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_2
(
	.z(ahd1_2), // OUT
	.a0(at_10_obuf), // IN
	.a1(at_11), // IN
	.a2(at_12), // IN
	.a3(at_13), // IN
	.a4(at_14), // IN
	.a5(at_15), // IN
	.a6(at_16), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_3
(
	.z(ahd1_3), // OUT
	.a0(at_11), // IN
	.a1(at_12), // IN
	.a2(at_13), // IN
	.a3(at_14), // IN
	.a4(at_15), // IN
	.a5(at_16), // IN
	.a6(at_17), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_4
(
	.z(ahd1_4), // OUT
	.a0(at_12), // IN
	.a1(at_13), // IN
	.a2(at_14), // IN
	.a3(at_15), // IN
	.a4(at_16), // IN
	.a5(at_17), // IN
	.a6(at_18), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_5
(
	.z(ahd1_5), // OUT
	.a0(at_13), // IN
	.a1(at_14), // IN
	.a2(at_15), // IN
	.a3(at_16), // IN
	.a4(at_17), // IN
	.a5(at_18), // IN
	.a6(at_19), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_6
(
	.z(ahd1_6), // OUT
	.a0(at_14), // IN
	.a1(at_15), // IN
	.a2(at_16), // IN
	.a3(at_17), // IN
	.a4(at_18), // IN
	.a5(at_19), // IN
	.a6(at_20), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_7
(
	.z(ahd1_7), // OUT
	.a0(at_15), // IN
	.a1(at_16), // IN
	.a2(at_17), // IN
	.a3(at_18), // IN
	.a4(at_19), // IN
	.a5(at_20), // IN
	.a6(at_21), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_8
(
	.z(ahd1_8), // OUT
	.a0(at_16), // IN
	.a1(at_17), // IN
	.a2(at_18), // IN
	.a3(at_19), // IN
	.a4(at_20), // IN
	.a5(at_21), // IN
	.a6(at_22), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);
mx8 ahd1_from_0_to_9_inst_9
(
	.z(ahd1_9), // OUT
	.a0(at_17), // IN
	.a1(at_18), // IN
	.a2(at_19), // IN
	.a3(at_20), // IN
	.a4(at_21), // IN
	.a5(at_22), // IN
	.a6(at_23), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);

// ABUS.NET (399) - ahd1[10] : mx8
mx8 ahd1_index_10_inst
(
	.z(ahd1_10), // OUT
	.a0(at_18), // IN
	.a1(at_19), // IN
	.a2(at_20), // IN
	.a3(at_21), // IN
	.a4(at_22), // IN
	.a5(at_23), // IN
	.a6(gnd), // IN
	.a7(gnd), // IN
	.s0(cw1_0), // IN
	.s1(cw1_1), // IN
	.s2(cw1_2)  // IN
);

// ABUS.NET (401) - gnd : tie0
assign gnd = 1'b0;

// ABUS.NET (403) - ahd[0-10] : mx2
mx2 ahd_from_0_to_10_inst_0
(
	.z(ahd_0), // OUT
	.a0(ahd0_0), // IN
	.a1(ahd1_0), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_1
(
	.z(ahd_1), // OUT
	.a0(ahd0_1), // IN
	.a1(ahd1_1), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_2
(
	.z(ahd_2), // OUT
	.a0(ahd0_2), // IN
	.a1(ahd1_2), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_3
(
	.z(ahd_3), // OUT
	.a0(ahd0_3), // IN
	.a1(ahd1_3), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_4
(
	.z(ahd_4), // OUT
	.a0(ahd0_4), // IN
	.a1(ahd1_4), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_5
(
	.z(ahd_5), // OUT
	.a0(ahd0_5), // IN
	.a1(ahd1_5), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_6
(
	.z(ahd_6), // OUT
	.a0(ahd0_6), // IN
	.a1(ahd1_6), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_7
(
	.z(ahd_7), // OUT
	.a0(ahd0_7), // IN
	.a1(ahd1_7), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_8
(
	.z(ahd_8), // OUT
	.a0(ahd0_8), // IN
	.a1(ahd1_8), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_9
(
	.z(ahd_9), // OUT
	.a0(ahd0_9), // IN
	.a1(ahd1_9), // IN
	.s(abt_2)  // IN
);
mx2 ahd_from_0_to_10_inst_10
(
	.z(ahd_10), // OUT
	.a0(ahd0_10), // IN
	.a1(ahd1_10), // IN
	.s(abt_2)  // IN
);

// ABUS.NET (404) - mad[0-10] : mx2
mx2 mad_from_0_to_10_inst_0
(
	.z(mad_0), // OUT
	.a0(ald_0), // IN
	.a1(ahd_0), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_1
(
	.z(mad_1), // OUT
	.a0(ald_1), // IN
	.a1(ahd_1), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_2
(
	.z(mad_2), // OUT
	.a0(ald_2), // IN
	.a1(ahd_2), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_3
(
	.z(mad_3), // OUT
	.a0(ald_3), // IN
	.a1(ahd_3), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_4
(
	.z(mad_4), // OUT
	.a0(ald_4), // IN
	.a1(ahd_4), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_5
(
	.z(mad_5), // OUT
	.a0(ald_5), // IN
	.a1(ahd_5), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_6
(
	.z(mad_6), // OUT
	.a0(ald_6), // IN
	.a1(ahd_6), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_7
(
	.z(mad_7), // OUT
	.a0(ald_7), // IN
	.a1(ahd_7), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_8
(
	.z(mad_8), // OUT
	.a0(ald_8), // IN
	.a1(ahd_8), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_9
(
	.z(mad_9), // OUT
	.a0(ald_9), // IN
	.a1(ahd_9), // IN
	.s(mux)  // IN
);
mx2 mad_from_0_to_10_inst_10
(
	.z(mad_10), // OUT
	.a0(ald_10), // IN
	.a1(ahd_10), // IN
	.s(mux)  // IN
);

// ABUS.NET (405) - ma[0-10] : fd1q
fd1q ma_from_0_to_10_inst_0
(
	.q(ma_0_obuf), // OUT
	.d(mad_0), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_1
(
	.q(ma_1_obuf), // OUT
	.d(mad_1), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_2
(
	.q(ma_2_obuf), // OUT
	.d(mad_2), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_3
(
	.q(ma_3_obuf), // OUT
	.d(mad_3), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_4
(
	.q(ma_4_obuf), // OUT
	.d(mad_4), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_5
(
	.q(ma_5_obuf), // OUT
	.d(mad_5), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_6
(
	.q(ma_6_obuf), // OUT
	.d(mad_6), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_7
(
	.q(ma_7_obuf), // OUT
	.d(mad_7), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_8
(
	.q(ma_8_obuf), // OUT
	.d(mad_8), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_9
(
	.q(ma_9_obuf), // OUT
	.d(mad_9), // IN
	.cp(clk)  // IN
);
fd1q ma_from_0_to_10_inst_10
(
	.q(ma_10_obuf), // OUT
	.d(mad_10), // IN
	.cp(clk)  // IN
);

// ABUS.NET (411) - newrow[0] : an2h
assign newrow_0 = bs_3_obuf & newrow;

// ABUS.NET (412) - newrow[1] : an2h
assign newrow_1 = bs_2_obuf & newrow;

// ABUS.NET (413) - reset : iv
assign reset = ~resetl;

// ABUS.NET (414) - bankresl : nr2
assign bankresl = ~(reset | resrow);

// ABUS.NET (416) - bank[0] : bank
bank bank_index_0_inst
(
	.match(match_0), // IO
	.a_0(ahd0_0), // IN
	.a_1(ahd0_1), // IN
	.a_2(ahd0_2), // IN
	.a_3(ahd0_3), // IN
	.a_4(ahd0_4), // IN
	.a_5(ahd0_5), // IN
	.a_6(ahd0_6), // IN
	.a_7(ahd0_7), // IN
	.a_8(ahd0_8), // IN
	.a_9(ahd0_9), // IN
	.a_10(ahd0_10), // IN
	.newrow(newrow_0), // IN
	.resl(bankresl)  // IN
);

// ABUS.NET (417) - bank[1] : bank
bank bank_index_1_inst
(
	.match(match_1), // IO
	.a_0(ahd1_0), // IN
	.a_1(ahd1_1), // IN
	.a_2(ahd1_2), // IN
	.a_3(ahd1_3), // IN
	.a_4(ahd1_4), // IN
	.a_5(ahd1_5), // IN
	.a_6(ahd1_6), // IN
	.a_7(ahd1_7), // IN
	.a_8(ahd1_8), // IN
	.a_9(ahd1_9), // IN
	.a_10(ahd1_10), // IN
	.newrow(newrow_1), // IN
	.resl(bankresl)  // IN
);

// ABUS.NET (419) - m[0] : nd2
assign m_0 = ~(match_0 & abs_3_obuf);

// ABUS.NET (420) - m[1] : nd2
assign m_1 = ~(match_1 & abs_2_obuf);

// ABUS.NET (421) - match : nd2
assign match_obuf = ~(m_0 & m_1);

// ABUS.NET (429) - intd0 : nd6
assign intd0 = ~(dreqin & fc_0 & fc_1 & fc_2 & ainen & m68k_obuf);

// ABUS.NET (430) - intd1 : nd2
assign intd1 = ~(fcl_0 & not68k);

// ABUS.NET (431) - intd : nd2
assign intd = ~(intd0 & intd1);

// ABUS.NET (432) - intas : fd1q
fd1q intas_inst
(
	.q(ouracki), // OUT
	.d(intd), // IN
	.cp(clk)  // IN
);

// ABUS.NET (433) - notourack : ivm
assign notourack = ~ouracki;

// ABUS.NET (434) - ourack : ivh
assign ourack_obuf = ~notourack;

// ABUS.NET (436) - fcl[0] : iv
assign fcl_0 = ~fc_0;

// ABUS.NET (440) - gpuadd : or2
assign gpuadd = at_13 | at_14;

// ABUS.NET (441) - gpuread : an3
assign gpuread_obuf = gpuadd & readt & d7a;

// ABUS.NET (442) - gpuwrite : an3
assign gpuwrite_obuf = gpuadd & writet & d7a;

// ABUS.NET (443) - wr : iv
assign writet = ~readt;

// ABUS.NET (447) - lbufb : iv
assign lbufb = ~lbufa;

// ABUS.NET (448) - lba0 : nd6
assign lba0 = ~(fintdev_obuf & ab_11 & alb_12 & alb_13 & alb_14 & notourack);

// ABUS.NET (449) - lba1 : nd8
assign lba1 = ~(fintdev_obuf & ab_11 & ab_12 & alb_13 & alb_14 & lbufb & notourack & vcc);

// ABUS.NET (450) - lbad : nd2
assign lbad = ~(lba0 & lba1);

// ABUS.NET (451) - lbb0 : nd6
assign lbb0 = ~(fintdev_obuf & alb_11 & ab_12 & alb_13 & alb_14 & notourack);

// ABUS.NET (452) - lbb1 : nd8
assign lbb1 = ~(fintdev_obuf & ab_11 & ab_12 & alb_13 & alb_14 & lbufa & notourack & vcc);

// ABUS.NET (453) - lbbd : nd2
assign lbbd = ~(lbb0 & lbb1);

// ABUS.NET (454) - clutd : an8
assign clutd = fintdev_obuf & ab_10 & alb_11 & alb_12 & alb_13 & alb_14 & alb_15 & notourack;

// ABUS.NET (455) - lb0 : nd6
assign lb0 = ~(fintdev_obuf & ab_11 & alb_13 & alb_14 & notourack & vcc);

// ABUS.NET (456) - lb1 : nd6
assign lb1 = ~(fintdev_obuf & ab_12 & alb_13 & alb_14 & notourack & vcc);

// ABUS.NET (457) - lbd : nd2
assign lbd = ~(lb0 & lb1);

// ABUS.NET (459) - lbat : mx2
mx2 lbat_inst
(
	.z(lbat), // OUT
	.a0(lba_obuf), // IN
	.a1(lbad), // IN
	.s(ack)  // IN
);

// ABUS.NET (460) - lbai : fd2qp
fd2q lbai_inst
(
	.q(lba_obuf), // OUT
	.d(lbat), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ABUS.NET (462) - lbbt : mx2
mx2 lbbt_inst
(
	.z(lbbt), // OUT
	.a0(lbb_obuf), // IN
	.a1(lbbd), // IN
	.s(ack)  // IN
);

// ABUS.NET (463) - lbbi : fd2qp
fd2q lbbi_inst
(
	.q(lbb_obuf), // OUT
	.d(lbbt), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ABUS.NET (465) - lbt : mx2h
mx2 lbt_inst
(
	.z(lbt_obuf), // OUT
	.a0(lb), // IN
	.a1(lbd), // IN
	.s(ack)  // IN
);

// ABUS.NET (466) - lbi : fd2qp
fd2q lbi_inst
(
	.q(lb), // OUT
	.d(lbt_obuf), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// ABUS.NET (468) - clutt : mx2h
mx2 clutt_inst
(
	.z(clutt_obuf), // OUT
	.a0(clut_obuf), // IN
	.a1(clutd), // IN
	.s(ack)  // IN
);

// ABUS.NET (469) - cluti : fd2qp
fd2q cluti_inst
(
	.q(clut_obuf), // OUT
	.d(clutt_obuf), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);
endmodule
