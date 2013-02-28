`include "defs.v"

module obdata
(
	input aout_9,
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
	input reads,
	input palen,
	input clutt,
	input d_0,
	input d_1,
	input d_2,
	input d_3,
	input d_4,
	input d_5,
	input d_6,
	input d_7,
	input d_8,
	input d_9,
	input d_10,
	input d_11,
	input d_12,
	input d_13,
	input d_14,
	input d_15,
	input d_16,
	input d_17,
	input d_18,
	input d_19,
	input d_20,
	input d_21,
	input d_22,
	input d_23,
	input d_24,
	input d_25,
	input d_26,
	input d_27,
	input d_28,
	input d_29,
	input d_30,
	input d_31,
	input d_32,
	input d_33,
	input d_34,
	input d_35,
	input d_36,
	input d_37,
	input d_38,
	input d_39,
	input d_40,
	input d_41,
	input d_42,
	input d_43,
	input d_44,
	input d_45,
	input d_46,
	input d_47,
	input d_48,
	input d_49,
	input d_50,
	input d_51,
	input d_52,
	input d_53,
	input d_54,
	input d_55,
	input d_56,
	input d_57,
	input d_58,
	input d_59,
	input d_60,
	input d_61,
	input d_62,
	input d_63,
	input obdlatch,
	input mode1,
	input mode2,
	input mode4,
	input mode8,
	input mode16,
	input mode24,
	input scaledtype,
	input rmw,
	input index_1,
	input index_2,
	input index_3,
	input index_4,
	input index_5,
	input index_6,
	input index_7,
	input xld,
	input reflected,
	input transen,
	input xscale_0,
	input xscale_1,
	input xscale_2,
	input xscale_3,
	input xscale_4,
	input xscale_5,
	input xscale_6,
	input xscale_7,
	input resetl,
	input clk,
	input obld_1,
	input obld_2,
	input hilo,
	input lbt,
	input at_1,
	input at_2,
	input at_3,
	input at_4,
	input at_5,
	input at_6,
	input at_7,
	input at_8,
	input at_9,
	input at_10,
	output obdone,
	output obdready,
	output lbwa_1,
	output lbwa_2,
	output lbwa_3,
	output lbwa_4,
	output lbwa_5,
	output lbwa_6,
	output lbwa_7,
	output lbwa_8,
	output lbwa_9,
	output lbwe_0,
	output lbwe_1,
	output lbwd_0,
	output lbwd_1,
	output lbwd_2,
	output lbwd_3,
	output lbwd_4,
	output lbwd_5,
	output lbwd_6,
	output lbwd_7,
	output lbwd_8,
	output lbwd_9,
	output lbwd_10,
	output lbwd_11,
	output lbwd_12,
	output lbwd_13,
	output lbwd_14,
	output lbwd_15,
	output lbwd_16,
	output lbwd_17,
	output lbwd_18,
	output lbwd_19,
	output lbwd_20,
	output lbwd_21,
	output lbwd_22,
	output lbwd_23,
	output lbwd_24,
	output lbwd_25,
	output lbwd_26,
	output lbwd_27,
	output lbwd_28,
	output lbwd_29,
	output lbwd_30,
	output lbwd_31,
	output offscreen,
	output rmw1,
	output lben,
	inout dr_0,
	inout dr_1,
	inout dr_2,
	inout dr_3,
	inout dr_4,
	inout dr_5,
	inout dr_6,
	inout dr_7,
	inout dr_8,
	inout dr_9,
	inout dr_10,
	inout dr_11,
	inout dr_12,
	inout dr_13,
	inout dr_14,
	inout dr_15
);
wire [0:15] di;
wire [0:7] aa;
wire [0:7] ab;
wire [0:15] pda;
wire [0:15] pdb;
wire [0:8] xrem;
wire [0:15] d9h;
wire [0:15] d9l;
wire [0:5] pa;
wire pa_0;
wire pa_1;
wire pa_2;
wire pa_3;
wire pa_4;
wire pa_5;
wire xrem_0;
wire xrem_1;
wire xrem_2;
wire xrem_3;
wire xrem_4;
wire xrem_5;
wire xrem_6;
wire xrem_7;
wire xrem_8;
wire obdclk;
wire d1_0;
wire d1_1;
wire d1_2;
wire d1_3;
wire d1_4;
wire d1_5;
wire d1_6;
wire d1_7;
wire d1_8;
wire d1_9;
wire d1_10;
wire d1_11;
wire d1_12;
wire d1_13;
wire d1_14;
wire d1_15;
wire d1_16;
wire d1_17;
wire d1_18;
wire d1_19;
wire d1_20;
wire d1_21;
wire d1_22;
wire d1_23;
wire d1_24;
wire d1_25;
wire d1_26;
wire d1_27;
wire d1_28;
wire d1_29;
wire d1_30;
wire d1_31;
wire d1_32;
wire d1_33;
wire d1_34;
wire d1_35;
wire d1_36;
wire d1_37;
wire d1_38;
wire d1_39;
wire d1_40;
wire d1_41;
wire d1_42;
wire d1_43;
wire d1_44;
wire d1_45;
wire d1_46;
wire d1_47;
wire d1_48;
wire d1_49;
wire d1_50;
wire d1_51;
wire d1_52;
wire d1_53;
wire d1_54;
wire d1_55;
wire d1_56;
wire d1_57;
wire d1_58;
wire d1_59;
wire d1_60;
wire d1_61;
wire d1_62;
wire d1_63;
wire d2_0;
wire d2_1;
wire d2_2;
wire d2_3;
wire d2_4;
wire d2_5;
wire d2_6;
wire d2_7;
wire d2_8;
wire d2_9;
wire d2_10;
wire d2_11;
wire d2_12;
wire d2_13;
wire d2_14;
wire d2_15;
wire d2_16;
wire d2_17;
wire d2_18;
wire d2_19;
wire d2_20;
wire d2_21;
wire d2_22;
wire d2_23;
wire d2_24;
wire d2_25;
wire d2_26;
wire d2_27;
wire d2_28;
wire d2_29;
wire d2_30;
wire d2_31;
wire d2_32;
wire d2_33;
wire d2_34;
wire d2_35;
wire d2_36;
wire d2_37;
wire d2_38;
wire d2_39;
wire d2_40;
wire d2_41;
wire d2_42;
wire d2_43;
wire d2_44;
wire d2_45;
wire d2_46;
wire d2_47;
wire d2_48;
wire d2_49;
wire d2_50;
wire d2_51;
wire d2_52;
wire d2_53;
wire d2_54;
wire d2_55;
wire d2_56;
wire d2_57;
wire d2_58;
wire d2_59;
wire d2_60;
wire d2_61;
wire d2_62;
wire d2_63;
wire nextphrase;
wire scaledi;
wire scaled;
wire rmw1i;
wire empty;
wire full;
wire notfull;
wire notobdlatch;
wire empty0;
wire empty1;
wire empty2;
wire smq0;
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
wire d4_0;
wire d4_1;
wire d4_2;
wire d4_3;
wire d4_4;
wire d4_5;
wire d4_6;
wire d4_7;
wire d4_8;
wire d4_9;
wire d4_10;
wire d4_11;
wire d4_12;
wire d4_13;
wire d4_14;
wire d4_15;
wire d5_0;
wire d5_1;
wire d5_2;
wire d5_3;
wire d5_4;
wire d5_5;
wire d5_6;
wire d5_7;
wire d6_0;
wire d6_1;
wire d6_2;
wire d6_3;
wire d7_0;
wire d7_1;
wire pra00;
wire pra01;
wire pra02;
wire pra03;
wire pra_0;
wire pra10;
wire pra11;
wire pra12;
wire pra13;
wire pra_1;
wire pra20;
wire pra21;
wire pra22;
wire pra23;
wire pra_2;
wire pra30;
wire pra31;
wire pra32;
wire pra33;
wire pra_3;
wire pra_4;
wire pra_5;
wire pra_6;
wire pra_7;
wire prb00;
wire prb01;
wire prb02;
wire prb03;
wire prb_0;
wire prb10;
wire prb11;
wire prb12;
wire prb13;
wire prb_1;
wire prb20;
wire prb21;
wire prb22;
wire prb23;
wire prb_2;
wire prb30;
wire prb31;
wire prb32;
wire prb33;
wire prb_3;
wire prb_4;
wire prb_5;
wire prb_6;
wire prb_7;
wire paad_0;
wire paad_1;
wire paad_2;
wire paad_3;
wire paad_4;
wire paad_5;
wire paad_6;
wire paad_7;
wire pabd_0;
wire pabd_1;
wire pabd_2;
wire pabd_3;
wire pabd_4;
wire pabd_5;
wire pabd_6;
wire pabd_7;
wire paaq_0;
wire paaq_1;
wire paaq_2;
wire paaq_3;
wire paaq_4;
wire paaq_5;
wire paaq_6;
wire paaq_7;
wire pabq_0;
wire pabq_1;
wire pabq_2;
wire pabq_3;
wire pabq_4;
wire pabq_5;
wire pabq_6;
wire pabq_7;
wire paa_0;
wire paa_1;
wire paa_2;
wire paa_3;
wire paa_4;
wire paa_5;
wire paa_6;
wire paa_7;
wire pab_0;
wire pab_1;
wire pab_2;
wire pab_3;
wire pab_4;
wire pab_5;
wire pab_6;
wire pab_7;
wire ncst;
wire busy;
wire busy1;
wire cs;
wire csl;
wire prw;
wire pdi_0;
wire pdi_1;
wire pdi_2;
wire pdi_3;
wire pdi_4;
wire pdi_5;
wire pdi_6;
wire pdi_7;
wire pdi_8;
wire pdi_9;
wire pdi_10;
wire pdi_11;
wire pdi_12;
wire pdi_13;
wire pdi_14;
wire pdi_15;
wire pd_0;
wire pd_1;
wire pd_2;
wire pd_3;
wire pd_4;
wire pd_5;
wire pd_6;
wire pd_7;
wire pd_8;
wire pd_9;
wire pd_10;
wire pd_11;
wire pd_12;
wire pd_13;
wire pd_14;
wire pd_15;
wire pden;
wire pdeni;
wire pwdeni;
wire pwden;
wire writes;
wire physicali;
wire phys;
wire hilob;
wire d8_0;
wire d8_1;
wire d8_2;
wire d8_3;
wire d8_4;
wire d8_5;
wire d8_6;
wire d8_7;
wire d8_8;
wire d8_9;
wire d8_10;
wire d8_11;
wire d8_12;
wire d8_13;
wire d8_14;
wire d8_15;
wire d8_16;
wire d8_17;
wire d8_18;
wire d8_19;
wire d8_20;
wire d8_21;
wire d8_22;
wire d8_23;
wire d8_24;
wire d8_25;
wire d8_26;
wire d8_27;
wire d8_28;
wire d8_29;
wire d8_30;
wire d8_31;
wire d9_0;
wire d9_1;
wire d9_2;
wire d9_3;
wire d9_4;
wire d9_5;
wire d9_6;
wire d9_7;
wire d9_8;
wire d9_9;
wire d9_10;
wire d9_11;
wire d9_12;
wire d9_13;
wire d9_14;
wire d9_15;
wire d9_16;
wire d9_17;
wire d9_18;
wire d9_19;
wire d9_20;
wire d9_21;
wire d9_22;
wire d9_23;
wire d9_24;
wire d9_25;
wire d9_26;
wire d9_27;
wire d9_28;
wire d9_29;
wire d9_30;
wire d9_31;
wire nextbits1;
wire nextbits;
wire nextbits2;
wire delpixi;
wire delpix;
wire da_0;
wire da_1;
wire da_2;
wire da_3;
wire da_4;
wire da_5;
wire da_6;
wire da_7;
wire da_8;
wire da_9;
wire da_10;
wire da_11;
wire da_12;
wire da_13;
wire da_14;
wire da_15;
wire del1;
wire lbwa_0;
wire delayed;
wire notscaled;
wire db_0;
wire db_1;
wire db_2;
wire db_3;
wire db_4;
wire db_5;
wire db_6;
wire db_7;
wire db_8;
wire db_9;
wire db_10;
wire db_11;
wire db_12;
wire db_13;
wire db_14;
wire db_15;
wire pswap;
wire co_0;
wire ip_0;
wire ci_0;
wire reset;
wire pad_1;
wire co_1;
wire ip_1;
wire ci_1;
wire pad_2;
wire co_2;
wire ip_2;
wire ci_2;
wire pad_3;
wire co_3;
wire ip_3;
wire ci_3;
wire pad_4;
wire co_4;
wire ip_4;
wire ci_4;
wire pad_5;
wire co_5;
wire ip_5;
wire ci_5;
wire gnd;
wire pai_1;
wire pai_2;
wire pai_3;
wire pai_4;
wire pai_5;
wire ipd_0;
wire ipd_1;
wire ipd_2;
wire ipd_3;
wire ipd_4;
wire ipd_5;
wire nip;
wire p2done;
wire cil_2;
wire cil_3;
wire cil_4;
wire cil_5;
wire modew;
wire col_1;
wire col_2;
wire col_3;
wire col_4;
wire vcc;
wire phd_1;
wire phd_2;
wire phd_3;
wire phd_4;
wire phd_5;
wire phdone;
wire notphdone;
wire nextx1;
wire nextx;
wire nextxx;
wire lbwad_0;
wire lco_0;
wire lci_0;
wire up;
wire lbwad_1;
wire lco_1;
wire lci_1;
wire lbwad_2;
wire lbwad_3;
wire lbwad_4;
wire lbwad_5;
wire lbwad_6;
wire lbwad_7;
wire lbwad_8;
wire lbwad_9;
wire lbwad_10;
wire lbwad_11;
wire lco_2;
wire lco_3;
wire lco_4;
wire lco_5;
wire lco_6;
wire lco_7;
wire lco_8;
wire lco_9;
wire lco_10;
wire lco_11;
wire lbwadd_0;
wire lbwadd_1;
wire lbwadd_2;
wire lbwadd_3;
wire lbwadd_4;
wire lbwadd_5;
wire lbwadd_6;
wire lbwadd_7;
wire lbwadd_8;
wire lbwadd_9;
wire lcil_1;
wire lcol_0;
wire nota_4;
wire nota_5;
wire nota_8;
wire nota_10;
wire nota_11;
wire c_5;
wire c_7;
wire c_8;
wire c_9;
wire c_11;
wire left;
wire right;
wire onscreen;
wire offscreeni;
wire notoffscreen;
wire zero1a;
wire zero2a;
wire zero4a;
wire zero8a;
wire zero16a0;
wire zero16a1;
wire trans1a;
wire trans2a;
wire trans4a;
wire trans8a;
wire trans16a;
wire transa;
wire nottransa;
wire zero1b;
wire zero2b;
wire zero4b;
wire zero8b;
wire zero16b0;
wire zero16b1;
wire trans1b;
wire trans2b;
wire trans4b;
wire trans8b;
wire trans16b;
wire transb;
wire nottransb;
wire smd0;
wire smq1;
wire smd1;
wire smq2i;
wire smd2;
wire smq2;
wire d00;
wire d01;
wire notremgte2;
wire d02;
wire d10;
wire d11;
wire d12;
wire d13;
wire remgte2;
wire d20;
wire notrmw;
wire d21;
wire d22;
wire d23;
wire d24;
wire np0;
wire np1;
wire np2;
wire nextphrasei;
wire nx0;
wire remgte1;
wire nx1;
wire nb0;
wire nb1;
wire nextbitsi;
wire lbwrite;
wire nntransa;
wire nntransb;
wire lbwea1;
wire lbweb1;
wire lbwea2;
wire lbweb2;
wire lbwea4;
wire lbweb4;
wire lbweb51;
wire lbweb52;
wire lbweb5;
wire lbweb6;
wire lbwea7;
wire pswapd;
wire lbweb7;
wire lbwea80;
wire lbwea81;
wire notlbwad_0;
wire lbwea8;
wire lbweb80;
wire lbweb81;
wire lbweb8;
wire lbw1;
wire lbw2;
wire lbw3;
wire lbend;
wire lbeni;
wire pa1_0;
wire pa2_0;
wire oddeven;
wire pswapi;
wire xrd_0;
wire xrd_1;
wire xrd_2;
wire xrd_3;
wire xrd_4;
wire xrd_5;
wire xrd_6;
wire xrd_7;
wire xrd_8;
wire sum_0;
wire sc_0;
wire sum_1;
wire sum_2;
wire sum_3;
wire sum_4;
wire sum_5;
wire sum_6;
wire sc_1;
wire sc_2;
wire sc_3;
wire sc_4;
wire sc_5;
wire sc_6;
wire sum_7;
wire sum_8;
wire xs_0;
wire xs_1;
wire xs_2;
wire xs_3;
wire xs_4;
wire xs_5;
wire xs_6;
wire xs_7;
wire xs_8;
wire diff_5;
wire dc_5;
wire diff_6;
wire diff_7;
wire diff_8;
wire dc_6;
wire dc_7;
wire dc_8;
wire notremgte2i;

// Output buffers
wire obdone_obuf;
wire obdready_obuf;
wire lbwa_1_obuf;
wire lbwa_2_obuf;
wire lbwa_3_obuf;
wire lbwa_4_obuf;
wire lbwa_5_obuf;
wire lbwa_6_obuf;
wire lbwa_7_obuf;
wire lbwa_8_obuf;
wire lbwa_9_obuf;
wire lbwe_0_obuf;
wire lbwe_1_obuf;
wire lbwd_0_obuf;
wire lbwd_1_obuf;
wire lbwd_2_obuf;
wire lbwd_3_obuf;
wire lbwd_4_obuf;
wire lbwd_5_obuf;
wire lbwd_6_obuf;
wire lbwd_7_obuf;
wire lbwd_8_obuf;
wire lbwd_9_obuf;
wire lbwd_10_obuf;
wire lbwd_11_obuf;
wire lbwd_12_obuf;
wire lbwd_13_obuf;
wire lbwd_14_obuf;
wire lbwd_15_obuf;
wire lbwd_16_obuf;
wire lbwd_17_obuf;
wire lbwd_18_obuf;
wire lbwd_19_obuf;
wire lbwd_20_obuf;
wire lbwd_21_obuf;
wire lbwd_22_obuf;
wire lbwd_23_obuf;
wire lbwd_24_obuf;
wire lbwd_25_obuf;
wire lbwd_26_obuf;
wire lbwd_27_obuf;
wire lbwd_28_obuf;
wire lbwd_29_obuf;
wire lbwd_30_obuf;
wire lbwd_31_obuf;
wire offscreen_obuf;
wire rmw1_obuf;
wire lben_obuf;


// Output buffers
assign obdone = obdone_obuf;
assign obdready = obdready_obuf;
assign lbwa_1 = lbwa_1_obuf;
assign lbwa_2 = lbwa_2_obuf;
assign lbwa_3 = lbwa_3_obuf;
assign lbwa_4 = lbwa_4_obuf;
assign lbwa_5 = lbwa_5_obuf;
assign lbwa_6 = lbwa_6_obuf;
assign lbwa_7 = lbwa_7_obuf;
assign lbwa_8 = lbwa_8_obuf;
assign lbwa_9 = lbwa_9_obuf;
assign lbwe_0 = lbwe_0_obuf;
assign lbwe_1 = lbwe_1_obuf;
assign lbwd_0 = lbwd_0_obuf;
assign lbwd_1 = lbwd_1_obuf;
assign lbwd_2 = lbwd_2_obuf;
assign lbwd_3 = lbwd_3_obuf;
assign lbwd_4 = lbwd_4_obuf;
assign lbwd_5 = lbwd_5_obuf;
assign lbwd_6 = lbwd_6_obuf;
assign lbwd_7 = lbwd_7_obuf;
assign lbwd_8 = lbwd_8_obuf;
assign lbwd_9 = lbwd_9_obuf;
assign lbwd_10 = lbwd_10_obuf;
assign lbwd_11 = lbwd_11_obuf;
assign lbwd_12 = lbwd_12_obuf;
assign lbwd_13 = lbwd_13_obuf;
assign lbwd_14 = lbwd_14_obuf;
assign lbwd_15 = lbwd_15_obuf;
assign lbwd_16 = lbwd_16_obuf;
assign lbwd_17 = lbwd_17_obuf;
assign lbwd_18 = lbwd_18_obuf;
assign lbwd_19 = lbwd_19_obuf;
assign lbwd_20 = lbwd_20_obuf;
assign lbwd_21 = lbwd_21_obuf;
assign lbwd_22 = lbwd_22_obuf;
assign lbwd_23 = lbwd_23_obuf;
assign lbwd_24 = lbwd_24_obuf;
assign lbwd_25 = lbwd_25_obuf;
assign lbwd_26 = lbwd_26_obuf;
assign lbwd_27 = lbwd_27_obuf;
assign lbwd_28 = lbwd_28_obuf;
assign lbwd_29 = lbwd_29_obuf;
assign lbwd_30 = lbwd_30_obuf;
assign lbwd_31 = lbwd_31_obuf;
assign offscreen = offscreen_obuf;
assign rmw1 = rmw1_obuf;
assign lben = lben_obuf;


// OBDATA.NET (61) - pa : join
assign pa[0] = pa_0;
assign pa[1] = pa_1;
assign pa[2] = pa_2;
assign pa[3] = pa_3;
assign pa[4] = pa_4;
assign pa[5] = pa_5;

// OBDATA.NET (62) - pau : dummy

// OBDATA.NET (63) - xrem : join
assign xrem[0] = xrem_0;
assign xrem[1] = xrem_1;
assign xrem[2] = xrem_2;
assign xrem[3] = xrem_3;
assign xrem[4] = xrem_4;
assign xrem[5] = xrem_5;
assign xrem[6] = xrem_6;
assign xrem[7] = xrem_7;
assign xrem[8] = xrem_8;

// OBDATA.NET (64) - xremu : dummy

// OBDATA.NET (68) - obdclk : nivu2
assign obdclk = obdlatch;

// OBDATA.NET (69) - d1[0-63] : slatch
slatch d1_from_0_to_63_inst_0
(
	.q(d1_0), // IO
	.d(d_0), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_1
(
	.q(d1_1), // IO
	.d(d_1), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_2
(
	.q(d1_2), // IO
	.d(d_2), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_3
(
	.q(d1_3), // IO
	.d(d_3), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_4
(
	.q(d1_4), // IO
	.d(d_4), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_5
(
	.q(d1_5), // IO
	.d(d_5), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_6
(
	.q(d1_6), // IO
	.d(d_6), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_7
(
	.q(d1_7), // IO
	.d(d_7), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_8
(
	.q(d1_8), // IO
	.d(d_8), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_9
(
	.q(d1_9), // IO
	.d(d_9), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_10
(
	.q(d1_10), // IO
	.d(d_10), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_11
(
	.q(d1_11), // IO
	.d(d_11), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_12
(
	.q(d1_12), // IO
	.d(d_12), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_13
(
	.q(d1_13), // IO
	.d(d_13), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_14
(
	.q(d1_14), // IO
	.d(d_14), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_15
(
	.q(d1_15), // IO
	.d(d_15), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_16
(
	.q(d1_16), // IO
	.d(d_16), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_17
(
	.q(d1_17), // IO
	.d(d_17), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_18
(
	.q(d1_18), // IO
	.d(d_18), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_19
(
	.q(d1_19), // IO
	.d(d_19), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_20
(
	.q(d1_20), // IO
	.d(d_20), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_21
(
	.q(d1_21), // IO
	.d(d_21), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_22
(
	.q(d1_22), // IO
	.d(d_22), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_23
(
	.q(d1_23), // IO
	.d(d_23), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_24
(
	.q(d1_24), // IO
	.d(d_24), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_25
(
	.q(d1_25), // IO
	.d(d_25), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_26
(
	.q(d1_26), // IO
	.d(d_26), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_27
(
	.q(d1_27), // IO
	.d(d_27), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_28
(
	.q(d1_28), // IO
	.d(d_28), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_29
(
	.q(d1_29), // IO
	.d(d_29), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_30
(
	.q(d1_30), // IO
	.d(d_30), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_31
(
	.q(d1_31), // IO
	.d(d_31), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_32
(
	.q(d1_32), // IO
	.d(d_32), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_33
(
	.q(d1_33), // IO
	.d(d_33), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_34
(
	.q(d1_34), // IO
	.d(d_34), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_35
(
	.q(d1_35), // IO
	.d(d_35), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_36
(
	.q(d1_36), // IO
	.d(d_36), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_37
(
	.q(d1_37), // IO
	.d(d_37), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_38
(
	.q(d1_38), // IO
	.d(d_38), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_39
(
	.q(d1_39), // IO
	.d(d_39), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_40
(
	.q(d1_40), // IO
	.d(d_40), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_41
(
	.q(d1_41), // IO
	.d(d_41), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_42
(
	.q(d1_42), // IO
	.d(d_42), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_43
(
	.q(d1_43), // IO
	.d(d_43), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_44
(
	.q(d1_44), // IO
	.d(d_44), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_45
(
	.q(d1_45), // IO
	.d(d_45), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_46
(
	.q(d1_46), // IO
	.d(d_46), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_47
(
	.q(d1_47), // IO
	.d(d_47), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_48
(
	.q(d1_48), // IO
	.d(d_48), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_49
(
	.q(d1_49), // IO
	.d(d_49), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_50
(
	.q(d1_50), // IO
	.d(d_50), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_51
(
	.q(d1_51), // IO
	.d(d_51), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_52
(
	.q(d1_52), // IO
	.d(d_52), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_53
(
	.q(d1_53), // IO
	.d(d_53), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_54
(
	.q(d1_54), // IO
	.d(d_54), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_55
(
	.q(d1_55), // IO
	.d(d_55), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_56
(
	.q(d1_56), // IO
	.d(d_56), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_57
(
	.q(d1_57), // IO
	.d(d_57), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_58
(
	.q(d1_58), // IO
	.d(d_58), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_59
(
	.q(d1_59), // IO
	.d(d_59), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_60
(
	.q(d1_60), // IO
	.d(d_60), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_61
(
	.q(d1_61), // IO
	.d(d_61), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_62
(
	.q(d1_62), // IO
	.d(d_62), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);
slatch d1_from_0_to_63_inst_63
(
	.q(d1_63), // IO
	.d(d_63), // IN
	.clk(clk), // IN
	.en(obdclk)  // IN
);

// OBDATA.NET (70) - d2[0-63] : slatch
slatch d2_from_0_to_63_inst_0
(
	.q(d2_0), // IO
	.d(d1_0), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_1
(
	.q(d2_1), // IO
	.d(d1_1), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_2
(
	.q(d2_2), // IO
	.d(d1_2), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_3
(
	.q(d2_3), // IO
	.d(d1_3), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_4
(
	.q(d2_4), // IO
	.d(d1_4), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_5
(
	.q(d2_5), // IO
	.d(d1_5), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_6
(
	.q(d2_6), // IO
	.d(d1_6), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_7
(
	.q(d2_7), // IO
	.d(d1_7), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_8
(
	.q(d2_8), // IO
	.d(d1_8), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_9
(
	.q(d2_9), // IO
	.d(d1_9), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_10
(
	.q(d2_10), // IO
	.d(d1_10), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_11
(
	.q(d2_11), // IO
	.d(d1_11), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_12
(
	.q(d2_12), // IO
	.d(d1_12), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_13
(
	.q(d2_13), // IO
	.d(d1_13), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_14
(
	.q(d2_14), // IO
	.d(d1_14), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_15
(
	.q(d2_15), // IO
	.d(d1_15), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_16
(
	.q(d2_16), // IO
	.d(d1_16), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_17
(
	.q(d2_17), // IO
	.d(d1_17), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_18
(
	.q(d2_18), // IO
	.d(d1_18), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_19
(
	.q(d2_19), // IO
	.d(d1_19), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_20
(
	.q(d2_20), // IO
	.d(d1_20), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_21
(
	.q(d2_21), // IO
	.d(d1_21), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_22
(
	.q(d2_22), // IO
	.d(d1_22), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_23
(
	.q(d2_23), // IO
	.d(d1_23), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_24
(
	.q(d2_24), // IO
	.d(d1_24), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_25
(
	.q(d2_25), // IO
	.d(d1_25), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_26
(
	.q(d2_26), // IO
	.d(d1_26), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_27
(
	.q(d2_27), // IO
	.d(d1_27), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_28
(
	.q(d2_28), // IO
	.d(d1_28), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_29
(
	.q(d2_29), // IO
	.d(d1_29), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_30
(
	.q(d2_30), // IO
	.d(d1_30), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_31
(
	.q(d2_31), // IO
	.d(d1_31), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_32
(
	.q(d2_32), // IO
	.d(d1_32), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_33
(
	.q(d2_33), // IO
	.d(d1_33), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_34
(
	.q(d2_34), // IO
	.d(d1_34), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_35
(
	.q(d2_35), // IO
	.d(d1_35), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_36
(
	.q(d2_36), // IO
	.d(d1_36), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_37
(
	.q(d2_37), // IO
	.d(d1_37), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_38
(
	.q(d2_38), // IO
	.d(d1_38), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_39
(
	.q(d2_39), // IO
	.d(d1_39), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_40
(
	.q(d2_40), // IO
	.d(d1_40), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_41
(
	.q(d2_41), // IO
	.d(d1_41), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_42
(
	.q(d2_42), // IO
	.d(d1_42), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_43
(
	.q(d2_43), // IO
	.d(d1_43), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_44
(
	.q(d2_44), // IO
	.d(d1_44), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_45
(
	.q(d2_45), // IO
	.d(d1_45), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_46
(
	.q(d2_46), // IO
	.d(d1_46), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_47
(
	.q(d2_47), // IO
	.d(d1_47), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_48
(
	.q(d2_48), // IO
	.d(d1_48), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_49
(
	.q(d2_49), // IO
	.d(d1_49), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_50
(
	.q(d2_50), // IO
	.d(d1_50), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_51
(
	.q(d2_51), // IO
	.d(d1_51), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_52
(
	.q(d2_52), // IO
	.d(d1_52), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_53
(
	.q(d2_53), // IO
	.d(d1_53), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_54
(
	.q(d2_54), // IO
	.d(d1_54), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_55
(
	.q(d2_55), // IO
	.d(d1_55), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_56
(
	.q(d2_56), // IO
	.d(d1_56), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_57
(
	.q(d2_57), // IO
	.d(d1_57), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_58
(
	.q(d2_58), // IO
	.d(d1_58), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_59
(
	.q(d2_59), // IO
	.d(d1_59), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_60
(
	.q(d2_60), // IO
	.d(d1_60), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_61
(
	.q(d2_61), // IO
	.d(d1_61), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_62
(
	.q(d2_62), // IO
	.d(d1_62), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);
slatch d2_from_0_to_63_inst_63
(
	.q(d2_63), // IO
	.d(d1_63), // IN
	.clk(clk), // IN
	.en(nextphrase)  // IN
);

// OBDATA.NET (74) - scaledi : ldp1q
ldp1q scaledi_inst
(
	.q(scaledi), // OUT
	.d(scaledtype), // IN
	.g(obdclk)  // IN
);

// OBDATA.NET (75) - scaled : nivm
assign scaled = scaledi;

// OBDATA.NET (76) - rmw1i : ldp2q
ldp2q rmw1i_inst
(
	.q(rmw1i), // OUT
	.d(rmw), // IN
	.g(obdclk), // IN
	.cd(resetl)  // IN
);

// OBDATA.NET (77) - rmw1 : nivu
assign rmw1_obuf = rmw1i;

// OBDATA.NET (79) - empty : or2
assign empty = offscreen_obuf | nextphrase;

// OBDATA.NET (80) - full : fjk2
fjk2 full_inst
(
	.q(full), // OUT
	.qn(notfull), // OUT
	.j(obdlatch), // IN
	.k(empty), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OBDATA.NET (85) - notobdl : iv
assign notobdlatch = ~obdlatch;

// OBDATA.NET (86) - empty0 : nd2
assign empty0 = ~(notfull & notobdlatch);

// OBDATA.NET (87) - empty1 : iv
assign empty1 = ~nextphrase;

// OBDATA.NET (88) - empty2 : iv
assign empty2 = ~smq0;

// OBDATA.NET (90) - obdready : nd3
assign obdready_obuf = ~(empty0 & empty1 & empty2);

// OBDATA.NET (98) - d3[0-31] : mx2
mx2 d3_from_0_to_31_inst_0
(
	.z(d3_0), // OUT
	.a0(d2_0), // IN
	.a1(d2_32), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_1
(
	.z(d3_1), // OUT
	.a0(d2_1), // IN
	.a1(d2_33), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_2
(
	.z(d3_2), // OUT
	.a0(d2_2), // IN
	.a1(d2_34), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_3
(
	.z(d3_3), // OUT
	.a0(d2_3), // IN
	.a1(d2_35), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_4
(
	.z(d3_4), // OUT
	.a0(d2_4), // IN
	.a1(d2_36), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_5
(
	.z(d3_5), // OUT
	.a0(d2_5), // IN
	.a1(d2_37), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_6
(
	.z(d3_6), // OUT
	.a0(d2_6), // IN
	.a1(d2_38), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_7
(
	.z(d3_7), // OUT
	.a0(d2_7), // IN
	.a1(d2_39), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_8
(
	.z(d3_8), // OUT
	.a0(d2_8), // IN
	.a1(d2_40), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_9
(
	.z(d3_9), // OUT
	.a0(d2_9), // IN
	.a1(d2_41), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_10
(
	.z(d3_10), // OUT
	.a0(d2_10), // IN
	.a1(d2_42), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_11
(
	.z(d3_11), // OUT
	.a0(d2_11), // IN
	.a1(d2_43), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_12
(
	.z(d3_12), // OUT
	.a0(d2_12), // IN
	.a1(d2_44), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_13
(
	.z(d3_13), // OUT
	.a0(d2_13), // IN
	.a1(d2_45), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_14
(
	.z(d3_14), // OUT
	.a0(d2_14), // IN
	.a1(d2_46), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_15
(
	.z(d3_15), // OUT
	.a0(d2_15), // IN
	.a1(d2_47), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_16
(
	.z(d3_16), // OUT
	.a0(d2_16), // IN
	.a1(d2_48), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_17
(
	.z(d3_17), // OUT
	.a0(d2_17), // IN
	.a1(d2_49), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_18
(
	.z(d3_18), // OUT
	.a0(d2_18), // IN
	.a1(d2_50), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_19
(
	.z(d3_19), // OUT
	.a0(d2_19), // IN
	.a1(d2_51), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_20
(
	.z(d3_20), // OUT
	.a0(d2_20), // IN
	.a1(d2_52), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_21
(
	.z(d3_21), // OUT
	.a0(d2_21), // IN
	.a1(d2_53), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_22
(
	.z(d3_22), // OUT
	.a0(d2_22), // IN
	.a1(d2_54), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_23
(
	.z(d3_23), // OUT
	.a0(d2_23), // IN
	.a1(d2_55), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_24
(
	.z(d3_24), // OUT
	.a0(d2_24), // IN
	.a1(d2_56), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_25
(
	.z(d3_25), // OUT
	.a0(d2_25), // IN
	.a1(d2_57), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_26
(
	.z(d3_26), // OUT
	.a0(d2_26), // IN
	.a1(d2_58), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_27
(
	.z(d3_27), // OUT
	.a0(d2_27), // IN
	.a1(d2_59), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_28
(
	.z(d3_28), // OUT
	.a0(d2_28), // IN
	.a1(d2_60), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_29
(
	.z(d3_29), // OUT
	.a0(d2_29), // IN
	.a1(d2_61), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_30
(
	.z(d3_30), // OUT
	.a0(d2_30), // IN
	.a1(d2_62), // IN
	.s(pa_5)  // IN
);
mx2 d3_from_0_to_31_inst_31
(
	.z(d3_31), // OUT
	.a0(d2_31), // IN
	.a1(d2_63), // IN
	.s(pa_5)  // IN
);

// OBDATA.NET (99) - d4[0-15] : mx2
mx2 d4_from_0_to_15_inst_0
(
	.z(d4_0), // OUT
	.a0(d3_0), // IN
	.a1(d3_16), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_1
(
	.z(d4_1), // OUT
	.a0(d3_1), // IN
	.a1(d3_17), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_2
(
	.z(d4_2), // OUT
	.a0(d3_2), // IN
	.a1(d3_18), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_3
(
	.z(d4_3), // OUT
	.a0(d3_3), // IN
	.a1(d3_19), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_4
(
	.z(d4_4), // OUT
	.a0(d3_4), // IN
	.a1(d3_20), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_5
(
	.z(d4_5), // OUT
	.a0(d3_5), // IN
	.a1(d3_21), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_6
(
	.z(d4_6), // OUT
	.a0(d3_6), // IN
	.a1(d3_22), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_7
(
	.z(d4_7), // OUT
	.a0(d3_7), // IN
	.a1(d3_23), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_8
(
	.z(d4_8), // OUT
	.a0(d3_8), // IN
	.a1(d3_24), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_9
(
	.z(d4_9), // OUT
	.a0(d3_9), // IN
	.a1(d3_25), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_10
(
	.z(d4_10), // OUT
	.a0(d3_10), // IN
	.a1(d3_26), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_11
(
	.z(d4_11), // OUT
	.a0(d3_11), // IN
	.a1(d3_27), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_12
(
	.z(d4_12), // OUT
	.a0(d3_12), // IN
	.a1(d3_28), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_13
(
	.z(d4_13), // OUT
	.a0(d3_13), // IN
	.a1(d3_29), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_14
(
	.z(d4_14), // OUT
	.a0(d3_14), // IN
	.a1(d3_30), // IN
	.s(pa_4)  // IN
);
mx2 d4_from_0_to_15_inst_15
(
	.z(d4_15), // OUT
	.a0(d3_15), // IN
	.a1(d3_31), // IN
	.s(pa_4)  // IN
);

// OBDATA.NET (100) - d5[0-7] : mx2
mx2 d5_from_0_to_7_inst_0
(
	.z(d5_0), // OUT
	.a0(d4_0), // IN
	.a1(d4_8), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_1
(
	.z(d5_1), // OUT
	.a0(d4_1), // IN
	.a1(d4_9), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_2
(
	.z(d5_2), // OUT
	.a0(d4_2), // IN
	.a1(d4_10), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_3
(
	.z(d5_3), // OUT
	.a0(d4_3), // IN
	.a1(d4_11), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_4
(
	.z(d5_4), // OUT
	.a0(d4_4), // IN
	.a1(d4_12), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_5
(
	.z(d5_5), // OUT
	.a0(d4_5), // IN
	.a1(d4_13), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_6
(
	.z(d5_6), // OUT
	.a0(d4_6), // IN
	.a1(d4_14), // IN
	.s(pa_3)  // IN
);
mx2 d5_from_0_to_7_inst_7
(
	.z(d5_7), // OUT
	.a0(d4_7), // IN
	.a1(d4_15), // IN
	.s(pa_3)  // IN
);

// OBDATA.NET (101) - d6[0-3] : mx2
mx2 d6_from_0_to_3_inst_0
(
	.z(d6_0), // OUT
	.a0(d5_0), // IN
	.a1(d5_4), // IN
	.s(pa_2)  // IN
);
mx2 d6_from_0_to_3_inst_1
(
	.z(d6_1), // OUT
	.a0(d5_1), // IN
	.a1(d5_5), // IN
	.s(pa_2)  // IN
);
mx2 d6_from_0_to_3_inst_2
(
	.z(d6_2), // OUT
	.a0(d5_2), // IN
	.a1(d5_6), // IN
	.s(pa_2)  // IN
);
mx2 d6_from_0_to_3_inst_3
(
	.z(d6_3), // OUT
	.a0(d5_3), // IN
	.a1(d5_7), // IN
	.s(pa_2)  // IN
);

// OBDATA.NET (102) - d7[0-1] : mx2
mx2 d7_from_0_to_1_inst_0
(
	.z(d7_0), // OUT
	.a0(d6_0), // IN
	.a1(d6_2), // IN
	.s(pa_1)  // IN
);
mx2 d7_from_0_to_1_inst_1
(
	.z(d7_1), // OUT
	.a0(d6_1), // IN
	.a1(d6_3), // IN
	.s(pa_1)  // IN
);

// OBDATA.NET (106) - pra00 : nd2
assign pra00 = ~(d7_0 & mode1);

// OBDATA.NET (107) - pra01 : nd2
assign pra01 = ~(d6_0 & mode2);

// OBDATA.NET (108) - pra02 : nd2
assign pra02 = ~(d5_0 & mode4);

// OBDATA.NET (109) - pra03 : nd2
assign pra03 = ~(d4_0 & mode8);

// OBDATA.NET (110) - pra[0] : nd4
assign pra_0 = ~(pra00 & pra01 & pra02 & pra03);

// OBDATA.NET (112) - pra10 : nd2
assign pra10 = ~(index_1 & mode1);

// OBDATA.NET (113) - pra11 : nd2
assign pra11 = ~(d6_1 & mode2);

// OBDATA.NET (114) - pra12 : nd2
assign pra12 = ~(d5_1 & mode4);

// OBDATA.NET (115) - pra13 : nd2
assign pra13 = ~(d4_1 & mode8);

// OBDATA.NET (116) - pra[1] : nd4
assign pra_1 = ~(pra10 & pra11 & pra12 & pra13);

// OBDATA.NET (118) - pra20 : nd2
assign pra20 = ~(index_2 & mode1);

// OBDATA.NET (119) - pra21 : nd2
assign pra21 = ~(index_2 & mode2);

// OBDATA.NET (120) - pra22 : nd2
assign pra22 = ~(d5_2 & mode4);

// OBDATA.NET (121) - pra23 : nd2
assign pra23 = ~(d4_2 & mode8);

// OBDATA.NET (122) - pra[2] : nd4
assign pra_2 = ~(pra20 & pra21 & pra22 & pra23);

// OBDATA.NET (124) - pra30 : nd2
assign pra30 = ~(index_3 & mode1);

// OBDATA.NET (125) - pra31 : nd2
assign pra31 = ~(index_3 & mode2);

// OBDATA.NET (126) - pra32 : nd2
assign pra32 = ~(d5_3 & mode4);

// OBDATA.NET (127) - pra33 : nd2
assign pra33 = ~(d4_3 & mode8);

// OBDATA.NET (128) - pra[3] : nd4
assign pra_3 = ~(pra30 & pra31 & pra32 & pra33);

// OBDATA.NET (130) - pra[4] : mx2
mx2 pra_index_4_inst
(
	.z(pra_4), // OUT
	.a0(index_4), // IN
	.a1(d4_4), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (131) - pra[5] : mx2
mx2 pra_index_5_inst
(
	.z(pra_5), // OUT
	.a0(index_5), // IN
	.a1(d4_5), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (132) - pra[6] : mx2
mx2 pra_index_6_inst
(
	.z(pra_6), // OUT
	.a0(index_6), // IN
	.a1(d4_6), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (133) - pra[7] : mx2
mx2 pra_index_7_inst
(
	.z(pra_7), // OUT
	.a0(index_7), // IN
	.a1(d4_7), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (135) - prb00 : nd2
assign prb00 = ~(d7_1 & mode1);

// OBDATA.NET (136) - prb01 : nd2
assign prb01 = ~(d6_2 & mode2);

// OBDATA.NET (137) - prb02 : nd2
assign prb02 = ~(d5_4 & mode4);

// OBDATA.NET (138) - prb03 : nd2
assign prb03 = ~(d4_8 & mode8);

// OBDATA.NET (139) - prb[0] : nd4
assign prb_0 = ~(prb00 & prb01 & prb02 & prb03);

// OBDATA.NET (141) - prb10 : nd2
assign prb10 = ~(index_1 & mode1);

// OBDATA.NET (142) - prb11 : nd2
assign prb11 = ~(d6_3 & mode2);

// OBDATA.NET (143) - prb12 : nd2
assign prb12 = ~(d5_5 & mode4);

// OBDATA.NET (144) - prb13 : nd2
assign prb13 = ~(d4_9 & mode8);

// OBDATA.NET (145) - prb[1] : nd4
assign prb_1 = ~(prb10 & prb11 & prb12 & prb13);

// OBDATA.NET (147) - prb20 : nd2
assign prb20 = ~(index_2 & mode1);

// OBDATA.NET (148) - prb21 : nd2
assign prb21 = ~(index_2 & mode2);

// OBDATA.NET (149) - prb22 : nd2
assign prb22 = ~(d5_6 & mode4);

// OBDATA.NET (150) - prb23 : nd2
assign prb23 = ~(d4_10 & mode8);

// OBDATA.NET (151) - prb[2] : nd4
assign prb_2 = ~(prb20 & prb21 & prb22 & prb23);

// OBDATA.NET (153) - prb30 : nd2
assign prb30 = ~(index_3 & mode1);

// OBDATA.NET (154) - prb31 : nd2
assign prb31 = ~(index_3 & mode2);

// OBDATA.NET (155) - prb32 : nd2
assign prb32 = ~(d5_7 & mode4);

// OBDATA.NET (156) - prb33 : nd2
assign prb33 = ~(d4_11 & mode8);

// OBDATA.NET (157) - prb[3] : nd4
assign prb_3 = ~(prb30 & prb31 & prb32 & prb33);

// OBDATA.NET (159) - prb[4] : mx2
mx2 prb_index_4_inst
(
	.z(prb_4), // OUT
	.a0(index_4), // IN
	.a1(d4_12), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (160) - prb[5] : mx2
mx2 prb_index_5_inst
(
	.z(prb_5), // OUT
	.a0(index_5), // IN
	.a1(d4_13), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (161) - prb[6] : mx2
mx2 prb_index_6_inst
(
	.z(prb_6), // OUT
	.a0(index_6), // IN
	.a1(d4_14), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (162) - prb[7] : mx2
mx2 prb_index_7_inst
(
	.z(prb_7), // OUT
	.a0(index_7), // IN
	.a1(d4_15), // IN
	.s(mode8)  // IN
);

// OBDATA.NET (166) - paad[0-7] : mx2p
mx2 paad_from_0_to_7_inst_0
(
	.z(paad_0), // OUT
	.a0(pra_0), // IN
	.a1(at_1), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_1
(
	.z(paad_1), // OUT
	.a0(pra_1), // IN
	.a1(at_2), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_2
(
	.z(paad_2), // OUT
	.a0(pra_2), // IN
	.a1(at_3), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_3
(
	.z(paad_3), // OUT
	.a0(pra_3), // IN
	.a1(at_4), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_4
(
	.z(paad_4), // OUT
	.a0(pra_4), // IN
	.a1(at_5), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_5
(
	.z(paad_5), // OUT
	.a0(pra_5), // IN
	.a1(at_6), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_6
(
	.z(paad_6), // OUT
	.a0(pra_6), // IN
	.a1(at_7), // IN
	.s(clutt)  // IN
);
mx2 paad_from_0_to_7_inst_7
(
	.z(paad_7), // OUT
	.a0(pra_7), // IN
	.a1(at_8), // IN
	.s(clutt)  // IN
);

// OBDATA.NET (167) - pabd[0-7] : mx2p
mx2 pabd_from_0_to_7_inst_0
(
	.z(pabd_0), // OUT
	.a0(prb_0), // IN
	.a1(at_1), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_1
(
	.z(pabd_1), // OUT
	.a0(prb_1), // IN
	.a1(at_2), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_2
(
	.z(pabd_2), // OUT
	.a0(prb_2), // IN
	.a1(at_3), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_3
(
	.z(pabd_3), // OUT
	.a0(prb_3), // IN
	.a1(at_4), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_4
(
	.z(pabd_4), // OUT
	.a0(prb_4), // IN
	.a1(at_5), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_5
(
	.z(pabd_5), // OUT
	.a0(prb_5), // IN
	.a1(at_6), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_6
(
	.z(pabd_6), // OUT
	.a0(prb_6), // IN
	.a1(at_7), // IN
	.s(clutt)  // IN
);
mx2 pabd_from_0_to_7_inst_7
(
	.z(pabd_7), // OUT
	.a0(prb_7), // IN
	.a1(at_8), // IN
	.s(clutt)  // IN
);

// OBDATA.NET (171) - pral[0-7] : fd1q
fd1q pral_from_0_to_7_inst_0
(
	.q(paaq_0), // OUT
	.d(paad_0), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_1
(
	.q(paaq_1), // OUT
	.d(paad_1), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_2
(
	.q(paaq_2), // OUT
	.d(paad_2), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_3
(
	.q(paaq_3), // OUT
	.d(paad_3), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_4
(
	.q(paaq_4), // OUT
	.d(paad_4), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_5
(
	.q(paaq_5), // OUT
	.d(paad_5), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_6
(
	.q(paaq_6), // OUT
	.d(paad_6), // IN
	.cp(clk)  // IN
);
fd1q pral_from_0_to_7_inst_7
(
	.q(paaq_7), // OUT
	.d(paad_7), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (172) - prbl[0-7] : fd1q
fd1q prbl_from_0_to_7_inst_0
(
	.q(pabq_0), // OUT
	.d(pabd_0), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_1
(
	.q(pabq_1), // OUT
	.d(pabd_1), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_2
(
	.q(pabq_2), // OUT
	.d(pabd_2), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_3
(
	.q(pabq_3), // OUT
	.d(pabd_3), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_4
(
	.q(pabq_4), // OUT
	.d(pabd_4), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_5
(
	.q(pabq_5), // OUT
	.d(pabd_5), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_6
(
	.q(pabq_6), // OUT
	.d(pabd_6), // IN
	.cp(clk)  // IN
);
fd1q prbl_from_0_to_7_inst_7
(
	.q(pabq_7), // OUT
	.d(pabd_7), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (174) - paa[0-7] : hdly2b
assign paa_0 = paaq_0;
assign paa_1 = paaq_1;
assign paa_2 = paaq_2;
assign paa_3 = paaq_3;
assign paa_4 = paaq_4;
assign paa_5 = paaq_5;
assign paa_6 = paaq_6;
assign paa_7 = paaq_7;

// OBDATA.NET (175) - pab[0-7] : hdly2b
assign pab_0 = pabq_0;
assign pab_1 = pabq_1;
assign pab_2 = pabq_2;
assign pab_3 = pabq_3;
assign pab_4 = pabq_4;
assign pab_5 = pabq_5;
assign pab_6 = pabq_6;
assign pab_7 = pabq_7;

// OBDATA.NET (177) - aa : join
assign aa[0] = paa_0;
assign aa[1] = paa_1;
assign aa[2] = paa_2;
assign aa[3] = paa_3;
assign aa[4] = paa_4;
assign aa[5] = paa_5;
assign aa[6] = paa_6;
assign aa[7] = paa_7;

// OBDATA.NET (178) - ab : join
assign ab[0] = pab_0;
assign ab[1] = pab_1;
assign ab[2] = pab_2;
assign ab[3] = pab_3;
assign ab[4] = pab_4;
assign ab[5] = pab_5;
assign ab[6] = pab_6;
assign ab[7] = pab_7;

// OBDATA.NET (182) - ncst : ivh
assign ncst = ~clk;

// OBDATA.NET (183) - busy : iv
assign busy = ~smq0;

// OBDATA.NET (184) - busy1 : fd1q
fd1q busy1_inst
(
	.q(busy1), // OUT
	.d(busy), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (185) - cs : or2
assign cs = palen | busy1;

// OBDATA.NET (186) - csl : nd2x3
assign csl = ~(ncst & cs);

// OBDATA.NET (188) - clut1 : ab8016a
ab8016a clut1_inst
(
	.z({pda[0],pda[1],pda[2],pda[3],pda[4],pda[5],pda[6],pda[7],pda[8],pda[9],pda[10],pda[11],pda[12],pda[13],pda[14],pda[15]}), // BUS
	.cen(csl), // IN
	.rw(prw), // IN
	.a({aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[6],aa[7]})  // IN
);

// OBDATA.NET (189) - clut2 : ab8016a
ab8016a clut2_inst
(
	.z({pdb[0],pdb[1],pdb[2],pdb[3],pdb[4],pdb[5],pdb[6],pdb[7],pdb[8],pdb[9],pdb[10],pdb[11],pdb[12],pdb[13],pdb[14],pdb[15]}), // BUS
	.cen(csl), // IN
	.rw(prw), // IN
	.a({ab[0],ab[1],ab[2],ab[3],ab[4],ab[5],ab[6],ab[7]})  // IN
);

// OBDATA.NET (193) - pdi[0-15] : mx2
mx2 pdi_from_0_to_15_inst_0
(
	.z(pdi_0), // OUT
	.a0(pda[0]), // IN
	.a1(pdb[0]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_1
(
	.z(pdi_1), // OUT
	.a0(pda[1]), // IN
	.a1(pdb[1]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_2
(
	.z(pdi_2), // OUT
	.a0(pda[2]), // IN
	.a1(pdb[2]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_3
(
	.z(pdi_3), // OUT
	.a0(pda[3]), // IN
	.a1(pdb[3]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_4
(
	.z(pdi_4), // OUT
	.a0(pda[4]), // IN
	.a1(pdb[4]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_5
(
	.z(pdi_5), // OUT
	.a0(pda[5]), // IN
	.a1(pdb[5]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_6
(
	.z(pdi_6), // OUT
	.a0(pda[6]), // IN
	.a1(pdb[6]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_7
(
	.z(pdi_7), // OUT
	.a0(pda[7]), // IN
	.a1(pdb[7]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_8
(
	.z(pdi_8), // OUT
	.a0(pda[8]), // IN
	.a1(pdb[8]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_9
(
	.z(pdi_9), // OUT
	.a0(pda[9]), // IN
	.a1(pdb[9]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_10
(
	.z(pdi_10), // OUT
	.a0(pda[10]), // IN
	.a1(pdb[10]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_11
(
	.z(pdi_11), // OUT
	.a0(pda[11]), // IN
	.a1(pdb[11]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_12
(
	.z(pdi_12), // OUT
	.a0(pda[12]), // IN
	.a1(pdb[12]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_13
(
	.z(pdi_13), // OUT
	.a0(pda[13]), // IN
	.a1(pdb[13]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_14
(
	.z(pdi_14), // OUT
	.a0(pda[14]), // IN
	.a1(pdb[14]), // IN
	.s(aout_9)  // IN
);
mx2 pdi_from_0_to_15_inst_15
(
	.z(pdi_15), // OUT
	.a0(pda[15]), // IN
	.a1(pdb[15]), // IN
	.s(aout_9)  // IN
);

// OBDATA.NET (194) - pd[0-15] : fd1q
fd1q pd_from_0_to_15_inst_0
(
	.q(pd_0), // OUT
	.d(pdi_0), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_1
(
	.q(pd_1), // OUT
	.d(pdi_1), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_2
(
	.q(pd_2), // OUT
	.d(pdi_2), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_3
(
	.q(pd_3), // OUT
	.d(pdi_3), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_4
(
	.q(pd_4), // OUT
	.d(pdi_4), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_5
(
	.q(pd_5), // OUT
	.d(pdi_5), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_6
(
	.q(pd_6), // OUT
	.d(pdi_6), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_7
(
	.q(pd_7), // OUT
	.d(pdi_7), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_8
(
	.q(pd_8), // OUT
	.d(pdi_8), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_9
(
	.q(pd_9), // OUT
	.d(pdi_9), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_10
(
	.q(pd_10), // OUT
	.d(pdi_10), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_11
(
	.q(pd_11), // OUT
	.d(pdi_11), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_12
(
	.q(pd_12), // OUT
	.d(pdi_12), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_13
(
	.q(pd_13), // OUT
	.d(pdi_13), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_14
(
	.q(pd_14), // OUT
	.d(pdi_14), // IN
	.cp(clk)  // IN
);
fd1q pd_from_0_to_15_inst_15
(
	.q(pd_15), // OUT
	.d(pdi_15), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (195) - dr[0-15] : ts
assign dr_0 = (pden) ? pd_0 : 1'bz;
assign dr_1 = (pden) ? pd_1 : 1'bz;
assign dr_2 = (pden) ? pd_2 : 1'bz;
assign dr_3 = (pden) ? pd_3 : 1'bz;
assign dr_4 = (pden) ? pd_4 : 1'bz;
assign dr_5 = (pden) ? pd_5 : 1'bz;
assign dr_6 = (pden) ? pd_6 : 1'bz;
assign dr_7 = (pden) ? pd_7 : 1'bz;
assign dr_8 = (pden) ? pd_8 : 1'bz;
assign dr_9 = (pden) ? pd_9 : 1'bz;
assign dr_10 = (pden) ? pd_10 : 1'bz;
assign dr_11 = (pden) ? pd_11 : 1'bz;
assign dr_12 = (pden) ? pd_12 : 1'bz;
assign dr_13 = (pden) ? pd_13 : 1'bz;
assign dr_14 = (pden) ? pd_14 : 1'bz;
assign dr_15 = (pden) ? pd_15 : 1'bz;

// OBDATA.NET (196) - pdeni : nd2
assign pdeni = ~(palen & reads);

// OBDATA.NET (197) - pden : ivh
assign pden = ~pdeni;

// OBDATA.NET (201) - pwdeni : nr2
assign pwdeni = ~(busy1 | pden);

// OBDATA.NET (202) - pwden : nivu
assign pwden = pwdeni;

// OBDATA.NET (203) - di : join
assign di[0] = din_0;
assign di[1] = din_1;
assign di[2] = din_2;
assign di[3] = din_3;
assign di[4] = din_4;
assign di[5] = din_5;
assign di[6] = din_6;
assign di[7] = din_7;
assign di[8] = din_8;
assign di[9] = din_9;
assign di[10] = din_10;
assign di[11] = din_11;
assign di[12] = din_12;
assign di[13] = din_13;
assign di[14] = din_14;
assign di[15] = din_15;

// OBDATA.NET (204) - pwda : ts
assign pda[0] = (pwden) ? di[0] : 1'bz;
assign pda[1] = (pwden) ? di[1] : 1'bz;
assign pda[2] = (pwden) ? di[2] : 1'bz;
assign pda[3] = (pwden) ? di[3] : 1'bz;
assign pda[4] = (pwden) ? di[4] : 1'bz;
assign pda[5] = (pwden) ? di[5] : 1'bz;
assign pda[6] = (pwden) ? di[6] : 1'bz;
assign pda[7] = (pwden) ? di[7] : 1'bz;
assign pda[8] = (pwden) ? di[8] : 1'bz;
assign pda[9] = (pwden) ? di[9] : 1'bz;
assign pda[10] = (pwden) ? di[10] : 1'bz;
assign pda[11] = (pwden) ? di[11] : 1'bz;
assign pda[12] = (pwden) ? di[12] : 1'bz;
assign pda[13] = (pwden) ? di[13] : 1'bz;
assign pda[14] = (pwden) ? di[14] : 1'bz;
assign pda[15] = (pwden) ? di[15] : 1'bz;

// OBDATA.NET (205) - pwdb : ts
assign pdb[0] = (pwden) ? di[0] : 1'bz;
assign pdb[1] = (pwden) ? di[1] : 1'bz;
assign pdb[2] = (pwden) ? di[2] : 1'bz;
assign pdb[3] = (pwden) ? di[3] : 1'bz;
assign pdb[4] = (pwden) ? di[4] : 1'bz;
assign pdb[5] = (pwden) ? di[5] : 1'bz;
assign pdb[6] = (pwden) ? di[6] : 1'bz;
assign pdb[7] = (pwden) ? di[7] : 1'bz;
assign pdb[8] = (pwden) ? di[8] : 1'bz;
assign pdb[9] = (pwden) ? di[9] : 1'bz;
assign pdb[10] = (pwden) ? di[10] : 1'bz;
assign pdb[11] = (pwden) ? di[11] : 1'bz;
assign pdb[12] = (pwden) ? di[12] : 1'bz;
assign pdb[13] = (pwden) ? di[13] : 1'bz;
assign pdb[14] = (pwden) ? di[14] : 1'bz;
assign pdb[15] = (pwden) ? di[15] : 1'bz;

// OBDATA.NET (209) - iw : iv
assign writes = ~reads;

// OBDATA.NET (210) - prw : nd2
assign prw = ~(writes & palen);

// OBDATA.NET (214) - physicali : or2
assign physicali = mode16 | mode24;

// OBDATA.NET (215) - physical : nivu2
assign phys = physicali;

// OBDATA.NET (216) - hilob : nivu
assign hilob = hilo;

// OBDATA.NET (220) - d8[0-15] : mx4
mx4 d8_from_0_to_15_inst_0
(
	.z(d8_0), // OUT
	.a0(pda[0]), // IN
	.a1(d3_0), // IN
	.a2(pdb[0]), // IN
	.a3(d3_16), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_1
(
	.z(d8_1), // OUT
	.a0(pda[1]), // IN
	.a1(d3_1), // IN
	.a2(pdb[1]), // IN
	.a3(d3_17), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_2
(
	.z(d8_2), // OUT
	.a0(pda[2]), // IN
	.a1(d3_2), // IN
	.a2(pdb[2]), // IN
	.a3(d3_18), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_3
(
	.z(d8_3), // OUT
	.a0(pda[3]), // IN
	.a1(d3_3), // IN
	.a2(pdb[3]), // IN
	.a3(d3_19), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_4
(
	.z(d8_4), // OUT
	.a0(pda[4]), // IN
	.a1(d3_4), // IN
	.a2(pdb[4]), // IN
	.a3(d3_20), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_5
(
	.z(d8_5), // OUT
	.a0(pda[5]), // IN
	.a1(d3_5), // IN
	.a2(pdb[5]), // IN
	.a3(d3_21), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_6
(
	.z(d8_6), // OUT
	.a0(pda[6]), // IN
	.a1(d3_6), // IN
	.a2(pdb[6]), // IN
	.a3(d3_22), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_7
(
	.z(d8_7), // OUT
	.a0(pda[7]), // IN
	.a1(d3_7), // IN
	.a2(pdb[7]), // IN
	.a3(d3_23), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_8
(
	.z(d8_8), // OUT
	.a0(pda[8]), // IN
	.a1(d3_8), // IN
	.a2(pdb[8]), // IN
	.a3(d3_24), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_9
(
	.z(d8_9), // OUT
	.a0(pda[9]), // IN
	.a1(d3_9), // IN
	.a2(pdb[9]), // IN
	.a3(d3_25), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_10
(
	.z(d8_10), // OUT
	.a0(pda[10]), // IN
	.a1(d3_10), // IN
	.a2(pdb[10]), // IN
	.a3(d3_26), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_11
(
	.z(d8_11), // OUT
	.a0(pda[11]), // IN
	.a1(d3_11), // IN
	.a2(pdb[11]), // IN
	.a3(d3_27), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_12
(
	.z(d8_12), // OUT
	.a0(pda[12]), // IN
	.a1(d3_12), // IN
	.a2(pdb[12]), // IN
	.a3(d3_28), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_13
(
	.z(d8_13), // OUT
	.a0(pda[13]), // IN
	.a1(d3_13), // IN
	.a2(pdb[13]), // IN
	.a3(d3_29), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_14
(
	.z(d8_14), // OUT
	.a0(pda[14]), // IN
	.a1(d3_14), // IN
	.a2(pdb[14]), // IN
	.a3(d3_30), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_0_to_15_inst_15
(
	.z(d8_15), // OUT
	.a0(pda[15]), // IN
	.a1(d3_15), // IN
	.a2(pdb[15]), // IN
	.a3(d3_31), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);

// OBDATA.NET (221) - d8[16-31] : mx4
mx4 d8_from_16_to_31_inst_0
(
	.z(d8_16), // OUT
	.a0(pdb[0]), // IN
	.a1(d3_16), // IN
	.a2(pda[0]), // IN
	.a3(d3_0), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_1
(
	.z(d8_17), // OUT
	.a0(pdb[1]), // IN
	.a1(d3_17), // IN
	.a2(pda[1]), // IN
	.a3(d3_1), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_2
(
	.z(d8_18), // OUT
	.a0(pdb[2]), // IN
	.a1(d3_18), // IN
	.a2(pda[2]), // IN
	.a3(d3_2), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_3
(
	.z(d8_19), // OUT
	.a0(pdb[3]), // IN
	.a1(d3_19), // IN
	.a2(pda[3]), // IN
	.a3(d3_3), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_4
(
	.z(d8_20), // OUT
	.a0(pdb[4]), // IN
	.a1(d3_20), // IN
	.a2(pda[4]), // IN
	.a3(d3_4), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_5
(
	.z(d8_21), // OUT
	.a0(pdb[5]), // IN
	.a1(d3_21), // IN
	.a2(pda[5]), // IN
	.a3(d3_5), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_6
(
	.z(d8_22), // OUT
	.a0(pdb[6]), // IN
	.a1(d3_22), // IN
	.a2(pda[6]), // IN
	.a3(d3_6), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_7
(
	.z(d8_23), // OUT
	.a0(pdb[7]), // IN
	.a1(d3_23), // IN
	.a2(pda[7]), // IN
	.a3(d3_7), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_8
(
	.z(d8_24), // OUT
	.a0(pdb[8]), // IN
	.a1(d3_24), // IN
	.a2(pda[8]), // IN
	.a3(d3_8), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_9
(
	.z(d8_25), // OUT
	.a0(pdb[9]), // IN
	.a1(d3_25), // IN
	.a2(pda[9]), // IN
	.a3(d3_9), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_10
(
	.z(d8_26), // OUT
	.a0(pdb[10]), // IN
	.a1(d3_26), // IN
	.a2(pda[10]), // IN
	.a3(d3_10), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_11
(
	.z(d8_27), // OUT
	.a0(pdb[11]), // IN
	.a1(d3_27), // IN
	.a2(pda[11]), // IN
	.a3(d3_11), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_12
(
	.z(d8_28), // OUT
	.a0(pdb[12]), // IN
	.a1(d3_28), // IN
	.a2(pda[12]), // IN
	.a3(d3_12), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_13
(
	.z(d8_29), // OUT
	.a0(pdb[13]), // IN
	.a1(d3_29), // IN
	.a2(pda[13]), // IN
	.a3(d3_13), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_14
(
	.z(d8_30), // OUT
	.a0(pdb[14]), // IN
	.a1(d3_30), // IN
	.a2(pda[14]), // IN
	.a3(d3_14), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);
mx4 d8_from_16_to_31_inst_15
(
	.z(d8_31), // OUT
	.a0(pdb[15]), // IN
	.a1(d3_31), // IN
	.a2(pda[15]), // IN
	.a3(d3_15), // IN
	.s0(phys), // IN
	.s1(hilob)  // IN
);

// OBDATA.NET (225) - d9[0-31] : fd1q
fd1q d9_from_0_to_31_inst_0
(
	.q(d9_0), // OUT
	.d(d8_0), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_1
(
	.q(d9_1), // OUT
	.d(d8_1), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_2
(
	.q(d9_2), // OUT
	.d(d8_2), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_3
(
	.q(d9_3), // OUT
	.d(d8_3), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_4
(
	.q(d9_4), // OUT
	.d(d8_4), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_5
(
	.q(d9_5), // OUT
	.d(d8_5), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_6
(
	.q(d9_6), // OUT
	.d(d8_6), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_7
(
	.q(d9_7), // OUT
	.d(d8_7), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_8
(
	.q(d9_8), // OUT
	.d(d8_8), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_9
(
	.q(d9_9), // OUT
	.d(d8_9), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_10
(
	.q(d9_10), // OUT
	.d(d8_10), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_11
(
	.q(d9_11), // OUT
	.d(d8_11), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_12
(
	.q(d9_12), // OUT
	.d(d8_12), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_13
(
	.q(d9_13), // OUT
	.d(d8_13), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_14
(
	.q(d9_14), // OUT
	.d(d8_14), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_15
(
	.q(d9_15), // OUT
	.d(d8_15), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_16
(
	.q(d9_16), // OUT
	.d(d8_16), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_17
(
	.q(d9_17), // OUT
	.d(d8_17), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_18
(
	.q(d9_18), // OUT
	.d(d8_18), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_19
(
	.q(d9_19), // OUT
	.d(d8_19), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_20
(
	.q(d9_20), // OUT
	.d(d8_20), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_21
(
	.q(d9_21), // OUT
	.d(d8_21), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_22
(
	.q(d9_22), // OUT
	.d(d8_22), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_23
(
	.q(d9_23), // OUT
	.d(d8_23), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_24
(
	.q(d9_24), // OUT
	.d(d8_24), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_25
(
	.q(d9_25), // OUT
	.d(d8_25), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_26
(
	.q(d9_26), // OUT
	.d(d8_26), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_27
(
	.q(d9_27), // OUT
	.d(d8_27), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_28
(
	.q(d9_28), // OUT
	.d(d8_28), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_29
(
	.q(d9_29), // OUT
	.d(d8_29), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_30
(
	.q(d9_30), // OUT
	.d(d8_30), // IN
	.cp(clk)  // IN
);
fd1q d9_from_0_to_31_inst_31
(
	.q(d9_31), // OUT
	.d(d8_31), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (226) - d9l : join
assign d9l[0] = d9_0;
assign d9l[1] = d9_1;
assign d9l[2] = d9_2;
assign d9l[3] = d9_3;
assign d9l[4] = d9_4;
assign d9l[5] = d9_5;
assign d9l[6] = d9_6;
assign d9l[7] = d9_7;
assign d9l[8] = d9_8;
assign d9l[9] = d9_9;
assign d9l[10] = d9_10;
assign d9l[11] = d9_11;
assign d9l[12] = d9_12;
assign d9l[13] = d9_13;
assign d9l[14] = d9_14;
assign d9l[15] = d9_15;

// OBDATA.NET (227) - d9lu : dummy

// OBDATA.NET (228) - d9h : join
assign d9h[0] = d9_16;
assign d9h[1] = d9_17;
assign d9h[2] = d9_18;
assign d9h[3] = d9_19;
assign d9h[4] = d9_20;
assign d9h[5] = d9_21;
assign d9h[6] = d9_22;
assign d9h[7] = d9_23;
assign d9h[8] = d9_24;
assign d9h[9] = d9_25;
assign d9h[10] = d9_26;
assign d9h[11] = d9_27;
assign d9h[12] = d9_28;
assign d9h[13] = d9_29;
assign d9h[14] = d9_30;
assign d9h[15] = d9_31;

// OBDATA.NET (229) - d9hu : dummy

// OBDATA.NET (267) - nextbits1 : fd1q
fd1q nextbits1_inst
(
	.q(nextbits1), // OUT
	.d(nextbits), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (268) - nextbits2 : fd1q
fd1q nextbits2_inst
(
	.q(nextbits2), // OUT
	.d(nextbits1), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (269) - delpixi : mx2
mx2 delpixi_inst
(
	.z(delpixi), // OUT
	.a0(nextbits2), // IN
	.a1(nextbits1), // IN
	.s(phys)  // IN
);

// OBDATA.NET (270) - delpix : nivh
assign delpix = delpixi;

// OBDATA.NET (271) - da[0-15] : slatch
slatch da_from_0_to_15_inst_0
(
	.q(da_0), // IO
	.d(d9_16), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_1
(
	.q(da_1), // IO
	.d(d9_17), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_2
(
	.q(da_2), // IO
	.d(d9_18), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_3
(
	.q(da_3), // IO
	.d(d9_19), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_4
(
	.q(da_4), // IO
	.d(d9_20), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_5
(
	.q(da_5), // IO
	.d(d9_21), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_6
(
	.q(da_6), // IO
	.d(d9_22), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_7
(
	.q(da_7), // IO
	.d(d9_23), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_8
(
	.q(da_8), // IO
	.d(d9_24), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_9
(
	.q(da_9), // IO
	.d(d9_25), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_10
(
	.q(da_10), // IO
	.d(d9_26), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_11
(
	.q(da_11), // IO
	.d(d9_27), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_12
(
	.q(da_12), // IO
	.d(d9_28), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_13
(
	.q(da_13), // IO
	.d(d9_29), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_14
(
	.q(da_14), // IO
	.d(d9_30), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);
slatch da_from_0_to_15_inst_15
(
	.q(da_15), // IO
	.d(d9_31), // IN
	.clk(clk), // IN
	.en(delpix)  // IN
);

// OBDATA.NET (273) - del1 : eo
assign del1 = lbwa_0 ^ reflected;

// OBDATA.NET (274) - delayed : an2h
assign delayed = del1 & notscaled;

// OBDATA.NET (276) - db[0-15] : mx2
mx2 db_from_0_to_15_inst_0
(
	.z(db_0), // OUT
	.a0(d9_16), // IN
	.a1(da_0), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_1
(
	.z(db_1), // OUT
	.a0(d9_17), // IN
	.a1(da_1), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_2
(
	.z(db_2), // OUT
	.a0(d9_18), // IN
	.a1(da_2), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_3
(
	.z(db_3), // OUT
	.a0(d9_19), // IN
	.a1(da_3), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_4
(
	.z(db_4), // OUT
	.a0(d9_20), // IN
	.a1(da_4), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_5
(
	.z(db_5), // OUT
	.a0(d9_21), // IN
	.a1(da_5), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_6
(
	.z(db_6), // OUT
	.a0(d9_22), // IN
	.a1(da_6), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_7
(
	.z(db_7), // OUT
	.a0(d9_23), // IN
	.a1(da_7), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_8
(
	.z(db_8), // OUT
	.a0(d9_24), // IN
	.a1(da_8), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_9
(
	.z(db_9), // OUT
	.a0(d9_25), // IN
	.a1(da_9), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_10
(
	.z(db_10), // OUT
	.a0(d9_26), // IN
	.a1(da_10), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_11
(
	.z(db_11), // OUT
	.a0(d9_27), // IN
	.a1(da_11), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_12
(
	.z(db_12), // OUT
	.a0(d9_28), // IN
	.a1(da_12), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_13
(
	.z(db_13), // OUT
	.a0(d9_29), // IN
	.a1(da_13), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_14
(
	.z(db_14), // OUT
	.a0(d9_30), // IN
	.a1(da_14), // IN
	.s(delayed)  // IN
);
mx2 db_from_0_to_15_inst_15
(
	.z(db_15), // OUT
	.a0(d9_31), // IN
	.a1(da_15), // IN
	.s(delayed)  // IN
);

// OBDATA.NET (278) - lbwd[0-15] : mx2
mx2 lbwd_from_0_to_15_inst_0
(
	.z(lbwd_0_obuf), // OUT
	.a0(d9_0), // IN
	.a1(db_0), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_1
(
	.z(lbwd_1_obuf), // OUT
	.a0(d9_1), // IN
	.a1(db_1), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_2
(
	.z(lbwd_2_obuf), // OUT
	.a0(d9_2), // IN
	.a1(db_2), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_3
(
	.z(lbwd_3_obuf), // OUT
	.a0(d9_3), // IN
	.a1(db_3), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_4
(
	.z(lbwd_4_obuf), // OUT
	.a0(d9_4), // IN
	.a1(db_4), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_5
(
	.z(lbwd_5_obuf), // OUT
	.a0(d9_5), // IN
	.a1(db_5), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_6
(
	.z(lbwd_6_obuf), // OUT
	.a0(d9_6), // IN
	.a1(db_6), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_7
(
	.z(lbwd_7_obuf), // OUT
	.a0(d9_7), // IN
	.a1(db_7), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_8
(
	.z(lbwd_8_obuf), // OUT
	.a0(d9_8), // IN
	.a1(db_8), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_9
(
	.z(lbwd_9_obuf), // OUT
	.a0(d9_9), // IN
	.a1(db_9), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_10
(
	.z(lbwd_10_obuf), // OUT
	.a0(d9_10), // IN
	.a1(db_10), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_11
(
	.z(lbwd_11_obuf), // OUT
	.a0(d9_11), // IN
	.a1(db_11), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_12
(
	.z(lbwd_12_obuf), // OUT
	.a0(d9_12), // IN
	.a1(db_12), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_13
(
	.z(lbwd_13_obuf), // OUT
	.a0(d9_13), // IN
	.a1(db_13), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_14
(
	.z(lbwd_14_obuf), // OUT
	.a0(d9_14), // IN
	.a1(db_14), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_0_to_15_inst_15
(
	.z(lbwd_15_obuf), // OUT
	.a0(d9_15), // IN
	.a1(db_15), // IN
	.s(pswap)  // IN
);

// OBDATA.NET (279) - lbwd[16-31] : mx2
mx2 lbwd_from_16_to_31_inst_0
(
	.z(lbwd_16_obuf), // OUT
	.a0(db_0), // IN
	.a1(d9_0), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_1
(
	.z(lbwd_17_obuf), // OUT
	.a0(db_1), // IN
	.a1(d9_1), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_2
(
	.z(lbwd_18_obuf), // OUT
	.a0(db_2), // IN
	.a1(d9_2), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_3
(
	.z(lbwd_19_obuf), // OUT
	.a0(db_3), // IN
	.a1(d9_3), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_4
(
	.z(lbwd_20_obuf), // OUT
	.a0(db_4), // IN
	.a1(d9_4), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_5
(
	.z(lbwd_21_obuf), // OUT
	.a0(db_5), // IN
	.a1(d9_5), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_6
(
	.z(lbwd_22_obuf), // OUT
	.a0(db_6), // IN
	.a1(d9_6), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_7
(
	.z(lbwd_23_obuf), // OUT
	.a0(db_7), // IN
	.a1(d9_7), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_8
(
	.z(lbwd_24_obuf), // OUT
	.a0(db_8), // IN
	.a1(d9_8), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_9
(
	.z(lbwd_25_obuf), // OUT
	.a0(db_9), // IN
	.a1(d9_9), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_10
(
	.z(lbwd_26_obuf), // OUT
	.a0(db_10), // IN
	.a1(d9_10), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_11
(
	.z(lbwd_27_obuf), // OUT
	.a0(db_11), // IN
	.a1(d9_11), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_12
(
	.z(lbwd_28_obuf), // OUT
	.a0(db_12), // IN
	.a1(d9_12), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_13
(
	.z(lbwd_29_obuf), // OUT
	.a0(db_13), // IN
	.a1(d9_13), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_14
(
	.z(lbwd_30_obuf), // OUT
	.a0(db_14), // IN
	.a1(d9_14), // IN
	.s(pswap)  // IN
);
mx2 lbwd_from_16_to_31_inst_15
(
	.z(lbwd_31_obuf), // OUT
	.a0(db_15), // IN
	.a1(d9_15), // IN
	.s(pswap)  // IN
);

// OBDATA.NET (293) - pa[0] : upcnts
upcnts pa_index_0_inst
(
	.q(pa_0), // IO
	.co(co_0), // IO
	.d(ip_0), // IN
	.clk(clk), // IN
	.ci(ci_0), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (294) - pad[1] : upcnts
upcnts pad_index_1_inst
(
	.q(pad_1), // IO
	.co(co_1), // IO
	.d(ip_1), // IN
	.clk(clk), // IN
	.ci(ci_1), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (295) - pad[2] : upcnts
upcnts pad_index_2_inst
(
	.q(pad_2), // IO
	.co(co_2), // IO
	.d(ip_2), // IN
	.clk(clk), // IN
	.ci(ci_2), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (296) - pad[3] : upcnts
upcnts pad_index_3_inst
(
	.q(pad_3), // IO
	.co(co_3), // IO
	.d(ip_3), // IN
	.clk(clk), // IN
	.ci(ci_3), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (297) - pad[4] : upcnts
upcnts pad_index_4_inst
(
	.q(pad_4), // IO
	.co(co_4), // IO
	.d(ip_4), // IN
	.clk(clk), // IN
	.ci(ci_4), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (298) - pad[5] : upcnts
upcnts pad_index_5_inst
(
	.q(pad_5), // IO
	.co(co_5), // IO
	.d(ip_5), // IN
	.clk(clk), // IN
	.ci(ci_5), // IN
	.ld(nextphrase), // IN
	.res(reset)  // IN
);

// OBDATA.NET (299) - gnd : tie0
assign gnd = 1'b0;

// OBDATA.NET (300) - pai[1-5] : en
assign pai_1 = ~(pad_1 ^ hilo);
assign pai_2 = ~(pad_2 ^ hilo);
assign pai_3 = ~(pad_3 ^ hilo);
assign pai_4 = ~(pad_4 ^ hilo);
assign pai_5 = ~(pad_5 ^ hilo);

// OBDATA.NET (301) - pa[1-3] : ivm
assign pa_1 = ~pai_1;
assign pa_2 = ~pai_2;
assign pa_3 = ~pai_3;

// OBDATA.NET (302) - pa[4] : ivh
assign pa_4 = ~pai_4;

// OBDATA.NET (303) - pa[5] : ivu
assign pa_5 = ~pai_5;

// OBDATA.NET (305) - reset : iv
assign reset = ~resetl;

// OBDATA.NET (309) - ipd[0-5] : an2
assign ipd_0 = d_49 & obld_1;
assign ipd_1 = d_50 & obld_1;
assign ipd_2 = d_51 & obld_1;
assign ipd_3 = d_52 & obld_1;
assign ipd_4 = d_53 & obld_1;
assign ipd_5 = d_54 & obld_1;

// OBDATA.NET (310) - ip[0-5] : slatch
slatch ip_from_0_to_5_inst_0
(
	.q(ip_0), // IO
	.d(ipd_0), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);
slatch ip_from_0_to_5_inst_1
(
	.q(ip_1), // IO
	.d(ipd_1), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);
slatch ip_from_0_to_5_inst_2
(
	.q(ip_2), // IO
	.d(ipd_2), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);
slatch ip_from_0_to_5_inst_3
(
	.q(ip_3), // IO
	.d(ipd_3), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);
slatch ip_from_0_to_5_inst_4
(
	.q(ip_4), // IO
	.d(ipd_4), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);
slatch ip_from_0_to_5_inst_5
(
	.q(ip_5), // IO
	.d(ipd_5), // IN
	.clk(clk), // IN
	.en(nip)  // IN
);

// OBDATA.NET (311) - nip : or2
assign nip = obld_1 | nextphrase;

// OBDATA.NET (313) - ci[0] : an2
assign ci_0 = scaled & nextbits;

// OBDATA.NET (315) - notscaled : ivm
assign notscaled = ~scaled;

// OBDATA.NET (316) - p2done : or2x3
assign p2done = pa_0 | notscaled;

// OBDATA.NET (318) - ci[1] : an3
assign ci_1 = mode1 & nextbits & p2done;

// OBDATA.NET (319) - cil[2] : nd3
assign cil_2 = ~(mode2 & nextbits & p2done);

// OBDATA.NET (320) - cil[3] : nd3
assign cil_3 = ~(mode4 & nextbits & p2done);

// OBDATA.NET (321) - cil[4] : nd3
assign cil_4 = ~(mode8 & nextbits & p2done);

// OBDATA.NET (322) - cil[5] : nd3
assign cil_5 = ~(modew & nextbits & p2done);

// OBDATA.NET (324) - ci[2-5] : nd2
assign ci_2 = ~(cil_2 & col_1);
assign ci_3 = ~(cil_3 & col_2);
assign ci_4 = ~(cil_4 & col_3);
assign ci_5 = ~(cil_5 & col_4);

// OBDATA.NET (326) - col[1-4] : iv
assign col_1 = ~co_1;
assign col_2 = ~co_2;
assign col_3 = ~co_3;
assign col_4 = ~co_4;

// OBDATA.NET (327) - modew : or2
assign modew = mode16 | mode24;

// OBDATA.NET (331) - vcc : tie1
assign vcc = 1'b1;

// OBDATA.NET (332) - phd[1] : nd8
assign phd_1 = ~(p2done & pad_1 & pad_2 & pad_3 & pad_4 & pad_5 & mode1 & vcc);

// OBDATA.NET (333) - phd[2] : nd6
assign phd_2 = ~(p2done & pad_2 & pad_3 & pad_4 & pad_5 & mode2);

// OBDATA.NET (334) - phd[3] : nd6
assign phd_3 = ~(p2done & pad_3 & pad_4 & pad_5 & mode4 & vcc);

// OBDATA.NET (335) - phd[4] : nd4
assign phd_4 = ~(p2done & pad_4 & pad_5 & mode8);

// OBDATA.NET (336) - phd[5] : nd3
assign phd_5 = ~(p2done & pad_5 & modew);

// OBDATA.NET (337) - phdone : nd6
assign phdone = ~(phd_1 & phd_2 & phd_3 & phd_4 & phd_5 & vcc);

// OBDATA.NET (338) - notphdone : iv
assign notphdone = ~phdone;

// OBDATA.NET (348) - nextx1 : fd1q
fd1q nextx1_inst
(
	.q(nextx1), // OUT
	.d(nextx), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (349) - nextxx : mx2
mx2 nextxx_inst
(
	.z(nextxx), // OUT
	.a0(nextx1), // IN
	.a1(nextx), // IN
	.s(phys)  // IN
);

// OBDATA.NET (351) - lbwad[0] : udcnt
udcnt lbwad_index_0_inst
(
	.q(lbwad_0), // IO
	.co(lco_0), // IO
	.d(d_0), // IN
	.clk(clk), // IN
	.ci(lci_0), // IN
	.ld(xld), // IN
	.up(up)  // IN
);

// OBDATA.NET (352) - lbwad[1] : udcnt
udcnt lbwad_index_1_inst
(
	.q(lbwad_1), // IO
	.co(lco_1), // IO
	.d(d_1), // IN
	.clk(clk), // IN
	.ci(lci_1), // IN
	.ld(xld), // IN
	.up(up)  // IN
);

// OBDATA.NET (353) - lbwad[2-11] : udcnt
udcnt lbwad_from_2_to_11_inst_0
(
	.q(lbwad_2), // IO
	.co(lco_2), // IO
	.d(d_2), // IN
	.clk(clk), // IN
	.ci(lco_1), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_1
(
	.q(lbwad_3), // IO
	.co(lco_3), // IO
	.d(d_3), // IN
	.clk(clk), // IN
	.ci(lco_2), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_2
(
	.q(lbwad_4), // IO
	.co(lco_4), // IO
	.d(d_4), // IN
	.clk(clk), // IN
	.ci(lco_3), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_3
(
	.q(lbwad_5), // IO
	.co(lco_5), // IO
	.d(d_5), // IN
	.clk(clk), // IN
	.ci(lco_4), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_4
(
	.q(lbwad_6), // IO
	.co(lco_6), // IO
	.d(d_6), // IN
	.clk(clk), // IN
	.ci(lco_5), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_5
(
	.q(lbwad_7), // IO
	.co(lco_7), // IO
	.d(d_7), // IN
	.clk(clk), // IN
	.ci(lco_6), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_6
(
	.q(lbwad_8), // IO
	.co(lco_8), // IO
	.d(d_8), // IN
	.clk(clk), // IN
	.ci(lco_7), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_7
(
	.q(lbwad_9), // IO
	.co(lco_9), // IO
	.d(d_9), // IN
	.clk(clk), // IN
	.ci(lco_8), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_8
(
	.q(lbwad_10), // IO
	.co(lco_10), // IO
	.d(d_10), // IN
	.clk(clk), // IN
	.ci(lco_9), // IN
	.ld(xld), // IN
	.up(up)  // IN
);
udcnt lbwad_from_2_to_11_inst_9
(
	.q(lbwad_11), // IO
	.co(lco_11), // IO
	.d(d_11), // IN
	.clk(clk), // IN
	.ci(lco_10), // IN
	.ld(xld), // IN
	.up(up)  // IN
);

// OBDATA.NET (355) - lbwadd[0-9] : mx2
mx2 lbwadd_from_0_to_9_inst_0
(
	.z(lbwadd_0), // OUT
	.a0(lbwad_0), // IN
	.a1(at_1), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_1
(
	.z(lbwadd_1), // OUT
	.a0(lbwad_1), // IN
	.a1(at_2), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_2
(
	.z(lbwadd_2), // OUT
	.a0(lbwad_2), // IN
	.a1(at_3), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_3
(
	.z(lbwadd_3), // OUT
	.a0(lbwad_3), // IN
	.a1(at_4), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_4
(
	.z(lbwadd_4), // OUT
	.a0(lbwad_4), // IN
	.a1(at_5), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_5
(
	.z(lbwadd_5), // OUT
	.a0(lbwad_5), // IN
	.a1(at_6), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_6
(
	.z(lbwadd_6), // OUT
	.a0(lbwad_6), // IN
	.a1(at_7), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_7
(
	.z(lbwadd_7), // OUT
	.a0(lbwad_7), // IN
	.a1(at_8), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_8
(
	.z(lbwadd_8), // OUT
	.a0(lbwad_8), // IN
	.a1(at_9), // IN
	.s(lbt)  // IN
);
mx2 lbwadd_from_0_to_9_inst_9
(
	.z(lbwadd_9), // OUT
	.a0(lbwad_9), // IN
	.a1(at_10), // IN
	.s(lbt)  // IN
);

// OBDATA.NET (356) - lbwa[0-9] : fd1q
fd1q lbwa_from_0_to_9_inst_0
(
	.q(lbwa_0), // OUT
	.d(lbwadd_0), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_1
(
	.q(lbwa_1_obuf), // OUT
	.d(lbwadd_1), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_2
(
	.q(lbwa_2_obuf), // OUT
	.d(lbwadd_2), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_3
(
	.q(lbwa_3_obuf), // OUT
	.d(lbwadd_3), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_4
(
	.q(lbwa_4_obuf), // OUT
	.d(lbwadd_4), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_5
(
	.q(lbwa_5_obuf), // OUT
	.d(lbwadd_5), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_6
(
	.q(lbwa_6_obuf), // OUT
	.d(lbwadd_6), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_7
(
	.q(lbwa_7_obuf), // OUT
	.d(lbwadd_7), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_8
(
	.q(lbwa_8_obuf), // OUT
	.d(lbwadd_8), // IN
	.cp(clk)  // IN
);
fd1q lbwa_from_0_to_9_inst_9
(
	.q(lbwa_9_obuf), // OUT
	.d(lbwadd_9), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (358) - up : ivh
assign up = ~reflected;

// OBDATA.NET (359) - lci[0] : an2
assign lci_0 = nextxx & scaled;

// OBDATA.NET (361) - lcil[1] : nd2
assign lcil_1 = ~(nextxx & notscaled);

// OBDATA.NET (362) - lci[1] : nd2
assign lci_1 = ~(lcil_1 & lcol_0);

// OBDATA.NET (363) - lcol[0] : iv
assign lcol_0 = ~lco_0;

// OBDATA.NET (407) - nota[4] : iv
assign nota_4 = ~lbwad_4;

// OBDATA.NET (408) - nota[5] : iv
assign nota_5 = ~lbwad_5;

// OBDATA.NET (409) - nota[8] : iv
assign nota_8 = ~lbwad_8;

// OBDATA.NET (410) - nota[10] : iv
assign nota_10 = ~lbwad_10;

// OBDATA.NET (411) - nota[11] : iv
assign nota_11 = ~lbwad_11;

// OBDATA.NET (413) - c[5] : nd2
assign c_5 = ~(nota_4 & nota_5);

// OBDATA.NET (414) - c[7] : nd3
assign c_7 = ~(c_5 & lbwad_6 & lbwad_7);

// OBDATA.NET (415) - c[8] : nd2
assign c_8 = ~(c_7 & nota_8);

// OBDATA.NET (416) - c[9] : nd2
assign c_9 = ~(c_8 & lbwad_9);

// OBDATA.NET (417) - c[11] : nd3
assign c_11 = ~(c_9 & nota_10 & nota_11);

// OBDATA.NET (419) - left : niv
assign left = lbwad_11;

// OBDATA.NET (420) - right : an2
assign right = c_11 & nota_11;

// OBDATA.NET (422) - onscreen : nr2
assign onscreen = ~(left | right);

// OBDATA.NET (423) - offscreeni : mx2
mx2 offscreeni_inst
(
	.z(offscreeni), // OUT
	.a0(right), // IN
	.a1(left), // IN
	.s(reflected)  // IN
);

// OBDATA.NET (424) - offscreen : nivm
assign offscreen_obuf = offscreeni;

// OBDATA.NET (425) - notoffscreen : ivm
assign notoffscreen = ~offscreen_obuf;

// OBDATA.NET (434) - zero1a : iv
assign zero1a = ~d7_0;

// OBDATA.NET (435) - zero2a : nr2
assign zero2a = ~(d6_0 | d6_1);

// OBDATA.NET (436) - zero4a : nr4
assign zero4a = ~(d5_0 | d5_1 | d5_2 | d5_3);

// OBDATA.NET (437) - zero8a : nr8
assign zero8a = ~(d4_0 | d4_1 | d4_2 | d4_3 | d4_4 | d4_5 | d4_6 | d4_7);

// OBDATA.NET (438) - zero16a0 : nr8
assign zero16a0 = ~(d3_0 | d3_1 | d3_2 | d3_3 | d3_4 | d3_5 | d3_6 | d3_7);

// OBDATA.NET (439) - zero16a1 : nr8
assign zero16a1 = ~(d3_8 | d3_9 | d3_10 | d3_11 | d3_12 | d3_13 | d3_14 | d3_15);

// OBDATA.NET (441) - trans1a : nd2
assign trans1a = ~(mode1 & zero1a);

// OBDATA.NET (442) - trans2a : nd2
assign trans2a = ~(mode2 & zero2a);

// OBDATA.NET (443) - trans4a : nd2
assign trans4a = ~(mode4 & zero4a);

// OBDATA.NET (444) - trans8a : nd2
assign trans8a = ~(mode8 & zero8a);

// OBDATA.NET (445) - trans16a : nd3
assign trans16a = ~(mode16 & zero16a0 & zero16a1);

// OBDATA.NET (446) - transa : nd6
assign transa = ~(trans1a & trans2a & trans4a & trans8a & trans16a & vcc);

// OBDATA.NET (448) - nottransa : nd2
assign nottransa = ~(transa & transen);

// OBDATA.NET (450) - zero1b : iv
assign zero1b = ~d7_1;

// OBDATA.NET (451) - zero2b : nr2
assign zero2b = ~(d6_2 | d6_3);

// OBDATA.NET (452) - zero4b : nr4
assign zero4b = ~(d5_4 | d5_5 | d5_6 | d5_7);

// OBDATA.NET (453) - zero8b : nr8
assign zero8b = ~(d4_8 | d4_9 | d4_10 | d4_11 | d4_12 | d4_13 | d4_14 | d4_15);

// OBDATA.NET (454) - zero16b0 : nr8
assign zero16b0 = ~(d3_16 | d3_17 | d3_18 | d3_19 | d3_20 | d3_21 | d3_22 | d3_23);

// OBDATA.NET (455) - zero16b1 : nr8
assign zero16b1 = ~(d3_24 | d3_25 | d3_26 | d3_27 | d3_28 | d3_29 | d3_30 | d3_31);

// OBDATA.NET (457) - trans1b : nd2
assign trans1b = ~(mode1 & zero1b);

// OBDATA.NET (458) - trans2b : nd2
assign trans2b = ~(mode2 & zero2b);

// OBDATA.NET (459) - trans4b : nd2
assign trans4b = ~(mode4 & zero4b);

// OBDATA.NET (460) - trans8b : nd2
assign trans8b = ~(mode8 & zero8b);

// OBDATA.NET (461) - trans16b : nd3
assign trans16b = ~(mode16 & zero16b0 & zero16b1);

// OBDATA.NET (462) - transb : nd6
assign transb = ~(trans1b & trans2b & trans4b & trans8b & trans16b & vcc);

// OBDATA.NET (464) - nottransb : nd2
assign nottransb = ~(transb & transen);

// OBDATA.NET (514) - idle : fd4q
fd4q idle_inst
(
	.q(smq0), // OUT
	.d(smd0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// OBDATA.NET (515) - read : fd2q
fd2q read_inst
(
	.q(smq1), // OUT
	.d(smd1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OBDATA.NET (516) - write : fd2q
fd2q write_inst
(
	.q(smq2i), // OUT
	.d(smd2), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OBDATA.NET (517) - smq2 : nivm
assign smq2 = smq2i;

// OBDATA.NET (519) - d00 : nd2
assign d00 = ~(smq0 & notfull);

// OBDATA.NET (520) - d01 : nd6
assign d01 = ~(smq2 & scaled & notremgte2 & phdone & notfull & vcc);

// OBDATA.NET (521) - d02 : nd4
assign d02 = ~(smq2 & notscaled & phdone & notfull);

// OBDATA.NET (522) - d0 : nd4
assign smd0 = ~(d00 & d01 & d02 & notoffscreen);

// OBDATA.NET (524) - d10 : nd4
assign d10 = ~(smq0 & full & rmw & notoffscreen);

// OBDATA.NET (525) - d11 : nd4
assign d11 = ~(smq2 & full & rmw & notoffscreen);

// OBDATA.NET (526) - d12 : nd4
assign d12 = ~(smq2 & notphdone & rmw & notoffscreen);

// OBDATA.NET (527) - d13 : nd6
assign d13 = ~(smq2 & scaled & remgte2 & rmw & notoffscreen & vcc);

// OBDATA.NET (528) - d1 : nd4
assign smd1 = ~(d10 & d11 & d12 & d13);

// OBDATA.NET (530) - d20 : nd4
assign d20 = ~(smq0 & full & notrmw & notoffscreen);

// OBDATA.NET (531) - d21 : nd4
assign d21 = ~(smq2 & full & notrmw & notoffscreen);

// OBDATA.NET (532) - d22 : nd4
assign d22 = ~(smq2 & notphdone & notrmw & notoffscreen);

// OBDATA.NET (533) - d23 : nd2
assign d23 = ~(smq1 & notoffscreen);

// OBDATA.NET (534) - d24 : nd6
assign d24 = ~(smq2 & scaled & remgte2 & notrmw & notoffscreen & vcc);

// OBDATA.NET (535) - d2 : nd6
assign smd2 = ~(d20 & d21 & d22 & d23 & d24 & vcc);

// OBDATA.NET (537) - np0 : nd2
assign np0 = ~(smq0 & full);

// OBDATA.NET (538) - np1 : nd6
assign np1 = ~(smq2 & scaled & notremgte2 & phdone & full & vcc);

// OBDATA.NET (539) - np2 : nd4
assign np2 = ~(smq2 & notscaled & phdone & full);

// OBDATA.NET (540) - nextphrasei : nd3
assign nextphrasei = ~(np0 & np1 & np2);

// OBDATA.NET (541) - nextphrase : nivu2
assign nextphrase = nextphrasei;

// OBDATA.NET (543) - nx0 : nd3
assign nx0 = ~(smq2 & scaled & remgte1);

// OBDATA.NET (544) - nx1 : nd2
assign nx1 = ~(smq2 & notscaled);

// OBDATA.NET (545) - nextx : nd2x2
assign nextx = ~(nx0 & nx1);

// OBDATA.NET (547) - nb0 : nd3
assign nb0 = ~(smq2 & scaled & notremgte2);

// OBDATA.NET (548) - nb1 : nd2
assign nb1 = ~(smq2 & notscaled);

// OBDATA.NET (549) - nextbitsi : nd2
assign nextbitsi = ~(nb0 & nb1);

// OBDATA.NET (550) - nextbits : nivh
assign nextbits = nextbitsi;

// OBDATA.NET (552) - lbwrite : niv
assign lbwrite = smq2;

// OBDATA.NET (553) - obdone : iv
assign obdone_obuf = ~d00;

// OBDATA.NET (555) - notrmw : iv
assign notrmw = ~rmw;

// OBDATA.NET (575) - nntransa : mx2
mx2 nntransa_inst
(
	.z(nntransa), // OUT
	.a0(nottransa), // IN
	.a1(nottransb), // IN
	.s(hilob)  // IN
);

// OBDATA.NET (576) - nntransb : mx2
mx2 nntransb_inst
(
	.z(nntransb), // OUT
	.a0(nottransb), // IN
	.a1(nottransa), // IN
	.s(hilob)  // IN
);

// OBDATA.NET (577) - lbwea1 : an2
assign lbwea1 = lbwrite & nntransa;

// OBDATA.NET (578) - lbweb1 : an2
assign lbweb1 = lbwrite & nntransb;

// OBDATA.NET (580) - lbwea2 : fd1q
fd1q lbwea2_inst
(
	.q(lbwea2), // OUT
	.d(lbwea1), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (581) - lbweb2 : fd1q
fd1q lbweb2_inst
(
	.q(lbweb2), // OUT
	.d(lbweb1), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (583) - lbwea4 : mx2
mx2 lbwea4_inst
(
	.z(lbwea4), // OUT
	.a0(lbwea2), // IN
	.a1(lbwea1), // IN
	.s(phys)  // IN
);

// OBDATA.NET (584) - lbweb4 : mx2
mx2 lbweb4_inst
(
	.z(lbweb4), // OUT
	.a0(lbweb2), // IN
	.a1(lbweb1), // IN
	.s(phys)  // IN
);

// OBDATA.NET (589) - lbweb51 : fd1q
fd1q lbweb51_inst
(
	.q(lbweb51), // OUT
	.d(lbweb4), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (590) - lbweb52 : fd1q
fd1q lbweb52_inst
(
	.q(lbweb52), // OUT
	.d(lbweb51), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (591) - lbweb5 : mx2
mx2 lbweb5_inst
(
	.z(lbweb5), // OUT
	.a0(lbweb51), // IN
	.a1(lbweb52), // IN
	.s(rmw1_obuf)  // IN
);

// OBDATA.NET (593) - lbweb6 : mx2
mx2 lbweb6_inst
(
	.z(lbweb6), // OUT
	.a0(lbweb4), // IN
	.a1(lbweb5), // IN
	.s(delayed)  // IN
);

// OBDATA.NET (595) - lbwea7 : mx2
mx2 lbwea7_inst
(
	.z(lbwea7), // OUT
	.a0(lbwea4), // IN
	.a1(lbweb6), // IN
	.s(pswapd)  // IN
);

// OBDATA.NET (596) - lbweb7 : mx2
mx2 lbweb7_inst
(
	.z(lbweb7), // OUT
	.a0(lbweb6), // IN
	.a1(lbwea4), // IN
	.s(pswapd)  // IN
);

// OBDATA.NET (598) - lbwea80 : nd3
assign lbwea80 = ~(lbwea7 & notscaled & onscreen);

// OBDATA.NET (599) - lbwea81 : nd6
assign lbwea81 = ~(lbwea7 & scaled & onscreen & notlbwad_0 & nextxx & vcc);

// OBDATA.NET (600) - lbwea8 : nd2
assign lbwea8 = ~(lbwea80 & lbwea81);

// OBDATA.NET (602) - lbweb80 : nd3
assign lbweb80 = ~(lbweb7 & notscaled & onscreen);

// OBDATA.NET (603) - lbweb81 : nd6
assign lbweb81 = ~(lbweb7 & scaled & onscreen & lbwad_0 & nextxx & vcc);

// OBDATA.NET (604) - lbweb8 : nd2
assign lbweb8 = ~(lbweb80 & lbweb81);

// OBDATA.NET (606) - lbwe[0] : fd1q
fd1q lbwe_index_0_inst
(
	.q(lbwe_0_obuf), // OUT
	.d(lbwea8), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (607) - lbwe[1] : fd1q
fd1q lbwe_index_1_inst
(
	.q(lbwe_1_obuf), // OUT
	.d(lbweb8), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (609) - notlbwad[0] : iv
assign notlbwad_0 = ~lbwad_0;

// OBDATA.NET (616) - lbw1 : fd1q
fd1q lbw1_inst
(
	.q(lbw1), // OUT
	.d(lbwrite), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (617) - lbw2 : fd1q
fd1q lbw2_inst
(
	.q(lbw2), // OUT
	.d(lbw1), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (618) - lbw3 : fd1q
fd1q lbw3_inst
(
	.q(lbw3), // OUT
	.d(lbw2), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (619) - lbend : or6
assign lbend = smd2 | lbwrite | lbw1 | lbw2 | lbw3 | gnd;

// OBDATA.NET (620) - lbeni : fd2q
fd2q lbeni_inst
(
	.q(lbeni), // OUT
	.d(lbend), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OBDATA.NET (621) - lben : nivh
assign lben_obuf = lbeni;

// OBDATA.NET (633) - pa1[0] : fd1q
fd1q pa1_index_0_inst
(
	.q(pa1_0), // OUT
	.d(pa_0), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (634) - pa2[0] : mx2
mx2 pa2_index_0_inst
(
	.z(pa2_0), // OUT
	.a0(pa1_0), // IN
	.a1(pa_0), // IN
	.s(phys)  // IN
);

// OBDATA.NET (635) - oddeven : eo
assign oddeven = lbwad_0 ^ pa2_0;

// OBDATA.NET (636) - pswapd : mx2
mx2 pswapd_inst
(
	.z(pswapd), // OUT
	.a0(lbwad_0), // IN
	.a1(oddeven), // IN
	.s(scaled)  // IN
);

// OBDATA.NET (637) - pswapi : fd1q
fd1q pswapi_inst
(
	.q(pswapi), // OUT
	.d(pswapd), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (638) - pswap : nivu
assign pswap = pswapi;

// OBDATA.NET (645) - xrem[0-8] : fd1q
fd1q xrem_from_0_to_8_inst_0
(
	.q(xrem_0), // OUT
	.d(xrd_0), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_1
(
	.q(xrem_1), // OUT
	.d(xrd_1), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_2
(
	.q(xrem_2), // OUT
	.d(xrd_2), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_3
(
	.q(xrem_3), // OUT
	.d(xrd_3), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_4
(
	.q(xrem_4), // OUT
	.d(xrd_4), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_5
(
	.q(xrem_5), // OUT
	.d(xrd_5), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_6
(
	.q(xrem_6), // OUT
	.d(xrd_6), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_7
(
	.q(xrem_7), // OUT
	.d(xrd_7), // IN
	.cp(clk)  // IN
);
fd1q xrem_from_0_to_8_inst_8
(
	.q(xrem_8), // OUT
	.d(xrd_8), // IN
	.cp(clk)  // IN
);

// OBDATA.NET (647) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s(sum_0), // OUT
	.co(sc_0), // OUT
	.a(xrem_0), // IN
	.b(xscale_0)  // IN
);

// OBDATA.NET (648) - sum[1-6] : fa1
fa1 sum_from_1_to_6_inst_0
(
	.s(sum_1), // OUT
	.co(sc_1), // OUT
	.ci(xrem_1), // IN
	.a(xscale_1), // IN
	.b(sc_0)  // IN
);
fa1 sum_from_1_to_6_inst_1
(
	.s(sum_2), // OUT
	.co(sc_2), // OUT
	.ci(xrem_2), // IN
	.a(xscale_2), // IN
	.b(sc_1)  // IN
);
fa1 sum_from_1_to_6_inst_2
(
	.s(sum_3), // OUT
	.co(sc_3), // OUT
	.ci(xrem_3), // IN
	.a(xscale_3), // IN
	.b(sc_2)  // IN
);
fa1 sum_from_1_to_6_inst_3
(
	.s(sum_4), // OUT
	.co(sc_4), // OUT
	.ci(xrem_4), // IN
	.a(xscale_4), // IN
	.b(sc_3)  // IN
);
fa1 sum_from_1_to_6_inst_4
(
	.s(sum_5), // OUT
	.co(sc_5), // OUT
	.ci(xrem_5), // IN
	.a(xscale_5), // IN
	.b(sc_4)  // IN
);
fa1 sum_from_1_to_6_inst_5
(
	.s(sum_6), // OUT
	.co(sc_6), // OUT
	.ci(xrem_6), // IN
	.a(xscale_6), // IN
	.b(sc_5)  // IN
);

// OBDATA.NET (649) - sum[7] : fa1
fa1 sum_index_7_inst
(
	.s(sum_7), // OUT
	.co(sum_8), // OUT
	.ci(xrem_7), // IN
	.a(xscale_7), // IN
	.b(sc_6)  // IN
);

// OBDATA.NET (651) - xs[0-8] : mx2
mx2 xs_from_0_to_8_inst_0
(
	.z(xs_0), // OUT
	.a0(xrem_0), // IN
	.a1(sum_0), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_1
(
	.z(xs_1), // OUT
	.a0(xrem_1), // IN
	.a1(sum_1), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_2
(
	.z(xs_2), // OUT
	.a0(xrem_2), // IN
	.a1(sum_2), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_3
(
	.z(xs_3), // OUT
	.a0(xrem_3), // IN
	.a1(sum_3), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_4
(
	.z(xs_4), // OUT
	.a0(xrem_4), // IN
	.a1(sum_4), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_5
(
	.z(xs_5), // OUT
	.a0(xrem_5), // IN
	.a1(sum_5), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_6
(
	.z(xs_6), // OUT
	.a0(xrem_6), // IN
	.a1(sum_6), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_7
(
	.z(xs_7), // OUT
	.a0(xrem_7), // IN
	.a1(sum_7), // IN
	.s(nextbits)  // IN
);
mx2 xs_from_0_to_8_inst_8
(
	.z(xs_8), // OUT
	.a0(xrem_8), // IN
	.a1(sum_8), // IN
	.s(nextbits)  // IN
);

// OBDATA.NET (653) - diff[5] : ha1
ha1 diff_index_5_inst
(
	.s(diff_5), // OUT
	.co(dc_5), // OUT
	.a(xs_5), // IN
	.b(nextx)  // IN
);

// OBDATA.NET (654) - diff[6-8] : fa1
fa1 diff_from_6_to_8_inst_0
(
	.s(diff_6), // OUT
	.co(dc_6), // OUT
	.ci(xs_6), // IN
	.a(nextx), // IN
	.b(dc_5)  // IN
);
fa1 diff_from_6_to_8_inst_1
(
	.s(diff_7), // OUT
	.co(dc_7), // OUT
	.ci(xs_7), // IN
	.a(nextx), // IN
	.b(dc_6)  // IN
);
fa1 diff_from_6_to_8_inst_2
(
	.s(diff_8), // OUT
	.co(dc_8), // OUT
	.ci(xs_8), // IN
	.a(nextx), // IN
	.b(dc_7)  // IN
);

// OBDATA.NET (658) - xrd[0-4] : mx2
mx2 xrd_from_0_to_4_inst_0
(
	.z(xrd_0), // OUT
	.a0(xs_0), // IN
	.a1(d_0), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_0_to_4_inst_1
(
	.z(xrd_1), // OUT
	.a0(xs_1), // IN
	.a1(d_1), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_0_to_4_inst_2
(
	.z(xrd_2), // OUT
	.a0(xs_2), // IN
	.a1(d_2), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_0_to_4_inst_3
(
	.z(xrd_3), // OUT
	.a0(xs_3), // IN
	.a1(d_3), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_0_to_4_inst_4
(
	.z(xrd_4), // OUT
	.a0(xs_4), // IN
	.a1(d_4), // IN
	.s(obld_2)  // IN
);

// OBDATA.NET (659) - xrd[5-7] : mx2
mx2 xrd_from_5_to_7_inst_0
(
	.z(xrd_5), // OUT
	.a0(diff_5), // IN
	.a1(d_5), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_5_to_7_inst_1
(
	.z(xrd_6), // OUT
	.a0(diff_6), // IN
	.a1(d_6), // IN
	.s(obld_2)  // IN
);
mx2 xrd_from_5_to_7_inst_2
(
	.z(xrd_7), // OUT
	.a0(diff_7), // IN
	.a1(d_7), // IN
	.s(obld_2)  // IN
);

// OBDATA.NET (660) - xrd[8] : mx2
mx2 xrd_index_8_inst
(
	.z(xrd_8), // OUT
	.a0(diff_8), // IN
	.a1(gnd), // IN
	.s(obld_2)  // IN
);

// OBDATA.NET (662) - notremgte2i : nr3
assign notremgte2i = ~(xrem_6 | xrem_7 | xrem_8);

// OBDATA.NET (663) - notremgte2 : niv
assign notremgte2 = notremgte2i;

// OBDATA.NET (664) - remgte2 : iv
assign remgte2 = ~notremgte2;

// OBDATA.NET (665) - remgte1 : or4
assign remgte1 = xrem_5 | xrem_6 | xrem_7 | xrem_8;

// OBDATA.NET (667) - co[0] : dummy

// OBDATA.NET (668) - co[5] : dummy

// OBDATA.NET (669) - lco[11] : dummy

// OBDATA.NET (670) - dc[7] : dummy
endmodule
