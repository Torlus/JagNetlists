`include "defs.v"

module data_mux
(
	inout wdata_0,
	inout wdata_1,
	inout wdata_2,
	inout wdata_3,
	inout wdata_4,
	inout wdata_5,
	inout wdata_6,
	inout wdata_7,
	inout wdata_8,
	inout wdata_9,
	inout wdata_10,
	inout wdata_11,
	inout wdata_12,
	inout wdata_13,
	inout wdata_14,
	inout wdata_15,
	inout wdata_16,
	inout wdata_17,
	inout wdata_18,
	inout wdata_19,
	inout wdata_20,
	inout wdata_21,
	inout wdata_22,
	inout wdata_23,
	inout wdata_24,
	inout wdata_25,
	inout wdata_26,
	inout wdata_27,
	inout wdata_28,
	inout wdata_29,
	inout wdata_30,
	inout wdata_31,
	inout wdata_32,
	inout wdata_33,
	inout wdata_34,
	inout wdata_35,
	inout wdata_36,
	inout wdata_37,
	inout wdata_38,
	inout wdata_39,
	inout wdata_40,
	inout wdata_41,
	inout wdata_42,
	inout wdata_43,
	inout wdata_44,
	inout wdata_45,
	inout wdata_46,
	inout wdata_47,
	inout wdata_48,
	inout wdata_49,
	inout wdata_50,
	inout wdata_51,
	inout wdata_52,
	inout wdata_53,
	inout wdata_54,
	inout wdata_55,
	inout wdata_56,
	inout wdata_57,
	inout wdata_58,
	inout wdata_59,
	inout wdata_60,
	inout wdata_61,
	inout wdata_62,
	inout wdata_63,
	input[0:15] addq_0;
	input[0:15] addq_1;
	input[0:15] addq_2;
	input[0:15] addq_3;
	input big_pix,
	input[0:31] dstdlo;
	input[0:31] dstdhi;
	input[0:31] dstzlo;
	input[0:31] dstzhi;
	input data_sel_0,
	input data_sel_1,
	input data_ena,
	input dstart_0,
	input dstart_1,
	input dstart_2,
	input dstart_3,
	input dstart_4,
	input dstart_5,
	input dend_0,
	input dend_1,
	input dend_2,
	input dend_3,
	input dend_4,
	input dend_5,
	input dbinh_n_0,
	input dbinh_n_1,
	input dbinh_n_2,
	input dbinh_n_3,
	input dbinh_n_4,
	input dbinh_n_5,
	input dbinh_n_6,
	input dbinh_n_7,
	input[0:31] lfu_0;
	input[0:31] lfu_1;
	input[0:31] patd_0;
	input[0:31] patd_1;
	input phrase_mode,
	input[0:31] srczlo;
	input[0:31] srczhi
);
wire [0:31] addql_0;
wire [0:31] addql_1;
wire [0:31] ddatlo;
wire [0:31] ddathi;
wire [0:31] zero32;
wire phrase_mode_n;
wire zero;
wire edis_n;
wire e_coarse_n_0;
wire e_coarse_n_1;
wire e_coarse_n_2;
wire e_coarse_n_3;
wire e_coarse_n_4;
wire e_coarse_n_5;
wire e_coarse_n_6;
wire e_coarse_n_7;
wire e_coarse_0;
wire unused_0;
wire e_fine_n_1;
wire e_fine_n_2;
wire e_fine_n_3;
wire e_fine_n_4;
wire e_fine_n_5;
wire e_fine_n_6;
wire e_fine_n_7;
wire s_coarse_0;
wire s_coarse_1;
wire s_coarse_2;
wire s_coarse_3;
wire s_coarse_4;
wire s_coarse_5;
wire s_coarse_6;
wire s_coarse_7;
wire sfen_n;
wire s_fine_0;
wire s_fine_1;
wire s_fine_2;
wire s_fine_3;
wire s_fine_4;
wire s_fine_5;
wire s_fine_6;
wire s_fine_7;
wire maskt_0;
wire maskt_1;
wire maskt_2;
wire maskt_3;
wire maskt_4;
wire maskt_5;
wire maskt_6;
wire maskt_7;
wire masktla;
wire maskt_8;
wire maskt_9;
wire maskt_10;
wire maskt_11;
wire maskt_12;
wire maskt_13;
wire maskt_14;
wire mir_bit;
wire mir_byte;
wire masktb_14;
wire masku_0;
wire masku_1;
wire masku_2;
wire masku_3;
wire masku_4;
wire masku_5;
wire masku_6;
wire masku_7;
wire masku_8;
wire masku_9;
wire masku_10;
wire masku_11;
wire masku_12;
wire masku_13;
wire masku_14;
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
wire dsel0b_0;
wire dsel0b_1;
wire dsel1b_0;
wire dsel1b_1;
wire zed_sel;
wire zed_selb_0;
wire zed_selb_1;
wire dat_0;
wire dat_1;
wire dat_2;
wire dat_3;
wire dat_4;
wire dat_5;
wire dat_6;
wire dat_7;
wire dat_8;
wire dat_9;
wire dat_10;
wire dat_11;
wire dat_12;
wire dat_13;
wire dat_14;
wire dat_15;
wire dat_16;
wire dat_17;
wire dat_18;
wire dat_19;
wire dat_20;
wire dat_21;
wire dat_22;
wire dat_23;
wire dat_24;
wire dat_25;
wire dat_26;
wire dat_27;
wire dat_28;
wire dat_29;
wire dat_30;
wire dat_31;
wire dat_32;
wire dat_33;
wire dat_34;
wire dat_35;
wire dat_36;
wire dat_37;
wire dat_38;
wire dat_39;
wire dat_40;
wire dat_41;
wire dat_42;
wire dat_43;
wire dat_44;
wire dat_45;
wire dat_46;
wire dat_47;
wire dat_48;
wire dat_49;
wire dat_50;
wire dat_51;
wire dat_52;
wire dat_53;
wire dat_54;
wire dat_55;
wire dat_56;
wire dat_57;
wire dat_58;
wire dat_59;
wire dat_60;
wire dat_61;
wire dat_62;
wire dat_63;
wire data_enab_0;
wire data_enab_1;

// DATAMUX.NET (192) - phrase_mode\ : iv
assign phrase_mode_n = ~phrase_mode;

// DATAMUX.NET (193) - zero : tie0
assign zero = 1'b0;

// DATAMUX.NET (194) - zero32 : join
assign zero32[0] = zero;
assign zero32[1] = zero;
assign zero32[2] = zero;
assign zero32[3] = zero;
assign zero32[4] = zero;
assign zero32[5] = zero;
assign zero32[6] = zero;
assign zero32[7] = zero;
assign zero32[8] = zero;
assign zero32[9] = zero;
assign zero32[10] = zero;
assign zero32[11] = zero;
assign zero32[12] = zero;
assign zero32[13] = zero;
assign zero32[14] = zero;
assign zero32[15] = zero;
assign zero32[16] = zero;
assign zero32[17] = zero;
assign zero32[18] = zero;
assign zero32[19] = zero;
assign zero32[20] = zero;
assign zero32[21] = zero;
assign zero32[22] = zero;
assign zero32[23] = zero;
assign zero32[24] = zero;
assign zero32[25] = zero;
assign zero32[26] = zero;
assign zero32[27] = zero;
assign zero32[28] = zero;
assign zero32[29] = zero;
assign zero32[30] = zero;
assign zero32[31] = zero;

// DATAMUX.NET (202) - edis : or6
assign edis_n = dend_0 | dend_1 | dend_2 | dend_3 | dend_4 | dend_5;

// DATAMUX.NET (203) - ecoarse : decl38e
decl38e ecoarse_inst
(
	.q_0(e_coarse_n_0), // OUT
	.q_1(e_coarse_n_1), // OUT
	.q_2(e_coarse_n_2), // OUT
	.q_3(e_coarse_n_3), // OUT
	.q_4(e_coarse_n_4), // OUT
	.q_5(e_coarse_n_5), // OUT
	.q_6(e_coarse_n_6), // OUT
	.q_7(e_coarse_n_7), // OUT
	.a(dend_3), // IN
	.b(dend_4), // IN
	.c(dend_5), // IN
	.en(edis_n)  // IN
);

// DATAMUX.NET (204) - e_coarse[0] : iv
assign e_coarse_0 = ~e_coarse_n_0;

// DATAMUX.NET (205) - efine : decl38e
decl38e efine_inst
(
	.q_0(unused_0), // OUT
	.q_1(e_fine_n_1), // OUT
	.q_2(e_fine_n_2), // OUT
	.q_3(e_fine_n_3), // OUT
	.q_4(e_fine_n_4), // OUT
	.q_5(e_fine_n_5), // OUT
	.q_6(e_fine_n_6), // OUT
	.q_7(e_fine_n_7), // OUT
	.a(dend_0), // IN
	.b(dend_1), // IN
	.c(dend_2), // IN
	.en(e_coarse_0)  // IN
);

// DATAMUX.NET (208) - scoarse : dech38
dech38 scoarse_inst
(
	.q_0(s_coarse_0), // OUT
	.q_1(s_coarse_1), // OUT
	.q_2(s_coarse_2), // OUT
	.q_3(s_coarse_3), // OUT
	.q_4(s_coarse_4), // OUT
	.q_5(s_coarse_5), // OUT
	.q_6(s_coarse_6), // OUT
	.q_7(s_coarse_7), // OUT
	.a(dstart_3), // IN
	.b(dstart_4), // IN
	.c(dstart_5)  // IN
);

// DATAMUX.NET (209) - sfen\ : iv
assign sfen_n = ~s_coarse_0;

// DATAMUX.NET (210) - sfine : dech38el
dech38el sfine_inst
(
	.q_0(s_fine_0), // OUT
	.q_1(s_fine_1), // OUT
	.q_2(s_fine_2), // OUT
	.q_3(s_fine_3), // OUT
	.q_4(s_fine_4), // OUT
	.q_5(s_fine_5), // OUT
	.q_6(s_fine_6), // OUT
	.q_7(s_fine_7), // OUT
	.a(dstart_0), // IN
	.b(dstart_1), // IN
	.c(dstart_2), // IN
	.en(sfen_n)  // IN
);

// DATAMUX.NET (212) - maskt[0] : niv
assign maskt_0 = s_fine_0;

// DATAMUX.NET (213) - maskt[1-7] : oan1p
assign maskt_1 = (maskt_0 | s_fine_1) & e_fine_n_1;
assign maskt_2 = (maskt_1 | s_fine_2) & e_fine_n_2;
assign maskt_3 = (maskt_2 | s_fine_3) & e_fine_n_3;
assign maskt_4 = (maskt_3 | s_fine_4) & e_fine_n_4;
assign maskt_5 = (maskt_4 | s_fine_5) & e_fine_n_5;
assign maskt_6 = (maskt_5 | s_fine_6) & e_fine_n_6;
assign maskt_7 = (maskt_6 | s_fine_7) & e_fine_n_7;

// DATAMUX.NET (218) - masktla : an2
assign masktla = s_coarse_0 & e_coarse_n_0;

// DATAMUX.NET (219) - maskt[8] : oan1p
assign maskt_8 = (masktla | s_coarse_1) & e_coarse_n_1;

// DATAMUX.NET (221) - maskt[9-14] : oan1p
assign maskt_9 = (maskt_8 | s_coarse_2) & e_coarse_n_2;
assign maskt_10 = (maskt_9 | s_coarse_3) & e_coarse_n_3;
assign maskt_11 = (maskt_10 | s_coarse_4) & e_coarse_n_4;
assign maskt_12 = (maskt_11 | s_coarse_5) & e_coarse_n_5;
assign maskt_13 = (maskt_12 | s_coarse_6) & e_coarse_n_6;
assign maskt_14 = (maskt_13 | s_coarse_7) & e_coarse_n_7;

// DATAMUX.NET (228) - mirror_bit : an2m
assign mir_bit = phrase_mode_n & big_pix;

// DATAMUX.NET (229) - mirror_byte : an2h
assign mir_byte = phrase_mode & big_pix;

// DATAMUX.NET (231) - masktb[14] : niv
assign masktb_14 = maskt_14;

// DATAMUX.NET (232) - masku[0] : mx4
mx4 masku_index_0_inst
(
	.z(masku_0), // OUT
	.a0(maskt_0), // IN
	.a1(maskt_7), // IN
	.a2(maskt_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (234) - masku[1] : mx4
mx4 masku_index_1_inst
(
	.z(masku_1), // OUT
	.a0(maskt_1), // IN
	.a1(maskt_6), // IN
	.a2(maskt_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (236) - masku[2] : mx4
mx4 masku_index_2_inst
(
	.z(masku_2), // OUT
	.a0(maskt_2), // IN
	.a1(maskt_5), // IN
	.a2(maskt_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (238) - masku[3] : mx4
mx4 masku_index_3_inst
(
	.z(masku_3), // OUT
	.a0(maskt_3), // IN
	.a1(maskt_4), // IN
	.a2(masktb_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (240) - masku[4] : mx4
mx4 masku_index_4_inst
(
	.z(masku_4), // OUT
	.a0(maskt_4), // IN
	.a1(maskt_3), // IN
	.a2(masktb_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (242) - masku[5] : mx4
mx4 masku_index_5_inst
(
	.z(masku_5), // OUT
	.a0(maskt_5), // IN
	.a1(maskt_2), // IN
	.a2(masktb_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (244) - masku[6] : mx4
mx4 masku_index_6_inst
(
	.z(masku_6), // OUT
	.a0(maskt_6), // IN
	.a1(maskt_1), // IN
	.a2(masktb_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (246) - masku[7] : mx4
mx4 masku_index_7_inst
(
	.z(masku_7), // OUT
	.a0(maskt_7), // IN
	.a1(maskt_0), // IN
	.a2(masktb_14), // IN
	.a3(zero), // IN
	.s0(mir_bit), // IN
	.s1(mir_byte)  // IN
);

// DATAMUX.NET (248) - masku[8] : mx2
mx2 masku_index_8_inst
(
	.z(masku_8), // OUT
	.a0(maskt_8), // IN
	.a1(maskt_13), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (249) - masku[9] : mx2
mx2 masku_index_9_inst
(
	.z(masku_9), // OUT
	.a0(maskt_9), // IN
	.a1(maskt_12), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (250) - masku[10] : mx2
mx2 masku_index_10_inst
(
	.z(masku_10), // OUT
	.a0(maskt_10), // IN
	.a1(maskt_11), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (251) - masku[11] : mx2
mx2 masku_index_11_inst
(
	.z(masku_11), // OUT
	.a0(maskt_11), // IN
	.a1(maskt_10), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (252) - masku[12] : mx2
mx2 masku_index_12_inst
(
	.z(masku_12), // OUT
	.a0(maskt_12), // IN
	.a1(maskt_9), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (253) - masku[13] : mx2
mx2 masku_index_13_inst
(
	.z(masku_13), // OUT
	.a0(maskt_13), // IN
	.a1(maskt_8), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (254) - masku[14] : mx2
mx2 masku_index_14_inst
(
	.z(masku_14), // OUT
	.a0(maskt_14), // IN
	.a1(maskt_0), // IN
	.s(mir_byte)  // IN
);

// DATAMUX.NET (259) - mask[0-7] : an2
assign mask_0 = masku_0 & dbinh_n_0;
assign mask_1 = masku_1 & dbinh_n_0;
assign mask_2 = masku_2 & dbinh_n_0;
assign mask_3 = masku_3 & dbinh_n_0;
assign mask_4 = masku_4 & dbinh_n_0;
assign mask_5 = masku_5 & dbinh_n_0;
assign mask_6 = masku_6 & dbinh_n_0;
assign mask_7 = masku_7 & dbinh_n_0;

// DATAMUX.NET (260) - mask[8-14] : an2h
assign mask_8 = masku_8 & dbinh_n_1;
assign mask_9 = masku_9 & dbinh_n_2;
assign mask_10 = masku_10 & dbinh_n_3;
assign mask_11 = masku_11 & dbinh_n_4;
assign mask_12 = masku_12 & dbinh_n_5;
assign mask_13 = masku_13 & dbinh_n_6;
assign mask_14 = masku_14 & dbinh_n_7;

// DATAMUX.NET (262) - addql[0] : join
assign addql_0[0] = addq_0[0];
assign addql_0[1] = addq_0[1];
assign addql_0[2] = addq_0[2];
assign addql_0[3] = addq_0[3];
assign addql_0[4] = addq_0[4];
assign addql_0[5] = addq_0[5];
assign addql_0[6] = addq_0[6];
assign addql_0[7] = addq_0[7];
assign addql_0[8] = addq_0[8];
assign addql_0[9] = addq_0[9];
assign addql_0[10] = addq_0[10];
assign addql_0[11] = addq_0[11];
assign addql_0[12] = addq_0[12];
assign addql_0[13] = addq_0[13];
assign addql_0[14] = addq_0[14];
assign addql_0[15] = addq_0[15];
assign addql_0[16] = addq_1[0];
assign addql_0[17] = addq_1[1];
assign addql_0[18] = addq_1[2];
assign addql_0[19] = addq_1[3];
assign addql_0[20] = addq_1[4];
assign addql_0[21] = addq_1[5];
assign addql_0[22] = addq_1[6];
assign addql_0[23] = addq_1[7];
assign addql_0[24] = addq_1[8];
assign addql_0[25] = addq_1[9];
assign addql_0[26] = addq_1[10];
assign addql_0[27] = addq_1[11];
assign addql_0[28] = addq_1[12];
assign addql_0[29] = addq_1[13];
assign addql_0[30] = addq_1[14];
assign addql_0[31] = addq_1[15];

// DATAMUX.NET (263) - addql[1] : join
assign addql_1[0] = addq_2[0];
assign addql_1[1] = addq_2[1];
assign addql_1[2] = addq_2[2];
assign addql_1[3] = addq_2[3];
assign addql_1[4] = addq_2[4];
assign addql_1[5] = addq_2[5];
assign addql_1[6] = addq_2[6];
assign addql_1[7] = addq_2[7];
assign addql_1[8] = addq_2[8];
assign addql_1[9] = addq_2[9];
assign addql_1[10] = addq_2[10];
assign addql_1[11] = addq_2[11];
assign addql_1[12] = addq_2[12];
assign addql_1[13] = addq_2[13];
assign addql_1[14] = addq_2[14];
assign addql_1[15] = addq_2[15];
assign addql_1[16] = addq_3[0];
assign addql_1[17] = addq_3[1];
assign addql_1[18] = addq_3[2];
assign addql_1[19] = addq_3[3];
assign addql_1[20] = addq_3[4];
assign addql_1[21] = addq_3[5];
assign addql_1[22] = addq_3[6];
assign addql_1[23] = addq_3[7];
assign addql_1[24] = addq_3[8];
assign addql_1[25] = addq_3[9];
assign addql_1[26] = addq_3[10];
assign addql_1[27] = addq_3[11];
assign addql_1[28] = addq_3[12];
assign addql_1[29] = addq_3[13];
assign addql_1[30] = addq_3[14];
assign addql_1[31] = addq_3[15];

// DATAMUX.NET (265) - dsel0b[0-1] : nivu
assign dsel0b_0 = data_sel_0;
assign dsel0b_1 = data_sel_0;

// DATAMUX.NET (266) - dsel1b[0-1] : nivu
assign dsel1b_0 = data_sel_1;
assign dsel1b_1 = data_sel_1;

// DATAMUX.NET (267) - ddatlo : mx4
mx4 ddatlo_inst_0
(
	.z(ddatlo[0]), // OUT
	.a0(patd_0[0]), // IN
	.a1(lfu_0[0]), // IN
	.a2(addql_0[0]), // IN
	.a3(zero32[0]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_1
(
	.z(ddatlo[1]), // OUT
	.a0(patd_0[1]), // IN
	.a1(lfu_0[1]), // IN
	.a2(addql_0[1]), // IN
	.a3(zero32[1]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_2
(
	.z(ddatlo[2]), // OUT
	.a0(patd_0[2]), // IN
	.a1(lfu_0[2]), // IN
	.a2(addql_0[2]), // IN
	.a3(zero32[2]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_3
(
	.z(ddatlo[3]), // OUT
	.a0(patd_0[3]), // IN
	.a1(lfu_0[3]), // IN
	.a2(addql_0[3]), // IN
	.a3(zero32[3]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_4
(
	.z(ddatlo[4]), // OUT
	.a0(patd_0[4]), // IN
	.a1(lfu_0[4]), // IN
	.a2(addql_0[4]), // IN
	.a3(zero32[4]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_5
(
	.z(ddatlo[5]), // OUT
	.a0(patd_0[5]), // IN
	.a1(lfu_0[5]), // IN
	.a2(addql_0[5]), // IN
	.a3(zero32[5]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_6
(
	.z(ddatlo[6]), // OUT
	.a0(patd_0[6]), // IN
	.a1(lfu_0[6]), // IN
	.a2(addql_0[6]), // IN
	.a3(zero32[6]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_7
(
	.z(ddatlo[7]), // OUT
	.a0(patd_0[7]), // IN
	.a1(lfu_0[7]), // IN
	.a2(addql_0[7]), // IN
	.a3(zero32[7]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_8
(
	.z(ddatlo[8]), // OUT
	.a0(patd_0[8]), // IN
	.a1(lfu_0[8]), // IN
	.a2(addql_0[8]), // IN
	.a3(zero32[8]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_9
(
	.z(ddatlo[9]), // OUT
	.a0(patd_0[9]), // IN
	.a1(lfu_0[9]), // IN
	.a2(addql_0[9]), // IN
	.a3(zero32[9]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_10
(
	.z(ddatlo[10]), // OUT
	.a0(patd_0[10]), // IN
	.a1(lfu_0[10]), // IN
	.a2(addql_0[10]), // IN
	.a3(zero32[10]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_11
(
	.z(ddatlo[11]), // OUT
	.a0(patd_0[11]), // IN
	.a1(lfu_0[11]), // IN
	.a2(addql_0[11]), // IN
	.a3(zero32[11]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_12
(
	.z(ddatlo[12]), // OUT
	.a0(patd_0[12]), // IN
	.a1(lfu_0[12]), // IN
	.a2(addql_0[12]), // IN
	.a3(zero32[12]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_13
(
	.z(ddatlo[13]), // OUT
	.a0(patd_0[13]), // IN
	.a1(lfu_0[13]), // IN
	.a2(addql_0[13]), // IN
	.a3(zero32[13]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_14
(
	.z(ddatlo[14]), // OUT
	.a0(patd_0[14]), // IN
	.a1(lfu_0[14]), // IN
	.a2(addql_0[14]), // IN
	.a3(zero32[14]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_15
(
	.z(ddatlo[15]), // OUT
	.a0(patd_0[15]), // IN
	.a1(lfu_0[15]), // IN
	.a2(addql_0[15]), // IN
	.a3(zero32[15]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_16
(
	.z(ddatlo[16]), // OUT
	.a0(patd_0[16]), // IN
	.a1(lfu_0[16]), // IN
	.a2(addql_0[16]), // IN
	.a3(zero32[16]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_17
(
	.z(ddatlo[17]), // OUT
	.a0(patd_0[17]), // IN
	.a1(lfu_0[17]), // IN
	.a2(addql_0[17]), // IN
	.a3(zero32[17]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_18
(
	.z(ddatlo[18]), // OUT
	.a0(patd_0[18]), // IN
	.a1(lfu_0[18]), // IN
	.a2(addql_0[18]), // IN
	.a3(zero32[18]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_19
(
	.z(ddatlo[19]), // OUT
	.a0(patd_0[19]), // IN
	.a1(lfu_0[19]), // IN
	.a2(addql_0[19]), // IN
	.a3(zero32[19]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_20
(
	.z(ddatlo[20]), // OUT
	.a0(patd_0[20]), // IN
	.a1(lfu_0[20]), // IN
	.a2(addql_0[20]), // IN
	.a3(zero32[20]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_21
(
	.z(ddatlo[21]), // OUT
	.a0(patd_0[21]), // IN
	.a1(lfu_0[21]), // IN
	.a2(addql_0[21]), // IN
	.a3(zero32[21]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_22
(
	.z(ddatlo[22]), // OUT
	.a0(patd_0[22]), // IN
	.a1(lfu_0[22]), // IN
	.a2(addql_0[22]), // IN
	.a3(zero32[22]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_23
(
	.z(ddatlo[23]), // OUT
	.a0(patd_0[23]), // IN
	.a1(lfu_0[23]), // IN
	.a2(addql_0[23]), // IN
	.a3(zero32[23]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_24
(
	.z(ddatlo[24]), // OUT
	.a0(patd_0[24]), // IN
	.a1(lfu_0[24]), // IN
	.a2(addql_0[24]), // IN
	.a3(zero32[24]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_25
(
	.z(ddatlo[25]), // OUT
	.a0(patd_0[25]), // IN
	.a1(lfu_0[25]), // IN
	.a2(addql_0[25]), // IN
	.a3(zero32[25]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_26
(
	.z(ddatlo[26]), // OUT
	.a0(patd_0[26]), // IN
	.a1(lfu_0[26]), // IN
	.a2(addql_0[26]), // IN
	.a3(zero32[26]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_27
(
	.z(ddatlo[27]), // OUT
	.a0(patd_0[27]), // IN
	.a1(lfu_0[27]), // IN
	.a2(addql_0[27]), // IN
	.a3(zero32[27]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_28
(
	.z(ddatlo[28]), // OUT
	.a0(patd_0[28]), // IN
	.a1(lfu_0[28]), // IN
	.a2(addql_0[28]), // IN
	.a3(zero32[28]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_29
(
	.z(ddatlo[29]), // OUT
	.a0(patd_0[29]), // IN
	.a1(lfu_0[29]), // IN
	.a2(addql_0[29]), // IN
	.a3(zero32[29]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_30
(
	.z(ddatlo[30]), // OUT
	.a0(patd_0[30]), // IN
	.a1(lfu_0[30]), // IN
	.a2(addql_0[30]), // IN
	.a3(zero32[30]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 ddatlo_inst_31
(
	.z(ddatlo[31]), // OUT
	.a0(patd_0[31]), // IN
	.a1(lfu_0[31]), // IN
	.a2(addql_0[31]), // IN
	.a3(zero32[31]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);

// DATAMUX.NET (269) - ddathi : mx4
mx4 ddathi_inst_0
(
	.z(ddathi[0]), // OUT
	.a0(patd_1[0]), // IN
	.a1(lfu_1[0]), // IN
	.a2(addql_1[0]), // IN
	.a3(zero32[0]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_1
(
	.z(ddathi[1]), // OUT
	.a0(patd_1[1]), // IN
	.a1(lfu_1[1]), // IN
	.a2(addql_1[1]), // IN
	.a3(zero32[1]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_2
(
	.z(ddathi[2]), // OUT
	.a0(patd_1[2]), // IN
	.a1(lfu_1[2]), // IN
	.a2(addql_1[2]), // IN
	.a3(zero32[2]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_3
(
	.z(ddathi[3]), // OUT
	.a0(patd_1[3]), // IN
	.a1(lfu_1[3]), // IN
	.a2(addql_1[3]), // IN
	.a3(zero32[3]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_4
(
	.z(ddathi[4]), // OUT
	.a0(patd_1[4]), // IN
	.a1(lfu_1[4]), // IN
	.a2(addql_1[4]), // IN
	.a3(zero32[4]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_5
(
	.z(ddathi[5]), // OUT
	.a0(patd_1[5]), // IN
	.a1(lfu_1[5]), // IN
	.a2(addql_1[5]), // IN
	.a3(zero32[5]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_6
(
	.z(ddathi[6]), // OUT
	.a0(patd_1[6]), // IN
	.a1(lfu_1[6]), // IN
	.a2(addql_1[6]), // IN
	.a3(zero32[6]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_7
(
	.z(ddathi[7]), // OUT
	.a0(patd_1[7]), // IN
	.a1(lfu_1[7]), // IN
	.a2(addql_1[7]), // IN
	.a3(zero32[7]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_8
(
	.z(ddathi[8]), // OUT
	.a0(patd_1[8]), // IN
	.a1(lfu_1[8]), // IN
	.a2(addql_1[8]), // IN
	.a3(zero32[8]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_9
(
	.z(ddathi[9]), // OUT
	.a0(patd_1[9]), // IN
	.a1(lfu_1[9]), // IN
	.a2(addql_1[9]), // IN
	.a3(zero32[9]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_10
(
	.z(ddathi[10]), // OUT
	.a0(patd_1[10]), // IN
	.a1(lfu_1[10]), // IN
	.a2(addql_1[10]), // IN
	.a3(zero32[10]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_11
(
	.z(ddathi[11]), // OUT
	.a0(patd_1[11]), // IN
	.a1(lfu_1[11]), // IN
	.a2(addql_1[11]), // IN
	.a3(zero32[11]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_12
(
	.z(ddathi[12]), // OUT
	.a0(patd_1[12]), // IN
	.a1(lfu_1[12]), // IN
	.a2(addql_1[12]), // IN
	.a3(zero32[12]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_13
(
	.z(ddathi[13]), // OUT
	.a0(patd_1[13]), // IN
	.a1(lfu_1[13]), // IN
	.a2(addql_1[13]), // IN
	.a3(zero32[13]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_14
(
	.z(ddathi[14]), // OUT
	.a0(patd_1[14]), // IN
	.a1(lfu_1[14]), // IN
	.a2(addql_1[14]), // IN
	.a3(zero32[14]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_15
(
	.z(ddathi[15]), // OUT
	.a0(patd_1[15]), // IN
	.a1(lfu_1[15]), // IN
	.a2(addql_1[15]), // IN
	.a3(zero32[15]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_16
(
	.z(ddathi[16]), // OUT
	.a0(patd_1[16]), // IN
	.a1(lfu_1[16]), // IN
	.a2(addql_1[16]), // IN
	.a3(zero32[16]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_17
(
	.z(ddathi[17]), // OUT
	.a0(patd_1[17]), // IN
	.a1(lfu_1[17]), // IN
	.a2(addql_1[17]), // IN
	.a3(zero32[17]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_18
(
	.z(ddathi[18]), // OUT
	.a0(patd_1[18]), // IN
	.a1(lfu_1[18]), // IN
	.a2(addql_1[18]), // IN
	.a3(zero32[18]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_19
(
	.z(ddathi[19]), // OUT
	.a0(patd_1[19]), // IN
	.a1(lfu_1[19]), // IN
	.a2(addql_1[19]), // IN
	.a3(zero32[19]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_20
(
	.z(ddathi[20]), // OUT
	.a0(patd_1[20]), // IN
	.a1(lfu_1[20]), // IN
	.a2(addql_1[20]), // IN
	.a3(zero32[20]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_21
(
	.z(ddathi[21]), // OUT
	.a0(patd_1[21]), // IN
	.a1(lfu_1[21]), // IN
	.a2(addql_1[21]), // IN
	.a3(zero32[21]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_22
(
	.z(ddathi[22]), // OUT
	.a0(patd_1[22]), // IN
	.a1(lfu_1[22]), // IN
	.a2(addql_1[22]), // IN
	.a3(zero32[22]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_23
(
	.z(ddathi[23]), // OUT
	.a0(patd_1[23]), // IN
	.a1(lfu_1[23]), // IN
	.a2(addql_1[23]), // IN
	.a3(zero32[23]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_24
(
	.z(ddathi[24]), // OUT
	.a0(patd_1[24]), // IN
	.a1(lfu_1[24]), // IN
	.a2(addql_1[24]), // IN
	.a3(zero32[24]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_25
(
	.z(ddathi[25]), // OUT
	.a0(patd_1[25]), // IN
	.a1(lfu_1[25]), // IN
	.a2(addql_1[25]), // IN
	.a3(zero32[25]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_26
(
	.z(ddathi[26]), // OUT
	.a0(patd_1[26]), // IN
	.a1(lfu_1[26]), // IN
	.a2(addql_1[26]), // IN
	.a3(zero32[26]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_27
(
	.z(ddathi[27]), // OUT
	.a0(patd_1[27]), // IN
	.a1(lfu_1[27]), // IN
	.a2(addql_1[27]), // IN
	.a3(zero32[27]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_28
(
	.z(ddathi[28]), // OUT
	.a0(patd_1[28]), // IN
	.a1(lfu_1[28]), // IN
	.a2(addql_1[28]), // IN
	.a3(zero32[28]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_29
(
	.z(ddathi[29]), // OUT
	.a0(patd_1[29]), // IN
	.a1(lfu_1[29]), // IN
	.a2(addql_1[29]), // IN
	.a3(zero32[29]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_30
(
	.z(ddathi[30]), // OUT
	.a0(patd_1[30]), // IN
	.a1(lfu_1[30]), // IN
	.a2(addql_1[30]), // IN
	.a3(zero32[30]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 ddathi_inst_31
(
	.z(ddathi[31]), // OUT
	.a0(patd_1[31]), // IN
	.a1(lfu_1[31]), // IN
	.a2(addql_1[31]), // IN
	.a3(zero32[31]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);

// DATAMUX.NET (272) - zed_sel : an2
assign zed_sel = data_sel_0 & data_sel_1;

// DATAMUX.NET (273) - zed_selb[0-1] : nivu
assign zed_selb_0 = zed_sel;
assign zed_selb_1 = zed_sel;

// DATAMUX.NET (275) - dat[0-7] : mx4
mx4 dat_from_0_to_7_inst_0
(
	.z(dat_0), // OUT
	.a0(dstdlo[0]), // IN
	.a1(ddatlo[0]), // IN
	.a2(dstzlo[0]), // IN
	.a3(srczlo[0]), // IN
	.s0(mask_0), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_1
(
	.z(dat_1), // OUT
	.a0(dstdlo[1]), // IN
	.a1(ddatlo[1]), // IN
	.a2(dstzlo[1]), // IN
	.a3(srczlo[1]), // IN
	.s0(mask_1), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_2
(
	.z(dat_2), // OUT
	.a0(dstdlo[2]), // IN
	.a1(ddatlo[2]), // IN
	.a2(dstzlo[2]), // IN
	.a3(srczlo[2]), // IN
	.s0(mask_2), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_3
(
	.z(dat_3), // OUT
	.a0(dstdlo[3]), // IN
	.a1(ddatlo[3]), // IN
	.a2(dstzlo[3]), // IN
	.a3(srczlo[3]), // IN
	.s0(mask_3), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_4
(
	.z(dat_4), // OUT
	.a0(dstdlo[4]), // IN
	.a1(ddatlo[4]), // IN
	.a2(dstzlo[4]), // IN
	.a3(srczlo[4]), // IN
	.s0(mask_4), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_5
(
	.z(dat_5), // OUT
	.a0(dstdlo[5]), // IN
	.a1(ddatlo[5]), // IN
	.a2(dstzlo[5]), // IN
	.a3(srczlo[5]), // IN
	.s0(mask_5), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_6
(
	.z(dat_6), // OUT
	.a0(dstdlo[6]), // IN
	.a1(ddatlo[6]), // IN
	.a2(dstzlo[6]), // IN
	.a3(srczlo[6]), // IN
	.s0(mask_6), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_0_to_7_inst_7
(
	.z(dat_7), // OUT
	.a0(dstdlo[7]), // IN
	.a1(ddatlo[7]), // IN
	.a2(dstzlo[7]), // IN
	.a3(srczlo[7]), // IN
	.s0(mask_7), // IN
	.s1(zed_selb_0)  // IN
);

// DATAMUX.NET (278) - dat[8-15] : mx4
mx4 dat_from_8_to_15_inst_0
(
	.z(dat_8), // OUT
	.a0(dstdlo[8]), // IN
	.a1(ddatlo[8]), // IN
	.a2(dstzlo[8]), // IN
	.a3(srczlo[8]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_1
(
	.z(dat_9), // OUT
	.a0(dstdlo[9]), // IN
	.a1(ddatlo[9]), // IN
	.a2(dstzlo[9]), // IN
	.a3(srczlo[9]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_2
(
	.z(dat_10), // OUT
	.a0(dstdlo[10]), // IN
	.a1(ddatlo[10]), // IN
	.a2(dstzlo[10]), // IN
	.a3(srczlo[10]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_3
(
	.z(dat_11), // OUT
	.a0(dstdlo[11]), // IN
	.a1(ddatlo[11]), // IN
	.a2(dstzlo[11]), // IN
	.a3(srczlo[11]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_4
(
	.z(dat_12), // OUT
	.a0(dstdlo[12]), // IN
	.a1(ddatlo[12]), // IN
	.a2(dstzlo[12]), // IN
	.a3(srczlo[12]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_5
(
	.z(dat_13), // OUT
	.a0(dstdlo[13]), // IN
	.a1(ddatlo[13]), // IN
	.a2(dstzlo[13]), // IN
	.a3(srczlo[13]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_6
(
	.z(dat_14), // OUT
	.a0(dstdlo[14]), // IN
	.a1(ddatlo[14]), // IN
	.a2(dstzlo[14]), // IN
	.a3(srczlo[14]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_8_to_15_inst_7
(
	.z(dat_15), // OUT
	.a0(dstdlo[15]), // IN
	.a1(ddatlo[15]), // IN
	.a2(dstzlo[15]), // IN
	.a3(srczlo[15]), // IN
	.s0(mask_8), // IN
	.s1(zed_selb_0)  // IN
);

// DATAMUX.NET (281) - dat[16-23] : mx4
mx4 dat_from_16_to_23_inst_0
(
	.z(dat_16), // OUT
	.a0(dstdlo[16]), // IN
	.a1(ddatlo[16]), // IN
	.a2(dstzlo[16]), // IN
	.a3(srczlo[16]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_1
(
	.z(dat_17), // OUT
	.a0(dstdlo[17]), // IN
	.a1(ddatlo[17]), // IN
	.a2(dstzlo[17]), // IN
	.a3(srczlo[17]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_2
(
	.z(dat_18), // OUT
	.a0(dstdlo[18]), // IN
	.a1(ddatlo[18]), // IN
	.a2(dstzlo[18]), // IN
	.a3(srczlo[18]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_3
(
	.z(dat_19), // OUT
	.a0(dstdlo[19]), // IN
	.a1(ddatlo[19]), // IN
	.a2(dstzlo[19]), // IN
	.a3(srczlo[19]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_4
(
	.z(dat_20), // OUT
	.a0(dstdlo[20]), // IN
	.a1(ddatlo[20]), // IN
	.a2(dstzlo[20]), // IN
	.a3(srczlo[20]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_5
(
	.z(dat_21), // OUT
	.a0(dstdlo[21]), // IN
	.a1(ddatlo[21]), // IN
	.a2(dstzlo[21]), // IN
	.a3(srczlo[21]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_6
(
	.z(dat_22), // OUT
	.a0(dstdlo[22]), // IN
	.a1(ddatlo[22]), // IN
	.a2(dstzlo[22]), // IN
	.a3(srczlo[22]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_16_to_23_inst_7
(
	.z(dat_23), // OUT
	.a0(dstdlo[23]), // IN
	.a1(ddatlo[23]), // IN
	.a2(dstzlo[23]), // IN
	.a3(srczlo[23]), // IN
	.s0(mask_9), // IN
	.s1(zed_selb_0)  // IN
);

// DATAMUX.NET (284) - dat[24-31] : mx4
mx4 dat_from_24_to_31_inst_0
(
	.z(dat_24), // OUT
	.a0(dstdlo[24]), // IN
	.a1(ddatlo[24]), // IN
	.a2(dstzlo[24]), // IN
	.a3(srczlo[24]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_1
(
	.z(dat_25), // OUT
	.a0(dstdlo[25]), // IN
	.a1(ddatlo[25]), // IN
	.a2(dstzlo[25]), // IN
	.a3(srczlo[25]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_2
(
	.z(dat_26), // OUT
	.a0(dstdlo[26]), // IN
	.a1(ddatlo[26]), // IN
	.a2(dstzlo[26]), // IN
	.a3(srczlo[26]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_3
(
	.z(dat_27), // OUT
	.a0(dstdlo[27]), // IN
	.a1(ddatlo[27]), // IN
	.a2(dstzlo[27]), // IN
	.a3(srczlo[27]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_4
(
	.z(dat_28), // OUT
	.a0(dstdlo[28]), // IN
	.a1(ddatlo[28]), // IN
	.a2(dstzlo[28]), // IN
	.a3(srczlo[28]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_5
(
	.z(dat_29), // OUT
	.a0(dstdlo[29]), // IN
	.a1(ddatlo[29]), // IN
	.a2(dstzlo[29]), // IN
	.a3(srczlo[29]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_6
(
	.z(dat_30), // OUT
	.a0(dstdlo[30]), // IN
	.a1(ddatlo[30]), // IN
	.a2(dstzlo[30]), // IN
	.a3(srczlo[30]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);
mx4 dat_from_24_to_31_inst_7
(
	.z(dat_31), // OUT
	.a0(dstdlo[31]), // IN
	.a1(ddatlo[31]), // IN
	.a2(dstzlo[31]), // IN
	.a3(srczlo[31]), // IN
	.s0(mask_10), // IN
	.s1(zed_selb_0)  // IN
);

// DATAMUX.NET (287) - dat[32-39] : mx4
mx4 dat_from_32_to_39_inst_0
(
	.z(dat_32), // OUT
	.a0(dstdhi[0]), // IN
	.a1(ddathi[0]), // IN
	.a2(dstzhi[0]), // IN
	.a3(srczhi[0]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_1
(
	.z(dat_33), // OUT
	.a0(dstdhi[1]), // IN
	.a1(ddathi[1]), // IN
	.a2(dstzhi[1]), // IN
	.a3(srczhi[1]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_2
(
	.z(dat_34), // OUT
	.a0(dstdhi[2]), // IN
	.a1(ddathi[2]), // IN
	.a2(dstzhi[2]), // IN
	.a3(srczhi[2]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_3
(
	.z(dat_35), // OUT
	.a0(dstdhi[3]), // IN
	.a1(ddathi[3]), // IN
	.a2(dstzhi[3]), // IN
	.a3(srczhi[3]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_4
(
	.z(dat_36), // OUT
	.a0(dstdhi[4]), // IN
	.a1(ddathi[4]), // IN
	.a2(dstzhi[4]), // IN
	.a3(srczhi[4]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_5
(
	.z(dat_37), // OUT
	.a0(dstdhi[5]), // IN
	.a1(ddathi[5]), // IN
	.a2(dstzhi[5]), // IN
	.a3(srczhi[5]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_6
(
	.z(dat_38), // OUT
	.a0(dstdhi[6]), // IN
	.a1(ddathi[6]), // IN
	.a2(dstzhi[6]), // IN
	.a3(srczhi[6]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_32_to_39_inst_7
(
	.z(dat_39), // OUT
	.a0(dstdhi[7]), // IN
	.a1(ddathi[7]), // IN
	.a2(dstzhi[7]), // IN
	.a3(srczhi[7]), // IN
	.s0(mask_11), // IN
	.s1(zed_selb_1)  // IN
);

// DATAMUX.NET (290) - dat[40-47] : mx4
mx4 dat_from_40_to_47_inst_0
(
	.z(dat_40), // OUT
	.a0(dstdhi[8]), // IN
	.a1(ddathi[8]), // IN
	.a2(dstzhi[8]), // IN
	.a3(srczhi[8]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_1
(
	.z(dat_41), // OUT
	.a0(dstdhi[9]), // IN
	.a1(ddathi[9]), // IN
	.a2(dstzhi[9]), // IN
	.a3(srczhi[9]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_2
(
	.z(dat_42), // OUT
	.a0(dstdhi[10]), // IN
	.a1(ddathi[10]), // IN
	.a2(dstzhi[10]), // IN
	.a3(srczhi[10]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_3
(
	.z(dat_43), // OUT
	.a0(dstdhi[11]), // IN
	.a1(ddathi[11]), // IN
	.a2(dstzhi[11]), // IN
	.a3(srczhi[11]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_4
(
	.z(dat_44), // OUT
	.a0(dstdhi[12]), // IN
	.a1(ddathi[12]), // IN
	.a2(dstzhi[12]), // IN
	.a3(srczhi[12]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_5
(
	.z(dat_45), // OUT
	.a0(dstdhi[13]), // IN
	.a1(ddathi[13]), // IN
	.a2(dstzhi[13]), // IN
	.a3(srczhi[13]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_6
(
	.z(dat_46), // OUT
	.a0(dstdhi[14]), // IN
	.a1(ddathi[14]), // IN
	.a2(dstzhi[14]), // IN
	.a3(srczhi[14]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_40_to_47_inst_7
(
	.z(dat_47), // OUT
	.a0(dstdhi[15]), // IN
	.a1(ddathi[15]), // IN
	.a2(dstzhi[15]), // IN
	.a3(srczhi[15]), // IN
	.s0(mask_12), // IN
	.s1(zed_selb_1)  // IN
);

// DATAMUX.NET (293) - dat[48-55] : mx4
mx4 dat_from_48_to_55_inst_0
(
	.z(dat_48), // OUT
	.a0(dstdhi[16]), // IN
	.a1(ddathi[16]), // IN
	.a2(dstzhi[16]), // IN
	.a3(srczhi[16]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_1
(
	.z(dat_49), // OUT
	.a0(dstdhi[17]), // IN
	.a1(ddathi[17]), // IN
	.a2(dstzhi[17]), // IN
	.a3(srczhi[17]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_2
(
	.z(dat_50), // OUT
	.a0(dstdhi[18]), // IN
	.a1(ddathi[18]), // IN
	.a2(dstzhi[18]), // IN
	.a3(srczhi[18]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_3
(
	.z(dat_51), // OUT
	.a0(dstdhi[19]), // IN
	.a1(ddathi[19]), // IN
	.a2(dstzhi[19]), // IN
	.a3(srczhi[19]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_4
(
	.z(dat_52), // OUT
	.a0(dstdhi[20]), // IN
	.a1(ddathi[20]), // IN
	.a2(dstzhi[20]), // IN
	.a3(srczhi[20]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_5
(
	.z(dat_53), // OUT
	.a0(dstdhi[21]), // IN
	.a1(ddathi[21]), // IN
	.a2(dstzhi[21]), // IN
	.a3(srczhi[21]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_6
(
	.z(dat_54), // OUT
	.a0(dstdhi[22]), // IN
	.a1(ddathi[22]), // IN
	.a2(dstzhi[22]), // IN
	.a3(srczhi[22]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_48_to_55_inst_7
(
	.z(dat_55), // OUT
	.a0(dstdhi[23]), // IN
	.a1(ddathi[23]), // IN
	.a2(dstzhi[23]), // IN
	.a3(srczhi[23]), // IN
	.s0(mask_13), // IN
	.s1(zed_selb_1)  // IN
);

// DATAMUX.NET (296) - dat[56-63] : mx4
mx4 dat_from_56_to_63_inst_0
(
	.z(dat_56), // OUT
	.a0(dstdhi[24]), // IN
	.a1(ddathi[24]), // IN
	.a2(dstzhi[24]), // IN
	.a3(srczhi[24]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_1
(
	.z(dat_57), // OUT
	.a0(dstdhi[25]), // IN
	.a1(ddathi[25]), // IN
	.a2(dstzhi[25]), // IN
	.a3(srczhi[25]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_2
(
	.z(dat_58), // OUT
	.a0(dstdhi[26]), // IN
	.a1(ddathi[26]), // IN
	.a2(dstzhi[26]), // IN
	.a3(srczhi[26]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_3
(
	.z(dat_59), // OUT
	.a0(dstdhi[27]), // IN
	.a1(ddathi[27]), // IN
	.a2(dstzhi[27]), // IN
	.a3(srczhi[27]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_4
(
	.z(dat_60), // OUT
	.a0(dstdhi[28]), // IN
	.a1(ddathi[28]), // IN
	.a2(dstzhi[28]), // IN
	.a3(srczhi[28]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_5
(
	.z(dat_61), // OUT
	.a0(dstdhi[29]), // IN
	.a1(ddathi[29]), // IN
	.a2(dstzhi[29]), // IN
	.a3(srczhi[29]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_6
(
	.z(dat_62), // OUT
	.a0(dstdhi[30]), // IN
	.a1(ddathi[30]), // IN
	.a2(dstzhi[30]), // IN
	.a3(srczhi[30]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);
mx4 dat_from_56_to_63_inst_7
(
	.z(dat_63), // OUT
	.a0(dstdhi[31]), // IN
	.a1(ddathi[31]), // IN
	.a2(dstzhi[31]), // IN
	.a3(srczhi[31]), // IN
	.s0(mask_14), // IN
	.s1(zed_selb_1)  // IN
);

// DATAMUX.NET (300) - data_enab[0-1] : nivu
assign data_enab_0 = data_ena;
assign data_enab_1 = data_ena;

// DATAMUX.NET (301) - datadrv[0-31] : ts
assign wdata_0 = (data_enab_0) ? dat_0 : 1'bz;
assign wdata_1 = (data_enab_0) ? dat_1 : 1'bz;
assign wdata_2 = (data_enab_0) ? dat_2 : 1'bz;
assign wdata_3 = (data_enab_0) ? dat_3 : 1'bz;
assign wdata_4 = (data_enab_0) ? dat_4 : 1'bz;
assign wdata_5 = (data_enab_0) ? dat_5 : 1'bz;
assign wdata_6 = (data_enab_0) ? dat_6 : 1'bz;
assign wdata_7 = (data_enab_0) ? dat_7 : 1'bz;
assign wdata_8 = (data_enab_0) ? dat_8 : 1'bz;
assign wdata_9 = (data_enab_0) ? dat_9 : 1'bz;
assign wdata_10 = (data_enab_0) ? dat_10 : 1'bz;
assign wdata_11 = (data_enab_0) ? dat_11 : 1'bz;
assign wdata_12 = (data_enab_0) ? dat_12 : 1'bz;
assign wdata_13 = (data_enab_0) ? dat_13 : 1'bz;
assign wdata_14 = (data_enab_0) ? dat_14 : 1'bz;
assign wdata_15 = (data_enab_0) ? dat_15 : 1'bz;
assign wdata_16 = (data_enab_0) ? dat_16 : 1'bz;
assign wdata_17 = (data_enab_0) ? dat_17 : 1'bz;
assign wdata_18 = (data_enab_0) ? dat_18 : 1'bz;
assign wdata_19 = (data_enab_0) ? dat_19 : 1'bz;
assign wdata_20 = (data_enab_0) ? dat_20 : 1'bz;
assign wdata_21 = (data_enab_0) ? dat_21 : 1'bz;
assign wdata_22 = (data_enab_0) ? dat_22 : 1'bz;
assign wdata_23 = (data_enab_0) ? dat_23 : 1'bz;
assign wdata_24 = (data_enab_0) ? dat_24 : 1'bz;
assign wdata_25 = (data_enab_0) ? dat_25 : 1'bz;
assign wdata_26 = (data_enab_0) ? dat_26 : 1'bz;
assign wdata_27 = (data_enab_0) ? dat_27 : 1'bz;
assign wdata_28 = (data_enab_0) ? dat_28 : 1'bz;
assign wdata_29 = (data_enab_0) ? dat_29 : 1'bz;
assign wdata_30 = (data_enab_0) ? dat_30 : 1'bz;
assign wdata_31 = (data_enab_0) ? dat_31 : 1'bz;

// DATAMUX.NET (302) - datadrv[32-63] : ts
assign wdata_32 = (data_enab_1) ? dat_32 : 1'bz;
assign wdata_33 = (data_enab_1) ? dat_33 : 1'bz;
assign wdata_34 = (data_enab_1) ? dat_34 : 1'bz;
assign wdata_35 = (data_enab_1) ? dat_35 : 1'bz;
assign wdata_36 = (data_enab_1) ? dat_36 : 1'bz;
assign wdata_37 = (data_enab_1) ? dat_37 : 1'bz;
assign wdata_38 = (data_enab_1) ? dat_38 : 1'bz;
assign wdata_39 = (data_enab_1) ? dat_39 : 1'bz;
assign wdata_40 = (data_enab_1) ? dat_40 : 1'bz;
assign wdata_41 = (data_enab_1) ? dat_41 : 1'bz;
assign wdata_42 = (data_enab_1) ? dat_42 : 1'bz;
assign wdata_43 = (data_enab_1) ? dat_43 : 1'bz;
assign wdata_44 = (data_enab_1) ? dat_44 : 1'bz;
assign wdata_45 = (data_enab_1) ? dat_45 : 1'bz;
assign wdata_46 = (data_enab_1) ? dat_46 : 1'bz;
assign wdata_47 = (data_enab_1) ? dat_47 : 1'bz;
assign wdata_48 = (data_enab_1) ? dat_48 : 1'bz;
assign wdata_49 = (data_enab_1) ? dat_49 : 1'bz;
assign wdata_50 = (data_enab_1) ? dat_50 : 1'bz;
assign wdata_51 = (data_enab_1) ? dat_51 : 1'bz;
assign wdata_52 = (data_enab_1) ? dat_52 : 1'bz;
assign wdata_53 = (data_enab_1) ? dat_53 : 1'bz;
assign wdata_54 = (data_enab_1) ? dat_54 : 1'bz;
assign wdata_55 = (data_enab_1) ? dat_55 : 1'bz;
assign wdata_56 = (data_enab_1) ? dat_56 : 1'bz;
assign wdata_57 = (data_enab_1) ? dat_57 : 1'bz;
assign wdata_58 = (data_enab_1) ? dat_58 : 1'bz;
assign wdata_59 = (data_enab_1) ? dat_59 : 1'bz;
assign wdata_60 = (data_enab_1) ? dat_60 : 1'bz;
assign wdata_61 = (data_enab_1) ? dat_61 : 1'bz;
assign wdata_62 = (data_enab_1) ? dat_62 : 1'bz;
assign wdata_63 = (data_enab_1) ? dat_63 : 1'bz;

// DATAMUX.NET (304) - unused[0] : dummy
endmodule
