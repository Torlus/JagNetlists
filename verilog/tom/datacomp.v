/* verilator lint_off LITENDIAN */
`include "defs.v"

module datacomp
(
	output dcomp_0,
	output dcomp_1,
	output dcomp_2,
	output dcomp_3,
	output dcomp_4,
	output dcomp_5,
	output dcomp_6,
	output dcomp_7,
	input cmpdst,
	input [0:31] dstdlo,
	input [0:31] dstdhi,
	input [0:31] patdlo,
	input [0:31] patdhi,
	input [0:31] srcdlo,
	input [0:31] srcdhi
);
wire [0:7] patb_0;
wire [0:7] patb_1;
wire [0:7] patb_2;
wire [0:7] patb_3;
wire [0:7] patb_4;
wire [0:7] patb_5;
wire [0:7] patb_6;
wire [0:7] patb_7;
wire [0:7] tarb_0;
wire [0:7] tarb_1;
wire [0:7] tarb_2;
wire [0:7] tarb_3;
wire [0:7] tarb_4;
wire [0:7] tarb_5;
wire [0:7] tarb_6;
wire [0:7] tarb_7;
wire [0:31] tardlo;
wire [0:31] tardhi;
wire cmpdstb_0;
wire cmpdstb_1;

// DATACOMP.NET (41) - cmpdstb[0-1] : nivu
assign cmpdstb_0 = cmpdst;
assign cmpdstb_1 = cmpdst;

// DATACOMP.NET (42) - tardlo : mx2
mx2 tardlo_inst_0
(
	.z /* OUT */ (tardlo[0]),
	.a0 /* IN */ (srcdlo[0]),
	.a1 /* IN */ (dstdlo[0]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_1
(
	.z /* OUT */ (tardlo[1]),
	.a0 /* IN */ (srcdlo[1]),
	.a1 /* IN */ (dstdlo[1]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_2
(
	.z /* OUT */ (tardlo[2]),
	.a0 /* IN */ (srcdlo[2]),
	.a1 /* IN */ (dstdlo[2]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_3
(
	.z /* OUT */ (tardlo[3]),
	.a0 /* IN */ (srcdlo[3]),
	.a1 /* IN */ (dstdlo[3]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_4
(
	.z /* OUT */ (tardlo[4]),
	.a0 /* IN */ (srcdlo[4]),
	.a1 /* IN */ (dstdlo[4]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_5
(
	.z /* OUT */ (tardlo[5]),
	.a0 /* IN */ (srcdlo[5]),
	.a1 /* IN */ (dstdlo[5]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_6
(
	.z /* OUT */ (tardlo[6]),
	.a0 /* IN */ (srcdlo[6]),
	.a1 /* IN */ (dstdlo[6]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_7
(
	.z /* OUT */ (tardlo[7]),
	.a0 /* IN */ (srcdlo[7]),
	.a1 /* IN */ (dstdlo[7]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_8
(
	.z /* OUT */ (tardlo[8]),
	.a0 /* IN */ (srcdlo[8]),
	.a1 /* IN */ (dstdlo[8]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_9
(
	.z /* OUT */ (tardlo[9]),
	.a0 /* IN */ (srcdlo[9]),
	.a1 /* IN */ (dstdlo[9]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_10
(
	.z /* OUT */ (tardlo[10]),
	.a0 /* IN */ (srcdlo[10]),
	.a1 /* IN */ (dstdlo[10]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_11
(
	.z /* OUT */ (tardlo[11]),
	.a0 /* IN */ (srcdlo[11]),
	.a1 /* IN */ (dstdlo[11]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_12
(
	.z /* OUT */ (tardlo[12]),
	.a0 /* IN */ (srcdlo[12]),
	.a1 /* IN */ (dstdlo[12]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_13
(
	.z /* OUT */ (tardlo[13]),
	.a0 /* IN */ (srcdlo[13]),
	.a1 /* IN */ (dstdlo[13]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_14
(
	.z /* OUT */ (tardlo[14]),
	.a0 /* IN */ (srcdlo[14]),
	.a1 /* IN */ (dstdlo[14]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_15
(
	.z /* OUT */ (tardlo[15]),
	.a0 /* IN */ (srcdlo[15]),
	.a1 /* IN */ (dstdlo[15]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_16
(
	.z /* OUT */ (tardlo[16]),
	.a0 /* IN */ (srcdlo[16]),
	.a1 /* IN */ (dstdlo[16]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_17
(
	.z /* OUT */ (tardlo[17]),
	.a0 /* IN */ (srcdlo[17]),
	.a1 /* IN */ (dstdlo[17]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_18
(
	.z /* OUT */ (tardlo[18]),
	.a0 /* IN */ (srcdlo[18]),
	.a1 /* IN */ (dstdlo[18]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_19
(
	.z /* OUT */ (tardlo[19]),
	.a0 /* IN */ (srcdlo[19]),
	.a1 /* IN */ (dstdlo[19]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_20
(
	.z /* OUT */ (tardlo[20]),
	.a0 /* IN */ (srcdlo[20]),
	.a1 /* IN */ (dstdlo[20]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_21
(
	.z /* OUT */ (tardlo[21]),
	.a0 /* IN */ (srcdlo[21]),
	.a1 /* IN */ (dstdlo[21]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_22
(
	.z /* OUT */ (tardlo[22]),
	.a0 /* IN */ (srcdlo[22]),
	.a1 /* IN */ (dstdlo[22]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_23
(
	.z /* OUT */ (tardlo[23]),
	.a0 /* IN */ (srcdlo[23]),
	.a1 /* IN */ (dstdlo[23]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_24
(
	.z /* OUT */ (tardlo[24]),
	.a0 /* IN */ (srcdlo[24]),
	.a1 /* IN */ (dstdlo[24]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_25
(
	.z /* OUT */ (tardlo[25]),
	.a0 /* IN */ (srcdlo[25]),
	.a1 /* IN */ (dstdlo[25]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_26
(
	.z /* OUT */ (tardlo[26]),
	.a0 /* IN */ (srcdlo[26]),
	.a1 /* IN */ (dstdlo[26]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_27
(
	.z /* OUT */ (tardlo[27]),
	.a0 /* IN */ (srcdlo[27]),
	.a1 /* IN */ (dstdlo[27]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_28
(
	.z /* OUT */ (tardlo[28]),
	.a0 /* IN */ (srcdlo[28]),
	.a1 /* IN */ (dstdlo[28]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_29
(
	.z /* OUT */ (tardlo[29]),
	.a0 /* IN */ (srcdlo[29]),
	.a1 /* IN */ (dstdlo[29]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_30
(
	.z /* OUT */ (tardlo[30]),
	.a0 /* IN */ (srcdlo[30]),
	.a1 /* IN */ (dstdlo[30]),
	.s /* IN */ (cmpdstb_0)
);
mx2 tardlo_inst_31
(
	.z /* OUT */ (tardlo[31]),
	.a0 /* IN */ (srcdlo[31]),
	.a1 /* IN */ (dstdlo[31]),
	.s /* IN */ (cmpdstb_0)
);

// DATACOMP.NET (43) - tardhi : mx2
mx2 tardhi_inst_0
(
	.z /* OUT */ (tardhi[0]),
	.a0 /* IN */ (srcdhi[0]),
	.a1 /* IN */ (dstdhi[0]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_1
(
	.z /* OUT */ (tardhi[1]),
	.a0 /* IN */ (srcdhi[1]),
	.a1 /* IN */ (dstdhi[1]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_2
(
	.z /* OUT */ (tardhi[2]),
	.a0 /* IN */ (srcdhi[2]),
	.a1 /* IN */ (dstdhi[2]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_3
(
	.z /* OUT */ (tardhi[3]),
	.a0 /* IN */ (srcdhi[3]),
	.a1 /* IN */ (dstdhi[3]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_4
(
	.z /* OUT */ (tardhi[4]),
	.a0 /* IN */ (srcdhi[4]),
	.a1 /* IN */ (dstdhi[4]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_5
(
	.z /* OUT */ (tardhi[5]),
	.a0 /* IN */ (srcdhi[5]),
	.a1 /* IN */ (dstdhi[5]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_6
(
	.z /* OUT */ (tardhi[6]),
	.a0 /* IN */ (srcdhi[6]),
	.a1 /* IN */ (dstdhi[6]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_7
(
	.z /* OUT */ (tardhi[7]),
	.a0 /* IN */ (srcdhi[7]),
	.a1 /* IN */ (dstdhi[7]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_8
(
	.z /* OUT */ (tardhi[8]),
	.a0 /* IN */ (srcdhi[8]),
	.a1 /* IN */ (dstdhi[8]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_9
(
	.z /* OUT */ (tardhi[9]),
	.a0 /* IN */ (srcdhi[9]),
	.a1 /* IN */ (dstdhi[9]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_10
(
	.z /* OUT */ (tardhi[10]),
	.a0 /* IN */ (srcdhi[10]),
	.a1 /* IN */ (dstdhi[10]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_11
(
	.z /* OUT */ (tardhi[11]),
	.a0 /* IN */ (srcdhi[11]),
	.a1 /* IN */ (dstdhi[11]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_12
(
	.z /* OUT */ (tardhi[12]),
	.a0 /* IN */ (srcdhi[12]),
	.a1 /* IN */ (dstdhi[12]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_13
(
	.z /* OUT */ (tardhi[13]),
	.a0 /* IN */ (srcdhi[13]),
	.a1 /* IN */ (dstdhi[13]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_14
(
	.z /* OUT */ (tardhi[14]),
	.a0 /* IN */ (srcdhi[14]),
	.a1 /* IN */ (dstdhi[14]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_15
(
	.z /* OUT */ (tardhi[15]),
	.a0 /* IN */ (srcdhi[15]),
	.a1 /* IN */ (dstdhi[15]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_16
(
	.z /* OUT */ (tardhi[16]),
	.a0 /* IN */ (srcdhi[16]),
	.a1 /* IN */ (dstdhi[16]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_17
(
	.z /* OUT */ (tardhi[17]),
	.a0 /* IN */ (srcdhi[17]),
	.a1 /* IN */ (dstdhi[17]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_18
(
	.z /* OUT */ (tardhi[18]),
	.a0 /* IN */ (srcdhi[18]),
	.a1 /* IN */ (dstdhi[18]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_19
(
	.z /* OUT */ (tardhi[19]),
	.a0 /* IN */ (srcdhi[19]),
	.a1 /* IN */ (dstdhi[19]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_20
(
	.z /* OUT */ (tardhi[20]),
	.a0 /* IN */ (srcdhi[20]),
	.a1 /* IN */ (dstdhi[20]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_21
(
	.z /* OUT */ (tardhi[21]),
	.a0 /* IN */ (srcdhi[21]),
	.a1 /* IN */ (dstdhi[21]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_22
(
	.z /* OUT */ (tardhi[22]),
	.a0 /* IN */ (srcdhi[22]),
	.a1 /* IN */ (dstdhi[22]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_23
(
	.z /* OUT */ (tardhi[23]),
	.a0 /* IN */ (srcdhi[23]),
	.a1 /* IN */ (dstdhi[23]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_24
(
	.z /* OUT */ (tardhi[24]),
	.a0 /* IN */ (srcdhi[24]),
	.a1 /* IN */ (dstdhi[24]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_25
(
	.z /* OUT */ (tardhi[25]),
	.a0 /* IN */ (srcdhi[25]),
	.a1 /* IN */ (dstdhi[25]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_26
(
	.z /* OUT */ (tardhi[26]),
	.a0 /* IN */ (srcdhi[26]),
	.a1 /* IN */ (dstdhi[26]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_27
(
	.z /* OUT */ (tardhi[27]),
	.a0 /* IN */ (srcdhi[27]),
	.a1 /* IN */ (dstdhi[27]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_28
(
	.z /* OUT */ (tardhi[28]),
	.a0 /* IN */ (srcdhi[28]),
	.a1 /* IN */ (dstdhi[28]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_29
(
	.z /* OUT */ (tardhi[29]),
	.a0 /* IN */ (srcdhi[29]),
	.a1 /* IN */ (dstdhi[29]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_30
(
	.z /* OUT */ (tardhi[30]),
	.a0 /* IN */ (srcdhi[30]),
	.a1 /* IN */ (dstdhi[30]),
	.s /* IN */ (cmpdstb_1)
);
mx2 tardhi_inst_31
(
	.z /* OUT */ (tardhi[31]),
	.a0 /* IN */ (srcdhi[31]),
	.a1 /* IN */ (dstdhi[31]),
	.s /* IN */ (cmpdstb_1)
);

// DATACOMP.NET (45) - patb[0] : join
assign patb_0[0] = patdlo[0];
assign patb_0[1] = patdlo[1];
assign patb_0[2] = patdlo[2];
assign patb_0[3] = patdlo[3];
assign patb_0[4] = patdlo[4];
assign patb_0[5] = patdlo[5];
assign patb_0[6] = patdlo[6];
assign patb_0[7] = patdlo[7];

// DATACOMP.NET (46) - patb[1] : join
assign patb_1[0] = patdlo[8];
assign patb_1[1] = patdlo[9];
assign patb_1[2] = patdlo[10];
assign patb_1[3] = patdlo[11];
assign patb_1[4] = patdlo[12];
assign patb_1[5] = patdlo[13];
assign patb_1[6] = patdlo[14];
assign patb_1[7] = patdlo[15];

// DATACOMP.NET (47) - patb[2] : join
assign patb_2[0] = patdlo[16];
assign patb_2[1] = patdlo[17];
assign patb_2[2] = patdlo[18];
assign patb_2[3] = patdlo[19];
assign patb_2[4] = patdlo[20];
assign patb_2[5] = patdlo[21];
assign patb_2[6] = patdlo[22];
assign patb_2[7] = patdlo[23];

// DATACOMP.NET (48) - patb[3] : join
assign patb_3[0] = patdlo[24];
assign patb_3[1] = patdlo[25];
assign patb_3[2] = patdlo[26];
assign patb_3[3] = patdlo[27];
assign patb_3[4] = patdlo[28];
assign patb_3[5] = patdlo[29];
assign patb_3[6] = patdlo[30];
assign patb_3[7] = patdlo[31];

// DATACOMP.NET (49) - patb[4] : join
assign patb_4[0] = patdhi[0];
assign patb_4[1] = patdhi[1];
assign patb_4[2] = patdhi[2];
assign patb_4[3] = patdhi[3];
assign patb_4[4] = patdhi[4];
assign patb_4[5] = patdhi[5];
assign patb_4[6] = patdhi[6];
assign patb_4[7] = patdhi[7];

// DATACOMP.NET (50) - patb[5] : join
assign patb_5[0] = patdhi[8];
assign patb_5[1] = patdhi[9];
assign patb_5[2] = patdhi[10];
assign patb_5[3] = patdhi[11];
assign patb_5[4] = patdhi[12];
assign patb_5[5] = patdhi[13];
assign patb_5[6] = patdhi[14];
assign patb_5[7] = patdhi[15];

// DATACOMP.NET (51) - patb[6] : join
assign patb_6[0] = patdhi[16];
assign patb_6[1] = patdhi[17];
assign patb_6[2] = patdhi[18];
assign patb_6[3] = patdhi[19];
assign patb_6[4] = patdhi[20];
assign patb_6[5] = patdhi[21];
assign patb_6[6] = patdhi[22];
assign patb_6[7] = patdhi[23];

// DATACOMP.NET (52) - patb[7] : join
assign patb_7[0] = patdhi[24];
assign patb_7[1] = patdhi[25];
assign patb_7[2] = patdhi[26];
assign patb_7[3] = patdhi[27];
assign patb_7[4] = patdhi[28];
assign patb_7[5] = patdhi[29];
assign patb_7[6] = patdhi[30];
assign patb_7[7] = patdhi[31];

// DATACOMP.NET (54) - tarb[0] : join
assign tarb_0[0] = tardlo[0];
assign tarb_0[1] = tardlo[1];
assign tarb_0[2] = tardlo[2];
assign tarb_0[3] = tardlo[3];
assign tarb_0[4] = tardlo[4];
assign tarb_0[5] = tardlo[5];
assign tarb_0[6] = tardlo[6];
assign tarb_0[7] = tardlo[7];

// DATACOMP.NET (55) - tarb[1] : join
assign tarb_1[0] = tardlo[8];
assign tarb_1[1] = tardlo[9];
assign tarb_1[2] = tardlo[10];
assign tarb_1[3] = tardlo[11];
assign tarb_1[4] = tardlo[12];
assign tarb_1[5] = tardlo[13];
assign tarb_1[6] = tardlo[14];
assign tarb_1[7] = tardlo[15];

// DATACOMP.NET (56) - tarb[2] : join
assign tarb_2[0] = tardlo[16];
assign tarb_2[1] = tardlo[17];
assign tarb_2[2] = tardlo[18];
assign tarb_2[3] = tardlo[19];
assign tarb_2[4] = tardlo[20];
assign tarb_2[5] = tardlo[21];
assign tarb_2[6] = tardlo[22];
assign tarb_2[7] = tardlo[23];

// DATACOMP.NET (57) - tarb[3] : join
assign tarb_3[0] = tardlo[24];
assign tarb_3[1] = tardlo[25];
assign tarb_3[2] = tardlo[26];
assign tarb_3[3] = tardlo[27];
assign tarb_3[4] = tardlo[28];
assign tarb_3[5] = tardlo[29];
assign tarb_3[6] = tardlo[30];
assign tarb_3[7] = tardlo[31];

// DATACOMP.NET (58) - tarb[4] : join
assign tarb_4[0] = tardhi[0];
assign tarb_4[1] = tardhi[1];
assign tarb_4[2] = tardhi[2];
assign tarb_4[3] = tardhi[3];
assign tarb_4[4] = tardhi[4];
assign tarb_4[5] = tardhi[5];
assign tarb_4[6] = tardhi[6];
assign tarb_4[7] = tardhi[7];

// DATACOMP.NET (59) - tarb[5] : join
assign tarb_5[0] = tardhi[8];
assign tarb_5[1] = tardhi[9];
assign tarb_5[2] = tardhi[10];
assign tarb_5[3] = tardhi[11];
assign tarb_5[4] = tardhi[12];
assign tarb_5[5] = tardhi[13];
assign tarb_5[6] = tardhi[14];
assign tarb_5[7] = tardhi[15];

// DATACOMP.NET (60) - tarb[6] : join
assign tarb_6[0] = tardhi[16];
assign tarb_6[1] = tardhi[17];
assign tarb_6[2] = tardhi[18];
assign tarb_6[3] = tardhi[19];
assign tarb_6[4] = tardhi[20];
assign tarb_6[5] = tardhi[21];
assign tarb_6[6] = tardhi[22];
assign tarb_6[7] = tardhi[23];

// DATACOMP.NET (61) - tarb[7] : join
assign tarb_7[0] = tardhi[24];
assign tarb_7[1] = tardhi[25];
assign tarb_7[2] = tardhi[26];
assign tarb_7[3] = tardhi[27];
assign tarb_7[4] = tardhi[28];
assign tarb_7[5] = tardhi[29];
assign tarb_7[6] = tardhi[30];
assign tarb_7[7] = tardhi[31];

// DATACOMP.NET (63) - dcmp[0-7] : cmp8_int
cmp8_int dcmp_from_0_to_7_inst_0
(
	.equal /* OUT */ (dcomp_0),
	.a /* IN */ ({patb_0[0],patb_0[1],patb_0[2],patb_0[3],patb_0[4],patb_0[5],patb_0[6],patb_0[7]}),
	.b /* IN */ ({tarb_0[0],tarb_0[1],tarb_0[2],tarb_0[3],tarb_0[4],tarb_0[5],tarb_0[6],tarb_0[7]})
);
cmp8_int dcmp_from_0_to_7_inst_1
(
	.equal /* OUT */ (dcomp_1),
	.a /* IN */ ({patb_1[0],patb_1[1],patb_1[2],patb_1[3],patb_1[4],patb_1[5],patb_1[6],patb_1[7]}),
	.b /* IN */ ({tarb_1[0],tarb_1[1],tarb_1[2],tarb_1[3],tarb_1[4],tarb_1[5],tarb_1[6],tarb_1[7]})
);
cmp8_int dcmp_from_0_to_7_inst_2
(
	.equal /* OUT */ (dcomp_2),
	.a /* IN */ ({patb_2[0],patb_2[1],patb_2[2],patb_2[3],patb_2[4],patb_2[5],patb_2[6],patb_2[7]}),
	.b /* IN */ ({tarb_2[0],tarb_2[1],tarb_2[2],tarb_2[3],tarb_2[4],tarb_2[5],tarb_2[6],tarb_2[7]})
);
cmp8_int dcmp_from_0_to_7_inst_3
(
	.equal /* OUT */ (dcomp_3),
	.a /* IN */ ({patb_3[0],patb_3[1],patb_3[2],patb_3[3],patb_3[4],patb_3[5],patb_3[6],patb_3[7]}),
	.b /* IN */ ({tarb_3[0],tarb_3[1],tarb_3[2],tarb_3[3],tarb_3[4],tarb_3[5],tarb_3[6],tarb_3[7]})
);
cmp8_int dcmp_from_0_to_7_inst_4
(
	.equal /* OUT */ (dcomp_4),
	.a /* IN */ ({patb_4[0],patb_4[1],patb_4[2],patb_4[3],patb_4[4],patb_4[5],patb_4[6],patb_4[7]}),
	.b /* IN */ ({tarb_4[0],tarb_4[1],tarb_4[2],tarb_4[3],tarb_4[4],tarb_4[5],tarb_4[6],tarb_4[7]})
);
cmp8_int dcmp_from_0_to_7_inst_5
(
	.equal /* OUT */ (dcomp_5),
	.a /* IN */ ({patb_5[0],patb_5[1],patb_5[2],patb_5[3],patb_5[4],patb_5[5],patb_5[6],patb_5[7]}),
	.b /* IN */ ({tarb_5[0],tarb_5[1],tarb_5[2],tarb_5[3],tarb_5[4],tarb_5[5],tarb_5[6],tarb_5[7]})
);
cmp8_int dcmp_from_0_to_7_inst_6
(
	.equal /* OUT */ (dcomp_6),
	.a /* IN */ ({patb_6[0],patb_6[1],patb_6[2],patb_6[3],patb_6[4],patb_6[5],patb_6[6],patb_6[7]}),
	.b /* IN */ ({tarb_6[0],tarb_6[1],tarb_6[2],tarb_6[3],tarb_6[4],tarb_6[5],tarb_6[6],tarb_6[7]})
);
cmp8_int dcmp_from_0_to_7_inst_7
(
	.equal /* OUT */ (dcomp_7),
	.a /* IN */ ({patb_7[0],patb_7[1],patb_7[2],patb_7[3],patb_7[4],patb_7[5],patb_7[6],patb_7[7]}),
	.b /* IN */ ({tarb_7[0],tarb_7[1],tarb_7[2],tarb_7[3],tarb_7[4],tarb_7[5],tarb_7[6],tarb_7[7]})
);
endmodule
/* verilator lint_on LITENDIAN */
