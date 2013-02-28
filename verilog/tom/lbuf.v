`include "defs.v"

module lbuf
(
	input aout_1,
	input aout_15,
	input dout_0,
	input dout_1,
	input dout_2,
	input dout_3,
	input dout_4,
	input dout_5,
	input dout_6,
	input dout_7,
	input dout_8,
	input dout_9,
	input dout_10,
	input dout_11,
	input dout_12,
	input dout_13,
	input dout_14,
	input dout_15,
	input dout_16,
	input dout_17,
	input dout_18,
	input dout_19,
	input dout_20,
	input dout_21,
	input dout_22,
	input dout_23,
	input dout_24,
	input dout_25,
	input dout_26,
	input dout_27,
	input dout_28,
	input dout_29,
	input dout_30,
	input dout_31,
	input siz_2,
	input lbwa_0,
	input lbwa_1,
	input lbwa_2,
	input lbwa_3,
	input lbwa_4,
	input lbwa_5,
	input lbwa_6,
	input lbwa_7,
	input lbwa_8,
	input lbra_0,
	input lbra_1,
	input lbra_2,
	input lbra_3,
	input lbra_4,
	input lbra_5,
	input lbra_6,
	input lbra_7,
	input lbra_8,
	input lbwe_0,
	input lbwe_1,
	input lbwd_0,
	input lbwd_1,
	input lbwd_2,
	input lbwd_3,
	input lbwd_4,
	input lbwd_5,
	input lbwd_6,
	input lbwd_7,
	input lbwd_8,
	input lbwd_9,
	input lbwd_10,
	input lbwd_11,
	input lbwd_12,
	input lbwd_13,
	input lbwd_14,
	input lbwd_15,
	input lbwd_16,
	input lbwd_17,
	input lbwd_18,
	input lbwd_19,
	input lbwd_20,
	input lbwd_21,
	input lbwd_22,
	input lbwd_23,
	input lbwd_24,
	input lbwd_25,
	input lbwd_26,
	input lbwd_27,
	input lbwd_28,
	input lbwd_29,
	input lbwd_30,
	input lbwd_31,
	input lbufa,
	input lbufb,
	input lbaw,
	input lbbw,
	input rmw,
	input reads,
	input vclk,
	input clk_0,
	input lben,
	input bgw,
	input bgwr,
	input vactive,
	input lbaactive,
	input lbbactive,
	input bigend,
	output lbrd_0,
	output lbrd_1,
	output lbrd_2,
	output lbrd_3,
	output lbrd_4,
	output lbrd_5,
	output lbrd_6,
	output lbrd_7,
	output lbrd_8,
	output lbrd_9,
	output lbrd_10,
	output lbrd_11,
	output lbrd_12,
	output lbrd_13,
	output lbrd_14,
	output lbrd_15,
	output lbrd_16,
	output lbrd_17,
	output lbrd_18,
	output lbrd_19,
	output lbrd_20,
	output lbrd_21,
	output lbrd_22,
	output lbrd_23,
	output lbrd_24,
	output lbrd_25,
	output lbrd_26,
	output lbrd_27,
	output lbrd_28,
	output lbrd_29,
	output lbrd_30,
	output lbrd_31,
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
	inout dr_15
);
wire [0:8] lbai;
wire [0:8] lbbi;
wire [0:31] lbrd_d;
wire [0:15] wdil;
wire [0:15] wdih;
wire [0:15] lbadl;
wire [0:15] lbadh;
wire [0:15] lbbdl;
wire [0:15] lbbdh;
wire [0:15] bgc;
wire nota_1;
wire lbad;
wire lba;
wire lbbd;
wire lbb;
wire lbwad_0;
wire lbwad_1;
wire lbwad_2;
wire lbwad_3;
wire lbwad_4;
wire lbwad_5;
wire lbwad_6;
wire lbwad_7;
wire lbwad_8;
wire lbrad_0;
wire lbrad_1;
wire lbrad_2;
wire lbrad_3;
wire lbrad_4;
wire lbrad_5;
wire lbrad_6;
wire lbrad_7;
wire lbrad_8;
wire lbaadi_0;
wire lbaadi_1;
wire lbaadi_2;
wire lbaadi_3;
wire lbaadi_4;
wire lbaadi_5;
wire lbaadi_6;
wire lbaadi_7;
wire lbaadi_8;
wire lbbadi_0;
wire lbbadi_1;
wire lbbadi_2;
wire lbbadi_3;
wire lbbadi_4;
wire lbbadi_5;
wire lbbadi_6;
wire lbbadi_7;
wire lbbadi_8;
wire lbaad_0;
wire lbaad_1;
wire lbaad_2;
wire lbaad_3;
wire lbaad_4;
wire lbaad_5;
wire lbaad_6;
wire lbaad_7;
wire lbaad_8;
wire lbbad_0;
wire lbbad_1;
wire lbbad_2;
wire lbbad_3;
wire lbbad_4;
wire lbbad_5;
wire lbbad_6;
wire lbbad_7;
wire lbbad_8;
wire dw_0;
wire dw_1;
wire dw_2;
wire dw_3;
wire dw_4;
wire dw_5;
wire dw_6;
wire dw_7;
wire dw_8;
wire dw_9;
wire dw_10;
wire dw_11;
wire dw_12;
wire dw_13;
wire dw_14;
wire dw_15;
wire down;
wire dw_16;
wire dw_17;
wire dw_18;
wire dw_19;
wire dw_20;
wire dw_21;
wire dw_22;
wire dw_23;
wire dw_24;
wire dw_25;
wire dw_26;
wire dw_27;
wire dw_28;
wire dw_29;
wire dw_30;
wire dw_31;
wire up;
wire littlend;
wire rmwd_0;
wire rmwd_1;
wire rmwd_2;
wire rmwd_3;
wire rmwd_4;
wire rmwd_5;
wire rmwd_6;
wire rmwd_7;
wire rmwd_8;
wire rmwd_9;
wire rmwd_10;
wire rmwd_11;
wire rmwd_12;
wire rmwd_13;
wire rmwd_14;
wire rmwd_15;
wire rmwd_16;
wire rmwd_17;
wire rmwd_18;
wire rmwd_19;
wire rmwd_20;
wire rmwd_21;
wire rmwd_22;
wire rmwd_23;
wire rmwd_24;
wire rmwd_25;
wire rmwd_26;
wire rmwd_27;
wire rmwd_28;
wire rmwd_29;
wire rmwd_30;
wire rmwd_31;
wire rmwd1_0;
wire rmwd1_1;
wire rmwd1_2;
wire rmwd1_3;
wire rmwd1_4;
wire rmwd1_5;
wire rmwd1_6;
wire rmwd1_7;
wire rmwd1_8;
wire rmwd1_9;
wire rmwd1_10;
wire rmwd1_11;
wire rmwd1_12;
wire rmwd1_13;
wire rmwd1_14;
wire rmwd1_15;
wire rmwd1_16;
wire rmwd1_17;
wire rmwd1_18;
wire rmwd1_19;
wire rmwd1_20;
wire rmwd1_21;
wire rmwd1_22;
wire rmwd1_23;
wire rmwd1_24;
wire rmwd1_25;
wire rmwd1_26;
wire rmwd1_27;
wire rmwd1_28;
wire rmwd1_29;
wire rmwd1_30;
wire rmwd1_31;
wire rmwd2_0;
wire rmwd2_1;
wire rmwd2_2;
wire rmwd2_3;
wire rmwd2_4;
wire rmwd2_5;
wire rmwd2_6;
wire rmwd2_7;
wire rmwd2_8;
wire rmwd2_9;
wire rmwd2_10;
wire rmwd2_11;
wire rmwd2_12;
wire rmwd2_13;
wire rmwd2_14;
wire rmwd2_15;
wire rmwd2_16;
wire rmwd2_17;
wire rmwd2_18;
wire rmwd2_19;
wire rmwd2_20;
wire rmwd2_21;
wire rmwd2_22;
wire rmwd2_23;
wire rmwd2_24;
wire rmwd2_25;
wire rmwd2_26;
wire rmwd2_27;
wire rmwd2_28;
wire rmwd2_29;
wire rmwd2_30;
wire rmwd2_31;
wire wd_0;
wire wd_1;
wire wd_2;
wire wd_3;
wire wd_4;
wire wd_5;
wire wd_6;
wire wd_7;
wire wd_8;
wire wd_9;
wire wd_10;
wire wd_11;
wire wd_12;
wire wd_13;
wire wd_14;
wire wd_15;
wire wd_16;
wire wd_17;
wire wd_18;
wire wd_19;
wire wd_20;
wire wd_21;
wire wd_22;
wire wd_23;
wire wd_24;
wire wd_25;
wire wd_26;
wire wd_27;
wire wd_28;
wire wd_29;
wire wd_30;
wire wd_31;
wire extadd;
wire writes;
wire lbr_0;
wire lbr_1;
wire wra0;
wire wra1l;
wire wra1h;
wire wra2l;
wire wra2h;
wire notsiz_2;
wire wrali;
wire notaactive;
wire wrahi;
wire wral;
wire wrah;
wire wrb0;
wire wrb1l;
wire wrb1h;
wire wrb2l;
wire wrb2h;
wire wrbli;
wire notbactive;
wire wrbhi;
wire wrbl;
wire wrbh;
wire cea_0;
wire wea_0;
wire cea_1;
wire wea_1;
wire ceb_0;
wire web_0;
wire ceb_1;
wire web_1;
wire ncst;
wire nvcst;
wire cea0;
wire cea1;
wire cea2;
wire aactive;
wire ceb0;
wire ceb1;
wire ceb2;
wire bactive;
wire wea00;
wire wea01;
wire wea02;
wire wead_0;
wire wea10;
wire wea11;
wire wea12;
wire vcc;
wire wead_1;
wire web00;
wire web01;
wire web02;
wire webd_0;
wire web10;
wire web11;
wire web12;
wire webd_1;
wire lbdi_0;
wire lbdi_1;
wire lbdi_2;
wire lbdi_3;
wire lbdi_4;
wire lbdi_5;
wire lbdi_6;
wire lbdi_7;
wire lbdi_8;
wire lbdi_9;
wire lbdi_10;
wire lbdi_11;
wire lbdi_12;
wire lbdi_13;
wire lbdi_14;
wire lbdi_15;
wire lbd_0;
wire lbd_1;
wire lbd_2;
wire lbd_3;
wire lbd_4;
wire lbd_5;
wire lbd_6;
wire lbd_7;
wire lbd_8;
wire lbd_9;
wire lbd_10;
wire lbd_11;
wire lbd_12;
wire lbd_13;
wire lbd_14;
wire lbd_15;
wire lbdeni;
wire lbden;
wire bgc_0;
wire bgc_1;
wire bgc_2;
wire bgc_3;
wire bgc_4;
wire bgc_5;
wire bgc_6;
wire bgc_7;
wire bgc_8;
wire bgc_9;
wire bgc_10;
wire bgc_11;
wire bgc_12;
wire bgc_13;
wire bgc_14;
wire bgc_15;
wire bgwa;
wire bgwb;

// Output buffers
wire lbrd_0_obuf;
wire lbrd_1_obuf;
wire lbrd_2_obuf;
wire lbrd_3_obuf;
wire lbrd_4_obuf;
wire lbrd_5_obuf;
wire lbrd_6_obuf;
wire lbrd_7_obuf;
wire lbrd_8_obuf;
wire lbrd_9_obuf;
wire lbrd_10_obuf;
wire lbrd_11_obuf;
wire lbrd_12_obuf;
wire lbrd_13_obuf;
wire lbrd_14_obuf;
wire lbrd_15_obuf;
wire lbrd_16_obuf;
wire lbrd_17_obuf;
wire lbrd_18_obuf;
wire lbrd_19_obuf;
wire lbrd_20_obuf;
wire lbrd_21_obuf;
wire lbrd_22_obuf;
wire lbrd_23_obuf;
wire lbrd_24_obuf;
wire lbrd_25_obuf;
wire lbrd_26_obuf;
wire lbrd_27_obuf;
wire lbrd_28_obuf;
wire lbrd_29_obuf;
wire lbrd_30_obuf;
wire lbrd_31_obuf;


// Output buffers
assign lbrd_0 = lbrd_0_obuf;
assign lbrd_1 = lbrd_1_obuf;
assign lbrd_2 = lbrd_2_obuf;
assign lbrd_3 = lbrd_3_obuf;
assign lbrd_4 = lbrd_4_obuf;
assign lbrd_5 = lbrd_5_obuf;
assign lbrd_6 = lbrd_6_obuf;
assign lbrd_7 = lbrd_7_obuf;
assign lbrd_8 = lbrd_8_obuf;
assign lbrd_9 = lbrd_9_obuf;
assign lbrd_10 = lbrd_10_obuf;
assign lbrd_11 = lbrd_11_obuf;
assign lbrd_12 = lbrd_12_obuf;
assign lbrd_13 = lbrd_13_obuf;
assign lbrd_14 = lbrd_14_obuf;
assign lbrd_15 = lbrd_15_obuf;
assign lbrd_16 = lbrd_16_obuf;
assign lbrd_17 = lbrd_17_obuf;
assign lbrd_18 = lbrd_18_obuf;
assign lbrd_19 = lbrd_19_obuf;
assign lbrd_20 = lbrd_20_obuf;
assign lbrd_21 = lbrd_21_obuf;
assign lbrd_22 = lbrd_22_obuf;
assign lbrd_23 = lbrd_23_obuf;
assign lbrd_24 = lbrd_24_obuf;
assign lbrd_25 = lbrd_25_obuf;
assign lbrd_26 = lbrd_26_obuf;
assign lbrd_27 = lbrd_27_obuf;
assign lbrd_28 = lbrd_28_obuf;
assign lbrd_29 = lbrd_29_obuf;
assign lbrd_30 = lbrd_30_obuf;
assign lbrd_31 = lbrd_31_obuf;


// LBUF.NET (57) - nota[1] : iv
assign nota_1 = ~aout_1;

// LBUF.NET (59) - lbad : twoniv
twoniv lbad_inst
(
	.z(lbad), // IO
	.a(lbaw)  // IN
);

// LBUF.NET (60) - lba : nivu
assign lba = lbad;

// LBUF.NET (61) - lbbd : twoniv
twoniv lbbd_inst
(
	.z(lbbd), // IO
	.a(lbbw)  // IN
);

// LBUF.NET (62) - lbb : nivu
assign lbb = lbbd;

// LBUF.NET (66) - lbwad[0-8] : hdly1b
assign lbwad_0 = lbwa_0;
assign lbwad_1 = lbwa_1;
assign lbwad_2 = lbwa_2;
assign lbwad_3 = lbwa_3;
assign lbwad_4 = lbwa_4;
assign lbwad_5 = lbwa_5;
assign lbwad_6 = lbwa_6;
assign lbwad_7 = lbwa_7;
assign lbwad_8 = lbwa_8;

// LBUF.NET (67) - lbrad[0-8] : hdly1b
assign lbrad_0 = lbra_0;
assign lbrad_1 = lbra_1;
assign lbrad_2 = lbra_2;
assign lbrad_3 = lbra_3;
assign lbrad_4 = lbra_4;
assign lbrad_5 = lbra_5;
assign lbrad_6 = lbra_6;
assign lbrad_7 = lbra_7;
assign lbrad_8 = lbra_8;

// LBUF.NET (68) - lbaadi[0-8] : mx2p
mx2 lbaadi_from_0_to_8_inst_0
(
	.z(lbaadi_0), // OUT
	.a0(lbwad_0), // IN
	.a1(lbrad_0), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_1
(
	.z(lbaadi_1), // OUT
	.a0(lbwad_1), // IN
	.a1(lbrad_1), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_2
(
	.z(lbaadi_2), // OUT
	.a0(lbwad_2), // IN
	.a1(lbrad_2), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_3
(
	.z(lbaadi_3), // OUT
	.a0(lbwad_3), // IN
	.a1(lbrad_3), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_4
(
	.z(lbaadi_4), // OUT
	.a0(lbwad_4), // IN
	.a1(lbrad_4), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_5
(
	.z(lbaadi_5), // OUT
	.a0(lbwad_5), // IN
	.a1(lbrad_5), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_6
(
	.z(lbaadi_6), // OUT
	.a0(lbwad_6), // IN
	.a1(lbrad_6), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_7
(
	.z(lbaadi_7), // OUT
	.a0(lbwad_7), // IN
	.a1(lbrad_7), // IN
	.s(lbaactive)  // IN
);
mx2 lbaadi_from_0_to_8_inst_8
(
	.z(lbaadi_8), // OUT
	.a0(lbwad_8), // IN
	.a1(lbrad_8), // IN
	.s(lbaactive)  // IN
);

// LBUF.NET (69) - lbbadi[0-8] : mx2p
mx2 lbbadi_from_0_to_8_inst_0
(
	.z(lbbadi_0), // OUT
	.a0(lbwad_0), // IN
	.a1(lbrad_0), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_1
(
	.z(lbbadi_1), // OUT
	.a0(lbwad_1), // IN
	.a1(lbrad_1), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_2
(
	.z(lbbadi_2), // OUT
	.a0(lbwad_2), // IN
	.a1(lbrad_2), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_3
(
	.z(lbbadi_3), // OUT
	.a0(lbwad_3), // IN
	.a1(lbrad_3), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_4
(
	.z(lbbadi_4), // OUT
	.a0(lbwad_4), // IN
	.a1(lbrad_4), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_5
(
	.z(lbbadi_5), // OUT
	.a0(lbwad_5), // IN
	.a1(lbrad_5), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_6
(
	.z(lbbadi_6), // OUT
	.a0(lbwad_6), // IN
	.a1(lbrad_6), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_7
(
	.z(lbbadi_7), // OUT
	.a0(lbwad_7), // IN
	.a1(lbrad_7), // IN
	.s(lbbactive)  // IN
);
mx2 lbbadi_from_0_to_8_inst_8
(
	.z(lbbadi_8), // OUT
	.a0(lbwad_8), // IN
	.a1(lbrad_8), // IN
	.s(lbbactive)  // IN
);

// LBUF.NET (70) - lbaad[0-8] : niv
assign lbaad_0 = lbaadi_0;
assign lbaad_1 = lbaadi_1;
assign lbaad_2 = lbaadi_2;
assign lbaad_3 = lbaadi_3;
assign lbaad_4 = lbaadi_4;
assign lbaad_5 = lbaadi_5;
assign lbaad_6 = lbaadi_6;
assign lbaad_7 = lbaadi_7;
assign lbaad_8 = lbaadi_8;

// LBUF.NET (71) - lbbad[0-8] : niv
assign lbbad_0 = lbbadi_0;
assign lbbad_1 = lbbadi_1;
assign lbbad_2 = lbbadi_2;
assign lbbad_3 = lbbadi_3;
assign lbbad_4 = lbbadi_4;
assign lbbad_5 = lbbadi_5;
assign lbbad_6 = lbbadi_6;
assign lbbad_7 = lbbadi_7;
assign lbbad_8 = lbbadi_8;

// LBUF.NET (76) - dw[0-15] : mx2
mx2 dw_from_0_to_15_inst_0
(
	.z(dw_0), // OUT
	.a0(dout_0), // IN
	.a1(dout_16), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_1
(
	.z(dw_1), // OUT
	.a0(dout_1), // IN
	.a1(dout_17), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_2
(
	.z(dw_2), // OUT
	.a0(dout_2), // IN
	.a1(dout_18), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_3
(
	.z(dw_3), // OUT
	.a0(dout_3), // IN
	.a1(dout_19), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_4
(
	.z(dw_4), // OUT
	.a0(dout_4), // IN
	.a1(dout_20), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_5
(
	.z(dw_5), // OUT
	.a0(dout_5), // IN
	.a1(dout_21), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_6
(
	.z(dw_6), // OUT
	.a0(dout_6), // IN
	.a1(dout_22), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_7
(
	.z(dw_7), // OUT
	.a0(dout_7), // IN
	.a1(dout_23), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_8
(
	.z(dw_8), // OUT
	.a0(dout_8), // IN
	.a1(dout_24), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_9
(
	.z(dw_9), // OUT
	.a0(dout_9), // IN
	.a1(dout_25), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_10
(
	.z(dw_10), // OUT
	.a0(dout_10), // IN
	.a1(dout_26), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_11
(
	.z(dw_11), // OUT
	.a0(dout_11), // IN
	.a1(dout_27), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_12
(
	.z(dw_12), // OUT
	.a0(dout_12), // IN
	.a1(dout_28), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_13
(
	.z(dw_13), // OUT
	.a0(dout_13), // IN
	.a1(dout_29), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_14
(
	.z(dw_14), // OUT
	.a0(dout_14), // IN
	.a1(dout_30), // IN
	.s(down)  // IN
);
mx2 dw_from_0_to_15_inst_15
(
	.z(dw_15), // OUT
	.a0(dout_15), // IN
	.a1(dout_31), // IN
	.s(down)  // IN
);

// LBUF.NET (77) - dw[16-31] : mx2
mx2 dw_from_16_to_31_inst_0
(
	.z(dw_16), // OUT
	.a0(dout_0), // IN
	.a1(dout_16), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_1
(
	.z(dw_17), // OUT
	.a0(dout_1), // IN
	.a1(dout_17), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_2
(
	.z(dw_18), // OUT
	.a0(dout_2), // IN
	.a1(dout_18), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_3
(
	.z(dw_19), // OUT
	.a0(dout_3), // IN
	.a1(dout_19), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_4
(
	.z(dw_20), // OUT
	.a0(dout_4), // IN
	.a1(dout_20), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_5
(
	.z(dw_21), // OUT
	.a0(dout_5), // IN
	.a1(dout_21), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_6
(
	.z(dw_22), // OUT
	.a0(dout_6), // IN
	.a1(dout_22), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_7
(
	.z(dw_23), // OUT
	.a0(dout_7), // IN
	.a1(dout_23), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_8
(
	.z(dw_24), // OUT
	.a0(dout_8), // IN
	.a1(dout_24), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_9
(
	.z(dw_25), // OUT
	.a0(dout_9), // IN
	.a1(dout_25), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_10
(
	.z(dw_26), // OUT
	.a0(dout_10), // IN
	.a1(dout_26), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_11
(
	.z(dw_27), // OUT
	.a0(dout_11), // IN
	.a1(dout_27), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_12
(
	.z(dw_28), // OUT
	.a0(dout_12), // IN
	.a1(dout_28), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_13
(
	.z(dw_29), // OUT
	.a0(dout_13), // IN
	.a1(dout_29), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_14
(
	.z(dw_30), // OUT
	.a0(dout_14), // IN
	.a1(dout_30), // IN
	.s(up)  // IN
);
mx2 dw_from_16_to_31_inst_15
(
	.z(dw_31), // OUT
	.a0(dout_15), // IN
	.a1(dout_31), // IN
	.s(up)  // IN
);

// LBUF.NET (78) - littlend : iv
assign littlend = ~bigend;

// LBUF.NET (79) - down : an2h
assign down = aout_15 & bigend;

// LBUF.NET (80) - up : an2h
assign up = aout_15 & littlend;

// LBUF.NET (84) - lbrd[0-15] : mx2
mx2 lbrd_from_0_to_15_inst_0
(
	.z(lbrd_0_obuf), // OUT
	.a0(lbbdl[0]), // IN
	.a1(lbadl[0]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_1
(
	.z(lbrd_1_obuf), // OUT
	.a0(lbbdl[1]), // IN
	.a1(lbadl[1]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_2
(
	.z(lbrd_2_obuf), // OUT
	.a0(lbbdl[2]), // IN
	.a1(lbadl[2]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_3
(
	.z(lbrd_3_obuf), // OUT
	.a0(lbbdl[3]), // IN
	.a1(lbadl[3]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_4
(
	.z(lbrd_4_obuf), // OUT
	.a0(lbbdl[4]), // IN
	.a1(lbadl[4]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_5
(
	.z(lbrd_5_obuf), // OUT
	.a0(lbbdl[5]), // IN
	.a1(lbadl[5]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_6
(
	.z(lbrd_6_obuf), // OUT
	.a0(lbbdl[6]), // IN
	.a1(lbadl[6]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_7
(
	.z(lbrd_7_obuf), // OUT
	.a0(lbbdl[7]), // IN
	.a1(lbadl[7]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_8
(
	.z(lbrd_8_obuf), // OUT
	.a0(lbbdl[8]), // IN
	.a1(lbadl[8]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_9
(
	.z(lbrd_9_obuf), // OUT
	.a0(lbbdl[9]), // IN
	.a1(lbadl[9]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_10
(
	.z(lbrd_10_obuf), // OUT
	.a0(lbbdl[10]), // IN
	.a1(lbadl[10]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_11
(
	.z(lbrd_11_obuf), // OUT
	.a0(lbbdl[11]), // IN
	.a1(lbadl[11]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_12
(
	.z(lbrd_12_obuf), // OUT
	.a0(lbbdl[12]), // IN
	.a1(lbadl[12]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_13
(
	.z(lbrd_13_obuf), // OUT
	.a0(lbbdl[13]), // IN
	.a1(lbadl[13]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_14
(
	.z(lbrd_14_obuf), // OUT
	.a0(lbbdl[14]), // IN
	.a1(lbadl[14]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_0_to_15_inst_15
(
	.z(lbrd_15_obuf), // OUT
	.a0(lbbdl[15]), // IN
	.a1(lbadl[15]), // IN
	.s(lbufa)  // IN
);

// LBUF.NET (85) - lbrd[16-31] : mx2
mx2 lbrd_from_16_to_31_inst_0
(
	.z(lbrd_16_obuf), // OUT
	.a0(lbbdh[0]), // IN
	.a1(lbadh[0]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_1
(
	.z(lbrd_17_obuf), // OUT
	.a0(lbbdh[1]), // IN
	.a1(lbadh[1]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_2
(
	.z(lbrd_18_obuf), // OUT
	.a0(lbbdh[2]), // IN
	.a1(lbadh[2]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_3
(
	.z(lbrd_19_obuf), // OUT
	.a0(lbbdh[3]), // IN
	.a1(lbadh[3]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_4
(
	.z(lbrd_20_obuf), // OUT
	.a0(lbbdh[4]), // IN
	.a1(lbadh[4]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_5
(
	.z(lbrd_21_obuf), // OUT
	.a0(lbbdh[5]), // IN
	.a1(lbadh[5]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_6
(
	.z(lbrd_22_obuf), // OUT
	.a0(lbbdh[6]), // IN
	.a1(lbadh[6]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_7
(
	.z(lbrd_23_obuf), // OUT
	.a0(lbbdh[7]), // IN
	.a1(lbadh[7]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_8
(
	.z(lbrd_24_obuf), // OUT
	.a0(lbbdh[8]), // IN
	.a1(lbadh[8]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_9
(
	.z(lbrd_25_obuf), // OUT
	.a0(lbbdh[9]), // IN
	.a1(lbadh[9]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_10
(
	.z(lbrd_26_obuf), // OUT
	.a0(lbbdh[10]), // IN
	.a1(lbadh[10]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_11
(
	.z(lbrd_27_obuf), // OUT
	.a0(lbbdh[11]), // IN
	.a1(lbadh[11]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_12
(
	.z(lbrd_28_obuf), // OUT
	.a0(lbbdh[12]), // IN
	.a1(lbadh[12]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_13
(
	.z(lbrd_29_obuf), // OUT
	.a0(lbbdh[13]), // IN
	.a1(lbadh[13]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_14
(
	.z(lbrd_30_obuf), // OUT
	.a0(lbbdh[14]), // IN
	.a1(lbadh[14]), // IN
	.s(lbufa)  // IN
);
mx2 lbrd_from_16_to_31_inst_15
(
	.z(lbrd_31_obuf), // OUT
	.a0(lbbdh[15]), // IN
	.a1(lbadh[15]), // IN
	.s(lbufa)  // IN
);

// LBUF.NET (88) - ge1 : join
assign lbrd_d[0] = lbrd_0_obuf;
assign lbrd_d[1] = lbrd_1_obuf;
assign lbrd_d[2] = lbrd_2_obuf;
assign lbrd_d[3] = lbrd_3_obuf;
assign lbrd_d[4] = lbrd_4_obuf;
assign lbrd_d[5] = lbrd_5_obuf;
assign lbrd_d[6] = lbrd_6_obuf;
assign lbrd_d[7] = lbrd_7_obuf;
assign lbrd_d[8] = lbrd_8_obuf;
assign lbrd_d[9] = lbrd_9_obuf;
assign lbrd_d[10] = lbrd_10_obuf;
assign lbrd_d[11] = lbrd_11_obuf;
assign lbrd_d[12] = lbrd_12_obuf;
assign lbrd_d[13] = lbrd_13_obuf;
assign lbrd_d[14] = lbrd_14_obuf;
assign lbrd_d[15] = lbrd_15_obuf;
assign lbrd_d[16] = lbrd_16_obuf;
assign lbrd_d[17] = lbrd_17_obuf;
assign lbrd_d[18] = lbrd_18_obuf;
assign lbrd_d[19] = lbrd_19_obuf;
assign lbrd_d[20] = lbrd_20_obuf;
assign lbrd_d[21] = lbrd_21_obuf;
assign lbrd_d[22] = lbrd_22_obuf;
assign lbrd_d[23] = lbrd_23_obuf;
assign lbrd_d[24] = lbrd_24_obuf;
assign lbrd_d[25] = lbrd_25_obuf;
assign lbrd_d[26] = lbrd_26_obuf;
assign lbrd_d[27] = lbrd_27_obuf;
assign lbrd_d[28] = lbrd_28_obuf;
assign lbrd_d[29] = lbrd_29_obuf;
assign lbrd_d[30] = lbrd_30_obuf;
assign lbrd_d[31] = lbrd_31_obuf;

// LBUF.NET (89) - ge2 : dummy

// LBUF.NET (93) - rmwd[0-15] : mx2
mx2 rmwd_from_0_to_15_inst_0
(
	.z(rmwd_0), // OUT
	.a0(lbbdl[0]), // IN
	.a1(lbadl[0]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_1
(
	.z(rmwd_1), // OUT
	.a0(lbbdl[1]), // IN
	.a1(lbadl[1]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_2
(
	.z(rmwd_2), // OUT
	.a0(lbbdl[2]), // IN
	.a1(lbadl[2]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_3
(
	.z(rmwd_3), // OUT
	.a0(lbbdl[3]), // IN
	.a1(lbadl[3]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_4
(
	.z(rmwd_4), // OUT
	.a0(lbbdl[4]), // IN
	.a1(lbadl[4]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_5
(
	.z(rmwd_5), // OUT
	.a0(lbbdl[5]), // IN
	.a1(lbadl[5]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_6
(
	.z(rmwd_6), // OUT
	.a0(lbbdl[6]), // IN
	.a1(lbadl[6]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_7
(
	.z(rmwd_7), // OUT
	.a0(lbbdl[7]), // IN
	.a1(lbadl[7]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_8
(
	.z(rmwd_8), // OUT
	.a0(lbbdl[8]), // IN
	.a1(lbadl[8]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_9
(
	.z(rmwd_9), // OUT
	.a0(lbbdl[9]), // IN
	.a1(lbadl[9]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_10
(
	.z(rmwd_10), // OUT
	.a0(lbbdl[10]), // IN
	.a1(lbadl[10]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_11
(
	.z(rmwd_11), // OUT
	.a0(lbbdl[11]), // IN
	.a1(lbadl[11]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_12
(
	.z(rmwd_12), // OUT
	.a0(lbbdl[12]), // IN
	.a1(lbadl[12]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_13
(
	.z(rmwd_13), // OUT
	.a0(lbbdl[13]), // IN
	.a1(lbadl[13]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_14
(
	.z(rmwd_14), // OUT
	.a0(lbbdl[14]), // IN
	.a1(lbadl[14]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_0_to_15_inst_15
(
	.z(rmwd_15), // OUT
	.a0(lbbdl[15]), // IN
	.a1(lbadl[15]), // IN
	.s(lbufb)  // IN
);

// LBUF.NET (94) - rmwd[16-31] : mx2
mx2 rmwd_from_16_to_31_inst_0
(
	.z(rmwd_16), // OUT
	.a0(lbbdh[0]), // IN
	.a1(lbadh[0]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_1
(
	.z(rmwd_17), // OUT
	.a0(lbbdh[1]), // IN
	.a1(lbadh[1]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_2
(
	.z(rmwd_18), // OUT
	.a0(lbbdh[2]), // IN
	.a1(lbadh[2]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_3
(
	.z(rmwd_19), // OUT
	.a0(lbbdh[3]), // IN
	.a1(lbadh[3]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_4
(
	.z(rmwd_20), // OUT
	.a0(lbbdh[4]), // IN
	.a1(lbadh[4]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_5
(
	.z(rmwd_21), // OUT
	.a0(lbbdh[5]), // IN
	.a1(lbadh[5]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_6
(
	.z(rmwd_22), // OUT
	.a0(lbbdh[6]), // IN
	.a1(lbadh[6]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_7
(
	.z(rmwd_23), // OUT
	.a0(lbbdh[7]), // IN
	.a1(lbadh[7]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_8
(
	.z(rmwd_24), // OUT
	.a0(lbbdh[8]), // IN
	.a1(lbadh[8]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_9
(
	.z(rmwd_25), // OUT
	.a0(lbbdh[9]), // IN
	.a1(lbadh[9]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_10
(
	.z(rmwd_26), // OUT
	.a0(lbbdh[10]), // IN
	.a1(lbadh[10]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_11
(
	.z(rmwd_27), // OUT
	.a0(lbbdh[11]), // IN
	.a1(lbadh[11]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_12
(
	.z(rmwd_28), // OUT
	.a0(lbbdh[12]), // IN
	.a1(lbadh[12]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_13
(
	.z(rmwd_29), // OUT
	.a0(lbbdh[13]), // IN
	.a1(lbadh[13]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_14
(
	.z(rmwd_30), // OUT
	.a0(lbbdh[14]), // IN
	.a1(lbadh[14]), // IN
	.s(lbufb)  // IN
);
mx2 rmwd_from_16_to_31_inst_15
(
	.z(rmwd_31), // OUT
	.a0(lbbdh[15]), // IN
	.a1(lbadh[15]), // IN
	.s(lbufb)  // IN
);

// LBUF.NET (98) - rmwd1[0-31] : fd1q
fd1q rmwd1_from_0_to_31_inst_0
(
	.q(rmwd1_0), // OUT
	.d(rmwd_0), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_1
(
	.q(rmwd1_1), // OUT
	.d(rmwd_1), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_2
(
	.q(rmwd1_2), // OUT
	.d(rmwd_2), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_3
(
	.q(rmwd1_3), // OUT
	.d(rmwd_3), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_4
(
	.q(rmwd1_4), // OUT
	.d(rmwd_4), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_5
(
	.q(rmwd1_5), // OUT
	.d(rmwd_5), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_6
(
	.q(rmwd1_6), // OUT
	.d(rmwd_6), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_7
(
	.q(rmwd1_7), // OUT
	.d(rmwd_7), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_8
(
	.q(rmwd1_8), // OUT
	.d(rmwd_8), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_9
(
	.q(rmwd1_9), // OUT
	.d(rmwd_9), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_10
(
	.q(rmwd1_10), // OUT
	.d(rmwd_10), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_11
(
	.q(rmwd1_11), // OUT
	.d(rmwd_11), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_12
(
	.q(rmwd1_12), // OUT
	.d(rmwd_12), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_13
(
	.q(rmwd1_13), // OUT
	.d(rmwd_13), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_14
(
	.q(rmwd1_14), // OUT
	.d(rmwd_14), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_15
(
	.q(rmwd1_15), // OUT
	.d(rmwd_15), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_16
(
	.q(rmwd1_16), // OUT
	.d(rmwd_16), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_17
(
	.q(rmwd1_17), // OUT
	.d(rmwd_17), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_18
(
	.q(rmwd1_18), // OUT
	.d(rmwd_18), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_19
(
	.q(rmwd1_19), // OUT
	.d(rmwd_19), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_20
(
	.q(rmwd1_20), // OUT
	.d(rmwd_20), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_21
(
	.q(rmwd1_21), // OUT
	.d(rmwd_21), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_22
(
	.q(rmwd1_22), // OUT
	.d(rmwd_22), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_23
(
	.q(rmwd1_23), // OUT
	.d(rmwd_23), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_24
(
	.q(rmwd1_24), // OUT
	.d(rmwd_24), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_25
(
	.q(rmwd1_25), // OUT
	.d(rmwd_25), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_26
(
	.q(rmwd1_26), // OUT
	.d(rmwd_26), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_27
(
	.q(rmwd1_27), // OUT
	.d(rmwd_27), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_28
(
	.q(rmwd1_28), // OUT
	.d(rmwd_28), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_29
(
	.q(rmwd1_29), // OUT
	.d(rmwd_29), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_30
(
	.q(rmwd1_30), // OUT
	.d(rmwd_30), // IN
	.cp(clk_0)  // IN
);
fd1q rmwd1_from_0_to_31_inst_31
(
	.q(rmwd1_31), // OUT
	.d(rmwd_31), // IN
	.cp(clk_0)  // IN
);

// LBUF.NET (105) - rmwd2[0] : sadd8
sadd8 rmwd2_index_0_inst
(
	.z_0(rmwd2_0), // IO
	.z_1(rmwd2_1), // IO
	.z_2(rmwd2_2), // IO
	.z_3(rmwd2_3), // IO
	.z_4(rmwd2_4), // IO
	.z_5(rmwd2_5), // IO
	.z_6(rmwd2_6), // IO
	.z_7(rmwd2_7), // IO
	.a_0(rmwd1_0), // IN
	.a_1(rmwd1_1), // IN
	.a_2(rmwd1_2), // IN
	.a_3(rmwd1_3), // IN
	.a_4(rmwd1_4), // IN
	.a_5(rmwd1_5), // IN
	.a_6(rmwd1_6), // IN
	.a_7(rmwd1_7), // IN
	.b_0(lbwd_0), // IN
	.b_1(lbwd_1), // IN
	.b_2(lbwd_2), // IN
	.b_3(lbwd_3), // IN
	.b_4(lbwd_4), // IN
	.b_5(lbwd_5), // IN
	.b_6(lbwd_6), // IN
	.b_7(lbwd_7)  // IN
);

// LBUF.NET (106) - rmwd2[8] : sadd4
sadd4 rmwd2_index_8_inst
(
	.z_0(rmwd2_8), // IO
	.z_1(rmwd2_9), // IO
	.z_2(rmwd2_10), // IO
	.z_3(rmwd2_11), // IO
	.a_0(rmwd1_8), // IN
	.a_1(rmwd1_9), // IN
	.a_2(rmwd1_10), // IN
	.a_3(rmwd1_11), // IN
	.b_0(lbwd_8), // IN
	.b_1(lbwd_9), // IN
	.b_2(lbwd_10), // IN
	.b_3(lbwd_11)  // IN
);

// LBUF.NET (107) - rmwd2[12] : sadd4
sadd4 rmwd2_index_12_inst
(
	.z_0(rmwd2_12), // IO
	.z_1(rmwd2_13), // IO
	.z_2(rmwd2_14), // IO
	.z_3(rmwd2_15), // IO
	.a_0(rmwd1_12), // IN
	.a_1(rmwd1_13), // IN
	.a_2(rmwd1_14), // IN
	.a_3(rmwd1_15), // IN
	.b_0(lbwd_12), // IN
	.b_1(lbwd_13), // IN
	.b_2(lbwd_14), // IN
	.b_3(lbwd_15)  // IN
);

// LBUF.NET (108) - rmwd2[16] : sadd8
sadd8 rmwd2_index_16_inst
(
	.z_0(rmwd2_16), // IO
	.z_1(rmwd2_17), // IO
	.z_2(rmwd2_18), // IO
	.z_3(rmwd2_19), // IO
	.z_4(rmwd2_20), // IO
	.z_5(rmwd2_21), // IO
	.z_6(rmwd2_22), // IO
	.z_7(rmwd2_23), // IO
	.a_0(rmwd1_16), // IN
	.a_1(rmwd1_17), // IN
	.a_2(rmwd1_18), // IN
	.a_3(rmwd1_19), // IN
	.a_4(rmwd1_20), // IN
	.a_5(rmwd1_21), // IN
	.a_6(rmwd1_22), // IN
	.a_7(rmwd1_23), // IN
	.b_0(lbwd_16), // IN
	.b_1(lbwd_17), // IN
	.b_2(lbwd_18), // IN
	.b_3(lbwd_19), // IN
	.b_4(lbwd_20), // IN
	.b_5(lbwd_21), // IN
	.b_6(lbwd_22), // IN
	.b_7(lbwd_23)  // IN
);

// LBUF.NET (109) - rmwd2[24] : sadd4
sadd4 rmwd2_index_24_inst
(
	.z_0(rmwd2_24), // IO
	.z_1(rmwd2_25), // IO
	.z_2(rmwd2_26), // IO
	.z_3(rmwd2_27), // IO
	.a_0(rmwd1_24), // IN
	.a_1(rmwd1_25), // IN
	.a_2(rmwd1_26), // IN
	.a_3(rmwd1_27), // IN
	.b_0(lbwd_24), // IN
	.b_1(lbwd_25), // IN
	.b_2(lbwd_26), // IN
	.b_3(lbwd_27)  // IN
);

// LBUF.NET (110) - rmwd2[28] : sadd4
sadd4 rmwd2_index_28_inst
(
	.z_0(rmwd2_28), // IO
	.z_1(rmwd2_29), // IO
	.z_2(rmwd2_30), // IO
	.z_3(rmwd2_31), // IO
	.a_0(rmwd1_28), // IN
	.a_1(rmwd1_29), // IN
	.a_2(rmwd1_30), // IN
	.a_3(rmwd1_31), // IN
	.b_0(lbwd_28), // IN
	.b_1(lbwd_29), // IN
	.b_2(lbwd_30), // IN
	.b_3(lbwd_31)  // IN
);

// LBUF.NET (119) - wd[0-31] : mx4p
mx4 wd_from_0_to_31_inst_0
(
	.z(wd_0), // OUT
	.a0(lbwd_0), // IN
	.a1(rmwd2_0), // IN
	.a2(dw_0), // IN
	.a3(dw_0), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_1
(
	.z(wd_1), // OUT
	.a0(lbwd_1), // IN
	.a1(rmwd2_1), // IN
	.a2(dw_1), // IN
	.a3(dw_1), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_2
(
	.z(wd_2), // OUT
	.a0(lbwd_2), // IN
	.a1(rmwd2_2), // IN
	.a2(dw_2), // IN
	.a3(dw_2), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_3
(
	.z(wd_3), // OUT
	.a0(lbwd_3), // IN
	.a1(rmwd2_3), // IN
	.a2(dw_3), // IN
	.a3(dw_3), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_4
(
	.z(wd_4), // OUT
	.a0(lbwd_4), // IN
	.a1(rmwd2_4), // IN
	.a2(dw_4), // IN
	.a3(dw_4), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_5
(
	.z(wd_5), // OUT
	.a0(lbwd_5), // IN
	.a1(rmwd2_5), // IN
	.a2(dw_5), // IN
	.a3(dw_5), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_6
(
	.z(wd_6), // OUT
	.a0(lbwd_6), // IN
	.a1(rmwd2_6), // IN
	.a2(dw_6), // IN
	.a3(dw_6), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_7
(
	.z(wd_7), // OUT
	.a0(lbwd_7), // IN
	.a1(rmwd2_7), // IN
	.a2(dw_7), // IN
	.a3(dw_7), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_8
(
	.z(wd_8), // OUT
	.a0(lbwd_8), // IN
	.a1(rmwd2_8), // IN
	.a2(dw_8), // IN
	.a3(dw_8), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_9
(
	.z(wd_9), // OUT
	.a0(lbwd_9), // IN
	.a1(rmwd2_9), // IN
	.a2(dw_9), // IN
	.a3(dw_9), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_10
(
	.z(wd_10), // OUT
	.a0(lbwd_10), // IN
	.a1(rmwd2_10), // IN
	.a2(dw_10), // IN
	.a3(dw_10), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_11
(
	.z(wd_11), // OUT
	.a0(lbwd_11), // IN
	.a1(rmwd2_11), // IN
	.a2(dw_11), // IN
	.a3(dw_11), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_12
(
	.z(wd_12), // OUT
	.a0(lbwd_12), // IN
	.a1(rmwd2_12), // IN
	.a2(dw_12), // IN
	.a3(dw_12), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_13
(
	.z(wd_13), // OUT
	.a0(lbwd_13), // IN
	.a1(rmwd2_13), // IN
	.a2(dw_13), // IN
	.a3(dw_13), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_14
(
	.z(wd_14), // OUT
	.a0(lbwd_14), // IN
	.a1(rmwd2_14), // IN
	.a2(dw_14), // IN
	.a3(dw_14), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_15
(
	.z(wd_15), // OUT
	.a0(lbwd_15), // IN
	.a1(rmwd2_15), // IN
	.a2(dw_15), // IN
	.a3(dw_15), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_16
(
	.z(wd_16), // OUT
	.a0(lbwd_16), // IN
	.a1(rmwd2_16), // IN
	.a2(dw_16), // IN
	.a3(dw_16), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_17
(
	.z(wd_17), // OUT
	.a0(lbwd_17), // IN
	.a1(rmwd2_17), // IN
	.a2(dw_17), // IN
	.a3(dw_17), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_18
(
	.z(wd_18), // OUT
	.a0(lbwd_18), // IN
	.a1(rmwd2_18), // IN
	.a2(dw_18), // IN
	.a3(dw_18), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_19
(
	.z(wd_19), // OUT
	.a0(lbwd_19), // IN
	.a1(rmwd2_19), // IN
	.a2(dw_19), // IN
	.a3(dw_19), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_20
(
	.z(wd_20), // OUT
	.a0(lbwd_20), // IN
	.a1(rmwd2_20), // IN
	.a2(dw_20), // IN
	.a3(dw_20), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_21
(
	.z(wd_21), // OUT
	.a0(lbwd_21), // IN
	.a1(rmwd2_21), // IN
	.a2(dw_21), // IN
	.a3(dw_21), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_22
(
	.z(wd_22), // OUT
	.a0(lbwd_22), // IN
	.a1(rmwd2_22), // IN
	.a2(dw_22), // IN
	.a3(dw_22), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_23
(
	.z(wd_23), // OUT
	.a0(lbwd_23), // IN
	.a1(rmwd2_23), // IN
	.a2(dw_23), // IN
	.a3(dw_23), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_24
(
	.z(wd_24), // OUT
	.a0(lbwd_24), // IN
	.a1(rmwd2_24), // IN
	.a2(dw_24), // IN
	.a3(dw_24), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_25
(
	.z(wd_25), // OUT
	.a0(lbwd_25), // IN
	.a1(rmwd2_25), // IN
	.a2(dw_25), // IN
	.a3(dw_25), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_26
(
	.z(wd_26), // OUT
	.a0(lbwd_26), // IN
	.a1(rmwd2_26), // IN
	.a2(dw_26), // IN
	.a3(dw_26), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_27
(
	.z(wd_27), // OUT
	.a0(lbwd_27), // IN
	.a1(rmwd2_27), // IN
	.a2(dw_27), // IN
	.a3(dw_27), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_28
(
	.z(wd_28), // OUT
	.a0(lbwd_28), // IN
	.a1(rmwd2_28), // IN
	.a2(dw_28), // IN
	.a3(dw_28), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_29
(
	.z(wd_29), // OUT
	.a0(lbwd_29), // IN
	.a1(rmwd2_29), // IN
	.a2(dw_29), // IN
	.a3(dw_29), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_30
(
	.z(wd_30), // OUT
	.a0(lbwd_30), // IN
	.a1(rmwd2_30), // IN
	.a2(dw_30), // IN
	.a3(dw_30), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);
mx4 wd_from_0_to_31_inst_31
(
	.z(wd_31), // OUT
	.a0(lbwd_31), // IN
	.a1(rmwd2_31), // IN
	.a2(dw_31), // IN
	.a3(dw_31), // IN
	.s0(rmw), // IN
	.s1(extadd)  // IN
);

// LBUF.NET (122) - extadd : ivu
assign extadd = ~lben;

// LBUF.NET (123) - wdil : join
assign wdil[0] = wd_0;
assign wdil[1] = wd_1;
assign wdil[2] = wd_2;
assign wdil[3] = wd_3;
assign wdil[4] = wd_4;
assign wdil[5] = wd_5;
assign wdil[6] = wd_6;
assign wdil[7] = wd_7;
assign wdil[8] = wd_8;
assign wdil[9] = wd_9;
assign wdil[10] = wd_10;
assign wdil[11] = wd_11;
assign wdil[12] = wd_12;
assign wdil[13] = wd_13;
assign wdil[14] = wd_14;
assign wdil[15] = wd_15;

// LBUF.NET (124) - wdih : join
assign wdih[0] = wd_16;
assign wdih[1] = wd_17;
assign wdih[2] = wd_18;
assign wdih[3] = wd_19;
assign wdih[4] = wd_20;
assign wdih[5] = wd_21;
assign wdih[6] = wd_22;
assign wdih[7] = wd_23;
assign wdih[8] = wd_24;
assign wdih[9] = wd_25;
assign wdih[10] = wd_26;
assign wdih[11] = wd_27;
assign wdih[12] = wd_28;
assign wdih[13] = wd_29;
assign wdih[14] = wd_30;
assign wdih[15] = wd_31;

// LBUF.NET (132) - writes : ivm
assign writes = ~reads;

// LBUF.NET (133) - lbr[0-1] : iv
assign lbr_0 = ~lbwe_0;
assign lbr_1 = ~lbwe_1;

// LBUF.NET (135) - wra0 : nd2
assign wra0 = ~(lba & reads);

// LBUF.NET (136) - wra1l : nd3
assign wra1l = ~(lbufb & lben & lbr_0);

// LBUF.NET (137) - wra1h : nd3
assign wra1h = ~(lbufb & lben & lbr_1);

// LBUF.NET (138) - wra2l : nd3
assign wra2l = ~(lba & writes & aout_1);

// LBUF.NET (139) - wra2h : nd4
assign wra2h = ~(lba & writes & notsiz_2 & nota_1);

// LBUF.NET (140) - wrali : an4
assign wrali = wra0 & wra1l & wra2l & notaactive;

// LBUF.NET (141) - wrahi : an4
assign wrahi = wra0 & wra1h & wra2h & notaactive;

// LBUF.NET (142) - wral : nivu
assign wral = wrali;

// LBUF.NET (143) - wrah : nivu
assign wrah = wrahi;

// LBUF.NET (145) - wrb0 : nd2
assign wrb0 = ~(lbb & reads);

// LBUF.NET (146) - wrb1l : nd3
assign wrb1l = ~(lbufa & lben & lbr_0);

// LBUF.NET (147) - wrb1h : nd3
assign wrb1h = ~(lbufa & lben & lbr_1);

// LBUF.NET (148) - wrb2l : nd3
assign wrb2l = ~(lbb & writes & aout_1);

// LBUF.NET (149) - wrb2h : nd4
assign wrb2h = ~(lbb & writes & notsiz_2 & nota_1);

// LBUF.NET (150) - wrbli : an4
assign wrbli = wrb0 & wrb1l & wrb2l & notbactive;

// LBUF.NET (151) - wrbhi : an4
assign wrbhi = wrb0 & wrb1h & wrb2h & notbactive;

// LBUF.NET (152) - wrbl : nivu
assign wrbl = wrbli;

// LBUF.NET (153) - wrbh : nivu
assign wrbh = wrbhi;

// LBUF.NET (155) - lbadl : ts
assign lbadl[0] = (wral) ? wdil[0] : 1'bz;
assign lbadl[1] = (wral) ? wdil[1] : 1'bz;
assign lbadl[2] = (wral) ? wdil[2] : 1'bz;
assign lbadl[3] = (wral) ? wdil[3] : 1'bz;
assign lbadl[4] = (wral) ? wdil[4] : 1'bz;
assign lbadl[5] = (wral) ? wdil[5] : 1'bz;
assign lbadl[6] = (wral) ? wdil[6] : 1'bz;
assign lbadl[7] = (wral) ? wdil[7] : 1'bz;
assign lbadl[8] = (wral) ? wdil[8] : 1'bz;
assign lbadl[9] = (wral) ? wdil[9] : 1'bz;
assign lbadl[10] = (wral) ? wdil[10] : 1'bz;
assign lbadl[11] = (wral) ? wdil[11] : 1'bz;
assign lbadl[12] = (wral) ? wdil[12] : 1'bz;
assign lbadl[13] = (wral) ? wdil[13] : 1'bz;
assign lbadl[14] = (wral) ? wdil[14] : 1'bz;
assign lbadl[15] = (wral) ? wdil[15] : 1'bz;

// LBUF.NET (156) - lbadh : ts
assign lbadh[0] = (wrah) ? wdih[0] : 1'bz;
assign lbadh[1] = (wrah) ? wdih[1] : 1'bz;
assign lbadh[2] = (wrah) ? wdih[2] : 1'bz;
assign lbadh[3] = (wrah) ? wdih[3] : 1'bz;
assign lbadh[4] = (wrah) ? wdih[4] : 1'bz;
assign lbadh[5] = (wrah) ? wdih[5] : 1'bz;
assign lbadh[6] = (wrah) ? wdih[6] : 1'bz;
assign lbadh[7] = (wrah) ? wdih[7] : 1'bz;
assign lbadh[8] = (wrah) ? wdih[8] : 1'bz;
assign lbadh[9] = (wrah) ? wdih[9] : 1'bz;
assign lbadh[10] = (wrah) ? wdih[10] : 1'bz;
assign lbadh[11] = (wrah) ? wdih[11] : 1'bz;
assign lbadh[12] = (wrah) ? wdih[12] : 1'bz;
assign lbadh[13] = (wrah) ? wdih[13] : 1'bz;
assign lbadh[14] = (wrah) ? wdih[14] : 1'bz;
assign lbadh[15] = (wrah) ? wdih[15] : 1'bz;

// LBUF.NET (157) - lbbdl : ts
assign lbbdl[0] = (wrbl) ? wdil[0] : 1'bz;
assign lbbdl[1] = (wrbl) ? wdil[1] : 1'bz;
assign lbbdl[2] = (wrbl) ? wdil[2] : 1'bz;
assign lbbdl[3] = (wrbl) ? wdil[3] : 1'bz;
assign lbbdl[4] = (wrbl) ? wdil[4] : 1'bz;
assign lbbdl[5] = (wrbl) ? wdil[5] : 1'bz;
assign lbbdl[6] = (wrbl) ? wdil[6] : 1'bz;
assign lbbdl[7] = (wrbl) ? wdil[7] : 1'bz;
assign lbbdl[8] = (wrbl) ? wdil[8] : 1'bz;
assign lbbdl[9] = (wrbl) ? wdil[9] : 1'bz;
assign lbbdl[10] = (wrbl) ? wdil[10] : 1'bz;
assign lbbdl[11] = (wrbl) ? wdil[11] : 1'bz;
assign lbbdl[12] = (wrbl) ? wdil[12] : 1'bz;
assign lbbdl[13] = (wrbl) ? wdil[13] : 1'bz;
assign lbbdl[14] = (wrbl) ? wdil[14] : 1'bz;
assign lbbdl[15] = (wrbl) ? wdil[15] : 1'bz;

// LBUF.NET (158) - lbbdh : ts
assign lbbdh[0] = (wrbh) ? wdih[0] : 1'bz;
assign lbbdh[1] = (wrbh) ? wdih[1] : 1'bz;
assign lbbdh[2] = (wrbh) ? wdih[2] : 1'bz;
assign lbbdh[3] = (wrbh) ? wdih[3] : 1'bz;
assign lbbdh[4] = (wrbh) ? wdih[4] : 1'bz;
assign lbbdh[5] = (wrbh) ? wdih[5] : 1'bz;
assign lbbdh[6] = (wrbh) ? wdih[6] : 1'bz;
assign lbbdh[7] = (wrbh) ? wdih[7] : 1'bz;
assign lbbdh[8] = (wrbh) ? wdih[8] : 1'bz;
assign lbbdh[9] = (wrbh) ? wdih[9] : 1'bz;
assign lbbdh[10] = (wrbh) ? wdih[10] : 1'bz;
assign lbbdh[11] = (wrbh) ? wdih[11] : 1'bz;
assign lbbdh[12] = (wrbh) ? wdih[12] : 1'bz;
assign lbbdh[13] = (wrbh) ? wdih[13] : 1'bz;
assign lbbdh[14] = (wrbh) ? wdih[14] : 1'bz;
assign lbbdh[15] = (wrbh) ? wdih[15] : 1'bz;

// LBUF.NET (162) - lbai : join
assign lbai[0] = lbaad_0;
assign lbai[1] = lbaad_1;
assign lbai[2] = lbaad_2;
assign lbai[3] = lbaad_3;
assign lbai[4] = lbaad_4;
assign lbai[5] = lbaad_5;
assign lbai[6] = lbaad_6;
assign lbai[7] = lbaad_7;
assign lbai[8] = lbaad_8;

// LBUF.NET (163) - lbbi : join
assign lbbi[0] = lbbad_0;
assign lbbi[1] = lbbad_1;
assign lbbi[2] = lbbad_2;
assign lbbi[3] = lbbad_3;
assign lbbi[4] = lbbad_4;
assign lbbi[5] = lbbad_5;
assign lbbi[6] = lbbad_6;
assign lbbi[7] = lbbad_7;
assign lbbi[8] = lbbad_8;

// LBUF.NET (166) - lbufal : ab8616a
ab8616a lbufal_inst
(
	.z({lbadl[0],lbadl[1],lbadl[2],lbadl[3],lbadl[4],lbadl[5],lbadl[6],lbadl[7],lbadl[8],lbadl[9],lbadl[10],lbadl[11],lbadl[12],lbadl[13],lbadl[14],lbadl[15]}), // BUS
	.cen(cea_0), // IN
	.rw(wea_0), // IN
	.a({lbai[0],lbai[1],lbai[2],lbai[3],lbai[4],lbai[5],lbai[6],lbai[7],lbai[8]})  // IN
);

// LBUF.NET (167) - lbufah : ab8616a
ab8616a lbufah_inst
(
	.z({lbadh[0],lbadh[1],lbadh[2],lbadh[3],lbadh[4],lbadh[5],lbadh[6],lbadh[7],lbadh[8],lbadh[9],lbadh[10],lbadh[11],lbadh[12],lbadh[13],lbadh[14],lbadh[15]}), // BUS
	.cen(cea_1), // IN
	.rw(wea_1), // IN
	.a({lbai[0],lbai[1],lbai[2],lbai[3],lbai[4],lbai[5],lbai[6],lbai[7],lbai[8]})  // IN
);

// LBUF.NET (168) - lbufbl : ab8616a
ab8616a lbufbl_inst
(
	.z({lbbdl[0],lbbdl[1],lbbdl[2],lbbdl[3],lbbdl[4],lbbdl[5],lbbdl[6],lbbdl[7],lbbdl[8],lbbdl[9],lbbdl[10],lbbdl[11],lbbdl[12],lbbdl[13],lbbdl[14],lbbdl[15]}), // BUS
	.cen(ceb_0), // IN
	.rw(web_0), // IN
	.a({lbbi[0],lbbi[1],lbbi[2],lbbi[3],lbbi[4],lbbi[5],lbbi[6],lbbi[7],lbbi[8]})  // IN
);

// LBUF.NET (169) - lbufbh : ab8616a
ab8616a lbufbh_inst
(
	.z({lbbdh[0],lbbdh[1],lbbdh[2],lbbdh[3],lbbdh[4],lbbdh[5],lbbdh[6],lbbdh[7],lbbdh[8],lbbdh[9],lbbdh[10],lbbdh[11],lbbdh[12],lbbdh[13],lbbdh[14],lbbdh[15]}), // BUS
	.cen(ceb_1), // IN
	.rw(web_1), // IN
	.a({lbbi[0],lbbi[1],lbbi[2],lbbi[3],lbbi[4],lbbi[5],lbbi[6],lbbi[7],lbbi[8]})  // IN
);

// LBUF.NET (171) - ncst : ivh
assign ncst = ~clk_0;

// LBUF.NET (172) - nvcst : ivh
assign nvcst = ~vclk;

// LBUF.NET (174) - cea0 : nd2
assign cea0 = ~(lbufb & lben);

// LBUF.NET (175) - cea1 : iv
assign cea1 = ~lba;

// LBUF.NET (176) - cea2 : nd2
assign cea2 = ~(cea0 & cea1);

// LBUF.NET (177) - cea[0-1] : anr23
assign cea_0 = ~( (cea2 & ncst) | (aactive & nvcst) );
assign cea_1 = ~( (cea2 & ncst) | (aactive & nvcst) );

// LBUF.NET (179) - ceb0 : nd2
assign ceb0 = ~(lbufa & lben);

// LBUF.NET (180) - ceb1 : iv
assign ceb1 = ~lbb;

// LBUF.NET (181) - ceb2 : nd2
assign ceb2 = ~(ceb0 & ceb1);

// LBUF.NET (182) - ceb[0-1] : anr23
assign ceb_0 = ~( (ceb2 & ncst) | (bactive & nvcst) );
assign ceb_1 = ~( (ceb2 & ncst) | (bactive & nvcst) );

// LBUF.NET (184) - wea00 : nd2
assign wea00 = ~(lbwe_0 & lbufb);

// LBUF.NET (185) - wea01 : nd3
assign wea01 = ~(nota_1 & lba & writes);

// LBUF.NET (186) - wea02 : nd2
assign wea02 = ~(lbufa & bgw);

// LBUF.NET (187) - wead[0] : an3
assign wead_0 = wea00 & wea01 & wea02;

// LBUF.NET (189) - wea10 : nd2
assign wea10 = ~(lbwe_1 & lbufb);

// LBUF.NET (190) - wea11 : nd3
assign wea11 = ~(aout_1 & lba & writes);

// LBUF.NET (191) - wea12 : nd6
assign wea12 = ~(aout_15 & nota_1 & siz_2 & lba & writes & vcc);

// LBUF.NET (192) - wead[1] : an4
assign wead_1 = wea10 & wea11 & wea12 & wea02;

// LBUF.NET (194) - web00 : nd2
assign web00 = ~(lbwe_0 & lbufa);

// LBUF.NET (195) - web01 : nd3
assign web01 = ~(nota_1 & lbb & writes);

// LBUF.NET (196) - web02 : nd2
assign web02 = ~(lbufb & bgw);

// LBUF.NET (197) - webd[0] : an3
assign webd_0 = web00 & web01 & web02;

// LBUF.NET (199) - web10 : nd2
assign web10 = ~(lbwe_1 & lbufa);

// LBUF.NET (200) - web11 : nd3
assign web11 = ~(aout_1 & lbb & writes);

// LBUF.NET (201) - web12 : nd6
assign web12 = ~(aout_15 & nota_1 & siz_2 & lbb & writes & vcc);

// LBUF.NET (202) - webd[1] : an4
assign webd_1 = web10 & web11 & web12 & web02;

// LBUF.NET (204) - wea[0-1] : twoniv
twoniv wea_from_0_to_1_inst_0
(
	.z(wea_0), // IO
	.a(wead_0)  // IN
);
twoniv wea_from_0_to_1_inst_1
(
	.z(wea_1), // IO
	.a(wead_1)  // IN
);

// LBUF.NET (205) - web[0-1] : twoniv
twoniv web_from_0_to_1_inst_0
(
	.z(web_0), // IO
	.a(webd_0)  // IN
);
twoniv web_from_0_to_1_inst_1
(
	.z(web_1), // IO
	.a(webd_1)  // IN
);

// LBUF.NET (207) - notaactive : nd2
assign notaactive = ~(lbufa & vactive);

// LBUF.NET (208) - notbactive : nd2
assign notbactive = ~(lbufb & vactive);

// LBUF.NET (209) - aactive : iv
assign aactive = ~notaactive;

// LBUF.NET (210) - bactive : iv
assign bactive = ~notbactive;

// LBUF.NET (212) - vcc : tie1
assign vcc = 1'b1;

// LBUF.NET (213) - notsiz[2] : iv
assign notsiz_2 = ~siz_2;

// LBUF.NET (217) - lbdi[0-15] : mx4
mx4 lbdi_from_0_to_15_inst_0
(
	.z(lbdi_0), // OUT
	.a0(lbadl[0]), // IN
	.a1(lbadh[0]), // IN
	.a2(lbbdl[0]), // IN
	.a3(lbbdh[0]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_1
(
	.z(lbdi_1), // OUT
	.a0(lbadl[1]), // IN
	.a1(lbadh[1]), // IN
	.a2(lbbdl[1]), // IN
	.a3(lbbdh[1]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_2
(
	.z(lbdi_2), // OUT
	.a0(lbadl[2]), // IN
	.a1(lbadh[2]), // IN
	.a2(lbbdl[2]), // IN
	.a3(lbbdh[2]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_3
(
	.z(lbdi_3), // OUT
	.a0(lbadl[3]), // IN
	.a1(lbadh[3]), // IN
	.a2(lbbdl[3]), // IN
	.a3(lbbdh[3]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_4
(
	.z(lbdi_4), // OUT
	.a0(lbadl[4]), // IN
	.a1(lbadh[4]), // IN
	.a2(lbbdl[4]), // IN
	.a3(lbbdh[4]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_5
(
	.z(lbdi_5), // OUT
	.a0(lbadl[5]), // IN
	.a1(lbadh[5]), // IN
	.a2(lbbdl[5]), // IN
	.a3(lbbdh[5]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_6
(
	.z(lbdi_6), // OUT
	.a0(lbadl[6]), // IN
	.a1(lbadh[6]), // IN
	.a2(lbbdl[6]), // IN
	.a3(lbbdh[6]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_7
(
	.z(lbdi_7), // OUT
	.a0(lbadl[7]), // IN
	.a1(lbadh[7]), // IN
	.a2(lbbdl[7]), // IN
	.a3(lbbdh[7]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_8
(
	.z(lbdi_8), // OUT
	.a0(lbadl[8]), // IN
	.a1(lbadh[8]), // IN
	.a2(lbbdl[8]), // IN
	.a3(lbbdh[8]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_9
(
	.z(lbdi_9), // OUT
	.a0(lbadl[9]), // IN
	.a1(lbadh[9]), // IN
	.a2(lbbdl[9]), // IN
	.a3(lbbdh[9]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_10
(
	.z(lbdi_10), // OUT
	.a0(lbadl[10]), // IN
	.a1(lbadh[10]), // IN
	.a2(lbbdl[10]), // IN
	.a3(lbbdh[10]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_11
(
	.z(lbdi_11), // OUT
	.a0(lbadl[11]), // IN
	.a1(lbadh[11]), // IN
	.a2(lbbdl[11]), // IN
	.a3(lbbdh[11]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_12
(
	.z(lbdi_12), // OUT
	.a0(lbadl[12]), // IN
	.a1(lbadh[12]), // IN
	.a2(lbbdl[12]), // IN
	.a3(lbbdh[12]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_13
(
	.z(lbdi_13), // OUT
	.a0(lbadl[13]), // IN
	.a1(lbadh[13]), // IN
	.a2(lbbdl[13]), // IN
	.a3(lbbdh[13]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_14
(
	.z(lbdi_14), // OUT
	.a0(lbadl[14]), // IN
	.a1(lbadh[14]), // IN
	.a2(lbbdl[14]), // IN
	.a3(lbbdh[14]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);
mx4 lbdi_from_0_to_15_inst_15
(
	.z(lbdi_15), // OUT
	.a0(lbadl[15]), // IN
	.a1(lbadh[15]), // IN
	.a2(lbbdl[15]), // IN
	.a3(lbbdh[15]), // IN
	.s0(aout_1), // IN
	.s1(lbb)  // IN
);

// LBUF.NET (222) - lbd[0-15] : fd1q
fd1q lbd_from_0_to_15_inst_0
(
	.q(lbd_0), // OUT
	.d(lbdi_0), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_1
(
	.q(lbd_1), // OUT
	.d(lbdi_1), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_2
(
	.q(lbd_2), // OUT
	.d(lbdi_2), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_3
(
	.q(lbd_3), // OUT
	.d(lbdi_3), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_4
(
	.q(lbd_4), // OUT
	.d(lbdi_4), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_5
(
	.q(lbd_5), // OUT
	.d(lbdi_5), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_6
(
	.q(lbd_6), // OUT
	.d(lbdi_6), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_7
(
	.q(lbd_7), // OUT
	.d(lbdi_7), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_8
(
	.q(lbd_8), // OUT
	.d(lbdi_8), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_9
(
	.q(lbd_9), // OUT
	.d(lbdi_9), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_10
(
	.q(lbd_10), // OUT
	.d(lbdi_10), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_11
(
	.q(lbd_11), // OUT
	.d(lbdi_11), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_12
(
	.q(lbd_12), // OUT
	.d(lbdi_12), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_13
(
	.q(lbd_13), // OUT
	.d(lbdi_13), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_14
(
	.q(lbd_14), // OUT
	.d(lbdi_14), // IN
	.cp(clk_0)  // IN
);
fd1q lbd_from_0_to_15_inst_15
(
	.q(lbd_15), // OUT
	.d(lbdi_15), // IN
	.cp(clk_0)  // IN
);

// LBUF.NET (224) - lbdeni : nd2
assign lbdeni = ~(wra0 & wrb0);

// LBUF.NET (225) - lbden : nivh
assign lbden = lbdeni;

// LBUF.NET (226) - dr[0-15] : ts
assign dr_0 = (lbden) ? lbd_0 : 1'bz;
assign dr_1 = (lbden) ? lbd_1 : 1'bz;
assign dr_2 = (lbden) ? lbd_2 : 1'bz;
assign dr_3 = (lbden) ? lbd_3 : 1'bz;
assign dr_4 = (lbden) ? lbd_4 : 1'bz;
assign dr_5 = (lbden) ? lbd_5 : 1'bz;
assign dr_6 = (lbden) ? lbd_6 : 1'bz;
assign dr_7 = (lbden) ? lbd_7 : 1'bz;
assign dr_8 = (lbden) ? lbd_8 : 1'bz;
assign dr_9 = (lbden) ? lbd_9 : 1'bz;
assign dr_10 = (lbden) ? lbd_10 : 1'bz;
assign dr_11 = (lbden) ? lbd_11 : 1'bz;
assign dr_12 = (lbden) ? lbd_12 : 1'bz;
assign dr_13 = (lbden) ? lbd_13 : 1'bz;
assign dr_14 = (lbden) ? lbd_14 : 1'bz;
assign dr_15 = (lbden) ? lbd_15 : 1'bz;

// LBUF.NET (230) - bgc[0-15] : ldp1q
ldp1q bgc_from_0_to_15_inst_0
(
	.q(bgc_0), // OUT
	.d(dw_0), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_1
(
	.q(bgc_1), // OUT
	.d(dw_1), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_2
(
	.q(bgc_2), // OUT
	.d(dw_2), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_3
(
	.q(bgc_3), // OUT
	.d(dw_3), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_4
(
	.q(bgc_4), // OUT
	.d(dw_4), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_5
(
	.q(bgc_5), // OUT
	.d(dw_5), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_6
(
	.q(bgc_6), // OUT
	.d(dw_6), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_7
(
	.q(bgc_7), // OUT
	.d(dw_7), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_8
(
	.q(bgc_8), // OUT
	.d(dw_8), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_9
(
	.q(bgc_9), // OUT
	.d(dw_9), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_10
(
	.q(bgc_10), // OUT
	.d(dw_10), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_11
(
	.q(bgc_11), // OUT
	.d(dw_11), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_12
(
	.q(bgc_12), // OUT
	.d(dw_12), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_13
(
	.q(bgc_13), // OUT
	.d(dw_13), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_14
(
	.q(bgc_14), // OUT
	.d(dw_14), // IN
	.g(bgwr)  // IN
);
ldp1q bgc_from_0_to_15_inst_15
(
	.q(bgc_15), // OUT
	.d(dw_15), // IN
	.g(bgwr)  // IN
);

// LBUF.NET (231) - bgc : join
assign bgc[0] = bgc_0;
assign bgc[1] = bgc_1;
assign bgc[2] = bgc_2;
assign bgc[3] = bgc_3;
assign bgc[4] = bgc_4;
assign bgc[5] = bgc_5;
assign bgc[6] = bgc_6;
assign bgc[7] = bgc_7;
assign bgc[8] = bgc_8;
assign bgc[9] = bgc_9;
assign bgc[10] = bgc_10;
assign bgc[11] = bgc_11;
assign bgc[12] = bgc_12;
assign bgc[13] = bgc_13;
assign bgc[14] = bgc_14;
assign bgc[15] = bgc_15;

// LBUF.NET (235) - bwadl : ts
assign lbadl[0] = (bgwa) ? bgc[0] : 1'bz;
assign lbadl[1] = (bgwa) ? bgc[1] : 1'bz;
assign lbadl[2] = (bgwa) ? bgc[2] : 1'bz;
assign lbadl[3] = (bgwa) ? bgc[3] : 1'bz;
assign lbadl[4] = (bgwa) ? bgc[4] : 1'bz;
assign lbadl[5] = (bgwa) ? bgc[5] : 1'bz;
assign lbadl[6] = (bgwa) ? bgc[6] : 1'bz;
assign lbadl[7] = (bgwa) ? bgc[7] : 1'bz;
assign lbadl[8] = (bgwa) ? bgc[8] : 1'bz;
assign lbadl[9] = (bgwa) ? bgc[9] : 1'bz;
assign lbadl[10] = (bgwa) ? bgc[10] : 1'bz;
assign lbadl[11] = (bgwa) ? bgc[11] : 1'bz;
assign lbadl[12] = (bgwa) ? bgc[12] : 1'bz;
assign lbadl[13] = (bgwa) ? bgc[13] : 1'bz;
assign lbadl[14] = (bgwa) ? bgc[14] : 1'bz;
assign lbadl[15] = (bgwa) ? bgc[15] : 1'bz;

// LBUF.NET (236) - bwadh : ts
assign lbadh[0] = (bgwa) ? bgc[0] : 1'bz;
assign lbadh[1] = (bgwa) ? bgc[1] : 1'bz;
assign lbadh[2] = (bgwa) ? bgc[2] : 1'bz;
assign lbadh[3] = (bgwa) ? bgc[3] : 1'bz;
assign lbadh[4] = (bgwa) ? bgc[4] : 1'bz;
assign lbadh[5] = (bgwa) ? bgc[5] : 1'bz;
assign lbadh[6] = (bgwa) ? bgc[6] : 1'bz;
assign lbadh[7] = (bgwa) ? bgc[7] : 1'bz;
assign lbadh[8] = (bgwa) ? bgc[8] : 1'bz;
assign lbadh[9] = (bgwa) ? bgc[9] : 1'bz;
assign lbadh[10] = (bgwa) ? bgc[10] : 1'bz;
assign lbadh[11] = (bgwa) ? bgc[11] : 1'bz;
assign lbadh[12] = (bgwa) ? bgc[12] : 1'bz;
assign lbadh[13] = (bgwa) ? bgc[13] : 1'bz;
assign lbadh[14] = (bgwa) ? bgc[14] : 1'bz;
assign lbadh[15] = (bgwa) ? bgc[15] : 1'bz;

// LBUF.NET (237) - bwbdl : ts
assign lbbdl[0] = (bgwb) ? bgc[0] : 1'bz;
assign lbbdl[1] = (bgwb) ? bgc[1] : 1'bz;
assign lbbdl[2] = (bgwb) ? bgc[2] : 1'bz;
assign lbbdl[3] = (bgwb) ? bgc[3] : 1'bz;
assign lbbdl[4] = (bgwb) ? bgc[4] : 1'bz;
assign lbbdl[5] = (bgwb) ? bgc[5] : 1'bz;
assign lbbdl[6] = (bgwb) ? bgc[6] : 1'bz;
assign lbbdl[7] = (bgwb) ? bgc[7] : 1'bz;
assign lbbdl[8] = (bgwb) ? bgc[8] : 1'bz;
assign lbbdl[9] = (bgwb) ? bgc[9] : 1'bz;
assign lbbdl[10] = (bgwb) ? bgc[10] : 1'bz;
assign lbbdl[11] = (bgwb) ? bgc[11] : 1'bz;
assign lbbdl[12] = (bgwb) ? bgc[12] : 1'bz;
assign lbbdl[13] = (bgwb) ? bgc[13] : 1'bz;
assign lbbdl[14] = (bgwb) ? bgc[14] : 1'bz;
assign lbbdl[15] = (bgwb) ? bgc[15] : 1'bz;

// LBUF.NET (238) - bwbdh : ts
assign lbbdh[0] = (bgwb) ? bgc[0] : 1'bz;
assign lbbdh[1] = (bgwb) ? bgc[1] : 1'bz;
assign lbbdh[2] = (bgwb) ? bgc[2] : 1'bz;
assign lbbdh[3] = (bgwb) ? bgc[3] : 1'bz;
assign lbbdh[4] = (bgwb) ? bgc[4] : 1'bz;
assign lbbdh[5] = (bgwb) ? bgc[5] : 1'bz;
assign lbbdh[6] = (bgwb) ? bgc[6] : 1'bz;
assign lbbdh[7] = (bgwb) ? bgc[7] : 1'bz;
assign lbbdh[8] = (bgwb) ? bgc[8] : 1'bz;
assign lbbdh[9] = (bgwb) ? bgc[9] : 1'bz;
assign lbbdh[10] = (bgwb) ? bgc[10] : 1'bz;
assign lbbdh[11] = (bgwb) ? bgc[11] : 1'bz;
assign lbbdh[12] = (bgwb) ? bgc[12] : 1'bz;
assign lbbdh[13] = (bgwb) ? bgc[13] : 1'bz;
assign lbbdh[14] = (bgwb) ? bgc[14] : 1'bz;
assign lbbdh[15] = (bgwb) ? bgc[15] : 1'bz;

// LBUF.NET (240) - bgwa : an2u
assign bgwa = bgw & aactive;

// LBUF.NET (241) - bgwb : an2u
assign bgwb = bgw & bactive;
endmodule
