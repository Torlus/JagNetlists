/* verilator lint_off LITENDIAN */
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
	.z /* OUT */ (b_0),
	.a0 /* IN */ (a_0),
	.a1 /* IN */ (a_16),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_1
(
	.z /* OUT */ (b_1),
	.a0 /* IN */ (a_1),
	.a1 /* IN */ (a_17),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_2
(
	.z /* OUT */ (b_2),
	.a0 /* IN */ (a_2),
	.a1 /* IN */ (a_18),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_3
(
	.z /* OUT */ (b_3),
	.a0 /* IN */ (a_3),
	.a1 /* IN */ (a_19),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_4
(
	.z /* OUT */ (b_4),
	.a0 /* IN */ (a_4),
	.a1 /* IN */ (a_20),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_5
(
	.z /* OUT */ (b_5),
	.a0 /* IN */ (a_5),
	.a1 /* IN */ (a_21),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_6
(
	.z /* OUT */ (b_6),
	.a0 /* IN */ (a_6),
	.a1 /* IN */ (a_22),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_7
(
	.z /* OUT */ (b_7),
	.a0 /* IN */ (a_7),
	.a1 /* IN */ (a_23),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_8
(
	.z /* OUT */ (b_8),
	.a0 /* IN */ (a_8),
	.a1 /* IN */ (a_24),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_9
(
	.z /* OUT */ (b_9),
	.a0 /* IN */ (a_9),
	.a1 /* IN */ (a_25),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_10
(
	.z /* OUT */ (b_10),
	.a0 /* IN */ (a_10),
	.a1 /* IN */ (a_26),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_11
(
	.z /* OUT */ (b_11),
	.a0 /* IN */ (a_11),
	.a1 /* IN */ (a_27),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_12
(
	.z /* OUT */ (b_12),
	.a0 /* IN */ (a_12),
	.a1 /* IN */ (a_28),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_13
(
	.z /* OUT */ (b_13),
	.a0 /* IN */ (a_13),
	.a1 /* IN */ (a_29),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_14
(
	.z /* OUT */ (b_14),
	.a0 /* IN */ (a_14),
	.a1 /* IN */ (a_30),
	.s /* IN */ (sftb_4)
);
mx2 b_from_0_to_15_inst_15
(
	.z /* OUT */ (b_15),
	.a0 /* IN */ (a_15),
	.a1 /* IN */ (a_31),
	.s /* IN */ (sftb_4)
);

// ARITH.NET (624) - b[16-31] : mx2
mx2 b_from_16_to_31_inst_0
(
	.z /* OUT */ (b_16),
	.a0 /* IN */ (a_16),
	.a1 /* IN */ (a_0),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_1
(
	.z /* OUT */ (b_17),
	.a0 /* IN */ (a_17),
	.a1 /* IN */ (a_1),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_2
(
	.z /* OUT */ (b_18),
	.a0 /* IN */ (a_18),
	.a1 /* IN */ (a_2),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_3
(
	.z /* OUT */ (b_19),
	.a0 /* IN */ (a_19),
	.a1 /* IN */ (a_3),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_4
(
	.z /* OUT */ (b_20),
	.a0 /* IN */ (a_20),
	.a1 /* IN */ (a_4),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_5
(
	.z /* OUT */ (b_21),
	.a0 /* IN */ (a_21),
	.a1 /* IN */ (a_5),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_6
(
	.z /* OUT */ (b_22),
	.a0 /* IN */ (a_22),
	.a1 /* IN */ (a_6),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_7
(
	.z /* OUT */ (b_23),
	.a0 /* IN */ (a_23),
	.a1 /* IN */ (a_7),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_8
(
	.z /* OUT */ (b_24),
	.a0 /* IN */ (a_24),
	.a1 /* IN */ (a_8),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_9
(
	.z /* OUT */ (b_25),
	.a0 /* IN */ (a_25),
	.a1 /* IN */ (a_9),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_10
(
	.z /* OUT */ (b_26),
	.a0 /* IN */ (a_26),
	.a1 /* IN */ (a_10),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_11
(
	.z /* OUT */ (b_27),
	.a0 /* IN */ (a_27),
	.a1 /* IN */ (a_11),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_12
(
	.z /* OUT */ (b_28),
	.a0 /* IN */ (a_28),
	.a1 /* IN */ (a_12),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_13
(
	.z /* OUT */ (b_29),
	.a0 /* IN */ (a_29),
	.a1 /* IN */ (a_13),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_14
(
	.z /* OUT */ (b_30),
	.a0 /* IN */ (a_30),
	.a1 /* IN */ (a_14),
	.s /* IN */ (sftb_4)
);
mx2 b_from_16_to_31_inst_15
(
	.z /* OUT */ (b_31),
	.a0 /* IN */ (a_31),
	.a1 /* IN */ (a_15),
	.s /* IN */ (sftb_4)
);

// ARITH.NET (626) - c[0-7] : mx2
mx2 c_from_0_to_7_inst_0
(
	.z /* OUT */ (c_0),
	.a0 /* IN */ (b_0),
	.a1 /* IN */ (b_24),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_1
(
	.z /* OUT */ (c_1),
	.a0 /* IN */ (b_1),
	.a1 /* IN */ (b_25),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_2
(
	.z /* OUT */ (c_2),
	.a0 /* IN */ (b_2),
	.a1 /* IN */ (b_26),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_3
(
	.z /* OUT */ (c_3),
	.a0 /* IN */ (b_3),
	.a1 /* IN */ (b_27),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_4
(
	.z /* OUT */ (c_4),
	.a0 /* IN */ (b_4),
	.a1 /* IN */ (b_28),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_5
(
	.z /* OUT */ (c_5),
	.a0 /* IN */ (b_5),
	.a1 /* IN */ (b_29),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_6
(
	.z /* OUT */ (c_6),
	.a0 /* IN */ (b_6),
	.a1 /* IN */ (b_30),
	.s /* IN */ (sftb_3)
);
mx2 c_from_0_to_7_inst_7
(
	.z /* OUT */ (c_7),
	.a0 /* IN */ (b_7),
	.a1 /* IN */ (b_31),
	.s /* IN */ (sftb_3)
);

// ARITH.NET (627) - c[8-31] : mx2
mx2 c_from_8_to_31_inst_0
(
	.z /* OUT */ (c_8),
	.a0 /* IN */ (b_8),
	.a1 /* IN */ (b_0),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_1
(
	.z /* OUT */ (c_9),
	.a0 /* IN */ (b_9),
	.a1 /* IN */ (b_1),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_2
(
	.z /* OUT */ (c_10),
	.a0 /* IN */ (b_10),
	.a1 /* IN */ (b_2),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_3
(
	.z /* OUT */ (c_11),
	.a0 /* IN */ (b_11),
	.a1 /* IN */ (b_3),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_4
(
	.z /* OUT */ (c_12),
	.a0 /* IN */ (b_12),
	.a1 /* IN */ (b_4),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_5
(
	.z /* OUT */ (c_13),
	.a0 /* IN */ (b_13),
	.a1 /* IN */ (b_5),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_6
(
	.z /* OUT */ (c_14),
	.a0 /* IN */ (b_14),
	.a1 /* IN */ (b_6),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_7
(
	.z /* OUT */ (c_15),
	.a0 /* IN */ (b_15),
	.a1 /* IN */ (b_7),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_8
(
	.z /* OUT */ (c_16),
	.a0 /* IN */ (b_16),
	.a1 /* IN */ (b_8),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_9
(
	.z /* OUT */ (c_17),
	.a0 /* IN */ (b_17),
	.a1 /* IN */ (b_9),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_10
(
	.z /* OUT */ (c_18),
	.a0 /* IN */ (b_18),
	.a1 /* IN */ (b_10),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_11
(
	.z /* OUT */ (c_19),
	.a0 /* IN */ (b_19),
	.a1 /* IN */ (b_11),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_12
(
	.z /* OUT */ (c_20),
	.a0 /* IN */ (b_20),
	.a1 /* IN */ (b_12),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_13
(
	.z /* OUT */ (c_21),
	.a0 /* IN */ (b_21),
	.a1 /* IN */ (b_13),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_14
(
	.z /* OUT */ (c_22),
	.a0 /* IN */ (b_22),
	.a1 /* IN */ (b_14),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_15
(
	.z /* OUT */ (c_23),
	.a0 /* IN */ (b_23),
	.a1 /* IN */ (b_15),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_16
(
	.z /* OUT */ (c_24),
	.a0 /* IN */ (b_24),
	.a1 /* IN */ (b_16),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_17
(
	.z /* OUT */ (c_25),
	.a0 /* IN */ (b_25),
	.a1 /* IN */ (b_17),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_18
(
	.z /* OUT */ (c_26),
	.a0 /* IN */ (b_26),
	.a1 /* IN */ (b_18),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_19
(
	.z /* OUT */ (c_27),
	.a0 /* IN */ (b_27),
	.a1 /* IN */ (b_19),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_20
(
	.z /* OUT */ (c_28),
	.a0 /* IN */ (b_28),
	.a1 /* IN */ (b_20),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_21
(
	.z /* OUT */ (c_29),
	.a0 /* IN */ (b_29),
	.a1 /* IN */ (b_21),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_22
(
	.z /* OUT */ (c_30),
	.a0 /* IN */ (b_30),
	.a1 /* IN */ (b_22),
	.s /* IN */ (sftb_3)
);
mx2 c_from_8_to_31_inst_23
(
	.z /* OUT */ (c_31),
	.a0 /* IN */ (b_31),
	.a1 /* IN */ (b_23),
	.s /* IN */ (sftb_3)
);

// ARITH.NET (629) - d[0-3] : mx2
mx2 d_from_0_to_3_inst_0
(
	.z /* OUT */ (d_0),
	.a0 /* IN */ (c_0),
	.a1 /* IN */ (c_28),
	.s /* IN */ (sftb_2)
);
mx2 d_from_0_to_3_inst_1
(
	.z /* OUT */ (d_1),
	.a0 /* IN */ (c_1),
	.a1 /* IN */ (c_29),
	.s /* IN */ (sftb_2)
);
mx2 d_from_0_to_3_inst_2
(
	.z /* OUT */ (d_2),
	.a0 /* IN */ (c_2),
	.a1 /* IN */ (c_30),
	.s /* IN */ (sftb_2)
);
mx2 d_from_0_to_3_inst_3
(
	.z /* OUT */ (d_3),
	.a0 /* IN */ (c_3),
	.a1 /* IN */ (c_31),
	.s /* IN */ (sftb_2)
);

// ARITH.NET (630) - d[4-31] : mx2
mx2 d_from_4_to_31_inst_0
(
	.z /* OUT */ (d_4),
	.a0 /* IN */ (c_4),
	.a1 /* IN */ (c_0),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_1
(
	.z /* OUT */ (d_5),
	.a0 /* IN */ (c_5),
	.a1 /* IN */ (c_1),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_2
(
	.z /* OUT */ (d_6),
	.a0 /* IN */ (c_6),
	.a1 /* IN */ (c_2),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_3
(
	.z /* OUT */ (d_7),
	.a0 /* IN */ (c_7),
	.a1 /* IN */ (c_3),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_4
(
	.z /* OUT */ (d_8),
	.a0 /* IN */ (c_8),
	.a1 /* IN */ (c_4),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_5
(
	.z /* OUT */ (d_9),
	.a0 /* IN */ (c_9),
	.a1 /* IN */ (c_5),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_6
(
	.z /* OUT */ (d_10),
	.a0 /* IN */ (c_10),
	.a1 /* IN */ (c_6),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_7
(
	.z /* OUT */ (d_11),
	.a0 /* IN */ (c_11),
	.a1 /* IN */ (c_7),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_8
(
	.z /* OUT */ (d_12),
	.a0 /* IN */ (c_12),
	.a1 /* IN */ (c_8),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_9
(
	.z /* OUT */ (d_13),
	.a0 /* IN */ (c_13),
	.a1 /* IN */ (c_9),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_10
(
	.z /* OUT */ (d_14),
	.a0 /* IN */ (c_14),
	.a1 /* IN */ (c_10),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_11
(
	.z /* OUT */ (d_15),
	.a0 /* IN */ (c_15),
	.a1 /* IN */ (c_11),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_12
(
	.z /* OUT */ (d_16),
	.a0 /* IN */ (c_16),
	.a1 /* IN */ (c_12),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_13
(
	.z /* OUT */ (d_17),
	.a0 /* IN */ (c_17),
	.a1 /* IN */ (c_13),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_14
(
	.z /* OUT */ (d_18),
	.a0 /* IN */ (c_18),
	.a1 /* IN */ (c_14),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_15
(
	.z /* OUT */ (d_19),
	.a0 /* IN */ (c_19),
	.a1 /* IN */ (c_15),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_16
(
	.z /* OUT */ (d_20),
	.a0 /* IN */ (c_20),
	.a1 /* IN */ (c_16),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_17
(
	.z /* OUT */ (d_21),
	.a0 /* IN */ (c_21),
	.a1 /* IN */ (c_17),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_18
(
	.z /* OUT */ (d_22),
	.a0 /* IN */ (c_22),
	.a1 /* IN */ (c_18),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_19
(
	.z /* OUT */ (d_23),
	.a0 /* IN */ (c_23),
	.a1 /* IN */ (c_19),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_20
(
	.z /* OUT */ (d_24),
	.a0 /* IN */ (c_24),
	.a1 /* IN */ (c_20),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_21
(
	.z /* OUT */ (d_25),
	.a0 /* IN */ (c_25),
	.a1 /* IN */ (c_21),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_22
(
	.z /* OUT */ (d_26),
	.a0 /* IN */ (c_26),
	.a1 /* IN */ (c_22),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_23
(
	.z /* OUT */ (d_27),
	.a0 /* IN */ (c_27),
	.a1 /* IN */ (c_23),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_24
(
	.z /* OUT */ (d_28),
	.a0 /* IN */ (c_28),
	.a1 /* IN */ (c_24),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_25
(
	.z /* OUT */ (d_29),
	.a0 /* IN */ (c_29),
	.a1 /* IN */ (c_25),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_26
(
	.z /* OUT */ (d_30),
	.a0 /* IN */ (c_30),
	.a1 /* IN */ (c_26),
	.s /* IN */ (sftb_2)
);
mx2 d_from_4_to_31_inst_27
(
	.z /* OUT */ (d_31),
	.a0 /* IN */ (c_31),
	.a1 /* IN */ (c_27),
	.s /* IN */ (sftb_2)
);

// ARITH.NET (632) - e[0-1] : mx2
mx2 e_from_0_to_1_inst_0
(
	.z /* OUT */ (e_0),
	.a0 /* IN */ (d_0),
	.a1 /* IN */ (d_30),
	.s /* IN */ (sftb_1)
);
mx2 e_from_0_to_1_inst_1
(
	.z /* OUT */ (e_1),
	.a0 /* IN */ (d_1),
	.a1 /* IN */ (d_31),
	.s /* IN */ (sftb_1)
);

// ARITH.NET (633) - e[2-31] : mx2
mx2 e_from_2_to_31_inst_0
(
	.z /* OUT */ (e_2),
	.a0 /* IN */ (d_2),
	.a1 /* IN */ (d_0),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_1
(
	.z /* OUT */ (e_3),
	.a0 /* IN */ (d_3),
	.a1 /* IN */ (d_1),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_2
(
	.z /* OUT */ (e_4),
	.a0 /* IN */ (d_4),
	.a1 /* IN */ (d_2),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_3
(
	.z /* OUT */ (e_5),
	.a0 /* IN */ (d_5),
	.a1 /* IN */ (d_3),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_4
(
	.z /* OUT */ (e_6),
	.a0 /* IN */ (d_6),
	.a1 /* IN */ (d_4),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_5
(
	.z /* OUT */ (e_7),
	.a0 /* IN */ (d_7),
	.a1 /* IN */ (d_5),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_6
(
	.z /* OUT */ (e_8),
	.a0 /* IN */ (d_8),
	.a1 /* IN */ (d_6),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_7
(
	.z /* OUT */ (e_9),
	.a0 /* IN */ (d_9),
	.a1 /* IN */ (d_7),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_8
(
	.z /* OUT */ (e_10),
	.a0 /* IN */ (d_10),
	.a1 /* IN */ (d_8),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_9
(
	.z /* OUT */ (e_11),
	.a0 /* IN */ (d_11),
	.a1 /* IN */ (d_9),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_10
(
	.z /* OUT */ (e_12),
	.a0 /* IN */ (d_12),
	.a1 /* IN */ (d_10),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_11
(
	.z /* OUT */ (e_13),
	.a0 /* IN */ (d_13),
	.a1 /* IN */ (d_11),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_12
(
	.z /* OUT */ (e_14),
	.a0 /* IN */ (d_14),
	.a1 /* IN */ (d_12),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_13
(
	.z /* OUT */ (e_15),
	.a0 /* IN */ (d_15),
	.a1 /* IN */ (d_13),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_14
(
	.z /* OUT */ (e_16),
	.a0 /* IN */ (d_16),
	.a1 /* IN */ (d_14),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_15
(
	.z /* OUT */ (e_17),
	.a0 /* IN */ (d_17),
	.a1 /* IN */ (d_15),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_16
(
	.z /* OUT */ (e_18),
	.a0 /* IN */ (d_18),
	.a1 /* IN */ (d_16),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_17
(
	.z /* OUT */ (e_19),
	.a0 /* IN */ (d_19),
	.a1 /* IN */ (d_17),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_18
(
	.z /* OUT */ (e_20),
	.a0 /* IN */ (d_20),
	.a1 /* IN */ (d_18),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_19
(
	.z /* OUT */ (e_21),
	.a0 /* IN */ (d_21),
	.a1 /* IN */ (d_19),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_20
(
	.z /* OUT */ (e_22),
	.a0 /* IN */ (d_22),
	.a1 /* IN */ (d_20),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_21
(
	.z /* OUT */ (e_23),
	.a0 /* IN */ (d_23),
	.a1 /* IN */ (d_21),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_22
(
	.z /* OUT */ (e_24),
	.a0 /* IN */ (d_24),
	.a1 /* IN */ (d_22),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_23
(
	.z /* OUT */ (e_25),
	.a0 /* IN */ (d_25),
	.a1 /* IN */ (d_23),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_24
(
	.z /* OUT */ (e_26),
	.a0 /* IN */ (d_26),
	.a1 /* IN */ (d_24),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_25
(
	.z /* OUT */ (e_27),
	.a0 /* IN */ (d_27),
	.a1 /* IN */ (d_25),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_26
(
	.z /* OUT */ (e_28),
	.a0 /* IN */ (d_28),
	.a1 /* IN */ (d_26),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_27
(
	.z /* OUT */ (e_29),
	.a0 /* IN */ (d_29),
	.a1 /* IN */ (d_27),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_28
(
	.z /* OUT */ (e_30),
	.a0 /* IN */ (d_30),
	.a1 /* IN */ (d_28),
	.s /* IN */ (sftb_1)
);
mx2 e_from_2_to_31_inst_29
(
	.z /* OUT */ (e_31),
	.a0 /* IN */ (d_31),
	.a1 /* IN */ (d_29),
	.s /* IN */ (sftb_1)
);

// ARITH.NET (635) - f[0] : mx2
mx2 f_index_0_inst
(
	.z /* OUT */ (f_0),
	.a0 /* IN */ (e_0),
	.a1 /* IN */ (e_31),
	.s /* IN */ (sftb_0)
);

// ARITH.NET (636) - f[1-31] : mx2
mx2 f_from_1_to_31_inst_0
(
	.z /* OUT */ (f_1),
	.a0 /* IN */ (e_1),
	.a1 /* IN */ (e_0),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_1
(
	.z /* OUT */ (f_2),
	.a0 /* IN */ (e_2),
	.a1 /* IN */ (e_1),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_2
(
	.z /* OUT */ (f_3),
	.a0 /* IN */ (e_3),
	.a1 /* IN */ (e_2),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_3
(
	.z /* OUT */ (f_4),
	.a0 /* IN */ (e_4),
	.a1 /* IN */ (e_3),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_4
(
	.z /* OUT */ (f_5),
	.a0 /* IN */ (e_5),
	.a1 /* IN */ (e_4),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_5
(
	.z /* OUT */ (f_6),
	.a0 /* IN */ (e_6),
	.a1 /* IN */ (e_5),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_6
(
	.z /* OUT */ (f_7),
	.a0 /* IN */ (e_7),
	.a1 /* IN */ (e_6),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_7
(
	.z /* OUT */ (f_8),
	.a0 /* IN */ (e_8),
	.a1 /* IN */ (e_7),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_8
(
	.z /* OUT */ (f_9),
	.a0 /* IN */ (e_9),
	.a1 /* IN */ (e_8),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_9
(
	.z /* OUT */ (f_10),
	.a0 /* IN */ (e_10),
	.a1 /* IN */ (e_9),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_10
(
	.z /* OUT */ (f_11),
	.a0 /* IN */ (e_11),
	.a1 /* IN */ (e_10),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_11
(
	.z /* OUT */ (f_12),
	.a0 /* IN */ (e_12),
	.a1 /* IN */ (e_11),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_12
(
	.z /* OUT */ (f_13),
	.a0 /* IN */ (e_13),
	.a1 /* IN */ (e_12),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_13
(
	.z /* OUT */ (f_14),
	.a0 /* IN */ (e_14),
	.a1 /* IN */ (e_13),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_14
(
	.z /* OUT */ (f_15),
	.a0 /* IN */ (e_15),
	.a1 /* IN */ (e_14),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_15
(
	.z /* OUT */ (f_16),
	.a0 /* IN */ (e_16),
	.a1 /* IN */ (e_15),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_16
(
	.z /* OUT */ (f_17),
	.a0 /* IN */ (e_17),
	.a1 /* IN */ (e_16),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_17
(
	.z /* OUT */ (f_18),
	.a0 /* IN */ (e_18),
	.a1 /* IN */ (e_17),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_18
(
	.z /* OUT */ (f_19),
	.a0 /* IN */ (e_19),
	.a1 /* IN */ (e_18),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_19
(
	.z /* OUT */ (f_20),
	.a0 /* IN */ (e_20),
	.a1 /* IN */ (e_19),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_20
(
	.z /* OUT */ (f_21),
	.a0 /* IN */ (e_21),
	.a1 /* IN */ (e_20),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_21
(
	.z /* OUT */ (f_22),
	.a0 /* IN */ (e_22),
	.a1 /* IN */ (e_21),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_22
(
	.z /* OUT */ (f_23),
	.a0 /* IN */ (e_23),
	.a1 /* IN */ (e_22),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_23
(
	.z /* OUT */ (f_24),
	.a0 /* IN */ (e_24),
	.a1 /* IN */ (e_23),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_24
(
	.z /* OUT */ (f_25),
	.a0 /* IN */ (e_25),
	.a1 /* IN */ (e_24),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_25
(
	.z /* OUT */ (f_26),
	.a0 /* IN */ (e_26),
	.a1 /* IN */ (e_25),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_26
(
	.z /* OUT */ (f_27),
	.a0 /* IN */ (e_27),
	.a1 /* IN */ (e_26),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_27
(
	.z /* OUT */ (f_28),
	.a0 /* IN */ (e_28),
	.a1 /* IN */ (e_27),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_28
(
	.z /* OUT */ (f_29),
	.a0 /* IN */ (e_29),
	.a1 /* IN */ (e_28),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_29
(
	.z /* OUT */ (f_30),
	.a0 /* IN */ (e_30),
	.a1 /* IN */ (e_29),
	.s /* IN */ (sftb_0)
);
mx2 f_from_1_to_31_inst_30
(
	.z /* OUT */ (f_31),
	.a0 /* IN */ (e_31),
	.a1 /* IN */ (e_30),
	.s /* IN */ (sftb_0)
);

// ARITH.NET (640) - dcd0 : d416gh
d416gh dcd0_inst
(
	.z0 /* OUT */ (dcd_0),
	.z1 /* OUT */ (dcd_1),
	.z2 /* OUT */ (dcd_2),
	.z3 /* OUT */ (dcd_3),
	.z4 /* OUT */ (dcd_4),
	.z5 /* OUT */ (dcd_5),
	.z6 /* OUT */ (dcd_6),
	.z7 /* OUT */ (dcd_7),
	.z8 /* OUT */ (dcd_8),
	.z9 /* OUT */ (dcd_9),
	.z10 /* OUT */ (dcd_10),
	.z11 /* OUT */ (dcd_11),
	.z12 /* OUT */ (dcd_12),
	.z13 /* OUT */ (dcd_13),
	.z14 /* OUT */ (dcd_14),
	.z15 /* OUT */ (dcd_15),
	.a0 /* IN */ (sft_0),
	.a1 /* IN */ (sft_1),
	.a2 /* IN */ (sft_2),
	.a3 /* IN */ (sft_3),
	.gn /* IN */ (sft_4)
);

// ARITH.NET (641) - dcd1 : d416gh
d416gh dcd1_inst
(
	.z0 /* OUT */ (dcd_16),
	.z1 /* OUT */ (dcd_17),
	.z2 /* OUT */ (dcd_18),
	.z3 /* OUT */ (dcd_19),
	.z4 /* OUT */ (dcd_20),
	.z5 /* OUT */ (dcd_21),
	.z6 /* OUT */ (dcd_22),
	.z7 /* OUT */ (dcd_23),
	.z8 /* OUT */ (dcd_24),
	.z9 /* OUT */ (dcd_25),
	.z10 /* OUT */ (dcd_26),
	.z11 /* OUT */ (dcd_27),
	.z12 /* OUT */ (dcd_28),
	.z13 /* OUT */ (dcd_29),
	.z14 /* OUT */ (dcd_30),
	.z15 /* OUT */ (dcd_31),
	.a0 /* IN */ (sft_0),
	.a1 /* IN */ (sft_1),
	.a2 /* IN */ (sft_2),
	.a3 /* IN */ (sft_3),
	.gn /* IN */ (sft_n_4)
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
	.z /* OUT */ (rmask_8),
	.a /* IN */ (dcd_0),
	.b /* IN */ (dcd_1),
	.c /* IN */ (dcd_2),
	.d /* IN */ (dcd_3),
	.e /* IN */ (dcd_4),
	.f /* IN */ (dcd_5),
	.g /* IN */ (dcd_6),
	.h /* IN */ (dcd_7),
	.i /* IN */ (dcd_8)
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
	.z /* OUT */ (rmask_16),
	.a /* IN */ (rmask_8),
	.b /* IN */ (dcd_9),
	.c /* IN */ (dcd_10),
	.d /* IN */ (dcd_11),
	.e /* IN */ (dcd_12),
	.f /* IN */ (dcd_13),
	.g /* IN */ (dcd_14),
	.h /* IN */ (dcd_15),
	.i /* IN */ (dcd_16)
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
	.z /* OUT */ (rmask_24),
	.a /* IN */ (rmask_16),
	.b /* IN */ (dcd_17),
	.c /* IN */ (dcd_18),
	.d /* IN */ (dcd_19),
	.e /* IN */ (dcd_20),
	.f /* IN */ (dcd_21),
	.g /* IN */ (dcd_22),
	.h /* IN */ (dcd_23),
	.i /* IN */ (dcd_24)
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
	.z /* OUT */ (lmask_15),
	.a /* IN */ (lmask_23),
	.b /* IN */ (dcd_16),
	.c /* IN */ (dcd_17),
	.d /* IN */ (dcd_18),
	.e /* IN */ (dcd_19),
	.f /* IN */ (dcd_20),
	.g /* IN */ (dcd_21),
	.h /* IN */ (dcd_22),
	.i /* IN */ (dcd_23)
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
	.z /* OUT */ (lmask_7),
	.a /* IN */ (lmask_15),
	.b /* IN */ (dcd_8),
	.c /* IN */ (dcd_9),
	.d /* IN */ (dcd_10),
	.e /* IN */ (dcd_11),
	.f /* IN */ (dcd_12),
	.g /* IN */ (dcd_13),
	.h /* IN */ (dcd_14),
	.i /* IN */ (dcd_15)
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
/* verilator lint_on LITENDIAN */
