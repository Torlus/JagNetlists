`include "defs.v"

module address
(
	inout gpu_dout_0,
	inout gpu_dout_1,
	inout gpu_dout_2,
	inout gpu_dout_3,
	inout gpu_dout_4,
	inout gpu_dout_5,
	inout gpu_dout_6,
	inout gpu_dout_7,
	inout gpu_dout_8,
	inout gpu_dout_9,
	inout gpu_dout_10,
	inout gpu_dout_11,
	inout gpu_dout_12,
	inout gpu_dout_13,
	inout gpu_dout_14,
	inout gpu_dout_15,
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
	output a1_outside,
	output a1_pixsize_0,
	output a1_pixsize_1,
	output a1_pixsize_2,
	output[0:14] a1_win_x;
	output[0:15] a1_x;
	output a1addx_0,
	output a1addx_1,
	output a1addy,
	output a1xsign,
	output a1ysign,
	output a2_pixsize_0,
	output a2_pixsize_1,
	output a2_pixsize_2,
	output[0:15] a2_x;
	output a2addx_0,
	output a2addx_1,
	output a2addy,
	output a2xsign,
	output a2ysign,
	output[0:23] address;
	output pixa_0,
	output pixa_1,
	output pixa_2,
	input addasel_0,
	input addasel_1,
	input addasel_2,
	input addbsel_0,
	input addbsel_1,
	input addqsel,
	input adda_xconst_0,
	input adda_xconst_1,
	input adda_xconst_2,
	input adda_yconst,
	input addareg,
	input a1baseld,
	input a1flagld,
	input a1fracld,
	input a1incld,
	input a1incfld,
	input a1posrd,
	input a1posfrd,
	input a1ptrld,
	input a1stepld,
	input a1stepfld,
	input a1winld,
	input a2baseld,
	input a2flagld,
	input a2posrd,
	input a2ptrld,
	input a2stepld,
	input a2winld,
	input apipe,
	input clk,
	input gena2,
	input[0:31] gpu_din;
	input load_strobe,
	input modx_0,
	input modx_1,
	input modx_2,
	input suba_x,
	input suba_y,
	input zaddr
);
wire [0:14] gpu_d_lo15;
wire [0:14] gpu_d_hi15;
wire [0:14] a1_win_y;
wire [0:15] a1_y;
wire [0:15] a1_frac_x;
wire [0:15] a1_frac_y;
wire [0:15] a1_inc_x;
wire [0:15] a1_inc_y;
wire [0:15] a1_incf_x;
wire [0:15] a1_incf_y;
wire [0:15] a2_xm;
wire [0:15] a2_ym;
wire [0:15] a2_xr;
wire [0:15] a2_yr;
wire [0:15] adda_x;
wire [0:15] adda_y;
wire [0:15] addb_x;
wire [0:15] addb_y;
wire [0:15] addq_x;
wire [0:15] addq_y;
wire [0:15] data_x;
wire [0:15] data_y;
wire [0:15] a1_xt;
wire [0:15] a2_mask_x;
wire [0:15] a2_mask_y;
wire [0:15] gpu_d_lo16;
wire [0:15] gpu_d_hi16;
wire [0:20] a1_flags;
wire [0:20] a2_flags;
wire [0:20] gpu_d_lo21;
wire [0:20] a1_base;
wire [0:20] a2_base;
wire [0:20] gpu_d_m21;
wire [0:15] a1_step_x;
wire [0:15] a1_step_y;
wire [0:15] a1_stepf_x;
wire [0:15] a1_stepf_y;
wire [0:15] a2_y;
wire [0:15] a2_step_x;
wire [0:15] a2_step_y;
wire a1baseldg;
wire a1flagldg;
wire a1_pitch_0;
wire a1_pitch_1;
wire a1_zoffset_0;
wire a1_zoffset_1;
wire unused_0;
wire a1_width_0;
wire a1_width_1;
wire a1_width_2;
wire a1_width_3;
wire a1_width_4;
wire a1_width_5;
wire unused_1;
wire a1winldg;
wire a1stepldg;
wire a1stepfldg;
wire a1incldg;
wire a1incfldg;
wire a2baseldg;
wire a2flagldg;
wire a2_pitch_0;
wire a2_pitch_1;
wire a2_zoffset_0;
wire a2_zoffset_1;
wire unused_2;
wire a2_width_0;
wire a2_width_1;
wire a2_width_2;
wire a2_width_3;
wire a2_width_4;
wire a2_width_5;
wire a2_mask;
wire a2winldg;
wire a2stepldg;
wire a1_pos_0;
wire a1_pos_1;
wire a1_pos_2;
wire a1_pos_3;
wire a1_pos_4;
wire a1_pos_5;
wire a1_pos_6;
wire a1_pos_7;
wire a1_pos_8;
wire a1_pos_9;
wire a1_pos_10;
wire a1_pos_11;
wire a1_pos_12;
wire a1_pos_13;
wire a1_pos_14;
wire a1_pos_15;
wire a1_pos_16;
wire a1_pos_17;
wire a1_pos_18;
wire a1_pos_19;
wire a1_pos_20;
wire a1_pos_21;
wire a1_pos_22;
wire a1_pos_23;
wire a1_pos_24;
wire a1_pos_25;
wire a1_pos_26;
wire a1_pos_27;
wire a1_pos_28;
wire a1_pos_29;
wire a1_pos_30;
wire a1_pos_31;
wire a1_posf_0;
wire a1_posf_1;
wire a1_posf_2;
wire a1_posf_3;
wire a1_posf_4;
wire a1_posf_5;
wire a1_posf_6;
wire a1_posf_7;
wire a1_posf_8;
wire a1_posf_9;
wire a1_posf_10;
wire a1_posf_11;
wire a1_posf_12;
wire a1_posf_13;
wire a1_posf_14;
wire a1_posf_15;
wire a1_posf_16;
wire a1_posf_17;
wire a1_posf_18;
wire a1_posf_19;
wire a1_posf_20;
wire a1_posf_21;
wire a1_posf_22;
wire a1_posf_23;
wire a1_posf_24;
wire a1_posf_25;
wire a1_posf_26;
wire a1_posf_27;
wire a1_posf_28;
wire a1_posf_29;
wire a1_posf_30;
wire a1_posf_31;
wire a2_pos_0;
wire a2_pos_1;
wire a2_pos_2;
wire a2_pos_3;
wire a2_pos_4;
wire a2_pos_5;
wire a2_pos_6;
wire a2_pos_7;
wire a2_pos_8;
wire a2_pos_9;
wire a2_pos_10;
wire a2_pos_11;
wire a2_pos_12;
wire a2_pos_13;
wire a2_pos_14;
wire a2_pos_15;
wire a2_pos_16;
wire a2_pos_17;
wire a2_pos_18;
wire a2_pos_19;
wire a2_pos_20;
wire a2_pos_21;
wire a2_pos_22;
wire a2_pos_23;
wire a2_pos_24;
wire a2_pos_25;
wire a2_pos_26;
wire a2_pos_27;
wire a2_pos_28;
wire a2_pos_29;
wire a2_pos_30;
wire a2_pos_31;
wire grdt0_0;
wire grdt0_1;
wire grdt0_2;
wire grdt0_3;
wire grdt0_4;
wire grdt0_5;
wire grdt0_6;
wire grdt0_7;
wire grdt0_8;
wire grdt0_9;
wire grdt0_10;
wire grdt0_11;
wire grdt0_12;
wire grdt0_13;
wire grdt0_14;
wire grdt0_15;
wire grdt0_16;
wire grdt0_17;
wire grdt0_18;
wire grdt0_19;
wire grdt0_20;
wire grdt0_21;
wire grdt0_22;
wire grdt0_23;
wire grdt0_24;
wire grdt0_25;
wire grdt0_26;
wire grdt0_27;
wire grdt0_28;
wire grdt0_29;
wire grdt0_30;
wire grdt0_31;
wire grdt1_0;
wire grdt1_1;
wire grdt1_2;
wire grdt1_3;
wire grdt1_4;
wire grdt1_5;
wire grdt1_6;
wire grdt1_7;
wire grdt1_8;
wire grdt1_9;
wire grdt1_10;
wire grdt1_11;
wire grdt1_12;
wire grdt1_13;
wire grdt1_14;
wire grdt1_15;
wire grdt1_16;
wire grdt1_17;
wire grdt1_18;
wire grdt1_19;
wire grdt1_20;
wire grdt1_21;
wire grdt1_22;
wire grdt1_23;
wire grdt1_24;
wire grdt1_25;
wire grdt1_26;
wire grdt1_27;
wire grdt1_28;
wire grdt1_29;
wire grdt1_30;
wire grdt1_31;
wire grden;

// Output buffers
wire a1_pixsize_0_obuf;
wire a1_pixsize_1_obuf;
wire a1_pixsize_2_obuf;
wire a1_win_x_b0_obuf;
wire a1_win_x_b1_obuf;
wire a1_win_x_b2_obuf;
wire a1_win_x_b3_obuf;
wire a1_win_x_b4_obuf;
wire a1_win_x_b5_obuf;
wire a1_win_x_b6_obuf;
wire a1_win_x_b7_obuf;
wire a1_win_x_b8_obuf;
wire a1_win_x_b9_obuf;
wire a1_win_x_b10_obuf;
wire a1_win_x_b11_obuf;
wire a1_win_x_b12_obuf;
wire a1_win_x_b13_obuf;
wire a1_win_x_b14_obuf;
wire a1_x_b0_obuf;
wire a1_x_b1_obuf;
wire a1_x_b2_obuf;
wire a1_x_b3_obuf;
wire a1_x_b4_obuf;
wire a1_x_b5_obuf;
wire a1_x_b6_obuf;
wire a1_x_b7_obuf;
wire a1_x_b8_obuf;
wire a1_x_b9_obuf;
wire a1_x_b10_obuf;
wire a1_x_b11_obuf;
wire a1_x_b12_obuf;
wire a1_x_b13_obuf;
wire a1_x_b14_obuf;
wire a1_x_b15_obuf;
wire a2_pixsize_0_obuf;
wire a2_pixsize_1_obuf;
wire a2_pixsize_2_obuf;
wire a2_x_b0_obuf;
wire a2_x_b1_obuf;
wire a2_x_b2_obuf;
wire a2_x_b3_obuf;
wire a2_x_b4_obuf;
wire a2_x_b5_obuf;
wire a2_x_b6_obuf;
wire a2_x_b7_obuf;
wire a2_x_b8_obuf;
wire a2_x_b9_obuf;
wire a2_x_b10_obuf;
wire a2_x_b11_obuf;
wire a2_x_b12_obuf;
wire a2_x_b13_obuf;
wire a2_x_b14_obuf;
wire a2_x_b15_obuf;


// Output buffers
assign a1_pixsize_0 = a1_pixsize_0_obuf;
assign a1_pixsize_1 = a1_pixsize_1_obuf;
assign a1_pixsize_2 = a1_pixsize_2_obuf;
assign a1_win_x[0] = a1_win_x_b0_obuf;
assign a1_win_x[1] = a1_win_x_b1_obuf;
assign a1_win_x[2] = a1_win_x_b2_obuf;
assign a1_win_x[3] = a1_win_x_b3_obuf;
assign a1_win_x[4] = a1_win_x_b4_obuf;
assign a1_win_x[5] = a1_win_x_b5_obuf;
assign a1_win_x[6] = a1_win_x_b6_obuf;
assign a1_win_x[7] = a1_win_x_b7_obuf;
assign a1_win_x[8] = a1_win_x_b8_obuf;
assign a1_win_x[9] = a1_win_x_b9_obuf;
assign a1_win_x[10] = a1_win_x_b10_obuf;
assign a1_win_x[11] = a1_win_x_b11_obuf;
assign a1_win_x[12] = a1_win_x_b12_obuf;
assign a1_win_x[13] = a1_win_x_b13_obuf;
assign a1_win_x[14] = a1_win_x_b14_obuf;
assign a1_x[0] = a1_x_b0_obuf;
assign a1_x[1] = a1_x_b1_obuf;
assign a1_x[2] = a1_x_b2_obuf;
assign a1_x[3] = a1_x_b3_obuf;
assign a1_x[4] = a1_x_b4_obuf;
assign a1_x[5] = a1_x_b5_obuf;
assign a1_x[6] = a1_x_b6_obuf;
assign a1_x[7] = a1_x_b7_obuf;
assign a1_x[8] = a1_x_b8_obuf;
assign a1_x[9] = a1_x_b9_obuf;
assign a1_x[10] = a1_x_b10_obuf;
assign a1_x[11] = a1_x_b11_obuf;
assign a1_x[12] = a1_x_b12_obuf;
assign a1_x[13] = a1_x_b13_obuf;
assign a1_x[14] = a1_x_b14_obuf;
assign a1_x[15] = a1_x_b15_obuf;
assign a2_pixsize_0 = a2_pixsize_0_obuf;
assign a2_pixsize_1 = a2_pixsize_1_obuf;
assign a2_pixsize_2 = a2_pixsize_2_obuf;
assign a2_x[0] = a2_x_b0_obuf;
assign a2_x[1] = a2_x_b1_obuf;
assign a2_x[2] = a2_x_b2_obuf;
assign a2_x[3] = a2_x_b3_obuf;
assign a2_x[4] = a2_x_b4_obuf;
assign a2_x[5] = a2_x_b5_obuf;
assign a2_x[6] = a2_x_b6_obuf;
assign a2_x[7] = a2_x_b7_obuf;
assign a2_x[8] = a2_x_b8_obuf;
assign a2_x[9] = a2_x_b9_obuf;
assign a2_x[10] = a2_x_b10_obuf;
assign a2_x[11] = a2_x_b11_obuf;
assign a2_x[12] = a2_x_b12_obuf;
assign a2_x[13] = a2_x_b13_obuf;
assign a2_x[14] = a2_x_b14_obuf;
assign a2_x[15] = a2_x_b15_obuf;


// ADDRESS.NET (81) - gpulo15 : join
assign gpu_d_lo15[0] = gpu_din[0];
assign gpu_d_lo15[1] = gpu_din[1];
assign gpu_d_lo15[2] = gpu_din[2];
assign gpu_d_lo15[3] = gpu_din[3];
assign gpu_d_lo15[4] = gpu_din[4];
assign gpu_d_lo15[5] = gpu_din[5];
assign gpu_d_lo15[6] = gpu_din[6];
assign gpu_d_lo15[7] = gpu_din[7];
assign gpu_d_lo15[8] = gpu_din[8];
assign gpu_d_lo15[9] = gpu_din[9];
assign gpu_d_lo15[10] = gpu_din[10];
assign gpu_d_lo15[11] = gpu_din[11];
assign gpu_d_lo15[12] = gpu_din[12];
assign gpu_d_lo15[13] = gpu_din[13];
assign gpu_d_lo15[14] = gpu_din[14];

// ADDRESS.NET (82) - gpuhi15 : join
assign gpu_d_hi15[0] = gpu_din[16];
assign gpu_d_hi15[1] = gpu_din[17];
assign gpu_d_hi15[2] = gpu_din[18];
assign gpu_d_hi15[3] = gpu_din[19];
assign gpu_d_hi15[4] = gpu_din[20];
assign gpu_d_hi15[5] = gpu_din[21];
assign gpu_d_hi15[6] = gpu_din[22];
assign gpu_d_hi15[7] = gpu_din[23];
assign gpu_d_hi15[8] = gpu_din[24];
assign gpu_d_hi15[9] = gpu_din[25];
assign gpu_d_hi15[10] = gpu_din[26];
assign gpu_d_hi15[11] = gpu_din[27];
assign gpu_d_hi15[12] = gpu_din[28];
assign gpu_d_hi15[13] = gpu_din[29];
assign gpu_d_hi15[14] = gpu_din[30];

// ADDRESS.NET (83) - gpulo16 : join
assign gpu_d_lo16[0] = gpu_din[0];
assign gpu_d_lo16[1] = gpu_din[1];
assign gpu_d_lo16[2] = gpu_din[2];
assign gpu_d_lo16[3] = gpu_din[3];
assign gpu_d_lo16[4] = gpu_din[4];
assign gpu_d_lo16[5] = gpu_din[5];
assign gpu_d_lo16[6] = gpu_din[6];
assign gpu_d_lo16[7] = gpu_din[7];
assign gpu_d_lo16[8] = gpu_din[8];
assign gpu_d_lo16[9] = gpu_din[9];
assign gpu_d_lo16[10] = gpu_din[10];
assign gpu_d_lo16[11] = gpu_din[11];
assign gpu_d_lo16[12] = gpu_din[12];
assign gpu_d_lo16[13] = gpu_din[13];
assign gpu_d_lo16[14] = gpu_din[14];
assign gpu_d_lo16[15] = gpu_din[15];

// ADDRESS.NET (84) - gpuhi16 : join
assign gpu_d_hi16[0] = gpu_din[16];
assign gpu_d_hi16[1] = gpu_din[17];
assign gpu_d_hi16[2] = gpu_din[18];
assign gpu_d_hi16[3] = gpu_din[19];
assign gpu_d_hi16[4] = gpu_din[20];
assign gpu_d_hi16[5] = gpu_din[21];
assign gpu_d_hi16[6] = gpu_din[22];
assign gpu_d_hi16[7] = gpu_din[23];
assign gpu_d_hi16[8] = gpu_din[24];
assign gpu_d_hi16[9] = gpu_din[25];
assign gpu_d_hi16[10] = gpu_din[26];
assign gpu_d_hi16[11] = gpu_din[27];
assign gpu_d_hi16[12] = gpu_din[28];
assign gpu_d_hi16[13] = gpu_din[29];
assign gpu_d_hi16[14] = gpu_din[30];
assign gpu_d_hi16[15] = gpu_din[31];

// ADDRESS.NET (85) - gpulo21 : join
assign gpu_d_lo21[0] = gpu_din[0];
assign gpu_d_lo21[1] = gpu_din[1];
assign gpu_d_lo21[2] = gpu_din[2];
assign gpu_d_lo21[3] = gpu_din[3];
assign gpu_d_lo21[4] = gpu_din[4];
assign gpu_d_lo21[5] = gpu_din[5];
assign gpu_d_lo21[6] = gpu_din[6];
assign gpu_d_lo21[7] = gpu_din[7];
assign gpu_d_lo21[8] = gpu_din[8];
assign gpu_d_lo21[9] = gpu_din[9];
assign gpu_d_lo21[10] = gpu_din[10];
assign gpu_d_lo21[11] = gpu_din[11];
assign gpu_d_lo21[12] = gpu_din[12];
assign gpu_d_lo21[13] = gpu_din[13];
assign gpu_d_lo21[14] = gpu_din[14];
assign gpu_d_lo21[15] = gpu_din[15];
assign gpu_d_lo21[16] = gpu_din[16];
assign gpu_d_lo21[17] = gpu_din[17];
assign gpu_d_lo21[18] = gpu_din[18];
assign gpu_d_lo21[19] = gpu_din[19];
assign gpu_d_lo21[20] = gpu_din[20];

// ADDRESS.NET (86) - gpuhi29 : join
assign gpu_d_m21[0] = gpu_din[3];
assign gpu_d_m21[1] = gpu_din[4];
assign gpu_d_m21[2] = gpu_din[5];
assign gpu_d_m21[3] = gpu_din[6];
assign gpu_d_m21[4] = gpu_din[7];
assign gpu_d_m21[5] = gpu_din[8];
assign gpu_d_m21[6] = gpu_din[9];
assign gpu_d_m21[7] = gpu_din[10];
assign gpu_d_m21[8] = gpu_din[11];
assign gpu_d_m21[9] = gpu_din[12];
assign gpu_d_m21[10] = gpu_din[13];
assign gpu_d_m21[11] = gpu_din[14];
assign gpu_d_m21[12] = gpu_din[15];
assign gpu_d_m21[13] = gpu_din[16];
assign gpu_d_m21[14] = gpu_din[17];
assign gpu_d_m21[15] = gpu_din[18];
assign gpu_d_m21[16] = gpu_din[19];
assign gpu_d_m21[17] = gpu_din[20];
assign gpu_d_m21[18] = gpu_din[21];
assign gpu_d_m21[19] = gpu_din[22];
assign gpu_d_m21[20] = gpu_din[23];

// ADDRESS.NET (92) - a1baseldg : an2u
assign a1baseldg = a1baseld & load_strobe;

// ADDRESS.NET (93) - a1base : ldp1q
ldp1q a1base_inst_0
(
	.q(a1_base[0]), // OUT
	.d(gpu_d_m21[0]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_1
(
	.q(a1_base[1]), // OUT
	.d(gpu_d_m21[1]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_2
(
	.q(a1_base[2]), // OUT
	.d(gpu_d_m21[2]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_3
(
	.q(a1_base[3]), // OUT
	.d(gpu_d_m21[3]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_4
(
	.q(a1_base[4]), // OUT
	.d(gpu_d_m21[4]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_5
(
	.q(a1_base[5]), // OUT
	.d(gpu_d_m21[5]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_6
(
	.q(a1_base[6]), // OUT
	.d(gpu_d_m21[6]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_7
(
	.q(a1_base[7]), // OUT
	.d(gpu_d_m21[7]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_8
(
	.q(a1_base[8]), // OUT
	.d(gpu_d_m21[8]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_9
(
	.q(a1_base[9]), // OUT
	.d(gpu_d_m21[9]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_10
(
	.q(a1_base[10]), // OUT
	.d(gpu_d_m21[10]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_11
(
	.q(a1_base[11]), // OUT
	.d(gpu_d_m21[11]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_12
(
	.q(a1_base[12]), // OUT
	.d(gpu_d_m21[12]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_13
(
	.q(a1_base[13]), // OUT
	.d(gpu_d_m21[13]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_14
(
	.q(a1_base[14]), // OUT
	.d(gpu_d_m21[14]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_15
(
	.q(a1_base[15]), // OUT
	.d(gpu_d_m21[15]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_16
(
	.q(a1_base[16]), // OUT
	.d(gpu_d_m21[16]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_17
(
	.q(a1_base[17]), // OUT
	.d(gpu_d_m21[17]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_18
(
	.q(a1_base[18]), // OUT
	.d(gpu_d_m21[18]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_19
(
	.q(a1_base[19]), // OUT
	.d(gpu_d_m21[19]), // IN
	.g(a1baseldg)  // IN
);
ldp1q a1base_inst_20
(
	.q(a1_base[20]), // OUT
	.d(gpu_d_m21[20]), // IN
	.g(a1baseldg)  // IN
);

// ADDRESS.NET (97) - a1flagldg : an2h
assign a1flagldg = a1flagld & load_strobe;

// ADDRESS.NET (98) - a1flags : ldp1q
ldp1q a1flags_inst_0
(
	.q(a1_flags[0]), // OUT
	.d(gpu_d_lo21[0]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_1
(
	.q(a1_flags[1]), // OUT
	.d(gpu_d_lo21[1]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_2
(
	.q(a1_flags[2]), // OUT
	.d(gpu_d_lo21[2]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_3
(
	.q(a1_flags[3]), // OUT
	.d(gpu_d_lo21[3]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_4
(
	.q(a1_flags[4]), // OUT
	.d(gpu_d_lo21[4]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_5
(
	.q(a1_flags[5]), // OUT
	.d(gpu_d_lo21[5]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_6
(
	.q(a1_flags[6]), // OUT
	.d(gpu_d_lo21[6]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_7
(
	.q(a1_flags[7]), // OUT
	.d(gpu_d_lo21[7]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_8
(
	.q(a1_flags[8]), // OUT
	.d(gpu_d_lo21[8]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_9
(
	.q(a1_flags[9]), // OUT
	.d(gpu_d_lo21[9]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_10
(
	.q(a1_flags[10]), // OUT
	.d(gpu_d_lo21[10]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_11
(
	.q(a1_flags[11]), // OUT
	.d(gpu_d_lo21[11]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_12
(
	.q(a1_flags[12]), // OUT
	.d(gpu_d_lo21[12]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_13
(
	.q(a1_flags[13]), // OUT
	.d(gpu_d_lo21[13]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_14
(
	.q(a1_flags[14]), // OUT
	.d(gpu_d_lo21[14]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_15
(
	.q(a1_flags[15]), // OUT
	.d(gpu_d_lo21[15]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_16
(
	.q(a1_flags[16]), // OUT
	.d(gpu_d_lo21[16]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_17
(
	.q(a1_flags[17]), // OUT
	.d(gpu_d_lo21[17]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_18
(
	.q(a1_flags[18]), // OUT
	.d(gpu_d_lo21[18]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_19
(
	.q(a1_flags[19]), // OUT
	.d(gpu_d_lo21[19]), // IN
	.g(a1flagldg)  // IN
);
ldp1q a1flags_inst_20
(
	.q(a1_flags[20]), // OUT
	.d(gpu_d_lo21[20]), // IN
	.g(a1flagldg)  // IN
);

// ADDRESS.NET (99) - a1_pixp[0-1] : join
assign a1_pitch_0 = a1_flags[0];
assign a1_pitch_1 = a1_flags[1];

// ADDRESS.NET (100) - a1_pixs[0-2] : join
assign a1_pixsize_0_obuf = a1_flags[3];
assign a1_pixsize_1_obuf = a1_flags[4];
assign a1_pixsize_2_obuf = a1_flags[5];

// ADDRESS.NET (101) - a1_zoff[0-1] : join
assign a1_zoffset_0 = a1_flags[6];
assign a1_zoffset_1 = a1_flags[7];

// ADDRESS.NET (102) - a1unused[0] : join
assign unused_0 = a1_flags[8];

// ADDRESS.NET (103) - a1_wdth[0-5] : join
assign a1_width_0 = a1_flags[9];
assign a1_width_1 = a1_flags[10];
assign a1_width_2 = a1_flags[11];
assign a1_width_3 = a1_flags[12];
assign a1_width_4 = a1_flags[13];
assign a1_width_5 = a1_flags[14];

// ADDRESS.NET (104) - a1unused[1] : join
assign unused_1 = a1_flags[15];

// ADDRESS.NET (105) - a1addx[0] : nivm
assign a1addx_0 = a1_flags[16];

// ADDRESS.NET (106) - a1addx[1] : nivm
assign a1addx_1 = a1_flags[17];

// ADDRESS.NET (107) - a1addy : join
assign a1addy = a1_flags[18];

// ADDRESS.NET (108) - a1xsign : join
assign a1xsign = a1_flags[19];

// ADDRESS.NET (109) - a1ysign : join
assign a1ysign = a1_flags[20];

// ADDRESS.NET (113) - a1winldg : an2u
assign a1winldg = a1winld & load_strobe;

// ADDRESS.NET (114) - a1winx : ldp1q
ldp1q a1winx_inst_0
(
	.q(a1_win_x_b0_obuf), // OUT
	.d(gpu_d_lo15[0]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_1
(
	.q(a1_win_x_b1_obuf), // OUT
	.d(gpu_d_lo15[1]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_2
(
	.q(a1_win_x_b2_obuf), // OUT
	.d(gpu_d_lo15[2]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_3
(
	.q(a1_win_x_b3_obuf), // OUT
	.d(gpu_d_lo15[3]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_4
(
	.q(a1_win_x_b4_obuf), // OUT
	.d(gpu_d_lo15[4]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_5
(
	.q(a1_win_x_b5_obuf), // OUT
	.d(gpu_d_lo15[5]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_6
(
	.q(a1_win_x_b6_obuf), // OUT
	.d(gpu_d_lo15[6]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_7
(
	.q(a1_win_x_b7_obuf), // OUT
	.d(gpu_d_lo15[7]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_8
(
	.q(a1_win_x_b8_obuf), // OUT
	.d(gpu_d_lo15[8]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_9
(
	.q(a1_win_x_b9_obuf), // OUT
	.d(gpu_d_lo15[9]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_10
(
	.q(a1_win_x_b10_obuf), // OUT
	.d(gpu_d_lo15[10]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_11
(
	.q(a1_win_x_b11_obuf), // OUT
	.d(gpu_d_lo15[11]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_12
(
	.q(a1_win_x_b12_obuf), // OUT
	.d(gpu_d_lo15[12]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_13
(
	.q(a1_win_x_b13_obuf), // OUT
	.d(gpu_d_lo15[13]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winx_inst_14
(
	.q(a1_win_x_b14_obuf), // OUT
	.d(gpu_d_lo15[14]), // IN
	.g(a1winldg)  // IN
);

// ADDRESS.NET (115) - a1winy : ldp1q
ldp1q a1winy_inst_0
(
	.q(a1_win_y[0]), // OUT
	.d(gpu_d_hi15[0]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_1
(
	.q(a1_win_y[1]), // OUT
	.d(gpu_d_hi15[1]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_2
(
	.q(a1_win_y[2]), // OUT
	.d(gpu_d_hi15[2]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_3
(
	.q(a1_win_y[3]), // OUT
	.d(gpu_d_hi15[3]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_4
(
	.q(a1_win_y[4]), // OUT
	.d(gpu_d_hi15[4]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_5
(
	.q(a1_win_y[5]), // OUT
	.d(gpu_d_hi15[5]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_6
(
	.q(a1_win_y[6]), // OUT
	.d(gpu_d_hi15[6]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_7
(
	.q(a1_win_y[7]), // OUT
	.d(gpu_d_hi15[7]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_8
(
	.q(a1_win_y[8]), // OUT
	.d(gpu_d_hi15[8]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_9
(
	.q(a1_win_y[9]), // OUT
	.d(gpu_d_hi15[9]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_10
(
	.q(a1_win_y[10]), // OUT
	.d(gpu_d_hi15[10]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_11
(
	.q(a1_win_y[11]), // OUT
	.d(gpu_d_hi15[11]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_12
(
	.q(a1_win_y[12]), // OUT
	.d(gpu_d_hi15[12]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_13
(
	.q(a1_win_y[13]), // OUT
	.d(gpu_d_hi15[13]), // IN
	.g(a1winldg)  // IN
);
ldp1q a1winy_inst_14
(
	.q(a1_win_y[14]), // OUT
	.d(gpu_d_hi15[14]), // IN
	.g(a1winldg)  // IN
);

// ADDRESS.NET (119) - a1xt : fdsync16
fdsync16 a1xt_inst
(
	.q({a1_xt[0],a1_xt[1],a1_xt[2],a1_xt[3],a1_xt[4],a1_xt[5],a1_xt[6],a1_xt[7],a1_xt[8],a1_xt[9],a1_xt[10],a1_xt[11],a1_xt[12],a1_xt[13],a1_xt[14],a1_xt[15]}), // IO
	.d({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}), // IN
	.ld(a1ptrld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (120) - a1x : nivm
assign a1_x_b0_obuf = a1_xt[0];
assign a1_x_b1_obuf = a1_xt[1];
assign a1_x_b2_obuf = a1_xt[2];
assign a1_x_b3_obuf = a1_xt[3];
assign a1_x_b4_obuf = a1_xt[4];
assign a1_x_b5_obuf = a1_xt[5];
assign a1_x_b6_obuf = a1_xt[6];
assign a1_x_b7_obuf = a1_xt[7];
assign a1_x_b8_obuf = a1_xt[8];
assign a1_x_b9_obuf = a1_xt[9];
assign a1_x_b10_obuf = a1_xt[10];
assign a1_x_b11_obuf = a1_xt[11];
assign a1_x_b12_obuf = a1_xt[12];
assign a1_x_b13_obuf = a1_xt[13];
assign a1_x_b14_obuf = a1_xt[14];
assign a1_x_b15_obuf = a1_xt[15];

// ADDRESS.NET (121) - a1y : fdsync16
fdsync16 a1y_inst
(
	.q({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}), // IO
	.d({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}), // IN
	.ld(a1ptrld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (125) - a1stepldg : an2u
assign a1stepldg = a1stepld & load_strobe;

// ADDRESS.NET (126) - a1stepfldg : an2u
assign a1stepfldg = a1stepfld & load_strobe;

// ADDRESS.NET (127) - a1stepx : ldp1q
ldp1q a1stepx_inst_0
(
	.q(a1_step_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_1
(
	.q(a1_step_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_2
(
	.q(a1_step_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_3
(
	.q(a1_step_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_4
(
	.q(a1_step_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_5
(
	.q(a1_step_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_6
(
	.q(a1_step_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_7
(
	.q(a1_step_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_8
(
	.q(a1_step_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_9
(
	.q(a1_step_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_10
(
	.q(a1_step_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_11
(
	.q(a1_step_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_12
(
	.q(a1_step_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_13
(
	.q(a1_step_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_14
(
	.q(a1_step_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepx_inst_15
(
	.q(a1_step_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a1stepldg)  // IN
);

// ADDRESS.NET (128) - a1stepy : ldp1q
ldp1q a1stepy_inst_0
(
	.q(a1_step_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_1
(
	.q(a1_step_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_2
(
	.q(a1_step_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_3
(
	.q(a1_step_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_4
(
	.q(a1_step_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_5
(
	.q(a1_step_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_6
(
	.q(a1_step_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_7
(
	.q(a1_step_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_8
(
	.q(a1_step_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_9
(
	.q(a1_step_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_10
(
	.q(a1_step_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_11
(
	.q(a1_step_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_12
(
	.q(a1_step_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_13
(
	.q(a1_step_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_14
(
	.q(a1_step_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a1stepldg)  // IN
);
ldp1q a1stepy_inst_15
(
	.q(a1_step_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a1stepldg)  // IN
);

// ADDRESS.NET (129) - a1stepfx : ldp1q
ldp1q a1stepfx_inst_0
(
	.q(a1_stepf_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_1
(
	.q(a1_stepf_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_2
(
	.q(a1_stepf_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_3
(
	.q(a1_stepf_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_4
(
	.q(a1_stepf_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_5
(
	.q(a1_stepf_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_6
(
	.q(a1_stepf_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_7
(
	.q(a1_stepf_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_8
(
	.q(a1_stepf_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_9
(
	.q(a1_stepf_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_10
(
	.q(a1_stepf_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_11
(
	.q(a1_stepf_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_12
(
	.q(a1_stepf_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_13
(
	.q(a1_stepf_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_14
(
	.q(a1_stepf_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfx_inst_15
(
	.q(a1_stepf_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a1stepfldg)  // IN
);

// ADDRESS.NET (130) - a1stepfy : ldp1q
ldp1q a1stepfy_inst_0
(
	.q(a1_stepf_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_1
(
	.q(a1_stepf_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_2
(
	.q(a1_stepf_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_3
(
	.q(a1_stepf_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_4
(
	.q(a1_stepf_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_5
(
	.q(a1_stepf_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_6
(
	.q(a1_stepf_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_7
(
	.q(a1_stepf_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_8
(
	.q(a1_stepf_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_9
(
	.q(a1_stepf_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_10
(
	.q(a1_stepf_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_11
(
	.q(a1_stepf_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_12
(
	.q(a1_stepf_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_13
(
	.q(a1_stepf_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_14
(
	.q(a1_stepf_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a1stepfldg)  // IN
);
ldp1q a1stepfy_inst_15
(
	.q(a1_stepf_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a1stepfldg)  // IN
);

// ADDRESS.NET (134) - a1fracx : fdsync16
fdsync16 a1fracx_inst
(
	.q({a1_frac_x[0],a1_frac_x[1],a1_frac_x[2],a1_frac_x[3],a1_frac_x[4],a1_frac_x[5],a1_frac_x[6],a1_frac_x[7],a1_frac_x[8],a1_frac_x[9],a1_frac_x[10],a1_frac_x[11],a1_frac_x[12],a1_frac_x[13],a1_frac_x[14],a1_frac_x[15]}), // IO
	.d({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}), // IN
	.ld(a1fracld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (135) - a1fracy : fdsync16
fdsync16 a1fracy_inst
(
	.q({a1_frac_y[0],a1_frac_y[1],a1_frac_y[2],a1_frac_y[3],a1_frac_y[4],a1_frac_y[5],a1_frac_y[6],a1_frac_y[7],a1_frac_y[8],a1_frac_y[9],a1_frac_y[10],a1_frac_y[11],a1_frac_y[12],a1_frac_y[13],a1_frac_y[14],a1_frac_y[15]}), // IO
	.d({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}), // IN
	.ld(a1fracld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (139) - a1incldg : an2u
assign a1incldg = a1incld & load_strobe;

// ADDRESS.NET (140) - a1incfldg : an2u
assign a1incfldg = a1incfld & load_strobe;

// ADDRESS.NET (141) - a1incx : ldp1q
ldp1q a1incx_inst_0
(
	.q(a1_inc_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_1
(
	.q(a1_inc_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_2
(
	.q(a1_inc_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_3
(
	.q(a1_inc_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_4
(
	.q(a1_inc_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_5
(
	.q(a1_inc_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_6
(
	.q(a1_inc_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_7
(
	.q(a1_inc_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_8
(
	.q(a1_inc_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_9
(
	.q(a1_inc_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_10
(
	.q(a1_inc_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_11
(
	.q(a1_inc_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_12
(
	.q(a1_inc_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_13
(
	.q(a1_inc_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_14
(
	.q(a1_inc_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incx_inst_15
(
	.q(a1_inc_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a1incldg)  // IN
);

// ADDRESS.NET (142) - a1incy : ldp1q
ldp1q a1incy_inst_0
(
	.q(a1_inc_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_1
(
	.q(a1_inc_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_2
(
	.q(a1_inc_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_3
(
	.q(a1_inc_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_4
(
	.q(a1_inc_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_5
(
	.q(a1_inc_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_6
(
	.q(a1_inc_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_7
(
	.q(a1_inc_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_8
(
	.q(a1_inc_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_9
(
	.q(a1_inc_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_10
(
	.q(a1_inc_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_11
(
	.q(a1_inc_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_12
(
	.q(a1_inc_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_13
(
	.q(a1_inc_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_14
(
	.q(a1_inc_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a1incldg)  // IN
);
ldp1q a1incy_inst_15
(
	.q(a1_inc_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a1incldg)  // IN
);

// ADDRESS.NET (143) - a1incfx : ldp1q
ldp1q a1incfx_inst_0
(
	.q(a1_incf_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_1
(
	.q(a1_incf_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_2
(
	.q(a1_incf_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_3
(
	.q(a1_incf_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_4
(
	.q(a1_incf_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_5
(
	.q(a1_incf_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_6
(
	.q(a1_incf_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_7
(
	.q(a1_incf_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_8
(
	.q(a1_incf_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_9
(
	.q(a1_incf_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_10
(
	.q(a1_incf_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_11
(
	.q(a1_incf_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_12
(
	.q(a1_incf_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_13
(
	.q(a1_incf_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_14
(
	.q(a1_incf_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfx_inst_15
(
	.q(a1_incf_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a1incfldg)  // IN
);

// ADDRESS.NET (144) - a1incfy : ldp1q
ldp1q a1incfy_inst_0
(
	.q(a1_incf_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_1
(
	.q(a1_incf_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_2
(
	.q(a1_incf_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_3
(
	.q(a1_incf_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_4
(
	.q(a1_incf_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_5
(
	.q(a1_incf_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_6
(
	.q(a1_incf_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_7
(
	.q(a1_incf_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_8
(
	.q(a1_incf_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_9
(
	.q(a1_incf_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_10
(
	.q(a1_incf_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_11
(
	.q(a1_incf_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_12
(
	.q(a1_incf_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_13
(
	.q(a1_incf_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_14
(
	.q(a1_incf_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a1incfldg)  // IN
);
ldp1q a1incfy_inst_15
(
	.q(a1_incf_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a1incfldg)  // IN
);

// ADDRESS.NET (150) - a2baseldg : an2u
assign a2baseldg = a2baseld & load_strobe;

// ADDRESS.NET (151) - a2base : ldp1q
ldp1q a2base_inst_0
(
	.q(a2_base[0]), // OUT
	.d(gpu_d_m21[0]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_1
(
	.q(a2_base[1]), // OUT
	.d(gpu_d_m21[1]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_2
(
	.q(a2_base[2]), // OUT
	.d(gpu_d_m21[2]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_3
(
	.q(a2_base[3]), // OUT
	.d(gpu_d_m21[3]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_4
(
	.q(a2_base[4]), // OUT
	.d(gpu_d_m21[4]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_5
(
	.q(a2_base[5]), // OUT
	.d(gpu_d_m21[5]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_6
(
	.q(a2_base[6]), // OUT
	.d(gpu_d_m21[6]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_7
(
	.q(a2_base[7]), // OUT
	.d(gpu_d_m21[7]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_8
(
	.q(a2_base[8]), // OUT
	.d(gpu_d_m21[8]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_9
(
	.q(a2_base[9]), // OUT
	.d(gpu_d_m21[9]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_10
(
	.q(a2_base[10]), // OUT
	.d(gpu_d_m21[10]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_11
(
	.q(a2_base[11]), // OUT
	.d(gpu_d_m21[11]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_12
(
	.q(a2_base[12]), // OUT
	.d(gpu_d_m21[12]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_13
(
	.q(a2_base[13]), // OUT
	.d(gpu_d_m21[13]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_14
(
	.q(a2_base[14]), // OUT
	.d(gpu_d_m21[14]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_15
(
	.q(a2_base[15]), // OUT
	.d(gpu_d_m21[15]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_16
(
	.q(a2_base[16]), // OUT
	.d(gpu_d_m21[16]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_17
(
	.q(a2_base[17]), // OUT
	.d(gpu_d_m21[17]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_18
(
	.q(a2_base[18]), // OUT
	.d(gpu_d_m21[18]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_19
(
	.q(a2_base[19]), // OUT
	.d(gpu_d_m21[19]), // IN
	.g(a2baseldg)  // IN
);
ldp1q a2base_inst_20
(
	.q(a2_base[20]), // OUT
	.d(gpu_d_m21[20]), // IN
	.g(a2baseldg)  // IN
);

// ADDRESS.NET (155) - a2flagldg : an2h
assign a2flagldg = a2flagld & load_strobe;

// ADDRESS.NET (156) - a2flags : ldp1q
ldp1q a2flags_inst_0
(
	.q(a2_flags[0]), // OUT
	.d(gpu_d_lo21[0]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_1
(
	.q(a2_flags[1]), // OUT
	.d(gpu_d_lo21[1]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_2
(
	.q(a2_flags[2]), // OUT
	.d(gpu_d_lo21[2]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_3
(
	.q(a2_flags[3]), // OUT
	.d(gpu_d_lo21[3]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_4
(
	.q(a2_flags[4]), // OUT
	.d(gpu_d_lo21[4]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_5
(
	.q(a2_flags[5]), // OUT
	.d(gpu_d_lo21[5]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_6
(
	.q(a2_flags[6]), // OUT
	.d(gpu_d_lo21[6]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_7
(
	.q(a2_flags[7]), // OUT
	.d(gpu_d_lo21[7]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_8
(
	.q(a2_flags[8]), // OUT
	.d(gpu_d_lo21[8]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_9
(
	.q(a2_flags[9]), // OUT
	.d(gpu_d_lo21[9]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_10
(
	.q(a2_flags[10]), // OUT
	.d(gpu_d_lo21[10]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_11
(
	.q(a2_flags[11]), // OUT
	.d(gpu_d_lo21[11]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_12
(
	.q(a2_flags[12]), // OUT
	.d(gpu_d_lo21[12]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_13
(
	.q(a2_flags[13]), // OUT
	.d(gpu_d_lo21[13]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_14
(
	.q(a2_flags[14]), // OUT
	.d(gpu_d_lo21[14]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_15
(
	.q(a2_flags[15]), // OUT
	.d(gpu_d_lo21[15]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_16
(
	.q(a2_flags[16]), // OUT
	.d(gpu_d_lo21[16]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_17
(
	.q(a2_flags[17]), // OUT
	.d(gpu_d_lo21[17]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_18
(
	.q(a2_flags[18]), // OUT
	.d(gpu_d_lo21[18]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_19
(
	.q(a2_flags[19]), // OUT
	.d(gpu_d_lo21[19]), // IN
	.g(a2flagldg)  // IN
);
ldp1q a2flags_inst_20
(
	.q(a2_flags[20]), // OUT
	.d(gpu_d_lo21[20]), // IN
	.g(a2flagldg)  // IN
);

// ADDRESS.NET (157) - a2_pixp[0-1] : join
assign a2_pitch_0 = a2_flags[0];
assign a2_pitch_1 = a2_flags[1];

// ADDRESS.NET (158) - a2_pixs[0-2] : join
assign a2_pixsize_0_obuf = a2_flags[3];
assign a2_pixsize_1_obuf = a2_flags[4];
assign a2_pixsize_2_obuf = a2_flags[5];

// ADDRESS.NET (159) - a2_zoff[0-1] : join
assign a2_zoffset_0 = a2_flags[6];
assign a2_zoffset_1 = a2_flags[7];

// ADDRESS.NET (160) - a2unused[2] : join
assign unused_2 = a2_flags[8];

// ADDRESS.NET (161) - a2_wdth[0-5] : join
assign a2_width_0 = a2_flags[9];
assign a2_width_1 = a2_flags[10];
assign a2_width_2 = a2_flags[11];
assign a2_width_3 = a2_flags[12];
assign a2_width_4 = a2_flags[13];
assign a2_width_5 = a2_flags[14];

// ADDRESS.NET (162) - a2_mask : nivu
assign a2_mask = a2_flags[15];

// ADDRESS.NET (163) - a2addx[0-1] : join
assign a2addx_0 = a2_flags[16];
assign a2addx_1 = a2_flags[17];

// ADDRESS.NET (164) - a2addy : join
assign a2addy = a2_flags[18];

// ADDRESS.NET (165) - a2xsign : join
assign a2xsign = a2_flags[19];

// ADDRESS.NET (166) - a2ysign : join
assign a2ysign = a2_flags[20];

// ADDRESS.NET (171) - a2winldg : an2u
assign a2winldg = a2winld & load_strobe;

// ADDRESS.NET (172) - a2winx : ldp1q
ldp1q a2winx_inst_0
(
	.q(a2_mask_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_1
(
	.q(a2_mask_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_2
(
	.q(a2_mask_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_3
(
	.q(a2_mask_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_4
(
	.q(a2_mask_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_5
(
	.q(a2_mask_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_6
(
	.q(a2_mask_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_7
(
	.q(a2_mask_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_8
(
	.q(a2_mask_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_9
(
	.q(a2_mask_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_10
(
	.q(a2_mask_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_11
(
	.q(a2_mask_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_12
(
	.q(a2_mask_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_13
(
	.q(a2_mask_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_14
(
	.q(a2_mask_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winx_inst_15
(
	.q(a2_mask_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a2winldg)  // IN
);

// ADDRESS.NET (173) - a2winy : ldp1q
ldp1q a2winy_inst_0
(
	.q(a2_mask_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_1
(
	.q(a2_mask_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_2
(
	.q(a2_mask_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_3
(
	.q(a2_mask_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_4
(
	.q(a2_mask_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_5
(
	.q(a2_mask_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_6
(
	.q(a2_mask_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_7
(
	.q(a2_mask_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_8
(
	.q(a2_mask_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_9
(
	.q(a2_mask_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_10
(
	.q(a2_mask_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_11
(
	.q(a2_mask_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_12
(
	.q(a2_mask_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_13
(
	.q(a2_mask_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_14
(
	.q(a2_mask_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a2winldg)  // IN
);
ldp1q a2winy_inst_15
(
	.q(a2_mask_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a2winldg)  // IN
);

// ADDRESS.NET (177) - a2x : fdsync16
fdsync16 a2x_inst
(
	.q({a2_xr[0],a2_xr[1],a2_xr[2],a2_xr[3],a2_xr[4],a2_xr[5],a2_xr[6],a2_xr[7],a2_xr[8],a2_xr[9],a2_xr[10],a2_xr[11],a2_xr[12],a2_xr[13],a2_xr[14],a2_xr[15]}), // IO
	.d({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}), // IN
	.ld(a2ptrld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (178) - a2y : fdsync16
fdsync16 a2y_inst
(
	.q({a2_yr[0],a2_yr[1],a2_yr[2],a2_yr[3],a2_yr[4],a2_yr[5],a2_yr[6],a2_yr[7],a2_yr[8],a2_yr[9],a2_yr[10],a2_yr[11],a2_yr[12],a2_yr[13],a2_yr[14],a2_yr[15]}), // IO
	.d({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}), // IN
	.ld(a2ptrld), // IN
	.clk(clk)  // IN
);

// ADDRESS.NET (182) - a2_xm : an2
assign a2_xm[0] = a2_xr[0] & a2_mask_x[0];
assign a2_xm[1] = a2_xr[1] & a2_mask_x[1];
assign a2_xm[2] = a2_xr[2] & a2_mask_x[2];
assign a2_xm[3] = a2_xr[3] & a2_mask_x[3];
assign a2_xm[4] = a2_xr[4] & a2_mask_x[4];
assign a2_xm[5] = a2_xr[5] & a2_mask_x[5];
assign a2_xm[6] = a2_xr[6] & a2_mask_x[6];
assign a2_xm[7] = a2_xr[7] & a2_mask_x[7];
assign a2_xm[8] = a2_xr[8] & a2_mask_x[8];
assign a2_xm[9] = a2_xr[9] & a2_mask_x[9];
assign a2_xm[10] = a2_xr[10] & a2_mask_x[10];
assign a2_xm[11] = a2_xr[11] & a2_mask_x[11];
assign a2_xm[12] = a2_xr[12] & a2_mask_x[12];
assign a2_xm[13] = a2_xr[13] & a2_mask_x[13];
assign a2_xm[14] = a2_xr[14] & a2_mask_x[14];
assign a2_xm[15] = a2_xr[15] & a2_mask_x[15];

// ADDRESS.NET (183) - a2_x : mx2
mx2 a2_x_inst_0
(
	.z(a2_x_b0_obuf), // OUT
	.a0(a2_xr[0]), // IN
	.a1(a2_xm[0]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_1
(
	.z(a2_x_b1_obuf), // OUT
	.a0(a2_xr[1]), // IN
	.a1(a2_xm[1]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_2
(
	.z(a2_x_b2_obuf), // OUT
	.a0(a2_xr[2]), // IN
	.a1(a2_xm[2]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_3
(
	.z(a2_x_b3_obuf), // OUT
	.a0(a2_xr[3]), // IN
	.a1(a2_xm[3]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_4
(
	.z(a2_x_b4_obuf), // OUT
	.a0(a2_xr[4]), // IN
	.a1(a2_xm[4]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_5
(
	.z(a2_x_b5_obuf), // OUT
	.a0(a2_xr[5]), // IN
	.a1(a2_xm[5]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_6
(
	.z(a2_x_b6_obuf), // OUT
	.a0(a2_xr[6]), // IN
	.a1(a2_xm[6]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_7
(
	.z(a2_x_b7_obuf), // OUT
	.a0(a2_xr[7]), // IN
	.a1(a2_xm[7]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_8
(
	.z(a2_x_b8_obuf), // OUT
	.a0(a2_xr[8]), // IN
	.a1(a2_xm[8]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_9
(
	.z(a2_x_b9_obuf), // OUT
	.a0(a2_xr[9]), // IN
	.a1(a2_xm[9]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_10
(
	.z(a2_x_b10_obuf), // OUT
	.a0(a2_xr[10]), // IN
	.a1(a2_xm[10]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_11
(
	.z(a2_x_b11_obuf), // OUT
	.a0(a2_xr[11]), // IN
	.a1(a2_xm[11]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_12
(
	.z(a2_x_b12_obuf), // OUT
	.a0(a2_xr[12]), // IN
	.a1(a2_xm[12]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_13
(
	.z(a2_x_b13_obuf), // OUT
	.a0(a2_xr[13]), // IN
	.a1(a2_xm[13]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_14
(
	.z(a2_x_b14_obuf), // OUT
	.a0(a2_xr[14]), // IN
	.a1(a2_xm[14]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_x_inst_15
(
	.z(a2_x_b15_obuf), // OUT
	.a0(a2_xr[15]), // IN
	.a1(a2_xm[15]), // IN
	.s(a2_mask)  // IN
);

// ADDRESS.NET (184) - a2_ym : an2
assign a2_ym[0] = a2_yr[0] & a2_mask_y[0];
assign a2_ym[1] = a2_yr[1] & a2_mask_y[1];
assign a2_ym[2] = a2_yr[2] & a2_mask_y[2];
assign a2_ym[3] = a2_yr[3] & a2_mask_y[3];
assign a2_ym[4] = a2_yr[4] & a2_mask_y[4];
assign a2_ym[5] = a2_yr[5] & a2_mask_y[5];
assign a2_ym[6] = a2_yr[6] & a2_mask_y[6];
assign a2_ym[7] = a2_yr[7] & a2_mask_y[7];
assign a2_ym[8] = a2_yr[8] & a2_mask_y[8];
assign a2_ym[9] = a2_yr[9] & a2_mask_y[9];
assign a2_ym[10] = a2_yr[10] & a2_mask_y[10];
assign a2_ym[11] = a2_yr[11] & a2_mask_y[11];
assign a2_ym[12] = a2_yr[12] & a2_mask_y[12];
assign a2_ym[13] = a2_yr[13] & a2_mask_y[13];
assign a2_ym[14] = a2_yr[14] & a2_mask_y[14];
assign a2_ym[15] = a2_yr[15] & a2_mask_y[15];

// ADDRESS.NET (185) - a2_y : mx2
mx2 a2_y_inst_0
(
	.z(a2_y[0]), // OUT
	.a0(a2_yr[0]), // IN
	.a1(a2_ym[0]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_1
(
	.z(a2_y[1]), // OUT
	.a0(a2_yr[1]), // IN
	.a1(a2_ym[1]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_2
(
	.z(a2_y[2]), // OUT
	.a0(a2_yr[2]), // IN
	.a1(a2_ym[2]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_3
(
	.z(a2_y[3]), // OUT
	.a0(a2_yr[3]), // IN
	.a1(a2_ym[3]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_4
(
	.z(a2_y[4]), // OUT
	.a0(a2_yr[4]), // IN
	.a1(a2_ym[4]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_5
(
	.z(a2_y[5]), // OUT
	.a0(a2_yr[5]), // IN
	.a1(a2_ym[5]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_6
(
	.z(a2_y[6]), // OUT
	.a0(a2_yr[6]), // IN
	.a1(a2_ym[6]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_7
(
	.z(a2_y[7]), // OUT
	.a0(a2_yr[7]), // IN
	.a1(a2_ym[7]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_8
(
	.z(a2_y[8]), // OUT
	.a0(a2_yr[8]), // IN
	.a1(a2_ym[8]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_9
(
	.z(a2_y[9]), // OUT
	.a0(a2_yr[9]), // IN
	.a1(a2_ym[9]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_10
(
	.z(a2_y[10]), // OUT
	.a0(a2_yr[10]), // IN
	.a1(a2_ym[10]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_11
(
	.z(a2_y[11]), // OUT
	.a0(a2_yr[11]), // IN
	.a1(a2_ym[11]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_12
(
	.z(a2_y[12]), // OUT
	.a0(a2_yr[12]), // IN
	.a1(a2_ym[12]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_13
(
	.z(a2_y[13]), // OUT
	.a0(a2_yr[13]), // IN
	.a1(a2_ym[13]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_14
(
	.z(a2_y[14]), // OUT
	.a0(a2_yr[14]), // IN
	.a1(a2_ym[14]), // IN
	.s(a2_mask)  // IN
);
mx2 a2_y_inst_15
(
	.z(a2_y[15]), // OUT
	.a0(a2_yr[15]), // IN
	.a1(a2_ym[15]), // IN
	.s(a2_mask)  // IN
);

// ADDRESS.NET (189) - a2stepldg : an2u
assign a2stepldg = a2stepld & load_strobe;

// ADDRESS.NET (190) - a2stepx : ldp1q
ldp1q a2stepx_inst_0
(
	.q(a2_step_x[0]), // OUT
	.d(gpu_d_lo16[0]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_1
(
	.q(a2_step_x[1]), // OUT
	.d(gpu_d_lo16[1]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_2
(
	.q(a2_step_x[2]), // OUT
	.d(gpu_d_lo16[2]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_3
(
	.q(a2_step_x[3]), // OUT
	.d(gpu_d_lo16[3]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_4
(
	.q(a2_step_x[4]), // OUT
	.d(gpu_d_lo16[4]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_5
(
	.q(a2_step_x[5]), // OUT
	.d(gpu_d_lo16[5]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_6
(
	.q(a2_step_x[6]), // OUT
	.d(gpu_d_lo16[6]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_7
(
	.q(a2_step_x[7]), // OUT
	.d(gpu_d_lo16[7]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_8
(
	.q(a2_step_x[8]), // OUT
	.d(gpu_d_lo16[8]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_9
(
	.q(a2_step_x[9]), // OUT
	.d(gpu_d_lo16[9]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_10
(
	.q(a2_step_x[10]), // OUT
	.d(gpu_d_lo16[10]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_11
(
	.q(a2_step_x[11]), // OUT
	.d(gpu_d_lo16[11]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_12
(
	.q(a2_step_x[12]), // OUT
	.d(gpu_d_lo16[12]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_13
(
	.q(a2_step_x[13]), // OUT
	.d(gpu_d_lo16[13]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_14
(
	.q(a2_step_x[14]), // OUT
	.d(gpu_d_lo16[14]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepx_inst_15
(
	.q(a2_step_x[15]), // OUT
	.d(gpu_d_lo16[15]), // IN
	.g(a2stepldg)  // IN
);

// ADDRESS.NET (191) - a2stepy : ldp1q
ldp1q a2stepy_inst_0
(
	.q(a2_step_y[0]), // OUT
	.d(gpu_d_hi16[0]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_1
(
	.q(a2_step_y[1]), // OUT
	.d(gpu_d_hi16[1]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_2
(
	.q(a2_step_y[2]), // OUT
	.d(gpu_d_hi16[2]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_3
(
	.q(a2_step_y[3]), // OUT
	.d(gpu_d_hi16[3]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_4
(
	.q(a2_step_y[4]), // OUT
	.d(gpu_d_hi16[4]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_5
(
	.q(a2_step_y[5]), // OUT
	.d(gpu_d_hi16[5]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_6
(
	.q(a2_step_y[6]), // OUT
	.d(gpu_d_hi16[6]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_7
(
	.q(a2_step_y[7]), // OUT
	.d(gpu_d_hi16[7]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_8
(
	.q(a2_step_y[8]), // OUT
	.d(gpu_d_hi16[8]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_9
(
	.q(a2_step_y[9]), // OUT
	.d(gpu_d_hi16[9]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_10
(
	.q(a2_step_y[10]), // OUT
	.d(gpu_d_hi16[10]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_11
(
	.q(a2_step_y[11]), // OUT
	.d(gpu_d_hi16[11]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_12
(
	.q(a2_step_y[12]), // OUT
	.d(gpu_d_hi16[12]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_13
(
	.q(a2_step_y[13]), // OUT
	.d(gpu_d_hi16[13]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_14
(
	.q(a2_step_y[14]), // OUT
	.d(gpu_d_hi16[14]), // IN
	.g(a2stepldg)  // IN
);
ldp1q a2stepy_inst_15
(
	.q(a2_step_y[15]), // OUT
	.d(gpu_d_hi16[15]), // IN
	.g(a2stepldg)  // IN
);

// ADDRESS.NET (195) - addamux : addamux
addamux addamux_inst
(
	.adda_x({adda_x[0],adda_x[1],adda_x[2],adda_x[3],adda_x[4],adda_x[5],adda_x[6],adda_x[7],adda_x[8],adda_x[9],adda_x[10],adda_x[11],adda_x[12],adda_x[13],adda_x[14],adda_x[15]}), // OUT
	.adda_y({adda_y[0],adda_y[1],adda_y[2],adda_y[3],adda_y[4],adda_y[5],adda_y[6],adda_y[7],adda_y[8],adda_y[9],adda_y[10],adda_y[11],adda_y[12],adda_y[13],adda_y[14],adda_y[15]}), // OUT
	.addasel_0(addasel_0), // IN
	.addasel_1(addasel_1), // IN
	.addasel_2(addasel_2), // IN
	.a1_step_x({a1_step_x[0],a1_step_x[1],a1_step_x[2],a1_step_x[3],a1_step_x[4],a1_step_x[5],a1_step_x[6],a1_step_x[7],a1_step_x[8],a1_step_x[9],a1_step_x[10],a1_step_x[11],a1_step_x[12],a1_step_x[13],a1_step_x[14],a1_step_x[15]}), // IN
	.a1_step_y({a1_step_y[0],a1_step_y[1],a1_step_y[2],a1_step_y[3],a1_step_y[4],a1_step_y[5],a1_step_y[6],a1_step_y[7],a1_step_y[8],a1_step_y[9],a1_step_y[10],a1_step_y[11],a1_step_y[12],a1_step_y[13],a1_step_y[14],a1_step_y[15]}), // IN
	.a1_stepf_x({a1_stepf_x[0],a1_stepf_x[1],a1_stepf_x[2],a1_stepf_x[3],a1_stepf_x[4],a1_stepf_x[5],a1_stepf_x[6],a1_stepf_x[7],a1_stepf_x[8],a1_stepf_x[9],a1_stepf_x[10],a1_stepf_x[11],a1_stepf_x[12],a1_stepf_x[13],a1_stepf_x[14],a1_stepf_x[15]}), // IN
	.a1_stepf_y({a1_stepf_y[0],a1_stepf_y[1],a1_stepf_y[2],a1_stepf_y[3],a1_stepf_y[4],a1_stepf_y[5],a1_stepf_y[6],a1_stepf_y[7],a1_stepf_y[8],a1_stepf_y[9],a1_stepf_y[10],a1_stepf_y[11],a1_stepf_y[12],a1_stepf_y[13],a1_stepf_y[14],a1_stepf_y[15]}), // IN
	.a2_step_x({a2_step_x[0],a2_step_x[1],a2_step_x[2],a2_step_x[3],a2_step_x[4],a2_step_x[5],a2_step_x[6],a2_step_x[7],a2_step_x[8],a2_step_x[9],a2_step_x[10],a2_step_x[11],a2_step_x[12],a2_step_x[13],a2_step_x[14],a2_step_x[15]}), // IN
	.a2_step_y({a2_step_y[0],a2_step_y[1],a2_step_y[2],a2_step_y[3],a2_step_y[4],a2_step_y[5],a2_step_y[6],a2_step_y[7],a2_step_y[8],a2_step_y[9],a2_step_y[10],a2_step_y[11],a2_step_y[12],a2_step_y[13],a2_step_y[14],a2_step_y[15]}), // IN
	.a1_inc_x({a1_inc_x[0],a1_inc_x[1],a1_inc_x[2],a1_inc_x[3],a1_inc_x[4],a1_inc_x[5],a1_inc_x[6],a1_inc_x[7],a1_inc_x[8],a1_inc_x[9],a1_inc_x[10],a1_inc_x[11],a1_inc_x[12],a1_inc_x[13],a1_inc_x[14],a1_inc_x[15]}), // IN
	.a1_inc_y({a1_inc_y[0],a1_inc_y[1],a1_inc_y[2],a1_inc_y[3],a1_inc_y[4],a1_inc_y[5],a1_inc_y[6],a1_inc_y[7],a1_inc_y[8],a1_inc_y[9],a1_inc_y[10],a1_inc_y[11],a1_inc_y[12],a1_inc_y[13],a1_inc_y[14],a1_inc_y[15]}), // IN
	.a1_incf_x({a1_incf_x[0],a1_incf_x[1],a1_incf_x[2],a1_incf_x[3],a1_incf_x[4],a1_incf_x[5],a1_incf_x[6],a1_incf_x[7],a1_incf_x[8],a1_incf_x[9],a1_incf_x[10],a1_incf_x[11],a1_incf_x[12],a1_incf_x[13],a1_incf_x[14],a1_incf_x[15]}), // IN
	.a1_incf_y({a1_incf_y[0],a1_incf_y[1],a1_incf_y[2],a1_incf_y[3],a1_incf_y[4],a1_incf_y[5],a1_incf_y[6],a1_incf_y[7],a1_incf_y[8],a1_incf_y[9],a1_incf_y[10],a1_incf_y[11],a1_incf_y[12],a1_incf_y[13],a1_incf_y[14],a1_incf_y[15]}), // IN
	.adda_xconst_0(adda_xconst_0), // IN
	.adda_xconst_1(adda_xconst_1), // IN
	.adda_xconst_2(adda_xconst_2), // IN
	.adda_yconst(adda_yconst), // IN
	.addareg(addareg), // IN
	.suba_x(suba_x), // IN
	.suba_y(suba_y)  // IN
);

// ADDRESS.NET (202) - addbmux : addbmux
addbmux addbmux_inst
(
	.addb_x({addb_x[0],addb_x[1],addb_x[2],addb_x[3],addb_x[4],addb_x[5],addb_x[6],addb_x[7],addb_x[8],addb_x[9],addb_x[10],addb_x[11],addb_x[12],addb_x[13],addb_x[14],addb_x[15]}), // OUT
	.addb_y({addb_y[0],addb_y[1],addb_y[2],addb_y[3],addb_y[4],addb_y[5],addb_y[6],addb_y[7],addb_y[8],addb_y[9],addb_y[10],addb_y[11],addb_y[12],addb_y[13],addb_y[14],addb_y[15]}), // OUT
	.addbsel_0(addbsel_0), // IN
	.addbsel_1(addbsel_1), // IN
	.a1_x({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}), // IN
	.a1_y({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}), // IN
	.a2_x({a2_x_b0_obuf,a2_x_b1_obuf,a2_x_b2_obuf,a2_x_b3_obuf,a2_x_b4_obuf,a2_x_b5_obuf,a2_x_b6_obuf,a2_x_b7_obuf,a2_x_b8_obuf,a2_x_b9_obuf,a2_x_b10_obuf,a2_x_b11_obuf,a2_x_b12_obuf,a2_x_b13_obuf,a2_x_b14_obuf,a2_x_b15_obuf}), // IN
	.a2_y({a2_y[0],a2_y[1],a2_y[2],a2_y[3],a2_y[4],a2_y[5],a2_y[6],a2_y[7],a2_y[8],a2_y[9],a2_y[10],a2_y[11],a2_y[12],a2_y[13],a2_y[14],a2_y[15]}), // IN
	.a1_frac_x({a1_frac_x[0],a1_frac_x[1],a1_frac_x[2],a1_frac_x[3],a1_frac_x[4],a1_frac_x[5],a1_frac_x[6],a1_frac_x[7],a1_frac_x[8],a1_frac_x[9],a1_frac_x[10],a1_frac_x[11],a1_frac_x[12],a1_frac_x[13],a1_frac_x[14],a1_frac_x[15]}), // IN
	.a1_frac_y({a1_frac_y[0],a1_frac_y[1],a1_frac_y[2],a1_frac_y[3],a1_frac_y[4],a1_frac_y[5],a1_frac_y[6],a1_frac_y[7],a1_frac_y[8],a1_frac_y[9],a1_frac_y[10],a1_frac_y[11],a1_frac_y[12],a1_frac_y[13],a1_frac_y[14],a1_frac_y[15]})  // IN
);

// ADDRESS.NET (205) - addradd : addradd
addradd addradd_inst
(
	.addq_x({addq_x[0],addq_x[1],addq_x[2],addq_x[3],addq_x[4],addq_x[5],addq_x[6],addq_x[7],addq_x[8],addq_x[9],addq_x[10],addq_x[11],addq_x[12],addq_x[13],addq_x[14],addq_x[15]}), // OUT
	.addq_y({addq_y[0],addq_y[1],addq_y[2],addq_y[3],addq_y[4],addq_y[5],addq_y[6],addq_y[7],addq_y[8],addq_y[9],addq_y[10],addq_y[11],addq_y[12],addq_y[13],addq_y[14],addq_y[15]}), // OUT
	.a1fracld(a1fracld), // IN
	.adda_x({adda_x[0],adda_x[1],adda_x[2],adda_x[3],adda_x[4],adda_x[5],adda_x[6],adda_x[7],adda_x[8],adda_x[9],adda_x[10],adda_x[11],adda_x[12],adda_x[13],adda_x[14],adda_x[15]}), // IN
	.adda_y({adda_y[0],adda_y[1],adda_y[2],adda_y[3],adda_y[4],adda_y[5],adda_y[6],adda_y[7],adda_y[8],adda_y[9],adda_y[10],adda_y[11],adda_y[12],adda_y[13],adda_y[14],adda_y[15]}), // IN
	.addb_x({addb_x[0],addb_x[1],addb_x[2],addb_x[3],addb_x[4],addb_x[5],addb_x[6],addb_x[7],addb_x[8],addb_x[9],addb_x[10],addb_x[11],addb_x[12],addb_x[13],addb_x[14],addb_x[15]}), // IN
	.addb_y({addb_y[0],addb_y[1],addb_y[2],addb_y[3],addb_y[4],addb_y[5],addb_y[6],addb_y[7],addb_y[8],addb_y[9],addb_y[10],addb_y[11],addb_y[12],addb_y[13],addb_y[14],addb_y[15]}), // IN
	.clk_0(clk), // IN
	.modx_0(modx_0), // IN
	.modx_1(modx_1), // IN
	.modx_2(modx_2), // IN
	.suba_x(suba_x), // IN
	.suba_y(suba_y)  // IN
);

// ADDRESS.NET (211) - datamux : datamux
datamux datamux_inst
(
	.data_x({data_x[0],data_x[1],data_x[2],data_x[3],data_x[4],data_x[5],data_x[6],data_x[7],data_x[8],data_x[9],data_x[10],data_x[11],data_x[12],data_x[13],data_x[14],data_x[15]}), // OUT
	.data_y({data_y[0],data_y[1],data_y[2],data_y[3],data_y[4],data_y[5],data_y[6],data_y[7],data_y[8],data_y[9],data_y[10],data_y[11],data_y[12],data_y[13],data_y[14],data_y[15]}), // OUT
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.addq_x({addq_x[0],addq_x[1],addq_x[2],addq_x[3],addq_x[4],addq_x[5],addq_x[6],addq_x[7],addq_x[8],addq_x[9],addq_x[10],addq_x[11],addq_x[12],addq_x[13],addq_x[14],addq_x[15]}), // IN
	.addq_y({addq_y[0],addq_y[1],addq_y[2],addq_y[3],addq_y[4],addq_y[5],addq_y[6],addq_y[7],addq_y[8],addq_y[9],addq_y[10],addq_y[11],addq_y[12],addq_y[13],addq_y[14],addq_y[15]})  // IN
);

// ADDRESS.NET (216) - addrgen : addrgen
addrgen addrgen_inst
(
	.address({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // IO
	.pixa_0(pixa_0), // IO
	.pixa_1(pixa_1), // IO
	.pixa_2(pixa_2), // IO
	.a1_x({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}), // IN
	.a1_y({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}), // IN
	.a1_base({a1_base[0],a1_base[1],a1_base[2],a1_base[3],a1_base[4],a1_base[5],a1_base[6],a1_base[7],a1_base[8],a1_base[9],a1_base[10],a1_base[11],a1_base[12],a1_base[13],a1_base[14],a1_base[15],a1_base[16],a1_base[17],a1_base[18],a1_base[19],a1_base[20]}), // IN
	.a1_pitch_0(a1_pitch_0), // IN
	.a1_pitch_1(a1_pitch_1), // IN
	.a1_pixsize_0(a1_pixsize_0_obuf), // IN
	.a1_pixsize_1(a1_pixsize_1_obuf), // IN
	.a1_pixsize_2(a1_pixsize_2_obuf), // IN
	.a1_width_0(a1_width_0), // IN
	.a1_width_1(a1_width_1), // IN
	.a1_width_2(a1_width_2), // IN
	.a1_width_3(a1_width_3), // IN
	.a1_width_4(a1_width_4), // IN
	.a1_width_5(a1_width_5), // IN
	.a1_zoffset_0(a1_zoffset_0), // IN
	.a1_zoffset_1(a1_zoffset_1), // IN
	.a2_x({a2_x_b0_obuf,a2_x_b1_obuf,a2_x_b2_obuf,a2_x_b3_obuf,a2_x_b4_obuf,a2_x_b5_obuf,a2_x_b6_obuf,a2_x_b7_obuf,a2_x_b8_obuf,a2_x_b9_obuf,a2_x_b10_obuf,a2_x_b11_obuf,a2_x_b12_obuf,a2_x_b13_obuf,a2_x_b14_obuf,a2_x_b15_obuf}), // IN
	.a2_y({a2_y[0],a2_y[1],a2_y[2],a2_y[3],a2_y[4],a2_y[5],a2_y[6],a2_y[7],a2_y[8],a2_y[9],a2_y[10],a2_y[11],a2_y[12],a2_y[13],a2_y[14],a2_y[15]}), // IN
	.a2_base({a2_base[0],a2_base[1],a2_base[2],a2_base[3],a2_base[4],a2_base[5],a2_base[6],a2_base[7],a2_base[8],a2_base[9],a2_base[10],a2_base[11],a2_base[12],a2_base[13],a2_base[14],a2_base[15],a2_base[16],a2_base[17],a2_base[18],a2_base[19],a2_base[20]}), // IN
	.a2_pitch_0(a2_pitch_0), // IN
	.a2_pitch_1(a2_pitch_1), // IN
	.a2_pixsize_0(a2_pixsize_0_obuf), // IN
	.a2_pixsize_1(a2_pixsize_1_obuf), // IN
	.a2_pixsize_2(a2_pixsize_2_obuf), // IN
	.a2_width_0(a2_width_0), // IN
	.a2_width_1(a2_width_1), // IN
	.a2_width_2(a2_width_2), // IN
	.a2_width_3(a2_width_3), // IN
	.a2_width_4(a2_width_4), // IN
	.a2_width_5(a2_width_5), // IN
	.a2_zoffset_0(a2_zoffset_0), // IN
	.a2_zoffset_1(a2_zoffset_1), // IN
	.apipe(apipe), // IN
	.clk(clk), // IN
	.gena2(gena2), // IN
	.zaddr(zaddr)  // IN
);

// ADDRESS.NET (226) - addrcomp : addrcomp
addrcomp addrcomp_inst
(
	.a1_outside(a1_outside), // OUT
	.a1_x({a1_x_b0_obuf,a1_x_b1_obuf,a1_x_b2_obuf,a1_x_b3_obuf,a1_x_b4_obuf,a1_x_b5_obuf,a1_x_b6_obuf,a1_x_b7_obuf,a1_x_b8_obuf,a1_x_b9_obuf,a1_x_b10_obuf,a1_x_b11_obuf,a1_x_b12_obuf,a1_x_b13_obuf,a1_x_b14_obuf,a1_x_b15_obuf}), // IN
	.a1_y({a1_y[0],a1_y[1],a1_y[2],a1_y[3],a1_y[4],a1_y[5],a1_y[6],a1_y[7],a1_y[8],a1_y[9],a1_y[10],a1_y[11],a1_y[12],a1_y[13],a1_y[14],a1_y[15]}), // IN
	.a1_win_x({a1_win_x_b0_obuf,a1_win_x_b1_obuf,a1_win_x_b2_obuf,a1_win_x_b3_obuf,a1_win_x_b4_obuf,a1_win_x_b5_obuf,a1_win_x_b6_obuf,a1_win_x_b7_obuf,a1_win_x_b8_obuf,a1_win_x_b9_obuf,a1_win_x_b10_obuf,a1_win_x_b11_obuf,a1_win_x_b12_obuf,a1_win_x_b13_obuf,a1_win_x_b14_obuf}), // IN
	.a1_win_y({a1_win_y[0],a1_win_y[1],a1_win_y[2],a1_win_y[3],a1_win_y[4],a1_win_y[5],a1_win_y[6],a1_win_y[7],a1_win_y[8],a1_win_y[9],a1_win_y[10],a1_win_y[11],a1_win_y[12],a1_win_y[13],a1_win_y[14]})  // IN
);

// ADDRESS.NET (231) - a1_pos[0-15] : join
assign a1_pos_0 = a1_x_b0_obuf;
assign a1_pos_1 = a1_x_b1_obuf;
assign a1_pos_2 = a1_x_b2_obuf;
assign a1_pos_3 = a1_x_b3_obuf;
assign a1_pos_4 = a1_x_b4_obuf;
assign a1_pos_5 = a1_x_b5_obuf;
assign a1_pos_6 = a1_x_b6_obuf;
assign a1_pos_7 = a1_x_b7_obuf;
assign a1_pos_8 = a1_x_b8_obuf;
assign a1_pos_9 = a1_x_b9_obuf;
assign a1_pos_10 = a1_x_b10_obuf;
assign a1_pos_11 = a1_x_b11_obuf;
assign a1_pos_12 = a1_x_b12_obuf;
assign a1_pos_13 = a1_x_b13_obuf;
assign a1_pos_14 = a1_x_b14_obuf;
assign a1_pos_15 = a1_x_b15_obuf;

// ADDRESS.NET (232) - a1_pos[16-31] : join
assign a1_pos_16 = a1_y[0];
assign a1_pos_17 = a1_y[1];
assign a1_pos_18 = a1_y[2];
assign a1_pos_19 = a1_y[3];
assign a1_pos_20 = a1_y[4];
assign a1_pos_21 = a1_y[5];
assign a1_pos_22 = a1_y[6];
assign a1_pos_23 = a1_y[7];
assign a1_pos_24 = a1_y[8];
assign a1_pos_25 = a1_y[9];
assign a1_pos_26 = a1_y[10];
assign a1_pos_27 = a1_y[11];
assign a1_pos_28 = a1_y[12];
assign a1_pos_29 = a1_y[13];
assign a1_pos_30 = a1_y[14];
assign a1_pos_31 = a1_y[15];

// ADDRESS.NET (233) - a1_posf[0-15] : join
assign a1_posf_0 = a1_frac_x[0];
assign a1_posf_1 = a1_frac_x[1];
assign a1_posf_2 = a1_frac_x[2];
assign a1_posf_3 = a1_frac_x[3];
assign a1_posf_4 = a1_frac_x[4];
assign a1_posf_5 = a1_frac_x[5];
assign a1_posf_6 = a1_frac_x[6];
assign a1_posf_7 = a1_frac_x[7];
assign a1_posf_8 = a1_frac_x[8];
assign a1_posf_9 = a1_frac_x[9];
assign a1_posf_10 = a1_frac_x[10];
assign a1_posf_11 = a1_frac_x[11];
assign a1_posf_12 = a1_frac_x[12];
assign a1_posf_13 = a1_frac_x[13];
assign a1_posf_14 = a1_frac_x[14];
assign a1_posf_15 = a1_frac_x[15];

// ADDRESS.NET (234) - a1_posf[16-31] : join
assign a1_posf_16 = a1_frac_y[0];
assign a1_posf_17 = a1_frac_y[1];
assign a1_posf_18 = a1_frac_y[2];
assign a1_posf_19 = a1_frac_y[3];
assign a1_posf_20 = a1_frac_y[4];
assign a1_posf_21 = a1_frac_y[5];
assign a1_posf_22 = a1_frac_y[6];
assign a1_posf_23 = a1_frac_y[7];
assign a1_posf_24 = a1_frac_y[8];
assign a1_posf_25 = a1_frac_y[9];
assign a1_posf_26 = a1_frac_y[10];
assign a1_posf_27 = a1_frac_y[11];
assign a1_posf_28 = a1_frac_y[12];
assign a1_posf_29 = a1_frac_y[13];
assign a1_posf_30 = a1_frac_y[14];
assign a1_posf_31 = a1_frac_y[15];

// ADDRESS.NET (235) - a2_pos[0-15] : join
assign a2_pos_0 = a2_x_b0_obuf;
assign a2_pos_1 = a2_x_b1_obuf;
assign a2_pos_2 = a2_x_b2_obuf;
assign a2_pos_3 = a2_x_b3_obuf;
assign a2_pos_4 = a2_x_b4_obuf;
assign a2_pos_5 = a2_x_b5_obuf;
assign a2_pos_6 = a2_x_b6_obuf;
assign a2_pos_7 = a2_x_b7_obuf;
assign a2_pos_8 = a2_x_b8_obuf;
assign a2_pos_9 = a2_x_b9_obuf;
assign a2_pos_10 = a2_x_b10_obuf;
assign a2_pos_11 = a2_x_b11_obuf;
assign a2_pos_12 = a2_x_b12_obuf;
assign a2_pos_13 = a2_x_b13_obuf;
assign a2_pos_14 = a2_x_b14_obuf;
assign a2_pos_15 = a2_x_b15_obuf;

// ADDRESS.NET (236) - a2_pos[16-31] : join
assign a2_pos_16 = a2_y[0];
assign a2_pos_17 = a2_y[1];
assign a2_pos_18 = a2_y[2];
assign a2_pos_19 = a2_y[3];
assign a2_pos_20 = a2_y[4];
assign a2_pos_21 = a2_y[5];
assign a2_pos_22 = a2_y[6];
assign a2_pos_23 = a2_y[7];
assign a2_pos_24 = a2_y[8];
assign a2_pos_25 = a2_y[9];
assign a2_pos_26 = a2_y[10];
assign a2_pos_27 = a2_y[11];
assign a2_pos_28 = a2_y[12];
assign a2_pos_29 = a2_y[13];
assign a2_pos_30 = a2_y[14];
assign a2_pos_31 = a2_y[15];

// ADDRESS.NET (238) - grdt0[0-31] : mx2
mx2 grdt0_from_0_to_31_inst_0
(
	.z(grdt0_0), // OUT
	.a0(a1_pos_0), // IN
	.a1(a1_posf_0), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_1
(
	.z(grdt0_1), // OUT
	.a0(a1_pos_1), // IN
	.a1(a1_posf_1), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_2
(
	.z(grdt0_2), // OUT
	.a0(a1_pos_2), // IN
	.a1(a1_posf_2), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_3
(
	.z(grdt0_3), // OUT
	.a0(a1_pos_3), // IN
	.a1(a1_posf_3), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_4
(
	.z(grdt0_4), // OUT
	.a0(a1_pos_4), // IN
	.a1(a1_posf_4), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_5
(
	.z(grdt0_5), // OUT
	.a0(a1_pos_5), // IN
	.a1(a1_posf_5), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_6
(
	.z(grdt0_6), // OUT
	.a0(a1_pos_6), // IN
	.a1(a1_posf_6), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_7
(
	.z(grdt0_7), // OUT
	.a0(a1_pos_7), // IN
	.a1(a1_posf_7), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_8
(
	.z(grdt0_8), // OUT
	.a0(a1_pos_8), // IN
	.a1(a1_posf_8), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_9
(
	.z(grdt0_9), // OUT
	.a0(a1_pos_9), // IN
	.a1(a1_posf_9), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_10
(
	.z(grdt0_10), // OUT
	.a0(a1_pos_10), // IN
	.a1(a1_posf_10), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_11
(
	.z(grdt0_11), // OUT
	.a0(a1_pos_11), // IN
	.a1(a1_posf_11), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_12
(
	.z(grdt0_12), // OUT
	.a0(a1_pos_12), // IN
	.a1(a1_posf_12), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_13
(
	.z(grdt0_13), // OUT
	.a0(a1_pos_13), // IN
	.a1(a1_posf_13), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_14
(
	.z(grdt0_14), // OUT
	.a0(a1_pos_14), // IN
	.a1(a1_posf_14), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_15
(
	.z(grdt0_15), // OUT
	.a0(a1_pos_15), // IN
	.a1(a1_posf_15), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_16
(
	.z(grdt0_16), // OUT
	.a0(a1_pos_16), // IN
	.a1(a1_posf_16), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_17
(
	.z(grdt0_17), // OUT
	.a0(a1_pos_17), // IN
	.a1(a1_posf_17), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_18
(
	.z(grdt0_18), // OUT
	.a0(a1_pos_18), // IN
	.a1(a1_posf_18), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_19
(
	.z(grdt0_19), // OUT
	.a0(a1_pos_19), // IN
	.a1(a1_posf_19), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_20
(
	.z(grdt0_20), // OUT
	.a0(a1_pos_20), // IN
	.a1(a1_posf_20), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_21
(
	.z(grdt0_21), // OUT
	.a0(a1_pos_21), // IN
	.a1(a1_posf_21), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_22
(
	.z(grdt0_22), // OUT
	.a0(a1_pos_22), // IN
	.a1(a1_posf_22), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_23
(
	.z(grdt0_23), // OUT
	.a0(a1_pos_23), // IN
	.a1(a1_posf_23), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_24
(
	.z(grdt0_24), // OUT
	.a0(a1_pos_24), // IN
	.a1(a1_posf_24), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_25
(
	.z(grdt0_25), // OUT
	.a0(a1_pos_25), // IN
	.a1(a1_posf_25), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_26
(
	.z(grdt0_26), // OUT
	.a0(a1_pos_26), // IN
	.a1(a1_posf_26), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_27
(
	.z(grdt0_27), // OUT
	.a0(a1_pos_27), // IN
	.a1(a1_posf_27), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_28
(
	.z(grdt0_28), // OUT
	.a0(a1_pos_28), // IN
	.a1(a1_posf_28), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_29
(
	.z(grdt0_29), // OUT
	.a0(a1_pos_29), // IN
	.a1(a1_posf_29), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_30
(
	.z(grdt0_30), // OUT
	.a0(a1_pos_30), // IN
	.a1(a1_posf_30), // IN
	.s(a1posfrd)  // IN
);
mx2 grdt0_from_0_to_31_inst_31
(
	.z(grdt0_31), // OUT
	.a0(a1_pos_31), // IN
	.a1(a1_posf_31), // IN
	.s(a1posfrd)  // IN
);

// ADDRESS.NET (240) - grdt1[0-31] : mx2
mx2 grdt1_from_0_to_31_inst_0
(
	.z(grdt1_0), // OUT
	.a0(grdt0_0), // IN
	.a1(a2_pos_0), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_1
(
	.z(grdt1_1), // OUT
	.a0(grdt0_1), // IN
	.a1(a2_pos_1), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_2
(
	.z(grdt1_2), // OUT
	.a0(grdt0_2), // IN
	.a1(a2_pos_2), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_3
(
	.z(grdt1_3), // OUT
	.a0(grdt0_3), // IN
	.a1(a2_pos_3), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_4
(
	.z(grdt1_4), // OUT
	.a0(grdt0_4), // IN
	.a1(a2_pos_4), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_5
(
	.z(grdt1_5), // OUT
	.a0(grdt0_5), // IN
	.a1(a2_pos_5), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_6
(
	.z(grdt1_6), // OUT
	.a0(grdt0_6), // IN
	.a1(a2_pos_6), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_7
(
	.z(grdt1_7), // OUT
	.a0(grdt0_7), // IN
	.a1(a2_pos_7), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_8
(
	.z(grdt1_8), // OUT
	.a0(grdt0_8), // IN
	.a1(a2_pos_8), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_9
(
	.z(grdt1_9), // OUT
	.a0(grdt0_9), // IN
	.a1(a2_pos_9), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_10
(
	.z(grdt1_10), // OUT
	.a0(grdt0_10), // IN
	.a1(a2_pos_10), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_11
(
	.z(grdt1_11), // OUT
	.a0(grdt0_11), // IN
	.a1(a2_pos_11), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_12
(
	.z(grdt1_12), // OUT
	.a0(grdt0_12), // IN
	.a1(a2_pos_12), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_13
(
	.z(grdt1_13), // OUT
	.a0(grdt0_13), // IN
	.a1(a2_pos_13), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_14
(
	.z(grdt1_14), // OUT
	.a0(grdt0_14), // IN
	.a1(a2_pos_14), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_15
(
	.z(grdt1_15), // OUT
	.a0(grdt0_15), // IN
	.a1(a2_pos_15), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_16
(
	.z(grdt1_16), // OUT
	.a0(grdt0_16), // IN
	.a1(a2_pos_16), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_17
(
	.z(grdt1_17), // OUT
	.a0(grdt0_17), // IN
	.a1(a2_pos_17), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_18
(
	.z(grdt1_18), // OUT
	.a0(grdt0_18), // IN
	.a1(a2_pos_18), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_19
(
	.z(grdt1_19), // OUT
	.a0(grdt0_19), // IN
	.a1(a2_pos_19), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_20
(
	.z(grdt1_20), // OUT
	.a0(grdt0_20), // IN
	.a1(a2_pos_20), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_21
(
	.z(grdt1_21), // OUT
	.a0(grdt0_21), // IN
	.a1(a2_pos_21), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_22
(
	.z(grdt1_22), // OUT
	.a0(grdt0_22), // IN
	.a1(a2_pos_22), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_23
(
	.z(grdt1_23), // OUT
	.a0(grdt0_23), // IN
	.a1(a2_pos_23), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_24
(
	.z(grdt1_24), // OUT
	.a0(grdt0_24), // IN
	.a1(a2_pos_24), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_25
(
	.z(grdt1_25), // OUT
	.a0(grdt0_25), // IN
	.a1(a2_pos_25), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_26
(
	.z(grdt1_26), // OUT
	.a0(grdt0_26), // IN
	.a1(a2_pos_26), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_27
(
	.z(grdt1_27), // OUT
	.a0(grdt0_27), // IN
	.a1(a2_pos_27), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_28
(
	.z(grdt1_28), // OUT
	.a0(grdt0_28), // IN
	.a1(a2_pos_28), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_29
(
	.z(grdt1_29), // OUT
	.a0(grdt0_29), // IN
	.a1(a2_pos_29), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_30
(
	.z(grdt1_30), // OUT
	.a0(grdt0_30), // IN
	.a1(a2_pos_30), // IN
	.s(a2posrd)  // IN
);
mx2 grdt1_from_0_to_31_inst_31
(
	.z(grdt1_31), // OUT
	.a0(grdt0_31), // IN
	.a1(a2_pos_31), // IN
	.s(a2posrd)  // IN
);

// ADDRESS.NET (242) - grden : or3u
assign grden = a1posrd | a1posfrd | a2posrd;

// ADDRESS.NET (243) - grd[0-31] : ts
assign gpu_dout_0 = (grden) ? grdt1_0 : 1'bz;
assign gpu_dout_1 = (grden) ? grdt1_1 : 1'bz;
assign gpu_dout_2 = (grden) ? grdt1_2 : 1'bz;
assign gpu_dout_3 = (grden) ? grdt1_3 : 1'bz;
assign gpu_dout_4 = (grden) ? grdt1_4 : 1'bz;
assign gpu_dout_5 = (grden) ? grdt1_5 : 1'bz;
assign gpu_dout_6 = (grden) ? grdt1_6 : 1'bz;
assign gpu_dout_7 = (grden) ? grdt1_7 : 1'bz;
assign gpu_dout_8 = (grden) ? grdt1_8 : 1'bz;
assign gpu_dout_9 = (grden) ? grdt1_9 : 1'bz;
assign gpu_dout_10 = (grden) ? grdt1_10 : 1'bz;
assign gpu_dout_11 = (grden) ? grdt1_11 : 1'bz;
assign gpu_dout_12 = (grden) ? grdt1_12 : 1'bz;
assign gpu_dout_13 = (grden) ? grdt1_13 : 1'bz;
assign gpu_dout_14 = (grden) ? grdt1_14 : 1'bz;
assign gpu_dout_15 = (grden) ? grdt1_15 : 1'bz;
assign gpu_dout_16 = (grden) ? grdt1_16 : 1'bz;
assign gpu_dout_17 = (grden) ? grdt1_17 : 1'bz;
assign gpu_dout_18 = (grden) ? grdt1_18 : 1'bz;
assign gpu_dout_19 = (grden) ? grdt1_19 : 1'bz;
assign gpu_dout_20 = (grden) ? grdt1_20 : 1'bz;
assign gpu_dout_21 = (grden) ? grdt1_21 : 1'bz;
assign gpu_dout_22 = (grden) ? grdt1_22 : 1'bz;
assign gpu_dout_23 = (grden) ? grdt1_23 : 1'bz;
assign gpu_dout_24 = (grden) ? grdt1_24 : 1'bz;
assign gpu_dout_25 = (grden) ? grdt1_25 : 1'bz;
assign gpu_dout_26 = (grden) ? grdt1_26 : 1'bz;
assign gpu_dout_27 = (grden) ? grdt1_27 : 1'bz;
assign gpu_dout_28 = (grden) ? grdt1_28 : 1'bz;
assign gpu_dout_29 = (grden) ? grdt1_29 : 1'bz;
assign gpu_dout_30 = (grden) ? grdt1_30 : 1'bz;
assign gpu_dout_31 = (grden) ? grdt1_31 : 1'bz;

// ADDRESS.NET (245) - unused[0-2] : dummy
endmodule