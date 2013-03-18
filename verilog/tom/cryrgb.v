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
	input ppd,
	input sys_clk // Generated
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
	.z /* OUT */ ({r1[0],r1[1],r1[2],r1[3],r1[4],r1[5],r1[6],r1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (202) - green : ra8008b
ra8008b green_inst
(
	.z /* OUT */ ({g1[0],g1[1],g1[2],g1[3],g1[4],g1[5],g1[6],g1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (203) - blue : ra8008c
ra8008c blue_inst
(
	.z /* OUT */ ({b1[0],b1[1],b1[2],b1[3],b1[4],b1[5],b1[6],b1[7]}),
	.clk /* IN */ (vclk),
	.a /* IN */ ({c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]}),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (208) - rgbtsti : or2
assign rgbtsti = rgb | mptest;

// PIX.NET (209) - rgbtst : nivh
assign rgbtst = rgbtsti;

// PIX.NET (210) - rt : mx2
mx2 rt_inst_0
(
	.z /* OUT */ (rt[0]),
	.a0 /* IN */ (r1[0]),
	.a1 /* IN */ (c[0]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_1
(
	.z /* OUT */ (rt[1]),
	.a0 /* IN */ (r1[1]),
	.a1 /* IN */ (c[1]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_2
(
	.z /* OUT */ (rt[2]),
	.a0 /* IN */ (r1[2]),
	.a1 /* IN */ (c[2]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_3
(
	.z /* OUT */ (rt[3]),
	.a0 /* IN */ (r1[3]),
	.a1 /* IN */ (c[3]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_4
(
	.z /* OUT */ (rt[4]),
	.a0 /* IN */ (r1[4]),
	.a1 /* IN */ (c[4]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_5
(
	.z /* OUT */ (rt[5]),
	.a0 /* IN */ (r1[5]),
	.a1 /* IN */ (c[5]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_6
(
	.z /* OUT */ (rt[6]),
	.a0 /* IN */ (r1[6]),
	.a1 /* IN */ (c[6]),
	.s /* IN */ (rgbtst)
);
mx2 rt_inst_7
(
	.z /* OUT */ (rt[7]),
	.a0 /* IN */ (r1[7]),
	.a1 /* IN */ (c[7]),
	.s /* IN */ (rgbtst)
);

// PIX.NET (211) - gt : mx2
mx2 gt_inst_0
(
	.z /* OUT */ (gt[0]),
	.a0 /* IN */ (g1[0]),
	.a1 /* IN */ (c[0]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_1
(
	.z /* OUT */ (gt[1]),
	.a0 /* IN */ (g1[1]),
	.a1 /* IN */ (c[1]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_2
(
	.z /* OUT */ (gt[2]),
	.a0 /* IN */ (g1[2]),
	.a1 /* IN */ (c[2]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_3
(
	.z /* OUT */ (gt[3]),
	.a0 /* IN */ (g1[3]),
	.a1 /* IN */ (c[3]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_4
(
	.z /* OUT */ (gt[4]),
	.a0 /* IN */ (g1[4]),
	.a1 /* IN */ (c[4]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_5
(
	.z /* OUT */ (gt[5]),
	.a0 /* IN */ (g1[5]),
	.a1 /* IN */ (c[5]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_6
(
	.z /* OUT */ (gt[6]),
	.a0 /* IN */ (g1[6]),
	.a1 /* IN */ (c[6]),
	.s /* IN */ (rgbtst)
);
mx2 gt_inst_7
(
	.z /* OUT */ (gt[7]),
	.a0 /* IN */ (g1[7]),
	.a1 /* IN */ (c[7]),
	.s /* IN */ (rgbtst)
);

// PIX.NET (212) - bt : mx2
mx2 bt_inst_0
(
	.z /* OUT */ (bt[0]),
	.a0 /* IN */ (b1[0]),
	.a1 /* IN */ (c[0]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_1
(
	.z /* OUT */ (bt[1]),
	.a0 /* IN */ (b1[1]),
	.a1 /* IN */ (c[1]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_2
(
	.z /* OUT */ (bt[2]),
	.a0 /* IN */ (b1[2]),
	.a1 /* IN */ (c[2]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_3
(
	.z /* OUT */ (bt[3]),
	.a0 /* IN */ (b1[3]),
	.a1 /* IN */ (c[3]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_4
(
	.z /* OUT */ (bt[4]),
	.a0 /* IN */ (b1[4]),
	.a1 /* IN */ (c[4]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_5
(
	.z /* OUT */ (bt[5]),
	.a0 /* IN */ (b1[5]),
	.a1 /* IN */ (c[5]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_6
(
	.z /* OUT */ (bt[6]),
	.a0 /* IN */ (b1[6]),
	.a1 /* IN */ (c[6]),
	.s /* IN */ (rgbtst)
);
mx2 bt_inst_7
(
	.z /* OUT */ (bt[7]),
	.a0 /* IN */ (b1[7]),
	.a1 /* IN */ (c[7]),
	.s /* IN */ (rgbtst)
);

// PIX.NET (216) - r2 : fd1q
fd1q r2_inst_0
(
	.q /* OUT */ (r2[0]),
	.d /* IN */ (rt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_1
(
	.q /* OUT */ (r2[1]),
	.d /* IN */ (rt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_2
(
	.q /* OUT */ (r2[2]),
	.d /* IN */ (rt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_3
(
	.q /* OUT */ (r2[3]),
	.d /* IN */ (rt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_4
(
	.q /* OUT */ (r2[4]),
	.d /* IN */ (rt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_5
(
	.q /* OUT */ (r2[5]),
	.d /* IN */ (rt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_6
(
	.q /* OUT */ (r2[6]),
	.d /* IN */ (rt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q r2_inst_7
(
	.q /* OUT */ (r2[7]),
	.d /* IN */ (rt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (217) - g2 : fd1q
fd1q g2_inst_0
(
	.q /* OUT */ (g2[0]),
	.d /* IN */ (gt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_1
(
	.q /* OUT */ (g2[1]),
	.d /* IN */ (gt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_2
(
	.q /* OUT */ (g2[2]),
	.d /* IN */ (gt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_3
(
	.q /* OUT */ (g2[3]),
	.d /* IN */ (gt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_4
(
	.q /* OUT */ (g2[4]),
	.d /* IN */ (gt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_5
(
	.q /* OUT */ (g2[5]),
	.d /* IN */ (gt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_6
(
	.q /* OUT */ (g2[6]),
	.d /* IN */ (gt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q g2_inst_7
(
	.q /* OUT */ (g2[7]),
	.d /* IN */ (gt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (218) - b2 : fd1q
fd1q b2_inst_0
(
	.q /* OUT */ (b2[0]),
	.d /* IN */ (bt[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_1
(
	.q /* OUT */ (b2[1]),
	.d /* IN */ (bt[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_2
(
	.q /* OUT */ (b2[2]),
	.d /* IN */ (bt[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_3
(
	.q /* OUT */ (b2[3]),
	.d /* IN */ (bt[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_4
(
	.q /* OUT */ (b2[4]),
	.d /* IN */ (bt[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_5
(
	.q /* OUT */ (b2[5]),
	.d /* IN */ (bt[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_6
(
	.q /* OUT */ (b2[6]),
	.d /* IN */ (bt[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q b2_inst_7
(
	.q /* OUT */ (b2[7]),
	.d /* IN */ (bt[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (219) - i2 : fd1q
fd1q i2_inst_0
(
	.q /* OUT */ (i2[0]),
	.d /* IN */ (i[0]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_1
(
	.q /* OUT */ (i2[1]),
	.d /* IN */ (i[1]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_2
(
	.q /* OUT */ (i2[2]),
	.d /* IN */ (i[2]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_3
(
	.q /* OUT */ (i2[3]),
	.d /* IN */ (i[3]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_4
(
	.q /* OUT */ (i2[4]),
	.d /* IN */ (i[4]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_5
(
	.q /* OUT */ (i2[5]),
	.d /* IN */ (i[5]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_6
(
	.q /* OUT */ (i2[6]),
	.d /* IN */ (i[6]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);
fd1q i2_inst_7
(
	.q /* OUT */ (i2[7]),
	.d /* IN */ (i[7]),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (221) - rgbdi : fd1q
fd1q rgbdi_inst
(
	.q /* OUT */ (rgbdi),
	.d /* IN */ (rgb),
	.cp /* IN */ (vclk),
	.sys_clk(sys_clk) // Generated
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
	.q /* OUT */ ({r3[0],r3[1],r3[2],r3[3],r3[4],r3[5],r3[6],r3[7],r3[8],r3[9],r3[10],r3[11],r3[12],r3[13],r3[14],r3[15],r3[16],r3[17],r3[18],r3[19]}),
	.a /* IN */ ({r2a[0],r2a[1],r2a[2],r2a[3],r2a[4],r2a[5],r2a[6],r2a[7],r2a[8],r2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (250) - g3 : mp1010a
mp1010a g3_inst
(
	.q /* OUT */ ({g3[0],g3[1],g3[2],g3[3],g3[4],g3[5],g3[6],g3[7],g3[8],g3[9],g3[10],g3[11],g3[12],g3[13],g3[14],g3[15],g3[16],g3[17],g3[18],g3[19]}),
	.a /* IN */ ({g2a[0],g2a[1],g2a[2],g2a[3],g2a[4],g2a[5],g2a[6],g2a[7],g2a[8],g2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (251) - b3 : mp1010a
mp1010a b3_inst
(
	.q /* OUT */ ({b3[0],b3[1],b3[2],b3[3],b3[4],b3[5],b3[6],b3[7],b3[8],b3[9],b3[10],b3[11],b3[12],b3[13],b3[14],b3[15],b3[16],b3[17],b3[18],b3[19]}),
	.a /* IN */ ({b2a[0],b2a[1],b2a[2],b2a[3],b2a[4],b2a[5],b2a[6],b2a[7],b2a[8],b2a[9]}),
	.b /* IN */ ({i2a[0],i2a[1],i2a[2],i2a[3],i2a[4],i2a[5],i2a[6],i2a[7],i2a[8],i2a[9]})
);

// PIX.NET (256) - r3b[0-2] : mx2
mx2 r3b_from_0_to_2_inst_0
(
	.z /* OUT */ (r3b_0),
	.a0 /* IN */ (r3[8]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_0_to_2_inst_1
(
	.z /* OUT */ (r3b_1),
	.a0 /* IN */ (r3[9]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_0_to_2_inst_2
(
	.z /* OUT */ (r3b_2),
	.a0 /* IN */ (r3[10]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);

// PIX.NET (257) - r3b[3-7] : mx2
mx2 r3b_from_3_to_7_inst_0
(
	.z /* OUT */ (r3b_3),
	.a0 /* IN */ (r3[11]),
	.a1 /* IN */ (r2[3]),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_3_to_7_inst_1
(
	.z /* OUT */ (r3b_4),
	.a0 /* IN */ (r3[12]),
	.a1 /* IN */ (r2[4]),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_3_to_7_inst_2
(
	.z /* OUT */ (r3b_5),
	.a0 /* IN */ (r3[13]),
	.a1 /* IN */ (r2[5]),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_3_to_7_inst_3
(
	.z /* OUT */ (r3b_6),
	.a0 /* IN */ (r3[14]),
	.a1 /* IN */ (r2[6]),
	.s /* IN */ (rgbd)
);
mx2 r3b_from_3_to_7_inst_4
(
	.z /* OUT */ (r3b_7),
	.a0 /* IN */ (r3[15]),
	.a1 /* IN */ (r2[7]),
	.s /* IN */ (rgbd)
);

// PIX.NET (259) - b3b[0-2] : mx2
mx2 b3b_from_0_to_2_inst_0
(
	.z /* OUT */ (b3b_0),
	.a0 /* IN */ (b3[8]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);
mx2 b3b_from_0_to_2_inst_1
(
	.z /* OUT */ (b3b_1),
	.a0 /* IN */ (b3[9]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);
mx2 b3b_from_0_to_2_inst_2
(
	.z /* OUT */ (b3b_2),
	.a0 /* IN */ (b3[10]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);

// PIX.NET (260) - b3b[3-4] : mx2
mx2 b3b_from_3_to_4_inst_0
(
	.z /* OUT */ (b3b_3),
	.a0 /* IN */ (b3[11]),
	.a1 /* IN */ (i2[6]),
	.s /* IN */ (rgbd)
);
mx2 b3b_from_3_to_4_inst_1
(
	.z /* OUT */ (b3b_4),
	.a0 /* IN */ (b3[12]),
	.a1 /* IN */ (i2[7]),
	.s /* IN */ (rgbd)
);

// PIX.NET (261) - b3b[5-7] : mx2
mx2 b3b_from_5_to_7_inst_0
(
	.z /* OUT */ (b3b_5),
	.a0 /* IN */ (b3[13]),
	.a1 /* IN */ (r2[0]),
	.s /* IN */ (rgbd)
);
mx2 b3b_from_5_to_7_inst_1
(
	.z /* OUT */ (b3b_6),
	.a0 /* IN */ (b3[14]),
	.a1 /* IN */ (r2[1]),
	.s /* IN */ (rgbd)
);
mx2 b3b_from_5_to_7_inst_2
(
	.z /* OUT */ (b3b_7),
	.a0 /* IN */ (b3[15]),
	.a1 /* IN */ (r2[2]),
	.s /* IN */ (rgbd)
);

// PIX.NET (263) - g3b[0-1] : mx2
mx2 g3b_from_0_to_1_inst_0
(
	.z /* OUT */ (g3b_0),
	.a0 /* IN */ (g3[8]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_0_to_1_inst_1
(
	.z /* OUT */ (g3b_1),
	.a0 /* IN */ (g3[9]),
	.a1 /* IN */ (gnd),
	.s /* IN */ (rgbd)
);

// PIX.NET (264) - g3b[2-7] : mx2
mx2 g3b_from_2_to_7_inst_0
(
	.z /* OUT */ (g3b_2),
	.a0 /* IN */ (g3[10]),
	.a1 /* IN */ (i2[0]),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_2_to_7_inst_1
(
	.z /* OUT */ (g3b_3),
	.a0 /* IN */ (g3[11]),
	.a1 /* IN */ (i2[1]),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_2_to_7_inst_2
(
	.z /* OUT */ (g3b_4),
	.a0 /* IN */ (g3[12]),
	.a1 /* IN */ (i2[2]),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_2_to_7_inst_3
(
	.z /* OUT */ (g3b_5),
	.a0 /* IN */ (g3[13]),
	.a1 /* IN */ (i2[3]),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_2_to_7_inst_4
(
	.z /* OUT */ (g3b_6),
	.a0 /* IN */ (g3[14]),
	.a1 /* IN */ (i2[4]),
	.s /* IN */ (rgbd)
);
mx2 g3b_from_2_to_7_inst_5
(
	.z /* OUT */ (g3b_7),
	.a0 /* IN */ (g3[15]),
	.a1 /* IN */ (i2[5]),
	.s /* IN */ (rgbd)
);

// PIX.NET (268) - r[0-7] : slatch
slatch r_from_0_to_7_inst_0
(
	.q /* OUT */ (r_0),
	.d /* IN */ (r3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_1
(
	.q /* OUT */ (r_1),
	.d /* IN */ (r3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_2
(
	.q /* OUT */ (r_2),
	.d /* IN */ (r3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_3
(
	.q /* OUT */ (r_3),
	.d /* IN */ (r3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_4
(
	.q /* OUT */ (r_4),
	.d /* IN */ (r3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_5
(
	.q /* OUT */ (r_5),
	.d /* IN */ (r3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_6
(
	.q /* OUT */ (r_6),
	.d /* IN */ (r3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch r_from_0_to_7_inst_7
(
	.q /* OUT */ (r_7),
	.d /* IN */ (r3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (269) - g[0-7] : slatch
slatch g_from_0_to_7_inst_0
(
	.q /* OUT */ (g_0),
	.d /* IN */ (g3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_1
(
	.q /* OUT */ (g_1),
	.d /* IN */ (g3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_2
(
	.q /* OUT */ (g_2),
	.d /* IN */ (g3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_3
(
	.q /* OUT */ (g_3),
	.d /* IN */ (g3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_4
(
	.q /* OUT */ (g_4),
	.d /* IN */ (g3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_5
(
	.q /* OUT */ (g_5),
	.d /* IN */ (g3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_6
(
	.q /* OUT */ (g_6),
	.d /* IN */ (g3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch g_from_0_to_7_inst_7
(
	.q /* OUT */ (g_7),
	.d /* IN */ (g3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);

// PIX.NET (270) - b[0-7] : slatch
slatch b_from_0_to_7_inst_0
(
	.q /* OUT */ (b_0),
	.d /* IN */ (b3b_0),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_1
(
	.q /* OUT */ (b_1),
	.d /* IN */ (b3b_1),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_2
(
	.q /* OUT */ (b_2),
	.d /* IN */ (b3b_2),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_3
(
	.q /* OUT */ (b_3),
	.d /* IN */ (b3b_3),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_4
(
	.q /* OUT */ (b_4),
	.d /* IN */ (b3b_4),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_5
(
	.q /* OUT */ (b_5),
	.d /* IN */ (b3b_5),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_6
(
	.q /* OUT */ (b_6),
	.d /* IN */ (b3b_6),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
slatch b_from_0_to_7_inst_7
(
	.q /* OUT */ (b_7),
	.d /* IN */ (b3b_7),
	.clk /* IN */ (vclk),
	.en /* IN */ (ppd),
	.sys_clk(sys_clk) // Generated
);
endmodule
