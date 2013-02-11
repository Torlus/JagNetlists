`include "defs.v"

module barrel32
(
	output z_0,
	output z_1,
	output z_2,
	output z_3,
	output z_4,
	output z_5,
	output z_6,
	output z_7,
	output z_8,
	output z_9,
	output z_10,
	output z_11,
	output z_12,
	output z_13,
	output z_14,
	output z_15,
	output z_16,
	output z_17,
	output z_18,
	output z_19,
	output z_20,
	output z_21,
	output z_22,
	output z_23,
	output z_24,
	output z_25,
	output z_26,
	output z_27,
	output z_28,
	output z_29,
	output z_30,
	output z_31,
	input mux_0,
	input mux_1,
	input sft_0,
	input sft_1,
	input sft_2,
	input sft_3,
	input sft_4,
	input flin,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15,
	input a_16,
	input a_17,
	input a_18,
	input a_19,
	input a_20,
	input a_21,
	input a_22,
	input a_23,
	input a_24,
	input a_25,
	input a_26,
	input a_27,
	input a_28,
	input a_29,
	input a_30,
	input a_31
);
wire mux_n_0;
wire mux_n_1;
wire sftb_0;
wire sftb_1;
wire sftb_2;
wire sftb_3;
wire sftb_4;
wire sft_n_4;
wire zero;
wire b_0;
wire b_1;
wire b_2;
wire b_3;
wire b_4;
wire b_5;
wire b_6;
wire b_7;
wire b_8;
wire b_9;
wire b_10;
wire b_11;
wire b_12;
wire b_13;
wire b_14;
wire b_15;
wire b_16;
wire b_17;
wire b_18;
wire b_19;
wire b_20;
wire b_21;
wire b_22;
wire b_23;
wire b_24;
wire b_25;
wire b_26;
wire b_27;
wire b_28;
wire b_29;
wire b_30;
wire b_31;
wire c_0;
wire c_1;
wire c_2;
wire c_3;
wire c_4;
wire c_5;
wire c_6;
wire c_7;
wire c_8;
wire c_9;
wire c_10;
wire c_11;
wire c_12;
wire c_13;
wire c_14;
wire c_15;
wire c_16;
wire c_17;
wire c_18;
wire c_19;
wire c_20;
wire c_21;
wire c_22;
wire c_23;
wire c_24;
wire c_25;
wire c_26;
wire c_27;
wire c_28;
wire c_29;
wire c_30;
wire c_31;
wire d_0;
wire d_1;
wire d_2;
wire d_3;
wire d_4;
wire d_5;
wire d_6;
wire d_7;
wire d_8;
wire d_9;
wire d_10;
wire d_11;
wire d_12;
wire d_13;
wire d_14;
wire d_15;
wire d_16;
wire d_17;
wire d_18;
wire d_19;
wire d_20;
wire d_21;
wire d_22;
wire d_23;
wire d_24;
wire d_25;
wire d_26;
wire d_27;
wire d_28;
wire d_29;
wire d_30;
wire d_31;
wire e_0;
wire e_1;
wire e_2;
wire e_3;
wire e_4;
wire e_5;
wire e_6;
wire e_7;
wire e_8;
wire e_9;
wire e_10;
wire e_11;
wire e_12;
wire e_13;
wire e_14;
wire e_15;
wire e_16;
wire e_17;
wire e_18;
wire e_19;
wire e_20;
wire e_21;
wire e_22;
wire e_23;
wire e_24;
wire e_25;
wire e_26;
wire e_27;
wire e_28;
wire e_29;
wire e_30;
wire e_31;
wire f_0;
wire f_1;
wire f_2;
wire f_3;
wire f_4;
wire f_5;
wire f_6;
wire f_7;
wire f_8;
wire f_9;
wire f_10;
wire f_11;
wire f_12;
wire f_13;
wire f_14;
wire f_15;
wire f_16;
wire f_17;
wire f_18;
wire f_19;
wire f_20;
wire f_21;
wire f_22;
wire f_23;
wire f_24;
wire f_25;
wire f_26;
wire f_27;
wire f_28;
wire f_29;
wire f_30;
wire f_31;
wire dcd_0;
wire dcd_1;
wire dcd_2;
wire dcd_3;
wire dcd_4;
wire dcd_5;
wire dcd_6;
wire dcd_7;
wire dcd_8;
wire dcd_9;
wire dcd_10;
wire dcd_11;
wire dcd_12;
wire dcd_13;
wire dcd_14;
wire dcd_15;
wire dcd_16;
wire dcd_17;
wire dcd_18;
wire dcd_19;
wire dcd_20;
wire dcd_21;
wire dcd_22;
wire dcd_23;
wire dcd_24;
wire dcd_25;
wire dcd_26;
wire dcd_27;
wire dcd_28;
wire dcd_29;
wire dcd_30;
wire dcd_31;
wire rmask_0;
wire rmask_1;
wire rmask_2;
wire rmask_3;
wire rmask_4;
wire rmask_5;
wire rmask_6;
wire rmask_7;
wire rmask_8;
wire rmask_9;
wire rmask_10;
wire rmask_11;
wire rmask_12;
wire rmask_13;
wire rmask_14;
wire rmask_15;
wire rmask_16;
wire rmask_17;
wire rmask_18;
wire rmask_19;
wire rmask_20;
wire rmask_21;
wire rmask_22;
wire rmask_23;
wire rmask_24;
wire rmask_25;
wire rmask_26;
wire rmask_27;
wire rmask_28;
wire rmask_29;
wire rmask_30;
wire rmask_31;
wire lmask_31;
wire lmask_30;
wire lmask_24;
wire lmask_25;
wire lmask_26;
wire lmask_27;
wire lmask_28;
wire lmask_29;
wire lmask_23;
wire lmask_16;
wire lmask_17;
wire lmask_18;
wire lmask_19;
wire lmask_20;
wire lmask_21;
wire lmask_22;
wire lmask_15;
wire lmask_8;
wire lmask_9;
wire lmask_10;
wire lmask_11;
wire lmask_12;
wire lmask_13;
wire lmask_14;
wire lmask_7;
wire lmask_0;
wire lmask_1;
wire lmask_2;
wire lmask_3;
wire lmask_4;
wire lmask_5;
wire lmask_6;
wire lsl;
wire sr;
wire asr_sign;
wire opt0_0;
wire opt0_1;
wire opt0_2;
wire opt0_3;
wire opt0_4;
wire opt0_5;
wire opt0_6;
wire opt0_7;
wire opt0_8;
wire opt0_9;
wire opt0_10;
wire opt0_11;
wire opt0_12;
wire opt0_13;
wire opt0_14;
wire opt0_15;
wire opt0_16;
wire opt0_17;
wire opt0_18;
wire opt0_19;
wire opt0_20;
wire opt0_21;
wire opt0_22;
wire opt0_23;
wire opt0_24;
wire opt0_25;
wire opt0_26;
wire opt0_27;
wire opt0_28;
wire opt0_29;
wire opt0_30;
wire opt0_31;
wire opt1_0;
wire opt1_1;
wire opt1_2;
wire opt1_3;
wire opt1_4;
wire opt1_5;
wire opt1_6;
wire opt1_7;
wire opt1_8;
wire opt1_9;
wire opt1_10;
wire opt1_11;
wire opt1_12;
wire opt1_13;
wire opt1_14;
wire opt1_15;
wire opt1_16;
wire opt1_17;
wire opt1_18;
wire opt1_19;
wire opt1_20;
wire opt1_21;
wire opt1_22;
wire opt1_23;
wire opt1_24;
wire opt1_25;
wire opt1_26;
wire opt1_27;
wire opt1_28;
wire opt1_29;
wire opt1_30;
wire opt1_31;

// ARITH.NET (615) - flin : dummy

// ARITH.NET (616) - mux\[0-1] : iv
assign mux_n_0 = ~mux_0;
assign mux_n_1 = ~mux_1;

// ARITH.NET (617) - sftb[0-4] : nivu
assign sftb_0 = sft_0;
assign sftb_1 = sft_1;
assign sftb_2 = sft_2;
assign sftb_3 = sft_3;
assign sftb_4 = sft_4;

// ARITH.NET (618) - sft\[4] : iv
assign sft_n_4 = ~sft_4;

// ARITH.NET (619) - zero : tie0
assign zero = 1'b0;

// ARITH.NET (623) - b[0-15] : mx2
mx2 b_from_0_to_15_inst_0
(
	.z(b_0), // OUT
	.a0(a_0), // IN
	.a1(a_16), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_1
(
	.z(b_1), // OUT
	.a0(a_1), // IN
	.a1(a_17), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_2
(
	.z(b_2), // OUT
	.a0(a_2), // IN
	.a1(a_18), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_3
(
	.z(b_3), // OUT
	.a0(a_3), // IN
	.a1(a_19), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_4
(
	.z(b_4), // OUT
	.a0(a_4), // IN
	.a1(a_20), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_5
(
	.z(b_5), // OUT
	.a0(a_5), // IN
	.a1(a_21), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_6
(
	.z(b_6), // OUT
	.a0(a_6), // IN
	.a1(a_22), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_7
(
	.z(b_7), // OUT
	.a0(a_7), // IN
	.a1(a_23), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_8
(
	.z(b_8), // OUT
	.a0(a_8), // IN
	.a1(a_24), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_9
(
	.z(b_9), // OUT
	.a0(a_9), // IN
	.a1(a_25), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_10
(
	.z(b_10), // OUT
	.a0(a_10), // IN
	.a1(a_26), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_11
(
	.z(b_11), // OUT
	.a0(a_11), // IN
	.a1(a_27), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_12
(
	.z(b_12), // OUT
	.a0(a_12), // IN
	.a1(a_28), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_13
(
	.z(b_13), // OUT
	.a0(a_13), // IN
	.a1(a_29), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_14
(
	.z(b_14), // OUT
	.a0(a_14), // IN
	.a1(a_30), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_0_to_15_inst_15
(
	.z(b_15), // OUT
	.a0(a_15), // IN
	.a1(a_31), // IN
	.s(sftb_4)  // IN
);

// ARITH.NET (624) - b[16-31] : mx2
mx2 b_from_16_to_31_inst_0
(
	.z(b_16), // OUT
	.a0(a_16), // IN
	.a1(a_0), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_1
(
	.z(b_17), // OUT
	.a0(a_17), // IN
	.a1(a_1), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_2
(
	.z(b_18), // OUT
	.a0(a_18), // IN
	.a1(a_2), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_3
(
	.z(b_19), // OUT
	.a0(a_19), // IN
	.a1(a_3), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_4
(
	.z(b_20), // OUT
	.a0(a_20), // IN
	.a1(a_4), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_5
(
	.z(b_21), // OUT
	.a0(a_21), // IN
	.a1(a_5), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_6
(
	.z(b_22), // OUT
	.a0(a_22), // IN
	.a1(a_6), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_7
(
	.z(b_23), // OUT
	.a0(a_23), // IN
	.a1(a_7), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_8
(
	.z(b_24), // OUT
	.a0(a_24), // IN
	.a1(a_8), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_9
(
	.z(b_25), // OUT
	.a0(a_25), // IN
	.a1(a_9), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_10
(
	.z(b_26), // OUT
	.a0(a_26), // IN
	.a1(a_10), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_11
(
	.z(b_27), // OUT
	.a0(a_27), // IN
	.a1(a_11), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_12
(
	.z(b_28), // OUT
	.a0(a_28), // IN
	.a1(a_12), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_13
(
	.z(b_29), // OUT
	.a0(a_29), // IN
	.a1(a_13), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_14
(
	.z(b_30), // OUT
	.a0(a_30), // IN
	.a1(a_14), // IN
	.s(sftb_4)  // IN
);
mx2 b_from_16_to_31_inst_15
(
	.z(b_31), // OUT
	.a0(a_31), // IN
	.a1(a_15), // IN
	.s(sftb_4)  // IN
);

// ARITH.NET (626) - c[0-7] : mx2
mx2 c_from_0_to_7_inst_0
(
	.z(c_0), // OUT
	.a0(b_0), // IN
	.a1(b_24), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_1
(
	.z(c_1), // OUT
	.a0(b_1), // IN
	.a1(b_25), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_2
(
	.z(c_2), // OUT
	.a0(b_2), // IN
	.a1(b_26), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_3
(
	.z(c_3), // OUT
	.a0(b_3), // IN
	.a1(b_27), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_4
(
	.z(c_4), // OUT
	.a0(b_4), // IN
	.a1(b_28), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_5
(
	.z(c_5), // OUT
	.a0(b_5), // IN
	.a1(b_29), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_6
(
	.z(c_6), // OUT
	.a0(b_6), // IN
	.a1(b_30), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_0_to_7_inst_7
(
	.z(c_7), // OUT
	.a0(b_7), // IN
	.a1(b_31), // IN
	.s(sftb_3)  // IN
);

// ARITH.NET (627) - c[8-31] : mx2
mx2 c_from_8_to_31_inst_0
(
	.z(c_8), // OUT
	.a0(b_8), // IN
	.a1(b_0), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_1
(
	.z(c_9), // OUT
	.a0(b_9), // IN
	.a1(b_1), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_2
(
	.z(c_10), // OUT
	.a0(b_10), // IN
	.a1(b_2), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_3
(
	.z(c_11), // OUT
	.a0(b_11), // IN
	.a1(b_3), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_4
(
	.z(c_12), // OUT
	.a0(b_12), // IN
	.a1(b_4), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_5
(
	.z(c_13), // OUT
	.a0(b_13), // IN
	.a1(b_5), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_6
(
	.z(c_14), // OUT
	.a0(b_14), // IN
	.a1(b_6), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_7
(
	.z(c_15), // OUT
	.a0(b_15), // IN
	.a1(b_7), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_8
(
	.z(c_16), // OUT
	.a0(b_16), // IN
	.a1(b_8), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_9
(
	.z(c_17), // OUT
	.a0(b_17), // IN
	.a1(b_9), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_10
(
	.z(c_18), // OUT
	.a0(b_18), // IN
	.a1(b_10), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_11
(
	.z(c_19), // OUT
	.a0(b_19), // IN
	.a1(b_11), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_12
(
	.z(c_20), // OUT
	.a0(b_20), // IN
	.a1(b_12), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_13
(
	.z(c_21), // OUT
	.a0(b_21), // IN
	.a1(b_13), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_14
(
	.z(c_22), // OUT
	.a0(b_22), // IN
	.a1(b_14), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_15
(
	.z(c_23), // OUT
	.a0(b_23), // IN
	.a1(b_15), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_16
(
	.z(c_24), // OUT
	.a0(b_24), // IN
	.a1(b_16), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_17
(
	.z(c_25), // OUT
	.a0(b_25), // IN
	.a1(b_17), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_18
(
	.z(c_26), // OUT
	.a0(b_26), // IN
	.a1(b_18), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_19
(
	.z(c_27), // OUT
	.a0(b_27), // IN
	.a1(b_19), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_20
(
	.z(c_28), // OUT
	.a0(b_28), // IN
	.a1(b_20), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_21
(
	.z(c_29), // OUT
	.a0(b_29), // IN
	.a1(b_21), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_22
(
	.z(c_30), // OUT
	.a0(b_30), // IN
	.a1(b_22), // IN
	.s(sftb_3)  // IN
);
mx2 c_from_8_to_31_inst_23
(
	.z(c_31), // OUT
	.a0(b_31), // IN
	.a1(b_23), // IN
	.s(sftb_3)  // IN
);

// ARITH.NET (629) - d[0-3] : mx2
mx2 d_from_0_to_3_inst_0
(
	.z(d_0), // OUT
	.a0(c_0), // IN
	.a1(c_28), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_0_to_3_inst_1
(
	.z(d_1), // OUT
	.a0(c_1), // IN
	.a1(c_29), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_0_to_3_inst_2
(
	.z(d_2), // OUT
	.a0(c_2), // IN
	.a1(c_30), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_0_to_3_inst_3
(
	.z(d_3), // OUT
	.a0(c_3), // IN
	.a1(c_31), // IN
	.s(sftb_2)  // IN
);

// ARITH.NET (630) - d[4-31] : mx2
mx2 d_from_4_to_31_inst_0
(
	.z(d_4), // OUT
	.a0(c_4), // IN
	.a1(c_0), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_1
(
	.z(d_5), // OUT
	.a0(c_5), // IN
	.a1(c_1), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_2
(
	.z(d_6), // OUT
	.a0(c_6), // IN
	.a1(c_2), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_3
(
	.z(d_7), // OUT
	.a0(c_7), // IN
	.a1(c_3), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_4
(
	.z(d_8), // OUT
	.a0(c_8), // IN
	.a1(c_4), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_5
(
	.z(d_9), // OUT
	.a0(c_9), // IN
	.a1(c_5), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_6
(
	.z(d_10), // OUT
	.a0(c_10), // IN
	.a1(c_6), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_7
(
	.z(d_11), // OUT
	.a0(c_11), // IN
	.a1(c_7), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_8
(
	.z(d_12), // OUT
	.a0(c_12), // IN
	.a1(c_8), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_9
(
	.z(d_13), // OUT
	.a0(c_13), // IN
	.a1(c_9), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_10
(
	.z(d_14), // OUT
	.a0(c_14), // IN
	.a1(c_10), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_11
(
	.z(d_15), // OUT
	.a0(c_15), // IN
	.a1(c_11), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_12
(
	.z(d_16), // OUT
	.a0(c_16), // IN
	.a1(c_12), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_13
(
	.z(d_17), // OUT
	.a0(c_17), // IN
	.a1(c_13), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_14
(
	.z(d_18), // OUT
	.a0(c_18), // IN
	.a1(c_14), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_15
(
	.z(d_19), // OUT
	.a0(c_19), // IN
	.a1(c_15), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_16
(
	.z(d_20), // OUT
	.a0(c_20), // IN
	.a1(c_16), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_17
(
	.z(d_21), // OUT
	.a0(c_21), // IN
	.a1(c_17), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_18
(
	.z(d_22), // OUT
	.a0(c_22), // IN
	.a1(c_18), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_19
(
	.z(d_23), // OUT
	.a0(c_23), // IN
	.a1(c_19), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_20
(
	.z(d_24), // OUT
	.a0(c_24), // IN
	.a1(c_20), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_21
(
	.z(d_25), // OUT
	.a0(c_25), // IN
	.a1(c_21), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_22
(
	.z(d_26), // OUT
	.a0(c_26), // IN
	.a1(c_22), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_23
(
	.z(d_27), // OUT
	.a0(c_27), // IN
	.a1(c_23), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_24
(
	.z(d_28), // OUT
	.a0(c_28), // IN
	.a1(c_24), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_25
(
	.z(d_29), // OUT
	.a0(c_29), // IN
	.a1(c_25), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_26
(
	.z(d_30), // OUT
	.a0(c_30), // IN
	.a1(c_26), // IN
	.s(sftb_2)  // IN
);
mx2 d_from_4_to_31_inst_27
(
	.z(d_31), // OUT
	.a0(c_31), // IN
	.a1(c_27), // IN
	.s(sftb_2)  // IN
);

// ARITH.NET (632) - e[0-1] : mx2
mx2 e_from_0_to_1_inst_0
(
	.z(e_0), // OUT
	.a0(d_0), // IN
	.a1(d_30), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_0_to_1_inst_1
(
	.z(e_1), // OUT
	.a0(d_1), // IN
	.a1(d_31), // IN
	.s(sftb_1)  // IN
);

// ARITH.NET (633) - e[2-31] : mx2
mx2 e_from_2_to_31_inst_0
(
	.z(e_2), // OUT
	.a0(d_2), // IN
	.a1(d_0), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_1
(
	.z(e_3), // OUT
	.a0(d_3), // IN
	.a1(d_1), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_2
(
	.z(e_4), // OUT
	.a0(d_4), // IN
	.a1(d_2), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_3
(
	.z(e_5), // OUT
	.a0(d_5), // IN
	.a1(d_3), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_4
(
	.z(e_6), // OUT
	.a0(d_6), // IN
	.a1(d_4), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_5
(
	.z(e_7), // OUT
	.a0(d_7), // IN
	.a1(d_5), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_6
(
	.z(e_8), // OUT
	.a0(d_8), // IN
	.a1(d_6), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_7
(
	.z(e_9), // OUT
	.a0(d_9), // IN
	.a1(d_7), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_8
(
	.z(e_10), // OUT
	.a0(d_10), // IN
	.a1(d_8), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_9
(
	.z(e_11), // OUT
	.a0(d_11), // IN
	.a1(d_9), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_10
(
	.z(e_12), // OUT
	.a0(d_12), // IN
	.a1(d_10), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_11
(
	.z(e_13), // OUT
	.a0(d_13), // IN
	.a1(d_11), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_12
(
	.z(e_14), // OUT
	.a0(d_14), // IN
	.a1(d_12), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_13
(
	.z(e_15), // OUT
	.a0(d_15), // IN
	.a1(d_13), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_14
(
	.z(e_16), // OUT
	.a0(d_16), // IN
	.a1(d_14), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_15
(
	.z(e_17), // OUT
	.a0(d_17), // IN
	.a1(d_15), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_16
(
	.z(e_18), // OUT
	.a0(d_18), // IN
	.a1(d_16), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_17
(
	.z(e_19), // OUT
	.a0(d_19), // IN
	.a1(d_17), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_18
(
	.z(e_20), // OUT
	.a0(d_20), // IN
	.a1(d_18), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_19
(
	.z(e_21), // OUT
	.a0(d_21), // IN
	.a1(d_19), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_20
(
	.z(e_22), // OUT
	.a0(d_22), // IN
	.a1(d_20), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_21
(
	.z(e_23), // OUT
	.a0(d_23), // IN
	.a1(d_21), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_22
(
	.z(e_24), // OUT
	.a0(d_24), // IN
	.a1(d_22), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_23
(
	.z(e_25), // OUT
	.a0(d_25), // IN
	.a1(d_23), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_24
(
	.z(e_26), // OUT
	.a0(d_26), // IN
	.a1(d_24), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_25
(
	.z(e_27), // OUT
	.a0(d_27), // IN
	.a1(d_25), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_26
(
	.z(e_28), // OUT
	.a0(d_28), // IN
	.a1(d_26), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_27
(
	.z(e_29), // OUT
	.a0(d_29), // IN
	.a1(d_27), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_28
(
	.z(e_30), // OUT
	.a0(d_30), // IN
	.a1(d_28), // IN
	.s(sftb_1)  // IN
);
mx2 e_from_2_to_31_inst_29
(
	.z(e_31), // OUT
	.a0(d_31), // IN
	.a1(d_29), // IN
	.s(sftb_1)  // IN
);

// ARITH.NET (635) - f[0] : mx2
mx2 f_index_0_inst
(
	.z(f_0), // OUT
	.a0(e_0), // IN
	.a1(e_31), // IN
	.s(sftb_0)  // IN
);

// ARITH.NET (636) - f[1-31] : mx2
mx2 f_from_1_to_31_inst_0
(
	.z(f_1), // OUT
	.a0(e_1), // IN
	.a1(e_0), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_1
(
	.z(f_2), // OUT
	.a0(e_2), // IN
	.a1(e_1), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_2
(
	.z(f_3), // OUT
	.a0(e_3), // IN
	.a1(e_2), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_3
(
	.z(f_4), // OUT
	.a0(e_4), // IN
	.a1(e_3), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_4
(
	.z(f_5), // OUT
	.a0(e_5), // IN
	.a1(e_4), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_5
(
	.z(f_6), // OUT
	.a0(e_6), // IN
	.a1(e_5), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_6
(
	.z(f_7), // OUT
	.a0(e_7), // IN
	.a1(e_6), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_7
(
	.z(f_8), // OUT
	.a0(e_8), // IN
	.a1(e_7), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_8
(
	.z(f_9), // OUT
	.a0(e_9), // IN
	.a1(e_8), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_9
(
	.z(f_10), // OUT
	.a0(e_10), // IN
	.a1(e_9), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_10
(
	.z(f_11), // OUT
	.a0(e_11), // IN
	.a1(e_10), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_11
(
	.z(f_12), // OUT
	.a0(e_12), // IN
	.a1(e_11), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_12
(
	.z(f_13), // OUT
	.a0(e_13), // IN
	.a1(e_12), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_13
(
	.z(f_14), // OUT
	.a0(e_14), // IN
	.a1(e_13), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_14
(
	.z(f_15), // OUT
	.a0(e_15), // IN
	.a1(e_14), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_15
(
	.z(f_16), // OUT
	.a0(e_16), // IN
	.a1(e_15), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_16
(
	.z(f_17), // OUT
	.a0(e_17), // IN
	.a1(e_16), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_17
(
	.z(f_18), // OUT
	.a0(e_18), // IN
	.a1(e_17), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_18
(
	.z(f_19), // OUT
	.a0(e_19), // IN
	.a1(e_18), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_19
(
	.z(f_20), // OUT
	.a0(e_20), // IN
	.a1(e_19), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_20
(
	.z(f_21), // OUT
	.a0(e_21), // IN
	.a1(e_20), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_21
(
	.z(f_22), // OUT
	.a0(e_22), // IN
	.a1(e_21), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_22
(
	.z(f_23), // OUT
	.a0(e_23), // IN
	.a1(e_22), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_23
(
	.z(f_24), // OUT
	.a0(e_24), // IN
	.a1(e_23), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_24
(
	.z(f_25), // OUT
	.a0(e_25), // IN
	.a1(e_24), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_25
(
	.z(f_26), // OUT
	.a0(e_26), // IN
	.a1(e_25), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_26
(
	.z(f_27), // OUT
	.a0(e_27), // IN
	.a1(e_26), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_27
(
	.z(f_28), // OUT
	.a0(e_28), // IN
	.a1(e_27), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_28
(
	.z(f_29), // OUT
	.a0(e_29), // IN
	.a1(e_28), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_29
(
	.z(f_30), // OUT
	.a0(e_30), // IN
	.a1(e_29), // IN
	.s(sftb_0)  // IN
);
mx2 f_from_1_to_31_inst_30
(
	.z(f_31), // OUT
	.a0(e_31), // IN
	.a1(e_30), // IN
	.s(sftb_0)  // IN
);

// ARITH.NET (640) - dcd0 : d416gh
d416gh dcd0_inst
(
	.z0(dcd_0), // OUT
	.z1(dcd_1), // OUT
	.z2(dcd_2), // OUT
	.z3(dcd_3), // OUT
	.z4(dcd_4), // OUT
	.z5(dcd_5), // OUT
	.z6(dcd_6), // OUT
	.z7(dcd_7), // OUT
	.z8(dcd_8), // OUT
	.z9(dcd_9), // OUT
	.z10(dcd_10), // OUT
	.z11(dcd_11), // OUT
	.z12(dcd_12), // OUT
	.z13(dcd_13), // OUT
	.z14(dcd_14), // OUT
	.z15(dcd_15), // OUT
	.a0(sft_0), // IN
	.a1(sft_1), // IN
	.a2(sft_2), // IN
	.a3(sft_3), // IN
	.g(sft_4)  // IN
);

// ARITH.NET (641) - dcd1 : d416gh
d416gh dcd1_inst
(
	.z0(dcd_16), // OUT
	.z1(dcd_17), // OUT
	.z2(dcd_18), // OUT
	.z3(dcd_19), // OUT
	.z4(dcd_20), // OUT
	.z5(dcd_21), // OUT
	.z6(dcd_22), // OUT
	.z7(dcd_23), // OUT
	.z8(dcd_24), // OUT
	.z9(dcd_25), // OUT
	.z10(dcd_26), // OUT
	.z11(dcd_27), // OUT
	.z12(dcd_28), // OUT
	.z13(dcd_29), // OUT
	.z14(dcd_30), // OUT
	.z15(dcd_31), // OUT
	.a0(sft_0), // IN
	.a1(sft_1), // IN
	.a2(sft_2), // IN
	.a3(sft_3), // IN
	.g(sft_n_4)  // IN
);

// ARITH.NET (654) - rmask[0] : join
assign rmask_0 = dcd_0;

// ARITH.NET (655) - rmask[1-7] : or2
assign rmask_1 = rmask_0 | dcd_1;
assign rmask_2 = rmask_1 | dcd_2;
assign rmask_3 = rmask_2 | dcd_3;
assign rmask_4 = rmask_3 | dcd_4;
assign rmask_5 = rmask_4 | dcd_5;
assign rmask_6 = rmask_5 | dcd_6;
assign rmask_7 = rmask_6 | dcd_7;

// ARITH.NET (656) - rmask[8] : or9
or9 rmask_index_8_inst
(
	.z(rmask_8), // IO
	.a(dcd_0), // IN
	.b(dcd_1), // IN
	.c(dcd_2), // IN
	.d(dcd_3), // IN
	.e(dcd_4), // IN
	.f(dcd_5), // IN
	.g(dcd_6), // IN
	.h(dcd_7), // IN
	.i(dcd_8)  // IN
);

// ARITH.NET (657) - rmask[9-15] : or2
assign rmask_9 = rmask_8 | dcd_9;
assign rmask_10 = rmask_9 | dcd_10;
assign rmask_11 = rmask_10 | dcd_11;
assign rmask_12 = rmask_11 | dcd_12;
assign rmask_13 = rmask_12 | dcd_13;
assign rmask_14 = rmask_13 | dcd_14;
assign rmask_15 = rmask_14 | dcd_15;

// ARITH.NET (658) - rmask[16] : or9
or9 rmask_index_16_inst
(
	.z(rmask_16), // IO
	.a(rmask_8), // IN
	.b(dcd_9), // IN
	.c(dcd_10), // IN
	.d(dcd_11), // IN
	.e(dcd_12), // IN
	.f(dcd_13), // IN
	.g(dcd_14), // IN
	.h(dcd_15), // IN
	.i(dcd_16)  // IN
);

// ARITH.NET (659) - rmask[17-23] : or2
assign rmask_17 = rmask_16 | dcd_17;
assign rmask_18 = rmask_17 | dcd_18;
assign rmask_19 = rmask_18 | dcd_19;
assign rmask_20 = rmask_19 | dcd_20;
assign rmask_21 = rmask_20 | dcd_21;
assign rmask_22 = rmask_21 | dcd_22;
assign rmask_23 = rmask_22 | dcd_23;

// ARITH.NET (660) - rmask[24] : or9
or9 rmask_index_24_inst
(
	.z(rmask_24), // IO
	.a(rmask_16), // IN
	.b(dcd_17), // IN
	.c(dcd_18), // IN
	.d(dcd_19), // IN
	.e(dcd_20), // IN
	.f(dcd_21), // IN
	.g(dcd_22), // IN
	.h(dcd_23), // IN
	.i(dcd_24)  // IN
);

// ARITH.NET (661) - rmask[25-31] : or2
assign rmask_25 = rmask_24 | dcd_25;
assign rmask_26 = rmask_25 | dcd_26;
assign rmask_27 = rmask_26 | dcd_27;
assign rmask_28 = rmask_27 | dcd_28;
assign rmask_29 = rmask_28 | dcd_29;
assign rmask_30 = rmask_29 | dcd_30;
assign rmask_31 = rmask_30 | dcd_31;

// ARITH.NET (674) - lmask[31] : join
assign lmask_31 = zero;

// ARITH.NET (675) - lmask[30] : join
assign lmask_30 = dcd_31;

// ARITH.NET (676) - lmask[24-29] : or2
assign lmask_24 = lmask_25 | dcd_25;
assign lmask_25 = lmask_26 | dcd_26;
assign lmask_26 = lmask_27 | dcd_27;
assign lmask_27 = lmask_28 | dcd_28;
assign lmask_28 = lmask_29 | dcd_29;
assign lmask_29 = lmask_30 | dcd_30;

// ARITH.NET (677) - lmask[23] : or8
assign lmask_23 = dcd_24 | dcd_25 | dcd_26 | dcd_27 | dcd_28 | dcd_29 | dcd_30 | dcd_31;

// ARITH.NET (678) - lmask[16-22] : or2
assign lmask_16 = lmask_17 | dcd_17;
assign lmask_17 = lmask_18 | dcd_18;
assign lmask_18 = lmask_19 | dcd_19;
assign lmask_19 = lmask_20 | dcd_20;
assign lmask_20 = lmask_21 | dcd_21;
assign lmask_21 = lmask_22 | dcd_22;
assign lmask_22 = lmask_23 | dcd_23;

// ARITH.NET (679) - lmask[15] : or9
or9 lmask_index_15_inst
(
	.z(lmask_15), // IO
	.a(lmask_23), // IN
	.b(dcd_16), // IN
	.c(dcd_17), // IN
	.d(dcd_18), // IN
	.e(dcd_19), // IN
	.f(dcd_20), // IN
	.g(dcd_21), // IN
	.h(dcd_22), // IN
	.i(dcd_23)  // IN
);

// ARITH.NET (680) - lmask[8-14] : or2
assign lmask_8 = lmask_9 | dcd_9;
assign lmask_9 = lmask_10 | dcd_10;
assign lmask_10 = lmask_11 | dcd_11;
assign lmask_11 = lmask_12 | dcd_12;
assign lmask_12 = lmask_13 | dcd_13;
assign lmask_13 = lmask_14 | dcd_14;
assign lmask_14 = lmask_15 | dcd_15;

// ARITH.NET (681) - lmask[7] : or9
or9 lmask_index_7_inst
(
	.z(lmask_7), // IO
	.a(lmask_15), // IN
	.b(dcd_8), // IN
	.c(dcd_9), // IN
	.d(dcd_10), // IN
	.e(dcd_11), // IN
	.f(dcd_12), // IN
	.g(dcd_13), // IN
	.h(dcd_14), // IN
	.i(dcd_15)  // IN
);

// ARITH.NET (682) - lmask[0-6] : or2
assign lmask_0 = lmask_1 | dcd_1;
assign lmask_1 = lmask_2 | dcd_2;
assign lmask_2 = lmask_3 | dcd_3;
assign lmask_3 = lmask_4 | dcd_4;
assign lmask_4 = lmask_5 | dcd_5;
assign lmask_5 = lmask_6 | dcd_6;
assign lmask_6 = lmask_7 | dcd_7;

// ARITH.NET (687) - lsl : an2u
assign lsl = mux_n_0 & mux_n_1;

// ARITH.NET (688) - sr : nivu
assign sr = mux_0;

// ARITH.NET (689) - asr_sign : an3u
assign asr_sign = mux_0 & mux_1 & a_31;

// ARITH.NET (692) - opt0[0-31] : anr2
assign opt0_0 = ~( (lsl & lmask_0) | (sr & rmask_0) );
assign opt0_1 = ~( (lsl & lmask_1) | (sr & rmask_1) );
assign opt0_2 = ~( (lsl & lmask_2) | (sr & rmask_2) );
assign opt0_3 = ~( (lsl & lmask_3) | (sr & rmask_3) );
assign opt0_4 = ~( (lsl & lmask_4) | (sr & rmask_4) );
assign opt0_5 = ~( (lsl & lmask_5) | (sr & rmask_5) );
assign opt0_6 = ~( (lsl & lmask_6) | (sr & rmask_6) );
assign opt0_7 = ~( (lsl & lmask_7) | (sr & rmask_7) );
assign opt0_8 = ~( (lsl & lmask_8) | (sr & rmask_8) );
assign opt0_9 = ~( (lsl & lmask_9) | (sr & rmask_9) );
assign opt0_10 = ~( (lsl & lmask_10) | (sr & rmask_10) );
assign opt0_11 = ~( (lsl & lmask_11) | (sr & rmask_11) );
assign opt0_12 = ~( (lsl & lmask_12) | (sr & rmask_12) );
assign opt0_13 = ~( (lsl & lmask_13) | (sr & rmask_13) );
assign opt0_14 = ~( (lsl & lmask_14) | (sr & rmask_14) );
assign opt0_15 = ~( (lsl & lmask_15) | (sr & rmask_15) );
assign opt0_16 = ~( (lsl & lmask_16) | (sr & rmask_16) );
assign opt0_17 = ~( (lsl & lmask_17) | (sr & rmask_17) );
assign opt0_18 = ~( (lsl & lmask_18) | (sr & rmask_18) );
assign opt0_19 = ~( (lsl & lmask_19) | (sr & rmask_19) );
assign opt0_20 = ~( (lsl & lmask_20) | (sr & rmask_20) );
assign opt0_21 = ~( (lsl & lmask_21) | (sr & rmask_21) );
assign opt0_22 = ~( (lsl & lmask_22) | (sr & rmask_22) );
assign opt0_23 = ~( (lsl & lmask_23) | (sr & rmask_23) );
assign opt0_24 = ~( (lsl & lmask_24) | (sr & rmask_24) );
assign opt0_25 = ~( (lsl & lmask_25) | (sr & rmask_25) );
assign opt0_26 = ~( (lsl & lmask_26) | (sr & rmask_26) );
assign opt0_27 = ~( (lsl & lmask_27) | (sr & rmask_27) );
assign opt0_28 = ~( (lsl & lmask_28) | (sr & rmask_28) );
assign opt0_29 = ~( (lsl & lmask_29) | (sr & rmask_29) );
assign opt0_30 = ~( (lsl & lmask_30) | (sr & rmask_30) );
assign opt0_31 = ~( (lsl & lmask_31) | (sr & rmask_31) );

// ARITH.NET (694) - opt1[0-31] : an2
assign opt1_0 = asr_sign & rmask_0;
assign opt1_1 = asr_sign & rmask_1;
assign opt1_2 = asr_sign & rmask_2;
assign opt1_3 = asr_sign & rmask_3;
assign opt1_4 = asr_sign & rmask_4;
assign opt1_5 = asr_sign & rmask_5;
assign opt1_6 = asr_sign & rmask_6;
assign opt1_7 = asr_sign & rmask_7;
assign opt1_8 = asr_sign & rmask_8;
assign opt1_9 = asr_sign & rmask_9;
assign opt1_10 = asr_sign & rmask_10;
assign opt1_11 = asr_sign & rmask_11;
assign opt1_12 = asr_sign & rmask_12;
assign opt1_13 = asr_sign & rmask_13;
assign opt1_14 = asr_sign & rmask_14;
assign opt1_15 = asr_sign & rmask_15;
assign opt1_16 = asr_sign & rmask_16;
assign opt1_17 = asr_sign & rmask_17;
assign opt1_18 = asr_sign & rmask_18;
assign opt1_19 = asr_sign & rmask_19;
assign opt1_20 = asr_sign & rmask_20;
assign opt1_21 = asr_sign & rmask_21;
assign opt1_22 = asr_sign & rmask_22;
assign opt1_23 = asr_sign & rmask_23;
assign opt1_24 = asr_sign & rmask_24;
assign opt1_25 = asr_sign & rmask_25;
assign opt1_26 = asr_sign & rmask_26;
assign opt1_27 = asr_sign & rmask_27;
assign opt1_28 = asr_sign & rmask_28;
assign opt1_29 = asr_sign & rmask_29;
assign opt1_30 = asr_sign & rmask_30;
assign opt1_31 = asr_sign & rmask_31;

// ARITH.NET (695) - opt[0-31] : aor1
assign z_0 = (f_0 & opt0_0) | opt1_0;
assign z_1 = (f_1 & opt0_1) | opt1_1;
assign z_2 = (f_2 & opt0_2) | opt1_2;
assign z_3 = (f_3 & opt0_3) | opt1_3;
assign z_4 = (f_4 & opt0_4) | opt1_4;
assign z_5 = (f_5 & opt0_5) | opt1_5;
assign z_6 = (f_6 & opt0_6) | opt1_6;
assign z_7 = (f_7 & opt0_7) | opt1_7;
assign z_8 = (f_8 & opt0_8) | opt1_8;
assign z_9 = (f_9 & opt0_9) | opt1_9;
assign z_10 = (f_10 & opt0_10) | opt1_10;
assign z_11 = (f_11 & opt0_11) | opt1_11;
assign z_12 = (f_12 & opt0_12) | opt1_12;
assign z_13 = (f_13 & opt0_13) | opt1_13;
assign z_14 = (f_14 & opt0_14) | opt1_14;
assign z_15 = (f_15 & opt0_15) | opt1_15;
assign z_16 = (f_16 & opt0_16) | opt1_16;
assign z_17 = (f_17 & opt0_17) | opt1_17;
assign z_18 = (f_18 & opt0_18) | opt1_18;
assign z_19 = (f_19 & opt0_19) | opt1_19;
assign z_20 = (f_20 & opt0_20) | opt1_20;
assign z_21 = (f_21 & opt0_21) | opt1_21;
assign z_22 = (f_22 & opt0_22) | opt1_22;
assign z_23 = (f_23 & opt0_23) | opt1_23;
assign z_24 = (f_24 & opt0_24) | opt1_24;
assign z_25 = (f_25 & opt0_25) | opt1_25;
assign z_26 = (f_26 & opt0_26) | opt1_26;
assign z_27 = (f_27 & opt0_27) | opt1_27;
assign z_28 = (f_28 & opt0_28) | opt1_28;
assign z_29 = (f_29 & opt0_29) | opt1_29;
assign z_30 = (f_30 & opt0_30) | opt1_30;
assign z_31 = (f_31 & opt0_31) | opt1_31;
endmodule
