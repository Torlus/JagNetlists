`include "defs.v"

module arith
(
	inout gpu_dout_0,
	inout gpu_dout_1,
	inout gpu_dout_2,
	output carry_flag,
	output nega_flag,
	output[0:31] result;
	output zero_flag,
	input[0:31] dstdp;
	input[0:31] srcdp;
	input srcd_31,
	input[0:2] alufunc;
	input brlmux_0,
	input brlmux_1,
	input clk,
	input flagld,
	input flagrd,
	input flagwr,
	input[0:31] gpu_din;
	input macop,
	input multsel,
	input multsign,
	input reset_n,
	input resld,
	input ressel_0,
	input ressel_1,
	input ressel_2,
	input rev_sub,
	input satsz_0,
	input satsz_1
);
wire [0:2] alufnc;
wire [0:2] alufnci;
wire [0:15] losrcdp;
wire [0:15] hisrcdp;
wire [0:15] mula;
wire [0:15] mulb;
wire [0:22] mantissa;
wire [0:31] alua;
wire [0:31] aluat;
wire [0:31] alub;
wire [0:31] aluq;
wire [0:31] mant;
wire [0:31] mulq;
wire [0:31] mulqp;
wire [0:31] normi;
wire [0:31] resd;
wire [0:31] satval;
wire [0:31] pack;
wire [0:31] unpack;
wire [0:31] brlq;
wire [0:23] satvallo;
wire one;
wire zero;
wire ressel_n_0;
wire ressel_n_1;
wire brlmuxp_0;
wire brlmuxp_1;
wire flagldp;
wire resldp;
wire multselp;
wire multsignp;
wire resselp_0;
wire resselp_1;
wire resselp_2;
wire resselp_n_0;
wire rev_subp;
wire macop_p;
wire macop_ppt;
wire macop_pp;
wire satszp_0;
wire satszp_1;
wire mantmodei;
wire mantmode;
wire addtosubi_n;
wire alufunc_n_1;
wire alufn_1;
wire mulq_0;
wire mulq_1;
wire mulq_2;
wire mulq_3;
wire mulq_4;
wire mulq_5;
wire mulq_6;
wire mulq_7;
wire mulq_8;
wire mulq_9;
wire mulq_10;
wire mulq_11;
wire mulq_12;
wire mulq_13;
wire mulq_14;
wire mulq_15;
wire mulq_16;
wire mulq_17;
wire mulq_18;
wire mulq_19;
wire mulq_20;
wire mulq_21;
wire mulq_22;
wire mulq_23;
wire mulq_24;
wire mulq_25;
wire mulq_26;
wire mulq_27;
wire mulq_28;
wire mulq_29;
wire mulq_30;
wire mulq_31;
wire srcdp_0;
wire srcdp_1;
wire srcdp_2;
wire srcdp_3;
wire srcdp_4;
wire srcdp_5;
wire srcdp_6;
wire srcdp_7;
wire srcdp_8;
wire srcdp_9;
wire srcdp_10;
wire srcdp_11;
wire srcdp_12;
wire srcdp_13;
wire srcdp_14;
wire srcdp_15;
wire srcdp_16;
wire srcdp_17;
wire srcdp_18;
wire srcdp_19;
wire srcdp_20;
wire srcdp_21;
wire srcdp_22;
wire srcdp_23;
wire srcdp_24;
wire srcdp_25;
wire srcdp_26;
wire srcdp_27;
wire srcdp_28;
wire srcdp_29;
wire srcdp_30;
wire srcdp_31;
wire topset_31;
wire topset_30;
wire inh_30;
wire topset_25;
wire topset_26;
wire topset_27;
wire topset_28;
wire topset_29;
wire inh_25;
wire inh_26;
wire inh_27;
wire inh_28;
wire inh_29;
wire topset_24;
wire inh_24;
wire topset_17;
wire topset_18;
wire topset_19;
wire topset_20;
wire topset_21;
wire topset_22;
wire topset_23;
wire inh_17;
wire inh_18;
wire inh_19;
wire inh_20;
wire inh_21;
wire inh_22;
wire inh_23;
wire topset_16;
wire inh_16;
wire topset_9;
wire topset_10;
wire topset_11;
wire topset_12;
wire topset_13;
wire topset_14;
wire topset_15;
wire inh_9;
wire inh_10;
wire inh_11;
wire inh_12;
wire inh_13;
wire inh_14;
wire inh_15;
wire topset_8;
wire inh_8;
wire topset_1;
wire topset_2;
wire topset_3;
wire topset_4;
wire topset_5;
wire topset_6;
wire topset_7;
wire inh_1;
wire inh_2;
wire inh_3;
wire inh_4;
wire inh_5;
wire inh_6;
wire inh_7;
wire topset_0;
wire normi_0;
wire normi_1;
wire normi_2;
wire normi_3;
wire normi_4;
wire normi_5;
wire normib_5;
wire aluazero_n;
wire alua_0;
wire alua_1;
wire alua_2;
wire alua_3;
wire alua_4;
wire alua_5;
wire alua_6;
wire alua_7;
wire alua_8;
wire alua_9;
wire alua_10;
wire alua_11;
wire alua_12;
wire alua_13;
wire alua_14;
wire alua_15;
wire alua_16;
wire alua_17;
wire alua_18;
wire alua_19;
wire alua_20;
wire alua_21;
wire alua_22;
wire alua_23;
wire alua_24;
wire alua_25;
wire alua_26;
wire alua_27;
wire alua_28;
wire alua_29;
wire alua_30;
wire alua_31;
wire mantmodeb;
wire alu_co;
wire brl_carry;
wire resldt;
wire zerodet;
wire zfi;
wire cfisel_0;
wire cfisel_1;
wire cfi;
wire nfi;

// Output buffers
wire carry_flag_obuf;
wire nega_flag_obuf;
wire result_b0_obuf;
wire result_b1_obuf;
wire result_b2_obuf;
wire result_b3_obuf;
wire result_b4_obuf;
wire result_b5_obuf;
wire result_b6_obuf;
wire result_b7_obuf;
wire result_b8_obuf;
wire result_b9_obuf;
wire result_b10_obuf;
wire result_b11_obuf;
wire result_b12_obuf;
wire result_b13_obuf;
wire result_b14_obuf;
wire result_b15_obuf;
wire result_b16_obuf;
wire result_b17_obuf;
wire result_b18_obuf;
wire result_b19_obuf;
wire result_b20_obuf;
wire result_b21_obuf;
wire result_b22_obuf;
wire result_b23_obuf;
wire result_b24_obuf;
wire result_b25_obuf;
wire result_b26_obuf;
wire result_b27_obuf;
wire result_b28_obuf;
wire result_b29_obuf;
wire result_b30_obuf;
wire result_b31_obuf;
wire zero_flag_obuf;


// Output buffers
assign carry_flag = carry_flag_obuf;
assign nega_flag = nega_flag_obuf;
assign result[0] = result_b0_obuf;
assign result[1] = result_b1_obuf;
assign result[2] = result_b2_obuf;
assign result[3] = result_b3_obuf;
assign result[4] = result_b4_obuf;
assign result[5] = result_b5_obuf;
assign result[6] = result_b6_obuf;
assign result[7] = result_b7_obuf;
assign result[8] = result_b8_obuf;
assign result[9] = result_b9_obuf;
assign result[10] = result_b10_obuf;
assign result[11] = result_b11_obuf;
assign result[12] = result_b12_obuf;
assign result[13] = result_b13_obuf;
assign result[14] = result_b14_obuf;
assign result[15] = result_b15_obuf;
assign result[16] = result_b16_obuf;
assign result[17] = result_b17_obuf;
assign result[18] = result_b18_obuf;
assign result[19] = result_b19_obuf;
assign result[20] = result_b20_obuf;
assign result[21] = result_b21_obuf;
assign result[22] = result_b22_obuf;
assign result[23] = result_b23_obuf;
assign result[24] = result_b24_obuf;
assign result[25] = result_b25_obuf;
assign result[26] = result_b26_obuf;
assign result[27] = result_b27_obuf;
assign result[28] = result_b28_obuf;
assign result[29] = result_b29_obuf;
assign result[30] = result_b30_obuf;
assign result[31] = result_b31_obuf;
assign zero_flag = zero_flag_obuf;


// ARITH.NET (54) - one : tie1
assign one = 1'b1;

// ARITH.NET (55) - zero : tie0
assign zero = 1'b0;

// ARITH.NET (56) - dummy : dummy

// ARITH.NET (57) - ressel\[0-1] : iv
assign ressel_n_0 = ~ressel_0;
assign ressel_n_1 = ~ressel_1;

// ARITH.NET (63) - brlmuxp[0-1] : fd1q
fd1q brlmuxp_from_0_to_1_inst_0
(
	.q(brlmuxp_0), // OUT
	.d(brlmux_0), // IN
	.cp(clk)  // IN
);
fd1q brlmuxp_from_0_to_1_inst_1
(
	.q(brlmuxp_1), // OUT
	.d(brlmux_1), // IN
	.cp(clk)  // IN
);

// ARITH.NET (64) - flagldp : fd2q
fd2q flagldp_inst
(
	.q(flagldp), // OUT
	.d(flagld), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// ARITH.NET (65) - resldp : fd1q
fd1q resldp_inst
(
	.q(resldp), // OUT
	.d(resld), // IN
	.cp(clk)  // IN
);

// ARITH.NET (66) - multselp : fd1qh
fd1q multselp_inst
(
	.q(multselp), // OUT
	.d(multsel), // IN
	.cp(clk)  // IN
);

// ARITH.NET (67) - multsignp : fd1q
fd1q multsignp_inst
(
	.q(multsignp), // OUT
	.d(multsign), // IN
	.cp(clk)  // IN
);

// ARITH.NET (68) - resselp[0-2] : fd1qu
fd1q resselp_from_0_to_2_inst_0
(
	.q(resselp_0), // OUT
	.d(ressel_0), // IN
	.cp(clk)  // IN
);
fd1q resselp_from_0_to_2_inst_1
(
	.q(resselp_1), // OUT
	.d(ressel_1), // IN
	.cp(clk)  // IN
);
fd1q resselp_from_0_to_2_inst_2
(
	.q(resselp_2), // OUT
	.d(ressel_2), // IN
	.cp(clk)  // IN
);

// ARITH.NET (69) - resselp\[0] : iv
assign resselp_n_0 = ~resselp_0;

// ARITH.NET (70) - rev_subp : fd1q
fd1q rev_subp_inst
(
	.q(rev_subp), // OUT
	.d(rev_sub), // IN
	.cp(clk)  // IN
);

// ARITH.NET (71) - macop_p : fd1q
fd1q macop_p_inst
(
	.q(macop_p), // OUT
	.d(macop), // IN
	.cp(clk)  // IN
);

// ARITH.NET (72) - macop_ppt : fd1q
fd1q macop_ppt_inst
(
	.q(macop_ppt), // OUT
	.d(macop_p), // IN
	.cp(clk)  // IN
);

// ARITH.NET (73) - macop_pp : nivu2
assign macop_pp = macop_ppt;

// ARITH.NET (74) - satszp[0-1] : fd1qu
fd1q satszp_from_0_to_1_inst_0
(
	.q(satszp_0), // OUT
	.d(satsz_0), // IN
	.cp(clk)  // IN
);
fd1q satszp_from_0_to_1_inst_1
(
	.q(satszp_1), // OUT
	.d(satsz_1), // IN
	.cp(clk)  // IN
);

// ARITH.NET (80) - mantmodei : an3
assign mantmodei = ressel_n_0 & ressel_n_1 & ressel_2;

// ARITH.NET (81) - mantmode : fd1q
fd1q mantmode_inst
(
	.q(mantmode), // OUT
	.d(mantmodei), // IN
	.cp(clk)  // IN
);

// ARITH.NET (85) - addtosubi\ : nd2
assign addtosubi_n = ~(mantmodei & srcd_31);

// ARITH.NET (89) - alufunc\[1] : iv
assign alufunc_n_1 = ~alufunc[1];

// ARITH.NET (90) - alufn[1] : nd2
assign alufn_1 = ~(alufunc_n_1 & addtosubi_n);

// ARITH.NET (91) - alufnc : join
assign alufnci[0] = alufunc[0];
assign alufnci[1] = alufn_1;
assign alufnci[2] = alufunc[2];

// ARITH.NET (93) - alufncp : fd1qp
fd1q alufncp_inst_0
(
	.q(alufnc[0]), // OUT
	.d(alufnci[0]), // IN
	.cp(clk)  // IN
);
fd1q alufncp_inst_1
(
	.q(alufnc[1]), // OUT
	.d(alufnci[1]), // IN
	.cp(clk)  // IN
);
fd1q alufncp_inst_2
(
	.q(alufnc[2]), // OUT
	.d(alufnci[2]), // IN
	.cp(clk)  // IN
);

// ARITH.NET (98) - losrcdp : join
assign losrcdp[0] = srcdp[0];
assign losrcdp[1] = srcdp[1];
assign losrcdp[2] = srcdp[2];
assign losrcdp[3] = srcdp[3];
assign losrcdp[4] = srcdp[4];
assign losrcdp[5] = srcdp[5];
assign losrcdp[6] = srcdp[6];
assign losrcdp[7] = srcdp[7];
assign losrcdp[8] = srcdp[8];
assign losrcdp[9] = srcdp[9];
assign losrcdp[10] = srcdp[10];
assign losrcdp[11] = srcdp[11];
assign losrcdp[12] = srcdp[12];
assign losrcdp[13] = srcdp[13];
assign losrcdp[14] = srcdp[14];
assign losrcdp[15] = srcdp[15];

// ARITH.NET (99) - hisrcdp : join
assign hisrcdp[0] = srcdp[16];
assign hisrcdp[1] = srcdp[17];
assign hisrcdp[2] = srcdp[18];
assign hisrcdp[3] = srcdp[19];
assign hisrcdp[4] = srcdp[20];
assign hisrcdp[5] = srcdp[21];
assign hisrcdp[6] = srcdp[22];
assign hisrcdp[7] = srcdp[23];
assign hisrcdp[8] = srcdp[24];
assign hisrcdp[9] = srcdp[25];
assign hisrcdp[10] = srcdp[26];
assign hisrcdp[11] = srcdp[27];
assign hisrcdp[12] = srcdp[28];
assign hisrcdp[13] = srcdp[29];
assign hisrcdp[14] = srcdp[30];
assign hisrcdp[15] = srcdp[31];

// ARITH.NET (100) - mulb : join
assign mulb[0] = dstdp[0];
assign mulb[1] = dstdp[1];
assign mulb[2] = dstdp[2];
assign mulb[3] = dstdp[3];
assign mulb[4] = dstdp[4];
assign mulb[5] = dstdp[5];
assign mulb[6] = dstdp[6];
assign mulb[7] = dstdp[7];
assign mulb[8] = dstdp[8];
assign mulb[9] = dstdp[9];
assign mulb[10] = dstdp[10];
assign mulb[11] = dstdp[11];
assign mulb[12] = dstdp[12];
assign mulb[13] = dstdp[13];
assign mulb[14] = dstdp[14];
assign mulb[15] = dstdp[15];

// ARITH.NET (101) - mula : mx2
mx2 mula_inst_0
(
	.z(mula[0]), // OUT
	.a0(losrcdp[0]), // IN
	.a1(hisrcdp[0]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_1
(
	.z(mula[1]), // OUT
	.a0(losrcdp[1]), // IN
	.a1(hisrcdp[1]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_2
(
	.z(mula[2]), // OUT
	.a0(losrcdp[2]), // IN
	.a1(hisrcdp[2]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_3
(
	.z(mula[3]), // OUT
	.a0(losrcdp[3]), // IN
	.a1(hisrcdp[3]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_4
(
	.z(mula[4]), // OUT
	.a0(losrcdp[4]), // IN
	.a1(hisrcdp[4]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_5
(
	.z(mula[5]), // OUT
	.a0(losrcdp[5]), // IN
	.a1(hisrcdp[5]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_6
(
	.z(mula[6]), // OUT
	.a0(losrcdp[6]), // IN
	.a1(hisrcdp[6]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_7
(
	.z(mula[7]), // OUT
	.a0(losrcdp[7]), // IN
	.a1(hisrcdp[7]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_8
(
	.z(mula[8]), // OUT
	.a0(losrcdp[8]), // IN
	.a1(hisrcdp[8]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_9
(
	.z(mula[9]), // OUT
	.a0(losrcdp[9]), // IN
	.a1(hisrcdp[9]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_10
(
	.z(mula[10]), // OUT
	.a0(losrcdp[10]), // IN
	.a1(hisrcdp[10]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_11
(
	.z(mula[11]), // OUT
	.a0(losrcdp[11]), // IN
	.a1(hisrcdp[11]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_12
(
	.z(mula[12]), // OUT
	.a0(losrcdp[12]), // IN
	.a1(hisrcdp[12]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_13
(
	.z(mula[13]), // OUT
	.a0(losrcdp[13]), // IN
	.a1(hisrcdp[13]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_14
(
	.z(mula[14]), // OUT
	.a0(losrcdp[14]), // IN
	.a1(hisrcdp[14]), // IN
	.s(multselp)  // IN
);
mx2 mula_inst_15
(
	.z(mula[15]), // OUT
	.a0(losrcdp[15]), // IN
	.a1(hisrcdp[15]), // IN
	.s(multselp)  // IN
);

// ARITH.NET (105) - mult : mp16
mp16 mult_inst
(
	.q0(mulq_0), // OUT
	.q1(mulq_1), // OUT
	.q2(mulq_2), // OUT
	.q3(mulq_3), // OUT
	.q4(mulq_4), // OUT
	.q5(mulq_5), // OUT
	.q6(mulq_6), // OUT
	.q7(mulq_7), // OUT
	.q8(mulq_8), // OUT
	.q9(mulq_9), // OUT
	.q10(mulq_10), // OUT
	.q11(mulq_11), // OUT
	.q12(mulq_12), // OUT
	.q13(mulq_13), // OUT
	.q14(mulq_14), // OUT
	.q15(mulq_15), // OUT
	.q16(mulq_16), // OUT
	.q17(mulq_17), // OUT
	.q18(mulq_18), // OUT
	.q19(mulq_19), // OUT
	.q20(mulq_20), // OUT
	.q21(mulq_21), // OUT
	.q22(mulq_22), // OUT
	.q23(mulq_23), // OUT
	.q24(mulq_24), // OUT
	.q25(mulq_25), // OUT
	.q26(mulq_26), // OUT
	.q27(mulq_27), // OUT
	.q28(mulq_28), // OUT
	.q29(mulq_29), // OUT
	.q30(mulq_30), // OUT
	.q31(mulq_31), // OUT
	.a0(mula[0]), // IN
	.a1(mula[1]), // IN
	.a2(mula[2]), // IN
	.a3(mula[3]), // IN
	.a4(mula[4]), // IN
	.a5(mula[5]), // IN
	.a6(mula[6]), // IN
	.a7(mula[7]), // IN
	.a8(mula[8]), // IN
	.a9(mula[9]), // IN
	.a10(mula[10]), // IN
	.a11(mula[11]), // IN
	.a12(mula[12]), // IN
	.a13(mula[13]), // IN
	.a14(mula[14]), // IN
	.a15(mula[15]), // IN
	.b0(mulb[0]), // IN
	.b1(mulb[1]), // IN
	.b2(mulb[2]), // IN
	.b3(mulb[3]), // IN
	.b4(mulb[4]), // IN
	.b5(mulb[5]), // IN
	.b6(mulb[6]), // IN
	.b7(mulb[7]), // IN
	.b8(mulb[8]), // IN
	.b9(mulb[9]), // IN
	.b10(mulb[10]), // IN
	.b11(mulb[11]), // IN
	.b12(mulb[12]), // IN
	.b13(mulb[13]), // IN
	.b14(mulb[14]), // IN
	.b15(mulb[15]), // IN
	.sign0(multsignp), // IN
	.sign1(multsignp), // IN
	.unk0(one), // IN
	.unk1(zero)  // IN
);

// ARITH.NET (107) - mulq : join
assign mulq[0] = mulq_0;
assign mulq[1] = mulq_1;
assign mulq[2] = mulq_2;
assign mulq[3] = mulq_3;
assign mulq[4] = mulq_4;
assign mulq[5] = mulq_5;
assign mulq[6] = mulq_6;
assign mulq[7] = mulq_7;
assign mulq[8] = mulq_8;
assign mulq[9] = mulq_9;
assign mulq[10] = mulq_10;
assign mulq[11] = mulq_11;
assign mulq[12] = mulq_12;
assign mulq[13] = mulq_13;
assign mulq[14] = mulq_14;
assign mulq[15] = mulq_15;
assign mulq[16] = mulq_16;
assign mulq[17] = mulq_17;
assign mulq[18] = mulq_18;
assign mulq[19] = mulq_19;
assign mulq[20] = mulq_20;
assign mulq[21] = mulq_21;
assign mulq[22] = mulq_22;
assign mulq[23] = mulq_23;
assign mulq[24] = mulq_24;
assign mulq[25] = mulq_25;
assign mulq[26] = mulq_26;
assign mulq[27] = mulq_27;
assign mulq[28] = mulq_28;
assign mulq[29] = mulq_29;
assign mulq[30] = mulq_30;
assign mulq[31] = mulq_31;

// ARITH.NET (111) - mulqp : fd1q
fd1q mulqp_inst_0
(
	.q(mulqp[0]), // OUT
	.d(mulq[0]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_1
(
	.q(mulqp[1]), // OUT
	.d(mulq[1]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_2
(
	.q(mulqp[2]), // OUT
	.d(mulq[2]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_3
(
	.q(mulqp[3]), // OUT
	.d(mulq[3]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_4
(
	.q(mulqp[4]), // OUT
	.d(mulq[4]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_5
(
	.q(mulqp[5]), // OUT
	.d(mulq[5]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_6
(
	.q(mulqp[6]), // OUT
	.d(mulq[6]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_7
(
	.q(mulqp[7]), // OUT
	.d(mulq[7]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_8
(
	.q(mulqp[8]), // OUT
	.d(mulq[8]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_9
(
	.q(mulqp[9]), // OUT
	.d(mulq[9]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_10
(
	.q(mulqp[10]), // OUT
	.d(mulq[10]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_11
(
	.q(mulqp[11]), // OUT
	.d(mulq[11]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_12
(
	.q(mulqp[12]), // OUT
	.d(mulq[12]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_13
(
	.q(mulqp[13]), // OUT
	.d(mulq[13]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_14
(
	.q(mulqp[14]), // OUT
	.d(mulq[14]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_15
(
	.q(mulqp[15]), // OUT
	.d(mulq[15]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_16
(
	.q(mulqp[16]), // OUT
	.d(mulq[16]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_17
(
	.q(mulqp[17]), // OUT
	.d(mulq[17]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_18
(
	.q(mulqp[18]), // OUT
	.d(mulq[18]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_19
(
	.q(mulqp[19]), // OUT
	.d(mulq[19]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_20
(
	.q(mulqp[20]), // OUT
	.d(mulq[20]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_21
(
	.q(mulqp[21]), // OUT
	.d(mulq[21]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_22
(
	.q(mulqp[22]), // OUT
	.d(mulq[22]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_23
(
	.q(mulqp[23]), // OUT
	.d(mulq[23]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_24
(
	.q(mulqp[24]), // OUT
	.d(mulq[24]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_25
(
	.q(mulqp[25]), // OUT
	.d(mulq[25]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_26
(
	.q(mulqp[26]), // OUT
	.d(mulq[26]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_27
(
	.q(mulqp[27]), // OUT
	.d(mulq[27]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_28
(
	.q(mulqp[28]), // OUT
	.d(mulq[28]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_29
(
	.q(mulqp[29]), // OUT
	.d(mulq[29]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_30
(
	.q(mulqp[30]), // OUT
	.d(mulq[30]), // IN
	.cp(clk)  // IN
);
fd1q mulqp_inst_31
(
	.q(mulqp[31]), // OUT
	.d(mulq[31]), // IN
	.cp(clk)  // IN
);

// ARITH.NET (120) - mantissa : join
assign mantissa[0] = srcdp[0];
assign mantissa[1] = srcdp[1];
assign mantissa[2] = srcdp[2];
assign mantissa[3] = srcdp[3];
assign mantissa[4] = srcdp[4];
assign mantissa[5] = srcdp[5];
assign mantissa[6] = srcdp[6];
assign mantissa[7] = srcdp[7];
assign mantissa[8] = srcdp[8];
assign mantissa[9] = srcdp[9];
assign mantissa[10] = srcdp[10];
assign mantissa[11] = srcdp[11];
assign mantissa[12] = srcdp[12];
assign mantissa[13] = srcdp[13];
assign mantissa[14] = srcdp[14];
assign mantissa[15] = srcdp[15];
assign mantissa[16] = srcdp[16];
assign mantissa[17] = srcdp[17];
assign mantissa[18] = srcdp[18];
assign mantissa[19] = srcdp[19];
assign mantissa[20] = srcdp[20];
assign mantissa[21] = srcdp[21];
assign mantissa[22] = srcdp[22];

// ARITH.NET (121) - mant : join
assign mant[0] = mantissa[0];
assign mant[1] = mantissa[1];
assign mant[2] = mantissa[2];
assign mant[3] = mantissa[3];
assign mant[4] = mantissa[4];
assign mant[5] = mantissa[5];
assign mant[6] = mantissa[6];
assign mant[7] = mantissa[7];
assign mant[8] = mantissa[8];
assign mant[9] = mantissa[9];
assign mant[10] = mantissa[10];
assign mant[11] = mantissa[11];
assign mant[12] = mantissa[12];
assign mant[13] = mantissa[13];
assign mant[14] = mantissa[14];
assign mant[15] = mantissa[15];
assign mant[16] = mantissa[16];
assign mant[17] = mantissa[17];
assign mant[18] = mantissa[18];
assign mant[19] = mantissa[19];
assign mant[20] = mantissa[20];
assign mant[21] = mantissa[21];
assign mant[22] = mantissa[22];
assign mant[23] = one;
assign mant[24] = zero;
assign mant[25] = zero;
assign mant[26] = zero;
assign mant[27] = zero;
assign mant[28] = zero;
assign mant[29] = zero;
assign mant[30] = zero;
assign mant[31] = zero;

// ARITH.NET (130) - srcdp[0-31] : join
assign srcdp_0 = srcdp[0];
assign srcdp_1 = srcdp[1];
assign srcdp_2 = srcdp[2];
assign srcdp_3 = srcdp[3];
assign srcdp_4 = srcdp[4];
assign srcdp_5 = srcdp[5];
assign srcdp_6 = srcdp[6];
assign srcdp_7 = srcdp[7];
assign srcdp_8 = srcdp[8];
assign srcdp_9 = srcdp[9];
assign srcdp_10 = srcdp[10];
assign srcdp_11 = srcdp[11];
assign srcdp_12 = srcdp[12];
assign srcdp_13 = srcdp[13];
assign srcdp_14 = srcdp[14];
assign srcdp_15 = srcdp[15];
assign srcdp_16 = srcdp[16];
assign srcdp_17 = srcdp[17];
assign srcdp_18 = srcdp[18];
assign srcdp_19 = srcdp[19];
assign srcdp_20 = srcdp[20];
assign srcdp_21 = srcdp[21];
assign srcdp_22 = srcdp[22];
assign srcdp_23 = srcdp[23];
assign srcdp_24 = srcdp[24];
assign srcdp_25 = srcdp[25];
assign srcdp_26 = srcdp[26];
assign srcdp_27 = srcdp[27];
assign srcdp_28 = srcdp[28];
assign srcdp_29 = srcdp[29];
assign srcdp_30 = srcdp[30];
assign srcdp_31 = srcdp[31];

// ARITH.NET (134) - topset[31] : niv
assign topset_31 = srcdp_31;

// ARITH.NET (135) - topset[30] : tben
tben topset_index_30_inst
(
	.this(topset_30), // OUT
	.inho(inh_30), // OUT
	.bit(srcdp_30), // IN
	.inhi(topset_31)  // IN
);

// ARITH.NET (137) - topset[25-29] : tben
tben topset_from_25_to_29_inst_0
(
	.this(topset_25), // OUT
	.inho(inh_25), // OUT
	.bit(srcdp_25), // IN
	.inhi(inh_26)  // IN
);
tben topset_from_25_to_29_inst_1
(
	.this(topset_26), // OUT
	.inho(inh_26), // OUT
	.bit(srcdp_26), // IN
	.inhi(inh_27)  // IN
);
tben topset_from_25_to_29_inst_2
(
	.this(topset_27), // OUT
	.inho(inh_27), // OUT
	.bit(srcdp_27), // IN
	.inhi(inh_28)  // IN
);
tben topset_from_25_to_29_inst_3
(
	.this(topset_28), // OUT
	.inho(inh_28), // OUT
	.bit(srcdp_28), // IN
	.inhi(inh_29)  // IN
);
tben topset_from_25_to_29_inst_4
(
	.this(topset_29), // OUT
	.inho(inh_29), // OUT
	.bit(srcdp_29), // IN
	.inhi(inh_30)  // IN
);

// ARITH.NET (139) - topset[24] : tbenw
tbenw topset_index_24_inst
(
	.this(topset_24), // OUT
	.bit(srcdp_24), // IN
	.inhi(inh_25)  // IN
);

// ARITH.NET (140) - inh[24] : or8
assign inh_24 = srcdp_24 | srcdp_25 | srcdp_26 | srcdp_27 | srcdp_28 | srcdp_29 | srcdp_30 | srcdp_31;

// ARITH.NET (142) - topset[17-23] : tben
tben topset_from_17_to_23_inst_0
(
	.this(topset_17), // OUT
	.inho(inh_17), // OUT
	.bit(srcdp_17), // IN
	.inhi(inh_18)  // IN
);
tben topset_from_17_to_23_inst_1
(
	.this(topset_18), // OUT
	.inho(inh_18), // OUT
	.bit(srcdp_18), // IN
	.inhi(inh_19)  // IN
);
tben topset_from_17_to_23_inst_2
(
	.this(topset_19), // OUT
	.inho(inh_19), // OUT
	.bit(srcdp_19), // IN
	.inhi(inh_20)  // IN
);
tben topset_from_17_to_23_inst_3
(
	.this(topset_20), // OUT
	.inho(inh_20), // OUT
	.bit(srcdp_20), // IN
	.inhi(inh_21)  // IN
);
tben topset_from_17_to_23_inst_4
(
	.this(topset_21), // OUT
	.inho(inh_21), // OUT
	.bit(srcdp_21), // IN
	.inhi(inh_22)  // IN
);
tben topset_from_17_to_23_inst_5
(
	.this(topset_22), // OUT
	.inho(inh_22), // OUT
	.bit(srcdp_22), // IN
	.inhi(inh_23)  // IN
);
tben topset_from_17_to_23_inst_6
(
	.this(topset_23), // OUT
	.inho(inh_23), // OUT
	.bit(srcdp_23), // IN
	.inhi(inh_24)  // IN
);

// ARITH.NET (144) - topset[16] : tbenw
tbenw topset_index_16_inst
(
	.this(topset_16), // OUT
	.bit(srcdp_16), // IN
	.inhi(inh_17)  // IN
);

// ARITH.NET (145) - inh[16] : or9
or9 inh_index_16_inst
(
	.z(inh_16), // IO
	.a(srcdp_16), // IN
	.b(srcdp_17), // IN
	.c(srcdp_18), // IN
	.d(srcdp_19), // IN
	.e(srcdp_20), // IN
	.f(srcdp_21), // IN
	.g(srcdp_22), // IN
	.h(srcdp_23), // IN
	.i(inh_24)  // IN
);

// ARITH.NET (147) - topset[9-15] : tben
tben topset_from_9_to_15_inst_0
(
	.this(topset_9), // OUT
	.inho(inh_9), // OUT
	.bit(srcdp_9), // IN
	.inhi(inh_10)  // IN
);
tben topset_from_9_to_15_inst_1
(
	.this(topset_10), // OUT
	.inho(inh_10), // OUT
	.bit(srcdp_10), // IN
	.inhi(inh_11)  // IN
);
tben topset_from_9_to_15_inst_2
(
	.this(topset_11), // OUT
	.inho(inh_11), // OUT
	.bit(srcdp_11), // IN
	.inhi(inh_12)  // IN
);
tben topset_from_9_to_15_inst_3
(
	.this(topset_12), // OUT
	.inho(inh_12), // OUT
	.bit(srcdp_12), // IN
	.inhi(inh_13)  // IN
);
tben topset_from_9_to_15_inst_4
(
	.this(topset_13), // OUT
	.inho(inh_13), // OUT
	.bit(srcdp_13), // IN
	.inhi(inh_14)  // IN
);
tben topset_from_9_to_15_inst_5
(
	.this(topset_14), // OUT
	.inho(inh_14), // OUT
	.bit(srcdp_14), // IN
	.inhi(inh_15)  // IN
);
tben topset_from_9_to_15_inst_6
(
	.this(topset_15), // OUT
	.inho(inh_15), // OUT
	.bit(srcdp_15), // IN
	.inhi(inh_16)  // IN
);

// ARITH.NET (149) - topset[8] : tbenw
tbenw topset_index_8_inst
(
	.this(topset_8), // OUT
	.bit(srcdp_8), // IN
	.inhi(inh_9)  // IN
);

// ARITH.NET (150) - inh[8] : or9
or9 inh_index_8_inst
(
	.z(inh_8), // IO
	.a(srcdp_8), // IN
	.b(srcdp_9), // IN
	.c(srcdp_10), // IN
	.d(srcdp_11), // IN
	.e(srcdp_12), // IN
	.f(srcdp_13), // IN
	.g(srcdp_14), // IN
	.h(srcdp_15), // IN
	.i(inh_16)  // IN
);

// ARITH.NET (152) - topset[1-7] : tben
tben topset_from_1_to_7_inst_0
(
	.this(topset_1), // OUT
	.inho(inh_1), // OUT
	.bit(srcdp_1), // IN
	.inhi(inh_2)  // IN
);
tben topset_from_1_to_7_inst_1
(
	.this(topset_2), // OUT
	.inho(inh_2), // OUT
	.bit(srcdp_2), // IN
	.inhi(inh_3)  // IN
);
tben topset_from_1_to_7_inst_2
(
	.this(topset_3), // OUT
	.inho(inh_3), // OUT
	.bit(srcdp_3), // IN
	.inhi(inh_4)  // IN
);
tben topset_from_1_to_7_inst_3
(
	.this(topset_4), // OUT
	.inho(inh_4), // OUT
	.bit(srcdp_4), // IN
	.inhi(inh_5)  // IN
);
tben topset_from_1_to_7_inst_4
(
	.this(topset_5), // OUT
	.inho(inh_5), // OUT
	.bit(srcdp_5), // IN
	.inhi(inh_6)  // IN
);
tben topset_from_1_to_7_inst_5
(
	.this(topset_6), // OUT
	.inho(inh_6), // OUT
	.bit(srcdp_6), // IN
	.inhi(inh_7)  // IN
);
tben topset_from_1_to_7_inst_6
(
	.this(topset_7), // OUT
	.inho(inh_7), // OUT
	.bit(srcdp_7), // IN
	.inhi(inh_8)  // IN
);

// ARITH.NET (154) - topset[0] : tbenw
tbenw topset_index_0_inst
(
	.this(topset_0), // OUT
	.bit(srcdp_0), // IN
	.inhi(inh_1)  // IN
);

// ARITH.NET (158) - normi[0] : or16
or16 normi_index_0_inst
(
	.q(normi_0), // OUT
	.a_0(topset_30), // IN
	.a_1(topset_28), // IN
	.a_2(topset_26), // IN
	.a_3(topset_24), // IN
	.a_4(topset_22), // IN
	.a_5(topset_20), // IN
	.a_6(topset_18), // IN
	.a_7(topset_16), // IN
	.a_8(topset_14), // IN
	.a_9(topset_12), // IN
	.a_10(topset_10), // IN
	.a_11(topset_8), // IN
	.a_12(topset_6), // IN
	.a_13(topset_4), // IN
	.a_14(topset_2), // IN
	.a_15(topset_0)  // IN
);

// ARITH.NET (164) - normi[1] : or16
or16 normi_index_1_inst
(
	.q(normi_1), // OUT
	.a_0(topset_29), // IN
	.a_1(topset_30), // IN
	.a_2(topset_25), // IN
	.a_3(topset_26), // IN
	.a_4(topset_21), // IN
	.a_5(topset_22), // IN
	.a_6(topset_17), // IN
	.a_7(topset_18), // IN
	.a_8(topset_13), // IN
	.a_9(topset_14), // IN
	.a_10(topset_9), // IN
	.a_11(topset_10), // IN
	.a_12(topset_5), // IN
	.a_13(topset_6), // IN
	.a_14(topset_1), // IN
	.a_15(topset_2)  // IN
);

// ARITH.NET (168) - normi[2] : or16
or16 normi_index_2_inst
(
	.q(normi_2), // OUT
	.a_0(topset_27), // IN
	.a_1(topset_28), // IN
	.a_2(topset_29), // IN
	.a_3(topset_30), // IN
	.a_4(topset_19), // IN
	.a_5(topset_20), // IN
	.a_6(topset_21), // IN
	.a_7(topset_22), // IN
	.a_8(topset_11), // IN
	.a_9(topset_12), // IN
	.a_10(topset_13), // IN
	.a_11(topset_14), // IN
	.a_12(topset_3), // IN
	.a_13(topset_4), // IN
	.a_14(topset_5), // IN
	.a_15(topset_6)  // IN
);

// ARITH.NET (170) - normi[3] : or16
or16 normi_index_3_inst
(
	.q(normi_3), // OUT
	.a_0(topset_31), // IN
	.a_1(topset_15), // IN
	.a_2(topset_16), // IN
	.a_3(topset_17), // IN
	.a_4(topset_18), // IN
	.a_5(topset_19), // IN
	.a_6(topset_20), // IN
	.a_7(topset_21), // IN
	.a_8(topset_22), // IN
	.a_9(topset_0), // IN
	.a_10(topset_1), // IN
	.a_11(topset_2), // IN
	.a_12(topset_3), // IN
	.a_13(topset_4), // IN
	.a_14(topset_5), // IN
	.a_15(topset_6)  // IN
);

// ARITH.NET (172) - normi[4] : an2
assign normi_4 = normi_5 & inh_7;

// ARITH.NET (173) - normi[5] : ivu
assign normi_5 = ~inh_23;

// ARITH.NET (174) - normib[5] : nivu
assign normib_5 = normi_5;

// ARITH.NET (176) - normi : join
assign normi[0] = normi_0;
assign normi[1] = normi_1;
assign normi[2] = normi_2;
assign normi[3] = normi_3;
assign normi[4] = normi_4;
assign normi[5] = normi_5;
assign normi[6] = normi_5;
assign normi[7] = normi_5;
assign normi[8] = normi_5;
assign normi[9] = normi_5;
assign normi[10] = normi_5;
assign normi[11] = normi_5;
assign normi[12] = normi_5;
assign normi[13] = normi_5;
assign normi[14] = normi_5;
assign normi[15] = normi_5;
assign normi[16] = normi_5;
assign normi[17] = normi_5;
assign normi[18] = normi_5;
assign normi[19] = normi_5;
assign normi[20] = normib_5;
assign normi[21] = normib_5;
assign normi[22] = normib_5;
assign normi[23] = normib_5;
assign normi[24] = normib_5;
assign normi[25] = normib_5;
assign normi[26] = normib_5;
assign normi[27] = normib_5;
assign normi[28] = normib_5;
assign normi[29] = normib_5;
assign normi[30] = normib_5;
assign normi[31] = normib_5;

// ARITH.NET (184) - dummya : dummy

// ARITH.NET (185) - dummyb : dummy

// ARITH.NET (192) - aluamux : mx2
mx2 aluamux_inst_0
(
	.z(aluat[0]), // OUT
	.a0(dstdp[0]), // IN
	.a1(result_b0_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_1
(
	.z(aluat[1]), // OUT
	.a0(dstdp[1]), // IN
	.a1(result_b1_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_2
(
	.z(aluat[2]), // OUT
	.a0(dstdp[2]), // IN
	.a1(result_b2_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_3
(
	.z(aluat[3]), // OUT
	.a0(dstdp[3]), // IN
	.a1(result_b3_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_4
(
	.z(aluat[4]), // OUT
	.a0(dstdp[4]), // IN
	.a1(result_b4_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_5
(
	.z(aluat[5]), // OUT
	.a0(dstdp[5]), // IN
	.a1(result_b5_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_6
(
	.z(aluat[6]), // OUT
	.a0(dstdp[6]), // IN
	.a1(result_b6_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_7
(
	.z(aluat[7]), // OUT
	.a0(dstdp[7]), // IN
	.a1(result_b7_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_8
(
	.z(aluat[8]), // OUT
	.a0(dstdp[8]), // IN
	.a1(result_b8_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_9
(
	.z(aluat[9]), // OUT
	.a0(dstdp[9]), // IN
	.a1(result_b9_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_10
(
	.z(aluat[10]), // OUT
	.a0(dstdp[10]), // IN
	.a1(result_b10_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_11
(
	.z(aluat[11]), // OUT
	.a0(dstdp[11]), // IN
	.a1(result_b11_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_12
(
	.z(aluat[12]), // OUT
	.a0(dstdp[12]), // IN
	.a1(result_b12_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_13
(
	.z(aluat[13]), // OUT
	.a0(dstdp[13]), // IN
	.a1(result_b13_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_14
(
	.z(aluat[14]), // OUT
	.a0(dstdp[14]), // IN
	.a1(result_b14_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_15
(
	.z(aluat[15]), // OUT
	.a0(dstdp[15]), // IN
	.a1(result_b15_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_16
(
	.z(aluat[16]), // OUT
	.a0(dstdp[16]), // IN
	.a1(result_b16_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_17
(
	.z(aluat[17]), // OUT
	.a0(dstdp[17]), // IN
	.a1(result_b17_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_18
(
	.z(aluat[18]), // OUT
	.a0(dstdp[18]), // IN
	.a1(result_b18_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_19
(
	.z(aluat[19]), // OUT
	.a0(dstdp[19]), // IN
	.a1(result_b19_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_20
(
	.z(aluat[20]), // OUT
	.a0(dstdp[20]), // IN
	.a1(result_b20_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_21
(
	.z(aluat[21]), // OUT
	.a0(dstdp[21]), // IN
	.a1(result_b21_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_22
(
	.z(aluat[22]), // OUT
	.a0(dstdp[22]), // IN
	.a1(result_b22_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_23
(
	.z(aluat[23]), // OUT
	.a0(dstdp[23]), // IN
	.a1(result_b23_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_24
(
	.z(aluat[24]), // OUT
	.a0(dstdp[24]), // IN
	.a1(result_b24_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_25
(
	.z(aluat[25]), // OUT
	.a0(dstdp[25]), // IN
	.a1(result_b25_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_26
(
	.z(aluat[26]), // OUT
	.a0(dstdp[26]), // IN
	.a1(result_b26_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_27
(
	.z(aluat[27]), // OUT
	.a0(dstdp[27]), // IN
	.a1(result_b27_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_28
(
	.z(aluat[28]), // OUT
	.a0(dstdp[28]), // IN
	.a1(result_b28_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_29
(
	.z(aluat[29]), // OUT
	.a0(dstdp[29]), // IN
	.a1(result_b29_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_30
(
	.z(aluat[30]), // OUT
	.a0(dstdp[30]), // IN
	.a1(result_b30_obuf), // IN
	.s(macop_pp)  // IN
);
mx2 aluamux_inst_31
(
	.z(aluat[31]), // OUT
	.a0(dstdp[31]), // IN
	.a1(result_b31_obuf), // IN
	.s(macop_pp)  // IN
);

// ARITH.NET (193) - aluazero\ : ivu
assign aluazero_n = ~mantmode;

// ARITH.NET (194) - alua[0-31] : an2p
assign alua_0 = aluat[0] & aluazero_n;
assign alua_1 = aluat[1] & aluazero_n;
assign alua_2 = aluat[2] & aluazero_n;
assign alua_3 = aluat[3] & aluazero_n;
assign alua_4 = aluat[4] & aluazero_n;
assign alua_5 = aluat[5] & aluazero_n;
assign alua_6 = aluat[6] & aluazero_n;
assign alua_7 = aluat[7] & aluazero_n;
assign alua_8 = aluat[8] & aluazero_n;
assign alua_9 = aluat[9] & aluazero_n;
assign alua_10 = aluat[10] & aluazero_n;
assign alua_11 = aluat[11] & aluazero_n;
assign alua_12 = aluat[12] & aluazero_n;
assign alua_13 = aluat[13] & aluazero_n;
assign alua_14 = aluat[14] & aluazero_n;
assign alua_15 = aluat[15] & aluazero_n;
assign alua_16 = aluat[16] & aluazero_n;
assign alua_17 = aluat[17] & aluazero_n;
assign alua_18 = aluat[18] & aluazero_n;
assign alua_19 = aluat[19] & aluazero_n;
assign alua_20 = aluat[20] & aluazero_n;
assign alua_21 = aluat[21] & aluazero_n;
assign alua_22 = aluat[22] & aluazero_n;
assign alua_23 = aluat[23] & aluazero_n;
assign alua_24 = aluat[24] & aluazero_n;
assign alua_25 = aluat[25] & aluazero_n;
assign alua_26 = aluat[26] & aluazero_n;
assign alua_27 = aluat[27] & aluazero_n;
assign alua_28 = aluat[28] & aluazero_n;
assign alua_29 = aluat[29] & aluazero_n;
assign alua_30 = aluat[30] & aluazero_n;
assign alua_31 = aluat[31] & aluazero_n;

// ARITH.NET (195) - alua : join
assign alua[0] = alua_0;
assign alua[1] = alua_1;
assign alua[2] = alua_2;
assign alua[3] = alua_3;
assign alua[4] = alua_4;
assign alua[5] = alua_5;
assign alua[6] = alua_6;
assign alua[7] = alua_7;
assign alua[8] = alua_8;
assign alua[9] = alua_9;
assign alua[10] = alua_10;
assign alua[11] = alua_11;
assign alua[12] = alua_12;
assign alua[13] = alua_13;
assign alua[14] = alua_14;
assign alua[15] = alua_15;
assign alua[16] = alua_16;
assign alua[17] = alua_17;
assign alua[18] = alua_18;
assign alua[19] = alua_19;
assign alua[20] = alua_20;
assign alua[21] = alua_21;
assign alua[22] = alua_22;
assign alua[23] = alua_23;
assign alua[24] = alua_24;
assign alua[25] = alua_25;
assign alua[26] = alua_26;
assign alua[27] = alua_27;
assign alua[28] = alua_28;
assign alua[29] = alua_29;
assign alua[30] = alua_30;
assign alua[31] = alua_31;

// ARITH.NET (202) - mantmodeb : nivu
assign mantmodeb = mantmode;

// ARITH.NET (203) - alubmux : mx4p
mx4 alubmux_inst_0
(
	.z(alub[0]), // OUT
	.a0(srcdp[0]), // IN
	.a1(mulqp[0]), // IN
	.a2(mant[0]), // IN
	.a3(mant[0]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_1
(
	.z(alub[1]), // OUT
	.a0(srcdp[1]), // IN
	.a1(mulqp[1]), // IN
	.a2(mant[1]), // IN
	.a3(mant[1]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_2
(
	.z(alub[2]), // OUT
	.a0(srcdp[2]), // IN
	.a1(mulqp[2]), // IN
	.a2(mant[2]), // IN
	.a3(mant[2]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_3
(
	.z(alub[3]), // OUT
	.a0(srcdp[3]), // IN
	.a1(mulqp[3]), // IN
	.a2(mant[3]), // IN
	.a3(mant[3]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_4
(
	.z(alub[4]), // OUT
	.a0(srcdp[4]), // IN
	.a1(mulqp[4]), // IN
	.a2(mant[4]), // IN
	.a3(mant[4]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_5
(
	.z(alub[5]), // OUT
	.a0(srcdp[5]), // IN
	.a1(mulqp[5]), // IN
	.a2(mant[5]), // IN
	.a3(mant[5]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_6
(
	.z(alub[6]), // OUT
	.a0(srcdp[6]), // IN
	.a1(mulqp[6]), // IN
	.a2(mant[6]), // IN
	.a3(mant[6]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_7
(
	.z(alub[7]), // OUT
	.a0(srcdp[7]), // IN
	.a1(mulqp[7]), // IN
	.a2(mant[7]), // IN
	.a3(mant[7]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_8
(
	.z(alub[8]), // OUT
	.a0(srcdp[8]), // IN
	.a1(mulqp[8]), // IN
	.a2(mant[8]), // IN
	.a3(mant[8]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_9
(
	.z(alub[9]), // OUT
	.a0(srcdp[9]), // IN
	.a1(mulqp[9]), // IN
	.a2(mant[9]), // IN
	.a3(mant[9]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_10
(
	.z(alub[10]), // OUT
	.a0(srcdp[10]), // IN
	.a1(mulqp[10]), // IN
	.a2(mant[10]), // IN
	.a3(mant[10]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_11
(
	.z(alub[11]), // OUT
	.a0(srcdp[11]), // IN
	.a1(mulqp[11]), // IN
	.a2(mant[11]), // IN
	.a3(mant[11]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_12
(
	.z(alub[12]), // OUT
	.a0(srcdp[12]), // IN
	.a1(mulqp[12]), // IN
	.a2(mant[12]), // IN
	.a3(mant[12]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_13
(
	.z(alub[13]), // OUT
	.a0(srcdp[13]), // IN
	.a1(mulqp[13]), // IN
	.a2(mant[13]), // IN
	.a3(mant[13]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_14
(
	.z(alub[14]), // OUT
	.a0(srcdp[14]), // IN
	.a1(mulqp[14]), // IN
	.a2(mant[14]), // IN
	.a3(mant[14]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_15
(
	.z(alub[15]), // OUT
	.a0(srcdp[15]), // IN
	.a1(mulqp[15]), // IN
	.a2(mant[15]), // IN
	.a3(mant[15]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_16
(
	.z(alub[16]), // OUT
	.a0(srcdp[16]), // IN
	.a1(mulqp[16]), // IN
	.a2(mant[16]), // IN
	.a3(mant[16]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_17
(
	.z(alub[17]), // OUT
	.a0(srcdp[17]), // IN
	.a1(mulqp[17]), // IN
	.a2(mant[17]), // IN
	.a3(mant[17]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_18
(
	.z(alub[18]), // OUT
	.a0(srcdp[18]), // IN
	.a1(mulqp[18]), // IN
	.a2(mant[18]), // IN
	.a3(mant[18]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_19
(
	.z(alub[19]), // OUT
	.a0(srcdp[19]), // IN
	.a1(mulqp[19]), // IN
	.a2(mant[19]), // IN
	.a3(mant[19]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_20
(
	.z(alub[20]), // OUT
	.a0(srcdp[20]), // IN
	.a1(mulqp[20]), // IN
	.a2(mant[20]), // IN
	.a3(mant[20]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_21
(
	.z(alub[21]), // OUT
	.a0(srcdp[21]), // IN
	.a1(mulqp[21]), // IN
	.a2(mant[21]), // IN
	.a3(mant[21]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_22
(
	.z(alub[22]), // OUT
	.a0(srcdp[22]), // IN
	.a1(mulqp[22]), // IN
	.a2(mant[22]), // IN
	.a3(mant[22]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_23
(
	.z(alub[23]), // OUT
	.a0(srcdp[23]), // IN
	.a1(mulqp[23]), // IN
	.a2(mant[23]), // IN
	.a3(mant[23]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_24
(
	.z(alub[24]), // OUT
	.a0(srcdp[24]), // IN
	.a1(mulqp[24]), // IN
	.a2(mant[24]), // IN
	.a3(mant[24]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_25
(
	.z(alub[25]), // OUT
	.a0(srcdp[25]), // IN
	.a1(mulqp[25]), // IN
	.a2(mant[25]), // IN
	.a3(mant[25]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_26
(
	.z(alub[26]), // OUT
	.a0(srcdp[26]), // IN
	.a1(mulqp[26]), // IN
	.a2(mant[26]), // IN
	.a3(mant[26]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_27
(
	.z(alub[27]), // OUT
	.a0(srcdp[27]), // IN
	.a1(mulqp[27]), // IN
	.a2(mant[27]), // IN
	.a3(mant[27]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_28
(
	.z(alub[28]), // OUT
	.a0(srcdp[28]), // IN
	.a1(mulqp[28]), // IN
	.a2(mant[28]), // IN
	.a3(mant[28]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_29
(
	.z(alub[29]), // OUT
	.a0(srcdp[29]), // IN
	.a1(mulqp[29]), // IN
	.a2(mant[29]), // IN
	.a3(mant[29]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_30
(
	.z(alub[30]), // OUT
	.a0(srcdp[30]), // IN
	.a1(mulqp[30]), // IN
	.a2(mant[30]), // IN
	.a3(mant[30]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);
mx4 alubmux_inst_31
(
	.z(alub[31]), // OUT
	.a0(srcdp[31]), // IN
	.a1(mulqp[31]), // IN
	.a2(mant[31]), // IN
	.a3(mant[31]), // IN
	.s0(macop_pp), // IN
	.s1(mantmodeb)  // IN
);

// ARITH.NET (208) - alu : alu32
alu32 alu_inst
(
	.aluq({aluq[0],aluq[1],aluq[2],aluq[3],aluq[4],aluq[5],aluq[6],aluq[7],aluq[8],aluq[9],aluq[10],aluq[11],aluq[12],aluq[13],aluq[14],aluq[15],aluq[16],aluq[17],aluq[18],aluq[19],aluq[20],aluq[21],aluq[22],aluq[23],aluq[24],aluq[25],aluq[26],aluq[27],aluq[28],aluq[29],aluq[30],aluq[31]}), // OUT
	.alu_co(alu_co), // OUT
	.alua({alua[0],alua[1],alua[2],alua[3],alua[4],alua[5],alua[6],alua[7],alua[8],alua[9],alua[10],alua[11],alua[12],alua[13],alua[14],alua[15],alua[16],alua[17],alua[18],alua[19],alua[20],alua[21],alua[22],alua[23],alua[24],alua[25],alua[26],alua[27],alua[28],alua[29],alua[30],alua[31]}), // IN
	.alub({alub[0],alub[1],alub[2],alub[3],alub[4],alub[5],alub[6],alub[7],alub[8],alub[9],alub[10],alub[11],alub[12],alub[13],alub[14],alub[15],alub[16],alub[17],alub[18],alub[19],alub[20],alub[21],alub[22],alub[23],alub[24],alub[25],alub[26],alub[27],alub[28],alub[29],alub[30],alub[31]}), // IN
	.carry_flag(carry_flag_obuf), // IN
	.alufunc({alufnc[0],alufnc[1],alufnc[2]}), // IN
	.dstdp_31(dstdp[31]), // IN
	.rev_subp(rev_subp)  // IN
);

// ARITH.NET (213) - brl : brlshift
brlshift brl_inst
(
	.brlq({brlq[0],brlq[1],brlq[2],brlq[3],brlq[4],brlq[5],brlq[6],brlq[7],brlq[8],brlq[9],brlq[10],brlq[11],brlq[12],brlq[13],brlq[14],brlq[15],brlq[16],brlq[17],brlq[18],brlq[19],brlq[20],brlq[21],brlq[22],brlq[23],brlq[24],brlq[25],brlq[26],brlq[27],brlq[28],brlq[29],brlq[30],brlq[31]}), // OUT
	.brl_carry(brl_carry), // OUT
	.brlmux_0(brlmuxp_0), // IN
	.brlmux_1(brlmuxp_1), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}), // IN
	.brld({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]})  // IN
);

// ARITH.NET (218) - saturate : saturate
saturate saturate_inst
(
	.q({satvallo[0],satvallo[1],satvallo[2],satvallo[3],satvallo[4],satvallo[5],satvallo[6],satvallo[7],satvallo[8],satvallo[9],satvallo[10],satvallo[11],satvallo[12],satvallo[13],satvallo[14],satvallo[15],satvallo[16],satvallo[17],satvallo[18],satvallo[19],satvallo[20],satvallo[21],satvallo[22],satvallo[23]}), // OUT
	.d({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}), // IN
	.sixteen(satszp_0), // IN
	.twentyfour(satszp_1)  // IN
);

// ARITH.NET (219) - satval : join
assign satval[0] = satvallo[0];
assign satval[1] = satvallo[1];
assign satval[2] = satvallo[2];
assign satval[3] = satvallo[3];
assign satval[4] = satvallo[4];
assign satval[5] = satvallo[5];
assign satval[6] = satvallo[6];
assign satval[7] = satvallo[7];
assign satval[8] = satvallo[8];
assign satval[9] = satvallo[9];
assign satval[10] = satvallo[10];
assign satval[11] = satvallo[11];
assign satval[12] = satvallo[12];
assign satval[13] = satvallo[13];
assign satval[14] = satvallo[14];
assign satval[15] = satvallo[15];
assign satval[16] = satvallo[16];
assign satval[17] = satvallo[17];
assign satval[18] = satvallo[18];
assign satval[19] = satvallo[19];
assign satval[20] = satvallo[20];
assign satval[21] = satvallo[21];
assign satval[22] = satvallo[22];
assign satval[23] = satvallo[23];
assign satval[24] = zero;
assign satval[25] = zero;
assign satval[26] = zero;
assign satval[27] = zero;
assign satval[28] = zero;
assign satval[29] = zero;
assign satval[30] = zero;
assign satval[31] = zero;

// ARITH.NET (224) - unpack : join
assign unpack[0] = dstdp[0];
assign unpack[1] = dstdp[1];
assign unpack[2] = dstdp[2];
assign unpack[3] = dstdp[3];
assign unpack[4] = dstdp[4];
assign unpack[5] = dstdp[5];
assign unpack[6] = dstdp[6];
assign unpack[7] = dstdp[7];
assign unpack[8] = zero;
assign unpack[9] = zero;
assign unpack[10] = zero;
assign unpack[11] = zero;
assign unpack[12] = zero;
assign unpack[13] = dstdp[8];
assign unpack[14] = dstdp[9];
assign unpack[15] = dstdp[10];
assign unpack[16] = dstdp[11];
assign unpack[17] = zero;
assign unpack[18] = zero;
assign unpack[19] = zero;
assign unpack[20] = zero;
assign unpack[21] = zero;
assign unpack[22] = dstdp[12];
assign unpack[23] = dstdp[13];
assign unpack[24] = dstdp[14];
assign unpack[25] = dstdp[15];
assign unpack[26] = zero;
assign unpack[27] = zero;
assign unpack[28] = zero;
assign unpack[29] = zero;
assign unpack[30] = zero;
assign unpack[31] = zero;

// ARITH.NET (229) - pack : join
assign pack[0] = dstdp[0];
assign pack[1] = dstdp[1];
assign pack[2] = dstdp[2];
assign pack[3] = dstdp[3];
assign pack[4] = dstdp[4];
assign pack[5] = dstdp[5];
assign pack[6] = dstdp[6];
assign pack[7] = dstdp[7];
assign pack[8] = dstdp[13];
assign pack[9] = dstdp[14];
assign pack[10] = dstdp[15];
assign pack[11] = dstdp[16];
assign pack[12] = dstdp[22];
assign pack[13] = dstdp[23];
assign pack[14] = dstdp[24];
assign pack[15] = dstdp[25];
assign pack[16] = zero;
assign pack[17] = zero;
assign pack[18] = zero;
assign pack[19] = zero;
assign pack[20] = zero;
assign pack[21] = zero;
assign pack[22] = zero;
assign pack[23] = zero;
assign pack[24] = zero;
assign pack[25] = zero;
assign pack[26] = zero;
assign pack[27] = zero;
assign pack[28] = zero;
assign pack[29] = zero;
assign pack[30] = zero;
assign pack[31] = zero;

// ARITH.NET (237) - resmux : mx8p
mx8 resmux_inst_0
(
	.z(resd[0]), // OUT
	.a0(aluq[0]), // IN
	.a1(brlq[0]), // IN
	.a2(satval[0]), // IN
	.a3(mulq[0]), // IN
	.a4(aluq[0]), // IN
	.a5(normi[0]), // IN
	.a6(pack[0]), // IN
	.a7(unpack[0]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_1
(
	.z(resd[1]), // OUT
	.a0(aluq[1]), // IN
	.a1(brlq[1]), // IN
	.a2(satval[1]), // IN
	.a3(mulq[1]), // IN
	.a4(aluq[1]), // IN
	.a5(normi[1]), // IN
	.a6(pack[1]), // IN
	.a7(unpack[1]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_2
(
	.z(resd[2]), // OUT
	.a0(aluq[2]), // IN
	.a1(brlq[2]), // IN
	.a2(satval[2]), // IN
	.a3(mulq[2]), // IN
	.a4(aluq[2]), // IN
	.a5(normi[2]), // IN
	.a6(pack[2]), // IN
	.a7(unpack[2]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_3
(
	.z(resd[3]), // OUT
	.a0(aluq[3]), // IN
	.a1(brlq[3]), // IN
	.a2(satval[3]), // IN
	.a3(mulq[3]), // IN
	.a4(aluq[3]), // IN
	.a5(normi[3]), // IN
	.a6(pack[3]), // IN
	.a7(unpack[3]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_4
(
	.z(resd[4]), // OUT
	.a0(aluq[4]), // IN
	.a1(brlq[4]), // IN
	.a2(satval[4]), // IN
	.a3(mulq[4]), // IN
	.a4(aluq[4]), // IN
	.a5(normi[4]), // IN
	.a6(pack[4]), // IN
	.a7(unpack[4]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_5
(
	.z(resd[5]), // OUT
	.a0(aluq[5]), // IN
	.a1(brlq[5]), // IN
	.a2(satval[5]), // IN
	.a3(mulq[5]), // IN
	.a4(aluq[5]), // IN
	.a5(normi[5]), // IN
	.a6(pack[5]), // IN
	.a7(unpack[5]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_6
(
	.z(resd[6]), // OUT
	.a0(aluq[6]), // IN
	.a1(brlq[6]), // IN
	.a2(satval[6]), // IN
	.a3(mulq[6]), // IN
	.a4(aluq[6]), // IN
	.a5(normi[6]), // IN
	.a6(pack[6]), // IN
	.a7(unpack[6]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_7
(
	.z(resd[7]), // OUT
	.a0(aluq[7]), // IN
	.a1(brlq[7]), // IN
	.a2(satval[7]), // IN
	.a3(mulq[7]), // IN
	.a4(aluq[7]), // IN
	.a5(normi[7]), // IN
	.a6(pack[7]), // IN
	.a7(unpack[7]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_8
(
	.z(resd[8]), // OUT
	.a0(aluq[8]), // IN
	.a1(brlq[8]), // IN
	.a2(satval[8]), // IN
	.a3(mulq[8]), // IN
	.a4(aluq[8]), // IN
	.a5(normi[8]), // IN
	.a6(pack[8]), // IN
	.a7(unpack[8]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_9
(
	.z(resd[9]), // OUT
	.a0(aluq[9]), // IN
	.a1(brlq[9]), // IN
	.a2(satval[9]), // IN
	.a3(mulq[9]), // IN
	.a4(aluq[9]), // IN
	.a5(normi[9]), // IN
	.a6(pack[9]), // IN
	.a7(unpack[9]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_10
(
	.z(resd[10]), // OUT
	.a0(aluq[10]), // IN
	.a1(brlq[10]), // IN
	.a2(satval[10]), // IN
	.a3(mulq[10]), // IN
	.a4(aluq[10]), // IN
	.a5(normi[10]), // IN
	.a6(pack[10]), // IN
	.a7(unpack[10]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_11
(
	.z(resd[11]), // OUT
	.a0(aluq[11]), // IN
	.a1(brlq[11]), // IN
	.a2(satval[11]), // IN
	.a3(mulq[11]), // IN
	.a4(aluq[11]), // IN
	.a5(normi[11]), // IN
	.a6(pack[11]), // IN
	.a7(unpack[11]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_12
(
	.z(resd[12]), // OUT
	.a0(aluq[12]), // IN
	.a1(brlq[12]), // IN
	.a2(satval[12]), // IN
	.a3(mulq[12]), // IN
	.a4(aluq[12]), // IN
	.a5(normi[12]), // IN
	.a6(pack[12]), // IN
	.a7(unpack[12]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_13
(
	.z(resd[13]), // OUT
	.a0(aluq[13]), // IN
	.a1(brlq[13]), // IN
	.a2(satval[13]), // IN
	.a3(mulq[13]), // IN
	.a4(aluq[13]), // IN
	.a5(normi[13]), // IN
	.a6(pack[13]), // IN
	.a7(unpack[13]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_14
(
	.z(resd[14]), // OUT
	.a0(aluq[14]), // IN
	.a1(brlq[14]), // IN
	.a2(satval[14]), // IN
	.a3(mulq[14]), // IN
	.a4(aluq[14]), // IN
	.a5(normi[14]), // IN
	.a6(pack[14]), // IN
	.a7(unpack[14]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_15
(
	.z(resd[15]), // OUT
	.a0(aluq[15]), // IN
	.a1(brlq[15]), // IN
	.a2(satval[15]), // IN
	.a3(mulq[15]), // IN
	.a4(aluq[15]), // IN
	.a5(normi[15]), // IN
	.a6(pack[15]), // IN
	.a7(unpack[15]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_16
(
	.z(resd[16]), // OUT
	.a0(aluq[16]), // IN
	.a1(brlq[16]), // IN
	.a2(satval[16]), // IN
	.a3(mulq[16]), // IN
	.a4(aluq[16]), // IN
	.a5(normi[16]), // IN
	.a6(pack[16]), // IN
	.a7(unpack[16]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_17
(
	.z(resd[17]), // OUT
	.a0(aluq[17]), // IN
	.a1(brlq[17]), // IN
	.a2(satval[17]), // IN
	.a3(mulq[17]), // IN
	.a4(aluq[17]), // IN
	.a5(normi[17]), // IN
	.a6(pack[17]), // IN
	.a7(unpack[17]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_18
(
	.z(resd[18]), // OUT
	.a0(aluq[18]), // IN
	.a1(brlq[18]), // IN
	.a2(satval[18]), // IN
	.a3(mulq[18]), // IN
	.a4(aluq[18]), // IN
	.a5(normi[18]), // IN
	.a6(pack[18]), // IN
	.a7(unpack[18]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_19
(
	.z(resd[19]), // OUT
	.a0(aluq[19]), // IN
	.a1(brlq[19]), // IN
	.a2(satval[19]), // IN
	.a3(mulq[19]), // IN
	.a4(aluq[19]), // IN
	.a5(normi[19]), // IN
	.a6(pack[19]), // IN
	.a7(unpack[19]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_20
(
	.z(resd[20]), // OUT
	.a0(aluq[20]), // IN
	.a1(brlq[20]), // IN
	.a2(satval[20]), // IN
	.a3(mulq[20]), // IN
	.a4(aluq[20]), // IN
	.a5(normi[20]), // IN
	.a6(pack[20]), // IN
	.a7(unpack[20]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_21
(
	.z(resd[21]), // OUT
	.a0(aluq[21]), // IN
	.a1(brlq[21]), // IN
	.a2(satval[21]), // IN
	.a3(mulq[21]), // IN
	.a4(aluq[21]), // IN
	.a5(normi[21]), // IN
	.a6(pack[21]), // IN
	.a7(unpack[21]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_22
(
	.z(resd[22]), // OUT
	.a0(aluq[22]), // IN
	.a1(brlq[22]), // IN
	.a2(satval[22]), // IN
	.a3(mulq[22]), // IN
	.a4(aluq[22]), // IN
	.a5(normi[22]), // IN
	.a6(pack[22]), // IN
	.a7(unpack[22]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_23
(
	.z(resd[23]), // OUT
	.a0(aluq[23]), // IN
	.a1(brlq[23]), // IN
	.a2(satval[23]), // IN
	.a3(mulq[23]), // IN
	.a4(aluq[23]), // IN
	.a5(normi[23]), // IN
	.a6(pack[23]), // IN
	.a7(unpack[23]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_24
(
	.z(resd[24]), // OUT
	.a0(aluq[24]), // IN
	.a1(brlq[24]), // IN
	.a2(satval[24]), // IN
	.a3(mulq[24]), // IN
	.a4(aluq[24]), // IN
	.a5(normi[24]), // IN
	.a6(pack[24]), // IN
	.a7(unpack[24]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_25
(
	.z(resd[25]), // OUT
	.a0(aluq[25]), // IN
	.a1(brlq[25]), // IN
	.a2(satval[25]), // IN
	.a3(mulq[25]), // IN
	.a4(aluq[25]), // IN
	.a5(normi[25]), // IN
	.a6(pack[25]), // IN
	.a7(unpack[25]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_26
(
	.z(resd[26]), // OUT
	.a0(aluq[26]), // IN
	.a1(brlq[26]), // IN
	.a2(satval[26]), // IN
	.a3(mulq[26]), // IN
	.a4(aluq[26]), // IN
	.a5(normi[26]), // IN
	.a6(pack[26]), // IN
	.a7(unpack[26]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_27
(
	.z(resd[27]), // OUT
	.a0(aluq[27]), // IN
	.a1(brlq[27]), // IN
	.a2(satval[27]), // IN
	.a3(mulq[27]), // IN
	.a4(aluq[27]), // IN
	.a5(normi[27]), // IN
	.a6(pack[27]), // IN
	.a7(unpack[27]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_28
(
	.z(resd[28]), // OUT
	.a0(aluq[28]), // IN
	.a1(brlq[28]), // IN
	.a2(satval[28]), // IN
	.a3(mulq[28]), // IN
	.a4(aluq[28]), // IN
	.a5(normi[28]), // IN
	.a6(pack[28]), // IN
	.a7(unpack[28]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_29
(
	.z(resd[29]), // OUT
	.a0(aluq[29]), // IN
	.a1(brlq[29]), // IN
	.a2(satval[29]), // IN
	.a3(mulq[29]), // IN
	.a4(aluq[29]), // IN
	.a5(normi[29]), // IN
	.a6(pack[29]), // IN
	.a7(unpack[29]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_30
(
	.z(resd[30]), // OUT
	.a0(aluq[30]), // IN
	.a1(brlq[30]), // IN
	.a2(satval[30]), // IN
	.a3(mulq[30]), // IN
	.a4(aluq[30]), // IN
	.a5(normi[30]), // IN
	.a6(pack[30]), // IN
	.a7(unpack[30]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);
mx8 resmux_inst_31
(
	.z(resd[31]), // OUT
	.a0(aluq[31]), // IN
	.a1(brlq[31]), // IN
	.a2(satval[31]), // IN
	.a3(mulq[31]), // IN
	.a4(aluq[31]), // IN
	.a5(normi[31]), // IN
	.a6(pack[31]), // IN
	.a7(unpack[31]), // IN
	.s0(resselp_0), // IN
	.s1(resselp_1), // IN
	.s2(resselp_2)  // IN
);

// ARITH.NET (243) - resldt : or2u
assign resldt = resldp | macop_pp;

// ARITH.NET (244) - resreg : fdsync32
fdsync32 resreg_inst
(
	.q({result_b0_obuf,result_b1_obuf,result_b2_obuf,result_b3_obuf,result_b4_obuf,result_b5_obuf,result_b6_obuf,result_b7_obuf,result_b8_obuf,result_b9_obuf,result_b10_obuf,result_b11_obuf,result_b12_obuf,result_b13_obuf,result_b14_obuf,result_b15_obuf,result_b16_obuf,result_b17_obuf,result_b18_obuf,result_b19_obuf,result_b20_obuf,result_b21_obuf,result_b22_obuf,result_b23_obuf,result_b24_obuf,result_b25_obuf,result_b26_obuf,result_b27_obuf,result_b28_obuf,result_b29_obuf,result_b30_obuf,result_b31_obuf}), // IO
	.d({resd[0],resd[1],resd[2],resd[3],resd[4],resd[5],resd[6],resd[7],resd[8],resd[9],resd[10],resd[11],resd[12],resd[13],resd[14],resd[15],resd[16],resd[17],resd[18],resd[19],resd[20],resd[21],resd[22],resd[23],resd[24],resd[25],resd[26],resd[27],resd[28],resd[29],resd[30],resd[31]}), // IN
	.ld(resldt), // IN
	.clk(clk)  // IN
);

// ARITH.NET (249) - zerodet : nr32
nr32 zerodet_inst
(
	.q(zerodet), // OUT
	.a_0(resd[0]), // IN
	.a_1(resd[1]), // IN
	.a_2(resd[2]), // IN
	.a_3(resd[3]), // IN
	.a_4(resd[4]), // IN
	.a_5(resd[5]), // IN
	.a_6(resd[6]), // IN
	.a_7(resd[7]), // IN
	.a_8(resd[8]), // IN
	.a_9(resd[9]), // IN
	.a_10(resd[10]), // IN
	.a_11(resd[11]), // IN
	.a_12(resd[12]), // IN
	.a_13(resd[13]), // IN
	.a_14(resd[14]), // IN
	.a_15(resd[15]), // IN
	.a_16(resd[16]), // IN
	.a_17(resd[17]), // IN
	.a_18(resd[18]), // IN
	.a_19(resd[19]), // IN
	.a_20(resd[20]), // IN
	.a_21(resd[21]), // IN
	.a_22(resd[22]), // IN
	.a_23(resd[23]), // IN
	.a_24(resd[24]), // IN
	.a_25(resd[25]), // IN
	.a_26(resd[26]), // IN
	.a_27(resd[27]), // IN
	.a_28(resd[28]), // IN
	.a_29(resd[29]), // IN
	.a_30(resd[30]), // IN
	.a_31(resd[31])  // IN
);

// ARITH.NET (250) - zfi : mx4
mx4 zfi_inst
(
	.z(zfi), // OUT
	.a0(zero_flag_obuf), // IN
	.a1(zerodet), // IN
	.a2(gpu_din[0]), // IN
	.a3(gpu_din[0]), // IN
	.s0(flagldp), // IN
	.s1(flagwr)  // IN
);

// ARITH.NET (252) - zeroflag : fd2q
fd2q zeroflag_inst
(
	.q(zero_flag_obuf), // OUT
	.d(zfi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// ARITH.NET (260) - cfisel0 : aor1
assign cfisel_0 = (flagldp & resselp_n_0) | flagwr;

// ARITH.NET (261) - cfisel1 : aor1
assign cfisel_1 = (flagldp & resselp_0) | flagwr;

// ARITH.NET (262) - cfi : mx4
mx4 cfi_inst
(
	.z(cfi), // OUT
	.a0(carry_flag_obuf), // IN
	.a1(alu_co), // IN
	.a2(brl_carry), // IN
	.a3(gpu_din[1]), // IN
	.s0(cfisel_0), // IN
	.s1(cfisel_1)  // IN
);

// ARITH.NET (264) - carryflag : fd2q
fd2q carryflag_inst
(
	.q(carry_flag_obuf), // OUT
	.d(cfi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// ARITH.NET (267) - nfi : mx4
mx4 nfi_inst
(
	.z(nfi), // OUT
	.a0(nega_flag_obuf), // IN
	.a1(resd[31]), // IN
	.a2(gpu_din[2]), // IN
	.a3(gpu_din[2]), // IN
	.s0(flagldp), // IN
	.s1(flagwr)  // IN
);

// ARITH.NET (269) - negaflag : fd2q
fd2q negaflag_inst
(
	.q(nega_flag_obuf), // OUT
	.d(nfi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// ARITH.NET (273) - flagrd[0] : ts
assign gpu_dout_0 = (flagrd) ? zero_flag_obuf : 1'bz;

// ARITH.NET (274) - flagrd[1] : ts
assign gpu_dout_1 = (flagrd) ? carry_flag_obuf : 1'bz;

// ARITH.NET (275) - flagrd[2] : ts
assign gpu_dout_2 = (flagrd) ? nega_flag_obuf : 1'bz;
endmodule
