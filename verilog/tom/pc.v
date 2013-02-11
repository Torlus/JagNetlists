`include "defs.v"

module pc
(
	output[0:22] pc;
	output[0:23] program_count;
	input clk,
	input go,
	input[0:31] gpu_din;
	input progack,
	input jabs,
	input jrel,
	input pcwr,
	input qs_n_0,
	input qs_n_1,
	input qs_n_2,
	input reset_n,
	input[0:31] srcd;
	input[0:31] srcdp
);
wire [0:22] subq;
wire one;
wire go_n;
wire jrel_n;
wire zerob;
wire adda_0;
wire adda_1;
wire adda_2;
wire adda_3;
wire adda_4;
wire adda_5;
wire adda_6;
wire adda_7;
wire adda_8;
wire adda_9;
wire adda_10;
wire adda_11;
wire adda_12;
wire adda_13;
wire adda_14;
wire adda_15;
wire adda_16;
wire adda_17;
wire adda_18;
wire adda_19;
wire adda_20;
wire adda_21;
wire adda_22;
wire addb_0;
wire addb_1;
wire addb_2;
wire addb_3;
wire addb_4;
wire addb_5;
wire addb_6;
wire addb_7;
wire addb_8;
wire addb_9;
wire addb_10;
wire addb_11;
wire addb_12;
wire addb_13;
wire addb_14;
wire addb_15;
wire addb_16;
wire addb_17;
wire addb_18;
wire addb_19;
wire addb_20;
wire addb_21;
wire addb_22;
wire pcadd_0;
wire pcadd_1;
wire pcadd_2;
wire pcadd_3;
wire pcadd_4;
wire pcadd_5;
wire pcadd_6;
wire pcadd_7;
wire pcadd_8;
wire pcadd_9;
wire pcadd_10;
wire pcadd_11;
wire pcadd_12;
wire pcadd_13;
wire pcadd_14;
wire pcadd_15;
wire pcadd_16;
wire pcadd_17;
wire pcadd_18;
wire pcadd_19;
wire pcadd_20;
wire pcadd_21;
wire pcadd_22;
wire loadpc;
wire sel_0;
wire sel1t0;
wire sel1t1;
wire sel_1;
wire pcin_0;
wire pcin_1;
wire pcin_2;
wire pcin_3;
wire pcin_4;
wire pcin_5;
wire pcin_6;
wire pcin_7;
wire pcin_8;
wire pcin_9;
wire pcin_10;
wire pcin_11;
wire pcin_12;
wire pcin_13;
wire pcin_14;
wire pcin_15;
wire pcin_16;
wire pcin_17;
wire pcin_18;
wire pcin_19;
wire pcin_20;
wire pcin_21;
wire pcin_22;
wire pc_0;
wire pc_1;
wire pc_2;
wire pc_3;
wire pc_4;
wire pc_5;
wire pc_6;
wire pc_7;
wire pc_8;
wire pc_9;
wire pc_10;
wire pc_11;
wire pc_12;
wire pc_13;
wire pc_14;
wire pc_15;
wire pc_16;
wire pc_17;
wire pc_18;
wire pc_19;
wire pc_20;
wire pc_21;
wire pc_22;

// Output buffers
wire pc_b0_obuf;
wire pc_b1_obuf;
wire pc_b2_obuf;
wire pc_b3_obuf;
wire pc_b4_obuf;
wire pc_b5_obuf;
wire pc_b6_obuf;
wire pc_b7_obuf;
wire pc_b8_obuf;
wire pc_b9_obuf;
wire pc_b10_obuf;
wire pc_b11_obuf;
wire pc_b12_obuf;
wire pc_b13_obuf;
wire pc_b14_obuf;
wire pc_b15_obuf;
wire pc_b16_obuf;
wire pc_b17_obuf;
wire pc_b18_obuf;
wire pc_b19_obuf;
wire pc_b20_obuf;
wire pc_b21_obuf;
wire pc_b22_obuf;


// Output buffers
assign pc[0] = pc_b0_obuf;
assign pc[1] = pc_b1_obuf;
assign pc[2] = pc_b2_obuf;
assign pc[3] = pc_b3_obuf;
assign pc[4] = pc_b4_obuf;
assign pc[5] = pc_b5_obuf;
assign pc[6] = pc_b6_obuf;
assign pc[7] = pc_b7_obuf;
assign pc[8] = pc_b8_obuf;
assign pc[9] = pc_b9_obuf;
assign pc[10] = pc_b10_obuf;
assign pc[11] = pc_b11_obuf;
assign pc[12] = pc_b12_obuf;
assign pc[13] = pc_b13_obuf;
assign pc[14] = pc_b14_obuf;
assign pc[15] = pc_b15_obuf;
assign pc[16] = pc_b16_obuf;
assign pc[17] = pc_b17_obuf;
assign pc[18] = pc_b18_obuf;
assign pc[19] = pc_b19_obuf;
assign pc[20] = pc_b20_obuf;
assign pc[21] = pc_b21_obuf;
assign pc[22] = pc_b22_obuf;


// PREFETCH.NET (303) - one : tie1
assign one = 1'b1;

// PREFETCH.NET (304) - go\ : iv
assign go_n = ~go;

// PREFETCH.NET (305) - jrel\ : iv
assign jrel_n = ~jrel;

// PREFETCH.NET (312) - sub : subsize
subsize sub_inst
(
	.sub({subq[0],subq[1],subq[2],subq[3],subq[4],subq[5],subq[6],subq[7],subq[8],subq[9],subq[10],subq[11],subq[12],subq[13],subq[14],subq[15],subq[16],subq[17],subq[18],subq[19],subq[20],subq[21],subq[22]}), // OUT
	.a({pc_b0_obuf,pc_b1_obuf,pc_b2_obuf,pc_b3_obuf,pc_b4_obuf,pc_b5_obuf,pc_b6_obuf,pc_b7_obuf,pc_b8_obuf,pc_b9_obuf,pc_b10_obuf,pc_b11_obuf,pc_b12_obuf,pc_b13_obuf,pc_b14_obuf,pc_b15_obuf,pc_b16_obuf,pc_b17_obuf,pc_b18_obuf,pc_b19_obuf,pc_b20_obuf,pc_b21_obuf,pc_b22_obuf}), // IN
	.b_0(qs_n_0), // IN
	.b_1(qs_n_1), // IN
	.b_2(qs_n_2)  // IN
);

// PREFETCH.NET (313) - zerob : iv
assign zerob = ~one;

// PREFETCH.NET (314) - program_count : join
assign program_count[0] = zerob;
assign program_count[1] = subq[0];
assign program_count[2] = subq[1];
assign program_count[3] = subq[2];
assign program_count[4] = subq[3];
assign program_count[5] = subq[4];
assign program_count[6] = subq[5];
assign program_count[7] = subq[6];
assign program_count[8] = subq[7];
assign program_count[9] = subq[8];
assign program_count[10] = subq[9];
assign program_count[11] = subq[10];
assign program_count[12] = subq[11];
assign program_count[13] = subq[12];
assign program_count[14] = subq[13];
assign program_count[15] = subq[14];
assign program_count[16] = subq[15];
assign program_count[17] = subq[16];
assign program_count[18] = subq[17];
assign program_count[19] = subq[18];
assign program_count[20] = subq[19];
assign program_count[21] = subq[20];
assign program_count[22] = subq[21];
assign program_count[23] = subq[22];

// PREFETCH.NET (318) - adda[0] : an2
assign adda_0 = subq[0] & jrel;

// PREFETCH.NET (319) - adda[1-22] : mx2
mx2 adda_from_1_to_22_inst_0
(
	.z(adda_1), // OUT
	.a0(pc_b1_obuf), // IN
	.a1(subq[1]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_1
(
	.z(adda_2), // OUT
	.a0(pc_b2_obuf), // IN
	.a1(subq[2]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_2
(
	.z(adda_3), // OUT
	.a0(pc_b3_obuf), // IN
	.a1(subq[3]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_3
(
	.z(adda_4), // OUT
	.a0(pc_b4_obuf), // IN
	.a1(subq[4]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_4
(
	.z(adda_5), // OUT
	.a0(pc_b5_obuf), // IN
	.a1(subq[5]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_5
(
	.z(adda_6), // OUT
	.a0(pc_b6_obuf), // IN
	.a1(subq[6]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_6
(
	.z(adda_7), // OUT
	.a0(pc_b7_obuf), // IN
	.a1(subq[7]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_7
(
	.z(adda_8), // OUT
	.a0(pc_b8_obuf), // IN
	.a1(subq[8]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_8
(
	.z(adda_9), // OUT
	.a0(pc_b9_obuf), // IN
	.a1(subq[9]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_9
(
	.z(adda_10), // OUT
	.a0(pc_b10_obuf), // IN
	.a1(subq[10]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_10
(
	.z(adda_11), // OUT
	.a0(pc_b11_obuf), // IN
	.a1(subq[11]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_11
(
	.z(adda_12), // OUT
	.a0(pc_b12_obuf), // IN
	.a1(subq[12]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_12
(
	.z(adda_13), // OUT
	.a0(pc_b13_obuf), // IN
	.a1(subq[13]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_13
(
	.z(adda_14), // OUT
	.a0(pc_b14_obuf), // IN
	.a1(subq[14]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_14
(
	.z(adda_15), // OUT
	.a0(pc_b15_obuf), // IN
	.a1(subq[15]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_15
(
	.z(adda_16), // OUT
	.a0(pc_b16_obuf), // IN
	.a1(subq[16]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_16
(
	.z(adda_17), // OUT
	.a0(pc_b17_obuf), // IN
	.a1(subq[17]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_17
(
	.z(adda_18), // OUT
	.a0(pc_b18_obuf), // IN
	.a1(subq[18]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_18
(
	.z(adda_19), // OUT
	.a0(pc_b19_obuf), // IN
	.a1(subq[19]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_19
(
	.z(adda_20), // OUT
	.a0(pc_b20_obuf), // IN
	.a1(subq[20]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_20
(
	.z(adda_21), // OUT
	.a0(pc_b21_obuf), // IN
	.a1(subq[21]), // IN
	.s(jrel)  // IN
);
mx2 adda_from_1_to_22_inst_21
(
	.z(adda_22), // OUT
	.a0(pc_b22_obuf), // IN
	.a1(subq[22]), // IN
	.s(jrel)  // IN
);

// PREFETCH.NET (321) - addb[0] : an2
assign addb_0 = srcdp[0] & jrel;

// PREFETCH.NET (322) - addb[1] : or2
assign addb_1 = srcdp[1] | jrel_n;

// PREFETCH.NET (323) - addb[2-22] : an2
assign addb_2 = srcdp[2] & jrel;
assign addb_3 = srcdp[3] & jrel;
assign addb_4 = srcdp[4] & jrel;
assign addb_5 = srcdp[5] & jrel;
assign addb_6 = srcdp[6] & jrel;
assign addb_7 = srcdp[7] & jrel;
assign addb_8 = srcdp[8] & jrel;
assign addb_9 = srcdp[9] & jrel;
assign addb_10 = srcdp[10] & jrel;
assign addb_11 = srcdp[11] & jrel;
assign addb_12 = srcdp[12] & jrel;
assign addb_13 = srcdp[13] & jrel;
assign addb_14 = srcdp[14] & jrel;
assign addb_15 = srcdp[15] & jrel;
assign addb_16 = srcdp[16] & jrel;
assign addb_17 = srcdp[17] & jrel;
assign addb_18 = srcdp[18] & jrel;
assign addb_19 = srcdp[19] & jrel;
assign addb_20 = srcdp[20] & jrel;
assign addb_21 = srcdp[21] & jrel;
assign addb_22 = srcdp[22] & jrel;

// PREFETCH.NET (325) - pcadd : fa23
fa23 pcadd_inst
(
	.s_0(pcadd_0), // OUT
	.s_1(pcadd_1), // OUT
	.s_2(pcadd_2), // OUT
	.s_3(pcadd_3), // OUT
	.s_4(pcadd_4), // OUT
	.s_5(pcadd_5), // OUT
	.s_6(pcadd_6), // OUT
	.s_7(pcadd_7), // OUT
	.s_8(pcadd_8), // OUT
	.s_9(pcadd_9), // OUT
	.s_10(pcadd_10), // OUT
	.s_11(pcadd_11), // OUT
	.s_12(pcadd_12), // OUT
	.s_13(pcadd_13), // OUT
	.s_14(pcadd_14), // OUT
	.s_15(pcadd_15), // OUT
	.s_16(pcadd_16), // OUT
	.s_17(pcadd_17), // OUT
	.s_18(pcadd_18), // OUT
	.s_19(pcadd_19), // OUT
	.s_20(pcadd_20), // OUT
	.s_21(pcadd_21), // OUT
	.s_22(pcadd_22), // OUT
	.a_0(adda_0), // IN
	.a_1(adda_1), // IN
	.a_2(adda_2), // IN
	.a_3(adda_3), // IN
	.a_4(adda_4), // IN
	.a_5(adda_5), // IN
	.a_6(adda_6), // IN
	.a_7(adda_7), // IN
	.a_8(adda_8), // IN
	.a_9(adda_9), // IN
	.a_10(adda_10), // IN
	.a_11(adda_11), // IN
	.a_12(adda_12), // IN
	.a_13(adda_13), // IN
	.a_14(adda_14), // IN
	.a_15(adda_15), // IN
	.a_16(adda_16), // IN
	.a_17(adda_17), // IN
	.a_18(adda_18), // IN
	.a_19(adda_19), // IN
	.a_20(adda_20), // IN
	.a_21(adda_21), // IN
	.a_22(adda_22), // IN
	.b_0(addb_0), // IN
	.b_1(addb_1), // IN
	.b_2(addb_2), // IN
	.b_3(addb_3), // IN
	.b_4(addb_4), // IN
	.b_5(addb_5), // IN
	.b_6(addb_6), // IN
	.b_7(addb_7), // IN
	.b_8(addb_8), // IN
	.b_9(addb_9), // IN
	.b_10(addb_10), // IN
	.b_11(addb_11), // IN
	.b_12(addb_12), // IN
	.b_13(addb_13), // IN
	.b_14(addb_14), // IN
	.b_15(addb_15), // IN
	.b_16(addb_16), // IN
	.b_17(addb_17), // IN
	.b_18(addb_18), // IN
	.b_19(addb_19), // IN
	.b_20(addb_20), // IN
	.b_21(addb_21), // IN
	.b_22(addb_22)  // IN
);

// PREFETCH.NET (335) - loadpc : an2
assign loadpc = pcwr & go_n;

// PREFETCH.NET (336) - sel0 : or2u
assign sel_0 = jabs | loadpc;

// PREFETCH.NET (337) - sel1t0 : nr2
assign sel1t0 = ~(progack | jrel);

// PREFETCH.NET (338) - sel1t1 : nr2
assign sel1t1 = ~(sel1t0 | jabs);

// PREFETCH.NET (339) - sel1 : or2u
assign sel_1 = sel1t1 | loadpc;

// PREFETCH.NET (341) - pcin[0-22] : mx4
mx4 pcin_from_0_to_22_inst_0
(
	.z(pcin_0), // OUT
	.a0(pc_0), // IN
	.a1(srcd[1]), // IN
	.a2(pcadd_0), // IN
	.a3(gpu_din[1]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_1
(
	.z(pcin_1), // OUT
	.a0(pc_1), // IN
	.a1(srcd[2]), // IN
	.a2(pcadd_1), // IN
	.a3(gpu_din[2]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_2
(
	.z(pcin_2), // OUT
	.a0(pc_2), // IN
	.a1(srcd[3]), // IN
	.a2(pcadd_2), // IN
	.a3(gpu_din[3]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_3
(
	.z(pcin_3), // OUT
	.a0(pc_3), // IN
	.a1(srcd[4]), // IN
	.a2(pcadd_3), // IN
	.a3(gpu_din[4]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_4
(
	.z(pcin_4), // OUT
	.a0(pc_4), // IN
	.a1(srcd[5]), // IN
	.a2(pcadd_4), // IN
	.a3(gpu_din[5]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_5
(
	.z(pcin_5), // OUT
	.a0(pc_5), // IN
	.a1(srcd[6]), // IN
	.a2(pcadd_5), // IN
	.a3(gpu_din[6]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_6
(
	.z(pcin_6), // OUT
	.a0(pc_6), // IN
	.a1(srcd[7]), // IN
	.a2(pcadd_6), // IN
	.a3(gpu_din[7]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_7
(
	.z(pcin_7), // OUT
	.a0(pc_7), // IN
	.a1(srcd[8]), // IN
	.a2(pcadd_7), // IN
	.a3(gpu_din[8]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_8
(
	.z(pcin_8), // OUT
	.a0(pc_8), // IN
	.a1(srcd[9]), // IN
	.a2(pcadd_8), // IN
	.a3(gpu_din[9]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_9
(
	.z(pcin_9), // OUT
	.a0(pc_9), // IN
	.a1(srcd[10]), // IN
	.a2(pcadd_9), // IN
	.a3(gpu_din[10]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_10
(
	.z(pcin_10), // OUT
	.a0(pc_10), // IN
	.a1(srcd[11]), // IN
	.a2(pcadd_10), // IN
	.a3(gpu_din[11]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_11
(
	.z(pcin_11), // OUT
	.a0(pc_11), // IN
	.a1(srcd[12]), // IN
	.a2(pcadd_11), // IN
	.a3(gpu_din[12]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_12
(
	.z(pcin_12), // OUT
	.a0(pc_12), // IN
	.a1(srcd[13]), // IN
	.a2(pcadd_12), // IN
	.a3(gpu_din[13]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_13
(
	.z(pcin_13), // OUT
	.a0(pc_13), // IN
	.a1(srcd[14]), // IN
	.a2(pcadd_13), // IN
	.a3(gpu_din[14]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_14
(
	.z(pcin_14), // OUT
	.a0(pc_14), // IN
	.a1(srcd[15]), // IN
	.a2(pcadd_14), // IN
	.a3(gpu_din[15]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_15
(
	.z(pcin_15), // OUT
	.a0(pc_15), // IN
	.a1(srcd[16]), // IN
	.a2(pcadd_15), // IN
	.a3(gpu_din[16]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_16
(
	.z(pcin_16), // OUT
	.a0(pc_16), // IN
	.a1(srcd[17]), // IN
	.a2(pcadd_16), // IN
	.a3(gpu_din[17]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_17
(
	.z(pcin_17), // OUT
	.a0(pc_17), // IN
	.a1(srcd[18]), // IN
	.a2(pcadd_17), // IN
	.a3(gpu_din[18]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_18
(
	.z(pcin_18), // OUT
	.a0(pc_18), // IN
	.a1(srcd[19]), // IN
	.a2(pcadd_18), // IN
	.a3(gpu_din[19]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_19
(
	.z(pcin_19), // OUT
	.a0(pc_19), // IN
	.a1(srcd[20]), // IN
	.a2(pcadd_19), // IN
	.a3(gpu_din[20]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_20
(
	.z(pcin_20), // OUT
	.a0(pc_20), // IN
	.a1(srcd[21]), // IN
	.a2(pcadd_20), // IN
	.a3(gpu_din[21]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_21
(
	.z(pcin_21), // OUT
	.a0(pc_21), // IN
	.a1(srcd[22]), // IN
	.a2(pcadd_21), // IN
	.a3(gpu_din[22]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);
mx4 pcin_from_0_to_22_inst_22
(
	.z(pcin_22), // OUT
	.a0(pc_22), // IN
	.a1(srcd[23]), // IN
	.a2(pcadd_22), // IN
	.a3(gpu_din[23]), // IN
	.s0(sel_0), // IN
	.s1(sel_1)  // IN
);

// PREFETCH.NET (349) - pc[0-1] : fd2q
fd2q pc_from_0_to_1_inst_0
(
	.q(pc_0), // OUT
	.d(pcin_0), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_0_to_1_inst_1
(
	.q(pc_1), // OUT
	.d(pcin_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (350) - pc[2] : fd4q
fd4q pc_index_2_inst
(
	.q(pc_2), // OUT
	.d(pcin_2), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// PREFETCH.NET (351) - pc[3-14] : fd2q
fd2q pc_from_3_to_14_inst_0
(
	.q(pc_3), // OUT
	.d(pcin_3), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_1
(
	.q(pc_4), // OUT
	.d(pcin_4), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_2
(
	.q(pc_5), // OUT
	.d(pcin_5), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_3
(
	.q(pc_6), // OUT
	.d(pcin_6), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_4
(
	.q(pc_7), // OUT
	.d(pcin_7), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_5
(
	.q(pc_8), // OUT
	.d(pcin_8), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_6
(
	.q(pc_9), // OUT
	.d(pcin_9), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_7
(
	.q(pc_10), // OUT
	.d(pcin_10), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_8
(
	.q(pc_11), // OUT
	.d(pcin_11), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_9
(
	.q(pc_12), // OUT
	.d(pcin_12), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_10
(
	.q(pc_13), // OUT
	.d(pcin_13), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q pc_from_3_to_14_inst_11
(
	.q(pc_14), // OUT
	.d(pcin_14), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (352) - pc[15-22] : fd4q
fd4q pc_from_15_to_22_inst_0
(
	.q(pc_15), // OUT
	.d(pcin_15), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_1
(
	.q(pc_16), // OUT
	.d(pcin_16), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_2
(
	.q(pc_17), // OUT
	.d(pcin_17), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_3
(
	.q(pc_18), // OUT
	.d(pcin_18), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_4
(
	.q(pc_19), // OUT
	.d(pcin_19), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_5
(
	.q(pc_20), // OUT
	.d(pcin_20), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_6
(
	.q(pc_21), // OUT
	.d(pcin_21), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);
fd4q pc_from_15_to_22_inst_7
(
	.q(pc_22), // OUT
	.d(pcin_22), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// PREFETCH.NET (353) - pc : join
assign pc_b0_obuf = pc_0;
assign pc_b1_obuf = pc_1;
assign pc_b2_obuf = pc_2;
assign pc_b3_obuf = pc_3;
assign pc_b4_obuf = pc_4;
assign pc_b5_obuf = pc_5;
assign pc_b6_obuf = pc_6;
assign pc_b7_obuf = pc_7;
assign pc_b8_obuf = pc_8;
assign pc_b9_obuf = pc_9;
assign pc_b10_obuf = pc_10;
assign pc_b11_obuf = pc_11;
assign pc_b12_obuf = pc_12;
assign pc_b13_obuf = pc_13;
assign pc_b14_obuf = pc_14;
assign pc_b15_obuf = pc_15;
assign pc_b16_obuf = pc_16;
assign pc_b17_obuf = pc_17;
assign pc_b18_obuf = pc_18;
assign pc_b19_obuf = pc_19;
assign pc_b20_obuf = pc_20;
assign pc_b21_obuf = pc_21;
assign pc_b22_obuf = pc_22;
endmodule
