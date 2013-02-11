`include "defs.v"

module gateway
(
	inout[0:23] address;
	inout wdata_0,
	inout wdata_1,
	inout wdata_2,
	inout wdata_3,
	inout wdata_4,
	inout wdata_5,
	inout wdata_6,
	inout wdata_7,
	inout wdata_8,
	inout wdata_9,
	inout wdata_10,
	inout wdata_11,
	inout wdata_12,
	inout wdata_13,
	inout wdata_14,
	inout wdata_15,
	inout wdata_16,
	inout wdata_17,
	inout wdata_18,
	inout wdata_19,
	inout wdata_20,
	inout wdata_21,
	inout wdata_22,
	inout wdata_23,
	inout wdata_24,
	inout wdata_25,
	inout wdata_26,
	inout wdata_27,
	inout wdata_28,
	inout wdata_29,
	inout wdata_30,
	inout wdata_31,
	inout wdata_32,
	inout wdata_33,
	inout wdata_34,
	inout wdata_35,
	inout wdata_36,
	inout wdata_37,
	inout wdata_38,
	inout wdata_39,
	inout wdata_40,
	inout wdata_41,
	inout wdata_42,
	inout wdata_43,
	inout wdata_44,
	inout wdata_45,
	inout wdata_46,
	inout wdata_47,
	inout wdata_48,
	inout wdata_49,
	inout wdata_50,
	inout wdata_51,
	inout wdata_52,
	inout wdata_53,
	inout wdata_54,
	inout wdata_55,
	inout wdata_56,
	inout wdata_57,
	inout wdata_58,
	inout wdata_59,
	inout wdata_60,
	inout wdata_61,
	inout wdata_62,
	inout wdata_63,
	inout[0:31] gpu_data;
	inout justify,
	inout mreq,
	inout read,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
	inout gpu_dout_15,
	output dma_breq,
	output gate_active,
	output gatereq,
	output gpu_breq,
	output[0:31] load_data;
	output xld_ready,
	input ack,
	input bus_hog,
	input clk_0,
	input clk_2,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input external,
	input flagrd,
	input flagwr,
	input gateack,
	input[0:23] gpu_addr;
	input gpu_back,
	input[0:31] gpu_din;
	input gpu_memw,
	input hidrd,
	input hidwr,
	input msize_0,
	input msize_1,
	input progserv,
	input reset_n
);
wire [0:23] out_addr;
wire [0:23] cpu_addr;
wire [0:23] dat_addr;
wire [0:31] hidin;
wire [0:31] hidatai;
wire [0:31] hirdata;
wire [0:31] lddatai;
wire [0:31] lodatai;
wire [0:31] lodin;
wire [0:31] prog_data;
wire ack_n;
wire external_n;
wire gateack_n;
wire gpu_memw_n;
wire progserv_n;
wire one;
wire dmaen;
wire dmaen_n;
wire prot_1;
wire active;
wire gpu_ack;
wire cycgo;
wire prot_2;
wire idle;
wire cycstart;
wire progoi;
wire progown;
wire progownp;
wire cycpend;
wire progown_n;
wire readp;
wire readi;
wire reada;
wire reada_n;
wire msizelat;
wire msized_0;
wire msized_1;
wire cyptset;
wire cypt_0;
wire cypt_1;
wire activet_0;
wire activet_1;
wire gpu_ack_n;
wire activet_2;
wire activet_3;
wire activet;
wire pawset_n;
wire pawt_0;
wire packwt;
wire pawt_1;
wire pdatld;
wire greqt_0;
wire greqt_2;
wire greqt_1;
wire dawset_n;
wire dawt_0;
wire dackwt;
wire dawt_1;
wire ddatld;
wire busack;
wire tri_en;
wire cald;
wire dald;
wire msizet_0;
wire msizet_1;
wire widt_0;
wire widt_1;
wire widt_2;
wire widt_3;
wire pdatstrb;
wire lodwr;
wire lodstrbt;
wire lodstrb;
wire maskwt_n;
wire maskbt_n;
wire maskld;
wire maskb_n;
wire maskw_n;
wire lodm_8;
wire lodm_9;
wire lodm_10;
wire lodm_11;
wire lodm_12;
wire lodm_13;
wire lodm_14;
wire lodm_15;
wire lodm_16;
wire lodm_17;
wire lodm_18;
wire lodm_19;
wire lodm_20;
wire lodm_21;
wire lodm_22;
wire lodm_23;
wire lodm_24;
wire lodm_25;
wire lodm_26;
wire lodm_27;
wire lodm_28;
wire lodm_29;
wire lodm_30;
wire lodm_31;
wire ddatldb;
wire hidwrb;
wire wdlat;
wire wden;
wire wdenb_0;
wire wdenb_1;
wire ext_reqt_0;
wire ext_reqt_1;
wire ext_reqt_2;
wire ext_reqt_3;
wire ext_reqt_4;
wire ext_reqt_5;
wire ext_req_n;
wire gpu_bt_0;
wire gpu_bt_1;
wire gpu_bt_2;

// Output buffers
wire dma_breq_obuf;
wire gpu_breq_obuf;
wire load_data_b0_obuf;
wire load_data_b1_obuf;
wire load_data_b2_obuf;
wire load_data_b3_obuf;
wire load_data_b4_obuf;
wire load_data_b5_obuf;
wire load_data_b6_obuf;
wire load_data_b7_obuf;
wire load_data_b8_obuf;
wire load_data_b9_obuf;
wire load_data_b10_obuf;
wire load_data_b11_obuf;
wire load_data_b12_obuf;
wire load_data_b13_obuf;
wire load_data_b14_obuf;
wire load_data_b15_obuf;
wire load_data_b16_obuf;
wire load_data_b17_obuf;
wire load_data_b18_obuf;
wire load_data_b19_obuf;
wire load_data_b20_obuf;
wire load_data_b21_obuf;
wire load_data_b22_obuf;
wire load_data_b23_obuf;
wire load_data_b24_obuf;
wire load_data_b25_obuf;
wire load_data_b26_obuf;
wire load_data_b27_obuf;
wire load_data_b28_obuf;
wire load_data_b29_obuf;
wire load_data_b30_obuf;
wire load_data_b31_obuf;


// Output buffers
assign dma_breq = dma_breq_obuf;
assign gpu_breq = gpu_breq_obuf;
assign load_data[0] = load_data_b0_obuf;
assign load_data[1] = load_data_b1_obuf;
assign load_data[2] = load_data_b2_obuf;
assign load_data[3] = load_data_b3_obuf;
assign load_data[4] = load_data_b4_obuf;
assign load_data[5] = load_data_b5_obuf;
assign load_data[6] = load_data_b6_obuf;
assign load_data[7] = load_data_b7_obuf;
assign load_data[8] = load_data_b8_obuf;
assign load_data[9] = load_data_b9_obuf;
assign load_data[10] = load_data_b10_obuf;
assign load_data[11] = load_data_b11_obuf;
assign load_data[12] = load_data_b12_obuf;
assign load_data[13] = load_data_b13_obuf;
assign load_data[14] = load_data_b14_obuf;
assign load_data[15] = load_data_b15_obuf;
assign load_data[16] = load_data_b16_obuf;
assign load_data[17] = load_data_b17_obuf;
assign load_data[18] = load_data_b18_obuf;
assign load_data[19] = load_data_b19_obuf;
assign load_data[20] = load_data_b20_obuf;
assign load_data[21] = load_data_b21_obuf;
assign load_data[22] = load_data_b22_obuf;
assign load_data[23] = load_data_b23_obuf;
assign load_data[24] = load_data_b24_obuf;
assign load_data[25] = load_data_b25_obuf;
assign load_data[26] = load_data_b26_obuf;
assign load_data[27] = load_data_b27_obuf;
assign load_data[28] = load_data_b28_obuf;
assign load_data[29] = load_data_b29_obuf;
assign load_data[30] = load_data_b30_obuf;
assign load_data[31] = load_data_b31_obuf;


// GATEWAY.NET (56) - lodatai : join
assign lodatai[0] = data_0;
assign lodatai[1] = data_1;
assign lodatai[2] = data_2;
assign lodatai[3] = data_3;
assign lodatai[4] = data_4;
assign lodatai[5] = data_5;
assign lodatai[6] = data_6;
assign lodatai[7] = data_7;
assign lodatai[8] = data_8;
assign lodatai[9] = data_9;
assign lodatai[10] = data_10;
assign lodatai[11] = data_11;
assign lodatai[12] = data_12;
assign lodatai[13] = data_13;
assign lodatai[14] = data_14;
assign lodatai[15] = data_15;
assign lodatai[16] = data_16;
assign lodatai[17] = data_17;
assign lodatai[18] = data_18;
assign lodatai[19] = data_19;
assign lodatai[20] = data_20;
assign lodatai[21] = data_21;
assign lodatai[22] = data_22;
assign lodatai[23] = data_23;
assign lodatai[24] = data_24;
assign lodatai[25] = data_25;
assign lodatai[26] = data_26;
assign lodatai[27] = data_27;
assign lodatai[28] = data_28;
assign lodatai[29] = data_29;
assign lodatai[30] = data_30;
assign lodatai[31] = data_31;

// GATEWAY.NET (57) - hidatai : join
assign hidatai[0] = data_32;
assign hidatai[1] = data_33;
assign hidatai[2] = data_34;
assign hidatai[3] = data_35;
assign hidatai[4] = data_36;
assign hidatai[5] = data_37;
assign hidatai[6] = data_38;
assign hidatai[7] = data_39;
assign hidatai[8] = data_40;
assign hidatai[9] = data_41;
assign hidatai[10] = data_42;
assign hidatai[11] = data_43;
assign hidatai[12] = data_44;
assign hidatai[13] = data_45;
assign hidatai[14] = data_46;
assign hidatai[15] = data_47;
assign hidatai[16] = data_48;
assign hidatai[17] = data_49;
assign hidatai[18] = data_50;
assign hidatai[19] = data_51;
assign hidatai[20] = data_52;
assign hidatai[21] = data_53;
assign hidatai[22] = data_54;
assign hidatai[23] = data_55;
assign hidatai[24] = data_56;
assign hidatai[25] = data_57;
assign hidatai[26] = data_58;
assign hidatai[27] = data_59;
assign hidatai[28] = data_60;
assign hidatai[29] = data_61;
assign hidatai[30] = data_62;
assign hidatai[31] = data_63;

// GATEWAY.NET (59) - ack\ : iv
assign ack_n = ~ack;

// GATEWAY.NET (60) - external\ : iv
assign external_n = ~external;

// GATEWAY.NET (61) - gateack\ : iv
assign gateack_n = ~gateack;

// GATEWAY.NET (62) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memw;

// GATEWAY.NET (63) - progserv\ : iv
assign progserv_n = ~progserv;

// GATEWAY.NET (65) - one : tie1
assign one = 1'b1;

// GATEWAY.NET (70) - dmaen : fdsyncr
fdsyncr dmaen_inst
(
	.q(dmaen), // IO
	.d(gpu_din[15]), // IN
	.ld(flagwr), // IN
	.clk(clk_0), // IN
	.rst_n(reset_n)  // IN
);

// GATEWAY.NET (72) - dmaen\ : iv
assign dmaen_n = ~dmaen;

// GATEWAY.NET (73) - dmaenr : ts
assign gpu_dout_15 = (flagrd) ? dmaen : 1'bz;

// GATEWAY.NET (82) - prot1 : nd3
assign prot_1 = ~(active & gpu_ack & cycgo);

// GATEWAY.NET (83) - prot2 : nd2
assign prot_2 = ~(idle & external);

// GATEWAY.NET (84) - cycstart : nd2
assign cycstart = ~(prot_1 & prot_2);

// GATEWAY.NET (88) - progoi : mx4
mx4 progoi_inst
(
	.z(progoi), // OUT
	.a0(progown), // IN
	.a1(progown), // IN
	.a2(progserv), // IN
	.a3(progownp), // IN
	.s0(cycpend), // IN
	.s1(cycstart)  // IN
);

// GATEWAY.NET (90) - progown : fd2qu
fd2q progown_inst
(
	.q(progown), // OUT
	.d(progoi), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (91) - progown\ : iv
assign progown_n = ~progown;

// GATEWAY.NET (95) - progownp : fdsync
fdsync progownp_inst
(
	.q(progownp), // IO
	.d(progserv), // IN
	.ld(external), // IN
	.clk(clk_0)  // IN
);

// GATEWAY.NET (99) - readp : fdsync
fdsync readp_inst
(
	.q(readp), // IO
	.d(gpu_memw_n), // IN
	.ld(external), // IN
	.clk(clk_0)  // IN
);

// GATEWAY.NET (101) - readi : mx4
mx4 readi_inst
(
	.z(readi), // OUT
	.a0(reada), // IN
	.a1(reada), // IN
	.a2(gpu_memw_n), // IN
	.a3(readp), // IN
	.s0(cycpend), // IN
	.s1(cycstart)  // IN
);

// GATEWAY.NET (103) - reada : fd1q
fd1q reada_inst
(
	.q(reada), // OUT
	.d(readi), // IN
	.cp(clk_0)  // IN
);

// GATEWAY.NET (104) - reada\ : iv
assign reada_n = ~reada;

// GATEWAY.NET (108) - msizelat : an3
assign msizelat = external & progserv_n & clk_2;

// GATEWAY.NET (109) - msized[0-1] : ldp1q
ldp1q msized_from_0_to_1_inst_0
(
	.q(msized_0), // OUT
	.d(msize_0), // IN
	.g(msizelat)  // IN
);
ldp1q msized_from_0_to_1_inst_1
(
	.q(msized_1), // OUT
	.d(msize_1), // IN
	.g(msizelat)  // IN
);

// GATEWAY.NET (114) - cyptset : nr3
assign cyptset = ~(external_n | idle | cycstart);

// GATEWAY.NET (115) - cypt0 : nr2
assign cypt_0 = ~(cyptset | cycpend);

// GATEWAY.NET (116) - cypt1 : nr2
assign cypt_1 = ~(cypt_0 | cycstart);

// GATEWAY.NET (117) - cycpend : fd2q
fd2q cycpend_inst
(
	.q(cycpend), // OUT
	.d(cypt_1), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (119) - cycgo : or2
assign cycgo = external | cycpend;

// GATEWAY.NET (123) - activet0 : nd2
assign activet_0 = ~(idle & external);

// GATEWAY.NET (124) - activet1 : nd2
assign activet_1 = ~(active & gpu_ack_n);

// GATEWAY.NET (125) - activet2 : nd3
assign activet_2 = ~(active & gpu_ack & cycgo);

// GATEWAY.NET (126) - activet3 : nd3
assign activet_3 = ~(activet_0 & activet_1 & activet_2);

// GATEWAY.NET (127) - activet : fd2q
fd2q activet_inst
(
	.q(activet), // OUT
	.d(activet_3), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (128) - active : nivm
assign active = activet;

// GATEWAY.NET (129) - idle : iv
assign idle = ~active;

// GATEWAY.NET (136) - gate_active : niv
assign gate_active = active;

// GATEWAY.NET (142) - pawset\ : nd3
assign pawset_n = ~(active & progown & gpu_ack);

// GATEWAY.NET (143) - pawt0 : nd2
assign pawt_0 = ~(packwt & ack_n);

// GATEWAY.NET (144) - pawt1 : nd2
assign pawt_1 = ~(pawset_n & pawt_0);

// GATEWAY.NET (145) - packwt : fd2q
fd2q packwt_inst
(
	.q(packwt), // OUT
	.d(pawt_1), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (146) - pdatld : an2
assign pdatld = packwt & ack;

// GATEWAY.NET (153) - greqt0 : nr2
assign greqt_0 = ~(pdatld | greqt_2);

// GATEWAY.NET (154) - greqt1 : nr2
assign greqt_1 = ~(gateack | greqt_0);

// GATEWAY.NET (155) - greqt2 : fd2q
fd2q greqt2_inst
(
	.q(greqt_2), // OUT
	.d(greqt_1), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (156) - gatereq : oan1
assign gatereq = (pdatld | greqt_2) & gateack_n;

// GATEWAY.NET (160) - dawset\ : nd4
assign dawset_n = ~(active & progown_n & gpu_ack & reada);

// GATEWAY.NET (161) - dawt0 : nd2
assign dawt_0 = ~(dackwt & ack_n);

// GATEWAY.NET (162) - dawt1 : nd2
assign dawt_1 = ~(dawset_n & dawt_0);

// GATEWAY.NET (163) - dackwt : fd2q
fd2q dackwt_inst
(
	.q(dackwt), // OUT
	.d(dawt_1), // IN
	.cp(clk_0), // IN
	.cd(reset_n)  // IN
);

// GATEWAY.NET (164) - ddatld : an2
assign ddatld = dackwt & ack;

// GATEWAY.NET (168) - xld_ready : fd1qu
fd1q xld_ready_inst
(
	.q(xld_ready), // OUT
	.d(ddatld), // IN
	.cp(clk_0)  // IN
);

// GATEWAY.NET (172) - busack : oan1
assign busack = (gpu_breq_obuf | dma_breq_obuf) & gpu_back;

// GATEWAY.NET (176) - tri_en : nivu
assign tri_en = gpu_back;

// GATEWAY.NET (180) - gpu_ack\ : nd2
assign gpu_ack_n = ~(ack & busack);

// GATEWAY.NET (181) - gpu_ack : iv
assign gpu_ack = ~gpu_ack_n;

// GATEWAY.NET (185) - cald : an3u
assign cald = external & progserv & clk_2;

// GATEWAY.NET (186) - cpu_addr : ldp1q
ldp1q cpu_addr_inst_0
(
	.q(cpu_addr[0]), // OUT
	.d(gpu_addr[0]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_1
(
	.q(cpu_addr[1]), // OUT
	.d(gpu_addr[1]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_2
(
	.q(cpu_addr[2]), // OUT
	.d(gpu_addr[2]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_3
(
	.q(cpu_addr[3]), // OUT
	.d(gpu_addr[3]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_4
(
	.q(cpu_addr[4]), // OUT
	.d(gpu_addr[4]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_5
(
	.q(cpu_addr[5]), // OUT
	.d(gpu_addr[5]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_6
(
	.q(cpu_addr[6]), // OUT
	.d(gpu_addr[6]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_7
(
	.q(cpu_addr[7]), // OUT
	.d(gpu_addr[7]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_8
(
	.q(cpu_addr[8]), // OUT
	.d(gpu_addr[8]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_9
(
	.q(cpu_addr[9]), // OUT
	.d(gpu_addr[9]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_10
(
	.q(cpu_addr[10]), // OUT
	.d(gpu_addr[10]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_11
(
	.q(cpu_addr[11]), // OUT
	.d(gpu_addr[11]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_12
(
	.q(cpu_addr[12]), // OUT
	.d(gpu_addr[12]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_13
(
	.q(cpu_addr[13]), // OUT
	.d(gpu_addr[13]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_14
(
	.q(cpu_addr[14]), // OUT
	.d(gpu_addr[14]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_15
(
	.q(cpu_addr[15]), // OUT
	.d(gpu_addr[15]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_16
(
	.q(cpu_addr[16]), // OUT
	.d(gpu_addr[16]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_17
(
	.q(cpu_addr[17]), // OUT
	.d(gpu_addr[17]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_18
(
	.q(cpu_addr[18]), // OUT
	.d(gpu_addr[18]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_19
(
	.q(cpu_addr[19]), // OUT
	.d(gpu_addr[19]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_20
(
	.q(cpu_addr[20]), // OUT
	.d(gpu_addr[20]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_21
(
	.q(cpu_addr[21]), // OUT
	.d(gpu_addr[21]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_22
(
	.q(cpu_addr[22]), // OUT
	.d(gpu_addr[22]), // IN
	.g(cald)  // IN
);
ldp1q cpu_addr_inst_23
(
	.q(cpu_addr[23]), // OUT
	.d(gpu_addr[23]), // IN
	.g(cald)  // IN
);

// GATEWAY.NET (187) - dald : an3u
assign dald = external & progserv_n & clk_2;

// GATEWAY.NET (188) - dat_addr : ldp1q
ldp1q dat_addr_inst_0
(
	.q(dat_addr[0]), // OUT
	.d(gpu_addr[0]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_1
(
	.q(dat_addr[1]), // OUT
	.d(gpu_addr[1]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_2
(
	.q(dat_addr[2]), // OUT
	.d(gpu_addr[2]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_3
(
	.q(dat_addr[3]), // OUT
	.d(gpu_addr[3]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_4
(
	.q(dat_addr[4]), // OUT
	.d(gpu_addr[4]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_5
(
	.q(dat_addr[5]), // OUT
	.d(gpu_addr[5]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_6
(
	.q(dat_addr[6]), // OUT
	.d(gpu_addr[6]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_7
(
	.q(dat_addr[7]), // OUT
	.d(gpu_addr[7]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_8
(
	.q(dat_addr[8]), // OUT
	.d(gpu_addr[8]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_9
(
	.q(dat_addr[9]), // OUT
	.d(gpu_addr[9]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_10
(
	.q(dat_addr[10]), // OUT
	.d(gpu_addr[10]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_11
(
	.q(dat_addr[11]), // OUT
	.d(gpu_addr[11]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_12
(
	.q(dat_addr[12]), // OUT
	.d(gpu_addr[12]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_13
(
	.q(dat_addr[13]), // OUT
	.d(gpu_addr[13]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_14
(
	.q(dat_addr[14]), // OUT
	.d(gpu_addr[14]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_15
(
	.q(dat_addr[15]), // OUT
	.d(gpu_addr[15]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_16
(
	.q(dat_addr[16]), // OUT
	.d(gpu_addr[16]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_17
(
	.q(dat_addr[17]), // OUT
	.d(gpu_addr[17]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_18
(
	.q(dat_addr[18]), // OUT
	.d(gpu_addr[18]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_19
(
	.q(dat_addr[19]), // OUT
	.d(gpu_addr[19]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_20
(
	.q(dat_addr[20]), // OUT
	.d(gpu_addr[20]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_21
(
	.q(dat_addr[21]), // OUT
	.d(gpu_addr[21]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_22
(
	.q(dat_addr[22]), // OUT
	.d(gpu_addr[22]), // IN
	.g(dald)  // IN
);
ldp1q dat_addr_inst_23
(
	.q(dat_addr[23]), // OUT
	.d(gpu_addr[23]), // IN
	.g(dald)  // IN
);

// GATEWAY.NET (192) - out_addr : mx2
mx2 out_addr_inst_0
(
	.z(out_addr[0]), // OUT
	.a0(dat_addr[0]), // IN
	.a1(cpu_addr[0]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_1
(
	.z(out_addr[1]), // OUT
	.a0(dat_addr[1]), // IN
	.a1(cpu_addr[1]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_2
(
	.z(out_addr[2]), // OUT
	.a0(dat_addr[2]), // IN
	.a1(cpu_addr[2]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_3
(
	.z(out_addr[3]), // OUT
	.a0(dat_addr[3]), // IN
	.a1(cpu_addr[3]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_4
(
	.z(out_addr[4]), // OUT
	.a0(dat_addr[4]), // IN
	.a1(cpu_addr[4]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_5
(
	.z(out_addr[5]), // OUT
	.a0(dat_addr[5]), // IN
	.a1(cpu_addr[5]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_6
(
	.z(out_addr[6]), // OUT
	.a0(dat_addr[6]), // IN
	.a1(cpu_addr[6]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_7
(
	.z(out_addr[7]), // OUT
	.a0(dat_addr[7]), // IN
	.a1(cpu_addr[7]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_8
(
	.z(out_addr[8]), // OUT
	.a0(dat_addr[8]), // IN
	.a1(cpu_addr[8]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_9
(
	.z(out_addr[9]), // OUT
	.a0(dat_addr[9]), // IN
	.a1(cpu_addr[9]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_10
(
	.z(out_addr[10]), // OUT
	.a0(dat_addr[10]), // IN
	.a1(cpu_addr[10]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_11
(
	.z(out_addr[11]), // OUT
	.a0(dat_addr[11]), // IN
	.a1(cpu_addr[11]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_12
(
	.z(out_addr[12]), // OUT
	.a0(dat_addr[12]), // IN
	.a1(cpu_addr[12]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_13
(
	.z(out_addr[13]), // OUT
	.a0(dat_addr[13]), // IN
	.a1(cpu_addr[13]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_14
(
	.z(out_addr[14]), // OUT
	.a0(dat_addr[14]), // IN
	.a1(cpu_addr[14]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_15
(
	.z(out_addr[15]), // OUT
	.a0(dat_addr[15]), // IN
	.a1(cpu_addr[15]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_16
(
	.z(out_addr[16]), // OUT
	.a0(dat_addr[16]), // IN
	.a1(cpu_addr[16]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_17
(
	.z(out_addr[17]), // OUT
	.a0(dat_addr[17]), // IN
	.a1(cpu_addr[17]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_18
(
	.z(out_addr[18]), // OUT
	.a0(dat_addr[18]), // IN
	.a1(cpu_addr[18]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_19
(
	.z(out_addr[19]), // OUT
	.a0(dat_addr[19]), // IN
	.a1(cpu_addr[19]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_20
(
	.z(out_addr[20]), // OUT
	.a0(dat_addr[20]), // IN
	.a1(cpu_addr[20]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_21
(
	.z(out_addr[21]), // OUT
	.a0(dat_addr[21]), // IN
	.a1(cpu_addr[21]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_22
(
	.z(out_addr[22]), // OUT
	.a0(dat_addr[22]), // IN
	.a1(cpu_addr[22]), // IN
	.s(progown)  // IN
);
mx2 out_addr_inst_23
(
	.z(out_addr[23]), // OUT
	.a0(dat_addr[23]), // IN
	.a1(cpu_addr[23]), // IN
	.s(progown)  // IN
);

// GATEWAY.NET (193) - address : tsm
assign address[0] = (tri_en) ? out_addr[0] : 1'bz;
assign address[1] = (tri_en) ? out_addr[1] : 1'bz;
assign address[2] = (tri_en) ? out_addr[2] : 1'bz;
assign address[3] = (tri_en) ? out_addr[3] : 1'bz;
assign address[4] = (tri_en) ? out_addr[4] : 1'bz;
assign address[5] = (tri_en) ? out_addr[5] : 1'bz;
assign address[6] = (tri_en) ? out_addr[6] : 1'bz;
assign address[7] = (tri_en) ? out_addr[7] : 1'bz;
assign address[8] = (tri_en) ? out_addr[8] : 1'bz;
assign address[9] = (tri_en) ? out_addr[9] : 1'bz;
assign address[10] = (tri_en) ? out_addr[10] : 1'bz;
assign address[11] = (tri_en) ? out_addr[11] : 1'bz;
assign address[12] = (tri_en) ? out_addr[12] : 1'bz;
assign address[13] = (tri_en) ? out_addr[13] : 1'bz;
assign address[14] = (tri_en) ? out_addr[14] : 1'bz;
assign address[15] = (tri_en) ? out_addr[15] : 1'bz;
assign address[16] = (tri_en) ? out_addr[16] : 1'bz;
assign address[17] = (tri_en) ? out_addr[17] : 1'bz;
assign address[18] = (tri_en) ? out_addr[18] : 1'bz;
assign address[19] = (tri_en) ? out_addr[19] : 1'bz;
assign address[20] = (tri_en) ? out_addr[20] : 1'bz;
assign address[21] = (tri_en) ? out_addr[21] : 1'bz;
assign address[22] = (tri_en) ? out_addr[22] : 1'bz;
assign address[23] = (tri_en) ? out_addr[23] : 1'bz;

// GATEWAY.NET (197) - mreq : tsm
assign mreq = (tri_en) ? active : 1'bz;

// GATEWAY.NET (198) - read : ts
assign read = (tri_en) ? reada : 1'bz;

// GATEWAY.NET (199) - justify : ts
assign justify = (tri_en) ? one : 1'bz;

// GATEWAY.NET (204) - msizet[0] : an2
assign msizet_0 = msized_0 & progown_n;

// GATEWAY.NET (205) - msizet[1] : or2
assign msizet_1 = msized_1 | progown;

// GATEWAY.NET (206) - widt : d24h
d24h widt_inst
(
	.z0(widt_0), // OUT
	.z1(widt_1), // OUT
	.z2(widt_2), // OUT
	.z3(widt_3), // OUT
	.a0(msizet_0), // IN
	.a1(msizet_1)  // IN
);

// GATEWAY.NET (207) - width[0-3] : ts
assign width_0 = (tri_en) ? widt_0 : 1'bz;
assign width_1 = (tri_en) ? widt_1 : 1'bz;
assign width_2 = (tri_en) ? widt_2 : 1'bz;
assign width_3 = (tri_en) ? widt_3 : 1'bz;

// GATEWAY.NET (211) - pdatstrb : an2u
assign pdatstrb = pdatld & clk_2;

// GATEWAY.NET (212) - prog_data : ldp1q
ldp1q prog_data_inst_0
(
	.q(prog_data[0]), // OUT
	.d(lodatai[0]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_1
(
	.q(prog_data[1]), // OUT
	.d(lodatai[1]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_2
(
	.q(prog_data[2]), // OUT
	.d(lodatai[2]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_3
(
	.q(prog_data[3]), // OUT
	.d(lodatai[3]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_4
(
	.q(prog_data[4]), // OUT
	.d(lodatai[4]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_5
(
	.q(prog_data[5]), // OUT
	.d(lodatai[5]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_6
(
	.q(prog_data[6]), // OUT
	.d(lodatai[6]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_7
(
	.q(prog_data[7]), // OUT
	.d(lodatai[7]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_8
(
	.q(prog_data[8]), // OUT
	.d(lodatai[8]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_9
(
	.q(prog_data[9]), // OUT
	.d(lodatai[9]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_10
(
	.q(prog_data[10]), // OUT
	.d(lodatai[10]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_11
(
	.q(prog_data[11]), // OUT
	.d(lodatai[11]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_12
(
	.q(prog_data[12]), // OUT
	.d(lodatai[12]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_13
(
	.q(prog_data[13]), // OUT
	.d(lodatai[13]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_14
(
	.q(prog_data[14]), // OUT
	.d(lodatai[14]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_15
(
	.q(prog_data[15]), // OUT
	.d(lodatai[15]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_16
(
	.q(prog_data[16]), // OUT
	.d(lodatai[16]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_17
(
	.q(prog_data[17]), // OUT
	.d(lodatai[17]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_18
(
	.q(prog_data[18]), // OUT
	.d(lodatai[18]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_19
(
	.q(prog_data[19]), // OUT
	.d(lodatai[19]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_20
(
	.q(prog_data[20]), // OUT
	.d(lodatai[20]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_21
(
	.q(prog_data[21]), // OUT
	.d(lodatai[21]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_22
(
	.q(prog_data[22]), // OUT
	.d(lodatai[22]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_23
(
	.q(prog_data[23]), // OUT
	.d(lodatai[23]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_24
(
	.q(prog_data[24]), // OUT
	.d(lodatai[24]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_25
(
	.q(prog_data[25]), // OUT
	.d(lodatai[25]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_26
(
	.q(prog_data[26]), // OUT
	.d(lodatai[26]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_27
(
	.q(prog_data[27]), // OUT
	.d(lodatai[27]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_28
(
	.q(prog_data[28]), // OUT
	.d(lodatai[28]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_29
(
	.q(prog_data[29]), // OUT
	.d(lodatai[29]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_30
(
	.q(prog_data[30]), // OUT
	.d(lodatai[30]), // IN
	.g(pdatstrb)  // IN
);
ldp1q prog_data_inst_31
(
	.q(prog_data[31]), // OUT
	.d(lodatai[31]), // IN
	.g(pdatstrb)  // IN
);

// GATEWAY.NET (216) - lodrd : ts
assign gpu_data[0] = (gateack) ? prog_data[0] : 1'bz;
assign gpu_data[1] = (gateack) ? prog_data[1] : 1'bz;
assign gpu_data[2] = (gateack) ? prog_data[2] : 1'bz;
assign gpu_data[3] = (gateack) ? prog_data[3] : 1'bz;
assign gpu_data[4] = (gateack) ? prog_data[4] : 1'bz;
assign gpu_data[5] = (gateack) ? prog_data[5] : 1'bz;
assign gpu_data[6] = (gateack) ? prog_data[6] : 1'bz;
assign gpu_data[7] = (gateack) ? prog_data[7] : 1'bz;
assign gpu_data[8] = (gateack) ? prog_data[8] : 1'bz;
assign gpu_data[9] = (gateack) ? prog_data[9] : 1'bz;
assign gpu_data[10] = (gateack) ? prog_data[10] : 1'bz;
assign gpu_data[11] = (gateack) ? prog_data[11] : 1'bz;
assign gpu_data[12] = (gateack) ? prog_data[12] : 1'bz;
assign gpu_data[13] = (gateack) ? prog_data[13] : 1'bz;
assign gpu_data[14] = (gateack) ? prog_data[14] : 1'bz;
assign gpu_data[15] = (gateack) ? prog_data[15] : 1'bz;
assign gpu_data[16] = (gateack) ? prog_data[16] : 1'bz;
assign gpu_data[17] = (gateack) ? prog_data[17] : 1'bz;
assign gpu_data[18] = (gateack) ? prog_data[18] : 1'bz;
assign gpu_data[19] = (gateack) ? prog_data[19] : 1'bz;
assign gpu_data[20] = (gateack) ? prog_data[20] : 1'bz;
assign gpu_data[21] = (gateack) ? prog_data[21] : 1'bz;
assign gpu_data[22] = (gateack) ? prog_data[22] : 1'bz;
assign gpu_data[23] = (gateack) ? prog_data[23] : 1'bz;
assign gpu_data[24] = (gateack) ? prog_data[24] : 1'bz;
assign gpu_data[25] = (gateack) ? prog_data[25] : 1'bz;
assign gpu_data[26] = (gateack) ? prog_data[26] : 1'bz;
assign gpu_data[27] = (gateack) ? prog_data[27] : 1'bz;
assign gpu_data[28] = (gateack) ? prog_data[28] : 1'bz;
assign gpu_data[29] = (gateack) ? prog_data[29] : 1'bz;
assign gpu_data[30] = (gateack) ? prog_data[30] : 1'bz;
assign gpu_data[31] = (gateack) ? prog_data[31] : 1'bz;

// GATEWAY.NET (220) - lodwr : an3u
assign lodwr = external & progserv_n & gpu_memw;

// GATEWAY.NET (221) - lodstrbt : oan1
assign lodstrbt = (lodwr | ddatld) & clk_2;

// GATEWAY.NET (222) - lodstrb : nivu
assign lodstrb = lodstrbt;

// GATEWAY.NET (230) - maskwt : join
assign maskwt_n = msizet_1;

// GATEWAY.NET (231) - maskbt : or2
assign maskbt_n = msizet_0 | msizet_1;

// GATEWAY.NET (233) - maskld : an2
assign maskld = active & gpu_ack;

// GATEWAY.NET (234) - maskb : fdsync
fdsync maskb_inst
(
	.q(maskb_n), // IO
	.d(maskbt_n), // IN
	.ld(maskld), // IN
	.clk(clk_0)  // IN
);

// GATEWAY.NET (235) - maskw : fdsynch
fdsynch maskw_inst
(
	.q(maskw_n), // IO
	.d(maskwt_n), // IN
	.ld(maskld), // IN
	.clk(clk_0)  // IN
);

// GATEWAY.NET (237) - lodm[8-15] : an2
assign lodm_8 = maskb_n & data_8;
assign lodm_9 = maskb_n & data_9;
assign lodm_10 = maskb_n & data_10;
assign lodm_11 = maskb_n & data_11;
assign lodm_12 = maskb_n & data_12;
assign lodm_13 = maskb_n & data_13;
assign lodm_14 = maskb_n & data_14;
assign lodm_15 = maskb_n & data_15;

// GATEWAY.NET (238) - lodm[16-31] : an2
assign lodm_16 = maskw_n & data_16;
assign lodm_17 = maskw_n & data_17;
assign lodm_18 = maskw_n & data_18;
assign lodm_19 = maskw_n & data_19;
assign lodm_20 = maskw_n & data_20;
assign lodm_21 = maskw_n & data_21;
assign lodm_22 = maskw_n & data_22;
assign lodm_23 = maskw_n & data_23;
assign lodm_24 = maskw_n & data_24;
assign lodm_25 = maskw_n & data_25;
assign lodm_26 = maskw_n & data_26;
assign lodm_27 = maskw_n & data_27;
assign lodm_28 = maskw_n & data_28;
assign lodm_29 = maskw_n & data_29;
assign lodm_30 = maskw_n & data_30;
assign lodm_31 = maskw_n & data_31;

// GATEWAY.NET (240) - lddatai : join
assign lddatai[0] = data_0;
assign lddatai[1] = data_1;
assign lddatai[2] = data_2;
assign lddatai[3] = data_3;
assign lddatai[4] = data_4;
assign lddatai[5] = data_5;
assign lddatai[6] = data_6;
assign lddatai[7] = data_7;
assign lddatai[8] = lodm_8;
assign lddatai[9] = lodm_9;
assign lddatai[10] = lodm_10;
assign lddatai[11] = lodm_11;
assign lddatai[12] = lodm_12;
assign lddatai[13] = lodm_13;
assign lddatai[14] = lodm_14;
assign lddatai[15] = lodm_15;
assign lddatai[16] = lodm_16;
assign lddatai[17] = lodm_17;
assign lddatai[18] = lodm_18;
assign lddatai[19] = lodm_19;
assign lddatai[20] = lodm_20;
assign lddatai[21] = lodm_21;
assign lddatai[22] = lodm_22;
assign lddatai[23] = lodm_23;
assign lddatai[24] = lodm_24;
assign lddatai[25] = lodm_25;
assign lddatai[26] = lodm_26;
assign lddatai[27] = lodm_27;
assign lddatai[28] = lodm_28;
assign lddatai[29] = lodm_29;
assign lddatai[30] = lodm_30;
assign lddatai[31] = lodm_31;

// GATEWAY.NET (241) - lodin : mx2
mx2 lodin_inst_0
(
	.z(lodin[0]), // OUT
	.a0(lddatai[0]), // IN
	.a1(gpu_din[0]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_1
(
	.z(lodin[1]), // OUT
	.a0(lddatai[1]), // IN
	.a1(gpu_din[1]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_2
(
	.z(lodin[2]), // OUT
	.a0(lddatai[2]), // IN
	.a1(gpu_din[2]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_3
(
	.z(lodin[3]), // OUT
	.a0(lddatai[3]), // IN
	.a1(gpu_din[3]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_4
(
	.z(lodin[4]), // OUT
	.a0(lddatai[4]), // IN
	.a1(gpu_din[4]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_5
(
	.z(lodin[5]), // OUT
	.a0(lddatai[5]), // IN
	.a1(gpu_din[5]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_6
(
	.z(lodin[6]), // OUT
	.a0(lddatai[6]), // IN
	.a1(gpu_din[6]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_7
(
	.z(lodin[7]), // OUT
	.a0(lddatai[7]), // IN
	.a1(gpu_din[7]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_8
(
	.z(lodin[8]), // OUT
	.a0(lddatai[8]), // IN
	.a1(gpu_din[8]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_9
(
	.z(lodin[9]), // OUT
	.a0(lddatai[9]), // IN
	.a1(gpu_din[9]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_10
(
	.z(lodin[10]), // OUT
	.a0(lddatai[10]), // IN
	.a1(gpu_din[10]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_11
(
	.z(lodin[11]), // OUT
	.a0(lddatai[11]), // IN
	.a1(gpu_din[11]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_12
(
	.z(lodin[12]), // OUT
	.a0(lddatai[12]), // IN
	.a1(gpu_din[12]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_13
(
	.z(lodin[13]), // OUT
	.a0(lddatai[13]), // IN
	.a1(gpu_din[13]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_14
(
	.z(lodin[14]), // OUT
	.a0(lddatai[14]), // IN
	.a1(gpu_din[14]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_15
(
	.z(lodin[15]), // OUT
	.a0(lddatai[15]), // IN
	.a1(gpu_din[15]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_16
(
	.z(lodin[16]), // OUT
	.a0(lddatai[16]), // IN
	.a1(gpu_din[16]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_17
(
	.z(lodin[17]), // OUT
	.a0(lddatai[17]), // IN
	.a1(gpu_din[17]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_18
(
	.z(lodin[18]), // OUT
	.a0(lddatai[18]), // IN
	.a1(gpu_din[18]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_19
(
	.z(lodin[19]), // OUT
	.a0(lddatai[19]), // IN
	.a1(gpu_din[19]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_20
(
	.z(lodin[20]), // OUT
	.a0(lddatai[20]), // IN
	.a1(gpu_din[20]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_21
(
	.z(lodin[21]), // OUT
	.a0(lddatai[21]), // IN
	.a1(gpu_din[21]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_22
(
	.z(lodin[22]), // OUT
	.a0(lddatai[22]), // IN
	.a1(gpu_din[22]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_23
(
	.z(lodin[23]), // OUT
	.a0(lddatai[23]), // IN
	.a1(gpu_din[23]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_24
(
	.z(lodin[24]), // OUT
	.a0(lddatai[24]), // IN
	.a1(gpu_din[24]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_25
(
	.z(lodin[25]), // OUT
	.a0(lddatai[25]), // IN
	.a1(gpu_din[25]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_26
(
	.z(lodin[26]), // OUT
	.a0(lddatai[26]), // IN
	.a1(gpu_din[26]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_27
(
	.z(lodin[27]), // OUT
	.a0(lddatai[27]), // IN
	.a1(gpu_din[27]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_28
(
	.z(lodin[28]), // OUT
	.a0(lddatai[28]), // IN
	.a1(gpu_din[28]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_29
(
	.z(lodin[29]), // OUT
	.a0(lddatai[29]), // IN
	.a1(gpu_din[29]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_30
(
	.z(lodin[30]), // OUT
	.a0(lddatai[30]), // IN
	.a1(gpu_din[30]), // IN
	.s(lodwr)  // IN
);
mx2 lodin_inst_31
(
	.z(lodin[31]), // OUT
	.a0(lddatai[31]), // IN
	.a1(gpu_din[31]), // IN
	.s(lodwr)  // IN
);

// GATEWAY.NET (242) - loaddata : ldp1q
ldp1q loaddata_inst_0
(
	.q(load_data_b0_obuf), // OUT
	.d(lodin[0]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_1
(
	.q(load_data_b1_obuf), // OUT
	.d(lodin[1]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_2
(
	.q(load_data_b2_obuf), // OUT
	.d(lodin[2]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_3
(
	.q(load_data_b3_obuf), // OUT
	.d(lodin[3]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_4
(
	.q(load_data_b4_obuf), // OUT
	.d(lodin[4]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_5
(
	.q(load_data_b5_obuf), // OUT
	.d(lodin[5]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_6
(
	.q(load_data_b6_obuf), // OUT
	.d(lodin[6]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_7
(
	.q(load_data_b7_obuf), // OUT
	.d(lodin[7]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_8
(
	.q(load_data_b8_obuf), // OUT
	.d(lodin[8]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_9
(
	.q(load_data_b9_obuf), // OUT
	.d(lodin[9]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_10
(
	.q(load_data_b10_obuf), // OUT
	.d(lodin[10]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_11
(
	.q(load_data_b11_obuf), // OUT
	.d(lodin[11]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_12
(
	.q(load_data_b12_obuf), // OUT
	.d(lodin[12]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_13
(
	.q(load_data_b13_obuf), // OUT
	.d(lodin[13]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_14
(
	.q(load_data_b14_obuf), // OUT
	.d(lodin[14]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_15
(
	.q(load_data_b15_obuf), // OUT
	.d(lodin[15]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_16
(
	.q(load_data_b16_obuf), // OUT
	.d(lodin[16]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_17
(
	.q(load_data_b17_obuf), // OUT
	.d(lodin[17]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_18
(
	.q(load_data_b18_obuf), // OUT
	.d(lodin[18]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_19
(
	.q(load_data_b19_obuf), // OUT
	.d(lodin[19]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_20
(
	.q(load_data_b20_obuf), // OUT
	.d(lodin[20]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_21
(
	.q(load_data_b21_obuf), // OUT
	.d(lodin[21]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_22
(
	.q(load_data_b22_obuf), // OUT
	.d(lodin[22]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_23
(
	.q(load_data_b23_obuf), // OUT
	.d(lodin[23]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_24
(
	.q(load_data_b24_obuf), // OUT
	.d(lodin[24]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_25
(
	.q(load_data_b25_obuf), // OUT
	.d(lodin[25]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_26
(
	.q(load_data_b26_obuf), // OUT
	.d(lodin[26]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_27
(
	.q(load_data_b27_obuf), // OUT
	.d(lodin[27]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_28
(
	.q(load_data_b28_obuf), // OUT
	.d(lodin[28]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_29
(
	.q(load_data_b29_obuf), // OUT
	.d(lodin[29]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_30
(
	.q(load_data_b30_obuf), // OUT
	.d(lodin[30]), // IN
	.g(lodstrb)  // IN
);
ldp1q loaddata_inst_31
(
	.q(load_data_b31_obuf), // OUT
	.d(lodin[31]), // IN
	.g(lodstrb)  // IN
);

// GATEWAY.NET (246) - ddatldb : nivu
assign ddatldb = ddatld;

// GATEWAY.NET (247) - hidwrb : nivu
assign hidwrb = hidwr;

// GATEWAY.NET (248) - hidin : mx4
mx4 hidin_inst_0
(
	.z(hidin[0]), // OUT
	.a0(hirdata[0]), // IN
	.a1(gpu_din[0]), // IN
	.a2(hidatai[0]), // IN
	.a3(hidatai[0]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_1
(
	.z(hidin[1]), // OUT
	.a0(hirdata[1]), // IN
	.a1(gpu_din[1]), // IN
	.a2(hidatai[1]), // IN
	.a3(hidatai[1]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_2
(
	.z(hidin[2]), // OUT
	.a0(hirdata[2]), // IN
	.a1(gpu_din[2]), // IN
	.a2(hidatai[2]), // IN
	.a3(hidatai[2]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_3
(
	.z(hidin[3]), // OUT
	.a0(hirdata[3]), // IN
	.a1(gpu_din[3]), // IN
	.a2(hidatai[3]), // IN
	.a3(hidatai[3]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_4
(
	.z(hidin[4]), // OUT
	.a0(hirdata[4]), // IN
	.a1(gpu_din[4]), // IN
	.a2(hidatai[4]), // IN
	.a3(hidatai[4]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_5
(
	.z(hidin[5]), // OUT
	.a0(hirdata[5]), // IN
	.a1(gpu_din[5]), // IN
	.a2(hidatai[5]), // IN
	.a3(hidatai[5]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_6
(
	.z(hidin[6]), // OUT
	.a0(hirdata[6]), // IN
	.a1(gpu_din[6]), // IN
	.a2(hidatai[6]), // IN
	.a3(hidatai[6]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_7
(
	.z(hidin[7]), // OUT
	.a0(hirdata[7]), // IN
	.a1(gpu_din[7]), // IN
	.a2(hidatai[7]), // IN
	.a3(hidatai[7]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_8
(
	.z(hidin[8]), // OUT
	.a0(hirdata[8]), // IN
	.a1(gpu_din[8]), // IN
	.a2(hidatai[8]), // IN
	.a3(hidatai[8]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_9
(
	.z(hidin[9]), // OUT
	.a0(hirdata[9]), // IN
	.a1(gpu_din[9]), // IN
	.a2(hidatai[9]), // IN
	.a3(hidatai[9]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_10
(
	.z(hidin[10]), // OUT
	.a0(hirdata[10]), // IN
	.a1(gpu_din[10]), // IN
	.a2(hidatai[10]), // IN
	.a3(hidatai[10]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_11
(
	.z(hidin[11]), // OUT
	.a0(hirdata[11]), // IN
	.a1(gpu_din[11]), // IN
	.a2(hidatai[11]), // IN
	.a3(hidatai[11]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_12
(
	.z(hidin[12]), // OUT
	.a0(hirdata[12]), // IN
	.a1(gpu_din[12]), // IN
	.a2(hidatai[12]), // IN
	.a3(hidatai[12]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_13
(
	.z(hidin[13]), // OUT
	.a0(hirdata[13]), // IN
	.a1(gpu_din[13]), // IN
	.a2(hidatai[13]), // IN
	.a3(hidatai[13]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_14
(
	.z(hidin[14]), // OUT
	.a0(hirdata[14]), // IN
	.a1(gpu_din[14]), // IN
	.a2(hidatai[14]), // IN
	.a3(hidatai[14]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_15
(
	.z(hidin[15]), // OUT
	.a0(hirdata[15]), // IN
	.a1(gpu_din[15]), // IN
	.a2(hidatai[15]), // IN
	.a3(hidatai[15]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_16
(
	.z(hidin[16]), // OUT
	.a0(hirdata[16]), // IN
	.a1(gpu_din[16]), // IN
	.a2(hidatai[16]), // IN
	.a3(hidatai[16]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_17
(
	.z(hidin[17]), // OUT
	.a0(hirdata[17]), // IN
	.a1(gpu_din[17]), // IN
	.a2(hidatai[17]), // IN
	.a3(hidatai[17]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_18
(
	.z(hidin[18]), // OUT
	.a0(hirdata[18]), // IN
	.a1(gpu_din[18]), // IN
	.a2(hidatai[18]), // IN
	.a3(hidatai[18]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_19
(
	.z(hidin[19]), // OUT
	.a0(hirdata[19]), // IN
	.a1(gpu_din[19]), // IN
	.a2(hidatai[19]), // IN
	.a3(hidatai[19]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_20
(
	.z(hidin[20]), // OUT
	.a0(hirdata[20]), // IN
	.a1(gpu_din[20]), // IN
	.a2(hidatai[20]), // IN
	.a3(hidatai[20]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_21
(
	.z(hidin[21]), // OUT
	.a0(hirdata[21]), // IN
	.a1(gpu_din[21]), // IN
	.a2(hidatai[21]), // IN
	.a3(hidatai[21]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_22
(
	.z(hidin[22]), // OUT
	.a0(hirdata[22]), // IN
	.a1(gpu_din[22]), // IN
	.a2(hidatai[22]), // IN
	.a3(hidatai[22]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_23
(
	.z(hidin[23]), // OUT
	.a0(hirdata[23]), // IN
	.a1(gpu_din[23]), // IN
	.a2(hidatai[23]), // IN
	.a3(hidatai[23]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_24
(
	.z(hidin[24]), // OUT
	.a0(hirdata[24]), // IN
	.a1(gpu_din[24]), // IN
	.a2(hidatai[24]), // IN
	.a3(hidatai[24]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_25
(
	.z(hidin[25]), // OUT
	.a0(hirdata[25]), // IN
	.a1(gpu_din[25]), // IN
	.a2(hidatai[25]), // IN
	.a3(hidatai[25]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_26
(
	.z(hidin[26]), // OUT
	.a0(hirdata[26]), // IN
	.a1(gpu_din[26]), // IN
	.a2(hidatai[26]), // IN
	.a3(hidatai[26]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_27
(
	.z(hidin[27]), // OUT
	.a0(hirdata[27]), // IN
	.a1(gpu_din[27]), // IN
	.a2(hidatai[27]), // IN
	.a3(hidatai[27]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_28
(
	.z(hidin[28]), // OUT
	.a0(hirdata[28]), // IN
	.a1(gpu_din[28]), // IN
	.a2(hidatai[28]), // IN
	.a3(hidatai[28]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_29
(
	.z(hidin[29]), // OUT
	.a0(hirdata[29]), // IN
	.a1(gpu_din[29]), // IN
	.a2(hidatai[29]), // IN
	.a3(hidatai[29]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_30
(
	.z(hidin[30]), // OUT
	.a0(hirdata[30]), // IN
	.a1(gpu_din[30]), // IN
	.a2(hidatai[30]), // IN
	.a3(hidatai[30]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);
mx4 hidin_inst_31
(
	.z(hidin[31]), // OUT
	.a0(hirdata[31]), // IN
	.a1(gpu_din[31]), // IN
	.a2(hidatai[31]), // IN
	.a3(hidatai[31]), // IN
	.s0(hidwrb), // IN
	.s1(ddatldb)  // IN
);

// GATEWAY.NET (250) - hirdata : fd1q
fd1q hirdata_inst_0
(
	.q(hirdata[0]), // OUT
	.d(hidin[0]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_1
(
	.q(hirdata[1]), // OUT
	.d(hidin[1]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_2
(
	.q(hirdata[2]), // OUT
	.d(hidin[2]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_3
(
	.q(hirdata[3]), // OUT
	.d(hidin[3]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_4
(
	.q(hirdata[4]), // OUT
	.d(hidin[4]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_5
(
	.q(hirdata[5]), // OUT
	.d(hidin[5]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_6
(
	.q(hirdata[6]), // OUT
	.d(hidin[6]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_7
(
	.q(hirdata[7]), // OUT
	.d(hidin[7]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_8
(
	.q(hirdata[8]), // OUT
	.d(hidin[8]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_9
(
	.q(hirdata[9]), // OUT
	.d(hidin[9]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_10
(
	.q(hirdata[10]), // OUT
	.d(hidin[10]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_11
(
	.q(hirdata[11]), // OUT
	.d(hidin[11]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_12
(
	.q(hirdata[12]), // OUT
	.d(hidin[12]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_13
(
	.q(hirdata[13]), // OUT
	.d(hidin[13]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_14
(
	.q(hirdata[14]), // OUT
	.d(hidin[14]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_15
(
	.q(hirdata[15]), // OUT
	.d(hidin[15]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_16
(
	.q(hirdata[16]), // OUT
	.d(hidin[16]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_17
(
	.q(hirdata[17]), // OUT
	.d(hidin[17]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_18
(
	.q(hirdata[18]), // OUT
	.d(hidin[18]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_19
(
	.q(hirdata[19]), // OUT
	.d(hidin[19]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_20
(
	.q(hirdata[20]), // OUT
	.d(hidin[20]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_21
(
	.q(hirdata[21]), // OUT
	.d(hidin[21]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_22
(
	.q(hirdata[22]), // OUT
	.d(hidin[22]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_23
(
	.q(hirdata[23]), // OUT
	.d(hidin[23]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_24
(
	.q(hirdata[24]), // OUT
	.d(hidin[24]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_25
(
	.q(hirdata[25]), // OUT
	.d(hidin[25]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_26
(
	.q(hirdata[26]), // OUT
	.d(hidin[26]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_27
(
	.q(hirdata[27]), // OUT
	.d(hidin[27]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_28
(
	.q(hirdata[28]), // OUT
	.d(hidin[28]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_29
(
	.q(hirdata[29]), // OUT
	.d(hidin[29]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_30
(
	.q(hirdata[30]), // OUT
	.d(hidin[30]), // IN
	.cp(clk_0)  // IN
);
fd1q hirdata_inst_31
(
	.q(hirdata[31]), // OUT
	.d(hidin[31]), // IN
	.cp(clk_0)  // IN
);

// GATEWAY.NET (251) - hidrd : ts
assign gpu_data[0] = (hidrd) ? hirdata[0] : 1'bz;
assign gpu_data[1] = (hidrd) ? hirdata[1] : 1'bz;
assign gpu_data[2] = (hidrd) ? hirdata[2] : 1'bz;
assign gpu_data[3] = (hidrd) ? hirdata[3] : 1'bz;
assign gpu_data[4] = (hidrd) ? hirdata[4] : 1'bz;
assign gpu_data[5] = (hidrd) ? hirdata[5] : 1'bz;
assign gpu_data[6] = (hidrd) ? hirdata[6] : 1'bz;
assign gpu_data[7] = (hidrd) ? hirdata[7] : 1'bz;
assign gpu_data[8] = (hidrd) ? hirdata[8] : 1'bz;
assign gpu_data[9] = (hidrd) ? hirdata[9] : 1'bz;
assign gpu_data[10] = (hidrd) ? hirdata[10] : 1'bz;
assign gpu_data[11] = (hidrd) ? hirdata[11] : 1'bz;
assign gpu_data[12] = (hidrd) ? hirdata[12] : 1'bz;
assign gpu_data[13] = (hidrd) ? hirdata[13] : 1'bz;
assign gpu_data[14] = (hidrd) ? hirdata[14] : 1'bz;
assign gpu_data[15] = (hidrd) ? hirdata[15] : 1'bz;
assign gpu_data[16] = (hidrd) ? hirdata[16] : 1'bz;
assign gpu_data[17] = (hidrd) ? hirdata[17] : 1'bz;
assign gpu_data[18] = (hidrd) ? hirdata[18] : 1'bz;
assign gpu_data[19] = (hidrd) ? hirdata[19] : 1'bz;
assign gpu_data[20] = (hidrd) ? hirdata[20] : 1'bz;
assign gpu_data[21] = (hidrd) ? hirdata[21] : 1'bz;
assign gpu_data[22] = (hidrd) ? hirdata[22] : 1'bz;
assign gpu_data[23] = (hidrd) ? hirdata[23] : 1'bz;
assign gpu_data[24] = (hidrd) ? hirdata[24] : 1'bz;
assign gpu_data[25] = (hidrd) ? hirdata[25] : 1'bz;
assign gpu_data[26] = (hidrd) ? hirdata[26] : 1'bz;
assign gpu_data[27] = (hidrd) ? hirdata[27] : 1'bz;
assign gpu_data[28] = (hidrd) ? hirdata[28] : 1'bz;
assign gpu_data[29] = (hidrd) ? hirdata[29] : 1'bz;
assign gpu_data[30] = (hidrd) ? hirdata[30] : 1'bz;
assign gpu_data[31] = (hidrd) ? hirdata[31] : 1'bz;

// GATEWAY.NET (256) - wdlat : an3
assign wdlat = active & reada_n & gpu_ack;

// GATEWAY.NET (257) - wden : fd1q
fd1q wden_inst
(
	.q(wden), // OUT
	.d(wdlat), // IN
	.cp(clk_0)  // IN
);

// GATEWAY.NET (258) - wdenb[0-1] : nivu
assign wdenb_0 = wden;
assign wdenb_1 = wden;

// GATEWAY.NET (259) - wddrv[0-31] : ts
assign wdata_0 = (wdenb_0) ? load_data_b0_obuf : 1'bz;
assign wdata_1 = (wdenb_0) ? load_data_b1_obuf : 1'bz;
assign wdata_2 = (wdenb_0) ? load_data_b2_obuf : 1'bz;
assign wdata_3 = (wdenb_0) ? load_data_b3_obuf : 1'bz;
assign wdata_4 = (wdenb_0) ? load_data_b4_obuf : 1'bz;
assign wdata_5 = (wdenb_0) ? load_data_b5_obuf : 1'bz;
assign wdata_6 = (wdenb_0) ? load_data_b6_obuf : 1'bz;
assign wdata_7 = (wdenb_0) ? load_data_b7_obuf : 1'bz;
assign wdata_8 = (wdenb_0) ? load_data_b8_obuf : 1'bz;
assign wdata_9 = (wdenb_0) ? load_data_b9_obuf : 1'bz;
assign wdata_10 = (wdenb_0) ? load_data_b10_obuf : 1'bz;
assign wdata_11 = (wdenb_0) ? load_data_b11_obuf : 1'bz;
assign wdata_12 = (wdenb_0) ? load_data_b12_obuf : 1'bz;
assign wdata_13 = (wdenb_0) ? load_data_b13_obuf : 1'bz;
assign wdata_14 = (wdenb_0) ? load_data_b14_obuf : 1'bz;
assign wdata_15 = (wdenb_0) ? load_data_b15_obuf : 1'bz;
assign wdata_16 = (wdenb_0) ? load_data_b16_obuf : 1'bz;
assign wdata_17 = (wdenb_0) ? load_data_b17_obuf : 1'bz;
assign wdata_18 = (wdenb_0) ? load_data_b18_obuf : 1'bz;
assign wdata_19 = (wdenb_0) ? load_data_b19_obuf : 1'bz;
assign wdata_20 = (wdenb_0) ? load_data_b20_obuf : 1'bz;
assign wdata_21 = (wdenb_0) ? load_data_b21_obuf : 1'bz;
assign wdata_22 = (wdenb_0) ? load_data_b22_obuf : 1'bz;
assign wdata_23 = (wdenb_0) ? load_data_b23_obuf : 1'bz;
assign wdata_24 = (wdenb_0) ? load_data_b24_obuf : 1'bz;
assign wdata_25 = (wdenb_0) ? load_data_b25_obuf : 1'bz;
assign wdata_26 = (wdenb_0) ? load_data_b26_obuf : 1'bz;
assign wdata_27 = (wdenb_0) ? load_data_b27_obuf : 1'bz;
assign wdata_28 = (wdenb_0) ? load_data_b28_obuf : 1'bz;
assign wdata_29 = (wdenb_0) ? load_data_b29_obuf : 1'bz;
assign wdata_30 = (wdenb_0) ? load_data_b30_obuf : 1'bz;
assign wdata_31 = (wdenb_0) ? load_data_b31_obuf : 1'bz;

// GATEWAY.NET (260) - wddrv[32-63] : ts
assign wdata_32 = (wdenb_1) ? hirdata[0] : 1'bz;
assign wdata_33 = (wdenb_1) ? hirdata[1] : 1'bz;
assign wdata_34 = (wdenb_1) ? hirdata[2] : 1'bz;
assign wdata_35 = (wdenb_1) ? hirdata[3] : 1'bz;
assign wdata_36 = (wdenb_1) ? hirdata[4] : 1'bz;
assign wdata_37 = (wdenb_1) ? hirdata[5] : 1'bz;
assign wdata_38 = (wdenb_1) ? hirdata[6] : 1'bz;
assign wdata_39 = (wdenb_1) ? hirdata[7] : 1'bz;
assign wdata_40 = (wdenb_1) ? hirdata[8] : 1'bz;
assign wdata_41 = (wdenb_1) ? hirdata[9] : 1'bz;
assign wdata_42 = (wdenb_1) ? hirdata[10] : 1'bz;
assign wdata_43 = (wdenb_1) ? hirdata[11] : 1'bz;
assign wdata_44 = (wdenb_1) ? hirdata[12] : 1'bz;
assign wdata_45 = (wdenb_1) ? hirdata[13] : 1'bz;
assign wdata_46 = (wdenb_1) ? hirdata[14] : 1'bz;
assign wdata_47 = (wdenb_1) ? hirdata[15] : 1'bz;
assign wdata_48 = (wdenb_1) ? hirdata[16] : 1'bz;
assign wdata_49 = (wdenb_1) ? hirdata[17] : 1'bz;
assign wdata_50 = (wdenb_1) ? hirdata[18] : 1'bz;
assign wdata_51 = (wdenb_1) ? hirdata[19] : 1'bz;
assign wdata_52 = (wdenb_1) ? hirdata[20] : 1'bz;
assign wdata_53 = (wdenb_1) ? hirdata[21] : 1'bz;
assign wdata_54 = (wdenb_1) ? hirdata[22] : 1'bz;
assign wdata_55 = (wdenb_1) ? hirdata[23] : 1'bz;
assign wdata_56 = (wdenb_1) ? hirdata[24] : 1'bz;
assign wdata_57 = (wdenb_1) ? hirdata[25] : 1'bz;
assign wdata_58 = (wdenb_1) ? hirdata[26] : 1'bz;
assign wdata_59 = (wdenb_1) ? hirdata[27] : 1'bz;
assign wdata_60 = (wdenb_1) ? hirdata[28] : 1'bz;
assign wdata_61 = (wdenb_1) ? hirdata[29] : 1'bz;
assign wdata_62 = (wdenb_1) ? hirdata[30] : 1'bz;
assign wdata_63 = (wdenb_1) ? hirdata[31] : 1'bz;

// GATEWAY.NET (267) - ext_reqt0 : an2
assign ext_reqt_0 = active & progown;

// GATEWAY.NET (268) - ext_reqt[1-4] : fd1q
fd1q ext_reqt_from_1_to_4_inst_0
(
	.q(ext_reqt_1), // OUT
	.d(ext_reqt_0), // IN
	.cp(clk_0)  // IN
);
fd1q ext_reqt_from_1_to_4_inst_1
(
	.q(ext_reqt_2), // OUT
	.d(ext_reqt_1), // IN
	.cp(clk_0)  // IN
);
fd1q ext_reqt_from_1_to_4_inst_2
(
	.q(ext_reqt_3), // OUT
	.d(ext_reqt_2), // IN
	.cp(clk_0)  // IN
);
fd1q ext_reqt_from_1_to_4_inst_3
(
	.q(ext_reqt_4), // OUT
	.d(ext_reqt_3), // IN
	.cp(clk_0)  // IN
);

// GATEWAY.NET (269) - ext_reqt[5] : or4
assign ext_reqt_5 = ext_reqt_1 | ext_reqt_2 | ext_reqt_3 | ext_reqt_4;

// GATEWAY.NET (270) - ext_req\ : nd2
assign ext_req_n = ~(ext_reqt_5 & bus_hog);

// GATEWAY.NET (278) - gpu_bt0 : nd2
assign gpu_bt_0 = ~(progown_n & dmaen_n);

// GATEWAY.NET (279) - gpu_bt1 : nd2
assign gpu_bt_1 = ~(gpu_bt_0 & progown_n);

// GATEWAY.NET (280) - gpu_bt2 : nd2
assign gpu_bt_2 = ~(gpu_bt_1 & active);

// GATEWAY.NET (281) - gpu_breq : nd2
assign gpu_breq_obuf = ~(gpu_bt_2 & ext_req_n);

// GATEWAY.NET (283) - dma_breq : an3
assign dma_breq_obuf = active & progown_n & dmaen;
endmodule
