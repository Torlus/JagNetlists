`include "defs.v"

module wbk
(
	input d_14,
	input d_15,
	input d_16,
	input d_17,
	input d_18,
	input d_19,
	input d_20,
	input d_21,
	input d_22,
	input d_23,
	input d_43,
	input d_44,
	input d_45,
	input d_46,
	input d_47,
	input d_48,
	input d_49,
	input d_50,
	input d_51,
	input d_52,
	input d_53,
	input d_54,
	input d_55,
	input d_56,
	input d_57,
	input d_58,
	input d_59,
	input d_60,
	input d_61,
	input d_62,
	input d_63,
	input obld_0,
	input obld_2,
	input dwidth_0,
	input dwidth_1,
	input dwidth_2,
	input dwidth_3,
	input dwidth_4,
	input dwidth_5,
	input dwidth_6,
	input dwidth_7,
	input dwidth_8,
	input dwidth_9,
	input vscale_0,
	input vscale_1,
	input vscale_2,
	input vscale_3,
	input vscale_4,
	input vscale_5,
	input vscale_6,
	input vscale_7,
	input clk,
	input resetl,
	input scaled,
	input wbkstart,
	output newdata_0,
	output newdata_1,
	output newdata_2,
	output newdata_3,
	output newdata_4,
	output newdata_5,
	output newdata_6,
	output newdata_7,
	output newdata_8,
	output newdata_9,
	output newdata_10,
	output newdata_11,
	output newdata_12,
	output newdata_13,
	output newdata_14,
	output newdata_15,
	output newdata_16,
	output newdata_17,
	output newdata_18,
	output newdata_19,
	output newdata_20,
	output newheight_0,
	output newheight_1,
	output newheight_2,
	output newheight_3,
	output newheight_4,
	output newheight_5,
	output newheight_6,
	output newheight_7,
	output newheight_8,
	output newheight_9,
	output newrem_0,
	output newrem_1,
	output newrem_2,
	output newrem_3,
	output newrem_4,
	output newrem_5,
	output newrem_6,
	output newrem_7,
	output heightnz,
	output wbkdone
);
wire [0:8] newrem;
wire [0:9] newheight;
wire [0:20] newdata;
wire newrem_8;
wire q0;
wire d0;
wire q1;
wire d1;
wire q2;
wire d2;
wire d00;
wire notwbkstart;
wire d01;
wire notscaled;
wire d02;
wire heightz;
wire d03;
wire intremnz;
wire d20;
wire d21;
wire intremz;
wire decheight;
wire addnewdata;
wire addrem;
wire decrem;
wire intremz0;
wire rd_0;
wire rd_1;
wire rd_2;
wire rd_3;
wire rd_4;
wire gnd;
wire rd_5;
wire rd_6;
wire rd_7;
wire vcc;
wire rd_8;
wire rs_0;
wire rc_0;
wire rs_1;
wire rs_2;
wire rs_3;
wire rs_4;
wire rs_5;
wire rs_6;
wire rs_7;
wire rs_8;
wire rc_1;
wire rc_2;
wire rc_3;
wire rc_4;
wire rc_5;
wire rc_6;
wire rc_7;
wire rc_8;
wire rem_0;
wire rem_1;
wire rem_2;
wire rem_3;
wire rem_4;
wire rem_5;
wire rem_6;
wire rem_7;
wire rem_8;
wire latchrem;
wire latchremi;
wire newheighti_0;
wire hc_0;
wire newheighti_1;
wire hc_1;
wire hc_2;
wire hc_3;
wire hc_4;
wire hc_5;
wire hc_6;
wire hc_7;
wire hc_8;
wire hc_9;
wire heightz0;
wire heightz1;
wire ds_0;
wire ds_1;
wire ds_2;
wire ds_3;
wire dc_3;
wire ds_4;
wire ds_5;
wire ds_6;
wire ds_7;
wire dc_7;
wire ds_8;
wire ds_9;
wire ds_10;
wire ds_11;
wire dc_11;
wire ds_12;
wire ds_13;
wire ds_14;
wire ds_15;
wire ds_16;
wire ds_17;
wire ds_18;
wire ds_19;
wire ds_20;
wire data_0;
wire data_1;
wire data_2;
wire data_3;
wire data_4;
wire data_5;
wire data_6;
wire data_7;
wire data_8;
wire data_9;
wire data_10;
wire data_11;
wire data_12;
wire data_13;
wire data_14;
wire data_15;
wire data_16;
wire data_17;
wire data_18;
wire data_19;
wire data_20;
wire newdataclk;
wire newdatai_11;
wire newdatai_12;
wire newdatai_13;
wire newdatai_14;
wire newdatai_15;
wire latchdata;

// Output buffers
wire newdata_0_obuf;
wire newdata_1_obuf;
wire newdata_2_obuf;
wire newdata_3_obuf;
wire newdata_4_obuf;
wire newdata_5_obuf;
wire newdata_6_obuf;
wire newdata_7_obuf;
wire newdata_8_obuf;
wire newdata_9_obuf;
wire newdata_10_obuf;
wire newdata_11_obuf;
wire newdata_12_obuf;
wire newdata_13_obuf;
wire newdata_14_obuf;
wire newdata_15_obuf;
wire newdata_16_obuf;
wire newdata_17_obuf;
wire newdata_18_obuf;
wire newdata_19_obuf;
wire newdata_20_obuf;
wire newheight_0_obuf;
wire newheight_1_obuf;
wire newheight_2_obuf;
wire newheight_3_obuf;
wire newheight_4_obuf;
wire newheight_5_obuf;
wire newheight_6_obuf;
wire newheight_7_obuf;
wire newheight_8_obuf;
wire newheight_9_obuf;
wire newrem_0_obuf;
wire newrem_1_obuf;
wire newrem_2_obuf;
wire newrem_3_obuf;
wire newrem_4_obuf;
wire newrem_5_obuf;
wire newrem_6_obuf;
wire newrem_7_obuf;
wire heightnz_obuf;
wire wbkdone_obuf;


// Output buffers
assign newdata_0 = newdata_0_obuf;
assign newdata_1 = newdata_1_obuf;
assign newdata_2 = newdata_2_obuf;
assign newdata_3 = newdata_3_obuf;
assign newdata_4 = newdata_4_obuf;
assign newdata_5 = newdata_5_obuf;
assign newdata_6 = newdata_6_obuf;
assign newdata_7 = newdata_7_obuf;
assign newdata_8 = newdata_8_obuf;
assign newdata_9 = newdata_9_obuf;
assign newdata_10 = newdata_10_obuf;
assign newdata_11 = newdata_11_obuf;
assign newdata_12 = newdata_12_obuf;
assign newdata_13 = newdata_13_obuf;
assign newdata_14 = newdata_14_obuf;
assign newdata_15 = newdata_15_obuf;
assign newdata_16 = newdata_16_obuf;
assign newdata_17 = newdata_17_obuf;
assign newdata_18 = newdata_18_obuf;
assign newdata_19 = newdata_19_obuf;
assign newdata_20 = newdata_20_obuf;
assign newheight_0 = newheight_0_obuf;
assign newheight_1 = newheight_1_obuf;
assign newheight_2 = newheight_2_obuf;
assign newheight_3 = newheight_3_obuf;
assign newheight_4 = newheight_4_obuf;
assign newheight_5 = newheight_5_obuf;
assign newheight_6 = newheight_6_obuf;
assign newheight_7 = newheight_7_obuf;
assign newheight_8 = newheight_8_obuf;
assign newheight_9 = newheight_9_obuf;
assign newrem_0 = newrem_0_obuf;
assign newrem_1 = newrem_1_obuf;
assign newrem_2 = newrem_2_obuf;
assign newrem_3 = newrem_3_obuf;
assign newrem_4 = newrem_4_obuf;
assign newrem_5 = newrem_5_obuf;
assign newrem_6 = newrem_6_obuf;
assign newrem_7 = newrem_7_obuf;
assign heightnz = heightnz_obuf;
assign wbkdone = wbkdone_obuf;


// WBK.NET (23) - newrem : join
assign newrem[0] = newrem_0_obuf;
assign newrem[1] = newrem_1_obuf;
assign newrem[2] = newrem_2_obuf;
assign newrem[3] = newrem_3_obuf;
assign newrem[4] = newrem_4_obuf;
assign newrem[5] = newrem_5_obuf;
assign newrem[6] = newrem_6_obuf;
assign newrem[7] = newrem_7_obuf;
assign newrem[8] = newrem_8;

// WBK.NET (24) - newremu : dummy

// WBK.NET (25) - newheight : join
assign newheight[0] = newheight_0_obuf;
assign newheight[1] = newheight_1_obuf;
assign newheight[2] = newheight_2_obuf;
assign newheight[3] = newheight_3_obuf;
assign newheight[4] = newheight_4_obuf;
assign newheight[5] = newheight_5_obuf;
assign newheight[6] = newheight_6_obuf;
assign newheight[7] = newheight_7_obuf;
assign newheight[8] = newheight_8_obuf;
assign newheight[9] = newheight_9_obuf;

// WBK.NET (26) - newheightu : dummy

// WBK.NET (27) - newdata : join
assign newdata[0] = newdata_0_obuf;
assign newdata[1] = newdata_1_obuf;
assign newdata[2] = newdata_2_obuf;
assign newdata[3] = newdata_3_obuf;
assign newdata[4] = newdata_4_obuf;
assign newdata[5] = newdata_5_obuf;
assign newdata[6] = newdata_6_obuf;
assign newdata[7] = newdata_7_obuf;
assign newdata[8] = newdata_8_obuf;
assign newdata[9] = newdata_9_obuf;
assign newdata[10] = newdata_10_obuf;
assign newdata[11] = newdata_11_obuf;
assign newdata[12] = newdata_12_obuf;
assign newdata[13] = newdata_13_obuf;
assign newdata[14] = newdata_14_obuf;
assign newdata[15] = newdata_15_obuf;
assign newdata[16] = newdata_16_obuf;
assign newdata[17] = newdata_17_obuf;
assign newdata[18] = newdata_18_obuf;
assign newdata[19] = newdata_19_obuf;
assign newdata[20] = newdata_20_obuf;

// WBK.NET (28) - newdatau : dummy

// WBK.NET (45) - q0 : fd4q
fd4q q0_inst
(
	.q(q0), // OUT
	.d(d0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// WBK.NET (46) - q1 : fd2q
fd2q q1_inst
(
	.q(q1), // OUT
	.d(d1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// WBK.NET (47) - q2 : fd2q
fd2q q2_inst
(
	.q(q2), // OUT
	.d(d2), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// WBK.NET (49) - d00 : nd2
assign d00 = ~(q0 & notwbkstart);

// WBK.NET (50) - d01 : nd2
assign d01 = ~(q1 & notscaled);

// WBK.NET (51) - d02 : nd2
assign d02 = ~(q2 & heightz);

// WBK.NET (52) - d03 : nd2
assign d03 = ~(q2 & intremnz);

// WBK.NET (53) - d0 : nd4
assign d0 = ~(d00 & d01 & d02 & d03);

// WBK.NET (55) - d1 : an2
assign d1 = q0 & wbkstart;

// WBK.NET (57) - d20 : nd2
assign d20 = ~(q1 & scaled);

// WBK.NET (58) - d21 : nd3
assign d21 = ~(q2 & heightnz_obuf & intremz);

// WBK.NET (59) - d2 : nd2
assign d2 = ~(d20 & d21);

// WBK.NET (61) - wbkdone : nivh
assign wbkdone_obuf = q0;

// WBK.NET (63) - decheight : nd2
assign decheight = ~(d01 & d21);

// WBK.NET (64) - addnewdata : nd2
assign addnewdata = ~(d01 & d21);

// WBK.NET (65) - addrem : iv
assign addrem = ~d21;

// WBK.NET (66) - decrem : ivm
assign decrem = ~d20;

// WBK.NET (68) - notwbkstart : iv
assign notwbkstart = ~wbkstart;

// WBK.NET (69) - notscaled : iv
assign notscaled = ~scaled;

// WBK.NET (73) - intremz0 : nr4
assign intremz0 = ~(newrem_5_obuf | newrem_6_obuf | newrem_7_obuf | newrem_8);

// WBK.NET (74) - intremz : or2
assign intremz = intremz0 | newrem_8;

// WBK.NET (75) - intremnz : iv
assign intremnz = ~intremz;

// WBK.NET (83) - rd[0-4] : mx2
mx2 rd_from_0_to_4_inst_0
(
	.z(rd_0), // OUT
	.a0(vscale_0), // IN
	.a1(gnd), // IN
	.s(decrem)  // IN
);
mx2 rd_from_0_to_4_inst_1
(
	.z(rd_1), // OUT
	.a0(vscale_1), // IN
	.a1(gnd), // IN
	.s(decrem)  // IN
);
mx2 rd_from_0_to_4_inst_2
(
	.z(rd_2), // OUT
	.a0(vscale_2), // IN
	.a1(gnd), // IN
	.s(decrem)  // IN
);
mx2 rd_from_0_to_4_inst_3
(
	.z(rd_3), // OUT
	.a0(vscale_3), // IN
	.a1(gnd), // IN
	.s(decrem)  // IN
);
mx2 rd_from_0_to_4_inst_4
(
	.z(rd_4), // OUT
	.a0(vscale_4), // IN
	.a1(gnd), // IN
	.s(decrem)  // IN
);

// WBK.NET (84) - rd[5-7] : mx2
mx2 rd_from_5_to_7_inst_0
(
	.z(rd_5), // OUT
	.a0(vscale_5), // IN
	.a1(vcc), // IN
	.s(decrem)  // IN
);
mx2 rd_from_5_to_7_inst_1
(
	.z(rd_6), // OUT
	.a0(vscale_6), // IN
	.a1(vcc), // IN
	.s(decrem)  // IN
);
mx2 rd_from_5_to_7_inst_2
(
	.z(rd_7), // OUT
	.a0(vscale_7), // IN
	.a1(vcc), // IN
	.s(decrem)  // IN
);

// WBK.NET (85) - rd[8] : niv
assign rd_8 = decrem;

// WBK.NET (87) - rs[0] : ha1
ha1 rs_index_0_inst
(
	.s(rs_0), // OUT
	.co(rc_0), // OUT
	.a(newrem_0_obuf), // IN
	.b(rd_0)  // IN
);

// WBK.NET (88) - rs[1-8] : fa1
fa1 rs_from_1_to_8_inst_0
(
	.s(rs_1), // OUT
	.co(rc_1), // OUT
	.ci(newrem_1_obuf), // IN
	.a(rd_1), // IN
	.b(rc_0)  // IN
);
fa1 rs_from_1_to_8_inst_1
(
	.s(rs_2), // OUT
	.co(rc_2), // OUT
	.ci(newrem_2_obuf), // IN
	.a(rd_2), // IN
	.b(rc_1)  // IN
);
fa1 rs_from_1_to_8_inst_2
(
	.s(rs_3), // OUT
	.co(rc_3), // OUT
	.ci(newrem_3_obuf), // IN
	.a(rd_3), // IN
	.b(rc_2)  // IN
);
fa1 rs_from_1_to_8_inst_3
(
	.s(rs_4), // OUT
	.co(rc_4), // OUT
	.ci(newrem_4_obuf), // IN
	.a(rd_4), // IN
	.b(rc_3)  // IN
);
fa1 rs_from_1_to_8_inst_4
(
	.s(rs_5), // OUT
	.co(rc_5), // OUT
	.ci(newrem_5_obuf), // IN
	.a(rd_5), // IN
	.b(rc_4)  // IN
);
fa1 rs_from_1_to_8_inst_5
(
	.s(rs_6), // OUT
	.co(rc_6), // OUT
	.ci(newrem_6_obuf), // IN
	.a(rd_6), // IN
	.b(rc_5)  // IN
);
fa1 rs_from_1_to_8_inst_6
(
	.s(rs_7), // OUT
	.co(rc_7), // OUT
	.ci(newrem_7_obuf), // IN
	.a(rd_7), // IN
	.b(rc_6)  // IN
);
fa1 rs_from_1_to_8_inst_7
(
	.s(rs_8), // OUT
	.co(rc_8), // OUT
	.ci(newrem_8), // IN
	.a(rd_8), // IN
	.b(rc_7)  // IN
);

// WBK.NET (92) - rem[0-7] : mx2
mx2 rem_from_0_to_7_inst_0
(
	.z(rem_0), // OUT
	.a0(rs_0), // IN
	.a1(d_16), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_1
(
	.z(rem_1), // OUT
	.a0(rs_1), // IN
	.a1(d_17), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_2
(
	.z(rem_2), // OUT
	.a0(rs_2), // IN
	.a1(d_18), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_3
(
	.z(rem_3), // OUT
	.a0(rs_3), // IN
	.a1(d_19), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_4
(
	.z(rem_4), // OUT
	.a0(rs_4), // IN
	.a1(d_20), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_5
(
	.z(rem_5), // OUT
	.a0(rs_5), // IN
	.a1(d_21), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_6
(
	.z(rem_6), // OUT
	.a0(rs_6), // IN
	.a1(d_22), // IN
	.s(obld_2)  // IN
);
mx2 rem_from_0_to_7_inst_7
(
	.z(rem_7), // OUT
	.a0(rs_7), // IN
	.a1(d_23), // IN
	.s(obld_2)  // IN
);

// WBK.NET (93) - rem[8] : mx2
mx2 rem_index_8_inst
(
	.z(rem_8), // OUT
	.a0(rs_8), // IN
	.a1(gnd), // IN
	.s(obld_2)  // IN
);

// WBK.NET (95) - newrem[0-8] : slatch
slatch newrem_from_0_to_8_inst_0
(
	.q(newrem_0_obuf), // IO
	.d(rem_0), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_1
(
	.q(newrem_1_obuf), // IO
	.d(rem_1), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_2
(
	.q(newrem_2_obuf), // IO
	.d(rem_2), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_3
(
	.q(newrem_3_obuf), // IO
	.d(rem_3), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_4
(
	.q(newrem_4_obuf), // IO
	.d(rem_4), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_5
(
	.q(newrem_5_obuf), // IO
	.d(rem_5), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_6
(
	.q(newrem_6_obuf), // IO
	.d(rem_6), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_7
(
	.q(newrem_7_obuf), // IO
	.d(rem_7), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);
slatch newrem_from_0_to_8_inst_8
(
	.q(newrem_8), // IO
	.d(rem_8), // IN
	.clk(clk), // IN
	.en(latchrem)  // IN
);

// WBK.NET (97) - latchremi : nr3
assign latchremi = ~(obld_2 | addrem | decrem);

// WBK.NET (98) - latchrem : ivm
assign latchrem = ~latchremi;

// WBK.NET (103) - newheighti[0] : dncnt
dncnt newheighti_index_0_inst
(
	.q(newheighti_0), // IO
	.co(hc_0), // IO
	.d(d_14), // IN
	.clk(clk), // IN
	.ci(decheight), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);

// WBK.NET (104) - newheighti[1] : dncnt
dncnt newheighti_index_1_inst
(
	.q(newheighti_1), // IO
	.co(hc_1), // IO
	.d(d_15), // IN
	.clk(clk), // IN
	.ci(hc_0), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);

// WBK.NET (105) - newheight[2-9] : dncnt
dncnt newheight_from_2_to_9_inst_0
(
	.q(newheight_2_obuf), // IO
	.co(hc_2), // IO
	.d(d_16), // IN
	.clk(clk), // IN
	.ci(hc_1), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_1
(
	.q(newheight_3_obuf), // IO
	.co(hc_3), // IO
	.d(d_17), // IN
	.clk(clk), // IN
	.ci(hc_2), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_2
(
	.q(newheight_4_obuf), // IO
	.co(hc_4), // IO
	.d(d_18), // IN
	.clk(clk), // IN
	.ci(hc_3), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_3
(
	.q(newheight_5_obuf), // IO
	.co(hc_5), // IO
	.d(d_19), // IN
	.clk(clk), // IN
	.ci(hc_4), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_4
(
	.q(newheight_6_obuf), // IO
	.co(hc_6), // IO
	.d(d_20), // IN
	.clk(clk), // IN
	.ci(hc_5), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_5
(
	.q(newheight_7_obuf), // IO
	.co(hc_7), // IO
	.d(d_21), // IN
	.clk(clk), // IN
	.ci(hc_6), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_6
(
	.q(newheight_8_obuf), // IO
	.co(hc_8), // IO
	.d(d_22), // IN
	.clk(clk), // IN
	.ci(hc_7), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);
dncnt newheight_from_2_to_9_inst_7
(
	.q(newheight_9_obuf), // IO
	.co(hc_9), // IO
	.d(d_23), // IN
	.clk(clk), // IN
	.ci(hc_8), // IN
	.ld(obld_0), // IN
	.resl(resetl)  // IN
);

// WBK.NET (106) - newheight[0-1] : nivm
assign newheight_0_obuf = newheighti_0;
assign newheight_1_obuf = newheighti_1;

// WBK.NET (108) - heightz0 : nr6
assign heightz0 = ~(newheight_0_obuf | newheight_1_obuf | newheight_2_obuf | newheight_3_obuf | newheight_4_obuf | newheight_5_obuf);

// WBK.NET (109) - heightz1 : nr4
assign heightz1 = ~(newheight_6_obuf | newheight_7_obuf | newheight_8_obuf | newheight_9_obuf);

// WBK.NET (110) - heightnz : nd2
assign heightnz_obuf = ~(heightz0 & heightz1);

// WBK.NET (111) - heightz : iv
assign heightz = ~heightnz_obuf;

// WBK.NET (118) - ds[0] : add4
add4 ds_index_0_inst
(
	.q_0(ds_0), // OUT
	.q_1(ds_1), // OUT
	.q_2(ds_2), // OUT
	.q_3(ds_3), // OUT
	.co(dc_3), // OUT
	.a_0(dwidth_0), // IN
	.a_1(dwidth_1), // IN
	.a_2(dwidth_2), // IN
	.a_3(dwidth_3), // IN
	.b_0(newdata_0_obuf), // IN
	.b_1(newdata_1_obuf), // IN
	.b_2(newdata_2_obuf), // IN
	.b_3(newdata_3_obuf), // IN
	.ci(gnd)  // IN
);

// WBK.NET (119) - ds[1] : add4
add4 ds_index_1_inst
(
	.q_0(ds_4), // OUT
	.q_1(ds_5), // OUT
	.q_2(ds_6), // OUT
	.q_3(ds_7), // OUT
	.co(dc_7), // OUT
	.a_0(dwidth_4), // IN
	.a_1(dwidth_5), // IN
	.a_2(dwidth_6), // IN
	.a_3(dwidth_7), // IN
	.b_0(newdata_4_obuf), // IN
	.b_1(newdata_5_obuf), // IN
	.b_2(newdata_6_obuf), // IN
	.b_3(newdata_7_obuf), // IN
	.ci(dc_3)  // IN
);

// WBK.NET (120) - ds[2] : add4
add4 ds_index_2_inst
(
	.q_0(ds_8), // OUT
	.q_1(ds_9), // OUT
	.q_2(ds_10), // OUT
	.q_3(ds_11), // OUT
	.co(dc_11), // OUT
	.a_0(dwidth_8), // IN
	.a_1(dwidth_9), // IN
	.a_2(gnd), // IN
	.a_3(gnd), // IN
	.b_0(newdata_8_obuf), // IN
	.b_1(newdata_9_obuf), // IN
	.b_2(newdata_10_obuf), // IN
	.b_3(newdata_11_obuf), // IN
	.ci(dc_7)  // IN
);

// WBK.NET (121) - ds[3] : ha9
ha9 ds_index_3_inst
(
	.q_0(ds_12), // OUT
	.q_1(ds_13), // OUT
	.q_2(ds_14), // OUT
	.q_3(ds_15), // OUT
	.q_4(ds_16), // OUT
	.q_5(ds_17), // OUT
	.q_6(ds_18), // OUT
	.q_7(ds_19), // OUT
	.q_8(ds_20), // OUT
	.a_0(newdata_12_obuf), // IN
	.a_1(newdata_13_obuf), // IN
	.a_2(newdata_14_obuf), // IN
	.a_3(newdata_15_obuf), // IN
	.a_4(newdata_16_obuf), // IN
	.a_5(newdata_17_obuf), // IN
	.a_6(newdata_18_obuf), // IN
	.a_7(newdata_19_obuf), // IN
	.a_8(newdata_20_obuf), // IN
	.ci(dc_11)  // IN
);

// WBK.NET (126) - data[0-20] : mx4p
mx4 data_from_0_to_20_inst_0
(
	.z(data_0), // OUT
	.a0(newdata_0_obuf), // IN
	.a1(newdata_0_obuf), // IN
	.a2(ds_0), // IN
	.a3(d_43), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_1
(
	.z(data_1), // OUT
	.a0(newdata_1_obuf), // IN
	.a1(newdata_1_obuf), // IN
	.a2(ds_1), // IN
	.a3(d_44), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_2
(
	.z(data_2), // OUT
	.a0(newdata_2_obuf), // IN
	.a1(newdata_2_obuf), // IN
	.a2(ds_2), // IN
	.a3(d_45), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_3
(
	.z(data_3), // OUT
	.a0(newdata_3_obuf), // IN
	.a1(newdata_3_obuf), // IN
	.a2(ds_3), // IN
	.a3(d_46), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_4
(
	.z(data_4), // OUT
	.a0(newdata_4_obuf), // IN
	.a1(newdata_4_obuf), // IN
	.a2(ds_4), // IN
	.a3(d_47), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_5
(
	.z(data_5), // OUT
	.a0(newdata_5_obuf), // IN
	.a1(newdata_5_obuf), // IN
	.a2(ds_5), // IN
	.a3(d_48), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_6
(
	.z(data_6), // OUT
	.a0(newdata_6_obuf), // IN
	.a1(newdata_6_obuf), // IN
	.a2(ds_6), // IN
	.a3(d_49), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_7
(
	.z(data_7), // OUT
	.a0(newdata_7_obuf), // IN
	.a1(newdata_7_obuf), // IN
	.a2(ds_7), // IN
	.a3(d_50), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_8
(
	.z(data_8), // OUT
	.a0(newdata_8_obuf), // IN
	.a1(newdata_8_obuf), // IN
	.a2(ds_8), // IN
	.a3(d_51), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_9
(
	.z(data_9), // OUT
	.a0(newdata_9_obuf), // IN
	.a1(newdata_9_obuf), // IN
	.a2(ds_9), // IN
	.a3(d_52), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_10
(
	.z(data_10), // OUT
	.a0(newdata_10_obuf), // IN
	.a1(newdata_10_obuf), // IN
	.a2(ds_10), // IN
	.a3(d_53), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_11
(
	.z(data_11), // OUT
	.a0(newdata_11_obuf), // IN
	.a1(newdata_11_obuf), // IN
	.a2(ds_11), // IN
	.a3(d_54), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_12
(
	.z(data_12), // OUT
	.a0(newdata_12_obuf), // IN
	.a1(newdata_12_obuf), // IN
	.a2(ds_12), // IN
	.a3(d_55), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_13
(
	.z(data_13), // OUT
	.a0(newdata_13_obuf), // IN
	.a1(newdata_13_obuf), // IN
	.a2(ds_13), // IN
	.a3(d_56), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_14
(
	.z(data_14), // OUT
	.a0(newdata_14_obuf), // IN
	.a1(newdata_14_obuf), // IN
	.a2(ds_14), // IN
	.a3(d_57), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_15
(
	.z(data_15), // OUT
	.a0(newdata_15_obuf), // IN
	.a1(newdata_15_obuf), // IN
	.a2(ds_15), // IN
	.a3(d_58), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_16
(
	.z(data_16), // OUT
	.a0(newdata_16_obuf), // IN
	.a1(newdata_16_obuf), // IN
	.a2(ds_16), // IN
	.a3(d_59), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_17
(
	.z(data_17), // OUT
	.a0(newdata_17_obuf), // IN
	.a1(newdata_17_obuf), // IN
	.a2(ds_17), // IN
	.a3(d_60), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_18
(
	.z(data_18), // OUT
	.a0(newdata_18_obuf), // IN
	.a1(newdata_18_obuf), // IN
	.a2(ds_18), // IN
	.a3(d_61), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_19
(
	.z(data_19), // OUT
	.a0(newdata_19_obuf), // IN
	.a1(newdata_19_obuf), // IN
	.a2(ds_19), // IN
	.a3(d_62), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);
mx4 data_from_0_to_20_inst_20
(
	.z(data_20), // OUT
	.a0(newdata_20_obuf), // IN
	.a1(newdata_20_obuf), // IN
	.a2(ds_20), // IN
	.a3(d_63), // IN
	.s0(obld_0), // IN
	.s1(newdataclk)  // IN
);

// WBK.NET (128) - newdata[0-10] : fd1q
fd1q newdata_from_0_to_10_inst_0
(
	.q(newdata_0_obuf), // OUT
	.d(data_0), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_1
(
	.q(newdata_1_obuf), // OUT
	.d(data_1), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_2
(
	.q(newdata_2_obuf), // OUT
	.d(data_2), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_3
(
	.q(newdata_3_obuf), // OUT
	.d(data_3), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_4
(
	.q(newdata_4_obuf), // OUT
	.d(data_4), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_5
(
	.q(newdata_5_obuf), // OUT
	.d(data_5), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_6
(
	.q(newdata_6_obuf), // OUT
	.d(data_6), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_7
(
	.q(newdata_7_obuf), // OUT
	.d(data_7), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_8
(
	.q(newdata_8_obuf), // OUT
	.d(data_8), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_9
(
	.q(newdata_9_obuf), // OUT
	.d(data_9), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_0_to_10_inst_10
(
	.q(newdata_10_obuf), // OUT
	.d(data_10), // IN
	.cp(clk)  // IN
);

// WBK.NET (129) - newdatai[11-15] : fd1q
fd1q newdatai_from_11_to_15_inst_0
(
	.q(newdatai_11), // OUT
	.d(data_11), // IN
	.cp(clk)  // IN
);
fd1q newdatai_from_11_to_15_inst_1
(
	.q(newdatai_12), // OUT
	.d(data_12), // IN
	.cp(clk)  // IN
);
fd1q newdatai_from_11_to_15_inst_2
(
	.q(newdatai_13), // OUT
	.d(data_13), // IN
	.cp(clk)  // IN
);
fd1q newdatai_from_11_to_15_inst_3
(
	.q(newdatai_14), // OUT
	.d(data_14), // IN
	.cp(clk)  // IN
);
fd1q newdatai_from_11_to_15_inst_4
(
	.q(newdatai_15), // OUT
	.d(data_15), // IN
	.cp(clk)  // IN
);

// WBK.NET (130) - newdata[16-20] : fd1q
fd1q newdata_from_16_to_20_inst_0
(
	.q(newdata_16_obuf), // OUT
	.d(data_16), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_16_to_20_inst_1
(
	.q(newdata_17_obuf), // OUT
	.d(data_17), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_16_to_20_inst_2
(
	.q(newdata_18_obuf), // OUT
	.d(data_18), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_16_to_20_inst_3
(
	.q(newdata_19_obuf), // OUT
	.d(data_19), // IN
	.cp(clk)  // IN
);
fd1q newdata_from_16_to_20_inst_4
(
	.q(newdata_20_obuf), // OUT
	.d(data_20), // IN
	.cp(clk)  // IN
);

// WBK.NET (131) - newdata[11-15] : nivh
assign newdata_11_obuf = newdatai_11;
assign newdata_12_obuf = newdatai_12;
assign newdata_13_obuf = newdatai_13;
assign newdata_14_obuf = newdatai_14;
assign newdata_15_obuf = newdatai_15;

// WBK.NET (133) - latchdata : or2
assign latchdata = obld_0 | addnewdata;

// WBK.NET (134) - newdataclk : nivh
assign newdataclk = latchdata;

// WBK.NET (136) - gnd : tie0
assign gnd = 1'b0;

// WBK.NET (137) - vcc : tie1
assign vcc = 1'b1;

// WBK.NET (141) - hcu : dummy

// WBK.NET (142) - rcu : dummy
endmodule
