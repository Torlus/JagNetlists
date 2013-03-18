`include "defs.v"

module srcshift
(
	output [0:31] srcd_0,
	output [0:31] srcd_1,
	input big_pix,
	input [0:31] srcd1lo,
	input [0:31] srcd1hi,
	input [0:31] srcd2lo,
	input [0:31] srcd2hi,
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
	.s /* OUT */ (besh_1),
	.co /* OUT */ (bec_1),
	.a /* IN */ (srcshift_n_0),
	.b /* IN */ (srcshift_n_1)
);

// SRCSHIFT.NET (43) - besh[2] : eo
assign besh_2 = bec_1 ^ srcshift_n_2;

// SRCSHIFT.NET (48) - besh[4] : ha1
ha1 besh_index_4_inst
(
	.s /* OUT */ (besh_4),
	.co /* OUT */ (bec_4),
	.a /* IN */ (srcshift_n_3),
	.b /* IN */ (srcshift_n_4)
);

// SRCSHIFT.NET (50) - besh[5] : ha1
ha1 besh_index_5_inst
(
	.s /* OUT */ (besh_5),
	.co /* OUT */ (bec_5),
	.a /* IN */ (bec_4),
	.b /* IN */ (srcshift_n_5)
);

// SRCSHIFT.NET (51) - besh[6] : iv
assign besh_6 = ~bec_5;

// SRCSHIFT.NET (53) - shift[0] : nivm
assign shift_0 = srcshift_0;

// SRCSHIFT.NET (54) - shift[1] : mx2m
mx2 shift_index_1_inst
(
	.z /* OUT */ (shift_1),
	.a0 /* IN */ (srcshift_1),
	.a1 /* IN */ (besh_1),
	.s /* IN */ (big_pix)
);

// SRCSHIFT.NET (55) - shift[2] : mx2m
mx2 shift_index_2_inst
(
	.z /* OUT */ (shift_2),
	.a0 /* IN */ (srcshift_2),
	.a1 /* IN */ (besh_2),
	.s /* IN */ (big_pix)
);

// SRCSHIFT.NET (56) - shiftt[3] : niv
assign shiftt_3 = srcshift_3;

// SRCSHIFT.NET (57) - shiftt[4] : mx2
mx2 shiftt_index_4_inst
(
	.z /* OUT */ (shiftt_4),
	.a0 /* IN */ (srcshift_4),
	.a1 /* IN */ (besh_4),
	.s /* IN */ (big_pix)
);

// SRCSHIFT.NET (58) - shiftt[5] : mx2
mx2 shiftt_index_5_inst
(
	.z /* OUT */ (shiftt_5),
	.a0 /* IN */ (srcshift_5),
	.a1 /* IN */ (besh_5),
	.s /* IN */ (big_pix)
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
	.z /* OUT */ (onep_8),
	.a0 /* IN */ (shsrc_8),
	.a1 /* IN */ (shsrc_72),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_1
(
	.z /* OUT */ (onep_9),
	.a0 /* IN */ (shsrc_9),
	.a1 /* IN */ (shsrc_73),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_2
(
	.z /* OUT */ (onep_10),
	.a0 /* IN */ (shsrc_10),
	.a1 /* IN */ (shsrc_74),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_3
(
	.z /* OUT */ (onep_11),
	.a0 /* IN */ (shsrc_11),
	.a1 /* IN */ (shsrc_75),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_4
(
	.z /* OUT */ (onep_12),
	.a0 /* IN */ (shsrc_12),
	.a1 /* IN */ (shsrc_76),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_5
(
	.z /* OUT */ (onep_13),
	.a0 /* IN */ (shsrc_13),
	.a1 /* IN */ (shsrc_77),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_6
(
	.z /* OUT */ (onep_14),
	.a0 /* IN */ (shsrc_14),
	.a1 /* IN */ (shsrc_78),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_7
(
	.z /* OUT */ (onep_15),
	.a0 /* IN */ (shsrc_15),
	.a1 /* IN */ (shsrc_79),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_8
(
	.z /* OUT */ (onep_16),
	.a0 /* IN */ (shsrc_16),
	.a1 /* IN */ (shsrc_80),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_9
(
	.z /* OUT */ (onep_17),
	.a0 /* IN */ (shsrc_17),
	.a1 /* IN */ (shsrc_81),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_10
(
	.z /* OUT */ (onep_18),
	.a0 /* IN */ (shsrc_18),
	.a1 /* IN */ (shsrc_82),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_11
(
	.z /* OUT */ (onep_19),
	.a0 /* IN */ (shsrc_19),
	.a1 /* IN */ (shsrc_83),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_12
(
	.z /* OUT */ (onep_20),
	.a0 /* IN */ (shsrc_20),
	.a1 /* IN */ (shsrc_84),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_13
(
	.z /* OUT */ (onep_21),
	.a0 /* IN */ (shsrc_21),
	.a1 /* IN */ (shsrc_85),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_14
(
	.z /* OUT */ (onep_22),
	.a0 /* IN */ (shsrc_22),
	.a1 /* IN */ (shsrc_86),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_15
(
	.z /* OUT */ (onep_23),
	.a0 /* IN */ (shsrc_23),
	.a1 /* IN */ (shsrc_87),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_16
(
	.z /* OUT */ (onep_24),
	.a0 /* IN */ (shsrc_24),
	.a1 /* IN */ (shsrc_88),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_17
(
	.z /* OUT */ (onep_25),
	.a0 /* IN */ (shsrc_25),
	.a1 /* IN */ (shsrc_89),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_18
(
	.z /* OUT */ (onep_26),
	.a0 /* IN */ (shsrc_26),
	.a1 /* IN */ (shsrc_90),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_19
(
	.z /* OUT */ (onep_27),
	.a0 /* IN */ (shsrc_27),
	.a1 /* IN */ (shsrc_91),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_20
(
	.z /* OUT */ (onep_28),
	.a0 /* IN */ (shsrc_28),
	.a1 /* IN */ (shsrc_92),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_21
(
	.z /* OUT */ (onep_29),
	.a0 /* IN */ (shsrc_29),
	.a1 /* IN */ (shsrc_93),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_22
(
	.z /* OUT */ (onep_30),
	.a0 /* IN */ (shsrc_30),
	.a1 /* IN */ (shsrc_94),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_23
(
	.z /* OUT */ (onep_31),
	.a0 /* IN */ (shsrc_31),
	.a1 /* IN */ (shsrc_95),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_24
(
	.z /* OUT */ (onep_32),
	.a0 /* IN */ (shsrc_32),
	.a1 /* IN */ (shsrc_96),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_25
(
	.z /* OUT */ (onep_33),
	.a0 /* IN */ (shsrc_33),
	.a1 /* IN */ (shsrc_97),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_26
(
	.z /* OUT */ (onep_34),
	.a0 /* IN */ (shsrc_34),
	.a1 /* IN */ (shsrc_98),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_27
(
	.z /* OUT */ (onep_35),
	.a0 /* IN */ (shsrc_35),
	.a1 /* IN */ (shsrc_99),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_28
(
	.z /* OUT */ (onep_36),
	.a0 /* IN */ (shsrc_36),
	.a1 /* IN */ (shsrc_100),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_29
(
	.z /* OUT */ (onep_37),
	.a0 /* IN */ (shsrc_37),
	.a1 /* IN */ (shsrc_101),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_30
(
	.z /* OUT */ (onep_38),
	.a0 /* IN */ (shsrc_38),
	.a1 /* IN */ (shsrc_102),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_31
(
	.z /* OUT */ (onep_39),
	.a0 /* IN */ (shsrc_39),
	.a1 /* IN */ (shsrc_103),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_32
(
	.z /* OUT */ (onep_40),
	.a0 /* IN */ (shsrc_40),
	.a1 /* IN */ (shsrc_104),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_33
(
	.z /* OUT */ (onep_41),
	.a0 /* IN */ (shsrc_41),
	.a1 /* IN */ (shsrc_105),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_34
(
	.z /* OUT */ (onep_42),
	.a0 /* IN */ (shsrc_42),
	.a1 /* IN */ (shsrc_106),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_35
(
	.z /* OUT */ (onep_43),
	.a0 /* IN */ (shsrc_43),
	.a1 /* IN */ (shsrc_107),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_36
(
	.z /* OUT */ (onep_44),
	.a0 /* IN */ (shsrc_44),
	.a1 /* IN */ (shsrc_108),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_37
(
	.z /* OUT */ (onep_45),
	.a0 /* IN */ (shsrc_45),
	.a1 /* IN */ (shsrc_109),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_38
(
	.z /* OUT */ (onep_46),
	.a0 /* IN */ (shsrc_46),
	.a1 /* IN */ (shsrc_110),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_39
(
	.z /* OUT */ (onep_47),
	.a0 /* IN */ (shsrc_47),
	.a1 /* IN */ (shsrc_111),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_40
(
	.z /* OUT */ (onep_48),
	.a0 /* IN */ (shsrc_48),
	.a1 /* IN */ (shsrc_112),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_41
(
	.z /* OUT */ (onep_49),
	.a0 /* IN */ (shsrc_49),
	.a1 /* IN */ (shsrc_113),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_42
(
	.z /* OUT */ (onep_50),
	.a0 /* IN */ (shsrc_50),
	.a1 /* IN */ (shsrc_114),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_43
(
	.z /* OUT */ (onep_51),
	.a0 /* IN */ (shsrc_51),
	.a1 /* IN */ (shsrc_115),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_44
(
	.z /* OUT */ (onep_52),
	.a0 /* IN */ (shsrc_52),
	.a1 /* IN */ (shsrc_116),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_45
(
	.z /* OUT */ (onep_53),
	.a0 /* IN */ (shsrc_53),
	.a1 /* IN */ (shsrc_117),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_46
(
	.z /* OUT */ (onep_54),
	.a0 /* IN */ (shsrc_54),
	.a1 /* IN */ (shsrc_118),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_47
(
	.z /* OUT */ (onep_55),
	.a0 /* IN */ (shsrc_55),
	.a1 /* IN */ (shsrc_119),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_48
(
	.z /* OUT */ (onep_56),
	.a0 /* IN */ (shsrc_56),
	.a1 /* IN */ (shsrc_120),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_49
(
	.z /* OUT */ (onep_57),
	.a0 /* IN */ (shsrc_57),
	.a1 /* IN */ (shsrc_121),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_50
(
	.z /* OUT */ (onep_58),
	.a0 /* IN */ (shsrc_58),
	.a1 /* IN */ (shsrc_122),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_51
(
	.z /* OUT */ (onep_59),
	.a0 /* IN */ (shsrc_59),
	.a1 /* IN */ (shsrc_123),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_52
(
	.z /* OUT */ (onep_60),
	.a0 /* IN */ (shsrc_60),
	.a1 /* IN */ (shsrc_124),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_53
(
	.z /* OUT */ (onep_61),
	.a0 /* IN */ (shsrc_61),
	.a1 /* IN */ (shsrc_125),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_54
(
	.z /* OUT */ (onep_62),
	.a0 /* IN */ (shsrc_62),
	.a1 /* IN */ (shsrc_126),
	.s /* IN */ (shift_6)
);
mx2 onep_from_8_to_63_inst_55
(
	.z /* OUT */ (onep_63),
	.a0 /* IN */ (shsrc_63),
	.a1 /* IN */ (shsrc_127),
	.s /* IN */ (shift_6)
);

// SRCSHIFT.NET (70) - onep[64-127] : mx2
mx2 onep_from_64_to_127_inst_0
(
	.z /* OUT */ (onep_64),
	.a0 /* IN */ (shsrc_64),
	.a1 /* IN */ (shsrc_0),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_1
(
	.z /* OUT */ (onep_65),
	.a0 /* IN */ (shsrc_65),
	.a1 /* IN */ (shsrc_1),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_2
(
	.z /* OUT */ (onep_66),
	.a0 /* IN */ (shsrc_66),
	.a1 /* IN */ (shsrc_2),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_3
(
	.z /* OUT */ (onep_67),
	.a0 /* IN */ (shsrc_67),
	.a1 /* IN */ (shsrc_3),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_4
(
	.z /* OUT */ (onep_68),
	.a0 /* IN */ (shsrc_68),
	.a1 /* IN */ (shsrc_4),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_5
(
	.z /* OUT */ (onep_69),
	.a0 /* IN */ (shsrc_69),
	.a1 /* IN */ (shsrc_5),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_6
(
	.z /* OUT */ (onep_70),
	.a0 /* IN */ (shsrc_70),
	.a1 /* IN */ (shsrc_6),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_7
(
	.z /* OUT */ (onep_71),
	.a0 /* IN */ (shsrc_71),
	.a1 /* IN */ (shsrc_7),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_8
(
	.z /* OUT */ (onep_72),
	.a0 /* IN */ (shsrc_72),
	.a1 /* IN */ (shsrc_8),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_9
(
	.z /* OUT */ (onep_73),
	.a0 /* IN */ (shsrc_73),
	.a1 /* IN */ (shsrc_9),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_10
(
	.z /* OUT */ (onep_74),
	.a0 /* IN */ (shsrc_74),
	.a1 /* IN */ (shsrc_10),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_11
(
	.z /* OUT */ (onep_75),
	.a0 /* IN */ (shsrc_75),
	.a1 /* IN */ (shsrc_11),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_12
(
	.z /* OUT */ (onep_76),
	.a0 /* IN */ (shsrc_76),
	.a1 /* IN */ (shsrc_12),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_13
(
	.z /* OUT */ (onep_77),
	.a0 /* IN */ (shsrc_77),
	.a1 /* IN */ (shsrc_13),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_14
(
	.z /* OUT */ (onep_78),
	.a0 /* IN */ (shsrc_78),
	.a1 /* IN */ (shsrc_14),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_15
(
	.z /* OUT */ (onep_79),
	.a0 /* IN */ (shsrc_79),
	.a1 /* IN */ (shsrc_15),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_16
(
	.z /* OUT */ (onep_80),
	.a0 /* IN */ (shsrc_80),
	.a1 /* IN */ (shsrc_16),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_17
(
	.z /* OUT */ (onep_81),
	.a0 /* IN */ (shsrc_81),
	.a1 /* IN */ (shsrc_17),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_18
(
	.z /* OUT */ (onep_82),
	.a0 /* IN */ (shsrc_82),
	.a1 /* IN */ (shsrc_18),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_19
(
	.z /* OUT */ (onep_83),
	.a0 /* IN */ (shsrc_83),
	.a1 /* IN */ (shsrc_19),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_20
(
	.z /* OUT */ (onep_84),
	.a0 /* IN */ (shsrc_84),
	.a1 /* IN */ (shsrc_20),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_21
(
	.z /* OUT */ (onep_85),
	.a0 /* IN */ (shsrc_85),
	.a1 /* IN */ (shsrc_21),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_22
(
	.z /* OUT */ (onep_86),
	.a0 /* IN */ (shsrc_86),
	.a1 /* IN */ (shsrc_22),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_23
(
	.z /* OUT */ (onep_87),
	.a0 /* IN */ (shsrc_87),
	.a1 /* IN */ (shsrc_23),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_24
(
	.z /* OUT */ (onep_88),
	.a0 /* IN */ (shsrc_88),
	.a1 /* IN */ (shsrc_24),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_25
(
	.z /* OUT */ (onep_89),
	.a0 /* IN */ (shsrc_89),
	.a1 /* IN */ (shsrc_25),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_26
(
	.z /* OUT */ (onep_90),
	.a0 /* IN */ (shsrc_90),
	.a1 /* IN */ (shsrc_26),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_27
(
	.z /* OUT */ (onep_91),
	.a0 /* IN */ (shsrc_91),
	.a1 /* IN */ (shsrc_27),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_28
(
	.z /* OUT */ (onep_92),
	.a0 /* IN */ (shsrc_92),
	.a1 /* IN */ (shsrc_28),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_29
(
	.z /* OUT */ (onep_93),
	.a0 /* IN */ (shsrc_93),
	.a1 /* IN */ (shsrc_29),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_30
(
	.z /* OUT */ (onep_94),
	.a0 /* IN */ (shsrc_94),
	.a1 /* IN */ (shsrc_30),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_31
(
	.z /* OUT */ (onep_95),
	.a0 /* IN */ (shsrc_95),
	.a1 /* IN */ (shsrc_31),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_32
(
	.z /* OUT */ (onep_96),
	.a0 /* IN */ (shsrc_96),
	.a1 /* IN */ (shsrc_32),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_33
(
	.z /* OUT */ (onep_97),
	.a0 /* IN */ (shsrc_97),
	.a1 /* IN */ (shsrc_33),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_34
(
	.z /* OUT */ (onep_98),
	.a0 /* IN */ (shsrc_98),
	.a1 /* IN */ (shsrc_34),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_35
(
	.z /* OUT */ (onep_99),
	.a0 /* IN */ (shsrc_99),
	.a1 /* IN */ (shsrc_35),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_36
(
	.z /* OUT */ (onep_100),
	.a0 /* IN */ (shsrc_100),
	.a1 /* IN */ (shsrc_36),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_37
(
	.z /* OUT */ (onep_101),
	.a0 /* IN */ (shsrc_101),
	.a1 /* IN */ (shsrc_37),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_38
(
	.z /* OUT */ (onep_102),
	.a0 /* IN */ (shsrc_102),
	.a1 /* IN */ (shsrc_38),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_39
(
	.z /* OUT */ (onep_103),
	.a0 /* IN */ (shsrc_103),
	.a1 /* IN */ (shsrc_39),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_40
(
	.z /* OUT */ (onep_104),
	.a0 /* IN */ (shsrc_104),
	.a1 /* IN */ (shsrc_40),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_41
(
	.z /* OUT */ (onep_105),
	.a0 /* IN */ (shsrc_105),
	.a1 /* IN */ (shsrc_41),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_42
(
	.z /* OUT */ (onep_106),
	.a0 /* IN */ (shsrc_106),
	.a1 /* IN */ (shsrc_42),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_43
(
	.z /* OUT */ (onep_107),
	.a0 /* IN */ (shsrc_107),
	.a1 /* IN */ (shsrc_43),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_44
(
	.z /* OUT */ (onep_108),
	.a0 /* IN */ (shsrc_108),
	.a1 /* IN */ (shsrc_44),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_45
(
	.z /* OUT */ (onep_109),
	.a0 /* IN */ (shsrc_109),
	.a1 /* IN */ (shsrc_45),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_46
(
	.z /* OUT */ (onep_110),
	.a0 /* IN */ (shsrc_110),
	.a1 /* IN */ (shsrc_46),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_47
(
	.z /* OUT */ (onep_111),
	.a0 /* IN */ (shsrc_111),
	.a1 /* IN */ (shsrc_47),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_48
(
	.z /* OUT */ (onep_112),
	.a0 /* IN */ (shsrc_112),
	.a1 /* IN */ (shsrc_48),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_49
(
	.z /* OUT */ (onep_113),
	.a0 /* IN */ (shsrc_113),
	.a1 /* IN */ (shsrc_49),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_50
(
	.z /* OUT */ (onep_114),
	.a0 /* IN */ (shsrc_114),
	.a1 /* IN */ (shsrc_50),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_51
(
	.z /* OUT */ (onep_115),
	.a0 /* IN */ (shsrc_115),
	.a1 /* IN */ (shsrc_51),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_52
(
	.z /* OUT */ (onep_116),
	.a0 /* IN */ (shsrc_116),
	.a1 /* IN */ (shsrc_52),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_53
(
	.z /* OUT */ (onep_117),
	.a0 /* IN */ (shsrc_117),
	.a1 /* IN */ (shsrc_53),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_54
(
	.z /* OUT */ (onep_118),
	.a0 /* IN */ (shsrc_118),
	.a1 /* IN */ (shsrc_54),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_55
(
	.z /* OUT */ (onep_119),
	.a0 /* IN */ (shsrc_119),
	.a1 /* IN */ (shsrc_55),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_56
(
	.z /* OUT */ (onep_120),
	.a0 /* IN */ (shsrc_120),
	.a1 /* IN */ (shsrc_56),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_57
(
	.z /* OUT */ (onep_121),
	.a0 /* IN */ (shsrc_121),
	.a1 /* IN */ (shsrc_57),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_58
(
	.z /* OUT */ (onep_122),
	.a0 /* IN */ (shsrc_122),
	.a1 /* IN */ (shsrc_58),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_59
(
	.z /* OUT */ (onep_123),
	.a0 /* IN */ (shsrc_123),
	.a1 /* IN */ (shsrc_59),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_60
(
	.z /* OUT */ (onep_124),
	.a0 /* IN */ (shsrc_124),
	.a1 /* IN */ (shsrc_60),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_61
(
	.z /* OUT */ (onep_125),
	.a0 /* IN */ (shsrc_125),
	.a1 /* IN */ (shsrc_61),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_62
(
	.z /* OUT */ (onep_126),
	.a0 /* IN */ (shsrc_126),
	.a1 /* IN */ (shsrc_62),
	.s /* IN */ (shift_6)
);
mx2 onep_from_64_to_127_inst_63
(
	.z /* OUT */ (onep_127),
	.a0 /* IN */ (shsrc_127),
	.a1 /* IN */ (shsrc_63),
	.s /* IN */ (shift_6)
);

// SRCSHIFT.NET (75) - onel[40-127] : mx2
mx2 onel_from_40_to_127_inst_0
(
	.z /* OUT */ (onel_40),
	.a0 /* IN */ (onep_40),
	.a1 /* IN */ (onep_8),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_1
(
	.z /* OUT */ (onel_41),
	.a0 /* IN */ (onep_41),
	.a1 /* IN */ (onep_9),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_2
(
	.z /* OUT */ (onel_42),
	.a0 /* IN */ (onep_42),
	.a1 /* IN */ (onep_10),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_3
(
	.z /* OUT */ (onel_43),
	.a0 /* IN */ (onep_43),
	.a1 /* IN */ (onep_11),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_4
(
	.z /* OUT */ (onel_44),
	.a0 /* IN */ (onep_44),
	.a1 /* IN */ (onep_12),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_5
(
	.z /* OUT */ (onel_45),
	.a0 /* IN */ (onep_45),
	.a1 /* IN */ (onep_13),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_6
(
	.z /* OUT */ (onel_46),
	.a0 /* IN */ (onep_46),
	.a1 /* IN */ (onep_14),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_7
(
	.z /* OUT */ (onel_47),
	.a0 /* IN */ (onep_47),
	.a1 /* IN */ (onep_15),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_8
(
	.z /* OUT */ (onel_48),
	.a0 /* IN */ (onep_48),
	.a1 /* IN */ (onep_16),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_9
(
	.z /* OUT */ (onel_49),
	.a0 /* IN */ (onep_49),
	.a1 /* IN */ (onep_17),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_10
(
	.z /* OUT */ (onel_50),
	.a0 /* IN */ (onep_50),
	.a1 /* IN */ (onep_18),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_11
(
	.z /* OUT */ (onel_51),
	.a0 /* IN */ (onep_51),
	.a1 /* IN */ (onep_19),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_12
(
	.z /* OUT */ (onel_52),
	.a0 /* IN */ (onep_52),
	.a1 /* IN */ (onep_20),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_13
(
	.z /* OUT */ (onel_53),
	.a0 /* IN */ (onep_53),
	.a1 /* IN */ (onep_21),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_14
(
	.z /* OUT */ (onel_54),
	.a0 /* IN */ (onep_54),
	.a1 /* IN */ (onep_22),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_15
(
	.z /* OUT */ (onel_55),
	.a0 /* IN */ (onep_55),
	.a1 /* IN */ (onep_23),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_16
(
	.z /* OUT */ (onel_56),
	.a0 /* IN */ (onep_56),
	.a1 /* IN */ (onep_24),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_17
(
	.z /* OUT */ (onel_57),
	.a0 /* IN */ (onep_57),
	.a1 /* IN */ (onep_25),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_18
(
	.z /* OUT */ (onel_58),
	.a0 /* IN */ (onep_58),
	.a1 /* IN */ (onep_26),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_19
(
	.z /* OUT */ (onel_59),
	.a0 /* IN */ (onep_59),
	.a1 /* IN */ (onep_27),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_20
(
	.z /* OUT */ (onel_60),
	.a0 /* IN */ (onep_60),
	.a1 /* IN */ (onep_28),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_21
(
	.z /* OUT */ (onel_61),
	.a0 /* IN */ (onep_61),
	.a1 /* IN */ (onep_29),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_22
(
	.z /* OUT */ (onel_62),
	.a0 /* IN */ (onep_62),
	.a1 /* IN */ (onep_30),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_23
(
	.z /* OUT */ (onel_63),
	.a0 /* IN */ (onep_63),
	.a1 /* IN */ (onep_31),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_24
(
	.z /* OUT */ (onel_64),
	.a0 /* IN */ (onep_64),
	.a1 /* IN */ (onep_32),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_25
(
	.z /* OUT */ (onel_65),
	.a0 /* IN */ (onep_65),
	.a1 /* IN */ (onep_33),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_26
(
	.z /* OUT */ (onel_66),
	.a0 /* IN */ (onep_66),
	.a1 /* IN */ (onep_34),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_27
(
	.z /* OUT */ (onel_67),
	.a0 /* IN */ (onep_67),
	.a1 /* IN */ (onep_35),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_28
(
	.z /* OUT */ (onel_68),
	.a0 /* IN */ (onep_68),
	.a1 /* IN */ (onep_36),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_29
(
	.z /* OUT */ (onel_69),
	.a0 /* IN */ (onep_69),
	.a1 /* IN */ (onep_37),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_30
(
	.z /* OUT */ (onel_70),
	.a0 /* IN */ (onep_70),
	.a1 /* IN */ (onep_38),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_31
(
	.z /* OUT */ (onel_71),
	.a0 /* IN */ (onep_71),
	.a1 /* IN */ (onep_39),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_32
(
	.z /* OUT */ (onel_72),
	.a0 /* IN */ (onep_72),
	.a1 /* IN */ (onep_40),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_33
(
	.z /* OUT */ (onel_73),
	.a0 /* IN */ (onep_73),
	.a1 /* IN */ (onep_41),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_34
(
	.z /* OUT */ (onel_74),
	.a0 /* IN */ (onep_74),
	.a1 /* IN */ (onep_42),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_35
(
	.z /* OUT */ (onel_75),
	.a0 /* IN */ (onep_75),
	.a1 /* IN */ (onep_43),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_36
(
	.z /* OUT */ (onel_76),
	.a0 /* IN */ (onep_76),
	.a1 /* IN */ (onep_44),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_37
(
	.z /* OUT */ (onel_77),
	.a0 /* IN */ (onep_77),
	.a1 /* IN */ (onep_45),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_38
(
	.z /* OUT */ (onel_78),
	.a0 /* IN */ (onep_78),
	.a1 /* IN */ (onep_46),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_39
(
	.z /* OUT */ (onel_79),
	.a0 /* IN */ (onep_79),
	.a1 /* IN */ (onep_47),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_40
(
	.z /* OUT */ (onel_80),
	.a0 /* IN */ (onep_80),
	.a1 /* IN */ (onep_48),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_41
(
	.z /* OUT */ (onel_81),
	.a0 /* IN */ (onep_81),
	.a1 /* IN */ (onep_49),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_42
(
	.z /* OUT */ (onel_82),
	.a0 /* IN */ (onep_82),
	.a1 /* IN */ (onep_50),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_43
(
	.z /* OUT */ (onel_83),
	.a0 /* IN */ (onep_83),
	.a1 /* IN */ (onep_51),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_44
(
	.z /* OUT */ (onel_84),
	.a0 /* IN */ (onep_84),
	.a1 /* IN */ (onep_52),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_45
(
	.z /* OUT */ (onel_85),
	.a0 /* IN */ (onep_85),
	.a1 /* IN */ (onep_53),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_46
(
	.z /* OUT */ (onel_86),
	.a0 /* IN */ (onep_86),
	.a1 /* IN */ (onep_54),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_47
(
	.z /* OUT */ (onel_87),
	.a0 /* IN */ (onep_87),
	.a1 /* IN */ (onep_55),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_48
(
	.z /* OUT */ (onel_88),
	.a0 /* IN */ (onep_88),
	.a1 /* IN */ (onep_56),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_49
(
	.z /* OUT */ (onel_89),
	.a0 /* IN */ (onep_89),
	.a1 /* IN */ (onep_57),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_50
(
	.z /* OUT */ (onel_90),
	.a0 /* IN */ (onep_90),
	.a1 /* IN */ (onep_58),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_51
(
	.z /* OUT */ (onel_91),
	.a0 /* IN */ (onep_91),
	.a1 /* IN */ (onep_59),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_52
(
	.z /* OUT */ (onel_92),
	.a0 /* IN */ (onep_92),
	.a1 /* IN */ (onep_60),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_53
(
	.z /* OUT */ (onel_93),
	.a0 /* IN */ (onep_93),
	.a1 /* IN */ (onep_61),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_54
(
	.z /* OUT */ (onel_94),
	.a0 /* IN */ (onep_94),
	.a1 /* IN */ (onep_62),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_55
(
	.z /* OUT */ (onel_95),
	.a0 /* IN */ (onep_95),
	.a1 /* IN */ (onep_63),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_56
(
	.z /* OUT */ (onel_96),
	.a0 /* IN */ (onep_96),
	.a1 /* IN */ (onep_64),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_57
(
	.z /* OUT */ (onel_97),
	.a0 /* IN */ (onep_97),
	.a1 /* IN */ (onep_65),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_58
(
	.z /* OUT */ (onel_98),
	.a0 /* IN */ (onep_98),
	.a1 /* IN */ (onep_66),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_59
(
	.z /* OUT */ (onel_99),
	.a0 /* IN */ (onep_99),
	.a1 /* IN */ (onep_67),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_60
(
	.z /* OUT */ (onel_100),
	.a0 /* IN */ (onep_100),
	.a1 /* IN */ (onep_68),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_61
(
	.z /* OUT */ (onel_101),
	.a0 /* IN */ (onep_101),
	.a1 /* IN */ (onep_69),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_62
(
	.z /* OUT */ (onel_102),
	.a0 /* IN */ (onep_102),
	.a1 /* IN */ (onep_70),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_63
(
	.z /* OUT */ (onel_103),
	.a0 /* IN */ (onep_103),
	.a1 /* IN */ (onep_71),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_64
(
	.z /* OUT */ (onel_104),
	.a0 /* IN */ (onep_104),
	.a1 /* IN */ (onep_72),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_65
(
	.z /* OUT */ (onel_105),
	.a0 /* IN */ (onep_105),
	.a1 /* IN */ (onep_73),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_66
(
	.z /* OUT */ (onel_106),
	.a0 /* IN */ (onep_106),
	.a1 /* IN */ (onep_74),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_67
(
	.z /* OUT */ (onel_107),
	.a0 /* IN */ (onep_107),
	.a1 /* IN */ (onep_75),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_68
(
	.z /* OUT */ (onel_108),
	.a0 /* IN */ (onep_108),
	.a1 /* IN */ (onep_76),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_69
(
	.z /* OUT */ (onel_109),
	.a0 /* IN */ (onep_109),
	.a1 /* IN */ (onep_77),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_70
(
	.z /* OUT */ (onel_110),
	.a0 /* IN */ (onep_110),
	.a1 /* IN */ (onep_78),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_71
(
	.z /* OUT */ (onel_111),
	.a0 /* IN */ (onep_111),
	.a1 /* IN */ (onep_79),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_72
(
	.z /* OUT */ (onel_112),
	.a0 /* IN */ (onep_112),
	.a1 /* IN */ (onep_80),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_73
(
	.z /* OUT */ (onel_113),
	.a0 /* IN */ (onep_113),
	.a1 /* IN */ (onep_81),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_74
(
	.z /* OUT */ (onel_114),
	.a0 /* IN */ (onep_114),
	.a1 /* IN */ (onep_82),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_75
(
	.z /* OUT */ (onel_115),
	.a0 /* IN */ (onep_115),
	.a1 /* IN */ (onep_83),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_76
(
	.z /* OUT */ (onel_116),
	.a0 /* IN */ (onep_116),
	.a1 /* IN */ (onep_84),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_77
(
	.z /* OUT */ (onel_117),
	.a0 /* IN */ (onep_117),
	.a1 /* IN */ (onep_85),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_78
(
	.z /* OUT */ (onel_118),
	.a0 /* IN */ (onep_118),
	.a1 /* IN */ (onep_86),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_79
(
	.z /* OUT */ (onel_119),
	.a0 /* IN */ (onep_119),
	.a1 /* IN */ (onep_87),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_80
(
	.z /* OUT */ (onel_120),
	.a0 /* IN */ (onep_120),
	.a1 /* IN */ (onep_88),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_81
(
	.z /* OUT */ (onel_121),
	.a0 /* IN */ (onep_121),
	.a1 /* IN */ (onep_89),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_82
(
	.z /* OUT */ (onel_122),
	.a0 /* IN */ (onep_122),
	.a1 /* IN */ (onep_90),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_83
(
	.z /* OUT */ (onel_123),
	.a0 /* IN */ (onep_123),
	.a1 /* IN */ (onep_91),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_84
(
	.z /* OUT */ (onel_124),
	.a0 /* IN */ (onep_124),
	.a1 /* IN */ (onep_92),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_85
(
	.z /* OUT */ (onel_125),
	.a0 /* IN */ (onep_125),
	.a1 /* IN */ (onep_93),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_86
(
	.z /* OUT */ (onel_126),
	.a0 /* IN */ (onep_126),
	.a1 /* IN */ (onep_94),
	.s /* IN */ (shift_5)
);
mx2 onel_from_40_to_127_inst_87
(
	.z /* OUT */ (onel_127),
	.a0 /* IN */ (onep_127),
	.a1 /* IN */ (onep_95),
	.s /* IN */ (shift_5)
);

// SRCSHIFT.NET (80) - onew[56-127] : mx2
mx2 onew_from_56_to_127_inst_0
(
	.z /* OUT */ (onew_56),
	.a0 /* IN */ (onel_56),
	.a1 /* IN */ (onel_40),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_1
(
	.z /* OUT */ (onew_57),
	.a0 /* IN */ (onel_57),
	.a1 /* IN */ (onel_41),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_2
(
	.z /* OUT */ (onew_58),
	.a0 /* IN */ (onel_58),
	.a1 /* IN */ (onel_42),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_3
(
	.z /* OUT */ (onew_59),
	.a0 /* IN */ (onel_59),
	.a1 /* IN */ (onel_43),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_4
(
	.z /* OUT */ (onew_60),
	.a0 /* IN */ (onel_60),
	.a1 /* IN */ (onel_44),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_5
(
	.z /* OUT */ (onew_61),
	.a0 /* IN */ (onel_61),
	.a1 /* IN */ (onel_45),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_6
(
	.z /* OUT */ (onew_62),
	.a0 /* IN */ (onel_62),
	.a1 /* IN */ (onel_46),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_7
(
	.z /* OUT */ (onew_63),
	.a0 /* IN */ (onel_63),
	.a1 /* IN */ (onel_47),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_8
(
	.z /* OUT */ (onew_64),
	.a0 /* IN */ (onel_64),
	.a1 /* IN */ (onel_48),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_9
(
	.z /* OUT */ (onew_65),
	.a0 /* IN */ (onel_65),
	.a1 /* IN */ (onel_49),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_10
(
	.z /* OUT */ (onew_66),
	.a0 /* IN */ (onel_66),
	.a1 /* IN */ (onel_50),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_11
(
	.z /* OUT */ (onew_67),
	.a0 /* IN */ (onel_67),
	.a1 /* IN */ (onel_51),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_12
(
	.z /* OUT */ (onew_68),
	.a0 /* IN */ (onel_68),
	.a1 /* IN */ (onel_52),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_13
(
	.z /* OUT */ (onew_69),
	.a0 /* IN */ (onel_69),
	.a1 /* IN */ (onel_53),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_14
(
	.z /* OUT */ (onew_70),
	.a0 /* IN */ (onel_70),
	.a1 /* IN */ (onel_54),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_15
(
	.z /* OUT */ (onew_71),
	.a0 /* IN */ (onel_71),
	.a1 /* IN */ (onel_55),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_16
(
	.z /* OUT */ (onew_72),
	.a0 /* IN */ (onel_72),
	.a1 /* IN */ (onel_56),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_17
(
	.z /* OUT */ (onew_73),
	.a0 /* IN */ (onel_73),
	.a1 /* IN */ (onel_57),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_18
(
	.z /* OUT */ (onew_74),
	.a0 /* IN */ (onel_74),
	.a1 /* IN */ (onel_58),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_19
(
	.z /* OUT */ (onew_75),
	.a0 /* IN */ (onel_75),
	.a1 /* IN */ (onel_59),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_20
(
	.z /* OUT */ (onew_76),
	.a0 /* IN */ (onel_76),
	.a1 /* IN */ (onel_60),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_21
(
	.z /* OUT */ (onew_77),
	.a0 /* IN */ (onel_77),
	.a1 /* IN */ (onel_61),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_22
(
	.z /* OUT */ (onew_78),
	.a0 /* IN */ (onel_78),
	.a1 /* IN */ (onel_62),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_23
(
	.z /* OUT */ (onew_79),
	.a0 /* IN */ (onel_79),
	.a1 /* IN */ (onel_63),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_24
(
	.z /* OUT */ (onew_80),
	.a0 /* IN */ (onel_80),
	.a1 /* IN */ (onel_64),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_25
(
	.z /* OUT */ (onew_81),
	.a0 /* IN */ (onel_81),
	.a1 /* IN */ (onel_65),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_26
(
	.z /* OUT */ (onew_82),
	.a0 /* IN */ (onel_82),
	.a1 /* IN */ (onel_66),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_27
(
	.z /* OUT */ (onew_83),
	.a0 /* IN */ (onel_83),
	.a1 /* IN */ (onel_67),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_28
(
	.z /* OUT */ (onew_84),
	.a0 /* IN */ (onel_84),
	.a1 /* IN */ (onel_68),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_29
(
	.z /* OUT */ (onew_85),
	.a0 /* IN */ (onel_85),
	.a1 /* IN */ (onel_69),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_30
(
	.z /* OUT */ (onew_86),
	.a0 /* IN */ (onel_86),
	.a1 /* IN */ (onel_70),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_31
(
	.z /* OUT */ (onew_87),
	.a0 /* IN */ (onel_87),
	.a1 /* IN */ (onel_71),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_32
(
	.z /* OUT */ (onew_88),
	.a0 /* IN */ (onel_88),
	.a1 /* IN */ (onel_72),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_33
(
	.z /* OUT */ (onew_89),
	.a0 /* IN */ (onel_89),
	.a1 /* IN */ (onel_73),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_34
(
	.z /* OUT */ (onew_90),
	.a0 /* IN */ (onel_90),
	.a1 /* IN */ (onel_74),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_35
(
	.z /* OUT */ (onew_91),
	.a0 /* IN */ (onel_91),
	.a1 /* IN */ (onel_75),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_36
(
	.z /* OUT */ (onew_92),
	.a0 /* IN */ (onel_92),
	.a1 /* IN */ (onel_76),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_37
(
	.z /* OUT */ (onew_93),
	.a0 /* IN */ (onel_93),
	.a1 /* IN */ (onel_77),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_38
(
	.z /* OUT */ (onew_94),
	.a0 /* IN */ (onel_94),
	.a1 /* IN */ (onel_78),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_39
(
	.z /* OUT */ (onew_95),
	.a0 /* IN */ (onel_95),
	.a1 /* IN */ (onel_79),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_40
(
	.z /* OUT */ (onew_96),
	.a0 /* IN */ (onel_96),
	.a1 /* IN */ (onel_80),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_41
(
	.z /* OUT */ (onew_97),
	.a0 /* IN */ (onel_97),
	.a1 /* IN */ (onel_81),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_42
(
	.z /* OUT */ (onew_98),
	.a0 /* IN */ (onel_98),
	.a1 /* IN */ (onel_82),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_43
(
	.z /* OUT */ (onew_99),
	.a0 /* IN */ (onel_99),
	.a1 /* IN */ (onel_83),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_44
(
	.z /* OUT */ (onew_100),
	.a0 /* IN */ (onel_100),
	.a1 /* IN */ (onel_84),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_45
(
	.z /* OUT */ (onew_101),
	.a0 /* IN */ (onel_101),
	.a1 /* IN */ (onel_85),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_46
(
	.z /* OUT */ (onew_102),
	.a0 /* IN */ (onel_102),
	.a1 /* IN */ (onel_86),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_47
(
	.z /* OUT */ (onew_103),
	.a0 /* IN */ (onel_103),
	.a1 /* IN */ (onel_87),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_48
(
	.z /* OUT */ (onew_104),
	.a0 /* IN */ (onel_104),
	.a1 /* IN */ (onel_88),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_49
(
	.z /* OUT */ (onew_105),
	.a0 /* IN */ (onel_105),
	.a1 /* IN */ (onel_89),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_50
(
	.z /* OUT */ (onew_106),
	.a0 /* IN */ (onel_106),
	.a1 /* IN */ (onel_90),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_51
(
	.z /* OUT */ (onew_107),
	.a0 /* IN */ (onel_107),
	.a1 /* IN */ (onel_91),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_52
(
	.z /* OUT */ (onew_108),
	.a0 /* IN */ (onel_108),
	.a1 /* IN */ (onel_92),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_53
(
	.z /* OUT */ (onew_109),
	.a0 /* IN */ (onel_109),
	.a1 /* IN */ (onel_93),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_54
(
	.z /* OUT */ (onew_110),
	.a0 /* IN */ (onel_110),
	.a1 /* IN */ (onel_94),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_55
(
	.z /* OUT */ (onew_111),
	.a0 /* IN */ (onel_111),
	.a1 /* IN */ (onel_95),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_56
(
	.z /* OUT */ (onew_112),
	.a0 /* IN */ (onel_112),
	.a1 /* IN */ (onel_96),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_57
(
	.z /* OUT */ (onew_113),
	.a0 /* IN */ (onel_113),
	.a1 /* IN */ (onel_97),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_58
(
	.z /* OUT */ (onew_114),
	.a0 /* IN */ (onel_114),
	.a1 /* IN */ (onel_98),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_59
(
	.z /* OUT */ (onew_115),
	.a0 /* IN */ (onel_115),
	.a1 /* IN */ (onel_99),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_60
(
	.z /* OUT */ (onew_116),
	.a0 /* IN */ (onel_116),
	.a1 /* IN */ (onel_100),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_61
(
	.z /* OUT */ (onew_117),
	.a0 /* IN */ (onel_117),
	.a1 /* IN */ (onel_101),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_62
(
	.z /* OUT */ (onew_118),
	.a0 /* IN */ (onel_118),
	.a1 /* IN */ (onel_102),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_63
(
	.z /* OUT */ (onew_119),
	.a0 /* IN */ (onel_119),
	.a1 /* IN */ (onel_103),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_64
(
	.z /* OUT */ (onew_120),
	.a0 /* IN */ (onel_120),
	.a1 /* IN */ (onel_104),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_65
(
	.z /* OUT */ (onew_121),
	.a0 /* IN */ (onel_121),
	.a1 /* IN */ (onel_105),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_66
(
	.z /* OUT */ (onew_122),
	.a0 /* IN */ (onel_122),
	.a1 /* IN */ (onel_106),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_67
(
	.z /* OUT */ (onew_123),
	.a0 /* IN */ (onel_123),
	.a1 /* IN */ (onel_107),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_68
(
	.z /* OUT */ (onew_124),
	.a0 /* IN */ (onel_124),
	.a1 /* IN */ (onel_108),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_69
(
	.z /* OUT */ (onew_125),
	.a0 /* IN */ (onel_125),
	.a1 /* IN */ (onel_109),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_70
(
	.z /* OUT */ (onew_126),
	.a0 /* IN */ (onel_126),
	.a1 /* IN */ (onel_110),
	.s /* IN */ (shift_4)
);
mx2 onew_from_56_to_127_inst_71
(
	.z /* OUT */ (onew_127),
	.a0 /* IN */ (onel_127),
	.a1 /* IN */ (onel_111),
	.s /* IN */ (shift_4)
);

// SRCSHIFT.NET (85) - oneb[64-127] : mx2
mx2 oneb_from_64_to_127_inst_0
(
	.z /* OUT */ (oneb_64),
	.a0 /* IN */ (onew_64),
	.a1 /* IN */ (onew_56),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_1
(
	.z /* OUT */ (oneb_65),
	.a0 /* IN */ (onew_65),
	.a1 /* IN */ (onew_57),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_2
(
	.z /* OUT */ (oneb_66),
	.a0 /* IN */ (onew_66),
	.a1 /* IN */ (onew_58),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_3
(
	.z /* OUT */ (oneb_67),
	.a0 /* IN */ (onew_67),
	.a1 /* IN */ (onew_59),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_4
(
	.z /* OUT */ (oneb_68),
	.a0 /* IN */ (onew_68),
	.a1 /* IN */ (onew_60),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_5
(
	.z /* OUT */ (oneb_69),
	.a0 /* IN */ (onew_69),
	.a1 /* IN */ (onew_61),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_6
(
	.z /* OUT */ (oneb_70),
	.a0 /* IN */ (onew_70),
	.a1 /* IN */ (onew_62),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_7
(
	.z /* OUT */ (oneb_71),
	.a0 /* IN */ (onew_71),
	.a1 /* IN */ (onew_63),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_8
(
	.z /* OUT */ (oneb_72),
	.a0 /* IN */ (onew_72),
	.a1 /* IN */ (onew_64),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_9
(
	.z /* OUT */ (oneb_73),
	.a0 /* IN */ (onew_73),
	.a1 /* IN */ (onew_65),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_10
(
	.z /* OUT */ (oneb_74),
	.a0 /* IN */ (onew_74),
	.a1 /* IN */ (onew_66),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_11
(
	.z /* OUT */ (oneb_75),
	.a0 /* IN */ (onew_75),
	.a1 /* IN */ (onew_67),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_12
(
	.z /* OUT */ (oneb_76),
	.a0 /* IN */ (onew_76),
	.a1 /* IN */ (onew_68),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_13
(
	.z /* OUT */ (oneb_77),
	.a0 /* IN */ (onew_77),
	.a1 /* IN */ (onew_69),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_14
(
	.z /* OUT */ (oneb_78),
	.a0 /* IN */ (onew_78),
	.a1 /* IN */ (onew_70),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_15
(
	.z /* OUT */ (oneb_79),
	.a0 /* IN */ (onew_79),
	.a1 /* IN */ (onew_71),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_16
(
	.z /* OUT */ (oneb_80),
	.a0 /* IN */ (onew_80),
	.a1 /* IN */ (onew_72),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_17
(
	.z /* OUT */ (oneb_81),
	.a0 /* IN */ (onew_81),
	.a1 /* IN */ (onew_73),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_18
(
	.z /* OUT */ (oneb_82),
	.a0 /* IN */ (onew_82),
	.a1 /* IN */ (onew_74),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_19
(
	.z /* OUT */ (oneb_83),
	.a0 /* IN */ (onew_83),
	.a1 /* IN */ (onew_75),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_20
(
	.z /* OUT */ (oneb_84),
	.a0 /* IN */ (onew_84),
	.a1 /* IN */ (onew_76),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_21
(
	.z /* OUT */ (oneb_85),
	.a0 /* IN */ (onew_85),
	.a1 /* IN */ (onew_77),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_22
(
	.z /* OUT */ (oneb_86),
	.a0 /* IN */ (onew_86),
	.a1 /* IN */ (onew_78),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_23
(
	.z /* OUT */ (oneb_87),
	.a0 /* IN */ (onew_87),
	.a1 /* IN */ (onew_79),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_24
(
	.z /* OUT */ (oneb_88),
	.a0 /* IN */ (onew_88),
	.a1 /* IN */ (onew_80),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_25
(
	.z /* OUT */ (oneb_89),
	.a0 /* IN */ (onew_89),
	.a1 /* IN */ (onew_81),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_26
(
	.z /* OUT */ (oneb_90),
	.a0 /* IN */ (onew_90),
	.a1 /* IN */ (onew_82),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_27
(
	.z /* OUT */ (oneb_91),
	.a0 /* IN */ (onew_91),
	.a1 /* IN */ (onew_83),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_28
(
	.z /* OUT */ (oneb_92),
	.a0 /* IN */ (onew_92),
	.a1 /* IN */ (onew_84),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_29
(
	.z /* OUT */ (oneb_93),
	.a0 /* IN */ (onew_93),
	.a1 /* IN */ (onew_85),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_30
(
	.z /* OUT */ (oneb_94),
	.a0 /* IN */ (onew_94),
	.a1 /* IN */ (onew_86),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_31
(
	.z /* OUT */ (oneb_95),
	.a0 /* IN */ (onew_95),
	.a1 /* IN */ (onew_87),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_32
(
	.z /* OUT */ (oneb_96),
	.a0 /* IN */ (onew_96),
	.a1 /* IN */ (onew_88),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_33
(
	.z /* OUT */ (oneb_97),
	.a0 /* IN */ (onew_97),
	.a1 /* IN */ (onew_89),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_34
(
	.z /* OUT */ (oneb_98),
	.a0 /* IN */ (onew_98),
	.a1 /* IN */ (onew_90),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_35
(
	.z /* OUT */ (oneb_99),
	.a0 /* IN */ (onew_99),
	.a1 /* IN */ (onew_91),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_36
(
	.z /* OUT */ (oneb_100),
	.a0 /* IN */ (onew_100),
	.a1 /* IN */ (onew_92),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_37
(
	.z /* OUT */ (oneb_101),
	.a0 /* IN */ (onew_101),
	.a1 /* IN */ (onew_93),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_38
(
	.z /* OUT */ (oneb_102),
	.a0 /* IN */ (onew_102),
	.a1 /* IN */ (onew_94),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_39
(
	.z /* OUT */ (oneb_103),
	.a0 /* IN */ (onew_103),
	.a1 /* IN */ (onew_95),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_40
(
	.z /* OUT */ (oneb_104),
	.a0 /* IN */ (onew_104),
	.a1 /* IN */ (onew_96),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_41
(
	.z /* OUT */ (oneb_105),
	.a0 /* IN */ (onew_105),
	.a1 /* IN */ (onew_97),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_42
(
	.z /* OUT */ (oneb_106),
	.a0 /* IN */ (onew_106),
	.a1 /* IN */ (onew_98),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_43
(
	.z /* OUT */ (oneb_107),
	.a0 /* IN */ (onew_107),
	.a1 /* IN */ (onew_99),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_44
(
	.z /* OUT */ (oneb_108),
	.a0 /* IN */ (onew_108),
	.a1 /* IN */ (onew_100),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_45
(
	.z /* OUT */ (oneb_109),
	.a0 /* IN */ (onew_109),
	.a1 /* IN */ (onew_101),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_46
(
	.z /* OUT */ (oneb_110),
	.a0 /* IN */ (onew_110),
	.a1 /* IN */ (onew_102),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_47
(
	.z /* OUT */ (oneb_111),
	.a0 /* IN */ (onew_111),
	.a1 /* IN */ (onew_103),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_48
(
	.z /* OUT */ (oneb_112),
	.a0 /* IN */ (onew_112),
	.a1 /* IN */ (onew_104),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_49
(
	.z /* OUT */ (oneb_113),
	.a0 /* IN */ (onew_113),
	.a1 /* IN */ (onew_105),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_50
(
	.z /* OUT */ (oneb_114),
	.a0 /* IN */ (onew_114),
	.a1 /* IN */ (onew_106),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_51
(
	.z /* OUT */ (oneb_115),
	.a0 /* IN */ (onew_115),
	.a1 /* IN */ (onew_107),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_52
(
	.z /* OUT */ (oneb_116),
	.a0 /* IN */ (onew_116),
	.a1 /* IN */ (onew_108),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_53
(
	.z /* OUT */ (oneb_117),
	.a0 /* IN */ (onew_117),
	.a1 /* IN */ (onew_109),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_54
(
	.z /* OUT */ (oneb_118),
	.a0 /* IN */ (onew_118),
	.a1 /* IN */ (onew_110),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_55
(
	.z /* OUT */ (oneb_119),
	.a0 /* IN */ (onew_119),
	.a1 /* IN */ (onew_111),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_56
(
	.z /* OUT */ (oneb_120),
	.a0 /* IN */ (onew_120),
	.a1 /* IN */ (onew_112),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_57
(
	.z /* OUT */ (oneb_121),
	.a0 /* IN */ (onew_121),
	.a1 /* IN */ (onew_113),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_58
(
	.z /* OUT */ (oneb_122),
	.a0 /* IN */ (onew_122),
	.a1 /* IN */ (onew_114),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_59
(
	.z /* OUT */ (oneb_123),
	.a0 /* IN */ (onew_123),
	.a1 /* IN */ (onew_115),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_60
(
	.z /* OUT */ (oneb_124),
	.a0 /* IN */ (onew_124),
	.a1 /* IN */ (onew_116),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_61
(
	.z /* OUT */ (oneb_125),
	.a0 /* IN */ (onew_125),
	.a1 /* IN */ (onew_117),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_62
(
	.z /* OUT */ (oneb_126),
	.a0 /* IN */ (onew_126),
	.a1 /* IN */ (onew_118),
	.s /* IN */ (shift_3)
);
mx2 oneb_from_64_to_127_inst_63
(
	.z /* OUT */ (oneb_127),
	.a0 /* IN */ (onew_127),
	.a1 /* IN */ (onew_119),
	.s /* IN */ (shift_3)
);

// SRCSHIFT.NET (90) - onen[64-67] : mx2
mx2 onen_from_64_to_67_inst_0
(
	.z /* OUT */ (onen_64),
	.a0 /* IN */ (oneb_64),
	.a1 /* IN */ (oneb_68),
	.s /* IN */ (shift_2)
);
mx2 onen_from_64_to_67_inst_1
(
	.z /* OUT */ (onen_65),
	.a0 /* IN */ (oneb_65),
	.a1 /* IN */ (oneb_69),
	.s /* IN */ (shift_2)
);
mx2 onen_from_64_to_67_inst_2
(
	.z /* OUT */ (onen_66),
	.a0 /* IN */ (oneb_66),
	.a1 /* IN */ (oneb_70),
	.s /* IN */ (shift_2)
);
mx2 onen_from_64_to_67_inst_3
(
	.z /* OUT */ (onen_67),
	.a0 /* IN */ (oneb_67),
	.a1 /* IN */ (oneb_71),
	.s /* IN */ (shift_2)
);

// SRCSHIFT.NET (92) - onen[68-71] : mx2
mx2 onen_from_68_to_71_inst_0
(
	.z /* OUT */ (onen_68),
	.a0 /* IN */ (oneb_68),
	.a1 /* IN */ (oneb_64),
	.s /* IN */ (shift_2)
);
mx2 onen_from_68_to_71_inst_1
(
	.z /* OUT */ (onen_69),
	.a0 /* IN */ (oneb_69),
	.a1 /* IN */ (oneb_65),
	.s /* IN */ (shift_2)
);
mx2 onen_from_68_to_71_inst_2
(
	.z /* OUT */ (onen_70),
	.a0 /* IN */ (oneb_70),
	.a1 /* IN */ (oneb_66),
	.s /* IN */ (shift_2)
);
mx2 onen_from_68_to_71_inst_3
(
	.z /* OUT */ (onen_71),
	.a0 /* IN */ (oneb_71),
	.a1 /* IN */ (oneb_67),
	.s /* IN */ (shift_2)
);

// SRCSHIFT.NET (97) - onet[64-65] : mx2
mx2 onet_from_64_to_65_inst_0
(
	.z /* OUT */ (onet_64),
	.a0 /* IN */ (onen_64),
	.a1 /* IN */ (onen_70),
	.s /* IN */ (shift_1)
);
mx2 onet_from_64_to_65_inst_1
(
	.z /* OUT */ (onet_65),
	.a0 /* IN */ (onen_65),
	.a1 /* IN */ (onen_71),
	.s /* IN */ (shift_1)
);

// SRCSHIFT.NET (99) - onet[66-71] : mx2
mx2 onet_from_66_to_71_inst_0
(
	.z /* OUT */ (onet_66),
	.a0 /* IN */ (onen_66),
	.a1 /* IN */ (onen_64),
	.s /* IN */ (shift_1)
);
mx2 onet_from_66_to_71_inst_1
(
	.z /* OUT */ (onet_67),
	.a0 /* IN */ (onen_67),
	.a1 /* IN */ (onen_65),
	.s /* IN */ (shift_1)
);
mx2 onet_from_66_to_71_inst_2
(
	.z /* OUT */ (onet_68),
	.a0 /* IN */ (onen_68),
	.a1 /* IN */ (onen_66),
	.s /* IN */ (shift_1)
);
mx2 onet_from_66_to_71_inst_3
(
	.z /* OUT */ (onet_69),
	.a0 /* IN */ (onen_69),
	.a1 /* IN */ (onen_67),
	.s /* IN */ (shift_1)
);
mx2 onet_from_66_to_71_inst_4
(
	.z /* OUT */ (onet_70),
	.a0 /* IN */ (onen_70),
	.a1 /* IN */ (onen_68),
	.s /* IN */ (shift_1)
);
mx2 onet_from_66_to_71_inst_5
(
	.z /* OUT */ (onet_71),
	.a0 /* IN */ (onen_71),
	.a1 /* IN */ (onen_69),
	.s /* IN */ (shift_1)
);

// SRCSHIFT.NET (104) - oneo[64] : mx2
mx2 oneo_index_64_inst
(
	.z /* OUT */ (oneo_64),
	.a0 /* IN */ (onet_64),
	.a1 /* IN */ (onet_71),
	.s /* IN */ (shift_0)
);

// SRCSHIFT.NET (106) - oneo[65-71] : mx2
mx2 oneo_from_65_to_71_inst_0
(
	.z /* OUT */ (oneo_65),
	.a0 /* IN */ (onet_65),
	.a1 /* IN */ (onet_64),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_1
(
	.z /* OUT */ (oneo_66),
	.a0 /* IN */ (onet_66),
	.a1 /* IN */ (onet_65),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_2
(
	.z /* OUT */ (oneo_67),
	.a0 /* IN */ (onet_67),
	.a1 /* IN */ (onet_66),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_3
(
	.z /* OUT */ (oneo_68),
	.a0 /* IN */ (onet_68),
	.a1 /* IN */ (onet_67),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_4
(
	.z /* OUT */ (oneo_69),
	.a0 /* IN */ (onet_69),
	.a1 /* IN */ (onet_68),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_5
(
	.z /* OUT */ (oneo_70),
	.a0 /* IN */ (onet_70),
	.a1 /* IN */ (onet_69),
	.s /* IN */ (shift_0)
);
mx2 oneo_from_65_to_71_inst_6
(
	.z /* OUT */ (oneo_71),
	.a0 /* IN */ (onet_71),
	.a1 /* IN */ (onet_70),
	.s /* IN */ (shift_0)
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
