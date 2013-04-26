/* verilator lint_off LITENDIAN */
`include "defs.v"

module prefetch
(
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output insrdy,
	output [0:15] instruction,
	output jump_atomic,
	output pabort,
	output progreq,
	output [0:21] progaddr,
	output [0:23] program_count,
	input big_instr,
	input clk,
	input dbgrd,
	input go,
	input [0:31] gpu_data,
	input [0:31] gpu_din,
	input progack,
	input jumprel,
	input jumpabs,
	input pcwr,
	input reset_n,
	input promoldx_n,
	input single_go,
	input single_step,
	input [0:31] srcd,
	input [0:31] srcdp,
	input sys_clk // Generated
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
assign gpu_dout_22_out = qs_0;
assign gpu_dout_22_oe = dbgrd;
assign gpu_dout_23_out = qs_1;
assign gpu_dout_23_oe = dbgrd;
assign gpu_dout_24_out = qs_2;
assign gpu_dout_24_oe = dbgrd;

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
	.q /* OUT */ (jat_2),
	.d /* IN */ (jat_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
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
	.q /* OUT */ (jrt_2),
	.d /* IN */ (jrt_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// PREFETCH.NET (112) - jrt3 : or2
assign jrt_3 = jumprel | jrt_2;

// PREFETCH.NET (113) - jreli : an2
assign jreli = jrt_3 & insrdyss;

// PREFETCH.NET (114) - jrel : fd1q
fd1q jrel_inst
(
	.q /* OUT */ (jrel),
	.d /* IN */ (jreli),
	.cp /* IN */ (clk),
	.sys_clk(sys_clk) // Generated
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
assign q0b_1 = ~(qs_0 & qs_n_1 & qs_n_2 & progack_n & promold_n);

// PREFETCH.NET (140) - q0b2 : nd5
assign q0b_2 = ~(qs_n_0 & qs_1 & qs_n_2 & progack_n & promold);

// PREFETCH.NET (142) - q0b3 : nd5
assign q0b_3 = ~(qs_0 & qs_n_1 & qs_n_2 & progack & promold_n);

// PREFETCH.NET (143) - q0b4 : nd5
assign q0b_4 = ~(qs_n_0 & qs_1 & qs_n_2 & progack & promold);

// PREFETCH.NET (144) - q0b5 : nd4
assign q0b_5 = ~(qs_0 & qs_1 & qs_n_2 & promold_n);

// PREFETCH.NET (145) - q0b6 : nd4
assign q0b_6 = ~(qs_n_0 & qs_n_1 & qs_2 & promold);

// PREFETCH.NET (146) - q0b7 : nd7
assign q0b_7 = ~(q0b_0 & q0b_1 & q0b_2 & q0b_3 & q0b_4 & q0b_5 & q0b_6);

// PREFETCH.NET (147) - qi0 : an2
assign qsi_0 = q0b_7 & force0_n;

// PREFETCH.NET (150) - q1b0 : nd6
assign q1b_0 = ~(qs_n_0 & qs_n_1 & qs_n_2 & progack & oddjump_n & go);

// PREFETCH.NET (152) - q1b1 : nd5
assign q1b_1 = ~(qs_0 & qs_n_1 & qs_n_2 & progack & promold);

// PREFETCH.NET (153) - q1b2 : nd5
assign q1b_2 = ~(qs_n_0 & qs_1 & qs_n_2 & progack_n & promold_n);

// PREFETCH.NET (154) - q1b3 : nd4
assign q1b_3 = ~(qs_0 & qs_1 & qs_n_2 & promold);

// PREFETCH.NET (156) - q1b4 : nd5
assign q1b_4 = ~(qs_0 & qs_n_1 & qs_n_2 & progack & promold_n);

// PREFETCH.NET (157) - q1b5 : nd5
assign q1b_5 = ~(qs_n_0 & qs_1 & qs_n_2 & progack & promold);

// PREFETCH.NET (158) - q1b6 : nd4
assign q1b_6 = ~(qs_0 & qs_1 & qs_n_2 & promold_n);

// PREFETCH.NET (159) - q1b7 : nd4
assign q1b_7 = ~(qs_n_0 & qs_n_1 & qs_2 & promold);

// PREFETCH.NET (160) - q1b8 : nd8
assign q1b_8 = ~(q1b_0 & q1b_1 & q1b_2 & q1b_3 & q1b_4 & q1b_5 & q1b_6 & q1b_7);

// PREFETCH.NET (161) - qi1 : an2
assign qsi_1 = q1b_8 & force0_n;

// PREFETCH.NET (164) - q2b0 : nd5
assign q2b_0 = ~(qs_n_0 & qs_1 & qs_n_2 & progack & promold_n);

// PREFETCH.NET (165) - q2b1 : nd4
assign q2b_1 = ~(qs_n_0 & qs_n_1 & qs_2 & promold_n);

// PREFETCH.NET (166) - q2b2 : nd2
assign q2b_2 = ~(q2b_0 & q2b_1);

// PREFETCH.NET (167) - qi2 : an2
assign qsi_2 = q2b_2 & force0_n;

// PREFETCH.NET (169) - qst[0-2] : fd2qp
fd2q qst_from_0_to_2_inst_0
(
	.q /* OUT */ (qst_0),
	.d /* IN */ (qsi_0),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q qst_from_0_to_2_inst_1
(
	.q /* OUT */ (qst_1),
	.d /* IN */ (qsi_1),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q qst_from_0_to_2_inst_2
(
	.q /* OUT */ (qst_2),
	.d /* IN */ (qsi_2),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
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
	.q /* OUT */ ({pfdata[0],pfdata[1],pfdata[2],pfdata[3],pfdata[4],pfdata[5],pfdata[6],pfdata[7],pfdata[8],pfdata[9],pfdata[10],pfdata[11],pfdata[12],pfdata[13],pfdata[14],pfdata[15],pfdata[16],pfdata[17],pfdata[18],pfdata[19],pfdata[20],pfdata[21],pfdata[22],pfdata[23],pfdata[24],pfdata[25],pfdata[26],pfdata[27],pfdata[28],pfdata[29],pfdata[30],pfdata[31]}),
	.d /* IN */ ({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}),
	.ld /* IN */ (progack),
	.clk /* IN */ (clk),
	.rst_n /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);

// PREFETCH.NET (209) - pf1selt : an3u
assign pf1sel = qs_0 & qs_1 & qs_n_2;

// PREFETCH.NET (211) - inssel : mx4
mx4 inssel_inst_0
(
	.z /* OUT */ (insin[0]),
	.a0 /* IN */ (insdata[0]),
	.a1 /* IN */ (gpu_data[0]),
	.a2 /* IN */ (insdata[0]),
	.a3 /* IN */ (pfdata[0]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_1
(
	.z /* OUT */ (insin[1]),
	.a0 /* IN */ (insdata[1]),
	.a1 /* IN */ (gpu_data[1]),
	.a2 /* IN */ (insdata[1]),
	.a3 /* IN */ (pfdata[1]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_2
(
	.z /* OUT */ (insin[2]),
	.a0 /* IN */ (insdata[2]),
	.a1 /* IN */ (gpu_data[2]),
	.a2 /* IN */ (insdata[2]),
	.a3 /* IN */ (pfdata[2]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_3
(
	.z /* OUT */ (insin[3]),
	.a0 /* IN */ (insdata[3]),
	.a1 /* IN */ (gpu_data[3]),
	.a2 /* IN */ (insdata[3]),
	.a3 /* IN */ (pfdata[3]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_4
(
	.z /* OUT */ (insin[4]),
	.a0 /* IN */ (insdata[4]),
	.a1 /* IN */ (gpu_data[4]),
	.a2 /* IN */ (insdata[4]),
	.a3 /* IN */ (pfdata[4]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_5
(
	.z /* OUT */ (insin[5]),
	.a0 /* IN */ (insdata[5]),
	.a1 /* IN */ (gpu_data[5]),
	.a2 /* IN */ (insdata[5]),
	.a3 /* IN */ (pfdata[5]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_6
(
	.z /* OUT */ (insin[6]),
	.a0 /* IN */ (insdata[6]),
	.a1 /* IN */ (gpu_data[6]),
	.a2 /* IN */ (insdata[6]),
	.a3 /* IN */ (pfdata[6]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_7
(
	.z /* OUT */ (insin[7]),
	.a0 /* IN */ (insdata[7]),
	.a1 /* IN */ (gpu_data[7]),
	.a2 /* IN */ (insdata[7]),
	.a3 /* IN */ (pfdata[7]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_8
(
	.z /* OUT */ (insin[8]),
	.a0 /* IN */ (insdata[8]),
	.a1 /* IN */ (gpu_data[8]),
	.a2 /* IN */ (insdata[8]),
	.a3 /* IN */ (pfdata[8]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_9
(
	.z /* OUT */ (insin[9]),
	.a0 /* IN */ (insdata[9]),
	.a1 /* IN */ (gpu_data[9]),
	.a2 /* IN */ (insdata[9]),
	.a3 /* IN */ (pfdata[9]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_10
(
	.z /* OUT */ (insin[10]),
	.a0 /* IN */ (insdata[10]),
	.a1 /* IN */ (gpu_data[10]),
	.a2 /* IN */ (insdata[10]),
	.a3 /* IN */ (pfdata[10]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_11
(
	.z /* OUT */ (insin[11]),
	.a0 /* IN */ (insdata[11]),
	.a1 /* IN */ (gpu_data[11]),
	.a2 /* IN */ (insdata[11]),
	.a3 /* IN */ (pfdata[11]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_12
(
	.z /* OUT */ (insin[12]),
	.a0 /* IN */ (insdata[12]),
	.a1 /* IN */ (gpu_data[12]),
	.a2 /* IN */ (insdata[12]),
	.a3 /* IN */ (pfdata[12]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_13
(
	.z /* OUT */ (insin[13]),
	.a0 /* IN */ (insdata[13]),
	.a1 /* IN */ (gpu_data[13]),
	.a2 /* IN */ (insdata[13]),
	.a3 /* IN */ (pfdata[13]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_14
(
	.z /* OUT */ (insin[14]),
	.a0 /* IN */ (insdata[14]),
	.a1 /* IN */ (gpu_data[14]),
	.a2 /* IN */ (insdata[14]),
	.a3 /* IN */ (pfdata[14]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_15
(
	.z /* OUT */ (insin[15]),
	.a0 /* IN */ (insdata[15]),
	.a1 /* IN */ (gpu_data[15]),
	.a2 /* IN */ (insdata[15]),
	.a3 /* IN */ (pfdata[15]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_16
(
	.z /* OUT */ (insin[16]),
	.a0 /* IN */ (insdata[16]),
	.a1 /* IN */ (gpu_data[16]),
	.a2 /* IN */ (insdata[16]),
	.a3 /* IN */ (pfdata[16]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_17
(
	.z /* OUT */ (insin[17]),
	.a0 /* IN */ (insdata[17]),
	.a1 /* IN */ (gpu_data[17]),
	.a2 /* IN */ (insdata[17]),
	.a3 /* IN */ (pfdata[17]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_18
(
	.z /* OUT */ (insin[18]),
	.a0 /* IN */ (insdata[18]),
	.a1 /* IN */ (gpu_data[18]),
	.a2 /* IN */ (insdata[18]),
	.a3 /* IN */ (pfdata[18]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_19
(
	.z /* OUT */ (insin[19]),
	.a0 /* IN */ (insdata[19]),
	.a1 /* IN */ (gpu_data[19]),
	.a2 /* IN */ (insdata[19]),
	.a3 /* IN */ (pfdata[19]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_20
(
	.z /* OUT */ (insin[20]),
	.a0 /* IN */ (insdata[20]),
	.a1 /* IN */ (gpu_data[20]),
	.a2 /* IN */ (insdata[20]),
	.a3 /* IN */ (pfdata[20]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_21
(
	.z /* OUT */ (insin[21]),
	.a0 /* IN */ (insdata[21]),
	.a1 /* IN */ (gpu_data[21]),
	.a2 /* IN */ (insdata[21]),
	.a3 /* IN */ (pfdata[21]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_22
(
	.z /* OUT */ (insin[22]),
	.a0 /* IN */ (insdata[22]),
	.a1 /* IN */ (gpu_data[22]),
	.a2 /* IN */ (insdata[22]),
	.a3 /* IN */ (pfdata[22]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_23
(
	.z /* OUT */ (insin[23]),
	.a0 /* IN */ (insdata[23]),
	.a1 /* IN */ (gpu_data[23]),
	.a2 /* IN */ (insdata[23]),
	.a3 /* IN */ (pfdata[23]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_24
(
	.z /* OUT */ (insin[24]),
	.a0 /* IN */ (insdata[24]),
	.a1 /* IN */ (gpu_data[24]),
	.a2 /* IN */ (insdata[24]),
	.a3 /* IN */ (pfdata[24]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_25
(
	.z /* OUT */ (insin[25]),
	.a0 /* IN */ (insdata[25]),
	.a1 /* IN */ (gpu_data[25]),
	.a2 /* IN */ (insdata[25]),
	.a3 /* IN */ (pfdata[25]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_26
(
	.z /* OUT */ (insin[26]),
	.a0 /* IN */ (insdata[26]),
	.a1 /* IN */ (gpu_data[26]),
	.a2 /* IN */ (insdata[26]),
	.a3 /* IN */ (pfdata[26]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_27
(
	.z /* OUT */ (insin[27]),
	.a0 /* IN */ (insdata[27]),
	.a1 /* IN */ (gpu_data[27]),
	.a2 /* IN */ (insdata[27]),
	.a3 /* IN */ (pfdata[27]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_28
(
	.z /* OUT */ (insin[28]),
	.a0 /* IN */ (insdata[28]),
	.a1 /* IN */ (gpu_data[28]),
	.a2 /* IN */ (insdata[28]),
	.a3 /* IN */ (pfdata[28]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_29
(
	.z /* OUT */ (insin[29]),
	.a0 /* IN */ (insdata[29]),
	.a1 /* IN */ (gpu_data[29]),
	.a2 /* IN */ (insdata[29]),
	.a3 /* IN */ (pfdata[29]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_30
(
	.z /* OUT */ (insin[30]),
	.a0 /* IN */ (insdata[30]),
	.a1 /* IN */ (gpu_data[30]),
	.a2 /* IN */ (insdata[30]),
	.a3 /* IN */ (pfdata[30]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);
mx4 inssel_inst_31
(
	.z /* OUT */ (insin[31]),
	.a0 /* IN */ (insdata[31]),
	.a1 /* IN */ (gpu_data[31]),
	.a2 /* IN */ (insdata[31]),
	.a3 /* IN */ (pfdata[31]),
	.s0 /* IN */ (insld),
	.s1 /* IN */ (pf1sel)
);

// PREFETCH.NET (213) - insdata : fd2q
fd2q insdata_inst_0
(
	.q /* OUT */ (insdata[0]),
	.d /* IN */ (insin[0]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_1
(
	.q /* OUT */ (insdata[1]),
	.d /* IN */ (insin[1]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_2
(
	.q /* OUT */ (insdata[2]),
	.d /* IN */ (insin[2]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_3
(
	.q /* OUT */ (insdata[3]),
	.d /* IN */ (insin[3]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_4
(
	.q /* OUT */ (insdata[4]),
	.d /* IN */ (insin[4]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_5
(
	.q /* OUT */ (insdata[5]),
	.d /* IN */ (insin[5]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_6
(
	.q /* OUT */ (insdata[6]),
	.d /* IN */ (insin[6]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_7
(
	.q /* OUT */ (insdata[7]),
	.d /* IN */ (insin[7]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_8
(
	.q /* OUT */ (insdata[8]),
	.d /* IN */ (insin[8]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_9
(
	.q /* OUT */ (insdata[9]),
	.d /* IN */ (insin[9]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_10
(
	.q /* OUT */ (insdata[10]),
	.d /* IN */ (insin[10]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_11
(
	.q /* OUT */ (insdata[11]),
	.d /* IN */ (insin[11]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_12
(
	.q /* OUT */ (insdata[12]),
	.d /* IN */ (insin[12]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_13
(
	.q /* OUT */ (insdata[13]),
	.d /* IN */ (insin[13]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_14
(
	.q /* OUT */ (insdata[14]),
	.d /* IN */ (insin[14]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_15
(
	.q /* OUT */ (insdata[15]),
	.d /* IN */ (insin[15]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_16
(
	.q /* OUT */ (insdata[16]),
	.d /* IN */ (insin[16]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_17
(
	.q /* OUT */ (insdata[17]),
	.d /* IN */ (insin[17]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_18
(
	.q /* OUT */ (insdata[18]),
	.d /* IN */ (insin[18]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_19
(
	.q /* OUT */ (insdata[19]),
	.d /* IN */ (insin[19]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_20
(
	.q /* OUT */ (insdata[20]),
	.d /* IN */ (insin[20]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_21
(
	.q /* OUT */ (insdata[21]),
	.d /* IN */ (insin[21]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_22
(
	.q /* OUT */ (insdata[22]),
	.d /* IN */ (insin[22]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_23
(
	.q /* OUT */ (insdata[23]),
	.d /* IN */ (insin[23]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_24
(
	.q /* OUT */ (insdata[24]),
	.d /* IN */ (insin[24]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_25
(
	.q /* OUT */ (insdata[25]),
	.d /* IN */ (insin[25]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_26
(
	.q /* OUT */ (insdata[26]),
	.d /* IN */ (insin[26]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_27
(
	.q /* OUT */ (insdata[27]),
	.d /* IN */ (insin[27]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_28
(
	.q /* OUT */ (insdata[28]),
	.d /* IN */ (insin[28]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_29
(
	.q /* OUT */ (insdata[29]),
	.d /* IN */ (insin[29]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_30
(
	.q /* OUT */ (insdata[30]),
	.d /* IN */ (insin[30]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
);
fd2q insdata_inst_31
(
	.q /* OUT */ (insdata[31]),
	.d /* IN */ (insin[31]),
	.cp /* IN */ (clk),
	.cd /* IN */ (reset_n),
	.sys_clk(sys_clk) // Generated
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
	.z /* OUT */ (instruction[0]),
	.a0 /* IN */ (inslo[0]),
	.a1 /* IN */ (inshi[0]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_1
(
	.z /* OUT */ (instruction[1]),
	.a0 /* IN */ (inslo[1]),
	.a1 /* IN */ (inshi[1]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_2
(
	.z /* OUT */ (instruction[2]),
	.a0 /* IN */ (inslo[2]),
	.a1 /* IN */ (inshi[2]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_3
(
	.z /* OUT */ (instruction[3]),
	.a0 /* IN */ (inslo[3]),
	.a1 /* IN */ (inshi[3]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_4
(
	.z /* OUT */ (instruction[4]),
	.a0 /* IN */ (inslo[4]),
	.a1 /* IN */ (inshi[4]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_5
(
	.z /* OUT */ (instruction[5]),
	.a0 /* IN */ (inslo[5]),
	.a1 /* IN */ (inshi[5]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_6
(
	.z /* OUT */ (instruction[6]),
	.a0 /* IN */ (inslo[6]),
	.a1 /* IN */ (inshi[6]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_7
(
	.z /* OUT */ (instruction[7]),
	.a0 /* IN */ (inslo[7]),
	.a1 /* IN */ (inshi[7]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_8
(
	.z /* OUT */ (instruction[8]),
	.a0 /* IN */ (inslo[8]),
	.a1 /* IN */ (inshi[8]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_9
(
	.z /* OUT */ (instruction[9]),
	.a0 /* IN */ (inslo[9]),
	.a1 /* IN */ (inshi[9]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_10
(
	.z /* OUT */ (instruction[10]),
	.a0 /* IN */ (inslo[10]),
	.a1 /* IN */ (inshi[10]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_11
(
	.z /* OUT */ (instruction[11]),
	.a0 /* IN */ (inslo[11]),
	.a1 /* IN */ (inshi[11]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_12
(
	.z /* OUT */ (instruction[12]),
	.a0 /* IN */ (inslo[12]),
	.a1 /* IN */ (inshi[12]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_13
(
	.z /* OUT */ (instruction[13]),
	.a0 /* IN */ (inslo[13]),
	.a1 /* IN */ (inshi[13]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_14
(
	.z /* OUT */ (instruction[14]),
	.a0 /* IN */ (inslo[14]),
	.a1 /* IN */ (inshi[14]),
	.s /* IN */ (ins_swap)
);
mx2 instr_inst_15
(
	.z /* OUT */ (instruction[15]),
	.a0 /* IN */ (inslo[15]),
	.a1 /* IN */ (inshi[15]),
	.s /* IN */ (ins_swap)
);

// PREFETCH.NET (236) - prst0 : nd5
assign prst_0 = ~(qs_n_0 & qs_n_1 & qs_n_2 & go & jump_n);

// PREFETCH.NET (237) - prst1t : nd2
assign prst1t = ~(progack & promold_n);

// PREFETCH.NET (238) - prst1 : nd5
assign prst_1 = ~(qs_0 & qs_n_1 & qs_n_2 & prst1t & jump_n);

// PREFETCH.NET (239) - prst2 : nd5
assign prst_2 = ~(qs_n_0 & qs_1 & qs_n_2 & progack_n & jump_n);

// PREFETCH.NET (240) - prst3 : nd5
assign prst_3 = ~(qs_0 & qs_1 & qs_n_2 & promold & jump_n);

// PREFETCH.NET (241) - progreq : nd4p
assign progreq = ~(prst_0 & prst_1 & prst_2 & prst_3);

// PREFETCH.NET (245) - pabort : or2p
assign pabort = jrel | jabs;

// PREFETCH.NET (249) - pc : pc
pc pc_inst
(
	.pc /* OUT */ ({pc[0],pc[1],pc[2],pc[3],pc[4],pc[5],pc[6],pc[7],pc[8],pc[9],pc[10],pc[11],pc[12],pc[13],pc[14],pc[15],pc[16],pc[17],pc[18],pc[19],pc[20],pc[21],pc[22]}),
	.program_count /* OUT */ ({program_count[0],program_count[1],program_count[2],program_count[3],program_count[4],program_count[5],program_count[6],program_count[7],program_count[8],program_count[9],program_count[10],program_count[11],program_count[12],program_count[13],program_count[14],program_count[15],program_count[16],program_count[17],program_count[18],program_count[19],program_count[20],program_count[21],program_count[22],program_count[23]}),
	.clk /* IN */ (clk),
	.go /* IN */ (go),
	.gpu_din /* IN */ ({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}),
	.progack /* IN */ (progack),
	.jabs /* IN */ (jabs),
	.jrel /* IN */ (jrelb),
	.pcwr /* IN */ (pcwr),
	.qs_n_0 /* IN */ (qs_n_0),
	.qs_n_1 /* IN */ (qs_n_1),
	.qs_n_2 /* IN */ (qs_n_2),
	.reset_n /* IN */ (reset_n),
	.srcd /* IN */ ({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}),
	.srcdp /* IN */ ({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}),
	.sys_clk(sys_clk) // Generated
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
/* verilator lint_on LITENDIAN */
