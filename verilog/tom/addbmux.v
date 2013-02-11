`include "defs.v"

module addbmux
(
	output[0:15] addb_x;
	output[0:15] addb_y;
	input addbsel_0,
	input addbsel_1,
	input[0:15] a1_x;
	input[0:15] a1_y;
	input[0:15] a2_x;
	input[0:15] a2_y;
	input[0:15] a1_frac_x;
	input[0:15] a1_frac_y
);
wire addbselb_0;
wire addbselb_1;

// ADDRMUX.NET (135) - addbselb[0-1] : nivu
assign addbselb_0 = addbsel_0;
assign addbselb_1 = addbsel_1;

// ADDRMUX.NET (136) - addb_x : mx4
mx4 addb_x_inst_0
(
	.z(addb_x[0]), // OUT
	.a0(a1_x[0]), // IN
	.a1(a2_x[0]), // IN
	.a2(a1_frac_x[0]), // IN
	.a3(a1_x[0]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_1
(
	.z(addb_x[1]), // OUT
	.a0(a1_x[1]), // IN
	.a1(a2_x[1]), // IN
	.a2(a1_frac_x[1]), // IN
	.a3(a1_x[1]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_2
(
	.z(addb_x[2]), // OUT
	.a0(a1_x[2]), // IN
	.a1(a2_x[2]), // IN
	.a2(a1_frac_x[2]), // IN
	.a3(a1_x[2]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_3
(
	.z(addb_x[3]), // OUT
	.a0(a1_x[3]), // IN
	.a1(a2_x[3]), // IN
	.a2(a1_frac_x[3]), // IN
	.a3(a1_x[3]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_4
(
	.z(addb_x[4]), // OUT
	.a0(a1_x[4]), // IN
	.a1(a2_x[4]), // IN
	.a2(a1_frac_x[4]), // IN
	.a3(a1_x[4]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_5
(
	.z(addb_x[5]), // OUT
	.a0(a1_x[5]), // IN
	.a1(a2_x[5]), // IN
	.a2(a1_frac_x[5]), // IN
	.a3(a1_x[5]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_6
(
	.z(addb_x[6]), // OUT
	.a0(a1_x[6]), // IN
	.a1(a2_x[6]), // IN
	.a2(a1_frac_x[6]), // IN
	.a3(a1_x[6]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_7
(
	.z(addb_x[7]), // OUT
	.a0(a1_x[7]), // IN
	.a1(a2_x[7]), // IN
	.a2(a1_frac_x[7]), // IN
	.a3(a1_x[7]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_8
(
	.z(addb_x[8]), // OUT
	.a0(a1_x[8]), // IN
	.a1(a2_x[8]), // IN
	.a2(a1_frac_x[8]), // IN
	.a3(a1_x[8]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_9
(
	.z(addb_x[9]), // OUT
	.a0(a1_x[9]), // IN
	.a1(a2_x[9]), // IN
	.a2(a1_frac_x[9]), // IN
	.a3(a1_x[9]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_10
(
	.z(addb_x[10]), // OUT
	.a0(a1_x[10]), // IN
	.a1(a2_x[10]), // IN
	.a2(a1_frac_x[10]), // IN
	.a3(a1_x[10]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_11
(
	.z(addb_x[11]), // OUT
	.a0(a1_x[11]), // IN
	.a1(a2_x[11]), // IN
	.a2(a1_frac_x[11]), // IN
	.a3(a1_x[11]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_12
(
	.z(addb_x[12]), // OUT
	.a0(a1_x[12]), // IN
	.a1(a2_x[12]), // IN
	.a2(a1_frac_x[12]), // IN
	.a3(a1_x[12]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_13
(
	.z(addb_x[13]), // OUT
	.a0(a1_x[13]), // IN
	.a1(a2_x[13]), // IN
	.a2(a1_frac_x[13]), // IN
	.a3(a1_x[13]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_14
(
	.z(addb_x[14]), // OUT
	.a0(a1_x[14]), // IN
	.a1(a2_x[14]), // IN
	.a2(a1_frac_x[14]), // IN
	.a3(a1_x[14]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_x_inst_15
(
	.z(addb_x[15]), // OUT
	.a0(a1_x[15]), // IN
	.a1(a2_x[15]), // IN
	.a2(a1_frac_x[15]), // IN
	.a3(a1_x[15]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);

// ADDRMUX.NET (138) - addb_y : mx4
mx4 addb_y_inst_0
(
	.z(addb_y[0]), // OUT
	.a0(a1_y[0]), // IN
	.a1(a2_y[0]), // IN
	.a2(a1_frac_y[0]), // IN
	.a3(a1_y[0]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_1
(
	.z(addb_y[1]), // OUT
	.a0(a1_y[1]), // IN
	.a1(a2_y[1]), // IN
	.a2(a1_frac_y[1]), // IN
	.a3(a1_y[1]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_2
(
	.z(addb_y[2]), // OUT
	.a0(a1_y[2]), // IN
	.a1(a2_y[2]), // IN
	.a2(a1_frac_y[2]), // IN
	.a3(a1_y[2]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_3
(
	.z(addb_y[3]), // OUT
	.a0(a1_y[3]), // IN
	.a1(a2_y[3]), // IN
	.a2(a1_frac_y[3]), // IN
	.a3(a1_y[3]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_4
(
	.z(addb_y[4]), // OUT
	.a0(a1_y[4]), // IN
	.a1(a2_y[4]), // IN
	.a2(a1_frac_y[4]), // IN
	.a3(a1_y[4]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_5
(
	.z(addb_y[5]), // OUT
	.a0(a1_y[5]), // IN
	.a1(a2_y[5]), // IN
	.a2(a1_frac_y[5]), // IN
	.a3(a1_y[5]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_6
(
	.z(addb_y[6]), // OUT
	.a0(a1_y[6]), // IN
	.a1(a2_y[6]), // IN
	.a2(a1_frac_y[6]), // IN
	.a3(a1_y[6]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_7
(
	.z(addb_y[7]), // OUT
	.a0(a1_y[7]), // IN
	.a1(a2_y[7]), // IN
	.a2(a1_frac_y[7]), // IN
	.a3(a1_y[7]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_8
(
	.z(addb_y[8]), // OUT
	.a0(a1_y[8]), // IN
	.a1(a2_y[8]), // IN
	.a2(a1_frac_y[8]), // IN
	.a3(a1_y[8]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_9
(
	.z(addb_y[9]), // OUT
	.a0(a1_y[9]), // IN
	.a1(a2_y[9]), // IN
	.a2(a1_frac_y[9]), // IN
	.a3(a1_y[9]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_10
(
	.z(addb_y[10]), // OUT
	.a0(a1_y[10]), // IN
	.a1(a2_y[10]), // IN
	.a2(a1_frac_y[10]), // IN
	.a3(a1_y[10]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_11
(
	.z(addb_y[11]), // OUT
	.a0(a1_y[11]), // IN
	.a1(a2_y[11]), // IN
	.a2(a1_frac_y[11]), // IN
	.a3(a1_y[11]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_12
(
	.z(addb_y[12]), // OUT
	.a0(a1_y[12]), // IN
	.a1(a2_y[12]), // IN
	.a2(a1_frac_y[12]), // IN
	.a3(a1_y[12]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_13
(
	.z(addb_y[13]), // OUT
	.a0(a1_y[13]), // IN
	.a1(a2_y[13]), // IN
	.a2(a1_frac_y[13]), // IN
	.a3(a1_y[13]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_14
(
	.z(addb_y[14]), // OUT
	.a0(a1_y[14]), // IN
	.a1(a2_y[14]), // IN
	.a2(a1_frac_y[14]), // IN
	.a3(a1_y[14]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
mx4 addb_y_inst_15
(
	.z(addb_y[15]), // OUT
	.a0(a1_y[15]), // IN
	.a1(a2_y[15]), // IN
	.a2(a1_frac_y[15]), // IN
	.a3(a1_y[15]), // IN
	.s0(addbselb_0), // IN
	.s1(addbselb_1)  // IN
);
endmodule
