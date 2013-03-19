/* verilator lint_off LITENDIAN */
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
wire dout_24_obuf;
wire dout_25_obuf;
wire dout_26_obuf;
wire dout_27_obuf;
wire dout_28_obuf;
wire dout_29_obuf;
wire dout_30_obuf;
wire dout_31_obuf;


// Output buffers
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
	.z /* OUT */ (dout_16),
	.a0 /* IN */ (din_16),
	.a1 /* IN */ (din_48),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_1
(
	.z /* OUT */ (dout_17),
	.a0 /* IN */ (din_17),
	.a1 /* IN */ (din_49),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_2
(
	.z /* OUT */ (dout_18),
	.a0 /* IN */ (din_18),
	.a1 /* IN */ (din_50),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_3
(
	.z /* OUT */ (dout_19),
	.a0 /* IN */ (din_19),
	.a1 /* IN */ (din_51),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_4
(
	.z /* OUT */ (dout_20),
	.a0 /* IN */ (din_20),
	.a1 /* IN */ (din_52),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_5
(
	.z /* OUT */ (dout_21),
	.a0 /* IN */ (din_21),
	.a1 /* IN */ (din_53),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_6
(
	.z /* OUT */ (dout_22),
	.a0 /* IN */ (din_22),
	.a1 /* IN */ (din_54),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_7
(
	.z /* OUT */ (dout_23),
	.a0 /* IN */ (din_23),
	.a1 /* IN */ (din_55),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_8
(
	.z /* OUT */ (dout_24_obuf),
	.a0 /* IN */ (din_24),
	.a1 /* IN */ (din_56),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_9
(
	.z /* OUT */ (dout_25_obuf),
	.a0 /* IN */ (din_25),
	.a1 /* IN */ (din_57),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_10
(
	.z /* OUT */ (dout_26_obuf),
	.a0 /* IN */ (din_26),
	.a1 /* IN */ (din_58),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_11
(
	.z /* OUT */ (dout_27_obuf),
	.a0 /* IN */ (din_27),
	.a1 /* IN */ (din_59),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_12
(
	.z /* OUT */ (dout_28_obuf),
	.a0 /* IN */ (din_28),
	.a1 /* IN */ (din_60),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_13
(
	.z /* OUT */ (dout_29_obuf),
	.a0 /* IN */ (din_29),
	.a1 /* IN */ (din_61),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_14
(
	.z /* OUT */ (dout_30_obuf),
	.a0 /* IN */ (din_30),
	.a1 /* IN */ (din_62),
	.s /* IN */ (dmuxd_2)
);
mx2 dout_from_16_to_31_inst_15
(
	.z /* OUT */ (dout_31_obuf),
	.a0 /* IN */ (din_31),
	.a1 /* IN */ (din_63),
	.s /* IN */ (dmuxd_2)
);

// DBUS.NET (129) - d1[8-15] : mx2p
mx2 d1_from_8_to_15_inst_0
(
	.z /* OUT */ (d1_8),
	.a0 /* IN */ (din_8),
	.a1 /* IN */ (din_40),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_1
(
	.z /* OUT */ (d1_9),
	.a0 /* IN */ (din_9),
	.a1 /* IN */ (din_41),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_2
(
	.z /* OUT */ (d1_10),
	.a0 /* IN */ (din_10),
	.a1 /* IN */ (din_42),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_3
(
	.z /* OUT */ (d1_11),
	.a0 /* IN */ (din_11),
	.a1 /* IN */ (din_43),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_4
(
	.z /* OUT */ (d1_12),
	.a0 /* IN */ (din_12),
	.a1 /* IN */ (din_44),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_5
(
	.z /* OUT */ (d1_13),
	.a0 /* IN */ (din_13),
	.a1 /* IN */ (din_45),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_6
(
	.z /* OUT */ (d1_14),
	.a0 /* IN */ (din_14),
	.a1 /* IN */ (din_46),
	.s /* IN */ (dmuxd_2)
);
mx2 d1_from_8_to_15_inst_7
(
	.z /* OUT */ (d1_15),
	.a0 /* IN */ (din_15),
	.a1 /* IN */ (din_47),
	.s /* IN */ (dmuxd_2)
);

// DBUS.NET (131) - dout[8-15] : mx2p
mx2 dout_from_8_to_15_inst_0
(
	.z /* OUT */ (dout_8),
	.a0 /* IN */ (d1_8),
	.a1 /* IN */ (dout_24_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_1
(
	.z /* OUT */ (dout_9),
	.a0 /* IN */ (d1_9),
	.a1 /* IN */ (dout_25_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_2
(
	.z /* OUT */ (dout_10),
	.a0 /* IN */ (d1_10),
	.a1 /* IN */ (dout_26_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_3
(
	.z /* OUT */ (dout_11),
	.a0 /* IN */ (d1_11),
	.a1 /* IN */ (dout_27_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_4
(
	.z /* OUT */ (dout_12),
	.a0 /* IN */ (d1_12),
	.a1 /* IN */ (dout_28_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_5
(
	.z /* OUT */ (dout_13),
	.a0 /* IN */ (d1_13),
	.a1 /* IN */ (dout_29_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_6
(
	.z /* OUT */ (dout_14),
	.a0 /* IN */ (d1_14),
	.a1 /* IN */ (dout_30_obuf),
	.s /* IN */ (dmuxd_1)
);
mx2 dout_from_8_to_15_inst_7
(
	.z /* OUT */ (dout_15),
	.a0 /* IN */ (d1_15),
	.a1 /* IN */ (dout_31_obuf),
	.s /* IN */ (dmuxd_1)
);

// DBUS.NET (133) - dout[0-7] : mx8p
mx8 dout_from_0_to_7_inst_0
(
	.z /* OUT */ (dout_0),
	.a0 /* IN */ (din_0),
	.a1 /* IN */ (din_8),
	.a2 /* IN */ (din_16),
	.a3 /* IN */ (din_24),
	.a4 /* IN */ (din_32),
	.a5 /* IN */ (din_40),
	.a6 /* IN */ (din_48),
	.a7 /* IN */ (din_56),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_1
(
	.z /* OUT */ (dout_1),
	.a0 /* IN */ (din_1),
	.a1 /* IN */ (din_9),
	.a2 /* IN */ (din_17),
	.a3 /* IN */ (din_25),
	.a4 /* IN */ (din_33),
	.a5 /* IN */ (din_41),
	.a6 /* IN */ (din_49),
	.a7 /* IN */ (din_57),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_2
(
	.z /* OUT */ (dout_2),
	.a0 /* IN */ (din_2),
	.a1 /* IN */ (din_10),
	.a2 /* IN */ (din_18),
	.a3 /* IN */ (din_26),
	.a4 /* IN */ (din_34),
	.a5 /* IN */ (din_42),
	.a6 /* IN */ (din_50),
	.a7 /* IN */ (din_58),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_3
(
	.z /* OUT */ (dout_3),
	.a0 /* IN */ (din_3),
	.a1 /* IN */ (din_11),
	.a2 /* IN */ (din_19),
	.a3 /* IN */ (din_27),
	.a4 /* IN */ (din_35),
	.a5 /* IN */ (din_43),
	.a6 /* IN */ (din_51),
	.a7 /* IN */ (din_59),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_4
(
	.z /* OUT */ (dout_4),
	.a0 /* IN */ (din_4),
	.a1 /* IN */ (din_12),
	.a2 /* IN */ (din_20),
	.a3 /* IN */ (din_28),
	.a4 /* IN */ (din_36),
	.a5 /* IN */ (din_44),
	.a6 /* IN */ (din_52),
	.a7 /* IN */ (din_60),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_5
(
	.z /* OUT */ (dout_5),
	.a0 /* IN */ (din_5),
	.a1 /* IN */ (din_13),
	.a2 /* IN */ (din_21),
	.a3 /* IN */ (din_29),
	.a4 /* IN */ (din_37),
	.a5 /* IN */ (din_45),
	.a6 /* IN */ (din_53),
	.a7 /* IN */ (din_61),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_6
(
	.z /* OUT */ (dout_6),
	.a0 /* IN */ (din_6),
	.a1 /* IN */ (din_14),
	.a2 /* IN */ (din_22),
	.a3 /* IN */ (din_30),
	.a4 /* IN */ (din_38),
	.a5 /* IN */ (din_46),
	.a6 /* IN */ (din_54),
	.a7 /* IN */ (din_62),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
mx8 dout_from_0_to_7_inst_7
(
	.z /* OUT */ (dout_7),
	.a0 /* IN */ (din_7),
	.a1 /* IN */ (din_15),
	.a2 /* IN */ (din_23),
	.a3 /* IN */ (din_31),
	.a4 /* IN */ (din_39),
	.a5 /* IN */ (din_47),
	.a6 /* IN */ (din_55),
	.a7 /* IN */ (din_63),
	.s0 /* IN */ (dmuxd_0),
	.s1 /* IN */ (dmuxd_1),
	.s2 /* IN */ (dmuxd_2)
);
endmodule
/* verilator lint_on LITENDIAN */
