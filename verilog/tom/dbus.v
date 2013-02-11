`include "defs.v"

module dbus
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
	input dr_0,
	input dr_1,
	input dr_2,
	input dr_3,
	input dr_4,
	input dr_5,
	input dr_6,
	input dr_7,
	input dr_8,
	input dr_9,
	input dr_10,
	input dr_11,
	input dr_12,
	input dr_13,
	input dr_14,
	input dr_15,
	input dinlatch_0,
	input dinlatch_1,
	input dinlatch_2,
	input dinlatch_3,
	input dinlatch_4,
	input dinlatch_5,
	input dinlatch_6,
	input dinlatch_7,
	input dmuxd_0,
	input dmuxd_1,
	input dmuxd_2,
	input dmuxu_0,
	input dmuxu_1,
	input dmuxu_2,
	input dren,
	input xdsrc,
	input ourack,
	input wd_0,
	input wd_1,
	input wd_2,
	input wd_3,
	input wd_4,
	input wd_5,
	input wd_6,
	input wd_7,
	input wd_8,
	input wd_9,
	input wd_10,
	input wd_11,
	input wd_12,
	input wd_13,
	input wd_14,
	input wd_15,
	input wd_16,
	input wd_17,
	input wd_18,
	input wd_19,
	input wd_20,
	input wd_21,
	input wd_22,
	input wd_23,
	input wd_24,
	input wd_25,
	input wd_26,
	input wd_27,
	input wd_28,
	input wd_29,
	input wd_30,
	input wd_31,
	input wd_32,
	input wd_33,
	input wd_34,
	input wd_35,
	input wd_36,
	input wd_37,
	input wd_38,
	input wd_39,
	input wd_40,
	input wd_41,
	input wd_42,
	input wd_43,
	input wd_44,
	input wd_45,
	input wd_46,
	input wd_47,
	input wd_48,
	input wd_49,
	input wd_50,
	input wd_51,
	input wd_52,
	input wd_53,
	input wd_54,
	input wd_55,
	input wd_56,
	input wd_57,
	input wd_58,
	input wd_59,
	input wd_60,
	input wd_61,
	input wd_62,
	input wd_63,
	input clk,
	output dp_0,
	output dp_1,
	output dp_2,
	output dp_3,
	output dp_4,
	output dp_5,
	output dp_6,
	output dp_7,
	output dp_8,
	output dp_9,
	output dp_10,
	output dp_11,
	output dp_12,
	output dp_13,
	output dp_14,
	output dp_15,
	output dob_0,
	output dob_1,
	output dob_2,
	output dob_3,
	output dob_4,
	output dob_5,
	output dob_6,
	output dob_7,
	output dob_8,
	output dob_9,
	output dob_10,
	output dob_11,
	output dob_12,
	output dob_13,
	output dob_14,
	output dob_15,
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
	output d5_32,
	output d5_33,
	output d5_34,
	output d5_35,
	output d5_36,
	output d5_37,
	output d5_38,
	output d5_39,
	output d5_40,
	output d5_41,
	output d5_42,
	output d5_43,
	output d5_44,
	output d5_45,
	output d5_46,
	output d5_47,
	output d5_48,
	output d5_49,
	output d5_50,
	output d5_51,
	output d5_52,
	output d5_53,
	output d5_54,
	output d5_55,
	output d5_56,
	output d5_57,
	output d5_58,
	output d5_59,
	output d5_60,
	output d5_61,
	output d5_62,
	output d5_63,
	output d_0,
	output d_1,
	output d_2,
	output d_3,
	output d_4,
	output d_5,
	output d_6,
	output d_7,
	output d_8,
	output d_9,
	output d_10,
	output d_11,
	output d_12,
	output d_13,
	output d_14,
	output d_15,
	output d_16,
	output d_17,
	output d_18,
	output d_19,
	output d_20,
	output d_21,
	output d_22,
	output d_23,
	output d_24,
	output d_25,
	output d_26,
	output d_27,
	output d_28,
	output d_29,
	output d_30,
	output d_31,
	output d_32,
	output d_33,
	output d_34,
	output d_35,
	output d_36,
	output d_37,
	output d_38,
	output d_39,
	output d_40,
	output d_41,
	output d_42,
	output d_43,
	output d_44,
	output d_45,
	output d_46,
	output d_47,
	output d_48,
	output d_49,
	output d_50,
	output d_51,
	output d_52,
	output d_53,
	output d_54,
	output d_55,
	output d_56,
	output d_57,
	output d_58,
	output d_59,
	output d_60,
	output d_61,
	output d_62,
	output d_63
);
wire [0:15] d;
wire [0:2] dmuxu;
wire [0:2] dmuxd;
wire d3i_0;
wire d3i_1;
wire d3i_2;
wire d3i_3;
wire d3i_4;
wire d3i_5;
wire d3i_6;
wire d3i_7;
wire d3i_8;
wire d3i_9;
wire d3i_10;
wire d3i_11;
wire d3i_12;
wire d3i_13;
wire d3i_14;
wire d3i_15;
wire d3_0;
wire d3_1;
wire d3_2;
wire d3_3;
wire d3_4;
wire d3_5;
wire d3_6;
wire d3_7;
wire d3_8;
wire d3_9;
wire d3_10;
wire d3_11;
wire d3_12;
wire d3_13;
wire d3_14;
wire d3_15;
wire d3_16;
wire d3_17;
wire d3_18;
wire d3_19;
wire d3_20;
wire d3_21;
wire d3_22;
wire d3_23;
wire d3_24;
wire d3_25;
wire d3_26;
wire d3_27;
wire d3_28;
wire d3_29;
wire d3_30;
wire d3_31;
wire d3_32;
wire d3_33;
wire d3_34;
wire d3_35;
wire d3_36;
wire d3_37;
wire d3_38;
wire d3_39;
wire d3_40;
wire d3_41;
wire d3_42;
wire d3_43;
wire d3_44;
wire d3_45;
wire d3_46;
wire d3_47;
wire d3_48;
wire d3_49;
wire d3_50;
wire d3_51;
wire d3_52;
wire d3_53;
wire d3_54;
wire d3_55;
wire d3_56;
wire d3_57;
wire d3_58;
wire d3_59;
wire d3_60;
wire d3_61;
wire d3_62;
wire d3_63;
wire d4_8;
wire d4_9;
wire d4_10;
wire d4_11;
wire d4_12;
wire d4_13;
wire d4_14;
wire d4_15;
wire d4_16;
wire d4_17;
wire d4_18;
wire d4_19;
wire d4_20;
wire d4_21;
wire d4_22;
wire d4_23;
wire d4_24;
wire d4_25;
wire d4_26;
wire d4_27;
wire d4_28;
wire d4_29;
wire d4_30;
wire d4_31;
wire d4_32;
wire d4_33;
wire d4_34;
wire d4_35;
wire d4_36;
wire d4_37;
wire d4_38;
wire d4_39;
wire d4_40;
wire d4_41;
wire d4_42;
wire d4_43;
wire d4_44;
wire d4_45;
wire d4_46;
wire d4_47;
wire d4_48;
wire d4_49;
wire d4_50;
wire d4_51;
wire d4_52;
wire d4_53;
wire d4_54;
wire d4_55;
wire d4_56;
wire d4_57;
wire d4_58;
wire d4_59;
wire d4_60;
wire d4_61;
wire d4_62;
wire d4_63;
wire d5_0;
wire d5_1;
wire d5_2;
wire d5_3;
wire d5_4;
wire d5_5;
wire d5_6;
wire d5_7;
wire d5_8;
wire d5_9;
wire d5_10;
wire d5_11;
wire d5_12;
wire d5_13;
wire d5_14;
wire d5_15;
wire d5_16;
wire d5_17;
wire d5_18;
wire d5_19;
wire d5_20;
wire d5_21;
wire d5_22;
wire d5_23;
wire d5_24;
wire d5_25;
wire d5_26;
wire d5_27;
wire d5_28;
wire d5_29;
wire d5_30;
wire d5_31;
wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;
wire dout_4;
wire dout_5;
wire dout_6;
wire dout_7;
wire dout_8;
wire dout_9;
wire dout_10;
wire dout_11;
wire dout_12;
wire dout_13;
wire dout_14;
wire dout_15;
wire vd_0;
wire vd_1;
wire vd_2;
wire vd_3;
wire vd_4;
wire vd_5;
wire gnd;
wire vd_6;
wire vcc;
wire vd_7;

// Output buffers
wire dp_0_obuf;
wire dp_1_obuf;
wire dp_2_obuf;
wire dp_3_obuf;
wire dp_4_obuf;
wire dp_5_obuf;
wire dp_6_obuf;
wire dp_7_obuf;
wire dp_8_obuf;
wire dp_9_obuf;
wire dp_10_obuf;
wire dp_11_obuf;
wire dp_12_obuf;
wire dp_13_obuf;
wire dp_14_obuf;
wire dp_15_obuf;
wire dob_0_obuf;
wire dob_1_obuf;
wire dob_2_obuf;
wire dob_3_obuf;
wire dob_4_obuf;
wire dob_5_obuf;
wire dob_6_obuf;
wire dob_7_obuf;
wire dob_8_obuf;
wire dob_9_obuf;
wire dob_10_obuf;
wire dob_11_obuf;
wire dob_12_obuf;
wire dob_13_obuf;
wire dob_14_obuf;
wire dob_15_obuf;
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
wire d5_32_obuf;
wire d5_33_obuf;
wire d5_34_obuf;
wire d5_35_obuf;
wire d5_36_obuf;
wire d5_37_obuf;
wire d5_38_obuf;
wire d5_39_obuf;
wire d5_40_obuf;
wire d5_41_obuf;
wire d5_42_obuf;
wire d5_43_obuf;
wire d5_44_obuf;
wire d5_45_obuf;
wire d5_46_obuf;
wire d5_47_obuf;
wire d5_48_obuf;
wire d5_49_obuf;
wire d5_50_obuf;
wire d5_51_obuf;
wire d5_52_obuf;
wire d5_53_obuf;
wire d5_54_obuf;
wire d5_55_obuf;
wire d5_56_obuf;
wire d5_57_obuf;
wire d5_58_obuf;
wire d5_59_obuf;
wire d5_60_obuf;
wire d5_61_obuf;
wire d5_62_obuf;
wire d5_63_obuf;
wire d_0_obuf;
wire d_1_obuf;
wire d_2_obuf;
wire d_3_obuf;
wire d_4_obuf;
wire d_5_obuf;
wire d_6_obuf;
wire d_7_obuf;
wire d_8_obuf;
wire d_9_obuf;
wire d_10_obuf;
wire d_11_obuf;
wire d_12_obuf;
wire d_13_obuf;
wire d_14_obuf;
wire d_15_obuf;
wire d_16_obuf;
wire d_17_obuf;
wire d_18_obuf;
wire d_19_obuf;
wire d_20_obuf;
wire d_21_obuf;
wire d_22_obuf;
wire d_23_obuf;
wire d_24_obuf;
wire d_25_obuf;
wire d_26_obuf;
wire d_27_obuf;
wire d_28_obuf;
wire d_29_obuf;
wire d_30_obuf;
wire d_31_obuf;
wire d_32_obuf;
wire d_33_obuf;
wire d_34_obuf;
wire d_35_obuf;
wire d_36_obuf;
wire d_37_obuf;
wire d_38_obuf;
wire d_39_obuf;
wire d_40_obuf;
wire d_41_obuf;
wire d_42_obuf;
wire d_43_obuf;
wire d_44_obuf;
wire d_45_obuf;
wire d_46_obuf;
wire d_47_obuf;
wire d_48_obuf;
wire d_49_obuf;
wire d_50_obuf;
wire d_51_obuf;
wire d_52_obuf;
wire d_53_obuf;
wire d_54_obuf;
wire d_55_obuf;
wire d_56_obuf;
wire d_57_obuf;
wire d_58_obuf;
wire d_59_obuf;
wire d_60_obuf;
wire d_61_obuf;
wire d_62_obuf;
wire d_63_obuf;


// Output buffers
assign dp_0 = dp_0_obuf;
assign dp_1 = dp_1_obuf;
assign dp_2 = dp_2_obuf;
assign dp_3 = dp_3_obuf;
assign dp_4 = dp_4_obuf;
assign dp_5 = dp_5_obuf;
assign dp_6 = dp_6_obuf;
assign dp_7 = dp_7_obuf;
assign dp_8 = dp_8_obuf;
assign dp_9 = dp_9_obuf;
assign dp_10 = dp_10_obuf;
assign dp_11 = dp_11_obuf;
assign dp_12 = dp_12_obuf;
assign dp_13 = dp_13_obuf;
assign dp_14 = dp_14_obuf;
assign dp_15 = dp_15_obuf;
assign dob_0 = dob_0_obuf;
assign dob_1 = dob_1_obuf;
assign dob_2 = dob_2_obuf;
assign dob_3 = dob_3_obuf;
assign dob_4 = dob_4_obuf;
assign dob_5 = dob_5_obuf;
assign dob_6 = dob_6_obuf;
assign dob_7 = dob_7_obuf;
assign dob_8 = dob_8_obuf;
assign dob_9 = dob_9_obuf;
assign dob_10 = dob_10_obuf;
assign dob_11 = dob_11_obuf;
assign dob_12 = dob_12_obuf;
assign dob_13 = dob_13_obuf;
assign dob_14 = dob_14_obuf;
assign dob_15 = dob_15_obuf;
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
assign d5_32 = d5_32_obuf;
assign d5_33 = d5_33_obuf;
assign d5_34 = d5_34_obuf;
assign d5_35 = d5_35_obuf;
assign d5_36 = d5_36_obuf;
assign d5_37 = d5_37_obuf;
assign d5_38 = d5_38_obuf;
assign d5_39 = d5_39_obuf;
assign d5_40 = d5_40_obuf;
assign d5_41 = d5_41_obuf;
assign d5_42 = d5_42_obuf;
assign d5_43 = d5_43_obuf;
assign d5_44 = d5_44_obuf;
assign d5_45 = d5_45_obuf;
assign d5_46 = d5_46_obuf;
assign d5_47 = d5_47_obuf;
assign d5_48 = d5_48_obuf;
assign d5_49 = d5_49_obuf;
assign d5_50 = d5_50_obuf;
assign d5_51 = d5_51_obuf;
assign d5_52 = d5_52_obuf;
assign d5_53 = d5_53_obuf;
assign d5_54 = d5_54_obuf;
assign d5_55 = d5_55_obuf;
assign d5_56 = d5_56_obuf;
assign d5_57 = d5_57_obuf;
assign d5_58 = d5_58_obuf;
assign d5_59 = d5_59_obuf;
assign d5_60 = d5_60_obuf;
assign d5_61 = d5_61_obuf;
assign d5_62 = d5_62_obuf;
assign d5_63 = d5_63_obuf;
assign d_0 = d_0_obuf;
assign d_1 = d_1_obuf;
assign d_2 = d_2_obuf;
assign d_3 = d_3_obuf;
assign d_4 = d_4_obuf;
assign d_5 = d_5_obuf;
assign d_6 = d_6_obuf;
assign d_7 = d_7_obuf;
assign d_8 = d_8_obuf;
assign d_9 = d_9_obuf;
assign d_10 = d_10_obuf;
assign d_11 = d_11_obuf;
assign d_12 = d_12_obuf;
assign d_13 = d_13_obuf;
assign d_14 = d_14_obuf;
assign d_15 = d_15_obuf;
assign d_16 = d_16_obuf;
assign d_17 = d_17_obuf;
assign d_18 = d_18_obuf;
assign d_19 = d_19_obuf;
assign d_20 = d_20_obuf;
assign d_21 = d_21_obuf;
assign d_22 = d_22_obuf;
assign d_23 = d_23_obuf;
assign d_24 = d_24_obuf;
assign d_25 = d_25_obuf;
assign d_26 = d_26_obuf;
assign d_27 = d_27_obuf;
assign d_28 = d_28_obuf;
assign d_29 = d_29_obuf;
assign d_30 = d_30_obuf;
assign d_31 = d_31_obuf;
assign d_32 = d_32_obuf;
assign d_33 = d_33_obuf;
assign d_34 = d_34_obuf;
assign d_35 = d_35_obuf;
assign d_36 = d_36_obuf;
assign d_37 = d_37_obuf;
assign d_38 = d_38_obuf;
assign d_39 = d_39_obuf;
assign d_40 = d_40_obuf;
assign d_41 = d_41_obuf;
assign d_42 = d_42_obuf;
assign d_43 = d_43_obuf;
assign d_44 = d_44_obuf;
assign d_45 = d_45_obuf;
assign d_46 = d_46_obuf;
assign d_47 = d_47_obuf;
assign d_48 = d_48_obuf;
assign d_49 = d_49_obuf;
assign d_50 = d_50_obuf;
assign d_51 = d_51_obuf;
assign d_52 = d_52_obuf;
assign d_53 = d_53_obuf;
assign d_54 = d_54_obuf;
assign d_55 = d_55_obuf;
assign d_56 = d_56_obuf;
assign d_57 = d_57_obuf;
assign d_58 = d_58_obuf;
assign d_59 = d_59_obuf;
assign d_60 = d_60_obuf;
assign d_61 = d_61_obuf;
assign d_62 = d_62_obuf;
assign d_63 = d_63_obuf;


// DBUS.NET (43) - d : join
assign d[0] = dr_0;
assign d[1] = dr_1;
assign d[2] = dr_2;
assign d[3] = dr_3;
assign d[4] = dr_4;
assign d[5] = dr_5;
assign d[6] = dr_6;
assign d[7] = dr_7;
assign d[8] = dr_8;
assign d[9] = dr_9;
assign d[10] = dr_10;
assign d[11] = dr_11;
assign d[12] = dr_12;
assign d[13] = dr_13;
assign d[14] = dr_14;
assign d[15] = dr_15;

// DBUS.NET (44) - du : dummy

// DBUS.NET (45) - dmuxu : join
assign dmuxu[0] = dmuxu_0;
assign dmuxu[1] = dmuxu_1;
assign dmuxu[2] = dmuxu_2;

// DBUS.NET (46) - duu : dummy

// DBUS.NET (47) - dmuxd : join
assign dmuxd[0] = dmuxd_0;
assign dmuxd[1] = dmuxd_1;
assign dmuxd[2] = dmuxd_2;

// DBUS.NET (48) - ddu : dummy

// DBUS.NET (53) - d3i[0-15] : mx4
mx4 d3i_from_0_to_15_inst_0
(
	.z(d3i_0), // OUT
	.a0(wd_0), // IN
	.a1(dr_0), // IN
	.a2(din_0), // IN
	.a3(din_0), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_1
(
	.z(d3i_1), // OUT
	.a0(wd_1), // IN
	.a1(dr_1), // IN
	.a2(din_1), // IN
	.a3(din_1), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_2
(
	.z(d3i_2), // OUT
	.a0(wd_2), // IN
	.a1(dr_2), // IN
	.a2(din_2), // IN
	.a3(din_2), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_3
(
	.z(d3i_3), // OUT
	.a0(wd_3), // IN
	.a1(dr_3), // IN
	.a2(din_3), // IN
	.a3(din_3), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_4
(
	.z(d3i_4), // OUT
	.a0(wd_4), // IN
	.a1(dr_4), // IN
	.a2(din_4), // IN
	.a3(din_4), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_5
(
	.z(d3i_5), // OUT
	.a0(wd_5), // IN
	.a1(dr_5), // IN
	.a2(din_5), // IN
	.a3(din_5), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_6
(
	.z(d3i_6), // OUT
	.a0(wd_6), // IN
	.a1(dr_6), // IN
	.a2(din_6), // IN
	.a3(din_6), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_7
(
	.z(d3i_7), // OUT
	.a0(wd_7), // IN
	.a1(dr_7), // IN
	.a2(din_7), // IN
	.a3(din_7), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_8
(
	.z(d3i_8), // OUT
	.a0(wd_8), // IN
	.a1(dr_8), // IN
	.a2(din_8), // IN
	.a3(din_8), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_9
(
	.z(d3i_9), // OUT
	.a0(wd_9), // IN
	.a1(dr_9), // IN
	.a2(din_9), // IN
	.a3(din_9), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_10
(
	.z(d3i_10), // OUT
	.a0(wd_10), // IN
	.a1(dr_10), // IN
	.a2(din_10), // IN
	.a3(din_10), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_11
(
	.z(d3i_11), // OUT
	.a0(wd_11), // IN
	.a1(dr_11), // IN
	.a2(din_11), // IN
	.a3(din_11), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_12
(
	.z(d3i_12), // OUT
	.a0(wd_12), // IN
	.a1(dr_12), // IN
	.a2(din_12), // IN
	.a3(din_12), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_13
(
	.z(d3i_13), // OUT
	.a0(wd_13), // IN
	.a1(dr_13), // IN
	.a2(din_13), // IN
	.a3(din_13), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_14
(
	.z(d3i_14), // OUT
	.a0(wd_14), // IN
	.a1(dr_14), // IN
	.a2(din_14), // IN
	.a3(din_14), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);
mx4 d3i_from_0_to_15_inst_15
(
	.z(d3i_15), // OUT
	.a0(wd_15), // IN
	.a1(dr_15), // IN
	.a2(din_15), // IN
	.a3(din_15), // IN
	.s0(dren), // IN
	.s1(xdsrc)  // IN
);

// DBUS.NET (54) - d3[0-15] : niv
assign d3_0 = d3i_0;
assign d3_1 = d3i_1;
assign d3_2 = d3i_2;
assign d3_3 = d3i_3;
assign d3_4 = d3i_4;
assign d3_5 = d3i_5;
assign d3_6 = d3i_6;
assign d3_7 = d3i_7;
assign d3_8 = d3i_8;
assign d3_9 = d3i_9;
assign d3_10 = d3i_10;
assign d3_11 = d3i_11;
assign d3_12 = d3i_12;
assign d3_13 = d3i_13;
assign d3_14 = d3i_14;
assign d3_15 = d3i_15;

// DBUS.NET (55) - d3[16-63] : mx2
mx2 d3_from_16_to_63_inst_0
(
	.z(d3_16), // OUT
	.a0(wd_16), // IN
	.a1(din_16), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_1
(
	.z(d3_17), // OUT
	.a0(wd_17), // IN
	.a1(din_17), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_2
(
	.z(d3_18), // OUT
	.a0(wd_18), // IN
	.a1(din_18), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_3
(
	.z(d3_19), // OUT
	.a0(wd_19), // IN
	.a1(din_19), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_4
(
	.z(d3_20), // OUT
	.a0(wd_20), // IN
	.a1(din_20), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_5
(
	.z(d3_21), // OUT
	.a0(wd_21), // IN
	.a1(din_21), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_6
(
	.z(d3_22), // OUT
	.a0(wd_22), // IN
	.a1(din_22), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_7
(
	.z(d3_23), // OUT
	.a0(wd_23), // IN
	.a1(din_23), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_8
(
	.z(d3_24), // OUT
	.a0(wd_24), // IN
	.a1(din_24), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_9
(
	.z(d3_25), // OUT
	.a0(wd_25), // IN
	.a1(din_25), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_10
(
	.z(d3_26), // OUT
	.a0(wd_26), // IN
	.a1(din_26), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_11
(
	.z(d3_27), // OUT
	.a0(wd_27), // IN
	.a1(din_27), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_12
(
	.z(d3_28), // OUT
	.a0(wd_28), // IN
	.a1(din_28), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_13
(
	.z(d3_29), // OUT
	.a0(wd_29), // IN
	.a1(din_29), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_14
(
	.z(d3_30), // OUT
	.a0(wd_30), // IN
	.a1(din_30), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_15
(
	.z(d3_31), // OUT
	.a0(wd_31), // IN
	.a1(din_31), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_16
(
	.z(d3_32), // OUT
	.a0(wd_32), // IN
	.a1(din_32), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_17
(
	.z(d3_33), // OUT
	.a0(wd_33), // IN
	.a1(din_33), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_18
(
	.z(d3_34), // OUT
	.a0(wd_34), // IN
	.a1(din_34), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_19
(
	.z(d3_35), // OUT
	.a0(wd_35), // IN
	.a1(din_35), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_20
(
	.z(d3_36), // OUT
	.a0(wd_36), // IN
	.a1(din_36), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_21
(
	.z(d3_37), // OUT
	.a0(wd_37), // IN
	.a1(din_37), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_22
(
	.z(d3_38), // OUT
	.a0(wd_38), // IN
	.a1(din_38), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_23
(
	.z(d3_39), // OUT
	.a0(wd_39), // IN
	.a1(din_39), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_24
(
	.z(d3_40), // OUT
	.a0(wd_40), // IN
	.a1(din_40), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_25
(
	.z(d3_41), // OUT
	.a0(wd_41), // IN
	.a1(din_41), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_26
(
	.z(d3_42), // OUT
	.a0(wd_42), // IN
	.a1(din_42), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_27
(
	.z(d3_43), // OUT
	.a0(wd_43), // IN
	.a1(din_43), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_28
(
	.z(d3_44), // OUT
	.a0(wd_44), // IN
	.a1(din_44), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_29
(
	.z(d3_45), // OUT
	.a0(wd_45), // IN
	.a1(din_45), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_30
(
	.z(d3_46), // OUT
	.a0(wd_46), // IN
	.a1(din_46), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_31
(
	.z(d3_47), // OUT
	.a0(wd_47), // IN
	.a1(din_47), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_32
(
	.z(d3_48), // OUT
	.a0(wd_48), // IN
	.a1(din_48), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_33
(
	.z(d3_49), // OUT
	.a0(wd_49), // IN
	.a1(din_49), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_34
(
	.z(d3_50), // OUT
	.a0(wd_50), // IN
	.a1(din_50), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_35
(
	.z(d3_51), // OUT
	.a0(wd_51), // IN
	.a1(din_51), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_36
(
	.z(d3_52), // OUT
	.a0(wd_52), // IN
	.a1(din_52), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_37
(
	.z(d3_53), // OUT
	.a0(wd_53), // IN
	.a1(din_53), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_38
(
	.z(d3_54), // OUT
	.a0(wd_54), // IN
	.a1(din_54), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_39
(
	.z(d3_55), // OUT
	.a0(wd_55), // IN
	.a1(din_55), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_40
(
	.z(d3_56), // OUT
	.a0(wd_56), // IN
	.a1(din_56), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_41
(
	.z(d3_57), // OUT
	.a0(wd_57), // IN
	.a1(din_57), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_42
(
	.z(d3_58), // OUT
	.a0(wd_58), // IN
	.a1(din_58), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_43
(
	.z(d3_59), // OUT
	.a0(wd_59), // IN
	.a1(din_59), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_44
(
	.z(d3_60), // OUT
	.a0(wd_60), // IN
	.a1(din_60), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_45
(
	.z(d3_61), // OUT
	.a0(wd_61), // IN
	.a1(din_61), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_46
(
	.z(d3_62), // OUT
	.a0(wd_62), // IN
	.a1(din_62), // IN
	.s(xdsrc)  // IN
);
mx2 d3_from_16_to_63_inst_47
(
	.z(d3_63), // OUT
	.a0(wd_63), // IN
	.a1(din_63), // IN
	.s(xdsrc)  // IN
);

// DBUS.NET (59) - d4 : up
up d4_inst
(
	.din_0(d3_0), // IN
	.din_1(d3_1), // IN
	.din_2(d3_2), // IN
	.din_3(d3_3), // IN
	.din_4(d3_4), // IN
	.din_5(d3_5), // IN
	.din_6(d3_6), // IN
	.din_7(d3_7), // IN
	.din_8(d3_8), // IN
	.din_9(d3_9), // IN
	.din_10(d3_10), // IN
	.din_11(d3_11), // IN
	.din_12(d3_12), // IN
	.din_13(d3_13), // IN
	.din_14(d3_14), // IN
	.din_15(d3_15), // IN
	.din_16(d3_16), // IN
	.din_17(d3_17), // IN
	.din_18(d3_18), // IN
	.din_19(d3_19), // IN
	.din_20(d3_20), // IN
	.din_21(d3_21), // IN
	.din_22(d3_22), // IN
	.din_23(d3_23), // IN
	.din_24(d3_24), // IN
	.din_25(d3_25), // IN
	.din_26(d3_26), // IN
	.din_27(d3_27), // IN
	.din_28(d3_28), // IN
	.din_29(d3_29), // IN
	.din_30(d3_30), // IN
	.din_31(d3_31), // IN
	.din_32(d3_32), // IN
	.din_33(d3_33), // IN
	.din_34(d3_34), // IN
	.din_35(d3_35), // IN
	.din_36(d3_36), // IN
	.din_37(d3_37), // IN
	.din_38(d3_38), // IN
	.din_39(d3_39), // IN
	.din_40(d3_40), // IN
	.din_41(d3_41), // IN
	.din_42(d3_42), // IN
	.din_43(d3_43), // IN
	.din_44(d3_44), // IN
	.din_45(d3_45), // IN
	.din_46(d3_46), // IN
	.din_47(d3_47), // IN
	.din_48(d3_48), // IN
	.din_49(d3_49), // IN
	.din_50(d3_50), // IN
	.din_51(d3_51), // IN
	.din_52(d3_52), // IN
	.din_53(d3_53), // IN
	.din_54(d3_54), // IN
	.din_55(d3_55), // IN
	.din_56(d3_56), // IN
	.din_57(d3_57), // IN
	.din_58(d3_58), // IN
	.din_59(d3_59), // IN
	.din_60(d3_60), // IN
	.din_61(d3_61), // IN
	.din_62(d3_62), // IN
	.din_63(d3_63), // IN
	.dmuxu_0(dmuxu_0), // IN
	.dmuxu_1(dmuxu_1), // IN
	.dmuxu_2(dmuxu_2), // IN
	.dout_8(d4_8), // IO
	.dout_9(d4_9), // IO
	.dout_10(d4_10), // IO
	.dout_11(d4_11), // IO
	.dout_12(d4_12), // IO
	.dout_13(d4_13), // IO
	.dout_14(d4_14), // IO
	.dout_15(d4_15), // IO
	.dout_16(d4_16), // IO
	.dout_17(d4_17), // IO
	.dout_18(d4_18), // IO
	.dout_19(d4_19), // IO
	.dout_20(d4_20), // IO
	.dout_21(d4_21), // IO
	.dout_22(d4_22), // IO
	.dout_23(d4_23), // IO
	.dout_24(d4_24), // IO
	.dout_25(d4_25), // IO
	.dout_26(d4_26), // IO
	.dout_27(d4_27), // IO
	.dout_28(d4_28), // IO
	.dout_29(d4_29), // IO
	.dout_30(d4_30), // IO
	.dout_31(d4_31), // IO
	.dout_32(d4_32), // IO
	.dout_33(d4_33), // IO
	.dout_34(d4_34), // IO
	.dout_35(d4_35), // IO
	.dout_36(d4_36), // IO
	.dout_37(d4_37), // IO
	.dout_38(d4_38), // IO
	.dout_39(d4_39), // IO
	.dout_40(d4_40), // IO
	.dout_41(d4_41), // IO
	.dout_42(d4_42), // IO
	.dout_43(d4_43), // IO
	.dout_44(d4_44), // IO
	.dout_45(d4_45), // IO
	.dout_46(d4_46), // IO
	.dout_47(d4_47), // IO
	.dout_48(d4_48), // IO
	.dout_49(d4_49), // IO
	.dout_50(d4_50), // IO
	.dout_51(d4_51), // IO
	.dout_52(d4_52), // IO
	.dout_53(d4_53), // IO
	.dout_54(d4_54), // IO
	.dout_55(d4_55), // IO
	.dout_56(d4_56), // IO
	.dout_57(d4_57), // IO
	.dout_58(d4_58), // IO
	.dout_59(d4_59), // IO
	.dout_60(d4_60), // IO
	.dout_61(d4_61), // IO
	.dout_62(d4_62), // IO
	.dout_63(d4_63)  // IO
);

// DBUS.NET (63) - d5[0-7] : stlatch
stlatch d5_from_0_to_7_inst_0
(
	.d1(d5_0), // IO
	.d(d3_0), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_1
(
	.d1(d5_1), // IO
	.d(d3_1), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_2
(
	.d1(d5_2), // IO
	.d(d3_2), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_3
(
	.d1(d5_3), // IO
	.d(d3_3), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_4
(
	.d1(d5_4), // IO
	.d(d3_4), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_5
(
	.d1(d5_5), // IO
	.d(d3_5), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_6
(
	.d1(d5_6), // IO
	.d(d3_6), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);
stlatch d5_from_0_to_7_inst_7
(
	.d1(d5_7), // IO
	.d(d3_7), // IN
	.clk(clk), // IN
	.en(dinlatch_0)  // IN
);

// DBUS.NET (64) - d5[8-15] : stlatch
stlatch d5_from_8_to_15_inst_0
(
	.d1(d5_8), // IO
	.d(d4_8), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_1
(
	.d1(d5_9), // IO
	.d(d4_9), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_2
(
	.d1(d5_10), // IO
	.d(d4_10), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_3
(
	.d1(d5_11), // IO
	.d(d4_11), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_4
(
	.d1(d5_12), // IO
	.d(d4_12), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_5
(
	.d1(d5_13), // IO
	.d(d4_13), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_6
(
	.d1(d5_14), // IO
	.d(d4_14), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);
stlatch d5_from_8_to_15_inst_7
(
	.d1(d5_15), // IO
	.d(d4_15), // IN
	.clk(clk), // IN
	.en(dinlatch_1)  // IN
);

// DBUS.NET (65) - d5[16-23] : stlatch
stlatch d5_from_16_to_23_inst_0
(
	.d1(d5_16), // IO
	.d(d4_16), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_1
(
	.d1(d5_17), // IO
	.d(d4_17), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_2
(
	.d1(d5_18), // IO
	.d(d4_18), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_3
(
	.d1(d5_19), // IO
	.d(d4_19), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_4
(
	.d1(d5_20), // IO
	.d(d4_20), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_5
(
	.d1(d5_21), // IO
	.d(d4_21), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_6
(
	.d1(d5_22), // IO
	.d(d4_22), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);
stlatch d5_from_16_to_23_inst_7
(
	.d1(d5_23), // IO
	.d(d4_23), // IN
	.clk(clk), // IN
	.en(dinlatch_2)  // IN
);

// DBUS.NET (66) - d5[24-31] : stlatch
stlatch d5_from_24_to_31_inst_0
(
	.d1(d5_24), // IO
	.d(d4_24), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_1
(
	.d1(d5_25), // IO
	.d(d4_25), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_2
(
	.d1(d5_26), // IO
	.d(d4_26), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_3
(
	.d1(d5_27), // IO
	.d(d4_27), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_4
(
	.d1(d5_28), // IO
	.d(d4_28), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_5
(
	.d1(d5_29), // IO
	.d(d4_29), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_6
(
	.d1(d5_30), // IO
	.d(d4_30), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);
stlatch d5_from_24_to_31_inst_7
(
	.d1(d5_31), // IO
	.d(d4_31), // IN
	.clk(clk), // IN
	.en(dinlatch_3)  // IN
);

// DBUS.NET (67) - d5[32-39] : stlatch
stlatch d5_from_32_to_39_inst_0
(
	.d1(d5_32_obuf), // IO
	.d(d4_32), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_1
(
	.d1(d5_33_obuf), // IO
	.d(d4_33), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_2
(
	.d1(d5_34_obuf), // IO
	.d(d4_34), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_3
(
	.d1(d5_35_obuf), // IO
	.d(d4_35), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_4
(
	.d1(d5_36_obuf), // IO
	.d(d4_36), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_5
(
	.d1(d5_37_obuf), // IO
	.d(d4_37), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_6
(
	.d1(d5_38_obuf), // IO
	.d(d4_38), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);
stlatch d5_from_32_to_39_inst_7
(
	.d1(d5_39_obuf), // IO
	.d(d4_39), // IN
	.clk(clk), // IN
	.en(dinlatch_4)  // IN
);

// DBUS.NET (68) - d5[40-47] : stlatch
stlatch d5_from_40_to_47_inst_0
(
	.d1(d5_40_obuf), // IO
	.d(d4_40), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_1
(
	.d1(d5_41_obuf), // IO
	.d(d4_41), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_2
(
	.d1(d5_42_obuf), // IO
	.d(d4_42), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_3
(
	.d1(d5_43_obuf), // IO
	.d(d4_43), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_4
(
	.d1(d5_44_obuf), // IO
	.d(d4_44), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_5
(
	.d1(d5_45_obuf), // IO
	.d(d4_45), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_6
(
	.d1(d5_46_obuf), // IO
	.d(d4_46), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);
stlatch d5_from_40_to_47_inst_7
(
	.d1(d5_47_obuf), // IO
	.d(d4_47), // IN
	.clk(clk), // IN
	.en(dinlatch_5)  // IN
);

// DBUS.NET (69) - d5[48-55] : stlatch
stlatch d5_from_48_to_55_inst_0
(
	.d1(d5_48_obuf), // IO
	.d(d4_48), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_1
(
	.d1(d5_49_obuf), // IO
	.d(d4_49), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_2
(
	.d1(d5_50_obuf), // IO
	.d(d4_50), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_3
(
	.d1(d5_51_obuf), // IO
	.d(d4_51), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_4
(
	.d1(d5_52_obuf), // IO
	.d(d4_52), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_5
(
	.d1(d5_53_obuf), // IO
	.d(d4_53), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_6
(
	.d1(d5_54_obuf), // IO
	.d(d4_54), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);
stlatch d5_from_48_to_55_inst_7
(
	.d1(d5_55_obuf), // IO
	.d(d4_55), // IN
	.clk(clk), // IN
	.en(dinlatch_6)  // IN
);

// DBUS.NET (70) - d5[56-63] : stlatch
stlatch d5_from_56_to_63_inst_0
(
	.d1(d5_56_obuf), // IO
	.d(d4_56), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_1
(
	.d1(d5_57_obuf), // IO
	.d(d4_57), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_2
(
	.d1(d5_58_obuf), // IO
	.d(d4_58), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_3
(
	.d1(d5_59_obuf), // IO
	.d(d4_59), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_4
(
	.d1(d5_60_obuf), // IO
	.d(d4_60), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_5
(
	.d1(d5_61_obuf), // IO
	.d(d4_61), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_6
(
	.d1(d5_62_obuf), // IO
	.d(d4_62), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);
stlatch d5_from_56_to_63_inst_7
(
	.d1(d5_63_obuf), // IO
	.d(d4_63), // IN
	.clk(clk), // IN
	.en(dinlatch_7)  // IN
);

// DBUS.NET (74) - dout : down
down dout_inst
(
	.din_0(d5_0), // IN
	.din_1(d5_1), // IN
	.din_2(d5_2), // IN
	.din_3(d5_3), // IN
	.din_4(d5_4), // IN
	.din_5(d5_5), // IN
	.din_6(d5_6), // IN
	.din_7(d5_7), // IN
	.din_8(d5_8), // IN
	.din_9(d5_9), // IN
	.din_10(d5_10), // IN
	.din_11(d5_11), // IN
	.din_12(d5_12), // IN
	.din_13(d5_13), // IN
	.din_14(d5_14), // IN
	.din_15(d5_15), // IN
	.din_16(d5_16), // IN
	.din_17(d5_17), // IN
	.din_18(d5_18), // IN
	.din_19(d5_19), // IN
	.din_20(d5_20), // IN
	.din_21(d5_21), // IN
	.din_22(d5_22), // IN
	.din_23(d5_23), // IN
	.din_24(d5_24), // IN
	.din_25(d5_25), // IN
	.din_26(d5_26), // IN
	.din_27(d5_27), // IN
	.din_28(d5_28), // IN
	.din_29(d5_29), // IN
	.din_30(d5_30), // IN
	.din_31(d5_31), // IN
	.din_32(d5_32_obuf), // IN
	.din_33(d5_33_obuf), // IN
	.din_34(d5_34_obuf), // IN
	.din_35(d5_35_obuf), // IN
	.din_36(d5_36_obuf), // IN
	.din_37(d5_37_obuf), // IN
	.din_38(d5_38_obuf), // IN
	.din_39(d5_39_obuf), // IN
	.din_40(d5_40_obuf), // IN
	.din_41(d5_41_obuf), // IN
	.din_42(d5_42_obuf), // IN
	.din_43(d5_43_obuf), // IN
	.din_44(d5_44_obuf), // IN
	.din_45(d5_45_obuf), // IN
	.din_46(d5_46_obuf), // IN
	.din_47(d5_47_obuf), // IN
	.din_48(d5_48_obuf), // IN
	.din_49(d5_49_obuf), // IN
	.din_50(d5_50_obuf), // IN
	.din_51(d5_51_obuf), // IN
	.din_52(d5_52_obuf), // IN
	.din_53(d5_53_obuf), // IN
	.din_54(d5_54_obuf), // IN
	.din_55(d5_55_obuf), // IN
	.din_56(d5_56_obuf), // IN
	.din_57(d5_57_obuf), // IN
	.din_58(d5_58_obuf), // IN
	.din_59(d5_59_obuf), // IN
	.din_60(d5_60_obuf), // IN
	.din_61(d5_61_obuf), // IN
	.din_62(d5_62_obuf), // IN
	.din_63(d5_63_obuf), // IN
	.dmuxd_0(dmuxd_0), // IN
	.dmuxd_1(dmuxd_1), // IN
	.dmuxd_2(dmuxd_2), // IN
	.dout_0(dout_0), // IO
	.dout_1(dout_1), // IO
	.dout_2(dout_2), // IO
	.dout_3(dout_3), // IO
	.dout_4(dout_4), // IO
	.dout_5(dout_5), // IO
	.dout_6(dout_6), // IO
	.dout_7(dout_7), // IO
	.dout_8(dout_8), // IO
	.dout_9(dout_9), // IO
	.dout_10(dout_10), // IO
	.dout_11(dout_11), // IO
	.dout_12(dout_12), // IO
	.dout_13(dout_13), // IO
	.dout_14(dout_14), // IO
	.dout_15(dout_15), // IO
	.dout_16(dout_16_obuf), // IO
	.dout_17(dout_17_obuf), // IO
	.dout_18(dout_18_obuf), // IO
	.dout_19(dout_19_obuf), // IO
	.dout_20(dout_20_obuf), // IO
	.dout_21(dout_21_obuf), // IO
	.dout_22(dout_22_obuf), // IO
	.dout_23(dout_23_obuf), // IO
	.dout_24(dout_24_obuf), // IO
	.dout_25(dout_25_obuf), // IO
	.dout_26(dout_26_obuf), // IO
	.dout_27(dout_27_obuf), // IO
	.dout_28(dout_28_obuf), // IO
	.dout_29(dout_29_obuf), // IO
	.dout_30(dout_30_obuf), // IO
	.dout_31(dout_31_obuf)  // IO
);

// DBUS.NET (78) - d[0-31] : nivm
assign d_0_obuf = dout_0;
assign d_1_obuf = dout_1;
assign d_2_obuf = dout_2;
assign d_3_obuf = dout_3;
assign d_4_obuf = dout_4;
assign d_5_obuf = dout_5;
assign d_6_obuf = dout_6;
assign d_7_obuf = dout_7;
assign d_8_obuf = dout_8;
assign d_9_obuf = dout_9;
assign d_10_obuf = dout_10;
assign d_11_obuf = dout_11;
assign d_12_obuf = dout_12;
assign d_13_obuf = dout_13;
assign d_14_obuf = dout_14;
assign d_15_obuf = dout_15;
assign d_16_obuf = dout_16_obuf;
assign d_17_obuf = dout_17_obuf;
assign d_18_obuf = dout_18_obuf;
assign d_19_obuf = dout_19_obuf;
assign d_20_obuf = dout_20_obuf;
assign d_21_obuf = dout_21_obuf;
assign d_22_obuf = dout_22_obuf;
assign d_23_obuf = dout_23_obuf;
assign d_24_obuf = dout_24_obuf;
assign d_25_obuf = dout_25_obuf;
assign d_26_obuf = dout_26_obuf;
assign d_27_obuf = dout_27_obuf;
assign d_28_obuf = dout_28_obuf;
assign d_29_obuf = dout_29_obuf;
assign d_30_obuf = dout_30_obuf;
assign d_31_obuf = dout_31_obuf;

// DBUS.NET (79) - d[32-63] : nivm
assign d_32_obuf = d5_32_obuf;
assign d_33_obuf = d5_33_obuf;
assign d_34_obuf = d5_34_obuf;
assign d_35_obuf = d5_35_obuf;
assign d_36_obuf = d5_36_obuf;
assign d_37_obuf = d5_37_obuf;
assign d_38_obuf = d5_38_obuf;
assign d_39_obuf = d5_39_obuf;
assign d_40_obuf = d5_40_obuf;
assign d_41_obuf = d5_41_obuf;
assign d_42_obuf = d5_42_obuf;
assign d_43_obuf = d5_43_obuf;
assign d_44_obuf = d5_44_obuf;
assign d_45_obuf = d5_45_obuf;
assign d_46_obuf = d5_46_obuf;
assign d_47_obuf = d5_47_obuf;
assign d_48_obuf = d5_48_obuf;
assign d_49_obuf = d5_49_obuf;
assign d_50_obuf = d5_50_obuf;
assign d_51_obuf = d5_51_obuf;
assign d_52_obuf = d5_52_obuf;
assign d_53_obuf = d5_53_obuf;
assign d_54_obuf = d5_54_obuf;
assign d_55_obuf = d5_55_obuf;
assign d_56_obuf = d5_56_obuf;
assign d_57_obuf = d5_57_obuf;
assign d_58_obuf = d5_58_obuf;
assign d_59_obuf = d5_59_obuf;
assign d_60_obuf = d5_60_obuf;
assign d_61_obuf = d5_61_obuf;
assign d_62_obuf = d5_62_obuf;
assign d_63_obuf = d5_63_obuf;

// DBUS.NET (83) - vd[0-5] : mx2
mx2 vd_from_0_to_5_inst_0
(
	.z(vd_0), // OUT
	.a0(dout_0), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);
mx2 vd_from_0_to_5_inst_1
(
	.z(vd_1), // OUT
	.a0(dout_1), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);
mx2 vd_from_0_to_5_inst_2
(
	.z(vd_2), // OUT
	.a0(dout_2), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);
mx2 vd_from_0_to_5_inst_3
(
	.z(vd_3), // OUT
	.a0(dout_3), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);
mx2 vd_from_0_to_5_inst_4
(
	.z(vd_4), // OUT
	.a0(dout_4), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);
mx2 vd_from_0_to_5_inst_5
(
	.z(vd_5), // OUT
	.a0(dout_5), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);

// DBUS.NET (84) - vd[6] : mx2
mx2 vd_index_6_inst
(
	.z(vd_6), // OUT
	.a0(dout_6), // IN
	.a1(vcc), // IN
	.s(ourack)  // IN
);

// DBUS.NET (85) - vd[7] : mx2
mx2 vd_index_7_inst
(
	.z(vd_7), // OUT
	.a0(dout_7), // IN
	.a1(gnd), // IN
	.s(ourack)  // IN
);

// DBUS.NET (87) - gnd : tie0
assign gnd = 1'b0;

// DBUS.NET (88) - tie : tie1
assign vcc = 1'b1;

// DBUS.NET (92) - dob[0-7] : nivu2
assign dob_0_obuf = vd_0;
assign dob_1_obuf = vd_1;
assign dob_2_obuf = vd_2;
assign dob_3_obuf = vd_3;
assign dob_4_obuf = vd_4;
assign dob_5_obuf = vd_5;
assign dob_6_obuf = vd_6;
assign dob_7_obuf = vd_7;

// DBUS.NET (93) - dob[8-9] : nivu2
assign dob_8_obuf = dout_8;
assign dob_9_obuf = dout_9;

// DBUS.NET (94) - dob[10-15] : nivu
assign dob_10_obuf = dout_10;
assign dob_11_obuf = dout_11;
assign dob_12_obuf = dout_12;
assign dob_13_obuf = dout_13;
assign dob_14_obuf = dout_14;
assign dob_15_obuf = dout_15;

// DBUS.NET (95) - dp[0-7] : niv
assign dp_0_obuf = vd_0;
assign dp_1_obuf = vd_1;
assign dp_2_obuf = vd_2;
assign dp_3_obuf = vd_3;
assign dp_4_obuf = vd_4;
assign dp_5_obuf = vd_5;
assign dp_6_obuf = vd_6;
assign dp_7_obuf = vd_7;

// DBUS.NET (96) - dp[8-15] : niv
assign dp_8_obuf = dout_8;
assign dp_9_obuf = dout_9;
assign dp_10_obuf = dout_10;
assign dp_11_obuf = dout_11;
assign dp_12_obuf = dout_12;
assign dp_13_obuf = dout_13;
assign dp_14_obuf = dout_14;
assign dp_15_obuf = dout_15;
endmodule
