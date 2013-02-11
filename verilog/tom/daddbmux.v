`include "defs.v"

module daddbmux
(
	output[0:15] addb_0;
	output[0:15] addb_1;
	output[0:15] addb_2;
	output[0:15] addb_3;
	input[0:31] srcdlo;
	input[0:31] srcdhi;
	input[0:31] iinc;
	input[0:31] zinc;
	input daddbsel_0,
	input daddbsel_1,
	input daddbsel_2
);
wire [0:15] word;
wire [0:15] iinclo;
wire [0:15] iinchi;
wire [0:15] srcdw_0;
wire [0:15] srcdw_1;
wire [0:15] srcdw_2;
wire [0:15] srcdw_3;
wire [0:15] zinclo;
wire [0:15] zinchi;
wire dsel0b;
wire dsel1b;
wire dsel2b_0;
wire dsel2b_1;

// DATAMUX.NET (77) - iinclo : join
assign iinclo[0] = iinc[0];
assign iinclo[1] = iinc[1];
assign iinclo[2] = iinc[2];
assign iinclo[3] = iinc[3];
assign iinclo[4] = iinc[4];
assign iinclo[5] = iinc[5];
assign iinclo[6] = iinc[6];
assign iinclo[7] = iinc[7];
assign iinclo[8] = iinc[8];
assign iinclo[9] = iinc[9];
assign iinclo[10] = iinc[10];
assign iinclo[11] = iinc[11];
assign iinclo[12] = iinc[12];
assign iinclo[13] = iinc[13];
assign iinclo[14] = iinc[14];
assign iinclo[15] = iinc[15];

// DATAMUX.NET (78) - iinchi : join
assign iinchi[0] = iinc[16];
assign iinchi[1] = iinc[17];
assign iinchi[2] = iinc[18];
assign iinchi[3] = iinc[19];
assign iinchi[4] = iinc[20];
assign iinchi[5] = iinc[21];
assign iinchi[6] = iinc[22];
assign iinchi[7] = iinc[23];
assign iinchi[8] = iinc[24];
assign iinchi[9] = iinc[25];
assign iinchi[10] = iinc[26];
assign iinchi[11] = iinc[27];
assign iinchi[12] = iinc[28];
assign iinchi[13] = iinc[29];
assign iinchi[14] = iinc[30];
assign iinchi[15] = iinc[31];

// DATAMUX.NET (79) - zinclo : join
assign zinclo[0] = zinc[0];
assign zinclo[1] = zinc[1];
assign zinclo[2] = zinc[2];
assign zinclo[3] = zinc[3];
assign zinclo[4] = zinc[4];
assign zinclo[5] = zinc[5];
assign zinclo[6] = zinc[6];
assign zinclo[7] = zinc[7];
assign zinclo[8] = zinc[8];
assign zinclo[9] = zinc[9];
assign zinclo[10] = zinc[10];
assign zinclo[11] = zinc[11];
assign zinclo[12] = zinc[12];
assign zinclo[13] = zinc[13];
assign zinclo[14] = zinc[14];
assign zinclo[15] = zinc[15];

// DATAMUX.NET (80) - zinchi : join
assign zinchi[0] = zinc[16];
assign zinchi[1] = zinc[17];
assign zinchi[2] = zinc[18];
assign zinchi[3] = zinc[19];
assign zinchi[4] = zinc[20];
assign zinchi[5] = zinc[21];
assign zinchi[6] = zinc[22];
assign zinchi[7] = zinc[23];
assign zinchi[8] = zinc[24];
assign zinchi[9] = zinc[25];
assign zinchi[10] = zinc[26];
assign zinchi[11] = zinc[27];
assign zinchi[12] = zinc[28];
assign zinchi[13] = zinc[29];
assign zinchi[14] = zinc[30];
assign zinchi[15] = zinc[31];

// DATAMUX.NET (82) - dsel0b : nivu2
assign dsel0b = daddbsel_0;

// DATAMUX.NET (83) - dsel1b : nivu2
assign dsel1b = daddbsel_1;

// DATAMUX.NET (85) - word : mx4p
mx4 word_inst_0
(
	.z(word[0]), // OUT
	.a0(iinclo[0]), // IN
	.a1(iinchi[0]), // IN
	.a2(zinclo[0]), // IN
	.a3(zinchi[0]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_1
(
	.z(word[1]), // OUT
	.a0(iinclo[1]), // IN
	.a1(iinchi[1]), // IN
	.a2(zinclo[1]), // IN
	.a3(zinchi[1]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_2
(
	.z(word[2]), // OUT
	.a0(iinclo[2]), // IN
	.a1(iinchi[2]), // IN
	.a2(zinclo[2]), // IN
	.a3(zinchi[2]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_3
(
	.z(word[3]), // OUT
	.a0(iinclo[3]), // IN
	.a1(iinchi[3]), // IN
	.a2(zinclo[3]), // IN
	.a3(zinchi[3]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_4
(
	.z(word[4]), // OUT
	.a0(iinclo[4]), // IN
	.a1(iinchi[4]), // IN
	.a2(zinclo[4]), // IN
	.a3(zinchi[4]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_5
(
	.z(word[5]), // OUT
	.a0(iinclo[5]), // IN
	.a1(iinchi[5]), // IN
	.a2(zinclo[5]), // IN
	.a3(zinchi[5]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_6
(
	.z(word[6]), // OUT
	.a0(iinclo[6]), // IN
	.a1(iinchi[6]), // IN
	.a2(zinclo[6]), // IN
	.a3(zinchi[6]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_7
(
	.z(word[7]), // OUT
	.a0(iinclo[7]), // IN
	.a1(iinchi[7]), // IN
	.a2(zinclo[7]), // IN
	.a3(zinchi[7]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_8
(
	.z(word[8]), // OUT
	.a0(iinclo[8]), // IN
	.a1(iinchi[8]), // IN
	.a2(zinclo[8]), // IN
	.a3(zinchi[8]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_9
(
	.z(word[9]), // OUT
	.a0(iinclo[9]), // IN
	.a1(iinchi[9]), // IN
	.a2(zinclo[9]), // IN
	.a3(zinchi[9]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_10
(
	.z(word[10]), // OUT
	.a0(iinclo[10]), // IN
	.a1(iinchi[10]), // IN
	.a2(zinclo[10]), // IN
	.a3(zinchi[10]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_11
(
	.z(word[11]), // OUT
	.a0(iinclo[11]), // IN
	.a1(iinchi[11]), // IN
	.a2(zinclo[11]), // IN
	.a3(zinchi[11]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_12
(
	.z(word[12]), // OUT
	.a0(iinclo[12]), // IN
	.a1(iinchi[12]), // IN
	.a2(zinclo[12]), // IN
	.a3(zinchi[12]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_13
(
	.z(word[13]), // OUT
	.a0(iinclo[13]), // IN
	.a1(iinchi[13]), // IN
	.a2(zinclo[13]), // IN
	.a3(zinchi[13]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_14
(
	.z(word[14]), // OUT
	.a0(iinclo[14]), // IN
	.a1(iinchi[14]), // IN
	.a2(zinclo[14]), // IN
	.a3(zinchi[14]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);
mx4 word_inst_15
(
	.z(word[15]), // OUT
	.a0(iinclo[15]), // IN
	.a1(iinchi[15]), // IN
	.a2(zinclo[15]), // IN
	.a3(zinchi[15]), // IN
	.s0(dsel0b), // IN
	.s1(dsel1b)  // IN
);

// DATAMUX.NET (88) - srcdw0 : join
assign srcdw_0[0] = srcdlo[0];
assign srcdw_0[1] = srcdlo[1];
assign srcdw_0[2] = srcdlo[2];
assign srcdw_0[3] = srcdlo[3];
assign srcdw_0[4] = srcdlo[4];
assign srcdw_0[5] = srcdlo[5];
assign srcdw_0[6] = srcdlo[6];
assign srcdw_0[7] = srcdlo[7];
assign srcdw_0[8] = srcdlo[8];
assign srcdw_0[9] = srcdlo[9];
assign srcdw_0[10] = srcdlo[10];
assign srcdw_0[11] = srcdlo[11];
assign srcdw_0[12] = srcdlo[12];
assign srcdw_0[13] = srcdlo[13];
assign srcdw_0[14] = srcdlo[14];
assign srcdw_0[15] = srcdlo[15];

// DATAMUX.NET (89) - srcdw1 : join
assign srcdw_1[0] = srcdlo[16];
assign srcdw_1[1] = srcdlo[17];
assign srcdw_1[2] = srcdlo[18];
assign srcdw_1[3] = srcdlo[19];
assign srcdw_1[4] = srcdlo[20];
assign srcdw_1[5] = srcdlo[21];
assign srcdw_1[6] = srcdlo[22];
assign srcdw_1[7] = srcdlo[23];
assign srcdw_1[8] = srcdlo[24];
assign srcdw_1[9] = srcdlo[25];
assign srcdw_1[10] = srcdlo[26];
assign srcdw_1[11] = srcdlo[27];
assign srcdw_1[12] = srcdlo[28];
assign srcdw_1[13] = srcdlo[29];
assign srcdw_1[14] = srcdlo[30];
assign srcdw_1[15] = srcdlo[31];

// DATAMUX.NET (90) - srcdw2 : join
assign srcdw_2[0] = srcdhi[0];
assign srcdw_2[1] = srcdhi[1];
assign srcdw_2[2] = srcdhi[2];
assign srcdw_2[3] = srcdhi[3];
assign srcdw_2[4] = srcdhi[4];
assign srcdw_2[5] = srcdhi[5];
assign srcdw_2[6] = srcdhi[6];
assign srcdw_2[7] = srcdhi[7];
assign srcdw_2[8] = srcdhi[8];
assign srcdw_2[9] = srcdhi[9];
assign srcdw_2[10] = srcdhi[10];
assign srcdw_2[11] = srcdhi[11];
assign srcdw_2[12] = srcdhi[12];
assign srcdw_2[13] = srcdhi[13];
assign srcdw_2[14] = srcdhi[14];
assign srcdw_2[15] = srcdhi[15];

// DATAMUX.NET (91) - srcdw3 : join
assign srcdw_3[0] = srcdhi[16];
assign srcdw_3[1] = srcdhi[17];
assign srcdw_3[2] = srcdhi[18];
assign srcdw_3[3] = srcdhi[19];
assign srcdw_3[4] = srcdhi[20];
assign srcdw_3[5] = srcdhi[21];
assign srcdw_3[6] = srcdhi[22];
assign srcdw_3[7] = srcdhi[23];
assign srcdw_3[8] = srcdhi[24];
assign srcdw_3[9] = srcdhi[25];
assign srcdw_3[10] = srcdhi[26];
assign srcdw_3[11] = srcdhi[27];
assign srcdw_3[12] = srcdhi[28];
assign srcdw_3[13] = srcdhi[29];
assign srcdw_3[14] = srcdhi[30];
assign srcdw_3[15] = srcdhi[31];

// DATAMUX.NET (93) - dsel2b[0-1] : nivu
assign dsel2b_0 = daddbsel_2;
assign dsel2b_1 = daddbsel_2;

// DATAMUX.NET (95) - addb[0] : mx2p
mx2 addb_index_0_inst_0
(
	.z(addb_0[0]), // OUT
	.a0(srcdw_0[0]), // IN
	.a1(word[0]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_1
(
	.z(addb_0[1]), // OUT
	.a0(srcdw_0[1]), // IN
	.a1(word[1]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_2
(
	.z(addb_0[2]), // OUT
	.a0(srcdw_0[2]), // IN
	.a1(word[2]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_3
(
	.z(addb_0[3]), // OUT
	.a0(srcdw_0[3]), // IN
	.a1(word[3]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_4
(
	.z(addb_0[4]), // OUT
	.a0(srcdw_0[4]), // IN
	.a1(word[4]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_5
(
	.z(addb_0[5]), // OUT
	.a0(srcdw_0[5]), // IN
	.a1(word[5]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_6
(
	.z(addb_0[6]), // OUT
	.a0(srcdw_0[6]), // IN
	.a1(word[6]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_7
(
	.z(addb_0[7]), // OUT
	.a0(srcdw_0[7]), // IN
	.a1(word[7]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_8
(
	.z(addb_0[8]), // OUT
	.a0(srcdw_0[8]), // IN
	.a1(word[8]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_9
(
	.z(addb_0[9]), // OUT
	.a0(srcdw_0[9]), // IN
	.a1(word[9]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_10
(
	.z(addb_0[10]), // OUT
	.a0(srcdw_0[10]), // IN
	.a1(word[10]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_11
(
	.z(addb_0[11]), // OUT
	.a0(srcdw_0[11]), // IN
	.a1(word[11]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_12
(
	.z(addb_0[12]), // OUT
	.a0(srcdw_0[12]), // IN
	.a1(word[12]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_13
(
	.z(addb_0[13]), // OUT
	.a0(srcdw_0[13]), // IN
	.a1(word[13]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_14
(
	.z(addb_0[14]), // OUT
	.a0(srcdw_0[14]), // IN
	.a1(word[14]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_0_inst_15
(
	.z(addb_0[15]), // OUT
	.a0(srcdw_0[15]), // IN
	.a1(word[15]), // IN
	.s(dsel2b_0)  // IN
);

// DATAMUX.NET (96) - addb[1] : mx2p
mx2 addb_index_1_inst_0
(
	.z(addb_1[0]), // OUT
	.a0(srcdw_1[0]), // IN
	.a1(word[0]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_1
(
	.z(addb_1[1]), // OUT
	.a0(srcdw_1[1]), // IN
	.a1(word[1]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_2
(
	.z(addb_1[2]), // OUT
	.a0(srcdw_1[2]), // IN
	.a1(word[2]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_3
(
	.z(addb_1[3]), // OUT
	.a0(srcdw_1[3]), // IN
	.a1(word[3]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_4
(
	.z(addb_1[4]), // OUT
	.a0(srcdw_1[4]), // IN
	.a1(word[4]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_5
(
	.z(addb_1[5]), // OUT
	.a0(srcdw_1[5]), // IN
	.a1(word[5]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_6
(
	.z(addb_1[6]), // OUT
	.a0(srcdw_1[6]), // IN
	.a1(word[6]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_7
(
	.z(addb_1[7]), // OUT
	.a0(srcdw_1[7]), // IN
	.a1(word[7]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_8
(
	.z(addb_1[8]), // OUT
	.a0(srcdw_1[8]), // IN
	.a1(word[8]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_9
(
	.z(addb_1[9]), // OUT
	.a0(srcdw_1[9]), // IN
	.a1(word[9]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_10
(
	.z(addb_1[10]), // OUT
	.a0(srcdw_1[10]), // IN
	.a1(word[10]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_11
(
	.z(addb_1[11]), // OUT
	.a0(srcdw_1[11]), // IN
	.a1(word[11]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_12
(
	.z(addb_1[12]), // OUT
	.a0(srcdw_1[12]), // IN
	.a1(word[12]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_13
(
	.z(addb_1[13]), // OUT
	.a0(srcdw_1[13]), // IN
	.a1(word[13]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_14
(
	.z(addb_1[14]), // OUT
	.a0(srcdw_1[14]), // IN
	.a1(word[14]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addb_index_1_inst_15
(
	.z(addb_1[15]), // OUT
	.a0(srcdw_1[15]), // IN
	.a1(word[15]), // IN
	.s(dsel2b_0)  // IN
);

// DATAMUX.NET (97) - addb[2] : mx2p
mx2 addb_index_2_inst_0
(
	.z(addb_2[0]), // OUT
	.a0(srcdw_2[0]), // IN
	.a1(word[0]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_1
(
	.z(addb_2[1]), // OUT
	.a0(srcdw_2[1]), // IN
	.a1(word[1]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_2
(
	.z(addb_2[2]), // OUT
	.a0(srcdw_2[2]), // IN
	.a1(word[2]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_3
(
	.z(addb_2[3]), // OUT
	.a0(srcdw_2[3]), // IN
	.a1(word[3]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_4
(
	.z(addb_2[4]), // OUT
	.a0(srcdw_2[4]), // IN
	.a1(word[4]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_5
(
	.z(addb_2[5]), // OUT
	.a0(srcdw_2[5]), // IN
	.a1(word[5]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_6
(
	.z(addb_2[6]), // OUT
	.a0(srcdw_2[6]), // IN
	.a1(word[6]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_7
(
	.z(addb_2[7]), // OUT
	.a0(srcdw_2[7]), // IN
	.a1(word[7]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_8
(
	.z(addb_2[8]), // OUT
	.a0(srcdw_2[8]), // IN
	.a1(word[8]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_9
(
	.z(addb_2[9]), // OUT
	.a0(srcdw_2[9]), // IN
	.a1(word[9]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_10
(
	.z(addb_2[10]), // OUT
	.a0(srcdw_2[10]), // IN
	.a1(word[10]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_11
(
	.z(addb_2[11]), // OUT
	.a0(srcdw_2[11]), // IN
	.a1(word[11]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_12
(
	.z(addb_2[12]), // OUT
	.a0(srcdw_2[12]), // IN
	.a1(word[12]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_13
(
	.z(addb_2[13]), // OUT
	.a0(srcdw_2[13]), // IN
	.a1(word[13]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_14
(
	.z(addb_2[14]), // OUT
	.a0(srcdw_2[14]), // IN
	.a1(word[14]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_2_inst_15
(
	.z(addb_2[15]), // OUT
	.a0(srcdw_2[15]), // IN
	.a1(word[15]), // IN
	.s(dsel2b_1)  // IN
);

// DATAMUX.NET (98) - addb[3] : mx2p
mx2 addb_index_3_inst_0
(
	.z(addb_3[0]), // OUT
	.a0(srcdw_3[0]), // IN
	.a1(word[0]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_1
(
	.z(addb_3[1]), // OUT
	.a0(srcdw_3[1]), // IN
	.a1(word[1]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_2
(
	.z(addb_3[2]), // OUT
	.a0(srcdw_3[2]), // IN
	.a1(word[2]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_3
(
	.z(addb_3[3]), // OUT
	.a0(srcdw_3[3]), // IN
	.a1(word[3]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_4
(
	.z(addb_3[4]), // OUT
	.a0(srcdw_3[4]), // IN
	.a1(word[4]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_5
(
	.z(addb_3[5]), // OUT
	.a0(srcdw_3[5]), // IN
	.a1(word[5]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_6
(
	.z(addb_3[6]), // OUT
	.a0(srcdw_3[6]), // IN
	.a1(word[6]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_7
(
	.z(addb_3[7]), // OUT
	.a0(srcdw_3[7]), // IN
	.a1(word[7]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_8
(
	.z(addb_3[8]), // OUT
	.a0(srcdw_3[8]), // IN
	.a1(word[8]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_9
(
	.z(addb_3[9]), // OUT
	.a0(srcdw_3[9]), // IN
	.a1(word[9]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_10
(
	.z(addb_3[10]), // OUT
	.a0(srcdw_3[10]), // IN
	.a1(word[10]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_11
(
	.z(addb_3[11]), // OUT
	.a0(srcdw_3[11]), // IN
	.a1(word[11]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_12
(
	.z(addb_3[12]), // OUT
	.a0(srcdw_3[12]), // IN
	.a1(word[12]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_13
(
	.z(addb_3[13]), // OUT
	.a0(srcdw_3[13]), // IN
	.a1(word[13]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_14
(
	.z(addb_3[14]), // OUT
	.a0(srcdw_3[14]), // IN
	.a1(word[14]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addb_index_3_inst_15
(
	.z(addb_3[15]), // OUT
	.a0(srcdw_3[15]), // IN
	.a1(word[15]), // IN
	.s(dsel2b_1)  // IN
);
endmodule
