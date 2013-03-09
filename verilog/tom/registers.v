`include "defs.v"

module registers
(
	output [0:31] srcd;
	output [0:31] srcdp;
	output [0:31] srcdpa;
	output [0:31] dstd;
	output [0:31] dstdp;
	input clk,
	input [0:5] dsta;
	input dstrwen_n,
	input [0:31] dstwd;
	input exe,
	input locden,
	input [0:31] locsrc;
	input [0:31] mem_data;
	input mtx_dover,
	input [0:5] srca;
	input srcrwen_n,
	input [0:31] srcwd
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
	.equal /* OUT */ (addreq),
	.a /* IN */ ({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}),
	.b /* IN */ ({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]})
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
assign stba = clk;

// REGIS-WA.NET (87) - stbb : dly8
assign stbb = stba;

// REGIS-WA.NET (88) - stbc : dly8
assign stbc = stbb;

// REGIS-WA.NET (89) - stbd : dly8
assign stbd = stbc;

// REGIS-WA.NET (90) - stbe : dly8
assign stbe = stbd;

// REGIS-WA.NET (91) - stb : dly8
assign stb = stbe;

// REGIS-WA.NET (93) - reg_ram : rd64x32
rd64x32 reg_ram_inst
(
	.qa0 /* OUT */ (srcdr_31),
	.qa1 /* OUT */ (srcdr_30),
	.qa2 /* OUT */ (srcdr_29),
	.qa3 /* OUT */ (srcdr_28),
	.qa4 /* OUT */ (srcdr_27),
	.qa5 /* OUT */ (srcdr_26),
	.qa6 /* OUT */ (srcdr_25),
	.qa7 /* OUT */ (srcdr_24),
	.qa8 /* OUT */ (srcdr_23),
	.qa9 /* OUT */ (srcdr_22),
	.qa10 /* OUT */ (srcdr_21),
	.qa11 /* OUT */ (srcdr_20),
	.qa12 /* OUT */ (srcdr_19),
	.qa13 /* OUT */ (srcdr_18),
	.qa14 /* OUT */ (srcdr_17),
	.qa15 /* OUT */ (srcdr_16),
	.qa16 /* OUT */ (srcdr_15),
	.qa17 /* OUT */ (srcdr_14),
	.qa18 /* OUT */ (srcdr_13),
	.qa19 /* OUT */ (srcdr_12),
	.qa20 /* OUT */ (srcdr_11),
	.qa21 /* OUT */ (srcdr_10),
	.qa22 /* OUT */ (srcdr_9),
	.qa23 /* OUT */ (srcdr_8),
	.qa24 /* OUT */ (srcdr_7),
	.qa25 /* OUT */ (srcdr_6),
	.qa26 /* OUT */ (srcdr_5),
	.qa27 /* OUT */ (srcdr_4),
	.qa28 /* OUT */ (srcdr_3),
	.qa29 /* OUT */ (srcdr_2),
	.qa30 /* OUT */ (srcdr_1),
	.qa31 /* OUT */ (srcdr_0),
	.qb0 /* OUT */ (dstdr_31),
	.qb1 /* OUT */ (dstdr_30),
	.qb2 /* OUT */ (dstdr_29),
	.qb3 /* OUT */ (dstdr_28),
	.qb4 /* OUT */ (dstdr_27),
	.qb5 /* OUT */ (dstdr_26),
	.qb6 /* OUT */ (dstdr_25),
	.qb7 /* OUT */ (dstdr_24),
	.qb8 /* OUT */ (dstdr_23),
	.qb9 /* OUT */ (dstdr_22),
	.qb10 /* OUT */ (dstdr_21),
	.qb11 /* OUT */ (dstdr_20),
	.qb12 /* OUT */ (dstdr_19),
	.qb13 /* OUT */ (dstdr_18),
	.qb14 /* OUT */ (dstdr_17),
	.qb15 /* OUT */ (dstdr_16),
	.qb16 /* OUT */ (dstdr_15),
	.qb17 /* OUT */ (dstdr_14),
	.qb18 /* OUT */ (dstdr_13),
	.qb19 /* OUT */ (dstdr_12),
	.qb20 /* OUT */ (dstdr_11),
	.qb21 /* OUT */ (dstdr_10),
	.qb22 /* OUT */ (dstdr_9),
	.qb23 /* OUT */ (dstdr_8),
	.qb24 /* OUT */ (dstdr_7),
	.qb25 /* OUT */ (dstdr_6),
	.qb26 /* OUT */ (dstdr_5),
	.qb27 /* OUT */ (dstdr_4),
	.qb28 /* OUT */ (dstdr_3),
	.qb29 /* OUT */ (dstdr_2),
	.qb30 /* OUT */ (dstdr_1),
	.qb31 /* OUT */ (dstdr_0),
	.nwea /* IN */ (srcrwen_n),
	.clka /* IN */ (stb),
	.aa0 /* IN */ (srca[5]),
	.aa1 /* IN */ (srca[4]),
	.aa2 /* IN */ (srca[3]),
	.aa3 /* IN */ (srca[2]),
	.aa4 /* IN */ (srca[1]),
	.aa5 /* IN */ (srca[0]),
	.da0 /* IN */ (srcwd[31]),
	.da1 /* IN */ (srcwd[30]),
	.da2 /* IN */ (srcwd[29]),
	.da3 /* IN */ (srcwd[28]),
	.da4 /* IN */ (srcwd[27]),
	.da5 /* IN */ (srcwd[26]),
	.da6 /* IN */ (srcwd[25]),
	.da7 /* IN */ (srcwd[24]),
	.da8 /* IN */ (srcwd[23]),
	.da9 /* IN */ (srcwd[22]),
	.da10 /* IN */ (srcwd[21]),
	.da11 /* IN */ (srcwd[20]),
	.da12 /* IN */ (srcwd[19]),
	.da13 /* IN */ (srcwd[18]),
	.da14 /* IN */ (srcwd[17]),
	.da15 /* IN */ (srcwd[16]),
	.da16 /* IN */ (srcwd[15]),
	.da17 /* IN */ (srcwd[14]),
	.da18 /* IN */ (srcwd[13]),
	.da19 /* IN */ (srcwd[12]),
	.da20 /* IN */ (srcwd[11]),
	.da21 /* IN */ (srcwd[10]),
	.da22 /* IN */ (srcwd[9]),
	.da23 /* IN */ (srcwd[8]),
	.da24 /* IN */ (srcwd[7]),
	.da25 /* IN */ (srcwd[6]),
	.da26 /* IN */ (srcwd[5]),
	.da27 /* IN */ (srcwd[4]),
	.da28 /* IN */ (srcwd[3]),
	.da29 /* IN */ (srcwd[2]),
	.da30 /* IN */ (srcwd[1]),
	.da31 /* IN */ (srcwd[0]),
	.nweb /* IN */ (dstrwen_n),
	.clkb /* IN */ (stb),
	.ab0 /* IN */ (dsta[5]),
	.ab1 /* IN */ (dsta[4]),
	.ab2 /* IN */ (dsta[3]),
	.ab3 /* IN */ (dsta[2]),
	.ab4 /* IN */ (dsta[1]),
	.ab5 /* IN */ (dsta[0]),
	.db0 /* IN */ (dstwd[31]),
	.db1 /* IN */ (dstwd[30]),
	.db2 /* IN */ (dstwd[29]),
	.db3 /* IN */ (dstwd[28]),
	.db4 /* IN */ (dstwd[27]),
	.db5 /* IN */ (dstwd[26]),
	.db6 /* IN */ (dstwd[25]),
	.db7 /* IN */ (dstwd[24]),
	.db8 /* IN */ (dstwd[23]),
	.db9 /* IN */ (dstwd[22]),
	.db10 /* IN */ (dstwd[21]),
	.db11 /* IN */ (dstwd[20]),
	.db12 /* IN */ (dstwd[19]),
	.db13 /* IN */ (dstwd[18]),
	.db14 /* IN */ (dstwd[17]),
	.db15 /* IN */ (dstwd[16]),
	.db16 /* IN */ (dstwd[15]),
	.db17 /* IN */ (dstwd[14]),
	.db18 /* IN */ (dstwd[13]),
	.db19 /* IN */ (dstwd[12]),
	.db20 /* IN */ (dstwd[11]),
	.db21 /* IN */ (dstwd[10]),
	.db22 /* IN */ (dstwd[9]),
	.db23 /* IN */ (dstwd[8]),
	.db24 /* IN */ (dstwd[7]),
	.db25 /* IN */ (dstwd[6]),
	.db26 /* IN */ (dstwd[5]),
	.db27 /* IN */ (dstwd[4]),
	.db28 /* IN */ (dstwd[3]),
	.db29 /* IN */ (dstwd[2]),
	.db30 /* IN */ (dstwd[1]),
	.db31 /* IN */ (dstwd[0])
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
	.z /* OUT */ (srcd_b0_obuf),
	.a0 /* IN */ (srcdr[0]),
	.a1 /* IN */ (srcwd[0]),
	.a2 /* IN */ (dstwd[0]),
	.a3 /* IN */ (locsrc[0]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_1
(
	.z /* OUT */ (srcd_b1_obuf),
	.a0 /* IN */ (srcdr[1]),
	.a1 /* IN */ (srcwd[1]),
	.a2 /* IN */ (dstwd[1]),
	.a3 /* IN */ (locsrc[1]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_2
(
	.z /* OUT */ (srcd_b2_obuf),
	.a0 /* IN */ (srcdr[2]),
	.a1 /* IN */ (srcwd[2]),
	.a2 /* IN */ (dstwd[2]),
	.a3 /* IN */ (locsrc[2]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_3
(
	.z /* OUT */ (srcd_b3_obuf),
	.a0 /* IN */ (srcdr[3]),
	.a1 /* IN */ (srcwd[3]),
	.a2 /* IN */ (dstwd[3]),
	.a3 /* IN */ (locsrc[3]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_4
(
	.z /* OUT */ (srcd_b4_obuf),
	.a0 /* IN */ (srcdr[4]),
	.a1 /* IN */ (srcwd[4]),
	.a2 /* IN */ (dstwd[4]),
	.a3 /* IN */ (locsrc[4]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_5
(
	.z /* OUT */ (srcd_b5_obuf),
	.a0 /* IN */ (srcdr[5]),
	.a1 /* IN */ (srcwd[5]),
	.a2 /* IN */ (dstwd[5]),
	.a3 /* IN */ (locsrc[5]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_6
(
	.z /* OUT */ (srcd_b6_obuf),
	.a0 /* IN */ (srcdr[6]),
	.a1 /* IN */ (srcwd[6]),
	.a2 /* IN */ (dstwd[6]),
	.a3 /* IN */ (locsrc[6]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_7
(
	.z /* OUT */ (srcd_b7_obuf),
	.a0 /* IN */ (srcdr[7]),
	.a1 /* IN */ (srcwd[7]),
	.a2 /* IN */ (dstwd[7]),
	.a3 /* IN */ (locsrc[7]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_8
(
	.z /* OUT */ (srcd_b8_obuf),
	.a0 /* IN */ (srcdr[8]),
	.a1 /* IN */ (srcwd[8]),
	.a2 /* IN */ (dstwd[8]),
	.a3 /* IN */ (locsrc[8]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_9
(
	.z /* OUT */ (srcd_b9_obuf),
	.a0 /* IN */ (srcdr[9]),
	.a1 /* IN */ (srcwd[9]),
	.a2 /* IN */ (dstwd[9]),
	.a3 /* IN */ (locsrc[9]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_10
(
	.z /* OUT */ (srcd_b10_obuf),
	.a0 /* IN */ (srcdr[10]),
	.a1 /* IN */ (srcwd[10]),
	.a2 /* IN */ (dstwd[10]),
	.a3 /* IN */ (locsrc[10]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_11
(
	.z /* OUT */ (srcd_b11_obuf),
	.a0 /* IN */ (srcdr[11]),
	.a1 /* IN */ (srcwd[11]),
	.a2 /* IN */ (dstwd[11]),
	.a3 /* IN */ (locsrc[11]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_12
(
	.z /* OUT */ (srcd_b12_obuf),
	.a0 /* IN */ (srcdr[12]),
	.a1 /* IN */ (srcwd[12]),
	.a2 /* IN */ (dstwd[12]),
	.a3 /* IN */ (locsrc[12]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_13
(
	.z /* OUT */ (srcd_b13_obuf),
	.a0 /* IN */ (srcdr[13]),
	.a1 /* IN */ (srcwd[13]),
	.a2 /* IN */ (dstwd[13]),
	.a3 /* IN */ (locsrc[13]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_14
(
	.z /* OUT */ (srcd_b14_obuf),
	.a0 /* IN */ (srcdr[14]),
	.a1 /* IN */ (srcwd[14]),
	.a2 /* IN */ (dstwd[14]),
	.a3 /* IN */ (locsrc[14]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_15
(
	.z /* OUT */ (srcd_b15_obuf),
	.a0 /* IN */ (srcdr[15]),
	.a1 /* IN */ (srcwd[15]),
	.a2 /* IN */ (dstwd[15]),
	.a3 /* IN */ (locsrc[15]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_16
(
	.z /* OUT */ (srcd_b16_obuf),
	.a0 /* IN */ (srcdr[16]),
	.a1 /* IN */ (srcwd[16]),
	.a2 /* IN */ (dstwd[16]),
	.a3 /* IN */ (locsrc[16]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_17
(
	.z /* OUT */ (srcd_b17_obuf),
	.a0 /* IN */ (srcdr[17]),
	.a1 /* IN */ (srcwd[17]),
	.a2 /* IN */ (dstwd[17]),
	.a3 /* IN */ (locsrc[17]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_18
(
	.z /* OUT */ (srcd_b18_obuf),
	.a0 /* IN */ (srcdr[18]),
	.a1 /* IN */ (srcwd[18]),
	.a2 /* IN */ (dstwd[18]),
	.a3 /* IN */ (locsrc[18]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_19
(
	.z /* OUT */ (srcd_b19_obuf),
	.a0 /* IN */ (srcdr[19]),
	.a1 /* IN */ (srcwd[19]),
	.a2 /* IN */ (dstwd[19]),
	.a3 /* IN */ (locsrc[19]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_20
(
	.z /* OUT */ (srcd_b20_obuf),
	.a0 /* IN */ (srcdr[20]),
	.a1 /* IN */ (srcwd[20]),
	.a2 /* IN */ (dstwd[20]),
	.a3 /* IN */ (locsrc[20]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_21
(
	.z /* OUT */ (srcd_b21_obuf),
	.a0 /* IN */ (srcdr[21]),
	.a1 /* IN */ (srcwd[21]),
	.a2 /* IN */ (dstwd[21]),
	.a3 /* IN */ (locsrc[21]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_22
(
	.z /* OUT */ (srcd_b22_obuf),
	.a0 /* IN */ (srcdr[22]),
	.a1 /* IN */ (srcwd[22]),
	.a2 /* IN */ (dstwd[22]),
	.a3 /* IN */ (locsrc[22]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_23
(
	.z /* OUT */ (srcd_b23_obuf),
	.a0 /* IN */ (srcdr[23]),
	.a1 /* IN */ (srcwd[23]),
	.a2 /* IN */ (dstwd[23]),
	.a3 /* IN */ (locsrc[23]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_24
(
	.z /* OUT */ (srcd_b24_obuf),
	.a0 /* IN */ (srcdr[24]),
	.a1 /* IN */ (srcwd[24]),
	.a2 /* IN */ (dstwd[24]),
	.a3 /* IN */ (locsrc[24]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_25
(
	.z /* OUT */ (srcd_b25_obuf),
	.a0 /* IN */ (srcdr[25]),
	.a1 /* IN */ (srcwd[25]),
	.a2 /* IN */ (dstwd[25]),
	.a3 /* IN */ (locsrc[25]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_26
(
	.z /* OUT */ (srcd_b26_obuf),
	.a0 /* IN */ (srcdr[26]),
	.a1 /* IN */ (srcwd[26]),
	.a2 /* IN */ (dstwd[26]),
	.a3 /* IN */ (locsrc[26]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_27
(
	.z /* OUT */ (srcd_b27_obuf),
	.a0 /* IN */ (srcdr[27]),
	.a1 /* IN */ (srcwd[27]),
	.a2 /* IN */ (dstwd[27]),
	.a3 /* IN */ (locsrc[27]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_28
(
	.z /* OUT */ (srcd_b28_obuf),
	.a0 /* IN */ (srcdr[28]),
	.a1 /* IN */ (srcwd[28]),
	.a2 /* IN */ (dstwd[28]),
	.a3 /* IN */ (locsrc[28]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_29
(
	.z /* OUT */ (srcd_b29_obuf),
	.a0 /* IN */ (srcdr[29]),
	.a1 /* IN */ (srcwd[29]),
	.a2 /* IN */ (dstwd[29]),
	.a3 /* IN */ (locsrc[29]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_30
(
	.z /* OUT */ (srcd_b30_obuf),
	.a0 /* IN */ (srcdr[30]),
	.a1 /* IN */ (srcwd[30]),
	.a2 /* IN */ (dstwd[30]),
	.a3 /* IN */ (locsrc[30]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);
mx4 srcd_inst_31
(
	.z /* OUT */ (srcd_b31_obuf),
	.a0 /* IN */ (srcdr[31]),
	.a1 /* IN */ (srcwd[31]),
	.a2 /* IN */ (dstwd[31]),
	.a3 /* IN */ (locsrc[31]),
	.s0 /* IN */ (srcdsel_0),
	.s1 /* IN */ (srcdsel_1)
);

// REGIS-WA.NET (126) - srcdpt : fdsync32
fdsync32 srcdpt_inst
(
	.q /* OUT */ ({srcdpa_b0_obuf,srcdpa_b1_obuf,srcdpa_b2_obuf,srcdpa_b3_obuf,srcdpa_b4_obuf,srcdpa_b5_obuf,srcdpa_b6_obuf,srcdpa_b7_obuf,srcdpa_b8_obuf,srcdpa_b9_obuf,srcdpa_b10_obuf,srcdpa_b11_obuf,srcdpa_b12_obuf,srcdpa_b13_obuf,srcdpa_b14_obuf,srcdpa_b15_obuf,srcdpa_b16_obuf,srcdpa_b17_obuf,srcdpa_b18_obuf,srcdpa_b19_obuf,srcdpa_b20_obuf,srcdpa_b21_obuf,srcdpa_b22_obuf,srcdpa_b23_obuf,srcdpa_b24_obuf,srcdpa_b25_obuf,srcdpa_b26_obuf,srcdpa_b27_obuf,srcdpa_b28_obuf,srcdpa_b29_obuf,srcdpa_b30_obuf,srcdpa_b31_obuf}),
	.d /* IN */ ({srcd_b0_obuf,srcd_b1_obuf,srcd_b2_obuf,srcd_b3_obuf,srcd_b4_obuf,srcd_b5_obuf,srcd_b6_obuf,srcd_b7_obuf,srcd_b8_obuf,srcd_b9_obuf,srcd_b10_obuf,srcd_b11_obuf,srcd_b12_obuf,srcd_b13_obuf,srcd_b14_obuf,srcd_b15_obuf,srcd_b16_obuf,srcd_b17_obuf,srcd_b18_obuf,srcd_b19_obuf,srcd_b20_obuf,srcd_b21_obuf,srcd_b22_obuf,srcd_b23_obuf,srcd_b24_obuf,srcd_b25_obuf,srcd_b26_obuf,srcd_b27_obuf,srcd_b28_obuf,srcd_b29_obuf,srcd_b30_obuf,srcd_b31_obuf}),
	.ld /* IN */ (exeb),
	.clk /* IN */ (clk)
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
	.z /* OUT */ (dstd_b0_obuf),
	.a0 /* IN */ (dstdr[0]),
	.a1 /* IN */ (dstwd[0]),
	.a2 /* IN */ (srcwd[0]),
	.a3 /* IN */ (zero32[0]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_1
(
	.z /* OUT */ (dstd_b1_obuf),
	.a0 /* IN */ (dstdr[1]),
	.a1 /* IN */ (dstwd[1]),
	.a2 /* IN */ (srcwd[1]),
	.a3 /* IN */ (zero32[1]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_2
(
	.z /* OUT */ (dstd_b2_obuf),
	.a0 /* IN */ (dstdr[2]),
	.a1 /* IN */ (dstwd[2]),
	.a2 /* IN */ (srcwd[2]),
	.a3 /* IN */ (zero32[2]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_3
(
	.z /* OUT */ (dstd_b3_obuf),
	.a0 /* IN */ (dstdr[3]),
	.a1 /* IN */ (dstwd[3]),
	.a2 /* IN */ (srcwd[3]),
	.a3 /* IN */ (zero32[3]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_4
(
	.z /* OUT */ (dstd_b4_obuf),
	.a0 /* IN */ (dstdr[4]),
	.a1 /* IN */ (dstwd[4]),
	.a2 /* IN */ (srcwd[4]),
	.a3 /* IN */ (zero32[4]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_5
(
	.z /* OUT */ (dstd_b5_obuf),
	.a0 /* IN */ (dstdr[5]),
	.a1 /* IN */ (dstwd[5]),
	.a2 /* IN */ (srcwd[5]),
	.a3 /* IN */ (zero32[5]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_6
(
	.z /* OUT */ (dstd_b6_obuf),
	.a0 /* IN */ (dstdr[6]),
	.a1 /* IN */ (dstwd[6]),
	.a2 /* IN */ (srcwd[6]),
	.a3 /* IN */ (zero32[6]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_7
(
	.z /* OUT */ (dstd_b7_obuf),
	.a0 /* IN */ (dstdr[7]),
	.a1 /* IN */ (dstwd[7]),
	.a2 /* IN */ (srcwd[7]),
	.a3 /* IN */ (zero32[7]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_8
(
	.z /* OUT */ (dstd_b8_obuf),
	.a0 /* IN */ (dstdr[8]),
	.a1 /* IN */ (dstwd[8]),
	.a2 /* IN */ (srcwd[8]),
	.a3 /* IN */ (zero32[8]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_9
(
	.z /* OUT */ (dstd_b9_obuf),
	.a0 /* IN */ (dstdr[9]),
	.a1 /* IN */ (dstwd[9]),
	.a2 /* IN */ (srcwd[9]),
	.a3 /* IN */ (zero32[9]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_10
(
	.z /* OUT */ (dstd_b10_obuf),
	.a0 /* IN */ (dstdr[10]),
	.a1 /* IN */ (dstwd[10]),
	.a2 /* IN */ (srcwd[10]),
	.a3 /* IN */ (zero32[10]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_11
(
	.z /* OUT */ (dstd_b11_obuf),
	.a0 /* IN */ (dstdr[11]),
	.a1 /* IN */ (dstwd[11]),
	.a2 /* IN */ (srcwd[11]),
	.a3 /* IN */ (zero32[11]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_12
(
	.z /* OUT */ (dstd_b12_obuf),
	.a0 /* IN */ (dstdr[12]),
	.a1 /* IN */ (dstwd[12]),
	.a2 /* IN */ (srcwd[12]),
	.a3 /* IN */ (zero32[12]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_13
(
	.z /* OUT */ (dstd_b13_obuf),
	.a0 /* IN */ (dstdr[13]),
	.a1 /* IN */ (dstwd[13]),
	.a2 /* IN */ (srcwd[13]),
	.a3 /* IN */ (zero32[13]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_14
(
	.z /* OUT */ (dstd_b14_obuf),
	.a0 /* IN */ (dstdr[14]),
	.a1 /* IN */ (dstwd[14]),
	.a2 /* IN */ (srcwd[14]),
	.a3 /* IN */ (zero32[14]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_15
(
	.z /* OUT */ (dstd_b15_obuf),
	.a0 /* IN */ (dstdr[15]),
	.a1 /* IN */ (dstwd[15]),
	.a2 /* IN */ (srcwd[15]),
	.a3 /* IN */ (zero32[15]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_16
(
	.z /* OUT */ (dstd_b16_obuf),
	.a0 /* IN */ (dstdr[16]),
	.a1 /* IN */ (dstwd[16]),
	.a2 /* IN */ (srcwd[16]),
	.a3 /* IN */ (zero32[16]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_17
(
	.z /* OUT */ (dstd_b17_obuf),
	.a0 /* IN */ (dstdr[17]),
	.a1 /* IN */ (dstwd[17]),
	.a2 /* IN */ (srcwd[17]),
	.a3 /* IN */ (zero32[17]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_18
(
	.z /* OUT */ (dstd_b18_obuf),
	.a0 /* IN */ (dstdr[18]),
	.a1 /* IN */ (dstwd[18]),
	.a2 /* IN */ (srcwd[18]),
	.a3 /* IN */ (zero32[18]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_19
(
	.z /* OUT */ (dstd_b19_obuf),
	.a0 /* IN */ (dstdr[19]),
	.a1 /* IN */ (dstwd[19]),
	.a2 /* IN */ (srcwd[19]),
	.a3 /* IN */ (zero32[19]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_20
(
	.z /* OUT */ (dstd_b20_obuf),
	.a0 /* IN */ (dstdr[20]),
	.a1 /* IN */ (dstwd[20]),
	.a2 /* IN */ (srcwd[20]),
	.a3 /* IN */ (zero32[20]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_21
(
	.z /* OUT */ (dstd_b21_obuf),
	.a0 /* IN */ (dstdr[21]),
	.a1 /* IN */ (dstwd[21]),
	.a2 /* IN */ (srcwd[21]),
	.a3 /* IN */ (zero32[21]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_22
(
	.z /* OUT */ (dstd_b22_obuf),
	.a0 /* IN */ (dstdr[22]),
	.a1 /* IN */ (dstwd[22]),
	.a2 /* IN */ (srcwd[22]),
	.a3 /* IN */ (zero32[22]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_23
(
	.z /* OUT */ (dstd_b23_obuf),
	.a0 /* IN */ (dstdr[23]),
	.a1 /* IN */ (dstwd[23]),
	.a2 /* IN */ (srcwd[23]),
	.a3 /* IN */ (zero32[23]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_24
(
	.z /* OUT */ (dstd_b24_obuf),
	.a0 /* IN */ (dstdr[24]),
	.a1 /* IN */ (dstwd[24]),
	.a2 /* IN */ (srcwd[24]),
	.a3 /* IN */ (zero32[24]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_25
(
	.z /* OUT */ (dstd_b25_obuf),
	.a0 /* IN */ (dstdr[25]),
	.a1 /* IN */ (dstwd[25]),
	.a2 /* IN */ (srcwd[25]),
	.a3 /* IN */ (zero32[25]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_26
(
	.z /* OUT */ (dstd_b26_obuf),
	.a0 /* IN */ (dstdr[26]),
	.a1 /* IN */ (dstwd[26]),
	.a2 /* IN */ (srcwd[26]),
	.a3 /* IN */ (zero32[26]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_27
(
	.z /* OUT */ (dstd_b27_obuf),
	.a0 /* IN */ (dstdr[27]),
	.a1 /* IN */ (dstwd[27]),
	.a2 /* IN */ (srcwd[27]),
	.a3 /* IN */ (zero32[27]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_28
(
	.z /* OUT */ (dstd_b28_obuf),
	.a0 /* IN */ (dstdr[28]),
	.a1 /* IN */ (dstwd[28]),
	.a2 /* IN */ (srcwd[28]),
	.a3 /* IN */ (zero32[28]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_29
(
	.z /* OUT */ (dstd_b29_obuf),
	.a0 /* IN */ (dstdr[29]),
	.a1 /* IN */ (dstwd[29]),
	.a2 /* IN */ (srcwd[29]),
	.a3 /* IN */ (zero32[29]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_30
(
	.z /* OUT */ (dstd_b30_obuf),
	.a0 /* IN */ (dstdr[30]),
	.a1 /* IN */ (dstwd[30]),
	.a2 /* IN */ (srcwd[30]),
	.a3 /* IN */ (zero32[30]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);
mx4 dstd_inst_31
(
	.z /* OUT */ (dstd_b31_obuf),
	.a0 /* IN */ (dstdr[31]),
	.a1 /* IN */ (dstwd[31]),
	.a2 /* IN */ (srcwd[31]),
	.a3 /* IN */ (zero32[31]),
	.s0 /* IN */ (dstdsel_0),
	.s1 /* IN */ (dstdsel_1)
);

// REGIS-WA.NET (131) - dstdpt : fd1q
fd1q dstdpt_inst_0
(
	.q /* OUT */ (dstdpt0[0]),
	.d /* IN */ (dstd_b0_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_1
(
	.q /* OUT */ (dstdpt0[1]),
	.d /* IN */ (dstd_b1_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_2
(
	.q /* OUT */ (dstdpt0[2]),
	.d /* IN */ (dstd_b2_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_3
(
	.q /* OUT */ (dstdpt0[3]),
	.d /* IN */ (dstd_b3_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_4
(
	.q /* OUT */ (dstdpt0[4]),
	.d /* IN */ (dstd_b4_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_5
(
	.q /* OUT */ (dstdpt0[5]),
	.d /* IN */ (dstd_b5_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_6
(
	.q /* OUT */ (dstdpt0[6]),
	.d /* IN */ (dstd_b6_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_7
(
	.q /* OUT */ (dstdpt0[7]),
	.d /* IN */ (dstd_b7_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_8
(
	.q /* OUT */ (dstdpt0[8]),
	.d /* IN */ (dstd_b8_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_9
(
	.q /* OUT */ (dstdpt0[9]),
	.d /* IN */ (dstd_b9_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_10
(
	.q /* OUT */ (dstdpt0[10]),
	.d /* IN */ (dstd_b10_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_11
(
	.q /* OUT */ (dstdpt0[11]),
	.d /* IN */ (dstd_b11_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_12
(
	.q /* OUT */ (dstdpt0[12]),
	.d /* IN */ (dstd_b12_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_13
(
	.q /* OUT */ (dstdpt0[13]),
	.d /* IN */ (dstd_b13_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_14
(
	.q /* OUT */ (dstdpt0[14]),
	.d /* IN */ (dstd_b14_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_15
(
	.q /* OUT */ (dstdpt0[15]),
	.d /* IN */ (dstd_b15_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_16
(
	.q /* OUT */ (dstdpt0[16]),
	.d /* IN */ (dstd_b16_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_17
(
	.q /* OUT */ (dstdpt0[17]),
	.d /* IN */ (dstd_b17_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_18
(
	.q /* OUT */ (dstdpt0[18]),
	.d /* IN */ (dstd_b18_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_19
(
	.q /* OUT */ (dstdpt0[19]),
	.d /* IN */ (dstd_b19_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_20
(
	.q /* OUT */ (dstdpt0[20]),
	.d /* IN */ (dstd_b20_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_21
(
	.q /* OUT */ (dstdpt0[21]),
	.d /* IN */ (dstd_b21_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_22
(
	.q /* OUT */ (dstdpt0[22]),
	.d /* IN */ (dstd_b22_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_23
(
	.q /* OUT */ (dstdpt0[23]),
	.d /* IN */ (dstd_b23_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_24
(
	.q /* OUT */ (dstdpt0[24]),
	.d /* IN */ (dstd_b24_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_25
(
	.q /* OUT */ (dstdpt0[25]),
	.d /* IN */ (dstd_b25_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_26
(
	.q /* OUT */ (dstdpt0[26]),
	.d /* IN */ (dstd_b26_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_27
(
	.q /* OUT */ (dstdpt0[27]),
	.d /* IN */ (dstd_b27_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_28
(
	.q /* OUT */ (dstdpt0[28]),
	.d /* IN */ (dstd_b28_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_29
(
	.q /* OUT */ (dstdpt0[29]),
	.d /* IN */ (dstd_b29_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_30
(
	.q /* OUT */ (dstdpt0[30]),
	.d /* IN */ (dstd_b30_obuf),
	.cp /* IN */ (clk)
);
fd1q dstdpt_inst_31
(
	.q /* OUT */ (dstdpt0[31]),
	.d /* IN */ (dstd_b31_obuf),
	.cp /* IN */ (clk)
);

// REGIS-WA.NET (132) - mtx_doverp : fd1qu
fd1q mtx_doverp_inst
(
	.q /* OUT */ (mtx_doverp),
	.d /* IN */ (mtx_dover),
	.cp /* IN */ (clk)
);

// REGIS-WA.NET (133) - dstdpt1 : mx2p
mx2 dstdpt1_inst_0
(
	.z /* OUT */ (dstdpt1[0]),
	.a0 /* IN */ (dstdpt0[0]),
	.a1 /* IN */ (mem_data[0]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_1
(
	.z /* OUT */ (dstdpt1[1]),
	.a0 /* IN */ (dstdpt0[1]),
	.a1 /* IN */ (mem_data[1]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_2
(
	.z /* OUT */ (dstdpt1[2]),
	.a0 /* IN */ (dstdpt0[2]),
	.a1 /* IN */ (mem_data[2]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_3
(
	.z /* OUT */ (dstdpt1[3]),
	.a0 /* IN */ (dstdpt0[3]),
	.a1 /* IN */ (mem_data[3]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_4
(
	.z /* OUT */ (dstdpt1[4]),
	.a0 /* IN */ (dstdpt0[4]),
	.a1 /* IN */ (mem_data[4]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_5
(
	.z /* OUT */ (dstdpt1[5]),
	.a0 /* IN */ (dstdpt0[5]),
	.a1 /* IN */ (mem_data[5]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_6
(
	.z /* OUT */ (dstdpt1[6]),
	.a0 /* IN */ (dstdpt0[6]),
	.a1 /* IN */ (mem_data[6]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_7
(
	.z /* OUT */ (dstdpt1[7]),
	.a0 /* IN */ (dstdpt0[7]),
	.a1 /* IN */ (mem_data[7]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_8
(
	.z /* OUT */ (dstdpt1[8]),
	.a0 /* IN */ (dstdpt0[8]),
	.a1 /* IN */ (mem_data[8]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_9
(
	.z /* OUT */ (dstdpt1[9]),
	.a0 /* IN */ (dstdpt0[9]),
	.a1 /* IN */ (mem_data[9]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_10
(
	.z /* OUT */ (dstdpt1[10]),
	.a0 /* IN */ (dstdpt0[10]),
	.a1 /* IN */ (mem_data[10]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_11
(
	.z /* OUT */ (dstdpt1[11]),
	.a0 /* IN */ (dstdpt0[11]),
	.a1 /* IN */ (mem_data[11]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_12
(
	.z /* OUT */ (dstdpt1[12]),
	.a0 /* IN */ (dstdpt0[12]),
	.a1 /* IN */ (mem_data[12]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_13
(
	.z /* OUT */ (dstdpt1[13]),
	.a0 /* IN */ (dstdpt0[13]),
	.a1 /* IN */ (mem_data[13]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_14
(
	.z /* OUT */ (dstdpt1[14]),
	.a0 /* IN */ (dstdpt0[14]),
	.a1 /* IN */ (mem_data[14]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_15
(
	.z /* OUT */ (dstdpt1[15]),
	.a0 /* IN */ (dstdpt0[15]),
	.a1 /* IN */ (mem_data[15]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_16
(
	.z /* OUT */ (dstdpt1[16]),
	.a0 /* IN */ (dstdpt0[16]),
	.a1 /* IN */ (mem_data[16]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_17
(
	.z /* OUT */ (dstdpt1[17]),
	.a0 /* IN */ (dstdpt0[17]),
	.a1 /* IN */ (mem_data[17]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_18
(
	.z /* OUT */ (dstdpt1[18]),
	.a0 /* IN */ (dstdpt0[18]),
	.a1 /* IN */ (mem_data[18]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_19
(
	.z /* OUT */ (dstdpt1[19]),
	.a0 /* IN */ (dstdpt0[19]),
	.a1 /* IN */ (mem_data[19]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_20
(
	.z /* OUT */ (dstdpt1[20]),
	.a0 /* IN */ (dstdpt0[20]),
	.a1 /* IN */ (mem_data[20]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_21
(
	.z /* OUT */ (dstdpt1[21]),
	.a0 /* IN */ (dstdpt0[21]),
	.a1 /* IN */ (mem_data[21]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_22
(
	.z /* OUT */ (dstdpt1[22]),
	.a0 /* IN */ (dstdpt0[22]),
	.a1 /* IN */ (mem_data[22]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_23
(
	.z /* OUT */ (dstdpt1[23]),
	.a0 /* IN */ (dstdpt0[23]),
	.a1 /* IN */ (mem_data[23]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_24
(
	.z /* OUT */ (dstdpt1[24]),
	.a0 /* IN */ (dstdpt0[24]),
	.a1 /* IN */ (mem_data[24]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_25
(
	.z /* OUT */ (dstdpt1[25]),
	.a0 /* IN */ (dstdpt0[25]),
	.a1 /* IN */ (mem_data[25]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_26
(
	.z /* OUT */ (dstdpt1[26]),
	.a0 /* IN */ (dstdpt0[26]),
	.a1 /* IN */ (mem_data[26]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_27
(
	.z /* OUT */ (dstdpt1[27]),
	.a0 /* IN */ (dstdpt0[27]),
	.a1 /* IN */ (mem_data[27]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_28
(
	.z /* OUT */ (dstdpt1[28]),
	.a0 /* IN */ (dstdpt0[28]),
	.a1 /* IN */ (mem_data[28]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_29
(
	.z /* OUT */ (dstdpt1[29]),
	.a0 /* IN */ (dstdpt0[29]),
	.a1 /* IN */ (mem_data[29]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_30
(
	.z /* OUT */ (dstdpt1[30]),
	.a0 /* IN */ (dstdpt0[30]),
	.a1 /* IN */ (mem_data[30]),
	.s /* IN */ (mtx_doverp)
);
mx2 dstdpt1_inst_31
(
	.z /* OUT */ (dstdpt1[31]),
	.a0 /* IN */ (dstdpt0[31]),
	.a1 /* IN */ (mem_data[31]),
	.s /* IN */ (mtx_doverp)
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
