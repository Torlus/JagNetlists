/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_brlshift
(
	output [0:31] brlq,
	output brl_carry,
	input brlmux_0,
	input brlmux_1,
	input [0:31] srcdp,
	input [0:31] brld
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

// DSP_A-5Q.NET (496) - zero : tie0
assign zero = 1'b0;

// DSP_A-5Q.NET (497) - brl0i : iv
assign brlmux_n_0 = ~brlmux_0;

// DSP_A-5Q.NET (498) - srcd\[0-4] : iv
assign srcdp_n_0 = ~srcdp[0];
assign srcdp_n_1 = ~srcdp[1];
assign srcdp_n_2 = ~srcdp[2];
assign srcdp_n_3 = ~srcdp[3];
assign srcdp_n_4 = ~srcdp[4];

// DSP_A-5Q.NET (499) - srcd\[31] : iv
assign srcdp_n_31 = ~srcdp[31];

// DSP_A-5Q.NET (503) - srcdc[0] : join
assign srcdpc_0 = srcdp[0];

// DSP_A-5Q.NET (504) - srcdc[1] : ha1
ha1 srcdc_index_1_inst
(
	.s /* OUT */ (srcdpc_1),
	.co /* OUT */ (scc_1),
	.a /* IN */ (srcdp_n_1),
	.b /* IN */ (srcdp_n_0)
);

// DSP_A-5Q.NET (505) - srcdc[2] : ha1
ha1 srcdc_index_2_inst
(
	.s /* OUT */ (srcdpc_2),
	.co /* OUT */ (scc_2),
	.a /* IN */ (srcdp_n_2),
	.b /* IN */ (scc_1)
);

// DSP_A-5Q.NET (506) - srcdc[3] : ha1
ha1 srcdc_index_3_inst
(
	.s /* OUT */ (srcdpc_3),
	.co /* OUT */ (scc_3),
	.a /* IN */ (srcdp_n_3),
	.b /* IN */ (scc_2)
);

// DSP_A-5Q.NET (507) - srcdc[4] : eo
assign srcdpc_4 = srcdp_n_4 ^ scc_3;

// DSP_A-5Q.NET (517) - rotate\ : nd2
assign rotate_n = ~(brlmux_n_0 & brlmux_1);

// DSP_A-5Q.NET (518) - rotate : iv
assign rotate = ~rotate_n;

// DSP_A-5Q.NET (524) - uflowt : nr26
j_nr26 uflowt_inst
(
	.q /* OUT */ (uflowt),
	.a_0 /* IN */ (srcdp[5]),
	.a_1 /* IN */ (srcdp[6]),
	.a_2 /* IN */ (srcdp[7]),
	.a_3 /* IN */ (srcdp[8]),
	.a_4 /* IN */ (srcdp[9]),
	.a_5 /* IN */ (srcdp[10]),
	.a_6 /* IN */ (srcdp[11]),
	.a_7 /* IN */ (srcdp[12]),
	.a_8 /* IN */ (srcdp[13]),
	.a_9 /* IN */ (srcdp[14]),
	.a_10 /* IN */ (srcdp[15]),
	.a_11 /* IN */ (srcdp[16]),
	.a_12 /* IN */ (srcdp[17]),
	.a_13 /* IN */ (srcdp[18]),
	.a_14 /* IN */ (srcdp[19]),
	.a_15 /* IN */ (srcdp[20]),
	.a_16 /* IN */ (srcdp[21]),
	.a_17 /* IN */ (srcdp[22]),
	.a_18 /* IN */ (srcdp[23]),
	.a_19 /* IN */ (srcdp[24]),
	.a_20 /* IN */ (srcdp[25]),
	.a_21 /* IN */ (srcdp[26]),
	.a_22 /* IN */ (srcdp[27]),
	.a_23 /* IN */ (srcdp[28]),
	.a_24 /* IN */ (srcdp[29]),
	.a_25 /* IN */ (srcdp[30])
);

// DSP_A-5Q.NET (525) - uflow : nr2
assign uflow = ~(srcdp[31] | uflowt);

// DSP_A-5Q.NET (531) - b5t30h\ : nd26
j_nd26 b5t30h_n_inst
(
	.q /* OUT */ (b5t30h_n),
	.a_0 /* IN */ (srcdp[5]),
	.a_1 /* IN */ (srcdp[6]),
	.a_2 /* IN */ (srcdp[7]),
	.a_3 /* IN */ (srcdp[8]),
	.a_4 /* IN */ (srcdp[9]),
	.a_5 /* IN */ (srcdp[10]),
	.a_6 /* IN */ (srcdp[11]),
	.a_7 /* IN */ (srcdp[12]),
	.a_8 /* IN */ (srcdp[13]),
	.a_9 /* IN */ (srcdp[14]),
	.a_10 /* IN */ (srcdp[15]),
	.a_11 /* IN */ (srcdp[16]),
	.a_12 /* IN */ (srcdp[17]),
	.a_13 /* IN */ (srcdp[18]),
	.a_14 /* IN */ (srcdp[19]),
	.a_15 /* IN */ (srcdp[20]),
	.a_16 /* IN */ (srcdp[21]),
	.a_17 /* IN */ (srcdp[22]),
	.a_18 /* IN */ (srcdp[23]),
	.a_19 /* IN */ (srcdp[24]),
	.a_20 /* IN */ (srcdp[25]),
	.a_21 /* IN */ (srcdp[26]),
	.a_22 /* IN */ (srcdp[27]),
	.a_23 /* IN */ (srcdp[28]),
	.a_24 /* IN */ (srcdp[29]),
	.a_25 /* IN */ (srcdp[30])
);

// DSP_A-5Q.NET (532) - b5t30h : iv
assign b5t30h = ~b5t30h_n;

// DSP_A-5Q.NET (533) - shzero : nr5
j_nr5 shzero_inst
(
	.z /* OUT */ (shzero),
	.a /* IN */ (srcdp[0]),
	.b /* IN */ (srcdp[1]),
	.c /* IN */ (srcdp[2]),
	.d /* IN */ (srcdp[3]),
	.e /* IN */ (srcdp[4])
);

// DSP_A-5Q.NET (534) - shzero\ : iv
assign shzero_n = ~shzero;

// DSP_A-5Q.NET (535) - oflowtt : aor1
assign oflowt = (b5t30h & shzero) | b5t30h_n;

// DSP_A-5Q.NET (536) - oflow : an2
assign oflow = srcdp[31] & oflowt;

// DSP_A-5Q.NET (542) - outflowt\ : nr2
assign outflowt_n = ~(oflow | uflow);

// DSP_A-5Q.NET (543) - outflow : nr2
assign outflow = ~(outflowt_n | rotate);

// DSP_A-5Q.NET (544) - outflow\ : iv
assign outflow_n = ~outflow;

// DSP_A-5Q.NET (546) - shiftcnt[0-4] : an2
assign shiftcnt_0 = srcdpc_0 & outflow_n;
assign shiftcnt_1 = srcdpc_1 & outflow_n;
assign shiftcnt_2 = srcdpc_2 & outflow_n;
assign shiftcnt_3 = srcdpc_3 & outflow_n;
assign shiftcnt_4 = srcdpc_4 & outflow_n;

// DSP_A-5Q.NET (553) - mux0t : nd3
assign mux0t = ~(srcdp_n_31 & rotate_n & shzero_n);

// DSP_A-5Q.NET (554) - mux0 : nd2
assign mux_0 = ~(mux0t & outflow_n);

// DSP_A-5Q.NET (562) - ashr\ : nd3
assign ashr_n = ~(srcdp_n_31 & brlmux_0 & brlmux_1);

// DSP_A-5Q.NET (563) - mux1t : nd2
assign mux_1 = ~(ashr_n & rotate_n);

// DSP_A-5Q.NET (574) - brl : barrel32
j_barrel32 brl_inst
(
	.z_0 /* OUT */ (z_0),
	.z_1 /* OUT */ (z_1),
	.z_2 /* OUT */ (z_2),
	.z_3 /* OUT */ (z_3),
	.z_4 /* OUT */ (z_4),
	.z_5 /* OUT */ (z_5),
	.z_6 /* OUT */ (z_6),
	.z_7 /* OUT */ (z_7),
	.z_8 /* OUT */ (z_8),
	.z_9 /* OUT */ (z_9),
	.z_10 /* OUT */ (z_10),
	.z_11 /* OUT */ (z_11),
	.z_12 /* OUT */ (z_12),
	.z_13 /* OUT */ (z_13),
	.z_14 /* OUT */ (z_14),
	.z_15 /* OUT */ (z_15),
	.z_16 /* OUT */ (z_16),
	.z_17 /* OUT */ (z_17),
	.z_18 /* OUT */ (z_18),
	.z_19 /* OUT */ (z_19),
	.z_20 /* OUT */ (z_20),
	.z_21 /* OUT */ (z_21),
	.z_22 /* OUT */ (z_22),
	.z_23 /* OUT */ (z_23),
	.z_24 /* OUT */ (z_24),
	.z_25 /* OUT */ (z_25),
	.z_26 /* OUT */ (z_26),
	.z_27 /* OUT */ (z_27),
	.z_28 /* OUT */ (z_28),
	.z_29 /* OUT */ (z_29),
	.z_30 /* OUT */ (z_30),
	.z_31 /* OUT */ (z_31),
	.mux_0 /* IN */ (mux_0),
	.mux_1 /* IN */ (mux_1),
	.sft_0 /* IN */ (shiftcnt_0),
	.sft_1 /* IN */ (shiftcnt_1),
	.sft_2 /* IN */ (shiftcnt_2),
	.sft_3 /* IN */ (shiftcnt_3),
	.sft_4 /* IN */ (shiftcnt_4),
	.flin /* IN */ (zero),
	.a_0 /* IN */ (brld[0]),
	.a_1 /* IN */ (brld[1]),
	.a_2 /* IN */ (brld[2]),
	.a_3 /* IN */ (brld[3]),
	.a_4 /* IN */ (brld[4]),
	.a_5 /* IN */ (brld[5]),
	.a_6 /* IN */ (brld[6]),
	.a_7 /* IN */ (brld[7]),
	.a_8 /* IN */ (brld[8]),
	.a_9 /* IN */ (brld[9]),
	.a_10 /* IN */ (brld[10]),
	.a_11 /* IN */ (brld[11]),
	.a_12 /* IN */ (brld[12]),
	.a_13 /* IN */ (brld[13]),
	.a_14 /* IN */ (brld[14]),
	.a_15 /* IN */ (brld[15]),
	.a_16 /* IN */ (brld[16]),
	.a_17 /* IN */ (brld[17]),
	.a_18 /* IN */ (brld[18]),
	.a_19 /* IN */ (brld[19]),
	.a_20 /* IN */ (brld[20]),
	.a_21 /* IN */ (brld[21]),
	.a_22 /* IN */ (brld[22]),
	.a_23 /* IN */ (brld[23]),
	.a_24 /* IN */ (brld[24]),
	.a_25 /* IN */ (brld[25]),
	.a_26 /* IN */ (brld[26]),
	.a_27 /* IN */ (brld[27]),
	.a_28 /* IN */ (brld[28]),
	.a_29 /* IN */ (brld[29]),
	.a_30 /* IN */ (brld[30]),
	.a_31 /* IN */ (brld[31])
);

// DSP_A-5Q.NET (577) - brlq : join
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

// DSP_A-5Q.NET (582) - brl_carry : mx2
mx2 brl_carry_inst
(
	.z /* OUT */ (brl_carry),
	.a0 /* IN */ (brld[31]),
	.a1 /* IN */ (brld[0]),
	.s /* IN */ (mux_0)
);
endmodule
/* verilator lint_on LITENDIAN */
