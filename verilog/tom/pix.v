`include "defs.v"

module pix
(
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input din_11,
	input din_12,
	input din_13,
	input din_14,
	input din_15,
	input dd,
	input vactive,
	input blank,
	input nextpixa,
	input nextpixd,
	input cry16,
	input rgb24,
	input rg16,
	input lbrd_0,
	input lbrd_1,
	input lbrd_2,
	input lbrd_3,
	input lbrd_4,
	input lbrd_5,
	input lbrd_6,
	input lbrd_7,
	input lbrd_8,
	input lbrd_9,
	input lbrd_10,
	input lbrd_11,
	input lbrd_12,
	input lbrd_13,
	input lbrd_14,
	input lbrd_15,
	input lbrd_16,
	input lbrd_17,
	input lbrd_18,
	input lbrd_19,
	input lbrd_20,
	input lbrd_21,
	input lbrd_22,
	input lbrd_23,
	input lbrd_24,
	input lbrd_25,
	input lbrd_26,
	input lbrd_27,
	input lbrd_28,
	input lbrd_29,
	input lbrd_30,
	input lbrd_31,
	input lbraw,
	input lbrar,
	input bcrgwr,
	input bcbwr,
	input resetl,
	input vclk,
	input gnd,
	input mptest,
	input incen,
	input binc,
	input lp,
	input rgb16,
	input varmod,
	input word2,
	input pp,
	output lbra_0,
	output lbra_1,
	output lbra_2,
	output lbra_3,
	output lbra_4,
	output lbra_5,
	output lbra_6,
	output lbra_7,
	output lbra_8,
	output r_0,
	output r_1,
	output r_2,
	output r_3,
	output r_4,
	output r_5,
	output r_6,
	output r_7,
	output g_0,
	output g_1,
	output g_2,
	output g_3,
	output g_4,
	output g_5,
	output g_6,
	output g_7,
	output b_0,
	output b_1,
	output b_2,
	output b_3,
	output b_4,
	output b_5,
	output b_6,
	output b_7,
	output inc,
	inout dr_0,
	inout dr_1,
	inout dr_2,
	inout dr_3,
	inout dr_4,
	inout dr_5,
	inout dr_6,
	inout dr_7,
	inout dr_8
);
wire [0:7] red;
wire [0:7] green;
wire [0:7] blue;
wire [0:8] lbra;
wire ddl;
wire lbres;
wire co_0;
wire co_1;
wire co_2;
wire co_3;
wire co_4;
wire co_5;
wire co_6;
wire co_7;
wire co_8;
wire nextpixb;
wire pd1_0;
wire pd1_1;
wire pd1_2;
wire pd1_3;
wire pd1_4;
wire pd1_5;
wire pd1_6;
wire pd1_7;
wire pd1_8;
wire pd1_9;
wire pd1_10;
wire pd1_11;
wire pd1_12;
wire pd1_13;
wire pd1_14;
wire pd1_15;
wire pd1_16;
wire pd1_17;
wire pd1_18;
wire pd1_19;
wire pd1_20;
wire pd1_21;
wire pd1_22;
wire pd1_23;
wire pd1_24;
wire pd1_25;
wire pd1_26;
wire pd1_27;
wire pd1_28;
wire pd1_29;
wire pd1_30;
wire pd1_31;
wire word2b;
wire pd2_0;
wire pd2_1;
wire pd2_2;
wire pd2_3;
wire pd2_4;
wire pd2_5;
wire pd2_6;
wire pd2_7;
wire pd2_8;
wire pd2_9;
wire pd2_10;
wire pd2_11;
wire pd2_12;
wire pd2_13;
wire pd2_14;
wire pd2_15;
wire rgb0;
wire rgb1;
wire rgb;
wire ppdi;
wire ppd;
wire pd3_0;
wire pd3_1;
wire pd3_2;
wire pd3_3;
wire pd3_4;
wire pd3_5;
wire pd3_6;
wire pd3_7;
wire pd3_8;
wire pd3_9;
wire pd3_10;
wire pd3_11;
wire pd3_12;
wire pd3_13;
wire pd3_14;
wire pd3_15;
wire pd3_16;
wire pd3_17;
wire pd3_18;
wire pd3_19;
wire pd3_20;
wire pd3_21;
wire pd3_22;
wire pd3_23;
wire pd20;
wire lpb;
wire pd4_0;
wire pd4_1;
wire pd4_2;
wire pd4_3;
wire pd4_4;
wire pd4_5;
wire pd4_6;
wire pd4_7;
wire pd4_8;
wire pd4_9;
wire pd4_10;
wire pd4_11;
wire pd4_12;
wire pd4_13;
wire pd4_14;
wire pd4_15;
wire bc_0;
wire bc_1;
wire bc_2;
wire bc_3;
wire bc_4;
wire bc_5;
wire bc_6;
wire bc_7;
wire bc_8;
wire bc_9;
wire bc_10;
wire bc_11;
wire bc_12;
wire bc_13;
wire bc_14;
wire bc_15;
wire bc_16;
wire bc_17;
wire bc_18;
wire bc_19;
wire bc_20;
wire bc_21;
wire bc_22;
wire bc_23;
wire sxp;
wire notvactive;
wire bord1;
wire bord2;
wire bord3;
wire border;
wire blankl;
wire borderl;
wire s1i;
wire s1;
wire s01;
wire s0i;
wire s0;
wire pd5_0;
wire pd5_1;
wire pd5_2;
wire pd5_3;
wire pd5_4;
wire pd5_5;
wire pd5_6;
wire pd5_7;
wire pd5_8;
wire pd5_9;
wire pd5_10;
wire pd5_11;
wire pd5_12;
wire pd5_13;
wire pd5_14;
wire pd5_15;
wire pd5_16;
wire pd5_17;
wire pd5_18;
wire pd5_19;
wire pd5_20;
wire pd5_21;
wire pd5_22;
wire pd5_23;
wire pd6_0;
wire pd6_1;
wire pd6_2;
wire pd6_3;
wire pd6_4;
wire pd6_5;
wire pd6_6;
wire pd6_7;
wire pd6_8;
wire pd6_9;
wire pd6_10;
wire pd6_11;
wire pd6_12;
wire pd6_13;
wire pd6_14;
wire pd6_15;
wire pd6_16;
wire pd6_17;
wire pd6_18;
wire pd6_19;
wire pd6_20;
wire pd6_21;
wire pd6_22;
wire pd6_23;
wire inc1;
wire inc2;
wire inc3;
wire inc4;
wire inc5;
wire notincen;
wire notvarmod;

// Output buffers
wire lbra_0_obuf;
wire lbra_1_obuf;
wire lbra_2_obuf;
wire lbra_3_obuf;
wire lbra_4_obuf;
wire lbra_5_obuf;
wire lbra_6_obuf;
wire lbra_7_obuf;
wire lbra_8_obuf;
wire r_0_obuf;
wire r_1_obuf;
wire r_2_obuf;
wire r_3_obuf;
wire r_4_obuf;
wire r_5_obuf;
wire r_6_obuf;
wire r_7_obuf;
wire g_0_obuf;
wire g_1_obuf;
wire g_2_obuf;
wire g_3_obuf;
wire g_4_obuf;
wire g_5_obuf;
wire g_6_obuf;
wire g_7_obuf;
wire b_0_obuf;
wire b_1_obuf;
wire b_2_obuf;
wire b_3_obuf;
wire b_4_obuf;
wire b_5_obuf;
wire b_6_obuf;
wire b_7_obuf;
wire inc_obuf;


// Output buffers
assign lbra_0 = lbra_0_obuf;
assign lbra_1 = lbra_1_obuf;
assign lbra_2 = lbra_2_obuf;
assign lbra_3 = lbra_3_obuf;
assign lbra_4 = lbra_4_obuf;
assign lbra_5 = lbra_5_obuf;
assign lbra_6 = lbra_6_obuf;
assign lbra_7 = lbra_7_obuf;
assign lbra_8 = lbra_8_obuf;
assign r_0 = r_0_obuf;
assign r_1 = r_1_obuf;
assign r_2 = r_2_obuf;
assign r_3 = r_3_obuf;
assign r_4 = r_4_obuf;
assign r_5 = r_5_obuf;
assign r_6 = r_6_obuf;
assign r_7 = r_7_obuf;
assign g_0 = g_0_obuf;
assign g_1 = g_1_obuf;
assign g_2 = g_2_obuf;
assign g_3 = g_3_obuf;
assign g_4 = g_4_obuf;
assign g_5 = g_5_obuf;
assign g_6 = g_6_obuf;
assign g_7 = g_7_obuf;
assign b_0 = b_0_obuf;
assign b_1 = b_1_obuf;
assign b_2 = b_2_obuf;
assign b_3 = b_3_obuf;
assign b_4 = b_4_obuf;
assign b_5 = b_5_obuf;
assign b_6 = b_6_obuf;
assign b_7 = b_7_obuf;
assign inc = inc_obuf;


// PIX.NET (28) - red : join
assign red[0] = r_0_obuf;
assign red[1] = r_1_obuf;
assign red[2] = r_2_obuf;
assign red[3] = r_3_obuf;
assign red[4] = r_4_obuf;
assign red[5] = r_5_obuf;
assign red[6] = r_6_obuf;
assign red[7] = r_7_obuf;

// PIX.NET (29) - green : join
assign green[0] = g_0_obuf;
assign green[1] = g_1_obuf;
assign green[2] = g_2_obuf;
assign green[3] = g_3_obuf;
assign green[4] = g_4_obuf;
assign green[5] = g_5_obuf;
assign green[6] = g_6_obuf;
assign green[7] = g_7_obuf;

// PIX.NET (30) - blue : join
assign blue[0] = b_0_obuf;
assign blue[1] = b_1_obuf;
assign blue[2] = b_2_obuf;
assign blue[3] = b_3_obuf;
assign blue[4] = b_4_obuf;
assign blue[5] = b_5_obuf;
assign blue[6] = b_6_obuf;
assign blue[7] = b_7_obuf;

// PIX.NET (31) - ru : dummy

// PIX.NET (32) - gu : dummy

// PIX.NET (33) - bu : dummy

// PIX.NET (34) - lbra : join
assign lbra[0] = lbra_0_obuf;
assign lbra[1] = lbra_1_obuf;
assign lbra[2] = lbra_2_obuf;
assign lbra[3] = lbra_3_obuf;
assign lbra[4] = lbra_4_obuf;
assign lbra[5] = lbra_5_obuf;
assign lbra[6] = lbra_6_obuf;
assign lbra[7] = lbra_7_obuf;
assign lbra[8] = lbra_8_obuf;

// PIX.NET (35) - lbrau : dummy

// PIX.NET (39) - startdl : iv
assign ddl = ~dd;

// PIX.NET (40) - lbresl : nd2x2
assign lbres = ~(ddl & resetl);

// PIX.NET (41) - lbra[0] : upcnts
upcnts lbra_index_0_inst
(
	.q(lbra_0_obuf), // IO
	.co(co_0), // IO
	.d(din_0), // IN
	.clk(vclk), // IN
	.ci(nextpixa), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);

// PIX.NET (42) - lbra[1-8] : upcnts
upcnts lbra_from_1_to_8_inst_0
(
	.q(lbra_1_obuf), // IO
	.co(co_1), // IO
	.d(din_1), // IN
	.clk(vclk), // IN
	.ci(co_0), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_1
(
	.q(lbra_2_obuf), // IO
	.co(co_2), // IO
	.d(din_2), // IN
	.clk(vclk), // IN
	.ci(co_1), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_2
(
	.q(lbra_3_obuf), // IO
	.co(co_3), // IO
	.d(din_3), // IN
	.clk(vclk), // IN
	.ci(co_2), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_3
(
	.q(lbra_4_obuf), // IO
	.co(co_4), // IO
	.d(din_4), // IN
	.clk(vclk), // IN
	.ci(co_3), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_4
(
	.q(lbra_5_obuf), // IO
	.co(co_5), // IO
	.d(din_5), // IN
	.clk(vclk), // IN
	.ci(co_4), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_5
(
	.q(lbra_6_obuf), // IO
	.co(co_6), // IO
	.d(din_6), // IN
	.clk(vclk), // IN
	.ci(co_5), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_6
(
	.q(lbra_7_obuf), // IO
	.co(co_7), // IO
	.d(din_7), // IN
	.clk(vclk), // IN
	.ci(co_6), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);
upcnts lbra_from_1_to_8_inst_7
(
	.q(lbra_8_obuf), // IO
	.co(co_8), // IO
	.d(din_8), // IN
	.clk(vclk), // IN
	.ci(co_7), // IN
	.ld(lbraw), // IN
	.res(lbres)  // IN
);

// PIX.NET (43) - co8 : dummy

// PIX.NET (45) - lbrad[0-8] : ts
assign dr_0 = (lbrar) ? lbra_0_obuf : 1'bz;
assign dr_1 = (lbrar) ? lbra_1_obuf : 1'bz;
assign dr_2 = (lbrar) ? lbra_2_obuf : 1'bz;
assign dr_3 = (lbrar) ? lbra_3_obuf : 1'bz;
assign dr_4 = (lbrar) ? lbra_4_obuf : 1'bz;
assign dr_5 = (lbrar) ? lbra_5_obuf : 1'bz;
assign dr_6 = (lbrar) ? lbra_6_obuf : 1'bz;
assign dr_7 = (lbrar) ? lbra_7_obuf : 1'bz;
assign dr_8 = (lbrar) ? lbra_8_obuf : 1'bz;

// PIX.NET (49) - nextpixb : nivu2
assign nextpixb = nextpixd;

// PIX.NET (50) - pd1[0-31] : slatch
slatch pd1_from_0_to_31_inst_0
(
	.q(pd1_0), // IO
	.d(lbrd_0), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_1
(
	.q(pd1_1), // IO
	.d(lbrd_1), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_2
(
	.q(pd1_2), // IO
	.d(lbrd_2), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_3
(
	.q(pd1_3), // IO
	.d(lbrd_3), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_4
(
	.q(pd1_4), // IO
	.d(lbrd_4), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_5
(
	.q(pd1_5), // IO
	.d(lbrd_5), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_6
(
	.q(pd1_6), // IO
	.d(lbrd_6), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_7
(
	.q(pd1_7), // IO
	.d(lbrd_7), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_8
(
	.q(pd1_8), // IO
	.d(lbrd_8), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_9
(
	.q(pd1_9), // IO
	.d(lbrd_9), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_10
(
	.q(pd1_10), // IO
	.d(lbrd_10), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_11
(
	.q(pd1_11), // IO
	.d(lbrd_11), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_12
(
	.q(pd1_12), // IO
	.d(lbrd_12), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_13
(
	.q(pd1_13), // IO
	.d(lbrd_13), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_14
(
	.q(pd1_14), // IO
	.d(lbrd_14), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_15
(
	.q(pd1_15), // IO
	.d(lbrd_15), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_16
(
	.q(pd1_16), // IO
	.d(lbrd_16), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_17
(
	.q(pd1_17), // IO
	.d(lbrd_17), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_18
(
	.q(pd1_18), // IO
	.d(lbrd_18), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_19
(
	.q(pd1_19), // IO
	.d(lbrd_19), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_20
(
	.q(pd1_20), // IO
	.d(lbrd_20), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_21
(
	.q(pd1_21), // IO
	.d(lbrd_21), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_22
(
	.q(pd1_22), // IO
	.d(lbrd_22), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_23
(
	.q(pd1_23), // IO
	.d(lbrd_23), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_24
(
	.q(pd1_24), // IO
	.d(lbrd_24), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_25
(
	.q(pd1_25), // IO
	.d(lbrd_25), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_26
(
	.q(pd1_26), // IO
	.d(lbrd_26), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_27
(
	.q(pd1_27), // IO
	.d(lbrd_27), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_28
(
	.q(pd1_28), // IO
	.d(lbrd_28), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_29
(
	.q(pd1_29), // IO
	.d(lbrd_29), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_30
(
	.q(pd1_30), // IO
	.d(lbrd_30), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);
slatch pd1_from_0_to_31_inst_31
(
	.q(pd1_31), // IO
	.d(lbrd_31), // IN
	.clk(vclk), // IN
	.en(nextpixb)  // IN
);

// PIX.NET (54) - word2b : nivu2
assign word2b = word2;

// PIX.NET (55) - pd2[0-15] : mx2m
mx2 pd2_from_0_to_15_inst_0
(
	.z(pd2_0), // OUT
	.a0(pd1_0), // IN
	.a1(pd1_16), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_1
(
	.z(pd2_1), // OUT
	.a0(pd1_1), // IN
	.a1(pd1_17), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_2
(
	.z(pd2_2), // OUT
	.a0(pd1_2), // IN
	.a1(pd1_18), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_3
(
	.z(pd2_3), // OUT
	.a0(pd1_3), // IN
	.a1(pd1_19), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_4
(
	.z(pd2_4), // OUT
	.a0(pd1_4), // IN
	.a1(pd1_20), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_5
(
	.z(pd2_5), // OUT
	.a0(pd1_5), // IN
	.a1(pd1_21), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_6
(
	.z(pd2_6), // OUT
	.a0(pd1_6), // IN
	.a1(pd1_22), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_7
(
	.z(pd2_7), // OUT
	.a0(pd1_7), // IN
	.a1(pd1_23), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_8
(
	.z(pd2_8), // OUT
	.a0(pd1_8), // IN
	.a1(pd1_24), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_9
(
	.z(pd2_9), // OUT
	.a0(pd1_9), // IN
	.a1(pd1_25), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_10
(
	.z(pd2_10), // OUT
	.a0(pd1_10), // IN
	.a1(pd1_26), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_11
(
	.z(pd2_11), // OUT
	.a0(pd1_11), // IN
	.a1(pd1_27), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_12
(
	.z(pd2_12), // OUT
	.a0(pd1_12), // IN
	.a1(pd1_28), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_13
(
	.z(pd2_13), // OUT
	.a0(pd1_13), // IN
	.a1(pd1_29), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_14
(
	.z(pd2_14), // OUT
	.a0(pd1_14), // IN
	.a1(pd1_30), // IN
	.s(word2b)  // IN
);
mx2 pd2_from_0_to_15_inst_15
(
	.z(pd2_15), // OUT
	.a0(pd1_15), // IN
	.a1(pd1_31), // IN
	.s(word2b)  // IN
);

// PIX.NET (63) - rgb0 : iv
assign rgb0 = ~rgb16;

// PIX.NET (64) - rgb1 : nd2
assign rgb1 = ~(varmod & pd2_0);

// PIX.NET (65) - rgb : nd2
assign rgb = ~(rgb0 & rgb1);

// PIX.NET (72) - ppdi : fd1q
fd1q ppdi_inst
(
	.q(ppdi), // OUT
	.d(pp), // IN
	.cp(vclk)  // IN
);

// PIX.NET (73) - ppd : nivu
assign ppd = ppdi;

// PIX.NET (75) - pd3 : cryrgb
cryrgb pd3_inst
(
	.r_0(pd3_0), // IO
	.r_1(pd3_1), // IO
	.r_2(pd3_2), // IO
	.r_3(pd3_3), // IO
	.r_4(pd3_4), // IO
	.r_5(pd3_5), // IO
	.r_6(pd3_6), // IO
	.r_7(pd3_7), // IO
	.g_0(pd3_8), // IO
	.g_1(pd3_9), // IO
	.g_2(pd3_10), // IO
	.g_3(pd3_11), // IO
	.g_4(pd3_12), // IO
	.g_5(pd3_13), // IO
	.g_6(pd3_14), // IO
	.g_7(pd3_15), // IO
	.b_0(pd3_16), // IO
	.b_1(pd3_17), // IO
	.b_2(pd3_18), // IO
	.b_3(pd3_19), // IO
	.b_4(pd3_20), // IO
	.b_5(pd3_21), // IO
	.b_6(pd3_22), // IO
	.b_7(pd3_23), // IO
	.cry_0(pd20), // IN
	.cry_1(pd2_1), // IN
	.cry_2(pd2_2), // IN
	.cry_3(pd2_3), // IN
	.cry_4(pd2_4), // IN
	.cry_5(pd2_5), // IN
	.cry_6(pd2_6), // IN
	.cry_7(pd2_7), // IN
	.cry_8(pd2_8), // IN
	.cry_9(pd2_9), // IN
	.cry_10(pd2_10), // IN
	.cry_11(pd2_11), // IN
	.cry_12(pd2_12), // IN
	.cry_13(pd2_13), // IN
	.cry_14(pd2_14), // IN
	.cry_15(pd2_15), // IN
	.vclk(vclk), // IN
	.mptest(mptest), // IN
	.rgb(rgb), // IN
	.ppd(ppd)  // IN
);

// PIX.NET (80) - lpb : nivh
assign lpb = lp;

// PIX.NET (81) - pd4[0-15] : mx2
mx2 pd4_from_0_to_15_inst_0
(
	.z(pd4_0), // OUT
	.a0(pd1_16), // IN
	.a1(pd1_0), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_1
(
	.z(pd4_1), // OUT
	.a0(pd1_17), // IN
	.a1(pd1_1), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_2
(
	.z(pd4_2), // OUT
	.a0(pd1_18), // IN
	.a1(pd1_2), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_3
(
	.z(pd4_3), // OUT
	.a0(pd1_19), // IN
	.a1(pd1_3), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_4
(
	.z(pd4_4), // OUT
	.a0(pd1_20), // IN
	.a1(pd1_4), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_5
(
	.z(pd4_5), // OUT
	.a0(pd1_21), // IN
	.a1(pd1_5), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_6
(
	.z(pd4_6), // OUT
	.a0(pd1_22), // IN
	.a1(pd1_6), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_7
(
	.z(pd4_7), // OUT
	.a0(pd1_23), // IN
	.a1(pd1_7), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_8
(
	.z(pd4_8), // OUT
	.a0(pd1_24), // IN
	.a1(pd1_8), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_9
(
	.z(pd4_9), // OUT
	.a0(pd1_25), // IN
	.a1(pd1_9), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_10
(
	.z(pd4_10), // OUT
	.a0(pd1_26), // IN
	.a1(pd1_10), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_11
(
	.z(pd4_11), // OUT
	.a0(pd1_27), // IN
	.a1(pd1_11), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_12
(
	.z(pd4_12), // OUT
	.a0(pd1_28), // IN
	.a1(pd1_12), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_13
(
	.z(pd4_13), // OUT
	.a0(pd1_29), // IN
	.a1(pd1_13), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_14
(
	.z(pd4_14), // OUT
	.a0(pd1_30), // IN
	.a1(pd1_14), // IN
	.s(lpb)  // IN
);
mx2 pd4_from_0_to_15_inst_15
(
	.z(pd4_15), // OUT
	.a0(pd1_31), // IN
	.a1(pd1_15), // IN
	.s(lpb)  // IN
);

// PIX.NET (85) - bc[0-15] : ldp1q
ldp1q bc_from_0_to_15_inst_0
(
	.q(bc_0), // OUT
	.d(din_0), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_1
(
	.q(bc_1), // OUT
	.d(din_1), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_2
(
	.q(bc_2), // OUT
	.d(din_2), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_3
(
	.q(bc_3), // OUT
	.d(din_3), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_4
(
	.q(bc_4), // OUT
	.d(din_4), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_5
(
	.q(bc_5), // OUT
	.d(din_5), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_6
(
	.q(bc_6), // OUT
	.d(din_6), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_7
(
	.q(bc_7), // OUT
	.d(din_7), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_8
(
	.q(bc_8), // OUT
	.d(din_8), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_9
(
	.q(bc_9), // OUT
	.d(din_9), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_10
(
	.q(bc_10), // OUT
	.d(din_10), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_11
(
	.q(bc_11), // OUT
	.d(din_11), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_12
(
	.q(bc_12), // OUT
	.d(din_12), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_13
(
	.q(bc_13), // OUT
	.d(din_13), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_14
(
	.q(bc_14), // OUT
	.d(din_14), // IN
	.g(bcrgwr)  // IN
);
ldp1q bc_from_0_to_15_inst_15
(
	.q(bc_15), // OUT
	.d(din_15), // IN
	.g(bcrgwr)  // IN
);

// PIX.NET (86) - bc[16-23] : ldp1q
ldp1q bc_from_16_to_23_inst_0
(
	.q(bc_16), // OUT
	.d(din_0), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_1
(
	.q(bc_17), // OUT
	.d(din_1), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_2
(
	.q(bc_18), // OUT
	.d(din_2), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_3
(
	.q(bc_19), // OUT
	.d(din_3), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_4
(
	.q(bc_20), // OUT
	.d(din_4), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_5
(
	.q(bc_21), // OUT
	.d(din_5), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_6
(
	.q(bc_22), // OUT
	.d(din_6), // IN
	.g(bcbwr)  // IN
);
ldp1q bc_from_16_to_23_inst_7
(
	.q(bc_23), // OUT
	.d(din_7), // IN
	.g(bcbwr)  // IN
);

// PIX.NET (94) - sxp : or2
assign sxp = cry16 | rgb16;

// PIX.NET (95) - vactivel : iv
assign notvactive = ~vactive;

// PIX.NET (96) - bord1 : fd1q
fd1q bord1_inst
(
	.q(bord1), // OUT
	.d(notvactive), // IN
	.cp(vclk)  // IN
);

// PIX.NET (97) - bord2 : fd1q
fd1q bord2_inst
(
	.q(bord2), // OUT
	.d(bord1), // IN
	.cp(vclk)  // IN
);

// PIX.NET (98) - bord3 : slatch
slatch bord3_inst
(
	.q(bord3), // IO
	.d(bord2), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);

// PIX.NET (99) - border : mx2
mx2 border_inst
(
	.z(border), // OUT
	.a0(bord1), // IN
	.a1(bord3), // IN
	.s(sxp)  // IN
);

// PIX.NET (120) - blankl : iv
assign blankl = ~blank;

// PIX.NET (121) - borderl : iv
assign borderl = ~border;

// PIX.NET (123) - s1i : nd2
assign s1i = ~(blankl & borderl);

// PIX.NET (124) - s1 : nivu
assign s1 = s1i;

// PIX.NET (125) - s01 : nd3
assign s01 = ~(blankl & borderl & rgb24);

// PIX.NET (126) - s0i : nd2
assign s0i = ~(s01 & blankl);

// PIX.NET (127) - s0 : nivu
assign s0 = s0i;

// PIX.NET (129) - pd5[0-23] : mx4
mx4 pd5_from_0_to_23_inst_0
(
	.z(pd5_0), // OUT
	.a0(pd3_0), // IN
	.a1(pd1_0), // IN
	.a2(bc_0), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_1
(
	.z(pd5_1), // OUT
	.a0(pd3_1), // IN
	.a1(pd1_1), // IN
	.a2(bc_1), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_2
(
	.z(pd5_2), // OUT
	.a0(pd3_2), // IN
	.a1(pd1_2), // IN
	.a2(bc_2), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_3
(
	.z(pd5_3), // OUT
	.a0(pd3_3), // IN
	.a1(pd1_3), // IN
	.a2(bc_3), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_4
(
	.z(pd5_4), // OUT
	.a0(pd3_4), // IN
	.a1(pd1_4), // IN
	.a2(bc_4), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_5
(
	.z(pd5_5), // OUT
	.a0(pd3_5), // IN
	.a1(pd1_5), // IN
	.a2(bc_5), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_6
(
	.z(pd5_6), // OUT
	.a0(pd3_6), // IN
	.a1(pd1_6), // IN
	.a2(bc_6), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_7
(
	.z(pd5_7), // OUT
	.a0(pd3_7), // IN
	.a1(pd1_7), // IN
	.a2(bc_7), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_8
(
	.z(pd5_8), // OUT
	.a0(pd3_8), // IN
	.a1(pd1_8), // IN
	.a2(bc_8), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_9
(
	.z(pd5_9), // OUT
	.a0(pd3_9), // IN
	.a1(pd1_9), // IN
	.a2(bc_9), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_10
(
	.z(pd5_10), // OUT
	.a0(pd3_10), // IN
	.a1(pd1_10), // IN
	.a2(bc_10), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_11
(
	.z(pd5_11), // OUT
	.a0(pd3_11), // IN
	.a1(pd1_11), // IN
	.a2(bc_11), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_12
(
	.z(pd5_12), // OUT
	.a0(pd3_12), // IN
	.a1(pd1_12), // IN
	.a2(bc_12), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_13
(
	.z(pd5_13), // OUT
	.a0(pd3_13), // IN
	.a1(pd1_13), // IN
	.a2(bc_13), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_14
(
	.z(pd5_14), // OUT
	.a0(pd3_14), // IN
	.a1(pd1_14), // IN
	.a2(bc_14), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_15
(
	.z(pd5_15), // OUT
	.a0(pd3_15), // IN
	.a1(pd1_15), // IN
	.a2(bc_15), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_16
(
	.z(pd5_16), // OUT
	.a0(pd3_16), // IN
	.a1(pd1_16), // IN
	.a2(bc_16), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_17
(
	.z(pd5_17), // OUT
	.a0(pd3_17), // IN
	.a1(pd1_17), // IN
	.a2(bc_17), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_18
(
	.z(pd5_18), // OUT
	.a0(pd3_18), // IN
	.a1(pd1_18), // IN
	.a2(bc_18), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_19
(
	.z(pd5_19), // OUT
	.a0(pd3_19), // IN
	.a1(pd1_19), // IN
	.a2(bc_19), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_20
(
	.z(pd5_20), // OUT
	.a0(pd3_20), // IN
	.a1(pd1_20), // IN
	.a2(bc_20), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_21
(
	.z(pd5_21), // OUT
	.a0(pd3_21), // IN
	.a1(pd1_21), // IN
	.a2(bc_21), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_22
(
	.z(pd5_22), // OUT
	.a0(pd3_22), // IN
	.a1(pd1_22), // IN
	.a2(bc_22), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);
mx4 pd5_from_0_to_23_inst_23
(
	.z(pd5_23), // OUT
	.a0(pd3_23), // IN
	.a1(pd1_23), // IN
	.a2(bc_23), // IN
	.a3(gnd), // IN
	.s0(s0), // IN
	.s1(s1)  // IN
);

// PIX.NET (133) - pd6[0-23] : fd1q
fd1q pd6_from_0_to_23_inst_0
(
	.q(pd6_0), // OUT
	.d(pd5_0), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_1
(
	.q(pd6_1), // OUT
	.d(pd5_1), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_2
(
	.q(pd6_2), // OUT
	.d(pd5_2), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_3
(
	.q(pd6_3), // OUT
	.d(pd5_3), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_4
(
	.q(pd6_4), // OUT
	.d(pd5_4), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_5
(
	.q(pd6_5), // OUT
	.d(pd5_5), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_6
(
	.q(pd6_6), // OUT
	.d(pd5_6), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_7
(
	.q(pd6_7), // OUT
	.d(pd5_7), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_8
(
	.q(pd6_8), // OUT
	.d(pd5_8), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_9
(
	.q(pd6_9), // OUT
	.d(pd5_9), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_10
(
	.q(pd6_10), // OUT
	.d(pd5_10), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_11
(
	.q(pd6_11), // OUT
	.d(pd5_11), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_12
(
	.q(pd6_12), // OUT
	.d(pd5_12), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_13
(
	.q(pd6_13), // OUT
	.d(pd5_13), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_14
(
	.q(pd6_14), // OUT
	.d(pd5_14), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_15
(
	.q(pd6_15), // OUT
	.d(pd5_15), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_16
(
	.q(pd6_16), // OUT
	.d(pd5_16), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_17
(
	.q(pd6_17), // OUT
	.d(pd5_17), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_18
(
	.q(pd6_18), // OUT
	.d(pd5_18), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_19
(
	.q(pd6_19), // OUT
	.d(pd5_19), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_20
(
	.q(pd6_20), // OUT
	.d(pd5_20), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_21
(
	.q(pd6_21), // OUT
	.d(pd5_21), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_22
(
	.q(pd6_22), // OUT
	.d(pd5_22), // IN
	.cp(vclk)  // IN
);
fd1q pd6_from_0_to_23_inst_23
(
	.q(pd6_23), // OUT
	.d(pd5_23), // IN
	.cp(vclk)  // IN
);

// PIX.NET (138) - r[0-7] : mx2
mx2 r_from_0_to_7_inst_0
(
	.z(r_0_obuf), // OUT
	.a0(pd6_0), // IN
	.a1(pd4_0), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_1
(
	.z(r_1_obuf), // OUT
	.a0(pd6_1), // IN
	.a1(pd4_1), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_2
(
	.z(r_2_obuf), // OUT
	.a0(pd6_2), // IN
	.a1(pd4_2), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_3
(
	.z(r_3_obuf), // OUT
	.a0(pd6_3), // IN
	.a1(pd4_3), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_4
(
	.z(r_4_obuf), // OUT
	.a0(pd6_4), // IN
	.a1(pd4_4), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_5
(
	.z(r_5_obuf), // OUT
	.a0(pd6_5), // IN
	.a1(pd4_5), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_6
(
	.z(r_6_obuf), // OUT
	.a0(pd6_6), // IN
	.a1(pd4_6), // IN
	.s(rg16)  // IN
);
mx2 r_from_0_to_7_inst_7
(
	.z(r_7_obuf), // OUT
	.a0(pd6_7), // IN
	.a1(pd4_7), // IN
	.s(rg16)  // IN
);

// PIX.NET (139) - g[0-7] : mx2
mx2 g_from_0_to_7_inst_0
(
	.z(g_0_obuf), // OUT
	.a0(pd6_8), // IN
	.a1(pd4_8), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_1
(
	.z(g_1_obuf), // OUT
	.a0(pd6_9), // IN
	.a1(pd4_9), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_2
(
	.z(g_2_obuf), // OUT
	.a0(pd6_10), // IN
	.a1(pd4_10), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_3
(
	.z(g_3_obuf), // OUT
	.a0(pd6_11), // IN
	.a1(pd4_11), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_4
(
	.z(g_4_obuf), // OUT
	.a0(pd6_12), // IN
	.a1(pd4_12), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_5
(
	.z(g_5_obuf), // OUT
	.a0(pd6_13), // IN
	.a1(pd4_13), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_6
(
	.z(g_6_obuf), // OUT
	.a0(pd6_14), // IN
	.a1(pd4_14), // IN
	.s(rg16)  // IN
);
mx2 g_from_0_to_7_inst_7
(
	.z(g_7_obuf), // OUT
	.a0(pd6_15), // IN
	.a1(pd4_15), // IN
	.s(rg16)  // IN
);

// PIX.NET (140) - b[0] : mx2
mx2 b_index_0_inst
(
	.z(b_0_obuf), // OUT
	.a0(pd6_16), // IN
	.a1(blank), // IN
	.s(rg16)  // IN
);

// PIX.NET (141) - b[1] : mx2
mx2 b_index_1_inst
(
	.z(b_1_obuf), // OUT
	.a0(pd6_17), // IN
	.a1(vactive), // IN
	.s(rg16)  // IN
);

// PIX.NET (142) - b[2-7] : mx2
mx2 b_from_2_to_7_inst_0
(
	.z(b_2_obuf), // OUT
	.a0(pd6_18), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);
mx2 b_from_2_to_7_inst_1
(
	.z(b_3_obuf), // OUT
	.a0(pd6_19), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);
mx2 b_from_2_to_7_inst_2
(
	.z(b_4_obuf), // OUT
	.a0(pd6_20), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);
mx2 b_from_2_to_7_inst_3
(
	.z(b_5_obuf), // OUT
	.a0(pd6_21), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);
mx2 b_from_2_to_7_inst_4
(
	.z(b_6_obuf), // OUT
	.a0(pd6_22), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);
mx2 b_from_2_to_7_inst_5
(
	.z(b_7_obuf), // OUT
	.a0(pd6_23), // IN
	.a1(gnd), // IN
	.s(rg16)  // IN
);

// PIX.NET (150) - inc1 : fd1q
fd1q inc1_inst
(
	.q(inc1), // OUT
	.d(pd2_0), // IN
	.cp(vclk)  // IN
);

// PIX.NET (151) - inc2 : slatch
slatch inc2_inst
(
	.q(inc2), // IO
	.d(inc1), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);

// PIX.NET (152) - inc3 : mx2
mx2 inc3_inst
(
	.z(inc3), // OUT
	.a0(inc2), // IN
	.a1(pd1_24), // IN
	.s(rgb24)  // IN
);

// PIX.NET (153) - inc4 : mx2
mx2 inc4_inst
(
	.z(inc4), // OUT
	.a0(inc3), // IN
	.a1(binc), // IN
	.s(border)  // IN
);

// PIX.NET (154) - inc5 : fd1q
fd1q inc5_inst
(
	.q(inc5), // OUT
	.d(inc4), // IN
	.cp(vclk)  // IN
);

// PIX.NET (155) - inc : or2
assign inc_obuf = inc5 | notincen;

// PIX.NET (159) - pd20 : an3
assign pd20 = pd2_0 & notincen & notvarmod;

// PIX.NET (161) - notincen : iv
assign notincen = ~incen;

// PIX.NET (162) - notvarmod : iv
assign notvarmod = ~varmod;
endmodule
