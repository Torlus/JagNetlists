/* verilator lint_off LITENDIAN */
`include "defs.v"

module daddamux
(
	output [0:15] adda_0,
	output [0:15] adda_1,
	output [0:15] adda_2,
	output [0:15] adda_3,
	input [0:31] dstd_0,
	input [0:31] dstd_1,
	input [0:31] srcd_0,
	input [0:31] srcd_1,
	input [0:31] patd_0,
	input [0:31] patd_1,
	input [0:31] srcz1_0,
	input [0:31] srcz1_1,
	input [0:31] srcz2_0,
	input [0:31] srcz2_1,
	input daddasel_0,
	input daddasel_1,
	input daddasel_2
);
wire [0:31] addalo;
wire [0:31] addahi;
wire [0:31] sello;
wire [0:31] selhi;
wire dsel0b_0;
wire dsel0b_1;
wire dsel1b_0;
wire dsel1b_1;
wire dsel2b_0;
wire dsel2b_1;

// DATAMUX.NET (36) - dsel0b[0-1] : nivu2
assign dsel0b_0 = daddasel_0;
assign dsel0b_1 = daddasel_0;

// DATAMUX.NET (37) - dsel1b[0-1] : nivu2
assign dsel1b_0 = daddasel_1;
assign dsel1b_1 = daddasel_1;

// DATAMUX.NET (38) - dsel2b[0-1] : nivu2
assign dsel2b_0 = daddasel_2;
assign dsel2b_1 = daddasel_2;

// DATAMUX.NET (39) - sello : mx4
mx4 sello_inst_0
(
	.z /* OUT */ (sello[0]),
	.a0 /* IN */ (srcd_0[0]),
	.a1 /* IN */ (patd_0[0]),
	.a2 /* IN */ (srcz1_0[0]),
	.a3 /* IN */ (srcz2_0[0]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_1
(
	.z /* OUT */ (sello[1]),
	.a0 /* IN */ (srcd_0[1]),
	.a1 /* IN */ (patd_0[1]),
	.a2 /* IN */ (srcz1_0[1]),
	.a3 /* IN */ (srcz2_0[1]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_2
(
	.z /* OUT */ (sello[2]),
	.a0 /* IN */ (srcd_0[2]),
	.a1 /* IN */ (patd_0[2]),
	.a2 /* IN */ (srcz1_0[2]),
	.a3 /* IN */ (srcz2_0[2]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_3
(
	.z /* OUT */ (sello[3]),
	.a0 /* IN */ (srcd_0[3]),
	.a1 /* IN */ (patd_0[3]),
	.a2 /* IN */ (srcz1_0[3]),
	.a3 /* IN */ (srcz2_0[3]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_4
(
	.z /* OUT */ (sello[4]),
	.a0 /* IN */ (srcd_0[4]),
	.a1 /* IN */ (patd_0[4]),
	.a2 /* IN */ (srcz1_0[4]),
	.a3 /* IN */ (srcz2_0[4]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_5
(
	.z /* OUT */ (sello[5]),
	.a0 /* IN */ (srcd_0[5]),
	.a1 /* IN */ (patd_0[5]),
	.a2 /* IN */ (srcz1_0[5]),
	.a3 /* IN */ (srcz2_0[5]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_6
(
	.z /* OUT */ (sello[6]),
	.a0 /* IN */ (srcd_0[6]),
	.a1 /* IN */ (patd_0[6]),
	.a2 /* IN */ (srcz1_0[6]),
	.a3 /* IN */ (srcz2_0[6]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_7
(
	.z /* OUT */ (sello[7]),
	.a0 /* IN */ (srcd_0[7]),
	.a1 /* IN */ (patd_0[7]),
	.a2 /* IN */ (srcz1_0[7]),
	.a3 /* IN */ (srcz2_0[7]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_8
(
	.z /* OUT */ (sello[8]),
	.a0 /* IN */ (srcd_0[8]),
	.a1 /* IN */ (patd_0[8]),
	.a2 /* IN */ (srcz1_0[8]),
	.a3 /* IN */ (srcz2_0[8]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_9
(
	.z /* OUT */ (sello[9]),
	.a0 /* IN */ (srcd_0[9]),
	.a1 /* IN */ (patd_0[9]),
	.a2 /* IN */ (srcz1_0[9]),
	.a3 /* IN */ (srcz2_0[9]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_10
(
	.z /* OUT */ (sello[10]),
	.a0 /* IN */ (srcd_0[10]),
	.a1 /* IN */ (patd_0[10]),
	.a2 /* IN */ (srcz1_0[10]),
	.a3 /* IN */ (srcz2_0[10]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_11
(
	.z /* OUT */ (sello[11]),
	.a0 /* IN */ (srcd_0[11]),
	.a1 /* IN */ (patd_0[11]),
	.a2 /* IN */ (srcz1_0[11]),
	.a3 /* IN */ (srcz2_0[11]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_12
(
	.z /* OUT */ (sello[12]),
	.a0 /* IN */ (srcd_0[12]),
	.a1 /* IN */ (patd_0[12]),
	.a2 /* IN */ (srcz1_0[12]),
	.a3 /* IN */ (srcz2_0[12]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_13
(
	.z /* OUT */ (sello[13]),
	.a0 /* IN */ (srcd_0[13]),
	.a1 /* IN */ (patd_0[13]),
	.a2 /* IN */ (srcz1_0[13]),
	.a3 /* IN */ (srcz2_0[13]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_14
(
	.z /* OUT */ (sello[14]),
	.a0 /* IN */ (srcd_0[14]),
	.a1 /* IN */ (patd_0[14]),
	.a2 /* IN */ (srcz1_0[14]),
	.a3 /* IN */ (srcz2_0[14]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_15
(
	.z /* OUT */ (sello[15]),
	.a0 /* IN */ (srcd_0[15]),
	.a1 /* IN */ (patd_0[15]),
	.a2 /* IN */ (srcz1_0[15]),
	.a3 /* IN */ (srcz2_0[15]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_16
(
	.z /* OUT */ (sello[16]),
	.a0 /* IN */ (srcd_0[16]),
	.a1 /* IN */ (patd_0[16]),
	.a2 /* IN */ (srcz1_0[16]),
	.a3 /* IN */ (srcz2_0[16]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_17
(
	.z /* OUT */ (sello[17]),
	.a0 /* IN */ (srcd_0[17]),
	.a1 /* IN */ (patd_0[17]),
	.a2 /* IN */ (srcz1_0[17]),
	.a3 /* IN */ (srcz2_0[17]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_18
(
	.z /* OUT */ (sello[18]),
	.a0 /* IN */ (srcd_0[18]),
	.a1 /* IN */ (patd_0[18]),
	.a2 /* IN */ (srcz1_0[18]),
	.a3 /* IN */ (srcz2_0[18]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_19
(
	.z /* OUT */ (sello[19]),
	.a0 /* IN */ (srcd_0[19]),
	.a1 /* IN */ (patd_0[19]),
	.a2 /* IN */ (srcz1_0[19]),
	.a3 /* IN */ (srcz2_0[19]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_20
(
	.z /* OUT */ (sello[20]),
	.a0 /* IN */ (srcd_0[20]),
	.a1 /* IN */ (patd_0[20]),
	.a2 /* IN */ (srcz1_0[20]),
	.a3 /* IN */ (srcz2_0[20]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_21
(
	.z /* OUT */ (sello[21]),
	.a0 /* IN */ (srcd_0[21]),
	.a1 /* IN */ (patd_0[21]),
	.a2 /* IN */ (srcz1_0[21]),
	.a3 /* IN */ (srcz2_0[21]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_22
(
	.z /* OUT */ (sello[22]),
	.a0 /* IN */ (srcd_0[22]),
	.a1 /* IN */ (patd_0[22]),
	.a2 /* IN */ (srcz1_0[22]),
	.a3 /* IN */ (srcz2_0[22]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_23
(
	.z /* OUT */ (sello[23]),
	.a0 /* IN */ (srcd_0[23]),
	.a1 /* IN */ (patd_0[23]),
	.a2 /* IN */ (srcz1_0[23]),
	.a3 /* IN */ (srcz2_0[23]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_24
(
	.z /* OUT */ (sello[24]),
	.a0 /* IN */ (srcd_0[24]),
	.a1 /* IN */ (patd_0[24]),
	.a2 /* IN */ (srcz1_0[24]),
	.a3 /* IN */ (srcz2_0[24]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_25
(
	.z /* OUT */ (sello[25]),
	.a0 /* IN */ (srcd_0[25]),
	.a1 /* IN */ (patd_0[25]),
	.a2 /* IN */ (srcz1_0[25]),
	.a3 /* IN */ (srcz2_0[25]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_26
(
	.z /* OUT */ (sello[26]),
	.a0 /* IN */ (srcd_0[26]),
	.a1 /* IN */ (patd_0[26]),
	.a2 /* IN */ (srcz1_0[26]),
	.a3 /* IN */ (srcz2_0[26]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_27
(
	.z /* OUT */ (sello[27]),
	.a0 /* IN */ (srcd_0[27]),
	.a1 /* IN */ (patd_0[27]),
	.a2 /* IN */ (srcz1_0[27]),
	.a3 /* IN */ (srcz2_0[27]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_28
(
	.z /* OUT */ (sello[28]),
	.a0 /* IN */ (srcd_0[28]),
	.a1 /* IN */ (patd_0[28]),
	.a2 /* IN */ (srcz1_0[28]),
	.a3 /* IN */ (srcz2_0[28]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_29
(
	.z /* OUT */ (sello[29]),
	.a0 /* IN */ (srcd_0[29]),
	.a1 /* IN */ (patd_0[29]),
	.a2 /* IN */ (srcz1_0[29]),
	.a3 /* IN */ (srcz2_0[29]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_30
(
	.z /* OUT */ (sello[30]),
	.a0 /* IN */ (srcd_0[30]),
	.a1 /* IN */ (patd_0[30]),
	.a2 /* IN */ (srcz1_0[30]),
	.a3 /* IN */ (srcz2_0[30]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);
mx4 sello_inst_31
(
	.z /* OUT */ (sello[31]),
	.a0 /* IN */ (srcd_0[31]),
	.a1 /* IN */ (patd_0[31]),
	.a2 /* IN */ (srcz1_0[31]),
	.a3 /* IN */ (srcz2_0[31]),
	.s0 /* IN */ (dsel0b_0),
	.s1 /* IN */ (dsel1b_0)
);

// DATAMUX.NET (41) - selhi : mx4
mx4 selhi_inst_0
(
	.z /* OUT */ (selhi[0]),
	.a0 /* IN */ (srcd_1[0]),
	.a1 /* IN */ (patd_1[0]),
	.a2 /* IN */ (srcz1_1[0]),
	.a3 /* IN */ (srcz2_1[0]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_1
(
	.z /* OUT */ (selhi[1]),
	.a0 /* IN */ (srcd_1[1]),
	.a1 /* IN */ (patd_1[1]),
	.a2 /* IN */ (srcz1_1[1]),
	.a3 /* IN */ (srcz2_1[1]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_2
(
	.z /* OUT */ (selhi[2]),
	.a0 /* IN */ (srcd_1[2]),
	.a1 /* IN */ (patd_1[2]),
	.a2 /* IN */ (srcz1_1[2]),
	.a3 /* IN */ (srcz2_1[2]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_3
(
	.z /* OUT */ (selhi[3]),
	.a0 /* IN */ (srcd_1[3]),
	.a1 /* IN */ (patd_1[3]),
	.a2 /* IN */ (srcz1_1[3]),
	.a3 /* IN */ (srcz2_1[3]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_4
(
	.z /* OUT */ (selhi[4]),
	.a0 /* IN */ (srcd_1[4]),
	.a1 /* IN */ (patd_1[4]),
	.a2 /* IN */ (srcz1_1[4]),
	.a3 /* IN */ (srcz2_1[4]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_5
(
	.z /* OUT */ (selhi[5]),
	.a0 /* IN */ (srcd_1[5]),
	.a1 /* IN */ (patd_1[5]),
	.a2 /* IN */ (srcz1_1[5]),
	.a3 /* IN */ (srcz2_1[5]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_6
(
	.z /* OUT */ (selhi[6]),
	.a0 /* IN */ (srcd_1[6]),
	.a1 /* IN */ (patd_1[6]),
	.a2 /* IN */ (srcz1_1[6]),
	.a3 /* IN */ (srcz2_1[6]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_7
(
	.z /* OUT */ (selhi[7]),
	.a0 /* IN */ (srcd_1[7]),
	.a1 /* IN */ (patd_1[7]),
	.a2 /* IN */ (srcz1_1[7]),
	.a3 /* IN */ (srcz2_1[7]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_8
(
	.z /* OUT */ (selhi[8]),
	.a0 /* IN */ (srcd_1[8]),
	.a1 /* IN */ (patd_1[8]),
	.a2 /* IN */ (srcz1_1[8]),
	.a3 /* IN */ (srcz2_1[8]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_9
(
	.z /* OUT */ (selhi[9]),
	.a0 /* IN */ (srcd_1[9]),
	.a1 /* IN */ (patd_1[9]),
	.a2 /* IN */ (srcz1_1[9]),
	.a3 /* IN */ (srcz2_1[9]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_10
(
	.z /* OUT */ (selhi[10]),
	.a0 /* IN */ (srcd_1[10]),
	.a1 /* IN */ (patd_1[10]),
	.a2 /* IN */ (srcz1_1[10]),
	.a3 /* IN */ (srcz2_1[10]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_11
(
	.z /* OUT */ (selhi[11]),
	.a0 /* IN */ (srcd_1[11]),
	.a1 /* IN */ (patd_1[11]),
	.a2 /* IN */ (srcz1_1[11]),
	.a3 /* IN */ (srcz2_1[11]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_12
(
	.z /* OUT */ (selhi[12]),
	.a0 /* IN */ (srcd_1[12]),
	.a1 /* IN */ (patd_1[12]),
	.a2 /* IN */ (srcz1_1[12]),
	.a3 /* IN */ (srcz2_1[12]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_13
(
	.z /* OUT */ (selhi[13]),
	.a0 /* IN */ (srcd_1[13]),
	.a1 /* IN */ (patd_1[13]),
	.a2 /* IN */ (srcz1_1[13]),
	.a3 /* IN */ (srcz2_1[13]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_14
(
	.z /* OUT */ (selhi[14]),
	.a0 /* IN */ (srcd_1[14]),
	.a1 /* IN */ (patd_1[14]),
	.a2 /* IN */ (srcz1_1[14]),
	.a3 /* IN */ (srcz2_1[14]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_15
(
	.z /* OUT */ (selhi[15]),
	.a0 /* IN */ (srcd_1[15]),
	.a1 /* IN */ (patd_1[15]),
	.a2 /* IN */ (srcz1_1[15]),
	.a3 /* IN */ (srcz2_1[15]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_16
(
	.z /* OUT */ (selhi[16]),
	.a0 /* IN */ (srcd_1[16]),
	.a1 /* IN */ (patd_1[16]),
	.a2 /* IN */ (srcz1_1[16]),
	.a3 /* IN */ (srcz2_1[16]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_17
(
	.z /* OUT */ (selhi[17]),
	.a0 /* IN */ (srcd_1[17]),
	.a1 /* IN */ (patd_1[17]),
	.a2 /* IN */ (srcz1_1[17]),
	.a3 /* IN */ (srcz2_1[17]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_18
(
	.z /* OUT */ (selhi[18]),
	.a0 /* IN */ (srcd_1[18]),
	.a1 /* IN */ (patd_1[18]),
	.a2 /* IN */ (srcz1_1[18]),
	.a3 /* IN */ (srcz2_1[18]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_19
(
	.z /* OUT */ (selhi[19]),
	.a0 /* IN */ (srcd_1[19]),
	.a1 /* IN */ (patd_1[19]),
	.a2 /* IN */ (srcz1_1[19]),
	.a3 /* IN */ (srcz2_1[19]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_20
(
	.z /* OUT */ (selhi[20]),
	.a0 /* IN */ (srcd_1[20]),
	.a1 /* IN */ (patd_1[20]),
	.a2 /* IN */ (srcz1_1[20]),
	.a3 /* IN */ (srcz2_1[20]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_21
(
	.z /* OUT */ (selhi[21]),
	.a0 /* IN */ (srcd_1[21]),
	.a1 /* IN */ (patd_1[21]),
	.a2 /* IN */ (srcz1_1[21]),
	.a3 /* IN */ (srcz2_1[21]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_22
(
	.z /* OUT */ (selhi[22]),
	.a0 /* IN */ (srcd_1[22]),
	.a1 /* IN */ (patd_1[22]),
	.a2 /* IN */ (srcz1_1[22]),
	.a3 /* IN */ (srcz2_1[22]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_23
(
	.z /* OUT */ (selhi[23]),
	.a0 /* IN */ (srcd_1[23]),
	.a1 /* IN */ (patd_1[23]),
	.a2 /* IN */ (srcz1_1[23]),
	.a3 /* IN */ (srcz2_1[23]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_24
(
	.z /* OUT */ (selhi[24]),
	.a0 /* IN */ (srcd_1[24]),
	.a1 /* IN */ (patd_1[24]),
	.a2 /* IN */ (srcz1_1[24]),
	.a3 /* IN */ (srcz2_1[24]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_25
(
	.z /* OUT */ (selhi[25]),
	.a0 /* IN */ (srcd_1[25]),
	.a1 /* IN */ (patd_1[25]),
	.a2 /* IN */ (srcz1_1[25]),
	.a3 /* IN */ (srcz2_1[25]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_26
(
	.z /* OUT */ (selhi[26]),
	.a0 /* IN */ (srcd_1[26]),
	.a1 /* IN */ (patd_1[26]),
	.a2 /* IN */ (srcz1_1[26]),
	.a3 /* IN */ (srcz2_1[26]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_27
(
	.z /* OUT */ (selhi[27]),
	.a0 /* IN */ (srcd_1[27]),
	.a1 /* IN */ (patd_1[27]),
	.a2 /* IN */ (srcz1_1[27]),
	.a3 /* IN */ (srcz2_1[27]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_28
(
	.z /* OUT */ (selhi[28]),
	.a0 /* IN */ (srcd_1[28]),
	.a1 /* IN */ (patd_1[28]),
	.a2 /* IN */ (srcz1_1[28]),
	.a3 /* IN */ (srcz2_1[28]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_29
(
	.z /* OUT */ (selhi[29]),
	.a0 /* IN */ (srcd_1[29]),
	.a1 /* IN */ (patd_1[29]),
	.a2 /* IN */ (srcz1_1[29]),
	.a3 /* IN */ (srcz2_1[29]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_30
(
	.z /* OUT */ (selhi[30]),
	.a0 /* IN */ (srcd_1[30]),
	.a1 /* IN */ (patd_1[30]),
	.a2 /* IN */ (srcz1_1[30]),
	.a3 /* IN */ (srcz2_1[30]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);
mx4 selhi_inst_31
(
	.z /* OUT */ (selhi[31]),
	.a0 /* IN */ (srcd_1[31]),
	.a1 /* IN */ (patd_1[31]),
	.a2 /* IN */ (srcz1_1[31]),
	.a3 /* IN */ (srcz2_1[31]),
	.s0 /* IN */ (dsel0b_1),
	.s1 /* IN */ (dsel1b_1)
);

// DATAMUX.NET (44) - addalo : mx2p
mx2 addalo_inst_0
(
	.z /* OUT */ (addalo[0]),
	.a0 /* IN */ (dstd_0[0]),
	.a1 /* IN */ (sello[0]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_1
(
	.z /* OUT */ (addalo[1]),
	.a0 /* IN */ (dstd_0[1]),
	.a1 /* IN */ (sello[1]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_2
(
	.z /* OUT */ (addalo[2]),
	.a0 /* IN */ (dstd_0[2]),
	.a1 /* IN */ (sello[2]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_3
(
	.z /* OUT */ (addalo[3]),
	.a0 /* IN */ (dstd_0[3]),
	.a1 /* IN */ (sello[3]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_4
(
	.z /* OUT */ (addalo[4]),
	.a0 /* IN */ (dstd_0[4]),
	.a1 /* IN */ (sello[4]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_5
(
	.z /* OUT */ (addalo[5]),
	.a0 /* IN */ (dstd_0[5]),
	.a1 /* IN */ (sello[5]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_6
(
	.z /* OUT */ (addalo[6]),
	.a0 /* IN */ (dstd_0[6]),
	.a1 /* IN */ (sello[6]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_7
(
	.z /* OUT */ (addalo[7]),
	.a0 /* IN */ (dstd_0[7]),
	.a1 /* IN */ (sello[7]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_8
(
	.z /* OUT */ (addalo[8]),
	.a0 /* IN */ (dstd_0[8]),
	.a1 /* IN */ (sello[8]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_9
(
	.z /* OUT */ (addalo[9]),
	.a0 /* IN */ (dstd_0[9]),
	.a1 /* IN */ (sello[9]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_10
(
	.z /* OUT */ (addalo[10]),
	.a0 /* IN */ (dstd_0[10]),
	.a1 /* IN */ (sello[10]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_11
(
	.z /* OUT */ (addalo[11]),
	.a0 /* IN */ (dstd_0[11]),
	.a1 /* IN */ (sello[11]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_12
(
	.z /* OUT */ (addalo[12]),
	.a0 /* IN */ (dstd_0[12]),
	.a1 /* IN */ (sello[12]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_13
(
	.z /* OUT */ (addalo[13]),
	.a0 /* IN */ (dstd_0[13]),
	.a1 /* IN */ (sello[13]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_14
(
	.z /* OUT */ (addalo[14]),
	.a0 /* IN */ (dstd_0[14]),
	.a1 /* IN */ (sello[14]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_15
(
	.z /* OUT */ (addalo[15]),
	.a0 /* IN */ (dstd_0[15]),
	.a1 /* IN */ (sello[15]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_16
(
	.z /* OUT */ (addalo[16]),
	.a0 /* IN */ (dstd_0[16]),
	.a1 /* IN */ (sello[16]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_17
(
	.z /* OUT */ (addalo[17]),
	.a0 /* IN */ (dstd_0[17]),
	.a1 /* IN */ (sello[17]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_18
(
	.z /* OUT */ (addalo[18]),
	.a0 /* IN */ (dstd_0[18]),
	.a1 /* IN */ (sello[18]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_19
(
	.z /* OUT */ (addalo[19]),
	.a0 /* IN */ (dstd_0[19]),
	.a1 /* IN */ (sello[19]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_20
(
	.z /* OUT */ (addalo[20]),
	.a0 /* IN */ (dstd_0[20]),
	.a1 /* IN */ (sello[20]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_21
(
	.z /* OUT */ (addalo[21]),
	.a0 /* IN */ (dstd_0[21]),
	.a1 /* IN */ (sello[21]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_22
(
	.z /* OUT */ (addalo[22]),
	.a0 /* IN */ (dstd_0[22]),
	.a1 /* IN */ (sello[22]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_23
(
	.z /* OUT */ (addalo[23]),
	.a0 /* IN */ (dstd_0[23]),
	.a1 /* IN */ (sello[23]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_24
(
	.z /* OUT */ (addalo[24]),
	.a0 /* IN */ (dstd_0[24]),
	.a1 /* IN */ (sello[24]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_25
(
	.z /* OUT */ (addalo[25]),
	.a0 /* IN */ (dstd_0[25]),
	.a1 /* IN */ (sello[25]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_26
(
	.z /* OUT */ (addalo[26]),
	.a0 /* IN */ (dstd_0[26]),
	.a1 /* IN */ (sello[26]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_27
(
	.z /* OUT */ (addalo[27]),
	.a0 /* IN */ (dstd_0[27]),
	.a1 /* IN */ (sello[27]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_28
(
	.z /* OUT */ (addalo[28]),
	.a0 /* IN */ (dstd_0[28]),
	.a1 /* IN */ (sello[28]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_29
(
	.z /* OUT */ (addalo[29]),
	.a0 /* IN */ (dstd_0[29]),
	.a1 /* IN */ (sello[29]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_30
(
	.z /* OUT */ (addalo[30]),
	.a0 /* IN */ (dstd_0[30]),
	.a1 /* IN */ (sello[30]),
	.s /* IN */ (dsel2b_0)
);
mx2 addalo_inst_31
(
	.z /* OUT */ (addalo[31]),
	.a0 /* IN */ (dstd_0[31]),
	.a1 /* IN */ (sello[31]),
	.s /* IN */ (dsel2b_0)
);

// DATAMUX.NET (45) - addahi : mx2p
mx2 addahi_inst_0
(
	.z /* OUT */ (addahi[0]),
	.a0 /* IN */ (dstd_1[0]),
	.a1 /* IN */ (selhi[0]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_1
(
	.z /* OUT */ (addahi[1]),
	.a0 /* IN */ (dstd_1[1]),
	.a1 /* IN */ (selhi[1]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_2
(
	.z /* OUT */ (addahi[2]),
	.a0 /* IN */ (dstd_1[2]),
	.a1 /* IN */ (selhi[2]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_3
(
	.z /* OUT */ (addahi[3]),
	.a0 /* IN */ (dstd_1[3]),
	.a1 /* IN */ (selhi[3]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_4
(
	.z /* OUT */ (addahi[4]),
	.a0 /* IN */ (dstd_1[4]),
	.a1 /* IN */ (selhi[4]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_5
(
	.z /* OUT */ (addahi[5]),
	.a0 /* IN */ (dstd_1[5]),
	.a1 /* IN */ (selhi[5]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_6
(
	.z /* OUT */ (addahi[6]),
	.a0 /* IN */ (dstd_1[6]),
	.a1 /* IN */ (selhi[6]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_7
(
	.z /* OUT */ (addahi[7]),
	.a0 /* IN */ (dstd_1[7]),
	.a1 /* IN */ (selhi[7]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_8
(
	.z /* OUT */ (addahi[8]),
	.a0 /* IN */ (dstd_1[8]),
	.a1 /* IN */ (selhi[8]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_9
(
	.z /* OUT */ (addahi[9]),
	.a0 /* IN */ (dstd_1[9]),
	.a1 /* IN */ (selhi[9]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_10
(
	.z /* OUT */ (addahi[10]),
	.a0 /* IN */ (dstd_1[10]),
	.a1 /* IN */ (selhi[10]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_11
(
	.z /* OUT */ (addahi[11]),
	.a0 /* IN */ (dstd_1[11]),
	.a1 /* IN */ (selhi[11]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_12
(
	.z /* OUT */ (addahi[12]),
	.a0 /* IN */ (dstd_1[12]),
	.a1 /* IN */ (selhi[12]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_13
(
	.z /* OUT */ (addahi[13]),
	.a0 /* IN */ (dstd_1[13]),
	.a1 /* IN */ (selhi[13]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_14
(
	.z /* OUT */ (addahi[14]),
	.a0 /* IN */ (dstd_1[14]),
	.a1 /* IN */ (selhi[14]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_15
(
	.z /* OUT */ (addahi[15]),
	.a0 /* IN */ (dstd_1[15]),
	.a1 /* IN */ (selhi[15]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_16
(
	.z /* OUT */ (addahi[16]),
	.a0 /* IN */ (dstd_1[16]),
	.a1 /* IN */ (selhi[16]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_17
(
	.z /* OUT */ (addahi[17]),
	.a0 /* IN */ (dstd_1[17]),
	.a1 /* IN */ (selhi[17]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_18
(
	.z /* OUT */ (addahi[18]),
	.a0 /* IN */ (dstd_1[18]),
	.a1 /* IN */ (selhi[18]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_19
(
	.z /* OUT */ (addahi[19]),
	.a0 /* IN */ (dstd_1[19]),
	.a1 /* IN */ (selhi[19]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_20
(
	.z /* OUT */ (addahi[20]),
	.a0 /* IN */ (dstd_1[20]),
	.a1 /* IN */ (selhi[20]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_21
(
	.z /* OUT */ (addahi[21]),
	.a0 /* IN */ (dstd_1[21]),
	.a1 /* IN */ (selhi[21]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_22
(
	.z /* OUT */ (addahi[22]),
	.a0 /* IN */ (dstd_1[22]),
	.a1 /* IN */ (selhi[22]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_23
(
	.z /* OUT */ (addahi[23]),
	.a0 /* IN */ (dstd_1[23]),
	.a1 /* IN */ (selhi[23]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_24
(
	.z /* OUT */ (addahi[24]),
	.a0 /* IN */ (dstd_1[24]),
	.a1 /* IN */ (selhi[24]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_25
(
	.z /* OUT */ (addahi[25]),
	.a0 /* IN */ (dstd_1[25]),
	.a1 /* IN */ (selhi[25]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_26
(
	.z /* OUT */ (addahi[26]),
	.a0 /* IN */ (dstd_1[26]),
	.a1 /* IN */ (selhi[26]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_27
(
	.z /* OUT */ (addahi[27]),
	.a0 /* IN */ (dstd_1[27]),
	.a1 /* IN */ (selhi[27]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_28
(
	.z /* OUT */ (addahi[28]),
	.a0 /* IN */ (dstd_1[28]),
	.a1 /* IN */ (selhi[28]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_29
(
	.z /* OUT */ (addahi[29]),
	.a0 /* IN */ (dstd_1[29]),
	.a1 /* IN */ (selhi[29]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_30
(
	.z /* OUT */ (addahi[30]),
	.a0 /* IN */ (dstd_1[30]),
	.a1 /* IN */ (selhi[30]),
	.s /* IN */ (dsel2b_1)
);
mx2 addahi_inst_31
(
	.z /* OUT */ (addahi[31]),
	.a0 /* IN */ (dstd_1[31]),
	.a1 /* IN */ (selhi[31]),
	.s /* IN */ (dsel2b_1)
);

// DATAMUX.NET (47) - adda[0] : join
assign adda_0[0] = addalo[0];
assign adda_0[1] = addalo[1];
assign adda_0[2] = addalo[2];
assign adda_0[3] = addalo[3];
assign adda_0[4] = addalo[4];
assign adda_0[5] = addalo[5];
assign adda_0[6] = addalo[6];
assign adda_0[7] = addalo[7];
assign adda_0[8] = addalo[8];
assign adda_0[9] = addalo[9];
assign adda_0[10] = addalo[10];
assign adda_0[11] = addalo[11];
assign adda_0[12] = addalo[12];
assign adda_0[13] = addalo[13];
assign adda_0[14] = addalo[14];
assign adda_0[15] = addalo[15];

// DATAMUX.NET (48) - adda[1] : join
assign adda_1[0] = addalo[16];
assign adda_1[1] = addalo[17];
assign adda_1[2] = addalo[18];
assign adda_1[3] = addalo[19];
assign adda_1[4] = addalo[20];
assign adda_1[5] = addalo[21];
assign adda_1[6] = addalo[22];
assign adda_1[7] = addalo[23];
assign adda_1[8] = addalo[24];
assign adda_1[9] = addalo[25];
assign adda_1[10] = addalo[26];
assign adda_1[11] = addalo[27];
assign adda_1[12] = addalo[28];
assign adda_1[13] = addalo[29];
assign adda_1[14] = addalo[30];
assign adda_1[15] = addalo[31];

// DATAMUX.NET (49) - adda[2] : join
assign adda_2[0] = addahi[0];
assign adda_2[1] = addahi[1];
assign adda_2[2] = addahi[2];
assign adda_2[3] = addahi[3];
assign adda_2[4] = addahi[4];
assign adda_2[5] = addahi[5];
assign adda_2[6] = addahi[6];
assign adda_2[7] = addahi[7];
assign adda_2[8] = addahi[8];
assign adda_2[9] = addahi[9];
assign adda_2[10] = addahi[10];
assign adda_2[11] = addahi[11];
assign adda_2[12] = addahi[12];
assign adda_2[13] = addahi[13];
assign adda_2[14] = addahi[14];
assign adda_2[15] = addahi[15];

// DATAMUX.NET (50) - adda[3] : join
assign adda_3[0] = addahi[16];
assign adda_3[1] = addahi[17];
assign adda_3[2] = addahi[18];
assign adda_3[3] = addahi[19];
assign adda_3[4] = addahi[20];
assign adda_3[5] = addahi[21];
assign adda_3[6] = addahi[22];
assign adda_3[7] = addahi[23];
assign adda_3[8] = addahi[24];
assign adda_3[9] = addahi[25];
assign adda_3[10] = addahi[26];
assign adda_3[11] = addahi[27];
assign adda_3[12] = addahi[28];
assign adda_3[13] = addahi[29];
assign adda_3[14] = addahi[30];
assign adda_3[15] = addahi[31];
endmodule
/* verilator lint_on LITENDIAN */
