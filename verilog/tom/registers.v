`include "defs.v"

module registers
(
	output[0:31] srcd;
	output[0:31] srcdp;
	output[0:31] srcdpa;
	output[0:31] dstd;
	output[0:31] dstdp;
	input clk,
	input[0:5] dsta;
	input dstrwen_n,
	input[0:31] dstwd;
	input exe,
	input locden,
	input[0:31] locsrc;
	input[0:31] mem_data;
	input mtx_dover,
	input[0:5] srca;
	input srcrwen_n,
	input[0:31] srcwd
);
wire [0:31] dstdr;
wire [0:31] srcdr;
wire [0:31] dstdpt0;
wire [0:31] dstdpt1;
wire [0:31] zero32;
wire exeb;
wire locden_n;
wire dstrwen;
wire srcrwen;
wire zero;
wire addreq;
wire dwtosr_n;
wire swtodr;
wire srcdsel_0;
wire srcdsel_1;
wire dstdsel_0;
wire dstdsel_1;
wire stba;
wire stbb;
wire stbc;
wire stbd;
wire stbe;
wire stb;
wire srcdr_31;
wire srcdr_30;
wire srcdr_29;
wire srcdr_28;
wire srcdr_27;
wire srcdr_26;
wire srcdr_25;
wire srcdr_24;
wire srcdr_23;
wire srcdr_22;
wire srcdr_21;
wire srcdr_20;
wire srcdr_19;
wire srcdr_18;
wire srcdr_17;
wire srcdr_16;
wire srcdr_15;
wire srcdr_14;
wire srcdr_13;
wire srcdr_12;
wire srcdr_11;
wire srcdr_10;
wire srcdr_9;
wire srcdr_8;
wire srcdr_7;
wire srcdr_6;
wire srcdr_5;
wire srcdr_4;
wire srcdr_3;
wire srcdr_2;
wire srcdr_1;
wire srcdr_0;
wire dstdr_31;
wire dstdr_30;
wire dstdr_29;
wire dstdr_28;
wire dstdr_27;
wire dstdr_26;
wire dstdr_25;
wire dstdr_24;
wire dstdr_23;
wire dstdr_22;
wire dstdr_21;
wire dstdr_20;
wire dstdr_19;
wire dstdr_18;
wire dstdr_17;
wire dstdr_16;
wire dstdr_15;
wire dstdr_14;
wire dstdr_13;
wire dstdr_12;
wire dstdr_11;
wire dstdr_10;
wire dstdr_9;
wire dstdr_8;
wire dstdr_7;
wire dstdr_6;
wire dstdr_5;
wire dstdr_4;
wire dstdr_3;
wire dstdr_2;
wire dstdr_1;
wire dstdr_0;
wire mtx_doverp;

// Output buffers
wire srcd_b0_obuf;
wire srcd_b1_obuf;
wire srcd_b2_obuf;
wire srcd_b3_obuf;
wire srcd_b4_obuf;
wire srcd_b5_obuf;
wire srcd_b6_obuf;
wire srcd_b7_obuf;
wire srcd_b8_obuf;
wire srcd_b9_obuf;
wire srcd_b10_obuf;
wire srcd_b11_obuf;
wire srcd_b12_obuf;
wire srcd_b13_obuf;
wire srcd_b14_obuf;
wire srcd_b15_obuf;
wire srcd_b16_obuf;
wire srcd_b17_obuf;
wire srcd_b18_obuf;
wire srcd_b19_obuf;
wire srcd_b20_obuf;
wire srcd_b21_obuf;
wire srcd_b22_obuf;
wire srcd_b23_obuf;
wire srcd_b24_obuf;
wire srcd_b25_obuf;
wire srcd_b26_obuf;
wire srcd_b27_obuf;
wire srcd_b28_obuf;
wire srcd_b29_obuf;
wire srcd_b30_obuf;
wire srcd_b31_obuf;
wire srcdpa_b0_obuf;
wire srcdpa_b1_obuf;
wire srcdpa_b2_obuf;
wire srcdpa_b3_obuf;
wire srcdpa_b4_obuf;
wire srcdpa_b5_obuf;
wire srcdpa_b6_obuf;
wire srcdpa_b7_obuf;
wire srcdpa_b8_obuf;
wire srcdpa_b9_obuf;
wire srcdpa_b10_obuf;
wire srcdpa_b11_obuf;
wire srcdpa_b12_obuf;
wire srcdpa_b13_obuf;
wire srcdpa_b14_obuf;
wire srcdpa_b15_obuf;
wire srcdpa_b16_obuf;
wire srcdpa_b17_obuf;
wire srcdpa_b18_obuf;
wire srcdpa_b19_obuf;
wire srcdpa_b20_obuf;
wire srcdpa_b21_obuf;
wire srcdpa_b22_obuf;
wire srcdpa_b23_obuf;
wire srcdpa_b24_obuf;
wire srcdpa_b25_obuf;
wire srcdpa_b26_obuf;
wire srcdpa_b27_obuf;
wire srcdpa_b28_obuf;
wire srcdpa_b29_obuf;
wire srcdpa_b30_obuf;
wire srcdpa_b31_obuf;
wire dstd_b0_obuf;
wire dstd_b1_obuf;
wire dstd_b2_obuf;
wire dstd_b3_obuf;
wire dstd_b4_obuf;
wire dstd_b5_obuf;
wire dstd_b6_obuf;
wire dstd_b7_obuf;
wire dstd_b8_obuf;
wire dstd_b9_obuf;
wire dstd_b10_obuf;
wire dstd_b11_obuf;
wire dstd_b12_obuf;
wire dstd_b13_obuf;
wire dstd_b14_obuf;
wire dstd_b15_obuf;
wire dstd_b16_obuf;
wire dstd_b17_obuf;
wire dstd_b18_obuf;
wire dstd_b19_obuf;
wire dstd_b20_obuf;
wire dstd_b21_obuf;
wire dstd_b22_obuf;
wire dstd_b23_obuf;
wire dstd_b24_obuf;
wire dstd_b25_obuf;
wire dstd_b26_obuf;
wire dstd_b27_obuf;
wire dstd_b28_obuf;
wire dstd_b29_obuf;
wire dstd_b30_obuf;
wire dstd_b31_obuf;


// Output buffers
assign srcd[0] = srcd_b0_obuf;
assign srcd[1] = srcd_b1_obuf;
assign srcd[2] = srcd_b2_obuf;
assign srcd[3] = srcd_b3_obuf;
assign srcd[4] = srcd_b4_obuf;
assign srcd[5] = srcd_b5_obuf;
assign srcd[6] = srcd_b6_obuf;
assign srcd[7] = srcd_b7_obuf;
assign srcd[8] = srcd_b8_obuf;
assign srcd[9] = srcd_b9_obuf;
assign srcd[10] = srcd_b10_obuf;
assign srcd[11] = srcd_b11_obuf;
assign srcd[12] = srcd_b12_obuf;
assign srcd[13] = srcd_b13_obuf;
assign srcd[14] = srcd_b14_obuf;
assign srcd[15] = srcd_b15_obuf;
assign srcd[16] = srcd_b16_obuf;
assign srcd[17] = srcd_b17_obuf;
assign srcd[18] = srcd_b18_obuf;
assign srcd[19] = srcd_b19_obuf;
assign srcd[20] = srcd_b20_obuf;
assign srcd[21] = srcd_b21_obuf;
assign srcd[22] = srcd_b22_obuf;
assign srcd[23] = srcd_b23_obuf;
assign srcd[24] = srcd_b24_obuf;
assign srcd[25] = srcd_b25_obuf;
assign srcd[26] = srcd_b26_obuf;
assign srcd[27] = srcd_b27_obuf;
assign srcd[28] = srcd_b28_obuf;
assign srcd[29] = srcd_b29_obuf;
assign srcd[30] = srcd_b30_obuf;
assign srcd[31] = srcd_b31_obuf;
assign srcdpa[0] = srcdpa_b0_obuf;
assign srcdpa[1] = srcdpa_b1_obuf;
assign srcdpa[2] = srcdpa_b2_obuf;
assign srcdpa[3] = srcdpa_b3_obuf;
assign srcdpa[4] = srcdpa_b4_obuf;
assign srcdpa[5] = srcdpa_b5_obuf;
assign srcdpa[6] = srcdpa_b6_obuf;
assign srcdpa[7] = srcdpa_b7_obuf;
assign srcdpa[8] = srcdpa_b8_obuf;
assign srcdpa[9] = srcdpa_b9_obuf;
assign srcdpa[10] = srcdpa_b10_obuf;
assign srcdpa[11] = srcdpa_b11_obuf;
assign srcdpa[12] = srcdpa_b12_obuf;
assign srcdpa[13] = srcdpa_b13_obuf;
assign srcdpa[14] = srcdpa_b14_obuf;
assign srcdpa[15] = srcdpa_b15_obuf;
assign srcdpa[16] = srcdpa_b16_obuf;
assign srcdpa[17] = srcdpa_b17_obuf;
assign srcdpa[18] = srcdpa_b18_obuf;
assign srcdpa[19] = srcdpa_b19_obuf;
assign srcdpa[20] = srcdpa_b20_obuf;
assign srcdpa[21] = srcdpa_b21_obuf;
assign srcdpa[22] = srcdpa_b22_obuf;
assign srcdpa[23] = srcdpa_b23_obuf;
assign srcdpa[24] = srcdpa_b24_obuf;
assign srcdpa[25] = srcdpa_b25_obuf;
assign srcdpa[26] = srcdpa_b26_obuf;
assign srcdpa[27] = srcdpa_b27_obuf;
assign srcdpa[28] = srcdpa_b28_obuf;
assign srcdpa[29] = srcdpa_b29_obuf;
assign srcdpa[30] = srcdpa_b30_obuf;
assign srcdpa[31] = srcdpa_b31_obuf;
assign dstd[0] = dstd_b0_obuf;
assign dstd[1] = dstd_b1_obuf;
assign dstd[2] = dstd_b2_obuf;
assign dstd[3] = dstd_b3_obuf;
assign dstd[4] = dstd_b4_obuf;
assign dstd[5] = dstd_b5_obuf;
assign dstd[6] = dstd_b6_obuf;
assign dstd[7] = dstd_b7_obuf;
assign dstd[8] = dstd_b8_obuf;
assign dstd[9] = dstd_b9_obuf;
assign dstd[10] = dstd_b10_obuf;
assign dstd[11] = dstd_b11_obuf;
assign dstd[12] = dstd_b12_obuf;
assign dstd[13] = dstd_b13_obuf;
assign dstd[14] = dstd_b14_obuf;
assign dstd[15] = dstd_b15_obuf;
assign dstd[16] = dstd_b16_obuf;
assign dstd[17] = dstd_b17_obuf;
assign dstd[18] = dstd_b18_obuf;
assign dstd[19] = dstd_b19_obuf;
assign dstd[20] = dstd_b20_obuf;
assign dstd[21] = dstd_b21_obuf;
assign dstd[22] = dstd_b22_obuf;
assign dstd[23] = dstd_b23_obuf;
assign dstd[24] = dstd_b24_obuf;
assign dstd[25] = dstd_b25_obuf;
assign dstd[26] = dstd_b26_obuf;
assign dstd[27] = dstd_b27_obuf;
assign dstd[28] = dstd_b28_obuf;
assign dstd[29] = dstd_b29_obuf;
assign dstd[30] = dstd_b30_obuf;
assign dstd[31] = dstd_b31_obuf;


// REGIS-WA.NET (39) - exeb : nivu
assign exeb = exe;

// REGIS-WA.NET (40) - locden\ : iv
assign locden_n = ~locden;

// REGIS-WA.NET (41) - dstrwen : iv
assign dstrwen = ~dstrwen_n;

// REGIS-WA.NET (42) - srcrwen : iv
assign srcrwen = ~srcrwen_n;

// REGIS-WA.NET (44) - zero : tie0
assign zero = 1'b0;

// REGIS-WA.NET (45) - zero32 : join
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

// REGIS-WA.NET (53) - addreq : cmp6
cmp6 addreq_inst
(
	.equal(addreq), // OUT
	.a({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}), // IN
	.b({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]})  // IN
);

// REGIS-WA.NET (54) - dwtosr : nd3
assign dwtosr_n = ~(addreq & dstrwen & srcrwen_n);

// REGIS-WA.NET (55) - swtodr : an3
assign swtodr = addreq & dstrwen_n & srcrwen;

// REGIS-WA.NET (57) - srcdsel[0] : nd2u
assign srcdsel_0 = ~(srcrwen_n & locden_n);

// REGIS-WA.NET (58) - srcdsel[1] : nd2u
assign srcdsel_1 = ~(dwtosr_n & locden_n);

// REGIS-WA.NET (60) - dstdsel[0] : nivu
assign dstdsel_0 = dstrwen;

// REGIS-WA.NET (61) - dstdsel[1] : nivu
assign dstdsel_1 = swtodr;

// REGIS-WA.NET (86) - stba : dly8
stba <= clk;

// REGIS-WA.NET (87) - stbb : dly8
stbb <= stba;

// REGIS-WA.NET (88) - stbc : dly8
stbc <= stbb;

// REGIS-WA.NET (89) - stbd : dly8
stbd <= stbc;

// REGIS-WA.NET (90) - stbe : dly8
stbe <= stbd;

// REGIS-WA.NET (91) - stb : dly8
stb <= stbe;

// REGIS-WA.NET (93) - reg_ram : rd64x32
rd64x32 reg_ram_inst
(
	.qa0(srcdr_31), // OUT
	.qa1(srcdr_30), // OUT
	.qa2(srcdr_29), // OUT
	.qa3(srcdr_28), // OUT
	.qa4(srcdr_27), // OUT
	.qa5(srcdr_26), // OUT
	.qa6(srcdr_25), // OUT
	.qa7(srcdr_24), // OUT
	.qa8(srcdr_23), // OUT
	.qa9(srcdr_22), // OUT
	.qa10(srcdr_21), // OUT
	.qa11(srcdr_20), // OUT
	.qa12(srcdr_19), // OUT
	.qa13(srcdr_18), // OUT
	.qa14(srcdr_17), // OUT
	.qa15(srcdr_16), // OUT
	.qa16(srcdr_15), // OUT
	.qa17(srcdr_14), // OUT
	.qa18(srcdr_13), // OUT
	.qa19(srcdr_12), // OUT
	.qa20(srcdr_11), // OUT
	.qa21(srcdr_10), // OUT
	.qa22(srcdr_9), // OUT
	.qa23(srcdr_8), // OUT
	.qa24(srcdr_7), // OUT
	.qa25(srcdr_6), // OUT
	.qa26(srcdr_5), // OUT
	.qa27(srcdr_4), // OUT
	.qa28(srcdr_3), // OUT
	.qa29(srcdr_2), // OUT
	.qa30(srcdr_1), // OUT
	.qa31(srcdr_0), // OUT
	.qb0(dstdr_31), // OUT
	.qb1(dstdr_30), // OUT
	.qb2(dstdr_29), // OUT
	.qb3(dstdr_28), // OUT
	.qb4(dstdr_27), // OUT
	.qb5(dstdr_26), // OUT
	.qb6(dstdr_25), // OUT
	.qb7(dstdr_24), // OUT
	.qb8(dstdr_23), // OUT
	.qb9(dstdr_22), // OUT
	.qb10(dstdr_21), // OUT
	.qb11(dstdr_20), // OUT
	.qb12(dstdr_19), // OUT
	.qb13(dstdr_18), // OUT
	.qb14(dstdr_17), // OUT
	.qb15(dstdr_16), // OUT
	.qb16(dstdr_15), // OUT
	.qb17(dstdr_14), // OUT
	.qb18(dstdr_13), // OUT
	.qb19(dstdr_12), // OUT
	.qb20(dstdr_11), // OUT
	.qb21(dstdr_10), // OUT
	.qb22(dstdr_9), // OUT
	.qb23(dstdr_8), // OUT
	.qb24(dstdr_7), // OUT
	.qb25(dstdr_6), // OUT
	.qb26(dstdr_5), // OUT
	.qb27(dstdr_4), // OUT
	.qb28(dstdr_3), // OUT
	.qb29(dstdr_2), // OUT
	.qb30(dstdr_1), // OUT
	.qb31(dstdr_0), // OUT
	.nwea(srcrwen_n), // IN
	.clka(stb), // IN
	.aa0(srca[5]), // IN
	.aa1(srca[4]), // IN
	.aa2(srca[3]), // IN
	.aa3(srca[2]), // IN
	.aa4(srca[1]), // IN
	.aa5(srca[0]), // IN
	.da0(srcwd[31]), // IN
	.da1(srcwd[30]), // IN
	.da2(srcwd[29]), // IN
	.da3(srcwd[28]), // IN
	.da4(srcwd[27]), // IN
	.da5(srcwd[26]), // IN
	.da6(srcwd[25]), // IN
	.da7(srcwd[24]), // IN
	.da8(srcwd[23]), // IN
	.da9(srcwd[22]), // IN
	.da10(srcwd[21]), // IN
	.da11(srcwd[20]), // IN
	.da12(srcwd[19]), // IN
	.da13(srcwd[18]), // IN
	.da14(srcwd[17]), // IN
	.da15(srcwd[16]), // IN
	.da16(srcwd[15]), // IN
	.da17(srcwd[14]), // IN
	.da18(srcwd[13]), // IN
	.da19(srcwd[12]), // IN
	.da20(srcwd[11]), // IN
	.da21(srcwd[10]), // IN
	.da22(srcwd[9]), // IN
	.da23(srcwd[8]), // IN
	.da24(srcwd[7]), // IN
	.da25(srcwd[6]), // IN
	.da26(srcwd[5]), // IN
	.da27(srcwd[4]), // IN
	.da28(srcwd[3]), // IN
	.da29(srcwd[2]), // IN
	.da30(srcwd[1]), // IN
	.da31(srcwd[0]), // IN
	.nweb(dstrwen_n), // IN
	.clkb(stb), // IN
	.ab0(dsta[5]), // IN
	.ab1(dsta[4]), // IN
	.ab2(dsta[3]), // IN
	.ab3(dsta[2]), // IN
	.ab4(dsta[1]), // IN
	.ab5(dsta[0]), // IN
	.db0(dstwd[31]), // IN
	.db1(dstwd[30]), // IN
	.db2(dstwd[29]), // IN
	.db3(dstwd[28]), // IN
	.db4(dstwd[27]), // IN
	.db5(dstwd[26]), // IN
	.db6(dstwd[25]), // IN
	.db7(dstwd[24]), // IN
	.db8(dstwd[23]), // IN
	.db9(dstwd[22]), // IN
	.db10(dstwd[21]), // IN
	.db11(dstwd[20]), // IN
	.db12(dstwd[19]), // IN
	.db13(dstwd[18]), // IN
	.db14(dstwd[17]), // IN
	.db15(dstwd[16]), // IN
	.db16(dstwd[15]), // IN
	.db17(dstwd[14]), // IN
	.db18(dstwd[13]), // IN
	.db19(dstwd[12]), // IN
	.db20(dstwd[11]), // IN
	.db21(dstwd[10]), // IN
	.db22(dstwd[9]), // IN
	.db23(dstwd[8]), // IN
	.db24(dstwd[7]), // IN
	.db25(dstwd[6]), // IN
	.db26(dstwd[5]), // IN
	.db27(dstwd[4]), // IN
	.db28(dstwd[3]), // IN
	.db29(dstwd[2]), // IN
	.db30(dstwd[1]), // IN
	.db31(dstwd[0])  // IN
);

// REGIS-WA.NET (120) - srcdr : join
assign srcdr[0] = srcdr_0;
assign srcdr[1] = srcdr_1;
assign srcdr[2] = srcdr_2;
assign srcdr[3] = srcdr_3;
assign srcdr[4] = srcdr_4;
assign srcdr[5] = srcdr_5;
assign srcdr[6] = srcdr_6;
assign srcdr[7] = srcdr_7;
assign srcdr[8] = srcdr_8;
assign srcdr[9] = srcdr_9;
assign srcdr[10] = srcdr_10;
assign srcdr[11] = srcdr_11;
assign srcdr[12] = srcdr_12;
assign srcdr[13] = srcdr_13;
assign srcdr[14] = srcdr_14;
assign srcdr[15] = srcdr_15;
assign srcdr[16] = srcdr_16;
assign srcdr[17] = srcdr_17;
assign srcdr[18] = srcdr_18;
assign srcdr[19] = srcdr_19;
assign srcdr[20] = srcdr_20;
assign srcdr[21] = srcdr_21;
assign srcdr[22] = srcdr_22;
assign srcdr[23] = srcdr_23;
assign srcdr[24] = srcdr_24;
assign srcdr[25] = srcdr_25;
assign srcdr[26] = srcdr_26;
assign srcdr[27] = srcdr_27;
assign srcdr[28] = srcdr_28;
assign srcdr[29] = srcdr_29;
assign srcdr[30] = srcdr_30;
assign srcdr[31] = srcdr_31;

// REGIS-WA.NET (121) - dstdr : join
assign dstdr[0] = dstdr_0;
assign dstdr[1] = dstdr_1;
assign dstdr[2] = dstdr_2;
assign dstdr[3] = dstdr_3;
assign dstdr[4] = dstdr_4;
assign dstdr[5] = dstdr_5;
assign dstdr[6] = dstdr_6;
assign dstdr[7] = dstdr_7;
assign dstdr[8] = dstdr_8;
assign dstdr[9] = dstdr_9;
assign dstdr[10] = dstdr_10;
assign dstdr[11] = dstdr_11;
assign dstdr[12] = dstdr_12;
assign dstdr[13] = dstdr_13;
assign dstdr[14] = dstdr_14;
assign dstdr[15] = dstdr_15;
assign dstdr[16] = dstdr_16;
assign dstdr[17] = dstdr_17;
assign dstdr[18] = dstdr_18;
assign dstdr[19] = dstdr_19;
assign dstdr[20] = dstdr_20;
assign dstdr[21] = dstdr_21;
assign dstdr[22] = dstdr_22;
assign dstdr[23] = dstdr_23;
assign dstdr[24] = dstdr_24;
assign dstdr[25] = dstdr_25;
assign dstdr[26] = dstdr_26;
assign dstdr[27] = dstdr_27;
assign dstdr[28] = dstdr_28;
assign dstdr[29] = dstdr_29;
assign dstdr[30] = dstdr_30;
assign dstdr[31] = dstdr_31;

// REGIS-WA.NET (124) - srcd : mx4p
mx4 srcd_inst_0
(
	.z(srcd_b0_obuf), // OUT
	.a0(srcdr[0]), // IN
	.a1(srcwd[0]), // IN
	.a2(dstwd[0]), // IN
	.a3(locsrc[0]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_1
(
	.z(srcd_b1_obuf), // OUT
	.a0(srcdr[1]), // IN
	.a1(srcwd[1]), // IN
	.a2(dstwd[1]), // IN
	.a3(locsrc[1]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_2
(
	.z(srcd_b2_obuf), // OUT
	.a0(srcdr[2]), // IN
	.a1(srcwd[2]), // IN
	.a2(dstwd[2]), // IN
	.a3(locsrc[2]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_3
(
	.z(srcd_b3_obuf), // OUT
	.a0(srcdr[3]), // IN
	.a1(srcwd[3]), // IN
	.a2(dstwd[3]), // IN
	.a3(locsrc[3]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_4
(
	.z(srcd_b4_obuf), // OUT
	.a0(srcdr[4]), // IN
	.a1(srcwd[4]), // IN
	.a2(dstwd[4]), // IN
	.a3(locsrc[4]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_5
(
	.z(srcd_b5_obuf), // OUT
	.a0(srcdr[5]), // IN
	.a1(srcwd[5]), // IN
	.a2(dstwd[5]), // IN
	.a3(locsrc[5]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_6
(
	.z(srcd_b6_obuf), // OUT
	.a0(srcdr[6]), // IN
	.a1(srcwd[6]), // IN
	.a2(dstwd[6]), // IN
	.a3(locsrc[6]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_7
(
	.z(srcd_b7_obuf), // OUT
	.a0(srcdr[7]), // IN
	.a1(srcwd[7]), // IN
	.a2(dstwd[7]), // IN
	.a3(locsrc[7]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_8
(
	.z(srcd_b8_obuf), // OUT
	.a0(srcdr[8]), // IN
	.a1(srcwd[8]), // IN
	.a2(dstwd[8]), // IN
	.a3(locsrc[8]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_9
(
	.z(srcd_b9_obuf), // OUT
	.a0(srcdr[9]), // IN
	.a1(srcwd[9]), // IN
	.a2(dstwd[9]), // IN
	.a3(locsrc[9]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_10
(
	.z(srcd_b10_obuf), // OUT
	.a0(srcdr[10]), // IN
	.a1(srcwd[10]), // IN
	.a2(dstwd[10]), // IN
	.a3(locsrc[10]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_11
(
	.z(srcd_b11_obuf), // OUT
	.a0(srcdr[11]), // IN
	.a1(srcwd[11]), // IN
	.a2(dstwd[11]), // IN
	.a3(locsrc[11]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_12
(
	.z(srcd_b12_obuf), // OUT
	.a0(srcdr[12]), // IN
	.a1(srcwd[12]), // IN
	.a2(dstwd[12]), // IN
	.a3(locsrc[12]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_13
(
	.z(srcd_b13_obuf), // OUT
	.a0(srcdr[13]), // IN
	.a1(srcwd[13]), // IN
	.a2(dstwd[13]), // IN
	.a3(locsrc[13]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_14
(
	.z(srcd_b14_obuf), // OUT
	.a0(srcdr[14]), // IN
	.a1(srcwd[14]), // IN
	.a2(dstwd[14]), // IN
	.a3(locsrc[14]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_15
(
	.z(srcd_b15_obuf), // OUT
	.a0(srcdr[15]), // IN
	.a1(srcwd[15]), // IN
	.a2(dstwd[15]), // IN
	.a3(locsrc[15]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_16
(
	.z(srcd_b16_obuf), // OUT
	.a0(srcdr[16]), // IN
	.a1(srcwd[16]), // IN
	.a2(dstwd[16]), // IN
	.a3(locsrc[16]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_17
(
	.z(srcd_b17_obuf), // OUT
	.a0(srcdr[17]), // IN
	.a1(srcwd[17]), // IN
	.a2(dstwd[17]), // IN
	.a3(locsrc[17]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_18
(
	.z(srcd_b18_obuf), // OUT
	.a0(srcdr[18]), // IN
	.a1(srcwd[18]), // IN
	.a2(dstwd[18]), // IN
	.a3(locsrc[18]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_19
(
	.z(srcd_b19_obuf), // OUT
	.a0(srcdr[19]), // IN
	.a1(srcwd[19]), // IN
	.a2(dstwd[19]), // IN
	.a3(locsrc[19]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_20
(
	.z(srcd_b20_obuf), // OUT
	.a0(srcdr[20]), // IN
	.a1(srcwd[20]), // IN
	.a2(dstwd[20]), // IN
	.a3(locsrc[20]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_21
(
	.z(srcd_b21_obuf), // OUT
	.a0(srcdr[21]), // IN
	.a1(srcwd[21]), // IN
	.a2(dstwd[21]), // IN
	.a3(locsrc[21]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_22
(
	.z(srcd_b22_obuf), // OUT
	.a0(srcdr[22]), // IN
	.a1(srcwd[22]), // IN
	.a2(dstwd[22]), // IN
	.a3(locsrc[22]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_23
(
	.z(srcd_b23_obuf), // OUT
	.a0(srcdr[23]), // IN
	.a1(srcwd[23]), // IN
	.a2(dstwd[23]), // IN
	.a3(locsrc[23]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_24
(
	.z(srcd_b24_obuf), // OUT
	.a0(srcdr[24]), // IN
	.a1(srcwd[24]), // IN
	.a2(dstwd[24]), // IN
	.a3(locsrc[24]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_25
(
	.z(srcd_b25_obuf), // OUT
	.a0(srcdr[25]), // IN
	.a1(srcwd[25]), // IN
	.a2(dstwd[25]), // IN
	.a3(locsrc[25]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_26
(
	.z(srcd_b26_obuf), // OUT
	.a0(srcdr[26]), // IN
	.a1(srcwd[26]), // IN
	.a2(dstwd[26]), // IN
	.a3(locsrc[26]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_27
(
	.z(srcd_b27_obuf), // OUT
	.a0(srcdr[27]), // IN
	.a1(srcwd[27]), // IN
	.a2(dstwd[27]), // IN
	.a3(locsrc[27]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_28
(
	.z(srcd_b28_obuf), // OUT
	.a0(srcdr[28]), // IN
	.a1(srcwd[28]), // IN
	.a2(dstwd[28]), // IN
	.a3(locsrc[28]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_29
(
	.z(srcd_b29_obuf), // OUT
	.a0(srcdr[29]), // IN
	.a1(srcwd[29]), // IN
	.a2(dstwd[29]), // IN
	.a3(locsrc[29]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_30
(
	.z(srcd_b30_obuf), // OUT
	.a0(srcdr[30]), // IN
	.a1(srcwd[30]), // IN
	.a2(dstwd[30]), // IN
	.a3(locsrc[30]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);
mx4 srcd_inst_31
(
	.z(srcd_b31_obuf), // OUT
	.a0(srcdr[31]), // IN
	.a1(srcwd[31]), // IN
	.a2(dstwd[31]), // IN
	.a3(locsrc[31]), // IN
	.s0(srcdsel_0), // IN
	.s1(srcdsel_1)  // IN
);

// REGIS-WA.NET (126) - srcdpt : fdsync32
fdsync32 srcdpt_inst
(
	.q({srcdpa_b0_obuf,srcdpa_b1_obuf,srcdpa_b2_obuf,srcdpa_b3_obuf,srcdpa_b4_obuf,srcdpa_b5_obuf,srcdpa_b6_obuf,srcdpa_b7_obuf,srcdpa_b8_obuf,srcdpa_b9_obuf,srcdpa_b10_obuf,srcdpa_b11_obuf,srcdpa_b12_obuf,srcdpa_b13_obuf,srcdpa_b14_obuf,srcdpa_b15_obuf,srcdpa_b16_obuf,srcdpa_b17_obuf,srcdpa_b18_obuf,srcdpa_b19_obuf,srcdpa_b20_obuf,srcdpa_b21_obuf,srcdpa_b22_obuf,srcdpa_b23_obuf,srcdpa_b24_obuf,srcdpa_b25_obuf,srcdpa_b26_obuf,srcdpa_b27_obuf,srcdpa_b28_obuf,srcdpa_b29_obuf,srcdpa_b30_obuf,srcdpa_b31_obuf}), // IO
	.d({srcd_b0_obuf,srcd_b1_obuf,srcd_b2_obuf,srcd_b3_obuf,srcd_b4_obuf,srcd_b5_obuf,srcd_b6_obuf,srcd_b7_obuf,srcd_b8_obuf,srcd_b9_obuf,srcd_b10_obuf,srcd_b11_obuf,srcd_b12_obuf,srcd_b13_obuf,srcd_b14_obuf,srcd_b15_obuf,srcd_b16_obuf,srcd_b17_obuf,srcd_b18_obuf,srcd_b19_obuf,srcd_b20_obuf,srcd_b21_obuf,srcd_b22_obuf,srcd_b23_obuf,srcd_b24_obuf,srcd_b25_obuf,srcd_b26_obuf,srcd_b27_obuf,srcd_b28_obuf,srcd_b29_obuf,srcd_b30_obuf,srcd_b31_obuf}), // IN
	.ld(exeb), // IN
	.clk(clk)  // IN
);

// REGIS-WA.NET (127) - srcdp : nivh
assign srcdp[0] = srcdpa_b0_obuf;
assign srcdp[1] = srcdpa_b1_obuf;
assign srcdp[2] = srcdpa_b2_obuf;
assign srcdp[3] = srcdpa_b3_obuf;
assign srcdp[4] = srcdpa_b4_obuf;
assign srcdp[5] = srcdpa_b5_obuf;
assign srcdp[6] = srcdpa_b6_obuf;
assign srcdp[7] = srcdpa_b7_obuf;
assign srcdp[8] = srcdpa_b8_obuf;
assign srcdp[9] = srcdpa_b9_obuf;
assign srcdp[10] = srcdpa_b10_obuf;
assign srcdp[11] = srcdpa_b11_obuf;
assign srcdp[12] = srcdpa_b12_obuf;
assign srcdp[13] = srcdpa_b13_obuf;
assign srcdp[14] = srcdpa_b14_obuf;
assign srcdp[15] = srcdpa_b15_obuf;
assign srcdp[16] = srcdpa_b16_obuf;
assign srcdp[17] = srcdpa_b17_obuf;
assign srcdp[18] = srcdpa_b18_obuf;
assign srcdp[19] = srcdpa_b19_obuf;
assign srcdp[20] = srcdpa_b20_obuf;
assign srcdp[21] = srcdpa_b21_obuf;
assign srcdp[22] = srcdpa_b22_obuf;
assign srcdp[23] = srcdpa_b23_obuf;
assign srcdp[24] = srcdpa_b24_obuf;
assign srcdp[25] = srcdpa_b25_obuf;
assign srcdp[26] = srcdpa_b26_obuf;
assign srcdp[27] = srcdpa_b27_obuf;
assign srcdp[28] = srcdpa_b28_obuf;
assign srcdp[29] = srcdpa_b29_obuf;
assign srcdp[30] = srcdpa_b30_obuf;
assign srcdp[31] = srcdpa_b31_obuf;

// REGIS-WA.NET (129) - dstd : mx4p
mx4 dstd_inst_0
(
	.z(dstd_b0_obuf), // OUT
	.a0(dstdr[0]), // IN
	.a1(dstwd[0]), // IN
	.a2(srcwd[0]), // IN
	.a3(zero32[0]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_1
(
	.z(dstd_b1_obuf), // OUT
	.a0(dstdr[1]), // IN
	.a1(dstwd[1]), // IN
	.a2(srcwd[1]), // IN
	.a3(zero32[1]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_2
(
	.z(dstd_b2_obuf), // OUT
	.a0(dstdr[2]), // IN
	.a1(dstwd[2]), // IN
	.a2(srcwd[2]), // IN
	.a3(zero32[2]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_3
(
	.z(dstd_b3_obuf), // OUT
	.a0(dstdr[3]), // IN
	.a1(dstwd[3]), // IN
	.a2(srcwd[3]), // IN
	.a3(zero32[3]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_4
(
	.z(dstd_b4_obuf), // OUT
	.a0(dstdr[4]), // IN
	.a1(dstwd[4]), // IN
	.a2(srcwd[4]), // IN
	.a3(zero32[4]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_5
(
	.z(dstd_b5_obuf), // OUT
	.a0(dstdr[5]), // IN
	.a1(dstwd[5]), // IN
	.a2(srcwd[5]), // IN
	.a3(zero32[5]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_6
(
	.z(dstd_b6_obuf), // OUT
	.a0(dstdr[6]), // IN
	.a1(dstwd[6]), // IN
	.a2(srcwd[6]), // IN
	.a3(zero32[6]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_7
(
	.z(dstd_b7_obuf), // OUT
	.a0(dstdr[7]), // IN
	.a1(dstwd[7]), // IN
	.a2(srcwd[7]), // IN
	.a3(zero32[7]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_8
(
	.z(dstd_b8_obuf), // OUT
	.a0(dstdr[8]), // IN
	.a1(dstwd[8]), // IN
	.a2(srcwd[8]), // IN
	.a3(zero32[8]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_9
(
	.z(dstd_b9_obuf), // OUT
	.a0(dstdr[9]), // IN
	.a1(dstwd[9]), // IN
	.a2(srcwd[9]), // IN
	.a3(zero32[9]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_10
(
	.z(dstd_b10_obuf), // OUT
	.a0(dstdr[10]), // IN
	.a1(dstwd[10]), // IN
	.a2(srcwd[10]), // IN
	.a3(zero32[10]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_11
(
	.z(dstd_b11_obuf), // OUT
	.a0(dstdr[11]), // IN
	.a1(dstwd[11]), // IN
	.a2(srcwd[11]), // IN
	.a3(zero32[11]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_12
(
	.z(dstd_b12_obuf), // OUT
	.a0(dstdr[12]), // IN
	.a1(dstwd[12]), // IN
	.a2(srcwd[12]), // IN
	.a3(zero32[12]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_13
(
	.z(dstd_b13_obuf), // OUT
	.a0(dstdr[13]), // IN
	.a1(dstwd[13]), // IN
	.a2(srcwd[13]), // IN
	.a3(zero32[13]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_14
(
	.z(dstd_b14_obuf), // OUT
	.a0(dstdr[14]), // IN
	.a1(dstwd[14]), // IN
	.a2(srcwd[14]), // IN
	.a3(zero32[14]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_15
(
	.z(dstd_b15_obuf), // OUT
	.a0(dstdr[15]), // IN
	.a1(dstwd[15]), // IN
	.a2(srcwd[15]), // IN
	.a3(zero32[15]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_16
(
	.z(dstd_b16_obuf), // OUT
	.a0(dstdr[16]), // IN
	.a1(dstwd[16]), // IN
	.a2(srcwd[16]), // IN
	.a3(zero32[16]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_17
(
	.z(dstd_b17_obuf), // OUT
	.a0(dstdr[17]), // IN
	.a1(dstwd[17]), // IN
	.a2(srcwd[17]), // IN
	.a3(zero32[17]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_18
(
	.z(dstd_b18_obuf), // OUT
	.a0(dstdr[18]), // IN
	.a1(dstwd[18]), // IN
	.a2(srcwd[18]), // IN
	.a3(zero32[18]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_19
(
	.z(dstd_b19_obuf), // OUT
	.a0(dstdr[19]), // IN
	.a1(dstwd[19]), // IN
	.a2(srcwd[19]), // IN
	.a3(zero32[19]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_20
(
	.z(dstd_b20_obuf), // OUT
	.a0(dstdr[20]), // IN
	.a1(dstwd[20]), // IN
	.a2(srcwd[20]), // IN
	.a3(zero32[20]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_21
(
	.z(dstd_b21_obuf), // OUT
	.a0(dstdr[21]), // IN
	.a1(dstwd[21]), // IN
	.a2(srcwd[21]), // IN
	.a3(zero32[21]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_22
(
	.z(dstd_b22_obuf), // OUT
	.a0(dstdr[22]), // IN
	.a1(dstwd[22]), // IN
	.a2(srcwd[22]), // IN
	.a3(zero32[22]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_23
(
	.z(dstd_b23_obuf), // OUT
	.a0(dstdr[23]), // IN
	.a1(dstwd[23]), // IN
	.a2(srcwd[23]), // IN
	.a3(zero32[23]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_24
(
	.z(dstd_b24_obuf), // OUT
	.a0(dstdr[24]), // IN
	.a1(dstwd[24]), // IN
	.a2(srcwd[24]), // IN
	.a3(zero32[24]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_25
(
	.z(dstd_b25_obuf), // OUT
	.a0(dstdr[25]), // IN
	.a1(dstwd[25]), // IN
	.a2(srcwd[25]), // IN
	.a3(zero32[25]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_26
(
	.z(dstd_b26_obuf), // OUT
	.a0(dstdr[26]), // IN
	.a1(dstwd[26]), // IN
	.a2(srcwd[26]), // IN
	.a3(zero32[26]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_27
(
	.z(dstd_b27_obuf), // OUT
	.a0(dstdr[27]), // IN
	.a1(dstwd[27]), // IN
	.a2(srcwd[27]), // IN
	.a3(zero32[27]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_28
(
	.z(dstd_b28_obuf), // OUT
	.a0(dstdr[28]), // IN
	.a1(dstwd[28]), // IN
	.a2(srcwd[28]), // IN
	.a3(zero32[28]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_29
(
	.z(dstd_b29_obuf), // OUT
	.a0(dstdr[29]), // IN
	.a1(dstwd[29]), // IN
	.a2(srcwd[29]), // IN
	.a3(zero32[29]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_30
(
	.z(dstd_b30_obuf), // OUT
	.a0(dstdr[30]), // IN
	.a1(dstwd[30]), // IN
	.a2(srcwd[30]), // IN
	.a3(zero32[30]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);
mx4 dstd_inst_31
(
	.z(dstd_b31_obuf), // OUT
	.a0(dstdr[31]), // IN
	.a1(dstwd[31]), // IN
	.a2(srcwd[31]), // IN
	.a3(zero32[31]), // IN
	.s0(dstdsel_0), // IN
	.s1(dstdsel_1)  // IN
);

// REGIS-WA.NET (131) - dstdpt : fd1q
fd1q dstdpt_inst_0
(
	.q(dstdpt0[0]), // OUT
	.d(dstd_b0_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_1
(
	.q(dstdpt0[1]), // OUT
	.d(dstd_b1_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_2
(
	.q(dstdpt0[2]), // OUT
	.d(dstd_b2_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_3
(
	.q(dstdpt0[3]), // OUT
	.d(dstd_b3_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_4
(
	.q(dstdpt0[4]), // OUT
	.d(dstd_b4_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_5
(
	.q(dstdpt0[5]), // OUT
	.d(dstd_b5_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_6
(
	.q(dstdpt0[6]), // OUT
	.d(dstd_b6_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_7
(
	.q(dstdpt0[7]), // OUT
	.d(dstd_b7_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_8
(
	.q(dstdpt0[8]), // OUT
	.d(dstd_b8_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_9
(
	.q(dstdpt0[9]), // OUT
	.d(dstd_b9_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_10
(
	.q(dstdpt0[10]), // OUT
	.d(dstd_b10_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_11
(
	.q(dstdpt0[11]), // OUT
	.d(dstd_b11_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_12
(
	.q(dstdpt0[12]), // OUT
	.d(dstd_b12_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_13
(
	.q(dstdpt0[13]), // OUT
	.d(dstd_b13_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_14
(
	.q(dstdpt0[14]), // OUT
	.d(dstd_b14_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_15
(
	.q(dstdpt0[15]), // OUT
	.d(dstd_b15_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_16
(
	.q(dstdpt0[16]), // OUT
	.d(dstd_b16_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_17
(
	.q(dstdpt0[17]), // OUT
	.d(dstd_b17_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_18
(
	.q(dstdpt0[18]), // OUT
	.d(dstd_b18_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_19
(
	.q(dstdpt0[19]), // OUT
	.d(dstd_b19_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_20
(
	.q(dstdpt0[20]), // OUT
	.d(dstd_b20_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_21
(
	.q(dstdpt0[21]), // OUT
	.d(dstd_b21_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_22
(
	.q(dstdpt0[22]), // OUT
	.d(dstd_b22_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_23
(
	.q(dstdpt0[23]), // OUT
	.d(dstd_b23_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_24
(
	.q(dstdpt0[24]), // OUT
	.d(dstd_b24_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_25
(
	.q(dstdpt0[25]), // OUT
	.d(dstd_b25_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_26
(
	.q(dstdpt0[26]), // OUT
	.d(dstd_b26_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_27
(
	.q(dstdpt0[27]), // OUT
	.d(dstd_b27_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_28
(
	.q(dstdpt0[28]), // OUT
	.d(dstd_b28_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_29
(
	.q(dstdpt0[29]), // OUT
	.d(dstd_b29_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_30
(
	.q(dstdpt0[30]), // OUT
	.d(dstd_b30_obuf), // IN
	.cp(clk)  // IN
);
fd1q dstdpt_inst_31
(
	.q(dstdpt0[31]), // OUT
	.d(dstd_b31_obuf), // IN
	.cp(clk)  // IN
);

// REGIS-WA.NET (132) - mtx_doverp : fd1qu
fd1q mtx_doverp_inst
(
	.q(mtx_doverp), // OUT
	.d(mtx_dover), // IN
	.cp(clk)  // IN
);

// REGIS-WA.NET (133) - dstdpt1 : mx2p
mx2 dstdpt1_inst_0
(
	.z(dstdpt1[0]), // OUT
	.a0(dstdpt0[0]), // IN
	.a1(mem_data[0]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_1
(
	.z(dstdpt1[1]), // OUT
	.a0(dstdpt0[1]), // IN
	.a1(mem_data[1]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_2
(
	.z(dstdpt1[2]), // OUT
	.a0(dstdpt0[2]), // IN
	.a1(mem_data[2]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_3
(
	.z(dstdpt1[3]), // OUT
	.a0(dstdpt0[3]), // IN
	.a1(mem_data[3]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_4
(
	.z(dstdpt1[4]), // OUT
	.a0(dstdpt0[4]), // IN
	.a1(mem_data[4]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_5
(
	.z(dstdpt1[5]), // OUT
	.a0(dstdpt0[5]), // IN
	.a1(mem_data[5]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_6
(
	.z(dstdpt1[6]), // OUT
	.a0(dstdpt0[6]), // IN
	.a1(mem_data[6]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_7
(
	.z(dstdpt1[7]), // OUT
	.a0(dstdpt0[7]), // IN
	.a1(mem_data[7]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_8
(
	.z(dstdpt1[8]), // OUT
	.a0(dstdpt0[8]), // IN
	.a1(mem_data[8]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_9
(
	.z(dstdpt1[9]), // OUT
	.a0(dstdpt0[9]), // IN
	.a1(mem_data[9]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_10
(
	.z(dstdpt1[10]), // OUT
	.a0(dstdpt0[10]), // IN
	.a1(mem_data[10]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_11
(
	.z(dstdpt1[11]), // OUT
	.a0(dstdpt0[11]), // IN
	.a1(mem_data[11]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_12
(
	.z(dstdpt1[12]), // OUT
	.a0(dstdpt0[12]), // IN
	.a1(mem_data[12]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_13
(
	.z(dstdpt1[13]), // OUT
	.a0(dstdpt0[13]), // IN
	.a1(mem_data[13]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_14
(
	.z(dstdpt1[14]), // OUT
	.a0(dstdpt0[14]), // IN
	.a1(mem_data[14]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_15
(
	.z(dstdpt1[15]), // OUT
	.a0(dstdpt0[15]), // IN
	.a1(mem_data[15]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_16
(
	.z(dstdpt1[16]), // OUT
	.a0(dstdpt0[16]), // IN
	.a1(mem_data[16]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_17
(
	.z(dstdpt1[17]), // OUT
	.a0(dstdpt0[17]), // IN
	.a1(mem_data[17]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_18
(
	.z(dstdpt1[18]), // OUT
	.a0(dstdpt0[18]), // IN
	.a1(mem_data[18]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_19
(
	.z(dstdpt1[19]), // OUT
	.a0(dstdpt0[19]), // IN
	.a1(mem_data[19]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_20
(
	.z(dstdpt1[20]), // OUT
	.a0(dstdpt0[20]), // IN
	.a1(mem_data[20]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_21
(
	.z(dstdpt1[21]), // OUT
	.a0(dstdpt0[21]), // IN
	.a1(mem_data[21]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_22
(
	.z(dstdpt1[22]), // OUT
	.a0(dstdpt0[22]), // IN
	.a1(mem_data[22]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_23
(
	.z(dstdpt1[23]), // OUT
	.a0(dstdpt0[23]), // IN
	.a1(mem_data[23]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_24
(
	.z(dstdpt1[24]), // OUT
	.a0(dstdpt0[24]), // IN
	.a1(mem_data[24]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_25
(
	.z(dstdpt1[25]), // OUT
	.a0(dstdpt0[25]), // IN
	.a1(mem_data[25]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_26
(
	.z(dstdpt1[26]), // OUT
	.a0(dstdpt0[26]), // IN
	.a1(mem_data[26]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_27
(
	.z(dstdpt1[27]), // OUT
	.a0(dstdpt0[27]), // IN
	.a1(mem_data[27]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_28
(
	.z(dstdpt1[28]), // OUT
	.a0(dstdpt0[28]), // IN
	.a1(mem_data[28]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_29
(
	.z(dstdpt1[29]), // OUT
	.a0(dstdpt0[29]), // IN
	.a1(mem_data[29]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_30
(
	.z(dstdpt1[30]), // OUT
	.a0(dstdpt0[30]), // IN
	.a1(mem_data[30]), // IN
	.s(mtx_doverp)  // IN
);
mx2 dstdpt1_inst_31
(
	.z(dstdpt1[31]), // OUT
	.a0(dstdpt0[31]), // IN
	.a1(mem_data[31]), // IN
	.s(mtx_doverp)  // IN
);

// REGIS-WA.NET (134) - dstdp : nivh
assign dstdp[0] = dstdpt1[0];
assign dstdp[1] = dstdpt1[1];
assign dstdp[2] = dstdpt1[2];
assign dstdp[3] = dstdpt1[3];
assign dstdp[4] = dstdpt1[4];
assign dstdp[5] = dstdpt1[5];
assign dstdp[6] = dstdpt1[6];
assign dstdp[7] = dstdpt1[7];
assign dstdp[8] = dstdpt1[8];
assign dstdp[9] = dstdpt1[9];
assign dstdp[10] = dstdpt1[10];
assign dstdp[11] = dstdpt1[11];
assign dstdp[12] = dstdpt1[12];
assign dstdp[13] = dstdpt1[13];
assign dstdp[14] = dstdpt1[14];
assign dstdp[15] = dstdpt1[15];
assign dstdp[16] = dstdpt1[16];
assign dstdp[17] = dstdpt1[17];
assign dstdp[18] = dstdpt1[18];
assign dstdp[19] = dstdpt1[19];
assign dstdp[20] = dstdpt1[20];
assign dstdp[21] = dstdpt1[21];
assign dstdp[22] = dstdpt1[22];
assign dstdp[23] = dstdpt1[23];
assign dstdp[24] = dstdpt1[24];
assign dstdp[25] = dstdpt1[25];
assign dstdp[26] = dstdpt1[26];
assign dstdp[27] = dstdpt1[27];
assign dstdp[28] = dstdpt1[28];
assign dstdp[29] = dstdpt1[29];
assign dstdp[30] = dstdpt1[30];
assign dstdp[31] = dstdpt1[31];
endmodule
