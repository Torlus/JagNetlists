`include "defs.v"

module tom
(
	input xbgl,
	input xdbrl_0,
	input xdbrl_1,
	input xlp,
	input xdint,
	input xtest,
	input xpclk,
	input xvclk,
	input xwaitl,
	input xresetl,
	inout xd_0,
	inout xd_1,
	inout xd_2,
	inout xd_3,
	inout xd_4,
	inout xd_5,
	inout xd_6,
	inout xd_7,
	inout xd_8,
	inout xd_9,
	inout xd_10,
	inout xd_11,
	inout xd_12,
	inout xd_13,
	inout xd_14,
	inout xd_15,
	inout xd_16,
	inout xd_17,
	inout xd_18,
	inout xd_19,
	inout xd_20,
	inout xd_21,
	inout xd_22,
	inout xd_23,
	inout xd_24,
	inout xd_25,
	inout xd_26,
	inout xd_27,
	inout xd_28,
	inout xd_29,
	inout xd_30,
	inout xd_31,
	inout xd_32,
	inout xd_33,
	inout xd_34,
	inout xd_35,
	inout xd_36,
	inout xd_37,
	inout xd_38,
	inout xd_39,
	inout xd_40,
	inout xd_41,
	inout xd_42,
	inout xd_43,
	inout xd_44,
	inout xd_45,
	inout xd_46,
	inout xd_47,
	inout xd_48,
	inout xd_49,
	inout xd_50,
	inout xd_51,
	inout xd_52,
	inout xd_53,
	inout xd_54,
	inout xd_55,
	inout xd_56,
	inout xd_57,
	inout xd_58,
	inout xd_59,
	inout xd_60,
	inout xd_61,
	inout xd_62,
	inout xd_63,
	inout xa_0,
	inout xa_1,
	inout xa_2,
	inout xa_3,
	inout xa_4,
	inout xa_5,
	inout xa_6,
	inout xa_7,
	inout xa_8,
	inout xa_9,
	inout xa_10,
	inout xa_11,
	inout xa_12,
	inout xa_13,
	inout xa_14,
	inout xa_15,
	inout xa_16,
	inout xa_17,
	inout xa_18,
	inout xa_19,
	inout xa_20,
	inout xa_21,
	inout xa_22,
	inout xa_23,
	inout xma_0,
	inout xma_1,
	inout xma_2,
	inout xma_3,
	inout xma_4,
	inout xma_5,
	inout xma_6,
	inout xma_7,
	inout xma_8,
	inout xma_9,
	inout xma_10,
	inout xhs,
	inout xvs,
	inout xsiz_0,
	inout xsiz_1,
	inout xfc_0,
	inout xfc_1,
	inout xfc_2,
	inout xrw,
	inout xdreql,
	inout xba,
	inout xbrl,
	output xr_0,
	output xr_1,
	output xr_2,
	output xr_3,
	output xr_4,
	output xr_5,
	output xr_6,
	output xr_7,
	output xg_0,
	output xg_1,
	output xg_2,
	output xg_3,
	output xg_4,
	output xg_5,
	output xg_6,
	output xg_7,
	output xb_0,
	output xb_1,
	output xb_2,
	output xb_3,
	output xb_4,
	output xb_5,
	output xb_6,
	output xb_7,
	output xinc,
	output xoel_0,
	output xoel_1,
	output xoel_2,
	output xmaska_0,
	output xmaska_1,
	output xmaska_2,
	output xromcsl_0,
	output xromcsl_1,
	output xcasl_0,
	output xcasl_1,
	output xdbgl,
	output xexpl,
	output xdspcsl,
	output xwel_0,
	output xwel_1,
	output xwel_2,
	output xwel_3,
	output xwel_4,
	output xwel_5,
	output xwel_6,
	output xwel_7,
	output xrasl_0,
	output xrasl_1,
	output xdtackl,
	output xintl,
	output cfgen,
	output brlout,
	output ba,
	output aen
);
wire [0:7] xd0_7;
wire [0:7] xd8_15;
wire [0:7] xd16_23;
wire [0:7] xd24_31;
wire [0:7] xd32_39;
wire [0:7] xd40_47;
wire [0:7] xd48_55;
wire [0:7] xd56_63;
wire [0:23] xa;
wire gnd;
wire din_0;
wire nt_78;
wire dp_0;
wire den_0;
wire nt_77;
wire din_1;
wire nt_74;
wire dp_1;
wire nt_73;
wire din_2;
wire nt_70;
wire dp_2;
wire nt_69;
wire din_3;
wire nt_66;
wire dp_3;
wire nt_65;
wire din_4;
wire nt_62;
wire dp_4;
wire nt_61;
wire din_5;
wire nt_58;
wire dp_5;
wire nt_57;
wire din_6;
wire nt_54;
wire dp_6;
wire nt_53;
wire din_7;
wire nt_50;
wire dp_7;
wire nt_49;
wire din_8;
wire dp_8;
wire nt_48;
wire din_9;
wire dp_9;
wire nt_52;
wire din_10;
wire dp_10;
wire nt_56;
wire din_11;
wire dp_11;
wire nt_60;
wire din_12;
wire dp_12;
wire nt_64;
wire din_13;
wire dp_13;
wire nt_68;
wire din_14;
wire dp_14;
wire nt_72;
wire din_15;
wire dp_15;
wire nt_76;
wire din_16;
wire dout_16;
wire den_1;
wire nt_75;
wire din_17;
wire dout_17;
wire nt_71;
wire din_18;
wire dout_18;
wire nt_67;
wire din_19;
wire dout_19;
wire nt_63;
wire din_20;
wire dout_20;
wire nt_59;
wire din_21;
wire dout_21;
wire nt_55;
wire din_22;
wire dout_22;
wire nt_51;
wire din_23;
wire dout_23;
wire nt_47;
wire din_24;
wire dout_24;
wire nt_46;
wire din_25;
wire dout_25;
wire din_26;
wire dout_26;
wire din_27;
wire dout_27;
wire din_28;
wire dout_28;
wire din_29;
wire dout_29;
wire din_30;
wire dout_30;
wire din_31;
wire dout_31;
wire din_32;
wire nt_119;
wire dout_32;
wire den_2;
wire nt_118;
wire din_33;
wire nt_115;
wire dout_33;
wire nt_114;
wire din_34;
wire nt_111;
wire dout_34;
wire nt_110;
wire din_35;
wire nt_107;
wire dout_35;
wire nt_106;
wire din_36;
wire nt_103;
wire dout_36;
wire nt_102;
wire din_37;
wire nt_99;
wire dout_37;
wire nt_98;
wire din_38;
wire nt_95;
wire dout_38;
wire nt_94;
wire din_39;
wire nt_91;
wire dout_39;
wire nt_90;
wire din_40;
wire dout_40;
wire nt_89;
wire din_41;
wire dout_41;
wire nt_93;
wire din_42;
wire dout_42;
wire nt_97;
wire din_43;
wire dout_43;
wire nt_101;
wire din_44;
wire dout_44;
wire nt_105;
wire din_45;
wire dout_45;
wire nt_109;
wire din_46;
wire dout_46;
wire nt_113;
wire din_47;
wire dout_47;
wire nt_117;
wire din_48;
wire nt_121;
wire dout_48;
wire nt_120;
wire din_49;
wire dout_49;
wire nt_116;
wire din_50;
wire dout_50;
wire nt_112;
wire din_51;
wire dout_51;
wire nt_108;
wire din_52;
wire dout_52;
wire nt_104;
wire din_53;
wire dout_53;
wire nt_100;
wire din_54;
wire dout_54;
wire nt_96;
wire din_55;
wire dout_55;
wire nt_92;
wire din_56;
wire dout_56;
wire din_57;
wire dout_57;
wire din_58;
wire dout_58;
wire din_59;
wire dout_59;
wire din_60;
wire dout_60;
wire din_61;
wire dout_61;
wire din_62;
wire dout_62;
wire din_63;
wire dout_63;
wire ain_0;
wire nt_23;
wire maska_0;
wire nt_22;
wire ain_1;
wire nt_24;
wire maska_1;
wire ain_2;
wire nt_25;
wire maska_2;
wire ain_3;
wire ain_4;
wire ain_5;
wire ain_6;
wire ain_7;
wire ain_8;
wire ain_9;
wire ain_10;
wire ain_11;
wire ain_12;
wire ain_13;
wire ain_14;
wire ain_15;
wire ain_16;
wire ain_17;
wire ain_18;
wire ain_19;
wire ain_20;
wire ain_21;
wire ain_22;
wire ain_23;
wire nt_26;
wire nt_27;
wire nt_28;
wire nt_29;
wire nt_30;
wire nt_31;
wire nt_32;
wire nt_33;
wire nt_34;
wire nt_35;
wire nt_36;
wire nt_37;
wire nt_38;
wire nt_39;
wire nt_40;
wire nt_41;
wire nt_42;
wire nt_43;
wire nt_44;
wire nt_45;
wire aout_3;
wire aout_4;
wire aout_5;
wire aout_6;
wire aout_7;
wire aout_8;
wire aout_9;
wire aout_10;
wire aout_11;
wire aout_12;
wire aout_13;
wire aout_14;
wire aout_15;
wire aout_16;
wire aout_17;
wire aout_18;
wire aout_19;
wire aout_20;
wire aout_21;
wire aout_22;
wire aout_23;
wire cfg_0;
wire ma_0;
wire nt_88;
wire cfg_1;
wire ma_1;
wire nt_87;
wire cfg_2;
wire ma_2;
wire nt_86;
wire cfg_3;
wire ma_3;
wire nt_85;
wire cfg_4;
wire ma_4;
wire nt_84;
wire cfg_5;
wire ma_5;
wire nt_83;
wire cfg_6;
wire ma_6;
wire nt_82;
wire cfg_7;
wire ma_7;
wire nt_81;
wire cfg_8;
wire ma_8;
wire nt_80;
wire cfg_9;
wire ma_9;
wire nt_79;
wire cfg_10;
wire ma_10;
wire romcsl_0;
wire romcsl_1;
wire rasl_0;
wire rasl_1;
wire notndtest;
wire ndtest;
wire casl_0;
wire casl_1;
wire oel_0;
wire oel_1;
wire oel_2;
wire wel_0;
wire wel_1;
wire wel_2;
wire wel_3;
wire wel_4;
wire wel_5;
wire wel_6;
wire wel_7;
wire pclk;
wire nt_21;
wire nt_20;
wire vxclk;
wire resetli;
wire nt_16;
wire nt_15;
wire resetl;
wire waitl;
wire nt_18;
wire nt_17;
wire notdreqin;
wire nt_7;
wire dreqlout;
wire nt_6;
wire dtackl;
wire rwin;
wire nt_9;
wire reads;
wire sizin_0;
wire nt_10;
wire sizout_0;
wire sizin_1;
wire nt_11;
wire sizout_1;
wire dreqin;
wire dbrl_0;
wire nt_19;
wire dbrl_1;
wire dbgl;
wire expl;
wire dspcsl;
wire intlt;
wire intl;
wire hlock;
wire nt_1;
wire hsl;
wire snden;
wire vcc;
wire vlock;
wire nt_2;
wire vsl;
wire syncen;
wire lp;
wire nt_3;
wire r_0;
wire r_1;
wire r_2;
wire r_3;
wire r_4;
wire r_5;
wire r_6;
wire r_7;
wire g_0;
wire g_1;
wire g_2;
wire g_3;
wire g_4;
wire g_5;
wire g_6;
wire g_7;
wire b_0;
wire b_1;
wire b_2;
wire b_3;
wire b_4;
wire b_5;
wire b_6;
wire b_7;
wire inc;
wire dint;
wire nt_12;
wire fc_0;
wire nt_4;
wire fcen;
wire fc_1;
wire nt_5;
wire fc_2;
wire m68k;
wire brlin;
wire nt_13;
wire testen;
wire bglin;
wire nt_14;
wire bgain;
wire test;
wire nottest;
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
wire ack;
wire bback;
wire gback;
wire clk;
wire tlw;
wire grpintreq;
wire tint;
wire gpuread;
wire gpuwrite;
wire nocpu;
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
wire d_32;
wire d_33;
wire d_34;
wire d_35;
wire d_36;
wire d_37;
wire d_38;
wire d_39;
wire d_40;
wire d_41;
wire d_42;
wire d_43;
wire d_44;
wire d_45;
wire d_46;
wire d_47;
wire d_48;
wire d_49;
wire d_50;
wire d_51;
wire d_52;
wire d_53;
wire d_54;
wire d_55;
wire d_56;
wire d_57;
wire d_58;
wire d_59;
wire d_60;
wire d_61;
wire d_62;
wire d_63;
wire at_1;
wire bbreq_0;
wire bbreq_1;
wire gbreq_0;
wire gbreq_1;
wire gpuint;
wire lock;
wire wd_0;
wire wd_1;
wire wd_2;
wire wd_3;
wire wd_4;
wire wd_5;
wire wd_6;
wire wd_7;
wire wd_8;
wire wd_9;
wire wd_10;
wire wd_11;
wire wd_12;
wire wd_13;
wire wd_14;
wire wd_15;
wire wd_16;
wire wd_17;
wire wd_18;
wire wd_19;
wire wd_20;
wire wd_21;
wire wd_22;
wire wd_23;
wire wd_24;
wire wd_25;
wire wd_26;
wire wd_27;
wire wd_28;
wire wd_29;
wire wd_30;
wire wd_31;
wire wd_32;
wire wd_33;
wire wd_34;
wire wd_35;
wire wd_36;
wire wd_37;
wire wd_38;
wire wd_39;
wire wd_40;
wire wd_41;
wire wd_42;
wire wd_43;
wire wd_44;
wire wd_45;
wire wd_46;
wire wd_47;
wire wd_48;
wire wd_49;
wire wd_50;
wire wd_51;
wire wd_52;
wire wd_53;
wire wd_54;
wire wd_55;
wire wd_56;
wire wd_57;
wire wd_58;
wire wd_59;
wire wd_60;
wire wd_61;
wire wd_62;
wire wd_63;
wire a_0;
wire a_1;
wire a_2;
wire a_3;
wire a_4;
wire a_5;
wire a_6;
wire a_7;
wire a_8;
wire a_9;
wire a_10;
wire a_11;
wire a_12;
wire a_13;
wire a_14;
wire a_15;
wire a_16;
wire a_17;
wire a_18;
wire a_19;
wire a_20;
wire a_21;
wire a_22;
wire a_23;
wire w_0;
wire w_1;
wire w_2;
wire w_3;
wire rw;
wire mreq;
wire dr_0;
wire dr_1;
wire dr_2;
wire dr_3;
wire dr_4;
wire dr_5;
wire dr_6;
wire dr_7;
wire dr_8;
wire dr_9;
wire dr_10;
wire dr_11;
wire dr_12;
wire dr_13;
wire dr_14;
wire dr_15;
wire justify;
wire intdev;
wire wet;
wire oet;
wire intswe;
wire intwe;
wire lba;
wire lbb;
wire clut;
wire ourack;
wire memc1r;
wire memc2r;
wire hcr;
wire vcr;
wire lphr;
wire lpvr;
wire ob0r;
wire ob1r;
wire ob2r;
wire ob3r;
wire lbrar;
wire test2r;
wire test3r;
wire intr;
wire pit0r;
wire pit1r;
wire memc1w;
wire memc2w;
wire olp1w;
wire olp2w;
wire obfw;
wire vmodew;
wire bord1w;
wire bord2w;
wire hcw;
wire hpw;
wire hbbw;
wire hbew;
wire hsw;
wire hvsw;
wire hdb1w;
wire hdb2w;
wire hdew;
wire vcw;
wire vpw;
wire vbbw;
wire vbew;
wire vsw;
wire vdbw;
wire vdew;
wire vebw;
wire veew;
wire viw;
wire pit0w;
wire pit1w;
wire heqw;
wire test1w;
wire lbraw;
wire int1w;
wire int2w;
wire bgwr;
wire vclk;
wire vgy;
wire vey;
wire vly;
wire start;
wire dd;
wire lbufa;
wire lbufb;
wire vint;
wire vactive;
wire blank;
wire nextpixa;
wire nextpixd;
wire cry16;
wire rgb24;
wire rg16;
wire rgb16;
wire mptest;
wire varmod;
wire vc_0;
wire vc_1;
wire vc_2;
wire vc_3;
wire vc_4;
wire vc_5;
wire vc_6;
wire vc_7;
wire vc_8;
wire vc_9;
wire vc_10;
wire tcount;
wire incen;
wire binc;
wire bgw;
wire word2;
wire pp;
wire lbaactive;
wire lbbactive;
wire hcb_10;
wire lbrd_0;
wire lbrd_1;
wire lbrd_2;
wire lbrd_3;
wire lbrd_4;
wire lbrd_5;
wire lbrd_6;
wire lbrd_7;
wire lbrd_8;
wire lbrd_9;
wire lbrd_10;
wire lbrd_11;
wire lbrd_12;
wire lbrd_13;
wire lbrd_14;
wire lbrd_15;
wire lbrd_16;
wire lbrd_17;
wire lbrd_18;
wire lbrd_19;
wire lbrd_20;
wire lbrd_21;
wire lbrd_22;
wire lbrd_23;
wire lbrd_24;
wire lbrd_25;
wire lbrd_26;
wire lbrd_27;
wire lbrd_28;
wire lbrd_29;
wire lbrd_30;
wire lbrd_31;
wire lbra_0;
wire lbra_1;
wire lbra_2;
wire lbra_3;
wire lbra_4;
wire lbra_5;
wire lbra_6;
wire lbra_7;
wire lbra_8;
wire dinlatch_0;
wire dinlatch_1;
wire dinlatch_2;
wire dinlatch_3;
wire dinlatch_4;
wire dinlatch_5;
wire dinlatch_6;
wire dinlatch_7;
wire dmuxd_0;
wire dmuxd_1;
wire dmuxd_2;
wire dmuxu_0;
wire dmuxu_1;
wire dmuxu_2;
wire dren;
wire xdsrc;
wire clk_1;
wire ainen;
wire at_0;
wire at_2;
wire newrow;
wire resrow;
wire mux;
wire cfgw;
wire clk_2;
wire d7a;
wire readt;
wire match;
wire fintdev;
wire fextdev;
wire fdram;
wire from;
wire dspd_0;
wire dspd_1;
wire romspd_0;
wire romspd_1;
wire iospd_0;
wire iospd_1;
wire dram;
wire mw_0;
wire mw_1;
wire bs_0;
wire bs_1;
wire bs_2;
wire bs_3;
wire cpu32;
wire refrate_0;
wire refrate_1;
wire refrate_2;
wire refrate_3;
wire bigend;
wire abs_2;
wire abs_3;
wire hilo;
wire lbt;
wire clutt;
wire fastrom;
wire at_3;
wire at_4;
wire at_5;
wire at_6;
wire at_7;
wire at_8;
wire at_9;
wire at_10;
wire obbreq;
wire refreq;
wire clk_3;
wire ihandler;
wire obback;
wire sizout_2;
wire refack;
wire newdata_0;
wire newdata_1;
wire newdata_2;
wire newdata_3;
wire newdata_4;
wire newdata_5;
wire newdata_6;
wire newdata_7;
wire newdata_8;
wire newdata_9;
wire newdata_10;
wire newdata_11;
wire newdata_12;
wire newdata_13;
wire newdata_14;
wire newdata_15;
wire newdata_16;
wire newdata_17;
wire newdata_18;
wire newdata_19;
wire newdata_20;
wire newheight_0;
wire newheight_1;
wire newheight_2;
wire newheight_3;
wire newheight_4;
wire newheight_5;
wire newheight_6;
wire newheight_7;
wire newheight_8;
wire newheight_9;
wire newrem_0;
wire newrem_1;
wire newrem_2;
wire newrem_3;
wire newrem_4;
wire newrem_5;
wire newrem_6;
wire newrem_7;
wire obdready;
wire offscreen;
wire clk_4;
wire wbkdone;
wire obdone;
wire heightnz;
wire scaled;
wire obdlatch;
wire mode1;
wire mode2;
wire mode4;
wire mode8;
wire mode16;
wire mode24;
wire rmw;
wire index_1;
wire index_2;
wire index_3;
wire index_4;
wire index_5;
wire index_6;
wire index_7;
wire xld;
wire reflected;
wire transen;
wire hscale_0;
wire hscale_1;
wire hscale_2;
wire hscale_3;
wire hscale_4;
wire hscale_5;
wire hscale_6;
wire hscale_7;
wire dwidth_0;
wire dwidth_1;
wire dwidth_2;
wire dwidth_3;
wire dwidth_4;
wire dwidth_5;
wire dwidth_6;
wire dwidth_7;
wire dwidth_8;
wire dwidth_9;
wire vscale_0;
wire vscale_1;
wire vscale_2;
wire vscale_3;
wire vscale_4;
wire vscale_5;
wire vscale_6;
wire vscale_7;
wire wbkstart;
wire obint;
wire obld_0;
wire obld_1;
wire obld_2;
wire startref;
wire clk_12;
wire clk_13;
wire lbwa_1;
wire lbwa_2;
wire lbwa_3;
wire lbwa_4;
wire lbwa_5;
wire lbwa_6;
wire lbwa_7;
wire lbwa_8;
wire lbwa_9;
wire lbwe_0;
wire lbwe_1;
wire lbwd_0;
wire lbwd_1;
wire lbwd_2;
wire lbwd_3;
wire lbwd_4;
wire lbwd_5;
wire lbwd_6;
wire lbwd_7;
wire lbwd_8;
wire lbwd_9;
wire lbwd_10;
wire lbwd_11;
wire lbwd_12;
wire lbwd_13;
wire lbwd_14;
wire lbwd_15;
wire lbwd_16;
wire lbwd_17;
wire lbwd_18;
wire lbwd_19;
wire lbwd_20;
wire lbwd_21;
wire lbwd_22;
wire lbwd_23;
wire lbwd_24;
wire lbwd_25;
wire lbwd_26;
wire lbwd_27;
wire lbwd_28;
wire lbwd_29;
wire lbwd_30;
wire lbwd_31;
wire rmw1;
wire lben;
wire clk_14;
wire clk_0;

// Output buffers
wire xr_0_obuf;
wire xr_1_obuf;
wire xr_2_obuf;
wire xr_3_obuf;
wire xr_4_obuf;
wire xr_5_obuf;
wire xr_6_obuf;
wire xr_7_obuf;
wire xg_0_obuf;
wire xg_1_obuf;
wire xg_2_obuf;
wire xg_3_obuf;
wire xg_4_obuf;
wire xg_5_obuf;
wire xg_6_obuf;
wire xg_7_obuf;
wire xb_0_obuf;
wire xb_1_obuf;
wire xb_2_obuf;
wire xb_3_obuf;
wire xb_4_obuf;
wire xb_5_obuf;
wire xb_6_obuf;
wire xb_7_obuf;
wire xinc_obuf;
wire xoel_0_obuf;
wire xoel_1_obuf;
wire xoel_2_obuf;
wire xmaska_0_obuf;
wire xmaska_1_obuf;
wire xmaska_2_obuf;
wire xromcsl_0_obuf;
wire xromcsl_1_obuf;
wire xcasl_0_obuf;
wire xcasl_1_obuf;
wire xdbgl_obuf;
wire xexpl_obuf;
wire xdspcsl_obuf;
wire xwel_0_obuf;
wire xwel_1_obuf;
wire xwel_2_obuf;
wire xwel_3_obuf;
wire xwel_4_obuf;
wire xwel_5_obuf;
wire xwel_6_obuf;
wire xwel_7_obuf;
wire xrasl_0_obuf;
wire xrasl_1_obuf;
wire xdtackl_obuf;
wire xintl_obuf;
wire cfgen_obuf;
wire brlout_obuf;
wire ba_obuf;
wire aen_obuf;


// Output buffers
assign xr_0 = xr_0_obuf;
assign xr_1 = xr_1_obuf;
assign xr_2 = xr_2_obuf;
assign xr_3 = xr_3_obuf;
assign xr_4 = xr_4_obuf;
assign xr_5 = xr_5_obuf;
assign xr_6 = xr_6_obuf;
assign xr_7 = xr_7_obuf;
assign xg_0 = xg_0_obuf;
assign xg_1 = xg_1_obuf;
assign xg_2 = xg_2_obuf;
assign xg_3 = xg_3_obuf;
assign xg_4 = xg_4_obuf;
assign xg_5 = xg_5_obuf;
assign xg_6 = xg_6_obuf;
assign xg_7 = xg_7_obuf;
assign xb_0 = xb_0_obuf;
assign xb_1 = xb_1_obuf;
assign xb_2 = xb_2_obuf;
assign xb_3 = xb_3_obuf;
assign xb_4 = xb_4_obuf;
assign xb_5 = xb_5_obuf;
assign xb_6 = xb_6_obuf;
assign xb_7 = xb_7_obuf;
assign xinc = xinc_obuf;
assign xoel_0 = xoel_0_obuf;
assign xoel_1 = xoel_1_obuf;
assign xoel_2 = xoel_2_obuf;
assign xmaska_0 = xmaska_0_obuf;
assign xmaska_1 = xmaska_1_obuf;
assign xmaska_2 = xmaska_2_obuf;
assign xromcsl_0 = xromcsl_0_obuf;
assign xromcsl_1 = xromcsl_1_obuf;
assign xcasl_0 = xcasl_0_obuf;
assign xcasl_1 = xcasl_1_obuf;
assign xdbgl = xdbgl_obuf;
assign xexpl = xexpl_obuf;
assign xdspcsl = xdspcsl_obuf;
assign xwel_0 = xwel_0_obuf;
assign xwel_1 = xwel_1_obuf;
assign xwel_2 = xwel_2_obuf;
assign xwel_3 = xwel_3_obuf;
assign xwel_4 = xwel_4_obuf;
assign xwel_5 = xwel_5_obuf;
assign xwel_6 = xwel_6_obuf;
assign xwel_7 = xwel_7_obuf;
assign xrasl_0 = xrasl_0_obuf;
assign xrasl_1 = xrasl_1_obuf;
assign xdtackl = xdtackl_obuf;
assign xintl = xintl_obuf;
assign cfgen = cfgen_obuf;
assign brlout = brlout_obuf;
assign ba = ba_obuf;
assign aen = aen_obuf;


// TOM.NET (112) - d0 : join_bus
assign xd0_7[0] = xd_0;
assign xd0_7[1] = xd_1;
assign xd0_7[2] = xd_2;
assign xd0_7[3] = xd_3;
assign xd0_7[4] = xd_4;
assign xd0_7[5] = xd_5;
assign xd0_7[6] = xd_6;
assign xd0_7[7] = xd_7;

// TOM.NET (113) - d1 : join_bus
assign xd8_15[0] = xd_8;
assign xd8_15[1] = xd_9;
assign xd8_15[2] = xd_10;
assign xd8_15[3] = xd_11;
assign xd8_15[4] = xd_12;
assign xd8_15[5] = xd_13;
assign xd8_15[6] = xd_14;
assign xd8_15[7] = xd_15;

// TOM.NET (114) - d2 : join_bus
assign xd16_23[0] = xd_16;
assign xd16_23[1] = xd_17;
assign xd16_23[2] = xd_18;
assign xd16_23[3] = xd_19;
assign xd16_23[4] = xd_20;
assign xd16_23[5] = xd_21;
assign xd16_23[6] = xd_22;
assign xd16_23[7] = xd_23;

// TOM.NET (115) - d3 : join_bus
assign xd24_31[0] = xd_24;
assign xd24_31[1] = xd_25;
assign xd24_31[2] = xd_26;
assign xd24_31[3] = xd_27;
assign xd24_31[4] = xd_28;
assign xd24_31[5] = xd_29;
assign xd24_31[6] = xd_30;
assign xd24_31[7] = xd_31;

// TOM.NET (116) - d4 : join_bus
assign xd32_39[0] = xd_32;
assign xd32_39[1] = xd_33;
assign xd32_39[2] = xd_34;
assign xd32_39[3] = xd_35;
assign xd32_39[4] = xd_36;
assign xd32_39[5] = xd_37;
assign xd32_39[6] = xd_38;
assign xd32_39[7] = xd_39;

// TOM.NET (117) - d5 : join_bus
assign xd40_47[0] = xd_40;
assign xd40_47[1] = xd_41;
assign xd40_47[2] = xd_42;
assign xd40_47[3] = xd_43;
assign xd40_47[4] = xd_44;
assign xd40_47[5] = xd_45;
assign xd40_47[6] = xd_46;
assign xd40_47[7] = xd_47;

// TOM.NET (118) - d6 : join_bus
assign xd48_55[0] = xd_48;
assign xd48_55[1] = xd_49;
assign xd48_55[2] = xd_50;
assign xd48_55[3] = xd_51;
assign xd48_55[4] = xd_52;
assign xd48_55[5] = xd_53;
assign xd48_55[6] = xd_54;
assign xd48_55[7] = xd_55;

// TOM.NET (119) - d7 : join_bus
assign xd56_63[0] = xd_56;
assign xd56_63[1] = xd_57;
assign xd56_63[2] = xd_58;
assign xd56_63[3] = xd_59;
assign xd56_63[4] = xd_60;
assign xd56_63[5] = xd_61;
assign xd56_63[6] = xd_62;
assign xd56_63[7] = xd_63;

// TOM.NET (120) - d0u : dummy

// TOM.NET (121) - d1u : dummy

// TOM.NET (122) - d2u : dummy

// TOM.NET (123) - d3u : dummy

// TOM.NET (124) - d4u : dummy

// TOM.NET (125) - d5u : dummy

// TOM.NET (126) - d6u : dummy

// TOM.NET (127) - d7u : dummy

// TOM.NET (129) - xa : join_bus
assign xa[0] = gnd;
assign xa[1] = xa_1;
assign xa[2] = xa_2;
assign xa[3] = xa_3;
assign xa[4] = xa_4;
assign xa[5] = xa_5;
assign xa[6] = xa_6;
assign xa[7] = xa_7;
assign xa[8] = xa_8;
assign xa[9] = xa_9;
assign xa[10] = xa_10;
assign xa[11] = xa_11;
assign xa[12] = xa_12;
assign xa[13] = xa_13;
assign xa[14] = xa_14;
assign xa[15] = xa_15;
assign xa[16] = xa_16;
assign xa[17] = xa_17;
assign xa[18] = xa_18;
assign xa[19] = xa_19;
assign xa[20] = xa_20;
assign xa[21] = xa_21;
assign xa[22] = xa_22;
assign xa[23] = xa_23;

// TOM.NET (130) - xau : dummy

// TOM.NET (134) - dpad[0] : bd8t
bd dpad_index_0_inst
(
	.io(xd_0), // BUS
	.zi(din_0), // OUT
	.po(nt_78), // OUT
	.a(dp_0), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_77)  // IN
);

// TOM.NET (135) - dpad[1] : bd8t
bd dpad_index_1_inst
(
	.io(xd_1), // BUS
	.zi(din_1), // OUT
	.po(nt_74), // OUT
	.a(dp_1), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_73)  // IN
);

// TOM.NET (136) - dpad[2] : bd8t
bd dpad_index_2_inst
(
	.io(xd_2), // BUS
	.zi(din_2), // OUT
	.po(nt_70), // OUT
	.a(dp_2), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_69)  // IN
);

// TOM.NET (137) - dpad[3] : bd8t
bd dpad_index_3_inst
(
	.io(xd_3), // BUS
	.zi(din_3), // OUT
	.po(nt_66), // OUT
	.a(dp_3), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_65)  // IN
);

// TOM.NET (138) - dpad[4] : bd8t
bd dpad_index_4_inst
(
	.io(xd_4), // BUS
	.zi(din_4), // OUT
	.po(nt_62), // OUT
	.a(dp_4), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_61)  // IN
);

// TOM.NET (139) - dpad[5] : bd8t
bd dpad_index_5_inst
(
	.io(xd_5), // BUS
	.zi(din_5), // OUT
	.po(nt_58), // OUT
	.a(dp_5), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_57)  // IN
);

// TOM.NET (140) - dpad[6] : bd8t
bd dpad_index_6_inst
(
	.io(xd_6), // BUS
	.zi(din_6), // OUT
	.po(nt_54), // OUT
	.a(dp_6), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_53)  // IN
);

// TOM.NET (141) - dpad[7] : bd8t
bd dpad_index_7_inst
(
	.io(xd_7), // BUS
	.zi(din_7), // OUT
	.po(nt_50), // OUT
	.a(dp_7), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_49)  // IN
);

// TOM.NET (143) - dpad[8] : bd8t
bd dpad_index_8_inst
(
	.io(xd_8), // BUS
	.zi(din_8), // OUT
	.po(nt_49), // OUT
	.a(dp_8), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_48)  // IN
);

// TOM.NET (144) - dpad[9] : bd8t
bd dpad_index_9_inst
(
	.io(xd_9), // BUS
	.zi(din_9), // OUT
	.po(nt_53), // OUT
	.a(dp_9), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_52)  // IN
);

// TOM.NET (145) - dpad[10] : bd8t
bd dpad_index_10_inst
(
	.io(xd_10), // BUS
	.zi(din_10), // OUT
	.po(nt_57), // OUT
	.a(dp_10), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_56)  // IN
);

// TOM.NET (146) - dpad[11] : bd8t
bd dpad_index_11_inst
(
	.io(xd_11), // BUS
	.zi(din_11), // OUT
	.po(nt_61), // OUT
	.a(dp_11), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_60)  // IN
);

// TOM.NET (147) - dpad[12] : bd8t
bd dpad_index_12_inst
(
	.io(xd_12), // BUS
	.zi(din_12), // OUT
	.po(nt_65), // OUT
	.a(dp_12), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_64)  // IN
);

// TOM.NET (148) - dpad[13] : bd8t
bd dpad_index_13_inst
(
	.io(xd_13), // BUS
	.zi(din_13), // OUT
	.po(nt_69), // OUT
	.a(dp_13), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_68)  // IN
);

// TOM.NET (149) - dpad[14] : bd8t
bd dpad_index_14_inst
(
	.io(xd_14), // BUS
	.zi(din_14), // OUT
	.po(nt_73), // OUT
	.a(dp_14), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_72)  // IN
);

// TOM.NET (150) - dpad[15] : bd8t
bd dpad_index_15_inst
(
	.io(xd_15), // BUS
	.zi(din_15), // OUT
	.po(nt_77), // OUT
	.a(dp_15), // IN
	.en(gnd), // IN
	.tn(den_0), // IN
	.pi(nt_76)  // IN
);

// TOM.NET (152) - dpad[16] : bd4t
bd dpad_index_16_inst
(
	.io(xd_16), // BUS
	.zi(din_16), // OUT
	.po(nt_76), // OUT
	.a(dout_16), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_75)  // IN
);

// TOM.NET (153) - dpad[17] : bd4t
bd dpad_index_17_inst
(
	.io(xd_17), // BUS
	.zi(din_17), // OUT
	.po(nt_72), // OUT
	.a(dout_17), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_71)  // IN
);

// TOM.NET (154) - dpad[18] : bd4t
bd dpad_index_18_inst
(
	.io(xd_18), // BUS
	.zi(din_18), // OUT
	.po(nt_68), // OUT
	.a(dout_18), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_67)  // IN
);

// TOM.NET (155) - dpad[19] : bd4t
bd dpad_index_19_inst
(
	.io(xd_19), // BUS
	.zi(din_19), // OUT
	.po(nt_64), // OUT
	.a(dout_19), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_63)  // IN
);

// TOM.NET (156) - dpad[20] : bd4t
bd dpad_index_20_inst
(
	.io(xd_20), // BUS
	.zi(din_20), // OUT
	.po(nt_60), // OUT
	.a(dout_20), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_59)  // IN
);

// TOM.NET (157) - dpad[21] : bd4t
bd dpad_index_21_inst
(
	.io(xd_21), // BUS
	.zi(din_21), // OUT
	.po(nt_56), // OUT
	.a(dout_21), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_55)  // IN
);

// TOM.NET (158) - dpad[22] : bd4t
bd dpad_index_22_inst
(
	.io(xd_22), // BUS
	.zi(din_22), // OUT
	.po(nt_52), // OUT
	.a(dout_22), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_51)  // IN
);

// TOM.NET (159) - dpad[23] : bd4t
bd dpad_index_23_inst
(
	.io(xd_23), // BUS
	.zi(din_23), // OUT
	.po(nt_48), // OUT
	.a(dout_23), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_47)  // IN
);

// TOM.NET (161) - dpad[24] : bd4t
bd dpad_index_24_inst
(
	.io(xd_24), // BUS
	.zi(din_24), // OUT
	.po(nt_47), // OUT
	.a(dout_24), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_46)  // IN
);

// TOM.NET (162) - dpad[25] : bd4t
bd dpad_index_25_inst
(
	.io(xd_25), // BUS
	.zi(din_25), // OUT
	.po(nt_51), // OUT
	.a(dout_25), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_50)  // IN
);

// TOM.NET (163) - dpad[26] : bd4t
bd dpad_index_26_inst
(
	.io(xd_26), // BUS
	.zi(din_26), // OUT
	.po(nt_55), // OUT
	.a(dout_26), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_54)  // IN
);

// TOM.NET (164) - dpad[27] : bd4t
bd dpad_index_27_inst
(
	.io(xd_27), // BUS
	.zi(din_27), // OUT
	.po(nt_59), // OUT
	.a(dout_27), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_58)  // IN
);

// TOM.NET (165) - dpad[28] : bd4t
bd dpad_index_28_inst
(
	.io(xd_28), // BUS
	.zi(din_28), // OUT
	.po(nt_63), // OUT
	.a(dout_28), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_62)  // IN
);

// TOM.NET (166) - dpad[29] : bd4t
bd dpad_index_29_inst
(
	.io(xd_29), // BUS
	.zi(din_29), // OUT
	.po(nt_67), // OUT
	.a(dout_29), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_66)  // IN
);

// TOM.NET (167) - dpad[30] : bd4t
bd dpad_index_30_inst
(
	.io(xd_30), // BUS
	.zi(din_30), // OUT
	.po(nt_71), // OUT
	.a(dout_30), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_70)  // IN
);

// TOM.NET (168) - dpad[31] : bd4t
bd dpad_index_31_inst
(
	.io(xd_31), // BUS
	.zi(din_31), // OUT
	.po(nt_75), // OUT
	.a(dout_31), // IN
	.en(gnd), // IN
	.tn(den_1), // IN
	.pi(nt_74)  // IN
);

// TOM.NET (170) - dpad[32] : bd4t
bd dpad_index_32_inst
(
	.io(xd_32), // BUS
	.zi(din_32), // OUT
	.po(nt_119), // OUT
	.a(dout_32), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_118)  // IN
);

// TOM.NET (171) - dpad[33] : bd4t
bd dpad_index_33_inst
(
	.io(xd_33), // BUS
	.zi(din_33), // OUT
	.po(nt_115), // OUT
	.a(dout_33), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_114)  // IN
);

// TOM.NET (172) - dpad[34] : bd4t
bd dpad_index_34_inst
(
	.io(xd_34), // BUS
	.zi(din_34), // OUT
	.po(nt_111), // OUT
	.a(dout_34), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_110)  // IN
);

// TOM.NET (173) - dpad[35] : bd4t
bd dpad_index_35_inst
(
	.io(xd_35), // BUS
	.zi(din_35), // OUT
	.po(nt_107), // OUT
	.a(dout_35), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_106)  // IN
);

// TOM.NET (174) - dpad[36] : bd4t
bd dpad_index_36_inst
(
	.io(xd_36), // BUS
	.zi(din_36), // OUT
	.po(nt_103), // OUT
	.a(dout_36), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_102)  // IN
);

// TOM.NET (175) - dpad[37] : bd4t
bd dpad_index_37_inst
(
	.io(xd_37), // BUS
	.zi(din_37), // OUT
	.po(nt_99), // OUT
	.a(dout_37), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_98)  // IN
);

// TOM.NET (176) - dpad[38] : bd4t
bd dpad_index_38_inst
(
	.io(xd_38), // BUS
	.zi(din_38), // OUT
	.po(nt_95), // OUT
	.a(dout_38), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_94)  // IN
);

// TOM.NET (177) - dpad[39] : bd4t
bd dpad_index_39_inst
(
	.io(xd_39), // BUS
	.zi(din_39), // OUT
	.po(nt_91), // OUT
	.a(dout_39), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_90)  // IN
);

// TOM.NET (179) - dpad[40] : bd4t
bd dpad_index_40_inst
(
	.io(xd_40), // BUS
	.zi(din_40), // OUT
	.po(nt_90), // OUT
	.a(dout_40), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_89)  // IN
);

// TOM.NET (180) - dpad[41] : bd4t
bd dpad_index_41_inst
(
	.io(xd_41), // BUS
	.zi(din_41), // OUT
	.po(nt_94), // OUT
	.a(dout_41), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_93)  // IN
);

// TOM.NET (181) - dpad[42] : bd4t
bd dpad_index_42_inst
(
	.io(xd_42), // BUS
	.zi(din_42), // OUT
	.po(nt_98), // OUT
	.a(dout_42), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_97)  // IN
);

// TOM.NET (182) - dpad[43] : bd4t
bd dpad_index_43_inst
(
	.io(xd_43), // BUS
	.zi(din_43), // OUT
	.po(nt_102), // OUT
	.a(dout_43), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_101)  // IN
);

// TOM.NET (183) - dpad[44] : bd4t
bd dpad_index_44_inst
(
	.io(xd_44), // BUS
	.zi(din_44), // OUT
	.po(nt_106), // OUT
	.a(dout_44), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_105)  // IN
);

// TOM.NET (184) - dpad[45] : bd4t
bd dpad_index_45_inst
(
	.io(xd_45), // BUS
	.zi(din_45), // OUT
	.po(nt_110), // OUT
	.a(dout_45), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_109)  // IN
);

// TOM.NET (185) - dpad[46] : bd4t
bd dpad_index_46_inst
(
	.io(xd_46), // BUS
	.zi(din_46), // OUT
	.po(nt_114), // OUT
	.a(dout_46), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_113)  // IN
);

// TOM.NET (186) - dpad[47] : bd4t
bd dpad_index_47_inst
(
	.io(xd_47), // BUS
	.zi(din_47), // OUT
	.po(nt_118), // OUT
	.a(dout_47), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_117)  // IN
);

// TOM.NET (188) - dpad[48] : bd4t
bd dpad_index_48_inst
(
	.io(xd_48), // BUS
	.zi(din_48), // OUT
	.po(nt_121), // OUT
	.a(dout_48), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_120)  // IN
);

// TOM.NET (189) - dpad[49] : bd4t
bd dpad_index_49_inst
(
	.io(xd_49), // BUS
	.zi(din_49), // OUT
	.po(nt_117), // OUT
	.a(dout_49), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_116)  // IN
);

// TOM.NET (190) - dpad[50] : bd4t
bd dpad_index_50_inst
(
	.io(xd_50), // BUS
	.zi(din_50), // OUT
	.po(nt_113), // OUT
	.a(dout_50), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_112)  // IN
);

// TOM.NET (191) - dpad[51] : bd4t
bd dpad_index_51_inst
(
	.io(xd_51), // BUS
	.zi(din_51), // OUT
	.po(nt_109), // OUT
	.a(dout_51), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_108)  // IN
);

// TOM.NET (192) - dpad[52] : bd4t
bd dpad_index_52_inst
(
	.io(xd_52), // BUS
	.zi(din_52), // OUT
	.po(nt_105), // OUT
	.a(dout_52), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_104)  // IN
);

// TOM.NET (193) - dpad[53] : bd4t
bd dpad_index_53_inst
(
	.io(xd_53), // BUS
	.zi(din_53), // OUT
	.po(nt_101), // OUT
	.a(dout_53), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_100)  // IN
);

// TOM.NET (194) - dpad[54] : bd4t
bd dpad_index_54_inst
(
	.io(xd_54), // BUS
	.zi(din_54), // OUT
	.po(nt_97), // OUT
	.a(dout_54), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_96)  // IN
);

// TOM.NET (195) - dpad[55] : bd4t
bd dpad_index_55_inst
(
	.io(xd_55), // BUS
	.zi(din_55), // OUT
	.po(nt_93), // OUT
	.a(dout_55), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_92)  // IN
);

// TOM.NET (197) - dpad[56] : bd4t
bd dpad_index_56_inst
(
	.io(xd_56), // BUS
	.zi(din_56), // OUT
	.po(nt_92), // OUT
	.a(dout_56), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_91)  // IN
);

// TOM.NET (198) - dpad[57] : bd4t
bd dpad_index_57_inst
(
	.io(xd_57), // BUS
	.zi(din_57), // OUT
	.po(nt_96), // OUT
	.a(dout_57), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_95)  // IN
);

// TOM.NET (199) - dpad[58] : bd4t
bd dpad_index_58_inst
(
	.io(xd_58), // BUS
	.zi(din_58), // OUT
	.po(nt_100), // OUT
	.a(dout_58), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_99)  // IN
);

// TOM.NET (200) - dpad[59] : bd4t
bd dpad_index_59_inst
(
	.io(xd_59), // BUS
	.zi(din_59), // OUT
	.po(nt_104), // OUT
	.a(dout_59), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_103)  // IN
);

// TOM.NET (201) - dpad[60] : bd4t
bd dpad_index_60_inst
(
	.io(xd_60), // BUS
	.zi(din_60), // OUT
	.po(nt_108), // OUT
	.a(dout_60), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_107)  // IN
);

// TOM.NET (202) - dpad[61] : bd4t
bd dpad_index_61_inst
(
	.io(xd_61), // BUS
	.zi(din_61), // OUT
	.po(nt_112), // OUT
	.a(dout_61), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_111)  // IN
);

// TOM.NET (203) - dpad[62] : bd4t
bd dpad_index_62_inst
(
	.io(xd_62), // BUS
	.zi(din_62), // OUT
	.po(nt_116), // OUT
	.a(dout_62), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_115)  // IN
);

// TOM.NET (204) - dpad[63] : bd4t
bd dpad_index_63_inst
(
	.io(xd_63), // BUS
	.zi(din_63), // OUT
	.po(nt_120), // OUT
	.a(dout_63), // IN
	.en(gnd), // IN
	.tn(den_2), // IN
	.pi(nt_119)  // IN
);

// TOM.NET (206) - apad[0] : bd4t
bd apad_index_0_inst
(
	.io(xa_0), // BUS
	.zi(ain_0), // OUT
	.po(nt_23), // OUT
	.a(maska_0), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_22)  // IN
);

// TOM.NET (207) - apad[1] : bd4t
bd apad_index_1_inst
(
	.io(xa_1), // BUS
	.zi(ain_1), // OUT
	.po(nt_24), // OUT
	.a(maska_1), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_23)  // IN
);

// TOM.NET (208) - apad[2] : bd4t
bd apad_index_2_inst
(
	.io(xa_2), // BUS
	.zi(ain_2), // OUT
	.po(nt_25), // OUT
	.a(maska_2), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_24)  // IN
);

// TOM.NET (209) - apad[3-23] : bd4t
bd apad_from_3_to_23_inst_0
(
	.io(xa_3), // BUS
	.zi(ain_3), // OUT
	.po(nt_26), // OUT
	.a(aout_3), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_25)  // IN
);
bd apad_from_3_to_23_inst_1
(
	.io(xa_4), // BUS
	.zi(ain_4), // OUT
	.po(nt_27), // OUT
	.a(aout_4), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_26)  // IN
);
bd apad_from_3_to_23_inst_2
(
	.io(xa_5), // BUS
	.zi(ain_5), // OUT
	.po(nt_28), // OUT
	.a(aout_5), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_27)  // IN
);
bd apad_from_3_to_23_inst_3
(
	.io(xa_6), // BUS
	.zi(ain_6), // OUT
	.po(nt_29), // OUT
	.a(aout_6), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_28)  // IN
);
bd apad_from_3_to_23_inst_4
(
	.io(xa_7), // BUS
	.zi(ain_7), // OUT
	.po(nt_30), // OUT
	.a(aout_7), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_29)  // IN
);
bd apad_from_3_to_23_inst_5
(
	.io(xa_8), // BUS
	.zi(ain_8), // OUT
	.po(nt_31), // OUT
	.a(aout_8), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_30)  // IN
);
bd apad_from_3_to_23_inst_6
(
	.io(xa_9), // BUS
	.zi(ain_9), // OUT
	.po(nt_32), // OUT
	.a(aout_9), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_31)  // IN
);
bd apad_from_3_to_23_inst_7
(
	.io(xa_10), // BUS
	.zi(ain_10), // OUT
	.po(nt_33), // OUT
	.a(aout_10), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_32)  // IN
);
bd apad_from_3_to_23_inst_8
(
	.io(xa_11), // BUS
	.zi(ain_11), // OUT
	.po(nt_34), // OUT
	.a(aout_11), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_33)  // IN
);
bd apad_from_3_to_23_inst_9
(
	.io(xa_12), // BUS
	.zi(ain_12), // OUT
	.po(nt_35), // OUT
	.a(aout_12), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_34)  // IN
);
bd apad_from_3_to_23_inst_10
(
	.io(xa_13), // BUS
	.zi(ain_13), // OUT
	.po(nt_36), // OUT
	.a(aout_13), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_35)  // IN
);
bd apad_from_3_to_23_inst_11
(
	.io(xa_14), // BUS
	.zi(ain_14), // OUT
	.po(nt_37), // OUT
	.a(aout_14), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_36)  // IN
);
bd apad_from_3_to_23_inst_12
(
	.io(xa_15), // BUS
	.zi(ain_15), // OUT
	.po(nt_38), // OUT
	.a(aout_15), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_37)  // IN
);
bd apad_from_3_to_23_inst_13
(
	.io(xa_16), // BUS
	.zi(ain_16), // OUT
	.po(nt_39), // OUT
	.a(aout_16), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_38)  // IN
);
bd apad_from_3_to_23_inst_14
(
	.io(xa_17), // BUS
	.zi(ain_17), // OUT
	.po(nt_40), // OUT
	.a(aout_17), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_39)  // IN
);
bd apad_from_3_to_23_inst_15
(
	.io(xa_18), // BUS
	.zi(ain_18), // OUT
	.po(nt_41), // OUT
	.a(aout_18), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_40)  // IN
);
bd apad_from_3_to_23_inst_16
(
	.io(xa_19), // BUS
	.zi(ain_19), // OUT
	.po(nt_42), // OUT
	.a(aout_19), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_41)  // IN
);
bd apad_from_3_to_23_inst_17
(
	.io(xa_20), // BUS
	.zi(ain_20), // OUT
	.po(nt_43), // OUT
	.a(aout_20), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_42)  // IN
);
bd apad_from_3_to_23_inst_18
(
	.io(xa_21), // BUS
	.zi(ain_21), // OUT
	.po(nt_44), // OUT
	.a(aout_21), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_43)  // IN
);
bd apad_from_3_to_23_inst_19
(
	.io(xa_22), // BUS
	.zi(ain_22), // OUT
	.po(nt_45), // OUT
	.a(aout_22), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_44)  // IN
);
bd apad_from_3_to_23_inst_20
(
	.io(xa_23), // BUS
	.zi(ain_23), // OUT
	.po(nt_46), // OUT
	.a(aout_23), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_45)  // IN
);

// TOM.NET (211) - mapad[0] : bd16t
bd mapad_index_0_inst
(
	.io(xma_0), // BUS
	.zi(cfg_0), // OUT
	.po(nt_89), // OUT
	.a(ma_0), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_88)  // IN
);

// TOM.NET (212) - mapad[1] : bd16t
bd mapad_index_1_inst
(
	.io(xma_1), // BUS
	.zi(cfg_1), // OUT
	.po(nt_88), // OUT
	.a(ma_1), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_87)  // IN
);

// TOM.NET (213) - mapad[2] : bd16t
bd mapad_index_2_inst
(
	.io(xma_2), // BUS
	.zi(cfg_2), // OUT
	.po(nt_87), // OUT
	.a(ma_2), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_86)  // IN
);

// TOM.NET (214) - mapad[3] : bd16t
bd mapad_index_3_inst
(
	.io(xma_3), // BUS
	.zi(cfg_3), // OUT
	.po(nt_86), // OUT
	.a(ma_3), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_85)  // IN
);

// TOM.NET (215) - mapad[4] : bd16t
bd mapad_index_4_inst
(
	.io(xma_4), // BUS
	.zi(cfg_4), // OUT
	.po(nt_85), // OUT
	.a(ma_4), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_84)  // IN
);

// TOM.NET (216) - mapad[5] : bd16t
bd mapad_index_5_inst
(
	.io(xma_5), // BUS
	.zi(cfg_5), // OUT
	.po(nt_84), // OUT
	.a(ma_5), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_83)  // IN
);

// TOM.NET (217) - mapad[6] : bd16t
bd mapad_index_6_inst
(
	.io(xma_6), // BUS
	.zi(cfg_6), // OUT
	.po(nt_83), // OUT
	.a(ma_6), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_82)  // IN
);

// TOM.NET (218) - mapad[7] : bd16t
bd mapad_index_7_inst
(
	.io(xma_7), // BUS
	.zi(cfg_7), // OUT
	.po(nt_82), // OUT
	.a(ma_7), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_81)  // IN
);

// TOM.NET (219) - mapad[8] : bd16t
bd mapad_index_8_inst
(
	.io(xma_8), // BUS
	.zi(cfg_8), // OUT
	.po(nt_81), // OUT
	.a(ma_8), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_80)  // IN
);

// TOM.NET (220) - mapad[9] : bd16t
bd mapad_index_9_inst
(
	.io(xma_9), // BUS
	.zi(cfg_9), // OUT
	.po(nt_80), // OUT
	.a(ma_9), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_79)  // IN
);

// TOM.NET (221) - cfgu[9-10] : dummy

// TOM.NET (223) - mapad[10] : bd16t
bd mapad_index_10_inst
(
	.io(xma_10), // BUS
	.zi(cfg_10), // OUT
	.po(nt_79), // OUT
	.a(ma_10), // IN
	.en(gnd), // IN
	.tn(cfgen_obuf), // IN
	.pi(nt_78)  // IN
);

// TOM.NET (225) - maska[0-2] : b2
assign xmaska_0_obuf = maska_0;
assign xmaska_1_obuf = maska_1;
assign xmaska_2_obuf = maska_2;

// TOM.NET (228) - romcs[0-1] : b2
assign xromcsl_0_obuf = romcsl_0;
assign xromcsl_1_obuf = romcsl_1;

// TOM.NET (230) - ras[0-1] : b16
assign xrasl_0_obuf = rasl_0;
assign xrasl_1_obuf = rasl_1;

// TOM.NET (231) - notndtest : iv
assign notndtest = ~ndtest;

// TOM.NET (233) - cas[0-1] : b16
assign xcasl_0_obuf = casl_0;
assign xcasl_1_obuf = casl_1;

// TOM.NET (235) - oe[0] : b16
assign xoel_0_obuf = oel_0;

// TOM.NET (236) - oe[1] : b8
assign xoel_1_obuf = oel_1;

// TOM.NET (237) - oe[2] : b8
assign xoel_2_obuf = oel_2;

// TOM.NET (239) - we[0-1] : b16
assign xwel_0_obuf = wel_0;
assign xwel_1_obuf = wel_1;

// TOM.NET (240) - we[2-7] : b4
assign xwel_2_obuf = wel_2;
assign xwel_3_obuf = wel_3;
assign xwel_4_obuf = wel_4;
assign xwel_5_obuf = wel_5;
assign xwel_6_obuf = wel_6;
assign xwel_7_obuf = wel_7;

// TOM.NET (242) - pclk : ibuf
assign pclk = xpclk;
assign nt_21 = ~(xpclk & nt_20);

// TOM.NET (243) - vclk : ibuf
assign vxclk = xvclk;
assign nt_22 = ~(xvclk & nt_21);

// TOM.NET (244) - reseti : ibuf
assign resetli = xresetl;
assign nt_16 = ~(xresetl & nt_15);

// TOM.NET (245) - reset : bniv34
assign resetl = resetli;

// TOM.NET (247) - wait : ibuf
assign waitl = xwaitl;
assign nt_18 = ~(xwaitl & nt_17);

// TOM.NET (250) - dreq : bd2t
bd dreq_inst
(
	.io(xdreql), // BUS
	.zi(notdreqin), // OUT
	.po(nt_7), // OUT
	.a(dreqlout), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_6)  // IN
);

// TOM.NET (251) - dtack : b2
assign xdtackl_obuf = dtackl;

// TOM.NET (252) - rw : bd2t
bd rw_inst
(
	.io(xrw), // BUS
	.zi(rwin), // OUT
	.po(nt_9), // OUT
	.a(reads), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_7)  // IN
);

// TOM.NET (253) - siz[0] : bd2t
bd siz_index_0_inst
(
	.io(xsiz_0), // BUS
	.zi(sizin_0), // OUT
	.po(nt_10), // OUT
	.a(sizout_0), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_9)  // IN
);

// TOM.NET (254) - siz[1] : bd2t
bd siz_index_1_inst
(
	.io(xsiz_1), // BUS
	.zi(sizin_1), // OUT
	.po(nt_11), // OUT
	.a(sizout_1), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_10)  // IN
);

// TOM.NET (255) - dreqin : ivu
assign dreqin = ~notdreqin;

// TOM.NET (257) - dbrli[0] : ibuf
assign dbrl_0 = xdbrl_0;
assign nt_20 = ~(xdbrl_0 & nt_19);

// TOM.NET (258) - dbrli[1] : ibuf
assign dbrl_1 = xdbrl_1;
assign nt_19 = ~(xdbrl_1 & nt_18);

// TOM.NET (259) - dbgl : b2
assign xdbgl_obuf = dbgl;

// TOM.NET (260) - expl : b4
assign xexpl_obuf = expl;

// TOM.NET (261) - dspcsl : b2
assign xdspcsl_obuf = dspcsl;

// TOM.NET (265) - intlt : mx2p
mx2 intlt_inst
(
	.z(intlt), // OUT
	.a0(intl), // IN
	.a1(nt_121), // IN
	.s(ndtest)  // IN
);

// TOM.NET (266) - xintl : b2
assign xintl_obuf = intlt;

// TOM.NET (268) - hs : bd2t
bd hs_inst
(
	.io(xhs), // BUS
	.zi(hlock), // OUT
	.po(nt_1), // OUT
	.a(hsl), // IN
	.en(gnd), // IN
	.tn(snden), // IN
	.pi(vcc)  // IN
);

// TOM.NET (269) - vs : bd2t
bd vs_inst
(
	.io(xvs), // BUS
	.zi(vlock), // OUT
	.po(nt_2), // OUT
	.a(vsl), // IN
	.en(gnd), // IN
	.tn(snden), // IN
	.pi(nt_1)  // IN
);

// TOM.NET (271) - snden : an2
assign snden = syncen & notndtest;

// TOM.NET (273) - lp : ibuf
assign lp = xlp;
assign nt_3 = ~(xlp & nt_2);

// TOM.NET (275) - r[0-7] : b2
assign xr_0_obuf = r_0;
assign xr_1_obuf = r_1;
assign xr_2_obuf = r_2;
assign xr_3_obuf = r_3;
assign xr_4_obuf = r_4;
assign xr_5_obuf = r_5;
assign xr_6_obuf = r_6;
assign xr_7_obuf = r_7;

// TOM.NET (276) - g[0-7] : b2
assign xg_0_obuf = g_0;
assign xg_1_obuf = g_1;
assign xg_2_obuf = g_2;
assign xg_3_obuf = g_3;
assign xg_4_obuf = g_4;
assign xg_5_obuf = g_5;
assign xg_6_obuf = g_6;
assign xg_7_obuf = g_7;

// TOM.NET (277) - b[0-7] : b2
assign xb_0_obuf = b_0;
assign xb_1_obuf = b_1;
assign xb_2_obuf = b_2;
assign xb_3_obuf = b_3;
assign xb_4_obuf = b_4;
assign xb_5_obuf = b_5;
assign xb_6_obuf = b_6;
assign xb_7_obuf = b_7;

// TOM.NET (279) - inc : b2
assign xinc_obuf = inc;

// TOM.NET (281) - dint : ibuf
assign dint = xdint;
assign nt_12 = ~(xdint & nt_11);

// TOM.NET (283) - fc[0] : bd2t
bd fc_index_0_inst
(
	.io(xfc_0), // BUS
	.zi(fc_0), // OUT
	.po(nt_4), // OUT
	.a(vcc), // IN
	.en(gnd), // IN
	.tn(fcen), // IN
	.pi(nt_3)  // IN
);

// TOM.NET (284) - fc[1] : bd2t
bd fc_index_1_inst
(
	.io(xfc_1), // BUS
	.zi(fc_1), // OUT
	.po(nt_5), // OUT
	.a(gnd), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_4)  // IN
);

// TOM.NET (285) - fc[2] : bd2t
bd fc_index_2_inst
(
	.io(xfc_2), // BUS
	.zi(fc_2), // OUT
	.po(nt_6), // OUT
	.a(vcc), // IN
	.en(gnd), // IN
	.tn(aen_obuf), // IN
	.pi(nt_5)  // IN
);

// TOM.NET (286) - fcen : an2
assign fcen = aen_obuf & m68k;

// TOM.NET (288) - brl : bd2t
bd brl_inst
(
	.io(xbrl), // BUS
	.zi(brlin), // OUT
	.po(nt_13), // OUT
	.a(gnd), // IN
	.en(brlout_obuf), // IN
	.tn(testen), // IN
	.pi(nt_12)  // IN
);

// TOM.NET (289) - bgl : ibuf
assign bglin = xbgl;
assign nt_14 = ~(xbgl & nt_13);

// TOM.NET (290) - ba : bd2t
bd ba_inst
(
	.io(xba), // BUS
	.zi(bgain), // OUT
	.po(nt_15), // OUT
	.a(gnd), // IN
	.en(gnd), // IN
	.tn(ba_obuf), // IN
	.pi(nt_14)  // IN
);

// TOM.NET (292) - test : ibuf
assign test = xtest;
assign nt_17 = ~(xtest & nt_16);

// TOM.NET (294) - gnd : tie0
assign gnd = 1'b0;

// TOM.NET (295) - vcc : tie1
assign vcc = 1'b1;

// TOM.NET (303) - nottest : iv
assign nottest = ~test;

// TOM.NET (304) - testen : or2
assign testen = nottest | dint;

// TOM.NET (307) - gpu : graphics
graphics gpu_inst
(
	.ima_0(maska_0), // IN
	.ima_1(maska_1), // IN
	.ima_2(maska_2), // IN
	.ima_3(aout_3), // IN
	.ima_4(aout_4), // IN
	.ima_5(aout_5), // IN
	.ima_6(aout_6), // IN
	.ima_7(aout_7), // IN
	.ima_8(aout_8), // IN
	.ima_9(aout_9), // IN
	.ima_10(aout_10), // IN
	.ima_11(aout_11), // IN
	.ima_12(aout_12), // IN
	.ima_13(aout_13), // IN
	.ima_14(aout_14), // IN
	.ima_15(aout_15), // IN
	.dwrite_0(dout_0), // IN
	.dwrite_1(dout_1), // IN
	.dwrite_2(dout_2), // IN
	.dwrite_3(dout_3), // IN
	.dwrite_4(dout_4), // IN
	.dwrite_5(dout_5), // IN
	.dwrite_6(dout_6), // IN
	.dwrite_7(dout_7), // IN
	.dwrite_8(dout_8), // IN
	.dwrite_9(dout_9), // IN
	.dwrite_10(dout_10), // IN
	.dwrite_11(dout_11), // IN
	.dwrite_12(dout_12), // IN
	.dwrite_13(dout_13), // IN
	.dwrite_14(dout_14), // IN
	.dwrite_15(dout_15), // IN
	.dwrite_16(dout_16), // IN
	.dwrite_17(dout_17), // IN
	.dwrite_18(dout_18), // IN
	.dwrite_19(dout_19), // IN
	.dwrite_20(dout_20), // IN
	.dwrite_21(dout_21), // IN
	.dwrite_22(dout_22), // IN
	.dwrite_23(dout_23), // IN
	.dwrite_24(dout_24), // IN
	.dwrite_25(dout_25), // IN
	.dwrite_26(dout_26), // IN
	.dwrite_27(dout_27), // IN
	.dwrite_28(dout_28), // IN
	.dwrite_29(dout_29), // IN
	.dwrite_30(dout_30), // IN
	.dwrite_31(dout_31), // IN
	.ack(ack), // IN
	.blit_back(bback), // IN
	.gpu_back(gback), // IN
	.reset_n(resetl), // IN
	.clk(clk), // IN
	.tlw(tlw), // IN
	.dint(dint), // IN
	.gpu_irq_3(grpintreq), // IN
	.gpu_irq_2(tint), // IN
	.iord(gpuread), // IN
	.iowr(gpuwrite), // IN
	.reset_lock(nocpu), // IN
	.data_0(d_0), // IN
	.data_1(d_1), // IN
	.data_2(d_2), // IN
	.data_3(d_3), // IN
	.data_4(d_4), // IN
	.data_5(d_5), // IN
	.data_6(d_6), // IN
	.data_7(d_7), // IN
	.data_8(d_8), // IN
	.data_9(d_9), // IN
	.data_10(d_10), // IN
	.data_11(d_11), // IN
	.data_12(d_12), // IN
	.data_13(d_13), // IN
	.data_14(d_14), // IN
	.data_15(d_15), // IN
	.data_16(d_16), // IN
	.data_17(d_17), // IN
	.data_18(d_18), // IN
	.data_19(d_19), // IN
	.data_20(d_20), // IN
	.data_21(d_21), // IN
	.data_22(d_22), // IN
	.data_23(d_23), // IN
	.data_24(d_24), // IN
	.data_25(d_25), // IN
	.data_26(d_26), // IN
	.data_27(d_27), // IN
	.data_28(d_28), // IN
	.data_29(d_29), // IN
	.data_30(d_30), // IN
	.data_31(d_31), // IN
	.data_32(d_32), // IN
	.data_33(d_33), // IN
	.data_34(d_34), // IN
	.data_35(d_35), // IN
	.data_36(d_36), // IN
	.data_37(d_37), // IN
	.data_38(d_38), // IN
	.data_39(d_39), // IN
	.data_40(d_40), // IN
	.data_41(d_41), // IN
	.data_42(d_42), // IN
	.data_43(d_43), // IN
	.data_44(d_44), // IN
	.data_45(d_45), // IN
	.data_46(d_46), // IN
	.data_47(d_47), // IN
	.data_48(d_48), // IN
	.data_49(d_49), // IN
	.data_50(d_50), // IN
	.data_51(d_51), // IN
	.data_52(d_52), // IN
	.data_53(d_53), // IN
	.data_54(d_54), // IN
	.data_55(d_55), // IN
	.data_56(d_56), // IN
	.data_57(d_57), // IN
	.data_58(d_58), // IN
	.data_59(d_59), // IN
	.data_60(d_60), // IN
	.data_61(d_61), // IN
	.data_62(d_62), // IN
	.data_63(d_63), // IN
	.at_1(at_1), // IN
	.blit_breq_0(bbreq_0), // OUT
	.blit_breq_1(bbreq_1), // OUT
	.gpu_breq(gbreq_0), // OUT
	.dma_breq(gbreq_1), // OUT
	.cpu_int(gpuint), // OUT
	.lock(lock), // OUT
	.wdata_0(wd_0), // BUS
	.wdata_1(wd_1), // BUS
	.wdata_2(wd_2), // BUS
	.wdata_3(wd_3), // BUS
	.wdata_4(wd_4), // BUS
	.wdata_5(wd_5), // BUS
	.wdata_6(wd_6), // BUS
	.wdata_7(wd_7), // BUS
	.wdata_8(wd_8), // BUS
	.wdata_9(wd_9), // BUS
	.wdata_10(wd_10), // BUS
	.wdata_11(wd_11), // BUS
	.wdata_12(wd_12), // BUS
	.wdata_13(wd_13), // BUS
	.wdata_14(wd_14), // BUS
	.wdata_15(wd_15), // BUS
	.wdata_16(wd_16), // BUS
	.wdata_17(wd_17), // BUS
	.wdata_18(wd_18), // BUS
	.wdata_19(wd_19), // BUS
	.wdata_20(wd_20), // BUS
	.wdata_21(wd_21), // BUS
	.wdata_22(wd_22), // BUS
	.wdata_23(wd_23), // BUS
	.wdata_24(wd_24), // BUS
	.wdata_25(wd_25), // BUS
	.wdata_26(wd_26), // BUS
	.wdata_27(wd_27), // BUS
	.wdata_28(wd_28), // BUS
	.wdata_29(wd_29), // BUS
	.wdata_30(wd_30), // BUS
	.wdata_31(wd_31), // BUS
	.wdata_32(wd_32), // BUS
	.wdata_33(wd_33), // BUS
	.wdata_34(wd_34), // BUS
	.wdata_35(wd_35), // BUS
	.wdata_36(wd_36), // BUS
	.wdata_37(wd_37), // BUS
	.wdata_38(wd_38), // BUS
	.wdata_39(wd_39), // BUS
	.wdata_40(wd_40), // BUS
	.wdata_41(wd_41), // BUS
	.wdata_42(wd_42), // BUS
	.wdata_43(wd_43), // BUS
	.wdata_44(wd_44), // BUS
	.wdata_45(wd_45), // BUS
	.wdata_46(wd_46), // BUS
	.wdata_47(wd_47), // BUS
	.wdata_48(wd_48), // BUS
	.wdata_49(wd_49), // BUS
	.wdata_50(wd_50), // BUS
	.wdata_51(wd_51), // BUS
	.wdata_52(wd_52), // BUS
	.wdata_53(wd_53), // BUS
	.wdata_54(wd_54), // BUS
	.wdata_55(wd_55), // BUS
	.wdata_56(wd_56), // BUS
	.wdata_57(wd_57), // BUS
	.wdata_58(wd_58), // BUS
	.wdata_59(wd_59), // BUS
	.wdata_60(wd_60), // BUS
	.wdata_61(wd_61), // BUS
	.wdata_62(wd_62), // BUS
	.wdata_63(wd_63), // BUS
	.a_0(a_0), // BUS
	.a_1(a_1), // BUS
	.a_2(a_2), // BUS
	.a_3(a_3), // BUS
	.a_4(a_4), // BUS
	.a_5(a_5), // BUS
	.a_6(a_6), // BUS
	.a_7(a_7), // BUS
	.a_8(a_8), // BUS
	.a_9(a_9), // BUS
	.a_10(a_10), // BUS
	.a_11(a_11), // BUS
	.a_12(a_12), // BUS
	.a_13(a_13), // BUS
	.a_14(a_14), // BUS
	.a_15(a_15), // BUS
	.a_16(a_16), // BUS
	.a_17(a_17), // BUS
	.a_18(a_18), // BUS
	.a_19(a_19), // BUS
	.a_20(a_20), // BUS
	.a_21(a_21), // BUS
	.a_22(a_22), // BUS
	.a_23(a_23), // BUS
	.width_0(w_0), // BUS
	.width_1(w_1), // BUS
	.width_2(w_2), // BUS
	.width_3(w_3), // BUS
	.read(rw), // BUS
	.mreq(mreq), // BUS
	.dr_0(dr_0), // BUS
	.dr_1(dr_1), // BUS
	.dr_2(dr_2), // BUS
	.dr_3(dr_3), // BUS
	.dr_4(dr_4), // BUS
	.dr_5(dr_5), // BUS
	.dr_6(dr_6), // BUS
	.dr_7(dr_7), // BUS
	.dr_8(dr_8), // BUS
	.dr_9(dr_9), // BUS
	.dr_10(dr_10), // BUS
	.dr_11(dr_11), // BUS
	.dr_12(dr_12), // BUS
	.dr_13(dr_13), // BUS
	.dr_14(dr_14), // BUS
	.dr_15(dr_15), // BUS
	.justify(justify)  // BUS
);

// TOM.NET (315) - iodec : iodec
iodec iodec_inst
(
	.a_0(maska_0), // IN
	.a_1(maska_1), // IN
	.a_2(maska_2), // IN
	.a_3(aout_3), // IN
	.a_4(aout_4), // IN
	.a_5(aout_5), // IN
	.a_6(aout_6), // IN
	.a_7(aout_7), // IN
	.a_8(aout_8), // IN
	.a_9(aout_9), // IN
	.a_10(aout_10), // IN
	.a_11(aout_11), // IN
	.a_12(aout_12), // IN
	.a_13(aout_13), // IN
	.a_14(aout_14), // IN
	.a_15(aout_15), // IN
	.intdev(intdev), // IN
	.wet(wet), // IN
	.oet(oet), // IN
	.intswe(intswe), // IN
	.reads(reads), // IN
	.intwe(intwe), // IN
	.lba(lba), // IN
	.lbb(lbb), // IN
	.clut(clut), // IN
	.ourack(ourack), // IN
	.romcsl_0(romcsl_0), // IN
	.romcsl_1(romcsl_1), // IN
	.dspcsl(dspcsl), // IN
	.memc1r(memc1r), // IO
	.memc2r(memc2r), // IO
	.hcr(hcr), // IO
	.vcr(vcr), // IO
	.lphr(lphr), // IO
	.lpvr(lpvr), // IO
	.ob0r(ob0r), // IO
	.ob1r(ob1r), // IO
	.ob2r(ob2r), // IO
	.ob3r(ob3r), // IO
	.lbrar(lbrar), // IO
	.test2r(test2r), // IO
	.test3r(test3r), // IO
	.intr(intr), // IO
	.pit0r(pit0r), // IO
	.pit1r(pit1r), // IO
	.memc1w(memc1w), // IO
	.memc2w(memc2w), // IO
	.olp1w(olp1w), // IO
	.olp2w(olp2w), // IO
	.obfw(obfw), // IO
	.vmodew(vmodew), // IO
	.bord1w(bord1w), // IO
	.bord2w(bord2w), // IO
	.hcw(hcw), // IO
	.hpw(hpw), // IO
	.hbbw(hbbw), // IO
	.hbew(hbew), // IO
	.hsw(hsw), // IO
	.hvsw(hvsw), // IO
	.hdb1w(hdb1w), // IO
	.hdb2w(hdb2w), // IO
	.hdew(hdew), // IO
	.vcw(vcw), // IO
	.vpw(vpw), // IO
	.vbbw(vbbw), // IO
	.vbew(vbew), // IO
	.vsw(vsw), // IO
	.vdbw(vdbw), // IO
	.vdew(vdew), // IO
	.vebw(vebw), // IO
	.veew(veew), // IO
	.viw(viw), // IO
	.pit0w(pit0w), // IO
	.pit1w(pit1w), // IO
	.heqw(heqw), // IO
	.test1w(test1w), // IO
	.lbraw(lbraw), // IO
	.int1w(int1w), // IO
	.int2w(int2w), // IO
	.bgwr(bgwr), // IO
	.expl(expl)  // IO
);

// TOM.NET (329) - vid : vid
vid vid_inst
(
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.vmwr(vmodew), // IN
	.hcwr(hcw), // IN
	.hcrd(hcr), // IN
	.hpwr(hpw), // IN
	.hbbwr(hbbw), // IN
	.hbewr(hbew), // IN
	.hdb1wr(hdb1w), // IN
	.hdb2wr(hdb2w), // IN
	.hdewr(hdew), // IN
	.hswr(hsw), // IN
	.hvswr(hvsw), // IN
	.vcwr(vcw), // IN
	.vcrd(vcr), // IN
	.vpwr(vpw), // IN
	.vbbwr(vbbw), // IN
	.vbewr(vbew), // IN
	.vdbwr(vdbw), // IN
	.vdewr(vdew), // IN
	.vebwr(vebw), // IN
	.veewr(veew), // IN
	.vswr(vsw), // IN
	.viwr(viw), // IN
	.lphrd(lphr), // IN
	.lpvrd(lpvr), // IN
	.hlock(hlock), // IN
	.vlock(vlock), // IN
	.resetl(resetl), // IN
	.vclk(vclk), // IN
	.lp(lp), // IN
	.heqw(heqw), // IN
	.test1w(test1w), // IN
	.test2r(test2r), // IN
	.test3r(test3r), // IN
	.wet(wet), // IN
	.vgy(vgy), // IN
	.vey(vey), // IN
	.vly(vly), // IN
	.lock(lock), // IN
	.start(start), // IO
	.dd(dd), // IO
	.lbufa(lbufa), // IO
	.lbufb(lbufb), // IO
	.noths(hsl), // IO
	.notvs(vsl), // IO
	.syncen(syncen), // IO
	.vint(vint), // IO
	.vactive(vactive), // IO
	.blank(blank), // IO
	.nextpixa(nextpixa), // IO
	.nextpixd(nextpixd), // IO
	.cry16(cry16), // IO
	.rgb24(rgb24), // IO
	.rg16(rg16), // IO
	.rgb16(rgb16), // IO
	.mptest(mptest), // IO
	.ndtest(ndtest), // IO
	.varmod(varmod), // IO
	.vcl_0(vc_0), // IO
	.vcl_1(vc_1), // IO
	.vcl_2(vc_2), // IO
	.vcl_3(vc_3), // IO
	.vcl_4(vc_4), // IO
	.vcl_5(vc_5), // IO
	.vcl_6(vc_6), // IO
	.vcl_7(vc_7), // IO
	.vcl_8(vc_8), // IO
	.vcl_9(vc_9), // IO
	.vcl_10(vc_10), // IO
	.tcount(tcount), // IO
	.incen(incen), // IO
	.binc(binc), // IO
	.bgw(bgw), // IO
	.word2(word2), // IO
	.pp(pp), // IO
	.lbaactive(lbaactive), // IO
	.lbbactive(lbbactive), // IO
	.hcb_10(hcb_10), // IO
	.dr_0(dr_0), // BUS
	.dr_1(dr_1), // BUS
	.dr_2(dr_2), // BUS
	.dr_3(dr_3), // BUS
	.dr_4(dr_4), // BUS
	.dr_5(dr_5), // BUS
	.dr_6(dr_6), // BUS
	.dr_7(dr_7), // BUS
	.dr_8(dr_8), // BUS
	.dr_9(dr_9), // BUS
	.dr_10(dr_10), // BUS
	.dr_11(dr_11), // BUS
	.dr_12(dr_12), // BUS
	.dr_13(dr_13), // BUS
	.dr_14(dr_14), // BUS
	.dr_15(dr_15)  // BUS
);

// TOM.NET (346) - pix : pix
pix pix_inst
(
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.din_12(dout_12), // IN
	.din_13(dout_13), // IN
	.din_14(dout_14), // IN
	.din_15(dout_15), // IN
	.dd(dd), // IN
	.vactive(vactive), // IN
	.blank(blank), // IN
	.nextpixa(nextpixa), // IN
	.nextpixd(nextpixd), // IN
	.cry16(cry16), // IN
	.rgb24(rgb24), // IN
	.rg16(rg16), // IN
	.lbrd_0(lbrd_0), // IN
	.lbrd_1(lbrd_1), // IN
	.lbrd_2(lbrd_2), // IN
	.lbrd_3(lbrd_3), // IN
	.lbrd_4(lbrd_4), // IN
	.lbrd_5(lbrd_5), // IN
	.lbrd_6(lbrd_6), // IN
	.lbrd_7(lbrd_7), // IN
	.lbrd_8(lbrd_8), // IN
	.lbrd_9(lbrd_9), // IN
	.lbrd_10(lbrd_10), // IN
	.lbrd_11(lbrd_11), // IN
	.lbrd_12(lbrd_12), // IN
	.lbrd_13(lbrd_13), // IN
	.lbrd_14(lbrd_14), // IN
	.lbrd_15(lbrd_15), // IN
	.lbrd_16(lbrd_16), // IN
	.lbrd_17(lbrd_17), // IN
	.lbrd_18(lbrd_18), // IN
	.lbrd_19(lbrd_19), // IN
	.lbrd_20(lbrd_20), // IN
	.lbrd_21(lbrd_21), // IN
	.lbrd_22(lbrd_22), // IN
	.lbrd_23(lbrd_23), // IN
	.lbrd_24(lbrd_24), // IN
	.lbrd_25(lbrd_25), // IN
	.lbrd_26(lbrd_26), // IN
	.lbrd_27(lbrd_27), // IN
	.lbrd_28(lbrd_28), // IN
	.lbrd_29(lbrd_29), // IN
	.lbrd_30(lbrd_30), // IN
	.lbrd_31(lbrd_31), // IN
	.lbraw(lbraw), // IN
	.lbrar(lbrar), // IN
	.bcrgwr(bord1w), // IN
	.bcbwr(bord2w), // IN
	.resetl(resetl), // IN
	.vclk(vclk), // IN
	.gnd(gnd), // IN
	.mptest(mptest), // IN
	.incen(incen), // IN
	.binc(binc), // IN
	.lp(lp), // IN
	.rgb16(rgb16), // IN
	.varmod(varmod), // IN
	.word2(word2), // IN
	.pp(pp), // IN
	.lbra_0(lbra_0), // IO
	.lbra_1(lbra_1), // IO
	.lbra_2(lbra_2), // IO
	.lbra_3(lbra_3), // IO
	.lbra_4(lbra_4), // IO
	.lbra_5(lbra_5), // IO
	.lbra_6(lbra_6), // IO
	.lbra_7(lbra_7), // IO
	.lbra_8(lbra_8), // IO
	.r_0(r_0), // IO
	.r_1(r_1), // IO
	.r_2(r_2), // IO
	.r_3(r_3), // IO
	.r_4(r_4), // IO
	.r_5(r_5), // IO
	.r_6(r_6), // IO
	.r_7(r_7), // IO
	.g_0(g_0), // IO
	.g_1(g_1), // IO
	.g_2(g_2), // IO
	.g_3(g_3), // IO
	.g_4(g_4), // IO
	.g_5(g_5), // IO
	.g_6(g_6), // IO
	.g_7(g_7), // IO
	.b_0(b_0), // IO
	.b_1(b_1), // IO
	.b_2(b_2), // IO
	.b_3(b_3), // IO
	.b_4(b_4), // IO
	.b_5(b_5), // IO
	.b_6(b_6), // IO
	.b_7(b_7), // IO
	.inc(inc), // IO
	.dr_0(dr_0), // TRI
	.dr_1(dr_1), // TRI
	.dr_2(dr_2), // TRI
	.dr_3(dr_3), // TRI
	.dr_4(dr_4), // TRI
	.dr_5(dr_5), // TRI
	.dr_6(dr_6), // TRI
	.dr_7(dr_7), // TRI
	.dr_8(dr_8)  // TRI
);

// TOM.NET (357) - dbus : dbus
dbus dbus_inst
(
	.din_0(din_0), // IN
	.din_1(din_1), // IN
	.din_2(din_2), // IN
	.din_3(din_3), // IN
	.din_4(din_4), // IN
	.din_5(din_5), // IN
	.din_6(din_6), // IN
	.din_7(din_7), // IN
	.din_8(din_8), // IN
	.din_9(din_9), // IN
	.din_10(din_10), // IN
	.din_11(din_11), // IN
	.din_12(din_12), // IN
	.din_13(din_13), // IN
	.din_14(din_14), // IN
	.din_15(din_15), // IN
	.din_16(din_16), // IN
	.din_17(din_17), // IN
	.din_18(din_18), // IN
	.din_19(din_19), // IN
	.din_20(din_20), // IN
	.din_21(din_21), // IN
	.din_22(din_22), // IN
	.din_23(din_23), // IN
	.din_24(din_24), // IN
	.din_25(din_25), // IN
	.din_26(din_26), // IN
	.din_27(din_27), // IN
	.din_28(din_28), // IN
	.din_29(din_29), // IN
	.din_30(din_30), // IN
	.din_31(din_31), // IN
	.din_32(din_32), // IN
	.din_33(din_33), // IN
	.din_34(din_34), // IN
	.din_35(din_35), // IN
	.din_36(din_36), // IN
	.din_37(din_37), // IN
	.din_38(din_38), // IN
	.din_39(din_39), // IN
	.din_40(din_40), // IN
	.din_41(din_41), // IN
	.din_42(din_42), // IN
	.din_43(din_43), // IN
	.din_44(din_44), // IN
	.din_45(din_45), // IN
	.din_46(din_46), // IN
	.din_47(din_47), // IN
	.din_48(din_48), // IN
	.din_49(din_49), // IN
	.din_50(din_50), // IN
	.din_51(din_51), // IN
	.din_52(din_52), // IN
	.din_53(din_53), // IN
	.din_54(din_54), // IN
	.din_55(din_55), // IN
	.din_56(din_56), // IN
	.din_57(din_57), // IN
	.din_58(din_58), // IN
	.din_59(din_59), // IN
	.din_60(din_60), // IN
	.din_61(din_61), // IN
	.din_62(din_62), // IN
	.din_63(din_63), // IN
	.dr_0(dr_0), // IN
	.dr_1(dr_1), // IN
	.dr_2(dr_2), // IN
	.dr_3(dr_3), // IN
	.dr_4(dr_4), // IN
	.dr_5(dr_5), // IN
	.dr_6(dr_6), // IN
	.dr_7(dr_7), // IN
	.dr_8(dr_8), // IN
	.dr_9(dr_9), // IN
	.dr_10(dr_10), // IN
	.dr_11(dr_11), // IN
	.dr_12(dr_12), // IN
	.dr_13(dr_13), // IN
	.dr_14(dr_14), // IN
	.dr_15(dr_15), // IN
	.dinlatch_0(dinlatch_0), // IN
	.dinlatch_1(dinlatch_1), // IN
	.dinlatch_2(dinlatch_2), // IN
	.dinlatch_3(dinlatch_3), // IN
	.dinlatch_4(dinlatch_4), // IN
	.dinlatch_5(dinlatch_5), // IN
	.dinlatch_6(dinlatch_6), // IN
	.dinlatch_7(dinlatch_7), // IN
	.dmuxd_0(dmuxd_0), // IN
	.dmuxd_1(dmuxd_1), // IN
	.dmuxd_2(dmuxd_2), // IN
	.dmuxu_0(dmuxu_0), // IN
	.dmuxu_1(dmuxu_1), // IN
	.dmuxu_2(dmuxu_2), // IN
	.dren(dren), // IN
	.xdsrc(xdsrc), // IN
	.ourack(ourack), // IN
	.wd_0(wd_0), // IN
	.wd_1(wd_1), // IN
	.wd_2(wd_2), // IN
	.wd_3(wd_3), // IN
	.wd_4(wd_4), // IN
	.wd_5(wd_5), // IN
	.wd_6(wd_6), // IN
	.wd_7(wd_7), // IN
	.wd_8(wd_8), // IN
	.wd_9(wd_9), // IN
	.wd_10(wd_10), // IN
	.wd_11(wd_11), // IN
	.wd_12(wd_12), // IN
	.wd_13(wd_13), // IN
	.wd_14(wd_14), // IN
	.wd_15(wd_15), // IN
	.wd_16(wd_16), // IN
	.wd_17(wd_17), // IN
	.wd_18(wd_18), // IN
	.wd_19(wd_19), // IN
	.wd_20(wd_20), // IN
	.wd_21(wd_21), // IN
	.wd_22(wd_22), // IN
	.wd_23(wd_23), // IN
	.wd_24(wd_24), // IN
	.wd_25(wd_25), // IN
	.wd_26(wd_26), // IN
	.wd_27(wd_27), // IN
	.wd_28(wd_28), // IN
	.wd_29(wd_29), // IN
	.wd_30(wd_30), // IN
	.wd_31(wd_31), // IN
	.wd_32(wd_32), // IN
	.wd_33(wd_33), // IN
	.wd_34(wd_34), // IN
	.wd_35(wd_35), // IN
	.wd_36(wd_36), // IN
	.wd_37(wd_37), // IN
	.wd_38(wd_38), // IN
	.wd_39(wd_39), // IN
	.wd_40(wd_40), // IN
	.wd_41(wd_41), // IN
	.wd_42(wd_42), // IN
	.wd_43(wd_43), // IN
	.wd_44(wd_44), // IN
	.wd_45(wd_45), // IN
	.wd_46(wd_46), // IN
	.wd_47(wd_47), // IN
	.wd_48(wd_48), // IN
	.wd_49(wd_49), // IN
	.wd_50(wd_50), // IN
	.wd_51(wd_51), // IN
	.wd_52(wd_52), // IN
	.wd_53(wd_53), // IN
	.wd_54(wd_54), // IN
	.wd_55(wd_55), // IN
	.wd_56(wd_56), // IN
	.wd_57(wd_57), // IN
	.wd_58(wd_58), // IN
	.wd_59(wd_59), // IN
	.wd_60(wd_60), // IN
	.wd_61(wd_61), // IN
	.wd_62(wd_62), // IN
	.wd_63(wd_63), // IN
	.clk(clk_1), // IN
	.dp_0(dp_0), // IO
	.dp_1(dp_1), // IO
	.dp_2(dp_2), // IO
	.dp_3(dp_3), // IO
	.dp_4(dp_4), // IO
	.dp_5(dp_5), // IO
	.dp_6(dp_6), // IO
	.dp_7(dp_7), // IO
	.dp_8(dp_8), // IO
	.dp_9(dp_9), // IO
	.dp_10(dp_10), // IO
	.dp_11(dp_11), // IO
	.dp_12(dp_12), // IO
	.dp_13(dp_13), // IO
	.dp_14(dp_14), // IO
	.dp_15(dp_15), // IO
	.dob_0(dout_0), // IO
	.dob_1(dout_1), // IO
	.dob_2(dout_2), // IO
	.dob_3(dout_3), // IO
	.dob_4(dout_4), // IO
	.dob_5(dout_5), // IO
	.dob_6(dout_6), // IO
	.dob_7(dout_7), // IO
	.dob_8(dout_8), // IO
	.dob_9(dout_9), // IO
	.dob_10(dout_10), // IO
	.dob_11(dout_11), // IO
	.dob_12(dout_12), // IO
	.dob_13(dout_13), // IO
	.dob_14(dout_14), // IO
	.dob_15(dout_15), // IO
	.dout_16(dout_16), // IO
	.dout_17(dout_17), // IO
	.dout_18(dout_18), // IO
	.dout_19(dout_19), // IO
	.dout_20(dout_20), // IO
	.dout_21(dout_21), // IO
	.dout_22(dout_22), // IO
	.dout_23(dout_23), // IO
	.dout_24(dout_24), // IO
	.dout_25(dout_25), // IO
	.dout_26(dout_26), // IO
	.dout_27(dout_27), // IO
	.dout_28(dout_28), // IO
	.dout_29(dout_29), // IO
	.dout_30(dout_30), // IO
	.dout_31(dout_31), // IO
	.d5_32(dout_32), // IO
	.d5_33(dout_33), // IO
	.d5_34(dout_34), // IO
	.d5_35(dout_35), // IO
	.d5_36(dout_36), // IO
	.d5_37(dout_37), // IO
	.d5_38(dout_38), // IO
	.d5_39(dout_39), // IO
	.d5_40(dout_40), // IO
	.d5_41(dout_41), // IO
	.d5_42(dout_42), // IO
	.d5_43(dout_43), // IO
	.d5_44(dout_44), // IO
	.d5_45(dout_45), // IO
	.d5_46(dout_46), // IO
	.d5_47(dout_47), // IO
	.d5_48(dout_48), // IO
	.d5_49(dout_49), // IO
	.d5_50(dout_50), // IO
	.d5_51(dout_51), // IO
	.d5_52(dout_52), // IO
	.d5_53(dout_53), // IO
	.d5_54(dout_54), // IO
	.d5_55(dout_55), // IO
	.d5_56(dout_56), // IO
	.d5_57(dout_57), // IO
	.d5_58(dout_58), // IO
	.d5_59(dout_59), // IO
	.d5_60(dout_60), // IO
	.d5_61(dout_61), // IO
	.d5_62(dout_62), // IO
	.d5_63(dout_63), // IO
	.d_0(d_0), // IO
	.d_1(d_1), // IO
	.d_2(d_2), // IO
	.d_3(d_3), // IO
	.d_4(d_4), // IO
	.d_5(d_5), // IO
	.d_6(d_6), // IO
	.d_7(d_7), // IO
	.d_8(d_8), // IO
	.d_9(d_9), // IO
	.d_10(d_10), // IO
	.d_11(d_11), // IO
	.d_12(d_12), // IO
	.d_13(d_13), // IO
	.d_14(d_14), // IO
	.d_15(d_15), // IO
	.d_16(d_16), // IO
	.d_17(d_17), // IO
	.d_18(d_18), // IO
	.d_19(d_19), // IO
	.d_20(d_20), // IO
	.d_21(d_21), // IO
	.d_22(d_22), // IO
	.d_23(d_23), // IO
	.d_24(d_24), // IO
	.d_25(d_25), // IO
	.d_26(d_26), // IO
	.d_27(d_27), // IO
	.d_28(d_28), // IO
	.d_29(d_29), // IO
	.d_30(d_30), // IO
	.d_31(d_31), // IO
	.d_32(d_32), // IO
	.d_33(d_33), // IO
	.d_34(d_34), // IO
	.d_35(d_35), // IO
	.d_36(d_36), // IO
	.d_37(d_37), // IO
	.d_38(d_38), // IO
	.d_39(d_39), // IO
	.d_40(d_40), // IO
	.d_41(d_41), // IO
	.d_42(d_42), // IO
	.d_43(d_43), // IO
	.d_44(d_44), // IO
	.d_45(d_45), // IO
	.d_46(d_46), // IO
	.d_47(d_47), // IO
	.d_48(d_48), // IO
	.d_49(d_49), // IO
	.d_50(d_50), // IO
	.d_51(d_51), // IO
	.d_52(d_52), // IO
	.d_53(d_53), // IO
	.d_54(d_54), // IO
	.d_55(d_55), // IO
	.d_56(d_56), // IO
	.d_57(d_57), // IO
	.d_58(d_58), // IO
	.d_59(d_59), // IO
	.d_60(d_60), // IO
	.d_61(d_61), // IO
	.d_62(d_62), // IO
	.d_63(d_63)  // IO
);

// TOM.NET (363) - abus : abus
abus abus_inst
(
	.ain_0(ain_0), // IN
	.ain_1(ain_1), // IN
	.ain_2(ain_2), // IN
	.ain_3(ain_3), // IN
	.ain_4(ain_4), // IN
	.ain_5(ain_5), // IN
	.ain_6(ain_6), // IN
	.ain_7(ain_7), // IN
	.ain_8(ain_8), // IN
	.ain_9(ain_9), // IN
	.ain_10(ain_10), // IN
	.ain_11(ain_11), // IN
	.ain_12(ain_12), // IN
	.ain_13(ain_13), // IN
	.ain_14(ain_14), // IN
	.ain_15(ain_15), // IN
	.ain_16(ain_16), // IN
	.ain_17(ain_17), // IN
	.ain_18(ain_18), // IN
	.ain_19(ain_19), // IN
	.ain_20(ain_20), // IN
	.ain_21(ain_21), // IN
	.ain_22(ain_22), // IN
	.ain_23(ain_23), // IN
	.ainen(ainen), // IN
	.at_0(at_0), // IN
	.at_1(at_1), // IN
	.at_2(at_2), // IN
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.din_12(dout_12), // IN
	.din_13(dout_13), // IN
	.din_14(dout_14), // IN
	.newrow(newrow), // IN
	.resrow(resrow), // IN
	.mux(mux), // IN
	.resetl(resetl), // IN
	.vcc(vcc), // IN
	.memc1r(memc1r), // IN
	.memc2r(memc2r), // IN
	.memc1w(memc1w), // IN
	.memc2w(memc2w), // IN
	.cfg_0(cfg_0), // IN
	.cfg_1(cfg_1), // IN
	.cfg_2(cfg_2), // IN
	.cfg_4(cfg_4), // IN
	.cfg_5(cfg_5), // IN
	.cfg_6(cfg_6), // IN
	.cfg_8(cfg_8), // IN
	.cfgw(cfgw), // IN
	.cfgen(cfgen_obuf), // IN
	.ack(ack), // IN
	.clk(clk_2), // IN
	.ba(ba_obuf), // IN
	.fc_0(fc_0), // IN
	.fc_1(fc_1), // IN
	.fc_2(fc_2), // IN
	.siz_1(sizin_1), // IN
	.mreq(mreq), // IN
	.dreqin(dreqin), // IN
	.lbufa(lbufa), // IN
	.d7a(d7a), // IN
	.readt(readt), // IN
	.wet(wet), // IN
	.aout_3(aout_3), // IO
	.aout_4(aout_4), // IO
	.aout_5(aout_5), // IO
	.aout_6(aout_6), // IO
	.aout_7(aout_7), // IO
	.aout_8(aout_8), // IO
	.aout_9(aout_9), // IO
	.aout_10(aout_10), // IO
	.aout_11(aout_11), // IO
	.aout_12(aout_12), // IO
	.aout_13(aout_13), // IO
	.aout_14(aout_14), // IO
	.aout_15(aout_15), // IO
	.aout_16(aout_16), // IO
	.aout_17(aout_17), // IO
	.aout_18(aout_18), // IO
	.aout_19(aout_19), // IO
	.aout_20(aout_20), // IO
	.aout_21(aout_21), // IO
	.aout_22(aout_22), // IO
	.aout_23(aout_23), // IO
	.ma_0(ma_0), // IO
	.ma_1(ma_1), // IO
	.ma_2(ma_2), // IO
	.ma_3(ma_3), // IO
	.ma_4(ma_4), // IO
	.ma_5(ma_5), // IO
	.ma_6(ma_6), // IO
	.ma_7(ma_7), // IO
	.ma_8(ma_8), // IO
	.ma_9(ma_9), // IO
	.ma_10(ma_10), // IO
	.match(match), // IO
	.intdev(intdev), // IO
	.fintdev(fintdev), // IO
	.fextdev(fextdev), // IO
	.fdram(fdram), // IO
	.from(from), // IO
	.dspd_0(dspd_0), // IO
	.dspd_1(dspd_1), // IO
	.romspd_0(romspd_0), // IO
	.romspd_1(romspd_1), // IO
	.iospd_0(iospd_0), // IO
	.iospd_1(iospd_1), // IO
	.dram(dram), // IO
	.mw_0(mw_0), // IO
	.mw_1(mw_1), // IO
	.bs_0(bs_0), // IO
	.bs_1(bs_1), // IO
	.bs_2(bs_2), // IO
	.bs_3(bs_3), // IO
	.cpu32(cpu32), // IO
	.refrate_0(refrate_0), // IO
	.refrate_1(refrate_1), // IO
	.refrate_2(refrate_2), // IO
	.refrate_3(refrate_3), // IO
	.bigend(bigend), // IO
	.ourack(ourack), // IO
	.nocpu(nocpu), // IO
	.gpuread(gpuread), // IO
	.gpuwrite(gpuwrite), // IO
	.abs_2(abs_2), // IO
	.abs_3(abs_3), // IO
	.hilo(hilo), // IO
	.lba(lba), // IO
	.lbb(lbb), // IO
	.lbt(lbt), // IO
	.clut(clut), // IO
	.clutt(clutt), // IO
	.fastrom(fastrom), // IO
	.m68k(m68k), // IO
	.at_3(at_3), // IO
	.at_4(at_4), // IO
	.at_5(at_5), // IO
	.at_6(at_6), // IO
	.at_7(at_7), // IO
	.at_8(at_8), // IO
	.at_9(at_9), // IO
	.at_10(at_10), // IO
	.a_0(a_0), // BUS
	.a_1(a_1), // BUS
	.a_2(a_2), // BUS
	.a_3(a_3), // BUS
	.a_4(a_4), // BUS
	.a_5(a_5), // BUS
	.a_6(a_6), // BUS
	.a_7(a_7), // BUS
	.a_8(a_8), // BUS
	.a_9(a_9), // BUS
	.a_10(a_10), // BUS
	.a_11(a_11), // BUS
	.a_12(a_12), // BUS
	.a_13(a_13), // BUS
	.a_14(a_14), // BUS
	.a_15(a_15), // BUS
	.a_16(a_16), // BUS
	.a_17(a_17), // BUS
	.a_18(a_18), // BUS
	.a_19(a_19), // BUS
	.a_20(a_20), // BUS
	.a_21(a_21), // BUS
	.a_22(a_22), // BUS
	.a_23(a_23), // BUS
	.dr_0(dr_0), // BUS
	.dr_1(dr_1), // BUS
	.dr_2(dr_2), // BUS
	.dr_3(dr_3), // BUS
	.dr_4(dr_4), // BUS
	.dr_5(dr_5), // BUS
	.dr_6(dr_6), // BUS
	.dr_7(dr_7), // BUS
	.dr_8(dr_8), // BUS
	.dr_9(dr_9), // BUS
	.dr_10(dr_10), // BUS
	.dr_11(dr_11), // BUS
	.dr_12(dr_12), // BUS
	.dr_13(dr_13), // BUS
	.dr_14(dr_14), // BUS
	.dr_15(dr_15)  // BUS
);

// TOM.NET (380) - mem : mem
mem mem_inst
(
	.bbreq_0(bbreq_0), // IN
	.bbreq_1(bbreq_1), // IN
	.gbreq_0(gbreq_0), // IN
	.gbreq_1(gbreq_1), // IN
	.obbreq(obbreq), // IN
	.sizin_0(sizin_0), // IN
	.sizin_1(sizin_1), // IN
	.dbrl_0(dbrl_0), // IN
	.dbrl_1(dbrl_1), // IN
	.dreqin(dreqin), // IN
	.rwin(rwin), // IN
	.bs_0(bs_0), // IN
	.bs_1(bs_1), // IN
	.bs_2(bs_2), // IN
	.bs_3(bs_3), // IN
	.match(match), // IN
	.intdev(intdev), // IN
	.dram(dram), // IN
	.fextdev(fextdev), // IN
	.fintdev(fintdev), // IN
	.fdram(fdram), // IN
	.from(from), // IN
	.cpu32(cpu32), // IN
	.refreq(refreq), // IN
	.dspd_0(dspd_0), // IN
	.dspd_1(dspd_1), // IN
	.romspd_0(romspd_0), // IN
	.romspd_1(romspd_1), // IN
	.iospd_0(iospd_0), // IN
	.iospd_1(iospd_1), // IN
	.a_0(a_0), // IN
	.a_1(a_1), // IN
	.a_2(a_2), // IN
	.mw_0(mw_0), // IN
	.mw_1(mw_1), // IN
	.ourack(ourack), // IN
	.resetl(resetl), // IN
	.clk(clk_3), // IN
	.vcc(vcc), // IN
	.gnd(gnd), // IN
	.bglin(bglin), // IN
	.brlin(brlin), // IN
	.ihandler(ihandler), // IN
	.bigend(bigend), // IN
	.bgain(bgain), // IN
	.abs_2(abs_2), // IN
	.abs_3(abs_3), // IN
	.testen(testen), // IN
	.waitl(waitl), // IN
	.fastrom(fastrom), // IN
	.m68k(m68k), // IN
	.pclk(pclk), // IN
	.ack(ack), // IO
	.bback(bback), // IO
	.gback(gback), // IO
	.obback(obback), // IO
	.romcsl_0(romcsl_0), // IO
	.romcsl_1(romcsl_1), // IO
	.rasl_0(rasl_0), // IO
	.rasl_1(rasl_1), // IO
	.casl_0(casl_0), // IO
	.casl_1(casl_1), // IO
	.oel_0(oel_0), // IO
	.oel_1(oel_1), // IO
	.oel_2(oel_2), // IO
	.wel_0(wel_0), // IO
	.wel_1(wel_1), // IO
	.wel_2(wel_2), // IO
	.wel_3(wel_3), // IO
	.wel_4(wel_4), // IO
	.wel_5(wel_5), // IO
	.wel_6(wel_6), // IO
	.wel_7(wel_7), // IO
	.sizout_0(sizout_0), // IO
	.sizout_1(sizout_1), // IO
	.sizout_2(sizout_2), // IO
	.den_0(den_0), // IO
	.den_1(den_1), // IO
	.den_2(den_2), // IO
	.aen(aen_obuf), // IO
	.dtackl(dtackl), // IO
	.brlout(brlout_obuf), // IO
	.dbgl(dbgl), // IO
	.dreqlout(dreqlout), // IO
	.d7a(d7a), // IO
	.readt(readt), // IO
	.dinlatch_0(dinlatch_0), // IO
	.dinlatch_1(dinlatch_1), // IO
	.dinlatch_2(dinlatch_2), // IO
	.dinlatch_3(dinlatch_3), // IO
	.dinlatch_4(dinlatch_4), // IO
	.dinlatch_5(dinlatch_5), // IO
	.dinlatch_6(dinlatch_6), // IO
	.dinlatch_7(dinlatch_7), // IO
	.dmuxu_0(dmuxu_0), // IO
	.dmuxu_1(dmuxu_1), // IO
	.dmuxu_2(dmuxu_2), // IO
	.dmuxd_0(dmuxd_0), // IO
	.dmuxd_1(dmuxd_1), // IO
	.dmuxd_2(dmuxd_2), // IO
	.dren(dren), // IO
	.xdsrc(xdsrc), // IO
	.maska_0(maska_0), // IO
	.maska_1(maska_1), // IO
	.maska_2(maska_2), // IO
	.at_0(at_0), // IO
	.at_1(at_1), // IO
	.at_2(at_2), // IO
	.ainen(ainen), // IO
	.newrow(newrow), // IO
	.resrow(resrow), // IO
	.mux(mux), // IO
	.refack(refack), // IO
	.reads(reads), // IO
	.wet(wet), // IO
	.oet(oet), // IO
	.ba(ba_obuf), // IO
	.intswe(intswe), // IO
	.intwe(intwe), // IO
	.dspcsl(dspcsl), // IO
	.w_0(w_0), // BUS
	.w_1(w_1), // BUS
	.w_2(w_2), // BUS
	.w_3(w_3), // BUS
	.rw(rw), // BUS
	.mreq(mreq), // BUS
	.justify(justify)  // BUS
);

// TOM.NET (406) - ob : ob
ob ob_inst
(
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.din_12(dout_12), // IN
	.din_13(dout_13), // IN
	.din_14(dout_14), // IN
	.din_15(dout_15), // IN
	.olp1w(olp1w), // IN
	.olp2w(olp2w), // IN
	.obfw(obfw), // IN
	.ob0r(ob0r), // IN
	.ob1r(ob1r), // IN
	.ob2r(ob2r), // IN
	.ob3r(ob3r), // IN
	.start(start), // IN
	.newdata_0(newdata_0), // IN
	.newdata_1(newdata_1), // IN
	.newdata_2(newdata_2), // IN
	.newdata_3(newdata_3), // IN
	.newdata_4(newdata_4), // IN
	.newdata_5(newdata_5), // IN
	.newdata_6(newdata_6), // IN
	.newdata_7(newdata_7), // IN
	.newdata_8(newdata_8), // IN
	.newdata_9(newdata_9), // IN
	.newdata_10(newdata_10), // IN
	.newdata_11(newdata_11), // IN
	.newdata_12(newdata_12), // IN
	.newdata_13(newdata_13), // IN
	.newdata_14(newdata_14), // IN
	.newdata_15(newdata_15), // IN
	.newdata_16(newdata_16), // IN
	.newdata_17(newdata_17), // IN
	.newdata_18(newdata_18), // IN
	.newdata_19(newdata_19), // IN
	.newdata_20(newdata_20), // IN
	.newheight_0(newheight_0), // IN
	.newheight_1(newheight_1), // IN
	.newheight_2(newheight_2), // IN
	.newheight_3(newheight_3), // IN
	.newheight_4(newheight_4), // IN
	.newheight_5(newheight_5), // IN
	.newheight_6(newheight_6), // IN
	.newheight_7(newheight_7), // IN
	.newheight_8(newheight_8), // IN
	.newheight_9(newheight_9), // IN
	.newrem_0(newrem_0), // IN
	.newrem_1(newrem_1), // IN
	.newrem_2(newrem_2), // IN
	.newrem_3(newrem_3), // IN
	.newrem_4(newrem_4), // IN
	.newrem_5(newrem_5), // IN
	.newrem_6(newrem_6), // IN
	.newrem_7(newrem_7), // IN
	.obdready(obdready), // IN
	.offscreen(offscreen), // IN
	.refack(refack), // IN
	.obback(obback), // IN
	.mack(ack), // IN
	.clk(clk_4), // IN
	.resetl(resetl), // IN
	.vcc(vcc), // IN
	.gnd(gnd), // IN
	.vc_0(vc_0), // IN
	.vc_1(vc_1), // IN
	.vc_2(vc_2), // IN
	.vc_3(vc_3), // IN
	.vc_4(vc_4), // IN
	.vc_5(vc_5), // IN
	.vc_6(vc_6), // IN
	.vc_7(vc_7), // IN
	.vc_8(vc_8), // IN
	.vc_9(vc_9), // IN
	.vc_10(vc_10), // IN
	.wbkdone(wbkdone), // IN
	.obdone(obdone), // IN
	.heightnz(heightnz), // IN
	.d_0(d_0), // IN
	.d_1(d_1), // IN
	.d_2(d_2), // IN
	.d_3(d_3), // IN
	.d_4(d_4), // IN
	.d_5(d_5), // IN
	.d_6(d_6), // IN
	.d_7(d_7), // IN
	.d_8(d_8), // IN
	.d_9(d_9), // IN
	.d_10(d_10), // IN
	.d_11(d_11), // IN
	.d_12(d_12), // IN
	.d_13(d_13), // IN
	.d_14(d_14), // IN
	.d_15(d_15), // IN
	.d_16(d_16), // IN
	.d_17(d_17), // IN
	.d_18(d_18), // IN
	.d_19(d_19), // IN
	.d_20(d_20), // IN
	.d_21(d_21), // IN
	.d_22(d_22), // IN
	.d_23(d_23), // IN
	.d_24(d_24), // IN
	.d_25(d_25), // IN
	.d_26(d_26), // IN
	.d_27(d_27), // IN
	.d_28(d_28), // IN
	.d_29(d_29), // IN
	.d_30(d_30), // IN
	.d_31(d_31), // IN
	.d_32(d_32), // IN
	.d_33(d_33), // IN
	.d_34(d_34), // IN
	.d_35(d_35), // IN
	.d_36(d_36), // IN
	.d_37(d_37), // IN
	.d_38(d_38), // IN
	.d_39(d_39), // IN
	.d_40(d_40), // IN
	.d_41(d_41), // IN
	.d_42(d_42), // IN
	.d_43(d_43), // IN
	.d_44(d_44), // IN
	.d_45(d_45), // IN
	.d_46(d_46), // IN
	.d_47(d_47), // IN
	.d_48(d_48), // IN
	.d_49(d_49), // IN
	.d_50(d_50), // IN
	.d_51(d_51), // IN
	.d_52(d_52), // IN
	.d_53(d_53), // IN
	.d_54(d_54), // IN
	.d_55(d_55), // IN
	.d_56(d_56), // IN
	.d_57(d_57), // IN
	.d_58(d_58), // IN
	.d_59(d_59), // IN
	.d_60(d_60), // IN
	.d_61(d_61), // IN
	.d_62(d_62), // IN
	.d_63(d_63), // IN
	.blback(bback), // IN
	.grpback(gback), // IN
	.wet(wet), // IN
	.hcb_10(hcb_10), // IN
	.scaled(scaled), // IO
	.obdlatch(obdlatch), // IO
	.mode1(mode1), // IO
	.mode2(mode2), // IO
	.mode4(mode4), // IO
	.mode8(mode8), // IO
	.mode16(mode16), // IO
	.mode24(mode24), // IO
	.rmw(rmw), // IO
	.index_1(index_1), // IO
	.index_2(index_2), // IO
	.index_3(index_3), // IO
	.index_4(index_4), // IO
	.index_5(index_5), // IO
	.index_6(index_6), // IO
	.index_7(index_7), // IO
	.xld(xld), // IO
	.reflected(reflected), // IO
	.transen(transen), // IO
	.hscale_0(hscale_0), // IO
	.hscale_1(hscale_1), // IO
	.hscale_2(hscale_2), // IO
	.hscale_3(hscale_3), // IO
	.hscale_4(hscale_4), // IO
	.hscale_5(hscale_5), // IO
	.hscale_6(hscale_6), // IO
	.hscale_7(hscale_7), // IO
	.dwidth_0(dwidth_0), // IO
	.dwidth_1(dwidth_1), // IO
	.dwidth_2(dwidth_2), // IO
	.dwidth_3(dwidth_3), // IO
	.dwidth_4(dwidth_4), // IO
	.dwidth_5(dwidth_5), // IO
	.dwidth_6(dwidth_6), // IO
	.dwidth_7(dwidth_7), // IO
	.dwidth_8(dwidth_8), // IO
	.dwidth_9(dwidth_9), // IO
	.obbreq(obbreq), // IO
	.vscale_0(vscale_0), // IO
	.vscale_1(vscale_1), // IO
	.vscale_2(vscale_2), // IO
	.vscale_3(vscale_3), // IO
	.vscale_4(vscale_4), // IO
	.vscale_5(vscale_5), // IO
	.vscale_6(vscale_6), // IO
	.vscale_7(vscale_7), // IO
	.wbkstart(wbkstart), // IO
	.grpintreq(grpintreq), // IO
	.obint(obint), // IO
	.obld_0(obld_0), // IO
	.obld_1(obld_1), // IO
	.obld_2(obld_2), // IO
	.startref(startref), // IO
	.vgy(vgy), // IO
	.vey(vey), // IO
	.vly(vly), // IO
	.wd_0(wd_0), // BUS
	.wd_1(wd_1), // BUS
	.wd_2(wd_2), // BUS
	.wd_3(wd_3), // BUS
	.wd_4(wd_4), // BUS
	.wd_5(wd_5), // BUS
	.wd_6(wd_6), // BUS
	.wd_7(wd_7), // BUS
	.wd_8(wd_8), // BUS
	.wd_9(wd_9), // BUS
	.wd_10(wd_10), // BUS
	.wd_11(wd_11), // BUS
	.wd_12(wd_12), // BUS
	.wd_13(wd_13), // BUS
	.wd_14(wd_14), // BUS
	.wd_15(wd_15), // BUS
	.wd_16(wd_16), // BUS
	.wd_17(wd_17), // BUS
	.wd_18(wd_18), // BUS
	.wd_19(wd_19), // BUS
	.wd_20(wd_20), // BUS
	.wd_21(wd_21), // BUS
	.wd_22(wd_22), // BUS
	.wd_23(wd_23), // BUS
	.wd_24(wd_24), // BUS
	.wd_25(wd_25), // BUS
	.wd_26(wd_26), // BUS
	.wd_27(wd_27), // BUS
	.wd_28(wd_28), // BUS
	.wd_29(wd_29), // BUS
	.wd_30(wd_30), // BUS
	.wd_31(wd_31), // BUS
	.wd_32(wd_32), // BUS
	.wd_33(wd_33), // BUS
	.wd_34(wd_34), // BUS
	.wd_35(wd_35), // BUS
	.wd_36(wd_36), // BUS
	.wd_37(wd_37), // BUS
	.wd_38(wd_38), // BUS
	.wd_39(wd_39), // BUS
	.wd_40(wd_40), // BUS
	.wd_41(wd_41), // BUS
	.wd_42(wd_42), // BUS
	.wd_43(wd_43), // BUS
	.wd_44(wd_44), // BUS
	.wd_45(wd_45), // BUS
	.wd_46(wd_46), // BUS
	.wd_47(wd_47), // BUS
	.wd_48(wd_48), // BUS
	.wd_49(wd_49), // BUS
	.wd_50(wd_50), // BUS
	.wd_51(wd_51), // BUS
	.wd_52(wd_52), // BUS
	.wd_53(wd_53), // BUS
	.wd_54(wd_54), // BUS
	.wd_55(wd_55), // BUS
	.wd_56(wd_56), // BUS
	.wd_57(wd_57), // BUS
	.wd_58(wd_58), // BUS
	.wd_59(wd_59), // BUS
	.wd_60(wd_60), // BUS
	.wd_61(wd_61), // BUS
	.wd_62(wd_62), // BUS
	.wd_63(wd_63), // BUS
	.a_0(a_0), // BUS
	.a_1(a_1), // BUS
	.a_2(a_2), // BUS
	.a_3(a_3), // BUS
	.a_4(a_4), // BUS
	.a_5(a_5), // BUS
	.a_6(a_6), // BUS
	.a_7(a_7), // BUS
	.a_8(a_8), // BUS
	.a_9(a_9), // BUS
	.a_10(a_10), // BUS
	.a_11(a_11), // BUS
	.a_12(a_12), // BUS
	.a_13(a_13), // BUS
	.a_14(a_14), // BUS
	.a_15(a_15), // BUS
	.a_16(a_16), // BUS
	.a_17(a_17), // BUS
	.a_18(a_18), // BUS
	.a_19(a_19), // BUS
	.a_20(a_20), // BUS
	.a_21(a_21), // BUS
	.a_22(a_22), // BUS
	.a_23(a_23), // BUS
	.w_0(w_0), // BUS
	.w_1(w_1), // BUS
	.w_2(w_2), // BUS
	.w_3(w_3), // BUS
	.rw(rw), // BUS
	.mreq(mreq), // BUS
	.justify(justify), // BUS
	.dr_0(dr_0), // BUS
	.dr_1(dr_1), // BUS
	.dr_2(dr_2), // BUS
	.dr_3(dr_3), // BUS
	.dr_4(dr_4), // BUS
	.dr_5(dr_5), // BUS
	.dr_6(dr_6), // BUS
	.dr_7(dr_7), // BUS
	.dr_8(dr_8), // BUS
	.dr_9(dr_9), // BUS
	.dr_10(dr_10), // BUS
	.dr_11(dr_11), // BUS
	.dr_12(dr_12), // BUS
	.dr_13(dr_13), // BUS
	.dr_14(dr_14), // BUS
	.dr_15(dr_15)  // BUS
);

// TOM.NET (421) - wbk : wbk
wbk wbk_inst
(
	.d_14(d_14), // IN
	.d_15(d_15), // IN
	.d_16(d_16), // IN
	.d_17(d_17), // IN
	.d_18(d_18), // IN
	.d_19(d_19), // IN
	.d_20(d_20), // IN
	.d_21(d_21), // IN
	.d_22(d_22), // IN
	.d_23(d_23), // IN
	.d_43(d_43), // IN
	.d_44(d_44), // IN
	.d_45(d_45), // IN
	.d_46(d_46), // IN
	.d_47(d_47), // IN
	.d_48(d_48), // IN
	.d_49(d_49), // IN
	.d_50(d_50), // IN
	.d_51(d_51), // IN
	.d_52(d_52), // IN
	.d_53(d_53), // IN
	.d_54(d_54), // IN
	.d_55(d_55), // IN
	.d_56(d_56), // IN
	.d_57(d_57), // IN
	.d_58(d_58), // IN
	.d_59(d_59), // IN
	.d_60(d_60), // IN
	.d_61(d_61), // IN
	.d_62(d_62), // IN
	.d_63(d_63), // IN
	.obld_0(obld_0), // IN
	.obld_2(obld_2), // IN
	.dwidth_0(dwidth_0), // IN
	.dwidth_1(dwidth_1), // IN
	.dwidth_2(dwidth_2), // IN
	.dwidth_3(dwidth_3), // IN
	.dwidth_4(dwidth_4), // IN
	.dwidth_5(dwidth_5), // IN
	.dwidth_6(dwidth_6), // IN
	.dwidth_7(dwidth_7), // IN
	.dwidth_8(dwidth_8), // IN
	.dwidth_9(dwidth_9), // IN
	.vscale_0(vscale_0), // IN
	.vscale_1(vscale_1), // IN
	.vscale_2(vscale_2), // IN
	.vscale_3(vscale_3), // IN
	.vscale_4(vscale_4), // IN
	.vscale_5(vscale_5), // IN
	.vscale_6(vscale_6), // IN
	.vscale_7(vscale_7), // IN
	.clk(clk_12), // IN
	.resetl(resetl), // IN
	.scaled(scaled), // IN
	.wbkstart(wbkstart), // IN
	.newdata_0(newdata_0), // IO
	.newdata_1(newdata_1), // IO
	.newdata_2(newdata_2), // IO
	.newdata_3(newdata_3), // IO
	.newdata_4(newdata_4), // IO
	.newdata_5(newdata_5), // IO
	.newdata_6(newdata_6), // IO
	.newdata_7(newdata_7), // IO
	.newdata_8(newdata_8), // IO
	.newdata_9(newdata_9), // IO
	.newdata_10(newdata_10), // IO
	.newdata_11(newdata_11), // IO
	.newdata_12(newdata_12), // IO
	.newdata_13(newdata_13), // IO
	.newdata_14(newdata_14), // IO
	.newdata_15(newdata_15), // IO
	.newdata_16(newdata_16), // IO
	.newdata_17(newdata_17), // IO
	.newdata_18(newdata_18), // IO
	.newdata_19(newdata_19), // IO
	.newdata_20(newdata_20), // IO
	.newheight_0(newheight_0), // IO
	.newheight_1(newheight_1), // IO
	.newheight_2(newheight_2), // IO
	.newheight_3(newheight_3), // IO
	.newheight_4(newheight_4), // IO
	.newheight_5(newheight_5), // IO
	.newheight_6(newheight_6), // IO
	.newheight_7(newheight_7), // IO
	.newheight_8(newheight_8), // IO
	.newheight_9(newheight_9), // IO
	.newrem_0(newrem_0), // IO
	.newrem_1(newrem_1), // IO
	.newrem_2(newrem_2), // IO
	.newrem_3(newrem_3), // IO
	.newrem_4(newrem_4), // IO
	.newrem_5(newrem_5), // IO
	.newrem_6(newrem_6), // IO
	.newrem_7(newrem_7), // IO
	.heightnz(heightnz), // IO
	.wbkdone(wbkdone)  // IO
);

// TOM.NET (429) - obd : obdata
obdata obd_inst
(
	.aout_9(aout_9), // IN
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.din_12(dout_12), // IN
	.din_13(dout_13), // IN
	.din_14(dout_14), // IN
	.din_15(dout_15), // IN
	.reads(reads), // IN
	.palen(clut), // IN
	.clutt(clutt), // IN
	.d_0(d_0), // IN
	.d_1(d_1), // IN
	.d_2(d_2), // IN
	.d_3(d_3), // IN
	.d_4(d_4), // IN
	.d_5(d_5), // IN
	.d_6(d_6), // IN
	.d_7(d_7), // IN
	.d_8(d_8), // IN
	.d_9(d_9), // IN
	.d_10(d_10), // IN
	.d_11(d_11), // IN
	.d_12(d_12), // IN
	.d_13(d_13), // IN
	.d_14(d_14), // IN
	.d_15(d_15), // IN
	.d_16(d_16), // IN
	.d_17(d_17), // IN
	.d_18(d_18), // IN
	.d_19(d_19), // IN
	.d_20(d_20), // IN
	.d_21(d_21), // IN
	.d_22(d_22), // IN
	.d_23(d_23), // IN
	.d_24(d_24), // IN
	.d_25(d_25), // IN
	.d_26(d_26), // IN
	.d_27(d_27), // IN
	.d_28(d_28), // IN
	.d_29(d_29), // IN
	.d_30(d_30), // IN
	.d_31(d_31), // IN
	.d_32(d_32), // IN
	.d_33(d_33), // IN
	.d_34(d_34), // IN
	.d_35(d_35), // IN
	.d_36(d_36), // IN
	.d_37(d_37), // IN
	.d_38(d_38), // IN
	.d_39(d_39), // IN
	.d_40(d_40), // IN
	.d_41(d_41), // IN
	.d_42(d_42), // IN
	.d_43(d_43), // IN
	.d_44(d_44), // IN
	.d_45(d_45), // IN
	.d_46(d_46), // IN
	.d_47(d_47), // IN
	.d_48(d_48), // IN
	.d_49(d_49), // IN
	.d_50(d_50), // IN
	.d_51(d_51), // IN
	.d_52(d_52), // IN
	.d_53(d_53), // IN
	.d_54(d_54), // IN
	.d_55(d_55), // IN
	.d_56(d_56), // IN
	.d_57(d_57), // IN
	.d_58(d_58), // IN
	.d_59(d_59), // IN
	.d_60(d_60), // IN
	.d_61(d_61), // IN
	.d_62(d_62), // IN
	.d_63(d_63), // IN
	.obdlatch(obdlatch), // IN
	.mode1(mode1), // IN
	.mode2(mode2), // IN
	.mode4(mode4), // IN
	.mode8(mode8), // IN
	.mode16(mode16), // IN
	.mode24(mode24), // IN
	.scaledtype(scaled), // IN
	.rmw(rmw), // IN
	.index_1(index_1), // IN
	.index_2(index_2), // IN
	.index_3(index_3), // IN
	.index_4(index_4), // IN
	.index_5(index_5), // IN
	.index_6(index_6), // IN
	.index_7(index_7), // IN
	.xld(xld), // IN
	.reflected(reflected), // IN
	.transen(transen), // IN
	.xscale_0(hscale_0), // IN
	.xscale_1(hscale_1), // IN
	.xscale_2(hscale_2), // IN
	.xscale_3(hscale_3), // IN
	.xscale_4(hscale_4), // IN
	.xscale_5(hscale_5), // IN
	.xscale_6(hscale_6), // IN
	.xscale_7(hscale_7), // IN
	.resetl(resetl), // IN
	.clk(clk_13), // IN
	.obld_1(obld_1), // IN
	.obld_2(obld_2), // IN
	.hilo(hilo), // IN
	.lbt(lbt), // IN
	.at_1(at_1), // IN
	.at_2(at_2), // IN
	.at_3(at_3), // IN
	.at_4(at_4), // IN
	.at_5(at_5), // IN
	.at_6(at_6), // IN
	.at_7(at_7), // IN
	.at_8(at_8), // IN
	.at_9(at_9), // IN
	.at_10(at_10), // IN
	.obdone(obdone), // IO
	.obdready(obdready), // IO
	.lbwa_1(lbwa_1), // IO
	.lbwa_2(lbwa_2), // IO
	.lbwa_3(lbwa_3), // IO
	.lbwa_4(lbwa_4), // IO
	.lbwa_5(lbwa_5), // IO
	.lbwa_6(lbwa_6), // IO
	.lbwa_7(lbwa_7), // IO
	.lbwa_8(lbwa_8), // IO
	.lbwa_9(lbwa_9), // IO
	.lbwe_0(lbwe_0), // IO
	.lbwe_1(lbwe_1), // IO
	.lbwd_0(lbwd_0), // IO
	.lbwd_1(lbwd_1), // IO
	.lbwd_2(lbwd_2), // IO
	.lbwd_3(lbwd_3), // IO
	.lbwd_4(lbwd_4), // IO
	.lbwd_5(lbwd_5), // IO
	.lbwd_6(lbwd_6), // IO
	.lbwd_7(lbwd_7), // IO
	.lbwd_8(lbwd_8), // IO
	.lbwd_9(lbwd_9), // IO
	.lbwd_10(lbwd_10), // IO
	.lbwd_11(lbwd_11), // IO
	.lbwd_12(lbwd_12), // IO
	.lbwd_13(lbwd_13), // IO
	.lbwd_14(lbwd_14), // IO
	.lbwd_15(lbwd_15), // IO
	.lbwd_16(lbwd_16), // IO
	.lbwd_17(lbwd_17), // IO
	.lbwd_18(lbwd_18), // IO
	.lbwd_19(lbwd_19), // IO
	.lbwd_20(lbwd_20), // IO
	.lbwd_21(lbwd_21), // IO
	.lbwd_22(lbwd_22), // IO
	.lbwd_23(lbwd_23), // IO
	.lbwd_24(lbwd_24), // IO
	.lbwd_25(lbwd_25), // IO
	.lbwd_26(lbwd_26), // IO
	.lbwd_27(lbwd_27), // IO
	.lbwd_28(lbwd_28), // IO
	.lbwd_29(lbwd_29), // IO
	.lbwd_30(lbwd_30), // IO
	.lbwd_31(lbwd_31), // IO
	.offscreen(offscreen), // IO
	.rmw1(rmw1), // IO
	.lben(lben), // IO
	.dr_0(dr_0), // TRI
	.dr_1(dr_1), // TRI
	.dr_2(dr_2), // TRI
	.dr_3(dr_3), // TRI
	.dr_4(dr_4), // TRI
	.dr_5(dr_5), // TRI
	.dr_6(dr_6), // TRI
	.dr_7(dr_7), // TRI
	.dr_8(dr_8), // TRI
	.dr_9(dr_9), // TRI
	.dr_10(dr_10), // TRI
	.dr_11(dr_11), // TRI
	.dr_12(dr_12), // TRI
	.dr_13(dr_13), // TRI
	.dr_14(dr_14), // TRI
	.dr_15(dr_15)  // TRI
);

// TOM.NET (438) - lbuf : lbuf
lbuf lbuf_inst
(
	.aout_1(maska_1), // IN
	.aout_15(aout_15), // IN
	.dout_0(dout_0), // IN
	.dout_1(dout_1), // IN
	.dout_2(dout_2), // IN
	.dout_3(dout_3), // IN
	.dout_4(dout_4), // IN
	.dout_5(dout_5), // IN
	.dout_6(dout_6), // IN
	.dout_7(dout_7), // IN
	.dout_8(dout_8), // IN
	.dout_9(dout_9), // IN
	.dout_10(dout_10), // IN
	.dout_11(dout_11), // IN
	.dout_12(dout_12), // IN
	.dout_13(dout_13), // IN
	.dout_14(dout_14), // IN
	.dout_15(dout_15), // IN
	.dout_16(dout_16), // IN
	.dout_17(dout_17), // IN
	.dout_18(dout_18), // IN
	.dout_19(dout_19), // IN
	.dout_20(dout_20), // IN
	.dout_21(dout_21), // IN
	.dout_22(dout_22), // IN
	.dout_23(dout_23), // IN
	.dout_24(dout_24), // IN
	.dout_25(dout_25), // IN
	.dout_26(dout_26), // IN
	.dout_27(dout_27), // IN
	.dout_28(dout_28), // IN
	.dout_29(dout_29), // IN
	.dout_30(dout_30), // IN
	.dout_31(dout_31), // IN
	.siz_2(sizout_2), // IN
	.lbwa_0(lbwa_1), // IN
	.lbwa_1(lbwa_2), // IN
	.lbwa_2(lbwa_3), // IN
	.lbwa_3(lbwa_4), // IN
	.lbwa_4(lbwa_5), // IN
	.lbwa_5(lbwa_6), // IN
	.lbwa_6(lbwa_7), // IN
	.lbwa_7(lbwa_8), // IN
	.lbwa_8(lbwa_9), // IN
	.lbra_0(lbra_0), // IN
	.lbra_1(lbra_1), // IN
	.lbra_2(lbra_2), // IN
	.lbra_3(lbra_3), // IN
	.lbra_4(lbra_4), // IN
	.lbra_5(lbra_5), // IN
	.lbra_6(lbra_6), // IN
	.lbra_7(lbra_7), // IN
	.lbra_8(lbra_8), // IN
	.lbwe_0(lbwe_0), // IN
	.lbwe_1(lbwe_1), // IN
	.lbwd_0(lbwd_0), // IN
	.lbwd_1(lbwd_1), // IN
	.lbwd_2(lbwd_2), // IN
	.lbwd_3(lbwd_3), // IN
	.lbwd_4(lbwd_4), // IN
	.lbwd_5(lbwd_5), // IN
	.lbwd_6(lbwd_6), // IN
	.lbwd_7(lbwd_7), // IN
	.lbwd_8(lbwd_8), // IN
	.lbwd_9(lbwd_9), // IN
	.lbwd_10(lbwd_10), // IN
	.lbwd_11(lbwd_11), // IN
	.lbwd_12(lbwd_12), // IN
	.lbwd_13(lbwd_13), // IN
	.lbwd_14(lbwd_14), // IN
	.lbwd_15(lbwd_15), // IN
	.lbwd_16(lbwd_16), // IN
	.lbwd_17(lbwd_17), // IN
	.lbwd_18(lbwd_18), // IN
	.lbwd_19(lbwd_19), // IN
	.lbwd_20(lbwd_20), // IN
	.lbwd_21(lbwd_21), // IN
	.lbwd_22(lbwd_22), // IN
	.lbwd_23(lbwd_23), // IN
	.lbwd_24(lbwd_24), // IN
	.lbwd_25(lbwd_25), // IN
	.lbwd_26(lbwd_26), // IN
	.lbwd_27(lbwd_27), // IN
	.lbwd_28(lbwd_28), // IN
	.lbwd_29(lbwd_29), // IN
	.lbwd_30(lbwd_30), // IN
	.lbwd_31(lbwd_31), // IN
	.lbufa(lbufa), // IN
	.lbufb(lbufb), // IN
	.lbaw(lba), // IN
	.lbbw(lbb), // IN
	.rmw(rmw1), // IN
	.reads(reads), // IN
	.vclk(vclk), // IN
	.clk_0(clk_14), // IN
	.lben(lben), // IN
	.bgw(bgw), // IN
	.bgwr(bgwr), // IN
	.vactive(vactive), // IN
	.lbaactive(lbaactive), // IN
	.lbbactive(lbbactive), // IN
	.bigend(bigend), // IN
	.lbrd_0(lbrd_0), // IO
	.lbrd_1(lbrd_1), // IO
	.lbrd_2(lbrd_2), // IO
	.lbrd_3(lbrd_3), // IO
	.lbrd_4(lbrd_4), // IO
	.lbrd_5(lbrd_5), // IO
	.lbrd_6(lbrd_6), // IO
	.lbrd_7(lbrd_7), // IO
	.lbrd_8(lbrd_8), // IO
	.lbrd_9(lbrd_9), // IO
	.lbrd_10(lbrd_10), // IO
	.lbrd_11(lbrd_11), // IO
	.lbrd_12(lbrd_12), // IO
	.lbrd_13(lbrd_13), // IO
	.lbrd_14(lbrd_14), // IO
	.lbrd_15(lbrd_15), // IO
	.lbrd_16(lbrd_16), // IO
	.lbrd_17(lbrd_17), // IO
	.lbrd_18(lbrd_18), // IO
	.lbrd_19(lbrd_19), // IO
	.lbrd_20(lbrd_20), // IO
	.lbrd_21(lbrd_21), // IO
	.lbrd_22(lbrd_22), // IO
	.lbrd_23(lbrd_23), // IO
	.lbrd_24(lbrd_24), // IO
	.lbrd_25(lbrd_25), // IO
	.lbrd_26(lbrd_26), // IO
	.lbrd_27(lbrd_27), // IO
	.lbrd_28(lbrd_28), // IO
	.lbrd_29(lbrd_29), // IO
	.lbrd_30(lbrd_30), // IO
	.lbrd_31(lbrd_31), // IO
	.dr_0(dr_0), // BI
	.dr_1(dr_1), // BI
	.dr_2(dr_2), // BI
	.dr_3(dr_3), // BI
	.dr_4(dr_4), // BI
	.dr_5(dr_5), // BI
	.dr_6(dr_6), // BI
	.dr_7(dr_7), // BI
	.dr_8(dr_8), // BI
	.dr_9(dr_9), // BI
	.dr_10(dr_10), // BI
	.dr_11(dr_11), // BI
	.dr_12(dr_12), // BI
	.dr_13(dr_13), // BI
	.dr_14(dr_14), // BI
	.dr_15(dr_15)  // BI
);

// TOM.NET (447) - clk : clk
clk clk_inst
(
	.resetl(resetl), // IN
	.pclk(pclk), // IN
	.vxclk(vxclk), // IN
	.ndtest(ndtest), // IN
	.cfg_7(cfg_7), // IN
	.cfgw(cfgw), // IO
	.cfgen(cfgen_obuf), // IO
	.clk(clk), // IO
	.vclk(vclk), // IO
	.tlw(tlw)  // IO
);

// TOM.NET (450) - clk[0] : buf24
assign clk_0 = clk;

// TOM.NET (451) - clk[1] : buf24
assign clk_1 = clk;

// TOM.NET (452) - clk[2] : buf16
assign clk_2 = clk;

// TOM.NET (453) - clk[3] : buf24
assign clk_3 = clk;

// TOM.NET (454) - clk[4] : buf48
assign clk_4 = clk;

// TOM.NET (455) - clk[12] : buf16
assign clk_12 = clk;

// TOM.NET (456) - clk[13] : buf96
assign clk_13 = clk;

// TOM.NET (457) - clk[14] : buf16
assign clk_14 = clk;

// TOM.NET (459) - misc_ : misc
misc misc__inst
(
	.din_0(dout_0), // IN
	.din_1(dout_1), // IN
	.din_2(dout_2), // IN
	.din_3(dout_3), // IN
	.din_4(dout_4), // IN
	.din_5(dout_5), // IN
	.din_6(dout_6), // IN
	.din_7(dout_7), // IN
	.din_8(dout_8), // IN
	.din_9(dout_9), // IN
	.din_10(dout_10), // IN
	.din_11(dout_11), // IN
	.din_12(dout_12), // IN
	.din_13(dout_13), // IN
	.din_14(dout_14), // IN
	.din_15(dout_15), // IN
	.clk(clk_0), // IN
	.resetl(resetl), // IN
	.pit0w(pit0w), // IN
	.pit1w(pit1w), // IN
	.int1w(int1w), // IN
	.int2w(int2w), // IN
	.intr(intr), // IN
	.obint(obint), // IN
	.gpuint(gpuint), // IN
	.vint(vint), // IN
	.dint(dint), // IN
	.refrate_0(refrate_0), // IN
	.refrate_1(refrate_1), // IN
	.refrate_2(refrate_2), // IN
	.refrate_3(refrate_3), // IN
	.refback(refack), // IN
	.ack(ack), // IN
	.startref(startref), // IN
	.wet(wet), // IN
	.pit0r(pit0r), // IN
	.pit1r(pit1r), // IN
	.tcount(tcount), // IN
	.test3r(test3r), // IN
	.ihandler(ihandler), // IO
	.tint(tint), // IO
	.refreq(refreq), // IO
	.intl(intl), // IO
	.dr_0(dr_0), // BUS
	.dr_1(dr_1), // BUS
	.dr_2(dr_2), // BUS
	.dr_3(dr_3), // BUS
	.dr_4(dr_4), // BUS
	.dr_5(dr_5), // BUS
	.dr_6(dr_6), // BUS
	.dr_7(dr_7), // BUS
	.dr_8(dr_8), // BUS
	.dr_9(dr_9), // BUS
	.dr_10(dr_10), // BUS
	.dr_11(dr_11), // BUS
	.dr_12(dr_12), // BUS
	.dr_13(dr_13), // BUS
	.dr_14(dr_14), // BUS
	.dr_15(dr_15), // BUS
	.mreq(mreq)  // BUS
);
endmodule
