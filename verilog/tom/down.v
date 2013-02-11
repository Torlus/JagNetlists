`include "defs.v"

module down
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
	input din_16,
	input din_17,
	input din_18,
	input din_19,
	input din_20,
	input din_21,
	input din_22,
	input din_23,
	input din_24,
	input din_25,
	input din_26,
	input din_27,
	input din_28,
	input din_29,
	input din_30,
	input din_31,
	input din_32,
	input din_33,
	input din_34,
	input din_35,
	input din_36,
	input din_37,
	input din_38,
	input din_39,
	input din_40,
	input din_41,
	input din_42,
	input din_43,
	input din_44,
	input din_45,
	input din_46,
	input din_47,
	input din_48,
	input din_49,
	input din_50,
	input din_51,
	input din_52,
	input din_53,
	input din_54,
	input din_55,
	input din_56,
	input din_57,
	input din_58,
	input din_59,
	input din_60,
	input din_61,
	input din_62,
	input din_63,
	input dmuxd_0,
	input dmuxd_1,
	input dmuxd_2,
	output dout_0,
	output dout_1,
	output dout_2,
	output dout_3,
	output dout_4,
	output dout_5,
	output dout_6,
	output dout_7,
	output dout_8,
	output dout_9,
	output dout_10,
	output dout_11,
	output dout_12,
	output dout_13,
	output dout_14,
	output dout_15,
	output dout_16,
	output dout_17,
	output dout_18,
	output dout_19,
	output dout_20,
	output dout_21,
	output dout_22,
	output dout_23,
	output dout_24,
	output dout_25,
	output dout_26,
	output dout_27,
	output dout_28,
	output dout_29,
	output dout_30,
	output dout_31
);
wire d1_8;
wire d1_9;
wire d1_10;
wire d1_11;
wire d1_12;
wire d1_13;
wire d1_14;
wire d1_15;

// Output buffers
wire dout_0_obuf;
wire dout_1_obuf;
wire dout_2_obuf;
wire dout_3_obuf;
wire dout_4_obuf;
wire dout_5_obuf;
wire dout_6_obuf;
wire dout_7_obuf;
wire dout_8_obuf;
wire dout_9_obuf;
wire dout_10_obuf;
wire dout_11_obuf;
wire dout_12_obuf;
wire dout_13_obuf;
wire dout_14_obuf;
wire dout_15_obuf;
wire dout_16_obuf;
wire dout_17_obuf;
wire dout_18_obuf;
wire dout_19_obuf;
wire dout_20_obuf;
wire dout_21_obuf;
wire dout_22_obuf;
wire dout_23_obuf;
wire dout_24_obuf;
wire dout_25_obuf;
wire dout_26_obuf;
wire dout_27_obuf;
wire dout_28_obuf;
wire dout_29_obuf;
wire dout_30_obuf;
wire dout_31_obuf;


// Output buffers
assign dout_0 = dout_0_obuf;
assign dout_1 = dout_1_obuf;
assign dout_2 = dout_2_obuf;
assign dout_3 = dout_3_obuf;
assign dout_4 = dout_4_obuf;
assign dout_5 = dout_5_obuf;
assign dout_6 = dout_6_obuf;
assign dout_7 = dout_7_obuf;
assign dout_8 = dout_8_obuf;
assign dout_9 = dout_9_obuf;
assign dout_10 = dout_10_obuf;
assign dout_11 = dout_11_obuf;
assign dout_12 = dout_12_obuf;
assign dout_13 = dout_13_obuf;
assign dout_14 = dout_14_obuf;
assign dout_15 = dout_15_obuf;
assign dout_16 = dout_16_obuf;
assign dout_17 = dout_17_obuf;
assign dout_18 = dout_18_obuf;
assign dout_19 = dout_19_obuf;
assign dout_20 = dout_20_obuf;
assign dout_21 = dout_21_obuf;
assign dout_22 = dout_22_obuf;
assign dout_23 = dout_23_obuf;
assign dout_24 = dout_24_obuf;
assign dout_25 = dout_25_obuf;
assign dout_26 = dout_26_obuf;
assign dout_27 = dout_27_obuf;
assign dout_28 = dout_28_obuf;
assign dout_29 = dout_29_obuf;
assign dout_30 = dout_30_obuf;
assign dout_31 = dout_31_obuf;


// DBUS.NET (128) - dout[16-31] : mx2p
mx2 dout_from_16_to_31_inst_0
(
	.z(dout_16_obuf), // OUT
	.a0(din_16), // IN
	.a1(din_48), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_1
(
	.z(dout_17_obuf), // OUT
	.a0(din_17), // IN
	.a1(din_49), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_2
(
	.z(dout_18_obuf), // OUT
	.a0(din_18), // IN
	.a1(din_50), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_3
(
	.z(dout_19_obuf), // OUT
	.a0(din_19), // IN
	.a1(din_51), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_4
(
	.z(dout_20_obuf), // OUT
	.a0(din_20), // IN
	.a1(din_52), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_5
(
	.z(dout_21_obuf), // OUT
	.a0(din_21), // IN
	.a1(din_53), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_6
(
	.z(dout_22_obuf), // OUT
	.a0(din_22), // IN
	.a1(din_54), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_7
(
	.z(dout_23_obuf), // OUT
	.a0(din_23), // IN
	.a1(din_55), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_8
(
	.z(dout_24_obuf), // OUT
	.a0(din_24), // IN
	.a1(din_56), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_9
(
	.z(dout_25_obuf), // OUT
	.a0(din_25), // IN
	.a1(din_57), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_10
(
	.z(dout_26_obuf), // OUT
	.a0(din_26), // IN
	.a1(din_58), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_11
(
	.z(dout_27_obuf), // OUT
	.a0(din_27), // IN
	.a1(din_59), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_12
(
	.z(dout_28_obuf), // OUT
	.a0(din_28), // IN
	.a1(din_60), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_13
(
	.z(dout_29_obuf), // OUT
	.a0(din_29), // IN
	.a1(din_61), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_14
(
	.z(dout_30_obuf), // OUT
	.a0(din_30), // IN
	.a1(din_62), // IN
	.s(dmuxd_2)  // IN
);
mx2 dout_from_16_to_31_inst_15
(
	.z(dout_31_obuf), // OUT
	.a0(din_31), // IN
	.a1(din_63), // IN
	.s(dmuxd_2)  // IN
);

// DBUS.NET (129) - d1[8-15] : mx2p
mx2 d1_from_8_to_15_inst_0
(
	.z(d1_8), // OUT
	.a0(din_8), // IN
	.a1(din_40), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_1
(
	.z(d1_9), // OUT
	.a0(din_9), // IN
	.a1(din_41), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_2
(
	.z(d1_10), // OUT
	.a0(din_10), // IN
	.a1(din_42), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_3
(
	.z(d1_11), // OUT
	.a0(din_11), // IN
	.a1(din_43), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_4
(
	.z(d1_12), // OUT
	.a0(din_12), // IN
	.a1(din_44), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_5
(
	.z(d1_13), // OUT
	.a0(din_13), // IN
	.a1(din_45), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_6
(
	.z(d1_14), // OUT
	.a0(din_14), // IN
	.a1(din_46), // IN
	.s(dmuxd_2)  // IN
);
mx2 d1_from_8_to_15_inst_7
(
	.z(d1_15), // OUT
	.a0(din_15), // IN
	.a1(din_47), // IN
	.s(dmuxd_2)  // IN
);

// DBUS.NET (131) - dout[8-15] : mx2p
mx2 dout_from_8_to_15_inst_0
(
	.z(dout_8_obuf), // OUT
	.a0(d1_8), // IN
	.a1(dout_24_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_1
(
	.z(dout_9_obuf), // OUT
	.a0(d1_9), // IN
	.a1(dout_25_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_2
(
	.z(dout_10_obuf), // OUT
	.a0(d1_10), // IN
	.a1(dout_26_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_3
(
	.z(dout_11_obuf), // OUT
	.a0(d1_11), // IN
	.a1(dout_27_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_4
(
	.z(dout_12_obuf), // OUT
	.a0(d1_12), // IN
	.a1(dout_28_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_5
(
	.z(dout_13_obuf), // OUT
	.a0(d1_13), // IN
	.a1(dout_29_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_6
(
	.z(dout_14_obuf), // OUT
	.a0(d1_14), // IN
	.a1(dout_30_obuf), // IN
	.s(dmuxd_1)  // IN
);
mx2 dout_from_8_to_15_inst_7
(
	.z(dout_15_obuf), // OUT
	.a0(d1_15), // IN
	.a1(dout_31_obuf), // IN
	.s(dmuxd_1)  // IN
);

// DBUS.NET (133) - dout[0-7] : mx8p
mx8 dout_from_0_to_7_inst_0
(
	.z(dout_0_obuf), // OUT
	.a0(din_0), // IN
	.a1(din_8), // IN
	.a2(din_16), // IN
	.a3(din_24), // IN
	.a4(din_32), // IN
	.a5(din_40), // IN
	.a6(din_48), // IN
	.a7(din_56), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_1
(
	.z(dout_1_obuf), // OUT
	.a0(din_1), // IN
	.a1(din_9), // IN
	.a2(din_17), // IN
	.a3(din_25), // IN
	.a4(din_33), // IN
	.a5(din_41), // IN
	.a6(din_49), // IN
	.a7(din_57), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_2
(
	.z(dout_2_obuf), // OUT
	.a0(din_2), // IN
	.a1(din_10), // IN
	.a2(din_18), // IN
	.a3(din_26), // IN
	.a4(din_34), // IN
	.a5(din_42), // IN
	.a6(din_50), // IN
	.a7(din_58), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_3
(
	.z(dout_3_obuf), // OUT
	.a0(din_3), // IN
	.a1(din_11), // IN
	.a2(din_19), // IN
	.a3(din_27), // IN
	.a4(din_35), // IN
	.a5(din_43), // IN
	.a6(din_51), // IN
	.a7(din_59), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_4
(
	.z(dout_4_obuf), // OUT
	.a0(din_4), // IN
	.a1(din_12), // IN
	.a2(din_20), // IN
	.a3(din_28), // IN
	.a4(din_36), // IN
	.a5(din_44), // IN
	.a6(din_52), // IN
	.a7(din_60), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_5
(
	.z(dout_5_obuf), // OUT
	.a0(din_5), // IN
	.a1(din_13), // IN
	.a2(din_21), // IN
	.a3(din_29), // IN
	.a4(din_37), // IN
	.a5(din_45), // IN
	.a6(din_53), // IN
	.a7(din_61), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_6
(
	.z(dout_6_obuf), // OUT
	.a0(din_6), // IN
	.a1(din_14), // IN
	.a2(din_22), // IN
	.a3(din_30), // IN
	.a4(din_38), // IN
	.a5(din_46), // IN
	.a6(din_54), // IN
	.a7(din_62), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
mx8 dout_from_0_to_7_inst_7
(
	.z(dout_7_obuf), // OUT
	.a0(din_7), // IN
	.a1(din_15), // IN
	.a2(din_23), // IN
	.a3(din_31), // IN
	.a4(din_39), // IN
	.a5(din_47), // IN
	.a6(din_55), // IN
	.a7(din_63), // IN
	.s0(dmuxd_0), // IN
	.s1(dmuxd_1), // IN
	.s2(dmuxd_2)  // IN
);
endmodule
