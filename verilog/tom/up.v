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


// DBUS.NET (113) - dout[8-15] : mx2p
mx2 dout_from_8_to_15_inst_0
(
	.z /* OUT */ (dout_8_obuf),
	.a0 /* IN */ (din_8),
	.a1 /* IN */ (din_0),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_1
(
	.z /* OUT */ (dout_9_obuf),
	.a0 /* IN */ (din_9),
	.a1 /* IN */ (din_1),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_2
(
	.z /* OUT */ (dout_10_obuf),
	.a0 /* IN */ (din_10),
	.a1 /* IN */ (din_2),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_3
(
	.z /* OUT */ (dout_11_obuf),
	.a0 /* IN */ (din_11),
	.a1 /* IN */ (din_3),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_4
(
	.z /* OUT */ (dout_12_obuf),
	.a0 /* IN */ (din_12),
	.a1 /* IN */ (din_4),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_5
(
	.z /* OUT */ (dout_13_obuf),
	.a0 /* IN */ (din_13),
	.a1 /* IN */ (din_5),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_6
(
	.z /* OUT */ (dout_14_obuf),
	.a0 /* IN */ (din_14),
	.a1 /* IN */ (din_6),
	.s /* IN */ (dmuxu_0)
);
mx2 dout_from_8_to_15_inst_7
(
	.z /* OUT */ (dout_15_obuf),
	.a0 /* IN */ (din_15),
	.a1 /* IN */ (din_7),
	.s /* IN */ (dmuxu_0)
);

// DBUS.NET (114) - dout[16-23] : mx2p
mx2 dout_from_16_to_23_inst_0
(
	.z /* OUT */ (dout_16_obuf),
	.a0 /* IN */ (din_16),
	.a1 /* IN */ (din_0),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_1
(
	.z /* OUT */ (dout_17_obuf),
	.a0 /* IN */ (din_17),
	.a1 /* IN */ (din_1),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_2
(
	.z /* OUT */ (dout_18_obuf),
	.a0 /* IN */ (din_18),
	.a1 /* IN */ (din_2),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_3
(
	.z /* OUT */ (dout_19_obuf),
	.a0 /* IN */ (din_19),
	.a1 /* IN */ (din_3),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_4
(
	.z /* OUT */ (dout_20_obuf),
	.a0 /* IN */ (din_20),
	.a1 /* IN */ (din_4),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_5
(
	.z /* OUT */ (dout_21_obuf),
	.a0 /* IN */ (din_21),
	.a1 /* IN */ (din_5),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_6
(
	.z /* OUT */ (dout_22_obuf),
	.a0 /* IN */ (din_22),
	.a1 /* IN */ (din_6),
	.s /* IN */ (dmuxu_1)
);
mx2 dout_from_16_to_23_inst_7
(
	.z /* OUT */ (dout_23_obuf),
	.a0 /* IN */ (din_23),
	.a1 /* IN */ (din_7),
	.s /* IN */ (dmuxu_1)
);

// DBUS.NET (115) - dout[24-31] : mx4p
mx4 dout_from_24_to_31_inst_0
(
	.z /* OUT */ (dout_24_obuf),
	.a0 /* IN */ (din_24),
	.a1 /* IN */ (din_24),
	.a2 /* IN */ (din_8),
	.a3 /* IN */ (din_0),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_1
(
	.z /* OUT */ (dout_25_obuf),
	.a0 /* IN */ (din_25),
	.a1 /* IN */ (din_25),
	.a2 /* IN */ (din_9),
	.a3 /* IN */ (din_1),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_2
(
	.z /* OUT */ (dout_26_obuf),
	.a0 /* IN */ (din_26),
	.a1 /* IN */ (din_26),
	.a2 /* IN */ (din_10),
	.a3 /* IN */ (din_2),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_3
(
	.z /* OUT */ (dout_27_obuf),
	.a0 /* IN */ (din_27),
	.a1 /* IN */ (din_27),
	.a2 /* IN */ (din_11),
	.a3 /* IN */ (din_3),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_4
(
	.z /* OUT */ (dout_28_obuf),
	.a0 /* IN */ (din_28),
	.a1 /* IN */ (din_28),
	.a2 /* IN */ (din_12),
	.a3 /* IN */ (din_4),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_5
(
	.z /* OUT */ (dout_29_obuf),
	.a0 /* IN */ (din_29),
	.a1 /* IN */ (din_29),
	.a2 /* IN */ (din_13),
	.a3 /* IN */ (din_5),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_6
(
	.z /* OUT */ (dout_30_obuf),
	.a0 /* IN */ (din_30),
	.a1 /* IN */ (din_30),
	.a2 /* IN */ (din_14),
	.a3 /* IN */ (din_6),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);
mx4 dout_from_24_to_31_inst_7
(
	.z /* OUT */ (dout_31_obuf),
	.a0 /* IN */ (din_31),
	.a1 /* IN */ (din_31),
	.a2 /* IN */ (din_15),
	.a3 /* IN */ (din_7),
	.s0 /* IN */ (dmuxu_0),
	.s1 /* IN */ (dmuxu_1)
);

// DBUS.NET (117) - dout[32-39] : mx2p
mx2 dout_from_32_to_39_inst_0
(
	.z /* OUT */ (dout_32),
	.a0 /* IN */ (din_32),
	.a1 /* IN */ (din_0),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_1
(
	.z /* OUT */ (dout_33),
	.a0 /* IN */ (din_33),
	.a1 /* IN */ (din_1),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_2
(
	.z /* OUT */ (dout_34),
	.a0 /* IN */ (din_34),
	.a1 /* IN */ (din_2),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_3
(
	.z /* OUT */ (dout_35),
	.a0 /* IN */ (din_35),
	.a1 /* IN */ (din_3),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_4
(
	.z /* OUT */ (dout_36),
	.a0 /* IN */ (din_36),
	.a1 /* IN */ (din_4),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_5
(
	.z /* OUT */ (dout_37),
	.a0 /* IN */ (din_37),
	.a1 /* IN */ (din_5),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_6
(
	.z /* OUT */ (dout_38),
	.a0 /* IN */ (din_38),
	.a1 /* IN */ (din_6),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_32_to_39_inst_7
(
	.z /* OUT */ (dout_39),
	.a0 /* IN */ (din_39),
	.a1 /* IN */ (din_7),
	.s /* IN */ (dmuxu_2)
);

// DBUS.NET (118) - dout[40-63] : mx2p
mx2 dout_from_40_to_63_inst_0
(
	.z /* OUT */ (dout_40),
	.a0 /* IN */ (din_40),
	.a1 /* IN */ (dout_8_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_1
(
	.z /* OUT */ (dout_41),
	.a0 /* IN */ (din_41),
	.a1 /* IN */ (dout_9_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_2
(
	.z /* OUT */ (dout_42),
	.a0 /* IN */ (din_42),
	.a1 /* IN */ (dout_10_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_3
(
	.z /* OUT */ (dout_43),
	.a0 /* IN */ (din_43),
	.a1 /* IN */ (dout_11_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_4
(
	.z /* OUT */ (dout_44),
	.a0 /* IN */ (din_44),
	.a1 /* IN */ (dout_12_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_5
(
	.z /* OUT */ (dout_45),
	.a0 /* IN */ (din_45),
	.a1 /* IN */ (dout_13_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_6
(
	.z /* OUT */ (dout_46),
	.a0 /* IN */ (din_46),
	.a1 /* IN */ (dout_14_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_7
(
	.z /* OUT */ (dout_47),
	.a0 /* IN */ (din_47),
	.a1 /* IN */ (dout_15_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_8
(
	.z /* OUT */ (dout_48),
	.a0 /* IN */ (din_48),
	.a1 /* IN */ (dout_16_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_9
(
	.z /* OUT */ (dout_49),
	.a0 /* IN */ (din_49),
	.a1 /* IN */ (dout_17_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_10
(
	.z /* OUT */ (dout_50),
	.a0 /* IN */ (din_50),
	.a1 /* IN */ (dout_18_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_11
(
	.z /* OUT */ (dout_51),
	.a0 /* IN */ (din_51),
	.a1 /* IN */ (dout_19_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_12
(
	.z /* OUT */ (dout_52),
	.a0 /* IN */ (din_52),
	.a1 /* IN */ (dout_20_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_13
(
	.z /* OUT */ (dout_53),
	.a0 /* IN */ (din_53),
	.a1 /* IN */ (dout_21_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_14
(
	.z /* OUT */ (dout_54),
	.a0 /* IN */ (din_54),
	.a1 /* IN */ (dout_22_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_15
(
	.z /* OUT */ (dout_55),
	.a0 /* IN */ (din_55),
	.a1 /* IN */ (dout_23_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_16
(
	.z /* OUT */ (dout_56),
	.a0 /* IN */ (din_56),
	.a1 /* IN */ (dout_24_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_17
(
	.z /* OUT */ (dout_57),
	.a0 /* IN */ (din_57),
	.a1 /* IN */ (dout_25_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_18
(
	.z /* OUT */ (dout_58),
	.a0 /* IN */ (din_58),
	.a1 /* IN */ (dout_26_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_19
(
	.z /* OUT */ (dout_59),
	.a0 /* IN */ (din_59),
	.a1 /* IN */ (dout_27_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_20
(
	.z /* OUT */ (dout_60),
	.a0 /* IN */ (din_60),
	.a1 /* IN */ (dout_28_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_21
(
	.z /* OUT */ (dout_61),
	.a0 /* IN */ (din_61),
	.a1 /* IN */ (dout_29_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_22
(
	.z /* OUT */ (dout_62),
	.a0 /* IN */ (din_62),
	.a1 /* IN */ (dout_30_obuf),
	.s /* IN */ (dmuxu_2)
);
mx2 dout_from_40_to_63_inst_23
(
	.z /* OUT */ (dout_63),
	.a0 /* IN */ (din_63),
	.a1 /* IN */ (dout_31_obuf),
	.s /* IN */ (dmuxu_2)
);
endmodule
