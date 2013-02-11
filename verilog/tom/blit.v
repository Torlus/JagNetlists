`include "defs.v"

module blit
(
	inout[0:23] blit_addr;
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
	inout justify,
	inout mreq,
	inout read,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
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
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	input ack,
	input big_pix,
	input blit_back,
	input bliten,
	input clk,
	input tlw,
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
	input[0:23] gpu_addr;
	input[0:31] gpu_din;
	input gpu_memw,
	input xreset_n
);
wire [0:23] address;
wire [0:14] a1_win_x;
wire [0:15] a1_x;
wire [0:15] a2_x;
wire loadstrt;
wire load_strobe;
wire clk_16;
wire clk_17;
wire clk_18;
wire dcomp_0;
wire dcomp_1;
wire dcomp_2;
wire dcomp_3;
wire dcomp_4;
wire dcomp_5;
wire dcomp_6;
wire dcomp_7;
wire srcd_0;
wire srcd_1;
wire srcd_2;
wire srcd_3;
wire srcd_4;
wire srcd_5;
wire srcd_6;
wire srcd_7;
wire zcomp_0;
wire zcomp_1;
wire zcomp_2;
wire zcomp_3;
wire cmpdst;
wire daddasel_0;
wire daddasel_1;
wire daddasel_2;
wire daddbsel_0;
wire daddbsel_1;
wire daddbsel_2;
wire daddmode_0;
wire daddmode_1;
wire daddmode_2;
wire daddq_sel;
wire data_ena;
wire data_sel_0;
wire data_sel_1;
wire dbinh_n_0;
wire dbinh_n_1;
wire dbinh_n_2;
wire dbinh_n_3;
wire dbinh_n_4;
wire dbinh_n_5;
wire dbinh_n_6;
wire dbinh_n_7;
wire dend_0;
wire dend_1;
wire dend_2;
wire dend_3;
wire dend_4;
wire dend_5;
wire dpipe_0;
wire dpipe_1;
wire dstart_0;
wire dstart_1;
wire dstart_2;
wire dstart_3;
wire dstart_4;
wire dstart_5;
wire dstdld_0;
wire dstdld_1;
wire dstzld_0;
wire dstzld_1;
wire iincld;
wire intld_0;
wire intld_1;
wire intld_2;
wire intld_3;
wire lfu_func_0;
wire lfu_func_1;
wire lfu_func_2;
wire lfu_func_3;
wire patdld_0;
wire patdld_1;
wire phrase_mode;
wire reset_n;
wire srcd1ld_0;
wire srcd1ld_1;
wire srcdread;
wire srczread;
wire srcshift_0;
wire srcshift_1;
wire srcshift_2;
wire srcshift_3;
wire srcshift_4;
wire srcshift_5;
wire srcz1ld_0;
wire srcz1ld_1;
wire srcz2add;
wire srcz2ld_0;
wire srcz2ld_1;
wire zedld_0;
wire zedld_1;
wire zedld_2;
wire zedld_3;
wire zincld;
wire zmode_0;
wire zmode_1;
wire zmode_2;
wire zpipe_0;
wire zpipe_1;
wire a1_outside;
wire a1_pixsize_0;
wire a1_pixsize_1;
wire a1_pixsize_2;
wire a1addx_0;
wire a1addx_1;
wire a1addy;
wire a1xsign;
wire a1ysign;
wire a2_pixsize_0;
wire a2_pixsize_1;
wire a2_pixsize_2;
wire a2addx_0;
wire a2addx_1;
wire a2addy;
wire a2xsign;
wire a2ysign;
wire pixa_0;
wire pixa_1;
wire pixa_2;
wire addasel_0;
wire addasel_1;
wire addasel_2;
wire addbsel_0;
wire addbsel_1;
wire addqsel;
wire adda_xconst_0;
wire adda_xconst_1;
wire adda_xconst_2;
wire adda_yconst;
wire addareg;
wire a1baseld;
wire a1flagld;
wire a1fracld;
wire a1incld;
wire a1incfld;
wire a1posrd;
wire a1posfrd;
wire a1ptrld;
wire a1stepld;
wire a1stepfld;
wire a1winld;
wire a2baseld;
wire a2flagld;
wire a2posrd;
wire a2ptrld;
wire a2stepld;
wire a2winld;
wire apipe;
wire gena2;
wire modx_0;
wire modx_1;
wire modx_2;
wire suba_x;
wire suba_y;
wire zaddr;
wire a1fracldi;
wire a1ptrldi;
wire a2ptrldi;
wire dstdread;
wire dstzread;
wire patdadd;
wire patfadd;
wire srcz1add;
wire cmdld;
wire countld;
wire statrd;
wire stopld;

// Output buffers
wire blit_breq_0_obuf;
wire blit_breq_1_obuf;


// Output buffers
assign blit_breq_0 = blit_breq_0_obuf;
assign blit_breq_1 = blit_breq_1_obuf;


// BLIT.NET (50) - loadstrt : niv
assign loadstrt = tlw;

// BLIT.NET (51) - load_strobe : nivu
assign load_strobe = loadstrt;

// BLIT.NET (53) - clk[16] : buf128
assign clk_16 = clk;

// BLIT.NET (54) - clk[17] : buf32
assign clk_17 = clk;

// BLIT.NET (55) - clk[18] : buf64
assign clk_18 = clk;

// BLIT.NET (59) - data : data
data data_inst
(
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
	.dcomp_0(dcomp_0), // OUT
	.dcomp_1(dcomp_1), // OUT
	.dcomp_2(dcomp_2), // OUT
	.dcomp_3(dcomp_3), // OUT
	.dcomp_4(dcomp_4), // OUT
	.dcomp_5(dcomp_5), // OUT
	.dcomp_6(dcomp_6), // OUT
	.dcomp_7(dcomp_7), // OUT
	.srcd_0(srcd_0), // OUT
	.srcd_1(srcd_1), // OUT
	.srcd_2(srcd_2), // OUT
	.srcd_3(srcd_3), // OUT
	.srcd_4(srcd_4), // OUT
	.srcd_5(srcd_5), // OUT
	.srcd_6(srcd_6), // OUT
	.srcd_7(srcd_7), // OUT
	.zcomp_0(zcomp_0), // OUT
	.zcomp_1(zcomp_1), // OUT
	.zcomp_2(zcomp_2), // OUT
	.zcomp_3(zcomp_3), // OUT
	.big_pix(big_pix), // IN
	.blit_back(blit_back), // IN
	.blit_breq_0(blit_breq_0_obuf), // IN
	.blit_breq_1(blit_breq_1_obuf), // IN
	.clk(clk_16), // IN
	.clk2(tlw), // IN
	.cmpdst(cmpdst), // IN
	.daddasel_0(daddasel_0), // IN
	.daddasel_1(daddasel_1), // IN
	.daddasel_2(daddasel_2), // IN
	.daddbsel_0(daddbsel_0), // IN
	.daddbsel_1(daddbsel_1), // IN
	.daddbsel_2(daddbsel_2), // IN
	.daddmode_0(daddmode_0), // IN
	.daddmode_1(daddmode_1), // IN
	.daddmode_2(daddmode_2), // IN
	.daddq_sel(daddq_sel), // IN
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
	.data_ena(data_ena), // IN
	.data_sel_0(data_sel_0), // IN
	.data_sel_1(data_sel_1), // IN
	.dbinh_n_0(dbinh_n_0), // IN
	.dbinh_n_1(dbinh_n_1), // IN
	.dbinh_n_2(dbinh_n_2), // IN
	.dbinh_n_3(dbinh_n_3), // IN
	.dbinh_n_4(dbinh_n_4), // IN
	.dbinh_n_5(dbinh_n_5), // IN
	.dbinh_n_6(dbinh_n_6), // IN
	.dbinh_n_7(dbinh_n_7), // IN
	.dend_0(dend_0), // IN
	.dend_1(dend_1), // IN
	.dend_2(dend_2), // IN
	.dend_3(dend_3), // IN
	.dend_4(dend_4), // IN
	.dend_5(dend_5), // IN
	.dpipe_0(dpipe_0), // IN
	.dpipe_1(dpipe_1), // IN
	.dstart_0(dstart_0), // IN
	.dstart_1(dstart_1), // IN
	.dstart_2(dstart_2), // IN
	.dstart_3(dstart_3), // IN
	.dstart_4(dstart_4), // IN
	.dstart_5(dstart_5), // IN
	.dstdld_0(dstdld_0), // IN
	.dstdld_1(dstdld_1), // IN
	.dstzld_0(dstzld_0), // IN
	.dstzld_1(dstzld_1), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.iincld(iincld), // IN
	.intld_0(intld_0), // IN
	.intld_1(intld_1), // IN
	.intld_2(intld_2), // IN
	.intld_3(intld_3), // IN
	.lfu_func_0(lfu_func_0), // IN
	.lfu_func_1(lfu_func_1), // IN
	.lfu_func_2(lfu_func_2), // IN
	.lfu_func_3(lfu_func_3), // IN
	.load_strobe(load_strobe), // IN
	.patdld_0(patdld_0), // IN
	.patdld_1(patdld_1), // IN
	.phrase_mode(phrase_mode), // IN
	.reset_n(reset_n), // IN
	.srcd1ld_0(srcd1ld_0), // IN
	.srcd1ld_1(srcd1ld_1), // IN
	.srcdread(srcdread), // IN
	.srczread(srczread), // IN
	.srcshift_0(srcshift_0), // IN
	.srcshift_1(srcshift_1), // IN
	.srcshift_2(srcshift_2), // IN
	.srcshift_3(srcshift_3), // IN
	.srcshift_4(srcshift_4), // IN
	.srcshift_5(srcshift_5), // IN
	.srcz1ld_0(srcz1ld_0), // IN
	.srcz1ld_1(srcz1ld_1), // IN
	.srcz2add(srcz2add), // IN
	.srcz2ld_0(srcz2ld_0), // IN
	.srcz2ld_1(srcz2ld_1), // IN
	.zedld_0(zedld_0), // IN
	.zedld_1(zedld_1), // IN
	.zedld_2(zedld_2), // IN
	.zedld_3(zedld_3), // IN
	.zincld(zincld), // IN
	.zmode_0(zmode_0), // IN
	.zmode_1(zmode_1), // IN
	.zmode_2(zmode_2), // IN
	.zpipe_0(zpipe_0), // IN
	.zpipe_1(zpipe_1)  // IN
);

// BLIT.NET (74) - address : address
address address_inst
(
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
	.a1_outside(a1_outside), // OUT
	.a1_pixsize_0(a1_pixsize_0), // IO
	.a1_pixsize_1(a1_pixsize_1), // IO
	.a1_pixsize_2(a1_pixsize_2), // IO
	.a1_win_x({a1_win_x[0],a1_win_x[1],a1_win_x[2],a1_win_x[3],a1_win_x[4],a1_win_x[5],a1_win_x[6],a1_win_x[7],a1_win_x[8],a1_win_x[9],a1_win_x[10],a1_win_x[11],a1_win_x[12],a1_win_x[13],a1_win_x[14]}), // IO
	.a1_x({a1_x[0],a1_x[1],a1_x[2],a1_x[3],a1_x[4],a1_x[5],a1_x[6],a1_x[7],a1_x[8],a1_x[9],a1_x[10],a1_x[11],a1_x[12],a1_x[13],a1_x[14],a1_x[15]}), // IO
	.a1addx_0(a1addx_0), // OUT
	.a1addx_1(a1addx_1), // OUT
	.a1addy(a1addy), // OUT
	.a1xsign(a1xsign), // OUT
	.a1ysign(a1ysign), // OUT
	.a2_pixsize_0(a2_pixsize_0), // IO
	.a2_pixsize_1(a2_pixsize_1), // IO
	.a2_pixsize_2(a2_pixsize_2), // IO
	.a2_x({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}), // IO
	.a2addx_0(a2addx_0), // OUT
	.a2addx_1(a2addx_1), // OUT
	.a2addy(a2addy), // OUT
	.a2xsign(a2xsign), // OUT
	.a2ysign(a2ysign), // OUT
	.address({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // OUT
	.pixa_0(pixa_0), // OUT
	.pixa_1(pixa_1), // OUT
	.pixa_2(pixa_2), // OUT
	.addasel_0(addasel_0), // IN
	.addasel_1(addasel_1), // IN
	.addasel_2(addasel_2), // IN
	.addbsel_0(addbsel_0), // IN
	.addbsel_1(addbsel_1), // IN
	.addqsel(addqsel), // IN
	.adda_xconst_0(adda_xconst_0), // IN
	.adda_xconst_1(adda_xconst_1), // IN
	.adda_xconst_2(adda_xconst_2), // IN
	.adda_yconst(adda_yconst), // IN
	.addareg(addareg), // IN
	.a1baseld(a1baseld), // IN
	.a1flagld(a1flagld), // IN
	.a1fracld(a1fracld), // IN
	.a1incld(a1incld), // IN
	.a1incfld(a1incfld), // IN
	.a1posrd(a1posrd), // IN
	.a1posfrd(a1posfrd), // IN
	.a1ptrld(a1ptrld), // IN
	.a1stepld(a1stepld), // IN
	.a1stepfld(a1stepfld), // IN
	.a1winld(a1winld), // IN
	.a2baseld(a2baseld), // IN
	.a2flagld(a2flagld), // IN
	.a2posrd(a2posrd), // IN
	.a2ptrld(a2ptrld), // IN
	.a2stepld(a2stepld), // IN
	.a2winld(a2winld), // IN
	.apipe(apipe), // IN
	.clk(clk_17), // IN
	.gena2(gena2), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.load_strobe(load_strobe), // IN
	.modx_0(modx_0), // IN
	.modx_1(modx_1), // IN
	.modx_2(modx_2), // IN
	.suba_x(suba_x), // IN
	.suba_y(suba_y), // IN
	.zaddr(zaddr)  // IN
);

// BLIT.NET (89) - state : state
state state_inst
(
	.blit_addr({blit_addr[0],blit_addr[1],blit_addr[2],blit_addr[3],blit_addr[4],blit_addr[5],blit_addr[6],blit_addr[7],blit_addr[8],blit_addr[9],blit_addr[10],blit_addr[11],blit_addr[12],blit_addr[13],blit_addr[14],blit_addr[15],blit_addr[16],blit_addr[17],blit_addr[18],blit_addr[19],blit_addr[20],blit_addr[21],blit_addr[22],blit_addr[23]}), // BUS
	.justify(justify), // BUS
	.mreq(mreq), // BUS
	.width_0(width_0), // BUS
	.width_1(width_1), // BUS
	.width_2(width_2), // BUS
	.width_3(width_3), // BUS
	.read(read), // BUS
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
	.a1fracldi(a1fracldi), // OUT
	.a1ptrldi(a1ptrldi), // OUT
	.a2ptrldi(a2ptrldi), // OUT
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
	.apipe(apipe), // OUT
	.blit_breq_0(blit_breq_0_obuf), // IO
	.blit_breq_1(blit_breq_1_obuf), // IO
	.blit_int(blit_int), // OUT
	.cmpdst(cmpdst), // OUT
	.daddasel_0(daddasel_0), // OUT
	.daddasel_1(daddasel_1), // OUT
	.daddasel_2(daddasel_2), // OUT
	.daddbsel_0(daddbsel_0), // OUT
	.daddbsel_1(daddbsel_1), // OUT
	.daddbsel_2(daddbsel_2), // OUT
	.daddmode_0(daddmode_0), // OUT
	.daddmode_1(daddmode_1), // OUT
	.daddmode_2(daddmode_2), // OUT
	.data_ena(data_ena), // OUT
	.data_sel_0(data_sel_0), // OUT
	.data_sel_1(data_sel_1), // OUT
	.dbinh_n_0(dbinh_n_0), // OUT
	.dbinh_n_1(dbinh_n_1), // OUT
	.dbinh_n_2(dbinh_n_2), // OUT
	.dbinh_n_3(dbinh_n_3), // OUT
	.dbinh_n_4(dbinh_n_4), // OUT
	.dbinh_n_5(dbinh_n_5), // OUT
	.dbinh_n_6(dbinh_n_6), // OUT
	.dbinh_n_7(dbinh_n_7), // OUT
	.dend_0(dend_0), // OUT
	.dend_1(dend_1), // OUT
	.dend_2(dend_2), // OUT
	.dend_3(dend_3), // OUT
	.dend_4(dend_4), // OUT
	.dend_5(dend_5), // OUT
	.dpipe_0(dpipe_0), // OUT
	.dpipe_1(dpipe_1), // OUT
	.dstart_0(dstart_0), // OUT
	.dstart_1(dstart_1), // OUT
	.dstart_2(dstart_2), // OUT
	.dstart_3(dstart_3), // OUT
	.dstart_4(dstart_4), // OUT
	.dstart_5(dstart_5), // OUT
	.dstdread(dstdread), // OUT
	.dstzread(dstzread), // OUT
	.gena2(gena2), // OUT
	.lfu_func_0(lfu_func_0), // OUT
	.lfu_func_1(lfu_func_1), // OUT
	.lfu_func_2(lfu_func_2), // OUT
	.lfu_func_3(lfu_func_3), // OUT
	.daddq_sel(daddq_sel), // OUT
	.modx_0(modx_0), // OUT
	.modx_1(modx_1), // OUT
	.modx_2(modx_2), // OUT
	.patdadd(patdadd), // OUT
	.patfadd(patfadd), // OUT
	.phrase_mode(phrase_mode), // IO
	.reset_n(reset_n), // IO
	.srcdread(srcdread), // OUT
	.srcshift_0(srcshift_0), // OUT
	.srcshift_1(srcshift_1), // OUT
	.srcshift_2(srcshift_2), // OUT
	.srcshift_3(srcshift_3), // OUT
	.srcshift_4(srcshift_4), // OUT
	.srcshift_5(srcshift_5), // OUT
	.srcz1add(srcz1add), // OUT
	.srcz2add(srcz2add), // OUT
	.srczread(srczread), // OUT
	.suba_x(suba_x), // OUT
	.suba_y(suba_y), // OUT
	.zaddr(zaddr), // OUT
	.zmode_0(zmode_0), // IO
	.zmode_1(zmode_1), // IO
	.zmode_2(zmode_2), // IO
	.zpipe_0(zpipe_0), // OUT
	.zpipe_1(zpipe_1), // OUT
	.a1_outside(a1_outside), // IN
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
	.a2_pixsize_0(a2_pixsize_0), // IN
	.a2_pixsize_1(a2_pixsize_1), // IN
	.a2_pixsize_2(a2_pixsize_2), // IN
	.a2_x({a2_x[0],a2_x[1],a2_x[2],a2_x[3],a2_x[4],a2_x[5],a2_x[6],a2_x[7],a2_x[8],a2_x[9],a2_x[10],a2_x[11],a2_x[12],a2_x[13],a2_x[14],a2_x[15]}), // IN
	.a2addx_0(a2addx_0), // IN
	.a2addx_1(a2addx_1), // IN
	.a2addy(a2addy), // IN
	.a2xsign(a2xsign), // IN
	.a2ysign(a2ysign), // IN
	.ack(ack), // IN
	.address({address[0],address[1],address[2],address[3],address[4],address[5],address[6],address[7],address[8],address[9],address[10],address[11],address[12],address[13],address[14],address[15],address[16],address[17],address[18],address[19],address[20],address[21],address[22],address[23]}), // IN
	.big_pix(big_pix), // IN
	.blit_back(blit_back), // IN
	.clk(clk_18), // IN
	.cmdld(cmdld), // IN
	.countld(countld), // IN
	.dcomp_0(dcomp_0), // IN
	.dcomp_1(dcomp_1), // IN
	.dcomp_2(dcomp_2), // IN
	.dcomp_3(dcomp_3), // IN
	.dcomp_4(dcomp_4), // IN
	.dcomp_5(dcomp_5), // IN
	.dcomp_6(dcomp_6), // IN
	.dcomp_7(dcomp_7), // IN
	.gpu_din({gpu_din[0],gpu_din[1],gpu_din[2],gpu_din[3],gpu_din[4],gpu_din[5],gpu_din[6],gpu_din[7],gpu_din[8],gpu_din[9],gpu_din[10],gpu_din[11],gpu_din[12],gpu_din[13],gpu_din[14],gpu_din[15],gpu_din[16],gpu_din[17],gpu_din[18],gpu_din[19],gpu_din[20],gpu_din[21],gpu_din[22],gpu_din[23],gpu_din[24],gpu_din[25],gpu_din[26],gpu_din[27],gpu_din[28],gpu_din[29],gpu_din[30],gpu_din[31]}), // IN
	.pixa_0(pixa_0), // IN
	.pixa_1(pixa_1), // IN
	.pixa_2(pixa_2), // IN
	.srcd_0(srcd_0), // IN
	.srcd_1(srcd_1), // IN
	.srcd_2(srcd_2), // IN
	.srcd_3(srcd_3), // IN
	.srcd_4(srcd_4), // IN
	.srcd_5(srcd_5), // IN
	.srcd_6(srcd_6), // IN
	.srcd_7(srcd_7), // IN
	.statrd(statrd), // IN
	.stopld(stopld), // IN
	.xreset_n(xreset_n), // IN
	.zcomp_0(zcomp_0), // IN
	.zcomp_1(zcomp_1), // IN
	.zcomp_2(zcomp_2), // IN
	.zcomp_3(zcomp_3)  // IN
);

// BLIT.NET (111) - blitgpu : blitgpu
blitgpu blitgpu_inst
(
	.a1baseld(a1baseld), // OUT
	.a1flagld(a1flagld), // OUT
	.a1fracld(a1fracld), // OUT
	.a1incld(a1incld), // OUT
	.a1incfld(a1incfld), // OUT
	.a1posrd(a1posrd), // OUT
	.a1posfrd(a1posfrd), // OUT
	.a1ptrld(a1ptrld), // OUT
	.a1stepld(a1stepld), // OUT
	.a1stepfld(a1stepfld), // OUT
	.a1winld(a1winld), // OUT
	.a2baseld(a2baseld), // OUT
	.a2flagld(a2flagld), // OUT
	.a2posrd(a2posrd), // OUT
	.a2ptrld(a2ptrld), // OUT
	.a2stepld(a2stepld), // OUT
	.a2winld(a2winld), // OUT
	.cmdld(cmdld), // OUT
	.countld(countld), // OUT
	.dstdld_0(dstdld_0), // OUT
	.dstdld_1(dstdld_1), // OUT
	.dstzld_0(dstzld_0), // OUT
	.dstzld_1(dstzld_1), // OUT
	.iincld(iincld), // OUT
	.intld_0(intld_0), // OUT
	.intld_1(intld_1), // OUT
	.intld_2(intld_2), // OUT
	.intld_3(intld_3), // OUT
	.patdld_0(patdld_0), // OUT
	.patdld_1(patdld_1), // OUT
	.srcd1ld_0(srcd1ld_0), // OUT
	.srcd1ld_1(srcd1ld_1), // OUT
	.srcz1ld_0(srcz1ld_0), // OUT
	.srcz1ld_1(srcz1ld_1), // OUT
	.srcz2ld_0(srcz2ld_0), // OUT
	.srcz2ld_1(srcz2ld_1), // OUT
	.statrd(statrd), // OUT
	.stopld(stopld), // OUT
	.zedld_0(zedld_0), // OUT
	.zedld_1(zedld_1), // OUT
	.zedld_2(zedld_2), // OUT
	.zedld_3(zedld_3), // OUT
	.zincld(zincld), // OUT
	.a1fracldi(a1fracldi), // IN
	.a1ptrldi(a1ptrldi), // IN
	.a2ptrldi(a2ptrldi), // IN
	.blit_back(blit_back), // IN
	.bliten(bliten), // IN
	.dstdread(dstdread), // IN
	.dstzread(dstzread), // IN
	.gpu_addr({gpu_addr[0],gpu_addr[1],gpu_addr[2],gpu_addr[3],gpu_addr[4],gpu_addr[5],gpu_addr[6],gpu_addr[7],gpu_addr[8],gpu_addr[9],gpu_addr[10],gpu_addr[11],gpu_addr[12],gpu_addr[13],gpu_addr[14],gpu_addr[15],gpu_addr[16],gpu_addr[17],gpu_addr[18],gpu_addr[19],gpu_addr[20],gpu_addr[21],gpu_addr[22],gpu_addr[23]}), // IN
	.gpu_memw(gpu_memw), // IN
	.patdadd(patdadd), // IN
	.patfadd(patfadd), // IN
	.srcdread(srcdread), // IN
	.srcz1add(srcz1add), // IN
	.srczread(srczread)  // IN
);
endmodule
