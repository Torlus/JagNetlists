`include "defs.v"

module data
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
	output dcomp_0,
	output dcomp_1,
	output dcomp_2,
	output dcomp_3,
	output dcomp_4,
	output dcomp_5,
	output dcomp_6,
	output dcomp_7,
	output srcd_0,
	output srcd_1,
	output srcd_2,
	output srcd_3,
	output srcd_4,
	output srcd_5,
	output srcd_6,
	output srcd_7,
	output zcomp_0,
	output zcomp_1,
	output zcomp_2,
	output zcomp_3,
	input big_pix,
	input blit_back,
	input blit_breq_0,
	input blit_breq_1,
	input clk,
	input clk2,
	input cmpdst,
	input daddasel_0,
	input daddasel_1,
	input daddasel_2,
	input daddbsel_0,
	input daddbsel_1,
	input daddbsel_2,
	input daddmode_0,
	input daddmode_1,
	input daddmode_2,
	input daddq_sel,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input data_ena,
	input data_sel_0,
	input data_sel_1,
	input dbinh_n_0,
	input dbinh_n_1,
	input dbinh_n_2,
	input dbinh_n_3,
	input dbinh_n_4,
	input dbinh_n_5,
	input dbinh_n_6,
	input dbinh_n_7,
	input dend_0,
	input dend_1,
	input dend_2,
	input dend_3,
	input dend_4,
	input dend_5,
	input dpipe_0,
	input dpipe_1,
	input dstart_0,
	input dstart_1,
	input dstart_2,
	input dstart_3,
	input dstart_4,
	input dstart_5,
	input dstdld_0,
	input dstdld_1,
	input dstzld_0,
	input dstzld_1,
	input[0:31] gpu_din;
	input iincld,
	input intld_0,
	input intld_1,
	input intld_2,
	input intld_3,
	input lfu_func_0,
	input lfu_func_1,
	input lfu_func_2,
	input lfu_func_3,
	input load_strobe,
	input patdld_0,
	input patdld_1,
	input phrase_mode,
	input reset_n,
	input srcd1ld_0,
	input srcd1ld_1,
	input srcdread,
	input srczread,
	input srcshift_0,
	input srcshift_1,
	input srcshift_2,
	input srcshift_3,
	input srcshift_4,
	input srcshift_5,
	input srcz1ld_0,
	input srcz1ld_1,
	input srcz2add,
	input srcz2ld_0,
	input srcz2ld_1,
	input zedld_0,
	input zedld_1,
	input zedld_2,
	input zedld_3,
	input zincld,
	input zmode_0,
	input zmode_1,
	input zmode_2,
	input zpipe_0,
	input zpipe_1
);
wire [0:15] addb_0;
wire [0:15] addb_1;
wire [0:15] addb_2;
wire [0:15] addb_3;
wire [0:15] gpu_dinlo;
wire [0:15] gpu_dinhi;
wire [0:15] zero16;
wire [0:15] local_data0lo;
wire [0:15] local_data0hi;
wire [0:15] local_data1lo;
wire [0:15] local_data1hi;
wire [0:15] sz1_0;
wire [0:15] sz1_1;
wire [0:15] sz1_2;
wire [0:15] sz1_3;
wire [0:15] srcz1i_0;
wire [0:15] srcz1i_1;
wire [0:15] srcz1i_2;
wire [0:15] srcz1i_3;
wire [0:15] sz2_0;
wire [0:15] sz2_1;
wire [0:15] sz2_2;
wire [0:15] sz2_3;
wire [0:15] srcz2i_0;
wire [0:15] srcz2i_1;
wire [0:15] srcz2i_2;
wire [0:15] srcz2i_3;
wire [0:15] srcd1i_0;
wire [0:15] srcd1i_1;
wire [0:15] srcd1i_2;
wire [0:15] srcd1i_3;
wire [0:15] sd1_0;
wire [0:15] sd1_1;
wire [0:15] sd1_2;
wire [0:15] sd1_3;
wire [0:31] dstd_0;
wire [0:31] dstd_1;
wire [0:31] dstz_0;
wire [0:31] dstz_1;
wire [0:31] iinc;
wire [0:31] lfu_0;
wire [0:31] lfu_1;
wire [0:31] local_data_0;
wire [0:31] local_data_1;
wire [0:31] local_data0;
wire [0:31] local_data1;
wire [0:31] patd_0;
wire [0:31] patd_1;
wire [0:31] patdu_0;
wire [0:31] patdu_1;
wire [0:31] patdo_0;
wire [0:31] patdo_1;
wire [0:31] srcd1_0;
wire [0:31] srcd1_1;
wire [0:31] srcd2_0;
wire [0:31] srcd2_1;
wire [0:31] srcz1_0;
wire [0:31] srcz1_1;
wire [0:31] srcz2_0;
wire [0:31] srcz2_1;
wire [0:31] srczo_0;
wire [0:31] srczo_1;
wire [0:31] srczp_0;
wire [0:31] srczp_1;
wire [0:31] srczpt_0;
wire [0:31] srczpt_1;
wire [0:31] srcdlo;
wire [0:31] srcdhi;
wire [0:31] zinc;
wire [0:31] load_data_0;
wire [0:31] load_data_1;
wire [0:31] srcz_0;
wire [0:31] srcz_1;
wire [0:15] adda_0;
wire [0:15] adda_1;
wire [0:15] adda_2;
wire [0:15] adda_3;
wire [0:15] addq_0;
wire [0:15] addq_1;
wire [0:15] addq_2;
wire [0:15] addq_3;
wire zero;
wire intldb_0;
wire intldb_1;
wire intldb_2;
wire intldb_3;
wire srcd2ldg_0;
wire srcd2ldg_1;
wire zedldb_0;
wire zedldb_1;
wire zedldb_2;
wire zedldb_3;
wire sz20sel_0;
wire sz20sel_1;
wire sz21sel_0;
wire sz21sel_1;
wire sz22sel_0;
wire sz22sel_1;
wire sz23sel_0;
wire sz23sel_1;
wire dstdldg_0;
wire dstdldg_1;
wire dstzldg_0;
wire dstzldg_1;
wire patdi_0;
wire patdi_1;
wire patdi_2;
wire patdi_3;
wire patdi_4;
wire patdi_5;
wire patdi_6;
wire patdi_7;
wire pdu_0;
wire pdu_1;
wire pdu_2;
wire pdu_3;
wire pdu_4;
wire pdu_5;
wire pdu_6;
wire pdu_7;
wire patdi_8;
wire patdi_9;
wire patdi_10;
wire patdi_11;
wire patdi_12;
wire patdi_13;
wire patdi_14;
wire patdi_15;
wire pdu_8;
wire pdu_9;
wire pdu_10;
wire pdu_11;
wire pdu_12;
wire pdu_13;
wire pdu_14;
wire pdu_15;
wire patdi_16;
wire patdi_17;
wire patdi_18;
wire patdi_19;
wire patdi_20;
wire patdi_21;
wire patdi_22;
wire patdi_23;
wire pdu_16;
wire pdu_17;
wire pdu_18;
wire pdu_19;
wire pdu_20;
wire pdu_21;
wire pdu_22;
wire pdu_23;
wire patdi_24;
wire patdi_25;
wire patdi_26;
wire patdi_27;
wire patdi_28;
wire patdi_29;
wire patdi_30;
wire patdi_31;
wire pdu_24;
wire pdu_25;
wire pdu_26;
wire pdu_27;
wire pdu_28;
wire pdu_29;
wire pdu_30;
wire pdu_31;
wire patdi_32;
wire patdi_33;
wire patdi_34;
wire patdi_35;
wire patdi_36;
wire patdi_37;
wire patdi_38;
wire patdi_39;
wire pdu_32;
wire pdu_33;
wire pdu_34;
wire pdu_35;
wire pdu_36;
wire pdu_37;
wire pdu_38;
wire pdu_39;
wire patdi_40;
wire patdi_41;
wire patdi_42;
wire patdi_43;
wire patdi_44;
wire patdi_45;
wire patdi_46;
wire patdi_47;
wire pdu_40;
wire pdu_41;
wire pdu_42;
wire pdu_43;
wire pdu_44;
wire pdu_45;
wire pdu_46;
wire pdu_47;
wire patdi_48;
wire patdi_49;
wire patdi_50;
wire patdi_51;
wire patdi_52;
wire patdi_53;
wire patdi_54;
wire patdi_55;
wire pdu_48;
wire pdu_49;
wire pdu_50;
wire pdu_51;
wire pdu_52;
wire pdu_53;
wire pdu_54;
wire pdu_55;
wire patdi_56;
wire patdi_57;
wire patdi_58;
wire patdi_59;
wire patdi_60;
wire patdi_61;
wire patdi_62;
wire patdi_63;
wire pdu_56;
wire pdu_57;
wire pdu_58;
wire pdu_59;
wire pdu_60;
wire pdu_61;
wire pdu_62;
wire pdu_63;
wire dpipeg_0;
wire dpipeg_1;
wire dpipe1b_0;
wire dpipe1b_1;
wire zincldg;
wire iincldg;
wire zpipe0b_0;
wire zpipe0b_1;
wire zpipe1b_0;
wire zpipe1b_1;

// DATA.NET (76) - gpu_datalo : join
assign gpu_dinlo[0] = gpu_din[0];
assign gpu_dinlo[1] = gpu_din[1];
assign gpu_dinlo[2] = gpu_din[2];
assign gpu_dinlo[3] = gpu_din[3];
assign gpu_dinlo[4] = gpu_din[4];
assign gpu_dinlo[5] = gpu_din[5];
assign gpu_dinlo[6] = gpu_din[6];
assign gpu_dinlo[7] = gpu_din[7];
assign gpu_dinlo[8] = gpu_din[8];
assign gpu_dinlo[9] = gpu_din[9];
assign gpu_dinlo[10] = gpu_din[10];
assign gpu_dinlo[11] = gpu_din[11];
assign gpu_dinlo[12] = gpu_din[12];
assign gpu_dinlo[13] = gpu_din[13];
assign gpu_dinlo[14] = gpu_din[14];
assign gpu_dinlo[15] = gpu_din[15];

// DATA.NET (77) - gpu_datahi : join
assign gpu_dinhi[0] = gpu_din[16];
assign gpu_dinhi[1] = gpu_din[17];
assign gpu_dinhi[2] = gpu_din[18];
assign gpu_dinhi[3] = gpu_din[19];
assign gpu_dinhi[4] = gpu_din[20];
assign gpu_dinhi[5] = gpu_din[21];
assign gpu_dinhi[6] = gpu_din[22];
assign gpu_dinhi[7] = gpu_din[23];
assign gpu_dinhi[8] = gpu_din[24];
assign gpu_dinhi[9] = gpu_din[25];
assign gpu_dinhi[10] = gpu_din[26];
assign gpu_dinhi[11] = gpu_din[27];
assign gpu_dinhi[12] = gpu_din[28];
assign gpu_dinhi[13] = gpu_din[29];
assign gpu_dinhi[14] = gpu_din[30];
assign gpu_dinhi[15] = gpu_din[31];

// DATA.NET (78) - zero : tie0
assign zero = 1'b0;

// DATA.NET (79) - zero16 : join
assign zero16[0] = zero;
assign zero16[1] = zero;
assign zero16[2] = zero;
assign zero16[3] = zero;
assign zero16[4] = zero;
assign zero16[5] = zero;
assign zero16[6] = zero;
assign zero16[7] = zero;
assign zero16[8] = zero;
assign zero16[9] = zero;
assign zero16[10] = zero;
assign zero16[11] = zero;
assign zero16[12] = zero;
assign zero16[13] = zero;
assign zero16[14] = zero;
assign zero16[15] = zero;

// DATA.NET (90) - intldb[0-3] : nivu
assign intldb_0 = intld_0;
assign intldb_1 = intld_1;
assign intldb_2 = intld_2;
assign intldb_3 = intld_3;

// DATA.NET (91) - srcd1i[0] : mx4
mx4 srcd1i_index_0_inst_0
(
	.z(srcd1i_0[0]), // OUT
	.a0(sd1_0[0]), // IN
	.a1(local_data0lo[0]), // IN
	.a2(gpu_dinlo[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_1
(
	.z(srcd1i_0[1]), // OUT
	.a0(sd1_0[1]), // IN
	.a1(local_data0lo[1]), // IN
	.a2(gpu_dinlo[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_2
(
	.z(srcd1i_0[2]), // OUT
	.a0(sd1_0[2]), // IN
	.a1(local_data0lo[2]), // IN
	.a2(gpu_dinlo[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_3
(
	.z(srcd1i_0[3]), // OUT
	.a0(sd1_0[3]), // IN
	.a1(local_data0lo[3]), // IN
	.a2(gpu_dinlo[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_4
(
	.z(srcd1i_0[4]), // OUT
	.a0(sd1_0[4]), // IN
	.a1(local_data0lo[4]), // IN
	.a2(gpu_dinlo[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_5
(
	.z(srcd1i_0[5]), // OUT
	.a0(sd1_0[5]), // IN
	.a1(local_data0lo[5]), // IN
	.a2(gpu_dinlo[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_6
(
	.z(srcd1i_0[6]), // OUT
	.a0(sd1_0[6]), // IN
	.a1(local_data0lo[6]), // IN
	.a2(gpu_dinlo[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_7
(
	.z(srcd1i_0[7]), // OUT
	.a0(sd1_0[7]), // IN
	.a1(local_data0lo[7]), // IN
	.a2(gpu_dinlo[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_8
(
	.z(srcd1i_0[8]), // OUT
	.a0(sd1_0[8]), // IN
	.a1(local_data0lo[8]), // IN
	.a2(gpu_dinlo[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_9
(
	.z(srcd1i_0[9]), // OUT
	.a0(sd1_0[9]), // IN
	.a1(local_data0lo[9]), // IN
	.a2(gpu_dinlo[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_10
(
	.z(srcd1i_0[10]), // OUT
	.a0(sd1_0[10]), // IN
	.a1(local_data0lo[10]), // IN
	.a2(gpu_dinlo[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_11
(
	.z(srcd1i_0[11]), // OUT
	.a0(sd1_0[11]), // IN
	.a1(local_data0lo[11]), // IN
	.a2(gpu_dinlo[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_12
(
	.z(srcd1i_0[12]), // OUT
	.a0(sd1_0[12]), // IN
	.a1(local_data0lo[12]), // IN
	.a2(gpu_dinlo[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_13
(
	.z(srcd1i_0[13]), // OUT
	.a0(sd1_0[13]), // IN
	.a1(local_data0lo[13]), // IN
	.a2(gpu_dinlo[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_14
(
	.z(srcd1i_0[14]), // OUT
	.a0(sd1_0[14]), // IN
	.a1(local_data0lo[14]), // IN
	.a2(gpu_dinlo[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 srcd1i_index_0_inst_15
(
	.z(srcd1i_0[15]), // OUT
	.a0(sd1_0[15]), // IN
	.a1(local_data0lo[15]), // IN
	.a2(gpu_dinlo[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_0)  // IN
);

// DATA.NET (93) - srcd1i[1] : mx4
mx4 srcd1i_index_1_inst_0
(
	.z(srcd1i_1[0]), // OUT
	.a0(sd1_1[0]), // IN
	.a1(local_data0hi[0]), // IN
	.a2(gpu_dinlo[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_1
(
	.z(srcd1i_1[1]), // OUT
	.a0(sd1_1[1]), // IN
	.a1(local_data0hi[1]), // IN
	.a2(gpu_dinlo[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_2
(
	.z(srcd1i_1[2]), // OUT
	.a0(sd1_1[2]), // IN
	.a1(local_data0hi[2]), // IN
	.a2(gpu_dinlo[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_3
(
	.z(srcd1i_1[3]), // OUT
	.a0(sd1_1[3]), // IN
	.a1(local_data0hi[3]), // IN
	.a2(gpu_dinlo[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_4
(
	.z(srcd1i_1[4]), // OUT
	.a0(sd1_1[4]), // IN
	.a1(local_data0hi[4]), // IN
	.a2(gpu_dinlo[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_5
(
	.z(srcd1i_1[5]), // OUT
	.a0(sd1_1[5]), // IN
	.a1(local_data0hi[5]), // IN
	.a2(gpu_dinlo[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_6
(
	.z(srcd1i_1[6]), // OUT
	.a0(sd1_1[6]), // IN
	.a1(local_data0hi[6]), // IN
	.a2(gpu_dinlo[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_7
(
	.z(srcd1i_1[7]), // OUT
	.a0(sd1_1[7]), // IN
	.a1(local_data0hi[7]), // IN
	.a2(gpu_dinlo[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_8
(
	.z(srcd1i_1[8]), // OUT
	.a0(sd1_1[8]), // IN
	.a1(local_data0hi[8]), // IN
	.a2(gpu_dinlo[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_9
(
	.z(srcd1i_1[9]), // OUT
	.a0(sd1_1[9]), // IN
	.a1(local_data0hi[9]), // IN
	.a2(gpu_dinlo[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_10
(
	.z(srcd1i_1[10]), // OUT
	.a0(sd1_1[10]), // IN
	.a1(local_data0hi[10]), // IN
	.a2(gpu_dinlo[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_11
(
	.z(srcd1i_1[11]), // OUT
	.a0(sd1_1[11]), // IN
	.a1(local_data0hi[11]), // IN
	.a2(gpu_dinlo[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_12
(
	.z(srcd1i_1[12]), // OUT
	.a0(sd1_1[12]), // IN
	.a1(local_data0hi[12]), // IN
	.a2(gpu_dinlo[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_13
(
	.z(srcd1i_1[13]), // OUT
	.a0(sd1_1[13]), // IN
	.a1(local_data0hi[13]), // IN
	.a2(gpu_dinlo[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_14
(
	.z(srcd1i_1[14]), // OUT
	.a0(sd1_1[14]), // IN
	.a1(local_data0hi[14]), // IN
	.a2(gpu_dinlo[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 srcd1i_index_1_inst_15
(
	.z(srcd1i_1[15]), // OUT
	.a0(sd1_1[15]), // IN
	.a1(local_data0hi[15]), // IN
	.a2(gpu_dinlo[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcd1ld_0), // IN
	.s1(intldb_1)  // IN
);

// DATA.NET (95) - srcd1i[2] : mx4
mx4 srcd1i_index_2_inst_0
(
	.z(srcd1i_2[0]), // OUT
	.a0(sd1_2[0]), // IN
	.a1(local_data1lo[0]), // IN
	.a2(gpu_dinlo[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_1
(
	.z(srcd1i_2[1]), // OUT
	.a0(sd1_2[1]), // IN
	.a1(local_data1lo[1]), // IN
	.a2(gpu_dinlo[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_2
(
	.z(srcd1i_2[2]), // OUT
	.a0(sd1_2[2]), // IN
	.a1(local_data1lo[2]), // IN
	.a2(gpu_dinlo[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_3
(
	.z(srcd1i_2[3]), // OUT
	.a0(sd1_2[3]), // IN
	.a1(local_data1lo[3]), // IN
	.a2(gpu_dinlo[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_4
(
	.z(srcd1i_2[4]), // OUT
	.a0(sd1_2[4]), // IN
	.a1(local_data1lo[4]), // IN
	.a2(gpu_dinlo[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_5
(
	.z(srcd1i_2[5]), // OUT
	.a0(sd1_2[5]), // IN
	.a1(local_data1lo[5]), // IN
	.a2(gpu_dinlo[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_6
(
	.z(srcd1i_2[6]), // OUT
	.a0(sd1_2[6]), // IN
	.a1(local_data1lo[6]), // IN
	.a2(gpu_dinlo[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_7
(
	.z(srcd1i_2[7]), // OUT
	.a0(sd1_2[7]), // IN
	.a1(local_data1lo[7]), // IN
	.a2(gpu_dinlo[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_8
(
	.z(srcd1i_2[8]), // OUT
	.a0(sd1_2[8]), // IN
	.a1(local_data1lo[8]), // IN
	.a2(gpu_dinlo[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_9
(
	.z(srcd1i_2[9]), // OUT
	.a0(sd1_2[9]), // IN
	.a1(local_data1lo[9]), // IN
	.a2(gpu_dinlo[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_10
(
	.z(srcd1i_2[10]), // OUT
	.a0(sd1_2[10]), // IN
	.a1(local_data1lo[10]), // IN
	.a2(gpu_dinlo[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_11
(
	.z(srcd1i_2[11]), // OUT
	.a0(sd1_2[11]), // IN
	.a1(local_data1lo[11]), // IN
	.a2(gpu_dinlo[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_12
(
	.z(srcd1i_2[12]), // OUT
	.a0(sd1_2[12]), // IN
	.a1(local_data1lo[12]), // IN
	.a2(gpu_dinlo[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_13
(
	.z(srcd1i_2[13]), // OUT
	.a0(sd1_2[13]), // IN
	.a1(local_data1lo[13]), // IN
	.a2(gpu_dinlo[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_14
(
	.z(srcd1i_2[14]), // OUT
	.a0(sd1_2[14]), // IN
	.a1(local_data1lo[14]), // IN
	.a2(gpu_dinlo[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 srcd1i_index_2_inst_15
(
	.z(srcd1i_2[15]), // OUT
	.a0(sd1_2[15]), // IN
	.a1(local_data1lo[15]), // IN
	.a2(gpu_dinlo[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_2)  // IN
);

// DATA.NET (97) - srcd1i[3] : mx4
mx4 srcd1i_index_3_inst_0
(
	.z(srcd1i_3[0]), // OUT
	.a0(sd1_3[0]), // IN
	.a1(local_data1hi[0]), // IN
	.a2(gpu_dinlo[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_1
(
	.z(srcd1i_3[1]), // OUT
	.a0(sd1_3[1]), // IN
	.a1(local_data1hi[1]), // IN
	.a2(gpu_dinlo[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_2
(
	.z(srcd1i_3[2]), // OUT
	.a0(sd1_3[2]), // IN
	.a1(local_data1hi[2]), // IN
	.a2(gpu_dinlo[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_3
(
	.z(srcd1i_3[3]), // OUT
	.a0(sd1_3[3]), // IN
	.a1(local_data1hi[3]), // IN
	.a2(gpu_dinlo[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_4
(
	.z(srcd1i_3[4]), // OUT
	.a0(sd1_3[4]), // IN
	.a1(local_data1hi[4]), // IN
	.a2(gpu_dinlo[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_5
(
	.z(srcd1i_3[5]), // OUT
	.a0(sd1_3[5]), // IN
	.a1(local_data1hi[5]), // IN
	.a2(gpu_dinlo[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_6
(
	.z(srcd1i_3[6]), // OUT
	.a0(sd1_3[6]), // IN
	.a1(local_data1hi[6]), // IN
	.a2(gpu_dinlo[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_7
(
	.z(srcd1i_3[7]), // OUT
	.a0(sd1_3[7]), // IN
	.a1(local_data1hi[7]), // IN
	.a2(gpu_dinlo[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_8
(
	.z(srcd1i_3[8]), // OUT
	.a0(sd1_3[8]), // IN
	.a1(local_data1hi[8]), // IN
	.a2(gpu_dinlo[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_9
(
	.z(srcd1i_3[9]), // OUT
	.a0(sd1_3[9]), // IN
	.a1(local_data1hi[9]), // IN
	.a2(gpu_dinlo[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_10
(
	.z(srcd1i_3[10]), // OUT
	.a0(sd1_3[10]), // IN
	.a1(local_data1hi[10]), // IN
	.a2(gpu_dinlo[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_11
(
	.z(srcd1i_3[11]), // OUT
	.a0(sd1_3[11]), // IN
	.a1(local_data1hi[11]), // IN
	.a2(gpu_dinlo[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_12
(
	.z(srcd1i_3[12]), // OUT
	.a0(sd1_3[12]), // IN
	.a1(local_data1hi[12]), // IN
	.a2(gpu_dinlo[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_13
(
	.z(srcd1i_3[13]), // OUT
	.a0(sd1_3[13]), // IN
	.a1(local_data1hi[13]), // IN
	.a2(gpu_dinlo[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_14
(
	.z(srcd1i_3[14]), // OUT
	.a0(sd1_3[14]), // IN
	.a1(local_data1hi[14]), // IN
	.a2(gpu_dinlo[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 srcd1i_index_3_inst_15
(
	.z(srcd1i_3[15]), // OUT
	.a0(sd1_3[15]), // IN
	.a1(local_data1hi[15]), // IN
	.a2(gpu_dinlo[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcd1ld_1), // IN
	.s1(intldb_3)  // IN
);

// DATA.NET (99) - sd1[0-3] : fd1qp
fd1q sd1_from_0_to_3_inst_0
(
	.q(sd1_0[0]), // OUT
	.d(srcd1i_0[0]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_1
(
	.q(sd1_0[1]), // OUT
	.d(srcd1i_0[1]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_2
(
	.q(sd1_0[2]), // OUT
	.d(srcd1i_0[2]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_3
(
	.q(sd1_0[3]), // OUT
	.d(srcd1i_0[3]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_4
(
	.q(sd1_0[4]), // OUT
	.d(srcd1i_0[4]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_5
(
	.q(sd1_0[5]), // OUT
	.d(srcd1i_0[5]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_6
(
	.q(sd1_0[6]), // OUT
	.d(srcd1i_0[6]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_7
(
	.q(sd1_0[7]), // OUT
	.d(srcd1i_0[7]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_8
(
	.q(sd1_0[8]), // OUT
	.d(srcd1i_0[8]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_9
(
	.q(sd1_0[9]), // OUT
	.d(srcd1i_0[9]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_10
(
	.q(sd1_0[10]), // OUT
	.d(srcd1i_0[10]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_11
(
	.q(sd1_0[11]), // OUT
	.d(srcd1i_0[11]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_12
(
	.q(sd1_0[12]), // OUT
	.d(srcd1i_0[12]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_13
(
	.q(sd1_0[13]), // OUT
	.d(srcd1i_0[13]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_14
(
	.q(sd1_0[14]), // OUT
	.d(srcd1i_0[14]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_15
(
	.q(sd1_0[15]), // OUT
	.d(srcd1i_0[15]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_16
(
	.q(sd1_1[0]), // OUT
	.d(srcd1i_1[0]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_17
(
	.q(sd1_1[1]), // OUT
	.d(srcd1i_1[1]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_18
(
	.q(sd1_1[2]), // OUT
	.d(srcd1i_1[2]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_19
(
	.q(sd1_1[3]), // OUT
	.d(srcd1i_1[3]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_20
(
	.q(sd1_1[4]), // OUT
	.d(srcd1i_1[4]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_21
(
	.q(sd1_1[5]), // OUT
	.d(srcd1i_1[5]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_22
(
	.q(sd1_1[6]), // OUT
	.d(srcd1i_1[6]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_23
(
	.q(sd1_1[7]), // OUT
	.d(srcd1i_1[7]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_24
(
	.q(sd1_1[8]), // OUT
	.d(srcd1i_1[8]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_25
(
	.q(sd1_1[9]), // OUT
	.d(srcd1i_1[9]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_26
(
	.q(sd1_1[10]), // OUT
	.d(srcd1i_1[10]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_27
(
	.q(sd1_1[11]), // OUT
	.d(srcd1i_1[11]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_28
(
	.q(sd1_1[12]), // OUT
	.d(srcd1i_1[12]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_29
(
	.q(sd1_1[13]), // OUT
	.d(srcd1i_1[13]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_30
(
	.q(sd1_1[14]), // OUT
	.d(srcd1i_1[14]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_31
(
	.q(sd1_1[15]), // OUT
	.d(srcd1i_1[15]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_32
(
	.q(sd1_2[0]), // OUT
	.d(srcd1i_2[0]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_33
(
	.q(sd1_2[1]), // OUT
	.d(srcd1i_2[1]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_34
(
	.q(sd1_2[2]), // OUT
	.d(srcd1i_2[2]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_35
(
	.q(sd1_2[3]), // OUT
	.d(srcd1i_2[3]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_36
(
	.q(sd1_2[4]), // OUT
	.d(srcd1i_2[4]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_37
(
	.q(sd1_2[5]), // OUT
	.d(srcd1i_2[5]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_38
(
	.q(sd1_2[6]), // OUT
	.d(srcd1i_2[6]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_39
(
	.q(sd1_2[7]), // OUT
	.d(srcd1i_2[7]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_40
(
	.q(sd1_2[8]), // OUT
	.d(srcd1i_2[8]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_41
(
	.q(sd1_2[9]), // OUT
	.d(srcd1i_2[9]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_42
(
	.q(sd1_2[10]), // OUT
	.d(srcd1i_2[10]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_43
(
	.q(sd1_2[11]), // OUT
	.d(srcd1i_2[11]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_44
(
	.q(sd1_2[12]), // OUT
	.d(srcd1i_2[12]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_45
(
	.q(sd1_2[13]), // OUT
	.d(srcd1i_2[13]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_46
(
	.q(sd1_2[14]), // OUT
	.d(srcd1i_2[14]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_47
(
	.q(sd1_2[15]), // OUT
	.d(srcd1i_2[15]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_48
(
	.q(sd1_3[0]), // OUT
	.d(srcd1i_3[0]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_49
(
	.q(sd1_3[1]), // OUT
	.d(srcd1i_3[1]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_50
(
	.q(sd1_3[2]), // OUT
	.d(srcd1i_3[2]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_51
(
	.q(sd1_3[3]), // OUT
	.d(srcd1i_3[3]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_52
(
	.q(sd1_3[4]), // OUT
	.d(srcd1i_3[4]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_53
(
	.q(sd1_3[5]), // OUT
	.d(srcd1i_3[5]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_54
(
	.q(sd1_3[6]), // OUT
	.d(srcd1i_3[6]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_55
(
	.q(sd1_3[7]), // OUT
	.d(srcd1i_3[7]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_56
(
	.q(sd1_3[8]), // OUT
	.d(srcd1i_3[8]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_57
(
	.q(sd1_3[9]), // OUT
	.d(srcd1i_3[9]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_58
(
	.q(sd1_3[10]), // OUT
	.d(srcd1i_3[10]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_59
(
	.q(sd1_3[11]), // OUT
	.d(srcd1i_3[11]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_60
(
	.q(sd1_3[12]), // OUT
	.d(srcd1i_3[12]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_61
(
	.q(sd1_3[13]), // OUT
	.d(srcd1i_3[13]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_62
(
	.q(sd1_3[14]), // OUT
	.d(srcd1i_3[14]), // IN
	.cp(clk)  // IN
);
fd1q sd1_from_0_to_3_inst_63
(
	.q(sd1_3[15]), // OUT
	.d(srcd1i_3[15]), // IN
	.cp(clk)  // IN
);

// DATA.NET (100) - srcd1[0] : join
assign srcd1_0[0] = sd1_0[0];
assign srcd1_0[1] = sd1_0[1];
assign srcd1_0[2] = sd1_0[2];
assign srcd1_0[3] = sd1_0[3];
assign srcd1_0[4] = sd1_0[4];
assign srcd1_0[5] = sd1_0[5];
assign srcd1_0[6] = sd1_0[6];
assign srcd1_0[7] = sd1_0[7];
assign srcd1_0[8] = sd1_0[8];
assign srcd1_0[9] = sd1_0[9];
assign srcd1_0[10] = sd1_0[10];
assign srcd1_0[11] = sd1_0[11];
assign srcd1_0[12] = sd1_0[12];
assign srcd1_0[13] = sd1_0[13];
assign srcd1_0[14] = sd1_0[14];
assign srcd1_0[15] = sd1_0[15];
assign srcd1_0[16] = sd1_1[0];
assign srcd1_0[17] = sd1_1[1];
assign srcd1_0[18] = sd1_1[2];
assign srcd1_0[19] = sd1_1[3];
assign srcd1_0[20] = sd1_1[4];
assign srcd1_0[21] = sd1_1[5];
assign srcd1_0[22] = sd1_1[6];
assign srcd1_0[23] = sd1_1[7];
assign srcd1_0[24] = sd1_1[8];
assign srcd1_0[25] = sd1_1[9];
assign srcd1_0[26] = sd1_1[10];
assign srcd1_0[27] = sd1_1[11];
assign srcd1_0[28] = sd1_1[12];
assign srcd1_0[29] = sd1_1[13];
assign srcd1_0[30] = sd1_1[14];
assign srcd1_0[31] = sd1_1[15];

// DATA.NET (101) - srcd1[1] : join
assign srcd1_1[0] = sd1_2[0];
assign srcd1_1[1] = sd1_2[1];
assign srcd1_1[2] = sd1_2[2];
assign srcd1_1[3] = sd1_2[3];
assign srcd1_1[4] = sd1_2[4];
assign srcd1_1[5] = sd1_2[5];
assign srcd1_1[6] = sd1_2[6];
assign srcd1_1[7] = sd1_2[7];
assign srcd1_1[8] = sd1_2[8];
assign srcd1_1[9] = sd1_2[9];
assign srcd1_1[10] = sd1_2[10];
assign srcd1_1[11] = sd1_2[11];
assign srcd1_1[12] = sd1_2[12];
assign srcd1_1[13] = sd1_2[13];
assign srcd1_1[14] = sd1_2[14];
assign srcd1_1[15] = sd1_2[15];
assign srcd1_1[16] = sd1_3[0];
assign srcd1_1[17] = sd1_3[1];
assign srcd1_1[18] = sd1_3[2];
assign srcd1_1[19] = sd1_3[3];
assign srcd1_1[20] = sd1_3[4];
assign srcd1_1[21] = sd1_3[5];
assign srcd1_1[22] = sd1_3[6];
assign srcd1_1[23] = sd1_3[7];
assign srcd1_1[24] = sd1_3[8];
assign srcd1_1[25] = sd1_3[9];
assign srcd1_1[26] = sd1_3[10];
assign srcd1_1[27] = sd1_3[11];
assign srcd1_1[28] = sd1_3[12];
assign srcd1_1[29] = sd1_3[13];
assign srcd1_1[30] = sd1_3[14];
assign srcd1_1[31] = sd1_3[15];

// DATA.NET (103) - srcd2ldg[0-1] : an2u
assign srcd2ldg_0 = srcdread & load_strobe;
assign srcd2ldg_1 = srcdread & load_strobe;

// DATA.NET (104) - srcd2[0-1] : ldp1q
ldp1q srcd2_from_0_to_1_inst_0
(
	.q(srcd2_0[0]), // OUT
	.d(srcd1_0[0]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_1
(
	.q(srcd2_0[1]), // OUT
	.d(srcd1_0[1]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_2
(
	.q(srcd2_0[2]), // OUT
	.d(srcd1_0[2]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_3
(
	.q(srcd2_0[3]), // OUT
	.d(srcd1_0[3]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_4
(
	.q(srcd2_0[4]), // OUT
	.d(srcd1_0[4]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_5
(
	.q(srcd2_0[5]), // OUT
	.d(srcd1_0[5]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_6
(
	.q(srcd2_0[6]), // OUT
	.d(srcd1_0[6]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_7
(
	.q(srcd2_0[7]), // OUT
	.d(srcd1_0[7]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_8
(
	.q(srcd2_0[8]), // OUT
	.d(srcd1_0[8]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_9
(
	.q(srcd2_0[9]), // OUT
	.d(srcd1_0[9]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_10
(
	.q(srcd2_0[10]), // OUT
	.d(srcd1_0[10]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_11
(
	.q(srcd2_0[11]), // OUT
	.d(srcd1_0[11]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_12
(
	.q(srcd2_0[12]), // OUT
	.d(srcd1_0[12]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_13
(
	.q(srcd2_0[13]), // OUT
	.d(srcd1_0[13]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_14
(
	.q(srcd2_0[14]), // OUT
	.d(srcd1_0[14]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_15
(
	.q(srcd2_0[15]), // OUT
	.d(srcd1_0[15]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_16
(
	.q(srcd2_0[16]), // OUT
	.d(srcd1_0[16]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_17
(
	.q(srcd2_0[17]), // OUT
	.d(srcd1_0[17]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_18
(
	.q(srcd2_0[18]), // OUT
	.d(srcd1_0[18]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_19
(
	.q(srcd2_0[19]), // OUT
	.d(srcd1_0[19]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_20
(
	.q(srcd2_0[20]), // OUT
	.d(srcd1_0[20]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_21
(
	.q(srcd2_0[21]), // OUT
	.d(srcd1_0[21]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_22
(
	.q(srcd2_0[22]), // OUT
	.d(srcd1_0[22]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_23
(
	.q(srcd2_0[23]), // OUT
	.d(srcd1_0[23]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_24
(
	.q(srcd2_0[24]), // OUT
	.d(srcd1_0[24]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_25
(
	.q(srcd2_0[25]), // OUT
	.d(srcd1_0[25]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_26
(
	.q(srcd2_0[26]), // OUT
	.d(srcd1_0[26]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_27
(
	.q(srcd2_0[27]), // OUT
	.d(srcd1_0[27]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_28
(
	.q(srcd2_0[28]), // OUT
	.d(srcd1_0[28]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_29
(
	.q(srcd2_0[29]), // OUT
	.d(srcd1_0[29]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_30
(
	.q(srcd2_0[30]), // OUT
	.d(srcd1_0[30]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_31
(
	.q(srcd2_0[31]), // OUT
	.d(srcd1_0[31]), // IN
	.g(srcd2ldg_0)  // IN
);
ldp1q srcd2_from_0_to_1_inst_32
(
	.q(srcd2_1[0]), // OUT
	.d(srcd1_1[0]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_33
(
	.q(srcd2_1[1]), // OUT
	.d(srcd1_1[1]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_34
(
	.q(srcd2_1[2]), // OUT
	.d(srcd1_1[2]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_35
(
	.q(srcd2_1[3]), // OUT
	.d(srcd1_1[3]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_36
(
	.q(srcd2_1[4]), // OUT
	.d(srcd1_1[4]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_37
(
	.q(srcd2_1[5]), // OUT
	.d(srcd1_1[5]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_38
(
	.q(srcd2_1[6]), // OUT
	.d(srcd1_1[6]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_39
(
	.q(srcd2_1[7]), // OUT
	.d(srcd1_1[7]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_40
(
	.q(srcd2_1[8]), // OUT
	.d(srcd1_1[8]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_41
(
	.q(srcd2_1[9]), // OUT
	.d(srcd1_1[9]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_42
(
	.q(srcd2_1[10]), // OUT
	.d(srcd1_1[10]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_43
(
	.q(srcd2_1[11]), // OUT
	.d(srcd1_1[11]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_44
(
	.q(srcd2_1[12]), // OUT
	.d(srcd1_1[12]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_45
(
	.q(srcd2_1[13]), // OUT
	.d(srcd1_1[13]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_46
(
	.q(srcd2_1[14]), // OUT
	.d(srcd1_1[14]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_47
(
	.q(srcd2_1[15]), // OUT
	.d(srcd1_1[15]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_48
(
	.q(srcd2_1[16]), // OUT
	.d(srcd1_1[16]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_49
(
	.q(srcd2_1[17]), // OUT
	.d(srcd1_1[17]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_50
(
	.q(srcd2_1[18]), // OUT
	.d(srcd1_1[18]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_51
(
	.q(srcd2_1[19]), // OUT
	.d(srcd1_1[19]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_52
(
	.q(srcd2_1[20]), // OUT
	.d(srcd1_1[20]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_53
(
	.q(srcd2_1[21]), // OUT
	.d(srcd1_1[21]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_54
(
	.q(srcd2_1[22]), // OUT
	.d(srcd1_1[22]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_55
(
	.q(srcd2_1[23]), // OUT
	.d(srcd1_1[23]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_56
(
	.q(srcd2_1[24]), // OUT
	.d(srcd1_1[24]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_57
(
	.q(srcd2_1[25]), // OUT
	.d(srcd1_1[25]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_58
(
	.q(srcd2_1[26]), // OUT
	.d(srcd1_1[26]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_59
(
	.q(srcd2_1[27]), // OUT
	.d(srcd1_1[27]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_60
(
	.q(srcd2_1[28]), // OUT
	.d(srcd1_1[28]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_61
(
	.q(srcd2_1[29]), // OUT
	.d(srcd1_1[29]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_62
(
	.q(srcd2_1[30]), // OUT
	.d(srcd1_1[30]), // IN
	.g(srcd2ldg_1)  // IN
);
ldp1q srcd2_from_0_to_1_inst_63
(
	.q(srcd2_1[31]), // OUT
	.d(srcd1_1[31]), // IN
	.g(srcd2ldg_1)  // IN
);

// DATA.NET (108) - src_shift : srcshift
srcshift src_shift_inst
(
	.srcd_0({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}), // OUT
	.srcd_1({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}), // OUT
	.big_pix(big_pix), // IN
	.srcd1lo({srcd1_0[0],srcd1_0[1],srcd1_0[2],srcd1_0[3],srcd1_0[4],srcd1_0[5],srcd1_0[6],srcd1_0[7],srcd1_0[8],srcd1_0[9],srcd1_0[10],srcd1_0[11],srcd1_0[12],srcd1_0[13],srcd1_0[14],srcd1_0[15],srcd1_0[16],srcd1_0[17],srcd1_0[18],srcd1_0[19],srcd1_0[20],srcd1_0[21],srcd1_0[22],srcd1_0[23],srcd1_0[24],srcd1_0[25],srcd1_0[26],srcd1_0[27],srcd1_0[28],srcd1_0[29],srcd1_0[30],srcd1_0[31]}), // IN
	.srcd1hi({srcd1_1[0],srcd1_1[1],srcd1_1[2],srcd1_1[3],srcd1_1[4],srcd1_1[5],srcd1_1[6],srcd1_1[7],srcd1_1[8],srcd1_1[9],srcd1_1[10],srcd1_1[11],srcd1_1[12],srcd1_1[13],srcd1_1[14],srcd1_1[15],srcd1_1[16],srcd1_1[17],srcd1_1[18],srcd1_1[19],srcd1_1[20],srcd1_1[21],srcd1_1[22],srcd1_1[23],srcd1_1[24],srcd1_1[25],srcd1_1[26],srcd1_1[27],srcd1_1[28],srcd1_1[29],srcd1_1[30],srcd1_1[31]}), // IN
	.srcd2lo({srcd2_0[0],srcd2_0[1],srcd2_0[2],srcd2_0[3],srcd2_0[4],srcd2_0[5],srcd2_0[6],srcd2_0[7],srcd2_0[8],srcd2_0[9],srcd2_0[10],srcd2_0[11],srcd2_0[12],srcd2_0[13],srcd2_0[14],srcd2_0[15],srcd2_0[16],srcd2_0[17],srcd2_0[18],srcd2_0[19],srcd2_0[20],srcd2_0[21],srcd2_0[22],srcd2_0[23],srcd2_0[24],srcd2_0[25],srcd2_0[26],srcd2_0[27],srcd2_0[28],srcd2_0[29],srcd2_0[30],srcd2_0[31]}), // IN
	.srcd2hi({srcd2_1[0],srcd2_1[1],srcd2_1[2],srcd2_1[3],srcd2_1[4],srcd2_1[5],srcd2_1[6],srcd2_1[7],srcd2_1[8],srcd2_1[9],srcd2_1[10],srcd2_1[11],srcd2_1[12],srcd2_1[13],srcd2_1[14],srcd2_1[15],srcd2_1[16],srcd2_1[17],srcd2_1[18],srcd2_1[19],srcd2_1[20],srcd2_1[21],srcd2_1[22],srcd2_1[23],srcd2_1[24],srcd2_1[25],srcd2_1[26],srcd2_1[27],srcd2_1[28],srcd2_1[29],srcd2_1[30],srcd2_1[31]}), // IN
	.srcshift_0(srcshift_0), // IN
	.srcshift_1(srcshift_1), // IN
	.srcshift_2(srcshift_2), // IN
	.srcshift_3(srcshift_3), // IN
	.srcshift_4(srcshift_4), // IN
	.srcshift_5(srcshift_5)  // IN
);

// DATA.NET (111) - srcd[0-7] : niv
assign srcd_0 = srcdlo[0];
assign srcd_1 = srcdlo[1];
assign srcd_2 = srcdlo[2];
assign srcd_3 = srcdlo[3];
assign srcd_4 = srcdlo[4];
assign srcd_5 = srcdlo[5];
assign srcd_6 = srcdlo[6];
assign srcd_7 = srcdlo[7];

// DATA.NET (121) - zedldb[0-3] : nivh
assign zedldb_0 = zedld_0;
assign zedldb_1 = zedld_1;
assign zedldb_2 = zedld_2;
assign zedldb_3 = zedld_3;

// DATA.NET (122) - srcz1i[0] : mx4
mx4 srcz1i_index_0_inst_0
(
	.z(srcz1i_0[0]), // OUT
	.a0(sz1_0[0]), // IN
	.a1(local_data0lo[0]), // IN
	.a2(gpu_dinhi[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_1
(
	.z(srcz1i_0[1]), // OUT
	.a0(sz1_0[1]), // IN
	.a1(local_data0lo[1]), // IN
	.a2(gpu_dinhi[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_2
(
	.z(srcz1i_0[2]), // OUT
	.a0(sz1_0[2]), // IN
	.a1(local_data0lo[2]), // IN
	.a2(gpu_dinhi[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_3
(
	.z(srcz1i_0[3]), // OUT
	.a0(sz1_0[3]), // IN
	.a1(local_data0lo[3]), // IN
	.a2(gpu_dinhi[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_4
(
	.z(srcz1i_0[4]), // OUT
	.a0(sz1_0[4]), // IN
	.a1(local_data0lo[4]), // IN
	.a2(gpu_dinhi[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_5
(
	.z(srcz1i_0[5]), // OUT
	.a0(sz1_0[5]), // IN
	.a1(local_data0lo[5]), // IN
	.a2(gpu_dinhi[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_6
(
	.z(srcz1i_0[6]), // OUT
	.a0(sz1_0[6]), // IN
	.a1(local_data0lo[6]), // IN
	.a2(gpu_dinhi[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_7
(
	.z(srcz1i_0[7]), // OUT
	.a0(sz1_0[7]), // IN
	.a1(local_data0lo[7]), // IN
	.a2(gpu_dinhi[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_8
(
	.z(srcz1i_0[8]), // OUT
	.a0(sz1_0[8]), // IN
	.a1(local_data0lo[8]), // IN
	.a2(gpu_dinhi[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_9
(
	.z(srcz1i_0[9]), // OUT
	.a0(sz1_0[9]), // IN
	.a1(local_data0lo[9]), // IN
	.a2(gpu_dinhi[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_10
(
	.z(srcz1i_0[10]), // OUT
	.a0(sz1_0[10]), // IN
	.a1(local_data0lo[10]), // IN
	.a2(gpu_dinhi[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_11
(
	.z(srcz1i_0[11]), // OUT
	.a0(sz1_0[11]), // IN
	.a1(local_data0lo[11]), // IN
	.a2(gpu_dinhi[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_12
(
	.z(srcz1i_0[12]), // OUT
	.a0(sz1_0[12]), // IN
	.a1(local_data0lo[12]), // IN
	.a2(gpu_dinhi[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_13
(
	.z(srcz1i_0[13]), // OUT
	.a0(sz1_0[13]), // IN
	.a1(local_data0lo[13]), // IN
	.a2(gpu_dinhi[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_14
(
	.z(srcz1i_0[14]), // OUT
	.a0(sz1_0[14]), // IN
	.a1(local_data0lo[14]), // IN
	.a2(gpu_dinhi[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);
mx4 srcz1i_index_0_inst_15
(
	.z(srcz1i_0[15]), // OUT
	.a0(sz1_0[15]), // IN
	.a1(local_data0lo[15]), // IN
	.a2(gpu_dinhi[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_0)  // IN
);

// DATA.NET (124) - srcz1i[1] : mx4
mx4 srcz1i_index_1_inst_0
(
	.z(srcz1i_1[0]), // OUT
	.a0(sz1_1[0]), // IN
	.a1(local_data0hi[0]), // IN
	.a2(gpu_dinhi[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_1
(
	.z(srcz1i_1[1]), // OUT
	.a0(sz1_1[1]), // IN
	.a1(local_data0hi[1]), // IN
	.a2(gpu_dinhi[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_2
(
	.z(srcz1i_1[2]), // OUT
	.a0(sz1_1[2]), // IN
	.a1(local_data0hi[2]), // IN
	.a2(gpu_dinhi[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_3
(
	.z(srcz1i_1[3]), // OUT
	.a0(sz1_1[3]), // IN
	.a1(local_data0hi[3]), // IN
	.a2(gpu_dinhi[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_4
(
	.z(srcz1i_1[4]), // OUT
	.a0(sz1_1[4]), // IN
	.a1(local_data0hi[4]), // IN
	.a2(gpu_dinhi[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_5
(
	.z(srcz1i_1[5]), // OUT
	.a0(sz1_1[5]), // IN
	.a1(local_data0hi[5]), // IN
	.a2(gpu_dinhi[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_6
(
	.z(srcz1i_1[6]), // OUT
	.a0(sz1_1[6]), // IN
	.a1(local_data0hi[6]), // IN
	.a2(gpu_dinhi[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_7
(
	.z(srcz1i_1[7]), // OUT
	.a0(sz1_1[7]), // IN
	.a1(local_data0hi[7]), // IN
	.a2(gpu_dinhi[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_8
(
	.z(srcz1i_1[8]), // OUT
	.a0(sz1_1[8]), // IN
	.a1(local_data0hi[8]), // IN
	.a2(gpu_dinhi[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_9
(
	.z(srcz1i_1[9]), // OUT
	.a0(sz1_1[9]), // IN
	.a1(local_data0hi[9]), // IN
	.a2(gpu_dinhi[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_10
(
	.z(srcz1i_1[10]), // OUT
	.a0(sz1_1[10]), // IN
	.a1(local_data0hi[10]), // IN
	.a2(gpu_dinhi[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_11
(
	.z(srcz1i_1[11]), // OUT
	.a0(sz1_1[11]), // IN
	.a1(local_data0hi[11]), // IN
	.a2(gpu_dinhi[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_12
(
	.z(srcz1i_1[12]), // OUT
	.a0(sz1_1[12]), // IN
	.a1(local_data0hi[12]), // IN
	.a2(gpu_dinhi[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_13
(
	.z(srcz1i_1[13]), // OUT
	.a0(sz1_1[13]), // IN
	.a1(local_data0hi[13]), // IN
	.a2(gpu_dinhi[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_14
(
	.z(srcz1i_1[14]), // OUT
	.a0(sz1_1[14]), // IN
	.a1(local_data0hi[14]), // IN
	.a2(gpu_dinhi[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);
mx4 srcz1i_index_1_inst_15
(
	.z(srcz1i_1[15]), // OUT
	.a0(sz1_1[15]), // IN
	.a1(local_data0hi[15]), // IN
	.a2(gpu_dinhi[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcz1ld_0), // IN
	.s1(zedldb_1)  // IN
);

// DATA.NET (126) - srcz1i[2] : mx4
mx4 srcz1i_index_2_inst_0
(
	.z(srcz1i_2[0]), // OUT
	.a0(sz1_2[0]), // IN
	.a1(local_data1lo[0]), // IN
	.a2(gpu_dinhi[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_1
(
	.z(srcz1i_2[1]), // OUT
	.a0(sz1_2[1]), // IN
	.a1(local_data1lo[1]), // IN
	.a2(gpu_dinhi[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_2
(
	.z(srcz1i_2[2]), // OUT
	.a0(sz1_2[2]), // IN
	.a1(local_data1lo[2]), // IN
	.a2(gpu_dinhi[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_3
(
	.z(srcz1i_2[3]), // OUT
	.a0(sz1_2[3]), // IN
	.a1(local_data1lo[3]), // IN
	.a2(gpu_dinhi[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_4
(
	.z(srcz1i_2[4]), // OUT
	.a0(sz1_2[4]), // IN
	.a1(local_data1lo[4]), // IN
	.a2(gpu_dinhi[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_5
(
	.z(srcz1i_2[5]), // OUT
	.a0(sz1_2[5]), // IN
	.a1(local_data1lo[5]), // IN
	.a2(gpu_dinhi[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_6
(
	.z(srcz1i_2[6]), // OUT
	.a0(sz1_2[6]), // IN
	.a1(local_data1lo[6]), // IN
	.a2(gpu_dinhi[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_7
(
	.z(srcz1i_2[7]), // OUT
	.a0(sz1_2[7]), // IN
	.a1(local_data1lo[7]), // IN
	.a2(gpu_dinhi[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_8
(
	.z(srcz1i_2[8]), // OUT
	.a0(sz1_2[8]), // IN
	.a1(local_data1lo[8]), // IN
	.a2(gpu_dinhi[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_9
(
	.z(srcz1i_2[9]), // OUT
	.a0(sz1_2[9]), // IN
	.a1(local_data1lo[9]), // IN
	.a2(gpu_dinhi[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_10
(
	.z(srcz1i_2[10]), // OUT
	.a0(sz1_2[10]), // IN
	.a1(local_data1lo[10]), // IN
	.a2(gpu_dinhi[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_11
(
	.z(srcz1i_2[11]), // OUT
	.a0(sz1_2[11]), // IN
	.a1(local_data1lo[11]), // IN
	.a2(gpu_dinhi[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_12
(
	.z(srcz1i_2[12]), // OUT
	.a0(sz1_2[12]), // IN
	.a1(local_data1lo[12]), // IN
	.a2(gpu_dinhi[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_13
(
	.z(srcz1i_2[13]), // OUT
	.a0(sz1_2[13]), // IN
	.a1(local_data1lo[13]), // IN
	.a2(gpu_dinhi[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_14
(
	.z(srcz1i_2[14]), // OUT
	.a0(sz1_2[14]), // IN
	.a1(local_data1lo[14]), // IN
	.a2(gpu_dinhi[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);
mx4 srcz1i_index_2_inst_15
(
	.z(srcz1i_2[15]), // OUT
	.a0(sz1_2[15]), // IN
	.a1(local_data1lo[15]), // IN
	.a2(gpu_dinhi[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_2)  // IN
);

// DATA.NET (128) - srcz1i[3] : mx4
mx4 srcz1i_index_3_inst_0
(
	.z(srcz1i_3[0]), // OUT
	.a0(sz1_3[0]), // IN
	.a1(local_data1hi[0]), // IN
	.a2(gpu_dinhi[0]), // IN
	.a3(zero16[0]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_1
(
	.z(srcz1i_3[1]), // OUT
	.a0(sz1_3[1]), // IN
	.a1(local_data1hi[1]), // IN
	.a2(gpu_dinhi[1]), // IN
	.a3(zero16[1]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_2
(
	.z(srcz1i_3[2]), // OUT
	.a0(sz1_3[2]), // IN
	.a1(local_data1hi[2]), // IN
	.a2(gpu_dinhi[2]), // IN
	.a3(zero16[2]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_3
(
	.z(srcz1i_3[3]), // OUT
	.a0(sz1_3[3]), // IN
	.a1(local_data1hi[3]), // IN
	.a2(gpu_dinhi[3]), // IN
	.a3(zero16[3]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_4
(
	.z(srcz1i_3[4]), // OUT
	.a0(sz1_3[4]), // IN
	.a1(local_data1hi[4]), // IN
	.a2(gpu_dinhi[4]), // IN
	.a3(zero16[4]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_5
(
	.z(srcz1i_3[5]), // OUT
	.a0(sz1_3[5]), // IN
	.a1(local_data1hi[5]), // IN
	.a2(gpu_dinhi[5]), // IN
	.a3(zero16[5]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_6
(
	.z(srcz1i_3[6]), // OUT
	.a0(sz1_3[6]), // IN
	.a1(local_data1hi[6]), // IN
	.a2(gpu_dinhi[6]), // IN
	.a3(zero16[6]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_7
(
	.z(srcz1i_3[7]), // OUT
	.a0(sz1_3[7]), // IN
	.a1(local_data1hi[7]), // IN
	.a2(gpu_dinhi[7]), // IN
	.a3(zero16[7]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_8
(
	.z(srcz1i_3[8]), // OUT
	.a0(sz1_3[8]), // IN
	.a1(local_data1hi[8]), // IN
	.a2(gpu_dinhi[8]), // IN
	.a3(zero16[8]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_9
(
	.z(srcz1i_3[9]), // OUT
	.a0(sz1_3[9]), // IN
	.a1(local_data1hi[9]), // IN
	.a2(gpu_dinhi[9]), // IN
	.a3(zero16[9]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_10
(
	.z(srcz1i_3[10]), // OUT
	.a0(sz1_3[10]), // IN
	.a1(local_data1hi[10]), // IN
	.a2(gpu_dinhi[10]), // IN
	.a3(zero16[10]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_11
(
	.z(srcz1i_3[11]), // OUT
	.a0(sz1_3[11]), // IN
	.a1(local_data1hi[11]), // IN
	.a2(gpu_dinhi[11]), // IN
	.a3(zero16[11]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_12
(
	.z(srcz1i_3[12]), // OUT
	.a0(sz1_3[12]), // IN
	.a1(local_data1hi[12]), // IN
	.a2(gpu_dinhi[12]), // IN
	.a3(zero16[12]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_13
(
	.z(srcz1i_3[13]), // OUT
	.a0(sz1_3[13]), // IN
	.a1(local_data1hi[13]), // IN
	.a2(gpu_dinhi[13]), // IN
	.a3(zero16[13]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_14
(
	.z(srcz1i_3[14]), // OUT
	.a0(sz1_3[14]), // IN
	.a1(local_data1hi[14]), // IN
	.a2(gpu_dinhi[14]), // IN
	.a3(zero16[14]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);
mx4 srcz1i_index_3_inst_15
(
	.z(srcz1i_3[15]), // OUT
	.a0(sz1_3[15]), // IN
	.a1(local_data1hi[15]), // IN
	.a2(gpu_dinhi[15]), // IN
	.a3(zero16[15]), // IN
	.s0(srcz1ld_1), // IN
	.s1(zedldb_3)  // IN
);

// DATA.NET (131) - sz1[0-3] : fd1qp
fd1q sz1_from_0_to_3_inst_0
(
	.q(sz1_0[0]), // OUT
	.d(srcz1i_0[0]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_1
(
	.q(sz1_0[1]), // OUT
	.d(srcz1i_0[1]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_2
(
	.q(sz1_0[2]), // OUT
	.d(srcz1i_0[2]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_3
(
	.q(sz1_0[3]), // OUT
	.d(srcz1i_0[3]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_4
(
	.q(sz1_0[4]), // OUT
	.d(srcz1i_0[4]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_5
(
	.q(sz1_0[5]), // OUT
	.d(srcz1i_0[5]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_6
(
	.q(sz1_0[6]), // OUT
	.d(srcz1i_0[6]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_7
(
	.q(sz1_0[7]), // OUT
	.d(srcz1i_0[7]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_8
(
	.q(sz1_0[8]), // OUT
	.d(srcz1i_0[8]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_9
(
	.q(sz1_0[9]), // OUT
	.d(srcz1i_0[9]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_10
(
	.q(sz1_0[10]), // OUT
	.d(srcz1i_0[10]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_11
(
	.q(sz1_0[11]), // OUT
	.d(srcz1i_0[11]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_12
(
	.q(sz1_0[12]), // OUT
	.d(srcz1i_0[12]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_13
(
	.q(sz1_0[13]), // OUT
	.d(srcz1i_0[13]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_14
(
	.q(sz1_0[14]), // OUT
	.d(srcz1i_0[14]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_15
(
	.q(sz1_0[15]), // OUT
	.d(srcz1i_0[15]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_16
(
	.q(sz1_1[0]), // OUT
	.d(srcz1i_1[0]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_17
(
	.q(sz1_1[1]), // OUT
	.d(srcz1i_1[1]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_18
(
	.q(sz1_1[2]), // OUT
	.d(srcz1i_1[2]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_19
(
	.q(sz1_1[3]), // OUT
	.d(srcz1i_1[3]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_20
(
	.q(sz1_1[4]), // OUT
	.d(srcz1i_1[4]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_21
(
	.q(sz1_1[5]), // OUT
	.d(srcz1i_1[5]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_22
(
	.q(sz1_1[6]), // OUT
	.d(srcz1i_1[6]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_23
(
	.q(sz1_1[7]), // OUT
	.d(srcz1i_1[7]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_24
(
	.q(sz1_1[8]), // OUT
	.d(srcz1i_1[8]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_25
(
	.q(sz1_1[9]), // OUT
	.d(srcz1i_1[9]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_26
(
	.q(sz1_1[10]), // OUT
	.d(srcz1i_1[10]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_27
(
	.q(sz1_1[11]), // OUT
	.d(srcz1i_1[11]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_28
(
	.q(sz1_1[12]), // OUT
	.d(srcz1i_1[12]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_29
(
	.q(sz1_1[13]), // OUT
	.d(srcz1i_1[13]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_30
(
	.q(sz1_1[14]), // OUT
	.d(srcz1i_1[14]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_31
(
	.q(sz1_1[15]), // OUT
	.d(srcz1i_1[15]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_32
(
	.q(sz1_2[0]), // OUT
	.d(srcz1i_2[0]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_33
(
	.q(sz1_2[1]), // OUT
	.d(srcz1i_2[1]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_34
(
	.q(sz1_2[2]), // OUT
	.d(srcz1i_2[2]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_35
(
	.q(sz1_2[3]), // OUT
	.d(srcz1i_2[3]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_36
(
	.q(sz1_2[4]), // OUT
	.d(srcz1i_2[4]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_37
(
	.q(sz1_2[5]), // OUT
	.d(srcz1i_2[5]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_38
(
	.q(sz1_2[6]), // OUT
	.d(srcz1i_2[6]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_39
(
	.q(sz1_2[7]), // OUT
	.d(srcz1i_2[7]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_40
(
	.q(sz1_2[8]), // OUT
	.d(srcz1i_2[8]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_41
(
	.q(sz1_2[9]), // OUT
	.d(srcz1i_2[9]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_42
(
	.q(sz1_2[10]), // OUT
	.d(srcz1i_2[10]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_43
(
	.q(sz1_2[11]), // OUT
	.d(srcz1i_2[11]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_44
(
	.q(sz1_2[12]), // OUT
	.d(srcz1i_2[12]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_45
(
	.q(sz1_2[13]), // OUT
	.d(srcz1i_2[13]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_46
(
	.q(sz1_2[14]), // OUT
	.d(srcz1i_2[14]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_47
(
	.q(sz1_2[15]), // OUT
	.d(srcz1i_2[15]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_48
(
	.q(sz1_3[0]), // OUT
	.d(srcz1i_3[0]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_49
(
	.q(sz1_3[1]), // OUT
	.d(srcz1i_3[1]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_50
(
	.q(sz1_3[2]), // OUT
	.d(srcz1i_3[2]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_51
(
	.q(sz1_3[3]), // OUT
	.d(srcz1i_3[3]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_52
(
	.q(sz1_3[4]), // OUT
	.d(srcz1i_3[4]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_53
(
	.q(sz1_3[5]), // OUT
	.d(srcz1i_3[5]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_54
(
	.q(sz1_3[6]), // OUT
	.d(srcz1i_3[6]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_55
(
	.q(sz1_3[7]), // OUT
	.d(srcz1i_3[7]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_56
(
	.q(sz1_3[8]), // OUT
	.d(srcz1i_3[8]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_57
(
	.q(sz1_3[9]), // OUT
	.d(srcz1i_3[9]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_58
(
	.q(sz1_3[10]), // OUT
	.d(srcz1i_3[10]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_59
(
	.q(sz1_3[11]), // OUT
	.d(srcz1i_3[11]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_60
(
	.q(sz1_3[12]), // OUT
	.d(srcz1i_3[12]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_61
(
	.q(sz1_3[13]), // OUT
	.d(srcz1i_3[13]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_62
(
	.q(sz1_3[14]), // OUT
	.d(srcz1i_3[14]), // IN
	.cp(clk)  // IN
);
fd1q sz1_from_0_to_3_inst_63
(
	.q(sz1_3[15]), // OUT
	.d(srcz1i_3[15]), // IN
	.cp(clk)  // IN
);

// DATA.NET (132) - srcz1[0] : join
assign srcz1_0[0] = sz1_0[0];
assign srcz1_0[1] = sz1_0[1];
assign srcz1_0[2] = sz1_0[2];
assign srcz1_0[3] = sz1_0[3];
assign srcz1_0[4] = sz1_0[4];
assign srcz1_0[5] = sz1_0[5];
assign srcz1_0[6] = sz1_0[6];
assign srcz1_0[7] = sz1_0[7];
assign srcz1_0[8] = sz1_0[8];
assign srcz1_0[9] = sz1_0[9];
assign srcz1_0[10] = sz1_0[10];
assign srcz1_0[11] = sz1_0[11];
assign srcz1_0[12] = sz1_0[12];
assign srcz1_0[13] = sz1_0[13];
assign srcz1_0[14] = sz1_0[14];
assign srcz1_0[15] = sz1_0[15];
assign srcz1_0[16] = sz1_1[0];
assign srcz1_0[17] = sz1_1[1];
assign srcz1_0[18] = sz1_1[2];
assign srcz1_0[19] = sz1_1[3];
assign srcz1_0[20] = sz1_1[4];
assign srcz1_0[21] = sz1_1[5];
assign srcz1_0[22] = sz1_1[6];
assign srcz1_0[23] = sz1_1[7];
assign srcz1_0[24] = sz1_1[8];
assign srcz1_0[25] = sz1_1[9];
assign srcz1_0[26] = sz1_1[10];
assign srcz1_0[27] = sz1_1[11];
assign srcz1_0[28] = sz1_1[12];
assign srcz1_0[29] = sz1_1[13];
assign srcz1_0[30] = sz1_1[14];
assign srcz1_0[31] = sz1_1[15];

// DATA.NET (133) - srcz1[1] : join
assign srcz1_1[0] = sz1_2[0];
assign srcz1_1[1] = sz1_2[1];
assign srcz1_1[2] = sz1_2[2];
assign srcz1_1[3] = sz1_2[3];
assign srcz1_1[4] = sz1_2[4];
assign srcz1_1[5] = sz1_2[5];
assign srcz1_1[6] = sz1_2[6];
assign srcz1_1[7] = sz1_2[7];
assign srcz1_1[8] = sz1_2[8];
assign srcz1_1[9] = sz1_2[9];
assign srcz1_1[10] = sz1_2[10];
assign srcz1_1[11] = sz1_2[11];
assign srcz1_1[12] = sz1_2[12];
assign srcz1_1[13] = sz1_2[13];
assign srcz1_1[14] = sz1_2[14];
assign srcz1_1[15] = sz1_2[15];
assign srcz1_1[16] = sz1_3[0];
assign srcz1_1[17] = sz1_3[1];
assign srcz1_1[18] = sz1_3[2];
assign srcz1_1[19] = sz1_3[3];
assign srcz1_1[20] = sz1_3[4];
assign srcz1_1[21] = sz1_3[5];
assign srcz1_1[22] = sz1_3[6];
assign srcz1_1[23] = sz1_3[7];
assign srcz1_1[24] = sz1_3[8];
assign srcz1_1[25] = sz1_3[9];
assign srcz1_1[26] = sz1_3[10];
assign srcz1_1[27] = sz1_3[11];
assign srcz1_1[28] = sz1_3[12];
assign srcz1_1[29] = sz1_3[13];
assign srcz1_1[30] = sz1_3[14];
assign srcz1_1[31] = sz1_3[15];

// DATA.NET (142) - sz20sel0 : or2_h
assign sz20sel_0 = srczread | zedldb_0;

// DATA.NET (143) - sz20sel1 : or3_h
assign sz20sel_1 = srcz2ld_0 | srcz2add | zedldb_0;

// DATA.NET (145) - srcz2i[0] : mx4
mx4 srcz2i_index_0_inst_0
(
	.z(srcz2i_0[0]), // OUT
	.a0(sz2_0[0]), // IN
	.a1(sz1_0[0]), // IN
	.a2(local_data0lo[0]), // IN
	.a3(gpu_dinlo[0]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_1
(
	.z(srcz2i_0[1]), // OUT
	.a0(sz2_0[1]), // IN
	.a1(sz1_0[1]), // IN
	.a2(local_data0lo[1]), // IN
	.a3(gpu_dinlo[1]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_2
(
	.z(srcz2i_0[2]), // OUT
	.a0(sz2_0[2]), // IN
	.a1(sz1_0[2]), // IN
	.a2(local_data0lo[2]), // IN
	.a3(gpu_dinlo[2]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_3
(
	.z(srcz2i_0[3]), // OUT
	.a0(sz2_0[3]), // IN
	.a1(sz1_0[3]), // IN
	.a2(local_data0lo[3]), // IN
	.a3(gpu_dinlo[3]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_4
(
	.z(srcz2i_0[4]), // OUT
	.a0(sz2_0[4]), // IN
	.a1(sz1_0[4]), // IN
	.a2(local_data0lo[4]), // IN
	.a3(gpu_dinlo[4]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_5
(
	.z(srcz2i_0[5]), // OUT
	.a0(sz2_0[5]), // IN
	.a1(sz1_0[5]), // IN
	.a2(local_data0lo[5]), // IN
	.a3(gpu_dinlo[5]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_6
(
	.z(srcz2i_0[6]), // OUT
	.a0(sz2_0[6]), // IN
	.a1(sz1_0[6]), // IN
	.a2(local_data0lo[6]), // IN
	.a3(gpu_dinlo[6]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_7
(
	.z(srcz2i_0[7]), // OUT
	.a0(sz2_0[7]), // IN
	.a1(sz1_0[7]), // IN
	.a2(local_data0lo[7]), // IN
	.a3(gpu_dinlo[7]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_8
(
	.z(srcz2i_0[8]), // OUT
	.a0(sz2_0[8]), // IN
	.a1(sz1_0[8]), // IN
	.a2(local_data0lo[8]), // IN
	.a3(gpu_dinlo[8]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_9
(
	.z(srcz2i_0[9]), // OUT
	.a0(sz2_0[9]), // IN
	.a1(sz1_0[9]), // IN
	.a2(local_data0lo[9]), // IN
	.a3(gpu_dinlo[9]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_10
(
	.z(srcz2i_0[10]), // OUT
	.a0(sz2_0[10]), // IN
	.a1(sz1_0[10]), // IN
	.a2(local_data0lo[10]), // IN
	.a3(gpu_dinlo[10]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_11
(
	.z(srcz2i_0[11]), // OUT
	.a0(sz2_0[11]), // IN
	.a1(sz1_0[11]), // IN
	.a2(local_data0lo[11]), // IN
	.a3(gpu_dinlo[11]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_12
(
	.z(srcz2i_0[12]), // OUT
	.a0(sz2_0[12]), // IN
	.a1(sz1_0[12]), // IN
	.a2(local_data0lo[12]), // IN
	.a3(gpu_dinlo[12]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_13
(
	.z(srcz2i_0[13]), // OUT
	.a0(sz2_0[13]), // IN
	.a1(sz1_0[13]), // IN
	.a2(local_data0lo[13]), // IN
	.a3(gpu_dinlo[13]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_14
(
	.z(srcz2i_0[14]), // OUT
	.a0(sz2_0[14]), // IN
	.a1(sz1_0[14]), // IN
	.a2(local_data0lo[14]), // IN
	.a3(gpu_dinlo[14]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);
mx4 srcz2i_index_0_inst_15
(
	.z(srcz2i_0[15]), // OUT
	.a0(sz2_0[15]), // IN
	.a1(sz1_0[15]), // IN
	.a2(local_data0lo[15]), // IN
	.a3(gpu_dinlo[15]), // IN
	.s0(sz20sel_0), // IN
	.s1(sz20sel_1)  // IN
);

// DATA.NET (147) - sz21sel0 : or2_h
assign sz21sel_0 = srczread | zedldb_1;

// DATA.NET (148) - sz21sel1 : or3_h
assign sz21sel_1 = srcz2ld_0 | srcz2add | zedldb_1;

// DATA.NET (150) - srcz2i[1] : mx4
mx4 srcz2i_index_1_inst_0
(
	.z(srcz2i_1[0]), // OUT
	.a0(sz2_1[0]), // IN
	.a1(sz1_1[0]), // IN
	.a2(local_data0hi[0]), // IN
	.a3(gpu_dinlo[0]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_1
(
	.z(srcz2i_1[1]), // OUT
	.a0(sz2_1[1]), // IN
	.a1(sz1_1[1]), // IN
	.a2(local_data0hi[1]), // IN
	.a3(gpu_dinlo[1]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_2
(
	.z(srcz2i_1[2]), // OUT
	.a0(sz2_1[2]), // IN
	.a1(sz1_1[2]), // IN
	.a2(local_data0hi[2]), // IN
	.a3(gpu_dinlo[2]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_3
(
	.z(srcz2i_1[3]), // OUT
	.a0(sz2_1[3]), // IN
	.a1(sz1_1[3]), // IN
	.a2(local_data0hi[3]), // IN
	.a3(gpu_dinlo[3]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_4
(
	.z(srcz2i_1[4]), // OUT
	.a0(sz2_1[4]), // IN
	.a1(sz1_1[4]), // IN
	.a2(local_data0hi[4]), // IN
	.a3(gpu_dinlo[4]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_5
(
	.z(srcz2i_1[5]), // OUT
	.a0(sz2_1[5]), // IN
	.a1(sz1_1[5]), // IN
	.a2(local_data0hi[5]), // IN
	.a3(gpu_dinlo[5]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_6
(
	.z(srcz2i_1[6]), // OUT
	.a0(sz2_1[6]), // IN
	.a1(sz1_1[6]), // IN
	.a2(local_data0hi[6]), // IN
	.a3(gpu_dinlo[6]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_7
(
	.z(srcz2i_1[7]), // OUT
	.a0(sz2_1[7]), // IN
	.a1(sz1_1[7]), // IN
	.a2(local_data0hi[7]), // IN
	.a3(gpu_dinlo[7]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_8
(
	.z(srcz2i_1[8]), // OUT
	.a0(sz2_1[8]), // IN
	.a1(sz1_1[8]), // IN
	.a2(local_data0hi[8]), // IN
	.a3(gpu_dinlo[8]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_9
(
	.z(srcz2i_1[9]), // OUT
	.a0(sz2_1[9]), // IN
	.a1(sz1_1[9]), // IN
	.a2(local_data0hi[9]), // IN
	.a3(gpu_dinlo[9]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_10
(
	.z(srcz2i_1[10]), // OUT
	.a0(sz2_1[10]), // IN
	.a1(sz1_1[10]), // IN
	.a2(local_data0hi[10]), // IN
	.a3(gpu_dinlo[10]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_11
(
	.z(srcz2i_1[11]), // OUT
	.a0(sz2_1[11]), // IN
	.a1(sz1_1[11]), // IN
	.a2(local_data0hi[11]), // IN
	.a3(gpu_dinlo[11]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_12
(
	.z(srcz2i_1[12]), // OUT
	.a0(sz2_1[12]), // IN
	.a1(sz1_1[12]), // IN
	.a2(local_data0hi[12]), // IN
	.a3(gpu_dinlo[12]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_13
(
	.z(srcz2i_1[13]), // OUT
	.a0(sz2_1[13]), // IN
	.a1(sz1_1[13]), // IN
	.a2(local_data0hi[13]), // IN
	.a3(gpu_dinlo[13]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_14
(
	.z(srcz2i_1[14]), // OUT
	.a0(sz2_1[14]), // IN
	.a1(sz1_1[14]), // IN
	.a2(local_data0hi[14]), // IN
	.a3(gpu_dinlo[14]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);
mx4 srcz2i_index_1_inst_15
(
	.z(srcz2i_1[15]), // OUT
	.a0(sz2_1[15]), // IN
	.a1(sz1_1[15]), // IN
	.a2(local_data0hi[15]), // IN
	.a3(gpu_dinlo[15]), // IN
	.s0(sz21sel_0), // IN
	.s1(sz21sel_1)  // IN
);

// DATA.NET (152) - sz22sel0 : or2_h
assign sz22sel_0 = srczread | zedldb_2;

// DATA.NET (153) - sz22sel1 : or3_h
assign sz22sel_1 = srcz2ld_1 | srcz2add | zedldb_2;

// DATA.NET (155) - srcz2i[2] : mx4
mx4 srcz2i_index_2_inst_0
(
	.z(srcz2i_2[0]), // OUT
	.a0(sz2_2[0]), // IN
	.a1(sz1_2[0]), // IN
	.a2(local_data1lo[0]), // IN
	.a3(gpu_dinlo[0]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_1
(
	.z(srcz2i_2[1]), // OUT
	.a0(sz2_2[1]), // IN
	.a1(sz1_2[1]), // IN
	.a2(local_data1lo[1]), // IN
	.a3(gpu_dinlo[1]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_2
(
	.z(srcz2i_2[2]), // OUT
	.a0(sz2_2[2]), // IN
	.a1(sz1_2[2]), // IN
	.a2(local_data1lo[2]), // IN
	.a3(gpu_dinlo[2]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_3
(
	.z(srcz2i_2[3]), // OUT
	.a0(sz2_2[3]), // IN
	.a1(sz1_2[3]), // IN
	.a2(local_data1lo[3]), // IN
	.a3(gpu_dinlo[3]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_4
(
	.z(srcz2i_2[4]), // OUT
	.a0(sz2_2[4]), // IN
	.a1(sz1_2[4]), // IN
	.a2(local_data1lo[4]), // IN
	.a3(gpu_dinlo[4]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_5
(
	.z(srcz2i_2[5]), // OUT
	.a0(sz2_2[5]), // IN
	.a1(sz1_2[5]), // IN
	.a2(local_data1lo[5]), // IN
	.a3(gpu_dinlo[5]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_6
(
	.z(srcz2i_2[6]), // OUT
	.a0(sz2_2[6]), // IN
	.a1(sz1_2[6]), // IN
	.a2(local_data1lo[6]), // IN
	.a3(gpu_dinlo[6]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_7
(
	.z(srcz2i_2[7]), // OUT
	.a0(sz2_2[7]), // IN
	.a1(sz1_2[7]), // IN
	.a2(local_data1lo[7]), // IN
	.a3(gpu_dinlo[7]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_8
(
	.z(srcz2i_2[8]), // OUT
	.a0(sz2_2[8]), // IN
	.a1(sz1_2[8]), // IN
	.a2(local_data1lo[8]), // IN
	.a3(gpu_dinlo[8]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_9
(
	.z(srcz2i_2[9]), // OUT
	.a0(sz2_2[9]), // IN
	.a1(sz1_2[9]), // IN
	.a2(local_data1lo[9]), // IN
	.a3(gpu_dinlo[9]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_10
(
	.z(srcz2i_2[10]), // OUT
	.a0(sz2_2[10]), // IN
	.a1(sz1_2[10]), // IN
	.a2(local_data1lo[10]), // IN
	.a3(gpu_dinlo[10]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_11
(
	.z(srcz2i_2[11]), // OUT
	.a0(sz2_2[11]), // IN
	.a1(sz1_2[11]), // IN
	.a2(local_data1lo[11]), // IN
	.a3(gpu_dinlo[11]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_12
(
	.z(srcz2i_2[12]), // OUT
	.a0(sz2_2[12]), // IN
	.a1(sz1_2[12]), // IN
	.a2(local_data1lo[12]), // IN
	.a3(gpu_dinlo[12]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_13
(
	.z(srcz2i_2[13]), // OUT
	.a0(sz2_2[13]), // IN
	.a1(sz1_2[13]), // IN
	.a2(local_data1lo[13]), // IN
	.a3(gpu_dinlo[13]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_14
(
	.z(srcz2i_2[14]), // OUT
	.a0(sz2_2[14]), // IN
	.a1(sz1_2[14]), // IN
	.a2(local_data1lo[14]), // IN
	.a3(gpu_dinlo[14]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);
mx4 srcz2i_index_2_inst_15
(
	.z(srcz2i_2[15]), // OUT
	.a0(sz2_2[15]), // IN
	.a1(sz1_2[15]), // IN
	.a2(local_data1lo[15]), // IN
	.a3(gpu_dinlo[15]), // IN
	.s0(sz22sel_0), // IN
	.s1(sz22sel_1)  // IN
);

// DATA.NET (157) - sz23sel0 : or2_h
assign sz23sel_0 = srczread | zedldb_3;

// DATA.NET (158) - sz23sel1 : or3_h
assign sz23sel_1 = srcz2ld_1 | srcz2add | zedldb_3;

// DATA.NET (160) - srcz2i[3] : mx4
mx4 srcz2i_index_3_inst_0
(
	.z(srcz2i_3[0]), // OUT
	.a0(sz2_3[0]), // IN
	.a1(sz1_3[0]), // IN
	.a2(local_data1hi[0]), // IN
	.a3(gpu_dinlo[0]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_1
(
	.z(srcz2i_3[1]), // OUT
	.a0(sz2_3[1]), // IN
	.a1(sz1_3[1]), // IN
	.a2(local_data1hi[1]), // IN
	.a3(gpu_dinlo[1]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_2
(
	.z(srcz2i_3[2]), // OUT
	.a0(sz2_3[2]), // IN
	.a1(sz1_3[2]), // IN
	.a2(local_data1hi[2]), // IN
	.a3(gpu_dinlo[2]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_3
(
	.z(srcz2i_3[3]), // OUT
	.a0(sz2_3[3]), // IN
	.a1(sz1_3[3]), // IN
	.a2(local_data1hi[3]), // IN
	.a3(gpu_dinlo[3]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_4
(
	.z(srcz2i_3[4]), // OUT
	.a0(sz2_3[4]), // IN
	.a1(sz1_3[4]), // IN
	.a2(local_data1hi[4]), // IN
	.a3(gpu_dinlo[4]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_5
(
	.z(srcz2i_3[5]), // OUT
	.a0(sz2_3[5]), // IN
	.a1(sz1_3[5]), // IN
	.a2(local_data1hi[5]), // IN
	.a3(gpu_dinlo[5]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_6
(
	.z(srcz2i_3[6]), // OUT
	.a0(sz2_3[6]), // IN
	.a1(sz1_3[6]), // IN
	.a2(local_data1hi[6]), // IN
	.a3(gpu_dinlo[6]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_7
(
	.z(srcz2i_3[7]), // OUT
	.a0(sz2_3[7]), // IN
	.a1(sz1_3[7]), // IN
	.a2(local_data1hi[7]), // IN
	.a3(gpu_dinlo[7]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_8
(
	.z(srcz2i_3[8]), // OUT
	.a0(sz2_3[8]), // IN
	.a1(sz1_3[8]), // IN
	.a2(local_data1hi[8]), // IN
	.a3(gpu_dinlo[8]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_9
(
	.z(srcz2i_3[9]), // OUT
	.a0(sz2_3[9]), // IN
	.a1(sz1_3[9]), // IN
	.a2(local_data1hi[9]), // IN
	.a3(gpu_dinlo[9]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_10
(
	.z(srcz2i_3[10]), // OUT
	.a0(sz2_3[10]), // IN
	.a1(sz1_3[10]), // IN
	.a2(local_data1hi[10]), // IN
	.a3(gpu_dinlo[10]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_11
(
	.z(srcz2i_3[11]), // OUT
	.a0(sz2_3[11]), // IN
	.a1(sz1_3[11]), // IN
	.a2(local_data1hi[11]), // IN
	.a3(gpu_dinlo[11]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_12
(
	.z(srcz2i_3[12]), // OUT
	.a0(sz2_3[12]), // IN
	.a1(sz1_3[12]), // IN
	.a2(local_data1hi[12]), // IN
	.a3(gpu_dinlo[12]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_13
(
	.z(srcz2i_3[13]), // OUT
	.a0(sz2_3[13]), // IN
	.a1(sz1_3[13]), // IN
	.a2(local_data1hi[13]), // IN
	.a3(gpu_dinlo[13]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_14
(
	.z(srcz2i_3[14]), // OUT
	.a0(sz2_3[14]), // IN
	.a1(sz1_3[14]), // IN
	.a2(local_data1hi[14]), // IN
	.a3(gpu_dinlo[14]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);
mx4 srcz2i_index_3_inst_15
(
	.z(srcz2i_3[15]), // OUT
	.a0(sz2_3[15]), // IN
	.a1(sz1_3[15]), // IN
	.a2(local_data1hi[15]), // IN
	.a3(gpu_dinlo[15]), // IN
	.s0(sz23sel_0), // IN
	.s1(sz23sel_1)  // IN
);

// DATA.NET (163) - sz2[0-3] : fd1qp
fd1q sz2_from_0_to_3_inst_0
(
	.q(sz2_0[0]), // OUT
	.d(srcz2i_0[0]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_1
(
	.q(sz2_0[1]), // OUT
	.d(srcz2i_0[1]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_2
(
	.q(sz2_0[2]), // OUT
	.d(srcz2i_0[2]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_3
(
	.q(sz2_0[3]), // OUT
	.d(srcz2i_0[3]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_4
(
	.q(sz2_0[4]), // OUT
	.d(srcz2i_0[4]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_5
(
	.q(sz2_0[5]), // OUT
	.d(srcz2i_0[5]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_6
(
	.q(sz2_0[6]), // OUT
	.d(srcz2i_0[6]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_7
(
	.q(sz2_0[7]), // OUT
	.d(srcz2i_0[7]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_8
(
	.q(sz2_0[8]), // OUT
	.d(srcz2i_0[8]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_9
(
	.q(sz2_0[9]), // OUT
	.d(srcz2i_0[9]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_10
(
	.q(sz2_0[10]), // OUT
	.d(srcz2i_0[10]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_11
(
	.q(sz2_0[11]), // OUT
	.d(srcz2i_0[11]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_12
(
	.q(sz2_0[12]), // OUT
	.d(srcz2i_0[12]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_13
(
	.q(sz2_0[13]), // OUT
	.d(srcz2i_0[13]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_14
(
	.q(sz2_0[14]), // OUT
	.d(srcz2i_0[14]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_15
(
	.q(sz2_0[15]), // OUT
	.d(srcz2i_0[15]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_16
(
	.q(sz2_1[0]), // OUT
	.d(srcz2i_1[0]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_17
(
	.q(sz2_1[1]), // OUT
	.d(srcz2i_1[1]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_18
(
	.q(sz2_1[2]), // OUT
	.d(srcz2i_1[2]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_19
(
	.q(sz2_1[3]), // OUT
	.d(srcz2i_1[3]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_20
(
	.q(sz2_1[4]), // OUT
	.d(srcz2i_1[4]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_21
(
	.q(sz2_1[5]), // OUT
	.d(srcz2i_1[5]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_22
(
	.q(sz2_1[6]), // OUT
	.d(srcz2i_1[6]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_23
(
	.q(sz2_1[7]), // OUT
	.d(srcz2i_1[7]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_24
(
	.q(sz2_1[8]), // OUT
	.d(srcz2i_1[8]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_25
(
	.q(sz2_1[9]), // OUT
	.d(srcz2i_1[9]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_26
(
	.q(sz2_1[10]), // OUT
	.d(srcz2i_1[10]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_27
(
	.q(sz2_1[11]), // OUT
	.d(srcz2i_1[11]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_28
(
	.q(sz2_1[12]), // OUT
	.d(srcz2i_1[12]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_29
(
	.q(sz2_1[13]), // OUT
	.d(srcz2i_1[13]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_30
(
	.q(sz2_1[14]), // OUT
	.d(srcz2i_1[14]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_31
(
	.q(sz2_1[15]), // OUT
	.d(srcz2i_1[15]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_32
(
	.q(sz2_2[0]), // OUT
	.d(srcz2i_2[0]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_33
(
	.q(sz2_2[1]), // OUT
	.d(srcz2i_2[1]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_34
(
	.q(sz2_2[2]), // OUT
	.d(srcz2i_2[2]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_35
(
	.q(sz2_2[3]), // OUT
	.d(srcz2i_2[3]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_36
(
	.q(sz2_2[4]), // OUT
	.d(srcz2i_2[4]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_37
(
	.q(sz2_2[5]), // OUT
	.d(srcz2i_2[5]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_38
(
	.q(sz2_2[6]), // OUT
	.d(srcz2i_2[6]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_39
(
	.q(sz2_2[7]), // OUT
	.d(srcz2i_2[7]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_40
(
	.q(sz2_2[8]), // OUT
	.d(srcz2i_2[8]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_41
(
	.q(sz2_2[9]), // OUT
	.d(srcz2i_2[9]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_42
(
	.q(sz2_2[10]), // OUT
	.d(srcz2i_2[10]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_43
(
	.q(sz2_2[11]), // OUT
	.d(srcz2i_2[11]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_44
(
	.q(sz2_2[12]), // OUT
	.d(srcz2i_2[12]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_45
(
	.q(sz2_2[13]), // OUT
	.d(srcz2i_2[13]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_46
(
	.q(sz2_2[14]), // OUT
	.d(srcz2i_2[14]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_47
(
	.q(sz2_2[15]), // OUT
	.d(srcz2i_2[15]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_48
(
	.q(sz2_3[0]), // OUT
	.d(srcz2i_3[0]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_49
(
	.q(sz2_3[1]), // OUT
	.d(srcz2i_3[1]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_50
(
	.q(sz2_3[2]), // OUT
	.d(srcz2i_3[2]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_51
(
	.q(sz2_3[3]), // OUT
	.d(srcz2i_3[3]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_52
(
	.q(sz2_3[4]), // OUT
	.d(srcz2i_3[4]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_53
(
	.q(sz2_3[5]), // OUT
	.d(srcz2i_3[5]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_54
(
	.q(sz2_3[6]), // OUT
	.d(srcz2i_3[6]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_55
(
	.q(sz2_3[7]), // OUT
	.d(srcz2i_3[7]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_56
(
	.q(sz2_3[8]), // OUT
	.d(srcz2i_3[8]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_57
(
	.q(sz2_3[9]), // OUT
	.d(srcz2i_3[9]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_58
(
	.q(sz2_3[10]), // OUT
	.d(srcz2i_3[10]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_59
(
	.q(sz2_3[11]), // OUT
	.d(srcz2i_3[11]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_60
(
	.q(sz2_3[12]), // OUT
	.d(srcz2i_3[12]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_61
(
	.q(sz2_3[13]), // OUT
	.d(srcz2i_3[13]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_62
(
	.q(sz2_3[14]), // OUT
	.d(srcz2i_3[14]), // IN
	.cp(clk)  // IN
);
fd1q sz2_from_0_to_3_inst_63
(
	.q(sz2_3[15]), // OUT
	.d(srcz2i_3[15]), // IN
	.cp(clk)  // IN
);

// DATA.NET (164) - srcz2[0] : join
assign srcz2_0[0] = sz2_0[0];
assign srcz2_0[1] = sz2_0[1];
assign srcz2_0[2] = sz2_0[2];
assign srcz2_0[3] = sz2_0[3];
assign srcz2_0[4] = sz2_0[4];
assign srcz2_0[5] = sz2_0[5];
assign srcz2_0[6] = sz2_0[6];
assign srcz2_0[7] = sz2_0[7];
assign srcz2_0[8] = sz2_0[8];
assign srcz2_0[9] = sz2_0[9];
assign srcz2_0[10] = sz2_0[10];
assign srcz2_0[11] = sz2_0[11];
assign srcz2_0[12] = sz2_0[12];
assign srcz2_0[13] = sz2_0[13];
assign srcz2_0[14] = sz2_0[14];
assign srcz2_0[15] = sz2_0[15];
assign srcz2_0[16] = sz2_1[0];
assign srcz2_0[17] = sz2_1[1];
assign srcz2_0[18] = sz2_1[2];
assign srcz2_0[19] = sz2_1[3];
assign srcz2_0[20] = sz2_1[4];
assign srcz2_0[21] = sz2_1[5];
assign srcz2_0[22] = sz2_1[6];
assign srcz2_0[23] = sz2_1[7];
assign srcz2_0[24] = sz2_1[8];
assign srcz2_0[25] = sz2_1[9];
assign srcz2_0[26] = sz2_1[10];
assign srcz2_0[27] = sz2_1[11];
assign srcz2_0[28] = sz2_1[12];
assign srcz2_0[29] = sz2_1[13];
assign srcz2_0[30] = sz2_1[14];
assign srcz2_0[31] = sz2_1[15];

// DATA.NET (165) - srcz2[1] : join
assign srcz2_1[0] = sz2_2[0];
assign srcz2_1[1] = sz2_2[1];
assign srcz2_1[2] = sz2_2[2];
assign srcz2_1[3] = sz2_2[3];
assign srcz2_1[4] = sz2_2[4];
assign srcz2_1[5] = sz2_2[5];
assign srcz2_1[6] = sz2_2[6];
assign srcz2_1[7] = sz2_2[7];
assign srcz2_1[8] = sz2_2[8];
assign srcz2_1[9] = sz2_2[9];
assign srcz2_1[10] = sz2_2[10];
assign srcz2_1[11] = sz2_2[11];
assign srcz2_1[12] = sz2_2[12];
assign srcz2_1[13] = sz2_2[13];
assign srcz2_1[14] = sz2_2[14];
assign srcz2_1[15] = sz2_2[15];
assign srcz2_1[16] = sz2_3[0];
assign srcz2_1[17] = sz2_3[1];
assign srcz2_1[18] = sz2_3[2];
assign srcz2_1[19] = sz2_3[3];
assign srcz2_1[20] = sz2_3[4];
assign srcz2_1[21] = sz2_3[5];
assign srcz2_1[22] = sz2_3[6];
assign srcz2_1[23] = sz2_3[7];
assign srcz2_1[24] = sz2_3[8];
assign srcz2_1[25] = sz2_3[9];
assign srcz2_1[26] = sz2_3[10];
assign srcz2_1[27] = sz2_3[11];
assign srcz2_1[28] = sz2_3[12];
assign srcz2_1[29] = sz2_3[13];
assign srcz2_1[30] = sz2_3[14];
assign srcz2_1[31] = sz2_3[15];

// DATA.NET (170) - dstdldg[0-1] : an2u
assign dstdldg_0 = dstdld_0 & load_strobe;
assign dstdldg_1 = dstdld_1 & load_strobe;

// DATA.NET (171) - dstd[0-1] : ldp1q
ldp1q dstd_from_0_to_1_inst_0
(
	.q(dstd_0[0]), // OUT
	.d(load_data_0[0]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_1
(
	.q(dstd_0[1]), // OUT
	.d(load_data_0[1]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_2
(
	.q(dstd_0[2]), // OUT
	.d(load_data_0[2]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_3
(
	.q(dstd_0[3]), // OUT
	.d(load_data_0[3]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_4
(
	.q(dstd_0[4]), // OUT
	.d(load_data_0[4]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_5
(
	.q(dstd_0[5]), // OUT
	.d(load_data_0[5]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_6
(
	.q(dstd_0[6]), // OUT
	.d(load_data_0[6]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_7
(
	.q(dstd_0[7]), // OUT
	.d(load_data_0[7]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_8
(
	.q(dstd_0[8]), // OUT
	.d(load_data_0[8]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_9
(
	.q(dstd_0[9]), // OUT
	.d(load_data_0[9]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_10
(
	.q(dstd_0[10]), // OUT
	.d(load_data_0[10]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_11
(
	.q(dstd_0[11]), // OUT
	.d(load_data_0[11]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_12
(
	.q(dstd_0[12]), // OUT
	.d(load_data_0[12]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_13
(
	.q(dstd_0[13]), // OUT
	.d(load_data_0[13]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_14
(
	.q(dstd_0[14]), // OUT
	.d(load_data_0[14]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_15
(
	.q(dstd_0[15]), // OUT
	.d(load_data_0[15]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_16
(
	.q(dstd_0[16]), // OUT
	.d(load_data_0[16]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_17
(
	.q(dstd_0[17]), // OUT
	.d(load_data_0[17]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_18
(
	.q(dstd_0[18]), // OUT
	.d(load_data_0[18]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_19
(
	.q(dstd_0[19]), // OUT
	.d(load_data_0[19]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_20
(
	.q(dstd_0[20]), // OUT
	.d(load_data_0[20]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_21
(
	.q(dstd_0[21]), // OUT
	.d(load_data_0[21]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_22
(
	.q(dstd_0[22]), // OUT
	.d(load_data_0[22]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_23
(
	.q(dstd_0[23]), // OUT
	.d(load_data_0[23]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_24
(
	.q(dstd_0[24]), // OUT
	.d(load_data_0[24]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_25
(
	.q(dstd_0[25]), // OUT
	.d(load_data_0[25]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_26
(
	.q(dstd_0[26]), // OUT
	.d(load_data_0[26]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_27
(
	.q(dstd_0[27]), // OUT
	.d(load_data_0[27]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_28
(
	.q(dstd_0[28]), // OUT
	.d(load_data_0[28]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_29
(
	.q(dstd_0[29]), // OUT
	.d(load_data_0[29]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_30
(
	.q(dstd_0[30]), // OUT
	.d(load_data_0[30]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_31
(
	.q(dstd_0[31]), // OUT
	.d(load_data_0[31]), // IN
	.g(dstdldg_0)  // IN
);
ldp1q dstd_from_0_to_1_inst_32
(
	.q(dstd_1[0]), // OUT
	.d(load_data_1[0]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_33
(
	.q(dstd_1[1]), // OUT
	.d(load_data_1[1]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_34
(
	.q(dstd_1[2]), // OUT
	.d(load_data_1[2]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_35
(
	.q(dstd_1[3]), // OUT
	.d(load_data_1[3]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_36
(
	.q(dstd_1[4]), // OUT
	.d(load_data_1[4]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_37
(
	.q(dstd_1[5]), // OUT
	.d(load_data_1[5]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_38
(
	.q(dstd_1[6]), // OUT
	.d(load_data_1[6]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_39
(
	.q(dstd_1[7]), // OUT
	.d(load_data_1[7]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_40
(
	.q(dstd_1[8]), // OUT
	.d(load_data_1[8]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_41
(
	.q(dstd_1[9]), // OUT
	.d(load_data_1[9]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_42
(
	.q(dstd_1[10]), // OUT
	.d(load_data_1[10]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_43
(
	.q(dstd_1[11]), // OUT
	.d(load_data_1[11]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_44
(
	.q(dstd_1[12]), // OUT
	.d(load_data_1[12]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_45
(
	.q(dstd_1[13]), // OUT
	.d(load_data_1[13]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_46
(
	.q(dstd_1[14]), // OUT
	.d(load_data_1[14]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_47
(
	.q(dstd_1[15]), // OUT
	.d(load_data_1[15]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_48
(
	.q(dstd_1[16]), // OUT
	.d(load_data_1[16]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_49
(
	.q(dstd_1[17]), // OUT
	.d(load_data_1[17]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_50
(
	.q(dstd_1[18]), // OUT
	.d(load_data_1[18]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_51
(
	.q(dstd_1[19]), // OUT
	.d(load_data_1[19]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_52
(
	.q(dstd_1[20]), // OUT
	.d(load_data_1[20]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_53
(
	.q(dstd_1[21]), // OUT
	.d(load_data_1[21]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_54
(
	.q(dstd_1[22]), // OUT
	.d(load_data_1[22]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_55
(
	.q(dstd_1[23]), // OUT
	.d(load_data_1[23]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_56
(
	.q(dstd_1[24]), // OUT
	.d(load_data_1[24]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_57
(
	.q(dstd_1[25]), // OUT
	.d(load_data_1[25]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_58
(
	.q(dstd_1[26]), // OUT
	.d(load_data_1[26]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_59
(
	.q(dstd_1[27]), // OUT
	.d(load_data_1[27]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_60
(
	.q(dstd_1[28]), // OUT
	.d(load_data_1[28]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_61
(
	.q(dstd_1[29]), // OUT
	.d(load_data_1[29]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_62
(
	.q(dstd_1[30]), // OUT
	.d(load_data_1[30]), // IN
	.g(dstdldg_1)  // IN
);
ldp1q dstd_from_0_to_1_inst_63
(
	.q(dstd_1[31]), // OUT
	.d(load_data_1[31]), // IN
	.g(dstdldg_1)  // IN
);

// DATA.NET (176) - dstzldg[0-1] : an2u
assign dstzldg_0 = dstzld_0 & load_strobe;
assign dstzldg_1 = dstzld_1 & load_strobe;

// DATA.NET (177) - dstz[0-1] : ldp1q
ldp1q dstz_from_0_to_1_inst_0
(
	.q(dstz_0[0]), // OUT
	.d(load_data_0[0]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_1
(
	.q(dstz_0[1]), // OUT
	.d(load_data_0[1]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_2
(
	.q(dstz_0[2]), // OUT
	.d(load_data_0[2]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_3
(
	.q(dstz_0[3]), // OUT
	.d(load_data_0[3]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_4
(
	.q(dstz_0[4]), // OUT
	.d(load_data_0[4]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_5
(
	.q(dstz_0[5]), // OUT
	.d(load_data_0[5]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_6
(
	.q(dstz_0[6]), // OUT
	.d(load_data_0[6]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_7
(
	.q(dstz_0[7]), // OUT
	.d(load_data_0[7]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_8
(
	.q(dstz_0[8]), // OUT
	.d(load_data_0[8]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_9
(
	.q(dstz_0[9]), // OUT
	.d(load_data_0[9]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_10
(
	.q(dstz_0[10]), // OUT
	.d(load_data_0[10]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_11
(
	.q(dstz_0[11]), // OUT
	.d(load_data_0[11]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_12
(
	.q(dstz_0[12]), // OUT
	.d(load_data_0[12]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_13
(
	.q(dstz_0[13]), // OUT
	.d(load_data_0[13]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_14
(
	.q(dstz_0[14]), // OUT
	.d(load_data_0[14]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_15
(
	.q(dstz_0[15]), // OUT
	.d(load_data_0[15]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_16
(
	.q(dstz_0[16]), // OUT
	.d(load_data_0[16]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_17
(
	.q(dstz_0[17]), // OUT
	.d(load_data_0[17]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_18
(
	.q(dstz_0[18]), // OUT
	.d(load_data_0[18]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_19
(
	.q(dstz_0[19]), // OUT
	.d(load_data_0[19]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_20
(
	.q(dstz_0[20]), // OUT
	.d(load_data_0[20]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_21
(
	.q(dstz_0[21]), // OUT
	.d(load_data_0[21]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_22
(
	.q(dstz_0[22]), // OUT
	.d(load_data_0[22]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_23
(
	.q(dstz_0[23]), // OUT
	.d(load_data_0[23]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_24
(
	.q(dstz_0[24]), // OUT
	.d(load_data_0[24]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_25
(
	.q(dstz_0[25]), // OUT
	.d(load_data_0[25]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_26
(
	.q(dstz_0[26]), // OUT
	.d(load_data_0[26]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_27
(
	.q(dstz_0[27]), // OUT
	.d(load_data_0[27]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_28
(
	.q(dstz_0[28]), // OUT
	.d(load_data_0[28]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_29
(
	.q(dstz_0[29]), // OUT
	.d(load_data_0[29]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_30
(
	.q(dstz_0[30]), // OUT
	.d(load_data_0[30]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_31
(
	.q(dstz_0[31]), // OUT
	.d(load_data_0[31]), // IN
	.g(dstzldg_0)  // IN
);
ldp1q dstz_from_0_to_1_inst_32
(
	.q(dstz_1[0]), // OUT
	.d(load_data_1[0]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_33
(
	.q(dstz_1[1]), // OUT
	.d(load_data_1[1]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_34
(
	.q(dstz_1[2]), // OUT
	.d(load_data_1[2]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_35
(
	.q(dstz_1[3]), // OUT
	.d(load_data_1[3]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_36
(
	.q(dstz_1[4]), // OUT
	.d(load_data_1[4]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_37
(
	.q(dstz_1[5]), // OUT
	.d(load_data_1[5]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_38
(
	.q(dstz_1[6]), // OUT
	.d(load_data_1[6]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_39
(
	.q(dstz_1[7]), // OUT
	.d(load_data_1[7]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_40
(
	.q(dstz_1[8]), // OUT
	.d(load_data_1[8]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_41
(
	.q(dstz_1[9]), // OUT
	.d(load_data_1[9]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_42
(
	.q(dstz_1[10]), // OUT
	.d(load_data_1[10]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_43
(
	.q(dstz_1[11]), // OUT
	.d(load_data_1[11]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_44
(
	.q(dstz_1[12]), // OUT
	.d(load_data_1[12]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_45
(
	.q(dstz_1[13]), // OUT
	.d(load_data_1[13]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_46
(
	.q(dstz_1[14]), // OUT
	.d(load_data_1[14]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_47
(
	.q(dstz_1[15]), // OUT
	.d(load_data_1[15]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_48
(
	.q(dstz_1[16]), // OUT
	.d(load_data_1[16]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_49
(
	.q(dstz_1[17]), // OUT
	.d(load_data_1[17]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_50
(
	.q(dstz_1[18]), // OUT
	.d(load_data_1[18]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_51
(
	.q(dstz_1[19]), // OUT
	.d(load_data_1[19]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_52
(
	.q(dstz_1[20]), // OUT
	.d(load_data_1[20]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_53
(
	.q(dstz_1[21]), // OUT
	.d(load_data_1[21]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_54
(
	.q(dstz_1[22]), // OUT
	.d(load_data_1[22]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_55
(
	.q(dstz_1[23]), // OUT
	.d(load_data_1[23]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_56
(
	.q(dstz_1[24]), // OUT
	.d(load_data_1[24]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_57
(
	.q(dstz_1[25]), // OUT
	.d(load_data_1[25]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_58
(
	.q(dstz_1[26]), // OUT
	.d(load_data_1[26]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_59
(
	.q(dstz_1[27]), // OUT
	.d(load_data_1[27]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_60
(
	.q(dstz_1[28]), // OUT
	.d(load_data_1[28]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_61
(
	.q(dstz_1[29]), // OUT
	.d(load_data_1[29]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_62
(
	.q(dstz_1[30]), // OUT
	.d(load_data_1[30]), // IN
	.g(dstzldg_1)  // IN
);
ldp1q dstz_from_0_to_1_inst_63
(
	.q(dstz_1[31]), // OUT
	.d(load_data_1[31]), // IN
	.g(dstzldg_1)  // IN
);

// DATA.NET (188) - patdi[0-7] : mx4
mx4 patdi_from_0_to_7_inst_0
(
	.z(patdi_0), // OUT
	.a0(pdu_0), // IN
	.a1(local_data0[0]), // IN
	.a2(gpu_din[16]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_1
(
	.z(patdi_1), // OUT
	.a0(pdu_1), // IN
	.a1(local_data0[1]), // IN
	.a2(gpu_din[17]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_2
(
	.z(patdi_2), // OUT
	.a0(pdu_2), // IN
	.a1(local_data0[2]), // IN
	.a2(gpu_din[18]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_3
(
	.z(patdi_3), // OUT
	.a0(pdu_3), // IN
	.a1(local_data0[3]), // IN
	.a2(gpu_din[19]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_4
(
	.z(patdi_4), // OUT
	.a0(pdu_4), // IN
	.a1(local_data0[4]), // IN
	.a2(gpu_din[20]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_5
(
	.z(patdi_5), // OUT
	.a0(pdu_5), // IN
	.a1(local_data0[5]), // IN
	.a2(gpu_din[21]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_6
(
	.z(patdi_6), // OUT
	.a0(pdu_6), // IN
	.a1(local_data0[6]), // IN
	.a2(gpu_din[22]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);
mx4 patdi_from_0_to_7_inst_7
(
	.z(patdi_7), // OUT
	.a0(pdu_7), // IN
	.a1(local_data0[7]), // IN
	.a2(gpu_din[23]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_0)  // IN
);

// DATA.NET (191) - patdi[8-15] : mx2
mx2 patdi_from_8_to_15_inst_0
(
	.z(patdi_8), // OUT
	.a0(pdu_8), // IN
	.a1(local_data0[8]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_1
(
	.z(patdi_9), // OUT
	.a0(pdu_9), // IN
	.a1(local_data0[9]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_2
(
	.z(patdi_10), // OUT
	.a0(pdu_10), // IN
	.a1(local_data0[10]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_3
(
	.z(patdi_11), // OUT
	.a0(pdu_11), // IN
	.a1(local_data0[11]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_4
(
	.z(patdi_12), // OUT
	.a0(pdu_12), // IN
	.a1(local_data0[12]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_5
(
	.z(patdi_13), // OUT
	.a0(pdu_13), // IN
	.a1(local_data0[13]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_6
(
	.z(patdi_14), // OUT
	.a0(pdu_14), // IN
	.a1(local_data0[14]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_8_to_15_inst_7
(
	.z(patdi_15), // OUT
	.a0(pdu_15), // IN
	.a1(local_data0[15]), // IN
	.s(patdld_0)  // IN
);

// DATA.NET (193) - patdi[16-23] : mx4
mx4 patdi_from_16_to_23_inst_0
(
	.z(patdi_16), // OUT
	.a0(pdu_16), // IN
	.a1(local_data0[16]), // IN
	.a2(gpu_din[16]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_1
(
	.z(patdi_17), // OUT
	.a0(pdu_17), // IN
	.a1(local_data0[17]), // IN
	.a2(gpu_din[17]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_2
(
	.z(patdi_18), // OUT
	.a0(pdu_18), // IN
	.a1(local_data0[18]), // IN
	.a2(gpu_din[18]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_3
(
	.z(patdi_19), // OUT
	.a0(pdu_19), // IN
	.a1(local_data0[19]), // IN
	.a2(gpu_din[19]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_4
(
	.z(patdi_20), // OUT
	.a0(pdu_20), // IN
	.a1(local_data0[20]), // IN
	.a2(gpu_din[20]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_5
(
	.z(patdi_21), // OUT
	.a0(pdu_21), // IN
	.a1(local_data0[21]), // IN
	.a2(gpu_din[21]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_6
(
	.z(patdi_22), // OUT
	.a0(pdu_22), // IN
	.a1(local_data0[22]), // IN
	.a2(gpu_din[22]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);
mx4 patdi_from_16_to_23_inst_7
(
	.z(patdi_23), // OUT
	.a0(pdu_23), // IN
	.a1(local_data0[23]), // IN
	.a2(gpu_din[23]), // IN
	.a3(zero), // IN
	.s0(patdld_0), // IN
	.s1(intldb_1)  // IN
);

// DATA.NET (196) - patdi[24-31] : mx2
mx2 patdi_from_24_to_31_inst_0
(
	.z(patdi_24), // OUT
	.a0(pdu_24), // IN
	.a1(local_data0[24]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_1
(
	.z(patdi_25), // OUT
	.a0(pdu_25), // IN
	.a1(local_data0[25]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_2
(
	.z(patdi_26), // OUT
	.a0(pdu_26), // IN
	.a1(local_data0[26]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_3
(
	.z(patdi_27), // OUT
	.a0(pdu_27), // IN
	.a1(local_data0[27]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_4
(
	.z(patdi_28), // OUT
	.a0(pdu_28), // IN
	.a1(local_data0[28]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_5
(
	.z(patdi_29), // OUT
	.a0(pdu_29), // IN
	.a1(local_data0[29]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_6
(
	.z(patdi_30), // OUT
	.a0(pdu_30), // IN
	.a1(local_data0[30]), // IN
	.s(patdld_0)  // IN
);
mx2 patdi_from_24_to_31_inst_7
(
	.z(patdi_31), // OUT
	.a0(pdu_31), // IN
	.a1(local_data0[31]), // IN
	.s(patdld_0)  // IN
);

// DATA.NET (198) - patdi[32-39] : mx4
mx4 patdi_from_32_to_39_inst_0
(
	.z(patdi_32), // OUT
	.a0(pdu_32), // IN
	.a1(local_data1[0]), // IN
	.a2(gpu_din[16]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_1
(
	.z(patdi_33), // OUT
	.a0(pdu_33), // IN
	.a1(local_data1[1]), // IN
	.a2(gpu_din[17]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_2
(
	.z(patdi_34), // OUT
	.a0(pdu_34), // IN
	.a1(local_data1[2]), // IN
	.a2(gpu_din[18]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_3
(
	.z(patdi_35), // OUT
	.a0(pdu_35), // IN
	.a1(local_data1[3]), // IN
	.a2(gpu_din[19]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_4
(
	.z(patdi_36), // OUT
	.a0(pdu_36), // IN
	.a1(local_data1[4]), // IN
	.a2(gpu_din[20]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_5
(
	.z(patdi_37), // OUT
	.a0(pdu_37), // IN
	.a1(local_data1[5]), // IN
	.a2(gpu_din[21]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_6
(
	.z(patdi_38), // OUT
	.a0(pdu_38), // IN
	.a1(local_data1[6]), // IN
	.a2(gpu_din[22]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);
mx4 patdi_from_32_to_39_inst_7
(
	.z(patdi_39), // OUT
	.a0(pdu_39), // IN
	.a1(local_data1[7]), // IN
	.a2(gpu_din[23]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_2)  // IN
);

// DATA.NET (201) - patdi[40-47] : mx2
mx2 patdi_from_40_to_47_inst_0
(
	.z(patdi_40), // OUT
	.a0(pdu_40), // IN
	.a1(local_data1[8]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_1
(
	.z(patdi_41), // OUT
	.a0(pdu_41), // IN
	.a1(local_data1[9]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_2
(
	.z(patdi_42), // OUT
	.a0(pdu_42), // IN
	.a1(local_data1[10]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_3
(
	.z(patdi_43), // OUT
	.a0(pdu_43), // IN
	.a1(local_data1[11]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_4
(
	.z(patdi_44), // OUT
	.a0(pdu_44), // IN
	.a1(local_data1[12]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_5
(
	.z(patdi_45), // OUT
	.a0(pdu_45), // IN
	.a1(local_data1[13]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_6
(
	.z(patdi_46), // OUT
	.a0(pdu_46), // IN
	.a1(local_data1[14]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_40_to_47_inst_7
(
	.z(patdi_47), // OUT
	.a0(pdu_47), // IN
	.a1(local_data1[15]), // IN
	.s(patdld_1)  // IN
);

// DATA.NET (203) - patdi[48-55] : mx4
mx4 patdi_from_48_to_55_inst_0
(
	.z(patdi_48), // OUT
	.a0(pdu_48), // IN
	.a1(local_data1[16]), // IN
	.a2(gpu_din[16]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_1
(
	.z(patdi_49), // OUT
	.a0(pdu_49), // IN
	.a1(local_data1[17]), // IN
	.a2(gpu_din[17]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_2
(
	.z(patdi_50), // OUT
	.a0(pdu_50), // IN
	.a1(local_data1[18]), // IN
	.a2(gpu_din[18]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_3
(
	.z(patdi_51), // OUT
	.a0(pdu_51), // IN
	.a1(local_data1[19]), // IN
	.a2(gpu_din[19]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_4
(
	.z(patdi_52), // OUT
	.a0(pdu_52), // IN
	.a1(local_data1[20]), // IN
	.a2(gpu_din[20]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_5
(
	.z(patdi_53), // OUT
	.a0(pdu_53), // IN
	.a1(local_data1[21]), // IN
	.a2(gpu_din[21]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_6
(
	.z(patdi_54), // OUT
	.a0(pdu_54), // IN
	.a1(local_data1[22]), // IN
	.a2(gpu_din[22]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);
mx4 patdi_from_48_to_55_inst_7
(
	.z(patdi_55), // OUT
	.a0(pdu_55), // IN
	.a1(local_data1[23]), // IN
	.a2(gpu_din[23]), // IN
	.a3(zero), // IN
	.s0(patdld_1), // IN
	.s1(intldb_3)  // IN
);

// DATA.NET (206) - patdi[56-63] : mx2
mx2 patdi_from_56_to_63_inst_0
(
	.z(patdi_56), // OUT
	.a0(pdu_56), // IN
	.a1(local_data1[24]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_1
(
	.z(patdi_57), // OUT
	.a0(pdu_57), // IN
	.a1(local_data1[25]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_2
(
	.z(patdi_58), // OUT
	.a0(pdu_58), // IN
	.a1(local_data1[26]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_3
(
	.z(patdi_59), // OUT
	.a0(pdu_59), // IN
	.a1(local_data1[27]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_4
(
	.z(patdi_60), // OUT
	.a0(pdu_60), // IN
	.a1(local_data1[28]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_5
(
	.z(patdi_61), // OUT
	.a0(pdu_61), // IN
	.a1(local_data1[29]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_6
(
	.z(patdi_62), // OUT
	.a0(pdu_62), // IN
	.a1(local_data1[30]), // IN
	.s(patdld_1)  // IN
);
mx2 patdi_from_56_to_63_inst_7
(
	.z(patdi_63), // OUT
	.a0(pdu_63), // IN
	.a1(local_data1[31]), // IN
	.s(patdld_1)  // IN
);

// DATA.NET (208) - pdu[0-63] : fd1q
fd1q pdu_from_0_to_63_inst_0
(
	.q(pdu_0), // OUT
	.d(patdi_0), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_1
(
	.q(pdu_1), // OUT
	.d(patdi_1), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_2
(
	.q(pdu_2), // OUT
	.d(patdi_2), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_3
(
	.q(pdu_3), // OUT
	.d(patdi_3), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_4
(
	.q(pdu_4), // OUT
	.d(patdi_4), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_5
(
	.q(pdu_5), // OUT
	.d(patdi_5), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_6
(
	.q(pdu_6), // OUT
	.d(patdi_6), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_7
(
	.q(pdu_7), // OUT
	.d(patdi_7), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_8
(
	.q(pdu_8), // OUT
	.d(patdi_8), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_9
(
	.q(pdu_9), // OUT
	.d(patdi_9), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_10
(
	.q(pdu_10), // OUT
	.d(patdi_10), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_11
(
	.q(pdu_11), // OUT
	.d(patdi_11), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_12
(
	.q(pdu_12), // OUT
	.d(patdi_12), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_13
(
	.q(pdu_13), // OUT
	.d(patdi_13), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_14
(
	.q(pdu_14), // OUT
	.d(patdi_14), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_15
(
	.q(pdu_15), // OUT
	.d(patdi_15), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_16
(
	.q(pdu_16), // OUT
	.d(patdi_16), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_17
(
	.q(pdu_17), // OUT
	.d(patdi_17), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_18
(
	.q(pdu_18), // OUT
	.d(patdi_18), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_19
(
	.q(pdu_19), // OUT
	.d(patdi_19), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_20
(
	.q(pdu_20), // OUT
	.d(patdi_20), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_21
(
	.q(pdu_21), // OUT
	.d(patdi_21), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_22
(
	.q(pdu_22), // OUT
	.d(patdi_22), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_23
(
	.q(pdu_23), // OUT
	.d(patdi_23), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_24
(
	.q(pdu_24), // OUT
	.d(patdi_24), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_25
(
	.q(pdu_25), // OUT
	.d(patdi_25), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_26
(
	.q(pdu_26), // OUT
	.d(patdi_26), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_27
(
	.q(pdu_27), // OUT
	.d(patdi_27), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_28
(
	.q(pdu_28), // OUT
	.d(patdi_28), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_29
(
	.q(pdu_29), // OUT
	.d(patdi_29), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_30
(
	.q(pdu_30), // OUT
	.d(patdi_30), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_31
(
	.q(pdu_31), // OUT
	.d(patdi_31), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_32
(
	.q(pdu_32), // OUT
	.d(patdi_32), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_33
(
	.q(pdu_33), // OUT
	.d(patdi_33), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_34
(
	.q(pdu_34), // OUT
	.d(patdi_34), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_35
(
	.q(pdu_35), // OUT
	.d(patdi_35), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_36
(
	.q(pdu_36), // OUT
	.d(patdi_36), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_37
(
	.q(pdu_37), // OUT
	.d(patdi_37), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_38
(
	.q(pdu_38), // OUT
	.d(patdi_38), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_39
(
	.q(pdu_39), // OUT
	.d(patdi_39), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_40
(
	.q(pdu_40), // OUT
	.d(patdi_40), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_41
(
	.q(pdu_41), // OUT
	.d(patdi_41), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_42
(
	.q(pdu_42), // OUT
	.d(patdi_42), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_43
(
	.q(pdu_43), // OUT
	.d(patdi_43), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_44
(
	.q(pdu_44), // OUT
	.d(patdi_44), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_45
(
	.q(pdu_45), // OUT
	.d(patdi_45), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_46
(
	.q(pdu_46), // OUT
	.d(patdi_46), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_47
(
	.q(pdu_47), // OUT
	.d(patdi_47), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_48
(
	.q(pdu_48), // OUT
	.d(patdi_48), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_49
(
	.q(pdu_49), // OUT
	.d(patdi_49), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_50
(
	.q(pdu_50), // OUT
	.d(patdi_50), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_51
(
	.q(pdu_51), // OUT
	.d(patdi_51), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_52
(
	.q(pdu_52), // OUT
	.d(patdi_52), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_53
(
	.q(pdu_53), // OUT
	.d(patdi_53), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_54
(
	.q(pdu_54), // OUT
	.d(patdi_54), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_55
(
	.q(pdu_55), // OUT
	.d(patdi_55), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_56
(
	.q(pdu_56), // OUT
	.d(patdi_56), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_57
(
	.q(pdu_57), // OUT
	.d(patdi_57), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_58
(
	.q(pdu_58), // OUT
	.d(patdi_58), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_59
(
	.q(pdu_59), // OUT
	.d(patdi_59), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_60
(
	.q(pdu_60), // OUT
	.d(patdi_60), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_61
(
	.q(pdu_61), // OUT
	.d(patdi_61), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_62
(
	.q(pdu_62), // OUT
	.d(patdi_62), // IN
	.cp(clk)  // IN
);
fd1q pdu_from_0_to_63_inst_63
(
	.q(pdu_63), // OUT
	.d(patdi_63), // IN
	.cp(clk)  // IN
);

// DATA.NET (209) - patdu[0] : join
assign patdu_0[0] = pdu_0;
assign patdu_0[1] = pdu_1;
assign patdu_0[2] = pdu_2;
assign patdu_0[3] = pdu_3;
assign patdu_0[4] = pdu_4;
assign patdu_0[5] = pdu_5;
assign patdu_0[6] = pdu_6;
assign patdu_0[7] = pdu_7;
assign patdu_0[8] = pdu_8;
assign patdu_0[9] = pdu_9;
assign patdu_0[10] = pdu_10;
assign patdu_0[11] = pdu_11;
assign patdu_0[12] = pdu_12;
assign patdu_0[13] = pdu_13;
assign patdu_0[14] = pdu_14;
assign patdu_0[15] = pdu_15;
assign patdu_0[16] = pdu_16;
assign patdu_0[17] = pdu_17;
assign patdu_0[18] = pdu_18;
assign patdu_0[19] = pdu_19;
assign patdu_0[20] = pdu_20;
assign patdu_0[21] = pdu_21;
assign patdu_0[22] = pdu_22;
assign patdu_0[23] = pdu_23;
assign patdu_0[24] = pdu_24;
assign patdu_0[25] = pdu_25;
assign patdu_0[26] = pdu_26;
assign patdu_0[27] = pdu_27;
assign patdu_0[28] = pdu_28;
assign patdu_0[29] = pdu_29;
assign patdu_0[30] = pdu_30;
assign patdu_0[31] = pdu_31;

// DATA.NET (210) - patdu[1] : join
assign patdu_1[0] = pdu_32;
assign patdu_1[1] = pdu_33;
assign patdu_1[2] = pdu_34;
assign patdu_1[3] = pdu_35;
assign patdu_1[4] = pdu_36;
assign patdu_1[5] = pdu_37;
assign patdu_1[6] = pdu_38;
assign patdu_1[7] = pdu_39;
assign patdu_1[8] = pdu_40;
assign patdu_1[9] = pdu_41;
assign patdu_1[10] = pdu_42;
assign patdu_1[11] = pdu_43;
assign patdu_1[12] = pdu_44;
assign patdu_1[13] = pdu_45;
assign patdu_1[14] = pdu_46;
assign patdu_1[15] = pdu_47;
assign patdu_1[16] = pdu_48;
assign patdu_1[17] = pdu_49;
assign patdu_1[18] = pdu_50;
assign patdu_1[19] = pdu_51;
assign patdu_1[20] = pdu_52;
assign patdu_1[21] = pdu_53;
assign patdu_1[22] = pdu_54;
assign patdu_1[23] = pdu_55;
assign patdu_1[24] = pdu_56;
assign patdu_1[25] = pdu_57;
assign patdu_1[26] = pdu_58;
assign patdu_1[27] = pdu_59;
assign patdu_1[28] = pdu_60;
assign patdu_1[29] = pdu_61;
assign patdu_1[30] = pdu_62;
assign patdu_1[31] = pdu_63;

// DATA.NET (211) - dpipeg[0-1] : an2u
assign dpipeg_0 = dpipe_0 & clk2;
assign dpipeg_1 = dpipe_0 & clk2;

// DATA.NET (212) - patd[0-1] : ldp1q
ldp1q patd_from_0_to_1_inst_0
(
	.q(patd_0[0]), // OUT
	.d(patdu_0[0]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_1
(
	.q(patd_0[1]), // OUT
	.d(patdu_0[1]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_2
(
	.q(patd_0[2]), // OUT
	.d(patdu_0[2]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_3
(
	.q(patd_0[3]), // OUT
	.d(patdu_0[3]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_4
(
	.q(patd_0[4]), // OUT
	.d(patdu_0[4]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_5
(
	.q(patd_0[5]), // OUT
	.d(patdu_0[5]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_6
(
	.q(patd_0[6]), // OUT
	.d(patdu_0[6]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_7
(
	.q(patd_0[7]), // OUT
	.d(patdu_0[7]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_8
(
	.q(patd_0[8]), // OUT
	.d(patdu_0[8]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_9
(
	.q(patd_0[9]), // OUT
	.d(patdu_0[9]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_10
(
	.q(patd_0[10]), // OUT
	.d(patdu_0[10]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_11
(
	.q(patd_0[11]), // OUT
	.d(patdu_0[11]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_12
(
	.q(patd_0[12]), // OUT
	.d(patdu_0[12]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_13
(
	.q(patd_0[13]), // OUT
	.d(patdu_0[13]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_14
(
	.q(patd_0[14]), // OUT
	.d(patdu_0[14]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_15
(
	.q(patd_0[15]), // OUT
	.d(patdu_0[15]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_16
(
	.q(patd_0[16]), // OUT
	.d(patdu_0[16]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_17
(
	.q(patd_0[17]), // OUT
	.d(patdu_0[17]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_18
(
	.q(patd_0[18]), // OUT
	.d(patdu_0[18]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_19
(
	.q(patd_0[19]), // OUT
	.d(patdu_0[19]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_20
(
	.q(patd_0[20]), // OUT
	.d(patdu_0[20]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_21
(
	.q(patd_0[21]), // OUT
	.d(patdu_0[21]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_22
(
	.q(patd_0[22]), // OUT
	.d(patdu_0[22]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_23
(
	.q(patd_0[23]), // OUT
	.d(patdu_0[23]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_24
(
	.q(patd_0[24]), // OUT
	.d(patdu_0[24]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_25
(
	.q(patd_0[25]), // OUT
	.d(patdu_0[25]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_26
(
	.q(patd_0[26]), // OUT
	.d(patdu_0[26]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_27
(
	.q(patd_0[27]), // OUT
	.d(patdu_0[27]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_28
(
	.q(patd_0[28]), // OUT
	.d(patdu_0[28]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_29
(
	.q(patd_0[29]), // OUT
	.d(patdu_0[29]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_30
(
	.q(patd_0[30]), // OUT
	.d(patdu_0[30]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_31
(
	.q(patd_0[31]), // OUT
	.d(patdu_0[31]), // IN
	.g(dpipeg_0)  // IN
);
ldp1q patd_from_0_to_1_inst_32
(
	.q(patd_1[0]), // OUT
	.d(patdu_1[0]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_33
(
	.q(patd_1[1]), // OUT
	.d(patdu_1[1]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_34
(
	.q(patd_1[2]), // OUT
	.d(patdu_1[2]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_35
(
	.q(patd_1[3]), // OUT
	.d(patdu_1[3]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_36
(
	.q(patd_1[4]), // OUT
	.d(patdu_1[4]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_37
(
	.q(patd_1[5]), // OUT
	.d(patdu_1[5]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_38
(
	.q(patd_1[6]), // OUT
	.d(patdu_1[6]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_39
(
	.q(patd_1[7]), // OUT
	.d(patdu_1[7]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_40
(
	.q(patd_1[8]), // OUT
	.d(patdu_1[8]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_41
(
	.q(patd_1[9]), // OUT
	.d(patdu_1[9]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_42
(
	.q(patd_1[10]), // OUT
	.d(patdu_1[10]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_43
(
	.q(patd_1[11]), // OUT
	.d(patdu_1[11]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_44
(
	.q(patd_1[12]), // OUT
	.d(patdu_1[12]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_45
(
	.q(patd_1[13]), // OUT
	.d(patdu_1[13]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_46
(
	.q(patd_1[14]), // OUT
	.d(patdu_1[14]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_47
(
	.q(patd_1[15]), // OUT
	.d(patdu_1[15]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_48
(
	.q(patd_1[16]), // OUT
	.d(patdu_1[16]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_49
(
	.q(patd_1[17]), // OUT
	.d(patdu_1[17]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_50
(
	.q(patd_1[18]), // OUT
	.d(patdu_1[18]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_51
(
	.q(patd_1[19]), // OUT
	.d(patdu_1[19]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_52
(
	.q(patd_1[20]), // OUT
	.d(patdu_1[20]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_53
(
	.q(patd_1[21]), // OUT
	.d(patdu_1[21]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_54
(
	.q(patd_1[22]), // OUT
	.d(patdu_1[22]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_55
(
	.q(patd_1[23]), // OUT
	.d(patdu_1[23]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_56
(
	.q(patd_1[24]), // OUT
	.d(patdu_1[24]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_57
(
	.q(patd_1[25]), // OUT
	.d(patdu_1[25]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_58
(
	.q(patd_1[26]), // OUT
	.d(patdu_1[26]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_59
(
	.q(patd_1[27]), // OUT
	.d(patdu_1[27]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_60
(
	.q(patd_1[28]), // OUT
	.d(patdu_1[28]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_61
(
	.q(patd_1[29]), // OUT
	.d(patdu_1[29]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_62
(
	.q(patd_1[30]), // OUT
	.d(patdu_1[30]), // IN
	.g(dpipeg_1)  // IN
);
ldp1q patd_from_0_to_1_inst_63
(
	.q(patd_1[31]), // OUT
	.d(patdu_1[31]), // IN
	.g(dpipeg_1)  // IN
);

// DATA.NET (219) - dpipe1b[0-1] : nivu
assign dpipe1b_0 = dpipe_1;
assign dpipe1b_1 = dpipe_1;

// DATA.NET (220) - patdo[0-1] : fdsync32
fdsync32 patdo_from_0_to_1_inst_0
(
	.q({patdo_0[0],patdo_0[1],patdo_0[2],patdo_0[3],patdo_0[4],patdo_0[5],patdo_0[6],patdo_0[7],patdo_0[8],patdo_0[9],patdo_0[10],patdo_0[11],patdo_0[12],patdo_0[13],patdo_0[14],patdo_0[15],patdo_0[16],patdo_0[17],patdo_0[18],patdo_0[19],patdo_0[20],patdo_0[21],patdo_0[22],patdo_0[23],patdo_0[24],patdo_0[25],patdo_0[26],patdo_0[27],patdo_0[28],patdo_0[29],patdo_0[30],patdo_0[31]}), // IO
	.d({patd_0[0],patd_0[1],patd_0[2],patd_0[3],patd_0[4],patd_0[5],patd_0[6],patd_0[7],patd_0[8],patd_0[9],patd_0[10],patd_0[11],patd_0[12],patd_0[13],patd_0[14],patd_0[15],patd_0[16],patd_0[17],patd_0[18],patd_0[19],patd_0[20],patd_0[21],patd_0[22],patd_0[23],patd_0[24],patd_0[25],patd_0[26],patd_0[27],patd_0[28],patd_0[29],patd_0[30],patd_0[31]}), // IN
	.ld(dpipe1b_0), // IN
	.clk(clk)  // IN
);
fdsync32 patdo_from_0_to_1_inst_1
(
	.q({patdo_1[0],patdo_1[1],patdo_1[2],patdo_1[3],patdo_1[4],patdo_1[5],patdo_1[6],patdo_1[7],patdo_1[8],patdo_1[9],patdo_1[10],patdo_1[11],patdo_1[12],patdo_1[13],patdo_1[14],patdo_1[15],patdo_1[16],patdo_1[17],patdo_1[18],patdo_1[19],patdo_1[20],patdo_1[21],patdo_1[22],patdo_1[23],patdo_1[24],patdo_1[25],patdo_1[26],patdo_1[27],patdo_1[28],patdo_1[29],patdo_1[30],patdo_1[31]}), // IO
	.d({patd_1[0],patd_1[1],patd_1[2],patd_1[3],patd_1[4],patd_1[5],patd_1[6],patd_1[7],patd_1[8],patd_1[9],patd_1[10],patd_1[11],patd_1[12],patd_1[13],patd_1[14],patd_1[15],patd_1[16],patd_1[17],patd_1[18],patd_1[19],patd_1[20],patd_1[21],patd_1[22],patd_1[23],patd_1[24],patd_1[25],patd_1[26],patd_1[27],patd_1[28],patd_1[29],patd_1[30],patd_1[31]}), // IN
	.ld(dpipe1b_1), // IN
	.clk(clk)  // IN
);

// DATA.NET (225) - lfu : lfu
lfu lfu_inst
(
	.lfu_0({lfu_0[0],lfu_0[1],lfu_0[2],lfu_0[3],lfu_0[4],lfu_0[5],lfu_0[6],lfu_0[7],lfu_0[8],lfu_0[9],lfu_0[10],lfu_0[11],lfu_0[12],lfu_0[13],lfu_0[14],lfu_0[15],lfu_0[16],lfu_0[17],lfu_0[18],lfu_0[19],lfu_0[20],lfu_0[21],lfu_0[22],lfu_0[23],lfu_0[24],lfu_0[25],lfu_0[26],lfu_0[27],lfu_0[28],lfu_0[29],lfu_0[30],lfu_0[31]}), // OUT
	.lfu_1({lfu_1[0],lfu_1[1],lfu_1[2],lfu_1[3],lfu_1[4],lfu_1[5],lfu_1[6],lfu_1[7],lfu_1[8],lfu_1[9],lfu_1[10],lfu_1[11],lfu_1[12],lfu_1[13],lfu_1[14],lfu_1[15],lfu_1[16],lfu_1[17],lfu_1[18],lfu_1[19],lfu_1[20],lfu_1[21],lfu_1[22],lfu_1[23],lfu_1[24],lfu_1[25],lfu_1[26],lfu_1[27],lfu_1[28],lfu_1[29],lfu_1[30],lfu_1[31]}), // OUT
	.srcd_0({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}), // IN
	.srcd_1({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}), // IN
	.dstd_0({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}), // IN
	.dstd_1({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}), // IN
	.lfc_0(lfu_func_0), // IN
	.lfc_1(lfu_func_1), // IN
	.lfc_2(lfu_func_2), // IN
	.lfc_3(lfu_func_3)  // IN
);

// DATA.NET (230) - zincldg : an2u
assign zincldg = zincld & load_strobe;

// DATA.NET (231) - zinc : ldp1q
ldp1q zinc_inst_0
(
	.q(zinc[0]), // OUT
	.d(gpu_din[0]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_1
(
	.q(zinc[1]), // OUT
	.d(gpu_din[1]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_2
(
	.q(zinc[2]), // OUT
	.d(gpu_din[2]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_3
(
	.q(zinc[3]), // OUT
	.d(gpu_din[3]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_4
(
	.q(zinc[4]), // OUT
	.d(gpu_din[4]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_5
(
	.q(zinc[5]), // OUT
	.d(gpu_din[5]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_6
(
	.q(zinc[6]), // OUT
	.d(gpu_din[6]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_7
(
	.q(zinc[7]), // OUT
	.d(gpu_din[7]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_8
(
	.q(zinc[8]), // OUT
	.d(gpu_din[8]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_9
(
	.q(zinc[9]), // OUT
	.d(gpu_din[9]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_10
(
	.q(zinc[10]), // OUT
	.d(gpu_din[10]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_11
(
	.q(zinc[11]), // OUT
	.d(gpu_din[11]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_12
(
	.q(zinc[12]), // OUT
	.d(gpu_din[12]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_13
(
	.q(zinc[13]), // OUT
	.d(gpu_din[13]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_14
(
	.q(zinc[14]), // OUT
	.d(gpu_din[14]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_15
(
	.q(zinc[15]), // OUT
	.d(gpu_din[15]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_16
(
	.q(zinc[16]), // OUT
	.d(gpu_din[16]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_17
(
	.q(zinc[17]), // OUT
	.d(gpu_din[17]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_18
(
	.q(zinc[18]), // OUT
	.d(gpu_din[18]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_19
(
	.q(zinc[19]), // OUT
	.d(gpu_din[19]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_20
(
	.q(zinc[20]), // OUT
	.d(gpu_din[20]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_21
(
	.q(zinc[21]), // OUT
	.d(gpu_din[21]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_22
(
	.q(zinc[22]), // OUT
	.d(gpu_din[22]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_23
(
	.q(zinc[23]), // OUT
	.d(gpu_din[23]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_24
(
	.q(zinc[24]), // OUT
	.d(gpu_din[24]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_25
(
	.q(zinc[25]), // OUT
	.d(gpu_din[25]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_26
(
	.q(zinc[26]), // OUT
	.d(gpu_din[26]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_27
(
	.q(zinc[27]), // OUT
	.d(gpu_din[27]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_28
(
	.q(zinc[28]), // OUT
	.d(gpu_din[28]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_29
(
	.q(zinc[29]), // OUT
	.d(gpu_din[29]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_30
(
	.q(zinc[30]), // OUT
	.d(gpu_din[30]), // IN
	.g(zincldg)  // IN
);
ldp1q zinc_inst_31
(
	.q(zinc[31]), // OUT
	.d(gpu_din[31]), // IN
	.g(zincldg)  // IN
);

// DATA.NET (235) - iincldg : an2u
assign iincldg = iincld & load_strobe;

// DATA.NET (236) - iinc : ldp1q
ldp1q iinc_inst_0
(
	.q(iinc[0]), // OUT
	.d(gpu_din[0]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_1
(
	.q(iinc[1]), // OUT
	.d(gpu_din[1]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_2
(
	.q(iinc[2]), // OUT
	.d(gpu_din[2]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_3
(
	.q(iinc[3]), // OUT
	.d(gpu_din[3]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_4
(
	.q(iinc[4]), // OUT
	.d(gpu_din[4]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_5
(
	.q(iinc[5]), // OUT
	.d(gpu_din[5]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_6
(
	.q(iinc[6]), // OUT
	.d(gpu_din[6]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_7
(
	.q(iinc[7]), // OUT
	.d(gpu_din[7]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_8
(
	.q(iinc[8]), // OUT
	.d(gpu_din[8]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_9
(
	.q(iinc[9]), // OUT
	.d(gpu_din[9]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_10
(
	.q(iinc[10]), // OUT
	.d(gpu_din[10]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_11
(
	.q(iinc[11]), // OUT
	.d(gpu_din[11]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_12
(
	.q(iinc[12]), // OUT
	.d(gpu_din[12]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_13
(
	.q(iinc[13]), // OUT
	.d(gpu_din[13]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_14
(
	.q(iinc[14]), // OUT
	.d(gpu_din[14]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_15
(
	.q(iinc[15]), // OUT
	.d(gpu_din[15]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_16
(
	.q(iinc[16]), // OUT
	.d(gpu_din[16]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_17
(
	.q(iinc[17]), // OUT
	.d(gpu_din[17]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_18
(
	.q(iinc[18]), // OUT
	.d(gpu_din[18]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_19
(
	.q(iinc[19]), // OUT
	.d(gpu_din[19]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_20
(
	.q(iinc[20]), // OUT
	.d(gpu_din[20]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_21
(
	.q(iinc[21]), // OUT
	.d(gpu_din[21]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_22
(
	.q(iinc[22]), // OUT
	.d(gpu_din[22]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_23
(
	.q(iinc[23]), // OUT
	.d(gpu_din[23]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_24
(
	.q(iinc[24]), // OUT
	.d(gpu_din[24]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_25
(
	.q(iinc[25]), // OUT
	.d(gpu_din[25]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_26
(
	.q(iinc[26]), // OUT
	.d(gpu_din[26]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_27
(
	.q(iinc[27]), // OUT
	.d(gpu_din[27]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_28
(
	.q(iinc[28]), // OUT
	.d(gpu_din[28]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_29
(
	.q(iinc[29]), // OUT
	.d(gpu_din[29]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_30
(
	.q(iinc[30]), // OUT
	.d(gpu_din[30]), // IN
	.g(iincldg)  // IN
);
ldp1q iinc_inst_31
(
	.q(iinc[31]), // OUT
	.d(gpu_din[31]), // IN
	.g(iincldg)  // IN
);

// DATA.NET (240) - datacomp : datacomp
datacomp datacomp_inst
(
	.dcomp_0(dcomp_0), // OUT
	.dcomp_1(dcomp_1), // OUT
	.dcomp_2(dcomp_2), // OUT
	.dcomp_3(dcomp_3), // OUT
	.dcomp_4(dcomp_4), // OUT
	.dcomp_5(dcomp_5), // OUT
	.dcomp_6(dcomp_6), // OUT
	.dcomp_7(dcomp_7), // OUT
	.cmpdst(cmpdst), // IN
	.dstdlo({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}), // IN
	.dstdhi({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}), // IN
	.patdlo({patd_0[0],patd_0[1],patd_0[2],patd_0[3],patd_0[4],patd_0[5],patd_0[6],patd_0[7],patd_0[8],patd_0[9],patd_0[10],patd_0[11],patd_0[12],patd_0[13],patd_0[14],patd_0[15],patd_0[16],patd_0[17],patd_0[18],patd_0[19],patd_0[20],patd_0[21],patd_0[22],patd_0[23],patd_0[24],patd_0[25],patd_0[26],patd_0[27],patd_0[28],patd_0[29],patd_0[30],patd_0[31]}), // IN
	.patdhi({patd_1[0],patd_1[1],patd_1[2],patd_1[3],patd_1[4],patd_1[5],patd_1[6],patd_1[7],patd_1[8],patd_1[9],patd_1[10],patd_1[11],patd_1[12],patd_1[13],patd_1[14],patd_1[15],patd_1[16],patd_1[17],patd_1[18],patd_1[19],patd_1[20],patd_1[21],patd_1[22],patd_1[23],patd_1[24],patd_1[25],patd_1[26],patd_1[27],patd_1[28],patd_1[29],patd_1[30],patd_1[31]}), // IN
	.srcdlo({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}), // IN
	.srcdhi({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]})  // IN
);

// DATA.NET (245) - zedshift : zedshift
zedshift zedshift_inst
(
	.srczlo({srcz_0[0],srcz_0[1],srcz_0[2],srcz_0[3],srcz_0[4],srcz_0[5],srcz_0[6],srcz_0[7],srcz_0[8],srcz_0[9],srcz_0[10],srcz_0[11],srcz_0[12],srcz_0[13],srcz_0[14],srcz_0[15],srcz_0[16],srcz_0[17],srcz_0[18],srcz_0[19],srcz_0[20],srcz_0[21],srcz_0[22],srcz_0[23],srcz_0[24],srcz_0[25],srcz_0[26],srcz_0[27],srcz_0[28],srcz_0[29],srcz_0[30],srcz_0[31]}), // OUT
	.srczhi({srcz_1[0],srcz_1[1],srcz_1[2],srcz_1[3],srcz_1[4],srcz_1[5],srcz_1[6],srcz_1[7],srcz_1[8],srcz_1[9],srcz_1[10],srcz_1[11],srcz_1[12],srcz_1[13],srcz_1[14],srcz_1[15],srcz_1[16],srcz_1[17],srcz_1[18],srcz_1[19],srcz_1[20],srcz_1[21],srcz_1[22],srcz_1[23],srcz_1[24],srcz_1[25],srcz_1[26],srcz_1[27],srcz_1[28],srcz_1[29],srcz_1[30],srcz_1[31]}), // OUT
	.srcz1lo({srcz1_0[0],srcz1_0[1],srcz1_0[2],srcz1_0[3],srcz1_0[4],srcz1_0[5],srcz1_0[6],srcz1_0[7],srcz1_0[8],srcz1_0[9],srcz1_0[10],srcz1_0[11],srcz1_0[12],srcz1_0[13],srcz1_0[14],srcz1_0[15],srcz1_0[16],srcz1_0[17],srcz1_0[18],srcz1_0[19],srcz1_0[20],srcz1_0[21],srcz1_0[22],srcz1_0[23],srcz1_0[24],srcz1_0[25],srcz1_0[26],srcz1_0[27],srcz1_0[28],srcz1_0[29],srcz1_0[30],srcz1_0[31]}), // IN
	.srcz1hi({srcz1_1[0],srcz1_1[1],srcz1_1[2],srcz1_1[3],srcz1_1[4],srcz1_1[5],srcz1_1[6],srcz1_1[7],srcz1_1[8],srcz1_1[9],srcz1_1[10],srcz1_1[11],srcz1_1[12],srcz1_1[13],srcz1_1[14],srcz1_1[15],srcz1_1[16],srcz1_1[17],srcz1_1[18],srcz1_1[19],srcz1_1[20],srcz1_1[21],srcz1_1[22],srcz1_1[23],srcz1_1[24],srcz1_1[25],srcz1_1[26],srcz1_1[27],srcz1_1[28],srcz1_1[29],srcz1_1[30],srcz1_1[31]}), // IN
	.srcz2lo({srcz2_0[0],srcz2_0[1],srcz2_0[2],srcz2_0[3],srcz2_0[4],srcz2_0[5],srcz2_0[6],srcz2_0[7],srcz2_0[8],srcz2_0[9],srcz2_0[10],srcz2_0[11],srcz2_0[12],srcz2_0[13],srcz2_0[14],srcz2_0[15],srcz2_0[16],srcz2_0[17],srcz2_0[18],srcz2_0[19],srcz2_0[20],srcz2_0[21],srcz2_0[22],srcz2_0[23],srcz2_0[24],srcz2_0[25],srcz2_0[26],srcz2_0[27],srcz2_0[28],srcz2_0[29],srcz2_0[30],srcz2_0[31]}), // IN
	.srcz2hi({srcz2_1[0],srcz2_1[1],srcz2_1[2],srcz2_1[3],srcz2_1[4],srcz2_1[5],srcz2_1[6],srcz2_1[7],srcz2_1[8],srcz2_1[9],srcz2_1[10],srcz2_1[11],srcz2_1[12],srcz2_1[13],srcz2_1[14],srcz2_1[15],srcz2_1[16],srcz2_1[17],srcz2_1[18],srcz2_1[19],srcz2_1[20],srcz2_1[21],srcz2_1[22],srcz2_1[23],srcz2_1[24],srcz2_1[25],srcz2_1[26],srcz2_1[27],srcz2_1[28],srcz2_1[29],srcz2_1[30],srcz2_1[31]}), // IN
	.srcshift_4(srcshift_4), // IN
	.srcshift_5(srcshift_5)  // IN
);

// DATA.NET (252) - zpipe0b[0-1] : nivu
assign zpipe0b_0 = zpipe_0;
assign zpipe0b_1 = zpipe_0;

// DATA.NET (253) - srczp[0] : mx2p
mx2 srczp_index_0_inst_0
(
	.z(srczp_0[0]), // OUT
	.a0(srczpt_0[0]), // IN
	.a1(srcz_0[0]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_1
(
	.z(srczp_0[1]), // OUT
	.a0(srczpt_0[1]), // IN
	.a1(srcz_0[1]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_2
(
	.z(srczp_0[2]), // OUT
	.a0(srczpt_0[2]), // IN
	.a1(srcz_0[2]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_3
(
	.z(srczp_0[3]), // OUT
	.a0(srczpt_0[3]), // IN
	.a1(srcz_0[3]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_4
(
	.z(srczp_0[4]), // OUT
	.a0(srczpt_0[4]), // IN
	.a1(srcz_0[4]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_5
(
	.z(srczp_0[5]), // OUT
	.a0(srczpt_0[5]), // IN
	.a1(srcz_0[5]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_6
(
	.z(srczp_0[6]), // OUT
	.a0(srczpt_0[6]), // IN
	.a1(srcz_0[6]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_7
(
	.z(srczp_0[7]), // OUT
	.a0(srczpt_0[7]), // IN
	.a1(srcz_0[7]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_8
(
	.z(srczp_0[8]), // OUT
	.a0(srczpt_0[8]), // IN
	.a1(srcz_0[8]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_9
(
	.z(srczp_0[9]), // OUT
	.a0(srczpt_0[9]), // IN
	.a1(srcz_0[9]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_10
(
	.z(srczp_0[10]), // OUT
	.a0(srczpt_0[10]), // IN
	.a1(srcz_0[10]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_11
(
	.z(srczp_0[11]), // OUT
	.a0(srczpt_0[11]), // IN
	.a1(srcz_0[11]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_12
(
	.z(srczp_0[12]), // OUT
	.a0(srczpt_0[12]), // IN
	.a1(srcz_0[12]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_13
(
	.z(srczp_0[13]), // OUT
	.a0(srczpt_0[13]), // IN
	.a1(srcz_0[13]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_14
(
	.z(srczp_0[14]), // OUT
	.a0(srczpt_0[14]), // IN
	.a1(srcz_0[14]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_15
(
	.z(srczp_0[15]), // OUT
	.a0(srczpt_0[15]), // IN
	.a1(srcz_0[15]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_16
(
	.z(srczp_0[16]), // OUT
	.a0(srczpt_0[16]), // IN
	.a1(srcz_0[16]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_17
(
	.z(srczp_0[17]), // OUT
	.a0(srczpt_0[17]), // IN
	.a1(srcz_0[17]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_18
(
	.z(srczp_0[18]), // OUT
	.a0(srczpt_0[18]), // IN
	.a1(srcz_0[18]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_19
(
	.z(srczp_0[19]), // OUT
	.a0(srczpt_0[19]), // IN
	.a1(srcz_0[19]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_20
(
	.z(srczp_0[20]), // OUT
	.a0(srczpt_0[20]), // IN
	.a1(srcz_0[20]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_21
(
	.z(srczp_0[21]), // OUT
	.a0(srczpt_0[21]), // IN
	.a1(srcz_0[21]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_22
(
	.z(srczp_0[22]), // OUT
	.a0(srczpt_0[22]), // IN
	.a1(srcz_0[22]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_23
(
	.z(srczp_0[23]), // OUT
	.a0(srczpt_0[23]), // IN
	.a1(srcz_0[23]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_24
(
	.z(srczp_0[24]), // OUT
	.a0(srczpt_0[24]), // IN
	.a1(srcz_0[24]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_25
(
	.z(srczp_0[25]), // OUT
	.a0(srczpt_0[25]), // IN
	.a1(srcz_0[25]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_26
(
	.z(srczp_0[26]), // OUT
	.a0(srczpt_0[26]), // IN
	.a1(srcz_0[26]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_27
(
	.z(srczp_0[27]), // OUT
	.a0(srczpt_0[27]), // IN
	.a1(srcz_0[27]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_28
(
	.z(srczp_0[28]), // OUT
	.a0(srczpt_0[28]), // IN
	.a1(srcz_0[28]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_29
(
	.z(srczp_0[29]), // OUT
	.a0(srczpt_0[29]), // IN
	.a1(srcz_0[29]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_30
(
	.z(srczp_0[30]), // OUT
	.a0(srczpt_0[30]), // IN
	.a1(srcz_0[30]), // IN
	.s(zpipe0b_0)  // IN
);
mx2 srczp_index_0_inst_31
(
	.z(srczp_0[31]), // OUT
	.a0(srczpt_0[31]), // IN
	.a1(srcz_0[31]), // IN
	.s(zpipe0b_0)  // IN
);

// DATA.NET (254) - srczp[1] : mx2p
mx2 srczp_index_1_inst_0
(
	.z(srczp_1[0]), // OUT
	.a0(srczpt_1[0]), // IN
	.a1(srcz_1[0]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_1
(
	.z(srczp_1[1]), // OUT
	.a0(srczpt_1[1]), // IN
	.a1(srcz_1[1]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_2
(
	.z(srczp_1[2]), // OUT
	.a0(srczpt_1[2]), // IN
	.a1(srcz_1[2]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_3
(
	.z(srczp_1[3]), // OUT
	.a0(srczpt_1[3]), // IN
	.a1(srcz_1[3]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_4
(
	.z(srczp_1[4]), // OUT
	.a0(srczpt_1[4]), // IN
	.a1(srcz_1[4]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_5
(
	.z(srczp_1[5]), // OUT
	.a0(srczpt_1[5]), // IN
	.a1(srcz_1[5]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_6
(
	.z(srczp_1[6]), // OUT
	.a0(srczpt_1[6]), // IN
	.a1(srcz_1[6]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_7
(
	.z(srczp_1[7]), // OUT
	.a0(srczpt_1[7]), // IN
	.a1(srcz_1[7]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_8
(
	.z(srczp_1[8]), // OUT
	.a0(srczpt_1[8]), // IN
	.a1(srcz_1[8]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_9
(
	.z(srczp_1[9]), // OUT
	.a0(srczpt_1[9]), // IN
	.a1(srcz_1[9]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_10
(
	.z(srczp_1[10]), // OUT
	.a0(srczpt_1[10]), // IN
	.a1(srcz_1[10]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_11
(
	.z(srczp_1[11]), // OUT
	.a0(srczpt_1[11]), // IN
	.a1(srcz_1[11]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_12
(
	.z(srczp_1[12]), // OUT
	.a0(srczpt_1[12]), // IN
	.a1(srcz_1[12]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_13
(
	.z(srczp_1[13]), // OUT
	.a0(srczpt_1[13]), // IN
	.a1(srcz_1[13]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_14
(
	.z(srczp_1[14]), // OUT
	.a0(srczpt_1[14]), // IN
	.a1(srcz_1[14]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_15
(
	.z(srczp_1[15]), // OUT
	.a0(srczpt_1[15]), // IN
	.a1(srcz_1[15]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_16
(
	.z(srczp_1[16]), // OUT
	.a0(srczpt_1[16]), // IN
	.a1(srcz_1[16]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_17
(
	.z(srczp_1[17]), // OUT
	.a0(srczpt_1[17]), // IN
	.a1(srcz_1[17]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_18
(
	.z(srczp_1[18]), // OUT
	.a0(srczpt_1[18]), // IN
	.a1(srcz_1[18]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_19
(
	.z(srczp_1[19]), // OUT
	.a0(srczpt_1[19]), // IN
	.a1(srcz_1[19]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_20
(
	.z(srczp_1[20]), // OUT
	.a0(srczpt_1[20]), // IN
	.a1(srcz_1[20]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_21
(
	.z(srczp_1[21]), // OUT
	.a0(srczpt_1[21]), // IN
	.a1(srcz_1[21]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_22
(
	.z(srczp_1[22]), // OUT
	.a0(srczpt_1[22]), // IN
	.a1(srcz_1[22]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_23
(
	.z(srczp_1[23]), // OUT
	.a0(srczpt_1[23]), // IN
	.a1(srcz_1[23]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_24
(
	.z(srczp_1[24]), // OUT
	.a0(srczpt_1[24]), // IN
	.a1(srcz_1[24]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_25
(
	.z(srczp_1[25]), // OUT
	.a0(srczpt_1[25]), // IN
	.a1(srcz_1[25]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_26
(
	.z(srczp_1[26]), // OUT
	.a0(srczpt_1[26]), // IN
	.a1(srcz_1[26]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_27
(
	.z(srczp_1[27]), // OUT
	.a0(srczpt_1[27]), // IN
	.a1(srcz_1[27]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_28
(
	.z(srczp_1[28]), // OUT
	.a0(srczpt_1[28]), // IN
	.a1(srcz_1[28]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_29
(
	.z(srczp_1[29]), // OUT
	.a0(srczpt_1[29]), // IN
	.a1(srcz_1[29]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_30
(
	.z(srczp_1[30]), // OUT
	.a0(srczpt_1[30]), // IN
	.a1(srcz_1[30]), // IN
	.s(zpipe0b_1)  // IN
);
mx2 srczp_index_1_inst_31
(
	.z(srczp_1[31]), // OUT
	.a0(srczpt_1[31]), // IN
	.a1(srcz_1[31]), // IN
	.s(zpipe0b_1)  // IN
);

// DATA.NET (255) - srczpt[0-1] : fd1q
fd1q srczpt_from_0_to_1_inst_0
(
	.q(srczpt_0[0]), // OUT
	.d(srczp_0[0]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_1
(
	.q(srczpt_0[1]), // OUT
	.d(srczp_0[1]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_2
(
	.q(srczpt_0[2]), // OUT
	.d(srczp_0[2]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_3
(
	.q(srczpt_0[3]), // OUT
	.d(srczp_0[3]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_4
(
	.q(srczpt_0[4]), // OUT
	.d(srczp_0[4]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_5
(
	.q(srczpt_0[5]), // OUT
	.d(srczp_0[5]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_6
(
	.q(srczpt_0[6]), // OUT
	.d(srczp_0[6]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_7
(
	.q(srczpt_0[7]), // OUT
	.d(srczp_0[7]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_8
(
	.q(srczpt_0[8]), // OUT
	.d(srczp_0[8]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_9
(
	.q(srczpt_0[9]), // OUT
	.d(srczp_0[9]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_10
(
	.q(srczpt_0[10]), // OUT
	.d(srczp_0[10]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_11
(
	.q(srczpt_0[11]), // OUT
	.d(srczp_0[11]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_12
(
	.q(srczpt_0[12]), // OUT
	.d(srczp_0[12]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_13
(
	.q(srczpt_0[13]), // OUT
	.d(srczp_0[13]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_14
(
	.q(srczpt_0[14]), // OUT
	.d(srczp_0[14]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_15
(
	.q(srczpt_0[15]), // OUT
	.d(srczp_0[15]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_16
(
	.q(srczpt_0[16]), // OUT
	.d(srczp_0[16]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_17
(
	.q(srczpt_0[17]), // OUT
	.d(srczp_0[17]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_18
(
	.q(srczpt_0[18]), // OUT
	.d(srczp_0[18]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_19
(
	.q(srczpt_0[19]), // OUT
	.d(srczp_0[19]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_20
(
	.q(srczpt_0[20]), // OUT
	.d(srczp_0[20]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_21
(
	.q(srczpt_0[21]), // OUT
	.d(srczp_0[21]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_22
(
	.q(srczpt_0[22]), // OUT
	.d(srczp_0[22]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_23
(
	.q(srczpt_0[23]), // OUT
	.d(srczp_0[23]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_24
(
	.q(srczpt_0[24]), // OUT
	.d(srczp_0[24]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_25
(
	.q(srczpt_0[25]), // OUT
	.d(srczp_0[25]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_26
(
	.q(srczpt_0[26]), // OUT
	.d(srczp_0[26]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_27
(
	.q(srczpt_0[27]), // OUT
	.d(srczp_0[27]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_28
(
	.q(srczpt_0[28]), // OUT
	.d(srczp_0[28]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_29
(
	.q(srczpt_0[29]), // OUT
	.d(srczp_0[29]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_30
(
	.q(srczpt_0[30]), // OUT
	.d(srczp_0[30]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_31
(
	.q(srczpt_0[31]), // OUT
	.d(srczp_0[31]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_32
(
	.q(srczpt_1[0]), // OUT
	.d(srczp_1[0]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_33
(
	.q(srczpt_1[1]), // OUT
	.d(srczp_1[1]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_34
(
	.q(srczpt_1[2]), // OUT
	.d(srczp_1[2]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_35
(
	.q(srczpt_1[3]), // OUT
	.d(srczp_1[3]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_36
(
	.q(srczpt_1[4]), // OUT
	.d(srczp_1[4]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_37
(
	.q(srczpt_1[5]), // OUT
	.d(srczp_1[5]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_38
(
	.q(srczpt_1[6]), // OUT
	.d(srczp_1[6]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_39
(
	.q(srczpt_1[7]), // OUT
	.d(srczp_1[7]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_40
(
	.q(srczpt_1[8]), // OUT
	.d(srczp_1[8]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_41
(
	.q(srczpt_1[9]), // OUT
	.d(srczp_1[9]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_42
(
	.q(srczpt_1[10]), // OUT
	.d(srczp_1[10]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_43
(
	.q(srczpt_1[11]), // OUT
	.d(srczp_1[11]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_44
(
	.q(srczpt_1[12]), // OUT
	.d(srczp_1[12]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_45
(
	.q(srczpt_1[13]), // OUT
	.d(srczp_1[13]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_46
(
	.q(srczpt_1[14]), // OUT
	.d(srczp_1[14]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_47
(
	.q(srczpt_1[15]), // OUT
	.d(srczp_1[15]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_48
(
	.q(srczpt_1[16]), // OUT
	.d(srczp_1[16]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_49
(
	.q(srczpt_1[17]), // OUT
	.d(srczp_1[17]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_50
(
	.q(srczpt_1[18]), // OUT
	.d(srczp_1[18]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_51
(
	.q(srczpt_1[19]), // OUT
	.d(srczp_1[19]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_52
(
	.q(srczpt_1[20]), // OUT
	.d(srczp_1[20]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_53
(
	.q(srczpt_1[21]), // OUT
	.d(srczp_1[21]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_54
(
	.q(srczpt_1[22]), // OUT
	.d(srczp_1[22]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_55
(
	.q(srczpt_1[23]), // OUT
	.d(srczp_1[23]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_56
(
	.q(srczpt_1[24]), // OUT
	.d(srczp_1[24]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_57
(
	.q(srczpt_1[25]), // OUT
	.d(srczp_1[25]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_58
(
	.q(srczpt_1[26]), // OUT
	.d(srczp_1[26]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_59
(
	.q(srczpt_1[27]), // OUT
	.d(srczp_1[27]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_60
(
	.q(srczpt_1[28]), // OUT
	.d(srczp_1[28]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_61
(
	.q(srczpt_1[29]), // OUT
	.d(srczp_1[29]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_62
(
	.q(srczpt_1[30]), // OUT
	.d(srczp_1[30]), // IN
	.cp(clk)  // IN
);
fd1q srczpt_from_0_to_1_inst_63
(
	.q(srczpt_1[31]), // OUT
	.d(srczp_1[31]), // IN
	.cp(clk)  // IN
);

// DATA.NET (259) - zedcomp : zedcomp
zedcomp zedcomp_inst
(
	.zcomp_0(zcomp_0), // OUT
	.zcomp_1(zcomp_1), // OUT
	.zcomp_2(zcomp_2), // OUT
	.zcomp_3(zcomp_3), // OUT
	.srczplo({srczp_0[0],srczp_0[1],srczp_0[2],srczp_0[3],srczp_0[4],srczp_0[5],srczp_0[6],srczp_0[7],srczp_0[8],srczp_0[9],srczp_0[10],srczp_0[11],srczp_0[12],srczp_0[13],srczp_0[14],srczp_0[15],srczp_0[16],srczp_0[17],srczp_0[18],srczp_0[19],srczp_0[20],srczp_0[21],srczp_0[22],srczp_0[23],srczp_0[24],srczp_0[25],srczp_0[26],srczp_0[27],srczp_0[28],srczp_0[29],srczp_0[30],srczp_0[31]}), // IN
	.srczphi({srczp_1[0],srczp_1[1],srczp_1[2],srczp_1[3],srczp_1[4],srczp_1[5],srczp_1[6],srczp_1[7],srczp_1[8],srczp_1[9],srczp_1[10],srczp_1[11],srczp_1[12],srczp_1[13],srczp_1[14],srczp_1[15],srczp_1[16],srczp_1[17],srczp_1[18],srczp_1[19],srczp_1[20],srczp_1[21],srczp_1[22],srczp_1[23],srczp_1[24],srczp_1[25],srczp_1[26],srczp_1[27],srczp_1[28],srczp_1[29],srczp_1[30],srczp_1[31]}), // IN
	.dstzlo({dstz_0[0],dstz_0[1],dstz_0[2],dstz_0[3],dstz_0[4],dstz_0[5],dstz_0[6],dstz_0[7],dstz_0[8],dstz_0[9],dstz_0[10],dstz_0[11],dstz_0[12],dstz_0[13],dstz_0[14],dstz_0[15],dstz_0[16],dstz_0[17],dstz_0[18],dstz_0[19],dstz_0[20],dstz_0[21],dstz_0[22],dstz_0[23],dstz_0[24],dstz_0[25],dstz_0[26],dstz_0[27],dstz_0[28],dstz_0[29],dstz_0[30],dstz_0[31]}), // IN
	.dstzhi({dstz_1[0],dstz_1[1],dstz_1[2],dstz_1[3],dstz_1[4],dstz_1[5],dstz_1[6],dstz_1[7],dstz_1[8],dstz_1[9],dstz_1[10],dstz_1[11],dstz_1[12],dstz_1[13],dstz_1[14],dstz_1[15],dstz_1[16],dstz_1[17],dstz_1[18],dstz_1[19],dstz_1[20],dstz_1[21],dstz_1[22],dstz_1[23],dstz_1[24],dstz_1[25],dstz_1[26],dstz_1[27],dstz_1[28],dstz_1[29],dstz_1[30],dstz_1[31]}), // IN
	.zmode_0(zmode_0), // IN
	.zmode_1(zmode_1), // IN
	.zmode_2(zmode_2)  // IN
);

// DATA.NET (267) - zpipe1b[0-1] : nivu
assign zpipe1b_0 = zpipe_1;
assign zpipe1b_1 = zpipe_1;

// DATA.NET (268) - srczo[0-1] : fdsync32
fdsync32 srczo_from_0_to_1_inst_0
(
	.q({srczo_0[0],srczo_0[1],srczo_0[2],srczo_0[3],srczo_0[4],srczo_0[5],srczo_0[6],srczo_0[7],srczo_0[8],srczo_0[9],srczo_0[10],srczo_0[11],srczo_0[12],srczo_0[13],srczo_0[14],srczo_0[15],srczo_0[16],srczo_0[17],srczo_0[18],srczo_0[19],srczo_0[20],srczo_0[21],srczo_0[22],srczo_0[23],srczo_0[24],srczo_0[25],srczo_0[26],srczo_0[27],srczo_0[28],srczo_0[29],srczo_0[30],srczo_0[31]}), // IO
	.d({srczp_0[0],srczp_0[1],srczp_0[2],srczp_0[3],srczp_0[4],srczp_0[5],srczp_0[6],srczp_0[7],srczp_0[8],srczp_0[9],srczp_0[10],srczp_0[11],srczp_0[12],srczp_0[13],srczp_0[14],srczp_0[15],srczp_0[16],srczp_0[17],srczp_0[18],srczp_0[19],srczp_0[20],srczp_0[21],srczp_0[22],srczp_0[23],srczp_0[24],srczp_0[25],srczp_0[26],srczp_0[27],srczp_0[28],srczp_0[29],srczp_0[30],srczp_0[31]}), // IN
	.ld(zpipe1b_0), // IN
	.clk(clk)  // IN
);
fdsync32 srczo_from_0_to_1_inst_1
(
	.q({srczo_1[0],srczo_1[1],srczo_1[2],srczo_1[3],srczo_1[4],srczo_1[5],srczo_1[6],srczo_1[7],srczo_1[8],srczo_1[9],srczo_1[10],srczo_1[11],srczo_1[12],srczo_1[13],srczo_1[14],srczo_1[15],srczo_1[16],srczo_1[17],srczo_1[18],srczo_1[19],srczo_1[20],srczo_1[21],srczo_1[22],srczo_1[23],srczo_1[24],srczo_1[25],srczo_1[26],srczo_1[27],srczo_1[28],srczo_1[29],srczo_1[30],srczo_1[31]}), // IO
	.d({srczp_1[0],srczp_1[1],srczp_1[2],srczp_1[3],srczp_1[4],srczp_1[5],srczp_1[6],srczp_1[7],srczp_1[8],srczp_1[9],srczp_1[10],srczp_1[11],srczp_1[12],srczp_1[13],srczp_1[14],srczp_1[15],srczp_1[16],srczp_1[17],srczp_1[18],srczp_1[19],srczp_1[20],srczp_1[21],srczp_1[22],srczp_1[23],srczp_1[24],srczp_1[25],srczp_1[26],srczp_1[27],srczp_1[28],srczp_1[29],srczp_1[30],srczp_1[31]}), // IN
	.ld(zpipe1b_1), // IN
	.clk(clk)  // IN
);

// DATA.NET (273) - addamux : daddamux
daddamux addamux_inst
(
	.adda_0({adda_0[0],adda_0[1],adda_0[2],adda_0[3],adda_0[4],adda_0[5],adda_0[6],adda_0[7],adda_0[8],adda_0[9],adda_0[10],adda_0[11],adda_0[12],adda_0[13],adda_0[14],adda_0[15]}), // OUT
	.adda_1({adda_1[0],adda_1[1],adda_1[2],adda_1[3],adda_1[4],adda_1[5],adda_1[6],adda_1[7],adda_1[8],adda_1[9],adda_1[10],adda_1[11],adda_1[12],adda_1[13],adda_1[14],adda_1[15]}), // OUT
	.adda_2({adda_2[0],adda_2[1],adda_2[2],adda_2[3],adda_2[4],adda_2[5],adda_2[6],adda_2[7],adda_2[8],adda_2[9],adda_2[10],adda_2[11],adda_2[12],adda_2[13],adda_2[14],adda_2[15]}), // OUT
	.adda_3({adda_3[0],adda_3[1],adda_3[2],adda_3[3],adda_3[4],adda_3[5],adda_3[6],adda_3[7],adda_3[8],adda_3[9],adda_3[10],adda_3[11],adda_3[12],adda_3[13],adda_3[14],adda_3[15]}), // OUT
	.dstd_0({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}), // IN
	.dstd_1({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}), // IN
	.srcd_0({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}), // IN
	.srcd_1({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}), // IN
	.patd_0({patdu_0[0],patdu_0[1],patdu_0[2],patdu_0[3],patdu_0[4],patdu_0[5],patdu_0[6],patdu_0[7],patdu_0[8],patdu_0[9],patdu_0[10],patdu_0[11],patdu_0[12],patdu_0[13],patdu_0[14],patdu_0[15],patdu_0[16],patdu_0[17],patdu_0[18],patdu_0[19],patdu_0[20],patdu_0[21],patdu_0[22],patdu_0[23],patdu_0[24],patdu_0[25],patdu_0[26],patdu_0[27],patdu_0[28],patdu_0[29],patdu_0[30],patdu_0[31]}), // IN
	.patd_1({patdu_1[0],patdu_1[1],patdu_1[2],patdu_1[3],patdu_1[4],patdu_1[5],patdu_1[6],patdu_1[7],patdu_1[8],patdu_1[9],patdu_1[10],patdu_1[11],patdu_1[12],patdu_1[13],patdu_1[14],patdu_1[15],patdu_1[16],patdu_1[17],patdu_1[18],patdu_1[19],patdu_1[20],patdu_1[21],patdu_1[22],patdu_1[23],patdu_1[24],patdu_1[25],patdu_1[26],patdu_1[27],patdu_1[28],patdu_1[29],patdu_1[30],patdu_1[31]}), // IN
	.srcz1_0({srcz1_0[0],srcz1_0[1],srcz1_0[2],srcz1_0[3],srcz1_0[4],srcz1_0[5],srcz1_0[6],srcz1_0[7],srcz1_0[8],srcz1_0[9],srcz1_0[10],srcz1_0[11],srcz1_0[12],srcz1_0[13],srcz1_0[14],srcz1_0[15],srcz1_0[16],srcz1_0[17],srcz1_0[18],srcz1_0[19],srcz1_0[20],srcz1_0[21],srcz1_0[22],srcz1_0[23],srcz1_0[24],srcz1_0[25],srcz1_0[26],srcz1_0[27],srcz1_0[28],srcz1_0[29],srcz1_0[30],srcz1_0[31]}), // IN
	.srcz1_1({srcz1_1[0],srcz1_1[1],srcz1_1[2],srcz1_1[3],srcz1_1[4],srcz1_1[5],srcz1_1[6],srcz1_1[7],srcz1_1[8],srcz1_1[9],srcz1_1[10],srcz1_1[11],srcz1_1[12],srcz1_1[13],srcz1_1[14],srcz1_1[15],srcz1_1[16],srcz1_1[17],srcz1_1[18],srcz1_1[19],srcz1_1[20],srcz1_1[21],srcz1_1[22],srcz1_1[23],srcz1_1[24],srcz1_1[25],srcz1_1[26],srcz1_1[27],srcz1_1[28],srcz1_1[29],srcz1_1[30],srcz1_1[31]}), // IN
	.srcz2_0({srcz2_0[0],srcz2_0[1],srcz2_0[2],srcz2_0[3],srcz2_0[4],srcz2_0[5],srcz2_0[6],srcz2_0[7],srcz2_0[8],srcz2_0[9],srcz2_0[10],srcz2_0[11],srcz2_0[12],srcz2_0[13],srcz2_0[14],srcz2_0[15],srcz2_0[16],srcz2_0[17],srcz2_0[18],srcz2_0[19],srcz2_0[20],srcz2_0[21],srcz2_0[22],srcz2_0[23],srcz2_0[24],srcz2_0[25],srcz2_0[26],srcz2_0[27],srcz2_0[28],srcz2_0[29],srcz2_0[30],srcz2_0[31]}), // IN
	.srcz2_1({srcz2_1[0],srcz2_1[1],srcz2_1[2],srcz2_1[3],srcz2_1[4],srcz2_1[5],srcz2_1[6],srcz2_1[7],srcz2_1[8],srcz2_1[9],srcz2_1[10],srcz2_1[11],srcz2_1[12],srcz2_1[13],srcz2_1[14],srcz2_1[15],srcz2_1[16],srcz2_1[17],srcz2_1[18],srcz2_1[19],srcz2_1[20],srcz2_1[21],srcz2_1[22],srcz2_1[23],srcz2_1[24],srcz2_1[25],srcz2_1[26],srcz2_1[27],srcz2_1[28],srcz2_1[29],srcz2_1[30],srcz2_1[31]}), // IN
	.daddasel_0(daddasel_0), // IN
	.daddasel_1(daddasel_1), // IN
	.daddasel_2(daddasel_2)  // IN
);

// DATA.NET (279) - addbmux : daddbmux
daddbmux addbmux_inst
(
	.addb_0({addb_0[0],addb_0[1],addb_0[2],addb_0[3],addb_0[4],addb_0[5],addb_0[6],addb_0[7],addb_0[8],addb_0[9],addb_0[10],addb_0[11],addb_0[12],addb_0[13],addb_0[14],addb_0[15]}), // OUT
	.addb_1({addb_1[0],addb_1[1],addb_1[2],addb_1[3],addb_1[4],addb_1[5],addb_1[6],addb_1[7],addb_1[8],addb_1[9],addb_1[10],addb_1[11],addb_1[12],addb_1[13],addb_1[14],addb_1[15]}), // OUT
	.addb_2({addb_2[0],addb_2[1],addb_2[2],addb_2[3],addb_2[4],addb_2[5],addb_2[6],addb_2[7],addb_2[8],addb_2[9],addb_2[10],addb_2[11],addb_2[12],addb_2[13],addb_2[14],addb_2[15]}), // OUT
	.addb_3({addb_3[0],addb_3[1],addb_3[2],addb_3[3],addb_3[4],addb_3[5],addb_3[6],addb_3[7],addb_3[8],addb_3[9],addb_3[10],addb_3[11],addb_3[12],addb_3[13],addb_3[14],addb_3[15]}), // OUT
	.srcdlo({srcdlo[0],srcdlo[1],srcdlo[2],srcdlo[3],srcdlo[4],srcdlo[5],srcdlo[6],srcdlo[7],srcdlo[8],srcdlo[9],srcdlo[10],srcdlo[11],srcdlo[12],srcdlo[13],srcdlo[14],srcdlo[15],srcdlo[16],srcdlo[17],srcdlo[18],srcdlo[19],srcdlo[20],srcdlo[21],srcdlo[22],srcdlo[23],srcdlo[24],srcdlo[25],srcdlo[26],srcdlo[27],srcdlo[28],srcdlo[29],srcdlo[30],srcdlo[31]}), // IN
	.srcdhi({srcdhi[0],srcdhi[1],srcdhi[2],srcdhi[3],srcdhi[4],srcdhi[5],srcdhi[6],srcdhi[7],srcdhi[8],srcdhi[9],srcdhi[10],srcdhi[11],srcdhi[12],srcdhi[13],srcdhi[14],srcdhi[15],srcdhi[16],srcdhi[17],srcdhi[18],srcdhi[19],srcdhi[20],srcdhi[21],srcdhi[22],srcdhi[23],srcdhi[24],srcdhi[25],srcdhi[26],srcdhi[27],srcdhi[28],srcdhi[29],srcdhi[30],srcdhi[31]}), // IN
	.iinc({iinc[0],iinc[1],iinc[2],iinc[3],iinc[4],iinc[5],iinc[6],iinc[7],iinc[8],iinc[9],iinc[10],iinc[11],iinc[12],iinc[13],iinc[14],iinc[15],iinc[16],iinc[17],iinc[18],iinc[19],iinc[20],iinc[21],iinc[22],iinc[23],iinc[24],iinc[25],iinc[26],iinc[27],iinc[28],iinc[29],iinc[30],iinc[31]}), // IN
	.zinc({zinc[0],zinc[1],zinc[2],zinc[3],zinc[4],zinc[5],zinc[6],zinc[7],zinc[8],zinc[9],zinc[10],zinc[11],zinc[12],zinc[13],zinc[14],zinc[15],zinc[16],zinc[17],zinc[18],zinc[19],zinc[20],zinc[21],zinc[22],zinc[23],zinc[24],zinc[25],zinc[26],zinc[27],zinc[28],zinc[29],zinc[30],zinc[31]}), // IN
	.daddbsel_0(daddbsel_0), // IN
	.daddbsel_1(daddbsel_1), // IN
	.daddbsel_2(daddbsel_2)  // IN
);

// DATA.NET (284) - addarray : addarray
addarray addarray_inst
(
	.addq_0({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}), // OUT
	.addq_1({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}), // OUT
	.addq_2({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}), // OUT
	.addq_3({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}), // OUT
	.adda_0({adda_0[0],adda_0[1],adda_0[2],adda_0[3],adda_0[4],adda_0[5],adda_0[6],adda_0[7],adda_0[8],adda_0[9],adda_0[10],adda_0[11],adda_0[12],adda_0[13],adda_0[14],adda_0[15]}), // IN
	.adda_1({adda_1[0],adda_1[1],adda_1[2],adda_1[3],adda_1[4],adda_1[5],adda_1[6],adda_1[7],adda_1[8],adda_1[9],adda_1[10],adda_1[11],adda_1[12],adda_1[13],adda_1[14],adda_1[15]}), // IN
	.adda_2({adda_2[0],adda_2[1],adda_2[2],adda_2[3],adda_2[4],adda_2[5],adda_2[6],adda_2[7],adda_2[8],adda_2[9],adda_2[10],adda_2[11],adda_2[12],adda_2[13],adda_2[14],adda_2[15]}), // IN
	.adda_3({adda_3[0],adda_3[1],adda_3[2],adda_3[3],adda_3[4],adda_3[5],adda_3[6],adda_3[7],adda_3[8],adda_3[9],adda_3[10],adda_3[11],adda_3[12],adda_3[13],adda_3[14],adda_3[15]}), // IN
	.addb_0({addb_0[0],addb_0[1],addb_0[2],addb_0[3],addb_0[4],addb_0[5],addb_0[6],addb_0[7],addb_0[8],addb_0[9],addb_0[10],addb_0[11],addb_0[12],addb_0[13],addb_0[14],addb_0[15]}), // IN
	.addb_1({addb_1[0],addb_1[1],addb_1[2],addb_1[3],addb_1[4],addb_1[5],addb_1[6],addb_1[7],addb_1[8],addb_1[9],addb_1[10],addb_1[11],addb_1[12],addb_1[13],addb_1[14],addb_1[15]}), // IN
	.addb_2({addb_2[0],addb_2[1],addb_2[2],addb_2[3],addb_2[4],addb_2[5],addb_2[6],addb_2[7],addb_2[8],addb_2[9],addb_2[10],addb_2[11],addb_2[12],addb_2[13],addb_2[14],addb_2[15]}), // IN
	.addb_3({addb_3[0],addb_3[1],addb_3[2],addb_3[3],addb_3[4],addb_3[5],addb_3[6],addb_3[7],addb_3[8],addb_3[9],addb_3[10],addb_3[11],addb_3[12],addb_3[13],addb_3[14],addb_3[15]}), // IN
	.daddmode_0(daddmode_0), // IN
	.daddmode_1(daddmode_1), // IN
	.daddmode_2(daddmode_2), // IN
	.clk_0(clk), // IN
	.reset_n(reset_n)  // IN
);

// DATA.NET (289) - data_local : local_mux
local_mux data_local_inst
(
	.local_data_0({local_data_0[0],local_data_0[1],local_data_0[2],local_data_0[3],local_data_0[4],local_data_0[5],local_data_0[6],local_data_0[7],local_data_0[8],local_data_0[9],local_data_0[10],local_data_0[11],local_data_0[12],local_data_0[13],local_data_0[14],local_data_0[15],local_data_0[16],local_data_0[17],local_data_0[18],local_data_0[19],local_data_0[20],local_data_0[21],local_data_0[22],local_data_0[23],local_data_0[24],local_data_0[25],local_data_0[26],local_data_0[27],local_data_0[28],local_data_0[29],local_data_0[30],local_data_0[31]}), // OUT
	.local_data_1({local_data_1[0],local_data_1[1],local_data_1[2],local_data_1[3],local_data_1[4],local_data_1[5],local_data_1[6],local_data_1[7],local_data_1[8],local_data_1[9],local_data_1[10],local_data_1[11],local_data_1[12],local_data_1[13],local_data_1[14],local_data_1[15],local_data_1[16],local_data_1[17],local_data_1[18],local_data_1[19],local_data_1[20],local_data_1[21],local_data_1[22],local_data_1[23],local_data_1[24],local_data_1[25],local_data_1[26],local_data_1[27],local_data_1[28],local_data_1[29],local_data_1[30],local_data_1[31]}), // OUT
	.load_data_0({load_data_0[0],load_data_0[1],load_data_0[2],load_data_0[3],load_data_0[4],load_data_0[5],load_data_0[6],load_data_0[7],load_data_0[8],load_data_0[9],load_data_0[10],load_data_0[11],load_data_0[12],load_data_0[13],load_data_0[14],load_data_0[15],load_data_0[16],load_data_0[17],load_data_0[18],load_data_0[19],load_data_0[20],load_data_0[21],load_data_0[22],load_data_0[23],load_data_0[24],load_data_0[25],load_data_0[26],load_data_0[27],load_data_0[28],load_data_0[29],load_data_0[30],load_data_0[31]}), // IO
	.load_data_1({load_data_1[0],load_data_1[1],load_data_1[2],load_data_1[3],load_data_1[4],load_data_1[5],load_data_1[6],load_data_1[7],load_data_1[8],load_data_1[9],load_data_1[10],load_data_1[11],load_data_1[12],load_data_1[13],load_data_1[14],load_data_1[15],load_data_1[16],load_data_1[17],load_data_1[18],load_data_1[19],load_data_1[20],load_data_1[21],load_data_1[22],load_data_1[23],load_data_1[24],load_data_1[25],load_data_1[26],load_data_1[27],load_data_1[28],load_data_1[29],load_data_1[30],load_data_1[31]}), // IO
	.addq_0({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}), // IN
	.addq_1({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}), // IN
	.addq_2({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}), // IN
	.addq_3({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.data_0(data_0), // IN
	.data_1(data_1), // IN
	.data_2(data_2), // IN
	.data_3(data_3), // IN
	.data_4(data_4), // IN
	.data_5(data_5), // IN
	.data_6(data_6), // IN
	.data_7(data_7), // IN
	.data_8(data_8), // IN
	.data_9(data_9), // IN
	.data_10(data_10), // IN
	.data_11(data_11), // IN
	.data_12(data_12), // IN
	.data_13(data_13), // IN
	.data_14(data_14), // IN
	.data_15(data_15), // IN
	.data_16(data_16), // IN
	.data_17(data_17), // IN
	.data_18(data_18), // IN
	.data_19(data_19), // IN
	.data_20(data_20), // IN
	.data_21(data_21), // IN
	.data_22(data_22), // IN
	.data_23(data_23), // IN
	.data_24(data_24), // IN
	.data_25(data_25), // IN
	.data_26(data_26), // IN
	.data_27(data_27), // IN
	.data_28(data_28), // IN
	.data_29(data_29), // IN
	.data_30(data_30), // IN
	.data_31(data_31), // IN
	.data_32(data_32), // IN
	.data_33(data_33), // IN
	.data_34(data_34), // IN
	.data_35(data_35), // IN
	.data_36(data_36), // IN
	.data_37(data_37), // IN
	.data_38(data_38), // IN
	.data_39(data_39), // IN
	.data_40(data_40), // IN
	.data_41(data_41), // IN
	.data_42(data_42), // IN
	.data_43(data_43), // IN
	.data_44(data_44), // IN
	.data_45(data_45), // IN
	.data_46(data_46), // IN
	.data_47(data_47), // IN
	.data_48(data_48), // IN
	.data_49(data_49), // IN
	.data_50(data_50), // IN
	.data_51(data_51), // IN
	.data_52(data_52), // IN
	.data_53(data_53), // IN
	.data_54(data_54), // IN
	.data_55(data_55), // IN
	.data_56(data_56), // IN
	.data_57(data_57), // IN
	.data_58(data_58), // IN
	.data_59(data_59), // IN
	.data_60(data_60), // IN
	.data_61(data_61), // IN
	.data_62(data_62), // IN
	.data_63(data_63), // IN
	.blit_back(blit_back), // IN
	.blit_breq_0(blit_breq_0), // IN
	.blit_breq_1(blit_breq_1), // IN
	.daddq_sel(daddq_sel)  // IN
);

// DATA.NET (292) - local_data0 : join
assign local_data0[0] = local_data_0[0];
assign local_data0[1] = local_data_0[1];
assign local_data0[2] = local_data_0[2];
assign local_data0[3] = local_data_0[3];
assign local_data0[4] = local_data_0[4];
assign local_data0[5] = local_data_0[5];
assign local_data0[6] = local_data_0[6];
assign local_data0[7] = local_data_0[7];
assign local_data0[8] = local_data_0[8];
assign local_data0[9] = local_data_0[9];
assign local_data0[10] = local_data_0[10];
assign local_data0[11] = local_data_0[11];
assign local_data0[12] = local_data_0[12];
assign local_data0[13] = local_data_0[13];
assign local_data0[14] = local_data_0[14];
assign local_data0[15] = local_data_0[15];
assign local_data0[16] = local_data_0[16];
assign local_data0[17] = local_data_0[17];
assign local_data0[18] = local_data_0[18];
assign local_data0[19] = local_data_0[19];
assign local_data0[20] = local_data_0[20];
assign local_data0[21] = local_data_0[21];
assign local_data0[22] = local_data_0[22];
assign local_data0[23] = local_data_0[23];
assign local_data0[24] = local_data_0[24];
assign local_data0[25] = local_data_0[25];
assign local_data0[26] = local_data_0[26];
assign local_data0[27] = local_data_0[27];
assign local_data0[28] = local_data_0[28];
assign local_data0[29] = local_data_0[29];
assign local_data0[30] = local_data_0[30];
assign local_data0[31] = local_data_0[31];

// DATA.NET (293) - local_data1 : join
assign local_data1[0] = local_data_1[0];
assign local_data1[1] = local_data_1[1];
assign local_data1[2] = local_data_1[2];
assign local_data1[3] = local_data_1[3];
assign local_data1[4] = local_data_1[4];
assign local_data1[5] = local_data_1[5];
assign local_data1[6] = local_data_1[6];
assign local_data1[7] = local_data_1[7];
assign local_data1[8] = local_data_1[8];
assign local_data1[9] = local_data_1[9];
assign local_data1[10] = local_data_1[10];
assign local_data1[11] = local_data_1[11];
assign local_data1[12] = local_data_1[12];
assign local_data1[13] = local_data_1[13];
assign local_data1[14] = local_data_1[14];
assign local_data1[15] = local_data_1[15];
assign local_data1[16] = local_data_1[16];
assign local_data1[17] = local_data_1[17];
assign local_data1[18] = local_data_1[18];
assign local_data1[19] = local_data_1[19];
assign local_data1[20] = local_data_1[20];
assign local_data1[21] = local_data_1[21];
assign local_data1[22] = local_data_1[22];
assign local_data1[23] = local_data_1[23];
assign local_data1[24] = local_data_1[24];
assign local_data1[25] = local_data_1[25];
assign local_data1[26] = local_data_1[26];
assign local_data1[27] = local_data_1[27];
assign local_data1[28] = local_data_1[28];
assign local_data1[29] = local_data_1[29];
assign local_data1[30] = local_data_1[30];
assign local_data1[31] = local_data_1[31];

// DATA.NET (294) - local_data0lo : join
assign local_data0lo[0] = local_data0[0];
assign local_data0lo[1] = local_data0[1];
assign local_data0lo[2] = local_data0[2];
assign local_data0lo[3] = local_data0[3];
assign local_data0lo[4] = local_data0[4];
assign local_data0lo[5] = local_data0[5];
assign local_data0lo[6] = local_data0[6];
assign local_data0lo[7] = local_data0[7];
assign local_data0lo[8] = local_data0[8];
assign local_data0lo[9] = local_data0[9];
assign local_data0lo[10] = local_data0[10];
assign local_data0lo[11] = local_data0[11];
assign local_data0lo[12] = local_data0[12];
assign local_data0lo[13] = local_data0[13];
assign local_data0lo[14] = local_data0[14];
assign local_data0lo[15] = local_data0[15];

// DATA.NET (295) - local_data0hi : join
assign local_data0hi[0] = local_data0[16];
assign local_data0hi[1] = local_data0[17];
assign local_data0hi[2] = local_data0[18];
assign local_data0hi[3] = local_data0[19];
assign local_data0hi[4] = local_data0[20];
assign local_data0hi[5] = local_data0[21];
assign local_data0hi[6] = local_data0[22];
assign local_data0hi[7] = local_data0[23];
assign local_data0hi[8] = local_data0[24];
assign local_data0hi[9] = local_data0[25];
assign local_data0hi[10] = local_data0[26];
assign local_data0hi[11] = local_data0[27];
assign local_data0hi[12] = local_data0[28];
assign local_data0hi[13] = local_data0[29];
assign local_data0hi[14] = local_data0[30];
assign local_data0hi[15] = local_data0[31];

// DATA.NET (296) - local_data1lo : join
assign local_data1lo[0] = local_data1[0];
assign local_data1lo[1] = local_data1[1];
assign local_data1lo[2] = local_data1[2];
assign local_data1lo[3] = local_data1[3];
assign local_data1lo[4] = local_data1[4];
assign local_data1lo[5] = local_data1[5];
assign local_data1lo[6] = local_data1[6];
assign local_data1lo[7] = local_data1[7];
assign local_data1lo[8] = local_data1[8];
assign local_data1lo[9] = local_data1[9];
assign local_data1lo[10] = local_data1[10];
assign local_data1lo[11] = local_data1[11];
assign local_data1lo[12] = local_data1[12];
assign local_data1lo[13] = local_data1[13];
assign local_data1lo[14] = local_data1[14];
assign local_data1lo[15] = local_data1[15];

// DATA.NET (297) - local_data1hi : join
assign local_data1hi[0] = local_data1[16];
assign local_data1hi[1] = local_data1[17];
assign local_data1hi[2] = local_data1[18];
assign local_data1hi[3] = local_data1[19];
assign local_data1hi[4] = local_data1[20];
assign local_data1hi[5] = local_data1[21];
assign local_data1hi[6] = local_data1[22];
assign local_data1hi[7] = local_data1[23];
assign local_data1hi[8] = local_data1[24];
assign local_data1hi[9] = local_data1[25];
assign local_data1hi[10] = local_data1[26];
assign local_data1hi[11] = local_data1[27];
assign local_data1hi[12] = local_data1[28];
assign local_data1hi[13] = local_data1[29];
assign local_data1hi[14] = local_data1[30];
assign local_data1hi[15] = local_data1[31];

// DATA.NET (301) - data_out : data_mux
data_mux data_out_inst
(
	.wdata_0(wdata_0), // BUS
	.wdata_1(wdata_1), // BUS
	.wdata_2(wdata_2), // BUS
	.wdata_3(wdata_3), // BUS
	.wdata_4(wdata_4), // BUS
	.wdata_5(wdata_5), // BUS
	.wdata_6(wdata_6), // BUS
	.wdata_7(wdata_7), // BUS
	.wdata_8(wdata_8), // BUS
	.wdata_9(wdata_9), // BUS
	.wdata_10(wdata_10), // BUS
	.wdata_11(wdata_11), // BUS
	.wdata_12(wdata_12), // BUS
	.wdata_13(wdata_13), // BUS
	.wdata_14(wdata_14), // BUS
	.wdata_15(wdata_15), // BUS
	.wdata_16(wdata_16), // BUS
	.wdata_17(wdata_17), // BUS
	.wdata_18(wdata_18), // BUS
	.wdata_19(wdata_19), // BUS
	.wdata_20(wdata_20), // BUS
	.wdata_21(wdata_21), // BUS
	.wdata_22(wdata_22), // BUS
	.wdata_23(wdata_23), // BUS
	.wdata_24(wdata_24), // BUS
	.wdata_25(wdata_25), // BUS
	.wdata_26(wdata_26), // BUS
	.wdata_27(wdata_27), // BUS
	.wdata_28(wdata_28), // BUS
	.wdata_29(wdata_29), // BUS
	.wdata_30(wdata_30), // BUS
	.wdata_31(wdata_31), // BUS
	.wdata_32(wdata_32), // BUS
	.wdata_33(wdata_33), // BUS
	.wdata_34(wdata_34), // BUS
	.wdata_35(wdata_35), // BUS
	.wdata_36(wdata_36), // BUS
	.wdata_37(wdata_37), // BUS
	.wdata_38(wdata_38), // BUS
	.wdata_39(wdata_39), // BUS
	.wdata_40(wdata_40), // BUS
	.wdata_41(wdata_41), // BUS
	.wdata_42(wdata_42), // BUS
	.wdata_43(wdata_43), // BUS
	.wdata_44(wdata_44), // BUS
	.wdata_45(wdata_45), // BUS
	.wdata_46(wdata_46), // BUS
	.wdata_47(wdata_47), // BUS
	.wdata_48(wdata_48), // BUS
	.wdata_49(wdata_49), // BUS
	.wdata_50(wdata_50), // BUS
	.wdata_51(wdata_51), // BUS
	.wdata_52(wdata_52), // BUS
	.wdata_53(wdata_53), // BUS
	.wdata_54(wdata_54), // BUS
	.wdata_55(wdata_55), // BUS
	.wdata_56(wdata_56), // BUS
	.wdata_57(wdata_57), // BUS
	.wdata_58(wdata_58), // BUS
	.wdata_59(wdata_59), // BUS
	.wdata_60(wdata_60), // BUS
	.wdata_61(wdata_61), // BUS
	.wdata_62(wdata_62), // BUS
	.wdata_63(wdata_63), // BUS
	.addq_0({addq_0[0],addq_0[1],addq_0[2],addq_0[3],addq_0[4],addq_0[5],addq_0[6],addq_0[7],addq_0[8],addq_0[9],addq_0[10],addq_0[11],addq_0[12],addq_0[13],addq_0[14],addq_0[15]}), // IN
	.addq_1({addq_1[0],addq_1[1],addq_1[2],addq_1[3],addq_1[4],addq_1[5],addq_1[6],addq_1[7],addq_1[8],addq_1[9],addq_1[10],addq_1[11],addq_1[12],addq_1[13],addq_1[14],addq_1[15]}), // IN
	.addq_2({addq_2[0],addq_2[1],addq_2[2],addq_2[3],addq_2[4],addq_2[5],addq_2[6],addq_2[7],addq_2[8],addq_2[9],addq_2[10],addq_2[11],addq_2[12],addq_2[13],addq_2[14],addq_2[15]}), // IN
	.addq_3({addq_3[0],addq_3[1],addq_3[2],addq_3[3],addq_3[4],addq_3[5],addq_3[6],addq_3[7],addq_3[8],addq_3[9],addq_3[10],addq_3[11],addq_3[12],addq_3[13],addq_3[14],addq_3[15]}), // IN
	.big_pix(big_pix), // IN
	.dstdlo({dstd_0[0],dstd_0[1],dstd_0[2],dstd_0[3],dstd_0[4],dstd_0[5],dstd_0[6],dstd_0[7],dstd_0[8],dstd_0[9],dstd_0[10],dstd_0[11],dstd_0[12],dstd_0[13],dstd_0[14],dstd_0[15],dstd_0[16],dstd_0[17],dstd_0[18],dstd_0[19],dstd_0[20],dstd_0[21],dstd_0[22],dstd_0[23],dstd_0[24],dstd_0[25],dstd_0[26],dstd_0[27],dstd_0[28],dstd_0[29],dstd_0[30],dstd_0[31]}), // IN
	.dstdhi({dstd_1[0],dstd_1[1],dstd_1[2],dstd_1[3],dstd_1[4],dstd_1[5],dstd_1[6],dstd_1[7],dstd_1[8],dstd_1[9],dstd_1[10],dstd_1[11],dstd_1[12],dstd_1[13],dstd_1[14],dstd_1[15],dstd_1[16],dstd_1[17],dstd_1[18],dstd_1[19],dstd_1[20],dstd_1[21],dstd_1[22],dstd_1[23],dstd_1[24],dstd_1[25],dstd_1[26],dstd_1[27],dstd_1[28],dstd_1[29],dstd_1[30],dstd_1[31]}), // IN
	.dstzlo({dstz_0[0],dstz_0[1],dstz_0[2],dstz_0[3],dstz_0[4],dstz_0[5],dstz_0[6],dstz_0[7],dstz_0[8],dstz_0[9],dstz_0[10],dstz_0[11],dstz_0[12],dstz_0[13],dstz_0[14],dstz_0[15],dstz_0[16],dstz_0[17],dstz_0[18],dstz_0[19],dstz_0[20],dstz_0[21],dstz_0[22],dstz_0[23],dstz_0[24],dstz_0[25],dstz_0[26],dstz_0[27],dstz_0[28],dstz_0[29],dstz_0[30],dstz_0[31]}), // IN
	.dstzhi({dstz_1[0],dstz_1[1],dstz_1[2],dstz_1[3],dstz_1[4],dstz_1[5],dstz_1[6],dstz_1[7],dstz_1[8],dstz_1[9],dstz_1[10],dstz_1[11],dstz_1[12],dstz_1[13],dstz_1[14],dstz_1[15],dstz_1[16],dstz_1[17],dstz_1[18],dstz_1[19],dstz_1[20],dstz_1[21],dstz_1[22],dstz_1[23],dstz_1[24],dstz_1[25],dstz_1[26],dstz_1[27],dstz_1[28],dstz_1[29],dstz_1[30],dstz_1[31]}), // IN
	.data_sel_0(data_sel_0), // IN
	.data_sel_1(data_sel_1), // IN
	.data_ena(data_ena), // IN
	.dstart_0(dstart_0), // IN
	.dstart_1(dstart_1), // IN
	.dstart_2(dstart_2), // IN
	.dstart_3(dstart_3), // IN
	.dstart_4(dstart_4), // IN
	.dstart_5(dstart_5), // IN
	.dend_0(dend_0), // IN
	.dend_1(dend_1), // IN
	.dend_2(dend_2), // IN
	.dend_3(dend_3), // IN
	.dend_4(dend_4), // IN
	.dend_5(dend_5), // IN
	.dbinh_n_0(dbinh_n_0), // IN
	.dbinh_n_1(dbinh_n_1), // IN
	.dbinh_n_2(dbinh_n_2), // IN
	.dbinh_n_3(dbinh_n_3), // IN
	.dbinh_n_4(dbinh_n_4), // IN
	.dbinh_n_5(dbinh_n_5), // IN
	.dbinh_n_6(dbinh_n_6), // IN
	.dbinh_n_7(dbinh_n_7), // IN
	.lfu_0({lfu_0[0],lfu_0[1],lfu_0[2],lfu_0[3],lfu_0[4],lfu_0[5],lfu_0[6],lfu_0[7],lfu_0[8],lfu_0[9],lfu_0[10],lfu_0[11],lfu_0[12],lfu_0[13],lfu_0[14],lfu_0[15],lfu_0[16],lfu_0[17],lfu_0[18],lfu_0[19],lfu_0[20],lfu_0[21],lfu_0[22],lfu_0[23],lfu_0[24],lfu_0[25],lfu_0[26],lfu_0[27],lfu_0[28],lfu_0[29],lfu_0[30],lfu_0[31]}), // IN
	.lfu_1({lfu_1[0],lfu_1[1],lfu_1[2],lfu_1[3],lfu_1[4],lfu_1[5],lfu_1[6],lfu_1[7],lfu_1[8],lfu_1[9],lfu_1[10],lfu_1[11],lfu_1[12],lfu_1[13],lfu_1[14],lfu_1[15],lfu_1[16],lfu_1[17],lfu_1[18],lfu_1[19],lfu_1[20],lfu_1[21],lfu_1[22],lfu_1[23],lfu_1[24],lfu_1[25],lfu_1[26],lfu_1[27],lfu_1[28],lfu_1[29],lfu_1[30],lfu_1[31]}), // IN
	.patd_0({patdo_0[0],patdo_0[1],patdo_0[2],patdo_0[3],patdo_0[4],patdo_0[5],patdo_0[6],patdo_0[7],patdo_0[8],patdo_0[9],patdo_0[10],patdo_0[11],patdo_0[12],patdo_0[13],patdo_0[14],patdo_0[15],patdo_0[16],patdo_0[17],patdo_0[18],patdo_0[19],patdo_0[20],patdo_0[21],patdo_0[22],patdo_0[23],patdo_0[24],patdo_0[25],patdo_0[26],patdo_0[27],patdo_0[28],patdo_0[29],patdo_0[30],patdo_0[31]}), // IN
	.patd_1({patdo_1[0],patdo_1[1],patdo_1[2],patdo_1[3],patdo_1[4],patdo_1[5],patdo_1[6],patdo_1[7],patdo_1[8],patdo_1[9],patdo_1[10],patdo_1[11],patdo_1[12],patdo_1[13],patdo_1[14],patdo_1[15],patdo_1[16],patdo_1[17],patdo_1[18],patdo_1[19],patdo_1[20],patdo_1[21],patdo_1[22],patdo_1[23],patdo_1[24],patdo_1[25],patdo_1[26],patdo_1[27],patdo_1[28],patdo_1[29],patdo_1[30],patdo_1[31]}), // IN
	.phrase_mode(phrase_mode), // IN
	.srczlo({srczo_0[0],srczo_0[1],srczo_0[2],srczo_0[3],srczo_0[4],srczo_0[5],srczo_0[6],srczo_0[7],srczo_0[8],srczo_0[9],srczo_0[10],srczo_0[11],srczo_0[12],srczo_0[13],srczo_0[14],srczo_0[15],srczo_0[16],srczo_0[17],srczo_0[18],srczo_0[19],srczo_0[20],srczo_0[21],srczo_0[22],srczo_0[23],srczo_0[24],srczo_0[25],srczo_0[26],srczo_0[27],srczo_0[28],srczo_0[29],srczo_0[30],srczo_0[31]}), // IN
	.srczhi({srczo_1[0],srczo_1[1],srczo_1[2],srczo_1[3],srczo_1[4],srczo_1[5],srczo_1[6],srczo_1[7],srczo_1[8],srczo_1[9],srczo_1[10],srczo_1[11],srczo_1[12],srczo_1[13],srczo_1[14],srczo_1[15],srczo_1[16],srczo_1[17],srczo_1[18],srczo_1[19],srczo_1[20],srczo_1[21],srczo_1[22],srczo_1[23],srczo_1[24],srczo_1[25],srczo_1[26],srczo_1[27],srczo_1[28],srczo_1[29],srczo_1[30],srczo_1[31]})  // IN
);
endmodule
