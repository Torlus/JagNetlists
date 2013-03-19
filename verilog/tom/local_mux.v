/* verilator lint_off LITENDIAN */
`include "defs.v"

module local_mux
(
	output [0:31] local_data_0,
	output [0:31] local_data_1,
	output [0:31] load_data_0,
	output [0:31] load_data_1,
	input [0:15] addq_0,
	input [0:15] addq_1,
	input [0:15] addq_2,
	input [0:15] addq_3,
	input [0:31] gpu_din,
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
	input blit_back,
	input blit_breq_0,
	input blit_breq_1,
	input daddq_sel
);
wire [0:31] addqlo32;
wire [0:31] addqhi32;
wire [0:31] r_data_0;
wire [0:31] r_data_1;
wire blit_active;
wire blit_backb;
wire daddq_selb_0;
wire daddq_selb_1;

// Output buffers
wire load_data_0_b0_obuf;
wire load_data_0_b1_obuf;
wire load_data_0_b2_obuf;
wire load_data_0_b3_obuf;
wire load_data_0_b4_obuf;
wire load_data_0_b5_obuf;
wire load_data_0_b6_obuf;
wire load_data_0_b7_obuf;
wire load_data_0_b8_obuf;
wire load_data_0_b9_obuf;
wire load_data_0_b10_obuf;
wire load_data_0_b11_obuf;
wire load_data_0_b12_obuf;
wire load_data_0_b13_obuf;
wire load_data_0_b14_obuf;
wire load_data_0_b15_obuf;
wire load_data_0_b16_obuf;
wire load_data_0_b17_obuf;
wire load_data_0_b18_obuf;
wire load_data_0_b19_obuf;
wire load_data_0_b20_obuf;
wire load_data_0_b21_obuf;
wire load_data_0_b22_obuf;
wire load_data_0_b23_obuf;
wire load_data_0_b24_obuf;
wire load_data_0_b25_obuf;
wire load_data_0_b26_obuf;
wire load_data_0_b27_obuf;
wire load_data_0_b28_obuf;
wire load_data_0_b29_obuf;
wire load_data_0_b30_obuf;
wire load_data_0_b31_obuf;
wire load_data_1_b0_obuf;
wire load_data_1_b1_obuf;
wire load_data_1_b2_obuf;
wire load_data_1_b3_obuf;
wire load_data_1_b4_obuf;
wire load_data_1_b5_obuf;
wire load_data_1_b6_obuf;
wire load_data_1_b7_obuf;
wire load_data_1_b8_obuf;
wire load_data_1_b9_obuf;
wire load_data_1_b10_obuf;
wire load_data_1_b11_obuf;
wire load_data_1_b12_obuf;
wire load_data_1_b13_obuf;
wire load_data_1_b14_obuf;
wire load_data_1_b15_obuf;
wire load_data_1_b16_obuf;
wire load_data_1_b17_obuf;
wire load_data_1_b18_obuf;
wire load_data_1_b19_obuf;
wire load_data_1_b20_obuf;
wire load_data_1_b21_obuf;
wire load_data_1_b22_obuf;
wire load_data_1_b23_obuf;
wire load_data_1_b24_obuf;
wire load_data_1_b25_obuf;
wire load_data_1_b26_obuf;
wire load_data_1_b27_obuf;
wire load_data_1_b28_obuf;
wire load_data_1_b29_obuf;
wire load_data_1_b30_obuf;
wire load_data_1_b31_obuf;


// Output buffers
assign load_data_0[0] = load_data_0_b0_obuf;
assign load_data_0[1] = load_data_0_b1_obuf;
assign load_data_0[2] = load_data_0_b2_obuf;
assign load_data_0[3] = load_data_0_b3_obuf;
assign load_data_0[4] = load_data_0_b4_obuf;
assign load_data_0[5] = load_data_0_b5_obuf;
assign load_data_0[6] = load_data_0_b6_obuf;
assign load_data_0[7] = load_data_0_b7_obuf;
assign load_data_0[8] = load_data_0_b8_obuf;
assign load_data_0[9] = load_data_0_b9_obuf;
assign load_data_0[10] = load_data_0_b10_obuf;
assign load_data_0[11] = load_data_0_b11_obuf;
assign load_data_0[12] = load_data_0_b12_obuf;
assign load_data_0[13] = load_data_0_b13_obuf;
assign load_data_0[14] = load_data_0_b14_obuf;
assign load_data_0[15] = load_data_0_b15_obuf;
assign load_data_0[16] = load_data_0_b16_obuf;
assign load_data_0[17] = load_data_0_b17_obuf;
assign load_data_0[18] = load_data_0_b18_obuf;
assign load_data_0[19] = load_data_0_b19_obuf;
assign load_data_0[20] = load_data_0_b20_obuf;
assign load_data_0[21] = load_data_0_b21_obuf;
assign load_data_0[22] = load_data_0_b22_obuf;
assign load_data_0[23] = load_data_0_b23_obuf;
assign load_data_0[24] = load_data_0_b24_obuf;
assign load_data_0[25] = load_data_0_b25_obuf;
assign load_data_0[26] = load_data_0_b26_obuf;
assign load_data_0[27] = load_data_0_b27_obuf;
assign load_data_0[28] = load_data_0_b28_obuf;
assign load_data_0[29] = load_data_0_b29_obuf;
assign load_data_0[30] = load_data_0_b30_obuf;
assign load_data_0[31] = load_data_0_b31_obuf;
assign load_data_1[0] = load_data_1_b0_obuf;
assign load_data_1[1] = load_data_1_b1_obuf;
assign load_data_1[2] = load_data_1_b2_obuf;
assign load_data_1[3] = load_data_1_b3_obuf;
assign load_data_1[4] = load_data_1_b4_obuf;
assign load_data_1[5] = load_data_1_b5_obuf;
assign load_data_1[6] = load_data_1_b6_obuf;
assign load_data_1[7] = load_data_1_b7_obuf;
assign load_data_1[8] = load_data_1_b8_obuf;
assign load_data_1[9] = load_data_1_b9_obuf;
assign load_data_1[10] = load_data_1_b10_obuf;
assign load_data_1[11] = load_data_1_b11_obuf;
assign load_data_1[12] = load_data_1_b12_obuf;
assign load_data_1[13] = load_data_1_b13_obuf;
assign load_data_1[14] = load_data_1_b14_obuf;
assign load_data_1[15] = load_data_1_b15_obuf;
assign load_data_1[16] = load_data_1_b16_obuf;
assign load_data_1[17] = load_data_1_b17_obuf;
assign load_data_1[18] = load_data_1_b18_obuf;
assign load_data_1[19] = load_data_1_b19_obuf;
assign load_data_1[20] = load_data_1_b20_obuf;
assign load_data_1[21] = load_data_1_b21_obuf;
assign load_data_1[22] = load_data_1_b22_obuf;
assign load_data_1[23] = load_data_1_b23_obuf;
assign load_data_1[24] = load_data_1_b24_obuf;
assign load_data_1[25] = load_data_1_b25_obuf;
assign load_data_1[26] = load_data_1_b26_obuf;
assign load_data_1[27] = load_data_1_b27_obuf;
assign load_data_1[28] = load_data_1_b28_obuf;
assign load_data_1[29] = load_data_1_b29_obuf;
assign load_data_1[30] = load_data_1_b30_obuf;
assign load_data_1[31] = load_data_1_b31_obuf;


// DATAMUX.NET (123) - blit_active : or3p
assign blit_active = blit_breq_0 | blit_breq_1 | blit_back;

// DATAMUX.NET (124) - blit_backb : nivu2
assign blit_backb = blit_active;

// DATAMUX.NET (126) - r_data[0] : join
assign r_data_0[0] = data_0;
assign r_data_0[1] = data_1;
assign r_data_0[2] = data_2;
assign r_data_0[3] = data_3;
assign r_data_0[4] = data_4;
assign r_data_0[5] = data_5;
assign r_data_0[6] = data_6;
assign r_data_0[7] = data_7;
assign r_data_0[8] = data_8;
assign r_data_0[9] = data_9;
assign r_data_0[10] = data_10;
assign r_data_0[11] = data_11;
assign r_data_0[12] = data_12;
assign r_data_0[13] = data_13;
assign r_data_0[14] = data_14;
assign r_data_0[15] = data_15;
assign r_data_0[16] = data_16;
assign r_data_0[17] = data_17;
assign r_data_0[18] = data_18;
assign r_data_0[19] = data_19;
assign r_data_0[20] = data_20;
assign r_data_0[21] = data_21;
assign r_data_0[22] = data_22;
assign r_data_0[23] = data_23;
assign r_data_0[24] = data_24;
assign r_data_0[25] = data_25;
assign r_data_0[26] = data_26;
assign r_data_0[27] = data_27;
assign r_data_0[28] = data_28;
assign r_data_0[29] = data_29;
assign r_data_0[30] = data_30;
assign r_data_0[31] = data_31;

// DATAMUX.NET (127) - r_data[1] : join
assign r_data_1[0] = data_32;
assign r_data_1[1] = data_33;
assign r_data_1[2] = data_34;
assign r_data_1[3] = data_35;
assign r_data_1[4] = data_36;
assign r_data_1[5] = data_37;
assign r_data_1[6] = data_38;
assign r_data_1[7] = data_39;
assign r_data_1[8] = data_40;
assign r_data_1[9] = data_41;
assign r_data_1[10] = data_42;
assign r_data_1[11] = data_43;
assign r_data_1[12] = data_44;
assign r_data_1[13] = data_45;
assign r_data_1[14] = data_46;
assign r_data_1[15] = data_47;
assign r_data_1[16] = data_48;
assign r_data_1[17] = data_49;
assign r_data_1[18] = data_50;
assign r_data_1[19] = data_51;
assign r_data_1[20] = data_52;
assign r_data_1[21] = data_53;
assign r_data_1[22] = data_54;
assign r_data_1[23] = data_55;
assign r_data_1[24] = data_56;
assign r_data_1[25] = data_57;
assign r_data_1[26] = data_58;
assign r_data_1[27] = data_59;
assign r_data_1[28] = data_60;
assign r_data_1[29] = data_61;
assign r_data_1[30] = data_62;
assign r_data_1[31] = data_63;

// DATAMUX.NET (129) - addqlo32 : join
assign addqlo32[0] = addq_0[0];
assign addqlo32[1] = addq_0[1];
assign addqlo32[2] = addq_0[2];
assign addqlo32[3] = addq_0[3];
assign addqlo32[4] = addq_0[4];
assign addqlo32[5] = addq_0[5];
assign addqlo32[6] = addq_0[6];
assign addqlo32[7] = addq_0[7];
assign addqlo32[8] = addq_0[8];
assign addqlo32[9] = addq_0[9];
assign addqlo32[10] = addq_0[10];
assign addqlo32[11] = addq_0[11];
assign addqlo32[12] = addq_0[12];
assign addqlo32[13] = addq_0[13];
assign addqlo32[14] = addq_0[14];
assign addqlo32[15] = addq_0[15];
assign addqlo32[16] = addq_1[0];
assign addqlo32[17] = addq_1[1];
assign addqlo32[18] = addq_1[2];
assign addqlo32[19] = addq_1[3];
assign addqlo32[20] = addq_1[4];
assign addqlo32[21] = addq_1[5];
assign addqlo32[22] = addq_1[6];
assign addqlo32[23] = addq_1[7];
assign addqlo32[24] = addq_1[8];
assign addqlo32[25] = addq_1[9];
assign addqlo32[26] = addq_1[10];
assign addqlo32[27] = addq_1[11];
assign addqlo32[28] = addq_1[12];
assign addqlo32[29] = addq_1[13];
assign addqlo32[30] = addq_1[14];
assign addqlo32[31] = addq_1[15];

// DATAMUX.NET (130) - addqhi32 : join
assign addqhi32[0] = addq_2[0];
assign addqhi32[1] = addq_2[1];
assign addqhi32[2] = addq_2[2];
assign addqhi32[3] = addq_2[3];
assign addqhi32[4] = addq_2[4];
assign addqhi32[5] = addq_2[5];
assign addqhi32[6] = addq_2[6];
assign addqhi32[7] = addq_2[7];
assign addqhi32[8] = addq_2[8];
assign addqhi32[9] = addq_2[9];
assign addqhi32[10] = addq_2[10];
assign addqhi32[11] = addq_2[11];
assign addqhi32[12] = addq_2[12];
assign addqhi32[13] = addq_2[13];
assign addqhi32[14] = addq_2[14];
assign addqhi32[15] = addq_2[15];
assign addqhi32[16] = addq_3[0];
assign addqhi32[17] = addq_3[1];
assign addqhi32[18] = addq_3[2];
assign addqhi32[19] = addq_3[3];
assign addqhi32[20] = addq_3[4];
assign addqhi32[21] = addq_3[5];
assign addqhi32[22] = addq_3[6];
assign addqhi32[23] = addq_3[7];
assign addqhi32[24] = addq_3[8];
assign addqhi32[25] = addq_3[9];
assign addqhi32[26] = addq_3[10];
assign addqhi32[27] = addq_3[11];
assign addqhi32[28] = addq_3[12];
assign addqhi32[29] = addq_3[13];
assign addqhi32[30] = addq_3[14];
assign addqhi32[31] = addq_3[15];

// DATAMUX.NET (132) - load_data[0] : mx2
mx2 load_data_index_0_inst_0
(
	.z /* OUT */ (load_data_0_b0_obuf),
	.a0 /* IN */ (gpu_din[0]),
	.a1 /* IN */ (r_data_0[0]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_1
(
	.z /* OUT */ (load_data_0_b1_obuf),
	.a0 /* IN */ (gpu_din[1]),
	.a1 /* IN */ (r_data_0[1]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_2
(
	.z /* OUT */ (load_data_0_b2_obuf),
	.a0 /* IN */ (gpu_din[2]),
	.a1 /* IN */ (r_data_0[2]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_3
(
	.z /* OUT */ (load_data_0_b3_obuf),
	.a0 /* IN */ (gpu_din[3]),
	.a1 /* IN */ (r_data_0[3]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_4
(
	.z /* OUT */ (load_data_0_b4_obuf),
	.a0 /* IN */ (gpu_din[4]),
	.a1 /* IN */ (r_data_0[4]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_5
(
	.z /* OUT */ (load_data_0_b5_obuf),
	.a0 /* IN */ (gpu_din[5]),
	.a1 /* IN */ (r_data_0[5]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_6
(
	.z /* OUT */ (load_data_0_b6_obuf),
	.a0 /* IN */ (gpu_din[6]),
	.a1 /* IN */ (r_data_0[6]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_7
(
	.z /* OUT */ (load_data_0_b7_obuf),
	.a0 /* IN */ (gpu_din[7]),
	.a1 /* IN */ (r_data_0[7]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_8
(
	.z /* OUT */ (load_data_0_b8_obuf),
	.a0 /* IN */ (gpu_din[8]),
	.a1 /* IN */ (r_data_0[8]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_9
(
	.z /* OUT */ (load_data_0_b9_obuf),
	.a0 /* IN */ (gpu_din[9]),
	.a1 /* IN */ (r_data_0[9]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_10
(
	.z /* OUT */ (load_data_0_b10_obuf),
	.a0 /* IN */ (gpu_din[10]),
	.a1 /* IN */ (r_data_0[10]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_11
(
	.z /* OUT */ (load_data_0_b11_obuf),
	.a0 /* IN */ (gpu_din[11]),
	.a1 /* IN */ (r_data_0[11]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_12
(
	.z /* OUT */ (load_data_0_b12_obuf),
	.a0 /* IN */ (gpu_din[12]),
	.a1 /* IN */ (r_data_0[12]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_13
(
	.z /* OUT */ (load_data_0_b13_obuf),
	.a0 /* IN */ (gpu_din[13]),
	.a1 /* IN */ (r_data_0[13]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_14
(
	.z /* OUT */ (load_data_0_b14_obuf),
	.a0 /* IN */ (gpu_din[14]),
	.a1 /* IN */ (r_data_0[14]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_15
(
	.z /* OUT */ (load_data_0_b15_obuf),
	.a0 /* IN */ (gpu_din[15]),
	.a1 /* IN */ (r_data_0[15]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_16
(
	.z /* OUT */ (load_data_0_b16_obuf),
	.a0 /* IN */ (gpu_din[16]),
	.a1 /* IN */ (r_data_0[16]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_17
(
	.z /* OUT */ (load_data_0_b17_obuf),
	.a0 /* IN */ (gpu_din[17]),
	.a1 /* IN */ (r_data_0[17]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_18
(
	.z /* OUT */ (load_data_0_b18_obuf),
	.a0 /* IN */ (gpu_din[18]),
	.a1 /* IN */ (r_data_0[18]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_19
(
	.z /* OUT */ (load_data_0_b19_obuf),
	.a0 /* IN */ (gpu_din[19]),
	.a1 /* IN */ (r_data_0[19]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_20
(
	.z /* OUT */ (load_data_0_b20_obuf),
	.a0 /* IN */ (gpu_din[20]),
	.a1 /* IN */ (r_data_0[20]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_21
(
	.z /* OUT */ (load_data_0_b21_obuf),
	.a0 /* IN */ (gpu_din[21]),
	.a1 /* IN */ (r_data_0[21]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_22
(
	.z /* OUT */ (load_data_0_b22_obuf),
	.a0 /* IN */ (gpu_din[22]),
	.a1 /* IN */ (r_data_0[22]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_23
(
	.z /* OUT */ (load_data_0_b23_obuf),
	.a0 /* IN */ (gpu_din[23]),
	.a1 /* IN */ (r_data_0[23]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_24
(
	.z /* OUT */ (load_data_0_b24_obuf),
	.a0 /* IN */ (gpu_din[24]),
	.a1 /* IN */ (r_data_0[24]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_25
(
	.z /* OUT */ (load_data_0_b25_obuf),
	.a0 /* IN */ (gpu_din[25]),
	.a1 /* IN */ (r_data_0[25]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_26
(
	.z /* OUT */ (load_data_0_b26_obuf),
	.a0 /* IN */ (gpu_din[26]),
	.a1 /* IN */ (r_data_0[26]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_27
(
	.z /* OUT */ (load_data_0_b27_obuf),
	.a0 /* IN */ (gpu_din[27]),
	.a1 /* IN */ (r_data_0[27]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_28
(
	.z /* OUT */ (load_data_0_b28_obuf),
	.a0 /* IN */ (gpu_din[28]),
	.a1 /* IN */ (r_data_0[28]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_29
(
	.z /* OUT */ (load_data_0_b29_obuf),
	.a0 /* IN */ (gpu_din[29]),
	.a1 /* IN */ (r_data_0[29]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_30
(
	.z /* OUT */ (load_data_0_b30_obuf),
	.a0 /* IN */ (gpu_din[30]),
	.a1 /* IN */ (r_data_0[30]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_0_inst_31
(
	.z /* OUT */ (load_data_0_b31_obuf),
	.a0 /* IN */ (gpu_din[31]),
	.a1 /* IN */ (r_data_0[31]),
	.s /* IN */ (blit_backb)
);

// DATAMUX.NET (134) - load_data[1] : mx2
mx2 load_data_index_1_inst_0
(
	.z /* OUT */ (load_data_1_b0_obuf),
	.a0 /* IN */ (gpu_din[0]),
	.a1 /* IN */ (r_data_1[0]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_1
(
	.z /* OUT */ (load_data_1_b1_obuf),
	.a0 /* IN */ (gpu_din[1]),
	.a1 /* IN */ (r_data_1[1]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_2
(
	.z /* OUT */ (load_data_1_b2_obuf),
	.a0 /* IN */ (gpu_din[2]),
	.a1 /* IN */ (r_data_1[2]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_3
(
	.z /* OUT */ (load_data_1_b3_obuf),
	.a0 /* IN */ (gpu_din[3]),
	.a1 /* IN */ (r_data_1[3]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_4
(
	.z /* OUT */ (load_data_1_b4_obuf),
	.a0 /* IN */ (gpu_din[4]),
	.a1 /* IN */ (r_data_1[4]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_5
(
	.z /* OUT */ (load_data_1_b5_obuf),
	.a0 /* IN */ (gpu_din[5]),
	.a1 /* IN */ (r_data_1[5]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_6
(
	.z /* OUT */ (load_data_1_b6_obuf),
	.a0 /* IN */ (gpu_din[6]),
	.a1 /* IN */ (r_data_1[6]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_7
(
	.z /* OUT */ (load_data_1_b7_obuf),
	.a0 /* IN */ (gpu_din[7]),
	.a1 /* IN */ (r_data_1[7]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_8
(
	.z /* OUT */ (load_data_1_b8_obuf),
	.a0 /* IN */ (gpu_din[8]),
	.a1 /* IN */ (r_data_1[8]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_9
(
	.z /* OUT */ (load_data_1_b9_obuf),
	.a0 /* IN */ (gpu_din[9]),
	.a1 /* IN */ (r_data_1[9]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_10
(
	.z /* OUT */ (load_data_1_b10_obuf),
	.a0 /* IN */ (gpu_din[10]),
	.a1 /* IN */ (r_data_1[10]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_11
(
	.z /* OUT */ (load_data_1_b11_obuf),
	.a0 /* IN */ (gpu_din[11]),
	.a1 /* IN */ (r_data_1[11]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_12
(
	.z /* OUT */ (load_data_1_b12_obuf),
	.a0 /* IN */ (gpu_din[12]),
	.a1 /* IN */ (r_data_1[12]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_13
(
	.z /* OUT */ (load_data_1_b13_obuf),
	.a0 /* IN */ (gpu_din[13]),
	.a1 /* IN */ (r_data_1[13]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_14
(
	.z /* OUT */ (load_data_1_b14_obuf),
	.a0 /* IN */ (gpu_din[14]),
	.a1 /* IN */ (r_data_1[14]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_15
(
	.z /* OUT */ (load_data_1_b15_obuf),
	.a0 /* IN */ (gpu_din[15]),
	.a1 /* IN */ (r_data_1[15]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_16
(
	.z /* OUT */ (load_data_1_b16_obuf),
	.a0 /* IN */ (gpu_din[16]),
	.a1 /* IN */ (r_data_1[16]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_17
(
	.z /* OUT */ (load_data_1_b17_obuf),
	.a0 /* IN */ (gpu_din[17]),
	.a1 /* IN */ (r_data_1[17]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_18
(
	.z /* OUT */ (load_data_1_b18_obuf),
	.a0 /* IN */ (gpu_din[18]),
	.a1 /* IN */ (r_data_1[18]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_19
(
	.z /* OUT */ (load_data_1_b19_obuf),
	.a0 /* IN */ (gpu_din[19]),
	.a1 /* IN */ (r_data_1[19]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_20
(
	.z /* OUT */ (load_data_1_b20_obuf),
	.a0 /* IN */ (gpu_din[20]),
	.a1 /* IN */ (r_data_1[20]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_21
(
	.z /* OUT */ (load_data_1_b21_obuf),
	.a0 /* IN */ (gpu_din[21]),
	.a1 /* IN */ (r_data_1[21]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_22
(
	.z /* OUT */ (load_data_1_b22_obuf),
	.a0 /* IN */ (gpu_din[22]),
	.a1 /* IN */ (r_data_1[22]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_23
(
	.z /* OUT */ (load_data_1_b23_obuf),
	.a0 /* IN */ (gpu_din[23]),
	.a1 /* IN */ (r_data_1[23]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_24
(
	.z /* OUT */ (load_data_1_b24_obuf),
	.a0 /* IN */ (gpu_din[24]),
	.a1 /* IN */ (r_data_1[24]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_25
(
	.z /* OUT */ (load_data_1_b25_obuf),
	.a0 /* IN */ (gpu_din[25]),
	.a1 /* IN */ (r_data_1[25]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_26
(
	.z /* OUT */ (load_data_1_b26_obuf),
	.a0 /* IN */ (gpu_din[26]),
	.a1 /* IN */ (r_data_1[26]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_27
(
	.z /* OUT */ (load_data_1_b27_obuf),
	.a0 /* IN */ (gpu_din[27]),
	.a1 /* IN */ (r_data_1[27]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_28
(
	.z /* OUT */ (load_data_1_b28_obuf),
	.a0 /* IN */ (gpu_din[28]),
	.a1 /* IN */ (r_data_1[28]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_29
(
	.z /* OUT */ (load_data_1_b29_obuf),
	.a0 /* IN */ (gpu_din[29]),
	.a1 /* IN */ (r_data_1[29]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_30
(
	.z /* OUT */ (load_data_1_b30_obuf),
	.a0 /* IN */ (gpu_din[30]),
	.a1 /* IN */ (r_data_1[30]),
	.s /* IN */ (blit_backb)
);
mx2 load_data_index_1_inst_31
(
	.z /* OUT */ (load_data_1_b31_obuf),
	.a0 /* IN */ (gpu_din[31]),
	.a1 /* IN */ (r_data_1[31]),
	.s /* IN */ (blit_backb)
);

// DATAMUX.NET (136) - daddq_selb[0-1] : nivu
assign daddq_selb_0 = daddq_sel;
assign daddq_selb_1 = daddq_sel;

// DATAMUX.NET (137) - local_data[0] : mx2p
mx2 local_data_index_0_inst_0
(
	.z /* OUT */ (local_data_0[0]),
	.a0 /* IN */ (load_data_0_b0_obuf),
	.a1 /* IN */ (addqlo32[0]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_1
(
	.z /* OUT */ (local_data_0[1]),
	.a0 /* IN */ (load_data_0_b1_obuf),
	.a1 /* IN */ (addqlo32[1]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_2
(
	.z /* OUT */ (local_data_0[2]),
	.a0 /* IN */ (load_data_0_b2_obuf),
	.a1 /* IN */ (addqlo32[2]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_3
(
	.z /* OUT */ (local_data_0[3]),
	.a0 /* IN */ (load_data_0_b3_obuf),
	.a1 /* IN */ (addqlo32[3]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_4
(
	.z /* OUT */ (local_data_0[4]),
	.a0 /* IN */ (load_data_0_b4_obuf),
	.a1 /* IN */ (addqlo32[4]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_5
(
	.z /* OUT */ (local_data_0[5]),
	.a0 /* IN */ (load_data_0_b5_obuf),
	.a1 /* IN */ (addqlo32[5]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_6
(
	.z /* OUT */ (local_data_0[6]),
	.a0 /* IN */ (load_data_0_b6_obuf),
	.a1 /* IN */ (addqlo32[6]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_7
(
	.z /* OUT */ (local_data_0[7]),
	.a0 /* IN */ (load_data_0_b7_obuf),
	.a1 /* IN */ (addqlo32[7]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_8
(
	.z /* OUT */ (local_data_0[8]),
	.a0 /* IN */ (load_data_0_b8_obuf),
	.a1 /* IN */ (addqlo32[8]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_9
(
	.z /* OUT */ (local_data_0[9]),
	.a0 /* IN */ (load_data_0_b9_obuf),
	.a1 /* IN */ (addqlo32[9]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_10
(
	.z /* OUT */ (local_data_0[10]),
	.a0 /* IN */ (load_data_0_b10_obuf),
	.a1 /* IN */ (addqlo32[10]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_11
(
	.z /* OUT */ (local_data_0[11]),
	.a0 /* IN */ (load_data_0_b11_obuf),
	.a1 /* IN */ (addqlo32[11]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_12
(
	.z /* OUT */ (local_data_0[12]),
	.a0 /* IN */ (load_data_0_b12_obuf),
	.a1 /* IN */ (addqlo32[12]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_13
(
	.z /* OUT */ (local_data_0[13]),
	.a0 /* IN */ (load_data_0_b13_obuf),
	.a1 /* IN */ (addqlo32[13]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_14
(
	.z /* OUT */ (local_data_0[14]),
	.a0 /* IN */ (load_data_0_b14_obuf),
	.a1 /* IN */ (addqlo32[14]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_15
(
	.z /* OUT */ (local_data_0[15]),
	.a0 /* IN */ (load_data_0_b15_obuf),
	.a1 /* IN */ (addqlo32[15]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_16
(
	.z /* OUT */ (local_data_0[16]),
	.a0 /* IN */ (load_data_0_b16_obuf),
	.a1 /* IN */ (addqlo32[16]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_17
(
	.z /* OUT */ (local_data_0[17]),
	.a0 /* IN */ (load_data_0_b17_obuf),
	.a1 /* IN */ (addqlo32[17]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_18
(
	.z /* OUT */ (local_data_0[18]),
	.a0 /* IN */ (load_data_0_b18_obuf),
	.a1 /* IN */ (addqlo32[18]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_19
(
	.z /* OUT */ (local_data_0[19]),
	.a0 /* IN */ (load_data_0_b19_obuf),
	.a1 /* IN */ (addqlo32[19]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_20
(
	.z /* OUT */ (local_data_0[20]),
	.a0 /* IN */ (load_data_0_b20_obuf),
	.a1 /* IN */ (addqlo32[20]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_21
(
	.z /* OUT */ (local_data_0[21]),
	.a0 /* IN */ (load_data_0_b21_obuf),
	.a1 /* IN */ (addqlo32[21]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_22
(
	.z /* OUT */ (local_data_0[22]),
	.a0 /* IN */ (load_data_0_b22_obuf),
	.a1 /* IN */ (addqlo32[22]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_23
(
	.z /* OUT */ (local_data_0[23]),
	.a0 /* IN */ (load_data_0_b23_obuf),
	.a1 /* IN */ (addqlo32[23]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_24
(
	.z /* OUT */ (local_data_0[24]),
	.a0 /* IN */ (load_data_0_b24_obuf),
	.a1 /* IN */ (addqlo32[24]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_25
(
	.z /* OUT */ (local_data_0[25]),
	.a0 /* IN */ (load_data_0_b25_obuf),
	.a1 /* IN */ (addqlo32[25]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_26
(
	.z /* OUT */ (local_data_0[26]),
	.a0 /* IN */ (load_data_0_b26_obuf),
	.a1 /* IN */ (addqlo32[26]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_27
(
	.z /* OUT */ (local_data_0[27]),
	.a0 /* IN */ (load_data_0_b27_obuf),
	.a1 /* IN */ (addqlo32[27]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_28
(
	.z /* OUT */ (local_data_0[28]),
	.a0 /* IN */ (load_data_0_b28_obuf),
	.a1 /* IN */ (addqlo32[28]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_29
(
	.z /* OUT */ (local_data_0[29]),
	.a0 /* IN */ (load_data_0_b29_obuf),
	.a1 /* IN */ (addqlo32[29]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_30
(
	.z /* OUT */ (local_data_0[30]),
	.a0 /* IN */ (load_data_0_b30_obuf),
	.a1 /* IN */ (addqlo32[30]),
	.s /* IN */ (daddq_selb_0)
);
mx2 local_data_index_0_inst_31
(
	.z /* OUT */ (local_data_0[31]),
	.a0 /* IN */ (load_data_0_b31_obuf),
	.a1 /* IN */ (addqlo32[31]),
	.s /* IN */ (daddq_selb_0)
);

// DATAMUX.NET (139) - local_data[1] : mx2p
mx2 local_data_index_1_inst_0
(
	.z /* OUT */ (local_data_1[0]),
	.a0 /* IN */ (load_data_1_b0_obuf),
	.a1 /* IN */ (addqhi32[0]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_1
(
	.z /* OUT */ (local_data_1[1]),
	.a0 /* IN */ (load_data_1_b1_obuf),
	.a1 /* IN */ (addqhi32[1]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_2
(
	.z /* OUT */ (local_data_1[2]),
	.a0 /* IN */ (load_data_1_b2_obuf),
	.a1 /* IN */ (addqhi32[2]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_3
(
	.z /* OUT */ (local_data_1[3]),
	.a0 /* IN */ (load_data_1_b3_obuf),
	.a1 /* IN */ (addqhi32[3]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_4
(
	.z /* OUT */ (local_data_1[4]),
	.a0 /* IN */ (load_data_1_b4_obuf),
	.a1 /* IN */ (addqhi32[4]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_5
(
	.z /* OUT */ (local_data_1[5]),
	.a0 /* IN */ (load_data_1_b5_obuf),
	.a1 /* IN */ (addqhi32[5]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_6
(
	.z /* OUT */ (local_data_1[6]),
	.a0 /* IN */ (load_data_1_b6_obuf),
	.a1 /* IN */ (addqhi32[6]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_7
(
	.z /* OUT */ (local_data_1[7]),
	.a0 /* IN */ (load_data_1_b7_obuf),
	.a1 /* IN */ (addqhi32[7]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_8
(
	.z /* OUT */ (local_data_1[8]),
	.a0 /* IN */ (load_data_1_b8_obuf),
	.a1 /* IN */ (addqhi32[8]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_9
(
	.z /* OUT */ (local_data_1[9]),
	.a0 /* IN */ (load_data_1_b9_obuf),
	.a1 /* IN */ (addqhi32[9]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_10
(
	.z /* OUT */ (local_data_1[10]),
	.a0 /* IN */ (load_data_1_b10_obuf),
	.a1 /* IN */ (addqhi32[10]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_11
(
	.z /* OUT */ (local_data_1[11]),
	.a0 /* IN */ (load_data_1_b11_obuf),
	.a1 /* IN */ (addqhi32[11]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_12
(
	.z /* OUT */ (local_data_1[12]),
	.a0 /* IN */ (load_data_1_b12_obuf),
	.a1 /* IN */ (addqhi32[12]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_13
(
	.z /* OUT */ (local_data_1[13]),
	.a0 /* IN */ (load_data_1_b13_obuf),
	.a1 /* IN */ (addqhi32[13]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_14
(
	.z /* OUT */ (local_data_1[14]),
	.a0 /* IN */ (load_data_1_b14_obuf),
	.a1 /* IN */ (addqhi32[14]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_15
(
	.z /* OUT */ (local_data_1[15]),
	.a0 /* IN */ (load_data_1_b15_obuf),
	.a1 /* IN */ (addqhi32[15]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_16
(
	.z /* OUT */ (local_data_1[16]),
	.a0 /* IN */ (load_data_1_b16_obuf),
	.a1 /* IN */ (addqhi32[16]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_17
(
	.z /* OUT */ (local_data_1[17]),
	.a0 /* IN */ (load_data_1_b17_obuf),
	.a1 /* IN */ (addqhi32[17]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_18
(
	.z /* OUT */ (local_data_1[18]),
	.a0 /* IN */ (load_data_1_b18_obuf),
	.a1 /* IN */ (addqhi32[18]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_19
(
	.z /* OUT */ (local_data_1[19]),
	.a0 /* IN */ (load_data_1_b19_obuf),
	.a1 /* IN */ (addqhi32[19]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_20
(
	.z /* OUT */ (local_data_1[20]),
	.a0 /* IN */ (load_data_1_b20_obuf),
	.a1 /* IN */ (addqhi32[20]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_21
(
	.z /* OUT */ (local_data_1[21]),
	.a0 /* IN */ (load_data_1_b21_obuf),
	.a1 /* IN */ (addqhi32[21]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_22
(
	.z /* OUT */ (local_data_1[22]),
	.a0 /* IN */ (load_data_1_b22_obuf),
	.a1 /* IN */ (addqhi32[22]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_23
(
	.z /* OUT */ (local_data_1[23]),
	.a0 /* IN */ (load_data_1_b23_obuf),
	.a1 /* IN */ (addqhi32[23]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_24
(
	.z /* OUT */ (local_data_1[24]),
	.a0 /* IN */ (load_data_1_b24_obuf),
	.a1 /* IN */ (addqhi32[24]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_25
(
	.z /* OUT */ (local_data_1[25]),
	.a0 /* IN */ (load_data_1_b25_obuf),
	.a1 /* IN */ (addqhi32[25]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_26
(
	.z /* OUT */ (local_data_1[26]),
	.a0 /* IN */ (load_data_1_b26_obuf),
	.a1 /* IN */ (addqhi32[26]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_27
(
	.z /* OUT */ (local_data_1[27]),
	.a0 /* IN */ (load_data_1_b27_obuf),
	.a1 /* IN */ (addqhi32[27]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_28
(
	.z /* OUT */ (local_data_1[28]),
	.a0 /* IN */ (load_data_1_b28_obuf),
	.a1 /* IN */ (addqhi32[28]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_29
(
	.z /* OUT */ (local_data_1[29]),
	.a0 /* IN */ (load_data_1_b29_obuf),
	.a1 /* IN */ (addqhi32[29]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_30
(
	.z /* OUT */ (local_data_1[30]),
	.a0 /* IN */ (load_data_1_b30_obuf),
	.a1 /* IN */ (addqhi32[30]),
	.s /* IN */ (daddq_selb_1)
);
mx2 local_data_index_1_inst_31
(
	.z /* OUT */ (local_data_1[31]),
	.a0 /* IN */ (load_data_1_b31_obuf),
	.a1 /* IN */ (addqhi32[31]),
	.s /* IN */ (daddq_selb_1)
);
endmodule
/* verilator lint_on LITENDIAN */
