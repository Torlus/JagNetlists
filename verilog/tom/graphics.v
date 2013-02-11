`include "defs.v"

module graphics
(
	input ima_0,
	input ima_1,
	input ima_2,
	input ima_3,
	input ima_4,
	input ima_5,
	input ima_6,
	input ima_7,
	input ima_8,
	input ima_9,
	input ima_10,
	input ima_11,
	input ima_12,
	input ima_13,
	input ima_14,
	input ima_15,
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
	input ack,
	input blit_back,
	input gpu_back,
	input reset_n,
	input clk,
	input tlw,
	input dint,
	input gpu_irq_3,
	input gpu_irq_2,
	input iord,
	input iowr,
	input reset_lock,
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
	input at_1,
	output blit_breq_0,
	output blit_breq_1,
	output gpu_breq,
	output dma_breq,
	output cpu_int,
	output lock,
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
	inout a_0,
	inout a_1,
	inout a_2,
	inout a_3,
	inout a_4,
	inout a_5,
	inout a_6,
	inout a_7,
	inout a_8,
	inout a_9,
	inout a_10,
	inout a_11,
	inout a_12,
	inout a_13,
	inout a_14,
	inout a_15,
	inout a_16,
	inout a_17,
	inout a_18,
	inout a_19,
	inout a_20,
	inout a_21,
	inout a_22,
	inout a_23,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
	inout read,
	inout mreq,
	inout dr_0,
	inout dr_1,
	inout dr_2,
	inout dr_3,
	inout dr_4,
	inout dr_5,
	inout dr_6,
	inout dr_7,
	inout dr_8,
	inout dr_9,
	inout dr_10,
	inout dr_11,
	inout dr_12,
	inout dr_13,
	inout dr_14,
	inout dr_15,
	inout justify
);
wire [0:3] width;
wire [0:15] dread;
wire [0:15] io_addr;
wire [0:31] gpu_din;
wire [0:23] address;
wire [0:23] dataddr;
wire [0:23] gpu_addr;
wire [0:31] gpu_data;
wire [0:31] immdata;
wire [0:31] locsrc;
wire [0:31] result;
wire [0:31] srcd;
wire [0:31] srcdp;
wire [0:31] srcdpa;
wire [0:31] dstwd;
wire [0:31] srcwd;
wire [0:31] load_data;
wire [0:31] mem_data;
wire [0:31] quotient;
wire [0:31] dstdp;
wire [0:31] dstd;
wire [0:31] cpudata;
wire [0:2] alufunc;
wire [0:5] dstanwi;
wire [0:5] srcanwi;
wire [0:5] dstat;
wire [0:5] dsta;
wire [0:5] srca;
wire [0:21] progaddr;
wire [0:12] cpuaddr;
wire dintd;
wire dintd_n;
wire clk_11;
wire gpu_irq_1;
wire resetl_4;
wire resetl_5;
wire resetl_6;
wire resetl_7;
wire resetl_8;
wire resetl_9;
wire resetl_10;
wire resetl_11;
wire resetl_12;
wire clk_5;
wire clk_6;
wire clk_7;
wire clk_8;
wire clk_9;
wire clk_10;
wire clk_15;
wire gpu_dout_3;
wire gpu_dout_4;
wire gpu_dout_5;
wire gpu_dout_6;
wire gpu_dout_7;
wire gpu_dout_8;
wire gpu_dout_9;
wire gpu_dout_10;
wire gpu_dout_11;
wire gpu_dout_12;
wire gpu_dout_13;
wire gpu_dout_14;
wire gpu_dout_16;
wire gpu_dout_17;
wire gpu_dout_18;
wire gpu_dout_19;
wire gpu_dout_20;
wire gpu_dout_21;
wire gpu_dout_22;
wire gpu_dout_23;
wire gpu_dout_24;
wire gpu_dout_25;
wire gpu_dout_26;
wire gpu_dout_27;
wire gpu_dout_28;
wire gpu_dout_29;
wire gpu_dout_30;
wire gpu_dout_31;
wire brlmux_0;
wire brlmux_1;
wire datreq;
wire datwe;
wire datwe_raw;
wire div_instr;
wire div_start;
wire dstdgate;
wire dstrrd;
wire dstrrdi;
wire dstrwr;
wire dstrwri;
wire dstwen;
wire exe;
wire flag_depend;
wire flagld;
wire immld;
wire immwri;
wire insexei;
wire locden;
wire macop;
wire memrw;
wire msize_0;
wire msize_1;
wire mtx_dover;
wire multsel;
wire multsign;
wire pabort;
wire precomp;
wire progreq;
wire resld;
wire ressel_0;
wire ressel_1;
wire ressel_2;
wire reswr;
wire rev_sub;
wire satsz_0;
wire satsz_1;
wire srcrrd;
wire single_stop;
wire big_instr;
wire carry_flag;
wire datack;
wire dbgrd;
wire div_activei;
wire external;
wire flagrd;
wire flagwr;
wire gate_active;
wire go;
wire gpu_irq_0;
wire gpu_irq_4;
wire mtxawr;
wire mtxcwr;
wire nega_flag;
wire pcrd;
wire pcwr;
wire progack;
wire resaddrldi;
wire sbwait;
wire sdatreq;
wire single_go;
wire single_step;
wire srcaddrldi;
wire statrd;
wire zero_flag;
wire dstrwen_n;
wire srcrwen_n;
wire del_xld;
wire xld_ready;
wire gpu_dout_0;
wire gpu_dout_1;
wire gpu_dout_2;
wire divwr;
wire remrd;
wire big_io;
wire big_pix;
wire bliten;
wire ctrlwr;
wire ctrlwrgo;
wire gateack;
wire gpu_memw;
wire hidrd;
wire hidwr;
wire progserv;
wire ram_addr_2;
wire ram_addr_3;
wire ram_addr_4;
wire ram_addr_5;
wire ram_addr_6;
wire ram_addr_7;
wire ram_addr_8;
wire ram_addr_9;
wire ram_addr_10;
wire ram_addr_11;
wire ramen;
wire gatereq;
wire ioreq;
wire gpu_dout_15;
wire bus_hog;

// GRAPHICS.NET (66) - io_addr : join
assign io_addr[0] = ima_0;
assign io_addr[1] = ima_1;
assign io_addr[2] = ima_2;
assign io_addr[3] = ima_3;
assign io_addr[4] = ima_4;
assign io_addr[5] = ima_5;
assign io_addr[6] = ima_6;
assign io_addr[7] = ima_7;
assign io_addr[8] = ima_8;
assign io_addr[9] = ima_9;
assign io_addr[10] = ima_10;
assign io_addr[11] = ima_11;
assign io_addr[12] = ima_12;
assign io_addr[13] = ima_13;
assign io_addr[14] = ima_14;
assign io_addr[15] = ima_15;

// GRAPHICS.NET (67) - dr[0-15] : join_bus
assign dr_0 = dread[0];
assign dr_1 = dread[1];
assign dr_2 = dread[2];
assign dr_3 = dread[3];
assign dr_4 = dread[4];
assign dr_5 = dread[5];
assign dr_6 = dread[6];
assign dr_7 = dread[7];
assign dr_8 = dread[8];
assign dr_9 = dread[9];
assign dr_10 = dread[10];
assign dr_11 = dread[11];
assign dr_12 = dread[12];
assign dr_13 = dread[13];
assign dr_14 = dread[14];
assign dr_15 = dread[15];

// GRAPHICS.NET (69) - width : join
assign width[0] = width_0;
assign width[1] = width_1;
assign width[2] = width_2;
assign width[3] = width_3;

// GRAPHICS.NET (70) - widthd : dummy

// GRAPHICS.NET (71) - a[0-23] : join_bus
assign a_0 = address[0];
assign a_1 = address[1];
assign a_2 = address[2];
assign a_3 = address[3];
assign a_4 = address[4];
assign a_5 = address[5];
assign a_6 = address[6];
assign a_7 = address[7];
assign a_8 = address[8];
assign a_9 = address[9];
assign a_10 = address[10];
assign a_11 = address[11];
assign a_12 = address[12];
assign a_13 = address[13];
assign a_14 = address[14];
assign a_15 = address[15];
assign a_16 = address[16];
assign a_17 = address[17];
assign a_18 = address[18];
assign a_19 = address[19];
assign a_20 = address[20];
assign a_21 = address[21];
assign a_22 = address[22];
assign a_23 = address[23];

// GRAPHICS.NET (75) - dintd : fd1
fd1 dintd_inst
(
	.q(dintd), // OUT
	.qn(dintd_n), // OUT
	.d(dint), // IN
	.cp(clk_11)  // IN
);

// GRAPHICS.NET (76) - dintdum : dummy

// GRAPHICS.NET (77) - gpu_irq[1] : an2
assign gpu_irq_1 = dint & dintd_n;

// GRAPHICS.NET (79) - resetl[4] : buf8x6
assign resetl_4 = reset_n;

// GRAPHICS.NET (80) - resetl[5] : buf8x2
assign resetl_5 = reset_n;

// GRAPHICS.NET (81) - resetl[6] : buf1
assign resetl_6 = reset_n;

// GRAPHICS.NET (82) - resetl[7] : buf1
assign resetl_7 = reset_n;

// GRAPHICS.NET (83) - resetl[8] : buf4
assign resetl_8 = reset_n;

// GRAPHICS.NET (84) - resetl[9] : buf1
assign resetl_9 = reset_n;

// GRAPHICS.NET (85) - resetl[10] : buf1
assign resetl_10 = reset_n;

// GRAPHICS.NET (86) - resetl[11] : buf2
assign resetl_11 = reset_n;

// GRAPHICS.NET (87) - resetl[12] : buf1
assign resetl_12 = reset_n;

// GRAPHICS.NET (88) - clk[5] : buf64
assign clk_5 = clk;

// GRAPHICS.NET (89) - clk[6] : buf48
assign clk_6 = clk;

// GRAPHICS.NET (90) - clk[7] : buf24
assign clk_7 = clk;

// GRAPHICS.NET (91) - clk[8] : buf48
assign clk_8 = clk;

// GRAPHICS.NET (92) - clk[9] : buf24
assign clk_9 = clk;

// GRAPHICS.NET (93) - clk[10] : buf24
assign clk_10 = clk;

// GRAPHICS.NET (94) - clk[11] : buf4
assign clk_11 = clk;

// GRAPHICS.NET (95) - clk[15] : buf16
assign clk_15 = clk;

// GRAPHICS.NET (99) - ins_exec : ins_exec
ins_exec ins_exec_inst
(
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // TRI
	.gpu_dout_3(gpu_dout_3), // TRI
	.gpu_dout_4(gpu_dout_4), // TRI
	.gpu_dout_5(gpu_dout_5), // TRI
	.gpu_dout_6(gpu_dout_6), // TRI
	.gpu_dout_7(gpu_dout_7), // TRI
	.gpu_dout_8(gpu_dout_8), // TRI
	.gpu_dout_9(gpu_dout_9), // TRI
	.gpu_dout_10(gpu_dout_10), // TRI
	.gpu_dout_11(gpu_dout_11), // TRI
	.gpu_dout_12(gpu_dout_12), // TRI
	.gpu_dout_13(gpu_dout_13), // TRI
	.gpu_dout_14(gpu_dout_14), // TRI
	.gpu_dout_16(gpu_dout_16), // TRI
	.gpu_dout_17(gpu_dout_17), // TRI
	.gpu_dout_18(gpu_dout_18), // TRI
	.gpu_dout_19(gpu_dout_19), // TRI
	.gpu_dout_20(gpu_dout_20), // TRI
	.gpu_dout_21(gpu_dout_21), // TRI
	.gpu_dout_22(gpu_dout_22), // TRI
	.gpu_dout_23(gpu_dout_23), // TRI
	.gpu_dout_24(gpu_dout_24), // TRI
	.gpu_dout_25(gpu_dout_25), // TRI
	.gpu_dout_26(gpu_dout_26), // TRI
	.gpu_dout_27(gpu_dout_27), // TRI
	.gpu_dout_28(gpu_dout_28), // TRI
	.gpu_dout_29(gpu_dout_29), // TRI
	.gpu_dout_30(gpu_dout_30), // TRI
	.gpu_dout_31(gpu_dout_31), // TRI
	.alufunc({alufunc[0],alufunc[1],alufunc[2]}), // IO
	.brlmux_0(brlmux_0), // OUT
	.brlmux_1(brlmux_1), // OUT
	.dataddr({dataddr[0],dataddr[1],dataddr[2],dataddr[3],dataddr[4],dataddr[5],dataddr[6],dataddr[7],dataddr[8],dataddr[9],dataddr[10],dataddr[11],dataddr[12],dataddr[13],dataddr[14],dataddr[15],dataddr[16],dataddr[17],dataddr[18],dataddr[19],dataddr[20],dataddr[21],dataddr[22],dataddr[23]}), // OUT
	.datreq(datreq), // OUT
	.datweb(datwe), // IO
	.datwe_raw(datwe_raw), // OUT
	.div_instr(div_instr), // IO
	.div_start(div_start), // OUT
	.dstanwi({dstanwi[0],dstanwi[1],dstanwi[2],dstanwi[3],dstanwi[4],dstanwi[5]}), // OUT
	.dstat({dstat[0],dstat[1],dstat[2],dstat[3],dstat[4],dstat[5]}), // OUT
	.dstdgate(dstdgate), // OUT
	.dstrrd(dstrrd), // OUT
	.dstrrdi(dstrrdi), // OUT
	.dstrwr(dstrwr), // OUT
	.dstrwri(dstrwri), // OUT
	.dstwen(dstwen), // IO
	.exe(exe), // IO
	.flag_depend(flag_depend), // OUT
	.flagld(flagld), // OUT
	.immdata({immdata[0],immdata[1],immdata[2],immdata[3],immdata[4],immdata[5],immdata[6],immdata[7],immdata[8],immdata[9],immdata[10],immdata[11],immdata[12],immdata[13],immdata[14],immdata[15],immdata[16],immdata[17],immdata[18],immdata[19],immdata[20],immdata[21],immdata[22],immdata[23],immdata[24],immdata[25],immdata[26],immdata[27],immdata[28],immdata[29],immdata[30],immdata[31]}), // OUT
	.immld(immld), // IO
	.immwri(immwri), // OUT
	.insexei(insexei), // IO
	.locden(locden), // OUT
	.locsrc({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}), // OUT
	.macop(macop), // OUT
	.memrw(memrw), // IO
	.msize_0(msize_0), // OUT
	.msize_1(msize_1), // OUT
	.mtx_dover(mtx_dover), // OUT
	.multsel(multsel), // OUT
	.multsign(multsign), // OUT
	.pabort(pabort), // OUT
	.precomp(precomp), // IO
	.progaddr({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}), // OUT
	.progreq(progreq), // OUT
	.resld(resld), // OUT
	.ressel_0(ressel_0), // OUT
	.ressel_1(ressel_1), // OUT
	.ressel_2(ressel_2), // OUT
	.reswr(reswr), // OUT
	.rev_sub(rev_sub), // OUT
	.satsz_0(satsz_0), // OUT
	.satsz_1(satsz_1), // OUT
	.srcrrd(srcrrd), // OUT
	.single_stop(single_stop), // OUT
	.srcanwi({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}), // OUT
	.big_instr(big_instr), // IN
	.carry_flag(carry_flag), // IN
	.clk(clk_5), // IN
	.tlw(tlw), // IN
	.datack(datack), // IN
	.dbgrd(dbgrd), // IN
	.div_activei(div_activei), // IN
	.external(external), // IN
	.flagrd(flagrd), // IN
	.flagwr(flagwr), // IN
	.gate_active(gate_active), // IN
	.go(go), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.gpu_irq_0(gpu_irq_0), // IN
	.gpu_irq_1(gpu_irq_1), // IN
	.gpu_irq_2(gpu_irq_2), // IN
	.gpu_irq_3(gpu_irq_3), // IN
	.gpu_irq_4(gpu_irq_4), // IN
	.mtxawr(mtxawr), // IN
	.mtxcwr(mtxcwr), // IN
	.nega_flag(nega_flag), // IN
	.pcrd(pcrd), // IN
	.pcwr(pcwr), // IN
	.progack(progack), // IN
	.resaddrldi(resaddrldi), // IN
	.reset_n(resetl_4), // IN
	.result({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}), // IN
	.sbwait(sbwait), // IN
	.sdatreq(sdatreq), // IN
	.single_go(single_go), // IN
	.single_step(single_step), // IN
	.srcaddrldi(srcaddrldi), // IN
	.srcd({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}), // IN
	.srcdpa({srcdpa[0],srcdpa[1],srcdpa[2],srcdpa[3],srcdpa[4],srcdpa[5],srcdpa[6],srcdpa[7],srcdpa[8],srcdpa[9],srcdpa[10],srcdpa[11],srcdpa[12],srcdpa[13],srcdpa[14],srcdpa[15],srcdpa[16],srcdpa[17],srcdpa[18],srcdpa[19],srcdpa[20],srcdpa[21],srcdpa[22],srcdpa[23],srcdpa[24],srcdpa[25],srcdpa[26],srcdpa[27],srcdpa[28],srcdpa[29],srcdpa[30],srcdpa[31]}), // IN
	.statrd(statrd), // IN
	.zero_flag(zero_flag)  // IN
);

// GRAPHICS.NET (121) - sboard : sboard
sboard sboard_inst
(
	.dsta({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]}), // OUT
	.sdatreq(sdatreq), // OUT
	.dstrwen_n(dstrwen_n), // OUT
	.dstwd({dstwd[0],dstwd[1],dstwd[2],dstwd[3],dstwd[4],dstwd[5],dstwd[6],dstwd[7],dstwd[8],dstwd[9],dstwd[10],dstwd[11],dstwd[12],dstwd[13],dstwd[14],dstwd[15],dstwd[16],dstwd[17],dstwd[18],dstwd[19],dstwd[20],dstwd[21],dstwd[22],dstwd[23],dstwd[24],dstwd[25],dstwd[26],dstwd[27],dstwd[28],dstwd[29],dstwd[30],dstwd[31]}), // OUT
	.resaddrldi(resaddrldi), // OUT
	.sbwait(sbwait), // OUT
	.srca({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}), // OUT
	.srcaddrldi(srcaddrldi), // OUT
	.srcrwen_n(srcrwen_n), // OUT
	.srcwd({srcwd[0],srcwd[1],srcwd[2],srcwd[3],srcwd[4],srcwd[5],srcwd[6],srcwd[7],srcwd[8],srcwd[9],srcwd[10],srcwd[11],srcwd[12],srcwd[13],srcwd[14],srcwd[15],srcwd[16],srcwd[17],srcwd[18],srcwd[19],srcwd[20],srcwd[21],srcwd[22],srcwd[23],srcwd[24],srcwd[25],srcwd[26],srcwd[27],srcwd[28],srcwd[29],srcwd[30],srcwd[31]}), // OUT
	.clk(clk_6), // IN
	.datack(datack), // IN
	.datwe(datwe), // IN
	.datwe_raw(datwe_raw), // IN
	.del_xld(del_xld), // IN
	.div_activei(div_activei), // IN
	.div_instr(div_instr), // IN
	.div_start(div_start), // IN
	.dstanwi({dstanwi[0],dstanwi[1],dstanwi[2],dstanwi[3],dstanwi[4],dstanwi[5]}), // IN
	.dstat({dstat[0],dstat[1],dstat[2],dstat[3],dstat[4],dstat[5]}), // IN
	.dstrrd(dstrrd), // IN
	.dstrrdi(dstrrdi), // IN
	.dstrwr(dstrwr), // IN
	.dstrwri(dstrwri), // IN
	.dstwen(dstwen), // IN
	.exe(exe), // IN
	.flag_depend(flag_depend), // IN
	.flagld(flagld), // IN
	.gate_active(gate_active), // IN
	.immdata({immdata[0],immdata[1],immdata[2],immdata[3],immdata[4],immdata[5],immdata[6],immdata[7],immdata[8],immdata[9],immdata[10],immdata[11],immdata[12],immdata[13],immdata[14],immdata[15],immdata[16],immdata[17],immdata[18],immdata[19],immdata[20],immdata[21],immdata[22],immdata[23],immdata[24],immdata[25],immdata[26],immdata[27],immdata[28],immdata[29],immdata[30],immdata[31]}), // IN
	.immld(immld), // IN
	.immwri(immwri), // IN
	.insexei(insexei), // IN
	.load_data({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}), // IN
	.mem_data({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}), // IN
	.memrw(memrw), // IN
	.mtx_dover(mtx_dover), // IN
	.precomp(precomp), // IN
	.quotient({quotient[0],quotient[1],quotient[2],quotient[3],quotient[4],quotient[5],quotient[6],quotient[7],quotient[8],quotient[9],quotient[10],quotient[11],quotient[12],quotient[13],quotient[14],quotient[15],quotient[16],quotient[17],quotient[18],quotient[19],quotient[20],quotient[21],quotient[22],quotient[23],quotient[24],quotient[25],quotient[26],quotient[27],quotient[28],quotient[29],quotient[30],quotient[31]}), // IN
	.reset_n(resetl_5), // IN
	.reswr(reswr), // IN
	.result({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}), // IN
	.srcanwi({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]}), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}), // IN
	.srcrrd(srcrrd), // IN
	.xld_ready(xld_ready)  // IN
);

// GRAPHICS.NET (136) - arith : arith
arith arith_inst
(
	.gpu_dout_0(gpu_dout_0), // TRI
	.gpu_dout_1(gpu_dout_1), // TRI
	.gpu_dout_2(gpu_dout_2), // TRI
	.carry_flag(carry_flag), // IO
	.nega_flag(nega_flag), // IO
	.result({result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],result[27],result[28],result[29],result[30],result[31]}), // IO
	.zero_flag(zero_flag), // IO
	.dstdp({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}), // IN
	.srcd_31(srcd[31]), // IN
	.alufunc({alufunc[0],alufunc[1],alufunc[2]}), // IN
	.brlmux_0(brlmux_0), // IN
	.brlmux_1(brlmux_1), // IN
	.clk(clk_7), // IN
	.flagld(flagld), // IN
	.flagrd(flagrd), // IN
	.flagwr(flagwr), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.macop(macop), // IN
	.multsel(multsel), // IN
	.multsign(multsign), // IN
	.reset_n(resetl_6), // IN
	.resld(resld), // IN
	.ressel_0(ressel_0), // IN
	.ressel_1(ressel_1), // IN
	.ressel_2(ressel_2), // IN
	.rev_sub(rev_sub), // IN
	.satsz_0(satsz_0), // IN
	.satsz_1(satsz_1)  // IN
);

// GRAPHICS.NET (145) - divide : divide
divide divide_inst
(
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.div_activei(div_activei), // IO
	.quotient({quotient[0],quotient[1],quotient[2],quotient[3],quotient[4],quotient[5],quotient[6],quotient[7],quotient[8],quotient[9],quotient[10],quotient[11],quotient[12],quotient[13],quotient[14],quotient[15],quotient[16],quotient[17],quotient[18],quotient[19],quotient[20],quotient[21],quotient[22],quotient[23],quotient[24],quotient[25],quotient[26],quotient[27],quotient[28],quotient[29],quotient[30],quotient[31]}), // OUT
	.clk(clk_8), // IN
	.div_start(div_start), // IN
	.divwr(divwr), // IN
	.dstd({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.remrd(remrd), // IN
	.reset_n(resetl_7), // IN
	.srcd({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]})  // IN
);

// GRAPHICS.NET (151) - registers : registers
registers registers_inst
(
	.srcd({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}), // IO
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]}), // OUT
	.srcdpa({srcdpa[0],srcdpa[1],srcdpa[2],srcdpa[3],srcdpa[4],srcdpa[5],srcdpa[6],srcdpa[7],srcdpa[8],srcdpa[9],srcdpa[10],srcdpa[11],srcdpa[12],srcdpa[13],srcdpa[14],srcdpa[15],srcdpa[16],srcdpa[17],srcdpa[18],srcdpa[19],srcdpa[20],srcdpa[21],srcdpa[22],srcdpa[23],srcdpa[24],srcdpa[25],srcdpa[26],srcdpa[27],srcdpa[28],srcdpa[29],srcdpa[30],srcdpa[31]}), // IO
	.dstd({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}), // IO
	.dstdp({dstdp[0],dstdp[1],dstdp[2],dstdp[3],dstdp[4],dstdp[5],dstdp[6],dstdp[7],dstdp[8],dstdp[9],dstdp[10],dstdp[11],dstdp[12],dstdp[13],dstdp[14],dstdp[15],dstdp[16],dstdp[17],dstdp[18],dstdp[19],dstdp[20],dstdp[21],dstdp[22],dstdp[23],dstdp[24],dstdp[25],dstdp[26],dstdp[27],dstdp[28],dstdp[29],dstdp[30],dstdp[31]}), // OUT
	.clk(clk_9), // IN
	.dsta({dsta[0],dsta[1],dsta[2],dsta[3],dsta[4],dsta[5]}), // IN
	.dstrwen_n(dstrwen_n), // IN
	.dstwd({dstwd[0],dstwd[1],dstwd[2],dstwd[3],dstwd[4],dstwd[5],dstwd[6],dstwd[7],dstwd[8],dstwd[9],dstwd[10],dstwd[11],dstwd[12],dstwd[13],dstwd[14],dstwd[15],dstwd[16],dstwd[17],dstwd[18],dstwd[19],dstwd[20],dstwd[21],dstwd[22],dstwd[23],dstwd[24],dstwd[25],dstwd[26],dstwd[27],dstwd[28],dstwd[29],dstwd[30],dstwd[31]}), // IN
	.exe(exe), // IN
	.locden(locden), // IN
	.locsrc({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}), // IN
	.mem_data({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}), // IN
	.mtx_dover(mtx_dover), // IN
	.srca({srca[0],srca[1],srca[2],srca[3],srca[4],srca[5]}), // IN
	.srcrwen_n(srcrwen_n), // IN
	.srcwd({srcwd[0],srcwd[1],srcwd[2],srcwd[3],srcwd[4],srcwd[5],srcwd[6],srcwd[7],srcwd[8],srcwd[9],srcwd[10],srcwd[11],srcwd[12],srcwd[13],srcwd[14],srcwd[15],srcwd[16],srcwd[17],srcwd[18],srcwd[19],srcwd[20],srcwd[21],srcwd[22],srcwd[23],srcwd[24],srcwd[25],srcwd[26],srcwd[27],srcwd[28],srcwd[29],srcwd[30],srcwd[31]})  // IN
);

// GRAPHICS.NET (158) - gpu_mem : gpu_mem
gpu_mem gpu_mem_inst
(
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.big_instr(big_instr), // OUT
	.big_io(big_io), // OUT
	.big_pix(big_pix), // OUT
	.bliten(bliten), // OUT
	.ctrlwr(ctrlwr), // OUT
	.ctrlwrgo(ctrlwrgo), // OUT
	.datack(datack), // OUT
	.dbgrd(dbgrd), // OUT
	.del_xld(del_xld), // OUT
	.divwr(divwr), // OUT
	.externalb(external), // IO
	.flagrd(flagrd), // IO
	.flagwr(flagwr), // OUT
	.gateack(gateack), // OUT
	.gpu_addr({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}), // OUT
	.gpu_memw(gpu_memw), // IO
	.hidrd(hidrd), // OUT
	.hidwr(hidwr), // OUT
	.lock(lock), // IO
	.mem_data({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]}), // OUT
	.mtxawr(mtxawr), // OUT
	.mtxcwr(mtxcwr), // OUT
	.pcrd(pcrd), // OUT
	.pcwr(pcwr), // OUT
	.progack(progack), // OUT
	.progserv(progserv), // IO
	.ram_addr_2(ram_addr_2), // IO
	.ram_addr_3(ram_addr_3), // IO
	.ram_addr_4(ram_addr_4), // IO
	.ram_addr_5(ram_addr_5), // IO
	.ram_addr_6(ram_addr_6), // IO
	.ram_addr_7(ram_addr_7), // IO
	.ram_addr_8(ram_addr_8), // IO
	.ram_addr_9(ram_addr_9), // IO
	.ram_addr_10(ram_addr_10), // IO
	.ram_addr_11(ram_addr_11), // IO
	.ramen(ramen), // OUT
	.remrd(remrd), // OUT
	.statrd(statrd), // IO
	.clk(clk_10), // IN
	.cpuaddr({cpuaddr[0],cpuaddr[1],cpuaddr[2],cpuaddr[3],cpuaddr[4],cpuaddr[5],cpuaddr[6],cpuaddr[7],cpuaddr[8],cpuaddr[9],cpuaddr[10],cpuaddr[11],cpuaddr[12]}), // IN
	.cpudata({cpudata[0],cpudata[1],cpudata[2],cpudata[3],cpudata[4],cpudata[5],cpudata[6],cpudata[7],cpudata[8],cpudata[9],cpudata[10],cpudata[11],cpudata[12],cpudata[13],cpudata[14],cpudata[15],cpudata[16],cpudata[17],cpudata[18],cpudata[19],cpudata[20],cpudata[21],cpudata[22],cpudata[23],cpudata[24],cpudata[25],cpudata[26],cpudata[27],cpudata[28],cpudata[29],cpudata[30],cpudata[31]}), // IN
	.dataddr({dataddr[0],dataddr[1],dataddr[2],dataddr[3],dataddr[4],dataddr[5],dataddr[6],dataddr[7],dataddr[8],dataddr[9],dataddr[10],dataddr[11],dataddr[12],dataddr[13],dataddr[14],dataddr[15],dataddr[16],dataddr[17],dataddr[18],dataddr[19],dataddr[20],dataddr[21],dataddr[22],dataddr[23]}), // IN
	.dstd({dstd[0],dstd[1],dstd[2],dstd[3],dstd[4],dstd[5],dstd[6],dstd[7],dstd[8],dstd[9],dstd[10],dstd[11],dstd[12],dstd[13],dstd[14],dstd[15],dstd[16],dstd[17],dstd[18],dstd[19],dstd[20],dstd[21],dstd[22],dstd[23],dstd[24],dstd[25],dstd[26],dstd[27],dstd[28],dstd[29],dstd[30],dstd[31]}), // IN
	.dstdgate(dstdgate), // IN
	.datreq(datreq), // IN
	.datwe(datwe), // IN
	.gatereq(gatereq), // IN
	.go(go), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.ioreq(ioreq), // IN
	.iowr(iowr), // IN
	.pabort(pabort), // IN
	.progaddr({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}), // IN
	.progreq(progreq), // IN
	.reset_n(resetl_8), // IN
	.reset_lock(reset_lock)  // IN
);

// GRAPHICS.NET (172) - gpu_ctrl : gpu_ctrl
gpu_ctrl gpu_ctrl_inst
(
	.gpu_dout_0(gpu_dout_0), // TRI
	.gpu_dout_1(gpu_dout_1), // TRI
	.gpu_dout_2(gpu_dout_2), // TRI
	.gpu_dout_3(gpu_dout_3), // TRI
	.gpu_dout_4(gpu_dout_4), // TRI
	.gpu_dout_5(gpu_dout_5), // TRI
	.gpu_dout_11(gpu_dout_11), // TRI
	.gpu_dout_12(gpu_dout_12), // TRI
	.gpu_dout_13(gpu_dout_13), // TRI
	.gpu_dout_14(gpu_dout_14), // TRI
	.gpu_dout_15(gpu_dout_15), // TRI
	.bus_hog(bus_hog), // IO
	.cpu_int(cpu_int), // OUT
	.go(go), // IO
	.gpu_irq_0(gpu_irq_0), // OUT
	.single_go(single_go), // OUT
	.single_step(single_step), // OUT
	.clk(clk_11), // IN
	.ctrlwr(ctrlwr), // IN
	.ctrlwrgo(ctrlwrgo), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.reset_n(resetl_9), // IN
	.single_stop(single_stop), // IN
	.statrd(statrd)  // IN
);

// GRAPHICS.NET (180) - gpu_ram : gpu_ram
gpu_ram gpu_ram_inst
(
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.clk(clk_11), // IN
	.gpu_memw(gpu_memw), // IN
	.ram_addr_2(ram_addr_2), // IN
	.ram_addr_3(ram_addr_3), // IN
	.ram_addr_4(ram_addr_4), // IN
	.ram_addr_5(ram_addr_5), // IN
	.ram_addr_6(ram_addr_6), // IN
	.ram_addr_7(ram_addr_7), // IN
	.ram_addr_8(ram_addr_8), // IN
	.ram_addr_9(ram_addr_9), // IN
	.ram_addr_10(ram_addr_10), // IN
	.ram_addr_11(ram_addr_11), // IN
	.ramen(ramen)  // IN
);

// GRAPHICS.NET (185) - gpu_cpu : gpu_cpu
gpu_cpu gpu_cpu_inst
(
	.dread({dread[0],dread[1],dread[2],dread[3],dread[4],dread[5],dread[6],dread[7],dread[8],dread[9],dread[10],dread[11],dread[12],dread[13],dread[14],dread[15]}), // TRI
	.cpuaddr({cpuaddr[0],cpuaddr[1],cpuaddr[2],cpuaddr[3],cpuaddr[4],cpuaddr[5],cpuaddr[6],cpuaddr[7],cpuaddr[8],cpuaddr[9],cpuaddr[10],cpuaddr[11],cpuaddr[12]}), // OUT
	.cpudata({cpudata[0],cpudata[1],cpudata[2],cpudata[3],cpudata[4],cpudata[5],cpudata[6],cpudata[7],cpudata[8],cpudata[9],cpudata[10],cpudata[11],cpudata[12],cpudata[13],cpudata[14],cpudata[15],cpudata[16],cpudata[17],cpudata[18],cpudata[19],cpudata[20],cpudata[21],cpudata[22],cpudata[23],cpudata[24],cpudata[25],cpudata[26],cpudata[27],cpudata[28],cpudata[29],cpudata[30],cpudata[31]}), // OUT
	.ioreq(ioreq), // OUT
	.at_1(at_1), // IN
	.a_15(a_15), // IN
	.ack(ack), // IN
	.big_io(big_io), // IN
	.clk_0(clk_11), // IN
	.clk_2(tlw), // IN
	.dwrite_0(dwrite_0), // IN
	.dwrite_1(dwrite_1), // IN
	.dwrite_2(dwrite_2), // IN
	.dwrite_3(dwrite_3), // IN
	.dwrite_4(dwrite_4), // IN
	.dwrite_5(dwrite_5), // IN
	.dwrite_6(dwrite_6), // IN
	.dwrite_7(dwrite_7), // IN
	.dwrite_8(dwrite_8), // IN
	.dwrite_9(dwrite_9), // IN
	.dwrite_10(dwrite_10), // IN
	.dwrite_11(dwrite_11), // IN
	.dwrite_12(dwrite_12), // IN
	.dwrite_13(dwrite_13), // IN
	.dwrite_14(dwrite_14), // IN
	.dwrite_15(dwrite_15), // IN
	.dwrite_16(dwrite_16), // IN
	.dwrite_17(dwrite_17), // IN
	.dwrite_18(dwrite_18), // IN
	.dwrite_19(dwrite_19), // IN
	.dwrite_20(dwrite_20), // IN
	.dwrite_21(dwrite_21), // IN
	.dwrite_22(dwrite_22), // IN
	.dwrite_23(dwrite_23), // IN
	.dwrite_24(dwrite_24), // IN
	.dwrite_25(dwrite_25), // IN
	.dwrite_26(dwrite_26), // IN
	.dwrite_27(dwrite_27), // IN
	.dwrite_28(dwrite_28), // IN
	.dwrite_29(dwrite_29), // IN
	.dwrite_30(dwrite_30), // IN
	.dwrite_31(dwrite_31), // IN
	.io_addr({io_addr[0],io_addr[1],io_addr[2],io_addr[3],io_addr[4],io_addr[5],io_addr[6],io_addr[7],io_addr[8],io_addr[9],io_addr[10],io_addr[11],io_addr[12],io_addr[13],io_addr[14],io_addr[15]}), // IN
	.iord(iord), // IN
	.iowr(iowr), // IN
	.mem_data({mem_data[0],mem_data[1],mem_data[2],mem_data[3],mem_data[4],mem_data[5],mem_data[6],mem_data[7],mem_data[8],mem_data[9],mem_data[10],mem_data[11],mem_data[12],mem_data[13],mem_data[14],mem_data[15],mem_data[16],mem_data[17],mem_data[18],mem_data[19],mem_data[20],mem_data[21],mem_data[22],mem_data[23],mem_data[24],mem_data[25],mem_data[26],mem_data[27],mem_data[28],mem_data[29],mem_data[30],mem_data[31]})  // IN
);

// GRAPHICS.NET (191) - gateway : gateway
gateway gateway_inst
(
	.address({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // BUS
	.wdata_0(wdata_0), // BUS
	.wdata_1(wdata_1), // BUS
	.wdata_2(wdata_2), // BUS
	.wdata_3(wdata_3), // BUS
	.wdata_4(wdata_4), // BUS
	.wdata_5(wdata_5), // BUS
	.wdata_6(wdata_6), // BUS
	.wdata_7(wdata_7), // BUS
	.wdata_8(wdata_8), // BUS
	.wdata_9(wdata_9), // BUS
	.wdata_10(wdata_10), // BUS
	.wdata_11(wdata_11), // BUS
	.wdata_12(wdata_12), // BUS
	.wdata_13(wdata_13), // BUS
	.wdata_14(wdata_14), // BUS
	.wdata_15(wdata_15), // BUS
	.wdata_16(wdata_16), // BUS
	.wdata_17(wdata_17), // BUS
	.wdata_18(wdata_18), // BUS
	.wdata_19(wdata_19), // BUS
	.wdata_20(wdata_20), // BUS
	.wdata_21(wdata_21), // BUS
	.wdata_22(wdata_22), // BUS
	.wdata_23(wdata_23), // BUS
	.wdata_24(wdata_24), // BUS
	.wdata_25(wdata_25), // BUS
	.wdata_26(wdata_26), // BUS
	.wdata_27(wdata_27), // BUS
	.wdata_28(wdata_28), // BUS
	.wdata_29(wdata_29), // BUS
	.wdata_30(wdata_30), // BUS
	.wdata_31(wdata_31), // BUS
	.wdata_32(wdata_32), // BUS
	.wdata_33(wdata_33), // BUS
	.wdata_34(wdata_34), // BUS
	.wdata_35(wdata_35), // BUS
	.wdata_36(wdata_36), // BUS
	.wdata_37(wdata_37), // BUS
	.wdata_38(wdata_38), // BUS
	.wdata_39(wdata_39), // BUS
	.wdata_40(wdata_40), // BUS
	.wdata_41(wdata_41), // BUS
	.wdata_42(wdata_42), // BUS
	.wdata_43(wdata_43), // BUS
	.wdata_44(wdata_44), // BUS
	.wdata_45(wdata_45), // BUS
	.wdata_46(wdata_46), // BUS
	.wdata_47(wdata_47), // BUS
	.wdata_48(wdata_48), // BUS
	.wdata_49(wdata_49), // BUS
	.wdata_50(wdata_50), // BUS
	.wdata_51(wdata_51), // BUS
	.wdata_52(wdata_52), // BUS
	.wdata_53(wdata_53), // BUS
	.wdata_54(wdata_54), // BUS
	.wdata_55(wdata_55), // BUS
	.wdata_56(wdata_56), // BUS
	.wdata_57(wdata_57), // BUS
	.wdata_58(wdata_58), // BUS
	.wdata_59(wdata_59), // BUS
	.wdata_60(wdata_60), // BUS
	.wdata_61(wdata_61), // BUS
	.wdata_62(wdata_62), // BUS
	.wdata_63(wdata_63), // BUS
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.justify(justify), // BUS
	.mreq(mreq), // BUS
	.read(read), // BUS
	.width_0(width_0), // BUS
	.width_1(width_1), // BUS
	.width_2(width_2), // BUS
	.width_3(width_3), // BUS
	.gpu_dout_15(gpu_dout_15), // TRI
	.dma_breq(dma_breq), // IO
	.gate_active(gate_active), // OUT
	.gatereq(gatereq), // OUT
	.gpu_breq(gpu_breq), // IO
	.load_data({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}), // IO
	.xld_ready(xld_ready), // OUT
	.ack(ack), // IN
	.bus_hog(bus_hog), // IN
	.clk_0(clk_15), // IN
	.clk_2(tlw), // IN
	.data_0(data_0), // IN
	.data_1(data_1), // IN
	.data_2(data_2), // IN
	.data_3(data_3), // IN
	.data_4(data_4), // IN
	.data_5(data_5), // IN
	.data_6(data_6), // IN
	.data_7(data_7), // IN
	.data_8(data_8), // IN
	.data_9(data_9), // IN
	.data_10(data_10), // IN
	.data_11(data_11), // IN
	.data_12(data_12), // IN
	.data_13(data_13), // IN
	.data_14(data_14), // IN
	.data_15(data_15), // IN
	.data_16(data_16), // IN
	.data_17(data_17), // IN
	.data_18(data_18), // IN
	.data_19(data_19), // IN
	.data_20(data_20), // IN
	.data_21(data_21), // IN
	.data_22(data_22), // IN
	.data_23(data_23), // IN
	.data_24(data_24), // IN
	.data_25(data_25), // IN
	.data_26(data_26), // IN
	.data_27(data_27), // IN
	.data_28(data_28), // IN
	.data_29(data_29), // IN
	.data_30(data_30), // IN
	.data_31(data_31), // IN
	.data_32(data_32), // IN
	.data_33(data_33), // IN
	.data_34(data_34), // IN
	.data_35(data_35), // IN
	.data_36(data_36), // IN
	.data_37(data_37), // IN
	.data_38(data_38), // IN
	.data_39(data_39), // IN
	.data_40(data_40), // IN
	.data_41(data_41), // IN
	.data_42(data_42), // IN
	.data_43(data_43), // IN
	.data_44(data_44), // IN
	.data_45(data_45), // IN
	.data_46(data_46), // IN
	.data_47(data_47), // IN
	.data_48(data_48), // IN
	.data_49(data_49), // IN
	.data_50(data_50), // IN
	.data_51(data_51), // IN
	.data_52(data_52), // IN
	.data_53(data_53), // IN
	.data_54(data_54), // IN
	.data_55(data_55), // IN
	.data_56(data_56), // IN
	.data_57(data_57), // IN
	.data_58(data_58), // IN
	.data_59(data_59), // IN
	.data_60(data_60), // IN
	.data_61(data_61), // IN
	.data_62(data_62), // IN
	.data_63(data_63), // IN
	.external(external), // IN
	.flagrd(flagrd), // IN
	.flagwr(flagwr), // IN
	.gateack(gateack), // IN
	.gpu_addr({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}), // IN
	.gpu_back(gpu_back), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.gpu_memw(gpu_memw), // IN
	.hidrd(hidrd), // IN
	.hidwr(hidwr), // IN
	.msize_0(msize_0), // IN
	.msize_1(msize_1), // IN
	.progserv(progserv), // IN
	.reset_n(resetl_11)  // IN
);

// GRAPHICS.NET (201) - blit : blit
blit blit_inst
(
	.blit_addr({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // BUS
	.wdata_0(wdata_0), // BUS
	.wdata_1(wdata_1), // BUS
	.wdata_2(wdata_2), // BUS
	.wdata_3(wdata_3), // BUS
	.wdata_4(wdata_4), // BUS
	.wdata_5(wdata_5), // BUS
	.wdata_6(wdata_6), // BUS
	.wdata_7(wdata_7), // BUS
	.wdata_8(wdata_8), // BUS
	.wdata_9(wdata_9), // BUS
	.wdata_10(wdata_10), // BUS
	.wdata_11(wdata_11), // BUS
	.wdata_12(wdata_12), // BUS
	.wdata_13(wdata_13), // BUS
	.wdata_14(wdata_14), // BUS
	.wdata_15(wdata_15), // BUS
	.wdata_16(wdata_16), // BUS
	.wdata_17(wdata_17), // BUS
	.wdata_18(wdata_18), // BUS
	.wdata_19(wdata_19), // BUS
	.wdata_20(wdata_20), // BUS
	.wdata_21(wdata_21), // BUS
	.wdata_22(wdata_22), // BUS
	.wdata_23(wdata_23), // BUS
	.wdata_24(wdata_24), // BUS
	.wdata_25(wdata_25), // BUS
	.wdata_26(wdata_26), // BUS
	.wdata_27(wdata_27), // BUS
	.wdata_28(wdata_28), // BUS
	.wdata_29(wdata_29), // BUS
	.wdata_30(wdata_30), // BUS
	.wdata_31(wdata_31), // BUS
	.wdata_32(wdata_32), // BUS
	.wdata_33(wdata_33), // BUS
	.wdata_34(wdata_34), // BUS
	.wdata_35(wdata_35), // BUS
	.wdata_36(wdata_36), // BUS
	.wdata_37(wdata_37), // BUS
	.wdata_38(wdata_38), // BUS
	.wdata_39(wdata_39), // BUS
	.wdata_40(wdata_40), // BUS
	.wdata_41(wdata_41), // BUS
	.wdata_42(wdata_42), // BUS
	.wdata_43(wdata_43), // BUS
	.wdata_44(wdata_44), // BUS
	.wdata_45(wdata_45), // BUS
	.wdata_46(wdata_46), // BUS
	.wdata_47(wdata_47), // BUS
	.wdata_48(wdata_48), // BUS
	.wdata_49(wdata_49), // BUS
	.wdata_50(wdata_50), // BUS
	.wdata_51(wdata_51), // BUS
	.wdata_52(wdata_52), // BUS
	.wdata_53(wdata_53), // BUS
	.wdata_54(wdata_54), // BUS
	.wdata_55(wdata_55), // BUS
	.wdata_56(wdata_56), // BUS
	.wdata_57(wdata_57), // BUS
	.wdata_58(wdata_58), // BUS
	.wdata_59(wdata_59), // BUS
	.wdata_60(wdata_60), // BUS
	.wdata_61(wdata_61), // BUS
	.wdata_62(wdata_62), // BUS
	.wdata_63(wdata_63), // BUS
	.justify(justify), // BUS
	.mreq(mreq), // BUS
	.read(read), // BUS
	.width_0(width_0), // BUS
	.width_1(width_1), // BUS
	.width_2(width_2), // BUS
	.width_3(width_3), // BUS
	.gpu_dout_0(gpu_dout_0), // TRI
	.gpu_dout_1(gpu_dout_1), // TRI
	.gpu_dout_2(gpu_dout_2), // TRI
	.gpu_dout_3(gpu_dout_3), // TRI
	.gpu_dout_4(gpu_dout_4), // TRI
	.gpu_dout_5(gpu_dout_5), // TRI
	.gpu_dout_6(gpu_dout_6), // TRI
	.gpu_dout_7(gpu_dout_7), // TRI
	.gpu_dout_8(gpu_dout_8), // TRI
	.gpu_dout_9(gpu_dout_9), // TRI
	.gpu_dout_10(gpu_dout_10), // TRI
	.gpu_dout_11(gpu_dout_11), // TRI
	.gpu_dout_12(gpu_dout_12), // TRI
	.gpu_dout_13(gpu_dout_13), // TRI
	.gpu_dout_14(gpu_dout_14), // TRI
	.gpu_dout_15(gpu_dout_15), // TRI
	.gpu_dout_16(gpu_dout_16), // TRI
	.gpu_dout_17(gpu_dout_17), // TRI
	.gpu_dout_18(gpu_dout_18), // TRI
	.gpu_dout_19(gpu_dout_19), // TRI
	.gpu_dout_20(gpu_dout_20), // TRI
	.gpu_dout_21(gpu_dout_21), // TRI
	.gpu_dout_22(gpu_dout_22), // TRI
	.gpu_dout_23(gpu_dout_23), // TRI
	.gpu_dout_24(gpu_dout_24), // TRI
	.gpu_dout_25(gpu_dout_25), // TRI
	.gpu_dout_26(gpu_dout_26), // TRI
	.gpu_dout_27(gpu_dout_27), // TRI
	.gpu_dout_28(gpu_dout_28), // TRI
	.gpu_dout_29(gpu_dout_29), // TRI
	.gpu_dout_30(gpu_dout_30), // TRI
	.gpu_dout_31(gpu_dout_31), // TRI
	.blit_breq_0(blit_breq_0), // IO
	.blit_breq_1(blit_breq_1), // IO
	.blit_int(gpu_irq_4), // OUT
	.ack(ack), // IN
	.big_pix(big_pix), // IN
	.blit_back(blit_back), // IN
	.bliten(bliten), // IN
	.clk(clk), // IN
	.tlw(tlw), // IN
	.data_0(data_0), // IN
	.data_1(data_1), // IN
	.data_2(data_2), // IN
	.data_3(data_3), // IN
	.data_4(data_4), // IN
	.data_5(data_5), // IN
	.data_6(data_6), // IN
	.data_7(data_7), // IN
	.data_8(data_8), // IN
	.data_9(data_9), // IN
	.data_10(data_10), // IN
	.data_11(data_11), // IN
	.data_12(data_12), // IN
	.data_13(data_13), // IN
	.data_14(data_14), // IN
	.data_15(data_15), // IN
	.data_16(data_16), // IN
	.data_17(data_17), // IN
	.data_18(data_18), // IN
	.data_19(data_19), // IN
	.data_20(data_20), // IN
	.data_21(data_21), // IN
	.data_22(data_22), // IN
	.data_23(data_23), // IN
	.data_24(data_24), // IN
	.data_25(data_25), // IN
	.data_26(data_26), // IN
	.data_27(data_27), // IN
	.data_28(data_28), // IN
	.data_29(data_29), // IN
	.data_30(data_30), // IN
	.data_31(data_31), // IN
	.data_32(data_32), // IN
	.data_33(data_33), // IN
	.data_34(data_34), // IN
	.data_35(data_35), // IN
	.data_36(data_36), // IN
	.data_37(data_37), // IN
	.data_38(data_38), // IN
	.data_39(data_39), // IN
	.data_40(data_40), // IN
	.data_41(data_41), // IN
	.data_42(data_42), // IN
	.data_43(data_43), // IN
	.data_44(data_44), // IN
	.data_45(data_45), // IN
	.data_46(data_46), // IN
	.data_47(data_47), // IN
	.data_48(data_48), // IN
	.data_49(data_49), // IN
	.data_50(data_50), // IN
	.data_51(data_51), // IN
	.data_52(data_52), // IN
	.data_53(data_53), // IN
	.data_54(data_54), // IN
	.data_55(data_55), // IN
	.data_56(data_56), // IN
	.data_57(data_57), // IN
	.data_58(data_58), // IN
	.data_59(data_59), // IN
	.data_60(data_60), // IN
	.data_61(data_61), // IN
	.data_62(data_62), // IN
	.data_63(data_63), // IN
	.gpu_addr({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.gpu_memw(gpu_memw), // IN
	.xreset_n(resetl_12)  // IN
);

// GRAPHICS.NET (210) - gpu_dout : join_bus
assign gpu_data[0] = gpu_dout_0;
assign gpu_data[1] = gpu_dout_1;
assign gpu_data[2] = gpu_dout_2;
assign gpu_data[3] = gpu_dout_3;
assign gpu_data[4] = gpu_dout_4;
assign gpu_data[5] = gpu_dout_5;
assign gpu_data[6] = gpu_dout_6;
assign gpu_data[7] = gpu_dout_7;
assign gpu_data[8] = gpu_dout_8;
assign gpu_data[9] = gpu_dout_9;
assign gpu_data[10] = gpu_dout_10;
assign gpu_data[11] = gpu_dout_11;
assign gpu_data[12] = gpu_dout_12;
assign gpu_data[13] = gpu_dout_13;
assign gpu_data[14] = gpu_dout_14;
assign gpu_data[15] = gpu_dout_15;
assign gpu_data[16] = gpu_dout_16;
assign gpu_data[17] = gpu_dout_17;
assign gpu_data[18] = gpu_dout_18;
assign gpu_data[19] = gpu_dout_19;
assign gpu_data[20] = gpu_dout_20;
assign gpu_data[21] = gpu_dout_21;
assign gpu_data[22] = gpu_dout_22;
assign gpu_data[23] = gpu_dout_23;
assign gpu_data[24] = gpu_dout_24;
assign gpu_data[25] = gpu_dout_25;
assign gpu_data[26] = gpu_dout_26;
assign gpu_data[27] = gpu_dout_27;
assign gpu_data[28] = gpu_dout_28;
assign gpu_data[29] = gpu_dout_29;
assign gpu_data[30] = gpu_dout_30;
assign gpu_data[31] = gpu_dout_31;

// GRAPHICS.NET (214) - gpu_din : nivu
assign gpu_din[0] = gpu_data[0];
assign gpu_din[1] = gpu_data[1];
assign gpu_din[2] = gpu_data[2];
assign gpu_din[3] = gpu_data[3];
assign gpu_din[4] = gpu_data[4];
assign gpu_din[5] = gpu_data[5];
assign gpu_din[6] = gpu_data[6];
assign gpu_din[7] = gpu_data[7];
assign gpu_din[8] = gpu_data[8];
assign gpu_din[9] = gpu_data[9];
assign gpu_din[10] = gpu_data[10];
assign gpu_din[11] = gpu_data[11];
assign gpu_din[12] = gpu_data[12];
assign gpu_din[13] = gpu_data[13];
assign gpu_din[14] = gpu_data[14];
assign gpu_din[15] = gpu_data[15];
assign gpu_din[16] = gpu_data[16];
assign gpu_din[17] = gpu_data[17];
assign gpu_din[18] = gpu_data[18];
assign gpu_din[19] = gpu_data[19];
assign gpu_din[20] = gpu_data[20];
assign gpu_din[21] = gpu_data[21];
assign gpu_din[22] = gpu_data[22];
assign gpu_din[23] = gpu_data[23];
assign gpu_din[24] = gpu_data[24];
assign gpu_din[25] = gpu_data[25];
assign gpu_din[26] = gpu_data[26];
assign gpu_din[27] = gpu_data[27];
assign gpu_din[28] = gpu_data[28];
assign gpu_din[29] = gpu_data[29];
assign gpu_din[30] = gpu_data[30];
assign gpu_din[31] = gpu_data[31];
endmodule
