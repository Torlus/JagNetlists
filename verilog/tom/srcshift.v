`include "defs.v"

module srcshift
(
	output[0:31] srcd_0;
	output[0:31] srcd_1;
	input big_pix,
	input[0:31] srcd1lo;
	input[0:31] srcd1hi;
	input[0:31] srcd2lo;
	input[0:31] srcd2hi;
	input srcshift_0,
	input srcshift_1,
	input srcshift_2,
	input srcshift_3,
	input srcshift_4,
	input srcshift_5
);
wire shsrc_0;
wire shsrc_1;
wire shsrc_2;
wire shsrc_3;
wire shsrc_4;
wire shsrc_5;
wire shsrc_6;
wire shsrc_7;
wire shsrc_8;
wire shsrc_9;
wire shsrc_10;
wire shsrc_11;
wire shsrc_12;
wire shsrc_13;
wire shsrc_14;
wire shsrc_15;
wire shsrc_16;
wire shsrc_17;
wire shsrc_18;
wire shsrc_19;
wire shsrc_20;
wire shsrc_21;
wire shsrc_22;
wire shsrc_23;
wire shsrc_24;
wire shsrc_25;
wire shsrc_26;
wire shsrc_27;
wire shsrc_28;
wire shsrc_29;
wire shsrc_30;
wire shsrc_31;
wire shsrc_32;
wire shsrc_33;
wire shsrc_34;
wire shsrc_35;
wire shsrc_36;
wire shsrc_37;
wire shsrc_38;
wire shsrc_39;
wire shsrc_40;
wire shsrc_41;
wire shsrc_42;
wire shsrc_43;
wire shsrc_44;
wire shsrc_45;
wire shsrc_46;
wire shsrc_47;
wire shsrc_48;
wire shsrc_49;
wire shsrc_50;
wire shsrc_51;
wire shsrc_52;
wire shsrc_53;
wire shsrc_54;
wire shsrc_55;
wire shsrc_56;
wire shsrc_57;
wire shsrc_58;
wire shsrc_59;
wire shsrc_60;
wire shsrc_61;
wire shsrc_62;
wire shsrc_63;
wire shsrc_64;
wire shsrc_65;
wire shsrc_66;
wire shsrc_67;
wire shsrc_68;
wire shsrc_69;
wire shsrc_70;
wire shsrc_71;
wire shsrc_72;
wire shsrc_73;
wire shsrc_74;
wire shsrc_75;
wire shsrc_76;
wire shsrc_77;
wire shsrc_78;
wire shsrc_79;
wire shsrc_80;
wire shsrc_81;
wire shsrc_82;
wire shsrc_83;
wire shsrc_84;
wire shsrc_85;
wire shsrc_86;
wire shsrc_87;
wire shsrc_88;
wire shsrc_89;
wire shsrc_90;
wire shsrc_91;
wire shsrc_92;
wire shsrc_93;
wire shsrc_94;
wire shsrc_95;
wire shsrc_96;
wire shsrc_97;
wire shsrc_98;
wire shsrc_99;
wire shsrc_100;
wire shsrc_101;
wire shsrc_102;
wire shsrc_103;
wire shsrc_104;
wire shsrc_105;
wire shsrc_106;
wire shsrc_107;
wire shsrc_108;
wire shsrc_109;
wire shsrc_110;
wire shsrc_111;
wire shsrc_112;
wire shsrc_113;
wire shsrc_114;
wire shsrc_115;
wire shsrc_116;
wire shsrc_117;
wire shsrc_118;
wire shsrc_119;
wire shsrc_120;
wire shsrc_121;
wire shsrc_122;
wire shsrc_123;
wire shsrc_124;
wire shsrc_125;
wire shsrc_126;
wire shsrc_127;
wire srcshift_n_0;
wire srcshift_n_1;
wire srcshift_n_2;
wire srcshift_n_3;
wire srcshift_n_4;
wire srcshift_n_5;
wire besh_1;
wire bec_1;
wire besh_2;
wire besh_4;
wire bec_4;
wire besh_5;
wire bec_5;
wire besh_6;
wire shift_0;
wire shift_1;
wire shift_2;
wire shiftt_3;
wire shiftt_4;
wire shiftt_5;
wire shiftt_6;
wire shift_3;
wire shift_4;
wire shift_5;
wire shift_6;
wire onep_8;
wire onep_9;
wire onep_10;
wire onep_11;
wire onep_12;
wire onep_13;
wire onep_14;
wire onep_15;
wire onep_16;
wire onep_17;
wire onep_18;
wire onep_19;
wire onep_20;
wire onep_21;
wire onep_22;
wire onep_23;
wire onep_24;
wire onep_25;
wire onep_26;
wire onep_27;
wire onep_28;
wire onep_29;
wire onep_30;
wire onep_31;
wire onep_32;
wire onep_33;
wire onep_34;
wire onep_35;
wire onep_36;
wire onep_37;
wire onep_38;
wire onep_39;
wire onep_40;
wire onep_41;
wire onep_42;
wire onep_43;
wire onep_44;
wire onep_45;
wire onep_46;
wire onep_47;
wire onep_48;
wire onep_49;
wire onep_50;
wire onep_51;
wire onep_52;
wire onep_53;
wire onep_54;
wire onep_55;
wire onep_56;
wire onep_57;
wire onep_58;
wire onep_59;
wire onep_60;
wire onep_61;
wire onep_62;
wire onep_63;
wire onep_64;
wire onep_65;
wire onep_66;
wire onep_67;
wire onep_68;
wire onep_69;
wire onep_70;
wire onep_71;
wire onep_72;
wire onep_73;
wire onep_74;
wire onep_75;
wire onep_76;
wire onep_77;
wire onep_78;
wire onep_79;
wire onep_80;
wire onep_81;
wire onep_82;
wire onep_83;
wire onep_84;
wire onep_85;
wire onep_86;
wire onep_87;
wire onep_88;
wire onep_89;
wire onep_90;
wire onep_91;
wire onep_92;
wire onep_93;
wire onep_94;
wire onep_95;
wire onep_96;
wire onep_97;
wire onep_98;
wire onep_99;
wire onep_100;
wire onep_101;
wire onep_102;
wire onep_103;
wire onep_104;
wire onep_105;
wire onep_106;
wire onep_107;
wire onep_108;
wire onep_109;
wire onep_110;
wire onep_111;
wire onep_112;
wire onep_113;
wire onep_114;
wire onep_115;
wire onep_116;
wire onep_117;
wire onep_118;
wire onep_119;
wire onep_120;
wire onep_121;
wire onep_122;
wire onep_123;
wire onep_124;
wire onep_125;
wire onep_126;
wire onep_127;
wire onel_40;
wire onel_41;
wire onel_42;
wire onel_43;
wire onel_44;
wire onel_45;
wire onel_46;
wire onel_47;
wire onel_48;
wire onel_49;
wire onel_50;
wire onel_51;
wire onel_52;
wire onel_53;
wire onel_54;
wire onel_55;
wire onel_56;
wire onel_57;
wire onel_58;
wire onel_59;
wire onel_60;
wire onel_61;
wire onel_62;
wire onel_63;
wire onel_64;
wire onel_65;
wire onel_66;
wire onel_67;
wire onel_68;
wire onel_69;
wire onel_70;
wire onel_71;
wire onel_72;
wire onel_73;
wire onel_74;
wire onel_75;
wire onel_76;
wire onel_77;
wire onel_78;
wire onel_79;
wire onel_80;
wire onel_81;
wire onel_82;
wire onel_83;
wire onel_84;
wire onel_85;
wire onel_86;
wire onel_87;
wire onel_88;
wire onel_89;
wire onel_90;
wire onel_91;
wire onel_92;
wire onel_93;
wire onel_94;
wire onel_95;
wire onel_96;
wire onel_97;
wire onel_98;
wire onel_99;
wire onel_100;
wire onel_101;
wire onel_102;
wire onel_103;
wire onel_104;
wire onel_105;
wire onel_106;
wire onel_107;
wire onel_108;
wire onel_109;
wire onel_110;
wire onel_111;
wire onel_112;
wire onel_113;
wire onel_114;
wire onel_115;
wire onel_116;
wire onel_117;
wire onel_118;
wire onel_119;
wire onel_120;
wire onel_121;
wire onel_122;
wire onel_123;
wire onel_124;
wire onel_125;
wire onel_126;
wire onel_127;
wire onew_56;
wire onew_57;
wire onew_58;
wire onew_59;
wire onew_60;
wire onew_61;
wire onew_62;
wire onew_63;
wire onew_64;
wire onew_65;
wire onew_66;
wire onew_67;
wire onew_68;
wire onew_69;
wire onew_70;
wire onew_71;
wire onew_72;
wire onew_73;
wire onew_74;
wire onew_75;
wire onew_76;
wire onew_77;
wire onew_78;
wire onew_79;
wire onew_80;
wire onew_81;
wire onew_82;
wire onew_83;
wire onew_84;
wire onew_85;
wire onew_86;
wire onew_87;
wire onew_88;
wire onew_89;
wire onew_90;
wire onew_91;
wire onew_92;
wire onew_93;
wire onew_94;
wire onew_95;
wire onew_96;
wire onew_97;
wire onew_98;
wire onew_99;
wire onew_100;
wire onew_101;
wire onew_102;
wire onew_103;
wire onew_104;
wire onew_105;
wire onew_106;
wire onew_107;
wire onew_108;
wire onew_109;
wire onew_110;
wire onew_111;
wire onew_112;
wire onew_113;
wire onew_114;
wire onew_115;
wire onew_116;
wire onew_117;
wire onew_118;
wire onew_119;
wire onew_120;
wire onew_121;
wire onew_122;
wire onew_123;
wire onew_124;
wire onew_125;
wire onew_126;
wire onew_127;
wire oneb_64;
wire oneb_65;
wire oneb_66;
wire oneb_67;
wire oneb_68;
wire oneb_69;
wire oneb_70;
wire oneb_71;
wire oneb_72;
wire oneb_73;
wire oneb_74;
wire oneb_75;
wire oneb_76;
wire oneb_77;
wire oneb_78;
wire oneb_79;
wire oneb_80;
wire oneb_81;
wire oneb_82;
wire oneb_83;
wire oneb_84;
wire oneb_85;
wire oneb_86;
wire oneb_87;
wire oneb_88;
wire oneb_89;
wire oneb_90;
wire oneb_91;
wire oneb_92;
wire oneb_93;
wire oneb_94;
wire oneb_95;
wire oneb_96;
wire oneb_97;
wire oneb_98;
wire oneb_99;
wire oneb_100;
wire oneb_101;
wire oneb_102;
wire oneb_103;
wire oneb_104;
wire oneb_105;
wire oneb_106;
wire oneb_107;
wire oneb_108;
wire oneb_109;
wire oneb_110;
wire oneb_111;
wire oneb_112;
wire oneb_113;
wire oneb_114;
wire oneb_115;
wire oneb_116;
wire oneb_117;
wire oneb_118;
wire oneb_119;
wire oneb_120;
wire oneb_121;
wire oneb_122;
wire oneb_123;
wire oneb_124;
wire oneb_125;
wire oneb_126;
wire oneb_127;
wire onen_64;
wire onen_65;
wire onen_66;
wire onen_67;
wire onen_68;
wire onen_69;
wire onen_70;
wire onen_71;
wire onet_64;
wire onet_65;
wire onet_66;
wire onet_67;
wire onet_68;
wire onet_69;
wire onet_70;
wire onet_71;
wire oneo_64;
wire oneo_65;
wire oneo_66;
wire oneo_67;
wire oneo_68;
wire oneo_69;
wire oneo_70;
wire oneo_71;

// SRCSHIFT.NET (32) - unshsrc[0-31] : join
assign shsrc_0 = srcd2lo[0];
assign shsrc_1 = srcd2lo[1];
assign shsrc_2 = srcd2lo[2];
assign shsrc_3 = srcd2lo[3];
assign shsrc_4 = srcd2lo[4];
assign shsrc_5 = srcd2lo[5];
assign shsrc_6 = srcd2lo[6];
assign shsrc_7 = srcd2lo[7];
assign shsrc_8 = srcd2lo[8];
assign shsrc_9 = srcd2lo[9];
assign shsrc_10 = srcd2lo[10];
assign shsrc_11 = srcd2lo[11];
assign shsrc_12 = srcd2lo[12];
assign shsrc_13 = srcd2lo[13];
assign shsrc_14 = srcd2lo[14];
assign shsrc_15 = srcd2lo[15];
assign shsrc_16 = srcd2lo[16];
assign shsrc_17 = srcd2lo[17];
assign shsrc_18 = srcd2lo[18];
assign shsrc_19 = srcd2lo[19];
assign shsrc_20 = srcd2lo[20];
assign shsrc_21 = srcd2lo[21];
assign shsrc_22 = srcd2lo[22];
assign shsrc_23 = srcd2lo[23];
assign shsrc_24 = srcd2lo[24];
assign shsrc_25 = srcd2lo[25];
assign shsrc_26 = srcd2lo[26];
assign shsrc_27 = srcd2lo[27];
assign shsrc_28 = srcd2lo[28];
assign shsrc_29 = srcd2lo[29];
assign shsrc_30 = srcd2lo[30];
assign shsrc_31 = srcd2lo[31];

// SRCSHIFT.NET (33) - unshsrc[32-63] : join
assign shsrc_32 = srcd2hi[0];
assign shsrc_33 = srcd2hi[1];
assign shsrc_34 = srcd2hi[2];
assign shsrc_35 = srcd2hi[3];
assign shsrc_36 = srcd2hi[4];
assign shsrc_37 = srcd2hi[5];
assign shsrc_38 = srcd2hi[6];
assign shsrc_39 = srcd2hi[7];
assign shsrc_40 = srcd2hi[8];
assign shsrc_41 = srcd2hi[9];
assign shsrc_42 = srcd2hi[10];
assign shsrc_43 = srcd2hi[11];
assign shsrc_44 = srcd2hi[12];
assign shsrc_45 = srcd2hi[13];
assign shsrc_46 = srcd2hi[14];
assign shsrc_47 = srcd2hi[15];
assign shsrc_48 = srcd2hi[16];
assign shsrc_49 = srcd2hi[17];
assign shsrc_50 = srcd2hi[18];
assign shsrc_51 = srcd2hi[19];
assign shsrc_52 = srcd2hi[20];
assign shsrc_53 = srcd2hi[21];
assign shsrc_54 = srcd2hi[22];
assign shsrc_55 = srcd2hi[23];
assign shsrc_56 = srcd2hi[24];
assign shsrc_57 = srcd2hi[25];
assign shsrc_58 = srcd2hi[26];
assign shsrc_59 = srcd2hi[27];
assign shsrc_60 = srcd2hi[28];
assign shsrc_61 = srcd2hi[29];
assign shsrc_62 = srcd2hi[30];
assign shsrc_63 = srcd2hi[31];

// SRCSHIFT.NET (34) - unshsrc[64-95] : join
assign shsrc_64 = srcd1lo[0];
assign shsrc_65 = srcd1lo[1];
assign shsrc_66 = srcd1lo[2];
assign shsrc_67 = srcd1lo[3];
assign shsrc_68 = srcd1lo[4];
assign shsrc_69 = srcd1lo[5];
assign shsrc_70 = srcd1lo[6];
assign shsrc_71 = srcd1lo[7];
assign shsrc_72 = srcd1lo[8];
assign shsrc_73 = srcd1lo[9];
assign shsrc_74 = srcd1lo[10];
assign shsrc_75 = srcd1lo[11];
assign shsrc_76 = srcd1lo[12];
assign shsrc_77 = srcd1lo[13];
assign shsrc_78 = srcd1lo[14];
assign shsrc_79 = srcd1lo[15];
assign shsrc_80 = srcd1lo[16];
assign shsrc_81 = srcd1lo[17];
assign shsrc_82 = srcd1lo[18];
assign shsrc_83 = srcd1lo[19];
assign shsrc_84 = srcd1lo[20];
assign shsrc_85 = srcd1lo[21];
assign shsrc_86 = srcd1lo[22];
assign shsrc_87 = srcd1lo[23];
assign shsrc_88 = srcd1lo[24];
assign shsrc_89 = srcd1lo[25];
assign shsrc_90 = srcd1lo[26];
assign shsrc_91 = srcd1lo[27];
assign shsrc_92 = srcd1lo[28];
assign shsrc_93 = srcd1lo[29];
assign shsrc_94 = srcd1lo[30];
assign shsrc_95 = srcd1lo[31];

// SRCSHIFT.NET (35) - unshsrc[96-127] : join
assign shsrc_96 = srcd1hi[0];
assign shsrc_97 = srcd1hi[1];
assign shsrc_98 = srcd1hi[2];
assign shsrc_99 = srcd1hi[3];
assign shsrc_100 = srcd1hi[4];
assign shsrc_101 = srcd1hi[5];
assign shsrc_102 = srcd1hi[6];
assign shsrc_103 = srcd1hi[7];
assign shsrc_104 = srcd1hi[8];
assign shsrc_105 = srcd1hi[9];
assign shsrc_106 = srcd1hi[10];
assign shsrc_107 = srcd1hi[11];
assign shsrc_108 = srcd1hi[12];
assign shsrc_109 = srcd1hi[13];
assign shsrc_110 = srcd1hi[14];
assign shsrc_111 = srcd1hi[15];
assign shsrc_112 = srcd1hi[16];
assign shsrc_113 = srcd1hi[17];
assign shsrc_114 = srcd1hi[18];
assign shsrc_115 = srcd1hi[19];
assign shsrc_116 = srcd1hi[20];
assign shsrc_117 = srcd1hi[21];
assign shsrc_118 = srcd1hi[22];
assign shsrc_119 = srcd1hi[23];
assign shsrc_120 = srcd1hi[24];
assign shsrc_121 = srcd1hi[25];
assign shsrc_122 = srcd1hi[26];
assign shsrc_123 = srcd1hi[27];
assign shsrc_124 = srcd1hi[28];
assign shsrc_125 = srcd1hi[29];
assign shsrc_126 = srcd1hi[30];
assign shsrc_127 = srcd1hi[31];

// SRCSHIFT.NET (37) - srcshift\[0-5] : iv
assign srcshift_n_0 = ~srcshift_0;
assign srcshift_n_1 = ~srcshift_1;
assign srcshift_n_2 = ~srcshift_2;
assign srcshift_n_3 = ~srcshift_3;
assign srcshift_n_4 = ~srcshift_4;
assign srcshift_n_5 = ~srcshift_5;

// SRCSHIFT.NET (41) - besh[1] : ha1
ha1 besh_index_1_inst
(
	.s(besh_1), // OUT
	.co(bec_1), // OUT
	.a(srcshift_n_0), // IN
	.b(srcshift_n_1)  // IN
);

// SRCSHIFT.NET (43) - besh[2] : eo
assign besh_2 = bec_1 ^ srcshift_n_2;

// SRCSHIFT.NET (48) - besh[4] : ha1
ha1 besh_index_4_inst
(
	.s(besh_4), // OUT
	.co(bec_4), // OUT
	.a(srcshift_n_3), // IN
	.b(srcshift_n_4)  // IN
);

// SRCSHIFT.NET (50) - besh[5] : ha1
ha1 besh_index_5_inst
(
	.s(besh_5), // OUT
	.co(bec_5), // OUT
	.a(bec_4), // IN
	.b(srcshift_n_5)  // IN
);

// SRCSHIFT.NET (51) - besh[6] : iv
assign besh_6 = ~bec_5;

// SRCSHIFT.NET (53) - shift[0] : nivm
assign shift_0 = srcshift_0;

// SRCSHIFT.NET (54) - shift[1] : mx2m
mx2 shift_index_1_inst
(
	.z(shift_1), // OUT
	.a0(srcshift_1), // IN
	.a1(besh_1), // IN
	.s(big_pix)  // IN
);

// SRCSHIFT.NET (55) - shift[2] : mx2m
mx2 shift_index_2_inst
(
	.z(shift_2), // OUT
	.a0(srcshift_2), // IN
	.a1(besh_2), // IN
	.s(big_pix)  // IN
);

// SRCSHIFT.NET (56) - shiftt[3] : niv
assign shiftt_3 = srcshift_3;

// SRCSHIFT.NET (57) - shiftt[4] : mx2
mx2 shiftt_index_4_inst
(
	.z(shiftt_4), // OUT
	.a0(srcshift_4), // IN
	.a1(besh_4), // IN
	.s(big_pix)  // IN
);

// SRCSHIFT.NET (58) - shiftt[5] : mx2
mx2 shiftt_index_5_inst
(
	.z(shiftt_5), // OUT
	.a0(srcshift_5), // IN
	.a1(besh_5), // IN
	.s(big_pix)  // IN
);

// SRCSHIFT.NET (59) - shiftt[6] : an2
assign shiftt_6 = besh_6 & big_pix;

// SRCSHIFT.NET (61) - shift[3] : nivu2
assign shift_3 = shiftt_3;

// SRCSHIFT.NET (62) - shift[4] : nivu2
assign shift_4 = shiftt_4;

// SRCSHIFT.NET (63) - shift[5] : nivu3
assign shift_5 = shiftt_5;

// SRCSHIFT.NET (64) - shift[6] : nivu3
assign shift_6 = shiftt_6;

// SRCSHIFT.NET (68) - onep[8-63] : mx2
mx2 onep_from_8_to_63_inst_0
(
	.z(onep_8), // OUT
	.a0(shsrc_8), // IN
	.a1(shsrc_72), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_1
(
	.z(onep_9), // OUT
	.a0(shsrc_9), // IN
	.a1(shsrc_73), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_2
(
	.z(onep_10), // OUT
	.a0(shsrc_10), // IN
	.a1(shsrc_74), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_3
(
	.z(onep_11), // OUT
	.a0(shsrc_11), // IN
	.a1(shsrc_75), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_4
(
	.z(onep_12), // OUT
	.a0(shsrc_12), // IN
	.a1(shsrc_76), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_5
(
	.z(onep_13), // OUT
	.a0(shsrc_13), // IN
	.a1(shsrc_77), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_6
(
	.z(onep_14), // OUT
	.a0(shsrc_14), // IN
	.a1(shsrc_78), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_7
(
	.z(onep_15), // OUT
	.a0(shsrc_15), // IN
	.a1(shsrc_79), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_8
(
	.z(onep_16), // OUT
	.a0(shsrc_16), // IN
	.a1(shsrc_80), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_9
(
	.z(onep_17), // OUT
	.a0(shsrc_17), // IN
	.a1(shsrc_81), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_10
(
	.z(onep_18), // OUT
	.a0(shsrc_18), // IN
	.a1(shsrc_82), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_11
(
	.z(onep_19), // OUT
	.a0(shsrc_19), // IN
	.a1(shsrc_83), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_12
(
	.z(onep_20), // OUT
	.a0(shsrc_20), // IN
	.a1(shsrc_84), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_13
(
	.z(onep_21), // OUT
	.a0(shsrc_21), // IN
	.a1(shsrc_85), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_14
(
	.z(onep_22), // OUT
	.a0(shsrc_22), // IN
	.a1(shsrc_86), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_15
(
	.z(onep_23), // OUT
	.a0(shsrc_23), // IN
	.a1(shsrc_87), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_16
(
	.z(onep_24), // OUT
	.a0(shsrc_24), // IN
	.a1(shsrc_88), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_17
(
	.z(onep_25), // OUT
	.a0(shsrc_25), // IN
	.a1(shsrc_89), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_18
(
	.z(onep_26), // OUT
	.a0(shsrc_26), // IN
	.a1(shsrc_90), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_19
(
	.z(onep_27), // OUT
	.a0(shsrc_27), // IN
	.a1(shsrc_91), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_20
(
	.z(onep_28), // OUT
	.a0(shsrc_28), // IN
	.a1(shsrc_92), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_21
(
	.z(onep_29), // OUT
	.a0(shsrc_29), // IN
	.a1(shsrc_93), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_22
(
	.z(onep_30), // OUT
	.a0(shsrc_30), // IN
	.a1(shsrc_94), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_23
(
	.z(onep_31), // OUT
	.a0(shsrc_31), // IN
	.a1(shsrc_95), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_24
(
	.z(onep_32), // OUT
	.a0(shsrc_32), // IN
	.a1(shsrc_96), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_25
(
	.z(onep_33), // OUT
	.a0(shsrc_33), // IN
	.a1(shsrc_97), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_26
(
	.z(onep_34), // OUT
	.a0(shsrc_34), // IN
	.a1(shsrc_98), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_27
(
	.z(onep_35), // OUT
	.a0(shsrc_35), // IN
	.a1(shsrc_99), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_28
(
	.z(onep_36), // OUT
	.a0(shsrc_36), // IN
	.a1(shsrc_100), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_29
(
	.z(onep_37), // OUT
	.a0(shsrc_37), // IN
	.a1(shsrc_101), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_30
(
	.z(onep_38), // OUT
	.a0(shsrc_38), // IN
	.a1(shsrc_102), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_31
(
	.z(onep_39), // OUT
	.a0(shsrc_39), // IN
	.a1(shsrc_103), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_32
(
	.z(onep_40), // OUT
	.a0(shsrc_40), // IN
	.a1(shsrc_104), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_33
(
	.z(onep_41), // OUT
	.a0(shsrc_41), // IN
	.a1(shsrc_105), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_34
(
	.z(onep_42), // OUT
	.a0(shsrc_42), // IN
	.a1(shsrc_106), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_35
(
	.z(onep_43), // OUT
	.a0(shsrc_43), // IN
	.a1(shsrc_107), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_36
(
	.z(onep_44), // OUT
	.a0(shsrc_44), // IN
	.a1(shsrc_108), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_37
(
	.z(onep_45), // OUT
	.a0(shsrc_45), // IN
	.a1(shsrc_109), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_38
(
	.z(onep_46), // OUT
	.a0(shsrc_46), // IN
	.a1(shsrc_110), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_39
(
	.z(onep_47), // OUT
	.a0(shsrc_47), // IN
	.a1(shsrc_111), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_40
(
	.z(onep_48), // OUT
	.a0(shsrc_48), // IN
	.a1(shsrc_112), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_41
(
	.z(onep_49), // OUT
	.a0(shsrc_49), // IN
	.a1(shsrc_113), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_42
(
	.z(onep_50), // OUT
	.a0(shsrc_50), // IN
	.a1(shsrc_114), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_43
(
	.z(onep_51), // OUT
	.a0(shsrc_51), // IN
	.a1(shsrc_115), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_44
(
	.z(onep_52), // OUT
	.a0(shsrc_52), // IN
	.a1(shsrc_116), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_45
(
	.z(onep_53), // OUT
	.a0(shsrc_53), // IN
	.a1(shsrc_117), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_46
(
	.z(onep_54), // OUT
	.a0(shsrc_54), // IN
	.a1(shsrc_118), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_47
(
	.z(onep_55), // OUT
	.a0(shsrc_55), // IN
	.a1(shsrc_119), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_48
(
	.z(onep_56), // OUT
	.a0(shsrc_56), // IN
	.a1(shsrc_120), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_49
(
	.z(onep_57), // OUT
	.a0(shsrc_57), // IN
	.a1(shsrc_121), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_50
(
	.z(onep_58), // OUT
	.a0(shsrc_58), // IN
	.a1(shsrc_122), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_51
(
	.z(onep_59), // OUT
	.a0(shsrc_59), // IN
	.a1(shsrc_123), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_52
(
	.z(onep_60), // OUT
	.a0(shsrc_60), // IN
	.a1(shsrc_124), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_53
(
	.z(onep_61), // OUT
	.a0(shsrc_61), // IN
	.a1(shsrc_125), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_54
(
	.z(onep_62), // OUT
	.a0(shsrc_62), // IN
	.a1(shsrc_126), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_8_to_63_inst_55
(
	.z(onep_63), // OUT
	.a0(shsrc_63), // IN
	.a1(shsrc_127), // IN
	.s(shift_6)  // IN
);

// SRCSHIFT.NET (70) - onep[64-127] : mx2
mx2 onep_from_64_to_127_inst_0
(
	.z(onep_64), // OUT
	.a0(shsrc_64), // IN
	.a1(shsrc_0), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_1
(
	.z(onep_65), // OUT
	.a0(shsrc_65), // IN
	.a1(shsrc_1), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_2
(
	.z(onep_66), // OUT
	.a0(shsrc_66), // IN
	.a1(shsrc_2), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_3
(
	.z(onep_67), // OUT
	.a0(shsrc_67), // IN
	.a1(shsrc_3), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_4
(
	.z(onep_68), // OUT
	.a0(shsrc_68), // IN
	.a1(shsrc_4), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_5
(
	.z(onep_69), // OUT
	.a0(shsrc_69), // IN
	.a1(shsrc_5), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_6
(
	.z(onep_70), // OUT
	.a0(shsrc_70), // IN
	.a1(shsrc_6), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_7
(
	.z(onep_71), // OUT
	.a0(shsrc_71), // IN
	.a1(shsrc_7), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_8
(
	.z(onep_72), // OUT
	.a0(shsrc_72), // IN
	.a1(shsrc_8), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_9
(
	.z(onep_73), // OUT
	.a0(shsrc_73), // IN
	.a1(shsrc_9), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_10
(
	.z(onep_74), // OUT
	.a0(shsrc_74), // IN
	.a1(shsrc_10), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_11
(
	.z(onep_75), // OUT
	.a0(shsrc_75), // IN
	.a1(shsrc_11), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_12
(
	.z(onep_76), // OUT
	.a0(shsrc_76), // IN
	.a1(shsrc_12), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_13
(
	.z(onep_77), // OUT
	.a0(shsrc_77), // IN
	.a1(shsrc_13), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_14
(
	.z(onep_78), // OUT
	.a0(shsrc_78), // IN
	.a1(shsrc_14), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_15
(
	.z(onep_79), // OUT
	.a0(shsrc_79), // IN
	.a1(shsrc_15), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_16
(
	.z(onep_80), // OUT
	.a0(shsrc_80), // IN
	.a1(shsrc_16), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_17
(
	.z(onep_81), // OUT
	.a0(shsrc_81), // IN
	.a1(shsrc_17), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_18
(
	.z(onep_82), // OUT
	.a0(shsrc_82), // IN
	.a1(shsrc_18), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_19
(
	.z(onep_83), // OUT
	.a0(shsrc_83), // IN
	.a1(shsrc_19), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_20
(
	.z(onep_84), // OUT
	.a0(shsrc_84), // IN
	.a1(shsrc_20), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_21
(
	.z(onep_85), // OUT
	.a0(shsrc_85), // IN
	.a1(shsrc_21), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_22
(
	.z(onep_86), // OUT
	.a0(shsrc_86), // IN
	.a1(shsrc_22), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_23
(
	.z(onep_87), // OUT
	.a0(shsrc_87), // IN
	.a1(shsrc_23), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_24
(
	.z(onep_88), // OUT
	.a0(shsrc_88), // IN
	.a1(shsrc_24), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_25
(
	.z(onep_89), // OUT
	.a0(shsrc_89), // IN
	.a1(shsrc_25), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_26
(
	.z(onep_90), // OUT
	.a0(shsrc_90), // IN
	.a1(shsrc_26), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_27
(
	.z(onep_91), // OUT
	.a0(shsrc_91), // IN
	.a1(shsrc_27), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_28
(
	.z(onep_92), // OUT
	.a0(shsrc_92), // IN
	.a1(shsrc_28), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_29
(
	.z(onep_93), // OUT
	.a0(shsrc_93), // IN
	.a1(shsrc_29), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_30
(
	.z(onep_94), // OUT
	.a0(shsrc_94), // IN
	.a1(shsrc_30), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_31
(
	.z(onep_95), // OUT
	.a0(shsrc_95), // IN
	.a1(shsrc_31), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_32
(
	.z(onep_96), // OUT
	.a0(shsrc_96), // IN
	.a1(shsrc_32), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_33
(
	.z(onep_97), // OUT
	.a0(shsrc_97), // IN
	.a1(shsrc_33), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_34
(
	.z(onep_98), // OUT
	.a0(shsrc_98), // IN
	.a1(shsrc_34), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_35
(
	.z(onep_99), // OUT
	.a0(shsrc_99), // IN
	.a1(shsrc_35), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_36
(
	.z(onep_100), // OUT
	.a0(shsrc_100), // IN
	.a1(shsrc_36), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_37
(
	.z(onep_101), // OUT
	.a0(shsrc_101), // IN
	.a1(shsrc_37), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_38
(
	.z(onep_102), // OUT
	.a0(shsrc_102), // IN
	.a1(shsrc_38), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_39
(
	.z(onep_103), // OUT
	.a0(shsrc_103), // IN
	.a1(shsrc_39), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_40
(
	.z(onep_104), // OUT
	.a0(shsrc_104), // IN
	.a1(shsrc_40), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_41
(
	.z(onep_105), // OUT
	.a0(shsrc_105), // IN
	.a1(shsrc_41), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_42
(
	.z(onep_106), // OUT
	.a0(shsrc_106), // IN
	.a1(shsrc_42), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_43
(
	.z(onep_107), // OUT
	.a0(shsrc_107), // IN
	.a1(shsrc_43), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_44
(
	.z(onep_108), // OUT
	.a0(shsrc_108), // IN
	.a1(shsrc_44), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_45
(
	.z(onep_109), // OUT
	.a0(shsrc_109), // IN
	.a1(shsrc_45), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_46
(
	.z(onep_110), // OUT
	.a0(shsrc_110), // IN
	.a1(shsrc_46), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_47
(
	.z(onep_111), // OUT
	.a0(shsrc_111), // IN
	.a1(shsrc_47), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_48
(
	.z(onep_112), // OUT
	.a0(shsrc_112), // IN
	.a1(shsrc_48), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_49
(
	.z(onep_113), // OUT
	.a0(shsrc_113), // IN
	.a1(shsrc_49), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_50
(
	.z(onep_114), // OUT
	.a0(shsrc_114), // IN
	.a1(shsrc_50), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_51
(
	.z(onep_115), // OUT
	.a0(shsrc_115), // IN
	.a1(shsrc_51), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_52
(
	.z(onep_116), // OUT
	.a0(shsrc_116), // IN
	.a1(shsrc_52), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_53
(
	.z(onep_117), // OUT
	.a0(shsrc_117), // IN
	.a1(shsrc_53), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_54
(
	.z(onep_118), // OUT
	.a0(shsrc_118), // IN
	.a1(shsrc_54), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_55
(
	.z(onep_119), // OUT
	.a0(shsrc_119), // IN
	.a1(shsrc_55), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_56
(
	.z(onep_120), // OUT
	.a0(shsrc_120), // IN
	.a1(shsrc_56), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_57
(
	.z(onep_121), // OUT
	.a0(shsrc_121), // IN
	.a1(shsrc_57), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_58
(
	.z(onep_122), // OUT
	.a0(shsrc_122), // IN
	.a1(shsrc_58), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_59
(
	.z(onep_123), // OUT
	.a0(shsrc_123), // IN
	.a1(shsrc_59), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_60
(
	.z(onep_124), // OUT
	.a0(shsrc_124), // IN
	.a1(shsrc_60), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_61
(
	.z(onep_125), // OUT
	.a0(shsrc_125), // IN
	.a1(shsrc_61), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_62
(
	.z(onep_126), // OUT
	.a0(shsrc_126), // IN
	.a1(shsrc_62), // IN
	.s(shift_6)  // IN
);
mx2 onep_from_64_to_127_inst_63
(
	.z(onep_127), // OUT
	.a0(shsrc_127), // IN
	.a1(shsrc_63), // IN
	.s(shift_6)  // IN
);

// SRCSHIFT.NET (75) - onel[40-127] : mx2
mx2 onel_from_40_to_127_inst_0
(
	.z(onel_40), // OUT
	.a0(onep_40), // IN
	.a1(onep_8), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_1
(
	.z(onel_41), // OUT
	.a0(onep_41), // IN
	.a1(onep_9), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_2
(
	.z(onel_42), // OUT
	.a0(onep_42), // IN
	.a1(onep_10), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_3
(
	.z(onel_43), // OUT
	.a0(onep_43), // IN
	.a1(onep_11), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_4
(
	.z(onel_44), // OUT
	.a0(onep_44), // IN
	.a1(onep_12), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_5
(
	.z(onel_45), // OUT
	.a0(onep_45), // IN
	.a1(onep_13), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_6
(
	.z(onel_46), // OUT
	.a0(onep_46), // IN
	.a1(onep_14), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_7
(
	.z(onel_47), // OUT
	.a0(onep_47), // IN
	.a1(onep_15), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_8
(
	.z(onel_48), // OUT
	.a0(onep_48), // IN
	.a1(onep_16), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_9
(
	.z(onel_49), // OUT
	.a0(onep_49), // IN
	.a1(onep_17), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_10
(
	.z(onel_50), // OUT
	.a0(onep_50), // IN
	.a1(onep_18), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_11
(
	.z(onel_51), // OUT
	.a0(onep_51), // IN
	.a1(onep_19), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_12
(
	.z(onel_52), // OUT
	.a0(onep_52), // IN
	.a1(onep_20), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_13
(
	.z(onel_53), // OUT
	.a0(onep_53), // IN
	.a1(onep_21), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_14
(
	.z(onel_54), // OUT
	.a0(onep_54), // IN
	.a1(onep_22), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_15
(
	.z(onel_55), // OUT
	.a0(onep_55), // IN
	.a1(onep_23), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_16
(
	.z(onel_56), // OUT
	.a0(onep_56), // IN
	.a1(onep_24), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_17
(
	.z(onel_57), // OUT
	.a0(onep_57), // IN
	.a1(onep_25), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_18
(
	.z(onel_58), // OUT
	.a0(onep_58), // IN
	.a1(onep_26), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_19
(
	.z(onel_59), // OUT
	.a0(onep_59), // IN
	.a1(onep_27), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_20
(
	.z(onel_60), // OUT
	.a0(onep_60), // IN
	.a1(onep_28), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_21
(
	.z(onel_61), // OUT
	.a0(onep_61), // IN
	.a1(onep_29), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_22
(
	.z(onel_62), // OUT
	.a0(onep_62), // IN
	.a1(onep_30), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_23
(
	.z(onel_63), // OUT
	.a0(onep_63), // IN
	.a1(onep_31), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_24
(
	.z(onel_64), // OUT
	.a0(onep_64), // IN
	.a1(onep_32), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_25
(
	.z(onel_65), // OUT
	.a0(onep_65), // IN
	.a1(onep_33), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_26
(
	.z(onel_66), // OUT
	.a0(onep_66), // IN
	.a1(onep_34), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_27
(
	.z(onel_67), // OUT
	.a0(onep_67), // IN
	.a1(onep_35), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_28
(
	.z(onel_68), // OUT
	.a0(onep_68), // IN
	.a1(onep_36), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_29
(
	.z(onel_69), // OUT
	.a0(onep_69), // IN
	.a1(onep_37), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_30
(
	.z(onel_70), // OUT
	.a0(onep_70), // IN
	.a1(onep_38), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_31
(
	.z(onel_71), // OUT
	.a0(onep_71), // IN
	.a1(onep_39), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_32
(
	.z(onel_72), // OUT
	.a0(onep_72), // IN
	.a1(onep_40), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_33
(
	.z(onel_73), // OUT
	.a0(onep_73), // IN
	.a1(onep_41), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_34
(
	.z(onel_74), // OUT
	.a0(onep_74), // IN
	.a1(onep_42), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_35
(
	.z(onel_75), // OUT
	.a0(onep_75), // IN
	.a1(onep_43), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_36
(
	.z(onel_76), // OUT
	.a0(onep_76), // IN
	.a1(onep_44), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_37
(
	.z(onel_77), // OUT
	.a0(onep_77), // IN
	.a1(onep_45), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_38
(
	.z(onel_78), // OUT
	.a0(onep_78), // IN
	.a1(onep_46), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_39
(
	.z(onel_79), // OUT
	.a0(onep_79), // IN
	.a1(onep_47), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_40
(
	.z(onel_80), // OUT
	.a0(onep_80), // IN
	.a1(onep_48), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_41
(
	.z(onel_81), // OUT
	.a0(onep_81), // IN
	.a1(onep_49), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_42
(
	.z(onel_82), // OUT
	.a0(onep_82), // IN
	.a1(onep_50), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_43
(
	.z(onel_83), // OUT
	.a0(onep_83), // IN
	.a1(onep_51), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_44
(
	.z(onel_84), // OUT
	.a0(onep_84), // IN
	.a1(onep_52), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_45
(
	.z(onel_85), // OUT
	.a0(onep_85), // IN
	.a1(onep_53), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_46
(
	.z(onel_86), // OUT
	.a0(onep_86), // IN
	.a1(onep_54), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_47
(
	.z(onel_87), // OUT
	.a0(onep_87), // IN
	.a1(onep_55), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_48
(
	.z(onel_88), // OUT
	.a0(onep_88), // IN
	.a1(onep_56), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_49
(
	.z(onel_89), // OUT
	.a0(onep_89), // IN
	.a1(onep_57), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_50
(
	.z(onel_90), // OUT
	.a0(onep_90), // IN
	.a1(onep_58), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_51
(
	.z(onel_91), // OUT
	.a0(onep_91), // IN
	.a1(onep_59), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_52
(
	.z(onel_92), // OUT
	.a0(onep_92), // IN
	.a1(onep_60), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_53
(
	.z(onel_93), // OUT
	.a0(onep_93), // IN
	.a1(onep_61), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_54
(
	.z(onel_94), // OUT
	.a0(onep_94), // IN
	.a1(onep_62), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_55
(
	.z(onel_95), // OUT
	.a0(onep_95), // IN
	.a1(onep_63), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_56
(
	.z(onel_96), // OUT
	.a0(onep_96), // IN
	.a1(onep_64), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_57
(
	.z(onel_97), // OUT
	.a0(onep_97), // IN
	.a1(onep_65), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_58
(
	.z(onel_98), // OUT
	.a0(onep_98), // IN
	.a1(onep_66), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_59
(
	.z(onel_99), // OUT
	.a0(onep_99), // IN
	.a1(onep_67), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_60
(
	.z(onel_100), // OUT
	.a0(onep_100), // IN
	.a1(onep_68), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_61
(
	.z(onel_101), // OUT
	.a0(onep_101), // IN
	.a1(onep_69), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_62
(
	.z(onel_102), // OUT
	.a0(onep_102), // IN
	.a1(onep_70), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_63
(
	.z(onel_103), // OUT
	.a0(onep_103), // IN
	.a1(onep_71), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_64
(
	.z(onel_104), // OUT
	.a0(onep_104), // IN
	.a1(onep_72), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_65
(
	.z(onel_105), // OUT
	.a0(onep_105), // IN
	.a1(onep_73), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_66
(
	.z(onel_106), // OUT
	.a0(onep_106), // IN
	.a1(onep_74), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_67
(
	.z(onel_107), // OUT
	.a0(onep_107), // IN
	.a1(onep_75), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_68
(
	.z(onel_108), // OUT
	.a0(onep_108), // IN
	.a1(onep_76), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_69
(
	.z(onel_109), // OUT
	.a0(onep_109), // IN
	.a1(onep_77), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_70
(
	.z(onel_110), // OUT
	.a0(onep_110), // IN
	.a1(onep_78), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_71
(
	.z(onel_111), // OUT
	.a0(onep_111), // IN
	.a1(onep_79), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_72
(
	.z(onel_112), // OUT
	.a0(onep_112), // IN
	.a1(onep_80), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_73
(
	.z(onel_113), // OUT
	.a0(onep_113), // IN
	.a1(onep_81), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_74
(
	.z(onel_114), // OUT
	.a0(onep_114), // IN
	.a1(onep_82), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_75
(
	.z(onel_115), // OUT
	.a0(onep_115), // IN
	.a1(onep_83), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_76
(
	.z(onel_116), // OUT
	.a0(onep_116), // IN
	.a1(onep_84), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_77
(
	.z(onel_117), // OUT
	.a0(onep_117), // IN
	.a1(onep_85), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_78
(
	.z(onel_118), // OUT
	.a0(onep_118), // IN
	.a1(onep_86), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_79
(
	.z(onel_119), // OUT
	.a0(onep_119), // IN
	.a1(onep_87), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_80
(
	.z(onel_120), // OUT
	.a0(onep_120), // IN
	.a1(onep_88), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_81
(
	.z(onel_121), // OUT
	.a0(onep_121), // IN
	.a1(onep_89), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_82
(
	.z(onel_122), // OUT
	.a0(onep_122), // IN
	.a1(onep_90), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_83
(
	.z(onel_123), // OUT
	.a0(onep_123), // IN
	.a1(onep_91), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_84
(
	.z(onel_124), // OUT
	.a0(onep_124), // IN
	.a1(onep_92), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_85
(
	.z(onel_125), // OUT
	.a0(onep_125), // IN
	.a1(onep_93), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_86
(
	.z(onel_126), // OUT
	.a0(onep_126), // IN
	.a1(onep_94), // IN
	.s(shift_5)  // IN
);
mx2 onel_from_40_to_127_inst_87
(
	.z(onel_127), // OUT
	.a0(onep_127), // IN
	.a1(onep_95), // IN
	.s(shift_5)  // IN
);

// SRCSHIFT.NET (80) - onew[56-127] : mx2
mx2 onew_from_56_to_127_inst_0
(
	.z(onew_56), // OUT
	.a0(onel_56), // IN
	.a1(onel_40), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_1
(
	.z(onew_57), // OUT
	.a0(onel_57), // IN
	.a1(onel_41), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_2
(
	.z(onew_58), // OUT
	.a0(onel_58), // IN
	.a1(onel_42), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_3
(
	.z(onew_59), // OUT
	.a0(onel_59), // IN
	.a1(onel_43), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_4
(
	.z(onew_60), // OUT
	.a0(onel_60), // IN
	.a1(onel_44), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_5
(
	.z(onew_61), // OUT
	.a0(onel_61), // IN
	.a1(onel_45), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_6
(
	.z(onew_62), // OUT
	.a0(onel_62), // IN
	.a1(onel_46), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_7
(
	.z(onew_63), // OUT
	.a0(onel_63), // IN
	.a1(onel_47), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_8
(
	.z(onew_64), // OUT
	.a0(onel_64), // IN
	.a1(onel_48), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_9
(
	.z(onew_65), // OUT
	.a0(onel_65), // IN
	.a1(onel_49), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_10
(
	.z(onew_66), // OUT
	.a0(onel_66), // IN
	.a1(onel_50), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_11
(
	.z(onew_67), // OUT
	.a0(onel_67), // IN
	.a1(onel_51), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_12
(
	.z(onew_68), // OUT
	.a0(onel_68), // IN
	.a1(onel_52), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_13
(
	.z(onew_69), // OUT
	.a0(onel_69), // IN
	.a1(onel_53), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_14
(
	.z(onew_70), // OUT
	.a0(onel_70), // IN
	.a1(onel_54), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_15
(
	.z(onew_71), // OUT
	.a0(onel_71), // IN
	.a1(onel_55), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_16
(
	.z(onew_72), // OUT
	.a0(onel_72), // IN
	.a1(onel_56), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_17
(
	.z(onew_73), // OUT
	.a0(onel_73), // IN
	.a1(onel_57), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_18
(
	.z(onew_74), // OUT
	.a0(onel_74), // IN
	.a1(onel_58), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_19
(
	.z(onew_75), // OUT
	.a0(onel_75), // IN
	.a1(onel_59), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_20
(
	.z(onew_76), // OUT
	.a0(onel_76), // IN
	.a1(onel_60), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_21
(
	.z(onew_77), // OUT
	.a0(onel_77), // IN
	.a1(onel_61), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_22
(
	.z(onew_78), // OUT
	.a0(onel_78), // IN
	.a1(onel_62), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_23
(
	.z(onew_79), // OUT
	.a0(onel_79), // IN
	.a1(onel_63), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_24
(
	.z(onew_80), // OUT
	.a0(onel_80), // IN
	.a1(onel_64), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_25
(
	.z(onew_81), // OUT
	.a0(onel_81), // IN
	.a1(onel_65), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_26
(
	.z(onew_82), // OUT
	.a0(onel_82), // IN
	.a1(onel_66), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_27
(
	.z(onew_83), // OUT
	.a0(onel_83), // IN
	.a1(onel_67), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_28
(
	.z(onew_84), // OUT
	.a0(onel_84), // IN
	.a1(onel_68), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_29
(
	.z(onew_85), // OUT
	.a0(onel_85), // IN
	.a1(onel_69), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_30
(
	.z(onew_86), // OUT
	.a0(onel_86), // IN
	.a1(onel_70), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_31
(
	.z(onew_87), // OUT
	.a0(onel_87), // IN
	.a1(onel_71), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_32
(
	.z(onew_88), // OUT
	.a0(onel_88), // IN
	.a1(onel_72), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_33
(
	.z(onew_89), // OUT
	.a0(onel_89), // IN
	.a1(onel_73), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_34
(
	.z(onew_90), // OUT
	.a0(onel_90), // IN
	.a1(onel_74), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_35
(
	.z(onew_91), // OUT
	.a0(onel_91), // IN
	.a1(onel_75), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_36
(
	.z(onew_92), // OUT
	.a0(onel_92), // IN
	.a1(onel_76), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_37
(
	.z(onew_93), // OUT
	.a0(onel_93), // IN
	.a1(onel_77), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_38
(
	.z(onew_94), // OUT
	.a0(onel_94), // IN
	.a1(onel_78), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_39
(
	.z(onew_95), // OUT
	.a0(onel_95), // IN
	.a1(onel_79), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_40
(
	.z(onew_96), // OUT
	.a0(onel_96), // IN
	.a1(onel_80), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_41
(
	.z(onew_97), // OUT
	.a0(onel_97), // IN
	.a1(onel_81), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_42
(
	.z(onew_98), // OUT
	.a0(onel_98), // IN
	.a1(onel_82), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_43
(
	.z(onew_99), // OUT
	.a0(onel_99), // IN
	.a1(onel_83), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_44
(
	.z(onew_100), // OUT
	.a0(onel_100), // IN
	.a1(onel_84), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_45
(
	.z(onew_101), // OUT
	.a0(onel_101), // IN
	.a1(onel_85), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_46
(
	.z(onew_102), // OUT
	.a0(onel_102), // IN
	.a1(onel_86), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_47
(
	.z(onew_103), // OUT
	.a0(onel_103), // IN
	.a1(onel_87), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_48
(
	.z(onew_104), // OUT
	.a0(onel_104), // IN
	.a1(onel_88), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_49
(
	.z(onew_105), // OUT
	.a0(onel_105), // IN
	.a1(onel_89), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_50
(
	.z(onew_106), // OUT
	.a0(onel_106), // IN
	.a1(onel_90), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_51
(
	.z(onew_107), // OUT
	.a0(onel_107), // IN
	.a1(onel_91), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_52
(
	.z(onew_108), // OUT
	.a0(onel_108), // IN
	.a1(onel_92), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_53
(
	.z(onew_109), // OUT
	.a0(onel_109), // IN
	.a1(onel_93), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_54
(
	.z(onew_110), // OUT
	.a0(onel_110), // IN
	.a1(onel_94), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_55
(
	.z(onew_111), // OUT
	.a0(onel_111), // IN
	.a1(onel_95), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_56
(
	.z(onew_112), // OUT
	.a0(onel_112), // IN
	.a1(onel_96), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_57
(
	.z(onew_113), // OUT
	.a0(onel_113), // IN
	.a1(onel_97), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_58
(
	.z(onew_114), // OUT
	.a0(onel_114), // IN
	.a1(onel_98), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_59
(
	.z(onew_115), // OUT
	.a0(onel_115), // IN
	.a1(onel_99), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_60
(
	.z(onew_116), // OUT
	.a0(onel_116), // IN
	.a1(onel_100), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_61
(
	.z(onew_117), // OUT
	.a0(onel_117), // IN
	.a1(onel_101), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_62
(
	.z(onew_118), // OUT
	.a0(onel_118), // IN
	.a1(onel_102), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_63
(
	.z(onew_119), // OUT
	.a0(onel_119), // IN
	.a1(onel_103), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_64
(
	.z(onew_120), // OUT
	.a0(onel_120), // IN
	.a1(onel_104), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_65
(
	.z(onew_121), // OUT
	.a0(onel_121), // IN
	.a1(onel_105), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_66
(
	.z(onew_122), // OUT
	.a0(onel_122), // IN
	.a1(onel_106), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_67
(
	.z(onew_123), // OUT
	.a0(onel_123), // IN
	.a1(onel_107), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_68
(
	.z(onew_124), // OUT
	.a0(onel_124), // IN
	.a1(onel_108), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_69
(
	.z(onew_125), // OUT
	.a0(onel_125), // IN
	.a1(onel_109), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_70
(
	.z(onew_126), // OUT
	.a0(onel_126), // IN
	.a1(onel_110), // IN
	.s(shift_4)  // IN
);
mx2 onew_from_56_to_127_inst_71
(
	.z(onew_127), // OUT
	.a0(onel_127), // IN
	.a1(onel_111), // IN
	.s(shift_4)  // IN
);

// SRCSHIFT.NET (85) - oneb[64-127] : mx2
mx2 oneb_from_64_to_127_inst_0
(
	.z(oneb_64), // OUT
	.a0(onew_64), // IN
	.a1(onew_56), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_1
(
	.z(oneb_65), // OUT
	.a0(onew_65), // IN
	.a1(onew_57), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_2
(
	.z(oneb_66), // OUT
	.a0(onew_66), // IN
	.a1(onew_58), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_3
(
	.z(oneb_67), // OUT
	.a0(onew_67), // IN
	.a1(onew_59), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_4
(
	.z(oneb_68), // OUT
	.a0(onew_68), // IN
	.a1(onew_60), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_5
(
	.z(oneb_69), // OUT
	.a0(onew_69), // IN
	.a1(onew_61), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_6
(
	.z(oneb_70), // OUT
	.a0(onew_70), // IN
	.a1(onew_62), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_7
(
	.z(oneb_71), // OUT
	.a0(onew_71), // IN
	.a1(onew_63), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_8
(
	.z(oneb_72), // OUT
	.a0(onew_72), // IN
	.a1(onew_64), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_9
(
	.z(oneb_73), // OUT
	.a0(onew_73), // IN
	.a1(onew_65), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_10
(
	.z(oneb_74), // OUT
	.a0(onew_74), // IN
	.a1(onew_66), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_11
(
	.z(oneb_75), // OUT
	.a0(onew_75), // IN
	.a1(onew_67), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_12
(
	.z(oneb_76), // OUT
	.a0(onew_76), // IN
	.a1(onew_68), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_13
(
	.z(oneb_77), // OUT
	.a0(onew_77), // IN
	.a1(onew_69), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_14
(
	.z(oneb_78), // OUT
	.a0(onew_78), // IN
	.a1(onew_70), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_15
(
	.z(oneb_79), // OUT
	.a0(onew_79), // IN
	.a1(onew_71), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_16
(
	.z(oneb_80), // OUT
	.a0(onew_80), // IN
	.a1(onew_72), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_17
(
	.z(oneb_81), // OUT
	.a0(onew_81), // IN
	.a1(onew_73), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_18
(
	.z(oneb_82), // OUT
	.a0(onew_82), // IN
	.a1(onew_74), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_19
(
	.z(oneb_83), // OUT
	.a0(onew_83), // IN
	.a1(onew_75), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_20
(
	.z(oneb_84), // OUT
	.a0(onew_84), // IN
	.a1(onew_76), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_21
(
	.z(oneb_85), // OUT
	.a0(onew_85), // IN
	.a1(onew_77), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_22
(
	.z(oneb_86), // OUT
	.a0(onew_86), // IN
	.a1(onew_78), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_23
(
	.z(oneb_87), // OUT
	.a0(onew_87), // IN
	.a1(onew_79), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_24
(
	.z(oneb_88), // OUT
	.a0(onew_88), // IN
	.a1(onew_80), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_25
(
	.z(oneb_89), // OUT
	.a0(onew_89), // IN
	.a1(onew_81), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_26
(
	.z(oneb_90), // OUT
	.a0(onew_90), // IN
	.a1(onew_82), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_27
(
	.z(oneb_91), // OUT
	.a0(onew_91), // IN
	.a1(onew_83), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_28
(
	.z(oneb_92), // OUT
	.a0(onew_92), // IN
	.a1(onew_84), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_29
(
	.z(oneb_93), // OUT
	.a0(onew_93), // IN
	.a1(onew_85), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_30
(
	.z(oneb_94), // OUT
	.a0(onew_94), // IN
	.a1(onew_86), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_31
(
	.z(oneb_95), // OUT
	.a0(onew_95), // IN
	.a1(onew_87), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_32
(
	.z(oneb_96), // OUT
	.a0(onew_96), // IN
	.a1(onew_88), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_33
(
	.z(oneb_97), // OUT
	.a0(onew_97), // IN
	.a1(onew_89), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_34
(
	.z(oneb_98), // OUT
	.a0(onew_98), // IN
	.a1(onew_90), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_35
(
	.z(oneb_99), // OUT
	.a0(onew_99), // IN
	.a1(onew_91), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_36
(
	.z(oneb_100), // OUT
	.a0(onew_100), // IN
	.a1(onew_92), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_37
(
	.z(oneb_101), // OUT
	.a0(onew_101), // IN
	.a1(onew_93), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_38
(
	.z(oneb_102), // OUT
	.a0(onew_102), // IN
	.a1(onew_94), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_39
(
	.z(oneb_103), // OUT
	.a0(onew_103), // IN
	.a1(onew_95), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_40
(
	.z(oneb_104), // OUT
	.a0(onew_104), // IN
	.a1(onew_96), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_41
(
	.z(oneb_105), // OUT
	.a0(onew_105), // IN
	.a1(onew_97), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_42
(
	.z(oneb_106), // OUT
	.a0(onew_106), // IN
	.a1(onew_98), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_43
(
	.z(oneb_107), // OUT
	.a0(onew_107), // IN
	.a1(onew_99), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_44
(
	.z(oneb_108), // OUT
	.a0(onew_108), // IN
	.a1(onew_100), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_45
(
	.z(oneb_109), // OUT
	.a0(onew_109), // IN
	.a1(onew_101), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_46
(
	.z(oneb_110), // OUT
	.a0(onew_110), // IN
	.a1(onew_102), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_47
(
	.z(oneb_111), // OUT
	.a0(onew_111), // IN
	.a1(onew_103), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_48
(
	.z(oneb_112), // OUT
	.a0(onew_112), // IN
	.a1(onew_104), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_49
(
	.z(oneb_113), // OUT
	.a0(onew_113), // IN
	.a1(onew_105), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_50
(
	.z(oneb_114), // OUT
	.a0(onew_114), // IN
	.a1(onew_106), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_51
(
	.z(oneb_115), // OUT
	.a0(onew_115), // IN
	.a1(onew_107), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_52
(
	.z(oneb_116), // OUT
	.a0(onew_116), // IN
	.a1(onew_108), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_53
(
	.z(oneb_117), // OUT
	.a0(onew_117), // IN
	.a1(onew_109), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_54
(
	.z(oneb_118), // OUT
	.a0(onew_118), // IN
	.a1(onew_110), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_55
(
	.z(oneb_119), // OUT
	.a0(onew_119), // IN
	.a1(onew_111), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_56
(
	.z(oneb_120), // OUT
	.a0(onew_120), // IN
	.a1(onew_112), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_57
(
	.z(oneb_121), // OUT
	.a0(onew_121), // IN
	.a1(onew_113), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_58
(
	.z(oneb_122), // OUT
	.a0(onew_122), // IN
	.a1(onew_114), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_59
(
	.z(oneb_123), // OUT
	.a0(onew_123), // IN
	.a1(onew_115), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_60
(
	.z(oneb_124), // OUT
	.a0(onew_124), // IN
	.a1(onew_116), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_61
(
	.z(oneb_125), // OUT
	.a0(onew_125), // IN
	.a1(onew_117), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_62
(
	.z(oneb_126), // OUT
	.a0(onew_126), // IN
	.a1(onew_118), // IN
	.s(shift_3)  // IN
);
mx2 oneb_from_64_to_127_inst_63
(
	.z(oneb_127), // OUT
	.a0(onew_127), // IN
	.a1(onew_119), // IN
	.s(shift_3)  // IN
);

// SRCSHIFT.NET (90) - onen[64-67] : mx2
mx2 onen_from_64_to_67_inst_0
(
	.z(onen_64), // OUT
	.a0(oneb_64), // IN
	.a1(oneb_68), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_64_to_67_inst_1
(
	.z(onen_65), // OUT
	.a0(oneb_65), // IN
	.a1(oneb_69), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_64_to_67_inst_2
(
	.z(onen_66), // OUT
	.a0(oneb_66), // IN
	.a1(oneb_70), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_64_to_67_inst_3
(
	.z(onen_67), // OUT
	.a0(oneb_67), // IN
	.a1(oneb_71), // IN
	.s(shift_2)  // IN
);

// SRCSHIFT.NET (92) - onen[68-71] : mx2
mx2 onen_from_68_to_71_inst_0
(
	.z(onen_68), // OUT
	.a0(oneb_68), // IN
	.a1(oneb_64), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_68_to_71_inst_1
(
	.z(onen_69), // OUT
	.a0(oneb_69), // IN
	.a1(oneb_65), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_68_to_71_inst_2
(
	.z(onen_70), // OUT
	.a0(oneb_70), // IN
	.a1(oneb_66), // IN
	.s(shift_2)  // IN
);
mx2 onen_from_68_to_71_inst_3
(
	.z(onen_71), // OUT
	.a0(oneb_71), // IN
	.a1(oneb_67), // IN
	.s(shift_2)  // IN
);

// SRCSHIFT.NET (97) - onet[64-65] : mx2
mx2 onet_from_64_to_65_inst_0
(
	.z(onet_64), // OUT
	.a0(onen_64), // IN
	.a1(onen_70), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_64_to_65_inst_1
(
	.z(onet_65), // OUT
	.a0(onen_65), // IN
	.a1(onen_71), // IN
	.s(shift_1)  // IN
);

// SRCSHIFT.NET (99) - onet[66-71] : mx2
mx2 onet_from_66_to_71_inst_0
(
	.z(onet_66), // OUT
	.a0(onen_66), // IN
	.a1(onen_64), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_66_to_71_inst_1
(
	.z(onet_67), // OUT
	.a0(onen_67), // IN
	.a1(onen_65), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_66_to_71_inst_2
(
	.z(onet_68), // OUT
	.a0(onen_68), // IN
	.a1(onen_66), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_66_to_71_inst_3
(
	.z(onet_69), // OUT
	.a0(onen_69), // IN
	.a1(onen_67), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_66_to_71_inst_4
(
	.z(onet_70), // OUT
	.a0(onen_70), // IN
	.a1(onen_68), // IN
	.s(shift_1)  // IN
);
mx2 onet_from_66_to_71_inst_5
(
	.z(onet_71), // OUT
	.a0(onen_71), // IN
	.a1(onen_69), // IN
	.s(shift_1)  // IN
);

// SRCSHIFT.NET (104) - oneo[64] : mx2
mx2 oneo_index_64_inst
(
	.z(oneo_64), // OUT
	.a0(onet_64), // IN
	.a1(onet_71), // IN
	.s(shift_0)  // IN
);

// SRCSHIFT.NET (106) - oneo[65-71] : mx2
mx2 oneo_from_65_to_71_inst_0
(
	.z(oneo_65), // OUT
	.a0(onet_65), // IN
	.a1(onet_64), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_1
(
	.z(oneo_66), // OUT
	.a0(onet_66), // IN
	.a1(onet_65), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_2
(
	.z(oneo_67), // OUT
	.a0(onet_67), // IN
	.a1(onet_66), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_3
(
	.z(oneo_68), // OUT
	.a0(onet_68), // IN
	.a1(onet_67), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_4
(
	.z(oneo_69), // OUT
	.a0(onet_69), // IN
	.a1(onet_68), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_5
(
	.z(oneo_70), // OUT
	.a0(onet_70), // IN
	.a1(onet_69), // IN
	.s(shift_0)  // IN
);
mx2 oneo_from_65_to_71_inst_6
(
	.z(oneo_71), // OUT
	.a0(onet_71), // IN
	.a1(onet_70), // IN
	.s(shift_0)  // IN
);

// SRCSHIFT.NET (110) - srcd[0] : join
assign srcd_0[0] = oneo_64;
assign srcd_0[1] = oneo_65;
assign srcd_0[2] = oneo_66;
assign srcd_0[3] = oneo_67;
assign srcd_0[4] = oneo_68;
assign srcd_0[5] = oneo_69;
assign srcd_0[6] = oneo_70;
assign srcd_0[7] = oneo_71;
assign srcd_0[8] = oneb_72;
assign srcd_0[9] = oneb_73;
assign srcd_0[10] = oneb_74;
assign srcd_0[11] = oneb_75;
assign srcd_0[12] = oneb_76;
assign srcd_0[13] = oneb_77;
assign srcd_0[14] = oneb_78;
assign srcd_0[15] = oneb_79;
assign srcd_0[16] = oneb_80;
assign srcd_0[17] = oneb_81;
assign srcd_0[18] = oneb_82;
assign srcd_0[19] = oneb_83;
assign srcd_0[20] = oneb_84;
assign srcd_0[21] = oneb_85;
assign srcd_0[22] = oneb_86;
assign srcd_0[23] = oneb_87;
assign srcd_0[24] = oneb_88;
assign srcd_0[25] = oneb_89;
assign srcd_0[26] = oneb_90;
assign srcd_0[27] = oneb_91;
assign srcd_0[28] = oneb_92;
assign srcd_0[29] = oneb_93;
assign srcd_0[30] = oneb_94;
assign srcd_0[31] = oneb_95;

// SRCSHIFT.NET (111) - srcd[1] : join
assign srcd_1[0] = oneb_96;
assign srcd_1[1] = oneb_97;
assign srcd_1[2] = oneb_98;
assign srcd_1[3] = oneb_99;
assign srcd_1[4] = oneb_100;
assign srcd_1[5] = oneb_101;
assign srcd_1[6] = oneb_102;
assign srcd_1[7] = oneb_103;
assign srcd_1[8] = oneb_104;
assign srcd_1[9] = oneb_105;
assign srcd_1[10] = oneb_106;
assign srcd_1[11] = oneb_107;
assign srcd_1[12] = oneb_108;
assign srcd_1[13] = oneb_109;
assign srcd_1[14] = oneb_110;
assign srcd_1[15] = oneb_111;
assign srcd_1[16] = oneb_112;
assign srcd_1[17] = oneb_113;
assign srcd_1[18] = oneb_114;
assign srcd_1[19] = oneb_115;
assign srcd_1[20] = oneb_116;
assign srcd_1[21] = oneb_117;
assign srcd_1[22] = oneb_118;
assign srcd_1[23] = oneb_119;
assign srcd_1[24] = oneb_120;
assign srcd_1[25] = oneb_121;
assign srcd_1[26] = oneb_122;
assign srcd_1[27] = oneb_123;
assign srcd_1[28] = oneb_124;
assign srcd_1[29] = oneb_125;
assign srcd_1[30] = oneb_126;
assign srcd_1[31] = oneb_127;
endmodule
