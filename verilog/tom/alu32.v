`include "defs.v"

module alu32
(
	output[0:31] aluq;
	output alu_co,
	input[0:31] alua;
	input[0:31] alub;
	input carry_flag,
	input[0:2] alufunc;
	input dstdp_31,
	input rev_subp
);
wire [0:31] and;
wire [0:31] or;
wire [0:31] xor;
wire [0:31] compa32;
wire [0:31] compb32;
wire [0:31] adda;
wire [0:31] addb;
wire [0:31] sum;
wire alufunc_0;
wire alufunc_1;
wire alufunc_2;
wire alufunc_n_2;
wire rev_subp_n;
wire subt_0;
wire subt_1;
wire subtract;
wire subtractb;
wire compa_0;
wire compa_1;
wire compb_0;
wire compb_1;
wire cint;
wire cin;
wire alu_cout;
wire unused_0;
wire unused_1;
wire selt_0;
wire selt_1;
wire sel_0;
wire sel_1;

// ARITH.NET (314) - alufunc[0-2] : join
assign alufunc_0 = alufunc[0];
assign alufunc_1 = alufunc[1];
assign alufunc_2 = alufunc[2];

// ARITH.NET (315) - alufunc\[2] : ivs
assign alufunc_n_2 = ~alufunc_2;

// ARITH.NET (316) - rev_subp\ : iv
assign rev_subp_n = ~rev_subp;

// ARITH.NET (320) - subt0 : nd4p
assign subt_0 = ~(alufunc_0 & alufunc_1 & alufunc_2 & dstdp_31);

// ARITH.NET (321) - subt1 : nd2p
assign subt_1 = ~(alufunc_1 & alufunc_n_2);

// ARITH.NET (322) - subtract : nd2p
assign subtract = ~(subt_0 & subt_1);

// ARITH.NET (323) - subtractb : nd2p
assign subtractb = ~(subt_0 & subt_1);

// ARITH.NET (327) - compa[0-1] : an2u
assign compa_0 = subtractb & rev_subp;
assign compa_1 = subtractb & rev_subp;

// ARITH.NET (328) - compb[0-1] : an2u
assign compb_0 = subtractb & rev_subp_n;
assign compb_1 = subtractb & rev_subp_n;

// ARITH.NET (329) - compa32 : join
assign compa32[0] = compa_0;
assign compa32[1] = compa_0;
assign compa32[2] = compa_0;
assign compa32[3] = compa_0;
assign compa32[4] = compa_0;
assign compa32[5] = compa_0;
assign compa32[6] = compa_0;
assign compa32[7] = compa_0;
assign compa32[8] = compa_0;
assign compa32[9] = compa_0;
assign compa32[10] = compa_0;
assign compa32[11] = compa_0;
assign compa32[12] = compa_0;
assign compa32[13] = compa_0;
assign compa32[14] = compa_0;
assign compa32[15] = compa_0;
assign compa32[16] = compa_1;
assign compa32[17] = compa_1;
assign compa32[18] = compa_1;
assign compa32[19] = compa_1;
assign compa32[20] = compa_1;
assign compa32[21] = compa_1;
assign compa32[22] = compa_1;
assign compa32[23] = compa_1;
assign compa32[24] = compa_1;
assign compa32[25] = compa_1;
assign compa32[26] = compa_1;
assign compa32[27] = compa_1;
assign compa32[28] = compa_1;
assign compa32[29] = compa_1;
assign compa32[30] = compa_1;
assign compa32[31] = compa_1;

// ARITH.NET (338) - compb32 : join
assign compb32[0] = compb_0;
assign compb32[1] = compb_0;
assign compb32[2] = compb_0;
assign compb32[3] = compb_0;
assign compb32[4] = compb_0;
assign compb32[5] = compb_0;
assign compb32[6] = compb_0;
assign compb32[7] = compb_0;
assign compb32[8] = compb_0;
assign compb32[9] = compb_0;
assign compb32[10] = compb_0;
assign compb32[11] = compb_0;
assign compb32[12] = compb_0;
assign compb32[13] = compb_0;
assign compb32[14] = compb_0;
assign compb32[15] = compb_0;
assign compb32[16] = compb_1;
assign compb32[17] = compb_1;
assign compb32[18] = compb_1;
assign compb32[19] = compb_1;
assign compb32[20] = compb_1;
assign compb32[21] = compb_1;
assign compb32[22] = compb_1;
assign compb32[23] = compb_1;
assign compb32[24] = compb_1;
assign compb32[25] = compb_1;
assign compb32[26] = compb_1;
assign compb32[27] = compb_1;
assign compb32[28] = compb_1;
assign compb32[29] = compb_1;
assign compb32[30] = compb_1;
assign compb32[31] = compb_1;

// ARITH.NET (348) - adda : eo
assign adda[0] = alua[0] ^ compa32[0];
assign adda[1] = alua[1] ^ compa32[1];
assign adda[2] = alua[2] ^ compa32[2];
assign adda[3] = alua[3] ^ compa32[3];
assign adda[4] = alua[4] ^ compa32[4];
assign adda[5] = alua[5] ^ compa32[5];
assign adda[6] = alua[6] ^ compa32[6];
assign adda[7] = alua[7] ^ compa32[7];
assign adda[8] = alua[8] ^ compa32[8];
assign adda[9] = alua[9] ^ compa32[9];
assign adda[10] = alua[10] ^ compa32[10];
assign adda[11] = alua[11] ^ compa32[11];
assign adda[12] = alua[12] ^ compa32[12];
assign adda[13] = alua[13] ^ compa32[13];
assign adda[14] = alua[14] ^ compa32[14];
assign adda[15] = alua[15] ^ compa32[15];
assign adda[16] = alua[16] ^ compa32[16];
assign adda[17] = alua[17] ^ compa32[17];
assign adda[18] = alua[18] ^ compa32[18];
assign adda[19] = alua[19] ^ compa32[19];
assign adda[20] = alua[20] ^ compa32[20];
assign adda[21] = alua[21] ^ compa32[21];
assign adda[22] = alua[22] ^ compa32[22];
assign adda[23] = alua[23] ^ compa32[23];
assign adda[24] = alua[24] ^ compa32[24];
assign adda[25] = alua[25] ^ compa32[25];
assign adda[26] = alua[26] ^ compa32[26];
assign adda[27] = alua[27] ^ compa32[27];
assign adda[28] = alua[28] ^ compa32[28];
assign adda[29] = alua[29] ^ compa32[29];
assign adda[30] = alua[30] ^ compa32[30];
assign adda[31] = alua[31] ^ compa32[31];

// ARITH.NET (349) - addb : eo
assign addb[0] = alub[0] ^ compb32[0];
assign addb[1] = alub[1] ^ compb32[1];
assign addb[2] = alub[2] ^ compb32[2];
assign addb[3] = alub[3] ^ compb32[3];
assign addb[4] = alub[4] ^ compb32[4];
assign addb[5] = alub[5] ^ compb32[5];
assign addb[6] = alub[6] ^ compb32[6];
assign addb[7] = alub[7] ^ compb32[7];
assign addb[8] = alub[8] ^ compb32[8];
assign addb[9] = alub[9] ^ compb32[9];
assign addb[10] = alub[10] ^ compb32[10];
assign addb[11] = alub[11] ^ compb32[11];
assign addb[12] = alub[12] ^ compb32[12];
assign addb[13] = alub[13] ^ compb32[13];
assign addb[14] = alub[14] ^ compb32[14];
assign addb[15] = alub[15] ^ compb32[15];
assign addb[16] = alub[16] ^ compb32[16];
assign addb[17] = alub[17] ^ compb32[17];
assign addb[18] = alub[18] ^ compb32[18];
assign addb[19] = alub[19] ^ compb32[19];
assign addb[20] = alub[20] ^ compb32[20];
assign addb[21] = alub[21] ^ compb32[21];
assign addb[22] = alub[22] ^ compb32[22];
assign addb[23] = alub[23] ^ compb32[23];
assign addb[24] = alub[24] ^ compb32[24];
assign addb[25] = alub[25] ^ compb32[25];
assign addb[26] = alub[26] ^ compb32[26];
assign addb[27] = alub[27] ^ compb32[27];
assign addb[28] = alub[28] ^ compb32[28];
assign addb[29] = alub[29] ^ compb32[29];
assign addb[30] = alub[30] ^ compb32[30];
assign addb[31] = alub[31] ^ compb32[31];

// ARITH.NET (354) - cint : an3
assign cint = alufunc_0 & alufunc_n_2 & carry_flag;

// ARITH.NET (355) - cin : eo
assign cin = cint ^ subtract;

// ARITH.NET (359) - sum : fa32_int
fa32_int sum_inst
(
	.s({sum[0],sum[1],sum[2],sum[3],sum[4],sum[5],sum[6],sum[7],sum[8],sum[9],sum[10],sum[11],sum[12],sum[13],sum[14],sum[15],sum[16],sum[17],sum[18],sum[19],sum[20],sum[21],sum[22],sum[23],sum[24],sum[25],sum[26],sum[27],sum[28],sum[29],sum[30],sum[31]}), // OUT
	.co32(alu_cout), // OUT
	.co31(unused_0), // OUT
	.co24(unused_1), // OUT
	.c(cin), // IN
	.a({adda[0],adda[1],adda[2],adda[3],adda[4],adda[5],adda[6],adda[7],adda[8],adda[9],adda[10],adda[11],adda[12],adda[13],adda[14],adda[15],adda[16],adda[17],adda[18],adda[19],adda[20],adda[21],adda[22],adda[23],adda[24],adda[25],adda[26],adda[27],adda[28],adda[29],adda[30],adda[31]}), // IN
	.b({addb[0],addb[1],addb[2],addb[3],addb[4],addb[5],addb[6],addb[7],addb[8],addb[9],addb[10],addb[11],addb[12],addb[13],addb[14],addb[15],addb[16],addb[17],addb[18],addb[19],addb[20],addb[21],addb[22],addb[23],addb[24],addb[25],addb[26],addb[27],addb[28],addb[29],addb[30],addb[31]})  // IN
);

// ARITH.NET (364) - and : an2
assign and[0] = alua[0] & alub[0];
assign and[1] = alua[1] & alub[1];
assign and[2] = alua[2] & alub[2];
assign and[3] = alua[3] & alub[3];
assign and[4] = alua[4] & alub[4];
assign and[5] = alua[5] & alub[5];
assign and[6] = alua[6] & alub[6];
assign and[7] = alua[7] & alub[7];
assign and[8] = alua[8] & alub[8];
assign and[9] = alua[9] & alub[9];
assign and[10] = alua[10] & alub[10];
assign and[11] = alua[11] & alub[11];
assign and[12] = alua[12] & alub[12];
assign and[13] = alua[13] & alub[13];
assign and[14] = alua[14] & alub[14];
assign and[15] = alua[15] & alub[15];
assign and[16] = alua[16] & alub[16];
assign and[17] = alua[17] & alub[17];
assign and[18] = alua[18] & alub[18];
assign and[19] = alua[19] & alub[19];
assign and[20] = alua[20] & alub[20];
assign and[21] = alua[21] & alub[21];
assign and[22] = alua[22] & alub[22];
assign and[23] = alua[23] & alub[23];
assign and[24] = alua[24] & alub[24];
assign and[25] = alua[25] & alub[25];
assign and[26] = alua[26] & alub[26];
assign and[27] = alua[27] & alub[27];
assign and[28] = alua[28] & alub[28];
assign and[29] = alua[29] & alub[29];
assign and[30] = alua[30] & alub[30];
assign and[31] = alua[31] & alub[31];

// ARITH.NET (365) - or : or2
assign or[0] = alua[0] | alub[0];
assign or[1] = alua[1] | alub[1];
assign or[2] = alua[2] | alub[2];
assign or[3] = alua[3] | alub[3];
assign or[4] = alua[4] | alub[4];
assign or[5] = alua[5] | alub[5];
assign or[6] = alua[6] | alub[6];
assign or[7] = alua[7] | alub[7];
assign or[8] = alua[8] | alub[8];
assign or[9] = alua[9] | alub[9];
assign or[10] = alua[10] | alub[10];
assign or[11] = alua[11] | alub[11];
assign or[12] = alua[12] | alub[12];
assign or[13] = alua[13] | alub[13];
assign or[14] = alua[14] | alub[14];
assign or[15] = alua[15] | alub[15];
assign or[16] = alua[16] | alub[16];
assign or[17] = alua[17] | alub[17];
assign or[18] = alua[18] | alub[18];
assign or[19] = alua[19] | alub[19];
assign or[20] = alua[20] | alub[20];
assign or[21] = alua[21] | alub[21];
assign or[22] = alua[22] | alub[22];
assign or[23] = alua[23] | alub[23];
assign or[24] = alua[24] | alub[24];
assign or[25] = alua[25] | alub[25];
assign or[26] = alua[26] | alub[26];
assign or[27] = alua[27] | alub[27];
assign or[28] = alua[28] | alub[28];
assign or[29] = alua[29] | alub[29];
assign or[30] = alua[30] | alub[30];
assign or[31] = alua[31] | alub[31];

// ARITH.NET (366) - xor : eo
assign xor[0] = alua[0] ^ alub[0];
assign xor[1] = alua[1] ^ alub[1];
assign xor[2] = alua[2] ^ alub[2];
assign xor[3] = alua[3] ^ alub[3];
assign xor[4] = alua[4] ^ alub[4];
assign xor[5] = alua[5] ^ alub[5];
assign xor[6] = alua[6] ^ alub[6];
assign xor[7] = alua[7] ^ alub[7];
assign xor[8] = alua[8] ^ alub[8];
assign xor[9] = alua[9] ^ alub[9];
assign xor[10] = alua[10] ^ alub[10];
assign xor[11] = alua[11] ^ alub[11];
assign xor[12] = alua[12] ^ alub[12];
assign xor[13] = alua[13] ^ alub[13];
assign xor[14] = alua[14] ^ alub[14];
assign xor[15] = alua[15] ^ alub[15];
assign xor[16] = alua[16] ^ alub[16];
assign xor[17] = alua[17] ^ alub[17];
assign xor[18] = alua[18] ^ alub[18];
assign xor[19] = alua[19] ^ alub[19];
assign xor[20] = alua[20] ^ alub[20];
assign xor[21] = alua[21] ^ alub[21];
assign xor[22] = alua[22] ^ alub[22];
assign xor[23] = alua[23] ^ alub[23];
assign xor[24] = alua[24] ^ alub[24];
assign xor[25] = alua[25] ^ alub[25];
assign xor[26] = alua[26] ^ alub[26];
assign xor[27] = alua[27] ^ alub[27];
assign xor[28] = alua[28] ^ alub[28];
assign xor[29] = alua[29] ^ alub[29];
assign xor[30] = alua[30] ^ alub[30];
assign xor[31] = alua[31] ^ alub[31];

// ARITH.NET (370) - selt0 : aor1
assign selt_0 = (alufunc_0 & alufunc_2) | alufunc_n_2;

// ARITH.NET (372) - selt1 : aor1
assign selt_1 = (alufunc_1 & alufunc_2) | alufunc_n_2;

// ARITH.NET (374) - sel[0-1] : nivu
assign sel_0 = selt_0;
assign sel_1 = selt_1;

// ARITH.NET (375) - aluq : mx4p
mx4 aluq_inst_0
(
	.z(aluq[0]), // OUT
	.a0(and[0]), // IN
	.a1(or[0]), // IN
	.a2(xor[0]), // IN
	.a3(sum[0]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_1
(
	.z(aluq[1]), // OUT
	.a0(and[1]), // IN
	.a1(or[1]), // IN
	.a2(xor[1]), // IN
	.a3(sum[1]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_2
(
	.z(aluq[2]), // OUT
	.a0(and[2]), // IN
	.a1(or[2]), // IN
	.a2(xor[2]), // IN
	.a3(sum[2]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_3
(
	.z(aluq[3]), // OUT
	.a0(and[3]), // IN
	.a1(or[3]), // IN
	.a2(xor[3]), // IN
	.a3(sum[3]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_4
(
	.z(aluq[4]), // OUT
	.a0(and[4]), // IN
	.a1(or[4]), // IN
	.a2(xor[4]), // IN
	.a3(sum[4]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_5
(
	.z(aluq[5]), // OUT
	.a0(and[5]), // IN
	.a1(or[5]), // IN
	.a2(xor[5]), // IN
	.a3(sum[5]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_6
(
	.z(aluq[6]), // OUT
	.a0(and[6]), // IN
	.a1(or[6]), // IN
	.a2(xor[6]), // IN
	.a3(sum[6]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_7
(
	.z(aluq[7]), // OUT
	.a0(and[7]), // IN
	.a1(or[7]), // IN
	.a2(xor[7]), // IN
	.a3(sum[7]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_8
(
	.z(aluq[8]), // OUT
	.a0(and[8]), // IN
	.a1(or[8]), // IN
	.a2(xor[8]), // IN
	.a3(sum[8]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_9
(
	.z(aluq[9]), // OUT
	.a0(and[9]), // IN
	.a1(or[9]), // IN
	.a2(xor[9]), // IN
	.a3(sum[9]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_10
(
	.z(aluq[10]), // OUT
	.a0(and[10]), // IN
	.a1(or[10]), // IN
	.a2(xor[10]), // IN
	.a3(sum[10]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_11
(
	.z(aluq[11]), // OUT
	.a0(and[11]), // IN
	.a1(or[11]), // IN
	.a2(xor[11]), // IN
	.a3(sum[11]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_12
(
	.z(aluq[12]), // OUT
	.a0(and[12]), // IN
	.a1(or[12]), // IN
	.a2(xor[12]), // IN
	.a3(sum[12]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_13
(
	.z(aluq[13]), // OUT
	.a0(and[13]), // IN
	.a1(or[13]), // IN
	.a2(xor[13]), // IN
	.a3(sum[13]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_14
(
	.z(aluq[14]), // OUT
	.a0(and[14]), // IN
	.a1(or[14]), // IN
	.a2(xor[14]), // IN
	.a3(sum[14]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_15
(
	.z(aluq[15]), // OUT
	.a0(and[15]), // IN
	.a1(or[15]), // IN
	.a2(xor[15]), // IN
	.a3(sum[15]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_16
(
	.z(aluq[16]), // OUT
	.a0(and[16]), // IN
	.a1(or[16]), // IN
	.a2(xor[16]), // IN
	.a3(sum[16]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_17
(
	.z(aluq[17]), // OUT
	.a0(and[17]), // IN
	.a1(or[17]), // IN
	.a2(xor[17]), // IN
	.a3(sum[17]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_18
(
	.z(aluq[18]), // OUT
	.a0(and[18]), // IN
	.a1(or[18]), // IN
	.a2(xor[18]), // IN
	.a3(sum[18]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_19
(
	.z(aluq[19]), // OUT
	.a0(and[19]), // IN
	.a1(or[19]), // IN
	.a2(xor[19]), // IN
	.a3(sum[19]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_20
(
	.z(aluq[20]), // OUT
	.a0(and[20]), // IN
	.a1(or[20]), // IN
	.a2(xor[20]), // IN
	.a3(sum[20]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_21
(
	.z(aluq[21]), // OUT
	.a0(and[21]), // IN
	.a1(or[21]), // IN
	.a2(xor[21]), // IN
	.a3(sum[21]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_22
(
	.z(aluq[22]), // OUT
	.a0(and[22]), // IN
	.a1(or[22]), // IN
	.a2(xor[22]), // IN
	.a3(sum[22]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_23
(
	.z(aluq[23]), // OUT
	.a0(and[23]), // IN
	.a1(or[23]), // IN
	.a2(xor[23]), // IN
	.a3(sum[23]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_24
(
	.z(aluq[24]), // OUT
	.a0(and[24]), // IN
	.a1(or[24]), // IN
	.a2(xor[24]), // IN
	.a3(sum[24]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_25
(
	.z(aluq[25]), // OUT
	.a0(and[25]), // IN
	.a1(or[25]), // IN
	.a2(xor[25]), // IN
	.a3(sum[25]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_26
(
	.z(aluq[26]), // OUT
	.a0(and[26]), // IN
	.a1(or[26]), // IN
	.a2(xor[26]), // IN
	.a3(sum[26]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_27
(
	.z(aluq[27]), // OUT
	.a0(and[27]), // IN
	.a1(or[27]), // IN
	.a2(xor[27]), // IN
	.a3(sum[27]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_28
(
	.z(aluq[28]), // OUT
	.a0(and[28]), // IN
	.a1(or[28]), // IN
	.a2(xor[28]), // IN
	.a3(sum[28]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_29
(
	.z(aluq[29]), // OUT
	.a0(and[29]), // IN
	.a1(or[29]), // IN
	.a2(xor[29]), // IN
	.a3(sum[29]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_30
(
	.z(aluq[30]), // OUT
	.a0(and[30]), // IN
	.a1(or[30]), // IN
	.a2(xor[30]), // IN
	.a3(sum[30]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 aluq_inst_31
(
	.z(aluq[31]), // OUT
	.a0(and[31]), // IN
	.a1(or[31]), // IN
	.a2(xor[31]), // IN
	.a3(sum[31]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);

// ARITH.NET (379) - alu_co : eo
assign alu_co = alu_cout ^ subtract;

// ARITH.NET (381) - unused[0-1] : dummy
endmodule
