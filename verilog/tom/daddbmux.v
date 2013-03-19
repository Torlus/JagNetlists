/* verilator lint_off LITENDIAN */
`include "defs.v"

module daddbmux
(
	output [0:15] addb_0,
	output [0:15] addb_1,
	output [0:15] addb_2,
	output [0:15] addb_3,
	input [0:31] srcdlo,
	input [0:31] srcdhi,
	input [0:31] iinc,
	input [0:31] zinc,
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
	.z /* OUT */ (word[0]),
	.a0 /* IN */ (iinclo[0]),
	.a1 /* IN */ (iinchi[0]),
	.a2 /* IN */ (zinclo[0]),
	.a3 /* IN */ (zinchi[0]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_1
(
	.z /* OUT */ (word[1]),
	.a0 /* IN */ (iinclo[1]),
	.a1 /* IN */ (iinchi[1]),
	.a2 /* IN */ (zinclo[1]),
	.a3 /* IN */ (zinchi[1]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_2
(
	.z /* OUT */ (word[2]),
	.a0 /* IN */ (iinclo[2]),
	.a1 /* IN */ (iinchi[2]),
	.a2 /* IN */ (zinclo[2]),
	.a3 /* IN */ (zinchi[2]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_3
(
	.z /* OUT */ (word[3]),
	.a0 /* IN */ (iinclo[3]),
	.a1 /* IN */ (iinchi[3]),
	.a2 /* IN */ (zinclo[3]),
	.a3 /* IN */ (zinchi[3]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_4
(
	.z /* OUT */ (word[4]),
	.a0 /* IN */ (iinclo[4]),
	.a1 /* IN */ (iinchi[4]),
	.a2 /* IN */ (zinclo[4]),
	.a3 /* IN */ (zinchi[4]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_5
(
	.z /* OUT */ (word[5]),
	.a0 /* IN */ (iinclo[5]),
	.a1 /* IN */ (iinchi[5]),
	.a2 /* IN */ (zinclo[5]),
	.a3 /* IN */ (zinchi[5]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_6
(
	.z /* OUT */ (word[6]),
	.a0 /* IN */ (iinclo[6]),
	.a1 /* IN */ (iinchi[6]),
	.a2 /* IN */ (zinclo[6]),
	.a3 /* IN */ (zinchi[6]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_7
(
	.z /* OUT */ (word[7]),
	.a0 /* IN */ (iinclo[7]),
	.a1 /* IN */ (iinchi[7]),
	.a2 /* IN */ (zinclo[7]),
	.a3 /* IN */ (zinchi[7]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_8
(
	.z /* OUT */ (word[8]),
	.a0 /* IN */ (iinclo[8]),
	.a1 /* IN */ (iinchi[8]),
	.a2 /* IN */ (zinclo[8]),
	.a3 /* IN */ (zinchi[8]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_9
(
	.z /* OUT */ (word[9]),
	.a0 /* IN */ (iinclo[9]),
	.a1 /* IN */ (iinchi[9]),
	.a2 /* IN */ (zinclo[9]),
	.a3 /* IN */ (zinchi[9]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_10
(
	.z /* OUT */ (word[10]),
	.a0 /* IN */ (iinclo[10]),
	.a1 /* IN */ (iinchi[10]),
	.a2 /* IN */ (zinclo[10]),
	.a3 /* IN */ (zinchi[10]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_11
(
	.z /* OUT */ (word[11]),
	.a0 /* IN */ (iinclo[11]),
	.a1 /* IN */ (iinchi[11]),
	.a2 /* IN */ (zinclo[11]),
	.a3 /* IN */ (zinchi[11]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_12
(
	.z /* OUT */ (word[12]),
	.a0 /* IN */ (iinclo[12]),
	.a1 /* IN */ (iinchi[12]),
	.a2 /* IN */ (zinclo[12]),
	.a3 /* IN */ (zinchi[12]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_13
(
	.z /* OUT */ (word[13]),
	.a0 /* IN */ (iinclo[13]),
	.a1 /* IN */ (iinchi[13]),
	.a2 /* IN */ (zinclo[13]),
	.a3 /* IN */ (zinchi[13]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_14
(
	.z /* OUT */ (word[14]),
	.a0 /* IN */ (iinclo[14]),
	.a1 /* IN */ (iinchi[14]),
	.a2 /* IN */ (zinclo[14]),
	.a3 /* IN */ (zinchi[14]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
);
mx4 word_inst_15
(
	.z /* OUT */ (word[15]),
	.a0 /* IN */ (iinclo[15]),
	.a1 /* IN */ (iinchi[15]),
	.a2 /* IN */ (zinclo[15]),
	.a3 /* IN */ (zinchi[15]),
	.s0 /* IN */ (dsel0b),
	.s1 /* IN */ (dsel1b)
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
	.z /* OUT */ (addb_0[0]),
	.a0 /* IN */ (srcdw_0[0]),
	.a1 /* IN */ (word[0]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_1
(
	.z /* OUT */ (addb_0[1]),
	.a0 /* IN */ (srcdw_0[1]),
	.a1 /* IN */ (word[1]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_2
(
	.z /* OUT */ (addb_0[2]),
	.a0 /* IN */ (srcdw_0[2]),
	.a1 /* IN */ (word[2]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_3
(
	.z /* OUT */ (addb_0[3]),
	.a0 /* IN */ (srcdw_0[3]),
	.a1 /* IN */ (word[3]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_4
(
	.z /* OUT */ (addb_0[4]),
	.a0 /* IN */ (srcdw_0[4]),
	.a1 /* IN */ (word[4]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_5
(
	.z /* OUT */ (addb_0[5]),
	.a0 /* IN */ (srcdw_0[5]),
	.a1 /* IN */ (word[5]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_6
(
	.z /* OUT */ (addb_0[6]),
	.a0 /* IN */ (srcdw_0[6]),
	.a1 /* IN */ (word[6]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_7
(
	.z /* OUT */ (addb_0[7]),
	.a0 /* IN */ (srcdw_0[7]),
	.a1 /* IN */ (word[7]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_8
(
	.z /* OUT */ (addb_0[8]),
	.a0 /* IN */ (srcdw_0[8]),
	.a1 /* IN */ (word[8]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_9
(
	.z /* OUT */ (addb_0[9]),
	.a0 /* IN */ (srcdw_0[9]),
	.a1 /* IN */ (word[9]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_10
(
	.z /* OUT */ (addb_0[10]),
	.a0 /* IN */ (srcdw_0[10]),
	.a1 /* IN */ (word[10]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_11
(
	.z /* OUT */ (addb_0[11]),
	.a0 /* IN */ (srcdw_0[11]),
	.a1 /* IN */ (word[11]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_12
(
	.z /* OUT */ (addb_0[12]),
	.a0 /* IN */ (srcdw_0[12]),
	.a1 /* IN */ (word[12]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_13
(
	.z /* OUT */ (addb_0[13]),
	.a0 /* IN */ (srcdw_0[13]),
	.a1 /* IN */ (word[13]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_14
(
	.z /* OUT */ (addb_0[14]),
	.a0 /* IN */ (srcdw_0[14]),
	.a1 /* IN */ (word[14]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_0_inst_15
(
	.z /* OUT */ (addb_0[15]),
	.a0 /* IN */ (srcdw_0[15]),
	.a1 /* IN */ (word[15]),
	.s /* IN */ (dsel2b_0)
);

// DATAMUX.NET (96) - addb[1] : mx2p
mx2 addb_index_1_inst_0
(
	.z /* OUT */ (addb_1[0]),
	.a0 /* IN */ (srcdw_1[0]),
	.a1 /* IN */ (word[0]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_1
(
	.z /* OUT */ (addb_1[1]),
	.a0 /* IN */ (srcdw_1[1]),
	.a1 /* IN */ (word[1]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_2
(
	.z /* OUT */ (addb_1[2]),
	.a0 /* IN */ (srcdw_1[2]),
	.a1 /* IN */ (word[2]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_3
(
	.z /* OUT */ (addb_1[3]),
	.a0 /* IN */ (srcdw_1[3]),
	.a1 /* IN */ (word[3]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_4
(
	.z /* OUT */ (addb_1[4]),
	.a0 /* IN */ (srcdw_1[4]),
	.a1 /* IN */ (word[4]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_5
(
	.z /* OUT */ (addb_1[5]),
	.a0 /* IN */ (srcdw_1[5]),
	.a1 /* IN */ (word[5]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_6
(
	.z /* OUT */ (addb_1[6]),
	.a0 /* IN */ (srcdw_1[6]),
	.a1 /* IN */ (word[6]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_7
(
	.z /* OUT */ (addb_1[7]),
	.a0 /* IN */ (srcdw_1[7]),
	.a1 /* IN */ (word[7]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_8
(
	.z /* OUT */ (addb_1[8]),
	.a0 /* IN */ (srcdw_1[8]),
	.a1 /* IN */ (word[8]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_9
(
	.z /* OUT */ (addb_1[9]),
	.a0 /* IN */ (srcdw_1[9]),
	.a1 /* IN */ (word[9]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_10
(
	.z /* OUT */ (addb_1[10]),
	.a0 /* IN */ (srcdw_1[10]),
	.a1 /* IN */ (word[10]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_11
(
	.z /* OUT */ (addb_1[11]),
	.a0 /* IN */ (srcdw_1[11]),
	.a1 /* IN */ (word[11]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_12
(
	.z /* OUT */ (addb_1[12]),
	.a0 /* IN */ (srcdw_1[12]),
	.a1 /* IN */ (word[12]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_13
(
	.z /* OUT */ (addb_1[13]),
	.a0 /* IN */ (srcdw_1[13]),
	.a1 /* IN */ (word[13]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_14
(
	.z /* OUT */ (addb_1[14]),
	.a0 /* IN */ (srcdw_1[14]),
	.a1 /* IN */ (word[14]),
	.s /* IN */ (dsel2b_0)
);
mx2 addb_index_1_inst_15
(
	.z /* OUT */ (addb_1[15]),
	.a0 /* IN */ (srcdw_1[15]),
	.a1 /* IN */ (word[15]),
	.s /* IN */ (dsel2b_0)
);

// DATAMUX.NET (97) - addb[2] : mx2p
mx2 addb_index_2_inst_0
(
	.z /* OUT */ (addb_2[0]),
	.a0 /* IN */ (srcdw_2[0]),
	.a1 /* IN */ (word[0]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_1
(
	.z /* OUT */ (addb_2[1]),
	.a0 /* IN */ (srcdw_2[1]),
	.a1 /* IN */ (word[1]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_2
(
	.z /* OUT */ (addb_2[2]),
	.a0 /* IN */ (srcdw_2[2]),
	.a1 /* IN */ (word[2]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_3
(
	.z /* OUT */ (addb_2[3]),
	.a0 /* IN */ (srcdw_2[3]),
	.a1 /* IN */ (word[3]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_4
(
	.z /* OUT */ (addb_2[4]),
	.a0 /* IN */ (srcdw_2[4]),
	.a1 /* IN */ (word[4]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_5
(
	.z /* OUT */ (addb_2[5]),
	.a0 /* IN */ (srcdw_2[5]),
	.a1 /* IN */ (word[5]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_6
(
	.z /* OUT */ (addb_2[6]),
	.a0 /* IN */ (srcdw_2[6]),
	.a1 /* IN */ (word[6]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_7
(
	.z /* OUT */ (addb_2[7]),
	.a0 /* IN */ (srcdw_2[7]),
	.a1 /* IN */ (word[7]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_8
(
	.z /* OUT */ (addb_2[8]),
	.a0 /* IN */ (srcdw_2[8]),
	.a1 /* IN */ (word[8]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_9
(
	.z /* OUT */ (addb_2[9]),
	.a0 /* IN */ (srcdw_2[9]),
	.a1 /* IN */ (word[9]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_10
(
	.z /* OUT */ (addb_2[10]),
	.a0 /* IN */ (srcdw_2[10]),
	.a1 /* IN */ (word[10]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_11
(
	.z /* OUT */ (addb_2[11]),
	.a0 /* IN */ (srcdw_2[11]),
	.a1 /* IN */ (word[11]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_12
(
	.z /* OUT */ (addb_2[12]),
	.a0 /* IN */ (srcdw_2[12]),
	.a1 /* IN */ (word[12]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_13
(
	.z /* OUT */ (addb_2[13]),
	.a0 /* IN */ (srcdw_2[13]),
	.a1 /* IN */ (word[13]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_14
(
	.z /* OUT */ (addb_2[14]),
	.a0 /* IN */ (srcdw_2[14]),
	.a1 /* IN */ (word[14]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_2_inst_15
(
	.z /* OUT */ (addb_2[15]),
	.a0 /* IN */ (srcdw_2[15]),
	.a1 /* IN */ (word[15]),
	.s /* IN */ (dsel2b_1)
);

// DATAMUX.NET (98) - addb[3] : mx2p
mx2 addb_index_3_inst_0
(
	.z /* OUT */ (addb_3[0]),
	.a0 /* IN */ (srcdw_3[0]),
	.a1 /* IN */ (word[0]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_1
(
	.z /* OUT */ (addb_3[1]),
	.a0 /* IN */ (srcdw_3[1]),
	.a1 /* IN */ (word[1]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_2
(
	.z /* OUT */ (addb_3[2]),
	.a0 /* IN */ (srcdw_3[2]),
	.a1 /* IN */ (word[2]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_3
(
	.z /* OUT */ (addb_3[3]),
	.a0 /* IN */ (srcdw_3[3]),
	.a1 /* IN */ (word[3]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_4
(
	.z /* OUT */ (addb_3[4]),
	.a0 /* IN */ (srcdw_3[4]),
	.a1 /* IN */ (word[4]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_5
(
	.z /* OUT */ (addb_3[5]),
	.a0 /* IN */ (srcdw_3[5]),
	.a1 /* IN */ (word[5]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_6
(
	.z /* OUT */ (addb_3[6]),
	.a0 /* IN */ (srcdw_3[6]),
	.a1 /* IN */ (word[6]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_7
(
	.z /* OUT */ (addb_3[7]),
	.a0 /* IN */ (srcdw_3[7]),
	.a1 /* IN */ (word[7]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_8
(
	.z /* OUT */ (addb_3[8]),
	.a0 /* IN */ (srcdw_3[8]),
	.a1 /* IN */ (word[8]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_9
(
	.z /* OUT */ (addb_3[9]),
	.a0 /* IN */ (srcdw_3[9]),
	.a1 /* IN */ (word[9]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_10
(
	.z /* OUT */ (addb_3[10]),
	.a0 /* IN */ (srcdw_3[10]),
	.a1 /* IN */ (word[10]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_11
(
	.z /* OUT */ (addb_3[11]),
	.a0 /* IN */ (srcdw_3[11]),
	.a1 /* IN */ (word[11]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_12
(
	.z /* OUT */ (addb_3[12]),
	.a0 /* IN */ (srcdw_3[12]),
	.a1 /* IN */ (word[12]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_13
(
	.z /* OUT */ (addb_3[13]),
	.a0 /* IN */ (srcdw_3[13]),
	.a1 /* IN */ (word[13]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_14
(
	.z /* OUT */ (addb_3[14]),
	.a0 /* IN */ (srcdw_3[14]),
	.a1 /* IN */ (word[14]),
	.s /* IN */ (dsel2b_1)
);
mx2 addb_index_3_inst_15
(
	.z /* OUT */ (addb_3[15]),
	.a0 /* IN */ (srcdw_3[15]),
	.a1 /* IN */ (word[15]),
	.s /* IN */ (dsel2b_1)
);
endmodule
/* verilator lint_on LITENDIAN */
