`include "defs.v"

module up
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
	input dmuxu_0,
	input dmuxu_1,
	input dmuxu_2,
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
	output dout_31,
	output dout_32,
	output dout_33,
	output dout_34,
	output dout_35,
	output dout_36,
	output dout_37,
	output dout_38,
	output dout_39,
	output dout_40,
	output dout_41,
	output dout_42,
	output dout_43,
	output dout_44,
	output dout_45,
	output dout_46,
	output dout_47,
	output dout_48,
	output dout_49,
	output dout_50,
	output dout_51,
	output dout_52,
	output dout_53,
	output dout_54,
	output dout_55,
	output dout_56,
	output dout_57,
	output dout_58,
	output dout_59,
	output dout_60,
	output dout_61,
	output dout_62,
	output dout_63
);

// Output buffers
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
wire dout_32_obuf;
wire dout_33_obuf;
wire dout_34_obuf;
wire dout_35_obuf;
wire dout_36_obuf;
wire dout_37_obuf;
wire dout_38_obuf;
wire dout_39_obuf;
wire dout_40_obuf;
wire dout_41_obuf;
wire dout_42_obuf;
wire dout_43_obuf;
wire dout_44_obuf;
wire dout_45_obuf;
wire dout_46_obuf;
wire dout_47_obuf;
wire dout_48_obuf;
wire dout_49_obuf;
wire dout_50_obuf;
wire dout_51_obuf;
wire dout_52_obuf;
wire dout_53_obuf;
wire dout_54_obuf;
wire dout_55_obuf;
wire dout_56_obuf;
wire dout_57_obuf;
wire dout_58_obuf;
wire dout_59_obuf;
wire dout_60_obuf;
wire dout_61_obuf;
wire dout_62_obuf;
wire dout_63_obuf;


// Output buffers
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
assign dout_32 = dout_32_obuf;
assign dout_33 = dout_33_obuf;
assign dout_34 = dout_34_obuf;
assign dout_35 = dout_35_obuf;
assign dout_36 = dout_36_obuf;
assign dout_37 = dout_37_obuf;
assign dout_38 = dout_38_obuf;
assign dout_39 = dout_39_obuf;
assign dout_40 = dout_40_obuf;
assign dout_41 = dout_41_obuf;
assign dout_42 = dout_42_obuf;
assign dout_43 = dout_43_obuf;
assign dout_44 = dout_44_obuf;
assign dout_45 = dout_45_obuf;
assign dout_46 = dout_46_obuf;
assign dout_47 = dout_47_obuf;
assign dout_48 = dout_48_obuf;
assign dout_49 = dout_49_obuf;
assign dout_50 = dout_50_obuf;
assign dout_51 = dout_51_obuf;
assign dout_52 = dout_52_obuf;
assign dout_53 = dout_53_obuf;
assign dout_54 = dout_54_obuf;
assign dout_55 = dout_55_obuf;
assign dout_56 = dout_56_obuf;
assign dout_57 = dout_57_obuf;
assign dout_58 = dout_58_obuf;
assign dout_59 = dout_59_obuf;
assign dout_60 = dout_60_obuf;
assign dout_61 = dout_61_obuf;
assign dout_62 = dout_62_obuf;
assign dout_63 = dout_63_obuf;


// DBUS.NET (113) - dout[8-15] : mx2p
mx2 dout_from_8_to_15_inst_0
(
	.z(dout_8_obuf), // OUT
	.a0(din_8), // IN
	.a1(din_0), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_1
(
	.z(dout_9_obuf), // OUT
	.a0(din_9), // IN
	.a1(din_1), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_2
(
	.z(dout_10_obuf), // OUT
	.a0(din_10), // IN
	.a1(din_2), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_3
(
	.z(dout_11_obuf), // OUT
	.a0(din_11), // IN
	.a1(din_3), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_4
(
	.z(dout_12_obuf), // OUT
	.a0(din_12), // IN
	.a1(din_4), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_5
(
	.z(dout_13_obuf), // OUT
	.a0(din_13), // IN
	.a1(din_5), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_6
(
	.z(dout_14_obuf), // OUT
	.a0(din_14), // IN
	.a1(din_6), // IN
	.s(dmuxu_0)  // IN
);
mx2 dout_from_8_to_15_inst_7
(
	.z(dout_15_obuf), // OUT
	.a0(din_15), // IN
	.a1(din_7), // IN
	.s(dmuxu_0)  // IN
);

// DBUS.NET (114) - dout[16-23] : mx2p
mx2 dout_from_16_to_23_inst_0
(
	.z(dout_16_obuf), // OUT
	.a0(din_16), // IN
	.a1(din_0), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_1
(
	.z(dout_17_obuf), // OUT
	.a0(din_17), // IN
	.a1(din_1), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_2
(
	.z(dout_18_obuf), // OUT
	.a0(din_18), // IN
	.a1(din_2), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_3
(
	.z(dout_19_obuf), // OUT
	.a0(din_19), // IN
	.a1(din_3), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_4
(
	.z(dout_20_obuf), // OUT
	.a0(din_20), // IN
	.a1(din_4), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_5
(
	.z(dout_21_obuf), // OUT
	.a0(din_21), // IN
	.a1(din_5), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_6
(
	.z(dout_22_obuf), // OUT
	.a0(din_22), // IN
	.a1(din_6), // IN
	.s(dmuxu_1)  // IN
);
mx2 dout_from_16_to_23_inst_7
(
	.z(dout_23_obuf), // OUT
	.a0(din_23), // IN
	.a1(din_7), // IN
	.s(dmuxu_1)  // IN
);

// DBUS.NET (115) - dout[24-31] : mx4p
mx4 dout_from_24_to_31_inst_0
(
	.z(dout_24_obuf), // OUT
	.a0(din_24), // IN
	.a1(din_24), // IN
	.a2(din_8), // IN
	.a3(din_0), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_1
(
	.z(dout_25_obuf), // OUT
	.a0(din_25), // IN
	.a1(din_25), // IN
	.a2(din_9), // IN
	.a3(din_1), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_2
(
	.z(dout_26_obuf), // OUT
	.a0(din_26), // IN
	.a1(din_26), // IN
	.a2(din_10), // IN
	.a3(din_2), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_3
(
	.z(dout_27_obuf), // OUT
	.a0(din_27), // IN
	.a1(din_27), // IN
	.a2(din_11), // IN
	.a3(din_3), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_4
(
	.z(dout_28_obuf), // OUT
	.a0(din_28), // IN
	.a1(din_28), // IN
	.a2(din_12), // IN
	.a3(din_4), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_5
(
	.z(dout_29_obuf), // OUT
	.a0(din_29), // IN
	.a1(din_29), // IN
	.a2(din_13), // IN
	.a3(din_5), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_6
(
	.z(dout_30_obuf), // OUT
	.a0(din_30), // IN
	.a1(din_30), // IN
	.a2(din_14), // IN
	.a3(din_6), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);
mx4 dout_from_24_to_31_inst_7
(
	.z(dout_31_obuf), // OUT
	.a0(din_31), // IN
	.a1(din_31), // IN
	.a2(din_15), // IN
	.a3(din_7), // IN
	.s0(dmuxu_0), // IN
	.s1(dmuxu_1)  // IN
);

// DBUS.NET (117) - dout[32-39] : mx2p
mx2 dout_from_32_to_39_inst_0
(
	.z(dout_32_obuf), // OUT
	.a0(din_32), // IN
	.a1(din_0), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_1
(
	.z(dout_33_obuf), // OUT
	.a0(din_33), // IN
	.a1(din_1), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_2
(
	.z(dout_34_obuf), // OUT
	.a0(din_34), // IN
	.a1(din_2), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_3
(
	.z(dout_35_obuf), // OUT
	.a0(din_35), // IN
	.a1(din_3), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_4
(
	.z(dout_36_obuf), // OUT
	.a0(din_36), // IN
	.a1(din_4), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_5
(
	.z(dout_37_obuf), // OUT
	.a0(din_37), // IN
	.a1(din_5), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_6
(
	.z(dout_38_obuf), // OUT
	.a0(din_38), // IN
	.a1(din_6), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_32_to_39_inst_7
(
	.z(dout_39_obuf), // OUT
	.a0(din_39), // IN
	.a1(din_7), // IN
	.s(dmuxu_2)  // IN
);

// DBUS.NET (118) - dout[40-63] : mx2p
mx2 dout_from_40_to_63_inst_0
(
	.z(dout_40_obuf), // OUT
	.a0(din_40), // IN
	.a1(dout_8_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_1
(
	.z(dout_41_obuf), // OUT
	.a0(din_41), // IN
	.a1(dout_9_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_2
(
	.z(dout_42_obuf), // OUT
	.a0(din_42), // IN
	.a1(dout_10_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_3
(
	.z(dout_43_obuf), // OUT
	.a0(din_43), // IN
	.a1(dout_11_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_4
(
	.z(dout_44_obuf), // OUT
	.a0(din_44), // IN
	.a1(dout_12_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_5
(
	.z(dout_45_obuf), // OUT
	.a0(din_45), // IN
	.a1(dout_13_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_6
(
	.z(dout_46_obuf), // OUT
	.a0(din_46), // IN
	.a1(dout_14_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_7
(
	.z(dout_47_obuf), // OUT
	.a0(din_47), // IN
	.a1(dout_15_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_8
(
	.z(dout_48_obuf), // OUT
	.a0(din_48), // IN
	.a1(dout_16_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_9
(
	.z(dout_49_obuf), // OUT
	.a0(din_49), // IN
	.a1(dout_17_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_10
(
	.z(dout_50_obuf), // OUT
	.a0(din_50), // IN
	.a1(dout_18_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_11
(
	.z(dout_51_obuf), // OUT
	.a0(din_51), // IN
	.a1(dout_19_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_12
(
	.z(dout_52_obuf), // OUT
	.a0(din_52), // IN
	.a1(dout_20_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_13
(
	.z(dout_53_obuf), // OUT
	.a0(din_53), // IN
	.a1(dout_21_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_14
(
	.z(dout_54_obuf), // OUT
	.a0(din_54), // IN
	.a1(dout_22_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_15
(
	.z(dout_55_obuf), // OUT
	.a0(din_55), // IN
	.a1(dout_23_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_16
(
	.z(dout_56_obuf), // OUT
	.a0(din_56), // IN
	.a1(dout_24_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_17
(
	.z(dout_57_obuf), // OUT
	.a0(din_57), // IN
	.a1(dout_25_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_18
(
	.z(dout_58_obuf), // OUT
	.a0(din_58), // IN
	.a1(dout_26_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_19
(
	.z(dout_59_obuf), // OUT
	.a0(din_59), // IN
	.a1(dout_27_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_20
(
	.z(dout_60_obuf), // OUT
	.a0(din_60), // IN
	.a1(dout_28_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_21
(
	.z(dout_61_obuf), // OUT
	.a0(din_61), // IN
	.a1(dout_29_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_22
(
	.z(dout_62_obuf), // OUT
	.a0(din_62), // IN
	.a1(dout_30_obuf), // IN
	.s(dmuxu_2)  // IN
);
mx2 dout_from_40_to_63_inst_23
(
	.z(dout_63_obuf), // OUT
	.a0(din_63), // IN
	.a1(dout_31_obuf), // IN
	.s(dmuxu_2)  // IN
);
endmodule
