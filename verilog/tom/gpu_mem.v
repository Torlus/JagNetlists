`include "defs.v"

module gpu_mem
(
	inout[0:31] gpu_data;
	output big_instr,
	output big_io,
	output big_pix,
	output bliten,
	output ctrlwr,
	output ctrlwrgo,
	output datack,
	output dbgrd,
	output del_xld,
	output divwr,
	output externalb,
	output flagrd,
	output flagwr,
	output gateack,
	output[0:23] gpu_addr;
	output gpu_memw,
	output hidrd,
	output hidwr,
	output lock,
	output[0:31] mem_data;
	output mtxawr,
	output mtxcwr,
	output pcrd,
	output pcwr,
	output progack,
	output progserv,
	output ram_addr_2,
	output ram_addr_3,
	output ram_addr_4,
	output ram_addr_5,
	output ram_addr_6,
	output ram_addr_7,
	output ram_addr_8,
	output ram_addr_9,
	output ram_addr_10,
	output ram_addr_11,
	output ramen,
	output remrd,
	output statrd,
	input clk,
	input[0:12] cpuaddr;
	input[0:31] cpudata;
	input[0:23] dataddr;
	input[0:31] dstd;
	input dstdgate,
	input datreq,
	input datwe,
	input gatereq,
	input go,
	input[0:31] gpu_din;
	input ioreq,
	input iowr,
	input pabort,
	input[0:21] progaddr;
	input progreq,
	input reset_n,
	input reset_lock
);
wire [0:31] datdata;
wire [0:31] datdata_n;
wire [0:31] wdata;
wire zero;
wire datreq_n;
wire datwe_n;
wire gatereq_n;
wire go_n;
wire ioreq_n;
wire pabort_n;
wire progreq_n;
wire gatereqa;
wire datreqa;
wire progreqa;
wire xprogi_n;
wire ioservt;
wire ioserv;
wire ioserv_n;
wire ioserva_0;
wire ioserva_1;
wire ioserva_2;
wire gateserv;
wire gateserv_n;
wire datservt;
wire datservb_0;
wire datservb_1;
wire datservb_2;
wire datservb_3;
wire datservb_4;
wire datserv;
wire datserv_n;
wire progservt;
wire progserv_n;
wire busactive_n;
wire xpabortset_n;
wire xprog;
wire xpabortt_0;
wire xpabort;
wire xpabortt_1;
wire xpabort_n;
wire xprogset_n;
wire xprogt_0;
wire xprogi;
wire xprog_n;
wire external;
wire xprt;
wire xprt_n;
wire progat_0;
wire progat_1;
wire gpu_memwi;
wire gpu_memwt;
wire gpu_memw_n;
wire dstdld_n;
wire cpudsel;
wire gpuprd_n;
wire gpuden;
wire gpuprd;
wire gpu_addr_0;
wire gpu_addr_1;
wire ram_addr_12;
wire ram_addr_13;
wire ram_addr_14;
wire ram_addr_n_14;
wire gpu_addr_2;
wire gpu_addr_3;
wire gpu_addr_4;
wire gpu_addr_5;
wire gpu_addr_6;
wire gpu_addr_7;
wire gpu_addr_8;
wire gpu_addr_9;
wire gpu_addr_10;
wire gpu_addr_11;
wire gpu_addr_12;
wire gpu_addr_13;
wire gpu_addr_14;
wire gpu_addr_15;
wire gpu_addr_16;
wire gpu_addr_17;
wire gpu_addr_18;
wire gpu_addr_19;
wire gpu_addr_20;
wire gpu_addr_21;
wire gpu_addr_22;
wire gpu_addr_23;
wire gpu_addr_n_2;
wire gpu_addr_n_3;
wire gpu_addr_n_4;
wire gpu_addr_n_5;
wire gpu_addr_n_6;
wire gpu_addr_n_7;
wire gpu_addr_n_8;
wire gpu_addr_n_9;
wire gpu_addr_n_10;
wire gpu_addr_n_11;
wire gpu_addr_n_12;
wire gpu_addr_n_14;
wire locala_13;
wire locala_14;
wire locala_n_15;
wire locala_n_16;
wire locala_n_17;
wire locala_n_18;
wire locala_n_19;
wire locala_20;
wire locala_21;
wire locala_22;
wire locala_23;
wire localat;
wire localaddr_n;
wire localt_0;
wire localt_1;
wire local;
wire localf;
wire extt;
wire idle_n;
wire gpuen;
wire disable_n;
wire rament;
wire gpuireg;
wire gpuictrl;
wire gpu_addrb_2;
wire gpu_addrb_3;
wire gpu_addrb_4;
wire bigwr;
wire big_ioi;
wire big_iot;
wire big_pixi;
wire big_pixt;
wire locki;

// Output buffers
wire externalb_obuf;
wire flagrd_obuf;
wire gpu_addr_b2_obuf;
wire gpu_addr_b3_obuf;
wire gpu_addr_b4_obuf;
wire gpu_addr_b5_obuf;
wire gpu_addr_b6_obuf;
wire gpu_addr_b7_obuf;
wire gpu_addr_b8_obuf;
wire gpu_addr_b9_obuf;
wire gpu_addr_b10_obuf;
wire gpu_addr_b11_obuf;
wire gpu_addr_b12_obuf;
wire gpu_addr_b14_obuf;
wire gpu_memw_obuf;
wire lock_obuf;
wire progserv_obuf;
wire ram_addr_2_obuf;
wire ram_addr_3_obuf;
wire ram_addr_4_obuf;
wire ram_addr_5_obuf;
wire ram_addr_6_obuf;
wire ram_addr_7_obuf;
wire ram_addr_8_obuf;
wire ram_addr_9_obuf;
wire ram_addr_10_obuf;
wire ram_addr_11_obuf;
wire statrd_obuf;


// Output buffers
assign externalb = externalb_obuf;
assign flagrd = flagrd_obuf;
assign gpu_addr[2] = gpu_addr_b2_obuf;
assign gpu_addr[3] = gpu_addr_b3_obuf;
assign gpu_addr[4] = gpu_addr_b4_obuf;
assign gpu_addr[5] = gpu_addr_b5_obuf;
assign gpu_addr[6] = gpu_addr_b6_obuf;
assign gpu_addr[7] = gpu_addr_b7_obuf;
assign gpu_addr[8] = gpu_addr_b8_obuf;
assign gpu_addr[9] = gpu_addr_b9_obuf;
assign gpu_addr[10] = gpu_addr_b10_obuf;
assign gpu_addr[11] = gpu_addr_b11_obuf;
assign gpu_addr[12] = gpu_addr_b12_obuf;
assign gpu_addr[14] = gpu_addr_b14_obuf;
assign gpu_memw = gpu_memw_obuf;
assign lock = lock_obuf;
assign progserv = progserv_obuf;
assign ram_addr_2 = ram_addr_2_obuf;
assign ram_addr_3 = ram_addr_3_obuf;
assign ram_addr_4 = ram_addr_4_obuf;
assign ram_addr_5 = ram_addr_5_obuf;
assign ram_addr_6 = ram_addr_6_obuf;
assign ram_addr_7 = ram_addr_7_obuf;
assign ram_addr_8 = ram_addr_8_obuf;
assign ram_addr_9 = ram_addr_9_obuf;
assign ram_addr_10 = ram_addr_10_obuf;
assign ram_addr_11 = ram_addr_11_obuf;
assign statrd = statrd_obuf;


// GPU_MEM.NET (111) - zero : tie0
assign zero = 1'b0;

// GPU_MEM.NET (113) - datreq\ : iv
assign datreq_n = ~datreq;

// GPU_MEM.NET (114) - datwe\ : iv
assign datwe_n = ~datwe;

// GPU_MEM.NET (115) - gatereq\ : iv
assign gatereq_n = ~gatereq;

// GPU_MEM.NET (116) - go\ : iv
assign go_n = ~go;

// GPU_MEM.NET (117) - ioreq\ : iv
assign ioreq_n = ~ioreq;

// GPU_MEM.NET (118) - pabort\ : ivs
assign pabort_n = ~pabort;

// GPU_MEM.NET (119) - progreq\ : iv
assign progreq_n = ~progreq;

// GPU_MEM.NET (123) - gatereqa : an2
assign gatereqa = gatereq & ioreq_n;

// GPU_MEM.NET (124) - datreqa : an3h
assign datreqa = datreq & gatereq_n & ioreq_n;

// GPU_MEM.NET (125) - progreqa : an5p
an5p progreqa_inst
(
	.q(progreqa), // OUT
	.a_0(progreq), // IN
	.a_1(datreq_n), // IN
	.a_2(gatereq_n), // IN
	.a_3(ioreq_n), // IN
	.a_4(xprogi_n)  // IN
);

// GPU_MEM.NET (131) - ioservt : fd2q
fd2q ioservt_inst
(
	.q(ioservt), // OUT
	.d(ioreq), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (132) - ioserv : niv
assign ioserv = ioservt;

// GPU_MEM.NET (133) - ioserv\ : iv
assign ioserv_n = ~ioservt;

// GPU_MEM.NET (134) - ioserva[0-2] : fd2q
fd2q ioserva_from_0_to_2_inst_0
(
	.q(ioserva_0), // OUT
	.d(ioreq), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ioserva_from_0_to_2_inst_1
(
	.q(ioserva_1), // OUT
	.d(ioreq), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ioserva_from_0_to_2_inst_2
(
	.q(ioserva_2), // OUT
	.d(ioreq), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (135) - gateserv : fd2q
fd2q gateserv_inst
(
	.q(gateserv), // OUT
	.d(gatereqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (136) - gateserv\ : iv
assign gateserv_n = ~gateserv;

// GPU_MEM.NET (137) - datservt : fd2q
fd2q datservt_inst
(
	.q(datservt), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (138) - datservb[0-4] : fd2qp
fd2q datservb_from_0_to_4_inst_0
(
	.q(datservb_0), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q datservb_from_0_to_4_inst_1
(
	.q(datservb_1), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q datservb_from_0_to_4_inst_2
(
	.q(datservb_2), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q datservb_from_0_to_4_inst_3
(
	.q(datservb_3), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q datservb_from_0_to_4_inst_4
(
	.q(datservb_4), // OUT
	.d(datreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (139) - datserv : nivu
assign datserv = datservt;

// GPU_MEM.NET (140) - datserv\ : iv
assign datserv_n = ~datservt;

// GPU_MEM.NET (141) - progservt : fd2q
fd2q progservt_inst
(
	.q(progservt), // OUT
	.d(progreqa), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (142) - progserv : nivm
assign progserv_obuf = progservt;

// GPU_MEM.NET (143) - progserv\ : iv
assign progserv_n = ~progservt;

// GPU_MEM.NET (147) - busactive\ : nr4
assign busactive_n = ~(ioserv | gateserv | datserv | progserv_obuf);

// GPU_MEM.NET (159) - xpabortset : nd3
assign xpabortset_n = ~(xprog & progreq_n & gateserv_n);

// GPU_MEM.NET (160) - xpabortt0 : nd2
assign xpabortt_0 = ~(xpabort & gateserv_n);

// GPU_MEM.NET (161) - xpabortt1 : nd2
assign xpabortt_1 = ~(xpabortset_n & xpabortt_0);

// GPU_MEM.NET (162) - xpabort : fd2q
fd2q xpabort_inst
(
	.q(xpabort), // OUT
	.d(xpabortt_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (163) - xpabort\ : iv
assign xpabort_n = ~xpabort;

// GPU_MEM.NET (176) - xprogset\ : nd3p
assign xprogset_n = ~(progserv_obuf & externalb_obuf & pabort_n);

// GPU_MEM.NET (177) - xprogt0 : nd2
assign xprogt_0 = ~(xprog & gateserv_n);

// GPU_MEM.NET (178) - xprogi : nd2
assign xprogi = ~(xprogt_0 & xprogset_n);

// GPU_MEM.NET (179) - xprogi\ : iv
assign xprogi_n = ~xprogi;

// GPU_MEM.NET (180) - xprog : fd2q
fd2q xprog_inst
(
	.q(xprog), // OUT
	.d(xprogi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_MEM.NET (181) - xprog\ : iv
assign xprog_n = ~xprog;

// GPU_MEM.NET (192) - del_xld : an3m
assign del_xld = datserv & external & datwe_n;

// GPU_MEM.NET (201) - xprt : nd2p
assign xprt = ~(xprog_n & xprogset_n);

// GPU_MEM.NET (202) - xprt\ : iv
assign xprt_n = ~xprt;

// GPU_MEM.NET (203) - progat0 : nd3
assign progat_0 = ~(xprt_n & progserv_obuf & pabort_n);

// GPU_MEM.NET (204) - progat1 : nd3
assign progat_1 = ~(xprt & gateserv & xpabort_n);

// GPU_MEM.NET (205) - progack : nd2u
assign progack = ~(progat_0 & progat_1);

// GPU_MEM.NET (209) - datack : nivu
assign datack = datserv;

// GPU_MEM.NET (213) - gateack : nivu
assign gateack = gateserv;

// GPU_MEM.NET (220) - gpu_memwi : aor2
assign gpu_memwi = (datwe & datreqa) | (iowr & ioreq);

// GPU_MEM.NET (222) - gpu_memwt : fd1q
fd1q gpu_memwt_inst
(
	.q(gpu_memwt), // OUT
	.d(gpu_memwi), // IN
	.cp(clk)  // IN
);

// GPU_MEM.NET (223) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memwt;

// GPU_MEM.NET (224) - gpu_memw : nivh
assign gpu_memw_obuf = gpu_memwt;

// GPU_MEM.NET (238) - dstdld : nr2u
assign dstdld_n = ~(dstdgate | go_n);

// GPU_MEM.NET (239) - datdata : fd1e
fd1e datdata_inst_0
(
	.q(datdata[0]), // OUT
	.qn(datdata_n[0]), // OUT
	.d(dstd[0]), // IN
	.cp(clk), // IN
	.ti(datdata[0]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_1
(
	.q(datdata[1]), // OUT
	.qn(datdata_n[1]), // OUT
	.d(dstd[1]), // IN
	.cp(clk), // IN
	.ti(datdata[1]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_2
(
	.q(datdata[2]), // OUT
	.qn(datdata_n[2]), // OUT
	.d(dstd[2]), // IN
	.cp(clk), // IN
	.ti(datdata[2]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_3
(
	.q(datdata[3]), // OUT
	.qn(datdata_n[3]), // OUT
	.d(dstd[3]), // IN
	.cp(clk), // IN
	.ti(datdata[3]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_4
(
	.q(datdata[4]), // OUT
	.qn(datdata_n[4]), // OUT
	.d(dstd[4]), // IN
	.cp(clk), // IN
	.ti(datdata[4]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_5
(
	.q(datdata[5]), // OUT
	.qn(datdata_n[5]), // OUT
	.d(dstd[5]), // IN
	.cp(clk), // IN
	.ti(datdata[5]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_6
(
	.q(datdata[6]), // OUT
	.qn(datdata_n[6]), // OUT
	.d(dstd[6]), // IN
	.cp(clk), // IN
	.ti(datdata[6]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_7
(
	.q(datdata[7]), // OUT
	.qn(datdata_n[7]), // OUT
	.d(dstd[7]), // IN
	.cp(clk), // IN
	.ti(datdata[7]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_8
(
	.q(datdata[8]), // OUT
	.qn(datdata_n[8]), // OUT
	.d(dstd[8]), // IN
	.cp(clk), // IN
	.ti(datdata[8]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_9
(
	.q(datdata[9]), // OUT
	.qn(datdata_n[9]), // OUT
	.d(dstd[9]), // IN
	.cp(clk), // IN
	.ti(datdata[9]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_10
(
	.q(datdata[10]), // OUT
	.qn(datdata_n[10]), // OUT
	.d(dstd[10]), // IN
	.cp(clk), // IN
	.ti(datdata[10]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_11
(
	.q(datdata[11]), // OUT
	.qn(datdata_n[11]), // OUT
	.d(dstd[11]), // IN
	.cp(clk), // IN
	.ti(datdata[11]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_12
(
	.q(datdata[12]), // OUT
	.qn(datdata_n[12]), // OUT
	.d(dstd[12]), // IN
	.cp(clk), // IN
	.ti(datdata[12]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_13
(
	.q(datdata[13]), // OUT
	.qn(datdata_n[13]), // OUT
	.d(dstd[13]), // IN
	.cp(clk), // IN
	.ti(datdata[13]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_14
(
	.q(datdata[14]), // OUT
	.qn(datdata_n[14]), // OUT
	.d(dstd[14]), // IN
	.cp(clk), // IN
	.ti(datdata[14]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_15
(
	.q(datdata[15]), // OUT
	.qn(datdata_n[15]), // OUT
	.d(dstd[15]), // IN
	.cp(clk), // IN
	.ti(datdata[15]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_16
(
	.q(datdata[16]), // OUT
	.qn(datdata_n[16]), // OUT
	.d(dstd[16]), // IN
	.cp(clk), // IN
	.ti(datdata[16]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_17
(
	.q(datdata[17]), // OUT
	.qn(datdata_n[17]), // OUT
	.d(dstd[17]), // IN
	.cp(clk), // IN
	.ti(datdata[17]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_18
(
	.q(datdata[18]), // OUT
	.qn(datdata_n[18]), // OUT
	.d(dstd[18]), // IN
	.cp(clk), // IN
	.ti(datdata[18]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_19
(
	.q(datdata[19]), // OUT
	.qn(datdata_n[19]), // OUT
	.d(dstd[19]), // IN
	.cp(clk), // IN
	.ti(datdata[19]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_20
(
	.q(datdata[20]), // OUT
	.qn(datdata_n[20]), // OUT
	.d(dstd[20]), // IN
	.cp(clk), // IN
	.ti(datdata[20]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_21
(
	.q(datdata[21]), // OUT
	.qn(datdata_n[21]), // OUT
	.d(dstd[21]), // IN
	.cp(clk), // IN
	.ti(datdata[21]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_22
(
	.q(datdata[22]), // OUT
	.qn(datdata_n[22]), // OUT
	.d(dstd[22]), // IN
	.cp(clk), // IN
	.ti(datdata[22]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_23
(
	.q(datdata[23]), // OUT
	.qn(datdata_n[23]), // OUT
	.d(dstd[23]), // IN
	.cp(clk), // IN
	.ti(datdata[23]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_24
(
	.q(datdata[24]), // OUT
	.qn(datdata_n[24]), // OUT
	.d(dstd[24]), // IN
	.cp(clk), // IN
	.ti(datdata[24]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_25
(
	.q(datdata[25]), // OUT
	.qn(datdata_n[25]), // OUT
	.d(dstd[25]), // IN
	.cp(clk), // IN
	.ti(datdata[25]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_26
(
	.q(datdata[26]), // OUT
	.qn(datdata_n[26]), // OUT
	.d(dstd[26]), // IN
	.cp(clk), // IN
	.ti(datdata[26]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_27
(
	.q(datdata[27]), // OUT
	.qn(datdata_n[27]), // OUT
	.d(dstd[27]), // IN
	.cp(clk), // IN
	.ti(datdata[27]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_28
(
	.q(datdata[28]), // OUT
	.qn(datdata_n[28]), // OUT
	.d(dstd[28]), // IN
	.cp(clk), // IN
	.ti(datdata[28]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_29
(
	.q(datdata[29]), // OUT
	.qn(datdata_n[29]), // OUT
	.d(dstd[29]), // IN
	.cp(clk), // IN
	.ti(datdata[29]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_30
(
	.q(datdata[30]), // OUT
	.qn(datdata_n[30]), // OUT
	.d(dstd[30]), // IN
	.cp(clk), // IN
	.ti(datdata[30]), // IN
	.te(dstdld_n)  // IN
);
fd1e datdata_inst_31
(
	.q(datdata[31]), // OUT
	.qn(datdata_n[31]), // OUT
	.d(dstd[31]), // IN
	.cp(clk), // IN
	.ti(datdata[31]), // IN
	.te(dstdld_n)  // IN
);

// GPU_MEM.NET (241) - dummy : dummy

// GPU_MEM.NET (243) - cpusel : an2u
assign cpudsel = ioserv & gpuprd_n;

// GPU_MEM.NET (244) - gpuden : or4u
assign gpuden = gpu_memw_obuf | gpuprd | busactive_n | externalb_obuf;

// GPU_MEM.NET (246) - wseld : mx2
mx2 wseld_inst_0
(
	.z(wdata[0]), // OUT
	.a0(datdata[0]), // IN
	.a1(cpudata[0]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_1
(
	.z(wdata[1]), // OUT
	.a0(datdata[1]), // IN
	.a1(cpudata[1]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_2
(
	.z(wdata[2]), // OUT
	.a0(datdata[2]), // IN
	.a1(cpudata[2]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_3
(
	.z(wdata[3]), // OUT
	.a0(datdata[3]), // IN
	.a1(cpudata[3]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_4
(
	.z(wdata[4]), // OUT
	.a0(datdata[4]), // IN
	.a1(cpudata[4]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_5
(
	.z(wdata[5]), // OUT
	.a0(datdata[5]), // IN
	.a1(cpudata[5]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_6
(
	.z(wdata[6]), // OUT
	.a0(datdata[6]), // IN
	.a1(cpudata[6]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_7
(
	.z(wdata[7]), // OUT
	.a0(datdata[7]), // IN
	.a1(cpudata[7]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_8
(
	.z(wdata[8]), // OUT
	.a0(datdata[8]), // IN
	.a1(cpudata[8]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_9
(
	.z(wdata[9]), // OUT
	.a0(datdata[9]), // IN
	.a1(cpudata[9]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_10
(
	.z(wdata[10]), // OUT
	.a0(datdata[10]), // IN
	.a1(cpudata[10]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_11
(
	.z(wdata[11]), // OUT
	.a0(datdata[11]), // IN
	.a1(cpudata[11]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_12
(
	.z(wdata[12]), // OUT
	.a0(datdata[12]), // IN
	.a1(cpudata[12]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_13
(
	.z(wdata[13]), // OUT
	.a0(datdata[13]), // IN
	.a1(cpudata[13]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_14
(
	.z(wdata[14]), // OUT
	.a0(datdata[14]), // IN
	.a1(cpudata[14]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_15
(
	.z(wdata[15]), // OUT
	.a0(datdata[15]), // IN
	.a1(cpudata[15]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_16
(
	.z(wdata[16]), // OUT
	.a0(datdata[16]), // IN
	.a1(cpudata[16]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_17
(
	.z(wdata[17]), // OUT
	.a0(datdata[17]), // IN
	.a1(cpudata[17]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_18
(
	.z(wdata[18]), // OUT
	.a0(datdata[18]), // IN
	.a1(cpudata[18]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_19
(
	.z(wdata[19]), // OUT
	.a0(datdata[19]), // IN
	.a1(cpudata[19]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_20
(
	.z(wdata[20]), // OUT
	.a0(datdata[20]), // IN
	.a1(cpudata[20]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_21
(
	.z(wdata[21]), // OUT
	.a0(datdata[21]), // IN
	.a1(cpudata[21]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_22
(
	.z(wdata[22]), // OUT
	.a0(datdata[22]), // IN
	.a1(cpudata[22]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_23
(
	.z(wdata[23]), // OUT
	.a0(datdata[23]), // IN
	.a1(cpudata[23]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_24
(
	.z(wdata[24]), // OUT
	.a0(datdata[24]), // IN
	.a1(cpudata[24]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_25
(
	.z(wdata[25]), // OUT
	.a0(datdata[25]), // IN
	.a1(cpudata[25]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_26
(
	.z(wdata[26]), // OUT
	.a0(datdata[26]), // IN
	.a1(cpudata[26]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_27
(
	.z(wdata[27]), // OUT
	.a0(datdata[27]), // IN
	.a1(cpudata[27]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_28
(
	.z(wdata[28]), // OUT
	.a0(datdata[28]), // IN
	.a1(cpudata[28]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_29
(
	.z(wdata[29]), // OUT
	.a0(datdata[29]), // IN
	.a1(cpudata[29]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_30
(
	.z(wdata[30]), // OUT
	.a0(datdata[30]), // IN
	.a1(cpudata[30]), // IN
	.s(cpudsel)  // IN
);
mx2 wseld_inst_31
(
	.z(wdata[31]), // OUT
	.a0(datdata[31]), // IN
	.a1(cpudata[31]), // IN
	.s(cpudsel)  // IN
);

// GPU_MEM.NET (247) - gpu_data : ts
assign gpu_data[0] = (gpuden) ? wdata[0] : 1'bz;
assign gpu_data[1] = (gpuden) ? wdata[1] : 1'bz;
assign gpu_data[2] = (gpuden) ? wdata[2] : 1'bz;
assign gpu_data[3] = (gpuden) ? wdata[3] : 1'bz;
assign gpu_data[4] = (gpuden) ? wdata[4] : 1'bz;
assign gpu_data[5] = (gpuden) ? wdata[5] : 1'bz;
assign gpu_data[6] = (gpuden) ? wdata[6] : 1'bz;
assign gpu_data[7] = (gpuden) ? wdata[7] : 1'bz;
assign gpu_data[8] = (gpuden) ? wdata[8] : 1'bz;
assign gpu_data[9] = (gpuden) ? wdata[9] : 1'bz;
assign gpu_data[10] = (gpuden) ? wdata[10] : 1'bz;
assign gpu_data[11] = (gpuden) ? wdata[11] : 1'bz;
assign gpu_data[12] = (gpuden) ? wdata[12] : 1'bz;
assign gpu_data[13] = (gpuden) ? wdata[13] : 1'bz;
assign gpu_data[14] = (gpuden) ? wdata[14] : 1'bz;
assign gpu_data[15] = (gpuden) ? wdata[15] : 1'bz;
assign gpu_data[16] = (gpuden) ? wdata[16] : 1'bz;
assign gpu_data[17] = (gpuden) ? wdata[17] : 1'bz;
assign gpu_data[18] = (gpuden) ? wdata[18] : 1'bz;
assign gpu_data[19] = (gpuden) ? wdata[19] : 1'bz;
assign gpu_data[20] = (gpuden) ? wdata[20] : 1'bz;
assign gpu_data[21] = (gpuden) ? wdata[21] : 1'bz;
assign gpu_data[22] = (gpuden) ? wdata[22] : 1'bz;
assign gpu_data[23] = (gpuden) ? wdata[23] : 1'bz;
assign gpu_data[24] = (gpuden) ? wdata[24] : 1'bz;
assign gpu_data[25] = (gpuden) ? wdata[25] : 1'bz;
assign gpu_data[26] = (gpuden) ? wdata[26] : 1'bz;
assign gpu_data[27] = (gpuden) ? wdata[27] : 1'bz;
assign gpu_data[28] = (gpuden) ? wdata[28] : 1'bz;
assign gpu_data[29] = (gpuden) ? wdata[29] : 1'bz;
assign gpu_data[30] = (gpuden) ? wdata[30] : 1'bz;
assign gpu_data[31] = (gpuden) ? wdata[31] : 1'bz;

// GPU_MEM.NET (252) - mem_data : fd1q
fd1q mem_data_inst_0
(
	.q(mem_data[0]), // OUT
	.d(gpu_din[0]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_1
(
	.q(mem_data[1]), // OUT
	.d(gpu_din[1]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_2
(
	.q(mem_data[2]), // OUT
	.d(gpu_din[2]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_3
(
	.q(mem_data[3]), // OUT
	.d(gpu_din[3]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_4
(
	.q(mem_data[4]), // OUT
	.d(gpu_din[4]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_5
(
	.q(mem_data[5]), // OUT
	.d(gpu_din[5]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_6
(
	.q(mem_data[6]), // OUT
	.d(gpu_din[6]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_7
(
	.q(mem_data[7]), // OUT
	.d(gpu_din[7]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_8
(
	.q(mem_data[8]), // OUT
	.d(gpu_din[8]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_9
(
	.q(mem_data[9]), // OUT
	.d(gpu_din[9]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_10
(
	.q(mem_data[10]), // OUT
	.d(gpu_din[10]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_11
(
	.q(mem_data[11]), // OUT
	.d(gpu_din[11]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_12
(
	.q(mem_data[12]), // OUT
	.d(gpu_din[12]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_13
(
	.q(mem_data[13]), // OUT
	.d(gpu_din[13]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_14
(
	.q(mem_data[14]), // OUT
	.d(gpu_din[14]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_15
(
	.q(mem_data[15]), // OUT
	.d(gpu_din[15]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_16
(
	.q(mem_data[16]), // OUT
	.d(gpu_din[16]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_17
(
	.q(mem_data[17]), // OUT
	.d(gpu_din[17]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_18
(
	.q(mem_data[18]), // OUT
	.d(gpu_din[18]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_19
(
	.q(mem_data[19]), // OUT
	.d(gpu_din[19]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_20
(
	.q(mem_data[20]), // OUT
	.d(gpu_din[20]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_21
(
	.q(mem_data[21]), // OUT
	.d(gpu_din[21]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_22
(
	.q(mem_data[22]), // OUT
	.d(gpu_din[22]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_23
(
	.q(mem_data[23]), // OUT
	.d(gpu_din[23]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_24
(
	.q(mem_data[24]), // OUT
	.d(gpu_din[24]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_25
(
	.q(mem_data[25]), // OUT
	.d(gpu_din[25]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_26
(
	.q(mem_data[26]), // OUT
	.d(gpu_din[26]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_27
(
	.q(mem_data[27]), // OUT
	.d(gpu_din[27]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_28
(
	.q(mem_data[28]), // OUT
	.d(gpu_din[28]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_29
(
	.q(mem_data[29]), // OUT
	.d(gpu_din[29]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_30
(
	.q(mem_data[30]), // OUT
	.d(gpu_din[30]), // IN
	.cp(clk)  // IN
);
fd1q mem_data_inst_31
(
	.q(mem_data[31]), // OUT
	.d(gpu_din[31]), // IN
	.cp(clk)  // IN
);

// GPU_MEM.NET (265) - gpu_addr[0-1] : an2
assign gpu_addr_0 = dataddr[0] & datserv;
assign gpu_addr_1 = dataddr[1] & datserv;

// GPU_MEM.NET (266) - amux[2-5] : mx4p
mx4 amux_from_2_to_5_inst_0
(
	.z(ram_addr_2_obuf), // OUT
	.a0(progaddr[0]), // IN
	.a1(dataddr[2]), // IN
	.a2(cpuaddr[0]), // IN
	.a3(zero), // IN
	.s0(datservb_0), // IN
	.s1(ioserva_0)  // IN
);
mx4 amux_from_2_to_5_inst_1
(
	.z(ram_addr_3_obuf), // OUT
	.a0(progaddr[1]), // IN
	.a1(dataddr[3]), // IN
	.a2(cpuaddr[1]), // IN
	.a3(zero), // IN
	.s0(datservb_0), // IN
	.s1(ioserva_0)  // IN
);
mx4 amux_from_2_to_5_inst_2
(
	.z(ram_addr_4_obuf), // OUT
	.a0(progaddr[2]), // IN
	.a1(dataddr[4]), // IN
	.a2(cpuaddr[2]), // IN
	.a3(zero), // IN
	.s0(datservb_0), // IN
	.s1(ioserva_0)  // IN
);
mx4 amux_from_2_to_5_inst_3
(
	.z(ram_addr_5_obuf), // OUT
	.a0(progaddr[3]), // IN
	.a1(dataddr[5]), // IN
	.a2(cpuaddr[3]), // IN
	.a3(zero), // IN
	.s0(datservb_0), // IN
	.s1(ioserva_0)  // IN
);

// GPU_MEM.NET (269) - amux[6-9] : mx4p
mx4 amux_from_6_to_9_inst_0
(
	.z(ram_addr_6_obuf), // OUT
	.a0(progaddr[4]), // IN
	.a1(dataddr[6]), // IN
	.a2(cpuaddr[4]), // IN
	.a3(zero), // IN
	.s0(datservb_1), // IN
	.s1(ioserva_1)  // IN
);
mx4 amux_from_6_to_9_inst_1
(
	.z(ram_addr_7_obuf), // OUT
	.a0(progaddr[5]), // IN
	.a1(dataddr[7]), // IN
	.a2(cpuaddr[5]), // IN
	.a3(zero), // IN
	.s0(datservb_1), // IN
	.s1(ioserva_1)  // IN
);
mx4 amux_from_6_to_9_inst_2
(
	.z(ram_addr_8_obuf), // OUT
	.a0(progaddr[6]), // IN
	.a1(dataddr[8]), // IN
	.a2(cpuaddr[6]), // IN
	.a3(zero), // IN
	.s0(datservb_1), // IN
	.s1(ioserva_1)  // IN
);
mx4 amux_from_6_to_9_inst_3
(
	.z(ram_addr_9_obuf), // OUT
	.a0(progaddr[7]), // IN
	.a1(dataddr[9]), // IN
	.a2(cpuaddr[7]), // IN
	.a3(zero), // IN
	.s0(datservb_1), // IN
	.s1(ioserva_1)  // IN
);

// GPU_MEM.NET (272) - amux[10-14] : mx4p
mx4 amux_from_10_to_14_inst_0
(
	.z(ram_addr_10_obuf), // OUT
	.a0(progaddr[8]), // IN
	.a1(dataddr[10]), // IN
	.a2(cpuaddr[8]), // IN
	.a3(zero), // IN
	.s0(datservb_2), // IN
	.s1(ioserva_2)  // IN
);
mx4 amux_from_10_to_14_inst_1
(
	.z(ram_addr_11_obuf), // OUT
	.a0(progaddr[9]), // IN
	.a1(dataddr[11]), // IN
	.a2(cpuaddr[9]), // IN
	.a3(zero), // IN
	.s0(datservb_2), // IN
	.s1(ioserva_2)  // IN
);
mx4 amux_from_10_to_14_inst_2
(
	.z(ram_addr_12), // OUT
	.a0(progaddr[10]), // IN
	.a1(dataddr[12]), // IN
	.a2(cpuaddr[10]), // IN
	.a3(zero), // IN
	.s0(datservb_2), // IN
	.s1(ioserva_2)  // IN
);
mx4 amux_from_10_to_14_inst_3
(
	.z(ram_addr_13), // OUT
	.a0(progaddr[11]), // IN
	.a1(dataddr[13]), // IN
	.a2(cpuaddr[11]), // IN
	.a3(zero), // IN
	.s0(datservb_2), // IN
	.s1(ioserva_2)  // IN
);
mx4 amux_from_10_to_14_inst_4
(
	.z(ram_addr_14), // OUT
	.a0(progaddr[12]), // IN
	.a1(dataddr[14]), // IN
	.a2(cpuaddr[12]), // IN
	.a3(zero), // IN
	.s0(datservb_2), // IN
	.s1(ioserva_2)  // IN
);

// GPU_MEM.NET (275) - ram_addr\[14] : iv
assign ram_addr_n_14 = ~ram_addr_14;

// GPU_MEM.NET (276) - gpu_addr[2-14] : nivm
assign gpu_addr_2 = ram_addr_2_obuf;
assign gpu_addr_3 = ram_addr_3_obuf;
assign gpu_addr_4 = ram_addr_4_obuf;
assign gpu_addr_5 = ram_addr_5_obuf;
assign gpu_addr_6 = ram_addr_6_obuf;
assign gpu_addr_7 = ram_addr_7_obuf;
assign gpu_addr_8 = ram_addr_8_obuf;
assign gpu_addr_9 = ram_addr_9_obuf;
assign gpu_addr_10 = ram_addr_10_obuf;
assign gpu_addr_11 = ram_addr_11_obuf;
assign gpu_addr_12 = ram_addr_12;
assign gpu_addr_13 = ram_addr_13;
assign gpu_addr_14 = ram_addr_14;

// GPU_MEM.NET (277) - amux[15-23] : mx2
mx2 amux_from_15_to_23_inst_0
(
	.z(gpu_addr_15), // OUT
	.a0(progaddr[13]), // IN
	.a1(dataddr[15]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_1
(
	.z(gpu_addr_16), // OUT
	.a0(progaddr[14]), // IN
	.a1(dataddr[16]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_2
(
	.z(gpu_addr_17), // OUT
	.a0(progaddr[15]), // IN
	.a1(dataddr[17]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_3
(
	.z(gpu_addr_18), // OUT
	.a0(progaddr[16]), // IN
	.a1(dataddr[18]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_4
(
	.z(gpu_addr_19), // OUT
	.a0(progaddr[17]), // IN
	.a1(dataddr[19]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_5
(
	.z(gpu_addr_20), // OUT
	.a0(progaddr[18]), // IN
	.a1(dataddr[20]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_6
(
	.z(gpu_addr_21), // OUT
	.a0(progaddr[19]), // IN
	.a1(dataddr[21]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_7
(
	.z(gpu_addr_22), // OUT
	.a0(progaddr[20]), // IN
	.a1(dataddr[22]), // IN
	.s(datserv)  // IN
);
mx2 amux_from_15_to_23_inst_8
(
	.z(gpu_addr_23), // OUT
	.a0(progaddr[21]), // IN
	.a1(dataddr[23]), // IN
	.s(datserv)  // IN
);

// GPU_MEM.NET (279) - gpu_addr : join
assign gpu_addr[0] = gpu_addr_0;
assign gpu_addr[1] = gpu_addr_1;
assign gpu_addr_b2_obuf = gpu_addr_2;
assign gpu_addr_b3_obuf = gpu_addr_3;
assign gpu_addr_b4_obuf = gpu_addr_4;
assign gpu_addr_b5_obuf = gpu_addr_5;
assign gpu_addr_b6_obuf = gpu_addr_6;
assign gpu_addr_b7_obuf = gpu_addr_7;
assign gpu_addr_b8_obuf = gpu_addr_8;
assign gpu_addr_b9_obuf = gpu_addr_9;
assign gpu_addr_b10_obuf = gpu_addr_10;
assign gpu_addr_b11_obuf = gpu_addr_11;
assign gpu_addr_b12_obuf = gpu_addr_12;
assign gpu_addr[13] = gpu_addr_13;
assign gpu_addr_b14_obuf = gpu_addr_14;
assign gpu_addr[15] = gpu_addr_15;
assign gpu_addr[16] = gpu_addr_16;
assign gpu_addr[17] = gpu_addr_17;
assign gpu_addr[18] = gpu_addr_18;
assign gpu_addr[19] = gpu_addr_19;
assign gpu_addr[20] = gpu_addr_20;
assign gpu_addr[21] = gpu_addr_21;
assign gpu_addr[22] = gpu_addr_22;
assign gpu_addr[23] = gpu_addr_23;

// GPU_MEM.NET (288) - gpua\[2] : iv
assign gpu_addr_n_2 = ~gpu_addr_b2_obuf;

// GPU_MEM.NET (289) - gpua\[3] : ivml
assign gpu_addr_n_3 = ~gpu_addr_b3_obuf;

// GPU_MEM.NET (290) - gpua\[4] : iv
assign gpu_addr_n_4 = ~gpu_addr_b4_obuf;

// GPU_MEM.NET (291) - gpua\[5-6] : ivml
assign gpu_addr_n_5 = ~gpu_addr_b5_obuf;
assign gpu_addr_n_6 = ~gpu_addr_b6_obuf;

// GPU_MEM.NET (292) - gpua\[7-12] : iv
assign gpu_addr_n_7 = ~gpu_addr_b7_obuf;
assign gpu_addr_n_8 = ~gpu_addr_b8_obuf;
assign gpu_addr_n_9 = ~gpu_addr_b9_obuf;
assign gpu_addr_n_10 = ~gpu_addr_b10_obuf;
assign gpu_addr_n_11 = ~gpu_addr_b11_obuf;
assign gpu_addr_n_12 = ~gpu_addr_b12_obuf;

// GPU_MEM.NET (293) - gpua\[14] : iv
assign gpu_addr_n_14 = ~gpu_addr_b14_obuf;

// GPU_MEM.NET (303) - locala[13-14] : mx2
mx2 locala_from_13_to_14_inst_0
(
	.z(locala_13), // OUT
	.a0(progaddr[11]), // IN
	.a1(dataddr[13]), // IN
	.s(datservb_3)  // IN
);
mx2 locala_from_13_to_14_inst_1
(
	.z(locala_14), // OUT
	.a0(progaddr[12]), // IN
	.a1(dataddr[14]), // IN
	.s(datservb_3)  // IN
);

// GPU_MEM.NET (305) - locala[15-19] : mxi2p
mxi2 locala_from_15_to_19_inst_0
(
	.z(locala_n_15), // OUT
	.a0(progaddr[13]), // IN
	.a1(dataddr[15]), // IN
	.s(datservb_3)  // IN
);
mxi2 locala_from_15_to_19_inst_1
(
	.z(locala_n_16), // OUT
	.a0(progaddr[14]), // IN
	.a1(dataddr[16]), // IN
	.s(datservb_3)  // IN
);
mxi2 locala_from_15_to_19_inst_2
(
	.z(locala_n_17), // OUT
	.a0(progaddr[15]), // IN
	.a1(dataddr[17]), // IN
	.s(datservb_3)  // IN
);
mxi2 locala_from_15_to_19_inst_3
(
	.z(locala_n_18), // OUT
	.a0(progaddr[16]), // IN
	.a1(dataddr[18]), // IN
	.s(datservb_3)  // IN
);
mxi2 locala_from_15_to_19_inst_4
(
	.z(locala_n_19), // OUT
	.a0(progaddr[17]), // IN
	.a1(dataddr[19]), // IN
	.s(datservb_3)  // IN
);

// GPU_MEM.NET (307) - locala[20-21] : mx2p
mx2 locala_from_20_to_21_inst_0
(
	.z(locala_20), // OUT
	.a0(progaddr[18]), // IN
	.a1(dataddr[20]), // IN
	.s(datservb_3)  // IN
);
mx2 locala_from_20_to_21_inst_1
(
	.z(locala_21), // OUT
	.a0(progaddr[19]), // IN
	.a1(dataddr[21]), // IN
	.s(datservb_3)  // IN
);

// GPU_MEM.NET (309) - locala[22-23] : mx2p
mx2 locala_from_22_to_23_inst_0
(
	.z(locala_22), // OUT
	.a0(progaddr[20]), // IN
	.a1(dataddr[22]), // IN
	.s(datservb_4)  // IN
);
mx2 locala_from_22_to_23_inst_1
(
	.z(locala_23), // OUT
	.a0(progaddr[21]), // IN
	.a1(dataddr[23]), // IN
	.s(datservb_4)  // IN
);

// GPU_MEM.NET (311) - localat : or2p
assign localat = locala_13 | locala_14;

// GPU_MEM.NET (312) - localaddr\ : nd10
nd10 localaddr_n_inst
(
	.q(localaddr_n), // OUT
	.a_0(locala_n_15), // IN
	.a_1(locala_n_16), // IN
	.a_2(locala_n_17), // IN
	.a_3(locala_n_18), // IN
	.a_4(locala_n_19), // IN
	.a_5(locala_20), // IN
	.a_6(locala_21), // IN
	.a_7(locala_22), // IN
	.a_8(locala_23), // IN
	.a_9(localat)  // IN
);

// GPU_MEM.NET (315) - localt0 : nd2
assign localt_0 = ~(progserv_n & datserv_n);

// GPU_MEM.NET (316) - localt1 : nd11
nd11 localt1_inst
(
	.q(localt_1), // OUT
	.a_0(locala_20), // IN
	.a_1(locala_21), // IN
	.a_2(locala_22), // IN
	.a_3(locala_23), // IN
	.a_4(locala_n_15), // IN
	.a_5(locala_n_16), // IN
	.a_6(locala_n_17), // IN
	.a_7(locala_n_18), // IN
	.a_8(locala_n_19), // IN
	.a_9(localt_0), // IN
	.a_10(localat)  // IN
);

// GPU_MEM.NET (318) - local : nd2p
assign local = ~(ioserv_n & localt_1);

// GPU_MEM.NET (319) - localf : nd2
assign localf = ~(ioserv_n & localt_1);

// GPU_MEM.NET (323) - extt : nd2
assign extt = ~(datserv_n & progserv_n);

// GPU_MEM.NET (324) - external : an2
assign external = localaddr_n & extt;

// GPU_MEM.NET (325) - externalb : nivm
assign externalb_obuf = external;

// GPU_MEM.NET (336) - idle\ : or3
assign idle_n = ioserv | datserv | progserv_obuf;

// GPU_MEM.NET (337) - gpuen : an8
assign gpuen = gpu_addr_n_9 & gpu_addr_n_10 & gpu_addr_n_11 & gpu_addr_n_12 & gpu_addr_13 & gpu_addr_n_14 & local & idle_n;

// GPU_MEM.NET (339) - bliten : an10
an10 bliten_inst
(
	.q(bliten), // OUT
	.a_0(gpu_addr_n_8), // IN
	.a_1(gpu_addr_9), // IN
	.a_2(gpu_addr_n_10), // IN
	.a_3(gpu_addr_n_11), // IN
	.a_4(gpu_addr_n_12), // IN
	.a_5(gpu_addr_13), // IN
	.a_6(gpu_addr_n_14), // IN
	.a_7(local), // IN
	.a_8(idle_n), // IN
	.a_9(disable_n)  // IN
);

// GPU_MEM.NET (342) - rament : an3
assign rament = ram_addr_12 & ram_addr_13 & ram_addr_n_14;

// GPU_MEM.NET (343) - ramen : an4p
assign ramen = rament & localf & idle_n & disable_n;

// GPU_MEM.NET (352) - gpuprd\ : nd4
assign gpuprd_n = ~(gpuen & gpu_addr_n_8 & go_n & gpu_memw_n);

// GPU_MEM.NET (354) - gpuprd : iv
assign gpuprd = ~gpuprd_n;

// GPU_MEM.NET (359) - disable\ : nd2
assign disable_n = ~(ioserv & lock_obuf);

// GPU_MEM.NET (360) - gpuireg : an4m
assign gpuireg = gpuen & gpu_addr_n_7 & gpu_addr_b8_obuf & disable_n;

// GPU_MEM.NET (365) - gpuictrl : an3
assign gpuictrl = gpuen & gpu_addr_n_7 & gpu_addr_b8_obuf;

// GPU_MEM.NET (370) - gpu_addrb[2] : nivm
assign gpu_addrb_2 = gpu_addr_b2_obuf;

// GPU_MEM.NET (371) - gpu_addrb[3] : nivh
assign gpu_addrb_3 = gpu_addr_b3_obuf;

// GPU_MEM.NET (372) - gpu_addrb[4] : nivm
assign gpu_addrb_4 = gpu_addr_b4_obuf;

// GPU_MEM.NET (374) - flagwr : an7h
assign flagwr = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (376) - mtxcwr : an7m
assign mtxcwr = gpu_addrb_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (378) - mtxawr : an7m
assign mtxawr = gpu_addr_n_2 & gpu_addrb_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (380) - bigwr : an7
assign bigwr = gpu_addrb_2 & gpu_addrb_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (382) - pcwr : an7
assign pcwr = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (384) - ctrlwrgo : an7
assign ctrlwrgo = gpu_addrb_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuictrl & gpu_memw_obuf;

// GPU_MEM.NET (387) - ctrlwr : an7m
assign ctrlwr = gpu_addrb_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (390) - hidwr : an7
assign hidwr = gpu_addr_n_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (393) - divwr : an7
assign divwr = gpu_addrb_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_obuf;

// GPU_MEM.NET (398) - flagrd : an7h
assign flagrd_obuf = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addr_n_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// GPU_MEM.NET (400) - pcrd : an7u
assign pcrd = gpu_addr_n_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// GPU_MEM.NET (402) - statrd : an7h
assign statrd_obuf = gpu_addrb_2 & gpu_addr_n_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// GPU_MEM.NET (405) - hidrd : an7u
assign hidrd = gpu_addr_n_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// GPU_MEM.NET (408) - remrd : an7u
assign remrd = gpu_addrb_2 & gpu_addrb_3 & gpu_addrb_4 & gpu_addr_n_5 & gpu_addr_n_6 & gpuireg & gpu_memw_n;

// GPU_MEM.NET (411) - dbgrd : or2_h
assign dbgrd = flagrd_obuf | statrd_obuf;

// GPU_MEM.NET (415) - big_ioi : mx2
mx2 big_ioi_inst
(
	.z(big_ioi), // OUT
	.a0(big_iot), // IN
	.a1(gpu_din[0]), // IN
	.s(bigwr)  // IN
);

// GPU_MEM.NET (416) - big_iot : fd4q
fd4q big_iot_inst
(
	.q(big_iot), // OUT
	.d(big_ioi), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// GPU_MEM.NET (417) - big_io : nivu
assign big_io = big_iot;

// GPU_MEM.NET (419) - big_pixi : mx2
mx2 big_pixi_inst
(
	.z(big_pixi), // OUT
	.a0(big_pixt), // IN
	.a1(gpu_din[1]), // IN
	.s(bigwr)  // IN
);

// GPU_MEM.NET (420) - big_pixt : fd4q
fd4q big_pixt_inst
(
	.q(big_pixt), // OUT
	.d(big_pixi), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// GPU_MEM.NET (421) - big_pix : nivm
assign big_pix = big_pixt;

// GPU_MEM.NET (423) - big_instr : fdsyncr
fdsyncr big_instr_inst
(
	.q(big_instr), // IO
	.d(gpu_din[2]), // IN
	.ld(bigwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// GPU_MEM.NET (429) - locki : mx4
mx4 locki_inst
(
	.z(locki), // OUT
	.a0(reset_lock), // IN
	.a1(lock_obuf), // IN
	.a2(lock_obuf), // IN
	.a3(zero), // IN
	.s0(bigwr), // IN
	.s1(reset_n)  // IN
);

// GPU_MEM.NET (431) - lock : fd1q
fd1q lock_inst
(
	.q(lock_obuf), // OUT
	.d(locki), // IN
	.cp(clk)  // IN
);
endmodule
