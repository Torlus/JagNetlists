`include "defs.v"

module inner_cnt
(
	inout gpu_dout_16,
	inout gpu_dout_17,
	inout gpu_dout_18,
	inout gpu_dout_19,
	inout gpu_dout_20,
	inout gpu_dout_21,
	inout gpu_dout_22,
	inout gpu_dout_23,
	inout gpu_dout_24,
	inout gpu_dout_25,
	inout gpu_dout_26,
	inout gpu_dout_27,
	inout gpu_dout_28,
	inout gpu_dout_29,
	inout gpu_dout_30,
	inout gpu_dout_31,
	output icount_0,
	output icount_1,
	output icount_2,
	output inner0,
	input clk,
	input countld,
	input[0:15] dstxp;
	input[0:31] gpu_din;
	input icntena,
	input ireload,
	input phrase_mode,
	input pixsize_0,
	input pixsize_1,
	input pixsize_2,
	input statrd
);
wire [0:15] cntval;
wire [0:15] cntvall;
wire [0:15] gpu_d_lo16;
wire [0:15] icount;
wire icount_3;
wire icount_4;
wire icount_5;
wire icount_6;
wire icount_7;
wire icount_8;
wire icount_9;
wire icount_10;
wire icount_11;
wire icount_12;
wire icount_13;
wire icount_14;
wire icount_15;
wire one;
wire pixsize_n_0;
wire pixsize_n_1;
wire pixsize_n_2;
wire pixel8_n;
wire pixel8;
wire pixel16_n;
wire pixel16;
wire pixel32_n;
wire pixel32;
wire countldb;
wire dstxp_n_0;
wire dstxp_n_1;
wire dstxp_n_2;
wire inct_0;
wire inct_1;
wire incc_1;
wire inct_2;
wire inct_n_0;
wire inct_n_1;
wire inct_n_2;
wire inc0t;
wire inc_n_0;
wire inc1t_1;
wire inc1t_2;
wire inc1t_3;
wire inc1t_4;
wire inc_n_1;
wire inc2t_0;
wire inc2t_1;
wire inc2t_2;
wire inc_n_2;
wire inc_n_3;
wire count_0;
wire count_1;
wire count_2;
wire count_3;
wire carry_3;
wire count_4;
wire count_5;
wire count_6;
wire count_7;
wire count_8;
wire count_9;
wire carry_4;
wire carry_5;
wire carry_6;
wire carry_7;
wire carry_8;
wire carry_9;
wire count_10;
wire cla10;
wire count_11;
wire carry_11;
wire count_12;
wire count_13;
wire count_14;
wire carry_12;
wire carry_13;
wire carry_14;
wire count_15;
wire cntlden;
wire cntisel_1;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;
wire cnti_6;
wire cnti_7;
wire cnti_8;
wire cnti_9;
wire cnti_10;
wire cnti_11;
wire cnti_12;
wire cnti_13;
wire cnti_14;
wire cnti_15;
wire icountt_0;
wire icount_n_15;
wire uflowt;
wire underflow;
wire inner0t;

// Output buffers
wire icount_0_obuf;
wire icount_1_obuf;
wire icount_2_obuf;


// Output buffers
assign icount_0 = icount_0_obuf;
assign icount_1 = icount_1_obuf;
assign icount_2 = icount_2_obuf;


// INNER.NET (569) - icount : join
assign icount[0] = icount_0_obuf;
assign icount[1] = icount_1_obuf;
assign icount[2] = icount_2_obuf;
assign icount[3] = icount_3;
assign icount[4] = icount_4;
assign icount[5] = icount_5;
assign icount[6] = icount_6;
assign icount[7] = icount_7;
assign icount[8] = icount_8;
assign icount[9] = icount_9;
assign icount[10] = icount_10;
assign icount[11] = icount_11;
assign icount[12] = icount_12;
assign icount[13] = icount_13;
assign icount[14] = icount_14;
assign icount[15] = icount_15;

// INNER.NET (570) - icountd : dummy

// INNER.NET (572) - one : tie1
assign one = 1'b1;

// INNER.NET (573) - pixsize\[0-2] : iv
assign pixsize_n_0 = ~pixsize_0;
assign pixsize_n_1 = ~pixsize_1;
assign pixsize_n_2 = ~pixsize_2;

// INNER.NET (574) - pixel8\ : nd3
assign pixel8_n = ~(pixsize_0 & pixsize_1 & pixsize_n_2);

// INNER.NET (575) - pixel8 : iv
assign pixel8 = ~pixel8_n;

// INNER.NET (576) - pixel16\ : nd3
assign pixel16_n = ~(pixsize_n_0 & pixsize_n_1 & pixsize_2);

// INNER.NET (577) - pixel16 : iv
assign pixel16 = ~pixel16_n;

// INNER.NET (578) - pixel32\ : nd3
assign pixel32_n = ~(pixsize_0 & pixsize_n_1 & pixsize_2);

// INNER.NET (580) - pixel32 : iv
assign pixel32 = ~pixel32_n;

// INNER.NET (582) - gpu_d_lo16 : join
assign gpu_d_lo16[0] = gpu_din[0];
assign gpu_d_lo16[1] = gpu_din[1];
assign gpu_d_lo16[2] = gpu_din[2];
assign gpu_d_lo16[3] = gpu_din[3];
assign gpu_d_lo16[4] = gpu_din[4];
assign gpu_d_lo16[5] = gpu_din[5];
assign gpu_d_lo16[6] = gpu_din[6];
assign gpu_d_lo16[7] = gpu_din[7];
assign gpu_d_lo16[8] = gpu_din[8];
assign gpu_d_lo16[9] = gpu_din[9];
assign gpu_d_lo16[10] = gpu_din[10];
assign gpu_d_lo16[11] = gpu_din[11];
assign gpu_d_lo16[12] = gpu_din[12];
assign gpu_d_lo16[13] = gpu_din[13];
assign gpu_d_lo16[14] = gpu_din[14];
assign gpu_d_lo16[15] = gpu_din[15];

// INNER.NET (586) - cntldb : nivh
assign countldb = countld;

// INNER.NET (587) - cntval : mx2
mx2 cntval_inst_0
(
	.z(cntval[0]), // OUT
	.a0(cntvall[0]), // IN
	.a1(gpu_d_lo16[0]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_1
(
	.z(cntval[1]), // OUT
	.a0(cntvall[1]), // IN
	.a1(gpu_d_lo16[1]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_2
(
	.z(cntval[2]), // OUT
	.a0(cntvall[2]), // IN
	.a1(gpu_d_lo16[2]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_3
(
	.z(cntval[3]), // OUT
	.a0(cntvall[3]), // IN
	.a1(gpu_d_lo16[3]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_4
(
	.z(cntval[4]), // OUT
	.a0(cntvall[4]), // IN
	.a1(gpu_d_lo16[4]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_5
(
	.z(cntval[5]), // OUT
	.a0(cntvall[5]), // IN
	.a1(gpu_d_lo16[5]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_6
(
	.z(cntval[6]), // OUT
	.a0(cntvall[6]), // IN
	.a1(gpu_d_lo16[6]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_7
(
	.z(cntval[7]), // OUT
	.a0(cntvall[7]), // IN
	.a1(gpu_d_lo16[7]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_8
(
	.z(cntval[8]), // OUT
	.a0(cntvall[8]), // IN
	.a1(gpu_d_lo16[8]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_9
(
	.z(cntval[9]), // OUT
	.a0(cntvall[9]), // IN
	.a1(gpu_d_lo16[9]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_10
(
	.z(cntval[10]), // OUT
	.a0(cntvall[10]), // IN
	.a1(gpu_d_lo16[10]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_11
(
	.z(cntval[11]), // OUT
	.a0(cntvall[11]), // IN
	.a1(gpu_d_lo16[11]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_12
(
	.z(cntval[12]), // OUT
	.a0(cntvall[12]), // IN
	.a1(gpu_d_lo16[12]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_13
(
	.z(cntval[13]), // OUT
	.a0(cntvall[13]), // IN
	.a1(gpu_d_lo16[13]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_14
(
	.z(cntval[14]), // OUT
	.a0(cntvall[14]), // IN
	.a1(gpu_d_lo16[14]), // IN
	.s(countldb)  // IN
);
mx2 cntval_inst_15
(
	.z(cntval[15]), // OUT
	.a0(cntvall[15]), // IN
	.a1(gpu_d_lo16[15]), // IN
	.s(countldb)  // IN
);

// INNER.NET (588) - cntvall : fd1q
fd1q cntvall_inst_0
(
	.q(cntvall[0]), // OUT
	.d(cntval[0]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_1
(
	.q(cntvall[1]), // OUT
	.d(cntval[1]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_2
(
	.q(cntvall[2]), // OUT
	.d(cntval[2]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_3
(
	.q(cntvall[3]), // OUT
	.d(cntval[3]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_4
(
	.q(cntvall[4]), // OUT
	.d(cntval[4]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_5
(
	.q(cntvall[5]), // OUT
	.d(cntval[5]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_6
(
	.q(cntvall[6]), // OUT
	.d(cntval[6]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_7
(
	.q(cntvall[7]), // OUT
	.d(cntval[7]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_8
(
	.q(cntvall[8]), // OUT
	.d(cntval[8]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_9
(
	.q(cntvall[9]), // OUT
	.d(cntval[9]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_10
(
	.q(cntvall[10]), // OUT
	.d(cntval[10]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_11
(
	.q(cntvall[11]), // OUT
	.d(cntval[11]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_12
(
	.q(cntvall[12]), // OUT
	.d(cntval[12]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_13
(
	.q(cntvall[13]), // OUT
	.d(cntval[13]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_14
(
	.q(cntvall[14]), // OUT
	.d(cntval[14]), // IN
	.cp(clk)  // IN
);
fd1q cntvall_inst_15
(
	.q(cntvall[15]), // OUT
	.d(cntval[15]), // IN
	.cp(clk)  // IN
);

// INNER.NET (601) - dstxp\[0-2] : iv
assign dstxp_n_0 = ~dstxp[0];
assign dstxp_n_1 = ~dstxp[1];
assign dstxp_n_2 = ~dstxp[2];

// INNER.NET (602) - inct0 : iv
assign inct_0 = ~dstxp_n_0;

// INNER.NET (603) - inct1 : ha1
ha1 inct1_inst
(
	.s(inct_1), // OUT
	.co(incc_1), // OUT
	.a(dstxp_n_1), // IN
	.b(dstxp_n_0)  // IN
);

// INNER.NET (604) - inct2 : eo
assign inct_2 = dstxp_n_2 ^ incc_1;

// INNER.NET (605) - inct\[0-2] : iv
assign inct_n_0 = ~inct_0;
assign inct_n_1 = ~inct_1;
assign inct_n_2 = ~inct_2;

// INNER.NET (609) - inc0t : nd2
assign inc0t = ~(phrase_mode & inct_0);

// INNER.NET (610) - inc\[0] : an2
assign inc_n_0 = inc0t & phrase_mode;

// INNER.NET (615) - inc1t1 : nd2
assign inc1t_1 = ~(pixel8_n & pixel16_n);

// INNER.NET (616) - inc1t2 : nd2
assign inc1t_2 = ~(inc1t_1 & inct_1);

// INNER.NET (617) - inc1t3 : nd2
assign inc1t_3 = ~(pixel32 & inct_n_0);

// INNER.NET (618) - inc1t4 : nd2
assign inc1t_4 = ~(inc1t_2 & inc1t_3);

// INNER.NET (619) - inc\[1] : nd2
assign inc_n_1 = ~(phrase_mode & inc1t_4);

// INNER.NET (624) - inc2t0 : nd2
assign inc2t_0 = ~(pixel8 & inct_2);

// INNER.NET (625) - inc2t1 : nd3
assign inc2t_1 = ~(pixel16 & inct_n_0 & inct_n_1);

// INNER.NET (626) - inc2t2 : nd2
assign inc2t_2 = ~(inc2t_0 & inc2t_1);

// INNER.NET (627) - inc\[2] : nd2
assign inc_n_2 = ~(phrase_mode & inc2t_2);

// INNER.NET (631) - inc\[3] : nd5
nd5 inc_n_index_3_inst
(
	.q(inc_n_3), // OUT
	.a_0(phrase_mode), // IN
	.a_1(pixel8), // IN
	.a_2(inct_n_0), // IN
	.a_3(inct_n_1), // IN
	.a_4(inct_n_2)  // IN
);

// INNER.NET (633) - count0t4 : add4
add4 count0t4_inst
(
	.q_0(count_0), // OUT
	.q_1(count_1), // OUT
	.q_2(count_2), // OUT
	.q_3(count_3), // OUT
	.co(carry_3), // OUT
	.a_0(inc_n_0), // IN
	.a_1(inc_n_1), // IN
	.a_2(inc_n_2), // IN
	.a_3(inc_n_3), // IN
	.b_0(icount_0_obuf), // IN
	.b_1(icount_1_obuf), // IN
	.b_2(icount_2_obuf), // IN
	.b_3(icount_3), // IN
	.ci(one)  // IN
);

// INNER.NET (635) - count[4-9] : hs1
hs1 count_from_4_to_9_inst_0
(
	.q(count_4), // OUT
	.co(carry_4), // OUT
	.a(carry_3), // IN
	.ci(icount_4)  // IN
);
hs1 count_from_4_to_9_inst_1
(
	.q(count_5), // OUT
	.co(carry_5), // OUT
	.a(carry_4), // IN
	.ci(icount_5)  // IN
);
hs1 count_from_4_to_9_inst_2
(
	.q(count_6), // OUT
	.co(carry_6), // OUT
	.a(carry_5), // IN
	.ci(icount_6)  // IN
);
hs1 count_from_4_to_9_inst_3
(
	.q(count_7), // OUT
	.co(carry_7), // OUT
	.a(carry_6), // IN
	.ci(icount_7)  // IN
);
hs1 count_from_4_to_9_inst_4
(
	.q(count_8), // OUT
	.co(carry_8), // OUT
	.a(carry_7), // IN
	.ci(icount_8)  // IN
);
hs1 count_from_4_to_9_inst_5
(
	.q(count_9), // OUT
	.co(carry_9), // OUT
	.a(carry_8), // IN
	.ci(icount_9)  // IN
);

// INNER.NET (637) - count[10] : en
assign count_10 = ~(carry_9 ^ icount_10);

// INNER.NET (638) - cla10 : or8
assign cla10 = carry_3 | icount_4 | icount_5 | icount_6 | icount_7 | icount_8 | icount_9 | icount_10;

// INNER.NET (639) - count[11] : hs1
hs1 count_index_11_inst
(
	.q(count_11), // OUT
	.co(carry_11), // OUT
	.a(cla10), // IN
	.ci(icount_11)  // IN
);

// INNER.NET (640) - count[12-14] : hs1
hs1 count_from_12_to_14_inst_0
(
	.q(count_12), // OUT
	.co(carry_12), // OUT
	.a(carry_11), // IN
	.ci(icount_12)  // IN
);
hs1 count_from_12_to_14_inst_1
(
	.q(count_13), // OUT
	.co(carry_13), // OUT
	.a(carry_12), // IN
	.ci(icount_13)  // IN
);
hs1 count_from_12_to_14_inst_2
(
	.q(count_14), // OUT
	.co(carry_14), // OUT
	.a(carry_13), // IN
	.ci(icount_14)  // IN
);

// INNER.NET (642) - count[15] : en
assign count_15 = ~(carry_14 ^ icount_15);

// INNER.NET (647) - cntlden : fd1q
fd1q cntlden_inst
(
	.q(cntlden), // OUT
	.d(countld), // IN
	.cp(clk)  // IN
);

// INNER.NET (648) - cntisel[1] : or2u
assign cntisel_1 = ireload | cntlden;

// INNER.NET (649) - cnti[0-15] : mx4
mx4 cnti_from_0_to_15_inst_0
(
	.z(cnti_0), // OUT
	.a0(icount_0_obuf), // IN
	.a1(count_0), // IN
	.a2(cntval[0]), // IN
	.a3(cntval[0]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_1
(
	.z(cnti_1), // OUT
	.a0(icount_1_obuf), // IN
	.a1(count_1), // IN
	.a2(cntval[1]), // IN
	.a3(cntval[1]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_2
(
	.z(cnti_2), // OUT
	.a0(icount_2_obuf), // IN
	.a1(count_2), // IN
	.a2(cntval[2]), // IN
	.a3(cntval[2]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_3
(
	.z(cnti_3), // OUT
	.a0(icount_3), // IN
	.a1(count_3), // IN
	.a2(cntval[3]), // IN
	.a3(cntval[3]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_4
(
	.z(cnti_4), // OUT
	.a0(icount_4), // IN
	.a1(count_4), // IN
	.a2(cntval[4]), // IN
	.a3(cntval[4]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_5
(
	.z(cnti_5), // OUT
	.a0(icount_5), // IN
	.a1(count_5), // IN
	.a2(cntval[5]), // IN
	.a3(cntval[5]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_6
(
	.z(cnti_6), // OUT
	.a0(icount_6), // IN
	.a1(count_6), // IN
	.a2(cntval[6]), // IN
	.a3(cntval[6]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_7
(
	.z(cnti_7), // OUT
	.a0(icount_7), // IN
	.a1(count_7), // IN
	.a2(cntval[7]), // IN
	.a3(cntval[7]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_8
(
	.z(cnti_8), // OUT
	.a0(icount_8), // IN
	.a1(count_8), // IN
	.a2(cntval[8]), // IN
	.a3(cntval[8]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_9
(
	.z(cnti_9), // OUT
	.a0(icount_9), // IN
	.a1(count_9), // IN
	.a2(cntval[9]), // IN
	.a3(cntval[9]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_10
(
	.z(cnti_10), // OUT
	.a0(icount_10), // IN
	.a1(count_10), // IN
	.a2(cntval[10]), // IN
	.a3(cntval[10]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_11
(
	.z(cnti_11), // OUT
	.a0(icount_11), // IN
	.a1(count_11), // IN
	.a2(cntval[11]), // IN
	.a3(cntval[11]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_12
(
	.z(cnti_12), // OUT
	.a0(icount_12), // IN
	.a1(count_12), // IN
	.a2(cntval[12]), // IN
	.a3(cntval[12]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_13
(
	.z(cnti_13), // OUT
	.a0(icount_13), // IN
	.a1(count_13), // IN
	.a2(cntval[13]), // IN
	.a3(cntval[13]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_14
(
	.z(cnti_14), // OUT
	.a0(icount_14), // IN
	.a1(count_14), // IN
	.a2(cntval[14]), // IN
	.a3(cntval[14]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);
mx4 cnti_from_0_to_15_inst_15
(
	.z(cnti_15), // OUT
	.a0(icount_15), // IN
	.a1(count_15), // IN
	.a2(cntval[15]), // IN
	.a3(cntval[15]), // IN
	.s0(icntena), // IN
	.s1(cntisel_1)  // IN
);

// INNER.NET (653) - icountt[0] : fd1q
fd1q icountt_index_0_inst
(
	.q(icountt_0), // OUT
	.d(cnti_0), // IN
	.cp(clk)  // IN
);

// INNER.NET (654) - icount[0] : nivm
assign icount_0_obuf = icountt_0;

// INNER.NET (655) - icount[1-15] : fd1qp
fd1q icount_from_1_to_15_inst_0
(
	.q(icount_1_obuf), // OUT
	.d(cnti_1), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_1
(
	.q(icount_2_obuf), // OUT
	.d(cnti_2), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_2
(
	.q(icount_3), // OUT
	.d(cnti_3), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_3
(
	.q(icount_4), // OUT
	.d(cnti_4), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_4
(
	.q(icount_5), // OUT
	.d(cnti_5), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_5
(
	.q(icount_6), // OUT
	.d(cnti_6), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_6
(
	.q(icount_7), // OUT
	.d(cnti_7), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_7
(
	.q(icount_8), // OUT
	.d(cnti_8), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_8
(
	.q(icount_9), // OUT
	.d(cnti_9), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_9
(
	.q(icount_10), // OUT
	.d(cnti_10), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_10
(
	.q(icount_11), // OUT
	.d(cnti_11), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_11
(
	.q(icount_12), // OUT
	.d(cnti_12), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_12
(
	.q(icount_13), // OUT
	.d(cnti_13), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_13
(
	.q(icount_14), // OUT
	.d(cnti_14), // IN
	.cp(clk)  // IN
);
fd1q icount_from_1_to_15_inst_14
(
	.q(icount_15), // OUT
	.d(cnti_15), // IN
	.cp(clk)  // IN
);

// INNER.NET (664) - icount\[15] : iv
assign icount_n_15 = ~icount_15;

// INNER.NET (665) - uflowt : an2
assign uflowt = count_15 & icount_n_15;

// INNER.NET (666) - uflow : fdsync
fdsync uflow_inst
(
	.q(underflow), // IO
	.d(uflowt), // IN
	.ld(icntena), // IN
	.clk(clk)  // IN
);

// INNER.NET (668) - inner0t : nr16
nr16 inner0t_inst
(
	.z(inner0t), // IO
	.a_0(icount_0_obuf), // IN
	.a_1(icount_1_obuf), // IN
	.a_2(icount_2_obuf), // IN
	.a_3(icount_3), // IN
	.a_4(icount_4), // IN
	.a_5(icount_5), // IN
	.a_6(icount_6), // IN
	.a_7(icount_7), // IN
	.a_8(icount_8), // IN
	.a_9(icount_9), // IN
	.a_10(icount_10), // IN
	.a_11(icount_11), // IN
	.a_12(icount_12), // IN
	.a_13(icount_13), // IN
	.a_14(icount_14), // IN
	.a_15(icount_15)  // IN
);

// INNER.NET (669) - inner0 : or2p
assign inner0 = inner0t | underflow;

// INNER.NET (673) - stat[16-31] : ts
assign gpu_dout_16 = (statrd) ? icount_0_obuf : 1'bz;
assign gpu_dout_17 = (statrd) ? icount_1_obuf : 1'bz;
assign gpu_dout_18 = (statrd) ? icount_2_obuf : 1'bz;
assign gpu_dout_19 = (statrd) ? icount_3 : 1'bz;
assign gpu_dout_20 = (statrd) ? icount_4 : 1'bz;
assign gpu_dout_21 = (statrd) ? icount_5 : 1'bz;
assign gpu_dout_22 = (statrd) ? icount_6 : 1'bz;
assign gpu_dout_23 = (statrd) ? icount_7 : 1'bz;
assign gpu_dout_24 = (statrd) ? icount_8 : 1'bz;
assign gpu_dout_25 = (statrd) ? icount_9 : 1'bz;
assign gpu_dout_26 = (statrd) ? icount_10 : 1'bz;
assign gpu_dout_27 = (statrd) ? icount_11 : 1'bz;
assign gpu_dout_28 = (statrd) ? icount_12 : 1'bz;
assign gpu_dout_29 = (statrd) ? icount_13 : 1'bz;
assign gpu_dout_30 = (statrd) ? icount_14 : 1'bz;
assign gpu_dout_31 = (statrd) ? icount_15 : 1'bz;
endmodule
