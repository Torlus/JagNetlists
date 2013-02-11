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
	input[0:31] dstdlo;
	input[0:31] dstdhi;
	input[0:31] patdlo;
	input[0:31] patdhi;
	input[0:31] srcdlo;
	input[0:31] srcdhi
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
	.z(tardlo[0]), // OUT
	.a0(srcdlo[0]), // IN
	.a1(dstdlo[0]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_1
(
	.z(tardlo[1]), // OUT
	.a0(srcdlo[1]), // IN
	.a1(dstdlo[1]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_2
(
	.z(tardlo[2]), // OUT
	.a0(srcdlo[2]), // IN
	.a1(dstdlo[2]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_3
(
	.z(tardlo[3]), // OUT
	.a0(srcdlo[3]), // IN
	.a1(dstdlo[3]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_4
(
	.z(tardlo[4]), // OUT
	.a0(srcdlo[4]), // IN
	.a1(dstdlo[4]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_5
(
	.z(tardlo[5]), // OUT
	.a0(srcdlo[5]), // IN
	.a1(dstdlo[5]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_6
(
	.z(tardlo[6]), // OUT
	.a0(srcdlo[6]), // IN
	.a1(dstdlo[6]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_7
(
	.z(tardlo[7]), // OUT
	.a0(srcdlo[7]), // IN
	.a1(dstdlo[7]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_8
(
	.z(tardlo[8]), // OUT
	.a0(srcdlo[8]), // IN
	.a1(dstdlo[8]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_9
(
	.z(tardlo[9]), // OUT
	.a0(srcdlo[9]), // IN
	.a1(dstdlo[9]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_10
(
	.z(tardlo[10]), // OUT
	.a0(srcdlo[10]), // IN
	.a1(dstdlo[10]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_11
(
	.z(tardlo[11]), // OUT
	.a0(srcdlo[11]), // IN
	.a1(dstdlo[11]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_12
(
	.z(tardlo[12]), // OUT
	.a0(srcdlo[12]), // IN
	.a1(dstdlo[12]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_13
(
	.z(tardlo[13]), // OUT
	.a0(srcdlo[13]), // IN
	.a1(dstdlo[13]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_14
(
	.z(tardlo[14]), // OUT
	.a0(srcdlo[14]), // IN
	.a1(dstdlo[14]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_15
(
	.z(tardlo[15]), // OUT
	.a0(srcdlo[15]), // IN
	.a1(dstdlo[15]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_16
(
	.z(tardlo[16]), // OUT
	.a0(srcdlo[16]), // IN
	.a1(dstdlo[16]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_17
(
	.z(tardlo[17]), // OUT
	.a0(srcdlo[17]), // IN
	.a1(dstdlo[17]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_18
(
	.z(tardlo[18]), // OUT
	.a0(srcdlo[18]), // IN
	.a1(dstdlo[18]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_19
(
	.z(tardlo[19]), // OUT
	.a0(srcdlo[19]), // IN
	.a1(dstdlo[19]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_20
(
	.z(tardlo[20]), // OUT
	.a0(srcdlo[20]), // IN
	.a1(dstdlo[20]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_21
(
	.z(tardlo[21]), // OUT
	.a0(srcdlo[21]), // IN
	.a1(dstdlo[21]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_22
(
	.z(tardlo[22]), // OUT
	.a0(srcdlo[22]), // IN
	.a1(dstdlo[22]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_23
(
	.z(tardlo[23]), // OUT
	.a0(srcdlo[23]), // IN
	.a1(dstdlo[23]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_24
(
	.z(tardlo[24]), // OUT
	.a0(srcdlo[24]), // IN
	.a1(dstdlo[24]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_25
(
	.z(tardlo[25]), // OUT
	.a0(srcdlo[25]), // IN
	.a1(dstdlo[25]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_26
(
	.z(tardlo[26]), // OUT
	.a0(srcdlo[26]), // IN
	.a1(dstdlo[26]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_27
(
	.z(tardlo[27]), // OUT
	.a0(srcdlo[27]), // IN
	.a1(dstdlo[27]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_28
(
	.z(tardlo[28]), // OUT
	.a0(srcdlo[28]), // IN
	.a1(dstdlo[28]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_29
(
	.z(tardlo[29]), // OUT
	.a0(srcdlo[29]), // IN
	.a1(dstdlo[29]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_30
(
	.z(tardlo[30]), // OUT
	.a0(srcdlo[30]), // IN
	.a1(dstdlo[30]), // IN
	.s(cmpdstb_0)  // IN
);
mx2 tardlo_inst_31
(
	.z(tardlo[31]), // OUT
	.a0(srcdlo[31]), // IN
	.a1(dstdlo[31]), // IN
	.s(cmpdstb_0)  // IN
);

// DATACOMP.NET (43) - tardhi : mx2
mx2 tardhi_inst_0
(
	.z(tardhi[0]), // OUT
	.a0(srcdhi[0]), // IN
	.a1(dstdhi[0]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_1
(
	.z(tardhi[1]), // OUT
	.a0(srcdhi[1]), // IN
	.a1(dstdhi[1]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_2
(
	.z(tardhi[2]), // OUT
	.a0(srcdhi[2]), // IN
	.a1(dstdhi[2]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_3
(
	.z(tardhi[3]), // OUT
	.a0(srcdhi[3]), // IN
	.a1(dstdhi[3]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_4
(
	.z(tardhi[4]), // OUT
	.a0(srcdhi[4]), // IN
	.a1(dstdhi[4]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_5
(
	.z(tardhi[5]), // OUT
	.a0(srcdhi[5]), // IN
	.a1(dstdhi[5]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_6
(
	.z(tardhi[6]), // OUT
	.a0(srcdhi[6]), // IN
	.a1(dstdhi[6]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_7
(
	.z(tardhi[7]), // OUT
	.a0(srcdhi[7]), // IN
	.a1(dstdhi[7]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_8
(
	.z(tardhi[8]), // OUT
	.a0(srcdhi[8]), // IN
	.a1(dstdhi[8]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_9
(
	.z(tardhi[9]), // OUT
	.a0(srcdhi[9]), // IN
	.a1(dstdhi[9]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_10
(
	.z(tardhi[10]), // OUT
	.a0(srcdhi[10]), // IN
	.a1(dstdhi[10]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_11
(
	.z(tardhi[11]), // OUT
	.a0(srcdhi[11]), // IN
	.a1(dstdhi[11]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_12
(
	.z(tardhi[12]), // OUT
	.a0(srcdhi[12]), // IN
	.a1(dstdhi[12]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_13
(
	.z(tardhi[13]), // OUT
	.a0(srcdhi[13]), // IN
	.a1(dstdhi[13]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_14
(
	.z(tardhi[14]), // OUT
	.a0(srcdhi[14]), // IN
	.a1(dstdhi[14]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_15
(
	.z(tardhi[15]), // OUT
	.a0(srcdhi[15]), // IN
	.a1(dstdhi[15]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_16
(
	.z(tardhi[16]), // OUT
	.a0(srcdhi[16]), // IN
	.a1(dstdhi[16]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_17
(
	.z(tardhi[17]), // OUT
	.a0(srcdhi[17]), // IN
	.a1(dstdhi[17]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_18
(
	.z(tardhi[18]), // OUT
	.a0(srcdhi[18]), // IN
	.a1(dstdhi[18]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_19
(
	.z(tardhi[19]), // OUT
	.a0(srcdhi[19]), // IN
	.a1(dstdhi[19]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_20
(
	.z(tardhi[20]), // OUT
	.a0(srcdhi[20]), // IN
	.a1(dstdhi[20]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_21
(
	.z(tardhi[21]), // OUT
	.a0(srcdhi[21]), // IN
	.a1(dstdhi[21]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_22
(
	.z(tardhi[22]), // OUT
	.a0(srcdhi[22]), // IN
	.a1(dstdhi[22]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_23
(
	.z(tardhi[23]), // OUT
	.a0(srcdhi[23]), // IN
	.a1(dstdhi[23]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_24
(
	.z(tardhi[24]), // OUT
	.a0(srcdhi[24]), // IN
	.a1(dstdhi[24]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_25
(
	.z(tardhi[25]), // OUT
	.a0(srcdhi[25]), // IN
	.a1(dstdhi[25]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_26
(
	.z(tardhi[26]), // OUT
	.a0(srcdhi[26]), // IN
	.a1(dstdhi[26]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_27
(
	.z(tardhi[27]), // OUT
	.a0(srcdhi[27]), // IN
	.a1(dstdhi[27]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_28
(
	.z(tardhi[28]), // OUT
	.a0(srcdhi[28]), // IN
	.a1(dstdhi[28]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_29
(
	.z(tardhi[29]), // OUT
	.a0(srcdhi[29]), // IN
	.a1(dstdhi[29]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_30
(
	.z(tardhi[30]), // OUT
	.a0(srcdhi[30]), // IN
	.a1(dstdhi[30]), // IN
	.s(cmpdstb_1)  // IN
);
mx2 tardhi_inst_31
(
	.z(tardhi[31]), // OUT
	.a0(srcdhi[31]), // IN
	.a1(dstdhi[31]), // IN
	.s(cmpdstb_1)  // IN
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
	.equal(dcomp_0), // OUT
	.a({patb_0[0],patb_0[1],patb_0[2],patb_0[3],patb_0[4],patb_0[5],patb_0[6],patb_0[7]}), // IN
	.b({tarb_0[0],tarb_0[1],tarb_0[2],tarb_0[3],tarb_0[4],tarb_0[5],tarb_0[6],tarb_0[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_1
(
	.equal(dcomp_1), // OUT
	.a({patb_1[0],patb_1[1],patb_1[2],patb_1[3],patb_1[4],patb_1[5],patb_1[6],patb_1[7]}), // IN
	.b({tarb_1[0],tarb_1[1],tarb_1[2],tarb_1[3],tarb_1[4],tarb_1[5],tarb_1[6],tarb_1[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_2
(
	.equal(dcomp_2), // OUT
	.a({patb_2[0],patb_2[1],patb_2[2],patb_2[3],patb_2[4],patb_2[5],patb_2[6],patb_2[7]}), // IN
	.b({tarb_2[0],tarb_2[1],tarb_2[2],tarb_2[3],tarb_2[4],tarb_2[5],tarb_2[6],tarb_2[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_3
(
	.equal(dcomp_3), // OUT
	.a({patb_3[0],patb_3[1],patb_3[2],patb_3[3],patb_3[4],patb_3[5],patb_3[6],patb_3[7]}), // IN
	.b({tarb_3[0],tarb_3[1],tarb_3[2],tarb_3[3],tarb_3[4],tarb_3[5],tarb_3[6],tarb_3[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_4
(
	.equal(dcomp_4), // OUT
	.a({patb_4[0],patb_4[1],patb_4[2],patb_4[3],patb_4[4],patb_4[5],patb_4[6],patb_4[7]}), // IN
	.b({tarb_4[0],tarb_4[1],tarb_4[2],tarb_4[3],tarb_4[4],tarb_4[5],tarb_4[6],tarb_4[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_5
(
	.equal(dcomp_5), // OUT
	.a({patb_5[0],patb_5[1],patb_5[2],patb_5[3],patb_5[4],patb_5[5],patb_5[6],patb_5[7]}), // IN
	.b({tarb_5[0],tarb_5[1],tarb_5[2],tarb_5[3],tarb_5[4],tarb_5[5],tarb_5[6],tarb_5[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_6
(
	.equal(dcomp_6), // OUT
	.a({patb_6[0],patb_6[1],patb_6[2],patb_6[3],patb_6[4],patb_6[5],patb_6[6],patb_6[7]}), // IN
	.b({tarb_6[0],tarb_6[1],tarb_6[2],tarb_6[3],tarb_6[4],tarb_6[5],tarb_6[6],tarb_6[7]})  // IN
);
cmp8_int dcmp_from_0_to_7_inst_7
(
	.equal(dcomp_7), // OUT
	.a({patb_7[0],patb_7[1],patb_7[2],patb_7[3],patb_7[4],patb_7[5],patb_7[6],patb_7[7]}), // IN
	.b({tarb_7[0],tarb_7[1],tarb_7[2],tarb_7[3],tarb_7[4],tarb_7[5],tarb_7[6],tarb_7[7]})  // IN
);
endmodule
