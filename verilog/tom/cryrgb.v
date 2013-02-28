`include "defs.v"

module cryrgb
(
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
	input cry_0,
	input cry_1,
	input cry_2,
	input cry_3,
	input cry_4,
	input cry_5,
	input cry_6,
	input cry_7,
	input cry_8,
	input cry_9,
	input cry_10,
	input cry_11,
	input cry_12,
	input cry_13,
	input cry_14,
	input cry_15,
	input vclk,
	input mptest,
	input rgb,
	input ppd
);
wire [0:7] i;
wire [0:7] c;
wire [0:7] r1;
wire [0:7] g1;
wire [0:7] b1;
wire [0:7] r2;
wire [0:7] g2;
wire [0:7] b2;
wire [0:7] i2;
wire [0:7] rt;
wire [0:7] gt;
wire [0:7] bt;
wire [0:9] r2a;
wire [0:9] g2a;
wire [0:9] b2a;
wire [0:9] i2a;
wire [0:19] r3;
wire [0:19] g3;
wire [0:19] b3;
wire rgbtsti;
wire rgbtst;
wire rgbdi;
wire rgbd;
wire gnd;
wire r3b_0;
wire r3b_1;
wire r3b_2;
wire r3b_3;
wire r3b_4;
wire r3b_5;
wire r3b_6;
wire r3b_7;
wire b3b_0;
wire b3b_1;
wire b3b_2;
wire b3b_3;
wire b3b_4;
wire b3b_5;
wire b3b_6;
wire b3b_7;
wire g3b_0;
wire g3b_1;
wire g3b_2;
wire g3b_3;
wire g3b_4;
wire g3b_5;
wire g3b_6;
wire g3b_7;

// Output buffers
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


// Output buffers
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


// PIX.NET (184) - i : join
assign i[0] = cry_0;
assign i[1] = cry_1;
assign i[2] = cry_2;
assign i[3] = cry_3;
assign i[4] = cry_4;
assign i[5] = cry_5;
assign i[6] = cry_6;
assign i[7] = cry_7;

// PIX.NET (185) - c : join
assign c[0] = cry_8;
assign c[1] = cry_9;
assign c[2] = cry_10;
assign c[3] = cry_11;
assign c[4] = cry_12;
assign c[5] = cry_13;
assign c[6] = cry_14;
assign c[7] = cry_15;

// PIX.NET (201) - red : ra8008a
ra8008a red_inst
(
	.z({r1[0],r1[1],r1[2],r1[3],r1[4],r1[5],r1[6],r1[7]}), // OUT
	.clk(vclk), // IN
	.a({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]})  // IN
);

// PIX.NET (202) - green : ra8008b
ra8008b green_inst
(
	.z({g1[0],g1[1],g1[2],g1[3],g1[4],g1[5],g1[6],g1[7]}), // OUT
	.clk(vclk), // IN
	.a({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]})  // IN
);

// PIX.NET (203) - blue : ra8008c
ra8008c blue_inst
(
	.z({b1[0],b1[1],b1[2],b1[3],b1[4],b1[5],b1[6],b1[7]}), // OUT
	.clk(vclk), // IN
	.a({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]})  // IN
);

// PIX.NET (208) - rgbtsti : or2
assign rgbtsti = rgb | mptest;

// PIX.NET (209) - rgbtst : nivh
assign rgbtst = rgbtsti;

// PIX.NET (210) - rt : mx2
mx2 rt_inst_0
(
	.z(rt[0]), // OUT
	.a0(r1[0]), // IN
	.a1(c[0]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_1
(
	.z(rt[1]), // OUT
	.a0(r1[1]), // IN
	.a1(c[1]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_2
(
	.z(rt[2]), // OUT
	.a0(r1[2]), // IN
	.a1(c[2]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_3
(
	.z(rt[3]), // OUT
	.a0(r1[3]), // IN
	.a1(c[3]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_4
(
	.z(rt[4]), // OUT
	.a0(r1[4]), // IN
	.a1(c[4]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_5
(
	.z(rt[5]), // OUT
	.a0(r1[5]), // IN
	.a1(c[5]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_6
(
	.z(rt[6]), // OUT
	.a0(r1[6]), // IN
	.a1(c[6]), // IN
	.s(rgbtst)  // IN
);
mx2 rt_inst_7
(
	.z(rt[7]), // OUT
	.a0(r1[7]), // IN
	.a1(c[7]), // IN
	.s(rgbtst)  // IN
);

// PIX.NET (211) - gt : mx2
mx2 gt_inst_0
(
	.z(gt[0]), // OUT
	.a0(g1[0]), // IN
	.a1(c[0]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_1
(
	.z(gt[1]), // OUT
	.a0(g1[1]), // IN
	.a1(c[1]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_2
(
	.z(gt[2]), // OUT
	.a0(g1[2]), // IN
	.a1(c[2]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_3
(
	.z(gt[3]), // OUT
	.a0(g1[3]), // IN
	.a1(c[3]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_4
(
	.z(gt[4]), // OUT
	.a0(g1[4]), // IN
	.a1(c[4]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_5
(
	.z(gt[5]), // OUT
	.a0(g1[5]), // IN
	.a1(c[5]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_6
(
	.z(gt[6]), // OUT
	.a0(g1[6]), // IN
	.a1(c[6]), // IN
	.s(rgbtst)  // IN
);
mx2 gt_inst_7
(
	.z(gt[7]), // OUT
	.a0(g1[7]), // IN
	.a1(c[7]), // IN
	.s(rgbtst)  // IN
);

// PIX.NET (212) - bt : mx2
mx2 bt_inst_0
(
	.z(bt[0]), // OUT
	.a0(b1[0]), // IN
	.a1(c[0]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_1
(
	.z(bt[1]), // OUT
	.a0(b1[1]), // IN
	.a1(c[1]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_2
(
	.z(bt[2]), // OUT
	.a0(b1[2]), // IN
	.a1(c[2]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_3
(
	.z(bt[3]), // OUT
	.a0(b1[3]), // IN
	.a1(c[3]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_4
(
	.z(bt[4]), // OUT
	.a0(b1[4]), // IN
	.a1(c[4]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_5
(
	.z(bt[5]), // OUT
	.a0(b1[5]), // IN
	.a1(c[5]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_6
(
	.z(bt[6]), // OUT
	.a0(b1[6]), // IN
	.a1(c[6]), // IN
	.s(rgbtst)  // IN
);
mx2 bt_inst_7
(
	.z(bt[7]), // OUT
	.a0(b1[7]), // IN
	.a1(c[7]), // IN
	.s(rgbtst)  // IN
);

// PIX.NET (216) - r2 : fd1q
fd1q r2_inst_0
(
	.q(r2[0]), // OUT
	.d(rt[0]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_1
(
	.q(r2[1]), // OUT
	.d(rt[1]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_2
(
	.q(r2[2]), // OUT
	.d(rt[2]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_3
(
	.q(r2[3]), // OUT
	.d(rt[3]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_4
(
	.q(r2[4]), // OUT
	.d(rt[4]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_5
(
	.q(r2[5]), // OUT
	.d(rt[5]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_6
(
	.q(r2[6]), // OUT
	.d(rt[6]), // IN
	.cp(vclk)  // IN
);
fd1q r2_inst_7
(
	.q(r2[7]), // OUT
	.d(rt[7]), // IN
	.cp(vclk)  // IN
);

// PIX.NET (217) - g2 : fd1q
fd1q g2_inst_0
(
	.q(g2[0]), // OUT
	.d(gt[0]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_1
(
	.q(g2[1]), // OUT
	.d(gt[1]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_2
(
	.q(g2[2]), // OUT
	.d(gt[2]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_3
(
	.q(g2[3]), // OUT
	.d(gt[3]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_4
(
	.q(g2[4]), // OUT
	.d(gt[4]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_5
(
	.q(g2[5]), // OUT
	.d(gt[5]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_6
(
	.q(g2[6]), // OUT
	.d(gt[6]), // IN
	.cp(vclk)  // IN
);
fd1q g2_inst_7
(
	.q(g2[7]), // OUT
	.d(gt[7]), // IN
	.cp(vclk)  // IN
);

// PIX.NET (218) - b2 : fd1q
fd1q b2_inst_0
(
	.q(b2[0]), // OUT
	.d(bt[0]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_1
(
	.q(b2[1]), // OUT
	.d(bt[1]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_2
(
	.q(b2[2]), // OUT
	.d(bt[2]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_3
(
	.q(b2[3]), // OUT
	.d(bt[3]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_4
(
	.q(b2[4]), // OUT
	.d(bt[4]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_5
(
	.q(b2[5]), // OUT
	.d(bt[5]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_6
(
	.q(b2[6]), // OUT
	.d(bt[6]), // IN
	.cp(vclk)  // IN
);
fd1q b2_inst_7
(
	.q(b2[7]), // OUT
	.d(bt[7]), // IN
	.cp(vclk)  // IN
);

// PIX.NET (219) - i2 : fd1q
fd1q i2_inst_0
(
	.q(i2[0]), // OUT
	.d(i[0]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_1
(
	.q(i2[1]), // OUT
	.d(i[1]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_2
(
	.q(i2[2]), // OUT
	.d(i[2]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_3
(
	.q(i2[3]), // OUT
	.d(i[3]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_4
(
	.q(i2[4]), // OUT
	.d(i[4]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_5
(
	.q(i2[5]), // OUT
	.d(i[5]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_6
(
	.q(i2[6]), // OUT
	.d(i[6]), // IN
	.cp(vclk)  // IN
);
fd1q i2_inst_7
(
	.q(i2[7]), // OUT
	.d(i[7]), // IN
	.cp(vclk)  // IN
);

// PIX.NET (221) - rgbdi : fd1q
fd1q rgbdi_inst
(
	.q(rgbdi), // OUT
	.d(rgb), // IN
	.cp(vclk)  // IN
);

// PIX.NET (222) - rgbd : nivh
assign rgbd = rgbdi;

// PIX.NET (227) - gnd : tie0
assign gnd = 1'b0;

// PIX.NET (228) - r2a : join
assign r2a[0] = r2[0];
assign r2a[1] = r2[1];
assign r2a[2] = r2[2];
assign r2a[3] = r2[3];
assign r2a[4] = r2[4];
assign r2a[5] = r2[5];
assign r2a[6] = r2[6];
assign r2a[7] = r2[7];
assign r2a[8] = gnd;
assign r2a[9] = gnd;

// PIX.NET (229) - g2a : join
assign g2a[0] = g2[0];
assign g2a[1] = g2[1];
assign g2a[2] = g2[2];
assign g2a[3] = g2[3];
assign g2a[4] = g2[4];
assign g2a[5] = g2[5];
assign g2a[6] = g2[6];
assign g2a[7] = g2[7];
assign g2a[8] = gnd;
assign g2a[9] = gnd;

// PIX.NET (230) - b2a : join
assign b2a[0] = b2[0];
assign b2a[1] = b2[1];
assign b2a[2] = b2[2];
assign b2a[3] = b2[3];
assign b2a[4] = b2[4];
assign b2a[5] = b2[5];
assign b2a[6] = b2[6];
assign b2a[7] = b2[7];
assign b2a[8] = gnd;
assign b2a[9] = gnd;

// PIX.NET (231) - i2a : join
assign i2a[0] = i2[0];
assign i2a[1] = i2[1];
assign i2a[2] = i2[2];
assign i2a[3] = i2[3];
assign i2a[4] = i2[4];
assign i2a[5] = i2[5];
assign i2a[6] = i2[6];
assign i2a[7] = i2[7];
assign i2a[8] = gnd;
assign i2a[9] = gnd;

// PIX.NET (249) - r3 : mp1010a
mp1010a r3_inst
(
	.q({r3[0],r3[1],r3[2],r3[3],r3[4],r3[5],r3[6],r3[7],r3[8],r3[9],r3[10],r3[11],r3[12],r3[13],r3[14],r3[15],r3[16],r3[17],r3[18],r3[19]}), // OUT
	.a({r2a[0],r2a[1],r2a[2],r2a[3],r2a[4],r2a[5],r2a[6],r2a[7],r2a[8],r2a[9]}), // IN
	.b({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})  // IN
);

// PIX.NET (250) - g3 : mp1010a
mp1010a g3_inst
(
	.q({g3[0],g3[1],g3[2],g3[3],g3[4],g3[5],g3[6],g3[7],g3[8],g3[9],g3[10],g3[11],g3[12],g3[13],g3[14],g3[15],g3[16],g3[17],g3[18],g3[19]}), // OUT
	.a({g2a[0],g2a[1],g2a[2],g2a[3],g2a[4],g2a[5],g2a[6],g2a[7],g2a[8],g2a[9]}), // IN
	.b({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})  // IN
);

// PIX.NET (251) - b3 : mp1010a
mp1010a b3_inst
(
	.q({b3[0],b3[1],b3[2],b3[3],b3[4],b3[5],b3[6],b3[7],b3[8],b3[9],b3[10],b3[11],b3[12],b3[13],b3[14],b3[15],b3[16],b3[17],b3[18],b3[19]}), // OUT
	.a({b2a[0],b2a[1],b2a[2],b2a[3],b2a[4],b2a[5],b2a[6],b2a[7],b2a[8],b2a[9]}), // IN
	.b({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})  // IN
);

// PIX.NET (256) - r3b[0-2] : mx2
mx2 r3b_from_0_to_2_inst_0
(
	.z(r3b_0), // OUT
	.a0(r3[8]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_0_to_2_inst_1
(
	.z(r3b_1), // OUT
	.a0(r3[9]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_0_to_2_inst_2
(
	.z(r3b_2), // OUT
	.a0(r3[10]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);

// PIX.NET (257) - r3b[3-7] : mx2
mx2 r3b_from_3_to_7_inst_0
(
	.z(r3b_3), // OUT
	.a0(r3[11]), // IN
	.a1(r2[3]), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_3_to_7_inst_1
(
	.z(r3b_4), // OUT
	.a0(r3[12]), // IN
	.a1(r2[4]), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_3_to_7_inst_2
(
	.z(r3b_5), // OUT
	.a0(r3[13]), // IN
	.a1(r2[5]), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_3_to_7_inst_3
(
	.z(r3b_6), // OUT
	.a0(r3[14]), // IN
	.a1(r2[6]), // IN
	.s(rgbd)  // IN
);
mx2 r3b_from_3_to_7_inst_4
(
	.z(r3b_7), // OUT
	.a0(r3[15]), // IN
	.a1(r2[7]), // IN
	.s(rgbd)  // IN
);

// PIX.NET (259) - b3b[0-2] : mx2
mx2 b3b_from_0_to_2_inst_0
(
	.z(b3b_0), // OUT
	.a0(b3[8]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);
mx2 b3b_from_0_to_2_inst_1
(
	.z(b3b_1), // OUT
	.a0(b3[9]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);
mx2 b3b_from_0_to_2_inst_2
(
	.z(b3b_2), // OUT
	.a0(b3[10]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);

// PIX.NET (260) - b3b[3-4] : mx2
mx2 b3b_from_3_to_4_inst_0
(
	.z(b3b_3), // OUT
	.a0(b3[11]), // IN
	.a1(i2[6]), // IN
	.s(rgbd)  // IN
);
mx2 b3b_from_3_to_4_inst_1
(
	.z(b3b_4), // OUT
	.a0(b3[12]), // IN
	.a1(i2[7]), // IN
	.s(rgbd)  // IN
);

// PIX.NET (261) - b3b[5-7] : mx2
mx2 b3b_from_5_to_7_inst_0
(
	.z(b3b_5), // OUT
	.a0(b3[13]), // IN
	.a1(r2[0]), // IN
	.s(rgbd)  // IN
);
mx2 b3b_from_5_to_7_inst_1
(
	.z(b3b_6), // OUT
	.a0(b3[14]), // IN
	.a1(r2[1]), // IN
	.s(rgbd)  // IN
);
mx2 b3b_from_5_to_7_inst_2
(
	.z(b3b_7), // OUT
	.a0(b3[15]), // IN
	.a1(r2[2]), // IN
	.s(rgbd)  // IN
);

// PIX.NET (263) - g3b[0-1] : mx2
mx2 g3b_from_0_to_1_inst_0
(
	.z(g3b_0), // OUT
	.a0(g3[8]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_0_to_1_inst_1
(
	.z(g3b_1), // OUT
	.a0(g3[9]), // IN
	.a1(gnd), // IN
	.s(rgbd)  // IN
);

// PIX.NET (264) - g3b[2-7] : mx2
mx2 g3b_from_2_to_7_inst_0
(
	.z(g3b_2), // OUT
	.a0(g3[10]), // IN
	.a1(i2[0]), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_2_to_7_inst_1
(
	.z(g3b_3), // OUT
	.a0(g3[11]), // IN
	.a1(i2[1]), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_2_to_7_inst_2
(
	.z(g3b_4), // OUT
	.a0(g3[12]), // IN
	.a1(i2[2]), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_2_to_7_inst_3
(
	.z(g3b_5), // OUT
	.a0(g3[13]), // IN
	.a1(i2[3]), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_2_to_7_inst_4
(
	.z(g3b_6), // OUT
	.a0(g3[14]), // IN
	.a1(i2[4]), // IN
	.s(rgbd)  // IN
);
mx2 g3b_from_2_to_7_inst_5
(
	.z(g3b_7), // OUT
	.a0(g3[15]), // IN
	.a1(i2[5]), // IN
	.s(rgbd)  // IN
);

// PIX.NET (268) - r[0-7] : slatch
slatch r_from_0_to_7_inst_0
(
	.q(r_0_obuf), // IO
	.d(r3b_0), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_1
(
	.q(r_1_obuf), // IO
	.d(r3b_1), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_2
(
	.q(r_2_obuf), // IO
	.d(r3b_2), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_3
(
	.q(r_3_obuf), // IO
	.d(r3b_3), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_4
(
	.q(r_4_obuf), // IO
	.d(r3b_4), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_5
(
	.q(r_5_obuf), // IO
	.d(r3b_5), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_6
(
	.q(r_6_obuf), // IO
	.d(r3b_6), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch r_from_0_to_7_inst_7
(
	.q(r_7_obuf), // IO
	.d(r3b_7), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);

// PIX.NET (269) - g[0-7] : slatch
slatch g_from_0_to_7_inst_0
(
	.q(g_0_obuf), // IO
	.d(g3b_0), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_1
(
	.q(g_1_obuf), // IO
	.d(g3b_1), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_2
(
	.q(g_2_obuf), // IO
	.d(g3b_2), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_3
(
	.q(g_3_obuf), // IO
	.d(g3b_3), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_4
(
	.q(g_4_obuf), // IO
	.d(g3b_4), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_5
(
	.q(g_5_obuf), // IO
	.d(g3b_5), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_6
(
	.q(g_6_obuf), // IO
	.d(g3b_6), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch g_from_0_to_7_inst_7
(
	.q(g_7_obuf), // IO
	.d(g3b_7), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);

// PIX.NET (270) - b[0-7] : slatch
slatch b_from_0_to_7_inst_0
(
	.q(b_0_obuf), // IO
	.d(b3b_0), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_1
(
	.q(b_1_obuf), // IO
	.d(b3b_1), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_2
(
	.q(b_2_obuf), // IO
	.d(b3b_2), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_3
(
	.q(b_3_obuf), // IO
	.d(b3b_3), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_4
(
	.q(b_4_obuf), // IO
	.d(b3b_4), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_5
(
	.q(b_5_obuf), // IO
	.d(b3b_5), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_6
(
	.q(b_6_obuf), // IO
	.d(b3b_6), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
slatch b_from_0_to_7_inst_7
(
	.q(b_7_obuf), // IO
	.d(b3b_7), // IN
	.clk(vclk), // IN
	.en(ppd)  // IN
);
endmodule
