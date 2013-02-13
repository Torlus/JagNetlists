`include "defs.v"

module ob
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
	input olp1w,
	input olp2w,
	input obfw,
	input ob0r,
	input ob1r,
	input ob2r,
	input ob3r,
	input start,
	input newdata_0,
	input newdata_1,
	input newdata_2,
	input newdata_3,
	input newdata_4,
	input newdata_5,
	input newdata_6,
	input newdata_7,
	input newdata_8,
	input newdata_9,
	input newdata_10,
	input newdata_11,
	input newdata_12,
	input newdata_13,
	input newdata_14,
	input newdata_15,
	input newdata_16,
	input newdata_17,
	input newdata_18,
	input newdata_19,
	input newdata_20,
	input newheight_0,
	input newheight_1,
	input newheight_2,
	input newheight_3,
	input newheight_4,
	input newheight_5,
	input newheight_6,
	input newheight_7,
	input newheight_8,
	input newheight_9,
	input newrem_0,
	input newrem_1,
	input newrem_2,
	input newrem_3,
	input newrem_4,
	input newrem_5,
	input newrem_6,
	input newrem_7,
	input obdready,
	input offscreen,
	input refack,
	input obback,
	input mack,
	input clk,
	input resetl,
	input vcc,
	input gnd,
	input vc_0,
	input vc_1,
	input vc_2,
	input vc_3,
	input vc_4,
	input vc_5,
	input vc_6,
	input vc_7,
	input vc_8,
	input vc_9,
	input vc_10,
	input wbkdone,
	input obdone,
	input heightnz,
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
	input blback,
	input grpback,
	input wet,
	input hcb_10,
	output scaled,
	output obdlatch,
	output mode1,
	output mode2,
	output mode4,
	output mode8,
	output mode16,
	output mode24,
	output rmw,
	output index_1,
	output index_2,
	output index_3,
	output index_4,
	output index_5,
	output index_6,
	output index_7,
	output xld,
	output reflected,
	output transen,
	output hscale_0,
	output hscale_1,
	output hscale_2,
	output hscale_3,
	output hscale_4,
	output hscale_5,
	output hscale_6,
	output hscale_7,
	output dwidth_0,
	output dwidth_1,
	output dwidth_2,
	output dwidth_3,
	output dwidth_4,
	output dwidth_5,
	output dwidth_6,
	output dwidth_7,
	output dwidth_8,
	output dwidth_9,
	output obbreq,
	output vscale_0,
	output vscale_1,
	output vscale_2,
	output vscale_3,
	output vscale_4,
	output vscale_5,
	output vscale_6,
	output vscale_7,
	output wbkstart,
	output grpintreq,
	output obint,
	output obld_0,
	output obld_1,
	output obld_2,
	output startref,
	output vgy,
	output vey,
	output vly,
	inout wd_0,
	inout wd_1,
	inout wd_2,
	inout wd_3,
	inout wd_4,
	inout wd_5,
	inout wd_6,
	inout wd_7,
	inout wd_8,
	inout wd_9,
	inout wd_10,
	inout wd_11,
	inout wd_12,
	inout wd_13,
	inout wd_14,
	inout wd_15,
	inout wd_16,
	inout wd_17,
	inout wd_18,
	inout wd_19,
	inout wd_20,
	inout wd_21,
	inout wd_22,
	inout wd_23,
	inout wd_24,
	inout wd_25,
	inout wd_26,
	inout wd_27,
	inout wd_28,
	inout wd_29,
	inout wd_30,
	inout wd_31,
	inout wd_32,
	inout wd_33,
	inout wd_34,
	inout wd_35,
	inout wd_36,
	inout wd_37,
	inout wd_38,
	inout wd_39,
	inout wd_40,
	inout wd_41,
	inout wd_42,
	inout wd_43,
	inout wd_44,
	inout wd_45,
	inout wd_46,
	inout wd_47,
	inout wd_48,
	inout wd_49,
	inout wd_50,
	inout wd_51,
	inout wd_52,
	inout wd_53,
	inout wd_54,
	inout wd_55,
	inout wd_56,
	inout wd_57,
	inout wd_58,
	inout wd_59,
	inout wd_60,
	inout wd_61,
	inout wd_62,
	inout wd_63,
	inout a_0,
	inout a_1,
	inout a_2,
	inout a_3,
	inout a_4,
	inout a_5,
	inout a_6,
	inout a_7,
	inout a_8,
	inout a_9,
	inout a_10,
	inout a_11,
	inout a_12,
	inout a_13,
	inout a_14,
	inout a_15,
	inout a_16,
	inout a_17,
	inout a_18,
	inout a_19,
	inout a_20,
	inout a_21,
	inout a_22,
	inout a_23,
	inout w_0,
	inout w_1,
	inout w_2,
	inout w_3,
	inout rw,
	inout mreq,
	inout justify,
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
wire type_0;
wire type_1;
wire type_2;
wire oblatch_0;
wire ypos_0;
wire ypos_1;
wire ypos_2;
wire ypos_3;
wire ypos_4;
wire ypos_5;
wire ypos_6;
wire ypos_7;
wire ypos_8;
wire ypos_9;
wire ypos_10;
wire link_0;
wire link_1;
wire link_2;
wire link_3;
wire link_4;
wire link_5;
wire link_6;
wire link_7;
wire link_8;
wire link_9;
wire link_10;
wire link_11;
wire link_12;
wire link_13;
wire link_14;
wire link_15;
wire link_16;
wire link_17;
wire link_18;
wire data_0;
wire data_1;
wire data_2;
wire data_3;
wire data_4;
wire data_5;
wire data_6;
wire data_7;
wire data_8;
wire data_9;
wire data_10;
wire data_11;
wire data_12;
wire data_13;
wire data_14;
wire data_15;
wire data_16;
wire data_17;
wire data_18;
wire data_19;
wire data_20;
wire wbken_0;
wire depth_0;
wire depth_1;
wire depth_2;
wire oblatch_1;
wire skip_0;
wire skip_1;
wire skip_2;
wire _release;
wire oblatch_2;
wire rem_5;
wire rem_6;
wire rem_7;
wire wbken_2;
wire olpd_3;
wire olpd_4;
wire olpd_5;
wire olpd_6;
wire olpd_7;
wire olpd_8;
wire olpd_9;
wire olpd_10;
wire olpd_11;
wire olpd_12;
wire olpd_13;
wire olpd_14;
wire olpd_15;
wire olpd_16;
wire olpd_17;
wire olpd_18;
wire olpd_19;
wire olpd_20;
wire olpd_21;
wire olpd_22;
wire olpd_23;
wire olpd1_3;
wire olpd1_4;
wire olpd1_5;
wire olpd1_6;
wire olpd1_7;
wire olpd1_8;
wire olpd1_9;
wire olpd1_10;
wire olpd1_11;
wire olpd1_12;
wire olpd1_13;
wire olpd1_14;
wire olpd1_15;
wire olpd1_16;
wire olpd1_17;
wire olpd1_18;
wire olpd1_19;
wire olpd1_20;
wire olpd1_21;
wire pclink;
wire olp_3;
wire olpco_3;
wire pcinc;
wire olpld;
wire olp_4;
wire olp_5;
wire olp_6;
wire olp_7;
wire olp_8;
wire olp_9;
wire olpco_4;
wire olpco_5;
wire olpco_6;
wire olpco_7;
wire olpco_8;
wire olpco_9;
wire olp_10;
wire olpco_10;
wire plac9;
wire olp_11;
wire olp_12;
wire olp_13;
wire olp_14;
wire olp_15;
wire olp_16;
wire olpco_11;
wire olpco_12;
wire olpco_13;
wire olpco_14;
wire olpco_15;
wire olpco_16;
wire olp_17;
wire olpco_17;
wire plac16;
wire olp_18;
wire olp_19;
wire olp_20;
wire olp_21;
wire olpco_18;
wire olpco_19;
wire olpco_20;
wire olpco_21;
wire olpldi;
wire pcld;
wire sum_0;
wire dco_0;
wire sum_1;
wire sum_2;
wire dco_1;
wire dco_2;
wire dmainc;
wire dmaen;
wire ldinc;
wire d1_0;
wire d1_1;
wire d1_2;
wire dci;
wire dco_3;
wire dco_4;
wire dco_5;
wire dco_6;
wire dco_7;
wire dco_8;
wire dco_9;
wire dco_10;
wire dlac9;
wire dco_11;
wire dco_12;
wire dco_13;
wire dco_14;
wire dco_15;
wire dco_16;
wire dco_17;
wire dlac16;
wire dco_18;
wire dco_19;
wire dco_20;
wire obfws;
wire obf;
wire iwidth_0;
wire wco_0;
wire iwidth_1;
wire iwidth_2;
wire iwidth_3;
wire iwidth_4;
wire iwidth_5;
wire iwidth_6;
wire iwidth_7;
wire iwidth_8;
wire iwidth_9;
wire wco_1;
wire wco_2;
wire wco_3;
wire wco_4;
wire wco_5;
wire wco_6;
wire wco_7;
wire wco_8;
wire wco_9;
wire bit0;
wire iwidthz0;
wire iwidthz1;
wire iwidthnz;
wire iwidthz;
wire q0;
wire d0;
wire q1;
wire d1;
wire q2;
wire d2;
wire q3i;
wire d3;
wire q3;
wire q4i;
wire d4;
wire q4;
wire q5;
wire d5;
wire q7;
wire d7;
wire q8;
wire d8;
wire q9;
wire d9;
wire d00;
wire notstartover;
wire d01;
wire notbitob;
wire notscaled;
wire notgrpob;
wire notbranchob;
wire d10;
wire startover;
wire d11;
wire notobmack;
wire d12;
wire bitob;
wire bitnotinrange;
wire d13;
wire branchob;
wire cctrue;
wire d14;
wire d15;
wire scalednotinrange;
wire d16;
wire obmack;
wire d17;
wire d18;
wire d19;
wire ccfalse;
wire d1a;
wire d1b;
wire d20;
wire d21;
wire d23;
wire notobdone;
wire d30;
wire d31;
wire geq;
wire d32;
wire d40;
wire d41;
wire onscreen;
wire d42;
wire d43;
wire notwbkdone;
wire d44;
wire scaledinrange;
wire d45;
wire d46;
wire d51;
wire d52;
wire d53;
wire d70;
wire grpob;
wire d71;
wire notobfw;
wire d80;
wire d81;
wire d90;
wire d91;
wire obr0;
wire obr1;
wire obr2;
wire obr3;
wire obr4;
wire obbr0;
wire obr5;
wire obbr1;
wire obr6;
wire obr7;
wire hold;
wire omrq0;
wire omrq1;
wire omrq2;
wire omrq3;
wire omrq4;
wire omrq5;
wire omrq6;
wire obmreq;
wire obldd_0;
wire obldd_1;
wire obldd_2;
wire pc1en;
wire pc2en0;
wire pc2en;
wire dmaen0;
wire obdlatchd;
wire dsel0;
wire dsel1;
wire dsel2;
wire dataseli;
wire datasel;
wire pclinki;
wire stopob;
wire obrw1;
wire obrw;
wire wbken2d;
wire wr;
wire eback;
wire ewr;
wire wbken0d;
wire xldi;
wire typel_0;
wire typel_1;
wire typel_2;
wire notstopob;
wire heightl_0;
wire heightl_1;
wire heightl_2;
wire cctrue0;
wire cctrue1;
wire y7ff;
wire cctrue2;
wire cctrue3;
wire cctrue4;
wire cctrue5;
wire depthl_0;
wire depthl_1;
wire depthl_2;
wire mode8i;
wire start1;
wire start2;
wire start2l;
wire sstart;
wire ov1;
wire q0l;
wire ov2;
wire overrun;
wire overrund;
wire obeni;
wire oben;
wire obldi_0;
wire obldi_1;
wire obldi_2;
wire wbkeni_0;
wire wbkeni_2;
wire equ;
wire ve_0;
wire ve_1;
wire ve_2;
wire ve_3;
wire ve_4;
wire ve_5;
wire ve_6;
wire ve_7;
wire ve_8;
wire ve_9;
wire ve_10;
wire veyl;
wire y7ff0;
wire y7ff1;
wire remnz;
wire remheightnz;
wire unused;
wire olp1_3;
wire olp1_4;
wire oa_3;
wire oa_4;
wire oa_5;
wire oa_6;
wire oa_7;
wire oa_8;
wire oa_9;
wire oa_10;
wire oa_11;
wire oa_12;
wire oa_13;
wire oa_14;
wire oa_15;
wire oa_16;
wire oa_17;
wire oa_18;
wire oa_19;
wire oa_20;
wire oa_21;
wire oa_22;
wire oa_23;

// Output buffers
wire scaled_obuf;
wire obdlatch_obuf;
wire mode1_obuf;
wire mode2_obuf;
wire mode4_obuf;
wire mode8_obuf;
wire mode16_obuf;
wire mode24_obuf;
wire rmw_obuf;
wire index_1_obuf;
wire index_2_obuf;
wire index_3_obuf;
wire index_4_obuf;
wire index_5_obuf;
wire index_6_obuf;
wire index_7_obuf;
wire xld_obuf;
wire reflected_obuf;
wire transen_obuf;
wire hscale_0_obuf;
wire hscale_1_obuf;
wire hscale_2_obuf;
wire hscale_3_obuf;
wire hscale_4_obuf;
wire hscale_5_obuf;
wire hscale_6_obuf;
wire hscale_7_obuf;
wire dwidth_0_obuf;
wire dwidth_1_obuf;
wire dwidth_2_obuf;
wire dwidth_3_obuf;
wire dwidth_4_obuf;
wire dwidth_5_obuf;
wire dwidth_6_obuf;
wire dwidth_7_obuf;
wire dwidth_8_obuf;
wire dwidth_9_obuf;
wire obbreq_obuf;
wire vscale_0_obuf;
wire vscale_1_obuf;
wire vscale_2_obuf;
wire vscale_3_obuf;
wire vscale_4_obuf;
wire vscale_5_obuf;
wire vscale_6_obuf;
wire vscale_7_obuf;
wire wbkstart_obuf;
wire grpintreq_obuf;
wire obint_obuf;
wire obld_0_obuf;
wire obld_1_obuf;
wire obld_2_obuf;
wire startref_obuf;
wire vgy_obuf;
wire vey_obuf;
wire vly_obuf;


// Output buffers
assign scaled = scaled_obuf;
assign obdlatch = obdlatch_obuf;
assign mode1 = mode1_obuf;
assign mode2 = mode2_obuf;
assign mode4 = mode4_obuf;
assign mode8 = mode8_obuf;
assign mode16 = mode16_obuf;
assign mode24 = mode24_obuf;
assign rmw = rmw_obuf;
assign index_1 = index_1_obuf;
assign index_2 = index_2_obuf;
assign index_3 = index_3_obuf;
assign index_4 = index_4_obuf;
assign index_5 = index_5_obuf;
assign index_6 = index_6_obuf;
assign index_7 = index_7_obuf;
assign xld = xld_obuf;
assign reflected = reflected_obuf;
assign transen = transen_obuf;
assign hscale_0 = hscale_0_obuf;
assign hscale_1 = hscale_1_obuf;
assign hscale_2 = hscale_2_obuf;
assign hscale_3 = hscale_3_obuf;
assign hscale_4 = hscale_4_obuf;
assign hscale_5 = hscale_5_obuf;
assign hscale_6 = hscale_6_obuf;
assign hscale_7 = hscale_7_obuf;
assign dwidth_0 = dwidth_0_obuf;
assign dwidth_1 = dwidth_1_obuf;
assign dwidth_2 = dwidth_2_obuf;
assign dwidth_3 = dwidth_3_obuf;
assign dwidth_4 = dwidth_4_obuf;
assign dwidth_5 = dwidth_5_obuf;
assign dwidth_6 = dwidth_6_obuf;
assign dwidth_7 = dwidth_7_obuf;
assign dwidth_8 = dwidth_8_obuf;
assign dwidth_9 = dwidth_9_obuf;
assign obbreq = obbreq_obuf;
assign vscale_0 = vscale_0_obuf;
assign vscale_1 = vscale_1_obuf;
assign vscale_2 = vscale_2_obuf;
assign vscale_3 = vscale_3_obuf;
assign vscale_4 = vscale_4_obuf;
assign vscale_5 = vscale_5_obuf;
assign vscale_6 = vscale_6_obuf;
assign vscale_7 = vscale_7_obuf;
assign wbkstart = wbkstart_obuf;
assign grpintreq = grpintreq_obuf;
assign obint = obint_obuf;
assign obld_0 = obld_0_obuf;
assign obld_1 = obld_1_obuf;
assign obld_2 = obld_2_obuf;
assign startref = startref_obuf;
assign vgy = vgy_obuf;
assign vey = vey_obuf;
assign vly = vly_obuf;


// OB.NET (48) - type[0-2] : slatch
slatch type_from_0_to_2_inst_0
(
	.q(type_0), // IO
	.d(d_0), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch type_from_0_to_2_inst_1
(
	.q(type_1), // IO
	.d(d_1), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch type_from_0_to_2_inst_2
(
	.q(type_2), // IO
	.d(d_2), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);

// OB.NET (49) - ypos[0-10] : slatch
slatch ypos_from_0_to_10_inst_0
(
	.q(ypos_0), // IO
	.d(d_3), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_1
(
	.q(ypos_1), // IO
	.d(d_4), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_2
(
	.q(ypos_2), // IO
	.d(d_5), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_3
(
	.q(ypos_3), // IO
	.d(d_6), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_4
(
	.q(ypos_4), // IO
	.d(d_7), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_5
(
	.q(ypos_5), // IO
	.d(d_8), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_6
(
	.q(ypos_6), // IO
	.d(d_9), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_7
(
	.q(ypos_7), // IO
	.d(d_10), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_8
(
	.q(ypos_8), // IO
	.d(d_11), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_9
(
	.q(ypos_9), // IO
	.d(d_12), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch ypos_from_0_to_10_inst_10
(
	.q(ypos_10), // IO
	.d(d_13), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);

// OB.NET (51) - link[0-18] : slatch
slatch link_from_0_to_18_inst_0
(
	.q(link_0), // IO
	.d(d_24), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_1
(
	.q(link_1), // IO
	.d(d_25), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_2
(
	.q(link_2), // IO
	.d(d_26), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_3
(
	.q(link_3), // IO
	.d(d_27), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_4
(
	.q(link_4), // IO
	.d(d_28), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_5
(
	.q(link_5), // IO
	.d(d_29), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_6
(
	.q(link_6), // IO
	.d(d_30), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_7
(
	.q(link_7), // IO
	.d(d_31), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_8
(
	.q(link_8), // IO
	.d(d_32), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_9
(
	.q(link_9), // IO
	.d(d_33), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_10
(
	.q(link_10), // IO
	.d(d_34), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_11
(
	.q(link_11), // IO
	.d(d_35), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_12
(
	.q(link_12), // IO
	.d(d_36), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_13
(
	.q(link_13), // IO
	.d(d_37), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_14
(
	.q(link_14), // IO
	.d(d_38), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_15
(
	.q(link_15), // IO
	.d(d_39), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_16
(
	.q(link_16), // IO
	.d(d_40), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_17
(
	.q(link_17), // IO
	.d(d_41), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);
slatch link_from_0_to_18_inst_18
(
	.q(link_18), // IO
	.d(d_42), // IN
	.clk(clk), // IN
	.en(oblatch_0)  // IN
);

// OB.NET (56) - ob0rd[0-2] : ts
assign dr_0 = (ob0r) ? type_0 : 1'bz;
assign dr_1 = (ob0r) ? type_1 : 1'bz;
assign dr_2 = (ob0r) ? type_2 : 1'bz;

// OB.NET (57) - ob0rd[3-13] : ts
assign dr_3 = (ob0r) ? ypos_0 : 1'bz;
assign dr_4 = (ob0r) ? ypos_1 : 1'bz;
assign dr_5 = (ob0r) ? ypos_2 : 1'bz;
assign dr_6 = (ob0r) ? ypos_3 : 1'bz;
assign dr_7 = (ob0r) ? ypos_4 : 1'bz;
assign dr_8 = (ob0r) ? ypos_5 : 1'bz;
assign dr_9 = (ob0r) ? ypos_6 : 1'bz;
assign dr_10 = (ob0r) ? ypos_7 : 1'bz;
assign dr_11 = (ob0r) ? ypos_8 : 1'bz;
assign dr_12 = (ob0r) ? ypos_9 : 1'bz;
assign dr_13 = (ob0r) ? ypos_10 : 1'bz;

// OB.NET (58) - ob0rd[14-15] : ts
assign dr_14 = (ob0r) ? newheight_0 : 1'bz;
assign dr_15 = (ob0r) ? newheight_1 : 1'bz;

// OB.NET (60) - ob1rd[0-7] : ts
assign dr_0 = (ob1r) ? newheight_2 : 1'bz;
assign dr_1 = (ob1r) ? newheight_3 : 1'bz;
assign dr_2 = (ob1r) ? newheight_4 : 1'bz;
assign dr_3 = (ob1r) ? newheight_5 : 1'bz;
assign dr_4 = (ob1r) ? newheight_6 : 1'bz;
assign dr_5 = (ob1r) ? newheight_7 : 1'bz;
assign dr_6 = (ob1r) ? newheight_8 : 1'bz;
assign dr_7 = (ob1r) ? newheight_9 : 1'bz;

// OB.NET (61) - ob1rd[8-15] : ts
assign dr_8 = (ob1r) ? link_0 : 1'bz;
assign dr_9 = (ob1r) ? link_1 : 1'bz;
assign dr_10 = (ob1r) ? link_2 : 1'bz;
assign dr_11 = (ob1r) ? link_3 : 1'bz;
assign dr_12 = (ob1r) ? link_4 : 1'bz;
assign dr_13 = (ob1r) ? link_5 : 1'bz;
assign dr_14 = (ob1r) ? link_6 : 1'bz;
assign dr_15 = (ob1r) ? link_7 : 1'bz;

// OB.NET (63) - ob2rd[0-10] : ts
assign dr_0 = (ob2r) ? link_8 : 1'bz;
assign dr_1 = (ob2r) ? link_9 : 1'bz;
assign dr_2 = (ob2r) ? link_10 : 1'bz;
assign dr_3 = (ob2r) ? link_11 : 1'bz;
assign dr_4 = (ob2r) ? link_12 : 1'bz;
assign dr_5 = (ob2r) ? link_13 : 1'bz;
assign dr_6 = (ob2r) ? link_14 : 1'bz;
assign dr_7 = (ob2r) ? link_15 : 1'bz;
assign dr_8 = (ob2r) ? link_16 : 1'bz;
assign dr_9 = (ob2r) ? link_17 : 1'bz;
assign dr_10 = (ob2r) ? link_18 : 1'bz;

// OB.NET (64) - ob2rd[11-15] : ts
assign dr_11 = (ob2r) ? data_0 : 1'bz;
assign dr_12 = (ob2r) ? data_1 : 1'bz;
assign dr_13 = (ob2r) ? data_2 : 1'bz;
assign dr_14 = (ob2r) ? data_3 : 1'bz;
assign dr_15 = (ob2r) ? data_4 : 1'bz;

// OB.NET (66) - ob3rd[0-15] : ts
assign dr_0 = (ob3r) ? data_5 : 1'bz;
assign dr_1 = (ob3r) ? data_6 : 1'bz;
assign dr_2 = (ob3r) ? data_7 : 1'bz;
assign dr_3 = (ob3r) ? data_8 : 1'bz;
assign dr_4 = (ob3r) ? data_9 : 1'bz;
assign dr_5 = (ob3r) ? data_10 : 1'bz;
assign dr_6 = (ob3r) ? data_11 : 1'bz;
assign dr_7 = (ob3r) ? data_12 : 1'bz;
assign dr_8 = (ob3r) ? data_13 : 1'bz;
assign dr_9 = (ob3r) ? data_14 : 1'bz;
assign dr_10 = (ob3r) ? data_15 : 1'bz;
assign dr_11 = (ob3r) ? data_16 : 1'bz;
assign dr_12 = (ob3r) ? data_17 : 1'bz;
assign dr_13 = (ob3r) ? data_18 : 1'bz;
assign dr_14 = (ob3r) ? data_19 : 1'bz;
assign dr_15 = (ob3r) ? data_20 : 1'bz;

// OB.NET (70) - obwbk0[0-2] : ts
assign wd_0 = (wbken_0) ? type_0 : 1'bz;
assign wd_1 = (wbken_0) ? type_1 : 1'bz;
assign wd_2 = (wbken_0) ? type_2 : 1'bz;

// OB.NET (71) - obwbk0[3-13] : ts
assign wd_3 = (wbken_0) ? ypos_0 : 1'bz;
assign wd_4 = (wbken_0) ? ypos_1 : 1'bz;
assign wd_5 = (wbken_0) ? ypos_2 : 1'bz;
assign wd_6 = (wbken_0) ? ypos_3 : 1'bz;
assign wd_7 = (wbken_0) ? ypos_4 : 1'bz;
assign wd_8 = (wbken_0) ? ypos_5 : 1'bz;
assign wd_9 = (wbken_0) ? ypos_6 : 1'bz;
assign wd_10 = (wbken_0) ? ypos_7 : 1'bz;
assign wd_11 = (wbken_0) ? ypos_8 : 1'bz;
assign wd_12 = (wbken_0) ? ypos_9 : 1'bz;
assign wd_13 = (wbken_0) ? ypos_10 : 1'bz;

// OB.NET (72) - obwbk0[14-23] : ts
assign wd_14 = (wbken_0) ? newheight_0 : 1'bz;
assign wd_15 = (wbken_0) ? newheight_1 : 1'bz;
assign wd_16 = (wbken_0) ? newheight_2 : 1'bz;
assign wd_17 = (wbken_0) ? newheight_3 : 1'bz;
assign wd_18 = (wbken_0) ? newheight_4 : 1'bz;
assign wd_19 = (wbken_0) ? newheight_5 : 1'bz;
assign wd_20 = (wbken_0) ? newheight_6 : 1'bz;
assign wd_21 = (wbken_0) ? newheight_7 : 1'bz;
assign wd_22 = (wbken_0) ? newheight_8 : 1'bz;
assign wd_23 = (wbken_0) ? newheight_9 : 1'bz;

// OB.NET (73) - obwbk0[24-42] : ts
assign wd_24 = (wbken_0) ? link_0 : 1'bz;
assign wd_25 = (wbken_0) ? link_1 : 1'bz;
assign wd_26 = (wbken_0) ? link_2 : 1'bz;
assign wd_27 = (wbken_0) ? link_3 : 1'bz;
assign wd_28 = (wbken_0) ? link_4 : 1'bz;
assign wd_29 = (wbken_0) ? link_5 : 1'bz;
assign wd_30 = (wbken_0) ? link_6 : 1'bz;
assign wd_31 = (wbken_0) ? link_7 : 1'bz;
assign wd_32 = (wbken_0) ? link_8 : 1'bz;
assign wd_33 = (wbken_0) ? link_9 : 1'bz;
assign wd_34 = (wbken_0) ? link_10 : 1'bz;
assign wd_35 = (wbken_0) ? link_11 : 1'bz;
assign wd_36 = (wbken_0) ? link_12 : 1'bz;
assign wd_37 = (wbken_0) ? link_13 : 1'bz;
assign wd_38 = (wbken_0) ? link_14 : 1'bz;
assign wd_39 = (wbken_0) ? link_15 : 1'bz;
assign wd_40 = (wbken_0) ? link_16 : 1'bz;
assign wd_41 = (wbken_0) ? link_17 : 1'bz;
assign wd_42 = (wbken_0) ? link_18 : 1'bz;

// OB.NET (74) - obwbk0[43-63] : ts
assign wd_43 = (wbken_0) ? newdata_0 : 1'bz;
assign wd_44 = (wbken_0) ? newdata_1 : 1'bz;
assign wd_45 = (wbken_0) ? newdata_2 : 1'bz;
assign wd_46 = (wbken_0) ? newdata_3 : 1'bz;
assign wd_47 = (wbken_0) ? newdata_4 : 1'bz;
assign wd_48 = (wbken_0) ? newdata_5 : 1'bz;
assign wd_49 = (wbken_0) ? newdata_6 : 1'bz;
assign wd_50 = (wbken_0) ? newdata_7 : 1'bz;
assign wd_51 = (wbken_0) ? newdata_8 : 1'bz;
assign wd_52 = (wbken_0) ? newdata_9 : 1'bz;
assign wd_53 = (wbken_0) ? newdata_10 : 1'bz;
assign wd_54 = (wbken_0) ? newdata_11 : 1'bz;
assign wd_55 = (wbken_0) ? newdata_12 : 1'bz;
assign wd_56 = (wbken_0) ? newdata_13 : 1'bz;
assign wd_57 = (wbken_0) ? newdata_14 : 1'bz;
assign wd_58 = (wbken_0) ? newdata_15 : 1'bz;
assign wd_59 = (wbken_0) ? newdata_16 : 1'bz;
assign wd_60 = (wbken_0) ? newdata_17 : 1'bz;
assign wd_61 = (wbken_0) ? newdata_18 : 1'bz;
assign wd_62 = (wbken_0) ? newdata_19 : 1'bz;
assign wd_63 = (wbken_0) ? newdata_20 : 1'bz;

// OB.NET (77) - depth[0-2] : slatch
slatch depth_from_0_to_2_inst_0
(
	.q(depth_0), // IO
	.d(d_12), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch depth_from_0_to_2_inst_1
(
	.q(depth_1), // IO
	.d(d_13), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch depth_from_0_to_2_inst_2
(
	.q(depth_2), // IO
	.d(d_14), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (78) - skip[0-2] : slatch
slatch skip_from_0_to_2_inst_0
(
	.q(skip_0), // IO
	.d(d_15), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch skip_from_0_to_2_inst_1
(
	.q(skip_1), // IO
	.d(d_16), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch skip_from_0_to_2_inst_2
(
	.q(skip_2), // IO
	.d(d_17), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (79) - dwidth[0-9] : slatch
slatch dwidth_from_0_to_9_inst_0
(
	.q(dwidth_0_obuf), // IO
	.d(d_18), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_1
(
	.q(dwidth_1_obuf), // IO
	.d(d_19), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_2
(
	.q(dwidth_2_obuf), // IO
	.d(d_20), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_3
(
	.q(dwidth_3_obuf), // IO
	.d(d_21), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_4
(
	.q(dwidth_4_obuf), // IO
	.d(d_22), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_5
(
	.q(dwidth_5_obuf), // IO
	.d(d_23), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_6
(
	.q(dwidth_6_obuf), // IO
	.d(d_24), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_7
(
	.q(dwidth_7_obuf), // IO
	.d(d_25), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_8
(
	.q(dwidth_8_obuf), // IO
	.d(d_26), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch dwidth_from_0_to_9_inst_9
(
	.q(dwidth_9_obuf), // IO
	.d(d_27), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (81) - index[1-7] : slatch
slatch index_from_1_to_7_inst_0
(
	.q(index_1_obuf), // IO
	.d(d_38), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_1
(
	.q(index_2_obuf), // IO
	.d(d_39), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_2
(
	.q(index_3_obuf), // IO
	.d(d_40), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_3
(
	.q(index_4_obuf), // IO
	.d(d_41), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_4
(
	.q(index_5_obuf), // IO
	.d(d_42), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_5
(
	.q(index_6_obuf), // IO
	.d(d_43), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);
slatch index_from_1_to_7_inst_6
(
	.q(index_7_obuf), // IO
	.d(d_44), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (82) - reflected : slatch
slatch reflected_inst
(
	.q(reflected_obuf), // IO
	.d(d_45), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (83) - rmw : slatch
slatch rmw_inst
(
	.q(rmw_obuf), // IO
	.d(d_46), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (84) - transen : slatch
slatch transen_inst
(
	.q(transen_obuf), // IO
	.d(d_47), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (85) - release : slatch
slatch release_inst
(
	.q(_release), // IO
	.d(d_48), // IN
	.clk(clk), // IN
	.en(oblatch_1)  // IN
);

// OB.NET (87) - hscale[0-7] : slatch
slatch hscale_from_0_to_7_inst_0
(
	.q(hscale_0_obuf), // IO
	.d(d_0), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_1
(
	.q(hscale_1_obuf), // IO
	.d(d_1), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_2
(
	.q(hscale_2_obuf), // IO
	.d(d_2), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_3
(
	.q(hscale_3_obuf), // IO
	.d(d_3), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_4
(
	.q(hscale_4_obuf), // IO
	.d(d_4), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_5
(
	.q(hscale_5_obuf), // IO
	.d(d_5), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_6
(
	.q(hscale_6_obuf), // IO
	.d(d_6), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch hscale_from_0_to_7_inst_7
(
	.q(hscale_7_obuf), // IO
	.d(d_7), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);

// OB.NET (88) - vscale[0-7] : slatch
slatch vscale_from_0_to_7_inst_0
(
	.q(vscale_0_obuf), // IO
	.d(d_8), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_1
(
	.q(vscale_1_obuf), // IO
	.d(d_9), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_2
(
	.q(vscale_2_obuf), // IO
	.d(d_10), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_3
(
	.q(vscale_3_obuf), // IO
	.d(d_11), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_4
(
	.q(vscale_4_obuf), // IO
	.d(d_12), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_5
(
	.q(vscale_5_obuf), // IO
	.d(d_13), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_6
(
	.q(vscale_6_obuf), // IO
	.d(d_14), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch vscale_from_0_to_7_inst_7
(
	.q(vscale_7_obuf), // IO
	.d(d_15), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);

// OB.NET (89) - rem[5-7] : slatch
slatch rem_from_5_to_7_inst_0
(
	.q(rem_5), // IO
	.d(d_21), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch rem_from_5_to_7_inst_1
(
	.q(rem_6), // IO
	.d(d_22), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);
slatch rem_from_5_to_7_inst_2
(
	.q(rem_7), // IO
	.d(d_23), // IN
	.clk(clk), // IN
	.en(oblatch_2)  // IN
);

// OB.NET (93) - obwbk2[0-7] : ts
assign wd_0 = (wbken_2) ? hscale_0_obuf : 1'bz;
assign wd_1 = (wbken_2) ? hscale_1_obuf : 1'bz;
assign wd_2 = (wbken_2) ? hscale_2_obuf : 1'bz;
assign wd_3 = (wbken_2) ? hscale_3_obuf : 1'bz;
assign wd_4 = (wbken_2) ? hscale_4_obuf : 1'bz;
assign wd_5 = (wbken_2) ? hscale_5_obuf : 1'bz;
assign wd_6 = (wbken_2) ? hscale_6_obuf : 1'bz;
assign wd_7 = (wbken_2) ? hscale_7_obuf : 1'bz;

// OB.NET (94) - obwbk2[8-15] : ts
assign wd_8 = (wbken_2) ? vscale_0_obuf : 1'bz;
assign wd_9 = (wbken_2) ? vscale_1_obuf : 1'bz;
assign wd_10 = (wbken_2) ? vscale_2_obuf : 1'bz;
assign wd_11 = (wbken_2) ? vscale_3_obuf : 1'bz;
assign wd_12 = (wbken_2) ? vscale_4_obuf : 1'bz;
assign wd_13 = (wbken_2) ? vscale_5_obuf : 1'bz;
assign wd_14 = (wbken_2) ? vscale_6_obuf : 1'bz;
assign wd_15 = (wbken_2) ? vscale_7_obuf : 1'bz;

// OB.NET (95) - obwbk2[16-23] : ts
assign wd_16 = (wbken_2) ? newrem_0 : 1'bz;
assign wd_17 = (wbken_2) ? newrem_1 : 1'bz;
assign wd_18 = (wbken_2) ? newrem_2 : 1'bz;
assign wd_19 = (wbken_2) ? newrem_3 : 1'bz;
assign wd_20 = (wbken_2) ? newrem_4 : 1'bz;
assign wd_21 = (wbken_2) ? newrem_5 : 1'bz;
assign wd_22 = (wbken_2) ? newrem_6 : 1'bz;
assign wd_23 = (wbken_2) ? newrem_7 : 1'bz;

// OB.NET (96) - obwbk2[24-63] : ts
assign wd_24 = (wbken_2) ? gnd : 1'bz;
assign wd_25 = (wbken_2) ? gnd : 1'bz;
assign wd_26 = (wbken_2) ? gnd : 1'bz;
assign wd_27 = (wbken_2) ? gnd : 1'bz;
assign wd_28 = (wbken_2) ? gnd : 1'bz;
assign wd_29 = (wbken_2) ? gnd : 1'bz;
assign wd_30 = (wbken_2) ? gnd : 1'bz;
assign wd_31 = (wbken_2) ? gnd : 1'bz;
assign wd_32 = (wbken_2) ? gnd : 1'bz;
assign wd_33 = (wbken_2) ? gnd : 1'bz;
assign wd_34 = (wbken_2) ? gnd : 1'bz;
assign wd_35 = (wbken_2) ? gnd : 1'bz;
assign wd_36 = (wbken_2) ? gnd : 1'bz;
assign wd_37 = (wbken_2) ? gnd : 1'bz;
assign wd_38 = (wbken_2) ? gnd : 1'bz;
assign wd_39 = (wbken_2) ? gnd : 1'bz;
assign wd_40 = (wbken_2) ? gnd : 1'bz;
assign wd_41 = (wbken_2) ? gnd : 1'bz;
assign wd_42 = (wbken_2) ? gnd : 1'bz;
assign wd_43 = (wbken_2) ? gnd : 1'bz;
assign wd_44 = (wbken_2) ? gnd : 1'bz;
assign wd_45 = (wbken_2) ? gnd : 1'bz;
assign wd_46 = (wbken_2) ? gnd : 1'bz;
assign wd_47 = (wbken_2) ? gnd : 1'bz;
assign wd_48 = (wbken_2) ? gnd : 1'bz;
assign wd_49 = (wbken_2) ? gnd : 1'bz;
assign wd_50 = (wbken_2) ? gnd : 1'bz;
assign wd_51 = (wbken_2) ? gnd : 1'bz;
assign wd_52 = (wbken_2) ? gnd : 1'bz;
assign wd_53 = (wbken_2) ? gnd : 1'bz;
assign wd_54 = (wbken_2) ? gnd : 1'bz;
assign wd_55 = (wbken_2) ? gnd : 1'bz;
assign wd_56 = (wbken_2) ? gnd : 1'bz;
assign wd_57 = (wbken_2) ? gnd : 1'bz;
assign wd_58 = (wbken_2) ? gnd : 1'bz;
assign wd_59 = (wbken_2) ? gnd : 1'bz;
assign wd_60 = (wbken_2) ? gnd : 1'bz;
assign wd_61 = (wbken_2) ? gnd : 1'bz;
assign wd_62 = (wbken_2) ? gnd : 1'bz;
assign wd_63 = (wbken_2) ? gnd : 1'bz;

// OB.NET (100) - olpd[3-15] : ldp1q
ldp1q olpd_from_3_to_15_inst_0
(
	.q(olpd_3), // OUT
	.d(din_3), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_1
(
	.q(olpd_4), // OUT
	.d(din_4), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_2
(
	.q(olpd_5), // OUT
	.d(din_5), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_3
(
	.q(olpd_6), // OUT
	.d(din_6), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_4
(
	.q(olpd_7), // OUT
	.d(din_7), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_5
(
	.q(olpd_8), // OUT
	.d(din_8), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_6
(
	.q(olpd_9), // OUT
	.d(din_9), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_7
(
	.q(olpd_10), // OUT
	.d(din_10), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_8
(
	.q(olpd_11), // OUT
	.d(din_11), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_9
(
	.q(olpd_12), // OUT
	.d(din_12), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_10
(
	.q(olpd_13), // OUT
	.d(din_13), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_11
(
	.q(olpd_14), // OUT
	.d(din_14), // IN
	.g(olp1w)  // IN
);
ldp1q olpd_from_3_to_15_inst_12
(
	.q(olpd_15), // OUT
	.d(din_15), // IN
	.g(olp1w)  // IN
);

// OB.NET (101) - olpd[16-23] : ldp1q
ldp1q olpd_from_16_to_23_inst_0
(
	.q(olpd_16), // OUT
	.d(din_0), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_1
(
	.q(olpd_17), // OUT
	.d(din_1), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_2
(
	.q(olpd_18), // OUT
	.d(din_2), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_3
(
	.q(olpd_19), // OUT
	.d(din_3), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_4
(
	.q(olpd_20), // OUT
	.d(din_4), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_5
(
	.q(olpd_21), // OUT
	.d(din_5), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_6
(
	.q(olpd_22), // OUT
	.d(din_6), // IN
	.g(olp2w)  // IN
);
ldp1q olpd_from_16_to_23_inst_7
(
	.q(olpd_23), // OUT
	.d(din_7), // IN
	.g(olp2w)  // IN
);

// OB.NET (105) - olpd1[3-21] : mx2
mx2 olpd1_from_3_to_21_inst_0
(
	.z(olpd1_3), // OUT
	.a0(olpd_3), // IN
	.a1(link_0), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_1
(
	.z(olpd1_4), // OUT
	.a0(olpd_4), // IN
	.a1(link_1), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_2
(
	.z(olpd1_5), // OUT
	.a0(olpd_5), // IN
	.a1(link_2), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_3
(
	.z(olpd1_6), // OUT
	.a0(olpd_6), // IN
	.a1(link_3), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_4
(
	.z(olpd1_7), // OUT
	.a0(olpd_7), // IN
	.a1(link_4), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_5
(
	.z(olpd1_8), // OUT
	.a0(olpd_8), // IN
	.a1(link_5), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_6
(
	.z(olpd1_9), // OUT
	.a0(olpd_9), // IN
	.a1(link_6), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_7
(
	.z(olpd1_10), // OUT
	.a0(olpd_10), // IN
	.a1(link_7), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_8
(
	.z(olpd1_11), // OUT
	.a0(olpd_11), // IN
	.a1(link_8), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_9
(
	.z(olpd1_12), // OUT
	.a0(olpd_12), // IN
	.a1(link_9), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_10
(
	.z(olpd1_13), // OUT
	.a0(olpd_13), // IN
	.a1(link_10), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_11
(
	.z(olpd1_14), // OUT
	.a0(olpd_14), // IN
	.a1(link_11), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_12
(
	.z(olpd1_15), // OUT
	.a0(olpd_15), // IN
	.a1(link_12), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_13
(
	.z(olpd1_16), // OUT
	.a0(olpd_16), // IN
	.a1(link_13), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_14
(
	.z(olpd1_17), // OUT
	.a0(olpd_17), // IN
	.a1(link_14), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_15
(
	.z(olpd1_18), // OUT
	.a0(olpd_18), // IN
	.a1(link_15), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_16
(
	.z(olpd1_19), // OUT
	.a0(olpd_19), // IN
	.a1(link_16), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_17
(
	.z(olpd1_20), // OUT
	.a0(olpd_20), // IN
	.a1(link_17), // IN
	.s(pclink)  // IN
);
mx2 olpd1_from_3_to_21_inst_18
(
	.z(olpd1_21), // OUT
	.a0(olpd_21), // IN
	.a1(link_18), // IN
	.s(pclink)  // IN
);

// OB.NET (109) - olp[3] : upcnt
upcnt olp_index_3_inst
(
	.q(olp_3), // IO
	.co(olpco_3), // IO
	.d(olpd1_3), // IN
	.clk(clk), // IN
	.ci(pcinc), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (110) - olp[4-9] : upcnt
upcnt olp_from_4_to_9_inst_0
(
	.q(olp_4), // IO
	.co(olpco_4), // IO
	.d(olpd1_4), // IN
	.clk(clk), // IN
	.ci(olpco_3), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_4_to_9_inst_1
(
	.q(olp_5), // IO
	.co(olpco_5), // IO
	.d(olpd1_5), // IN
	.clk(clk), // IN
	.ci(olpco_4), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_4_to_9_inst_2
(
	.q(olp_6), // IO
	.co(olpco_6), // IO
	.d(olpd1_6), // IN
	.clk(clk), // IN
	.ci(olpco_5), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_4_to_9_inst_3
(
	.q(olp_7), // IO
	.co(olpco_7), // IO
	.d(olpd1_7), // IN
	.clk(clk), // IN
	.ci(olpco_6), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_4_to_9_inst_4
(
	.q(olp_8), // IO
	.co(olpco_8), // IO
	.d(olpd1_8), // IN
	.clk(clk), // IN
	.ci(olpco_7), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_4_to_9_inst_5
(
	.q(olp_9), // IO
	.co(olpco_9), // IO
	.d(olpd1_9), // IN
	.clk(clk), // IN
	.ci(olpco_8), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (111) - olp[10] : upcnt
upcnt olp_index_10_inst
(
	.q(olp_10), // IO
	.co(olpco_10), // IO
	.d(olpd1_10), // IN
	.clk(clk), // IN
	.ci(plac9), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (112) - olp[11-16] : upcnt
upcnt olp_from_11_to_16_inst_0
(
	.q(olp_11), // IO
	.co(olpco_11), // IO
	.d(olpd1_11), // IN
	.clk(clk), // IN
	.ci(olpco_10), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_11_to_16_inst_1
(
	.q(olp_12), // IO
	.co(olpco_12), // IO
	.d(olpd1_12), // IN
	.clk(clk), // IN
	.ci(olpco_11), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_11_to_16_inst_2
(
	.q(olp_13), // IO
	.co(olpco_13), // IO
	.d(olpd1_13), // IN
	.clk(clk), // IN
	.ci(olpco_12), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_11_to_16_inst_3
(
	.q(olp_14), // IO
	.co(olpco_14), // IO
	.d(olpd1_14), // IN
	.clk(clk), // IN
	.ci(olpco_13), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_11_to_16_inst_4
(
	.q(olp_15), // IO
	.co(olpco_15), // IO
	.d(olpd1_15), // IN
	.clk(clk), // IN
	.ci(olpco_14), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_11_to_16_inst_5
(
	.q(olp_16), // IO
	.co(olpco_16), // IO
	.d(olpd1_16), // IN
	.clk(clk), // IN
	.ci(olpco_15), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (113) - olp[17] : upcnt
upcnt olp_index_17_inst
(
	.q(olp_17), // IO
	.co(olpco_17), // IO
	.d(olpd1_17), // IN
	.clk(clk), // IN
	.ci(plac16), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (114) - olp[18-21] : upcnt
upcnt olp_from_18_to_21_inst_0
(
	.q(olp_18), // IO
	.co(olpco_18), // IO
	.d(olpd1_18), // IN
	.clk(clk), // IN
	.ci(olpco_17), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_18_to_21_inst_1
(
	.q(olp_19), // IO
	.co(olpco_19), // IO
	.d(olpd1_19), // IN
	.clk(clk), // IN
	.ci(olpco_18), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_18_to_21_inst_2
(
	.q(olp_20), // IO
	.co(olpco_20), // IO
	.d(olpd1_20), // IN
	.clk(clk), // IN
	.ci(olpco_19), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);
upcnt olp_from_18_to_21_inst_3
(
	.q(olp_21), // IO
	.co(olpco_21), // IO
	.d(olpd1_21), // IN
	.clk(clk), // IN
	.ci(olpco_20), // IN
	.ld(olpld), // IN
	.resl(resetl)  // IN
);

// OB.NET (116) - plac9 : an8
assign plac9 = pcinc & olp_3 & olp_4 & olp_5 & olp_6 & olp_7 & olp_8 & olp_9;

// OB.NET (117) - plac16 : an8
assign plac16 = plac9 & olp_10 & olp_11 & olp_12 & olp_13 & olp_14 & olp_15 & olp_16;

// OB.NET (118) - olpcu[9] : dummy

// OB.NET (119) - olpcu[16] : dummy

// OB.NET (121) - olpldi : nr2
assign olpldi = ~(pcld | pclink);

// OB.NET (122) - olpld : ivh
assign olpld = ~olpldi;

// OB.NET (129) - sum[0] : ha1
ha1 sum_index_0_inst
(
	.s(sum_0), // OUT
	.co(dco_0), // OUT
	.a(skip_0), // IN
	.b(data_0)  // IN
);

// OB.NET (130) - sum[1-2] : fa1
fa1 sum_from_1_to_2_inst_0
(
	.s(sum_1), // OUT
	.co(dco_1), // OUT
	.ci(skip_1), // IN
	.a(data_1), // IN
	.b(dco_0)  // IN
);
fa1 sum_from_1_to_2_inst_1
(
	.s(sum_2), // OUT
	.co(dco_2), // OUT
	.ci(skip_2), // IN
	.a(data_2), // IN
	.b(dco_1)  // IN
);

// OB.NET (134) - dmainc : fd1q
fd1q dmainc_inst
(
	.q(dmainc), // OUT
	.d(dmaen), // IN
	.cp(clk)  // IN
);

// OB.NET (135) - ldinc : or2
assign ldinc = obld_0_obuf | dmainc;

// OB.NET (137) - d1[0-2] : mx2
mx2 d1_from_0_to_2_inst_0
(
	.z(d1_0), // OUT
	.a0(sum_0), // IN
	.a1(d_43), // IN
	.s(obld_0_obuf)  // IN
);
mx2 d1_from_0_to_2_inst_1
(
	.z(d1_1), // OUT
	.a0(sum_1), // IN
	.a1(d_44), // IN
	.s(obld_0_obuf)  // IN
);
mx2 d1_from_0_to_2_inst_2
(
	.z(d1_2), // OUT
	.a0(sum_2), // IN
	.a1(d_45), // IN
	.s(obld_0_obuf)  // IN
);

// OB.NET (138) - data[0-2] : slatch
slatch data_from_0_to_2_inst_0
(
	.q(data_0), // IO
	.d(d1_0), // IN
	.clk(clk), // IN
	.en(ldinc)  // IN
);
slatch data_from_0_to_2_inst_1
(
	.q(data_1), // IO
	.d(d1_1), // IN
	.clk(clk), // IN
	.en(ldinc)  // IN
);
slatch data_from_0_to_2_inst_2
(
	.q(data_2), // IO
	.d(d1_2), // IN
	.clk(clk), // IN
	.en(ldinc)  // IN
);

// OB.NET (142) - dci : an2
assign dci = dco_2 & dmainc;

// OB.NET (143) - data[3] : upcnt
upcnt data_index_3_inst
(
	.q(data_3), // IO
	.co(dco_3), // IO
	.d(d_46), // IN
	.clk(clk), // IN
	.ci(dci), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (144) - data[4-9] : upcnt
upcnt data_from_4_to_9_inst_0
(
	.q(data_4), // IO
	.co(dco_4), // IO
	.d(d_47), // IN
	.clk(clk), // IN
	.ci(dco_3), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_4_to_9_inst_1
(
	.q(data_5), // IO
	.co(dco_5), // IO
	.d(d_48), // IN
	.clk(clk), // IN
	.ci(dco_4), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_4_to_9_inst_2
(
	.q(data_6), // IO
	.co(dco_6), // IO
	.d(d_49), // IN
	.clk(clk), // IN
	.ci(dco_5), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_4_to_9_inst_3
(
	.q(data_7), // IO
	.co(dco_7), // IO
	.d(d_50), // IN
	.clk(clk), // IN
	.ci(dco_6), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_4_to_9_inst_4
(
	.q(data_8), // IO
	.co(dco_8), // IO
	.d(d_51), // IN
	.clk(clk), // IN
	.ci(dco_7), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_4_to_9_inst_5
(
	.q(data_9), // IO
	.co(dco_9), // IO
	.d(d_52), // IN
	.clk(clk), // IN
	.ci(dco_8), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (145) - data[10] : upcnt
upcnt data_index_10_inst
(
	.q(data_10), // IO
	.co(dco_10), // IO
	.d(d_53), // IN
	.clk(clk), // IN
	.ci(dlac9), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (146) - data[11-16] : upcnt
upcnt data_from_11_to_16_inst_0
(
	.q(data_11), // IO
	.co(dco_11), // IO
	.d(d_54), // IN
	.clk(clk), // IN
	.ci(dco_10), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_11_to_16_inst_1
(
	.q(data_12), // IO
	.co(dco_12), // IO
	.d(d_55), // IN
	.clk(clk), // IN
	.ci(dco_11), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_11_to_16_inst_2
(
	.q(data_13), // IO
	.co(dco_13), // IO
	.d(d_56), // IN
	.clk(clk), // IN
	.ci(dco_12), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_11_to_16_inst_3
(
	.q(data_14), // IO
	.co(dco_14), // IO
	.d(d_57), // IN
	.clk(clk), // IN
	.ci(dco_13), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_11_to_16_inst_4
(
	.q(data_15), // IO
	.co(dco_15), // IO
	.d(d_58), // IN
	.clk(clk), // IN
	.ci(dco_14), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_11_to_16_inst_5
(
	.q(data_16), // IO
	.co(dco_16), // IO
	.d(d_59), // IN
	.clk(clk), // IN
	.ci(dco_15), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (147) - data[17] : upcnt
upcnt data_index_17_inst
(
	.q(data_17), // IO
	.co(dco_17), // IO
	.d(d_60), // IN
	.clk(clk), // IN
	.ci(dlac16), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (148) - data[18-20] : upcnt
upcnt data_from_18_to_20_inst_0
(
	.q(data_18), // IO
	.co(dco_18), // IO
	.d(d_61), // IN
	.clk(clk), // IN
	.ci(dco_17), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_18_to_20_inst_1
(
	.q(data_19), // IO
	.co(dco_19), // IO
	.d(d_62), // IN
	.clk(clk), // IN
	.ci(dco_18), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);
upcnt data_from_18_to_20_inst_2
(
	.q(data_20), // IO
	.co(dco_20), // IO
	.d(d_63), // IN
	.clk(clk), // IN
	.ci(dco_19), // IN
	.ld(obld_0_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (149) - dlac9 : an8
assign dlac9 = dci & data_3 & data_4 & data_5 & data_6 & data_7 & data_8 & data_9;

// OB.NET (150) - dlac16 : an8
assign dlac16 = dlac9 & data_10 & data_11 & data_12 & data_13 & data_14 & data_15 & data_16;

// OB.NET (151) - dcou[9] : dummy

// OB.NET (152) - dcou[16] : dummy

// OB.NET (156) - obfws : an2
assign obfws = obfw & wet;

// OB.NET (157) - obf : ldp1q
ldp1q obf_inst
(
	.q(obf), // OUT
	.d(din_0), // IN
	.g(obfws)  // IN
);

// OB.NET (161) - iwidth[0] : dncnt
dncnt iwidth_index_0_inst
(
	.q(iwidth_0), // IO
	.co(wco_0), // IO
	.d(d_28), // IN
	.clk(clk), // IN
	.ci(dmaen), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (162) - iwidth[1-9] : dncnt
dncnt iwidth_from_1_to_9_inst_0
(
	.q(iwidth_1), // IO
	.co(wco_1), // IO
	.d(d_29), // IN
	.clk(clk), // IN
	.ci(wco_0), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_1
(
	.q(iwidth_2), // IO
	.co(wco_2), // IO
	.d(d_30), // IN
	.clk(clk), // IN
	.ci(wco_1), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_2
(
	.q(iwidth_3), // IO
	.co(wco_3), // IO
	.d(d_31), // IN
	.clk(clk), // IN
	.ci(wco_2), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_3
(
	.q(iwidth_4), // IO
	.co(wco_4), // IO
	.d(d_32), // IN
	.clk(clk), // IN
	.ci(wco_3), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_4
(
	.q(iwidth_5), // IO
	.co(wco_5), // IO
	.d(d_33), // IN
	.clk(clk), // IN
	.ci(wco_4), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_5
(
	.q(iwidth_6), // IO
	.co(wco_6), // IO
	.d(d_34), // IN
	.clk(clk), // IN
	.ci(wco_5), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_6
(
	.q(iwidth_7), // IO
	.co(wco_7), // IO
	.d(d_35), // IN
	.clk(clk), // IN
	.ci(wco_6), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_7
(
	.q(iwidth_8), // IO
	.co(wco_8), // IO
	.d(d_36), // IN
	.clk(clk), // IN
	.ci(wco_7), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);
dncnt iwidth_from_1_to_9_inst_8
(
	.q(iwidth_9), // IO
	.co(wco_9), // IO
	.d(d_37), // IN
	.clk(clk), // IN
	.ci(wco_8), // IN
	.ld(obld_1_obuf), // IN
	.resl(resetl)  // IN
);

// OB.NET (170) - bit0 : an2
assign bit0 = iwidth_0 & scaled_obuf;

// OB.NET (171) - iwidthz0 : nr6
assign iwidthz0 = ~(bit0 | iwidth_1 | iwidth_2 | iwidth_3 | iwidth_4 | iwidth_5);

// OB.NET (172) - iwidthz1 : nr4
assign iwidthz1 = ~(iwidth_6 | iwidth_7 | iwidth_8 | iwidth_9);

// OB.NET (173) - iwidthnz : nd2
assign iwidthnz = ~(iwidthz0 & iwidthz1);

// OB.NET (174) - iwidthz : iv
assign iwidthz = ~iwidthnz;

// OB.NET (376) - q0 : fd4q
fd4q q0_inst
(
	.q(q0), // OUT
	.d(d0), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// OB.NET (377) - q1 : fd2q
fd2q q1_inst
(
	.q(q1), // OUT
	.d(d1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (378) - q2 : fd2q
fd2q q2_inst
(
	.q(q2), // OUT
	.d(d2), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (379) - q3i : fd2q
fd2q q3i_inst
(
	.q(q3i), // OUT
	.d(d3), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (380) - q3 : nivm
assign q3 = q3i;

// OB.NET (381) - q4i : fd2q
fd2q q4i_inst
(
	.q(q4i), // OUT
	.d(d4), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (382) - q4 : nivh
assign q4 = q4i;

// OB.NET (383) - q5 : fd2q
fd2q q5_inst
(
	.q(q5), // OUT
	.d(d5), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (384) - q7 : fd2q
fd2q q7_inst
(
	.q(q7), // OUT
	.d(d7), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (385) - q8 : fd2q
fd2q q8_inst
(
	.q(q8), // OUT
	.d(d8), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (386) - q9 : fd2q
fd2q q9_inst
(
	.q(q9), // OUT
	.d(d9), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (388) - d00 : nd2
assign d00 = ~(q0 & notstartover);

// OB.NET (389) - d01 : nd6
assign d01 = ~(q3 & notbitob & notscaled & notgrpob & notbranchob & vcc);

// OB.NET (390) - d0 : nd2
assign d0 = ~(d00 & d01);

// OB.NET (392) - d10 : nd2
assign d10 = ~(q0 & startover);

// OB.NET (393) - d11 : nd2
assign d11 = ~(q1 & notobmack);

// OB.NET (394) - d12 : nd3
assign d12 = ~(q3 & bitob & bitnotinrange);

// OB.NET (395) - d13 : nd3
assign d13 = ~(q3 & branchob & cctrue);

// OB.NET (396) - d14 : nd2
assign d14 = ~(q7 & obfw);

// OB.NET (397) - d15 : nd2
assign d15 = ~(q9 & scalednotinrange);

// OB.NET (398) - d16 : nd6
assign d16 = ~(q4 & iwidthz & wbkdone & obmack & bitob & vcc);

// OB.NET (399) - d17 : nd6
assign d17 = ~(q4 & offscreen & wbkdone & obmack & bitob & vcc);

// OB.NET (400) - d18 : nd2
assign d18 = ~(q5 & obmack);

// OB.NET (401) - d19 : nd3
assign d19 = ~(q3 & branchob & ccfalse);

// OB.NET (402) - d1a : nd6
assign d1a = ~(d10 & d11 & d12 & d13 & d14 & d15);

// OB.NET (403) - d1b : nd4
assign d1b = ~(d16 & d17 & d18 & d19);

// OB.NET (404) - d1 : or2
assign d1 = d1a | d1b;

// OB.NET (406) - d20 : nd2
assign d20 = ~(q1 & obmack);

// OB.NET (407) - d21 : nd2
assign d21 = ~(q2 & notobmack);

// OB.NET (408) - d23 : nd2
assign d23 = ~(q2 & notobdone);

// OB.NET (409) - d2 : nd3
assign d2 = ~(d20 & d21 & d23);

// OB.NET (411) - d30 : nd3
assign d30 = ~(q2 & obdone & obmack);

// OB.NET (412) - d31 : nd6
assign d31 = ~(q3 & bitob & geq & heightnz & notobmack & vcc);

// OB.NET (413) - d32 : nd3
assign d32 = ~(q3 & scaled_obuf & notobmack);

// OB.NET (414) - d3 : nd3
assign d3 = ~(d30 & d31 & d32);

// OB.NET (416) - d40 : nd6
assign d40 = ~(q3 & bitob & geq & heightnz & obmack & vcc);

// OB.NET (417) - d41 : nd3
assign d41 = ~(q4 & onscreen & iwidthnz);

// OB.NET (418) - d42 : nd4
assign d42 = ~(q4 & iwidthz & wbkdone & notobmack);

// OB.NET (419) - d43 : nd3
assign d43 = ~(q4 & iwidthz & notwbkdone);

// OB.NET (420) - d44 : nd3
assign d44 = ~(q9 & scaledinrange & obmack);

// OB.NET (421) - d45 : nd4
assign d45 = ~(q4 & offscreen & wbkdone & notobmack);

// OB.NET (422) - d46 : nd3
assign d46 = ~(q4 & offscreen & notwbkdone);

// OB.NET (423) - d4 : nd8
assign d4 = ~(d40 & d41 & d42 & d43 & d44 & d45 & d46 & vcc);

// OB.NET (425) - d51 : nd6
assign d51 = ~(q4 & iwidthz & wbkdone & obmack & scaled_obuf & vcc);

// OB.NET (426) - d52 : nd2
assign d52 = ~(q5 & notobmack);

// OB.NET (427) - d53 : nd6
assign d53 = ~(q4 & offscreen & wbkdone & obmack & scaled_obuf & vcc);

// OB.NET (428) - d5 : nd3
assign d5 = ~(d51 & d52 & d53);

// OB.NET (430) - d70 : nd2
assign d70 = ~(q3 & grpob);

// OB.NET (431) - d71 : nd2
assign d71 = ~(q7 & notobfw);

// OB.NET (432) - d7 : nd2
assign d7 = ~(d70 & d71);

// OB.NET (434) - d80 : nd3
assign d80 = ~(q3 & scaled_obuf & obmack);

// OB.NET (435) - d81 : nd2
assign d81 = ~(q8 & notobmack);

// OB.NET (436) - d8 : nd2
assign d8 = ~(d80 & d81);

// OB.NET (438) - d90 : nd2
assign d90 = ~(q8 & obmack);

// OB.NET (439) - d91 : nd3
assign d91 = ~(q9 & scaledinrange & notobmack);

// OB.NET (440) - d9 : nd2
assign d9 = ~(d90 & d91);

// OB.NET (442) - pcld : iv
assign pcld = ~d10;

// OB.NET (447) - obr0 : nr4
assign obr0 = ~(q1 | q5 | q8 | q9);

// OB.NET (448) - obr1 : nd2
assign obr1 = ~(q3 & bitob);

// OB.NET (449) - obr2 : nd2
assign obr2 = ~(q3 & branchob);

// OB.NET (450) - obr3 : nd2
assign obr3 = ~(q3 & scaled_obuf);

// OB.NET (451) - obr4 : nd2
assign obr4 = ~(q2 & obbr0);

// OB.NET (452) - obr5 : nd4
assign obr5 = ~(q4 & onscreen & iwidthnz & obbr1);

// OB.NET (453) - obr6 : nd2
assign obr6 = ~(q4 & offscreen);

// OB.NET (454) - obr7 : nd2
assign obr7 = ~(q4 & iwidthz);

// OB.NET (455) - obbreq : nd8
assign obbreq_obuf = ~(obr0 & obr1 & obr2 & obr3 & obr4 & obr5 & obr6 & obr7);

// OB.NET (456) - obbr0 : or2
assign obbr0 = obdone | hold;

// OB.NET (457) - obbr1 : or2
assign obbr1 = obdready | hold;

// OB.NET (459) - omrq0 : nr2
assign omrq0 = ~(q1 | q5);

// OB.NET (460) - omrq1 : nd4
assign omrq1 = ~(q3 & bitob & geq & heightnz);

// OB.NET (461) - omrq2 : nd4
assign omrq2 = ~(q4 & onscreen & iwidthnz & obdready);

// OB.NET (462) - omrq3 : nd3
assign omrq3 = ~(q4 & iwidthz & wbkdone);

// OB.NET (463) - omrq4 : nd2
assign omrq4 = ~(q9 & scaledinrange);

// OB.NET (464) - omrq5 : nd2
assign omrq5 = ~(q2 & obdone);

// OB.NET (465) - omrq6 : nd3
assign omrq6 = ~(q4 & offscreen & wbkdone);

// OB.NET (466) - obmreq : nd8
assign obmreq = ~(omrq0 & omrq1 & omrq2 & omrq3 & omrq4 & omrq5 & omrq6 & obr3);

// OB.NET (468) - obldd[0] : iv
assign obldd_0 = ~d20;

// OB.NET (469) - obldd[1] : iv
assign obldd_1 = ~d30;

// OB.NET (470) - obldd[2] : iv
assign obldd_2 = ~d80;

// OB.NET (476) - pc1en : iv
assign pc1en = ~d30;

// OB.NET (477) - pc2en0 : nd2
assign pc2en0 = ~(q5 & obmack);

// OB.NET (478) - pc2en : nd2
assign pc2en = ~(d80 & pc2en0);

// OB.NET (480) - dmaen0 : nd6
assign dmaen0 = ~(q4 & onscreen & iwidthnz & obdready & obmack & vcc);

// OB.NET (481) - dmaen : nd3
assign dmaen = ~(d40 & dmaen0 & d44);

// OB.NET (482) - obdlatchd : niv
assign obdlatchd = dmaen;

// OB.NET (484) - dsel0 : nd2
assign dsel0 = ~(q3 & bitob);

// OB.NET (485) - dsel1 : iv
assign dsel1 = ~q9;

// OB.NET (486) - dsel2 : nd3
assign dsel2 = ~(q4 & onscreen & iwidthnz);

// OB.NET (487) - dataseli : nd3
assign dataseli = ~(dsel0 & dsel1 & dsel2);

// OB.NET (488) - datasel : nivu
assign datasel = dataseli;

// OB.NET (490) - pclinki : nd6
assign pclinki = ~(d12 & d13 & d15 & d16 & d17 & d18);

// OB.NET (491) - pclink : nivh
assign pclink = pclinki;

// OB.NET (492) - pcinc : nd2
assign pcinc = ~(d70 & d19);

// OB.NET (494) - grpintreq : iv
assign grpintreq_obuf = ~d70;

// OB.NET (495) - obint : an3
assign obint_obuf = q3 & stopob & ypos_0;

// OB.NET (496) - startref : an2
assign startref_obuf = q3 & stopob;

// OB.NET (498) - obrw1 : iv
assign obrw1 = ~q5;

// OB.NET (499) - obrw : an3
assign obrw = obrw1 & omrq3 & omrq6;

// OB.NET (504) - wbkstart : nd2
assign wbkstart_obuf = ~(d40 & omrq4);

// OB.NET (506) - wbken2d : iv
assign wbken2d = ~pc2en0;

// OB.NET (514) - wr : iv
assign wr = ~rw;

// OB.NET (515) - eback : or2
assign eback = blback | grpback;

// OB.NET (516) - ewr : an4
assign ewr = eback & wr & mack & mreq;

// OB.NET (517) - wbken0d : nr2
assign wbken0d = ~(wbken2d | ewr);

// OB.NET (519) - xldi : nd2
assign xldi = ~(d40 & d80);

// OB.NET (520) - xld : nivm
assign xld_obuf = xldi;

// OB.NET (526) - typel[0-2] : iv
assign typel_0 = ~type_0;
assign typel_1 = ~type_1;
assign typel_2 = ~type_2;

// OB.NET (528) - notbitob : nd3
assign notbitob = ~(typel_2 & typel_1 & typel_0);

// OB.NET (529) - notscaled : nd3
assign notscaled = ~(typel_2 & typel_1 & type_0);

// OB.NET (530) - notgrpob : nd3
assign notgrpob = ~(typel_2 & type_1 & typel_0);

// OB.NET (531) - notbranchob : nd3
assign notbranchob = ~(typel_2 & type_1 & type_0);

// OB.NET (532) - notstopob : nd3
assign notstopob = ~(type_2 & typel_1 & typel_0);

// OB.NET (534) - bitob : ivm
assign bitob = ~notbitob;

// OB.NET (535) - scaled : ivm
assign scaled_obuf = ~notscaled;

// OB.NET (536) - grpob : iv
assign grpob = ~notgrpob;

// OB.NET (537) - branchob : iv
assign branchob = ~notbranchob;

// OB.NET (538) - stopob : iv
assign stopob = ~notstopob;

// OB.NET (543) - heightl[0-2] : iv
assign heightl_0 = ~newheight_0;
assign heightl_1 = ~newheight_1;
assign heightl_2 = ~newheight_2;

// OB.NET (545) - cctrue0 : nd4
assign cctrue0 = ~(heightl_2 & heightl_1 & heightl_0 & vey_obuf);

// OB.NET (546) - cctrue1 : nd4
assign cctrue1 = ~(heightl_2 & heightl_1 & heightl_0 & y7ff);

// OB.NET (547) - cctrue2 : nd4
assign cctrue2 = ~(heightl_2 & heightl_1 & newheight_0 & vly_obuf);

// OB.NET (548) - cctrue3 : nd4
assign cctrue3 = ~(heightl_2 & newheight_1 & heightl_0 & vgy_obuf);

// OB.NET (549) - cctrue4 : nd4
assign cctrue4 = ~(heightl_2 & newheight_1 & newheight_0 & obf);

// OB.NET (550) - cctrue5 : nd4
assign cctrue5 = ~(newheight_2 & heightl_1 & heightl_0 & hcb_10);

// OB.NET (551) - cctrue : nd6
assign cctrue = ~(cctrue0 & cctrue1 & cctrue2 & cctrue3 & cctrue4 & cctrue5);

// OB.NET (552) - ccfalse : iv
assign ccfalse = ~cctrue;

// OB.NET (554) - depthl[0-2] : iv
assign depthl_0 = ~depth_0;
assign depthl_1 = ~depth_1;
assign depthl_2 = ~depth_2;

// OB.NET (556) - mode1 : an3h
assign mode1_obuf = depthl_2 & depthl_1 & depthl_0;

// OB.NET (557) - mode2 : an3h
assign mode2_obuf = depthl_2 & depthl_1 & depth_0;

// OB.NET (558) - mode4 : an3h
assign mode4_obuf = depthl_2 & depth_1 & depthl_0;

// OB.NET (559) - mode8i : nd3
assign mode8i = ~(depthl_2 & depth_1 & depth_0);

// OB.NET (560) - mode8 : ivh
assign mode8_obuf = ~mode8i;

// OB.NET (561) - mode16 : an3
assign mode16_obuf = depth_2 & depthl_1 & depthl_0;

// OB.NET (562) - mode24 : an3
assign mode24_obuf = depth_2 & depthl_1 & depth_0;

// OB.NET (566) - start1 : fd2q
fd2q start1_inst
(
	.q(start1), // OUT
	.d(start), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (567) - start2 : fd2q
fd2q start2_inst
(
	.q(start2), // OUT
	.d(start1), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (568) - start2l : iv
assign start2l = ~start2;

// OB.NET (569) - sstart : an2
assign sstart = start1 & start2l;

// OB.NET (575) - ov1 : nd2
assign ov1 = ~(sstart & q0l);

// OB.NET (576) - ov2 : nd2
assign ov2 = ~(overrun & q0l);

// OB.NET (577) - overrund : nd2
assign overrund = ~(ov1 & ov2);

// OB.NET (578) - overrun : fd1q
fd1q overrun_inst
(
	.q(overrun), // OUT
	.d(overrund), // IN
	.cp(clk)  // IN
);

// OB.NET (579) - notstartover : nr2
assign notstartover = ~(overrun | sstart);

// OB.NET (580) - startover : iv
assign startover = ~notstartover;

// OB.NET (581) - q0l : iv
assign q0l = ~q0;

// OB.NET (583) - notobmack : nd2x3
assign notobmack = ~(obback & mack);

// OB.NET (584) - obmack : ivh
assign obmack = ~notobmack;

// OB.NET (588) - obeni : or2
assign obeni = obback | refack;

// OB.NET (589) - oben : nivu2
assign oben = obeni;

// OB.NET (590) - rw : ts
assign rw = (oben) ? obrw : 1'bz;

// OB.NET (591) - mreq : tsm
assign mreq = (obback) ? obmreq : 1'bz;

// OB.NET (592) - justify : ts
assign justify = (oben) ? gnd : 1'bz;

// OB.NET (593) - w[0-2] : ts
assign w_0 = (oben) ? gnd : 1'bz;
assign w_1 = (oben) ? gnd : 1'bz;
assign w_2 = (oben) ? gnd : 1'bz;

// OB.NET (594) - w[3] : ts
assign w_3 = (oben) ? vcc : 1'bz;

// OB.NET (609) - obdlatch : ack_pipe
ack_pipe obdlatch_inst
(
	.latch(obdlatch_obuf), // IO
	.latchd(obdlatchd), // IN
	.ack(mack), // IN
	.clk(clk), // IN
	.resetl(resetl)  // IN
);

// OB.NET (610) - obldi[0] : ack_pipe
ack_pipe obldi_index_0_inst
(
	.latch(obldi_0), // IO
	.latchd(obldd_0), // IN
	.ack(mack), // IN
	.clk(clk), // IN
	.resetl(resetl)  // IN
);

// OB.NET (611) - obldi[1] : ack_pipe
ack_pipe obldi_index_1_inst
(
	.latch(obldi_1), // IO
	.latchd(obldd_1), // IN
	.ack(mack), // IN
	.clk(clk), // IN
	.resetl(resetl)  // IN
);

// OB.NET (612) - obldi[2] : ack_pipe
ack_pipe obldi_index_2_inst
(
	.latch(obldi_2), // IO
	.latchd(obldd_2), // IN
	.ack(mack), // IN
	.clk(clk), // IN
	.resetl(resetl)  // IN
);

// OB.NET (613) - obld[0] : nivu2
assign obld_0_obuf = obldi_0;

// OB.NET (614) - obld[1] : nivh
assign obld_1_obuf = obldi_1;

// OB.NET (615) - obld[2] : nivh
assign obld_2_obuf = obldi_2;

// OB.NET (617) - oblatch[0-2] : nivu
assign oblatch_0 = obld_0_obuf;
assign oblatch_1 = obld_1_obuf;
assign oblatch_2 = obld_2_obuf;

// OB.NET (619) - wbkeni[0] : fd4q
fd4q wbkeni_index_0_inst
(
	.q(wbkeni_0), // OUT
	.d(wbken0d), // IN
	.cp(clk), // IN
	.sd(resetl)  // IN
);

// OB.NET (620) - wbken[0] : nivu2
assign wbken_0 = wbkeni_0;

// OB.NET (621) - wbkeni[2] : fd2q
fd2q wbkeni_index_2_inst
(
	.q(wbkeni_2), // OUT
	.d(wbken2d), // IN
	.cp(clk), // IN
	.cd(resetl)  // IN
);

// OB.NET (622) - wbken[2] : nivu2
assign wbken_2 = wbkeni_2;

// OB.NET (626) - comp : mag11
mag11 comp_inst
(
	.agb(vgy_obuf), // IO
	.aeb(equ), // IO
	.alb(vly_obuf), // IO
	.a_0(vc_0), // IN
	.a_1(vc_1), // IN
	.a_2(vc_2), // IN
	.a_3(vc_3), // IN
	.a_4(vc_4), // IN
	.a_5(vc_5), // IN
	.a_6(vc_6), // IN
	.a_7(vc_7), // IN
	.a_8(vc_8), // IN
	.a_9(vc_9), // IN
	.a_10(vc_10), // IN
	.b_0(ypos_0), // IN
	.b_1(ypos_1), // IN
	.b_2(ypos_2), // IN
	.b_3(ypos_3), // IN
	.b_4(ypos_4), // IN
	.b_5(ypos_5), // IN
	.b_6(ypos_6), // IN
	.b_7(ypos_7), // IN
	.b_8(ypos_8), // IN
	.b_9(ypos_9), // IN
	.b_10(ypos_10)  // IN
);

// OB.NET (627) - geq : iv
assign geq = ~vly_obuf;

// OB.NET (628) - equ : dummy

// OB.NET (632) - ve[0-10] : en
assign ve_0 = ~(vc_0 ^ ypos_0);
assign ve_1 = ~(vc_1 ^ ypos_1);
assign ve_2 = ~(vc_2 ^ ypos_2);
assign ve_3 = ~(vc_3 ^ ypos_3);
assign ve_4 = ~(vc_4 ^ ypos_4);
assign ve_5 = ~(vc_5 ^ ypos_5);
assign ve_6 = ~(vc_6 ^ ypos_6);
assign ve_7 = ~(vc_7 ^ ypos_7);
assign ve_8 = ~(vc_8 ^ ypos_8);
assign ve_9 = ~(vc_9 ^ ypos_9);
assign ve_10 = ~(vc_10 ^ ypos_10);

// OB.NET (633) - veyl : nd11
nd11 veyl_inst
(
	.q(veyl), // OUT
	.a_0(ve_0), // IN
	.a_1(ve_1), // IN
	.a_2(ve_2), // IN
	.a_3(ve_3), // IN
	.a_4(ve_4), // IN
	.a_5(ve_5), // IN
	.a_6(ve_6), // IN
	.a_7(ve_7), // IN
	.a_8(ve_8), // IN
	.a_9(ve_9), // IN
	.a_10(ve_10)  // IN
);

// OB.NET (634) - vey : iv
assign vey_obuf = ~veyl;

// OB.NET (636) - y7ff0 : nd6
assign y7ff0 = ~(ypos_0 & ypos_1 & ypos_2 & ypos_3 & ypos_4 & ypos_5);

// OB.NET (637) - y7ff1 : nd6
assign y7ff1 = ~(ypos_6 & ypos_7 & ypos_8 & ypos_9 & ypos_10 & vcc);

// OB.NET (638) - y7ff : nr2
assign y7ff = ~(y7ff0 | y7ff1);

// OB.NET (643) - remnz : or3
assign remnz = rem_5 | rem_6 | rem_7;

// OB.NET (645) - bitnotinrange : nd2
assign bitnotinrange = ~(geq & heightnz);

// OB.NET (647) - remheightnz : or2
assign remheightnz = heightnz | remnz;

// OB.NET (648) - scalednotinrange : nd2
assign scalednotinrange = ~(geq & remheightnz);

// OB.NET (649) - scaledinrange : iv
assign scaledinrange = ~scalednotinrange;

// OB.NET (651) - onscreen : iv
assign onscreen = ~offscreen;

// OB.NET (652) - notwbkdone : iv
assign notwbkdone = ~wbkdone;

// OB.NET (653) - notobfw : iv
assign notobfw = ~obfw;

// OB.NET (654) - notobdone : iv
assign notobdone = ~obdone;

// OB.NET (655) - hold : iv
assign hold = ~_release;

// OB.NET (659) - unused : nd6
assign unused = ~(unused & gnd & olpco_21 & wco_9 & dco_20 & gnd);

// OB.NET (663) - olp1[3] : or2
assign olp1_3 = olp_3 | pc1en;

// OB.NET (664) - olp1[4] : or2
assign olp1_4 = olp_4 | pc2en;

// OB.NET (666) - oa[3-4] : mx2
mx2 oa_from_3_to_4_inst_0
(
	.z(oa_3), // OUT
	.a0(olp1_3), // IN
	.a1(data_0), // IN
	.s(datasel)  // IN
);
mx2 oa_from_3_to_4_inst_1
(
	.z(oa_4), // OUT
	.a0(olp1_4), // IN
	.a1(data_1), // IN
	.s(datasel)  // IN
);

// OB.NET (667) - oa[5-21] : mx2
mx2 oa_from_5_to_21_inst_0
(
	.z(oa_5), // OUT
	.a0(olp_5), // IN
	.a1(data_2), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_1
(
	.z(oa_6), // OUT
	.a0(olp_6), // IN
	.a1(data_3), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_2
(
	.z(oa_7), // OUT
	.a0(olp_7), // IN
	.a1(data_4), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_3
(
	.z(oa_8), // OUT
	.a0(olp_8), // IN
	.a1(data_5), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_4
(
	.z(oa_9), // OUT
	.a0(olp_9), // IN
	.a1(data_6), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_5
(
	.z(oa_10), // OUT
	.a0(olp_10), // IN
	.a1(data_7), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_6
(
	.z(oa_11), // OUT
	.a0(olp_11), // IN
	.a1(data_8), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_7
(
	.z(oa_12), // OUT
	.a0(olp_12), // IN
	.a1(data_9), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_8
(
	.z(oa_13), // OUT
	.a0(olp_13), // IN
	.a1(data_10), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_9
(
	.z(oa_14), // OUT
	.a0(olp_14), // IN
	.a1(data_11), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_10
(
	.z(oa_15), // OUT
	.a0(olp_15), // IN
	.a1(data_12), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_11
(
	.z(oa_16), // OUT
	.a0(olp_16), // IN
	.a1(data_13), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_12
(
	.z(oa_17), // OUT
	.a0(olp_17), // IN
	.a1(data_14), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_13
(
	.z(oa_18), // OUT
	.a0(olp_18), // IN
	.a1(data_15), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_14
(
	.z(oa_19), // OUT
	.a0(olp_19), // IN
	.a1(data_16), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_15
(
	.z(oa_20), // OUT
	.a0(olp_20), // IN
	.a1(data_17), // IN
	.s(datasel)  // IN
);
mx2 oa_from_5_to_21_inst_16
(
	.z(oa_21), // OUT
	.a0(olp_21), // IN
	.a1(data_18), // IN
	.s(datasel)  // IN
);

// OB.NET (668) - oa[22] : mx2
mx2 oa_index_22_inst
(
	.z(oa_22), // OUT
	.a0(olpd_22), // IN
	.a1(data_19), // IN
	.s(datasel)  // IN
);

// OB.NET (669) - oa[23] : mx2
mx2 oa_index_23_inst
(
	.z(oa_23), // OUT
	.a0(olpd_23), // IN
	.a1(data_20), // IN
	.s(datasel)  // IN
);

// OB.NET (673) - oa1[0-2] : tsm
assign a_0 = (oben) ? gnd : 1'bz;
assign a_1 = (oben) ? gnd : 1'bz;
assign a_2 = (oben) ? gnd : 1'bz;

// OB.NET (674) - oa1[3-23] : tsm
assign a_3 = (oben) ? oa_3 : 1'bz;
assign a_4 = (oben) ? oa_4 : 1'bz;
assign a_5 = (oben) ? oa_5 : 1'bz;
assign a_6 = (oben) ? oa_6 : 1'bz;
assign a_7 = (oben) ? oa_7 : 1'bz;
assign a_8 = (oben) ? oa_8 : 1'bz;
assign a_9 = (oben) ? oa_9 : 1'bz;
assign a_10 = (oben) ? oa_10 : 1'bz;
assign a_11 = (oben) ? oa_11 : 1'bz;
assign a_12 = (oben) ? oa_12 : 1'bz;
assign a_13 = (oben) ? oa_13 : 1'bz;
assign a_14 = (oben) ? oa_14 : 1'bz;
assign a_15 = (oben) ? oa_15 : 1'bz;
assign a_16 = (oben) ? oa_16 : 1'bz;
assign a_17 = (oben) ? oa_17 : 1'bz;
assign a_18 = (oben) ? oa_18 : 1'bz;
assign a_19 = (oben) ? oa_19 : 1'bz;
assign a_20 = (oben) ? oa_20 : 1'bz;
assign a_21 = (oben) ? oa_21 : 1'bz;
assign a_22 = (oben) ? oa_22 : 1'bz;
assign a_23 = (oben) ? oa_23 : 1'bz;
endmodule
