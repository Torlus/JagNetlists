`include "defs.v"

module datamux
(
	output[0:15] data_x;
	output[0:15] data_y;
	input[0:31] gpu_din;
	input[0:15] addq_x;
	input[0:15] addq_y;
	input addqsel
);
wire [0:15] gpu_lo;
wire [0:15] gpu_hi;
wire addqselb;

// ADDRMUX.NET (162) - gpu_lo : join
assign gpu_lo[0] = gpu_din[0];
assign gpu_lo[1] = gpu_din[1];
assign gpu_lo[2] = gpu_din[2];
assign gpu_lo[3] = gpu_din[3];
assign gpu_lo[4] = gpu_din[4];
assign gpu_lo[5] = gpu_din[5];
assign gpu_lo[6] = gpu_din[6];
assign gpu_lo[7] = gpu_din[7];
assign gpu_lo[8] = gpu_din[8];
assign gpu_lo[9] = gpu_din[9];
assign gpu_lo[10] = gpu_din[10];
assign gpu_lo[11] = gpu_din[11];
assign gpu_lo[12] = gpu_din[12];
assign gpu_lo[13] = gpu_din[13];
assign gpu_lo[14] = gpu_din[14];
assign gpu_lo[15] = gpu_din[15];

// ADDRMUX.NET (163) - gpu_hi : join
assign gpu_hi[0] = gpu_din[16];
assign gpu_hi[1] = gpu_din[17];
assign gpu_hi[2] = gpu_din[18];
assign gpu_hi[3] = gpu_din[19];
assign gpu_hi[4] = gpu_din[20];
assign gpu_hi[5] = gpu_din[21];
assign gpu_hi[6] = gpu_din[22];
assign gpu_hi[7] = gpu_din[23];
assign gpu_hi[8] = gpu_din[24];
assign gpu_hi[9] = gpu_din[25];
assign gpu_hi[10] = gpu_din[26];
assign gpu_hi[11] = gpu_din[27];
assign gpu_hi[12] = gpu_din[28];
assign gpu_hi[13] = gpu_din[29];
assign gpu_hi[14] = gpu_din[30];
assign gpu_hi[15] = gpu_din[31];

// ADDRMUX.NET (165) - addqselb : nivu
assign addqselb = addqsel;

// ADDRMUX.NET (166) - data_x : mx2
mx2 data_x_inst_0
(
	.z(data_x[0]), // OUT
	.a0(gpu_lo[0]), // IN
	.a1(addq_x[0]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_1
(
	.z(data_x[1]), // OUT
	.a0(gpu_lo[1]), // IN
	.a1(addq_x[1]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_2
(
	.z(data_x[2]), // OUT
	.a0(gpu_lo[2]), // IN
	.a1(addq_x[2]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_3
(
	.z(data_x[3]), // OUT
	.a0(gpu_lo[3]), // IN
	.a1(addq_x[3]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_4
(
	.z(data_x[4]), // OUT
	.a0(gpu_lo[4]), // IN
	.a1(addq_x[4]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_5
(
	.z(data_x[5]), // OUT
	.a0(gpu_lo[5]), // IN
	.a1(addq_x[5]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_6
(
	.z(data_x[6]), // OUT
	.a0(gpu_lo[6]), // IN
	.a1(addq_x[6]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_7
(
	.z(data_x[7]), // OUT
	.a0(gpu_lo[7]), // IN
	.a1(addq_x[7]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_8
(
	.z(data_x[8]), // OUT
	.a0(gpu_lo[8]), // IN
	.a1(addq_x[8]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_9
(
	.z(data_x[9]), // OUT
	.a0(gpu_lo[9]), // IN
	.a1(addq_x[9]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_10
(
	.z(data_x[10]), // OUT
	.a0(gpu_lo[10]), // IN
	.a1(addq_x[10]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_11
(
	.z(data_x[11]), // OUT
	.a0(gpu_lo[11]), // IN
	.a1(addq_x[11]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_12
(
	.z(data_x[12]), // OUT
	.a0(gpu_lo[12]), // IN
	.a1(addq_x[12]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_13
(
	.z(data_x[13]), // OUT
	.a0(gpu_lo[13]), // IN
	.a1(addq_x[13]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_14
(
	.z(data_x[14]), // OUT
	.a0(gpu_lo[14]), // IN
	.a1(addq_x[14]), // IN
	.s(addqselb)  // IN
);
mx2 data_x_inst_15
(
	.z(data_x[15]), // OUT
	.a0(gpu_lo[15]), // IN
	.a1(addq_x[15]), // IN
	.s(addqselb)  // IN
);

// ADDRMUX.NET (167) - data_y : mx2
mx2 data_y_inst_0
(
	.z(data_y[0]), // OUT
	.a0(gpu_hi[0]), // IN
	.a1(addq_y[0]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_1
(
	.z(data_y[1]), // OUT
	.a0(gpu_hi[1]), // IN
	.a1(addq_y[1]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_2
(
	.z(data_y[2]), // OUT
	.a0(gpu_hi[2]), // IN
	.a1(addq_y[2]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_3
(
	.z(data_y[3]), // OUT
	.a0(gpu_hi[3]), // IN
	.a1(addq_y[3]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_4
(
	.z(data_y[4]), // OUT
	.a0(gpu_hi[4]), // IN
	.a1(addq_y[4]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_5
(
	.z(data_y[5]), // OUT
	.a0(gpu_hi[5]), // IN
	.a1(addq_y[5]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_6
(
	.z(data_y[6]), // OUT
	.a0(gpu_hi[6]), // IN
	.a1(addq_y[6]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_7
(
	.z(data_y[7]), // OUT
	.a0(gpu_hi[7]), // IN
	.a1(addq_y[7]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_8
(
	.z(data_y[8]), // OUT
	.a0(gpu_hi[8]), // IN
	.a1(addq_y[8]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_9
(
	.z(data_y[9]), // OUT
	.a0(gpu_hi[9]), // IN
	.a1(addq_y[9]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_10
(
	.z(data_y[10]), // OUT
	.a0(gpu_hi[10]), // IN
	.a1(addq_y[10]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_11
(
	.z(data_y[11]), // OUT
	.a0(gpu_hi[11]), // IN
	.a1(addq_y[11]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_12
(
	.z(data_y[12]), // OUT
	.a0(gpu_hi[12]), // IN
	.a1(addq_y[12]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_13
(
	.z(data_y[13]), // OUT
	.a0(gpu_hi[13]), // IN
	.a1(addq_y[13]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_14
(
	.z(data_y[14]), // OUT
	.a0(gpu_hi[14]), // IN
	.a1(addq_y[14]), // IN
	.s(addqselb)  // IN
);
mx2 data_y_inst_15
(
	.z(data_y[15]), // OUT
	.a0(gpu_hi[15]), // IN
	.a1(addq_y[15]), // IN
	.s(addqselb)  // IN
);
endmodule
