`include "defs.v"

module state
(
	inout[0:23] blit_addr;
	inout justify,
	inout mreq,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
	inout read,
	inout gpu_dout_0,
	inout gpu_dout_1,
	inout gpu_dout_2,
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
	inout gpu_dout_15,
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
	output a1fracldi,
	output a1ptrldi,
	output a2ptrldi,
	output addasel_0,
	output addasel_1,
	output addasel_2,
	output addbsel_0,
	output addbsel_1,
	output addqsel,
	output adda_xconst_0,
	output adda_xconst_1,
	output adda_xconst_2,
	output adda_yconst,
	output addareg,
	output apipe,
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	output cmpdst,
	output daddasel_0,
	output daddasel_1,
	output daddasel_2,
	output daddbsel_0,
	output daddbsel_1,
	output daddbsel_2,
	output daddmode_0,
	output daddmode_1,
	output daddmode_2,
	output data_ena,
	output data_sel_0,
	output data_sel_1,
	output dbinh_n_0,
	output dbinh_n_1,
	output dbinh_n_2,
	output dbinh_n_3,
	output dbinh_n_4,
	output dbinh_n_5,
	output dbinh_n_6,
	output dbinh_n_7,
	output dend_0,
	output dend_1,
	output dend_2,
	output dend_3,
	output dend_4,
	output dend_5,
	output dpipe_0,
	output dpipe_1,
	output dstart_0,
	output dstart_1,
	output dstart_2,
	output dstart_3,
	output dstart_4,
	output dstart_5,
	output dstdread,
	output dstzread,
	output gena2,
	output lfu_func_0,
	output lfu_func_1,
	output lfu_func_2,
	output lfu_func_3,
	output daddq_sel,
	output modx_0,
	output modx_1,
	output modx_2,
	output patdadd,
	output patfadd,
	output phrase_mode,
	output reset_n,
	output srcdread,
	output srcshift_0,
	output srcshift_1,
	output srcshift_2,
	output srcshift_3,
	output srcshift_4,
	output srcshift_5,
	output srcz1add,
	output srcz2add,
	output srczread,
	output suba_x,
	output suba_y,
	output zaddr,
	output zmode_0,
	output zmode_1,
	output zmode_2,
	output zpipe_0,
	output zpipe_1,
	input a1_outside,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input[0:14] a1_win_x;
	input[0:15] a1_x;
	input a1addx_0,
	input a1addx_1,
	input a1addy,
	input a1xsign,
	input a1ysign,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input[0:15] a2_x;
	input a2addx_0,
	input a2addx_1,
	input a2addy,
	input a2xsign,
	input a2ysign,
	input ack,
	input[0:23] address;
	input big_pix,
	input blit_back,
	input clk,
	input cmdld,
	input countld,
	input dcomp_0,
	input dcomp_1,
	input dcomp_2,
	input dcomp_3,
	input dcomp_4,
	input dcomp_5,
	input dcomp_6,
	input dcomp_7,
	input[0:31] gpu_din;
	input pixa_0,
	input pixa_1,
	input pixa_2,
	input srcd_0,
	input srcd_1,
	input srcd_2,
	input srcd_3,
	input srcd_4,
	input srcd_5,
	input srcd_6,
	input srcd_7,
	input statrd,
	input stopld,
	input xreset_n,
	input zcomp_0,
	input zcomp_1,
	input zcomp_2,
	input zcomp_3
);
wire [0:15] dstxp;
wire bcompent;
wire bcompen;
wire dcompent;
wire dcompen;
wire bkgwren;
wire srcshade;
wire blit_idle;
wire inhibent;
wire inhiben;
wire atick_0;
wire atick_1;
wire aticki_0;
wire dest_cycle_1;
wire dsta_addi;
wire dwrite;
wire dwrite_1;
wire dzwrite;
wire dzwrite1;
wire icount_0;
wire icount_1;
wire icount_2;
wire indone;
wire inner0;
wire readreq;
wire srca_addi;
wire srcdreadd;
wire srcen;
wire sread_1;
wire sreadx_1;
wire step_inner;
wire writereq;
wire blitack;
wire dsta2;
wire gourd;
wire gourz;
wire instart;
wire memidle;
wire memready;
wire nowrite;
wire pixsize_0;
wire pixsize_1;
wire pixsize_2;
wire read_ack;
wire wactive;
wire a1updatei;
wire a1fupdatei;
wire a2updatei;
wire sshftld;
wire active;
wire stopped;
wire phrase_cycle;
wire pwidth_0;
wire pwidth_1;
wire pwidth_2;
wire pwidth_3;

// Output buffers
wire blit_breq_0_obuf;
wire blit_breq_1_obuf;
wire phrase_mode_obuf;
wire reset_n_obuf;
wire zmode_0_obuf;
wire zmode_1_obuf;
wire zmode_2_obuf;


// Output buffers
assign blit_breq_0 = blit_breq_0_obuf;
assign blit_breq_1 = blit_breq_1_obuf;
assign phrase_mode = phrase_mode_obuf;
assign reset_n = reset_n_obuf;
assign zmode_0 = zmode_0_obuf;
assign zmode_1 = zmode_1_obuf;
assign zmode_2 = zmode_2_obuf;


// STATE.NET (103) - zmode[0-2] : fdsync
fdsync zmode_from_0_to_2_inst_0
(
	.q(zmode_0_obuf), // IO
	.d(gpu_din[18]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);
fdsync zmode_from_0_to_2_inst_1
(
	.q(zmode_1_obuf), // IO
	.d(gpu_din[19]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);
fdsync zmode_from_0_to_2_inst_2
(
	.q(zmode_2_obuf), // IO
	.d(gpu_din[20]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (105) - lfu_func[0-3] : fdsyncu
fdsyncu lfu_func_from_0_to_3_inst_0
(
	.q(lfu_func_0), // IO
	.d(gpu_din[21]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);
fdsyncu lfu_func_from_0_to_3_inst_1
(
	.q(lfu_func_1), // IO
	.d(gpu_din[22]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);
fdsyncu lfu_func_from_0_to_3_inst_2
(
	.q(lfu_func_2), // IO
	.d(gpu_din[23]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);
fdsyncu lfu_func_from_0_to_3_inst_3
(
	.q(lfu_func_3), // IO
	.d(gpu_din[24]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (107) - cmpdst : fdsync
fdsync cmpdst_inst
(
	.q(cmpdst), // IO
	.d(gpu_din[25]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (108) - bcompent : fdsync
fdsync bcompent_inst
(
	.q(bcompent), // IO
	.d(gpu_din[26]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (109) - bcompen : nivm
assign bcompen = bcompent;

// STATE.NET (110) - dcompent : fdsync
fdsync dcompent_inst
(
	.q(dcompent), // IO
	.d(gpu_din[27]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (111) - dcompen : nivh
assign dcompen = dcompent;

// STATE.NET (112) - bkgwren : fdsync
fdsync bkgwren_inst
(
	.q(bkgwren), // IO
	.d(gpu_din[28]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (113) - srcshade : fdsync
fdsync srcshade_inst
(
	.q(srcshade), // IO
	.d(gpu_din[30]), // IN
	.ld(cmdld), // IN
	.clk(clk)  // IN
);

// STATE.NET (117) - blit_idle : nr3
assign blit_idle = ~(blit_breq_0_obuf | blit_breq_1_obuf | blit_back);

// STATE.NET (118) - stat[0] : ts
assign gpu_dout_0 = (statrd) ? blit_idle : 1'bz;

// STATE.NET (122) - inhibent : nr5
nr5 inhibent_inst
(
	.z(inhibent), // IO
	.a(zmode_0_obuf), // IN
	.b(zmode_1_obuf), // IN
	.c(zmode_2_obuf), // IN
	.d(bcompen), // IN
	.e(dcompen)  // IN
);

// STATE.NET (123) - inhiben : nr3
assign inhiben = ~(inhibent | phrase_mode_obuf | bkgwren);

// STATE.NET (127) - inner : inner
inner inner_inst
(
	.gpu_dout_2(gpu_dout_2), // TRI
	.gpu_dout_3(gpu_dout_3), // TRI
	.gpu_dout_4(gpu_dout_4), // TRI
	.gpu_dout_5(gpu_dout_5), // TRI
	.gpu_dout_6(gpu_dout_6), // TRI
	.gpu_dout_7(gpu_dout_7), // TRI
	.gpu_dout_8(gpu_dout_8), // TRI
	.gpu_dout_9(gpu_dout_9), // TRI
	.gpu_dout_10(gpu_dout_10), // TRI
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
	.apipe(apipe), // OUT
	.atick_0(atick_0), // IO
	.atick_1(atick_1), // IO
	.aticki_0(aticki_0), // IO
	.data_ena(data_ena), // OUT
	.dest_cycle_1(dest_cycle_1), // OUT
	.dpipe_0(dpipe_0), // OUT
	.dpipe_1(dpipe_1), // OUT
	.dsta_addi(dsta_addi), // OUT
	.dstdread(dstdread), // OUT
	.dstzread(dstzread), // OUT
	.dwrite(dwrite), // IO
	.dwrite1(dwrite_1), // IO
	.dzwrite(dzwrite), // IO
	.dzwrite1(dzwrite1), // IO
	.gena2(gena2), // OUT
	.icount_0(icount_0), // OUT
	.icount_1(icount_1), // OUT
	.icount_2(icount_2), // OUT
	.indone(indone), // IO
	.inner0(inner0), // IO
	.readreq(readreq), // IO
	.srca_addi(srca_addi), // IO
	.srcdread(srcdread), // OUT
	.srcdreadd(srcdreadd), // IO
	.srcen(srcen), // IO
	.srczread(srczread), // OUT
	.sread_1(sread_1), // IO
	.sreadx_1(sreadx_1), // IO
	.step(step_inner), // IO
	.writereq(writereq), // IO
	.zaddr(zaddr), // OUT
	.zpipe_0(zpipe_0), // OUT
	.zpipe_1(zpipe_1), // OUT
	.a1_outside(a1_outside), // IN
	.blitack(blitack), // IN
	.clk(clk), // IN
	.cmdld(cmdld), // IN
	.countld(countld), // IN
	.dsta2(dsta2), // IN
	.dstxp({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}), // IN
	.gourd(gourd), // IN
	.gourz(gourz), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.inhiben(inhiben), // IN
	.instart(instart), // IN
	.memidle(memidle), // IN
	.memready(memready), // IN
	.nowrite(nowrite), // IN
	.phrase_mode(phrase_mode_obuf), // IN
	.pixsize_0(pixsize_0), // IN
	.pixsize_1(pixsize_1), // IN
	.pixsize_2(pixsize_2), // IN
	.read_ack(read_ack), // IN
	.reset_n(reset_n_obuf), // IN
	.srcshade(srcshade), // IN
	.statrd(statrd), // IN
	.wactive(wactive)  // IN
);

// STATE.NET (143) - outer : outer
outer outer_inst
(
	.gpu_dout_11(gpu_dout_11), // TRI
	.gpu_dout_12(gpu_dout_12), // TRI
	.gpu_dout_13(gpu_dout_13), // TRI
	.gpu_dout_14(gpu_dout_14), // TRI
	.gpu_dout_15(gpu_dout_15), // TRI
	.a1updatei(a1updatei), // IO
	.a1fupdatei(a1fupdatei), // IO
	.a2updatei(a2updatei), // IO
	.blit_breq_0(blit_breq_0_obuf), // OUT
	.blit_breq_1(blit_breq_1_obuf), // OUT
	.blit_int(blit_int), // OUT
	.instart(instart), // IO
	.sshftld(sshftld), // OUT
	.active(active), // IN
	.clk(clk), // IN
	.cmdld(cmdld), // IN
	.countld(countld), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.indone(indone), // IN
	.reset_n(reset_n_obuf), // IN
	.statrd(statrd), // IN
	.stopped(stopped)  // IN
);

// STATE.NET (151) - mcontrol : mcontrol
mcontrol mcontrol_inst
(
	.blit_addr({blit_addr[0],blit_addr[1],blit_addr[2],blit_addr[3],blit_addr[4],blit_addr[5],blit_addr[6],blit_addr[7],blit_addr[8],blit_addr[9],blit_addr[10],blit_addr[11],blit_addr[12],blit_addr[13],blit_addr[14],blit_addr[15],blit_addr[16],blit_addr[17],blit_addr[18],blit_addr[19],blit_addr[20],blit_addr[21],blit_addr[22],blit_addr[23]}), // BUS
	.justify(justify), // BUS
	.mreq(mreq), // BUS
	.width_0(width_0), // BUS
	.width_1(width_1), // BUS
	.width_2(width_2), // BUS
	.width_3(width_3), // BUS
	.read(read), // BUS
	.active(active), // IO
	.blitack(blitack), // IO
	.memidle(memidle), // OUT
	.memready(memready), // OUT
	.read_ack(read_ack), // OUT
	.wactive(wactive), // IO
	.ack(ack), // IN
	.address({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // IN
	.bcompen(bcompen), // IN
	.blit_back(blit_back), // IN
	.clk(clk), // IN
	.phrase_cycle(phrase_cycle), // IN
	.phrase_mode(phrase_mode_obuf), // IN
	.pixsize_0(pixsize_0), // IN
	.pixsize_1(pixsize_1), // IN
	.pixsize_2(pixsize_2), // IN
	.pwidth_0(pwidth_0), // IN
	.pwidth_1(pwidth_1), // IN
	.pwidth_2(pwidth_2), // IN
	.pwidth_3(pwidth_3), // IN
	.readreq(readreq), // IN
	.reset_n(reset_n_obuf), // IN
	.sread_1(sread_1), // IN
	.sreadx_1(sreadx_1), // IN
	.step_inner(step_inner), // IN
	.writereq(writereq)  // IN
);

// STATE.NET (159) - acontrol : acontrol
acontrol acontrol_inst
(
	.addasel_0(addasel_0), // OUT
	.addasel_1(addasel_1), // OUT
	.addasel_2(addasel_2), // OUT
	.addbsel_0(addbsel_0), // OUT
	.addbsel_1(addbsel_1), // OUT
	.addqsel(addqsel), // OUT
	.adda_xconst_0(adda_xconst_0), // OUT
	.adda_xconst_1(adda_xconst_1), // OUT
	.adda_xconst_2(adda_xconst_2), // OUT
	.adda_yconst(adda_yconst), // OUT
	.addareg(addareg), // OUT
	.a1fracldi(a1fracldi), // OUT
	.a1ptrldi(a1ptrldi), // OUT
	.a2ptrldi(a2ptrldi), // OUT
	.dend_0(dend_0), // OUT
	.dend_1(dend_1), // OUT
	.dend_2(dend_2), // OUT
	.dend_3(dend_3), // OUT
	.dend_4(dend_4), // OUT
	.dend_5(dend_5), // OUT
	.dsta2(dsta2), // IO
	.dstart_0(dstart_0), // OUT
	.dstart_1(dstart_1), // OUT
	.dstart_2(dstart_2), // OUT
	.dstart_3(dstart_3), // OUT
	.dstart_4(dstart_4), // OUT
	.dstart_5(dstart_5), // OUT
	.dstxp({dstxp[0],dstxp[1],dstxp[2],dstxp[3],dstxp[4],dstxp[5],dstxp[6],dstxp[7],dstxp[8],dstxp[9],dstxp[10],dstxp[11],dstxp[12],dstxp[13],dstxp[14],dstxp[15]}), // IO
	.modx_0(modx_0), // OUT
	.modx_1(modx_1), // OUT
	.modx_2(modx_2), // OUT
	.phrase_cycle(phrase_cycle), // OUT
	.phrase_mode(phrase_mode_obuf), // IO
	.pixsize_0(pixsize_0), // IO
	.pixsize_1(pixsize_1), // IO
	.pixsize_2(pixsize_2), // IO
	.pwidth_0(pwidth_0), // OUT
	.pwidth_1(pwidth_1), // OUT
	.pwidth_2(pwidth_2), // OUT
	.pwidth_3(pwidth_3), // OUT
	.srcshift_0(srcshift_0), // IO
	.srcshift_1(srcshift_1), // IO
	.srcshift_2(srcshift_2), // IO
	.srcshift_3(srcshift_3), // IO
	.srcshift_4(srcshift_4), // IO
	.srcshift_5(srcshift_5), // IO
	.suba_x(suba_x), // OUT
	.suba_y(suba_y), // OUT
	.a1_pixsize_0(a1_pixsize_0), // IN
	.a1_pixsize_1(a1_pixsize_1), // IN
	.a1_pixsize_2(a1_pixsize_2), // IN
	.a1_win_x({a1_win_x[0],a1_win_x[1],a1_win_x[2],a1_win_x[3],a1_win_x[4],a1_win_x[5],a1_win_x[6],a1_win_x[7],a1_win_x[8],a1_win_x[9],a1_win_x[10],a1_win_x[11],a1_win_x[12],a1_win_x[13],a1_win_x[14]}), // IN
	.a1_x({a1_x[0],a1_x[1],a1_x[2],a1_x[3],a1_x[4],a1_x[5],a1_x[6],a1_x[7],a1_x[8],a1_x[9],a1_x[10],a1_x[11],a1_x[12],a1_x[13],a1_x[14],a1_x[15]}), // IN
	.a1addx_0(a1addx_0), // IN
	.a1addx_1(a1addx_1), // IN
	.a1addy(a1addy), // IN
	.a1xsign(a1xsign), // IN
	.a1ysign(a1ysign), // IN
	.a1updatei(a1updatei), // IN
	.a1fupdatei(a1fupdatei), // IN
	.a2_pixsize_0(a2_pixsize_0), // IN
	.a2_pixsize_1(a2_pixsize_1), // IN
	.a2_pixsize_2(a2_pixsize_2), // IN
	.a2_x({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}), // IN
	.a2addx_0(a2addx_0), // IN
	.a2addx_1(a2addx_1), // IN
	.a2addy(a2addy), // IN
	.a2xsign(a2xsign), // IN
	.a2ysign(a2ysign), // IN
	.a2updatei(a2updatei), // IN
	.atick_0(atick_0), // IN
	.atick_1(atick_1), // IN
	.aticki_0(aticki_0), // IN
	.bcompen(bcompen), // IN
	.clk(clk), // IN
	.cmdld(cmdld), // IN
	.dest_cycle_1(dest_cycle_1), // IN
	.dsta_addi(dsta_addi), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.icount_0(icount_0), // IN
	.icount_1(icount_1), // IN
	.icount_2(icount_2), // IN
	.inner0(inner0), // IN
	.pixa_0(pixa_0), // IN
	.pixa_1(pixa_1), // IN
	.pixa_2(pixa_2), // IN
	.srca_addi(srca_addi), // IN
	.srcen(srcen), // IN
	.sshftld(sshftld), // IN
	.step_inner(step_inner)  // IN
);

// STATE.NET (178) - dcontrol : dcontrol
dcontrol dcontrol_inst
(
	.daddasel_0(daddasel_0), // OUT
	.daddasel_1(daddasel_1), // OUT
	.daddasel_2(daddasel_2), // OUT
	.daddbsel_0(daddbsel_0), // OUT
	.daddbsel_1(daddbsel_1), // OUT
	.daddbsel_2(daddbsel_2), // OUT
	.daddmode_0(daddmode_0), // OUT
	.daddmode_1(daddmode_1), // OUT
	.daddmode_2(daddmode_2), // OUT
	.data_sel_0(data_sel_0), // OUT
	.data_sel_1(data_sel_1), // OUT
	.daddq_sel(daddq_sel), // OUT
	.gourd(gourd), // IO
	.gourz(gourz), // IO
	.patdadd(patdadd), // IO
	.patfadd(patfadd), // IO
	.srcz1add(srcz1add), // IO
	.srcz2add(srcz2add), // IO
	.atick_0(atick_0), // IN
	.atick_1(atick_1), // IN
	.clk_0(clk), // IN
	.cmdld(cmdld), // IN
	.dwrite(dwrite), // IN
	.dzwrite(dzwrite), // IN
	.dzwrite1(dzwrite1), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.srcdreadd(srcdreadd), // IN
	.srcshade(srcshade)  // IN
);

// STATE.NET (187) - comp_ctrl : comp_ctrl
comp_ctrl comp_ctrl_inst
(
	.dbinh_n_0(dbinh_n_0), // OUT
	.dbinh_n_1(dbinh_n_1), // OUT
	.dbinh_n_2(dbinh_n_2), // OUT
	.dbinh_n_3(dbinh_n_3), // OUT
	.dbinh_n_4(dbinh_n_4), // OUT
	.dbinh_n_5(dbinh_n_5), // OUT
	.dbinh_n_6(dbinh_n_6), // OUT
	.dbinh_n_7(dbinh_n_7), // OUT
	.nowrite(nowrite), // OUT
	.bcompen(bcompen), // IN
	.big_pix(big_pix), // IN
	.bkgwren(bkgwren), // IN
	.clk(clk), // IN
	.dcomp_0(dcomp_0), // IN
	.dcomp_1(dcomp_1), // IN
	.dcomp_2(dcomp_2), // IN
	.dcomp_3(dcomp_3), // IN
	.dcomp_4(dcomp_4), // IN
	.dcomp_5(dcomp_5), // IN
	.dcomp_6(dcomp_6), // IN
	.dcomp_7(dcomp_7), // IN
	.dcompen(dcompen), // IN
	.icount_0(icount_0), // IN
	.icount_1(icount_1), // IN
	.icount_2(icount_2), // IN
	.pixsize_0(pixsize_0), // IN
	.pixsize_1(pixsize_1), // IN
	.pixsize_2(pixsize_2), // IN
	.phrase_mode(phrase_mode_obuf), // IN
	.srcd_0(srcd_0), // IN
	.srcd_1(srcd_1), // IN
	.srcd_2(srcd_2), // IN
	.srcd_3(srcd_3), // IN
	.srcd_4(srcd_4), // IN
	.srcd_5(srcd_5), // IN
	.srcd_6(srcd_6), // IN
	.srcd_7(srcd_7), // IN
	.step_inner(step_inner), // IN
	.zcomp_0(zcomp_0), // IN
	.zcomp_1(zcomp_1), // IN
	.zcomp_2(zcomp_2), // IN
	.zcomp_3(zcomp_3)  // IN
);

// STATE.NET (195) - blitstop : blitstop
blitstop blitstop_inst
(
	.gpu_dout_1(gpu_dout_1), // TRI
	.stopped(stopped), // IO
	.reset_n(reset_n_obuf), // OUT
	.clk_0(clk), // IN
	.dwrite_1(dwrite_1), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.nowrite(nowrite), // IN
	.statrd(statrd), // IN
	.stopld(stopld), // IN
	.xreset_n(xreset_n)  // IN
);
endmodule
