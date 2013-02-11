`include "defs.v"

module subsize
(
	output[0:22] sub;
	input[0:22] a;
	input b_0,
	input b_1,
	input b_2
);
wire sub_0;
wire co_0;
wire sub_1;
wire co_1;
wire sub_2;
wire co_2;
wire sub_3;
wire sub_4;
wire sub_5;
wire sub_6;
wire sub_7;
wire sub_8;
wire co_3;
wire co_4;
wire co_5;
wire co_6;
wire co_7;
wire co_8;
wire sub_9;
wire co_9;
wire sub_10;
wire sub_11;
wire sub_12;
wire sub_13;
wire sub_14;
wire sub_15;
wire co_10;
wire co_11;
wire co_12;
wire co_13;
wire co_14;
wire co_15;
wire sub_16;
wire co_16;
wire sub_17;
wire sub_18;
wire sub_19;
wire sub_20;
wire sub_21;
wire co_17;
wire co_18;
wire co_19;
wire co_20;
wire co_21;
wire sub_22;

// PREFETCH.NET (389) - sub[0] : ha1
ha1 sub_index_0_inst
(
	.s(sub_0), // OUT
	.co(co_0), // OUT
	.a(a[0]), // IN
	.b(b_0)  // IN
);

// PREFETCH.NET (390) - sub[1] : fa1
fa1 sub_index_1_inst
(
	.s(sub_1), // OUT
	.co(co_1), // OUT
	.ci(a[1]), // IN
	.a(b_1), // IN
	.b(co_0)  // IN
);

// PREFETCH.NET (391) - sub[2] : fa1
fa1 sub_index_2_inst
(
	.s(sub_2), // OUT
	.co(co_2), // OUT
	.ci(a[2]), // IN
	.a(b_2), // IN
	.b(co_1)  // IN
);

// PREFETCH.NET (392) - sub[3-8] : hs1
hs1 sub_from_3_to_8_inst_0
(
	.q(sub_3), // OUT
	.co(co_3), // OUT
	.a(a[3]), // IN
	.ci(co_2)  // IN
);
hs1 sub_from_3_to_8_inst_1
(
	.q(sub_4), // OUT
	.co(co_4), // OUT
	.a(a[4]), // IN
	.ci(co_3)  // IN
);
hs1 sub_from_3_to_8_inst_2
(
	.q(sub_5), // OUT
	.co(co_5), // OUT
	.a(a[5]), // IN
	.ci(co_4)  // IN
);
hs1 sub_from_3_to_8_inst_3
(
	.q(sub_6), // OUT
	.co(co_6), // OUT
	.a(a[6]), // IN
	.ci(co_5)  // IN
);
hs1 sub_from_3_to_8_inst_4
(
	.q(sub_7), // OUT
	.co(co_7), // OUT
	.a(a[7]), // IN
	.ci(co_6)  // IN
);
hs1 sub_from_3_to_8_inst_5
(
	.q(sub_8), // OUT
	.co(co_8), // OUT
	.a(a[8]), // IN
	.ci(co_7)  // IN
);

// PREFETCH.NET (393) - sub[9] : en
assign sub_9 = ~(a[9] ^ co_8);

// PREFETCH.NET (394) - co[9] : or8
assign co_9 = a[3] | a[4] | a[5] | a[6] | a[7] | a[8] | a[9] | co_2;

// PREFETCH.NET (395) - sub[10-15] : hs1
hs1 sub_from_10_to_15_inst_0
(
	.q(sub_10), // OUT
	.co(co_10), // OUT
	.a(a[10]), // IN
	.ci(co_9)  // IN
);
hs1 sub_from_10_to_15_inst_1
(
	.q(sub_11), // OUT
	.co(co_11), // OUT
	.a(a[11]), // IN
	.ci(co_10)  // IN
);
hs1 sub_from_10_to_15_inst_2
(
	.q(sub_12), // OUT
	.co(co_12), // OUT
	.a(a[12]), // IN
	.ci(co_11)  // IN
);
hs1 sub_from_10_to_15_inst_3
(
	.q(sub_13), // OUT
	.co(co_13), // OUT
	.a(a[13]), // IN
	.ci(co_12)  // IN
);
hs1 sub_from_10_to_15_inst_4
(
	.q(sub_14), // OUT
	.co(co_14), // OUT
	.a(a[14]), // IN
	.ci(co_13)  // IN
);
hs1 sub_from_10_to_15_inst_5
(
	.q(sub_15), // OUT
	.co(co_15), // OUT
	.a(a[15]), // IN
	.ci(co_14)  // IN
);

// PREFETCH.NET (396) - sub[16] : en
assign sub_16 = ~(a[16] ^ co_15);

// PREFETCH.NET (397) - co[16] : or8
assign co_16 = a[10] | a[11] | a[12] | a[13] | a[14] | a[15] | a[16] | co_9;

// PREFETCH.NET (398) - sub[17-21] : hs1
hs1 sub_from_17_to_21_inst_0
(
	.q(sub_17), // OUT
	.co(co_17), // OUT
	.a(a[17]), // IN
	.ci(co_16)  // IN
);
hs1 sub_from_17_to_21_inst_1
(
	.q(sub_18), // OUT
	.co(co_18), // OUT
	.a(a[18]), // IN
	.ci(co_17)  // IN
);
hs1 sub_from_17_to_21_inst_2
(
	.q(sub_19), // OUT
	.co(co_19), // OUT
	.a(a[19]), // IN
	.ci(co_18)  // IN
);
hs1 sub_from_17_to_21_inst_3
(
	.q(sub_20), // OUT
	.co(co_20), // OUT
	.a(a[20]), // IN
	.ci(co_19)  // IN
);
hs1 sub_from_17_to_21_inst_4
(
	.q(sub_21), // OUT
	.co(co_21), // OUT
	.a(a[21]), // IN
	.ci(co_20)  // IN
);

// PREFETCH.NET (399) - sub[22] : en
assign sub_22 = ~(a[22] ^ co_21);

// PREFETCH.NET (400) - sub : join
assign sub[0] = sub_0;
assign sub[1] = sub_1;
assign sub[2] = sub_2;
assign sub[3] = sub_3;
assign sub[4] = sub_4;
assign sub[5] = sub_5;
assign sub[6] = sub_6;
assign sub[7] = sub_7;
assign sub[8] = sub_8;
assign sub[9] = sub_9;
assign sub[10] = sub_10;
assign sub[11] = sub_11;
assign sub[12] = sub_12;
assign sub[13] = sub_13;
assign sub[14] = sub_14;
assign sub[15] = sub_15;
assign sub[16] = sub_16;
assign sub[17] = sub_17;
assign sub[18] = sub_18;
assign sub[19] = sub_19;
assign sub[20] = sub_20;
assign sub[21] = sub_21;
assign sub[22] = sub_22;
endmodule
