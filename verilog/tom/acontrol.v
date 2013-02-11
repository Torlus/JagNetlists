`include "defs.v"

module acontrol
(
	output addasel_0,
	output addasel_1,
	output addasel_2,
	output addbsel_0,
	output addbsel_1,
	output addqsel,
	output adda_xconst_0,
	output adda_xconst_1,
	output adda_xconst_2,
	output adda_yconst,
	output addareg,
	output a1fracldi,
	output a1ptrldi,
	output a2ptrldi,
	output dend_0,
	output dend_1,
	output dend_2,
	output dend_3,
	output dend_4,
	output dend_5,
	output dsta2,
	output dstart_0,
	output dstart_1,
	output dstart_2,
	output dstart_3,
	output dstart_4,
	output dstart_5,
	output[0:15] dstxp;
	output modx_0,
	output modx_1,
	output modx_2,
	output phrase_cycle,
	output phrase_mode,
	output pixsize_0,
	output pixsize_1,
	output pixsize_2,
	output pwidth_0,
	output pwidth_1,
	output pwidth_2,
	output pwidth_3,
	output srcshift_0,
	output srcshift_1,
	output srcshift_2,
	output srcshift_3,
	output srcshift_4,
	output srcshift_5,
	output suba_x,
	output suba_y,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input[0:14] a1_win_x;
	input[0:15] a1_x;
	input a1addx_0,
	input a1addx_1,
	input a1addy,
	input a1xsign,
	input a1ysign,
	input a1updatei,
	input a1fupdatei,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input[0:15] a2_x;
	input a2addx_0,
	input a2addx_1,
	input a2addy,
	input a2xsign,
	input a2ysign,
	input a2updatei,
	input atick_0,
	input atick_1,
	input aticki_0,
	input bcompen,
	input clk,
	input cmdld,
	input dest_cycle_1,
	input dsta_addi,
	input[0:31] gpu_din;
	input icount_0,
	input icount_1,
	input icount_2,
	input inner0,
	input pixa_0,
	input pixa_1,
	input pixa_2,
	input srca_addi,
	input srcen,
	input sshftld,
	input step_inner
);
wire one;
wire zero;
wire a1update;
wire a1update_n;
wire a1fupdate;
wire a1fupdate_n;
wire a1fupdatei_n;
wire a2update;
wire a2update_n;
wire a1addx_n_0;
wire a1addx_n_1;
wire a2addx_n_0;
wire a2addx_n_1;
wire dsta2_n;
wire a1_addi;
wire a2_addi;
wire a1_add;
wire a1_add_n;
wire a2_add;
wire a2_add_n;
wire a2_addb;
wire addaseli_2;
wire addaseli_1;
wire addas0t;
wire addaseli_0;
wire a1_pixsize_n_0;
wire a1_pixsize_n_1;
wire a1_pixsize_n_2;
wire a1xp_0;
wire a1xp1t_0;
wire a1xp1t_1;
wire a1xp_1;
wire a1xp2t;
wire a1xp_2;
wire a2_pixsize_n_0;
wire a2_pixsize_n_1;
wire a2_pixsize_n_2;
wire a2xp_0;
wire a2xp1t_0;
wire a2xp1t_1;
wire a2xp_1;
wire a2xp2t;
wire a2xp_2;
wire a1_xconst_0;
wire a1_xconst_1;
wire a1_xconst_2;
wire a2_xconst_0;
wire a2_xconst_1;
wire a2_xconst_2;
wire addaregt_0;
wire addaregt_1;
wire addaregi;
wire addbseli_0;
wire addbsl1t;
wire addbseli_1;
wire maska1;
wire maska1b_0;
wire maska1b_1;
wire maska1b_2;
wire maska2;
wire maska2b_0;
wire maska2b_1;
wire maska2b_2;
wire suba_xt_0;
wire suba_xt_1;
wire suba_yt_0;
wire suba_yt_1;
wire a1pldt;
wire a1fldt;
wire a2pldt;
wire mdt_0;
wire mdt_1;
wire phrase_mode_n;
wire pcsela2;
wire pcsela2_n;
wire phct_0;
wire phct_1;
wire pixsize_n_0;
wire pixsize_n_1;
wire pixsize_n_2;
wire smask_3;
wire mask4t_0;
wire mask4t_1;
wire smask_4;
wire mask5t_0;
wire mask5t_1;
wire mask5t_2;
wire smask_5;
wire dstarta_0;
wire dstarta_1;
wire dstarta_2;
wire dstarta_3;
wire dstarta_4;
wire dstarta_5;
wire mpipe_0;
wire dstartb_0;
wire dstartb_1;
wire dstartb_2;
wire dstartb_3;
wire dstartb_4;
wire dstartb_5;
wire dstartbl_0;
wire dstartbl_1;
wire dstartbl_2;
wire dstartbl_3;
wire dstartbl_4;
wire dstartbl_5;
wire dstartp_0;
wire dstartp_1;
wire dstartp_2;
wire dstartp_3;
wire dstartp_4;
wire dstartp_5;
wire pseq_1;
wire pseq_2;
wire pseq_3;
wire pseq_4;
wire pseq_5;
wire pseq_6;
wire pseq_7;
wire pseq_8;
wire pseq_9;
wire pseq_10;
wire pseq_11;
wire pseq_12;
wire pseq_13;
wire pseq_14;
wire rmpt_0;
wire rmpt_1;
wire penden;
wire pixel8;
wire pixel16;
wire pixel32;
wire wmb_3;
wire wmb4t_0;
wire wmb4t_1;
wire wmb_4;
wire wmb5t_0;
wire wmb5t_1;
wire wmb5t_2;
wire wmb_5;
wire window_mask_3;
wire window_mask_4;
wire window_mask_5;
wire imb_3;
wire imb4t_0;
wire imb4t_1;
wire imb_4;
wire imb5t_0;
wire imb5t_1;
wire imb5t_2;
wire imb_5;
wire inner_mask_3;
wire inner_mask_4;
wire inner_mask_5;
wire window_mask_6;
wire inner_mask_6;
wire wgt;
wire dummy_0;
wire dummy_1;
wire emask_3;
wire emask_4;
wire emask_5;
wire pm_0;
wire pm_1;
wire pm_2;
wire pm_3;
wire pm_4;
wire pm_5;
wire pma_0;
wire pmc_0;
wire pma_1;
wire pmc_1;
wire pma_2;
wire pmc_2;
wire pma_3;
wire pmc_3;
wire pma_4;
wire pmc_4;
wire pma_5;
wire denda_0;
wire denda_1;
wire denda_2;
wire denda_3;
wire denda_4;
wire denda_5;
wire dendb_0;
wire dendb_1;
wire dendb_2;
wire dendb_3;
wire dendb_4;
wire dendb_5;
wire dendbl_0;
wire dendbl_1;
wire dendbl_2;
wire dendbl_3;
wire dendbl_4;
wire dendbl_5;
wire dendp_0;
wire dendp_1;
wire dendp_2;
wire dendp_3;
wire dendp_4;
wire dendp_5;
wire srcxp_n_0;
wire srcxp_n_1;
wire srcxp_n_2;
wire srcxp_n_3;
wire srcxp_n_4;
wire srcxp_n_5;
wire shftt_0;
wire shfcy_0;
wire shftt_1;
wire shftt_2;
wire shftt_3;
wire shftt_4;
wire shftt_5;
wire shfcy_1;
wire shfcy_2;
wire shfcy_3;
wire shfcy_4;
wire shfcy_5;
wire shftv_0;
wire shftv1t;
wire shftv_1;
wire shftv_2;
wire shftv_3;
wire shftv_4;
wire shftv_5;
wire pobb0t;
wire pobb_0;
wire pobb1t;
wire pobb_1;
wire pobb_2;
wire pobbsel;
wire loshen_n;
wire loshd_0;
wire loshd_1;
wire loshd_2;
wire shfti_0;
wire shfti_1;
wire shfti_2;
wire hishen_n;
wire shfti_3;
wire shfti_4;
wire shfti_5;
wire dstartp_n_3;
wire dstartp_n_4;
wire dstartp_n_5;
wire pwc_0;
wire pwc_1;
wire pwc_2;

// Output buffers
wire dsta2_obuf;
wire dstxp_b0_obuf;
wire dstxp_b1_obuf;
wire dstxp_b2_obuf;
wire dstxp_b3_obuf;
wire dstxp_b4_obuf;
wire dstxp_b5_obuf;
wire dstxp_b6_obuf;
wire dstxp_b7_obuf;
wire dstxp_b8_obuf;
wire dstxp_b9_obuf;
wire dstxp_b10_obuf;
wire dstxp_b11_obuf;
wire dstxp_b12_obuf;
wire dstxp_b13_obuf;
wire dstxp_b14_obuf;
wire phrase_mode_obuf;
wire pixsize_0_obuf;
wire pixsize_1_obuf;
wire pixsize_2_obuf;
wire srcshift_0_obuf;
wire srcshift_1_obuf;
wire srcshift_2_obuf;
wire srcshift_3_obuf;
wire srcshift_4_obuf;
wire srcshift_5_obuf;


// Output buffers
assign dsta2 = dsta2_obuf;
assign dstxp[0] = dstxp_b0_obuf;
assign dstxp[1] = dstxp_b1_obuf;
assign dstxp[2] = dstxp_b2_obuf;
assign dstxp[3] = dstxp_b3_obuf;
assign dstxp[4] = dstxp_b4_obuf;
assign dstxp[5] = dstxp_b5_obuf;
assign dstxp[6] = dstxp_b6_obuf;
assign dstxp[7] = dstxp_b7_obuf;
assign dstxp[8] = dstxp_b8_obuf;
assign dstxp[9] = dstxp_b9_obuf;
assign dstxp[10] = dstxp_b10_obuf;
assign dstxp[11] = dstxp_b11_obuf;
assign dstxp[12] = dstxp_b12_obuf;
assign dstxp[13] = dstxp_b13_obuf;
assign dstxp[14] = dstxp_b14_obuf;
assign phrase_mode = phrase_mode_obuf;
assign pixsize_0 = pixsize_0_obuf;
assign pixsize_1 = pixsize_1_obuf;
assign pixsize_2 = pixsize_2_obuf;
assign srcshift_0 = srcshift_0_obuf;
assign srcshift_1 = srcshift_1_obuf;
assign srcshift_2 = srcshift_2_obuf;
assign srcshift_3 = srcshift_3_obuf;
assign srcshift_4 = srcshift_4_obuf;
assign srcshift_5 = srcshift_5_obuf;


// ACONTROL.NET (74) - one : tie1
assign one = 1'b1;

// ACONTROL.NET (75) - zero : tie0
assign zero = 1'b0;

// ACONTROL.NET (79) - dsta2 : fdsyncu
fdsyncu dsta2_inst
(
	.q(dsta2_obuf), // IO
	.d(gpu_din[11]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// ACONTROL.NET (83) - a1update : fd1
fd1 a1update_inst
(
	.q(a1update), // OUT
	.qn(a1update_n), // OUT
	.d(a1updatei), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (84) - a1fupdate : fd1
fd1 a1fupdate_inst
(
	.q(a1fupdate), // OUT
	.qn(a1fupdate_n), // OUT
	.d(a1fupdatei), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (85) - a1fupdate\ : iv
assign a1fupdatei_n = ~a1fupdatei;

// ACONTROL.NET (86) - a2update : fd1
fd1 a2update_inst
(
	.q(a2update), // OUT
	.qn(a2update_n), // OUT
	.d(a2updatei), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (87) - a1addx\[0-1] : iv
assign a1addx_n_0 = ~a1addx_0;
assign a1addx_n_1 = ~a1addx_1;

// ACONTROL.NET (88) - a2addx\[0-1] : iv
assign a2addx_n_0 = ~a2addx_0;
assign a2addx_n_1 = ~a2addx_1;

// ACONTROL.NET (89) - dsta2\ : iv
assign dsta2_n = ~dsta2_obuf;

// ACONTROL.NET (93) - a1_addi : mx2
mx2 a1_addi_inst
(
	.z(a1_addi), // OUT
	.a0(dsta_addi), // IN
	.a1(srca_addi), // IN
	.s(dsta2_obuf)  // IN
);

// ACONTROL.NET (94) - a2_addi : mx2
mx2 a2_addi_inst
(
	.z(a2_addi), // OUT
	.a0(srca_addi), // IN
	.a1(dsta_addi), // IN
	.s(dsta2_obuf)  // IN
);

// ACONTROL.NET (95) - a1_add : fd1
fd1 a1_add_inst
(
	.q(a1_add), // OUT
	.qn(a1_add_n), // OUT
	.d(a1_addi), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (96) - a2_add : fd1
fd1 a2_add_inst
(
	.q(a2_add), // OUT
	.qn(a2_add_n), // OUT
	.d(a2_addi), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (97) - a2_addb : niv
assign a2_addb = a2_add;

// ACONTROL.NET (114) - addaseli[2] : join
assign addaseli_2 = a2updatei;

// ACONTROL.NET (115) - addaseli[1] : an3
assign addaseli_1 = a1_addi & a1addx_0 & a1addx_1;

// ACONTROL.NET (116) - addas0t : nd4
assign addas0t = ~(a1_addi & aticki_0 & a1addx_0 & a1addx_1);

// ACONTROL.NET (117) - addaseli[0] : nd2
assign addaseli_0 = ~(a1fupdatei_n & addas0t);

// ACONTROL.NET (118) - addasel[0-2] : fd1q
fd1q addasel_from_0_to_2_inst_0
(
	.q(addasel_0), // OUT
	.d(addaseli_0), // IN
	.cp(clk)  // IN
);
fd1q addasel_from_0_to_2_inst_1
(
	.q(addasel_1), // OUT
	.d(addaseli_1), // IN
	.cp(clk)  // IN
);
fd1q addasel_from_0_to_2_inst_2
(
	.q(addasel_2), // OUT
	.d(addaseli_2), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (134) - a1_pixsize\[0-2] : iv
assign a1_pixsize_n_0 = ~a1_pixsize_0;
assign a1_pixsize_n_1 = ~a1_pixsize_1;
assign a1_pixsize_n_2 = ~a1_pixsize_2;

// ACONTROL.NET (135) - a1xp0 : join
assign a1xp_0 = a1_pixsize_0;

// ACONTROL.NET (136) - a1xp1t0 : nd2
assign a1xp1t_0 = ~(a1_pixsize_n_0 & a1_pixsize_n_1);

// ACONTROL.NET (137) - a1xp1t1 : nd3
assign a1xp1t_1 = ~(a1_pixsize_0 & a1_pixsize_1 & a1_pixsize_n_2);

// ACONTROL.NET (139) - a1xp1 : nd2
assign a1xp_1 = ~(a1xp1t_0 & a1xp1t_1);

// ACONTROL.NET (140) - a1xp2t : nd2
assign a1xp2t = ~(a1_pixsize_0 & a1_pixsize_1);

// ACONTROL.NET (141) - a1xp2 : an2
assign a1xp_2 = a1xp2t & a1_pixsize_n_2;

// ACONTROL.NET (142) - a2_pixsize\[0-2] : iv
assign a2_pixsize_n_0 = ~a2_pixsize_0;
assign a2_pixsize_n_1 = ~a2_pixsize_1;
assign a2_pixsize_n_2 = ~a2_pixsize_2;

// ACONTROL.NET (143) - a2xp0 : join
assign a2xp_0 = a2_pixsize_0;

// ACONTROL.NET (144) - a2xp1t0 : nd2
assign a2xp1t_0 = ~(a2_pixsize_n_0 & a2_pixsize_n_1);

// ACONTROL.NET (145) - a2xp1t1 : nd3
assign a2xp1t_1 = ~(a2_pixsize_0 & a2_pixsize_1 & a2_pixsize_n_2);

// ACONTROL.NET (147) - a2xp1 : nd2
assign a2xp_1 = ~(a2xp1t_0 & a2xp1t_1);

// ACONTROL.NET (148) - a2xp2t : nd2
assign a2xp2t = ~(a2_pixsize_0 & a2_pixsize_1);

// ACONTROL.NET (149) - a2xp2 : an2
assign a2xp_2 = a2xp2t & a2_pixsize_n_2;

// ACONTROL.NET (153) - a1_xconst[0] : aor1
assign a1_xconst_0 = (a1xp_0 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (155) - a1_xconst[1] : aor1
assign a1_xconst_1 = (a1xp_1 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (157) - a1_xconst[2] : aor1
assign a1_xconst_2 = (a1xp_2 & a1addx_n_0) | a1addx_1;

// ACONTROL.NET (159) - a2_xconst[0] : aor1
assign a2_xconst_0 = (a2xp_0 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (161) - a2_xconst[1] : aor1
assign a2_xconst_1 = (a2xp_1 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (163) - a2_xconst[2] : aor1
assign a2_xconst_2 = (a2xp_2 & a2addx_n_0) | a2addx_1;

// ACONTROL.NET (165) - adda_xconst[0-2] : mx2
mx2 adda_xconst_from_0_to_2_inst_0
(
	.z(adda_xconst_0), // OUT
	.a0(a1_xconst_0), // IN
	.a1(a2_xconst_0), // IN
	.s(a2_addb)  // IN
);
mx2 adda_xconst_from_0_to_2_inst_1
(
	.z(adda_xconst_1), // OUT
	.a0(a1_xconst_1), // IN
	.a1(a2_xconst_1), // IN
	.s(a2_addb)  // IN
);
mx2 adda_xconst_from_0_to_2_inst_2
(
	.z(adda_xconst_2), // OUT
	.a0(a1_xconst_2), // IN
	.a1(a2_xconst_2), // IN
	.s(a2_addb)  // IN
);

// ACONTROL.NET (170) - adda_yconst : niv
assign adda_yconst = a1addy;

// ACONTROL.NET (180) - addaregt[0] : an3
assign addaregt_0 = a1_addi & a1addx_0 & a1addx_1;

// ACONTROL.NET (181) - addaregt[1] : an3
assign addaregt_1 = a2_addi & a2addx_0 & a2addx_1;

// ACONTROL.NET (182) - addaregi : or5
or5 addaregi_inst
(
	.z(addaregi), // IO
	.a(addaregt_0), // IN
	.b(addaregt_1), // IN
	.c(a1updatei), // IN
	.d(a1fupdatei), // IN
	.e(a2updatei)  // IN
);

// ACONTROL.NET (184) - addareg : fd1qu
fd1q addareg_inst
(
	.q(addareg), // OUT
	.d(addaregi), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (196) - addbseli[0] : or2
assign addbseli_0 = a2updatei | a2_addi;

// ACONTROL.NET (197) - addbsel1t : nd4
assign addbsl1t = ~(a1_addi & aticki_0 & a1addx_0 & a1addx_1);

// ACONTROL.NET (199) - addbseli[1] : nd2
assign addbseli_1 = ~(a1fupdatei_n & addbsl1t);

// ACONTROL.NET (200) - addbsel[0-1] : fd1q
fd1q addbsel_from_0_to_1_inst_0
(
	.q(addbsel_0), // OUT
	.d(addbseli_0), // IN
	.cp(clk)  // IN
);
fd1q addbsel_from_0_to_1_inst_1
(
	.q(addbsel_1), // OUT
	.d(addbseli_1), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (214) - maska1 : nr3
assign maska1 = ~(a1addx_0 | a1addx_1 | a1_add_n);

// ACONTROL.NET (215) - maska1b[0-2] : an2
assign maska1b_0 = maska1 & a1xp_0;
assign maska1b_1 = maska1 & a1xp_1;
assign maska1b_2 = maska1 & a1xp_2;

// ACONTROL.NET (216) - maska2 : nr3
assign maska2 = ~(a2addx_0 | a2addx_1 | a2_add_n);

// ACONTROL.NET (217) - maska2b[0-2] : an2
assign maska2b_0 = maska2 & a2xp_0;
assign maska2b_1 = maska2 & a2xp_1;
assign maska2b_2 = maska2 & a2xp_2;

// ACONTROL.NET (218) - modx[0-2] : mx2
mx2 modx_from_0_to_2_inst_0
(
	.z(modx_0), // OUT
	.a0(maska1b_0), // IN
	.a1(maska2b_0), // IN
	.s(a2_addb)  // IN
);
mx2 modx_from_0_to_2_inst_1
(
	.z(modx_1), // OUT
	.a0(maska1b_1), // IN
	.a1(maska2b_1), // IN
	.s(a2_addb)  // IN
);
mx2 modx_from_0_to_2_inst_2
(
	.z(modx_2), // OUT
	.a0(maska1b_2), // IN
	.a1(maska2b_2), // IN
	.s(a2_addb)  // IN
);

// ACONTROL.NET (224) - addqsel : or5
or5 addqsel_inst
(
	.z(addqsel), // IO
	.a(a1_add), // IN
	.b(a2_add), // IN
	.c(a1update), // IN
	.d(a1fupdate), // IN
	.e(a2update)  // IN
);

// ACONTROL.NET (230) - suba_xt0 : nd4
assign suba_xt_0 = ~(a1_add & a1addx_0 & a1addx_n_1 & a1xsign);

// ACONTROL.NET (232) - suba_xt1 : nd4
assign suba_xt_1 = ~(a2_add & a2addx_0 & a2addx_n_1 & a2xsign);

// ACONTROL.NET (234) - suba_x : nd2h
assign suba_x = ~(suba_xt_0 & suba_xt_1);

// ACONTROL.NET (235) - suba_yt0 : nd3
assign suba_yt_0 = ~(a1_add & a1addy & a1ysign);

// ACONTROL.NET (236) - suba_yt1 : nd3
assign suba_yt_1 = ~(a2_add & a2addy & a2ysign);

// ACONTROL.NET (237) - suba_y : nd2h
assign suba_y = ~(suba_yt_0 & suba_yt_1);

// ACONTROL.NET (241) - a1pldt : nd2
assign a1pldt = ~(atick_1 & a1_add);

// ACONTROL.NET (242) - a1ptrldi : nd2
assign a1ptrldi = ~(a1update_n & a1pldt);

// ACONTROL.NET (244) - a1fldt : nd4
assign a1fldt = ~(atick_0 & a1_add & a1addx_0 & a1addx_1);

// ACONTROL.NET (245) - a1fracldi : nd2
assign a1fracldi = ~(a1fupdate_n & a1fldt);

// ACONTROL.NET (247) - a2pldt : nd2
assign a2pldt = ~(atick_1 & a2_add);

// ACONTROL.NET (248) - a2ptrldi : nd2
assign a2ptrldi = ~(a2update_n & a2pldt);

// ACONTROL.NET (255) - mdt0 : nd3
assign mdt_0 = ~(dsta2_obuf & a2addx_n_0 & a2addx_n_1);

// ACONTROL.NET (256) - mdt1 : nd3
assign mdt_1 = ~(dsta2_n & a1addx_n_0 & a1addx_n_1);

// ACONTROL.NET (257) - phrase_mode : nd2h
assign phrase_mode_obuf = ~(mdt_0 & mdt_1);

// ACONTROL.NET (258) - phrase_mode\ : ivm
assign phrase_mode_n = ~phrase_mode_obuf;

// ACONTROL.NET (266) - pcsela2 : en
assign pcsela2 = ~(dsta2_obuf ^ dest_cycle_1);

// ACONTROL.NET (267) - pcsela2\ : iv
assign pcsela2_n = ~pcsela2;

// ACONTROL.NET (268) - phct0 : nd3
assign phct_0 = ~(pcsela2 & a2addx_n_0 & a2addx_n_1);

// ACONTROL.NET (269) - phct1 : nd3
assign phct_1 = ~(pcsela2_n & a1addx_n_0 & a1addx_n_1);

// ACONTROL.NET (270) - phrase_cycle : nd2
assign phrase_cycle = ~(phct_0 & phct_1);

// ACONTROL.NET (286) - pixsize[0-2] : mx2u
mx2 pixsize_from_0_to_2_inst_0
(
	.z(pixsize_0_obuf), // OUT
	.a0(a1_pixsize_0), // IN
	.a1(a2_pixsize_0), // IN
	.s(dsta2_obuf)  // IN
);
mx2 pixsize_from_0_to_2_inst_1
(
	.z(pixsize_1_obuf), // OUT
	.a0(a1_pixsize_1), // IN
	.a1(a2_pixsize_1), // IN
	.s(dsta2_obuf)  // IN
);
mx2 pixsize_from_0_to_2_inst_2
(
	.z(pixsize_2_obuf), // OUT
	.a0(a1_pixsize_2), // IN
	.a1(a2_pixsize_2), // IN
	.s(dsta2_obuf)  // IN
);

// ACONTROL.NET (288) - pixsize\[0-2] : ivm
assign pixsize_n_0 = ~pixsize_0_obuf;
assign pixsize_n_1 = ~pixsize_1_obuf;
assign pixsize_n_2 = ~pixsize_2_obuf;

// ACONTROL.NET (290) - mask[3] : an4
assign smask_3 = dstxp_b0_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (292) - mask4t0 : nd4
assign mask4t_0 = ~(dstxp_b1_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2);

// ACONTROL.NET (294) - mask4t1 : nd4
assign mask4t_1 = ~(dstxp_b0_obuf & pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (296) - mask[4] : nd2
assign smask_4 = ~(mask4t_0 & mask4t_1);

// ACONTROL.NET (297) - mask5t0 : nd4
assign mask5t_0 = ~(dstxp_b2_obuf & pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2);

// ACONTROL.NET (299) - mask5t1 : nd4
assign mask5t_1 = ~(dstxp_b1_obuf & pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (301) - mask5t2 : nd4
assign mask5t_2 = ~(dstxp_b0_obuf & pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf);

// ACONTROL.NET (303) - mask[5] : nd3
assign smask_5 = ~(mask5t_0 & mask5t_1 & mask5t_2);

// ACONTROL.NET (308) - dstarta[0-2] : an2
assign dstarta_0 = pixa_0 & phrase_mode_n;
assign dstarta_1 = pixa_1 & phrase_mode_n;
assign dstarta_2 = pixa_2 & phrase_mode_n;

// ACONTROL.NET (309) - dstarta[3-5] : an2
assign dstarta_3 = smask_3 & phrase_mode_obuf;
assign dstarta_4 = smask_4 & phrase_mode_obuf;
assign dstarta_5 = smask_5 & phrase_mode_obuf;

// ACONTROL.NET (311) - mpipe[0] : nivm
assign mpipe_0 = atick_1;

// ACONTROL.NET (312) - dstartb[0-5] : mx2
mx2 dstartb_from_0_to_5_inst_0
(
	.z(dstartb_0), // OUT
	.a0(dstartbl_0), // IN
	.a1(dstarta_0), // IN
	.s(mpipe_0)  // IN
);
mx2 dstartb_from_0_to_5_inst_1
(
	.z(dstartb_1), // OUT
	.a0(dstartbl_1), // IN
	.a1(dstarta_1), // IN
	.s(mpipe_0)  // IN
);
mx2 dstartb_from_0_to_5_inst_2
(
	.z(dstartb_2), // OUT
	.a0(dstartbl_2), // IN
	.a1(dstarta_2), // IN
	.s(mpipe_0)  // IN
);
mx2 dstartb_from_0_to_5_inst_3
(
	.z(dstartb_3), // OUT
	.a0(dstartbl_3), // IN
	.a1(dstarta_3), // IN
	.s(mpipe_0)  // IN
);
mx2 dstartb_from_0_to_5_inst_4
(
	.z(dstartb_4), // OUT
	.a0(dstartbl_4), // IN
	.a1(dstarta_4), // IN
	.s(mpipe_0)  // IN
);
mx2 dstartb_from_0_to_5_inst_5
(
	.z(dstartb_5), // OUT
	.a0(dstartbl_5), // IN
	.a1(dstarta_5), // IN
	.s(mpipe_0)  // IN
);

// ACONTROL.NET (313) - dstartbl[0-5] : fd1q
fd1q dstartbl_from_0_to_5_inst_0
(
	.q(dstartbl_0), // OUT
	.d(dstartb_0), // IN
	.cp(clk)  // IN
);
fd1q dstartbl_from_0_to_5_inst_1
(
	.q(dstartbl_1), // OUT
	.d(dstartb_1), // IN
	.cp(clk)  // IN
);
fd1q dstartbl_from_0_to_5_inst_2
(
	.q(dstartbl_2), // OUT
	.d(dstartb_2), // IN
	.cp(clk)  // IN
);
fd1q dstartbl_from_0_to_5_inst_3
(
	.q(dstartbl_3), // OUT
	.d(dstartb_3), // IN
	.cp(clk)  // IN
);
fd1q dstartbl_from_0_to_5_inst_4
(
	.q(dstartbl_4), // OUT
	.d(dstartb_4), // IN
	.cp(clk)  // IN
);
fd1q dstartbl_from_0_to_5_inst_5
(
	.q(dstartbl_5), // OUT
	.d(dstartb_5), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (318) - dstartp[0-5] : fdsync
fdsync dstartp_from_0_to_5_inst_0
(
	.q(dstartp_0), // IO
	.d(dstartb_0), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dstartp_from_0_to_5_inst_1
(
	.q(dstartp_1), // IO
	.d(dstartb_1), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dstartp_from_0_to_5_inst_2
(
	.q(dstartp_2), // IO
	.d(dstartb_2), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dstartp_from_0_to_5_inst_3
(
	.q(dstartp_3), // IO
	.d(dstartb_3), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dstartp_from_0_to_5_inst_4
(
	.q(dstartp_4), // IO
	.d(dstartb_4), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dstartp_from_0_to_5_inst_5
(
	.q(dstartp_5), // IO
	.d(dstartb_5), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);

// ACONTROL.NET (320) - dstart[0-5] : fd1qp
fd1q dstart_from_0_to_5_inst_0
(
	.q(dstart_0), // OUT
	.d(dstartp_0), // IN
	.cp(clk)  // IN
);
fd1q dstart_from_0_to_5_inst_1
(
	.q(dstart_1), // OUT
	.d(dstartp_1), // IN
	.cp(clk)  // IN
);
fd1q dstart_from_0_to_5_inst_2
(
	.q(dstart_2), // OUT
	.d(dstartp_2), // IN
	.cp(clk)  // IN
);
fd1q dstart_from_0_to_5_inst_3
(
	.q(dstart_3), // OUT
	.d(dstartp_3), // IN
	.cp(clk)  // IN
);
fd1q dstart_from_0_to_5_inst_4
(
	.q(dstart_4), // OUT
	.d(dstartp_4), // IN
	.cp(clk)  // IN
);
fd1q dstart_from_0_to_5_inst_5
(
	.q(dstart_5), // OUT
	.d(dstartp_5), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (347) - dstxp : mx2
mx2 dstxp_inst_0
(
	.z(dstxp_b0_obuf), // OUT
	.a0(a1_x[0]), // IN
	.a1(a2_x[0]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_1
(
	.z(dstxp_b1_obuf), // OUT
	.a0(a1_x[1]), // IN
	.a1(a2_x[1]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_2
(
	.z(dstxp_b2_obuf), // OUT
	.a0(a1_x[2]), // IN
	.a1(a2_x[2]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_3
(
	.z(dstxp_b3_obuf), // OUT
	.a0(a1_x[3]), // IN
	.a1(a2_x[3]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_4
(
	.z(dstxp_b4_obuf), // OUT
	.a0(a1_x[4]), // IN
	.a1(a2_x[4]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_5
(
	.z(dstxp_b5_obuf), // OUT
	.a0(a1_x[5]), // IN
	.a1(a2_x[5]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_6
(
	.z(dstxp_b6_obuf), // OUT
	.a0(a1_x[6]), // IN
	.a1(a2_x[6]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_7
(
	.z(dstxp_b7_obuf), // OUT
	.a0(a1_x[7]), // IN
	.a1(a2_x[7]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_8
(
	.z(dstxp_b8_obuf), // OUT
	.a0(a1_x[8]), // IN
	.a1(a2_x[8]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_9
(
	.z(dstxp_b9_obuf), // OUT
	.a0(a1_x[9]), // IN
	.a1(a2_x[9]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_10
(
	.z(dstxp_b10_obuf), // OUT
	.a0(a1_x[10]), // IN
	.a1(a2_x[10]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_11
(
	.z(dstxp_b11_obuf), // OUT
	.a0(a1_x[11]), // IN
	.a1(a2_x[11]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_12
(
	.z(dstxp_b12_obuf), // OUT
	.a0(a1_x[12]), // IN
	.a1(a2_x[12]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_13
(
	.z(dstxp_b13_obuf), // OUT
	.a0(a1_x[13]), // IN
	.a1(a2_x[13]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_14
(
	.z(dstxp_b14_obuf), // OUT
	.a0(a1_x[14]), // IN
	.a1(a2_x[14]), // IN
	.s(dsta2_obuf)  // IN
);
mx2 dstxp_inst_15
(
	.z(dstxp[15]), // OUT
	.a0(a1_x[15]), // IN
	.a1(a2_x[15]), // IN
	.s(dsta2_obuf)  // IN
);

// ACONTROL.NET (349) - pseq[1-14] : eo
assign pseq_1 = dstxp_b1_obuf ^ a1_win_x[1];
assign pseq_2 = dstxp_b2_obuf ^ a1_win_x[2];
assign pseq_3 = dstxp_b3_obuf ^ a1_win_x[3];
assign pseq_4 = dstxp_b4_obuf ^ a1_win_x[4];
assign pseq_5 = dstxp_b5_obuf ^ a1_win_x[5];
assign pseq_6 = dstxp_b6_obuf ^ a1_win_x[6];
assign pseq_7 = dstxp_b7_obuf ^ a1_win_x[7];
assign pseq_8 = dstxp_b8_obuf ^ a1_win_x[8];
assign pseq_9 = dstxp_b9_obuf ^ a1_win_x[9];
assign pseq_10 = dstxp_b10_obuf ^ a1_win_x[10];
assign pseq_11 = dstxp_b11_obuf ^ a1_win_x[11];
assign pseq_12 = dstxp_b12_obuf ^ a1_win_x[12];
assign pseq_13 = dstxp_b13_obuf ^ a1_win_x[13];
assign pseq_14 = dstxp_b14_obuf ^ a1_win_x[14];

// ACONTROL.NET (360) - rmpt0 : an4
assign rmpt_0 = pseq_1 & pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (362) - rmpt1 : an3
assign rmpt_1 = pseq_2 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (368) - ewmt5 : nr14
nr14 ewmt5_inst
(
	.z(penden), // IO
	.a_0(rmpt_0), // IN
	.a_1(rmpt_1), // IN
	.a_2(pseq_3), // IN
	.a_3(pseq_4), // IN
	.a_4(pseq_5), // IN
	.a_5(pseq_6), // IN
	.a_6(pseq_7), // IN
	.a_7(pseq_8), // IN
	.a_8(pseq_9), // IN
	.a_9(pseq_10), // IN
	.a_10(pseq_11), // IN
	.a_11(pseq_12), // IN
	.a_12(pseq_13), // IN
	.a_13(pseq_14)  // IN
);

// ACONTROL.NET (374) - pixel8 : an3p
assign pixel8 = pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (375) - pixel16 : an3
assign pixel16 = pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (376) - pixel32 : an3
assign pixel32 = pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (379) - wmb3 : an2
assign wmb_3 = a1_win_x[0] & pixel8;

// ACONTROL.NET (380) - wmb4t0 : nd2
assign wmb4t_0 = ~(a1_win_x[1] & pixel8);

// ACONTROL.NET (381) - wmb4t1 : nd2
assign wmb4t_1 = ~(a1_win_x[0] & pixel16);

// ACONTROL.NET (382) - wmb4 : nd2
assign wmb_4 = ~(wmb4t_0 & wmb4t_1);

// ACONTROL.NET (383) - wmb5t0 : nd2
assign wmb5t_0 = ~(a1_win_x[2] & pixel8);

// ACONTROL.NET (384) - wmb5t1 : nd2
assign wmb5t_1 = ~(a1_win_x[1] & pixel16);

// ACONTROL.NET (385) - wmb5t2 : nd2
assign wmb5t_2 = ~(a1_win_x[0] & pixel32);

// ACONTROL.NET (386) - wmb5 : nd3
assign wmb_5 = ~(wmb5t_0 & wmb5t_1 & wmb5t_2);

// ACONTROL.NET (388) - wmt[3-5] : an2
assign window_mask_3 = wmb_3 & penden;
assign window_mask_4 = wmb_4 & penden;
assign window_mask_5 = wmb_5 & penden;

// ACONTROL.NET (393) - imb3 : an2
assign imb_3 = icount_0 & pixel8;

// ACONTROL.NET (394) - imb4t0 : nd2
assign imb4t_0 = ~(icount_1 & pixel8);

// ACONTROL.NET (395) - imb4t1 : nd2
assign imb4t_1 = ~(icount_0 & pixel16);

// ACONTROL.NET (396) - imb4 : nd2
assign imb_4 = ~(imb4t_0 & imb4t_1);

// ACONTROL.NET (397) - imb5t0 : nd2
assign imb5t_0 = ~(icount_2 & pixel8);

// ACONTROL.NET (398) - imb5t1 : nd2
assign imb5t_1 = ~(icount_1 & pixel16);

// ACONTROL.NET (399) - imb5t2 : nd2
assign imb5t_2 = ~(icount_0 & pixel32);

// ACONTROL.NET (400) - imb5 : nd3
assign imb_5 = ~(imb5t_0 & imb5t_1 & imb5t_2);

// ACONTROL.NET (402) - innerm[3-5] : an2
assign inner_mask_3 = imb_3 & inner0;
assign inner_mask_4 = imb_4 & inner0;
assign inner_mask_5 = imb_5 & inner0;

// ACONTROL.NET (407) - window_mask[6] : nr3
assign window_mask_6 = ~(window_mask_3 | window_mask_4 | window_mask_5);

// ACONTROL.NET (408) - inner_mask[6] : nr3p
assign inner_mask_6 = ~(inner_mask_3 | inner_mask_4 | inner_mask_5);

// ACONTROL.NET (413) - mcomp : mag4
mag4 mcomp_inst
(
	.agb(wgt), // OUT
	.aeb(dummy_0), // OUT
	.alb(dummy_1), // OUT
	.agbi(zero), // IN
	.aebi(one), // IN
	.albi(zero), // IN
	.a3(window_mask_6), // IN
	.b3(inner_mask_6), // IN
	.a2(window_mask_5), // IN
	.b2(inner_mask_5), // IN
	.a1(window_mask_4), // IN
	.b1(inner_mask_4), // IN
	.a0(window_mask_3), // IN
	.b0(inner_mask_3)  // IN
);

// ACONTROL.NET (419) - emask[3-5] : mx2
mx2 emask_from_3_to_5_inst_0
(
	.z(emask_3), // OUT
	.a0(window_mask_3), // IN
	.a1(inner_mask_3), // IN
	.s(wgt)  // IN
);
mx2 emask_from_3_to_5_inst_1
(
	.z(emask_4), // OUT
	.a0(window_mask_4), // IN
	.a1(inner_mask_4), // IN
	.s(wgt)  // IN
);
mx2 emask_from_3_to_5_inst_2
(
	.z(emask_5), // OUT
	.a0(window_mask_5), // IN
	.a1(inner_mask_5), // IN
	.s(wgt)  // IN
);

// ACONTROL.NET (425) - pm0 : an3
assign pm_0 = pixsize_n_0 & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (426) - pm1 : an3
assign pm_1 = pixsize_0_obuf & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (427) - pm2 : an3
assign pm_2 = pixsize_n_0 & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (428) - pm3 : an3
assign pm_3 = pixsize_0_obuf & pixsize_1_obuf & pixsize_n_2;

// ACONTROL.NET (429) - pm4 : an3
assign pm_4 = pixsize_n_0 & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (430) - pm5 : an3
assign pm_5 = pixsize_0_obuf & pixsize_n_1 & pixsize_2_obuf;

// ACONTROL.NET (432) - pma[0] : ha1
ha1 pma_index_0_inst
(
	.s(pma_0), // OUT
	.co(pmc_0), // OUT
	.a(pm_0), // IN
	.b(pixa_0)  // IN
);

// ACONTROL.NET (433) - pma[1] : fa1
fa1 pma_index_1_inst
(
	.s(pma_1), // OUT
	.co(pmc_1), // OUT
	.ci(pmc_0), // IN
	.a(pm_1), // IN
	.b(pixa_1)  // IN
);

// ACONTROL.NET (434) - pma[2] : fa1
fa1 pma_index_2_inst
(
	.s(pma_2), // OUT
	.co(pmc_2), // OUT
	.ci(pmc_1), // IN
	.a(pm_2), // IN
	.b(pixa_2)  // IN
);

// ACONTROL.NET (435) - pma[3] : ha1
ha1 pma_index_3_inst
(
	.s(pma_3), // OUT
	.co(pmc_3), // OUT
	.a(pmc_2), // IN
	.b(pm_3)  // IN
);

// ACONTROL.NET (436) - pma[4] : ha1
ha1 pma_index_4_inst
(
	.s(pma_4), // OUT
	.co(pmc_4), // OUT
	.a(pmc_3), // IN
	.b(pm_4)  // IN
);

// ACONTROL.NET (437) - pma[5] : eo
assign pma_5 = pmc_4 ^ pm_5;

// ACONTROL.NET (441) - denda[0-2] : an2
assign denda_0 = pma_0 & phrase_mode_n;
assign denda_1 = pma_1 & phrase_mode_n;
assign denda_2 = pma_2 & phrase_mode_n;

// ACONTROL.NET (442) - denda[3-5] : mx2
mx2 denda_from_3_to_5_inst_0
(
	.z(denda_3), // OUT
	.a0(emask_3), // IN
	.a1(pma_3), // IN
	.s(phrase_mode_n)  // IN
);
mx2 denda_from_3_to_5_inst_1
(
	.z(denda_4), // OUT
	.a0(emask_4), // IN
	.a1(pma_4), // IN
	.s(phrase_mode_n)  // IN
);
mx2 denda_from_3_to_5_inst_2
(
	.z(denda_5), // OUT
	.a0(emask_5), // IN
	.a1(pma_5), // IN
	.s(phrase_mode_n)  // IN
);

// ACONTROL.NET (445) - dendb[0-5] : mx2
mx2 dendb_from_0_to_5_inst_0
(
	.z(dendb_0), // OUT
	.a0(dendbl_0), // IN
	.a1(denda_0), // IN
	.s(mpipe_0)  // IN
);
mx2 dendb_from_0_to_5_inst_1
(
	.z(dendb_1), // OUT
	.a0(dendbl_1), // IN
	.a1(denda_1), // IN
	.s(mpipe_0)  // IN
);
mx2 dendb_from_0_to_5_inst_2
(
	.z(dendb_2), // OUT
	.a0(dendbl_2), // IN
	.a1(denda_2), // IN
	.s(mpipe_0)  // IN
);
mx2 dendb_from_0_to_5_inst_3
(
	.z(dendb_3), // OUT
	.a0(dendbl_3), // IN
	.a1(denda_3), // IN
	.s(mpipe_0)  // IN
);
mx2 dendb_from_0_to_5_inst_4
(
	.z(dendb_4), // OUT
	.a0(dendbl_4), // IN
	.a1(denda_4), // IN
	.s(mpipe_0)  // IN
);
mx2 dendb_from_0_to_5_inst_5
(
	.z(dendb_5), // OUT
	.a0(dendbl_5), // IN
	.a1(denda_5), // IN
	.s(mpipe_0)  // IN
);

// ACONTROL.NET (447) - dendbl[0-5] : fd1q
fd1q dendbl_from_0_to_5_inst_0
(
	.q(dendbl_0), // OUT
	.d(dendb_0), // IN
	.cp(clk)  // IN
);
fd1q dendbl_from_0_to_5_inst_1
(
	.q(dendbl_1), // OUT
	.d(dendb_1), // IN
	.cp(clk)  // IN
);
fd1q dendbl_from_0_to_5_inst_2
(
	.q(dendbl_2), // OUT
	.d(dendb_2), // IN
	.cp(clk)  // IN
);
fd1q dendbl_from_0_to_5_inst_3
(
	.q(dendbl_3), // OUT
	.d(dendb_3), // IN
	.cp(clk)  // IN
);
fd1q dendbl_from_0_to_5_inst_4
(
	.q(dendbl_4), // OUT
	.d(dendb_4), // IN
	.cp(clk)  // IN
);
fd1q dendbl_from_0_to_5_inst_5
(
	.q(dendbl_5), // OUT
	.d(dendb_5), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (449) - dendp[0-5] : fdsync
fdsync dendp_from_0_to_5_inst_0
(
	.q(dendp_0), // IO
	.d(dendb_0), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dendp_from_0_to_5_inst_1
(
	.q(dendp_1), // IO
	.d(dendb_1), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dendp_from_0_to_5_inst_2
(
	.q(dendp_2), // IO
	.d(dendb_2), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dendp_from_0_to_5_inst_3
(
	.q(dendp_3), // IO
	.d(dendb_3), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dendp_from_0_to_5_inst_4
(
	.q(dendp_4), // IO
	.d(dendb_4), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);
fdsync dendp_from_0_to_5_inst_5
(
	.q(dendp_5), // IO
	.d(dendb_5), // IN
	.ld(step_inner), // IN
	.clk(clk)  // IN
);

// ACONTROL.NET (451) - dend[0-5] : fd1qp
fd1q dend_from_0_to_5_inst_0
(
	.q(dend_0), // OUT
	.d(dendp_0), // IN
	.cp(clk)  // IN
);
fd1q dend_from_0_to_5_inst_1
(
	.q(dend_1), // OUT
	.d(dendp_1), // IN
	.cp(clk)  // IN
);
fd1q dend_from_0_to_5_inst_2
(
	.q(dend_2), // OUT
	.d(dendp_2), // IN
	.cp(clk)  // IN
);
fd1q dend_from_0_to_5_inst_3
(
	.q(dend_3), // OUT
	.d(dendp_3), // IN
	.cp(clk)  // IN
);
fd1q dend_from_0_to_5_inst_4
(
	.q(dend_4), // OUT
	.d(dendp_4), // IN
	.cp(clk)  // IN
);
fd1q dend_from_0_to_5_inst_5
(
	.q(dend_5), // OUT
	.d(dendp_5), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (472) - srcxp\[0-5] : mxi2
mxi2 srcxp_n_from_0_to_5_inst_0
(
	.z(srcxp_n_0), // OUT
	.a0(a2_x[0]), // IN
	.a1(a1_x[0]), // IN
	.s(dsta2_obuf)  // IN
);
mxi2 srcxp_n_from_0_to_5_inst_1
(
	.z(srcxp_n_1), // OUT
	.a0(a2_x[1]), // IN
	.a1(a1_x[1]), // IN
	.s(dsta2_obuf)  // IN
);
mxi2 srcxp_n_from_0_to_5_inst_2
(
	.z(srcxp_n_2), // OUT
	.a0(a2_x[2]), // IN
	.a1(a1_x[2]), // IN
	.s(dsta2_obuf)  // IN
);
mxi2 srcxp_n_from_0_to_5_inst_3
(
	.z(srcxp_n_3), // OUT
	.a0(a2_x[3]), // IN
	.a1(a1_x[3]), // IN
	.s(dsta2_obuf)  // IN
);
mxi2 srcxp_n_from_0_to_5_inst_4
(
	.z(srcxp_n_4), // OUT
	.a0(a2_x[4]), // IN
	.a1(a1_x[4]), // IN
	.s(dsta2_obuf)  // IN
);
mxi2 srcxp_n_from_0_to_5_inst_5
(
	.z(srcxp_n_5), // OUT
	.a0(a2_x[5]), // IN
	.a1(a1_x[5]), // IN
	.s(dsta2_obuf)  // IN
);

// ACONTROL.NET (474) - shftt[0] : fa1
fa1 shftt_index_0_inst
(
	.s(shftt_0), // OUT
	.co(shfcy_0), // OUT
	.ci(one), // IN
	.a(srcxp_n_0), // IN
	.b(dstxp_b0_obuf)  // IN
);

// ACONTROL.NET (476) - shftt[1-5] : fa1
fa1 shftt_from_1_to_5_inst_0
(
	.s(shftt_1), // OUT
	.co(shfcy_1), // OUT
	.ci(shfcy_0), // IN
	.a(srcxp_n_1), // IN
	.b(dstxp_b1_obuf)  // IN
);
fa1 shftt_from_1_to_5_inst_1
(
	.s(shftt_2), // OUT
	.co(shfcy_2), // OUT
	.ci(shfcy_1), // IN
	.a(srcxp_n_2), // IN
	.b(dstxp_b2_obuf)  // IN
);
fa1 shftt_from_1_to_5_inst_2
(
	.s(shftt_3), // OUT
	.co(shfcy_3), // OUT
	.ci(shfcy_2), // IN
	.a(srcxp_n_3), // IN
	.b(dstxp_b3_obuf)  // IN
);
fa1 shftt_from_1_to_5_inst_3
(
	.s(shftt_4), // OUT
	.co(shfcy_4), // OUT
	.ci(shfcy_3), // IN
	.a(srcxp_n_4), // IN
	.b(dstxp_b4_obuf)  // IN
);
fa1 shftt_from_1_to_5_inst_4
(
	.s(shftt_5), // OUT
	.co(shfcy_5), // OUT
	.ci(shfcy_4), // IN
	.a(srcxp_n_5), // IN
	.b(dstxp_b5_obuf)  // IN
);

// ACONTROL.NET (478) - unused[1] : dummy

// ACONTROL.NET (490) - shftv0 : an4
assign shftv_0 = shftt_0 & pixsize_n_0 & pixsize_n_1 & pixsize_n_2;

// ACONTROL.NET (491) - sftv1t : or2
assign shftv1t = pixsize_1_obuf | pixsize_2_obuf;

// ACONTROL.NET (492) - shftv1 : mx2g
mx2g shftv1_inst
(
	.z(shftv_1), // OUT
	.a0(shftt_1), // IN
	.a1(shftt_0), // IN
	.s(pixsize_1_obuf), // IN
	.gn(shftv1t)  // IN
);

// ACONTROL.NET (494) - shftv2 : mx4g
mx4g shftv2_inst
(
	.z(shftv_2), // OUT
	.a0(shftt_2), // IN
	.a1(shftt_1), // IN
	.a2(shftt_0), // IN
	.a3(zero), // IN
	.s0(pixsize_0_obuf), // IN
	.s1(pixsize_1_obuf), // IN
	.gn(pixsize_2_obuf)  // IN
);

// ACONTROL.NET (496) - shftv3 : mx4g
mx4g shftv3_inst
(
	.z(shftv_3), // OUT
	.a0(shftt_3), // IN
	.a1(shftt_2), // IN
	.a2(shftt_1), // IN
	.a3(shftt_0), // IN
	.s0(pixsize_0_obuf), // IN
	.s1(pixsize_1_obuf), // IN
	.gn(pixsize_2_obuf)  // IN
);

// ACONTROL.NET (498) - shftv4 : mx6
mx6 shftv4_inst
(
	.q(shftv_4), // OUT
	.a_0(shftt_4), // IN
	.a_1(shftt_3), // IN
	.a_2(shftt_2), // IN
	.a_3(shftt_1), // IN
	.a_4(shftt_0), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0_obuf), // IN
	.sel_1(pixsize_1_obuf), // IN
	.sel_2(pixsize_2_obuf)  // IN
);

// ACONTROL.NET (501) - shftv5 : mx6
mx6 shftv5_inst
(
	.q(shftv_5), // OUT
	.a_0(shftt_5), // IN
	.a_1(shftt_4), // IN
	.a_2(shftt_3), // IN
	.a_3(shftt_2), // IN
	.a_4(shftt_1), // IN
	.a_5(shftt_0), // IN
	.sel_0(pixsize_0_obuf), // IN
	.sel_1(pixsize_1_obuf), // IN
	.sel_2(pixsize_2_obuf)  // IN
);

// ACONTROL.NET (508) - pobb0t : or3
assign pobb0t = pixel8 | pixel16 | pixel32;

// ACONTROL.NET (509) - pobb0 : an2
assign pobb_0 = pobb0t & dstxp_b0_obuf;

// ACONTROL.NET (510) - pobb1t : or2
assign pobb1t = pixel8 | pixel16;

// ACONTROL.NET (511) - pobb1 : an2
assign pobb_1 = pobb1t & dstxp_b1_obuf;

// ACONTROL.NET (512) - pobb2 : an2
assign pobb_2 = pixel8 & dstxp_b2_obuf;

// ACONTROL.NET (514) - pobbsel : an2
assign pobbsel = phrase_mode_obuf & bcompen;

// ACONTROL.NET (515) - loshen : nr2
assign loshen_n = ~(srcen | pobbsel);

// ACONTROL.NET (516) - loshd[0-2] : mx2
mx2 loshd_from_0_to_2_inst_0
(
	.z(loshd_0), // OUT
	.a0(shftv_0), // IN
	.a1(pobb_0), // IN
	.s(pobbsel)  // IN
);
mx2 loshd_from_0_to_2_inst_1
(
	.z(loshd_1), // OUT
	.a0(shftv_1), // IN
	.a1(pobb_1), // IN
	.s(pobbsel)  // IN
);
mx2 loshd_from_0_to_2_inst_2
(
	.z(loshd_2), // OUT
	.a0(shftv_2), // IN
	.a1(pobb_2), // IN
	.s(pobbsel)  // IN
);

// ACONTROL.NET (518) - shfti[0-2] : mx2g
mx2g shfti_from_0_to_2_inst_0
(
	.z(shfti_0), // OUT
	.a0(srcshift_0_obuf), // IN
	.a1(loshd_0), // IN
	.s(sshftld), // IN
	.gn(loshen_n)  // IN
);
mx2g shfti_from_0_to_2_inst_1
(
	.z(shfti_1), // OUT
	.a0(srcshift_1_obuf), // IN
	.a1(loshd_1), // IN
	.s(sshftld), // IN
	.gn(loshen_n)  // IN
);
mx2g shfti_from_0_to_2_inst_2
(
	.z(shfti_2), // OUT
	.a0(srcshift_2_obuf), // IN
	.a1(loshd_2), // IN
	.s(sshftld), // IN
	.gn(loshen_n)  // IN
);

// ACONTROL.NET (523) - hishen\ : nd2
assign hishen_n = ~(srcen & phrase_mode_obuf);

// ACONTROL.NET (524) - shfti[3-5] : mx2g
mx2g shfti_from_3_to_5_inst_0
(
	.z(shfti_3), // OUT
	.a0(srcshift_3_obuf), // IN
	.a1(shftv_3), // IN
	.s(sshftld), // IN
	.gn(hishen_n)  // IN
);
mx2g shfti_from_3_to_5_inst_1
(
	.z(shfti_4), // OUT
	.a0(srcshift_4_obuf), // IN
	.a1(shftv_4), // IN
	.s(sshftld), // IN
	.gn(hishen_n)  // IN
);
mx2g shfti_from_3_to_5_inst_2
(
	.z(shfti_5), // OUT
	.a0(srcshift_5_obuf), // IN
	.a1(shftv_5), // IN
	.s(sshftld), // IN
	.gn(hishen_n)  // IN
);

// ACONTROL.NET (526) - srcshift[0-5] : fd1q
fd1q srcshift_from_0_to_5_inst_0
(
	.q(srcshift_0_obuf), // OUT
	.d(shfti_0), // IN
	.cp(clk)  // IN
);
fd1q srcshift_from_0_to_5_inst_1
(
	.q(srcshift_1_obuf), // OUT
	.d(shfti_1), // IN
	.cp(clk)  // IN
);
fd1q srcshift_from_0_to_5_inst_2
(
	.q(srcshift_2_obuf), // OUT
	.d(shfti_2), // IN
	.cp(clk)  // IN
);
fd1q srcshift_from_0_to_5_inst_3
(
	.q(srcshift_3_obuf), // OUT
	.d(shfti_3), // IN
	.cp(clk)  // IN
);
fd1q srcshift_from_0_to_5_inst_4
(
	.q(srcshift_4_obuf), // OUT
	.d(shfti_4), // IN
	.cp(clk)  // IN
);
fd1q srcshift_from_0_to_5_inst_5
(
	.q(srcshift_5_obuf), // OUT
	.d(shfti_5), // IN
	.cp(clk)  // IN
);

// ACONTROL.NET (539) - dstartp\[3-5] : iv
assign dstartp_n_3 = ~dstartp_3;
assign dstartp_n_4 = ~dstartp_4;
assign dstartp_n_5 = ~dstartp_5;

// ACONTROL.NET (541) - pwidth0 : fa1
fa1 pwidth0_inst
(
	.s(pwidth_0), // OUT
	.co(pwc_0), // OUT
	.ci(dendp_3), // IN
	.a(dstartp_n_3), // IN
	.b(one)  // IN
);

// ACONTROL.NET (543) - pwidth1 : fa1
fa1 pwidth1_inst
(
	.s(pwidth_1), // OUT
	.co(pwc_1), // OUT
	.ci(dendp_4), // IN
	.a(dstartp_n_4), // IN
	.b(pwc_0)  // IN
);

// ACONTROL.NET (545) - pwidth2 : fa1
fa1 pwidth2_inst
(
	.s(pwidth_2), // OUT
	.co(pwc_2), // OUT
	.ci(dendp_5), // IN
	.a(dstartp_n_5), // IN
	.b(pwc_1)  // IN
);

// ACONTROL.NET (547) - pwidth3 : nr6
assign pwidth_3 = ~(dendp_3 | dendp_4 | dendp_5 | dstartp_3 | dstartp_4 | dstartp_5);

// ACONTROL.NET (549) - unusedp : dummy

// ACONTROL.NET (550) - dummy[0-1] : dummy
endmodule
