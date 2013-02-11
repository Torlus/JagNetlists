`include "defs.v"

module gpu_cpu
(
	inout[0:15] dread;
	output[0:12] cpuaddr;
	output[0:31] cpudata;
	output ioreq,
	input at_1,
	input a_15,
	input ack,
	input big_io,
	input clk_0,
	input clk_2,
	input dwrite_0,
	input dwrite_1,
	input dwrite_2,
	input dwrite_3,
	input dwrite_4,
	input dwrite_5,
	input dwrite_6,
	input dwrite_7,
	input dwrite_8,
	input dwrite_9,
	input dwrite_10,
	input dwrite_11,
	input dwrite_12,
	input dwrite_13,
	input dwrite_14,
	input dwrite_15,
	input dwrite_16,
	input dwrite_17,
	input dwrite_18,
	input dwrite_19,
	input dwrite_20,
	input dwrite_21,
	input dwrite_22,
	input dwrite_23,
	input dwrite_24,
	input dwrite_25,
	input dwrite_26,
	input dwrite_27,
	input dwrite_28,
	input dwrite_29,
	input dwrite_30,
	input dwrite_31,
	input[0:15] io_addr;
	input iord,
	input iowr,
	input[0:31] mem_data;
	input reset_n
);
wire [0:15] cpudlo;
wire [0:15] cpudhi;
wire [0:15] cpudhit;
wire [0:15] dreadt;
wire [0:15] dwritelo;
wire [0:15] dwritehi;
wire [0:15] gpudlo;
wire [0:15] gpudhi;
wire [0:15] lodata;
wire [0:15] latrdata;
wire [0:15] latrdatai;
wire [0:15] immrdata;
wire io_addr_n_1;
wire at_n_1;
wire at_15;
wire atl_15;
wire iorqt_0;
wire iorqt_2;
wire iorqt_1;
wire rden;
wire rdenp;
wire iowrite;
wire lodld;
wire lodsel;
wire cpuaddr_2;
wire cpuaddr_3;
wire cpuaddr_4;
wire cpuaddr_5;
wire cpuaddr_6;
wire cpuaddr_7;
wire cpuaddr_8;
wire cpuaddr_9;
wire cpuaddr_10;
wire cpuaddr_11;
wire cpuaddr_12;
wire cpuaddr_13;
wire cpuaddr_14;
wire hidld;
wire dreaden;

// GPU_CPU.NET (50) - dwritelo : join
assign dwritelo[0] = dwrite_0;
assign dwritelo[1] = dwrite_1;
assign dwritelo[2] = dwrite_2;
assign dwritelo[3] = dwrite_3;
assign dwritelo[4] = dwrite_4;
assign dwritelo[5] = dwrite_5;
assign dwritelo[6] = dwrite_6;
assign dwritelo[7] = dwrite_7;
assign dwritelo[8] = dwrite_8;
assign dwritelo[9] = dwrite_9;
assign dwritelo[10] = dwrite_10;
assign dwritelo[11] = dwrite_11;
assign dwritelo[12] = dwrite_12;
assign dwritelo[13] = dwrite_13;
assign dwritelo[14] = dwrite_14;
assign dwritelo[15] = dwrite_15;

// GPU_CPU.NET (51) - dwritehi : join
assign dwritehi[0] = dwrite_16;
assign dwritehi[1] = dwrite_17;
assign dwritehi[2] = dwrite_18;
assign dwritehi[3] = dwrite_19;
assign dwritehi[4] = dwrite_20;
assign dwritehi[5] = dwrite_21;
assign dwritehi[6] = dwrite_22;
assign dwritehi[7] = dwrite_23;
assign dwritehi[8] = dwrite_24;
assign dwritehi[9] = dwrite_25;
assign dwritehi[10] = dwrite_26;
assign dwritehi[11] = dwrite_27;
assign dwritehi[12] = dwrite_28;
assign dwritehi[13] = dwrite_29;
assign dwritehi[14] = dwrite_30;
assign dwritehi[15] = dwrite_31;

// GPU_CPU.NET (52) - gpudlo : join
assign gpudlo[0] = mem_data[0];
assign gpudlo[1] = mem_data[1];
assign gpudlo[2] = mem_data[2];
assign gpudlo[3] = mem_data[3];
assign gpudlo[4] = mem_data[4];
assign gpudlo[5] = mem_data[5];
assign gpudlo[6] = mem_data[6];
assign gpudlo[7] = mem_data[7];
assign gpudlo[8] = mem_data[8];
assign gpudlo[9] = mem_data[9];
assign gpudlo[10] = mem_data[10];
assign gpudlo[11] = mem_data[11];
assign gpudlo[12] = mem_data[12];
assign gpudlo[13] = mem_data[13];
assign gpudlo[14] = mem_data[14];
assign gpudlo[15] = mem_data[15];

// GPU_CPU.NET (53) - gpudhi : join
assign gpudhi[0] = mem_data[16];
assign gpudhi[1] = mem_data[17];
assign gpudhi[2] = mem_data[18];
assign gpudhi[3] = mem_data[19];
assign gpudhi[4] = mem_data[20];
assign gpudhi[5] = mem_data[21];
assign gpudhi[6] = mem_data[22];
assign gpudhi[7] = mem_data[23];
assign gpudhi[8] = mem_data[24];
assign gpudhi[9] = mem_data[25];
assign gpudhi[10] = mem_data[26];
assign gpudhi[11] = mem_data[27];
assign gpudhi[12] = mem_data[28];
assign gpudhi[13] = mem_data[29];
assign gpudhi[14] = mem_data[30];
assign gpudhi[15] = mem_data[31];

// GPU_CPU.NET (54) - io_addr\[1] : iv
assign io_addr_n_1 = ~io_addr[1];

// GPU_CPU.NET (59) - at\[1] : iv
assign at_n_1 = ~at_1;

// GPU_CPU.NET (60) - at[15] : mx2
mx2 at_index_15_inst
(
	.z(at_15), // OUT
	.a0(atl_15), // IN
	.a1(a_15), // IN
	.s(ack)  // IN
);

// GPU_CPU.NET (61) - atl[15] : fd1q
fd1q atl_index_15_inst
(
	.q(atl_15), // OUT
	.d(at_15), // IN
	.cp(clk_0)  // IN
);

// GPU_CPU.NET (67) - iorqt0 : nd2
assign iorqt_0 = ~(iord & at_n_1);

// GPU_CPU.NET (68) - iorqt2 : or2
assign iorqt_2 = at_1 | at_15;

// GPU_CPU.NET (69) - iorqt1 : nd2
assign iorqt_1 = ~(iowr & iorqt_2);

// GPU_CPU.NET (70) - ioreq : nd2
assign ioreq = ~(iorqt_0 & iorqt_1);

// GPU_CPU.NET (74) - rden : fd2q
fd2q rden_inst
(
	.q(rden), // OUT
	.d(iord), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GPU_CPU.NET (75) - rdenp : fd2q
fd2q rdenp_inst
(
	.q(rdenp), // OUT
	.d(rden), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GPU_CPU.NET (76) - iowrite : fd1q
fd1q iowrite_inst
(
	.q(iowrite), // OUT
	.d(iowr), // IN
	.cp(clk_0)  // IN
);

// GPU_CPU.NET (86) - lodld : an3h
assign lodld = iowrite & clk_2 & io_addr_n_1;

// GPU_CPU.NET (87) - lodata : ldp1q
ldp1q lodata_inst_0
(
	.q(lodata[0]), // OUT
	.d(dwritelo[0]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_1
(
	.q(lodata[1]), // OUT
	.d(dwritelo[1]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_2
(
	.q(lodata[2]), // OUT
	.d(dwritelo[2]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_3
(
	.q(lodata[3]), // OUT
	.d(dwritelo[3]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_4
(
	.q(lodata[4]), // OUT
	.d(dwritelo[4]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_5
(
	.q(lodata[5]), // OUT
	.d(dwritelo[5]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_6
(
	.q(lodata[6]), // OUT
	.d(dwritelo[6]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_7
(
	.q(lodata[7]), // OUT
	.d(dwritelo[7]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_8
(
	.q(lodata[8]), // OUT
	.d(dwritelo[8]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_9
(
	.q(lodata[9]), // OUT
	.d(dwritelo[9]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_10
(
	.q(lodata[10]), // OUT
	.d(dwritelo[10]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_11
(
	.q(lodata[11]), // OUT
	.d(dwritelo[11]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_12
(
	.q(lodata[12]), // OUT
	.d(dwritelo[12]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_13
(
	.q(lodata[13]), // OUT
	.d(dwritelo[13]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_14
(
	.q(lodata[14]), // OUT
	.d(dwritelo[14]), // IN
	.g(lodld)  // IN
);
ldp1q lodata_inst_15
(
	.q(lodata[15]), // OUT
	.d(dwritelo[15]), // IN
	.g(lodld)  // IN
);

// GPU_CPU.NET (89) - lodsel : or2_h
assign lodsel = big_io | io_addr[15];

// GPU_CPU.NET (90) - cpudlo : mx2
mx2 cpudlo_inst_0
(
	.z(cpudlo[0]), // OUT
	.a0(lodata[0]), // IN
	.a1(dwritelo[0]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_1
(
	.z(cpudlo[1]), // OUT
	.a0(lodata[1]), // IN
	.a1(dwritelo[1]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_2
(
	.z(cpudlo[2]), // OUT
	.a0(lodata[2]), // IN
	.a1(dwritelo[2]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_3
(
	.z(cpudlo[3]), // OUT
	.a0(lodata[3]), // IN
	.a1(dwritelo[3]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_4
(
	.z(cpudlo[4]), // OUT
	.a0(lodata[4]), // IN
	.a1(dwritelo[4]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_5
(
	.z(cpudlo[5]), // OUT
	.a0(lodata[5]), // IN
	.a1(dwritelo[5]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_6
(
	.z(cpudlo[6]), // OUT
	.a0(lodata[6]), // IN
	.a1(dwritelo[6]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_7
(
	.z(cpudlo[7]), // OUT
	.a0(lodata[7]), // IN
	.a1(dwritelo[7]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_8
(
	.z(cpudlo[8]), // OUT
	.a0(lodata[8]), // IN
	.a1(dwritelo[8]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_9
(
	.z(cpudlo[9]), // OUT
	.a0(lodata[9]), // IN
	.a1(dwritelo[9]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_10
(
	.z(cpudlo[10]), // OUT
	.a0(lodata[10]), // IN
	.a1(dwritelo[10]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_11
(
	.z(cpudlo[11]), // OUT
	.a0(lodata[11]), // IN
	.a1(dwritelo[11]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_12
(
	.z(cpudlo[12]), // OUT
	.a0(lodata[12]), // IN
	.a1(dwritelo[12]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_13
(
	.z(cpudlo[13]), // OUT
	.a0(lodata[13]), // IN
	.a1(dwritelo[13]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_14
(
	.z(cpudlo[14]), // OUT
	.a0(lodata[14]), // IN
	.a1(dwritelo[14]), // IN
	.s(lodsel)  // IN
);
mx2 cpudlo_inst_15
(
	.z(cpudlo[15]), // OUT
	.a0(lodata[15]), // IN
	.a1(dwritelo[15]), // IN
	.s(lodsel)  // IN
);

// GPU_CPU.NET (91) - cpudhit : mx2
mx2 cpudhit_inst_0
(
	.z(cpudhit[0]), // OUT
	.a0(dwritelo[0]), // IN
	.a1(lodata[0]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_1
(
	.z(cpudhit[1]), // OUT
	.a0(dwritelo[1]), // IN
	.a1(lodata[1]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_2
(
	.z(cpudhit[2]), // OUT
	.a0(dwritelo[2]), // IN
	.a1(lodata[2]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_3
(
	.z(cpudhit[3]), // OUT
	.a0(dwritelo[3]), // IN
	.a1(lodata[3]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_4
(
	.z(cpudhit[4]), // OUT
	.a0(dwritelo[4]), // IN
	.a1(lodata[4]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_5
(
	.z(cpudhit[5]), // OUT
	.a0(dwritelo[5]), // IN
	.a1(lodata[5]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_6
(
	.z(cpudhit[6]), // OUT
	.a0(dwritelo[6]), // IN
	.a1(lodata[6]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_7
(
	.z(cpudhit[7]), // OUT
	.a0(dwritelo[7]), // IN
	.a1(lodata[7]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_8
(
	.z(cpudhit[8]), // OUT
	.a0(dwritelo[8]), // IN
	.a1(lodata[8]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_9
(
	.z(cpudhit[9]), // OUT
	.a0(dwritelo[9]), // IN
	.a1(lodata[9]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_10
(
	.z(cpudhit[10]), // OUT
	.a0(dwritelo[10]), // IN
	.a1(lodata[10]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_11
(
	.z(cpudhit[11]), // OUT
	.a0(dwritelo[11]), // IN
	.a1(lodata[11]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_12
(
	.z(cpudhit[12]), // OUT
	.a0(dwritelo[12]), // IN
	.a1(lodata[12]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_13
(
	.z(cpudhit[13]), // OUT
	.a0(dwritelo[13]), // IN
	.a1(lodata[13]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_14
(
	.z(cpudhit[14]), // OUT
	.a0(dwritelo[14]), // IN
	.a1(lodata[14]), // IN
	.s(big_io)  // IN
);
mx2 cpudhit_inst_15
(
	.z(cpudhit[15]), // OUT
	.a0(dwritelo[15]), // IN
	.a1(lodata[15]), // IN
	.s(big_io)  // IN
);

// GPU_CPU.NET (92) - cpudhi : mx2
mx2 cpudhi_inst_0
(
	.z(cpudhi[0]), // OUT
	.a0(cpudhit[0]), // IN
	.a1(dwritehi[0]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_1
(
	.z(cpudhi[1]), // OUT
	.a0(cpudhit[1]), // IN
	.a1(dwritehi[1]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_2
(
	.z(cpudhi[2]), // OUT
	.a0(cpudhit[2]), // IN
	.a1(dwritehi[2]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_3
(
	.z(cpudhi[3]), // OUT
	.a0(cpudhit[3]), // IN
	.a1(dwritehi[3]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_4
(
	.z(cpudhi[4]), // OUT
	.a0(cpudhit[4]), // IN
	.a1(dwritehi[4]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_5
(
	.z(cpudhi[5]), // OUT
	.a0(cpudhit[5]), // IN
	.a1(dwritehi[5]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_6
(
	.z(cpudhi[6]), // OUT
	.a0(cpudhit[6]), // IN
	.a1(dwritehi[6]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_7
(
	.z(cpudhi[7]), // OUT
	.a0(cpudhit[7]), // IN
	.a1(dwritehi[7]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_8
(
	.z(cpudhi[8]), // OUT
	.a0(cpudhit[8]), // IN
	.a1(dwritehi[8]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_9
(
	.z(cpudhi[9]), // OUT
	.a0(cpudhit[9]), // IN
	.a1(dwritehi[9]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_10
(
	.z(cpudhi[10]), // OUT
	.a0(cpudhit[10]), // IN
	.a1(dwritehi[10]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_11
(
	.z(cpudhi[11]), // OUT
	.a0(cpudhit[11]), // IN
	.a1(dwritehi[11]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_12
(
	.z(cpudhi[12]), // OUT
	.a0(cpudhit[12]), // IN
	.a1(dwritehi[12]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_13
(
	.z(cpudhi[13]), // OUT
	.a0(cpudhit[13]), // IN
	.a1(dwritehi[13]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_14
(
	.z(cpudhi[14]), // OUT
	.a0(cpudhit[14]), // IN
	.a1(dwritehi[14]), // IN
	.s(io_addr[15])  // IN
);
mx2 cpudhi_inst_15
(
	.z(cpudhi[15]), // OUT
	.a0(cpudhit[15]), // IN
	.a1(dwritehi[15]), // IN
	.s(io_addr[15])  // IN
);

// GPU_CPU.NET (93) - cpudata : join
assign cpudata[0] = cpudlo[0];
assign cpudata[1] = cpudlo[1];
assign cpudata[2] = cpudlo[2];
assign cpudata[3] = cpudlo[3];
assign cpudata[4] = cpudlo[4];
assign cpudata[5] = cpudlo[5];
assign cpudata[6] = cpudlo[6];
assign cpudata[7] = cpudlo[7];
assign cpudata[8] = cpudlo[8];
assign cpudata[9] = cpudlo[9];
assign cpudata[10] = cpudlo[10];
assign cpudata[11] = cpudlo[11];
assign cpudata[12] = cpudlo[12];
assign cpudata[13] = cpudlo[13];
assign cpudata[14] = cpudlo[14];
assign cpudata[15] = cpudlo[15];
assign cpudata[16] = cpudhi[0];
assign cpudata[17] = cpudhi[1];
assign cpudata[18] = cpudhi[2];
assign cpudata[19] = cpudhi[3];
assign cpudata[20] = cpudhi[4];
assign cpudata[21] = cpudhi[5];
assign cpudata[22] = cpudhi[6];
assign cpudata[23] = cpudhi[7];
assign cpudata[24] = cpudhi[8];
assign cpudata[25] = cpudhi[9];
assign cpudata[26] = cpudhi[10];
assign cpudata[27] = cpudhi[11];
assign cpudata[28] = cpudhi[12];
assign cpudata[29] = cpudhi[13];
assign cpudata[30] = cpudhi[14];
assign cpudata[31] = cpudhi[15];

// GPU_CPU.NET (95) - cpuaddr[2-14] : niv
assign cpuaddr_2 = io_addr[2];
assign cpuaddr_3 = io_addr[3];
assign cpuaddr_4 = io_addr[4];
assign cpuaddr_5 = io_addr[5];
assign cpuaddr_6 = io_addr[6];
assign cpuaddr_7 = io_addr[7];
assign cpuaddr_8 = io_addr[8];
assign cpuaddr_9 = io_addr[9];
assign cpuaddr_10 = io_addr[10];
assign cpuaddr_11 = io_addr[11];
assign cpuaddr_12 = io_addr[12];
assign cpuaddr_13 = io_addr[13];
assign cpuaddr_14 = io_addr[14];

// GPU_CPU.NET (96) - cpuaddr : join
assign cpuaddr[0] = cpuaddr_2;
assign cpuaddr[1] = cpuaddr_3;
assign cpuaddr[2] = cpuaddr_4;
assign cpuaddr[3] = cpuaddr_5;
assign cpuaddr[4] = cpuaddr_6;
assign cpuaddr[5] = cpuaddr_7;
assign cpuaddr[6] = cpuaddr_8;
assign cpuaddr[7] = cpuaddr_9;
assign cpuaddr[8] = cpuaddr_10;
assign cpuaddr[9] = cpuaddr_11;
assign cpuaddr[10] = cpuaddr_12;
assign cpuaddr[11] = cpuaddr_13;
assign cpuaddr[12] = cpuaddr_14;

// GPU_CPU.NET (103) - latrdld : an3h
assign hidld = rdenp & clk_2 & io_addr_n_1;

// GPU_CPU.NET (104) - latrdatai : mx2
mx2 latrdatai_inst_0
(
	.z(latrdatai[0]), // OUT
	.a0(gpudhi[0]), // IN
	.a1(gpudlo[0]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_1
(
	.z(latrdatai[1]), // OUT
	.a0(gpudhi[1]), // IN
	.a1(gpudlo[1]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_2
(
	.z(latrdatai[2]), // OUT
	.a0(gpudhi[2]), // IN
	.a1(gpudlo[2]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_3
(
	.z(latrdatai[3]), // OUT
	.a0(gpudhi[3]), // IN
	.a1(gpudlo[3]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_4
(
	.z(latrdatai[4]), // OUT
	.a0(gpudhi[4]), // IN
	.a1(gpudlo[4]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_5
(
	.z(latrdatai[5]), // OUT
	.a0(gpudhi[5]), // IN
	.a1(gpudlo[5]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_6
(
	.z(latrdatai[6]), // OUT
	.a0(gpudhi[6]), // IN
	.a1(gpudlo[6]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_7
(
	.z(latrdatai[7]), // OUT
	.a0(gpudhi[7]), // IN
	.a1(gpudlo[7]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_8
(
	.z(latrdatai[8]), // OUT
	.a0(gpudhi[8]), // IN
	.a1(gpudlo[8]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_9
(
	.z(latrdatai[9]), // OUT
	.a0(gpudhi[9]), // IN
	.a1(gpudlo[9]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_10
(
	.z(latrdatai[10]), // OUT
	.a0(gpudhi[10]), // IN
	.a1(gpudlo[10]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_11
(
	.z(latrdatai[11]), // OUT
	.a0(gpudhi[11]), // IN
	.a1(gpudlo[11]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_12
(
	.z(latrdatai[12]), // OUT
	.a0(gpudhi[12]), // IN
	.a1(gpudlo[12]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_13
(
	.z(latrdatai[13]), // OUT
	.a0(gpudhi[13]), // IN
	.a1(gpudlo[13]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_14
(
	.z(latrdatai[14]), // OUT
	.a0(gpudhi[14]), // IN
	.a1(gpudlo[14]), // IN
	.s(big_io)  // IN
);
mx2 latrdatai_inst_15
(
	.z(latrdatai[15]), // OUT
	.a0(gpudhi[15]), // IN
	.a1(gpudlo[15]), // IN
	.s(big_io)  // IN
);

// GPU_CPU.NET (105) - latrdata : ldp1q
ldp1q latrdata_inst_0
(
	.q(latrdata[0]), // OUT
	.d(latrdatai[0]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_1
(
	.q(latrdata[1]), // OUT
	.d(latrdatai[1]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_2
(
	.q(latrdata[2]), // OUT
	.d(latrdatai[2]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_3
(
	.q(latrdata[3]), // OUT
	.d(latrdatai[3]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_4
(
	.q(latrdata[4]), // OUT
	.d(latrdatai[4]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_5
(
	.q(latrdata[5]), // OUT
	.d(latrdatai[5]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_6
(
	.q(latrdata[6]), // OUT
	.d(latrdatai[6]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_7
(
	.q(latrdata[7]), // OUT
	.d(latrdatai[7]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_8
(
	.q(latrdata[8]), // OUT
	.d(latrdatai[8]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_9
(
	.q(latrdata[9]), // OUT
	.d(latrdatai[9]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_10
(
	.q(latrdata[10]), // OUT
	.d(latrdatai[10]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_11
(
	.q(latrdata[11]), // OUT
	.d(latrdatai[11]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_12
(
	.q(latrdata[12]), // OUT
	.d(latrdatai[12]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_13
(
	.q(latrdata[13]), // OUT
	.d(latrdatai[13]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_14
(
	.q(latrdata[14]), // OUT
	.d(latrdatai[14]), // IN
	.g(hidld)  // IN
);
ldp1q latrdata_inst_15
(
	.q(latrdata[15]), // OUT
	.d(latrdatai[15]), // IN
	.g(hidld)  // IN
);

// GPU_CPU.NET (108) - immrdatai : mx2
mx2 immrdatai_inst_0
(
	.z(immrdata[0]), // OUT
	.a0(gpudlo[0]), // IN
	.a1(gpudhi[0]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_1
(
	.z(immrdata[1]), // OUT
	.a0(gpudlo[1]), // IN
	.a1(gpudhi[1]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_2
(
	.z(immrdata[2]), // OUT
	.a0(gpudlo[2]), // IN
	.a1(gpudhi[2]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_3
(
	.z(immrdata[3]), // OUT
	.a0(gpudlo[3]), // IN
	.a1(gpudhi[3]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_4
(
	.z(immrdata[4]), // OUT
	.a0(gpudlo[4]), // IN
	.a1(gpudhi[4]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_5
(
	.z(immrdata[5]), // OUT
	.a0(gpudlo[5]), // IN
	.a1(gpudhi[5]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_6
(
	.z(immrdata[6]), // OUT
	.a0(gpudlo[6]), // IN
	.a1(gpudhi[6]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_7
(
	.z(immrdata[7]), // OUT
	.a0(gpudlo[7]), // IN
	.a1(gpudhi[7]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_8
(
	.z(immrdata[8]), // OUT
	.a0(gpudlo[8]), // IN
	.a1(gpudhi[8]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_9
(
	.z(immrdata[9]), // OUT
	.a0(gpudlo[9]), // IN
	.a1(gpudhi[9]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_10
(
	.z(immrdata[10]), // OUT
	.a0(gpudlo[10]), // IN
	.a1(gpudhi[10]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_11
(
	.z(immrdata[11]), // OUT
	.a0(gpudlo[11]), // IN
	.a1(gpudhi[11]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_12
(
	.z(immrdata[12]), // OUT
	.a0(gpudlo[12]), // IN
	.a1(gpudhi[12]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_13
(
	.z(immrdata[13]), // OUT
	.a0(gpudlo[13]), // IN
	.a1(gpudhi[13]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_14
(
	.z(immrdata[14]), // OUT
	.a0(gpudlo[14]), // IN
	.a1(gpudhi[14]), // IN
	.s(big_io)  // IN
);
mx2 immrdatai_inst_15
(
	.z(immrdata[15]), // OUT
	.a0(gpudlo[15]), // IN
	.a1(gpudhi[15]), // IN
	.s(big_io)  // IN
);

// GPU_CPU.NET (110) - dreadt : mx2
mx2 dreadt_inst_0
(
	.z(dreadt[0]), // OUT
	.a0(immrdata[0]), // IN
	.a1(latrdata[0]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_1
(
	.z(dreadt[1]), // OUT
	.a0(immrdata[1]), // IN
	.a1(latrdata[1]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_2
(
	.z(dreadt[2]), // OUT
	.a0(immrdata[2]), // IN
	.a1(latrdata[2]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_3
(
	.z(dreadt[3]), // OUT
	.a0(immrdata[3]), // IN
	.a1(latrdata[3]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_4
(
	.z(dreadt[4]), // OUT
	.a0(immrdata[4]), // IN
	.a1(latrdata[4]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_5
(
	.z(dreadt[5]), // OUT
	.a0(immrdata[5]), // IN
	.a1(latrdata[5]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_6
(
	.z(dreadt[6]), // OUT
	.a0(immrdata[6]), // IN
	.a1(latrdata[6]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_7
(
	.z(dreadt[7]), // OUT
	.a0(immrdata[7]), // IN
	.a1(latrdata[7]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_8
(
	.z(dreadt[8]), // OUT
	.a0(immrdata[8]), // IN
	.a1(latrdata[8]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_9
(
	.z(dreadt[9]), // OUT
	.a0(immrdata[9]), // IN
	.a1(latrdata[9]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_10
(
	.z(dreadt[10]), // OUT
	.a0(immrdata[10]), // IN
	.a1(latrdata[10]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_11
(
	.z(dreadt[11]), // OUT
	.a0(immrdata[11]), // IN
	.a1(latrdata[11]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_12
(
	.z(dreadt[12]), // OUT
	.a0(immrdata[12]), // IN
	.a1(latrdata[12]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_13
(
	.z(dreadt[13]), // OUT
	.a0(immrdata[13]), // IN
	.a1(latrdata[13]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_14
(
	.z(dreadt[14]), // OUT
	.a0(immrdata[14]), // IN
	.a1(latrdata[14]), // IN
	.s(io_addr[1])  // IN
);
mx2 dreadt_inst_15
(
	.z(dreadt[15]), // OUT
	.a0(immrdata[15]), // IN
	.a1(latrdata[15]), // IN
	.s(io_addr[1])  // IN
);

// GPU_CPU.NET (111) - dreaden : or2_h
assign dreaden = rden | rdenp;

// GPU_CPU.NET (112) - dread : tsm
assign dread[0] = (dreaden) ? dreadt[0] : 1'bz;
assign dread[1] = (dreaden) ? dreadt[1] : 1'bz;
assign dread[2] = (dreaden) ? dreadt[2] : 1'bz;
assign dread[3] = (dreaden) ? dreadt[3] : 1'bz;
assign dread[4] = (dreaden) ? dreadt[4] : 1'bz;
assign dread[5] = (dreaden) ? dreadt[5] : 1'bz;
assign dread[6] = (dreaden) ? dreadt[6] : 1'bz;
assign dread[7] = (dreaden) ? dreadt[7] : 1'bz;
assign dread[8] = (dreaden) ? dreadt[8] : 1'bz;
assign dread[9] = (dreaden) ? dreadt[9] : 1'bz;
assign dread[10] = (dreaden) ? dreadt[10] : 1'bz;
assign dread[11] = (dreaden) ? dreadt[11] : 1'bz;
assign dread[12] = (dreaden) ? dreadt[12] : 1'bz;
assign dread[13] = (dreaden) ? dreadt[13] : 1'bz;
assign dread[14] = (dreaden) ? dreadt[14] : 1'bz;
assign dread[15] = (dreaden) ? dreadt[15] : 1'bz;
endmodule
