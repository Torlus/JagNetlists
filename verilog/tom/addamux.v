`include "defs.v"

module addamux
(
	output[0:15] adda_x;
	output[0:15] adda_y;
	input addasel_0,
	input addasel_1,
	input addasel_2,
	input[0:15] a1_step_x;
	input[0:15] a1_step_y;
	input[0:15] a1_stepf_x;
	input[0:15] a1_stepf_y;
	input[0:15] a2_step_x;
	input[0:15] a2_step_y;
	input[0:15] a1_inc_x;
	input[0:15] a1_inc_y;
	input[0:15] a1_incf_x;
	input[0:15] a1_incf_y;
	input adda_xconst_0,
	input adda_xconst_1,
	input adda_xconst_2,
	input adda_yconst,
	input addareg,
	input suba_x,
	input suba_y
);
wire [0:15] addac_x;
wire [0:15] addac_y;
wire [0:15] addar_x;
wire [0:15] addar_y;
wire [0:15] addart_x;
wire [0:15] addart_y;
wire [0:15] addas_x;
wire [0:15] addas_y;
wire [0:15] suba_x16;
wire [0:15] suba_y16;
wire zero;
wire addaselb_0;
wire addaselb_1;
wire addaselb_2;
wire addac_x_0;
wire addac_x_1;
wire addac_x_2;
wire addac_x_3;
wire addac_x_4;
wire addac_x_5;
wire addac_x_6;
wire unused_0;

// ADDRMUX.NET (66) - zero : tie0
assign zero = 1'b0;

// ADDRMUX.NET (70) - addaselb[0-2] : nivu
assign addaselb_0 = addasel_0;
assign addaselb_1 = addasel_1;
assign addaselb_2 = addasel_2;

// ADDRMUX.NET (71) - addart_x : mx4
mx4 addart_x_inst_0
(
	.z(addart_x[0]), // OUT
	.a0(a1_step_x[0]), // IN
	.a1(a1_stepf_x[0]), // IN
	.a2(a1_inc_x[0]), // IN
	.a3(a1_incf_x[0]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_1
(
	.z(addart_x[1]), // OUT
	.a0(a1_step_x[1]), // IN
	.a1(a1_stepf_x[1]), // IN
	.a2(a1_inc_x[1]), // IN
	.a3(a1_incf_x[1]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_2
(
	.z(addart_x[2]), // OUT
	.a0(a1_step_x[2]), // IN
	.a1(a1_stepf_x[2]), // IN
	.a2(a1_inc_x[2]), // IN
	.a3(a1_incf_x[2]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_3
(
	.z(addart_x[3]), // OUT
	.a0(a1_step_x[3]), // IN
	.a1(a1_stepf_x[3]), // IN
	.a2(a1_inc_x[3]), // IN
	.a3(a1_incf_x[3]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_4
(
	.z(addart_x[4]), // OUT
	.a0(a1_step_x[4]), // IN
	.a1(a1_stepf_x[4]), // IN
	.a2(a1_inc_x[4]), // IN
	.a3(a1_incf_x[4]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_5
(
	.z(addart_x[5]), // OUT
	.a0(a1_step_x[5]), // IN
	.a1(a1_stepf_x[5]), // IN
	.a2(a1_inc_x[5]), // IN
	.a3(a1_incf_x[5]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_6
(
	.z(addart_x[6]), // OUT
	.a0(a1_step_x[6]), // IN
	.a1(a1_stepf_x[6]), // IN
	.a2(a1_inc_x[6]), // IN
	.a3(a1_incf_x[6]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_7
(
	.z(addart_x[7]), // OUT
	.a0(a1_step_x[7]), // IN
	.a1(a1_stepf_x[7]), // IN
	.a2(a1_inc_x[7]), // IN
	.a3(a1_incf_x[7]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_8
(
	.z(addart_x[8]), // OUT
	.a0(a1_step_x[8]), // IN
	.a1(a1_stepf_x[8]), // IN
	.a2(a1_inc_x[8]), // IN
	.a3(a1_incf_x[8]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_9
(
	.z(addart_x[9]), // OUT
	.a0(a1_step_x[9]), // IN
	.a1(a1_stepf_x[9]), // IN
	.a2(a1_inc_x[9]), // IN
	.a3(a1_incf_x[9]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_10
(
	.z(addart_x[10]), // OUT
	.a0(a1_step_x[10]), // IN
	.a1(a1_stepf_x[10]), // IN
	.a2(a1_inc_x[10]), // IN
	.a3(a1_incf_x[10]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_11
(
	.z(addart_x[11]), // OUT
	.a0(a1_step_x[11]), // IN
	.a1(a1_stepf_x[11]), // IN
	.a2(a1_inc_x[11]), // IN
	.a3(a1_incf_x[11]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_12
(
	.z(addart_x[12]), // OUT
	.a0(a1_step_x[12]), // IN
	.a1(a1_stepf_x[12]), // IN
	.a2(a1_inc_x[12]), // IN
	.a3(a1_incf_x[12]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_13
(
	.z(addart_x[13]), // OUT
	.a0(a1_step_x[13]), // IN
	.a1(a1_stepf_x[13]), // IN
	.a2(a1_inc_x[13]), // IN
	.a3(a1_incf_x[13]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_14
(
	.z(addart_x[14]), // OUT
	.a0(a1_step_x[14]), // IN
	.a1(a1_stepf_x[14]), // IN
	.a2(a1_inc_x[14]), // IN
	.a3(a1_incf_x[14]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_x_inst_15
(
	.z(addart_x[15]), // OUT
	.a0(a1_step_x[15]), // IN
	.a1(a1_stepf_x[15]), // IN
	.a2(a1_inc_x[15]), // IN
	.a3(a1_incf_x[15]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);

// ADDRMUX.NET (73) - addar_x : mx2
mx2 addar_x_inst_0
(
	.z(addar_x[0]), // OUT
	.a0(addart_x[0]), // IN
	.a1(a2_step_x[0]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_1
(
	.z(addar_x[1]), // OUT
	.a0(addart_x[1]), // IN
	.a1(a2_step_x[1]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_2
(
	.z(addar_x[2]), // OUT
	.a0(addart_x[2]), // IN
	.a1(a2_step_x[2]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_3
(
	.z(addar_x[3]), // OUT
	.a0(addart_x[3]), // IN
	.a1(a2_step_x[3]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_4
(
	.z(addar_x[4]), // OUT
	.a0(addart_x[4]), // IN
	.a1(a2_step_x[4]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_5
(
	.z(addar_x[5]), // OUT
	.a0(addart_x[5]), // IN
	.a1(a2_step_x[5]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_6
(
	.z(addar_x[6]), // OUT
	.a0(addart_x[6]), // IN
	.a1(a2_step_x[6]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_7
(
	.z(addar_x[7]), // OUT
	.a0(addart_x[7]), // IN
	.a1(a2_step_x[7]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_8
(
	.z(addar_x[8]), // OUT
	.a0(addart_x[8]), // IN
	.a1(a2_step_x[8]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_9
(
	.z(addar_x[9]), // OUT
	.a0(addart_x[9]), // IN
	.a1(a2_step_x[9]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_10
(
	.z(addar_x[10]), // OUT
	.a0(addart_x[10]), // IN
	.a1(a2_step_x[10]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_11
(
	.z(addar_x[11]), // OUT
	.a0(addart_x[11]), // IN
	.a1(a2_step_x[11]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_12
(
	.z(addar_x[12]), // OUT
	.a0(addart_x[12]), // IN
	.a1(a2_step_x[12]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_13
(
	.z(addar_x[13]), // OUT
	.a0(addart_x[13]), // IN
	.a1(a2_step_x[13]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_14
(
	.z(addar_x[14]), // OUT
	.a0(addart_x[14]), // IN
	.a1(a2_step_x[14]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_x_inst_15
(
	.z(addar_x[15]), // OUT
	.a0(addart_x[15]), // IN
	.a1(a2_step_x[15]), // IN
	.s(addaselb_2)  // IN
);

// ADDRMUX.NET (74) - addart_y : mx4
mx4 addart_y_inst_0
(
	.z(addart_y[0]), // OUT
	.a0(a1_step_y[0]), // IN
	.a1(a1_stepf_y[0]), // IN
	.a2(a1_inc_y[0]), // IN
	.a3(a1_incf_y[0]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_1
(
	.z(addart_y[1]), // OUT
	.a0(a1_step_y[1]), // IN
	.a1(a1_stepf_y[1]), // IN
	.a2(a1_inc_y[1]), // IN
	.a3(a1_incf_y[1]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_2
(
	.z(addart_y[2]), // OUT
	.a0(a1_step_y[2]), // IN
	.a1(a1_stepf_y[2]), // IN
	.a2(a1_inc_y[2]), // IN
	.a3(a1_incf_y[2]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_3
(
	.z(addart_y[3]), // OUT
	.a0(a1_step_y[3]), // IN
	.a1(a1_stepf_y[3]), // IN
	.a2(a1_inc_y[3]), // IN
	.a3(a1_incf_y[3]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_4
(
	.z(addart_y[4]), // OUT
	.a0(a1_step_y[4]), // IN
	.a1(a1_stepf_y[4]), // IN
	.a2(a1_inc_y[4]), // IN
	.a3(a1_incf_y[4]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_5
(
	.z(addart_y[5]), // OUT
	.a0(a1_step_y[5]), // IN
	.a1(a1_stepf_y[5]), // IN
	.a2(a1_inc_y[5]), // IN
	.a3(a1_incf_y[5]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_6
(
	.z(addart_y[6]), // OUT
	.a0(a1_step_y[6]), // IN
	.a1(a1_stepf_y[6]), // IN
	.a2(a1_inc_y[6]), // IN
	.a3(a1_incf_y[6]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_7
(
	.z(addart_y[7]), // OUT
	.a0(a1_step_y[7]), // IN
	.a1(a1_stepf_y[7]), // IN
	.a2(a1_inc_y[7]), // IN
	.a3(a1_incf_y[7]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_8
(
	.z(addart_y[8]), // OUT
	.a0(a1_step_y[8]), // IN
	.a1(a1_stepf_y[8]), // IN
	.a2(a1_inc_y[8]), // IN
	.a3(a1_incf_y[8]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_9
(
	.z(addart_y[9]), // OUT
	.a0(a1_step_y[9]), // IN
	.a1(a1_stepf_y[9]), // IN
	.a2(a1_inc_y[9]), // IN
	.a3(a1_incf_y[9]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_10
(
	.z(addart_y[10]), // OUT
	.a0(a1_step_y[10]), // IN
	.a1(a1_stepf_y[10]), // IN
	.a2(a1_inc_y[10]), // IN
	.a3(a1_incf_y[10]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_11
(
	.z(addart_y[11]), // OUT
	.a0(a1_step_y[11]), // IN
	.a1(a1_stepf_y[11]), // IN
	.a2(a1_inc_y[11]), // IN
	.a3(a1_incf_y[11]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_12
(
	.z(addart_y[12]), // OUT
	.a0(a1_step_y[12]), // IN
	.a1(a1_stepf_y[12]), // IN
	.a2(a1_inc_y[12]), // IN
	.a3(a1_incf_y[12]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_13
(
	.z(addart_y[13]), // OUT
	.a0(a1_step_y[13]), // IN
	.a1(a1_stepf_y[13]), // IN
	.a2(a1_inc_y[13]), // IN
	.a3(a1_incf_y[13]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_14
(
	.z(addart_y[14]), // OUT
	.a0(a1_step_y[14]), // IN
	.a1(a1_stepf_y[14]), // IN
	.a2(a1_inc_y[14]), // IN
	.a3(a1_incf_y[14]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);
mx4 addart_y_inst_15
(
	.z(addart_y[15]), // OUT
	.a0(a1_step_y[15]), // IN
	.a1(a1_stepf_y[15]), // IN
	.a2(a1_inc_y[15]), // IN
	.a3(a1_incf_y[15]), // IN
	.s0(addaselb_0), // IN
	.s1(addaselb_1)  // IN
);

// ADDRMUX.NET (76) - addar_y : mx2
mx2 addar_y_inst_0
(
	.z(addar_y[0]), // OUT
	.a0(addart_y[0]), // IN
	.a1(a2_step_y[0]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_1
(
	.z(addar_y[1]), // OUT
	.a0(addart_y[1]), // IN
	.a1(a2_step_y[1]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_2
(
	.z(addar_y[2]), // OUT
	.a0(addart_y[2]), // IN
	.a1(a2_step_y[2]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_3
(
	.z(addar_y[3]), // OUT
	.a0(addart_y[3]), // IN
	.a1(a2_step_y[3]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_4
(
	.z(addar_y[4]), // OUT
	.a0(addart_y[4]), // IN
	.a1(a2_step_y[4]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_5
(
	.z(addar_y[5]), // OUT
	.a0(addart_y[5]), // IN
	.a1(a2_step_y[5]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_6
(
	.z(addar_y[6]), // OUT
	.a0(addart_y[6]), // IN
	.a1(a2_step_y[6]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_7
(
	.z(addar_y[7]), // OUT
	.a0(addart_y[7]), // IN
	.a1(a2_step_y[7]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_8
(
	.z(addar_y[8]), // OUT
	.a0(addart_y[8]), // IN
	.a1(a2_step_y[8]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_9
(
	.z(addar_y[9]), // OUT
	.a0(addart_y[9]), // IN
	.a1(a2_step_y[9]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_10
(
	.z(addar_y[10]), // OUT
	.a0(addart_y[10]), // IN
	.a1(a2_step_y[10]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_11
(
	.z(addar_y[11]), // OUT
	.a0(addart_y[11]), // IN
	.a1(a2_step_y[11]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_12
(
	.z(addar_y[12]), // OUT
	.a0(addart_y[12]), // IN
	.a1(a2_step_y[12]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_13
(
	.z(addar_y[13]), // OUT
	.a0(addart_y[13]), // IN
	.a1(a2_step_y[13]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_14
(
	.z(addar_y[14]), // OUT
	.a0(addart_y[14]), // IN
	.a1(a2_step_y[14]), // IN
	.s(addaselb_2)  // IN
);
mx2 addar_y_inst_15
(
	.z(addar_y[15]), // OUT
	.a0(addart_y[15]), // IN
	.a1(a2_step_y[15]), // IN
	.s(addaselb_2)  // IN
);

// ADDRMUX.NET (83) - addac_xlo : d38h
d38h addac_xlo_inst
(
	.z0(addac_x_0), // OUT
	.z1(addac_x_1), // OUT
	.z2(addac_x_2), // OUT
	.z3(addac_x_3), // OUT
	.z4(addac_x_4), // OUT
	.z5(addac_x_5), // OUT
	.z6(addac_x_6), // OUT
	.z7(unused_0), // OUT
	.a0(adda_xconst_0), // IN
	.a1(adda_xconst_1), // IN
	.a2(adda_xconst_2)  // IN
);

// ADDRMUX.NET (85) - unused[0] : dummy

// ADDRMUX.NET (87) - addac_x : join
assign addac_x[0] = addac_x_0;
assign addac_x[1] = addac_x_1;
assign addac_x[2] = addac_x_2;
assign addac_x[3] = addac_x_3;
assign addac_x[4] = addac_x_4;
assign addac_x[5] = addac_x_5;
assign addac_x[6] = addac_x_6;
assign addac_x[7] = zero;
assign addac_x[8] = zero;
assign addac_x[9] = zero;
assign addac_x[10] = zero;
assign addac_x[11] = zero;
assign addac_x[12] = zero;
assign addac_x[13] = zero;
assign addac_x[14] = zero;
assign addac_x[15] = zero;

// ADDRMUX.NET (89) - addac_y : join
assign addac_y[0] = adda_yconst;
assign addac_y[1] = zero;
assign addac_y[2] = zero;
assign addac_y[3] = zero;
assign addac_y[4] = zero;
assign addac_y[5] = zero;
assign addac_y[6] = zero;
assign addac_y[7] = zero;
assign addac_y[8] = zero;
assign addac_y[9] = zero;
assign addac_y[10] = zero;
assign addac_y[11] = zero;
assign addac_y[12] = zero;
assign addac_y[13] = zero;
assign addac_y[14] = zero;
assign addac_y[15] = zero;

// ADDRMUX.NET (95) - addas_x : mx2
mx2 addas_x_inst_0
(
	.z(addas_x[0]), // OUT
	.a0(addac_x[0]), // IN
	.a1(addar_x[0]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_1
(
	.z(addas_x[1]), // OUT
	.a0(addac_x[1]), // IN
	.a1(addar_x[1]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_2
(
	.z(addas_x[2]), // OUT
	.a0(addac_x[2]), // IN
	.a1(addar_x[2]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_3
(
	.z(addas_x[3]), // OUT
	.a0(addac_x[3]), // IN
	.a1(addar_x[3]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_4
(
	.z(addas_x[4]), // OUT
	.a0(addac_x[4]), // IN
	.a1(addar_x[4]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_5
(
	.z(addas_x[5]), // OUT
	.a0(addac_x[5]), // IN
	.a1(addar_x[5]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_6
(
	.z(addas_x[6]), // OUT
	.a0(addac_x[6]), // IN
	.a1(addar_x[6]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_7
(
	.z(addas_x[7]), // OUT
	.a0(addac_x[7]), // IN
	.a1(addar_x[7]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_8
(
	.z(addas_x[8]), // OUT
	.a0(addac_x[8]), // IN
	.a1(addar_x[8]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_9
(
	.z(addas_x[9]), // OUT
	.a0(addac_x[9]), // IN
	.a1(addar_x[9]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_10
(
	.z(addas_x[10]), // OUT
	.a0(addac_x[10]), // IN
	.a1(addar_x[10]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_11
(
	.z(addas_x[11]), // OUT
	.a0(addac_x[11]), // IN
	.a1(addar_x[11]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_12
(
	.z(addas_x[12]), // OUT
	.a0(addac_x[12]), // IN
	.a1(addar_x[12]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_13
(
	.z(addas_x[13]), // OUT
	.a0(addac_x[13]), // IN
	.a1(addar_x[13]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_14
(
	.z(addas_x[14]), // OUT
	.a0(addac_x[14]), // IN
	.a1(addar_x[14]), // IN
	.s(addareg)  // IN
);
mx2 addas_x_inst_15
(
	.z(addas_x[15]), // OUT
	.a0(addac_x[15]), // IN
	.a1(addar_x[15]), // IN
	.s(addareg)  // IN
);

// ADDRMUX.NET (96) - addas_y : mx2
mx2 addas_y_inst_0
(
	.z(addas_y[0]), // OUT
	.a0(addac_y[0]), // IN
	.a1(addar_y[0]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_1
(
	.z(addas_y[1]), // OUT
	.a0(addac_y[1]), // IN
	.a1(addar_y[1]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_2
(
	.z(addas_y[2]), // OUT
	.a0(addac_y[2]), // IN
	.a1(addar_y[2]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_3
(
	.z(addas_y[3]), // OUT
	.a0(addac_y[3]), // IN
	.a1(addar_y[3]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_4
(
	.z(addas_y[4]), // OUT
	.a0(addac_y[4]), // IN
	.a1(addar_y[4]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_5
(
	.z(addas_y[5]), // OUT
	.a0(addac_y[5]), // IN
	.a1(addar_y[5]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_6
(
	.z(addas_y[6]), // OUT
	.a0(addac_y[6]), // IN
	.a1(addar_y[6]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_7
(
	.z(addas_y[7]), // OUT
	.a0(addac_y[7]), // IN
	.a1(addar_y[7]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_8
(
	.z(addas_y[8]), // OUT
	.a0(addac_y[8]), // IN
	.a1(addar_y[8]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_9
(
	.z(addas_y[9]), // OUT
	.a0(addac_y[9]), // IN
	.a1(addar_y[9]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_10
(
	.z(addas_y[10]), // OUT
	.a0(addac_y[10]), // IN
	.a1(addar_y[10]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_11
(
	.z(addas_y[11]), // OUT
	.a0(addac_y[11]), // IN
	.a1(addar_y[11]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_12
(
	.z(addas_y[12]), // OUT
	.a0(addac_y[12]), // IN
	.a1(addar_y[12]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_13
(
	.z(addas_y[13]), // OUT
	.a0(addac_y[13]), // IN
	.a1(addar_y[13]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_14
(
	.z(addas_y[14]), // OUT
	.a0(addac_y[14]), // IN
	.a1(addar_y[14]), // IN
	.s(addareg)  // IN
);
mx2 addas_y_inst_15
(
	.z(addas_y[15]), // OUT
	.a0(addac_y[15]), // IN
	.a1(addar_y[15]), // IN
	.s(addareg)  // IN
);

// ADDRMUX.NET (100) - suba_x16 : join
assign suba_x16[0] = suba_x;
assign suba_x16[1] = suba_x;
assign suba_x16[2] = suba_x;
assign suba_x16[3] = suba_x;
assign suba_x16[4] = suba_x;
assign suba_x16[5] = suba_x;
assign suba_x16[6] = suba_x;
assign suba_x16[7] = suba_x;
assign suba_x16[8] = suba_x;
assign suba_x16[9] = suba_x;
assign suba_x16[10] = suba_x;
assign suba_x16[11] = suba_x;
assign suba_x16[12] = suba_x;
assign suba_x16[13] = suba_x;
assign suba_x16[14] = suba_x;
assign suba_x16[15] = suba_x;

// ADDRMUX.NET (104) - suba_y16 : join
assign suba_y16[0] = suba_y;
assign suba_y16[1] = suba_y;
assign suba_y16[2] = suba_y;
assign suba_y16[3] = suba_y;
assign suba_y16[4] = suba_y;
assign suba_y16[5] = suba_y;
assign suba_y16[6] = suba_y;
assign suba_y16[7] = suba_y;
assign suba_y16[8] = suba_y;
assign suba_y16[9] = suba_y;
assign suba_y16[10] = suba_y;
assign suba_y16[11] = suba_y;
assign suba_y16[12] = suba_y;
assign suba_y16[13] = suba_y;
assign suba_y16[14] = suba_y;
assign suba_y16[15] = suba_y;

// ADDRMUX.NET (108) - adda_x : eo
assign adda_x[0] = suba_x16[0] ^ addas_x[0];
assign adda_x[1] = suba_x16[1] ^ addas_x[1];
assign adda_x[2] = suba_x16[2] ^ addas_x[2];
assign adda_x[3] = suba_x16[3] ^ addas_x[3];
assign adda_x[4] = suba_x16[4] ^ addas_x[4];
assign adda_x[5] = suba_x16[5] ^ addas_x[5];
assign adda_x[6] = suba_x16[6] ^ addas_x[6];
assign adda_x[7] = suba_x16[7] ^ addas_x[7];
assign adda_x[8] = suba_x16[8] ^ addas_x[8];
assign adda_x[9] = suba_x16[9] ^ addas_x[9];
assign adda_x[10] = suba_x16[10] ^ addas_x[10];
assign adda_x[11] = suba_x16[11] ^ addas_x[11];
assign adda_x[12] = suba_x16[12] ^ addas_x[12];
assign adda_x[13] = suba_x16[13] ^ addas_x[13];
assign adda_x[14] = suba_x16[14] ^ addas_x[14];
assign adda_x[15] = suba_x16[15] ^ addas_x[15];

// ADDRMUX.NET (109) - adda_y : eo
assign adda_y[0] = suba_y16[0] ^ addas_y[0];
assign adda_y[1] = suba_y16[1] ^ addas_y[1];
assign adda_y[2] = suba_y16[2] ^ addas_y[2];
assign adda_y[3] = suba_y16[3] ^ addas_y[3];
assign adda_y[4] = suba_y16[4] ^ addas_y[4];
assign adda_y[5] = suba_y16[5] ^ addas_y[5];
assign adda_y[6] = suba_y16[6] ^ addas_y[6];
assign adda_y[7] = suba_y16[7] ^ addas_y[7];
assign adda_y[8] = suba_y16[8] ^ addas_y[8];
assign adda_y[9] = suba_y16[9] ^ addas_y[9];
assign adda_y[10] = suba_y16[10] ^ addas_y[10];
assign adda_y[11] = suba_y16[11] ^ addas_y[11];
assign adda_y[12] = suba_y16[12] ^ addas_y[12];
assign adda_y[13] = suba_y16[13] ^ addas_y[13];
assign adda_y[14] = suba_y16[14] ^ addas_y[14];
assign adda_y[15] = suba_y16[15] ^ addas_y[15];
endmodule
