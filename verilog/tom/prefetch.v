`include "defs.v"

module prefetch
(
	inout gpu_dout_22,
	inout gpu_dout_23,
	inout gpu_dout_24,
	output insrdy,
	output[0:15] instruction;
	output jump_atomic,
	output pabort,
	output progreq,
	output[0:21] progaddr;
	output[0:23] program_count;
	input big_instr,
	input clk,
	input dbgrd,
	input go,
	input[0:31] gpu_data;
	input[0:31] gpu_din;
	input progack,
	input jumprel,
	input jumpabs,
	input pcwr,
	input reset_n,
	input promoldx_n,
	input single_go,
	input single_step,
	input[0:31] srcd;
	input[0:31] srcdp
);
wire [0:15] inshi;
wire [0:15] inslo;
wire [0:31] insin;
wire [0:31] insdata;
wire [0:31] pfdata;
wire [0:22] pc;
wire single_go_n;
wire qs_0;
wire qs_1;
wire qs_2;
wire single_adv;
wire insrdyss;
wire insrdyt;
wire jat_0;
wire jat_2;
wire jat_1;
wire jat_3;
wire jabs;
wire jrt_0;
wire jrt_2;
wire jrt_1;
wire jrt_3;
wire jreli;
wire jrel;
wire jrelb;
wire jrel_n;
wire jump_n;
wire oddjump_n;
wire oddjump;
wire progack_n;
wire promold;
wire promold_n;
wire force0_n;
wire q0b_0;
wire qs_n_0;
wire qs_n_1;
wire qs_n_2;
wire q0b_1;
wire q0b_2;
wire q0b_3;
wire q0b_4;
wire q0b_5;
wire q0b_6;
wire q0b_7;
wire qsi_0;
wire q1b_0;
wire q1b_1;
wire q1b_2;
wire q1b_3;
wire q1b_4;
wire q1b_5;
wire q1b_6;
wire q1b_7;
wire q1b_8;
wire qsi_1;
wire q2b_0;
wire q2b_1;
wire q2b_2;
wire qsi_2;
wire qst_0;
wire qst_1;
wire qst_2;
wire insrdy_n;
wire insldt_0;
wire insldt1t;
wire insldt_1;
wire insldt_2;
wire insldt;
wire insld;
wire pf1sel;
wire ins_swap_n;
wire ins_swap;
wire prst_0;
wire prst1t;
wire prst_1;
wire prst_2;
wire prst_3;

// PREFETCH.NET (63) - single_go\ : iv
assign single_go_n = ~single_go;

// PREFETCH.NET (65) - dbgrd[22-24] : ts
assign gpu_dout_22 = (dbgrd) ? qs_0 : 1'bz;
assign gpu_dout_23 = (dbgrd) ? qs_1 : 1'bz;
assign gpu_dout_24 = (dbgrd) ? qs_2 : 1'bz;

// PREFETCH.NET (101) - single_adv : nd2
assign single_adv = ~(single_go_n & single_step);

// PREFETCH.NET (102) - insrdyss : an2
assign insrdyss = insrdyt & single_adv;

// PREFETCH.NET (103) - jat0 : nr2
assign jat_0 = ~(jumpabs | jat_2);

// PREFETCH.NET (104) - jat1 : nr2
assign jat_1 = ~(insrdyss | jat_0);

// PREFETCH.NET (105) - jat2 : fd2q
fd2q jat2_inst
(
	.q(jat_2), // OUT
	.d(jat_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (106) - jat3 : or2
assign jat_3 = jumpabs | jat_2;

// PREFETCH.NET (107) - jabs : an2
assign jabs = jat_3 & insrdyss;

// PREFETCH.NET (109) - jrt0 : nr2
assign jrt_0 = ~(jumprel | jrt_2);

// PREFETCH.NET (110) - jrt1 : nr2
assign jrt_1 = ~(insrdyss | jrt_0);

// PREFETCH.NET (111) - jrt2 : fd2q
fd2q jrt2_inst
(
	.q(jrt_2), // OUT
	.d(jrt_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (112) - jrt3 : or2
assign jrt_3 = jumprel | jrt_2;

// PREFETCH.NET (113) - jreli : an2
assign jreli = jrt_3 & insrdyss;

// PREFETCH.NET (114) - jrel : fd1q
fd1q jrel_inst
(
	.q(jrel), // OUT
	.d(jreli), // IN
	.cp(clk)  // IN
);

// PREFETCH.NET (115) - jrelb : nivu
assign jrelb = jrel;

// PREFETCH.NET (116) - jrel\ : iv
assign jrel_n = ~jrel;

// PREFETCH.NET (120) - jump_atomic : or4
assign jump_atomic = jumprel | jumpabs | jat_2 | jrt_2;

// PREFETCH.NET (123) - jump\ : nr2m
assign jump_n = ~(jrelb | jabs);

// PREFETCH.NET (124) - oddjmp\ : iv
assign oddjump_n = ~oddjump;

// PREFETCH.NET (125) - prgack\ : iv
assign progack_n = ~progack;

// PREFETCH.NET (126) - romold : ivm
assign promold = ~promoldx_n;

// PREFETCH.NET (127) - romold\ : nivm
assign promold_n = promoldx_n;

// PREFETCH.NET (129) - force0 : an2
assign force0_n = jump_n & go;

// PREFETCH.NET (137) - q0b0 : nd6
assign q0b_0 = ~(qs_n_0 & qs_n_1 & qs_n_2 & progack & oddjump & go);

// PREFETCH.NET (139) - q0b1 : nd5
nd5 q0b1_inst
(
	.q(q0b_1), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack_n), // IN
	.a_4(promold_n)  // IN
);

// PREFETCH.NET (140) - q0b2 : nd5
nd5 q0b2_inst
(
	.q(q0b_2), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack_n), // IN
	.a_4(promold)  // IN
);

// PREFETCH.NET (142) - q0b3 : nd5
nd5 q0b3_inst
(
	.q(q0b_3), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold_n)  // IN
);

// PREFETCH.NET (143) - q0b4 : nd5
nd5 q0b4_inst
(
	.q(q0b_4), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold)  // IN
);

// PREFETCH.NET (144) - q0b5 : nd4
assign q0b_5 = ~(qs_0 & qs_1 & qs_n_2 & promold_n);

// PREFETCH.NET (145) - q0b6 : nd4
assign q0b_6 = ~(qs_n_0 & qs_n_1 & qs_2 & promold);

// PREFETCH.NET (146) - q0b7 : nd7
nd7 q0b7_inst
(
	.q(q0b_7), // OUT
	.a_0(q0b_0), // IN
	.a_1(q0b_1), // IN
	.a_2(q0b_2), // IN
	.a_3(q0b_3), // IN
	.a_4(q0b_4), // IN
	.a_5(q0b_5), // IN
	.a_6(q0b_6)  // IN
);

// PREFETCH.NET (147) - qi0 : an2
assign qsi_0 = q0b_7 & force0_n;

// PREFETCH.NET (150) - q1b0 : nd6
assign q1b_0 = ~(qs_n_0 & qs_n_1 & qs_n_2 & progack & oddjump_n & go);

// PREFETCH.NET (152) - q1b1 : nd5
nd5 q1b1_inst
(
	.q(q1b_1), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold)  // IN
);

// PREFETCH.NET (153) - q1b2 : nd5
nd5 q1b2_inst
(
	.q(q1b_2), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack_n), // IN
	.a_4(promold_n)  // IN
);

// PREFETCH.NET (154) - q1b3 : nd4
assign q1b_3 = ~(qs_0 & qs_1 & qs_n_2 & promold);

// PREFETCH.NET (156) - q1b4 : nd5
nd5 q1b4_inst
(
	.q(q1b_4), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold_n)  // IN
);

// PREFETCH.NET (157) - q1b5 : nd5
nd5 q1b5_inst
(
	.q(q1b_5), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold)  // IN
);

// PREFETCH.NET (158) - q1b6 : nd4
assign q1b_6 = ~(qs_0 & qs_1 & qs_n_2 & promold_n);

// PREFETCH.NET (159) - q1b7 : nd4
assign q1b_7 = ~(qs_n_0 & qs_n_1 & qs_2 & promold);

// PREFETCH.NET (160) - q1b8 : nd8
assign q1b_8 = ~(q1b_0 & q1b_1 & q1b_2 & q1b_3 & q1b_4 & q1b_5 & q1b_6 & q1b_7);

// PREFETCH.NET (161) - qi1 : an2
assign qsi_1 = q1b_8 & force0_n;

// PREFETCH.NET (164) - q2b0 : nd5
nd5 q2b0_inst
(
	.q(q2b_0), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack), // IN
	.a_4(promold_n)  // IN
);

// PREFETCH.NET (165) - q2b1 : nd4
assign q2b_1 = ~(qs_n_0 & qs_n_1 & qs_2 & promold_n);

// PREFETCH.NET (166) - q2b2 : nd2
assign q2b_2 = ~(q2b_0 & q2b_1);

// PREFETCH.NET (167) - qi2 : an2
assign qsi_2 = q2b_2 & force0_n;

// PREFETCH.NET (169) - qst[0-2] : fd2qp
fd2q qst_from_0_to_2_inst_0
(
	.q(qst_0), // OUT
	.d(qsi_0), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q qst_from_0_to_2_inst_1
(
	.q(qst_1), // OUT
	.d(qsi_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q qst_from_0_to_2_inst_2
(
	.q(qst_2), // OUT
	.d(qsi_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (170) - qs[0] : nivu
assign qs_0 = qst_0;

// PREFETCH.NET (171) - qs[1-2] : nivm
assign qs_1 = qst_1;
assign qs_2 = qst_2;

// PREFETCH.NET (172) - qs\[0-2] : ivh
assign qs_n_0 = ~qst_0;
assign qs_n_1 = ~qst_1;
assign qs_n_2 = ~qst_2;

// PREFETCH.NET (177) - insrdyt : nd3p
assign insrdyt = ~(qs_n_0 & qs_n_1 & qs_n_2);

// PREFETCH.NET (178) - insrdy\ : nd2
assign insrdy_n = ~(insrdyt & jrel_n);

// PREFETCH.NET (179) - insrdy : ivh
assign insrdy = ~insrdy_n;

// PREFETCH.NET (199) - insldt0 : nd4
assign insldt_0 = ~(qs_n_0 & qs_n_1 & qs_n_2 & progack);

// PREFETCH.NET (200) - insldt1t : an3
assign insldt1t = qs_0 & qs_n_1 & qs_n_2;

// PREFETCH.NET (201) - insldt1 : nd3
assign insldt_1 = ~(insldt1t & promold & progack);

// PREFETCH.NET (202) - insldt2 : nd4
assign insldt_2 = ~(qs_0 & qs_1 & qs_n_2 & promold);

// PREFETCH.NET (203) - insldt : nd3p
assign insldt = ~(insldt_0 & insldt_1 & insldt_2);

// PREFETCH.NET (204) - insld : nivu3
assign insld = insldt;

// PREFETCH.NET (206) - pfbuf1 : fdsyncr32
fdsyncr32 pfbuf1_inst
(
	.q({pfdata[0],pfdata[1],pfdata[2],pfdata[3],pfdata[4],pfdata[5],pfdata[6],pfdata[7],pfdata[8],pfdata[9],pfdata[10],pfdata[11],pfdata[12],pfdata[13],pfdata[14],pfdata[15],pfdata[16],pfdata[17],pfdata[18],pfdata[19],pfdata[20],pfdata[21],pfdata[22],pfdata[23],pfdata[24],pfdata[25],pfdata[26],pfdata[27],pfdata[28],pfdata[29],pfdata[30],pfdata[31]}), // IO
	.d({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // IN
	.ld(progack), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// PREFETCH.NET (209) - pf1selt : an3u
assign pf1sel = qs_0 & qs_1 & qs_n_2;

// PREFETCH.NET (211) - inssel : mx4
mx4 inssel_inst_0
(
	.z(insin[0]), // OUT
	.a0(insdata[0]), // IN
	.a1(gpu_data[0]), // IN
	.a2(insdata[0]), // IN
	.a3(pfdata[0]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_1
(
	.z(insin[1]), // OUT
	.a0(insdata[1]), // IN
	.a1(gpu_data[1]), // IN
	.a2(insdata[1]), // IN
	.a3(pfdata[1]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_2
(
	.z(insin[2]), // OUT
	.a0(insdata[2]), // IN
	.a1(gpu_data[2]), // IN
	.a2(insdata[2]), // IN
	.a3(pfdata[2]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_3
(
	.z(insin[3]), // OUT
	.a0(insdata[3]), // IN
	.a1(gpu_data[3]), // IN
	.a2(insdata[3]), // IN
	.a3(pfdata[3]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_4
(
	.z(insin[4]), // OUT
	.a0(insdata[4]), // IN
	.a1(gpu_data[4]), // IN
	.a2(insdata[4]), // IN
	.a3(pfdata[4]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_5
(
	.z(insin[5]), // OUT
	.a0(insdata[5]), // IN
	.a1(gpu_data[5]), // IN
	.a2(insdata[5]), // IN
	.a3(pfdata[5]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_6
(
	.z(insin[6]), // OUT
	.a0(insdata[6]), // IN
	.a1(gpu_data[6]), // IN
	.a2(insdata[6]), // IN
	.a3(pfdata[6]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_7
(
	.z(insin[7]), // OUT
	.a0(insdata[7]), // IN
	.a1(gpu_data[7]), // IN
	.a2(insdata[7]), // IN
	.a3(pfdata[7]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_8
(
	.z(insin[8]), // OUT
	.a0(insdata[8]), // IN
	.a1(gpu_data[8]), // IN
	.a2(insdata[8]), // IN
	.a3(pfdata[8]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_9
(
	.z(insin[9]), // OUT
	.a0(insdata[9]), // IN
	.a1(gpu_data[9]), // IN
	.a2(insdata[9]), // IN
	.a3(pfdata[9]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_10
(
	.z(insin[10]), // OUT
	.a0(insdata[10]), // IN
	.a1(gpu_data[10]), // IN
	.a2(insdata[10]), // IN
	.a3(pfdata[10]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_11
(
	.z(insin[11]), // OUT
	.a0(insdata[11]), // IN
	.a1(gpu_data[11]), // IN
	.a2(insdata[11]), // IN
	.a3(pfdata[11]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_12
(
	.z(insin[12]), // OUT
	.a0(insdata[12]), // IN
	.a1(gpu_data[12]), // IN
	.a2(insdata[12]), // IN
	.a3(pfdata[12]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_13
(
	.z(insin[13]), // OUT
	.a0(insdata[13]), // IN
	.a1(gpu_data[13]), // IN
	.a2(insdata[13]), // IN
	.a3(pfdata[13]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_14
(
	.z(insin[14]), // OUT
	.a0(insdata[14]), // IN
	.a1(gpu_data[14]), // IN
	.a2(insdata[14]), // IN
	.a3(pfdata[14]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_15
(
	.z(insin[15]), // OUT
	.a0(insdata[15]), // IN
	.a1(gpu_data[15]), // IN
	.a2(insdata[15]), // IN
	.a3(pfdata[15]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_16
(
	.z(insin[16]), // OUT
	.a0(insdata[16]), // IN
	.a1(gpu_data[16]), // IN
	.a2(insdata[16]), // IN
	.a3(pfdata[16]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_17
(
	.z(insin[17]), // OUT
	.a0(insdata[17]), // IN
	.a1(gpu_data[17]), // IN
	.a2(insdata[17]), // IN
	.a3(pfdata[17]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_18
(
	.z(insin[18]), // OUT
	.a0(insdata[18]), // IN
	.a1(gpu_data[18]), // IN
	.a2(insdata[18]), // IN
	.a3(pfdata[18]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_19
(
	.z(insin[19]), // OUT
	.a0(insdata[19]), // IN
	.a1(gpu_data[19]), // IN
	.a2(insdata[19]), // IN
	.a3(pfdata[19]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_20
(
	.z(insin[20]), // OUT
	.a0(insdata[20]), // IN
	.a1(gpu_data[20]), // IN
	.a2(insdata[20]), // IN
	.a3(pfdata[20]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_21
(
	.z(insin[21]), // OUT
	.a0(insdata[21]), // IN
	.a1(gpu_data[21]), // IN
	.a2(insdata[21]), // IN
	.a3(pfdata[21]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_22
(
	.z(insin[22]), // OUT
	.a0(insdata[22]), // IN
	.a1(gpu_data[22]), // IN
	.a2(insdata[22]), // IN
	.a3(pfdata[22]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_23
(
	.z(insin[23]), // OUT
	.a0(insdata[23]), // IN
	.a1(gpu_data[23]), // IN
	.a2(insdata[23]), // IN
	.a3(pfdata[23]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_24
(
	.z(insin[24]), // OUT
	.a0(insdata[24]), // IN
	.a1(gpu_data[24]), // IN
	.a2(insdata[24]), // IN
	.a3(pfdata[24]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_25
(
	.z(insin[25]), // OUT
	.a0(insdata[25]), // IN
	.a1(gpu_data[25]), // IN
	.a2(insdata[25]), // IN
	.a3(pfdata[25]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_26
(
	.z(insin[26]), // OUT
	.a0(insdata[26]), // IN
	.a1(gpu_data[26]), // IN
	.a2(insdata[26]), // IN
	.a3(pfdata[26]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_27
(
	.z(insin[27]), // OUT
	.a0(insdata[27]), // IN
	.a1(gpu_data[27]), // IN
	.a2(insdata[27]), // IN
	.a3(pfdata[27]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_28
(
	.z(insin[28]), // OUT
	.a0(insdata[28]), // IN
	.a1(gpu_data[28]), // IN
	.a2(insdata[28]), // IN
	.a3(pfdata[28]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_29
(
	.z(insin[29]), // OUT
	.a0(insdata[29]), // IN
	.a1(gpu_data[29]), // IN
	.a2(insdata[29]), // IN
	.a3(pfdata[29]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_30
(
	.z(insin[30]), // OUT
	.a0(insdata[30]), // IN
	.a1(gpu_data[30]), // IN
	.a2(insdata[30]), // IN
	.a3(pfdata[30]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);
mx4 inssel_inst_31
(
	.z(insin[31]), // OUT
	.a0(insdata[31]), // IN
	.a1(gpu_data[31]), // IN
	.a2(insdata[31]), // IN
	.a3(pfdata[31]), // IN
	.s0(insld), // IN
	.s1(pf1sel)  // IN
);

// PREFETCH.NET (213) - insdata : fd2q
fd2q insdata_inst_0
(
	.q(insdata[0]), // OUT
	.d(insin[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_1
(
	.q(insdata[1]), // OUT
	.d(insin[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_2
(
	.q(insdata[2]), // OUT
	.d(insin[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_3
(
	.q(insdata[3]), // OUT
	.d(insin[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_4
(
	.q(insdata[4]), // OUT
	.d(insin[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_5
(
	.q(insdata[5]), // OUT
	.d(insin[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_6
(
	.q(insdata[6]), // OUT
	.d(insin[6]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_7
(
	.q(insdata[7]), // OUT
	.d(insin[7]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_8
(
	.q(insdata[8]), // OUT
	.d(insin[8]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_9
(
	.q(insdata[9]), // OUT
	.d(insin[9]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_10
(
	.q(insdata[10]), // OUT
	.d(insin[10]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_11
(
	.q(insdata[11]), // OUT
	.d(insin[11]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_12
(
	.q(insdata[12]), // OUT
	.d(insin[12]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_13
(
	.q(insdata[13]), // OUT
	.d(insin[13]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_14
(
	.q(insdata[14]), // OUT
	.d(insin[14]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_15
(
	.q(insdata[15]), // OUT
	.d(insin[15]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_16
(
	.q(insdata[16]), // OUT
	.d(insin[16]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_17
(
	.q(insdata[17]), // OUT
	.d(insin[17]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_18
(
	.q(insdata[18]), // OUT
	.d(insin[18]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_19
(
	.q(insdata[19]), // OUT
	.d(insin[19]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_20
(
	.q(insdata[20]), // OUT
	.d(insin[20]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_21
(
	.q(insdata[21]), // OUT
	.d(insin[21]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_22
(
	.q(insdata[22]), // OUT
	.d(insin[22]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_23
(
	.q(insdata[23]), // OUT
	.d(insin[23]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_24
(
	.q(insdata[24]), // OUT
	.d(insin[24]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_25
(
	.q(insdata[25]), // OUT
	.d(insin[25]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_26
(
	.q(insdata[26]), // OUT
	.d(insin[26]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_27
(
	.q(insdata[27]), // OUT
	.d(insin[27]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_28
(
	.q(insdata[28]), // OUT
	.d(insin[28]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_29
(
	.q(insdata[29]), // OUT
	.d(insin[29]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_30
(
	.q(insdata[30]), // OUT
	.d(insin[30]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q insdata_inst_31
(
	.q(insdata[31]), // OUT
	.d(insin[31]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// PREFETCH.NET (217) - inshi : join
assign inshi[0] = insdata[16];
assign inshi[1] = insdata[17];
assign inshi[2] = insdata[18];
assign inshi[3] = insdata[19];
assign inshi[4] = insdata[20];
assign inshi[5] = insdata[21];
assign inshi[6] = insdata[22];
assign inshi[7] = insdata[23];
assign inshi[8] = insdata[24];
assign inshi[9] = insdata[25];
assign inshi[10] = insdata[26];
assign inshi[11] = insdata[27];
assign inshi[12] = insdata[28];
assign inshi[13] = insdata[29];
assign inshi[14] = insdata[30];
assign inshi[15] = insdata[31];

// PREFETCH.NET (218) - inslo : join
assign inslo[0] = insdata[0];
assign inslo[1] = insdata[1];
assign inslo[2] = insdata[2];
assign inslo[3] = insdata[3];
assign inslo[4] = insdata[4];
assign inslo[5] = insdata[5];
assign inslo[6] = insdata[6];
assign inslo[7] = insdata[7];
assign inslo[8] = insdata[8];
assign inslo[9] = insdata[9];
assign inslo[10] = insdata[10];
assign inslo[11] = insdata[11];
assign inslo[12] = insdata[12];
assign inslo[13] = insdata[13];
assign inslo[14] = insdata[14];
assign inslo[15] = insdata[15];

// PREFETCH.NET (219) - ins_swap\ : enp
assign ins_swap_n = ~(qst_0 ^ big_instr);

// PREFETCH.NET (220) - ins_swap : ivm
assign ins_swap = ~ins_swap_n;

// PREFETCH.NET (221) - instr : mx2
mx2 instr_inst_0
(
	.z(instruction[0]), // OUT
	.a0(inslo[0]), // IN
	.a1(inshi[0]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_1
(
	.z(instruction[1]), // OUT
	.a0(inslo[1]), // IN
	.a1(inshi[1]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_2
(
	.z(instruction[2]), // OUT
	.a0(inslo[2]), // IN
	.a1(inshi[2]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_3
(
	.z(instruction[3]), // OUT
	.a0(inslo[3]), // IN
	.a1(inshi[3]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_4
(
	.z(instruction[4]), // OUT
	.a0(inslo[4]), // IN
	.a1(inshi[4]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_5
(
	.z(instruction[5]), // OUT
	.a0(inslo[5]), // IN
	.a1(inshi[5]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_6
(
	.z(instruction[6]), // OUT
	.a0(inslo[6]), // IN
	.a1(inshi[6]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_7
(
	.z(instruction[7]), // OUT
	.a0(inslo[7]), // IN
	.a1(inshi[7]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_8
(
	.z(instruction[8]), // OUT
	.a0(inslo[8]), // IN
	.a1(inshi[8]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_9
(
	.z(instruction[9]), // OUT
	.a0(inslo[9]), // IN
	.a1(inshi[9]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_10
(
	.z(instruction[10]), // OUT
	.a0(inslo[10]), // IN
	.a1(inshi[10]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_11
(
	.z(instruction[11]), // OUT
	.a0(inslo[11]), // IN
	.a1(inshi[11]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_12
(
	.z(instruction[12]), // OUT
	.a0(inslo[12]), // IN
	.a1(inshi[12]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_13
(
	.z(instruction[13]), // OUT
	.a0(inslo[13]), // IN
	.a1(inshi[13]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_14
(
	.z(instruction[14]), // OUT
	.a0(inslo[14]), // IN
	.a1(inshi[14]), // IN
	.s(ins_swap)  // IN
);
mx2 instr_inst_15
(
	.z(instruction[15]), // OUT
	.a0(inslo[15]), // IN
	.a1(inshi[15]), // IN
	.s(ins_swap)  // IN
);

// PREFETCH.NET (236) - prst0 : nd5
nd5 prst0_inst
(
	.q(prst_0), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(go), // IN
	.a_4(jump_n)  // IN
);

// PREFETCH.NET (237) - prst1t : nd2
assign prst1t = ~(progack & promold_n);

// PREFETCH.NET (238) - prst1 : nd5
nd5 prst1_inst
(
	.q(prst_1), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_n_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(prst1t), // IN
	.a_4(jump_n)  // IN
);

// PREFETCH.NET (239) - prst2 : nd5
nd5 prst2_inst
(
	.q(prst_2), // OUT
	.a_0(qs_n_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(progack_n), // IN
	.a_4(jump_n)  // IN
);

// PREFETCH.NET (240) - prst3 : nd5
nd5 prst3_inst
(
	.q(prst_3), // OUT
	.a_0(qs_0), // IN
	.a_1(qs_1), // IN
	.a_2(qs_n_2), // IN
	.a_3(promold), // IN
	.a_4(jump_n)  // IN
);

// PREFETCH.NET (241) - progreq : nd4p
assign progreq = ~(prst_0 & prst_1 & prst_2 & prst_3);

// PREFETCH.NET (245) - pabort : or2p
assign pabort = jrel | jabs;

// PREFETCH.NET (249) - pc : pc
pc pc_inst
(
	.pc({pc[0],pc[1],pc[2],pc[3],pc[4],pc[5],pc[6],pc[7],pc[8],pc[9],pc[10],pc[11],pc[12],pc[13],pc[14],pc[15],pc[16],pc[17],pc[18],pc[19],pc[20],pc[21],pc[22]}), // IO
	.program_count({program_count[0],program_count[1],program_count[2],program_count[3],program_count[4],program_count[5],program_count[6],program_count[7],program_count[8],program_count[9],program_count[10],program_count[11],program_count[12],program_count[13],program_count[14],program_count[15],program_count[16],program_count[17],program_count[18],program_count[19],program_count[20],program_count[21],program_count[22],program_count[23]}), // OUT
	.clk(clk), // IN
	.go(go), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.progack(progack), // IN
	.jabs(jabs), // IN
	.jrel(jrelb), // IN
	.pcwr(pcwr), // IN
	.qs_n_0(qs_n_0), // IN
	.qs_n_1(qs_n_1), // IN
	.qs_n_2(qs_n_2), // IN
	.reset_n(reset_n), // IN
	.srcd({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]})  // IN
);

// PREFETCH.NET (252) - oddjump : join
assign oddjump = pc[0];

// PREFETCH.NET (253) - progadr : join
assign progaddr[0] = pc[1];
assign progaddr[1] = pc[2];
assign progaddr[2] = pc[3];
assign progaddr[3] = pc[4];
assign progaddr[4] = pc[5];
assign progaddr[5] = pc[6];
assign progaddr[6] = pc[7];
assign progaddr[7] = pc[8];
assign progaddr[8] = pc[9];
assign progaddr[9] = pc[10];
assign progaddr[10] = pc[11];
assign progaddr[11] = pc[12];
assign progaddr[12] = pc[13];
assign progaddr[13] = pc[14];
assign progaddr[14] = pc[15];
assign progaddr[15] = pc[16];
assign progaddr[16] = pc[17];
assign progaddr[17] = pc[18];
assign progaddr[18] = pc[19];
assign progaddr[19] = pc[20];
assign progaddr[20] = pc[21];
assign progaddr[21] = pc[22];
endmodule
