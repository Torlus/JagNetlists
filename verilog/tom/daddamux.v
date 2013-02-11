`include "defs.v"

module daddamux
(
	output[0:15] adda_0;
	output[0:15] adda_1;
	output[0:15] adda_2;
	output[0:15] adda_3;
	input[0:31] dstd_0;
	input[0:31] dstd_1;
	input[0:31] srcd_0;
	input[0:31] srcd_1;
	input[0:31] patd_0;
	input[0:31] patd_1;
	input[0:31] srcz1_0;
	input[0:31] srcz1_1;
	input[0:31] srcz2_0;
	input[0:31] srcz2_1;
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
	.z(sello[0]), // OUT
	.a0(srcd_0[0]), // IN
	.a1(patd_0[0]), // IN
	.a2(srcz1_0[0]), // IN
	.a3(srcz2_0[0]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_1
(
	.z(sello[1]), // OUT
	.a0(srcd_0[1]), // IN
	.a1(patd_0[1]), // IN
	.a2(srcz1_0[1]), // IN
	.a3(srcz2_0[1]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_2
(
	.z(sello[2]), // OUT
	.a0(srcd_0[2]), // IN
	.a1(patd_0[2]), // IN
	.a2(srcz1_0[2]), // IN
	.a3(srcz2_0[2]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_3
(
	.z(sello[3]), // OUT
	.a0(srcd_0[3]), // IN
	.a1(patd_0[3]), // IN
	.a2(srcz1_0[3]), // IN
	.a3(srcz2_0[3]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_4
(
	.z(sello[4]), // OUT
	.a0(srcd_0[4]), // IN
	.a1(patd_0[4]), // IN
	.a2(srcz1_0[4]), // IN
	.a3(srcz2_0[4]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_5
(
	.z(sello[5]), // OUT
	.a0(srcd_0[5]), // IN
	.a1(patd_0[5]), // IN
	.a2(srcz1_0[5]), // IN
	.a3(srcz2_0[5]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_6
(
	.z(sello[6]), // OUT
	.a0(srcd_0[6]), // IN
	.a1(patd_0[6]), // IN
	.a2(srcz1_0[6]), // IN
	.a3(srcz2_0[6]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_7
(
	.z(sello[7]), // OUT
	.a0(srcd_0[7]), // IN
	.a1(patd_0[7]), // IN
	.a2(srcz1_0[7]), // IN
	.a3(srcz2_0[7]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_8
(
	.z(sello[8]), // OUT
	.a0(srcd_0[8]), // IN
	.a1(patd_0[8]), // IN
	.a2(srcz1_0[8]), // IN
	.a3(srcz2_0[8]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_9
(
	.z(sello[9]), // OUT
	.a0(srcd_0[9]), // IN
	.a1(patd_0[9]), // IN
	.a2(srcz1_0[9]), // IN
	.a3(srcz2_0[9]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_10
(
	.z(sello[10]), // OUT
	.a0(srcd_0[10]), // IN
	.a1(patd_0[10]), // IN
	.a2(srcz1_0[10]), // IN
	.a3(srcz2_0[10]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_11
(
	.z(sello[11]), // OUT
	.a0(srcd_0[11]), // IN
	.a1(patd_0[11]), // IN
	.a2(srcz1_0[11]), // IN
	.a3(srcz2_0[11]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_12
(
	.z(sello[12]), // OUT
	.a0(srcd_0[12]), // IN
	.a1(patd_0[12]), // IN
	.a2(srcz1_0[12]), // IN
	.a3(srcz2_0[12]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_13
(
	.z(sello[13]), // OUT
	.a0(srcd_0[13]), // IN
	.a1(patd_0[13]), // IN
	.a2(srcz1_0[13]), // IN
	.a3(srcz2_0[13]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_14
(
	.z(sello[14]), // OUT
	.a0(srcd_0[14]), // IN
	.a1(patd_0[14]), // IN
	.a2(srcz1_0[14]), // IN
	.a3(srcz2_0[14]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_15
(
	.z(sello[15]), // OUT
	.a0(srcd_0[15]), // IN
	.a1(patd_0[15]), // IN
	.a2(srcz1_0[15]), // IN
	.a3(srcz2_0[15]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_16
(
	.z(sello[16]), // OUT
	.a0(srcd_0[16]), // IN
	.a1(patd_0[16]), // IN
	.a2(srcz1_0[16]), // IN
	.a3(srcz2_0[16]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_17
(
	.z(sello[17]), // OUT
	.a0(srcd_0[17]), // IN
	.a1(patd_0[17]), // IN
	.a2(srcz1_0[17]), // IN
	.a3(srcz2_0[17]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_18
(
	.z(sello[18]), // OUT
	.a0(srcd_0[18]), // IN
	.a1(patd_0[18]), // IN
	.a2(srcz1_0[18]), // IN
	.a3(srcz2_0[18]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_19
(
	.z(sello[19]), // OUT
	.a0(srcd_0[19]), // IN
	.a1(patd_0[19]), // IN
	.a2(srcz1_0[19]), // IN
	.a3(srcz2_0[19]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_20
(
	.z(sello[20]), // OUT
	.a0(srcd_0[20]), // IN
	.a1(patd_0[20]), // IN
	.a2(srcz1_0[20]), // IN
	.a3(srcz2_0[20]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_21
(
	.z(sello[21]), // OUT
	.a0(srcd_0[21]), // IN
	.a1(patd_0[21]), // IN
	.a2(srcz1_0[21]), // IN
	.a3(srcz2_0[21]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_22
(
	.z(sello[22]), // OUT
	.a0(srcd_0[22]), // IN
	.a1(patd_0[22]), // IN
	.a2(srcz1_0[22]), // IN
	.a3(srcz2_0[22]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_23
(
	.z(sello[23]), // OUT
	.a0(srcd_0[23]), // IN
	.a1(patd_0[23]), // IN
	.a2(srcz1_0[23]), // IN
	.a3(srcz2_0[23]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_24
(
	.z(sello[24]), // OUT
	.a0(srcd_0[24]), // IN
	.a1(patd_0[24]), // IN
	.a2(srcz1_0[24]), // IN
	.a3(srcz2_0[24]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_25
(
	.z(sello[25]), // OUT
	.a0(srcd_0[25]), // IN
	.a1(patd_0[25]), // IN
	.a2(srcz1_0[25]), // IN
	.a3(srcz2_0[25]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_26
(
	.z(sello[26]), // OUT
	.a0(srcd_0[26]), // IN
	.a1(patd_0[26]), // IN
	.a2(srcz1_0[26]), // IN
	.a3(srcz2_0[26]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_27
(
	.z(sello[27]), // OUT
	.a0(srcd_0[27]), // IN
	.a1(patd_0[27]), // IN
	.a2(srcz1_0[27]), // IN
	.a3(srcz2_0[27]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_28
(
	.z(sello[28]), // OUT
	.a0(srcd_0[28]), // IN
	.a1(patd_0[28]), // IN
	.a2(srcz1_0[28]), // IN
	.a3(srcz2_0[28]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_29
(
	.z(sello[29]), // OUT
	.a0(srcd_0[29]), // IN
	.a1(patd_0[29]), // IN
	.a2(srcz1_0[29]), // IN
	.a3(srcz2_0[29]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_30
(
	.z(sello[30]), // OUT
	.a0(srcd_0[30]), // IN
	.a1(patd_0[30]), // IN
	.a2(srcz1_0[30]), // IN
	.a3(srcz2_0[30]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);
mx4 sello_inst_31
(
	.z(sello[31]), // OUT
	.a0(srcd_0[31]), // IN
	.a1(patd_0[31]), // IN
	.a2(srcz1_0[31]), // IN
	.a3(srcz2_0[31]), // IN
	.s0(dsel0b_0), // IN
	.s1(dsel1b_0)  // IN
);

// DATAMUX.NET (41) - selhi : mx4
mx4 selhi_inst_0
(
	.z(selhi[0]), // OUT
	.a0(srcd_1[0]), // IN
	.a1(patd_1[0]), // IN
	.a2(srcz1_1[0]), // IN
	.a3(srcz2_1[0]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_1
(
	.z(selhi[1]), // OUT
	.a0(srcd_1[1]), // IN
	.a1(patd_1[1]), // IN
	.a2(srcz1_1[1]), // IN
	.a3(srcz2_1[1]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_2
(
	.z(selhi[2]), // OUT
	.a0(srcd_1[2]), // IN
	.a1(patd_1[2]), // IN
	.a2(srcz1_1[2]), // IN
	.a3(srcz2_1[2]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_3
(
	.z(selhi[3]), // OUT
	.a0(srcd_1[3]), // IN
	.a1(patd_1[3]), // IN
	.a2(srcz1_1[3]), // IN
	.a3(srcz2_1[3]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_4
(
	.z(selhi[4]), // OUT
	.a0(srcd_1[4]), // IN
	.a1(patd_1[4]), // IN
	.a2(srcz1_1[4]), // IN
	.a3(srcz2_1[4]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_5
(
	.z(selhi[5]), // OUT
	.a0(srcd_1[5]), // IN
	.a1(patd_1[5]), // IN
	.a2(srcz1_1[5]), // IN
	.a3(srcz2_1[5]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_6
(
	.z(selhi[6]), // OUT
	.a0(srcd_1[6]), // IN
	.a1(patd_1[6]), // IN
	.a2(srcz1_1[6]), // IN
	.a3(srcz2_1[6]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_7
(
	.z(selhi[7]), // OUT
	.a0(srcd_1[7]), // IN
	.a1(patd_1[7]), // IN
	.a2(srcz1_1[7]), // IN
	.a3(srcz2_1[7]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_8
(
	.z(selhi[8]), // OUT
	.a0(srcd_1[8]), // IN
	.a1(patd_1[8]), // IN
	.a2(srcz1_1[8]), // IN
	.a3(srcz2_1[8]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_9
(
	.z(selhi[9]), // OUT
	.a0(srcd_1[9]), // IN
	.a1(patd_1[9]), // IN
	.a2(srcz1_1[9]), // IN
	.a3(srcz2_1[9]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_10
(
	.z(selhi[10]), // OUT
	.a0(srcd_1[10]), // IN
	.a1(patd_1[10]), // IN
	.a2(srcz1_1[10]), // IN
	.a3(srcz2_1[10]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_11
(
	.z(selhi[11]), // OUT
	.a0(srcd_1[11]), // IN
	.a1(patd_1[11]), // IN
	.a2(srcz1_1[11]), // IN
	.a3(srcz2_1[11]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_12
(
	.z(selhi[12]), // OUT
	.a0(srcd_1[12]), // IN
	.a1(patd_1[12]), // IN
	.a2(srcz1_1[12]), // IN
	.a3(srcz2_1[12]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_13
(
	.z(selhi[13]), // OUT
	.a0(srcd_1[13]), // IN
	.a1(patd_1[13]), // IN
	.a2(srcz1_1[13]), // IN
	.a3(srcz2_1[13]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_14
(
	.z(selhi[14]), // OUT
	.a0(srcd_1[14]), // IN
	.a1(patd_1[14]), // IN
	.a2(srcz1_1[14]), // IN
	.a3(srcz2_1[14]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_15
(
	.z(selhi[15]), // OUT
	.a0(srcd_1[15]), // IN
	.a1(patd_1[15]), // IN
	.a2(srcz1_1[15]), // IN
	.a3(srcz2_1[15]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_16
(
	.z(selhi[16]), // OUT
	.a0(srcd_1[16]), // IN
	.a1(patd_1[16]), // IN
	.a2(srcz1_1[16]), // IN
	.a3(srcz2_1[16]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_17
(
	.z(selhi[17]), // OUT
	.a0(srcd_1[17]), // IN
	.a1(patd_1[17]), // IN
	.a2(srcz1_1[17]), // IN
	.a3(srcz2_1[17]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_18
(
	.z(selhi[18]), // OUT
	.a0(srcd_1[18]), // IN
	.a1(patd_1[18]), // IN
	.a2(srcz1_1[18]), // IN
	.a3(srcz2_1[18]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_19
(
	.z(selhi[19]), // OUT
	.a0(srcd_1[19]), // IN
	.a1(patd_1[19]), // IN
	.a2(srcz1_1[19]), // IN
	.a3(srcz2_1[19]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_20
(
	.z(selhi[20]), // OUT
	.a0(srcd_1[20]), // IN
	.a1(patd_1[20]), // IN
	.a2(srcz1_1[20]), // IN
	.a3(srcz2_1[20]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_21
(
	.z(selhi[21]), // OUT
	.a0(srcd_1[21]), // IN
	.a1(patd_1[21]), // IN
	.a2(srcz1_1[21]), // IN
	.a3(srcz2_1[21]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_22
(
	.z(selhi[22]), // OUT
	.a0(srcd_1[22]), // IN
	.a1(patd_1[22]), // IN
	.a2(srcz1_1[22]), // IN
	.a3(srcz2_1[22]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_23
(
	.z(selhi[23]), // OUT
	.a0(srcd_1[23]), // IN
	.a1(patd_1[23]), // IN
	.a2(srcz1_1[23]), // IN
	.a3(srcz2_1[23]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_24
(
	.z(selhi[24]), // OUT
	.a0(srcd_1[24]), // IN
	.a1(patd_1[24]), // IN
	.a2(srcz1_1[24]), // IN
	.a3(srcz2_1[24]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_25
(
	.z(selhi[25]), // OUT
	.a0(srcd_1[25]), // IN
	.a1(patd_1[25]), // IN
	.a2(srcz1_1[25]), // IN
	.a3(srcz2_1[25]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_26
(
	.z(selhi[26]), // OUT
	.a0(srcd_1[26]), // IN
	.a1(patd_1[26]), // IN
	.a2(srcz1_1[26]), // IN
	.a3(srcz2_1[26]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_27
(
	.z(selhi[27]), // OUT
	.a0(srcd_1[27]), // IN
	.a1(patd_1[27]), // IN
	.a2(srcz1_1[27]), // IN
	.a3(srcz2_1[27]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_28
(
	.z(selhi[28]), // OUT
	.a0(srcd_1[28]), // IN
	.a1(patd_1[28]), // IN
	.a2(srcz1_1[28]), // IN
	.a3(srcz2_1[28]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_29
(
	.z(selhi[29]), // OUT
	.a0(srcd_1[29]), // IN
	.a1(patd_1[29]), // IN
	.a2(srcz1_1[29]), // IN
	.a3(srcz2_1[29]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_30
(
	.z(selhi[30]), // OUT
	.a0(srcd_1[30]), // IN
	.a1(patd_1[30]), // IN
	.a2(srcz1_1[30]), // IN
	.a3(srcz2_1[30]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);
mx4 selhi_inst_31
(
	.z(selhi[31]), // OUT
	.a0(srcd_1[31]), // IN
	.a1(patd_1[31]), // IN
	.a2(srcz1_1[31]), // IN
	.a3(srcz2_1[31]), // IN
	.s0(dsel0b_1), // IN
	.s1(dsel1b_1)  // IN
);

// DATAMUX.NET (44) - addalo : mx2p
mx2 addalo_inst_0
(
	.z(addalo[0]), // OUT
	.a0(dstd_0[0]), // IN
	.a1(sello[0]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_1
(
	.z(addalo[1]), // OUT
	.a0(dstd_0[1]), // IN
	.a1(sello[1]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_2
(
	.z(addalo[2]), // OUT
	.a0(dstd_0[2]), // IN
	.a1(sello[2]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_3
(
	.z(addalo[3]), // OUT
	.a0(dstd_0[3]), // IN
	.a1(sello[3]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_4
(
	.z(addalo[4]), // OUT
	.a0(dstd_0[4]), // IN
	.a1(sello[4]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_5
(
	.z(addalo[5]), // OUT
	.a0(dstd_0[5]), // IN
	.a1(sello[5]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_6
(
	.z(addalo[6]), // OUT
	.a0(dstd_0[6]), // IN
	.a1(sello[6]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_7
(
	.z(addalo[7]), // OUT
	.a0(dstd_0[7]), // IN
	.a1(sello[7]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_8
(
	.z(addalo[8]), // OUT
	.a0(dstd_0[8]), // IN
	.a1(sello[8]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_9
(
	.z(addalo[9]), // OUT
	.a0(dstd_0[9]), // IN
	.a1(sello[9]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_10
(
	.z(addalo[10]), // OUT
	.a0(dstd_0[10]), // IN
	.a1(sello[10]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_11
(
	.z(addalo[11]), // OUT
	.a0(dstd_0[11]), // IN
	.a1(sello[11]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_12
(
	.z(addalo[12]), // OUT
	.a0(dstd_0[12]), // IN
	.a1(sello[12]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_13
(
	.z(addalo[13]), // OUT
	.a0(dstd_0[13]), // IN
	.a1(sello[13]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_14
(
	.z(addalo[14]), // OUT
	.a0(dstd_0[14]), // IN
	.a1(sello[14]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_15
(
	.z(addalo[15]), // OUT
	.a0(dstd_0[15]), // IN
	.a1(sello[15]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_16
(
	.z(addalo[16]), // OUT
	.a0(dstd_0[16]), // IN
	.a1(sello[16]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_17
(
	.z(addalo[17]), // OUT
	.a0(dstd_0[17]), // IN
	.a1(sello[17]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_18
(
	.z(addalo[18]), // OUT
	.a0(dstd_0[18]), // IN
	.a1(sello[18]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_19
(
	.z(addalo[19]), // OUT
	.a0(dstd_0[19]), // IN
	.a1(sello[19]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_20
(
	.z(addalo[20]), // OUT
	.a0(dstd_0[20]), // IN
	.a1(sello[20]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_21
(
	.z(addalo[21]), // OUT
	.a0(dstd_0[21]), // IN
	.a1(sello[21]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_22
(
	.z(addalo[22]), // OUT
	.a0(dstd_0[22]), // IN
	.a1(sello[22]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_23
(
	.z(addalo[23]), // OUT
	.a0(dstd_0[23]), // IN
	.a1(sello[23]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_24
(
	.z(addalo[24]), // OUT
	.a0(dstd_0[24]), // IN
	.a1(sello[24]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_25
(
	.z(addalo[25]), // OUT
	.a0(dstd_0[25]), // IN
	.a1(sello[25]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_26
(
	.z(addalo[26]), // OUT
	.a0(dstd_0[26]), // IN
	.a1(sello[26]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_27
(
	.z(addalo[27]), // OUT
	.a0(dstd_0[27]), // IN
	.a1(sello[27]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_28
(
	.z(addalo[28]), // OUT
	.a0(dstd_0[28]), // IN
	.a1(sello[28]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_29
(
	.z(addalo[29]), // OUT
	.a0(dstd_0[29]), // IN
	.a1(sello[29]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_30
(
	.z(addalo[30]), // OUT
	.a0(dstd_0[30]), // IN
	.a1(sello[30]), // IN
	.s(dsel2b_0)  // IN
);
mx2 addalo_inst_31
(
	.z(addalo[31]), // OUT
	.a0(dstd_0[31]), // IN
	.a1(sello[31]), // IN
	.s(dsel2b_0)  // IN
);

// DATAMUX.NET (45) - addahi : mx2p
mx2 addahi_inst_0
(
	.z(addahi[0]), // OUT
	.a0(dstd_1[0]), // IN
	.a1(selhi[0]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_1
(
	.z(addahi[1]), // OUT
	.a0(dstd_1[1]), // IN
	.a1(selhi[1]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_2
(
	.z(addahi[2]), // OUT
	.a0(dstd_1[2]), // IN
	.a1(selhi[2]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_3
(
	.z(addahi[3]), // OUT
	.a0(dstd_1[3]), // IN
	.a1(selhi[3]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_4
(
	.z(addahi[4]), // OUT
	.a0(dstd_1[4]), // IN
	.a1(selhi[4]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_5
(
	.z(addahi[5]), // OUT
	.a0(dstd_1[5]), // IN
	.a1(selhi[5]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_6
(
	.z(addahi[6]), // OUT
	.a0(dstd_1[6]), // IN
	.a1(selhi[6]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_7
(
	.z(addahi[7]), // OUT
	.a0(dstd_1[7]), // IN
	.a1(selhi[7]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_8
(
	.z(addahi[8]), // OUT
	.a0(dstd_1[8]), // IN
	.a1(selhi[8]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_9
(
	.z(addahi[9]), // OUT
	.a0(dstd_1[9]), // IN
	.a1(selhi[9]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_10
(
	.z(addahi[10]), // OUT
	.a0(dstd_1[10]), // IN
	.a1(selhi[10]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_11
(
	.z(addahi[11]), // OUT
	.a0(dstd_1[11]), // IN
	.a1(selhi[11]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_12
(
	.z(addahi[12]), // OUT
	.a0(dstd_1[12]), // IN
	.a1(selhi[12]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_13
(
	.z(addahi[13]), // OUT
	.a0(dstd_1[13]), // IN
	.a1(selhi[13]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_14
(
	.z(addahi[14]), // OUT
	.a0(dstd_1[14]), // IN
	.a1(selhi[14]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_15
(
	.z(addahi[15]), // OUT
	.a0(dstd_1[15]), // IN
	.a1(selhi[15]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_16
(
	.z(addahi[16]), // OUT
	.a0(dstd_1[16]), // IN
	.a1(selhi[16]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_17
(
	.z(addahi[17]), // OUT
	.a0(dstd_1[17]), // IN
	.a1(selhi[17]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_18
(
	.z(addahi[18]), // OUT
	.a0(dstd_1[18]), // IN
	.a1(selhi[18]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_19
(
	.z(addahi[19]), // OUT
	.a0(dstd_1[19]), // IN
	.a1(selhi[19]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_20
(
	.z(addahi[20]), // OUT
	.a0(dstd_1[20]), // IN
	.a1(selhi[20]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_21
(
	.z(addahi[21]), // OUT
	.a0(dstd_1[21]), // IN
	.a1(selhi[21]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_22
(
	.z(addahi[22]), // OUT
	.a0(dstd_1[22]), // IN
	.a1(selhi[22]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_23
(
	.z(addahi[23]), // OUT
	.a0(dstd_1[23]), // IN
	.a1(selhi[23]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_24
(
	.z(addahi[24]), // OUT
	.a0(dstd_1[24]), // IN
	.a1(selhi[24]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_25
(
	.z(addahi[25]), // OUT
	.a0(dstd_1[25]), // IN
	.a1(selhi[25]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_26
(
	.z(addahi[26]), // OUT
	.a0(dstd_1[26]), // IN
	.a1(selhi[26]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_27
(
	.z(addahi[27]), // OUT
	.a0(dstd_1[27]), // IN
	.a1(selhi[27]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_28
(
	.z(addahi[28]), // OUT
	.a0(dstd_1[28]), // IN
	.a1(selhi[28]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_29
(
	.z(addahi[29]), // OUT
	.a0(dstd_1[29]), // IN
	.a1(selhi[29]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_30
(
	.z(addahi[30]), // OUT
	.a0(dstd_1[30]), // IN
	.a1(selhi[30]), // IN
	.s(dsel2b_1)  // IN
);
mx2 addahi_inst_31
(
	.z(addahi[31]), // OUT
	.a0(dstd_1[31]), // IN
	.a1(selhi[31]), // IN
	.s(dsel2b_1)  // IN
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
