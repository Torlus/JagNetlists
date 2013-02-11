`include "defs.v"

module srcdgen
(
	output locdent,
	output[0:31] locsrc;
	input[0:31] program_count;
	input srcdat_0,
	input srcdat_1,
	input srcdat_2,
	input srcdat_3,
	input[0:4] srcop
);
wire [0:4] botsrc;
wire [0:4] const;
wire [0:4] opshft;
wire [0:31] gensrc;
wire [0:31] mask;
wire srcdat_n_0;
wire srcdat_n_1;
wire srcdat_n_2;
wire srcdat_n_3;
wire srcop_n_4;
wire zero;
wire type5;
wire oneselt;
wire onesel;
wire topsrct;
wire topsrc;
wire srcb7;
wire opzero;
wire type2;
wire srcb6;
wire type8;
wire srcb5;
wire type6;
wire constsel;
wire maskt_n_0;
wire maskt_n_1;
wire maskt_n_2;
wire maskt_n_3;
wire maskt_n_4;
wire maskt_n_5;
wire maskt_n_6;
wire maskt_n_7;
wire maskt_n_8;
wire maskt_n_9;
wire maskt_n_10;
wire maskt_n_11;
wire maskt_n_12;
wire maskt_n_13;
wire maskt_n_14;
wire maskt_n_15;
wire maskt_n_16;
wire maskt_n_17;
wire maskt_n_18;
wire maskt_n_19;
wire maskt_n_20;
wire maskt_n_21;
wire maskt_n_22;
wire maskt_n_23;
wire maskt_n_24;
wire maskt_n_25;
wire maskt_n_26;
wire maskt_n_27;
wire maskt_n_28;
wire maskt_n_29;
wire maskt_n_30;
wire maskt_n_31;
wire type9;
wire mask_0;
wire mask_1;
wire mask_2;
wire mask_3;
wire mask_4;
wire mask_5;
wire mask_6;
wire mask_7;
wire mask_8;
wire mask_9;
wire mask_10;
wire mask_11;
wire mask_12;
wire mask_13;
wire mask_14;
wire mask_15;
wire mask_16;
wire mask_17;
wire mask_18;
wire mask_19;
wire mask_20;
wire mask_21;
wire mask_22;
wire mask_23;
wire mask_24;
wire mask_25;
wire mask_26;
wire mask_27;
wire mask_28;
wire mask_29;
wire mask_30;
wire mask_31;
wire type7;
wire type10;
wire sdsel_0;
wire sdsel_1;

// INS_EXEC.NET (646) - srcdat\[0-3] : iv
assign srcdat_n_0 = ~srcdat_0;
assign srcdat_n_1 = ~srcdat_1;
assign srcdat_n_2 = ~srcdat_2;
assign srcdat_n_3 = ~srcdat_3;

// INS_EXEC.NET (647) - srcop\[4] : iv
assign srcop_n_4 = ~srcop[4];

// INS_EXEC.NET (648) - zero : tie0
assign zero = 1'b0;

// INS_EXEC.NET (652) - locdent : or4u
assign locdent = srcdat_0 | srcdat_1 | srcdat_2 | srcdat_3;

// INS_EXEC.NET (664) - type5 : an4
assign type5 = srcdat_0 & srcdat_n_1 & srcdat_2 & srcdat_n_3;

// INS_EXEC.NET (669) - oneselt : eo
assign oneselt = srcdat_0 ^ srcdat_2;

// INS_EXEC.NET (670) - onesel : an3
assign onesel = oneselt & srcdat_1 & srcdat_n_3;

// INS_EXEC.NET (671) - topsrct : aor1
assign topsrct = (srcop[4] & type5) | onesel;

// INS_EXEC.NET (672) - topsrc : nivh
assign topsrc = topsrct;

// INS_EXEC.NET (677) - srcb7 : mx2
mx2 srcb7_inst
(
	.z(srcb7), // OUT
	.a0(topsrc), // IN
	.a1(opzero), // IN
	.s(type2)  // IN
);

// INS_EXEC.NET (682) - type2 : an4m
assign type2 = srcdat_n_0 & srcdat_1 & srcdat_n_2 & srcdat_n_3;

// INS_EXEC.NET (684) - srcb6 : mx2
mx2 srcb6_inst
(
	.z(srcb6), // OUT
	.a0(topsrc), // IN
	.a1(srcop[4]), // IN
	.s(type2)  // IN
);

// INS_EXEC.NET (689) - type8 : an4
assign type8 = srcdat_n_0 & srcdat_n_1 & srcdat_n_2 & srcdat_3;

// INS_EXEC.NET (690) - opzero : nr5
nr5 opzero_inst
(
	.z(opzero), // IO
	.a(srcop[0]), // IN
	.b(srcop[1]), // IN
	.c(srcop[2]), // IN
	.d(srcop[3]), // IN
	.e(srcop[4])  // IN
);

// INS_EXEC.NET (691) - srcb5 : mx4
mx4 srcb5_inst
(
	.z(srcb5), // OUT
	.a0(topsrc), // IN
	.a1(opzero), // IN
	.a2(srcop[3]), // IN
	.a3(zero), // IN
	.s0(type8), // IN
	.s1(type2)  // IN
);

// INS_EXEC.NET (697) - type6 : an4
assign type6 = srcdat_n_0 & srcdat_1 & srcdat_2 & srcdat_n_3;

// INS_EXEC.NET (702) - constsel : an3p
assign constsel = srcdat_n_0 & srcdat_2 & srcdat_n_3;

// INS_EXEC.NET (705) - const : join
assign const[0] = type6;
assign const[1] = type6;
assign const[2] = type6;
assign const[3] = type6;
assign const[4] = type6;

// INS_EXEC.NET (707) - opshft : join
assign opshft[0] = zero;
assign opshft[1] = zero;
assign opshft[2] = srcop[0];
assign opshft[3] = srcop[1];
assign opshft[4] = srcop[2];

// INS_EXEC.NET (708) - botsrc : mx4
mx4 botsrc_inst_0
(
	.z(botsrc[0]), // OUT
	.a0(srcop[0]), // IN
	.a1(const[0]), // IN
	.a2(opshft[0]), // IN
	.a3(opshft[0]), // IN
	.s0(constsel), // IN
	.s1(type2)  // IN
);
mx4 botsrc_inst_1
(
	.z(botsrc[1]), // OUT
	.a0(srcop[1]), // IN
	.a1(const[1]), // IN
	.a2(opshft[1]), // IN
	.a3(opshft[1]), // IN
	.s0(constsel), // IN
	.s1(type2)  // IN
);
mx4 botsrc_inst_2
(
	.z(botsrc[2]), // OUT
	.a0(srcop[2]), // IN
	.a1(const[2]), // IN
	.a2(opshft[2]), // IN
	.a3(opshft[2]), // IN
	.s0(constsel), // IN
	.s1(type2)  // IN
);
mx4 botsrc_inst_3
(
	.z(botsrc[3]), // OUT
	.a0(srcop[3]), // IN
	.a1(const[3]), // IN
	.a2(opshft[3]), // IN
	.a3(opshft[3]), // IN
	.s0(constsel), // IN
	.s1(type2)  // IN
);
mx4 botsrc_inst_4
(
	.z(botsrc[4]), // OUT
	.a0(srcop[4]), // IN
	.a1(const[4]), // IN
	.a2(opshft[4]), // IN
	.a3(opshft[4]), // IN
	.s0(constsel), // IN
	.s1(type2)  // IN
);

// INS_EXEC.NET (713) - gensrc : join
assign gensrc[0] = botsrc[0];
assign gensrc[1] = botsrc[1];
assign gensrc[2] = botsrc[2];
assign gensrc[3] = botsrc[3];
assign gensrc[4] = botsrc[4];
assign gensrc[5] = srcb5;
assign gensrc[6] = srcb6;
assign gensrc[7] = srcb7;
assign gensrc[8] = topsrc;
assign gensrc[9] = topsrc;
assign gensrc[10] = topsrc;
assign gensrc[11] = topsrc;
assign gensrc[12] = topsrc;
assign gensrc[13] = topsrc;
assign gensrc[14] = topsrc;
assign gensrc[15] = topsrc;
assign gensrc[16] = topsrc;
assign gensrc[17] = topsrc;
assign gensrc[18] = topsrc;
assign gensrc[19] = topsrc;
assign gensrc[20] = topsrc;
assign gensrc[21] = topsrc;
assign gensrc[22] = topsrc;
assign gensrc[23] = topsrc;
assign gensrc[24] = topsrc;
assign gensrc[25] = topsrc;
assign gensrc[26] = topsrc;
assign gensrc[27] = topsrc;
assign gensrc[28] = topsrc;
assign gensrc[29] = topsrc;
assign gensrc[30] = topsrc;
assign gensrc[31] = topsrc;

// INS_EXEC.NET (722) - masklo : d416g2l
d416g2l masklo_inst
(
	.z0(maskt_n_0), // OUT
	.z1(maskt_n_1), // OUT
	.z2(maskt_n_2), // OUT
	.z3(maskt_n_3), // OUT
	.z4(maskt_n_4), // OUT
	.z5(maskt_n_5), // OUT
	.z6(maskt_n_6), // OUT
	.z7(maskt_n_7), // OUT
	.z8(maskt_n_8), // OUT
	.z9(maskt_n_9), // OUT
	.z10(maskt_n_10), // OUT
	.z11(maskt_n_11), // OUT
	.z12(maskt_n_12), // OUT
	.z13(maskt_n_13), // OUT
	.z14(maskt_n_14), // OUT
	.z15(maskt_n_15), // OUT
	.a0(srcop[0]), // IN
	.a1(srcop[1]), // IN
	.a2(srcop[2]), // IN
	.a3(srcop[3]), // IN
	.g1n(srcop[4]), // IN
	.g2n(zero)  // IN
);

// INS_EXEC.NET (724) - maskhi : d416g2l
d416g2l maskhi_inst
(
	.z0(maskt_n_16), // OUT
	.z1(maskt_n_17), // OUT
	.z2(maskt_n_18), // OUT
	.z3(maskt_n_19), // OUT
	.z4(maskt_n_20), // OUT
	.z5(maskt_n_21), // OUT
	.z6(maskt_n_22), // OUT
	.z7(maskt_n_23), // OUT
	.z8(maskt_n_24), // OUT
	.z9(maskt_n_25), // OUT
	.z10(maskt_n_26), // OUT
	.z11(maskt_n_27), // OUT
	.z12(maskt_n_28), // OUT
	.z13(maskt_n_29), // OUT
	.z14(maskt_n_30), // OUT
	.z15(maskt_n_31), // OUT
	.a0(srcop[0]), // IN
	.a1(srcop[1]), // IN
	.a2(srcop[2]), // IN
	.a3(srcop[3]), // IN
	.g1n(srcop_n_4), // IN
	.g2n(zero)  // IN
);

// INS_EXEC.NET (726) - type9 : an4u
assign type9 = srcdat_0 & srcdat_n_1 & srcdat_n_2 & srcdat_3;

// INS_EXEC.NET (728) - mask[0-31] : eo
assign mask_0 = maskt_n_0 ^ type9;
assign mask_1 = maskt_n_1 ^ type9;
assign mask_2 = maskt_n_2 ^ type9;
assign mask_3 = maskt_n_3 ^ type9;
assign mask_4 = maskt_n_4 ^ type9;
assign mask_5 = maskt_n_5 ^ type9;
assign mask_6 = maskt_n_6 ^ type9;
assign mask_7 = maskt_n_7 ^ type9;
assign mask_8 = maskt_n_8 ^ type9;
assign mask_9 = maskt_n_9 ^ type9;
assign mask_10 = maskt_n_10 ^ type9;
assign mask_11 = maskt_n_11 ^ type9;
assign mask_12 = maskt_n_12 ^ type9;
assign mask_13 = maskt_n_13 ^ type9;
assign mask_14 = maskt_n_14 ^ type9;
assign mask_15 = maskt_n_15 ^ type9;
assign mask_16 = maskt_n_16 ^ type9;
assign mask_17 = maskt_n_17 ^ type9;
assign mask_18 = maskt_n_18 ^ type9;
assign mask_19 = maskt_n_19 ^ type9;
assign mask_20 = maskt_n_20 ^ type9;
assign mask_21 = maskt_n_21 ^ type9;
assign mask_22 = maskt_n_22 ^ type9;
assign mask_23 = maskt_n_23 ^ type9;
assign mask_24 = maskt_n_24 ^ type9;
assign mask_25 = maskt_n_25 ^ type9;
assign mask_26 = maskt_n_26 ^ type9;
assign mask_27 = maskt_n_27 ^ type9;
assign mask_28 = maskt_n_28 ^ type9;
assign mask_29 = maskt_n_29 ^ type9;
assign mask_30 = maskt_n_30 ^ type9;
assign mask_31 = maskt_n_31 ^ type9;

// INS_EXEC.NET (729) - mask : join
assign mask[0] = mask_0;
assign mask[1] = mask_1;
assign mask[2] = mask_2;
assign mask[3] = mask_3;
assign mask[4] = mask_4;
assign mask[5] = mask_5;
assign mask[6] = mask_6;
assign mask[7] = mask_7;
assign mask[8] = mask_8;
assign mask[9] = mask_9;
assign mask[10] = mask_10;
assign mask[11] = mask_11;
assign mask[12] = mask_12;
assign mask[13] = mask_13;
assign mask[14] = mask_14;
assign mask[15] = mask_15;
assign mask[16] = mask_16;
assign mask[17] = mask_17;
assign mask[18] = mask_18;
assign mask[19] = mask_19;
assign mask[20] = mask_20;
assign mask[21] = mask_21;
assign mask[22] = mask_22;
assign mask[23] = mask_23;
assign mask[24] = mask_24;
assign mask[25] = mask_25;
assign mask[26] = mask_26;
assign mask[27] = mask_27;
assign mask[28] = mask_28;
assign mask[29] = mask_29;
assign mask[30] = mask_30;
assign mask[31] = mask_31;

// INS_EXEC.NET (740) - type7 : an4
assign type7 = srcdat_0 & srcdat_1 & srcdat_2 & srcdat_n_3;

// INS_EXEC.NET (741) - type10 : an4
assign type10 = srcdat_n_0 & srcdat_1 & srcdat_n_2 & srcdat_3;

// INS_EXEC.NET (743) - sdsel0 : or2u
assign sdsel_0 = type9 | type10;

// INS_EXEC.NET (744) - sdsel1 : nivu
assign sdsel_1 = type7;

// INS_EXEC.NET (746) - locsrc : mx4
mx4 locsrc_inst_0
(
	.z(locsrc[0]), // OUT
	.a0(gensrc[0]), // IN
	.a1(mask[0]), // IN
	.a2(program_count[0]), // IN
	.a3(program_count[0]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_1
(
	.z(locsrc[1]), // OUT
	.a0(gensrc[1]), // IN
	.a1(mask[1]), // IN
	.a2(program_count[1]), // IN
	.a3(program_count[1]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_2
(
	.z(locsrc[2]), // OUT
	.a0(gensrc[2]), // IN
	.a1(mask[2]), // IN
	.a2(program_count[2]), // IN
	.a3(program_count[2]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_3
(
	.z(locsrc[3]), // OUT
	.a0(gensrc[3]), // IN
	.a1(mask[3]), // IN
	.a2(program_count[3]), // IN
	.a3(program_count[3]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_4
(
	.z(locsrc[4]), // OUT
	.a0(gensrc[4]), // IN
	.a1(mask[4]), // IN
	.a2(program_count[4]), // IN
	.a3(program_count[4]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_5
(
	.z(locsrc[5]), // OUT
	.a0(gensrc[5]), // IN
	.a1(mask[5]), // IN
	.a2(program_count[5]), // IN
	.a3(program_count[5]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_6
(
	.z(locsrc[6]), // OUT
	.a0(gensrc[6]), // IN
	.a1(mask[6]), // IN
	.a2(program_count[6]), // IN
	.a3(program_count[6]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_7
(
	.z(locsrc[7]), // OUT
	.a0(gensrc[7]), // IN
	.a1(mask[7]), // IN
	.a2(program_count[7]), // IN
	.a3(program_count[7]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_8
(
	.z(locsrc[8]), // OUT
	.a0(gensrc[8]), // IN
	.a1(mask[8]), // IN
	.a2(program_count[8]), // IN
	.a3(program_count[8]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_9
(
	.z(locsrc[9]), // OUT
	.a0(gensrc[9]), // IN
	.a1(mask[9]), // IN
	.a2(program_count[9]), // IN
	.a3(program_count[9]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_10
(
	.z(locsrc[10]), // OUT
	.a0(gensrc[10]), // IN
	.a1(mask[10]), // IN
	.a2(program_count[10]), // IN
	.a3(program_count[10]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_11
(
	.z(locsrc[11]), // OUT
	.a0(gensrc[11]), // IN
	.a1(mask[11]), // IN
	.a2(program_count[11]), // IN
	.a3(program_count[11]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_12
(
	.z(locsrc[12]), // OUT
	.a0(gensrc[12]), // IN
	.a1(mask[12]), // IN
	.a2(program_count[12]), // IN
	.a3(program_count[12]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_13
(
	.z(locsrc[13]), // OUT
	.a0(gensrc[13]), // IN
	.a1(mask[13]), // IN
	.a2(program_count[13]), // IN
	.a3(program_count[13]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_14
(
	.z(locsrc[14]), // OUT
	.a0(gensrc[14]), // IN
	.a1(mask[14]), // IN
	.a2(program_count[14]), // IN
	.a3(program_count[14]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_15
(
	.z(locsrc[15]), // OUT
	.a0(gensrc[15]), // IN
	.a1(mask[15]), // IN
	.a2(program_count[15]), // IN
	.a3(program_count[15]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_16
(
	.z(locsrc[16]), // OUT
	.a0(gensrc[16]), // IN
	.a1(mask[16]), // IN
	.a2(program_count[16]), // IN
	.a3(program_count[16]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_17
(
	.z(locsrc[17]), // OUT
	.a0(gensrc[17]), // IN
	.a1(mask[17]), // IN
	.a2(program_count[17]), // IN
	.a3(program_count[17]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_18
(
	.z(locsrc[18]), // OUT
	.a0(gensrc[18]), // IN
	.a1(mask[18]), // IN
	.a2(program_count[18]), // IN
	.a3(program_count[18]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_19
(
	.z(locsrc[19]), // OUT
	.a0(gensrc[19]), // IN
	.a1(mask[19]), // IN
	.a2(program_count[19]), // IN
	.a3(program_count[19]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_20
(
	.z(locsrc[20]), // OUT
	.a0(gensrc[20]), // IN
	.a1(mask[20]), // IN
	.a2(program_count[20]), // IN
	.a3(program_count[20]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_21
(
	.z(locsrc[21]), // OUT
	.a0(gensrc[21]), // IN
	.a1(mask[21]), // IN
	.a2(program_count[21]), // IN
	.a3(program_count[21]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_22
(
	.z(locsrc[22]), // OUT
	.a0(gensrc[22]), // IN
	.a1(mask[22]), // IN
	.a2(program_count[22]), // IN
	.a3(program_count[22]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_23
(
	.z(locsrc[23]), // OUT
	.a0(gensrc[23]), // IN
	.a1(mask[23]), // IN
	.a2(program_count[23]), // IN
	.a3(program_count[23]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_24
(
	.z(locsrc[24]), // OUT
	.a0(gensrc[24]), // IN
	.a1(mask[24]), // IN
	.a2(program_count[24]), // IN
	.a3(program_count[24]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_25
(
	.z(locsrc[25]), // OUT
	.a0(gensrc[25]), // IN
	.a1(mask[25]), // IN
	.a2(program_count[25]), // IN
	.a3(program_count[25]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_26
(
	.z(locsrc[26]), // OUT
	.a0(gensrc[26]), // IN
	.a1(mask[26]), // IN
	.a2(program_count[26]), // IN
	.a3(program_count[26]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_27
(
	.z(locsrc[27]), // OUT
	.a0(gensrc[27]), // IN
	.a1(mask[27]), // IN
	.a2(program_count[27]), // IN
	.a3(program_count[27]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_28
(
	.z(locsrc[28]), // OUT
	.a0(gensrc[28]), // IN
	.a1(mask[28]), // IN
	.a2(program_count[28]), // IN
	.a3(program_count[28]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_29
(
	.z(locsrc[29]), // OUT
	.a0(gensrc[29]), // IN
	.a1(mask[29]), // IN
	.a2(program_count[29]), // IN
	.a3(program_count[29]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_30
(
	.z(locsrc[30]), // OUT
	.a0(gensrc[30]), // IN
	.a1(mask[30]), // IN
	.a2(program_count[30]), // IN
	.a3(program_count[30]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
mx4 locsrc_inst_31
(
	.z(locsrc[31]), // OUT
	.a0(gensrc[31]), // IN
	.a1(mask[31]), // IN
	.a2(program_count[31]), // IN
	.a3(program_count[31]), // IN
	.s0(sdsel_0), // IN
	.s1(sdsel_1)  // IN
);
endmodule
