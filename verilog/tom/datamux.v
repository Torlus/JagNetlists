/* verilator lint_off LITENDIAN */
`include "defs.v"

module datamux
(
	output [0:15] data_x,
	output [0:15] data_y,
	input [0:31] gpu_din,
	input [0:15] addq_x,
	input [0:15] addq_y,
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
	.z /* OUT */ (data_x[0]),
	.a0 /* IN */ (gpu_lo[0]),
	.a1 /* IN */ (addq_x[0]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_1
(
	.z /* OUT */ (data_x[1]),
	.a0 /* IN */ (gpu_lo[1]),
	.a1 /* IN */ (addq_x[1]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_2
(
	.z /* OUT */ (data_x[2]),
	.a0 /* IN */ (gpu_lo[2]),
	.a1 /* IN */ (addq_x[2]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_3
(
	.z /* OUT */ (data_x[3]),
	.a0 /* IN */ (gpu_lo[3]),
	.a1 /* IN */ (addq_x[3]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_4
(
	.z /* OUT */ (data_x[4]),
	.a0 /* IN */ (gpu_lo[4]),
	.a1 /* IN */ (addq_x[4]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_5
(
	.z /* OUT */ (data_x[5]),
	.a0 /* IN */ (gpu_lo[5]),
	.a1 /* IN */ (addq_x[5]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_6
(
	.z /* OUT */ (data_x[6]),
	.a0 /* IN */ (gpu_lo[6]),
	.a1 /* IN */ (addq_x[6]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_7
(
	.z /* OUT */ (data_x[7]),
	.a0 /* IN */ (gpu_lo[7]),
	.a1 /* IN */ (addq_x[7]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_8
(
	.z /* OUT */ (data_x[8]),
	.a0 /* IN */ (gpu_lo[8]),
	.a1 /* IN */ (addq_x[8]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_9
(
	.z /* OUT */ (data_x[9]),
	.a0 /* IN */ (gpu_lo[9]),
	.a1 /* IN */ (addq_x[9]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_10
(
	.z /* OUT */ (data_x[10]),
	.a0 /* IN */ (gpu_lo[10]),
	.a1 /* IN */ (addq_x[10]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_11
(
	.z /* OUT */ (data_x[11]),
	.a0 /* IN */ (gpu_lo[11]),
	.a1 /* IN */ (addq_x[11]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_12
(
	.z /* OUT */ (data_x[12]),
	.a0 /* IN */ (gpu_lo[12]),
	.a1 /* IN */ (addq_x[12]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_13
(
	.z /* OUT */ (data_x[13]),
	.a0 /* IN */ (gpu_lo[13]),
	.a1 /* IN */ (addq_x[13]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_14
(
	.z /* OUT */ (data_x[14]),
	.a0 /* IN */ (gpu_lo[14]),
	.a1 /* IN */ (addq_x[14]),
	.s /* IN */ (addqselb)
);
mx2 data_x_inst_15
(
	.z /* OUT */ (data_x[15]),
	.a0 /* IN */ (gpu_lo[15]),
	.a1 /* IN */ (addq_x[15]),
	.s /* IN */ (addqselb)
);

// ADDRMUX.NET (167) - data_y : mx2
mx2 data_y_inst_0
(
	.z /* OUT */ (data_y[0]),
	.a0 /* IN */ (gpu_hi[0]),
	.a1 /* IN */ (addq_y[0]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_1
(
	.z /* OUT */ (data_y[1]),
	.a0 /* IN */ (gpu_hi[1]),
	.a1 /* IN */ (addq_y[1]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_2
(
	.z /* OUT */ (data_y[2]),
	.a0 /* IN */ (gpu_hi[2]),
	.a1 /* IN */ (addq_y[2]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_3
(
	.z /* OUT */ (data_y[3]),
	.a0 /* IN */ (gpu_hi[3]),
	.a1 /* IN */ (addq_y[3]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_4
(
	.z /* OUT */ (data_y[4]),
	.a0 /* IN */ (gpu_hi[4]),
	.a1 /* IN */ (addq_y[4]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_5
(
	.z /* OUT */ (data_y[5]),
	.a0 /* IN */ (gpu_hi[5]),
	.a1 /* IN */ (addq_y[5]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_6
(
	.z /* OUT */ (data_y[6]),
	.a0 /* IN */ (gpu_hi[6]),
	.a1 /* IN */ (addq_y[6]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_7
(
	.z /* OUT */ (data_y[7]),
	.a0 /* IN */ (gpu_hi[7]),
	.a1 /* IN */ (addq_y[7]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_8
(
	.z /* OUT */ (data_y[8]),
	.a0 /* IN */ (gpu_hi[8]),
	.a1 /* IN */ (addq_y[8]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_9
(
	.z /* OUT */ (data_y[9]),
	.a0 /* IN */ (gpu_hi[9]),
	.a1 /* IN */ (addq_y[9]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_10
(
	.z /* OUT */ (data_y[10]),
	.a0 /* IN */ (gpu_hi[10]),
	.a1 /* IN */ (addq_y[10]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_11
(
	.z /* OUT */ (data_y[11]),
	.a0 /* IN */ (gpu_hi[11]),
	.a1 /* IN */ (addq_y[11]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_12
(
	.z /* OUT */ (data_y[12]),
	.a0 /* IN */ (gpu_hi[12]),
	.a1 /* IN */ (addq_y[12]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_13
(
	.z /* OUT */ (data_y[13]),
	.a0 /* IN */ (gpu_hi[13]),
	.a1 /* IN */ (addq_y[13]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_14
(
	.z /* OUT */ (data_y[14]),
	.a0 /* IN */ (gpu_hi[14]),
	.a1 /* IN */ (addq_y[14]),
	.s /* IN */ (addqselb)
);
mx2 data_y_inst_15
(
	.z /* OUT */ (data_y[15]),
	.a0 /* IN */ (gpu_hi[15]),
	.a1 /* IN */ (addq_y[15]),
	.s /* IN */ (addqselb)
);
endmodule
/* verilator lint_on LITENDIAN */
