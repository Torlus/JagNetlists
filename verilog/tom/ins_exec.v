`include "defs.v"

module ins_exec
(
	inout[0:31] gpu_data;
	inout gpu_dout_3,
	inout gpu_dout_4,
	inout gpu_dout_5,
	inout gpu_dout_6,
	inout gpu_dout_7,
	inout gpu_dout_8,
	inout gpu_dout_9,
	inout gpu_dout_10,
	inout gpu_dout_11,
	inout gpu_dout_12,
	inout gpu_dout_13,
	inout gpu_dout_14,
	inout gpu_dout_16,
	inout gpu_dout_17,
	inout gpu_dout_18,
	inout gpu_dout_19,
	inout gpu_dout_20,
	inout gpu_dout_21,
	inout gpu_dout_22,
	inout gpu_dout_23,
	inout gpu_dout_24,
	inout gpu_dout_25,
	inout gpu_dout_26,
	inout gpu_dout_27,
	inout gpu_dout_28,
	inout gpu_dout_29,
	inout gpu_dout_30,
	inout gpu_dout_31,
	output[0:2] alufunc;
	output brlmux_0,
	output brlmux_1,
	output[0:23] dataddr;
	output datreq,
	output datweb,
	output datwe_raw,
	output div_instr,
	output div_start,
	output[0:5] dstanwi;
	output[0:5] dstat;
	output dstdgate,
	output dstrrd,
	output dstrrdi,
	output dstrwr,
	output dstrwri,
	output dstwen,
	output exe,
	output flag_depend,
	output flagld,
	output[0:31] immdata;
	output immld,
	output immwri,
	output insexei,
	output locden,
	output[0:31] locsrc;
	output macop,
	output memrw,
	output msize_0,
	output msize_1,
	output mtx_dover,
	output multsel,
	output multsign,
	output pabort,
	output precomp,
	output[0:21] progaddr;
	output progreq,
	output resld,
	output ressel_0,
	output ressel_1,
	output ressel_2,
	output reswr,
	output rev_sub,
	output satsz_0,
	output satsz_1,
	output srcrrd,
	output single_stop,
	output[0:5] srcanwi;
	input big_instr,
	input carry_flag,
	input clk,
	input tlw,
	input datack,
	input dbgrd,
	input div_activei,
	input external,
	input flagrd,
	input flagwr,
	input gate_active,
	input go,
	input[0:31] gpu_din;
	input gpu_irq_0,
	input gpu_irq_1,
	input gpu_irq_2,
	input gpu_irq_3,
	input gpu_irq_4,
	input mtxawr,
	input mtxcwr,
	input nega_flag,
	input pcrd,
	input pcwr,
	input progack,
	input resaddrldi,
	input reset_n,
	input[0:31] result;
	input sbwait,
	input sdatreq,
	input single_go,
	input single_step,
	input srcaddrldi,
	input[0:31] srcd;
	input[0:31] srcdp;
	input[0:31] srcdpa;
	input statrd,
	input zero_flag
);
wire [0:4] dstop;
wire [0:4] dstopb;
wire [0:4] srcopi;
wire [0:4] srcop;
wire [0:4] dstopi;
wire [0:4] srcopin;
wire [0:4] dstopin;
wire [0:5] opcode;
wire [0:5] opcodei;
wire [0:5] opcodein;
wire [0:5] dstati;
wire [0:5] impdai;
wire [0:5] dstatun;
wire [0:15] immlo;
wire [0:15] instruction;
wire [0:15] insval;
wire [0:15] preinstr;
wire [0:15] intins;
wire [0:26] microword;
wire [0:26] romword27;
wire [0:26] mwordi;
wire [0:31] mtx_addr;
wire [0:31] prog_count;
wire [0:26] romword;
wire [0:4] srcopb;
wire [0:23] program_count;
wire [0:15] sysins;
wire zero;
wire one;
wire jump_ena;
wire sysser;
wire intser;
wire insrdy;
wire jump_atomic;
wire jumprel;
wire jumpabs;
wire promold_n;
wire jump_ins;
wire jump_insp;
wire preinstr_n_11;
wire preinstr_n_13;
wire preinstr_n_10;
wire preinstr_n_14;
wire preinstr_n_15;
wire movei;
wire moveild_n;
wire romoldb_2;
wire moveild;
wire romold_n;
wire idlet_0;
wire await2;
wire idlet_1;
wire idle;
wire idlet_2;
wire await1t_0;
wire await1t_1;
wire await1;
wire await1t_2;
wire await2t_0;
wire await2t_1;
wire await2t_2;
wire atomict_0;
wire atomict_1;
wire movei_atomic;
wire movei_data;
wire atomic;
wire mtx_atomic;
wire mult_atomic;
wire multnt;
wire multn;
wire multn_n;
wire multaset;
wire multaclr;
wire multa;
wire imaski;
wire mtx_wait;
wire mtxaddr_2;
wire mtxaddr_3;
wire mtxaddr_4;
wire mtxaddr_5;
wire mtxaddr_6;
wire mtxaddr_7;
wire mtxaddr_8;
wire mtxaddr_9;
wire mtxaddr_10;
wire mtxaddr_11;
wire mtx_mreq;
wire sromold;
wire mtx_mreq_n;
wire mtx_doveri;
wire intser_n;
wire sysser_n;
wire romold;
wire romoldb_0;
wire romoldb_4;
wire romoldb_3;
wire opcode_n_1;
wire opcode_n_3;
wire opcode_n_5;
wire unpack;
wire msizet_0;
wire msizet_1;
wire srcdat_0;
wire srcdat_1;
wire srcdat_2;
wire srcdat_3;
wire srcrrdt;
wire insexe;
wire memrw_n;
wire datwet;
wire dsttinv;
wire opcd_0;
wire opcd_1;
wire opcd_2;
wire opcd_3;
wire opcd_4;
wire opcd_5;
wire opcd_n_0;
wire opcd_n_1;
wire opcd_n_2;
wire opcd_n_3;
wire opcd_n_4;
wire idc_n_36;
wire idc_n_37;
wire idc_n_43;
wire idc_n_44;
wire idc_n_49;
wire idc_n_50;
wire idc_n_58;
wire idc_n_59;
wire idc_n_60;
wire idc_n_61;
wire precompit_0;
wire precompit_1;
wire precompit;
wire precompi;
wire precompil;
wire romoldb_1;
wire dsttinvit;
wire dsttinvi;
wire dsttinvil;
wire srctinvit;
wire srctinvi;
wire srctinvil;
wire indselit;
wire indseli;
wire indselil;
wire datwet_0;
wire exeb_1;
wire exe_n;
wire datwet_1;
wire datwelat;
wire datwet_2;
wire datwe;
wire datwec;
wire microword_n_8;
wire microword_n_15;
wire alufunc2_n;
wire alufunc7_n;
wire rev_subt;
wire srcdat4;
wire conditional;
wire jump;
wire fdt_0;
wire alufunc_n_2;
wire fdt_1;
wire loimmld;
wire locdent;
wire regpagei;
wire regpage;
wire imaski_n;
wire reghighi;
wire imask_n;
wire reghigh;
wire dsttopi;
wire dsttop;
wire danwsel;
wire srctopti;
wire srctopi;
wire zero_flag_n;
wire other_flag;
wire other_flag_n;
wire cond_0;
wire cond_1;
wire cond_2;
wire cond_3;
wire dataseli_0;
wire dataseli_1;
wire datasel0_0;
wire datasel0_1;
wire datasel0_2;
wire datasel0_3;
wire datasel0_4;
wire datasel0_5;
wire datasel1_0;
wire datasel1_1;
wire datasel1_2;
wire datasel1_3;
wire datasel1_4;
wire datasel1_5;
wire dataddr_0;
wire dataddr_1;
wire dataddr_2;
wire dataddr_3;
wire srcaddrl_0;
wire srcaddrl_1;
wire srcaddrl_2;
wire srcaddrl_3;
wire dataddr_4;
wire dataddr_5;
wire dataddr_6;
wire dataddr_7;
wire srcaddrl_4;
wire srcaddrl_5;
wire srcaddrl_6;
wire srcaddrl_7;
wire dataddr_8;
wire dataddr_9;
wire dataddr_10;
wire dataddr_11;
wire srcaddrl_8;
wire srcaddrl_9;
wire srcaddrl_10;
wire srcaddrl_11;
wire dataddr_12;
wire dataddr_13;
wire dataddr_14;
wire dataddr_15;
wire srcaddrl_12;
wire srcaddrl_13;
wire srcaddrl_14;
wire srcaddrl_15;
wire dataddr_16;
wire dataddr_17;
wire dataddr_18;
wire dataddr_19;
wire srcaddrl_16;
wire srcaddrl_17;
wire srcaddrl_18;
wire srcaddrl_19;
wire dataddr_20;
wire dataddr_21;
wire dataddr_22;
wire dataddr_23;
wire srcaddrl_20;
wire srcaddrl_21;
wire srcaddrl_22;
wire srcaddrl_23;
wire addrlatt;
wire addrlat;

// Output buffers
wire alufunc_b0_obuf;
wire alufunc_b2_obuf;
wire datweb_obuf;
wire div_instr_obuf;
wire dstwen_obuf;
wire exe_obuf;
wire immld_obuf;
wire insexei_obuf;
wire memrw_obuf;
wire precomp_obuf;


// Output buffers
assign alufunc[0] = alufunc_b0_obuf;
assign alufunc[2] = alufunc_b2_obuf;
assign datweb = datweb_obuf;
assign div_instr = div_instr_obuf;
assign dstwen = dstwen_obuf;
assign exe = exe_obuf;
assign immld = immld_obuf;
assign insexei = insexei_obuf;
assign memrw = memrw_obuf;
assign precomp = precomp_obuf;


// INS_EXEC.NET (119) - zero : tie0
assign zero = 1'b0;

// INS_EXEC.NET (120) - one : tie1
assign one = 1'b1;

// INS_EXEC.NET (122) - dbgrd[25] : ts
assign gpu_dout_25 = (dbgrd) ? sbwait : 1'bz;

// INS_EXEC.NET (123) - dbgrd[26] : ts
assign gpu_dout_26 = (dbgrd) ? div_activei : 1'bz;

// INS_EXEC.NET (124) - dbgrd[27] : ts
assign gpu_dout_27 = (dbgrd) ? external : 1'bz;

// INS_EXEC.NET (125) - dbgrd[28] : ts
assign gpu_dout_28 = (dbgrd) ? gate_active : 1'bz;

// INS_EXEC.NET (126) - dbgrd[29] : ts
assign gpu_dout_29 = (dbgrd) ? jump_ena : 1'bz;

// INS_EXEC.NET (127) - dbgrd[30] : ts
assign gpu_dout_30 = (dbgrd) ? sysser : 1'bz;

// INS_EXEC.NET (128) - dbgrd[31] : ts
assign gpu_dout_31 = (dbgrd) ? intser : 1'bz;

// INS_EXEC.NET (132) - prefetch : prefetch
prefetch prefetch_inst
(
	.gpu_dout_22(gpu_dout_22), // TRI
	.gpu_dout_23(gpu_dout_23), // TRI
	.gpu_dout_24(gpu_dout_24), // TRI
	.insrdy(insrdy), // OUT
	.instruction({preinstr[0],preinstr[1],preinstr[2],preinstr[3],preinstr[4],preinstr[5],preinstr[6],preinstr[7],preinstr[8],preinstr[9],preinstr[10],preinstr[11],preinstr[12],preinstr[13],preinstr[14],preinstr[15]}), // OUT
	.jump_atomic(jump_atomic), // OUT
	.pabort(pabort), // OUT
	.progreq(progreq), // OUT
	.progaddr({progaddr[0],progaddr[1],progaddr[2],progaddr[3],progaddr[4],progaddr[5],progaddr[6],progaddr[7],progaddr[8],progaddr[9],progaddr[10],progaddr[11],progaddr[12],progaddr[13],progaddr[14],progaddr[15],progaddr[16],progaddr[17],progaddr[18],progaddr[19],progaddr[20],progaddr[21]}), // OUT
	.program_count({program_count[0],program_count[1],program_count[2],program_count[3],program_count[4],program_count[5],program_count[6],program_count[7],program_count[8],program_count[9],program_count[10],program_count[11],program_count[12],program_count[13],program_count[14],program_count[15],program_count[16],program_count[17],program_count[18],program_count[19],program_count[20],program_count[21],program_count[22],program_count[23]}), // OUT
	.big_instr(big_instr), // IN
	.clk(clk), // IN
	.dbgrd(dbgrd), // IN
	.go(go), // IN
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.progack(progack), // IN
	.jumprel(jumprel), // IN
	.jumpabs(jumpabs), // IN
	.pcwr(pcwr), // IN
	.reset_n(reset_n), // IN
	.promoldx_n(promold_n), // IN
	.single_go(single_go), // IN
	.single_step(single_step), // IN
	.srcd({srcd[0],srcd[1],srcd[2],srcd[3],srcd[4],srcd[5],srcd[6],srcd[7],srcd[8],srcd[9],srcd[10],srcd[11],srcd[12],srcd[13],srcd[14],srcd[15],srcd[16],srcd[17],srcd[18],srcd[19],srcd[20],srcd[21],srcd[22],srcd[23],srcd[24],srcd[25],srcd[26],srcd[27],srcd[28],srcd[29],srcd[30],srcd[31]}), // IN
	.srcdp({srcdp[0],srcdp[1],srcdp[2],srcdp[3],srcdp[4],srcdp[5],srcdp[6],srcdp[7],srcdp[8],srcdp[9],srcdp[10],srcdp[11],srcdp[12],srcdp[13],srcdp[14],srcdp[15],srcdp[16],srcdp[17],srcdp[18],srcdp[19],srcdp[20],srcdp[21],srcdp[22],srcdp[23],srcdp[24],srcdp[25],srcdp[26],srcdp[27],srcdp[28],srcdp[29],srcdp[30],srcdp[31]})  // IN
);

// INS_EXEC.NET (139) - prog_cnt : join
assign prog_count[0] = program_count[0];
assign prog_count[1] = program_count[1];
assign prog_count[2] = program_count[2];
assign prog_count[3] = program_count[3];
assign prog_count[4] = program_count[4];
assign prog_count[5] = program_count[5];
assign prog_count[6] = program_count[6];
assign prog_count[7] = program_count[7];
assign prog_count[8] = program_count[8];
assign prog_count[9] = program_count[9];
assign prog_count[10] = program_count[10];
assign prog_count[11] = program_count[11];
assign prog_count[12] = program_count[12];
assign prog_count[13] = program_count[13];
assign prog_count[14] = program_count[14];
assign prog_count[15] = program_count[15];
assign prog_count[16] = program_count[16];
assign prog_count[17] = program_count[17];
assign prog_count[18] = program_count[18];
assign prog_count[19] = program_count[19];
assign prog_count[20] = program_count[20];
assign prog_count[21] = program_count[21];
assign prog_count[22] = program_count[22];
assign prog_count[23] = program_count[23];
assign prog_count[24] = zero;
assign prog_count[25] = zero;
assign prog_count[26] = zero;
assign prog_count[27] = zero;
assign prog_count[28] = zero;
assign prog_count[29] = zero;
assign prog_count[30] = zero;
assign prog_count[31] = zero;

// INS_EXEC.NET (169) - jumpins : or2
assign jump_ins = microword[23] | microword[24];

// INS_EXEC.NET (173) - jumpinsp : an5
an5 jumpinsp_inst
(
	.q(jump_insp), // OUT
	.a_0(preinstr_n_11), // IN
	.a_1(preinstr[12]), // IN
	.a_2(preinstr_n_13), // IN
	.a_3(preinstr[14]), // IN
	.a_4(preinstr[15])  // IN
);

// INS_EXEC.NET (178) - preinstr\[10-11] : iv
assign preinstr_n_10 = ~preinstr[10];
assign preinstr_n_11 = ~preinstr[11];

// INS_EXEC.NET (179) - preinstr\[13-15] : iv
assign preinstr_n_13 = ~preinstr[13];
assign preinstr_n_14 = ~preinstr[14];
assign preinstr_n_15 = ~preinstr[15];

// INS_EXEC.NET (180) - movei : an6
assign movei = preinstr_n_10 & preinstr[11] & preinstr[12] & preinstr_n_13 & preinstr_n_14 & preinstr[15];

// INS_EXEC.NET (182) - moveild\ : nd2
assign moveild_n = ~(movei & romoldb_2);

// INS_EXEC.NET (183) - moveild : iv
assign moveild = ~moveild_n;

// INS_EXEC.NET (185) - romold\ : iv
assign romold_n = ~romoldb_2;

// INS_EXEC.NET (187) - idlet0 : nd2
assign idlet_0 = ~(await2 & romoldb_2);

// INS_EXEC.NET (188) - idlet1 : nd2
assign idlet_1 = ~(idle & moveild_n);

// INS_EXEC.NET (189) - idlet2 : nd2
assign idlet_2 = ~(idlet_0 & idlet_1);

// INS_EXEC.NET (190) - idle : fd4q
fd4q idle_inst
(
	.q(idle), // OUT
	.d(idlet_2), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// INS_EXEC.NET (192) - await1t0 : nd2
assign await1t_0 = ~(idle & moveild);

// INS_EXEC.NET (193) - await1t1 : nd2
assign await1t_1 = ~(await1 & romold_n);

// INS_EXEC.NET (194) - await1t2 : nd2
assign await1t_2 = ~(await1t_0 & await1t_1);

// INS_EXEC.NET (195) - await1 : fd2q
fd2q await1_inst
(
	.q(await1), // OUT
	.d(await1t_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (197) - await2t0 : nd2
assign await2t_0 = ~(await1 & romoldb_2);

// INS_EXEC.NET (198) - await2t1 : nd2
assign await2t_1 = ~(await2 & romold_n);

// INS_EXEC.NET (199) - await2t2 : nd2
assign await2t_2 = ~(await2t_0 & await2t_1);

// INS_EXEC.NET (200) - await2 : fd2q
fd2q await2_inst
(
	.q(await2), // OUT
	.d(await2t_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (202) - atomict[0] : an2
assign atomict_0 = movei & insrdy;

// INS_EXEC.NET (203) - atomict[1] : an2
assign atomict_1 = await2 & romold_n;

// INS_EXEC.NET (204) - movei_atomic : or3
assign movei_atomic = atomict_0 | atomict_1 | await1;

// INS_EXEC.NET (205) - movei_data : or2
assign movei_data = await1 | await2;

// INS_EXEC.NET (206) - atomic : or6
assign atomic = movei_atomic | mtx_atomic | mult_atomic | jump_atomic | jump_ins | jump_insp;

// INS_EXEC.NET (214) - multnt : eo
assign multnt = preinstr[11] ^ preinstr[12];

// INS_EXEC.NET (215) - multn : an5
an5 multn_inst
(
	.q(multn), // OUT
	.a_0(preinstr_n_10), // IN
	.a_1(multnt), // IN
	.a_2(preinstr_n_13), // IN
	.a_3(preinstr[14]), // IN
	.a_4(preinstr_n_15)  // IN
);

// INS_EXEC.NET (218) - multn\ : iv
assign multn_n = ~multn;

// INS_EXEC.NET (219) - multaset : an3
assign multaset = romoldb_2 & multn & idle;

// INS_EXEC.NET (220) - multaclr : an2
assign multaclr = romoldb_2 & multn_n;

// INS_EXEC.NET (221) - multa : cp_latch
cp_latch multa_inst
(
	.q(multa), // IO
	.set(multaset), // IN
	.clear(multaclr), // IN
	.clock(clk), // IN
	.reset_n(reset_n)  // IN
);

// INS_EXEC.NET (223) - mult_atomic : or2
assign mult_atomic = multa | multaset;

// INS_EXEC.NET (227) - interrupt : interrupt
interrupt interrupt_inst
(
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
	.imaski(imaski), // IO
	.intins({intins[0],intins[1],intins[2],intins[3],intins[4],intins[5],intins[6],intins[7],intins[8],intins[9],intins[10],intins[11],intins[12],intins[13],intins[14],intins[15]}), // OUT
	.intser(intser), // IO
	.atomic(atomic), // IN
	.clk(clk), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.flagrd(flagrd), // IN
	.flagwr(flagwr), // IN
	.gpu_irq_0(gpu_irq_0), // IN
	.gpu_irq_1(gpu_irq_1), // IN
	.gpu_irq_2(gpu_irq_2), // IN
	.gpu_irq_3(gpu_irq_3), // IN
	.gpu_irq_4(gpu_irq_4), // IN
	.reset_n(reset_n), // IN
	.romold(romoldb_2), // IN
	.statrd(statrd)  // IN
);

// INS_EXEC.NET (234) - systolic : systolic
systolic systolic_inst
(
	.mtx_atomic(mtx_atomic), // OUT
	.mtx_dover(mtx_dover), // IO
	.mtx_wait(mtx_wait), // OUT
	.mtxaddr_2(mtxaddr_2), // OUT
	.mtxaddr_3(mtxaddr_3), // OUT
	.mtxaddr_4(mtxaddr_4), // OUT
	.mtxaddr_5(mtxaddr_5), // OUT
	.mtxaddr_6(mtxaddr_6), // OUT
	.mtxaddr_7(mtxaddr_7), // OUT
	.mtxaddr_8(mtxaddr_8), // OUT
	.mtxaddr_9(mtxaddr_9), // OUT
	.mtxaddr_10(mtxaddr_10), // OUT
	.mtxaddr_11(mtxaddr_11), // OUT
	.mtx_mreq(mtx_mreq), // IO
	.multsel(multsel), // OUT
	.sysins({sysins[0],sysins[1],sysins[2],sysins[3],sysins[4],sysins[5],sysins[6],sysins[7],sysins[8],sysins[9],sysins[10],sysins[11],sysins[12],sysins[13],sysins[14],sysins[15]}), // OUT
	.sysser(sysser), // OUT
	.movei_data(movei_data), // IN
	.clk(clk), // IN
	.datack(datack), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.instruction({preinstr[0],preinstr[1],preinstr[2],preinstr[3],preinstr[4],preinstr[5],preinstr[6],preinstr[7],preinstr[8],preinstr[9],preinstr[10],preinstr[11],preinstr[12],preinstr[13],preinstr[14],preinstr[15]}), // IN
	.mtxawr(mtxawr), // IN
	.mtxcwr(mtxcwr), // IN
	.reset_n(reset_n), // IN
	.romold(sromold)  // IN
);

// INS_EXEC.NET (239) - mtx_mreq\ : iv
assign mtx_mreq_n = ~mtx_mreq;

// INS_EXEC.NET (240) - mtx_doveri : join
assign mtx_doveri = mtx_mreq;

// INS_EXEC.NET (246) - instruction : mx4p
mx4 instruction_inst_0
(
	.z(instruction[0]), // OUT
	.a0(preinstr[0]), // IN
	.a1(sysins[0]), // IN
	.a2(intins[0]), // IN
	.a3(intins[0]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_1
(
	.z(instruction[1]), // OUT
	.a0(preinstr[1]), // IN
	.a1(sysins[1]), // IN
	.a2(intins[1]), // IN
	.a3(intins[1]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_2
(
	.z(instruction[2]), // OUT
	.a0(preinstr[2]), // IN
	.a1(sysins[2]), // IN
	.a2(intins[2]), // IN
	.a3(intins[2]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_3
(
	.z(instruction[3]), // OUT
	.a0(preinstr[3]), // IN
	.a1(sysins[3]), // IN
	.a2(intins[3]), // IN
	.a3(intins[3]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_4
(
	.z(instruction[4]), // OUT
	.a0(preinstr[4]), // IN
	.a1(sysins[4]), // IN
	.a2(intins[4]), // IN
	.a3(intins[4]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_5
(
	.z(instruction[5]), // OUT
	.a0(preinstr[5]), // IN
	.a1(sysins[5]), // IN
	.a2(intins[5]), // IN
	.a3(intins[5]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_6
(
	.z(instruction[6]), // OUT
	.a0(preinstr[6]), // IN
	.a1(sysins[6]), // IN
	.a2(intins[6]), // IN
	.a3(intins[6]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_7
(
	.z(instruction[7]), // OUT
	.a0(preinstr[7]), // IN
	.a1(sysins[7]), // IN
	.a2(intins[7]), // IN
	.a3(intins[7]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_8
(
	.z(instruction[8]), // OUT
	.a0(preinstr[8]), // IN
	.a1(sysins[8]), // IN
	.a2(intins[8]), // IN
	.a3(intins[8]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_9
(
	.z(instruction[9]), // OUT
	.a0(preinstr[9]), // IN
	.a1(sysins[9]), // IN
	.a2(intins[9]), // IN
	.a3(intins[9]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_10
(
	.z(instruction[10]), // OUT
	.a0(preinstr[10]), // IN
	.a1(sysins[10]), // IN
	.a2(intins[10]), // IN
	.a3(intins[10]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_11
(
	.z(instruction[11]), // OUT
	.a0(preinstr[11]), // IN
	.a1(sysins[11]), // IN
	.a2(intins[11]), // IN
	.a3(intins[11]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_12
(
	.z(instruction[12]), // OUT
	.a0(preinstr[12]), // IN
	.a1(sysins[12]), // IN
	.a2(intins[12]), // IN
	.a3(intins[12]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_13
(
	.z(instruction[13]), // OUT
	.a0(preinstr[13]), // IN
	.a1(sysins[13]), // IN
	.a2(intins[13]), // IN
	.a3(intins[13]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_14
(
	.z(instruction[14]), // OUT
	.a0(preinstr[14]), // IN
	.a1(sysins[14]), // IN
	.a2(intins[14]), // IN
	.a3(intins[14]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);
mx4 instruction_inst_15
(
	.z(instruction[15]), // OUT
	.a0(preinstr[15]), // IN
	.a1(sysins[15]), // IN
	.a2(intins[15]), // IN
	.a3(intins[15]), // IN
	.s0(sysser), // IN
	.s1(intser)  // IN
);

// INS_EXEC.NET (252) - intser\ : iv
assign intser_n = ~intser;

// INS_EXEC.NET (253) - sysser\ : iv
assign sysser_n = ~sysser;

// INS_EXEC.NET (254) - promold : nd3p
assign promold_n = ~(romold & intser_n & sysser_n);

// INS_EXEC.NET (259) - sromold : an2h
assign sromold = romoldb_2 & intser_n;

// INS_EXEC.NET (263) - opcodei : join
assign opcodei[0] = instruction[10];
assign opcodei[1] = instruction[11];
assign opcodei[2] = instruction[12];
assign opcodei[3] = instruction[13];
assign opcodei[4] = instruction[14];
assign opcodei[5] = instruction[15];

// INS_EXEC.NET (264) - srcopi : join
assign srcopi[0] = instruction[5];
assign srcopi[1] = instruction[6];
assign srcopi[2] = instruction[7];
assign srcopi[3] = instruction[8];
assign srcopi[4] = instruction[9];

// INS_EXEC.NET (265) - dstopi : join
assign dstopi[0] = instruction[0];
assign dstopi[1] = instruction[1];
assign dstopi[2] = instruction[2];
assign dstopi[3] = instruction[3];
assign dstopi[4] = instruction[4];

// INS_EXEC.NET (270) - mcode : ra6032a
ra6032a mcode_inst
(
	.z({romword[0],romword[1],romword[2],romword[3],romword[4],romword[5],romword[6],romword[7],romword[8],romword[9],romword[10],romword[11],romword[12],romword[13],romword[14],romword[15],romword[16],romword[17],romword[18],romword[19],romword[20],romword[21],romword[22],romword[23],romword[24],romword[25],romword[26]}), // OUT
	.clk(clk), // IN
	.a0(opcodei[0]), // IN
	.a1(opcodei[1]), // IN
	.a2(opcodei[2]), // IN
	.a3(opcodei[3]), // IN
	.a4(opcodei[4]), // IN
	.a5(opcodei[5])  // IN
);

// INS_EXEC.NET (271) - romword : join
assign romword27[0] = romword[0];
assign romword27[1] = romword[1];
assign romword27[2] = romword[2];
assign romword27[3] = romword[3];
assign romword27[4] = romword[4];
assign romword27[5] = romword[5];
assign romword27[6] = romword[6];
assign romword27[7] = romword[7];
assign romword27[8] = romword[8];
assign romword27[9] = romword[9];
assign romword27[10] = romword[10];
assign romword27[11] = romword[11];
assign romword27[12] = romword[12];
assign romword27[13] = romword[13];
assign romword27[14] = romword[14];
assign romword27[15] = romword[15];
assign romword27[16] = romword[16];
assign romword27[17] = romword[17];
assign romword27[18] = romword[18];
assign romword27[19] = romword[19];
assign romword27[20] = romword[20];
assign romword27[21] = romword[21];
assign romword27[22] = romword[22];
assign romword27[23] = romword[23];
assign romword27[24] = romword[24];
assign romword27[25] = romword[25];
assign romword27[26] = romword[26];

// INS_EXEC.NET (275) - mwordi : mx2p
mx2 mwordi_inst_0
(
	.z(mwordi[0]), // OUT
	.a0(microword[0]), // IN
	.a1(romword27[0]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_1
(
	.z(mwordi[1]), // OUT
	.a0(microword[1]), // IN
	.a1(romword27[1]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_2
(
	.z(mwordi[2]), // OUT
	.a0(microword[2]), // IN
	.a1(romword27[2]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_3
(
	.z(mwordi[3]), // OUT
	.a0(microword[3]), // IN
	.a1(romword27[3]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_4
(
	.z(mwordi[4]), // OUT
	.a0(microword[4]), // IN
	.a1(romword27[4]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_5
(
	.z(mwordi[5]), // OUT
	.a0(microword[5]), // IN
	.a1(romword27[5]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_6
(
	.z(mwordi[6]), // OUT
	.a0(microword[6]), // IN
	.a1(romword27[6]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_7
(
	.z(mwordi[7]), // OUT
	.a0(microword[7]), // IN
	.a1(romword27[7]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_8
(
	.z(mwordi[8]), // OUT
	.a0(microword[8]), // IN
	.a1(romword27[8]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_9
(
	.z(mwordi[9]), // OUT
	.a0(microword[9]), // IN
	.a1(romword27[9]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_10
(
	.z(mwordi[10]), // OUT
	.a0(microword[10]), // IN
	.a1(romword27[10]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_11
(
	.z(mwordi[11]), // OUT
	.a0(microword[11]), // IN
	.a1(romword27[11]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_12
(
	.z(mwordi[12]), // OUT
	.a0(microword[12]), // IN
	.a1(romword27[12]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_13
(
	.z(mwordi[13]), // OUT
	.a0(microword[13]), // IN
	.a1(romword27[13]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_14
(
	.z(mwordi[14]), // OUT
	.a0(microword[14]), // IN
	.a1(romword27[14]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_15
(
	.z(mwordi[15]), // OUT
	.a0(microword[15]), // IN
	.a1(romword27[15]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_16
(
	.z(mwordi[16]), // OUT
	.a0(microword[16]), // IN
	.a1(romword27[16]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_17
(
	.z(mwordi[17]), // OUT
	.a0(microword[17]), // IN
	.a1(romword27[17]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_18
(
	.z(mwordi[18]), // OUT
	.a0(microword[18]), // IN
	.a1(romword27[18]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_19
(
	.z(mwordi[19]), // OUT
	.a0(microword[19]), // IN
	.a1(romword27[19]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_20
(
	.z(mwordi[20]), // OUT
	.a0(microword[20]), // IN
	.a1(romword27[20]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_21
(
	.z(mwordi[21]), // OUT
	.a0(microword[21]), // IN
	.a1(romword27[21]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_22
(
	.z(mwordi[22]), // OUT
	.a0(microword[22]), // IN
	.a1(romword27[22]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_23
(
	.z(mwordi[23]), // OUT
	.a0(microword[23]), // IN
	.a1(romword27[23]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_24
(
	.z(mwordi[24]), // OUT
	.a0(microword[24]), // IN
	.a1(romword27[24]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_25
(
	.z(mwordi[25]), // OUT
	.a0(microword[25]), // IN
	.a1(romword27[25]), // IN
	.s(romoldb_0)  // IN
);
mx2 mwordi_inst_26
(
	.z(mwordi[26]), // OUT
	.a0(microword[26]), // IN
	.a1(romword27[26]), // IN
	.s(romoldb_0)  // IN
);

// INS_EXEC.NET (276) - mcodepipe : fd2qp
fd2q mcodepipe_inst_0
(
	.q(microword[0]), // OUT
	.d(mwordi[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_1
(
	.q(microword[1]), // OUT
	.d(mwordi[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_2
(
	.q(microword[2]), // OUT
	.d(mwordi[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_3
(
	.q(microword[3]), // OUT
	.d(mwordi[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_4
(
	.q(microword[4]), // OUT
	.d(mwordi[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_5
(
	.q(microword[5]), // OUT
	.d(mwordi[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_6
(
	.q(microword[6]), // OUT
	.d(mwordi[6]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_7
(
	.q(microword[7]), // OUT
	.d(mwordi[7]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_8
(
	.q(microword[8]), // OUT
	.d(mwordi[8]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_9
(
	.q(microword[9]), // OUT
	.d(mwordi[9]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_10
(
	.q(microword[10]), // OUT
	.d(mwordi[10]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_11
(
	.q(microword[11]), // OUT
	.d(mwordi[11]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_12
(
	.q(microword[12]), // OUT
	.d(mwordi[12]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_13
(
	.q(microword[13]), // OUT
	.d(mwordi[13]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_14
(
	.q(microword[14]), // OUT
	.d(mwordi[14]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_15
(
	.q(microword[15]), // OUT
	.d(mwordi[15]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_16
(
	.q(microword[16]), // OUT
	.d(mwordi[16]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_17
(
	.q(microword[17]), // OUT
	.d(mwordi[17]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_18
(
	.q(microword[18]), // OUT
	.d(mwordi[18]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_19
(
	.q(microword[19]), // OUT
	.d(mwordi[19]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_20
(
	.q(microword[20]), // OUT
	.d(mwordi[20]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_21
(
	.q(microword[21]), // OUT
	.d(mwordi[21]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_22
(
	.q(microword[22]), // OUT
	.d(mwordi[22]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_23
(
	.q(microword[23]), // OUT
	.d(mwordi[23]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_24
(
	.q(microword[24]), // OUT
	.d(mwordi[24]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_25
(
	.q(microword[25]), // OUT
	.d(mwordi[25]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q mcodepipe_inst_26
(
	.q(microword[26]), // OUT
	.d(mwordi[26]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (277) - srcopin : mx2
mx2 srcopin_inst_0
(
	.z(srcopin[0]), // OUT
	.a0(srcopb[0]), // IN
	.a1(srcopi[0]), // IN
	.s(romoldb_4)  // IN
);
mx2 srcopin_inst_1
(
	.z(srcopin[1]), // OUT
	.a0(srcopb[1]), // IN
	.a1(srcopi[1]), // IN
	.s(romoldb_4)  // IN
);
mx2 srcopin_inst_2
(
	.z(srcopin[2]), // OUT
	.a0(srcopb[2]), // IN
	.a1(srcopi[2]), // IN
	.s(romoldb_4)  // IN
);
mx2 srcopin_inst_3
(
	.z(srcopin[3]), // OUT
	.a0(srcopb[3]), // IN
	.a1(srcopi[3]), // IN
	.s(romoldb_4)  // IN
);
mx2 srcopin_inst_4
(
	.z(srcopin[4]), // OUT
	.a0(srcopb[4]), // IN
	.a1(srcopi[4]), // IN
	.s(romoldb_4)  // IN
);

// INS_EXEC.NET (278) - srcop : fd2qp
fd2q srcop_inst_0
(
	.q(srcop[0]), // OUT
	.d(srcopin[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q srcop_inst_1
(
	.q(srcop[1]), // OUT
	.d(srcopin[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q srcop_inst_2
(
	.q(srcop[2]), // OUT
	.d(srcopin[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q srcop_inst_3
(
	.q(srcop[3]), // OUT
	.d(srcopin[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q srcop_inst_4
(
	.q(srcop[4]), // OUT
	.d(srcopin[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (279) - srcopb : nivm
assign srcopb[0] = srcop[0];
assign srcopb[1] = srcop[1];
assign srcopb[2] = srcop[2];
assign srcopb[3] = srcop[3];
assign srcopb[4] = srcop[4];

// INS_EXEC.NET (280) - dstopin : mx2p
mx2 dstopin_inst_0
(
	.z(dstopin[0]), // OUT
	.a0(dstopb[0]), // IN
	.a1(dstopi[0]), // IN
	.s(romoldb_3)  // IN
);
mx2 dstopin_inst_1
(
	.z(dstopin[1]), // OUT
	.a0(dstopb[1]), // IN
	.a1(dstopi[1]), // IN
	.s(romoldb_3)  // IN
);
mx2 dstopin_inst_2
(
	.z(dstopin[2]), // OUT
	.a0(dstopb[2]), // IN
	.a1(dstopi[2]), // IN
	.s(romoldb_3)  // IN
);
mx2 dstopin_inst_3
(
	.z(dstopin[3]), // OUT
	.a0(dstopb[3]), // IN
	.a1(dstopi[3]), // IN
	.s(romoldb_3)  // IN
);
mx2 dstopin_inst_4
(
	.z(dstopin[4]), // OUT
	.a0(dstopb[4]), // IN
	.a1(dstopi[4]), // IN
	.s(romoldb_3)  // IN
);

// INS_EXEC.NET (281) - dstop : fd2qp
fd2q dstop_inst_0
(
	.q(dstop[0]), // OUT
	.d(dstopin[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q dstop_inst_1
(
	.q(dstop[1]), // OUT
	.d(dstopin[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q dstop_inst_2
(
	.q(dstop[2]), // OUT
	.d(dstopin[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q dstop_inst_3
(
	.q(dstop[3]), // OUT
	.d(dstopin[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q dstop_inst_4
(
	.q(dstop[4]), // OUT
	.d(dstopin[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (282) - dstopb : nivm
assign dstopb[0] = dstop[0];
assign dstopb[1] = dstop[1];
assign dstopb[2] = dstop[2];
assign dstopb[3] = dstop[3];
assign dstopb[4] = dstop[4];

// INS_EXEC.NET (283) - opcodein : mx2
mx2 opcodein_inst_0
(
	.z(opcodein[0]), // OUT
	.a0(opcode[0]), // IN
	.a1(opcodei[0]), // IN
	.s(romoldb_0)  // IN
);
mx2 opcodein_inst_1
(
	.z(opcodein[1]), // OUT
	.a0(opcode[1]), // IN
	.a1(opcodei[1]), // IN
	.s(romoldb_0)  // IN
);
mx2 opcodein_inst_2
(
	.z(opcodein[2]), // OUT
	.a0(opcode[2]), // IN
	.a1(opcodei[2]), // IN
	.s(romoldb_0)  // IN
);
mx2 opcodein_inst_3
(
	.z(opcodein[3]), // OUT
	.a0(opcode[3]), // IN
	.a1(opcodei[3]), // IN
	.s(romoldb_0)  // IN
);
mx2 opcodein_inst_4
(
	.z(opcodein[4]), // OUT
	.a0(opcode[4]), // IN
	.a1(opcodei[4]), // IN
	.s(romoldb_0)  // IN
);
mx2 opcodein_inst_5
(
	.z(opcodein[5]), // OUT
	.a0(opcode[5]), // IN
	.a1(opcodei[5]), // IN
	.s(romoldb_0)  // IN
);

// INS_EXEC.NET (284) - opcode : fd2q
fd2q opcode_inst_0
(
	.q(opcode[0]), // OUT
	.d(opcodein[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q opcode_inst_1
(
	.q(opcode[1]), // OUT
	.d(opcodein[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q opcode_inst_2
(
	.q(opcode[2]), // OUT
	.d(opcodein[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q opcode_inst_3
(
	.q(opcode[3]), // OUT
	.d(opcodein[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q opcode_inst_4
(
	.q(opcode[4]), // OUT
	.d(opcodein[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q opcode_inst_5
(
	.q(opcode[5]), // OUT
	.d(opcodein[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (285) - opcode\[1] : iv
assign opcode_n_1 = ~opcode[1];

// INS_EXEC.NET (286) - opcode\[3] : iv
assign opcode_n_3 = ~opcode[3];

// INS_EXEC.NET (287) - opcode\[5] : iv
assign opcode_n_5 = ~opcode[5];

// INS_EXEC.NET (289) - dbgrd[16-21] : ts
assign gpu_dout_16 = (dbgrd) ? opcode[0] : 1'bz;
assign gpu_dout_17 = (dbgrd) ? opcode[1] : 1'bz;
assign gpu_dout_18 = (dbgrd) ? opcode[2] : 1'bz;
assign gpu_dout_19 = (dbgrd) ? opcode[3] : 1'bz;
assign gpu_dout_20 = (dbgrd) ? opcode[4] : 1'bz;
assign gpu_dout_21 = (dbgrd) ? opcode[5] : 1'bz;

// INS_EXEC.NET (291) - ressel[0] : or2
assign ressel_0 = unpack | microword[0];

// INS_EXEC.NET (292) - ressel[1-2] : join
assign ressel_1 = microword[1];
assign ressel_2 = microword[2];

// INS_EXEC.NET (293) - brlmux[0-1] : join
assign brlmux_0 = microword[3];
assign brlmux_1 = microword[4];

// INS_EXEC.NET (294) - multsign : niv
assign multsign = microword[4];

// INS_EXEC.NET (295) - msizet[0-1] : join
assign msizet_0 = microword[3];
assign msizet_1 = microword[4];

// INS_EXEC.NET (296) - satsz[0] : join
assign satsz_0 = microword[5];

// INS_EXEC.NET (297) - mac : an2
assign macop = exe_obuf & microword[6];

// INS_EXEC.NET (298) - alufunc : join
assign alufunc_b0_obuf = microword[7];
assign alufunc[1] = microword[8];
assign alufunc_b2_obuf = microword[9];

// INS_EXEC.NET (300) - flagld : an2
assign flagld = exe_obuf & microword[11];

// INS_EXEC.NET (301) - resld : an2
assign resld = exe_obuf & microword[12];

// INS_EXEC.NET (302) - srcdat[0-3] : niv
assign srcdat_0 = microword[13];
assign srcdat_1 = microword[14];
assign srcdat_2 = microword[15];
assign srcdat_3 = microword[16];

// INS_EXEC.NET (303) - srcrrdt : nr4
assign srcrrdt = ~(microword[13] | microword[14] | microword[15] | microword[16]);

// INS_EXEC.NET (304) - srcrrd : niv
assign srcrrd = srcrrdt;

// INS_EXEC.NET (305) - reswr : an2
assign reswr = insexe & microword[17];

// INS_EXEC.NET (306) - dstrrd : join
assign dstrrd = microword[18];

// INS_EXEC.NET (307) - dstrrdi : join
assign dstrrdi = mwordi[18];

// INS_EXEC.NET (308) - memrw : an2p
assign memrw_obuf = insexe & microword[19];

// INS_EXEC.NET (309) - memrw\ : iv
assign memrw_n = ~memrw_obuf;

// INS_EXEC.NET (310) - datwet : an2
assign datwet = go & microword[20];

// INS_EXEC.NET (311) - datwe_raw : an2
assign datwe_raw = insexe & microword[20];

// INS_EXEC.NET (312) - precomp : nivu
assign precomp_obuf = microword[21];

// INS_EXEC.NET (313) - immld : join
assign immld_obuf = microword[22];

// INS_EXEC.NET (314) - jumprel : an3
assign jumprel = exe_obuf & jump_ena & microword[23];

// INS_EXEC.NET (315) - jumpabs : an3
assign jumpabs = exe_obuf & jump_ena & microword[24];

// INS_EXEC.NET (316) - dstwen : an2
assign dstwen_obuf = insexe & microword[25];

// INS_EXEC.NET (317) - dstrwr : niv
assign dstrwr = microword[25];

// INS_EXEC.NET (318) - dstrwri : join
assign dstrwri = mwordi[25];

// INS_EXEC.NET (319) - dsttinv : an2
assign dsttinv = microword[1] & dstwen_obuf;

// INS_EXEC.NET (320) - satsz[1] : join
assign satsz_1 = microword[26];

// INS_EXEC.NET (332) - opcd[0-4] : niv
assign opcd_0 = opcodei[0];
assign opcd_1 = opcodei[1];
assign opcd_2 = opcodei[2];
assign opcd_3 = opcodei[3];
assign opcd_4 = opcodei[4];

// INS_EXEC.NET (333) - opcd[5] : nivm
assign opcd_5 = opcodei[5];

// INS_EXEC.NET (334) - opcd\[0-4] : iv
assign opcd_n_0 = ~opcd_0;
assign opcd_n_1 = ~opcd_1;
assign opcd_n_2 = ~opcd_2;
assign opcd_n_3 = ~opcd_3;
assign opcd_n_4 = ~opcd_4;

// INS_EXEC.NET (340) - idc\[36] : nd6
assign idc_n_36 = ~(opcd_5 & opcd_n_4 & opcd_n_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// INS_EXEC.NET (342) - idc\[37] : nd6
assign idc_n_37 = ~(opcd_5 & opcd_n_4 & opcd_n_3 & opcd_2 & opcd_n_1 & opcd_0);

// INS_EXEC.NET (344) - idc\[43] : nd6
assign idc_n_43 = ~(opcd_5 & opcd_n_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_0);

// INS_EXEC.NET (346) - idc\[44] : nd6
assign idc_n_44 = ~(opcd_5 & opcd_n_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// INS_EXEC.NET (348) - idc\[49] : nd6
assign idc_n_49 = ~(opcd_5 & opcd_4 & opcd_n_3 & opcd_n_2 & opcd_n_1 & opcd_0);

// INS_EXEC.NET (350) - idc\[50] : nd6
assign idc_n_50 = ~(opcd_5 & opcd_4 & opcd_n_3 & opcd_n_2 & opcd_1 & opcd_n_0);

// INS_EXEC.NET (352) - idc\[58] : nd6
assign idc_n_58 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_n_0);

// INS_EXEC.NET (354) - idc\[59] : nd6
assign idc_n_59 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_n_2 & opcd_1 & opcd_0);

// INS_EXEC.NET (356) - idc\[60] : nd6
assign idc_n_60 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_n_0);

// INS_EXEC.NET (358) - idc\[61] : nd6
assign idc_n_61 = ~(opcd_5 & opcd_4 & opcd_3 & opcd_2 & opcd_n_1 & opcd_0);

// INS_EXEC.NET (362) - precompit0 : an4
assign precompit_0 = idc_n_43 & idc_n_44 & idc_n_49 & idc_n_50;

// INS_EXEC.NET (363) - precompit1 : an4
assign precompit_1 = idc_n_58 & idc_n_59 & idc_n_60 & idc_n_61;

// INS_EXEC.NET (364) - precompit : nd2
assign precompit = ~(precompit_0 & precompit_1);

// INS_EXEC.NET (365) - precompi : mx2
mx2 precompi_inst
(
	.z(precompi), // OUT
	.a0(precompil), // IN
	.a1(precompit), // IN
	.s(romoldb_1)  // IN
);

// INS_EXEC.NET (367) - precompil : fd2q
fd2q precompil_inst
(
	.q(precompil), // OUT
	.d(precompi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (377) - dsttinvit : iv
assign dsttinvit = ~idc_n_36;

// INS_EXEC.NET (378) - dsttinvi : mx2
mx2 dsttinvi_inst
(
	.z(dsttinvi), // OUT
	.a0(dsttinvil), // IN
	.a1(dsttinvit), // IN
	.s(romoldb_1)  // IN
);

// INS_EXEC.NET (380) - dsttinvil : fd2q
fd2q dsttinvil_inst
(
	.q(dsttinvil), // OUT
	.d(dsttinvi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (384) - srctinvit : iv
assign srctinvit = ~idc_n_37;

// INS_EXEC.NET (385) - srctinvi : mx2
mx2 srctinvi_inst
(
	.z(srctinvi), // OUT
	.a0(srctinvil), // IN
	.a1(srctinvit), // IN
	.s(romoldb_1)  // IN
);

// INS_EXEC.NET (387) - srctinvil : fd2q
fd2q srctinvil_inst
(
	.q(srctinvil), // OUT
	.d(srctinvi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (391) - indselit : nd4
assign indselit = ~(idc_n_44 & idc_n_50 & idc_n_59 & idc_n_61);

// INS_EXEC.NET (393) - indseli : mx2
mx2 indseli_inst
(
	.z(indseli), // OUT
	.a0(indselil), // IN
	.a1(indselit), // IN
	.s(romoldb_1)  // IN
);

// INS_EXEC.NET (395) - indselil : fd2q
fd2q indselil_inst
(
	.q(indselil), // OUT
	.d(indseli), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (399) - unpack : an7
assign unpack = opcode[0] & opcode[1] & opcode[2] & opcode[3] & opcode[4] & opcode[5] & srcopb[0];

// INS_EXEC.NET (414) - datwet[0] : nd4
assign datwet_0 = ~(mtx_mreq_n & datwet & exeb_1 & memrw_obuf);

// INS_EXEC.NET (416) - exe\ : iv
assign exe_n = ~exeb_1;

// INS_EXEC.NET (417) - datwet[1] : nd3
assign datwet_1 = ~(mtx_mreq_n & datwelat & exe_n);

// INS_EXEC.NET (418) - datwet[2] : nd3
assign datwet_2 = ~(mtx_mreq_n & datwelat & memrw_n);

// INS_EXEC.NET (419) - datwe : nd3p
assign datwe = ~(datwet_0 & datwet_1 & datwet_2);

// INS_EXEC.NET (421) - datweb : niv
assign datweb_obuf = datwe;

// INS_EXEC.NET (422) - datwel : fd1q
fd1q datwel_inst
(
	.q(datwelat), // OUT
	.d(datweb_obuf), // IN
	.cp(clk)  // IN
);

// INS_EXEC.NET (424) - datwec : an2p
assign datwec = exe_obuf & memrw_obuf;

// INS_EXEC.NET (425) - msize[0-1] : fdsync
fdsync msize_from_0_to_1_inst_0
(
	.q(msize_0), // IO
	.d(msizet_0), // IN
	.ld(datwec), // IN
	.clk(clk)  // IN
);
fdsync msize_from_0_to_1_inst_1
(
	.q(msize_1), // IO
	.d(msizet_1), // IN
	.ld(datwec), // IN
	.clk(clk)  // IN
);

// INS_EXEC.NET (430) - microword\[8] : iv
assign microword_n_8 = ~microword[8];

// INS_EXEC.NET (431) - microword\[15] : iv
assign microword_n_15 = ~microword[15];

// INS_EXEC.NET (432) - alufunc2\ : or3
assign alufunc2_n = microword[7] | microword_n_8 | microword[9];

// INS_EXEC.NET (434) - alufunc7\ : nd3
assign alufunc7_n = ~(microword[7] & microword[8] & microword[9]);

// INS_EXEC.NET (435) - rev_subt : nd2
assign rev_subt = ~(alufunc2_n & alufunc7_n);

// INS_EXEC.NET (436) - srcdat4 : nr4
assign srcdat4 = ~(microword[13] | microword[14] | microword_n_15 | microword[16]);

// INS_EXEC.NET (438) - rev_sub : an2
assign rev_sub = rev_subt & srcdat4;

// INS_EXEC.NET (443) - div_instr : an6
assign div_instr_obuf = opcode[0] & opcode_n_1 & opcode[2] & opcode_n_3 & opcode[4] & opcode_n_5;

// INS_EXEC.NET (446) - div_start : an2m
assign div_start = exe_obuf & div_instr_obuf;

// INS_EXEC.NET (452) - conditional : or5
or5 conditional_inst
(
	.z(conditional), // IO
	.a(dstopb[0]), // IN
	.b(dstopb[1]), // IN
	.c(dstopb[2]), // IN
	.d(dstopb[3]), // IN
	.e(dstopb[4])  // IN
);

// INS_EXEC.NET (453) - jump : or2
assign jump = microword[23] | microword[24];

// INS_EXEC.NET (454) - fdt0 : nd2
assign fdt_0 = ~(conditional & jump);

// INS_EXEC.NET (455) - alufunc\[2] : iv
assign alufunc_n_2 = ~alufunc_b2_obuf;

// INS_EXEC.NET (456) - fdt1 : nd2
assign fdt_1 = ~(alufunc_b0_obuf & alufunc_n_2);

// INS_EXEC.NET (457) - flag_depend : nd2
assign flag_depend = ~(fdt_0 & fdt_1);

// INS_EXEC.NET (461) - insval : join
assign insval[0] = dstopb[0];
assign insval[1] = dstopb[1];
assign insval[2] = dstopb[2];
assign insval[3] = dstopb[3];
assign insval[4] = dstopb[4];
assign insval[5] = srcopb[0];
assign insval[6] = srcopb[1];
assign insval[7] = srcopb[2];
assign insval[8] = srcopb[3];
assign insval[9] = srcopb[4];
assign insval[10] = opcode[0];
assign insval[11] = opcode[1];
assign insval[12] = opcode[2];
assign insval[13] = opcode[3];
assign insval[14] = opcode[4];
assign insval[15] = opcode[5];

// INS_EXEC.NET (462) - immlo : fdsync16
fdsync16 immlo_inst
(
	.q({immlo[0],immlo[1],immlo[2],immlo[3],immlo[4],immlo[5],immlo[6],immlo[7],immlo[8],immlo[9],immlo[10],immlo[11],immlo[12],immlo[13],immlo[14],immlo[15]}), // IO
	.d({insval[0],insval[1],insval[2],insval[3],insval[4],insval[5],insval[6],insval[7],insval[8],insval[9],insval[10],insval[11],insval[12],insval[13],insval[14],insval[15]}), // IN
	.ld(loimmld), // IN
	.clk(clk)  // IN
);

// INS_EXEC.NET (463) - immdata : join
assign immdata[0] = immlo[0];
assign immdata[1] = immlo[1];
assign immdata[2] = immlo[2];
assign immdata[3] = immlo[3];
assign immdata[4] = immlo[4];
assign immdata[5] = immlo[5];
assign immdata[6] = immlo[6];
assign immdata[7] = immlo[7];
assign immdata[8] = immlo[8];
assign immdata[9] = immlo[9];
assign immdata[10] = immlo[10];
assign immdata[11] = immlo[11];
assign immdata[12] = immlo[12];
assign immdata[13] = immlo[13];
assign immdata[14] = immlo[14];
assign immdata[15] = immlo[15];
assign immdata[16] = insval[0];
assign immdata[17] = insval[1];
assign immdata[18] = insval[2];
assign immdata[19] = insval[3];
assign immdata[20] = insval[4];
assign immdata[21] = insval[5];
assign immdata[22] = insval[6];
assign immdata[23] = insval[7];
assign immdata[24] = insval[8];
assign immdata[25] = insval[9];
assign immdata[26] = insval[10];
assign immdata[27] = insval[11];
assign immdata[28] = insval[12];
assign immdata[29] = insval[13];
assign immdata[30] = insval[14];
assign immdata[31] = insval[15];

// INS_EXEC.NET (467) - srcdgen : srcdgen
srcdgen srcdgen_inst
(
	.locdent(locdent), // OUT
	.locsrc({locsrc[0],locsrc[1],locsrc[2],locsrc[3],locsrc[4],locsrc[5],locsrc[6],locsrc[7],locsrc[8],locsrc[9],locsrc[10],locsrc[11],locsrc[12],locsrc[13],locsrc[14],locsrc[15],locsrc[16],locsrc[17],locsrc[18],locsrc[19],locsrc[20],locsrc[21],locsrc[22],locsrc[23],locsrc[24],locsrc[25],locsrc[26],locsrc[27],locsrc[28],locsrc[29],locsrc[30],locsrc[31]}), // OUT
	.program_count({prog_count[0],prog_count[1],prog_count[2],prog_count[3],prog_count[4],prog_count[5],prog_count[6],prog_count[7],prog_count[8],prog_count[9],prog_count[10],prog_count[11],prog_count[12],prog_count[13],prog_count[14],prog_count[15],prog_count[16],prog_count[17],prog_count[18],prog_count[19],prog_count[20],prog_count[21],prog_count[22],prog_count[23],prog_count[24],prog_count[25],prog_count[26],prog_count[27],prog_count[28],prog_count[29],prog_count[30],prog_count[31]}), // IN
	.srcdat_0(srcdat_0), // IN
	.srcdat_1(srcdat_1), // IN
	.srcdat_2(srcdat_2), // IN
	.srcdat_3(srcdat_3), // IN
	.srcop({srcopb[0],srcopb[1],srcopb[2],srcopb[3],srcopb[4]})  // IN
);

// INS_EXEC.NET (473) - locden : an2u
assign locden = locdent & exe_obuf;

// INS_EXEC.NET (481) - regpagei : mx2
mx2 regpagei_inst
(
	.z(regpagei), // OUT
	.a0(regpage), // IN
	.a1(gpu_din[14]), // IN
	.s(flagwr)  // IN
);

// INS_EXEC.NET (482) - regpage : fd2q
fd2q regpage_inst
(
	.q(regpage), // OUT
	.d(regpagei), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INS_EXEC.NET (483) - flagrd[14] : ts
assign gpu_dout_14 = (flagrd) ? regpage : 1'bz;

// INS_EXEC.NET (484) - imaski\ : iv
assign imaski_n = ~imaski;

// INS_EXEC.NET (485) - reghighi : an2
assign reghighi = regpagei & imaski_n;

// INS_EXEC.NET (486) - imask\ : fd1q
fd1q imask_n_inst
(
	.q(imask_n), // OUT
	.d(imaski_n), // IN
	.cp(clk)  // IN
);

// INS_EXEC.NET (487) - reghigh : an2
assign reghigh = regpage & imask_n;

// INS_EXEC.NET (499) - dsttopi : eo
assign dsttopi = dsttinvi ^ reghighi;

// INS_EXEC.NET (500) - dstati : join
assign dstati[0] = dstopin[0];
assign dstati[1] = dstopin[1];
assign dstati[2] = dstopin[2];
assign dstati[3] = dstopin[3];
assign dstati[4] = dstopin[4];
assign dstati[5] = dsttopi;

// INS_EXEC.NET (501) - impdai : join
assign impdai[0] = indseli;
assign impdai[1] = one;
assign impdai[2] = one;
assign impdai[3] = one;
assign impdai[4] = zero;
assign impdai[5] = dsttopi;

// INS_EXEC.NET (503) - dsttop : eo
assign dsttop = dsttinv ^ reghigh;

// INS_EXEC.NET (504) - dstatun : join
assign dstatun[0] = dstop[0];
assign dstatun[1] = dstop[1];
assign dstatun[2] = dstop[2];
assign dstatun[3] = dstop[3];
assign dstatun[4] = dstop[4];
assign dstatun[5] = dsttop;

// INS_EXEC.NET (505) - dstat : nivh
assign dstat[0] = dstatun[0];
assign dstat[1] = dstatun[1];
assign dstat[2] = dstatun[2];
assign dstat[3] = dstatun[3];
assign dstat[4] = dstatun[4];
assign dstat[5] = dstatun[5];

// INS_EXEC.NET (515) - danwsel1 : an2p
assign danwsel = insexei_obuf & precompi;

// INS_EXEC.NET (516) - dstanwi : mx2p
mx2 dstanwi_inst_0
(
	.z(dstanwi[0]), // OUT
	.a0(dstati[0]), // IN
	.a1(impdai[0]), // IN
	.s(danwsel)  // IN
);
mx2 dstanwi_inst_1
(
	.z(dstanwi[1]), // OUT
	.a0(dstati[1]), // IN
	.a1(impdai[1]), // IN
	.s(danwsel)  // IN
);
mx2 dstanwi_inst_2
(
	.z(dstanwi[2]), // OUT
	.a0(dstati[2]), // IN
	.a1(impdai[2]), // IN
	.s(danwsel)  // IN
);
mx2 dstanwi_inst_3
(
	.z(dstanwi[3]), // OUT
	.a0(dstati[3]), // IN
	.a1(impdai[3]), // IN
	.s(danwsel)  // IN
);
mx2 dstanwi_inst_4
(
	.z(dstanwi[4]), // OUT
	.a0(dstati[4]), // IN
	.a1(impdai[4]), // IN
	.s(danwsel)  // IN
);
mx2 dstanwi_inst_5
(
	.z(dstanwi[5]), // OUT
	.a0(dstati[5]), // IN
	.a1(impdai[5]), // IN
	.s(danwsel)  // IN
);

// INS_EXEC.NET (522) - srctopti : eo
assign srctopti = srctinvi ^ reghighi;

// INS_EXEC.NET (523) - srctopi : or2
assign srctopi = srctopti | mtx_doveri;

// INS_EXEC.NET (524) - srcanwi : join
assign srcanwi[0] = srcopin[0];
assign srcanwi[1] = srcopin[1];
assign srcanwi[2] = srcopin[2];
assign srcanwi[3] = srcopin[3];
assign srcanwi[4] = srcopin[4];
assign srcanwi[5] = srctopi;

// INS_EXEC.NET (528) - execon : execon
execon execon_inst
(
	.dstdgate(dstdgate), // OUT
	.exe(exe_obuf), // IO
	.exeb_1(exeb_1), // OUT
	.immwri(immwri), // OUT
	.insexe(insexe), // OUT
	.insexei(insexei_obuf), // IO
	.loimmld(loimmld), // OUT
	.romold(romold), // IO
	.romoldb_0(romoldb_0), // OUT
	.romoldb_1(romoldb_1), // OUT
	.romoldb_2(romoldb_2), // OUT
	.romoldb_3(romoldb_3), // OUT
	.romoldb_4(romoldb_4), // OUT
	.stop(single_stop), // IO
	.clk_0(clk), // IN
	.go(go), // IN
	.immld(immld_obuf), // IN
	.insrdy(insrdy), // IN
	.memrw(memrw_obuf), // IN
	.datwe(datwe), // IN
	.mtx_wait(mtx_wait), // IN
	.precomp(precomp_obuf), // IN
	.reset_n(reset_n), // IN
	.sbwait(sbwait), // IN
	.single_go(single_go), // IN
	.single_step(single_step)  // IN
);

// INS_EXEC.NET (544) - zero_flag\ : iv
assign zero_flag_n = ~zero_flag;

// INS_EXEC.NET (545) - other_flag : mx2
mx2 other_flag_inst
(
	.z(other_flag), // OUT
	.a0(carry_flag), // IN
	.a1(nega_flag), // IN
	.s(dstopb[4])  // IN
);

// INS_EXEC.NET (547) - other_flag\ : iv
assign other_flag_n = ~other_flag;

// INS_EXEC.NET (548) - cond0 : nd2
assign cond_0 = ~(dstopb[0] & zero_flag);

// INS_EXEC.NET (549) - cond1 : nd2
assign cond_1 = ~(dstopb[1] & zero_flag_n);

// INS_EXEC.NET (550) - cond2 : nd2
assign cond_2 = ~(dstopb[2] & other_flag);

// INS_EXEC.NET (551) - cond3 : nd2
assign cond_3 = ~(dstopb[3] & other_flag_n);

// INS_EXEC.NET (552) - conddis : an4
assign jump_ena = cond_0 & cond_1 & cond_2 & cond_3;

// INS_EXEC.NET (566) - mtx_addr : join
assign mtx_addr[0] = zero;
assign mtx_addr[1] = zero;
assign mtx_addr[2] = mtxaddr_2;
assign mtx_addr[3] = mtxaddr_3;
assign mtx_addr[4] = mtxaddr_4;
assign mtx_addr[5] = mtxaddr_5;
assign mtx_addr[6] = mtxaddr_6;
assign mtx_addr[7] = mtxaddr_7;
assign mtx_addr[8] = mtxaddr_8;
assign mtx_addr[9] = mtxaddr_9;
assign mtx_addr[10] = mtxaddr_10;
assign mtx_addr[11] = mtxaddr_11;
assign mtx_addr[12] = one;
assign mtx_addr[13] = one;
assign mtx_addr[14] = zero;
assign mtx_addr[15] = zero;
assign mtx_addr[16] = zero;
assign mtx_addr[17] = zero;
assign mtx_addr[18] = zero;
assign mtx_addr[19] = zero;
assign mtx_addr[20] = one;
assign mtx_addr[21] = one;
assign mtx_addr[22] = one;
assign mtx_addr[23] = one;
assign mtx_addr[24] = zero;
assign mtx_addr[25] = zero;
assign mtx_addr[26] = zero;
assign mtx_addr[27] = zero;
assign mtx_addr[28] = zero;
assign mtx_addr[29] = zero;
assign mtx_addr[30] = zero;
assign mtx_addr[31] = zero;

// INS_EXEC.NET (571) - dataseli[0] : or2
assign dataseli_0 = srcaddrldi | mtx_doveri;

// INS_EXEC.NET (572) - dataseli[1] : or2
assign dataseli_1 = resaddrldi | mtx_doveri;

// INS_EXEC.NET (573) - datasel0[0-5] : fd1qp
fd1q datasel0_from_0_to_5_inst_0
(
	.q(datasel0_0), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);
fd1q datasel0_from_0_to_5_inst_1
(
	.q(datasel0_1), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);
fd1q datasel0_from_0_to_5_inst_2
(
	.q(datasel0_2), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);
fd1q datasel0_from_0_to_5_inst_3
(
	.q(datasel0_3), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);
fd1q datasel0_from_0_to_5_inst_4
(
	.q(datasel0_4), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);
fd1q datasel0_from_0_to_5_inst_5
(
	.q(datasel0_5), // OUT
	.d(dataseli_0), // IN
	.cp(clk)  // IN
);

// INS_EXEC.NET (574) - datasel1[0-5] : fd1qp
fd1q datasel1_from_0_to_5_inst_0
(
	.q(datasel1_0), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);
fd1q datasel1_from_0_to_5_inst_1
(
	.q(datasel1_1), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);
fd1q datasel1_from_0_to_5_inst_2
(
	.q(datasel1_2), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);
fd1q datasel1_from_0_to_5_inst_3
(
	.q(datasel1_3), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);
fd1q datasel1_from_0_to_5_inst_4
(
	.q(datasel1_4), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);
fd1q datasel1_from_0_to_5_inst_5
(
	.q(datasel1_5), // OUT
	.d(dataseli_1), // IN
	.cp(clk)  // IN
);

// INS_EXEC.NET (576) - dataddr[0-3] : mx4p
mx4 dataddr_from_0_to_3_inst_0
(
	.z(dataddr_0), // OUT
	.a0(srcaddrl_0), // IN
	.a1(srcdpa[0]), // IN
	.a2(result[0]), // IN
	.a3(mtx_addr[0]), // IN
	.s0(datasel0_0), // IN
	.s1(datasel1_0)  // IN
);
mx4 dataddr_from_0_to_3_inst_1
(
	.z(dataddr_1), // OUT
	.a0(srcaddrl_1), // IN
	.a1(srcdpa[1]), // IN
	.a2(result[1]), // IN
	.a3(mtx_addr[1]), // IN
	.s0(datasel0_0), // IN
	.s1(datasel1_0)  // IN
);
mx4 dataddr_from_0_to_3_inst_2
(
	.z(dataddr_2), // OUT
	.a0(srcaddrl_2), // IN
	.a1(srcdpa[2]), // IN
	.a2(result[2]), // IN
	.a3(mtx_addr[2]), // IN
	.s0(datasel0_0), // IN
	.s1(datasel1_0)  // IN
);
mx4 dataddr_from_0_to_3_inst_3
(
	.z(dataddr_3), // OUT
	.a0(srcaddrl_3), // IN
	.a1(srcdpa[3]), // IN
	.a2(result[3]), // IN
	.a3(mtx_addr[3]), // IN
	.s0(datasel0_0), // IN
	.s1(datasel1_0)  // IN
);

// INS_EXEC.NET (579) - dataddr[4-7] : mx4p
mx4 dataddr_from_4_to_7_inst_0
(
	.z(dataddr_4), // OUT
	.a0(srcaddrl_4), // IN
	.a1(srcdpa[4]), // IN
	.a2(result[4]), // IN
	.a3(mtx_addr[4]), // IN
	.s0(datasel0_1), // IN
	.s1(datasel1_1)  // IN
);
mx4 dataddr_from_4_to_7_inst_1
(
	.z(dataddr_5), // OUT
	.a0(srcaddrl_5), // IN
	.a1(srcdpa[5]), // IN
	.a2(result[5]), // IN
	.a3(mtx_addr[5]), // IN
	.s0(datasel0_1), // IN
	.s1(datasel1_1)  // IN
);
mx4 dataddr_from_4_to_7_inst_2
(
	.z(dataddr_6), // OUT
	.a0(srcaddrl_6), // IN
	.a1(srcdpa[6]), // IN
	.a2(result[6]), // IN
	.a3(mtx_addr[6]), // IN
	.s0(datasel0_1), // IN
	.s1(datasel1_1)  // IN
);
mx4 dataddr_from_4_to_7_inst_3
(
	.z(dataddr_7), // OUT
	.a0(srcaddrl_7), // IN
	.a1(srcdpa[7]), // IN
	.a2(result[7]), // IN
	.a3(mtx_addr[7]), // IN
	.s0(datasel0_1), // IN
	.s1(datasel1_1)  // IN
);

// INS_EXEC.NET (582) - dataddr[8-11] : mx4p
mx4 dataddr_from_8_to_11_inst_0
(
	.z(dataddr_8), // OUT
	.a0(srcaddrl_8), // IN
	.a1(srcdpa[8]), // IN
	.a2(result[8]), // IN
	.a3(mtx_addr[8]), // IN
	.s0(datasel0_2), // IN
	.s1(datasel1_2)  // IN
);
mx4 dataddr_from_8_to_11_inst_1
(
	.z(dataddr_9), // OUT
	.a0(srcaddrl_9), // IN
	.a1(srcdpa[9]), // IN
	.a2(result[9]), // IN
	.a3(mtx_addr[9]), // IN
	.s0(datasel0_2), // IN
	.s1(datasel1_2)  // IN
);
mx4 dataddr_from_8_to_11_inst_2
(
	.z(dataddr_10), // OUT
	.a0(srcaddrl_10), // IN
	.a1(srcdpa[10]), // IN
	.a2(result[10]), // IN
	.a3(mtx_addr[10]), // IN
	.s0(datasel0_2), // IN
	.s1(datasel1_2)  // IN
);
mx4 dataddr_from_8_to_11_inst_3
(
	.z(dataddr_11), // OUT
	.a0(srcaddrl_11), // IN
	.a1(srcdpa[11]), // IN
	.a2(result[11]), // IN
	.a3(mtx_addr[11]), // IN
	.s0(datasel0_2), // IN
	.s1(datasel1_2)  // IN
);

// INS_EXEC.NET (585) - dataddr[12-15] : mx4p
mx4 dataddr_from_12_to_15_inst_0
(
	.z(dataddr_12), // OUT
	.a0(srcaddrl_12), // IN
	.a1(srcdpa[12]), // IN
	.a2(result[12]), // IN
	.a3(mtx_addr[12]), // IN
	.s0(datasel0_3), // IN
	.s1(datasel1_3)  // IN
);
mx4 dataddr_from_12_to_15_inst_1
(
	.z(dataddr_13), // OUT
	.a0(srcaddrl_13), // IN
	.a1(srcdpa[13]), // IN
	.a2(result[13]), // IN
	.a3(mtx_addr[13]), // IN
	.s0(datasel0_3), // IN
	.s1(datasel1_3)  // IN
);
mx4 dataddr_from_12_to_15_inst_2
(
	.z(dataddr_14), // OUT
	.a0(srcaddrl_14), // IN
	.a1(srcdpa[14]), // IN
	.a2(result[14]), // IN
	.a3(mtx_addr[14]), // IN
	.s0(datasel0_3), // IN
	.s1(datasel1_3)  // IN
);
mx4 dataddr_from_12_to_15_inst_3
(
	.z(dataddr_15), // OUT
	.a0(srcaddrl_15), // IN
	.a1(srcdpa[15]), // IN
	.a2(result[15]), // IN
	.a3(mtx_addr[15]), // IN
	.s0(datasel0_3), // IN
	.s1(datasel1_3)  // IN
);

// INS_EXEC.NET (588) - dataddr[16-19] : mx4p
mx4 dataddr_from_16_to_19_inst_0
(
	.z(dataddr_16), // OUT
	.a0(srcaddrl_16), // IN
	.a1(srcdpa[16]), // IN
	.a2(result[16]), // IN
	.a3(mtx_addr[16]), // IN
	.s0(datasel0_4), // IN
	.s1(datasel1_4)  // IN
);
mx4 dataddr_from_16_to_19_inst_1
(
	.z(dataddr_17), // OUT
	.a0(srcaddrl_17), // IN
	.a1(srcdpa[17]), // IN
	.a2(result[17]), // IN
	.a3(mtx_addr[17]), // IN
	.s0(datasel0_4), // IN
	.s1(datasel1_4)  // IN
);
mx4 dataddr_from_16_to_19_inst_2
(
	.z(dataddr_18), // OUT
	.a0(srcaddrl_18), // IN
	.a1(srcdpa[18]), // IN
	.a2(result[18]), // IN
	.a3(mtx_addr[18]), // IN
	.s0(datasel0_4), // IN
	.s1(datasel1_4)  // IN
);
mx4 dataddr_from_16_to_19_inst_3
(
	.z(dataddr_19), // OUT
	.a0(srcaddrl_19), // IN
	.a1(srcdpa[19]), // IN
	.a2(result[19]), // IN
	.a3(mtx_addr[19]), // IN
	.s0(datasel0_4), // IN
	.s1(datasel1_4)  // IN
);

// INS_EXEC.NET (591) - dataddr[20-23] : mx4p
mx4 dataddr_from_20_to_23_inst_0
(
	.z(dataddr_20), // OUT
	.a0(srcaddrl_20), // IN
	.a1(srcdpa[20]), // IN
	.a2(result[20]), // IN
	.a3(mtx_addr[20]), // IN
	.s0(datasel0_5), // IN
	.s1(datasel1_5)  // IN
);
mx4 dataddr_from_20_to_23_inst_1
(
	.z(dataddr_21), // OUT
	.a0(srcaddrl_21), // IN
	.a1(srcdpa[21]), // IN
	.a2(result[21]), // IN
	.a3(mtx_addr[21]), // IN
	.s0(datasel0_5), // IN
	.s1(datasel1_5)  // IN
);
mx4 dataddr_from_20_to_23_inst_2
(
	.z(dataddr_22), // OUT
	.a0(srcaddrl_22), // IN
	.a1(srcdpa[22]), // IN
	.a2(result[22]), // IN
	.a3(mtx_addr[22]), // IN
	.s0(datasel0_5), // IN
	.s1(datasel1_5)  // IN
);
mx4 dataddr_from_20_to_23_inst_3
(
	.z(dataddr_23), // OUT
	.a0(srcaddrl_23), // IN
	.a1(srcdpa[23]), // IN
	.a2(result[23]), // IN
	.a3(mtx_addr[23]), // IN
	.s0(datasel0_5), // IN
	.s1(datasel1_5)  // IN
);

// INS_EXEC.NET (595) - dataddr : join
assign dataddr[0] = dataddr_0;
assign dataddr[1] = dataddr_1;
assign dataddr[2] = dataddr_2;
assign dataddr[3] = dataddr_3;
assign dataddr[4] = dataddr_4;
assign dataddr[5] = dataddr_5;
assign dataddr[6] = dataddr_6;
assign dataddr[7] = dataddr_7;
assign dataddr[8] = dataddr_8;
assign dataddr[9] = dataddr_9;
assign dataddr[10] = dataddr_10;
assign dataddr[11] = dataddr_11;
assign dataddr[12] = dataddr_12;
assign dataddr[13] = dataddr_13;
assign dataddr[14] = dataddr_14;
assign dataddr[15] = dataddr_15;
assign dataddr[16] = dataddr_16;
assign dataddr[17] = dataddr_17;
assign dataddr[18] = dataddr_18;
assign dataddr[19] = dataddr_19;
assign dataddr[20] = dataddr_20;
assign dataddr[21] = dataddr_21;
assign dataddr[22] = dataddr_22;
assign dataddr[23] = dataddr_23;

// INS_EXEC.NET (598) - addrlatt : oan1
assign addrlatt = (datasel0_5 | datasel1_5) & tlw;

// INS_EXEC.NET (600) - addrlat : nivu
assign addrlat = addrlatt;

// INS_EXEC.NET (601) - srcaddrl[0-23] : ldp1q
ldp1q srcaddrl_from_0_to_23_inst_0
(
	.q(srcaddrl_0), // OUT
	.d(dataddr_0), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_1
(
	.q(srcaddrl_1), // OUT
	.d(dataddr_1), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_2
(
	.q(srcaddrl_2), // OUT
	.d(dataddr_2), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_3
(
	.q(srcaddrl_3), // OUT
	.d(dataddr_3), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_4
(
	.q(srcaddrl_4), // OUT
	.d(dataddr_4), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_5
(
	.q(srcaddrl_5), // OUT
	.d(dataddr_5), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_6
(
	.q(srcaddrl_6), // OUT
	.d(dataddr_6), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_7
(
	.q(srcaddrl_7), // OUT
	.d(dataddr_7), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_8
(
	.q(srcaddrl_8), // OUT
	.d(dataddr_8), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_9
(
	.q(srcaddrl_9), // OUT
	.d(dataddr_9), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_10
(
	.q(srcaddrl_10), // OUT
	.d(dataddr_10), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_11
(
	.q(srcaddrl_11), // OUT
	.d(dataddr_11), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_12
(
	.q(srcaddrl_12), // OUT
	.d(dataddr_12), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_13
(
	.q(srcaddrl_13), // OUT
	.d(dataddr_13), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_14
(
	.q(srcaddrl_14), // OUT
	.d(dataddr_14), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_15
(
	.q(srcaddrl_15), // OUT
	.d(dataddr_15), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_16
(
	.q(srcaddrl_16), // OUT
	.d(dataddr_16), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_17
(
	.q(srcaddrl_17), // OUT
	.d(dataddr_17), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_18
(
	.q(srcaddrl_18), // OUT
	.d(dataddr_18), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_19
(
	.q(srcaddrl_19), // OUT
	.d(dataddr_19), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_20
(
	.q(srcaddrl_20), // OUT
	.d(dataddr_20), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_21
(
	.q(srcaddrl_21), // OUT
	.d(dataddr_21), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_22
(
	.q(srcaddrl_22), // OUT
	.d(dataddr_22), // IN
	.g(addrlat)  // IN
);
ldp1q srcaddrl_from_0_to_23_inst_23
(
	.q(srcaddrl_23), // OUT
	.d(dataddr_23), // IN
	.g(addrlat)  // IN
);

// INS_EXEC.NET (606) - datreq : or2
assign datreq = sdatreq | mtx_mreq;

// INS_EXEC.NET (610) - pcrd : ts
assign gpu_data[0] = (pcrd) ? prog_count[0] : 1'bz;
assign gpu_data[1] = (pcrd) ? prog_count[1] : 1'bz;
assign gpu_data[2] = (pcrd) ? prog_count[2] : 1'bz;
assign gpu_data[3] = (pcrd) ? prog_count[3] : 1'bz;
assign gpu_data[4] = (pcrd) ? prog_count[4] : 1'bz;
assign gpu_data[5] = (pcrd) ? prog_count[5] : 1'bz;
assign gpu_data[6] = (pcrd) ? prog_count[6] : 1'bz;
assign gpu_data[7] = (pcrd) ? prog_count[7] : 1'bz;
assign gpu_data[8] = (pcrd) ? prog_count[8] : 1'bz;
assign gpu_data[9] = (pcrd) ? prog_count[9] : 1'bz;
assign gpu_data[10] = (pcrd) ? prog_count[10] : 1'bz;
assign gpu_data[11] = (pcrd) ? prog_count[11] : 1'bz;
assign gpu_data[12] = (pcrd) ? prog_count[12] : 1'bz;
assign gpu_data[13] = (pcrd) ? prog_count[13] : 1'bz;
assign gpu_data[14] = (pcrd) ? prog_count[14] : 1'bz;
assign gpu_data[15] = (pcrd) ? prog_count[15] : 1'bz;
assign gpu_data[16] = (pcrd) ? prog_count[16] : 1'bz;
assign gpu_data[17] = (pcrd) ? prog_count[17] : 1'bz;
assign gpu_data[18] = (pcrd) ? prog_count[18] : 1'bz;
assign gpu_data[19] = (pcrd) ? prog_count[19] : 1'bz;
assign gpu_data[20] = (pcrd) ? prog_count[20] : 1'bz;
assign gpu_data[21] = (pcrd) ? prog_count[21] : 1'bz;
assign gpu_data[22] = (pcrd) ? prog_count[22] : 1'bz;
assign gpu_data[23] = (pcrd) ? prog_count[23] : 1'bz;
assign gpu_data[24] = (pcrd) ? prog_count[24] : 1'bz;
assign gpu_data[25] = (pcrd) ? prog_count[25] : 1'bz;
assign gpu_data[26] = (pcrd) ? prog_count[26] : 1'bz;
assign gpu_data[27] = (pcrd) ? prog_count[27] : 1'bz;
assign gpu_data[28] = (pcrd) ? prog_count[28] : 1'bz;
assign gpu_data[29] = (pcrd) ? prog_count[29] : 1'bz;
assign gpu_data[30] = (pcrd) ? prog_count[30] : 1'bz;
assign gpu_data[31] = (pcrd) ? prog_count[31] : 1'bz;
endmodule
