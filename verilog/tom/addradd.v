`include "defs.v"

module addradd
(
	output[0:15] addq_x;
	output[0:15] addq_y;
	input a1fracld,
	input[0:15] adda_x;
	input[0:15] adda_y;
	input[0:15] addb_x;
	input[0:15] addb_y;
	input clk_0,
	input modx_0,
	input modx_1,
	input modx_2,
	input suba_x,
	input suba_y
);
wire zero;
wire one;
wire addqt_x_0;
wire addqt_x_1;
wire addqt_x_2;
wire addqt_x_3;
wire addqt_x_4;
wire addqt_x_5;
wire addqt_x_6;
wire addqt_x_7;
wire addqt_x_8;
wire addqt_x_9;
wire addqt_x_10;
wire addqt_x_11;
wire addqt_x_12;
wire addqt_x_13;
wire addqt_x_14;
wire addqt_x_15;
wire co_x_n;
wire ci_x_n;
wire addq_y_0;
wire addq_y_1;
wire addq_y_2;
wire addq_y_3;
wire addq_y_4;
wire addq_y_5;
wire addq_y_6;
wire addq_y_7;
wire addq_y_8;
wire addq_y_9;
wire addq_y_10;
wire addq_y_11;
wire addq_y_12;
wire addq_y_13;
wire addq_y_14;
wire addq_y_15;
wire co_y_n;
wire ci_y_n;
wire co_x;
wire cxt_0;
wire cxt_1;
wire co_y;
wire cyt_0;
wire cyt_1;
wire unused_0;
wire masksel_0;
wire masksel_1;
wire masksel_2;
wire masksel_3;
wire masksel_4;
wire maskbit_5;
wire unused_1;
wire maskbit_0;
wire maskbit_1;
wire maskbit_2;
wire maskbit_3;
wire maskbit_4;
wire addq_x_0;
wire addq_x_1;
wire addq_x_2;
wire addq_x_3;
wire addq_x_4;
wire addq_x_5;

// ADDRADD.NET (40) - zero : tie0
assign zero = 1'b0;

// ADDRADD.NET (41) - one : tie1
assign one = 1'b1;

// ADDRADD.NET (45) - adder_x : fas16_s
fas16 adder_x_inst
(
	.s0(addqt_x_0), // OUT
	.s1(addqt_x_1), // OUT
	.s2(addqt_x_2), // OUT
	.s3(addqt_x_3), // OUT
	.s4(addqt_x_4), // OUT
	.s5(addqt_x_5), // OUT
	.s6(addqt_x_6), // OUT
	.s7(addqt_x_7), // OUT
	.s8(addqt_x_8), // OUT
	.s9(addqt_x_9), // OUT
	.s10(addqt_x_10), // OUT
	.s11(addqt_x_11), // OUT
	.s12(addqt_x_12), // OUT
	.s13(addqt_x_13), // OUT
	.s14(addqt_x_14), // OUT
	.s15(addqt_x_15), // OUT
	.co(co_x_n), // OUT
	.as(one), // IN
	.ci(ci_x_n), // IN
	.a0(adda_x[0]), // IN
	.b0(addb_x[0]), // IN
	.a1(adda_x[1]), // IN
	.b1(addb_x[1]), // IN
	.a2(adda_x[2]), // IN
	.b2(addb_x[2]), // IN
	.a3(adda_x[3]), // IN
	.b3(addb_x[3]), // IN
	.a4(adda_x[4]), // IN
	.b4(addb_x[4]), // IN
	.a5(adda_x[5]), // IN
	.b5(addb_x[5]), // IN
	.a6(adda_x[6]), // IN
	.b6(addb_x[6]), // IN
	.a7(adda_x[7]), // IN
	.b7(addb_x[7]), // IN
	.a8(adda_x[8]), // IN
	.b8(addb_x[8]), // IN
	.a9(adda_x[9]), // IN
	.b9(addb_x[9]), // IN
	.a10(adda_x[10]), // IN
	.b10(addb_x[10]), // IN
	.a11(adda_x[11]), // IN
	.b11(addb_x[11]), // IN
	.a12(adda_x[12]), // IN
	.b12(addb_x[12]), // IN
	.a13(adda_x[13]), // IN
	.b13(addb_x[13]), // IN
	.a14(adda_x[14]), // IN
	.b14(addb_x[14]), // IN
	.a15(adda_x[15]), // IN
	.b15(addb_x[15])  // IN
);

// ADDRADD.NET (54) - adder_y : fas16_s
fas16 adder_y_inst
(
	.s0(addq_y_0), // OUT
	.s1(addq_y_1), // OUT
	.s2(addq_y_2), // OUT
	.s3(addq_y_3), // OUT
	.s4(addq_y_4), // OUT
	.s5(addq_y_5), // OUT
	.s6(addq_y_6), // OUT
	.s7(addq_y_7), // OUT
	.s8(addq_y_8), // OUT
	.s9(addq_y_9), // OUT
	.s10(addq_y_10), // OUT
	.s11(addq_y_11), // OUT
	.s12(addq_y_12), // OUT
	.s13(addq_y_13), // OUT
	.s14(addq_y_14), // OUT
	.s15(addq_y_15), // OUT
	.co(co_y_n), // OUT
	.as(one), // IN
	.ci(ci_y_n), // IN
	.a0(adda_y[0]), // IN
	.b0(addb_y[0]), // IN
	.a1(adda_y[1]), // IN
	.b1(addb_y[1]), // IN
	.a2(adda_y[2]), // IN
	.b2(addb_y[2]), // IN
	.a3(adda_y[3]), // IN
	.b3(addb_y[3]), // IN
	.a4(adda_y[4]), // IN
	.b4(addb_y[4]), // IN
	.a5(adda_y[5]), // IN
	.b5(addb_y[5]), // IN
	.a6(adda_y[6]), // IN
	.b6(addb_y[6]), // IN
	.a7(adda_y[7]), // IN
	.b7(addb_y[7]), // IN
	.a8(adda_y[8]), // IN
	.b8(addb_y[8]), // IN
	.a9(adda_y[9]), // IN
	.b9(addb_y[9]), // IN
	.a10(adda_y[10]), // IN
	.b10(addb_y[10]), // IN
	.a11(adda_y[11]), // IN
	.b11(addb_y[11]), // IN
	.a12(adda_y[12]), // IN
	.b12(addb_y[12]), // IN
	.a13(adda_y[13]), // IN
	.b13(addb_y[13]), // IN
	.a14(adda_y[14]), // IN
	.b14(addb_y[14]), // IN
	.a15(adda_y[15]), // IN
	.b15(addb_y[15])  // IN
);

// ADDRADD.NET (66) - co_x : iv
assign co_x = ~co_x_n;

// ADDRADD.NET (67) - cxt0 : an2
assign cxt_0 = co_x & a1fracld;

// ADDRADD.NET (68) - cxt1 : fd1q
fd1q cxt1_inst
(
	.q(cxt_1), // OUT
	.d(cxt_0), // IN
	.cp(clk_0)  // IN
);

// ADDRADD.NET (69) - ci_x : en
assign ci_x_n = ~(cxt_1 ^ suba_x);

// ADDRADD.NET (71) - co_y : iv
assign co_y = ~co_y_n;

// ADDRADD.NET (72) - cyt0 : an2
assign cyt_0 = co_y & a1fracld;

// ADDRADD.NET (73) - cyt1 : fd1q
fd1q cyt1_inst
(
	.q(cyt_1), // OUT
	.d(cyt_0), // IN
	.cp(clk_0)  // IN
);

// ADDRADD.NET (74) - ci_y : en
assign ci_y_n = ~(cyt_1 ^ suba_y);

// ADDRADD.NET (78) - masksel : d38h
d38h masksel_inst
(
	.z0(unused_0), // OUT
	.z1(masksel_0), // OUT
	.z2(masksel_1), // OUT
	.z3(masksel_2), // OUT
	.z4(masksel_3), // OUT
	.z5(masksel_4), // OUT
	.z6(maskbit_5), // OUT
	.z7(unused_1), // OUT
	.a0(modx_0), // IN
	.a1(modx_1), // IN
	.a2(modx_2)  // IN
);

// ADDRADD.NET (81) - maskbit[0-4] : or2
assign maskbit_0 = masksel_0 | maskbit_1;
assign maskbit_1 = masksel_1 | maskbit_2;
assign maskbit_2 = masksel_2 | maskbit_3;
assign maskbit_3 = masksel_3 | maskbit_4;
assign maskbit_4 = masksel_4 | maskbit_5;

// ADDRADD.NET (83) - mask[0-5] : mx2
mx2 mask_from_0_to_5_inst_0
(
	.z(addq_x_0), // OUT
	.a0(addqt_x_0), // IN
	.a1(zero), // IN
	.s(maskbit_0)  // IN
);
mx2 mask_from_0_to_5_inst_1
(
	.z(addq_x_1), // OUT
	.a0(addqt_x_1), // IN
	.a1(zero), // IN
	.s(maskbit_1)  // IN
);
mx2 mask_from_0_to_5_inst_2
(
	.z(addq_x_2), // OUT
	.a0(addqt_x_2), // IN
	.a1(zero), // IN
	.s(maskbit_2)  // IN
);
mx2 mask_from_0_to_5_inst_3
(
	.z(addq_x_3), // OUT
	.a0(addqt_x_3), // IN
	.a1(zero), // IN
	.s(maskbit_3)  // IN
);
mx2 mask_from_0_to_5_inst_4
(
	.z(addq_x_4), // OUT
	.a0(addqt_x_4), // IN
	.a1(zero), // IN
	.s(maskbit_4)  // IN
);
mx2 mask_from_0_to_5_inst_5
(
	.z(addq_x_5), // OUT
	.a0(addqt_x_5), // IN
	.a1(zero), // IN
	.s(maskbit_5)  // IN
);

// ADDRADD.NET (86) - addq_x : join
assign addq_x[0] = addq_x_0;
assign addq_x[1] = addq_x_1;
assign addq_x[2] = addq_x_2;
assign addq_x[3] = addq_x_3;
assign addq_x[4] = addq_x_4;
assign addq_x[5] = addq_x_5;
assign addq_x[6] = addqt_x_6;
assign addq_x[7] = addqt_x_7;
assign addq_x[8] = addqt_x_8;
assign addq_x[9] = addqt_x_9;
assign addq_x[10] = addqt_x_10;
assign addq_x[11] = addqt_x_11;
assign addq_x[12] = addqt_x_12;
assign addq_x[13] = addqt_x_13;
assign addq_x[14] = addqt_x_14;
assign addq_x[15] = addqt_x_15;

// ADDRADD.NET (87) - addq_y : join
assign addq_y[0] = addq_y_0;
assign addq_y[1] = addq_y_1;
assign addq_y[2] = addq_y_2;
assign addq_y[3] = addq_y_3;
assign addq_y[4] = addq_y_4;
assign addq_y[5] = addq_y_5;
assign addq_y[6] = addq_y_6;
assign addq_y[7] = addq_y_7;
assign addq_y[8] = addq_y_8;
assign addq_y[9] = addq_y_9;
assign addq_y[10] = addq_y_10;
assign addq_y[11] = addq_y_11;
assign addq_y[12] = addq_y_12;
assign addq_y[13] = addq_y_13;
assign addq_y[14] = addq_y_14;
assign addq_y[15] = addq_y_15;

// ADDRADD.NET (89) - unused[0-1] : dummy
endmodule
