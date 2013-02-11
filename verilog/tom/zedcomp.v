`include "defs.v"

module zedcomp
(
	output zcomp_0,
	output zcomp_1,
	output zcomp_2,
	output zcomp_3,
	input[0:31] srczplo;
	input[0:31] srczphi;
	input[0:31] dstzlo;
	input[0:31] dstzhi;
	input zmode_0,
	input zmode_1,
	input zmode_2
);
wire zg_0;
wire ze_0;
wire zl_0;
wire zg_1;
wire ze_1;
wire zl_1;
wire zg_2;
wire ze_2;
wire zl_2;
wire zg_3;
wire ze_3;
wire zl_3;
wire zlt_0;
wire zlt_1;
wire zlt_2;
wire zlt_3;
wire zet_0;
wire zet_1;
wire zet_2;
wire zet_3;
wire zgt_0;
wire zgt_1;
wire zgt_2;
wire zgt_3;

// DATACOMP.NET (132) - zcomp[0] : mag_16
mag_16 zcomp_index_0_inst
(
	.gt(zg_0), // OUT
	.eq(ze_0), // OUT
	.lt(zl_0), // OUT
	.a_0(srczplo[0]), // IN
	.a_1(srczplo[1]), // IN
	.a_2(srczplo[2]), // IN
	.a_3(srczplo[3]), // IN
	.a_4(srczplo[4]), // IN
	.a_5(srczplo[5]), // IN
	.a_6(srczplo[6]), // IN
	.a_7(srczplo[7]), // IN
	.a_8(srczplo[8]), // IN
	.a_9(srczplo[9]), // IN
	.a_10(srczplo[10]), // IN
	.a_11(srczplo[11]), // IN
	.a_12(srczplo[12]), // IN
	.a_13(srczplo[13]), // IN
	.a_14(srczplo[14]), // IN
	.a_15(srczplo[15]), // IN
	.b_0(dstzlo[0]), // IN
	.b_1(dstzlo[1]), // IN
	.b_2(dstzlo[2]), // IN
	.b_3(dstzlo[3]), // IN
	.b_4(dstzlo[4]), // IN
	.b_5(dstzlo[5]), // IN
	.b_6(dstzlo[6]), // IN
	.b_7(dstzlo[7]), // IN
	.b_8(dstzlo[8]), // IN
	.b_9(dstzlo[9]), // IN
	.b_10(dstzlo[10]), // IN
	.b_11(dstzlo[11]), // IN
	.b_12(dstzlo[12]), // IN
	.b_13(dstzlo[13]), // IN
	.b_14(dstzlo[14]), // IN
	.b_15(dstzlo[15])  // IN
);

// DATACOMP.NET (134) - zcomp[1] : mag_16
mag_16 zcomp_index_1_inst
(
	.gt(zg_1), // OUT
	.eq(ze_1), // OUT
	.lt(zl_1), // OUT
	.a_0(srczplo[16]), // IN
	.a_1(srczplo[17]), // IN
	.a_2(srczplo[18]), // IN
	.a_3(srczplo[19]), // IN
	.a_4(srczplo[20]), // IN
	.a_5(srczplo[21]), // IN
	.a_6(srczplo[22]), // IN
	.a_7(srczplo[23]), // IN
	.a_8(srczplo[24]), // IN
	.a_9(srczplo[25]), // IN
	.a_10(srczplo[26]), // IN
	.a_11(srczplo[27]), // IN
	.a_12(srczplo[28]), // IN
	.a_13(srczplo[29]), // IN
	.a_14(srczplo[30]), // IN
	.a_15(srczplo[31]), // IN
	.b_0(dstzlo[16]), // IN
	.b_1(dstzlo[17]), // IN
	.b_2(dstzlo[18]), // IN
	.b_3(dstzlo[19]), // IN
	.b_4(dstzlo[20]), // IN
	.b_5(dstzlo[21]), // IN
	.b_6(dstzlo[22]), // IN
	.b_7(dstzlo[23]), // IN
	.b_8(dstzlo[24]), // IN
	.b_9(dstzlo[25]), // IN
	.b_10(dstzlo[26]), // IN
	.b_11(dstzlo[27]), // IN
	.b_12(dstzlo[28]), // IN
	.b_13(dstzlo[29]), // IN
	.b_14(dstzlo[30]), // IN
	.b_15(dstzlo[31])  // IN
);

// DATACOMP.NET (136) - zcomp[2] : mag_16
mag_16 zcomp_index_2_inst
(
	.gt(zg_2), // OUT
	.eq(ze_2), // OUT
	.lt(zl_2), // OUT
	.a_0(srczphi[0]), // IN
	.a_1(srczphi[1]), // IN
	.a_2(srczphi[2]), // IN
	.a_3(srczphi[3]), // IN
	.a_4(srczphi[4]), // IN
	.a_5(srczphi[5]), // IN
	.a_6(srczphi[6]), // IN
	.a_7(srczphi[7]), // IN
	.a_8(srczphi[8]), // IN
	.a_9(srczphi[9]), // IN
	.a_10(srczphi[10]), // IN
	.a_11(srczphi[11]), // IN
	.a_12(srczphi[12]), // IN
	.a_13(srczphi[13]), // IN
	.a_14(srczphi[14]), // IN
	.a_15(srczphi[15]), // IN
	.b_0(dstzhi[0]), // IN
	.b_1(dstzhi[1]), // IN
	.b_2(dstzhi[2]), // IN
	.b_3(dstzhi[3]), // IN
	.b_4(dstzhi[4]), // IN
	.b_5(dstzhi[5]), // IN
	.b_6(dstzhi[6]), // IN
	.b_7(dstzhi[7]), // IN
	.b_8(dstzhi[8]), // IN
	.b_9(dstzhi[9]), // IN
	.b_10(dstzhi[10]), // IN
	.b_11(dstzhi[11]), // IN
	.b_12(dstzhi[12]), // IN
	.b_13(dstzhi[13]), // IN
	.b_14(dstzhi[14]), // IN
	.b_15(dstzhi[15])  // IN
);

// DATACOMP.NET (138) - zcomp[3] : mag_16
mag_16 zcomp_index_3_inst
(
	.gt(zg_3), // OUT
	.eq(ze_3), // OUT
	.lt(zl_3), // OUT
	.a_0(srczphi[16]), // IN
	.a_1(srczphi[17]), // IN
	.a_2(srczphi[18]), // IN
	.a_3(srczphi[19]), // IN
	.a_4(srczphi[20]), // IN
	.a_5(srczphi[21]), // IN
	.a_6(srczphi[22]), // IN
	.a_7(srczphi[23]), // IN
	.a_8(srczphi[24]), // IN
	.a_9(srczphi[25]), // IN
	.a_10(srczphi[26]), // IN
	.a_11(srczphi[27]), // IN
	.a_12(srczphi[28]), // IN
	.a_13(srczphi[29]), // IN
	.a_14(srczphi[30]), // IN
	.a_15(srczphi[31]), // IN
	.b_0(dstzhi[16]), // IN
	.b_1(dstzhi[17]), // IN
	.b_2(dstzhi[18]), // IN
	.b_3(dstzhi[19]), // IN
	.b_4(dstzhi[20]), // IN
	.b_5(dstzhi[21]), // IN
	.b_6(dstzhi[22]), // IN
	.b_7(dstzhi[23]), // IN
	.b_8(dstzhi[24]), // IN
	.b_9(dstzhi[25]), // IN
	.b_10(dstzhi[26]), // IN
	.b_11(dstzhi[27]), // IN
	.b_12(dstzhi[28]), // IN
	.b_13(dstzhi[29]), // IN
	.b_14(dstzhi[30]), // IN
	.b_15(dstzhi[31])  // IN
);

// DATACOMP.NET (141) - zlt[0-3] : nd2
assign zlt_0 = ~(zl_0 & zmode_0);
assign zlt_1 = ~(zl_1 & zmode_0);
assign zlt_2 = ~(zl_2 & zmode_0);
assign zlt_3 = ~(zl_3 & zmode_0);

// DATACOMP.NET (142) - zet[0-3] : nd2
assign zet_0 = ~(ze_0 & zmode_1);
assign zet_1 = ~(ze_1 & zmode_1);
assign zet_2 = ~(ze_2 & zmode_1);
assign zet_3 = ~(ze_3 & zmode_1);

// DATACOMP.NET (143) - zgt[0-3] : nd2
assign zgt_0 = ~(zg_0 & zmode_2);
assign zgt_1 = ~(zg_1 & zmode_2);
assign zgt_2 = ~(zg_2 & zmode_2);
assign zgt_3 = ~(zg_3 & zmode_2);

// DATACOMP.NET (144) - zcmp[0-3] : nd3p
assign zcomp_0 = ~(zlt_0 & zet_0 & zgt_0);
assign zcomp_1 = ~(zlt_1 & zet_1 & zgt_1);
assign zcomp_2 = ~(zlt_2 & zet_2 & zgt_2);
assign zcomp_3 = ~(zlt_3 & zet_3 & zgt_3);
endmodule
