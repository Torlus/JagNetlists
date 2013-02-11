`include "defs.v"

module brlshift
(
	output[0:31] brlq;
	output brl_carry,
	input brlmux_0,
	input brlmux_1,
	input[0:31] srcdp;
	input[0:31] brld
);
wire zero;
wire brlmux_n_0;
wire srcdp_n_0;
wire srcdp_n_1;
wire srcdp_n_2;
wire srcdp_n_3;
wire srcdp_n_4;
wire srcdp_n_31;
wire srcdpc_0;
wire srcdpc_1;
wire scc_1;
wire srcdpc_2;
wire scc_2;
wire srcdpc_3;
wire scc_3;
wire srcdpc_4;
wire rotate_n;
wire rotate;
wire uflowt;
wire uflow;
wire b5t30h_n;
wire b5t30h;
wire shzero;
wire shzero_n;
wire oflowt;
wire oflow;
wire outflowt_n;
wire outflow;
wire outflow_n;
wire shiftcnt_0;
wire shiftcnt_1;
wire shiftcnt_2;
wire shiftcnt_3;
wire shiftcnt_4;
wire mux0t;
wire mux_0;
wire ashr_n;
wire mux_1;
wire z_0;
wire z_1;
wire z_2;
wire z_3;
wire z_4;
wire z_5;
wire z_6;
wire z_7;
wire z_8;
wire z_9;
wire z_10;
wire z_11;
wire z_12;
wire z_13;
wire z_14;
wire z_15;
wire z_16;
wire z_17;
wire z_18;
wire z_19;
wire z_20;
wire z_21;
wire z_22;
wire z_23;
wire z_24;
wire z_25;
wire z_26;
wire z_27;
wire z_28;
wire z_29;
wire z_30;
wire z_31;

// ARITH.NET (408) - zero : tie0
assign zero = 1'b0;

// ARITH.NET (409) - brl0i : iv
assign brlmux_n_0 = ~brlmux_0;

// ARITH.NET (410) - srcd\[0-4] : iv
assign srcdp_n_0 = ~srcdp[0];
assign srcdp_n_1 = ~srcdp[1];
assign srcdp_n_2 = ~srcdp[2];
assign srcdp_n_3 = ~srcdp[3];
assign srcdp_n_4 = ~srcdp[4];

// ARITH.NET (411) - srcd\[31] : iv
assign srcdp_n_31 = ~srcdp[31];

// ARITH.NET (415) - srcdc[0] : join
assign srcdpc_0 = srcdp[0];

// ARITH.NET (416) - srcdc[1] : ha1
ha1 srcdc_index_1_inst
(
	.s(srcdpc_1), // OUT
	.co(scc_1), // OUT
	.a(srcdp_n_1), // IN
	.b(srcdp_n_0)  // IN
);

// ARITH.NET (417) - srcdc[2] : ha1
ha1 srcdc_index_2_inst
(
	.s(srcdpc_2), // OUT
	.co(scc_2), // OUT
	.a(srcdp_n_2), // IN
	.b(scc_1)  // IN
);

// ARITH.NET (418) - srcdc[3] : ha1
ha1 srcdc_index_3_inst
(
	.s(srcdpc_3), // OUT
	.co(scc_3), // OUT
	.a(srcdp_n_3), // IN
	.b(scc_2)  // IN
);

// ARITH.NET (419) - srcdc[4] : eo
assign srcdpc_4 = srcdp_n_4 ^ scc_3;

// ARITH.NET (429) - rotate\ : nd2
assign rotate_n = ~(brlmux_n_0 & brlmux_1);

// ARITH.NET (430) - rotate : iv
assign rotate = ~rotate_n;

// ARITH.NET (436) - uflowt : nr26
nr26 uflowt_inst
(
	.q(uflowt), // OUT
	.a_0(srcdp[5]), // IN
	.a_1(srcdp[6]), // IN
	.a_2(srcdp[7]), // IN
	.a_3(srcdp[8]), // IN
	.a_4(srcdp[9]), // IN
	.a_5(srcdp[10]), // IN
	.a_6(srcdp[11]), // IN
	.a_7(srcdp[12]), // IN
	.a_8(srcdp[13]), // IN
	.a_9(srcdp[14]), // IN
	.a_10(srcdp[15]), // IN
	.a_11(srcdp[16]), // IN
	.a_12(srcdp[17]), // IN
	.a_13(srcdp[18]), // IN
	.a_14(srcdp[19]), // IN
	.a_15(srcdp[20]), // IN
	.a_16(srcdp[21]), // IN
	.a_17(srcdp[22]), // IN
	.a_18(srcdp[23]), // IN
	.a_19(srcdp[24]), // IN
	.a_20(srcdp[25]), // IN
	.a_21(srcdp[26]), // IN
	.a_22(srcdp[27]), // IN
	.a_23(srcdp[28]), // IN
	.a_24(srcdp[29]), // IN
	.a_25(srcdp[30])  // IN
);

// ARITH.NET (437) - uflow : nr2
assign uflow = ~(srcdp[31] | uflowt);

// ARITH.NET (443) - b5t30h\ : nd26
nd26 b5t30h_n_inst
(
	.q(b5t30h_n), // OUT
	.a_0(srcdp[5]), // IN
	.a_1(srcdp[6]), // IN
	.a_2(srcdp[7]), // IN
	.a_3(srcdp[8]), // IN
	.a_4(srcdp[9]), // IN
	.a_5(srcdp[10]), // IN
	.a_6(srcdp[11]), // IN
	.a_7(srcdp[12]), // IN
	.a_8(srcdp[13]), // IN
	.a_9(srcdp[14]), // IN
	.a_10(srcdp[15]), // IN
	.a_11(srcdp[16]), // IN
	.a_12(srcdp[17]), // IN
	.a_13(srcdp[18]), // IN
	.a_14(srcdp[19]), // IN
	.a_15(srcdp[20]), // IN
	.a_16(srcdp[21]), // IN
	.a_17(srcdp[22]), // IN
	.a_18(srcdp[23]), // IN
	.a_19(srcdp[24]), // IN
	.a_20(srcdp[25]), // IN
	.a_21(srcdp[26]), // IN
	.a_22(srcdp[27]), // IN
	.a_23(srcdp[28]), // IN
	.a_24(srcdp[29]), // IN
	.a_25(srcdp[30])  // IN
);

// ARITH.NET (444) - b5t30h : iv
assign b5t30h = ~b5t30h_n;

// ARITH.NET (445) - shzero : nr5
nr5 shzero_inst
(
	.z(shzero), // IO
	.a(srcdp[0]), // IN
	.b(srcdp[1]), // IN
	.c(srcdp[2]), // IN
	.d(srcdp[3]), // IN
	.e(srcdp[4])  // IN
);

// ARITH.NET (446) - shzero\ : iv
assign shzero_n = ~shzero;

// ARITH.NET (447) - oflowtt : aor1
assign oflowt = (b5t30h & shzero) | b5t30h_n;

// ARITH.NET (448) - oflow : an2
assign oflow = srcdp[31] & oflowt;

// ARITH.NET (454) - outflowt\ : nr2
assign outflowt_n = ~(oflow | uflow);

// ARITH.NET (455) - outflow : nr2
assign outflow = ~(outflowt_n | rotate);

// ARITH.NET (456) - outflow\ : iv
assign outflow_n = ~outflow;

// ARITH.NET (458) - shiftcnt[0-4] : an2
assign shiftcnt_0 = srcdpc_0 & outflow_n;
assign shiftcnt_1 = srcdpc_1 & outflow_n;
assign shiftcnt_2 = srcdpc_2 & outflow_n;
assign shiftcnt_3 = srcdpc_3 & outflow_n;
assign shiftcnt_4 = srcdpc_4 & outflow_n;

// ARITH.NET (465) - mux0t : nd3
assign mux0t = ~(srcdp_n_31 & rotate_n & shzero_n);

// ARITH.NET (466) - mux0 : nd2
assign mux_0 = ~(mux0t & outflow_n);

// ARITH.NET (474) - ashr\ : nd3
assign ashr_n = ~(srcdp_n_31 & brlmux_0 & brlmux_1);

// ARITH.NET (475) - mux1t : nd2
assign mux_1 = ~(ashr_n & rotate_n);

// ARITH.NET (486) - brl : barrel32
barrel32 brl_inst
(
	.z_0(z_0), // OUT
	.z_1(z_1), // OUT
	.z_2(z_2), // OUT
	.z_3(z_3), // OUT
	.z_4(z_4), // OUT
	.z_5(z_5), // OUT
	.z_6(z_6), // OUT
	.z_7(z_7), // OUT
	.z_8(z_8), // OUT
	.z_9(z_9), // OUT
	.z_10(z_10), // OUT
	.z_11(z_11), // OUT
	.z_12(z_12), // OUT
	.z_13(z_13), // OUT
	.z_14(z_14), // OUT
	.z_15(z_15), // OUT
	.z_16(z_16), // OUT
	.z_17(z_17), // OUT
	.z_18(z_18), // OUT
	.z_19(z_19), // OUT
	.z_20(z_20), // OUT
	.z_21(z_21), // OUT
	.z_22(z_22), // OUT
	.z_23(z_23), // OUT
	.z_24(z_24), // OUT
	.z_25(z_25), // OUT
	.z_26(z_26), // OUT
	.z_27(z_27), // OUT
	.z_28(z_28), // OUT
	.z_29(z_29), // OUT
	.z_30(z_30), // OUT
	.z_31(z_31), // OUT
	.mux_0(mux_0), // IN
	.mux_1(mux_1), // IN
	.sft_0(shiftcnt_0), // IN
	.sft_1(shiftcnt_1), // IN
	.sft_2(shiftcnt_2), // IN
	.sft_3(shiftcnt_3), // IN
	.sft_4(shiftcnt_4), // IN
	.flin(zero), // IN
	.a_0(brld[0]), // IN
	.a_1(brld[1]), // IN
	.a_2(brld[2]), // IN
	.a_3(brld[3]), // IN
	.a_4(brld[4]), // IN
	.a_5(brld[5]), // IN
	.a_6(brld[6]), // IN
	.a_7(brld[7]), // IN
	.a_8(brld[8]), // IN
	.a_9(brld[9]), // IN
	.a_10(brld[10]), // IN
	.a_11(brld[11]), // IN
	.a_12(brld[12]), // IN
	.a_13(brld[13]), // IN
	.a_14(brld[14]), // IN
	.a_15(brld[15]), // IN
	.a_16(brld[16]), // IN
	.a_17(brld[17]), // IN
	.a_18(brld[18]), // IN
	.a_19(brld[19]), // IN
	.a_20(brld[20]), // IN
	.a_21(brld[21]), // IN
	.a_22(brld[22]), // IN
	.a_23(brld[23]), // IN
	.a_24(brld[24]), // IN
	.a_25(brld[25]), // IN
	.a_26(brld[26]), // IN
	.a_27(brld[27]), // IN
	.a_28(brld[28]), // IN
	.a_29(brld[29]), // IN
	.a_30(brld[30]), // IN
	.a_31(brld[31])  // IN
);

// ARITH.NET (489) - brlq : join
assign brlq[0] = z_0;
assign brlq[1] = z_1;
assign brlq[2] = z_2;
assign brlq[3] = z_3;
assign brlq[4] = z_4;
assign brlq[5] = z_5;
assign brlq[6] = z_6;
assign brlq[7] = z_7;
assign brlq[8] = z_8;
assign brlq[9] = z_9;
assign brlq[10] = z_10;
assign brlq[11] = z_11;
assign brlq[12] = z_12;
assign brlq[13] = z_13;
assign brlq[14] = z_14;
assign brlq[15] = z_15;
assign brlq[16] = z_16;
assign brlq[17] = z_17;
assign brlq[18] = z_18;
assign brlq[19] = z_19;
assign brlq[20] = z_20;
assign brlq[21] = z_21;
assign brlq[22] = z_22;
assign brlq[23] = z_23;
assign brlq[24] = z_24;
assign brlq[25] = z_25;
assign brlq[26] = z_26;
assign brlq[27] = z_27;
assign brlq[28] = z_28;
assign brlq[29] = z_29;
assign brlq[30] = z_30;
assign brlq[31] = z_31;

// ARITH.NET (494) - brl_carry : mx2
mx2 brl_carry_inst
(
	.z(brl_carry), // OUT
	.a0(brld[31]), // IN
	.a1(brld[0]), // IN
	.s(mux_0)  // IN
);
endmodule
