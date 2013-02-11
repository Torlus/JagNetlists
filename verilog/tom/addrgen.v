`include "defs.v"

module addrgen
(
	output[0:23] address;
	output pixa_0,
	output pixa_1,
	output pixa_2,
	input[0:15] a1_x;
	input[0:15] a1_y;
	input[0:20] a1_base;
	input a1_pitch_0,
	input a1_pitch_1,
	input a1_pixsize_0,
	input a1_pixsize_1,
	input a1_pixsize_2,
	input a1_width_0,
	input a1_width_1,
	input a1_width_2,
	input a1_width_3,
	input a1_width_4,
	input a1_width_5,
	input a1_zoffset_0,
	input a1_zoffset_1,
	input[0:15] a2_x;
	input[0:15] a2_y;
	input[0:20] a2_base;
	input a2_pitch_0,
	input a2_pitch_1,
	input a2_pixsize_0,
	input a2_pixsize_1,
	input a2_pixsize_2,
	input a2_width_0,
	input a2_width_1,
	input a2_width_2,
	input a2_width_3,
	input a2_width_4,
	input a2_width_5,
	input a2_zoffset_0,
	input a2_zoffset_1,
	input apipe,
	input clk,
	input gena2,
	input zaddr
);
wire [0:15] pa_b;
wire [0:23] pa_a;
wire [0:24] pa;
wire [0:20] base;
wire [0:26] pixadr;
wire [0:23] addrgen;
wire [0:23] addressi;
wire one;
wire zero;
wire zerob;
wire zeroc;
wire gena2b_0;
wire gena2b_1;
wire x_0;
wire x_1;
wire x_2;
wire x_3;
wire x_4;
wire x_5;
wire x_6;
wire x_7;
wire x_8;
wire x_9;
wire x_10;
wire x_11;
wire x_12;
wire x_13;
wire x_14;
wire x_15;
wire y_0;
wire y_1;
wire y_2;
wire y_3;
wire y_4;
wire y_5;
wire y_6;
wire y_7;
wire y_8;
wire y_9;
wire y_10;
wire y_11;
wire width_0;
wire width_1;
wire width_2;
wire width_3;
wire width_4;
wire width_5;
wire width_n_4;
wire pixsize_0;
wire pixsize_1;
wire pixsize_2;
wire pixsizeb_0;
wire pitch_0;
wire pitch_1;
wire pitch_n_0;
wire pitch_n_1;
wire zoffset_0;
wire zoffset_1;
wire ym1_0;
wire ym1_1;
wire ym1_2;
wire ym1_3;
wire ym1_4;
wire ym1_5;
wire ym1_6;
wire ym1_7;
wire ym1_8;
wire ym1_9;
wire ym1_10;
wire ym1_11;
wire ym2_0;
wire ym2_1;
wire ym2_2;
wire ym2_3;
wire ym2_4;
wire ym2_5;
wire ym2_6;
wire ym2_7;
wire ym2_8;
wire ym2_9;
wire ym2_10;
wire ym2_11;
wire ytmt_0;
wire ytmt_1;
wire ytmt_2;
wire ytmt_3;
wire ytmt_4;
wire ytmt_5;
wire ytmt_6;
wire ytmt_7;
wire ytmt_8;
wire ytmt_9;
wire ytmt_10;
wire ytmt_11;
wire ytmt_12;
wire ytmt_13;
wire ytmt_14;
wire ytmt_15;
wire ytmt_16;
wire ytmt_17;
wire ytmt_18;
wire ytmt_19;
wire ytmt_20;
wire ytmt_21;
wire ytmt_22;
wire ytmt_23;
wire ytmt_24;
wire ytmt_25;
wire ytmt_26;
wire ytmt_27;
wire ytmt_28;
wire ytmt_29;
wire ytmt_30;
wire ytmt_31;
wire co_0;
wire co_1;
wire ytm_0;
wire ytm_1;
wire ytm_2;
wire ytm_3;
wire ytm_4;
wire ytm_5;
wire ytm_6;
wire ytm_7;
wire ytm_8;
wire ytm_9;
wire ytm_10;
wire ytm_11;
wire ytm_12;
wire ytm_13;
wire ytm_14;
wire lowen;
wire ya_0;
wire ya_1;
wire ya_2;
wire ya_3;
wire ya_4;
wire ya_5;
wire ya_6;
wire ya_7;
wire ya_8;
wire ya_9;
wire ya_10;
wire ya_11;
wire ya_12;
wire ya_13;
wire ya_14;
wire ya_15;
wire mid8en_n;
wire ya_16;
wire ya_17;
wire ya_18;
wire ya_19;
wire tm4en_n;
wire ya_20;
wire ya_21;
wire ya_22;
wire ya_23;
wire pa_0;
wire pa_1;
wire pa_2;
wire pa_3;
wire pa_4;
wire pa_5;
wire pa_6;
wire pa_7;
wire pa_8;
wire pa_9;
wire pa_10;
wire pa_11;
wire pa_12;
wire pa_13;
wire pa_14;
wire pa_15;
wire pa_16;
wire pa_17;
wire pa_18;
wire pa_19;
wire pa_20;
wire pa_21;
wire pa_22;
wire pa_23;
wire pa_24;
wire pacy_n_15;
wire pacy_15;
wire pacy_16;
wire pacy_17;
wire pacy_18;
wire pacy_19;
wire pacy_20;
wire pacy_21;
wire pacy_22;
wire pixa_4;
wire pixa_3;
wire pixa_5;
wire pixa_6;
wire pixa_7;
wire pixa_8;
wire pixa_9;
wire pixa_10;
wire pixa_11;
wire pixa_12;
wire pixa_13;
wire pixa_14;
wire pixa_15;
wire pixa_16;
wire pixa_17;
wire pixa_18;
wire pixa_19;
wire pixa_20;
wire pixa_21;
wire pixa_22;
wire pixa_23;
wire pixa_24;
wire pixa_25;
wire pixa_26;
wire pt_0;
wire pt_1;
wire phradr_0;
wire phradr_1;
wire phradr_2;
wire phradr_3;
wire phradr_4;
wire phradr_5;
wire phradr_6;
wire phradr_7;
wire phradr_8;
wire phradr_9;
wire phradr_10;
wire phradr_11;
wire phradr_12;
wire phradr_13;
wire phradr_14;
wire phradr_15;
wire phradr_16;
wire phradr_17;
wire phradr_18;
wire phradr_19;
wire phradr_20;
wire shupen;
wire shup_0;
wire shup_1;
wire shup_2;
wire shup_3;
wire shup_4;
wire shup_5;
wire shup_6;
wire shup_7;
wire shup_8;
wire shup_9;
wire shup_10;
wire shup_11;
wire shup_12;
wire shup_13;
wire shup_14;
wire shup_15;
wire shup_16;
wire shup_17;
wire shup_18;
wire shup_19;
wire za_0;
wire za_1;
wire addr_0;
wire adcy0;
wire addr1t;
wire adcy1a;
wire addr_1;
wire adcy1b;
wire addr2t;
wire adcy2a;
wire addr_2;
wire adcy2b;
wire addr_3;
wire addr_4;
wire addr_5;
wire addr_6;
wire addr_7;
wire addr_8;
wire addr_9;
wire addr_10;
wire addr_11;
wire addr_12;
wire addr_13;
wire addr_14;
wire addr_15;
wire addr_16;
wire addr_17;
wire addr_18;
wire addr_19;
wire addr_20;
wire unused_0;
wire unused_1;
wire unused_2;
wire unused_3;
wire unused_4;
wire unused_5;
wire unused_6;
wire unused_7;
wire unused_8;
wire unused_9;
wire unused_10;
wire unused_11;
wire unused_12;
wire unused_13;
wire unused_14;
wire unused_15;
wire apipeb;

// Output buffers
wire address_b0_obuf;
wire address_b1_obuf;
wire address_b2_obuf;
wire address_b3_obuf;
wire address_b4_obuf;
wire address_b5_obuf;
wire address_b6_obuf;
wire address_b7_obuf;
wire address_b8_obuf;
wire address_b9_obuf;
wire address_b10_obuf;
wire address_b11_obuf;
wire address_b12_obuf;
wire address_b13_obuf;
wire address_b14_obuf;
wire address_b15_obuf;
wire address_b16_obuf;
wire address_b17_obuf;
wire address_b18_obuf;
wire address_b19_obuf;
wire address_b20_obuf;
wire address_b21_obuf;
wire address_b22_obuf;
wire address_b23_obuf;
wire pixa_0_obuf;
wire pixa_1_obuf;
wire pixa_2_obuf;


// Output buffers
assign address[0] = address_b0_obuf;
assign address[1] = address_b1_obuf;
assign address[2] = address_b2_obuf;
assign address[3] = address_b3_obuf;
assign address[4] = address_b4_obuf;
assign address[5] = address_b5_obuf;
assign address[6] = address_b6_obuf;
assign address[7] = address_b7_obuf;
assign address[8] = address_b8_obuf;
assign address[9] = address_b9_obuf;
assign address[10] = address_b10_obuf;
assign address[11] = address_b11_obuf;
assign address[12] = address_b12_obuf;
assign address[13] = address_b13_obuf;
assign address[14] = address_b14_obuf;
assign address[15] = address_b15_obuf;
assign address[16] = address_b16_obuf;
assign address[17] = address_b17_obuf;
assign address[18] = address_b18_obuf;
assign address[19] = address_b19_obuf;
assign address[20] = address_b20_obuf;
assign address[21] = address_b21_obuf;
assign address[22] = address_b22_obuf;
assign address[23] = address_b23_obuf;
assign pixa_0 = pixa_0_obuf;
assign pixa_1 = pixa_1_obuf;
assign pixa_2 = pixa_2_obuf;


// ADDRGEN.NET (64) - one : tie1
assign one = 1'b1;

// ADDRGEN.NET (65) - zero : tie0
assign zero = 1'b0;

// ADDRGEN.NET (66) - zeroa : tie0
assign zerob = 1'b0;

// ADDRGEN.NET (67) - zerob : tie0
assign zeroc = 1'b0;

// ADDRGEN.NET (71) - gena2b[0-1] : nivu
assign gena2b_0 = gena2;
assign gena2b_1 = gena2;

// ADDRGEN.NET (75) - x[0-15] : mx2
mx2 x_from_0_to_15_inst_0
(
	.z(x_0), // OUT
	.a0(a1_x[0]), // IN
	.a1(a2_x[0]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_1
(
	.z(x_1), // OUT
	.a0(a1_x[1]), // IN
	.a1(a2_x[1]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_2
(
	.z(x_2), // OUT
	.a0(a1_x[2]), // IN
	.a1(a2_x[2]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_3
(
	.z(x_3), // OUT
	.a0(a1_x[3]), // IN
	.a1(a2_x[3]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_4
(
	.z(x_4), // OUT
	.a0(a1_x[4]), // IN
	.a1(a2_x[4]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_5
(
	.z(x_5), // OUT
	.a0(a1_x[5]), // IN
	.a1(a2_x[5]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_6
(
	.z(x_6), // OUT
	.a0(a1_x[6]), // IN
	.a1(a2_x[6]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_7
(
	.z(x_7), // OUT
	.a0(a1_x[7]), // IN
	.a1(a2_x[7]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_8
(
	.z(x_8), // OUT
	.a0(a1_x[8]), // IN
	.a1(a2_x[8]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_9
(
	.z(x_9), // OUT
	.a0(a1_x[9]), // IN
	.a1(a2_x[9]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_10
(
	.z(x_10), // OUT
	.a0(a1_x[10]), // IN
	.a1(a2_x[10]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_11
(
	.z(x_11), // OUT
	.a0(a1_x[11]), // IN
	.a1(a2_x[11]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_12
(
	.z(x_12), // OUT
	.a0(a1_x[12]), // IN
	.a1(a2_x[12]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_13
(
	.z(x_13), // OUT
	.a0(a1_x[13]), // IN
	.a1(a2_x[13]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_14
(
	.z(x_14), // OUT
	.a0(a1_x[14]), // IN
	.a1(a2_x[14]), // IN
	.s(gena2b_0)  // IN
);
mx2 x_from_0_to_15_inst_15
(
	.z(x_15), // OUT
	.a0(a1_x[15]), // IN
	.a1(a2_x[15]), // IN
	.s(gena2b_0)  // IN
);

// ADDRGEN.NET (78) - y[0-11] : mx2
mx2 y_from_0_to_11_inst_0
(
	.z(y_0), // OUT
	.a0(a1_y[0]), // IN
	.a1(a2_y[0]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_1
(
	.z(y_1), // OUT
	.a0(a1_y[1]), // IN
	.a1(a2_y[1]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_2
(
	.z(y_2), // OUT
	.a0(a1_y[2]), // IN
	.a1(a2_y[2]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_3
(
	.z(y_3), // OUT
	.a0(a1_y[3]), // IN
	.a1(a2_y[3]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_4
(
	.z(y_4), // OUT
	.a0(a1_y[4]), // IN
	.a1(a2_y[4]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_5
(
	.z(y_5), // OUT
	.a0(a1_y[5]), // IN
	.a1(a2_y[5]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_6
(
	.z(y_6), // OUT
	.a0(a1_y[6]), // IN
	.a1(a2_y[6]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_7
(
	.z(y_7), // OUT
	.a0(a1_y[7]), // IN
	.a1(a2_y[7]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_8
(
	.z(y_8), // OUT
	.a0(a1_y[8]), // IN
	.a1(a2_y[8]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_9
(
	.z(y_9), // OUT
	.a0(a1_y[9]), // IN
	.a1(a2_y[9]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_10
(
	.z(y_10), // OUT
	.a0(a1_y[10]), // IN
	.a1(a2_y[10]), // IN
	.s(gena2b_0)  // IN
);
mx2 y_from_0_to_11_inst_11
(
	.z(y_11), // OUT
	.a0(a1_y[11]), // IN
	.a1(a2_y[11]), // IN
	.s(gena2b_0)  // IN
);

// ADDRGEN.NET (81) - width[0-5] : mx2u
mx2 width_from_0_to_5_inst_0
(
	.z(width_0), // OUT
	.a0(a1_width_0), // IN
	.a1(a2_width_0), // IN
	.s(gena2b_1)  // IN
);
mx2 width_from_0_to_5_inst_1
(
	.z(width_1), // OUT
	.a0(a1_width_1), // IN
	.a1(a2_width_1), // IN
	.s(gena2b_1)  // IN
);
mx2 width_from_0_to_5_inst_2
(
	.z(width_2), // OUT
	.a0(a1_width_2), // IN
	.a1(a2_width_2), // IN
	.s(gena2b_1)  // IN
);
mx2 width_from_0_to_5_inst_3
(
	.z(width_3), // OUT
	.a0(a1_width_3), // IN
	.a1(a2_width_3), // IN
	.s(gena2b_1)  // IN
);
mx2 width_from_0_to_5_inst_4
(
	.z(width_4), // OUT
	.a0(a1_width_4), // IN
	.a1(a2_width_4), // IN
	.s(gena2b_1)  // IN
);
mx2 width_from_0_to_5_inst_5
(
	.z(width_5), // OUT
	.a0(a1_width_5), // IN
	.a1(a2_width_5), // IN
	.s(gena2b_1)  // IN
);

// ADDRGEN.NET (83) - width\[4] : iv
assign width_n_4 = ~width_4;

// ADDRGEN.NET (85) - pixsize[0-2] : mx2u
mx2 pixsize_from_0_to_2_inst_0
(
	.z(pixsize_0), // OUT
	.a0(a1_pixsize_0), // IN
	.a1(a2_pixsize_0), // IN
	.s(gena2b_1)  // IN
);
mx2 pixsize_from_0_to_2_inst_1
(
	.z(pixsize_1), // OUT
	.a0(a1_pixsize_1), // IN
	.a1(a2_pixsize_1), // IN
	.s(gena2b_1)  // IN
);
mx2 pixsize_from_0_to_2_inst_2
(
	.z(pixsize_2), // OUT
	.a0(a1_pixsize_2), // IN
	.a1(a2_pixsize_2), // IN
	.s(gena2b_1)  // IN
);

// ADDRGEN.NET (87) - pissizeb[0] : nivu
assign pixsizeb_0 = pixsize_0;

// ADDRGEN.NET (89) - pitch[0-1] : mx2p
mx2 pitch_from_0_to_1_inst_0
(
	.z(pitch_0), // OUT
	.a0(a1_pitch_0), // IN
	.a1(a2_pitch_0), // IN
	.s(gena2b_1)  // IN
);
mx2 pitch_from_0_to_1_inst_1
(
	.z(pitch_1), // OUT
	.a0(a1_pitch_1), // IN
	.a1(a2_pitch_1), // IN
	.s(gena2b_1)  // IN
);

// ADDRGEN.NET (91) - pitch\[0-1] : iv
assign pitch_n_0 = ~pitch_0;
assign pitch_n_1 = ~pitch_1;

// ADDRGEN.NET (93) - base : mx2p
mx2 base_inst_0
(
	.z(base[0]), // OUT
	.a0(a1_base[0]), // IN
	.a1(a2_base[0]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_1
(
	.z(base[1]), // OUT
	.a0(a1_base[1]), // IN
	.a1(a2_base[1]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_2
(
	.z(base[2]), // OUT
	.a0(a1_base[2]), // IN
	.a1(a2_base[2]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_3
(
	.z(base[3]), // OUT
	.a0(a1_base[3]), // IN
	.a1(a2_base[3]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_4
(
	.z(base[4]), // OUT
	.a0(a1_base[4]), // IN
	.a1(a2_base[4]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_5
(
	.z(base[5]), // OUT
	.a0(a1_base[5]), // IN
	.a1(a2_base[5]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_6
(
	.z(base[6]), // OUT
	.a0(a1_base[6]), // IN
	.a1(a2_base[6]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_7
(
	.z(base[7]), // OUT
	.a0(a1_base[7]), // IN
	.a1(a2_base[7]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_8
(
	.z(base[8]), // OUT
	.a0(a1_base[8]), // IN
	.a1(a2_base[8]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_9
(
	.z(base[9]), // OUT
	.a0(a1_base[9]), // IN
	.a1(a2_base[9]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_10
(
	.z(base[10]), // OUT
	.a0(a1_base[10]), // IN
	.a1(a2_base[10]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_11
(
	.z(base[11]), // OUT
	.a0(a1_base[11]), // IN
	.a1(a2_base[11]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_12
(
	.z(base[12]), // OUT
	.a0(a1_base[12]), // IN
	.a1(a2_base[12]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_13
(
	.z(base[13]), // OUT
	.a0(a1_base[13]), // IN
	.a1(a2_base[13]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_14
(
	.z(base[14]), // OUT
	.a0(a1_base[14]), // IN
	.a1(a2_base[14]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_15
(
	.z(base[15]), // OUT
	.a0(a1_base[15]), // IN
	.a1(a2_base[15]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_16
(
	.z(base[16]), // OUT
	.a0(a1_base[16]), // IN
	.a1(a2_base[16]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_17
(
	.z(base[17]), // OUT
	.a0(a1_base[17]), // IN
	.a1(a2_base[17]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_18
(
	.z(base[18]), // OUT
	.a0(a1_base[18]), // IN
	.a1(a2_base[18]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_19
(
	.z(base[19]), // OUT
	.a0(a1_base[19]), // IN
	.a1(a2_base[19]), // IN
	.s(gena2)  // IN
);
mx2 base_inst_20
(
	.z(base[20]), // OUT
	.a0(a1_base[20]), // IN
	.a1(a2_base[20]), // IN
	.s(gena2)  // IN
);

// ADDRGEN.NET (95) - zoffset[0-1] : mx2
mx2 zoffset_from_0_to_1_inst_0
(
	.z(zoffset_0), // OUT
	.a0(a1_zoffset_0), // IN
	.a1(a2_zoffset_0), // IN
	.s(gena2b_1)  // IN
);
mx2 zoffset_from_0_to_1_inst_1
(
	.z(zoffset_1), // OUT
	.a0(a1_zoffset_1), // IN
	.a1(a2_zoffset_1), // IN
	.s(gena2b_1)  // IN
);

// ADDRGEN.NET (107) - ym1[0-11] : an2p
assign ym1_0 = width_1 & y_0;
assign ym1_1 = width_1 & y_1;
assign ym1_2 = width_1 & y_2;
assign ym1_3 = width_1 & y_3;
assign ym1_4 = width_1 & y_4;
assign ym1_5 = width_1 & y_5;
assign ym1_6 = width_1 & y_6;
assign ym1_7 = width_1 & y_7;
assign ym1_8 = width_1 & y_8;
assign ym1_9 = width_1 & y_9;
assign ym1_10 = width_1 & y_10;
assign ym1_11 = width_1 & y_11;

// ADDRGEN.NET (108) - ym2[0-11] : an2p
assign ym2_0 = width_0 & y_0;
assign ym2_1 = width_0 & y_1;
assign ym2_2 = width_0 & y_2;
assign ym2_3 = width_0 & y_3;
assign ym2_4 = width_0 & y_4;
assign ym2_5 = width_0 & y_5;
assign ym2_6 = width_0 & y_6;
assign ym2_7 = width_0 & y_7;
assign ym2_8 = width_0 & y_8;
assign ym2_9 = width_0 & y_9;
assign ym2_10 = width_0 & y_10;
assign ym2_11 = width_0 & y_11;

// ADDRGEN.NET (110) - yadd : fa332
fa332 yadd_inst
(
	.s0(ytmt_0), // OUT
	.s1(ytmt_1), // OUT
	.s2(ytmt_2), // OUT
	.s3(ytmt_3), // OUT
	.s4(ytmt_4), // OUT
	.s5(ytmt_5), // OUT
	.s6(ytmt_6), // OUT
	.s7(ytmt_7), // OUT
	.s8(ytmt_8), // OUT
	.s9(ytmt_9), // OUT
	.s10(ytmt_10), // OUT
	.s11(ytmt_11), // OUT
	.s12(ytmt_12), // OUT
	.s13(ytmt_13), // OUT
	.s14(ytmt_14), // OUT
	.s15(ytmt_15), // OUT
	.s16(ytmt_16), // OUT
	.s17(ytmt_17), // OUT
	.s18(ytmt_18), // OUT
	.s19(ytmt_19), // OUT
	.s20(ytmt_20), // OUT
	.s21(ytmt_21), // OUT
	.s22(ytmt_22), // OUT
	.s23(ytmt_23), // OUT
	.s24(ytmt_24), // OUT
	.s25(ytmt_25), // OUT
	.s26(ytmt_26), // OUT
	.s27(ytmt_27), // OUT
	.s28(ytmt_28), // OUT
	.s29(ytmt_29), // OUT
	.s30(ytmt_30), // OUT
	.s31(ytmt_31), // OUT
	.co0(co_0), // OUT
	.co1(co_1), // OUT
	.ci0(zero), // IN
	.ci1(zero), // IN
	.a0(ym2_0), // IN
	.b0(zero), // IN
	.c0(zero), // IN
	.a1(ym2_1), // IN
	.b1(ym1_0), // IN
	.c1(zero), // IN
	.a2(ym2_2), // IN
	.b2(ym1_1), // IN
	.c2(y_0), // IN
	.a3(ym2_3), // IN
	.b3(ym1_2), // IN
	.c3(y_1), // IN
	.a4(ym2_4), // IN
	.b4(ym1_3), // IN
	.c4(y_2), // IN
	.a5(ym2_5), // IN
	.b5(ym1_4), // IN
	.c5(y_3), // IN
	.a6(ym2_6), // IN
	.b6(ym1_5), // IN
	.c6(y_4), // IN
	.a7(ym2_7), // IN
	.b7(ym1_6), // IN
	.c7(y_5), // IN
	.a8(ym2_8), // IN
	.b8(ym1_7), // IN
	.c8(y_6), // IN
	.a9(ym2_9), // IN
	.b9(ym1_8), // IN
	.c9(y_7), // IN
	.a10(ym2_10), // IN
	.b10(ym1_9), // IN
	.c10(y_8), // IN
	.a11(ym2_11), // IN
	.b11(ym1_10), // IN
	.c11(y_9), // IN
	.a12(zero), // IN
	.b12(ym1_11), // IN
	.c12(y_10), // IN
	.a13(zero), // IN
	.b13(zero), // IN
	.c13(y_11), // IN
	.a14(zero), // IN
	.b14(zero), // IN
	.c14(zero), // IN
	.a15(zero), // IN
	.b15(zero), // IN
	.c15(zero), // IN
	.a16(zero), // IN
	.b16(zero), // IN
	.c16(zero), // IN
	.a17(zero), // IN
	.b17(zero), // IN
	.c17(zero), // IN
	.a18(zero), // IN
	.b18(zero), // IN
	.c18(zero), // IN
	.a19(zero), // IN
	.b19(zero), // IN
	.c19(zero), // IN
	.a20(zero), // IN
	.b20(zero), // IN
	.c20(zero), // IN
	.a21(zero), // IN
	.b21(zero), // IN
	.c21(zero), // IN
	.a22(zero), // IN
	.b22(zero), // IN
	.c22(zero), // IN
	.a23(zero), // IN
	.b23(zero), // IN
	.c23(zero), // IN
	.a24(zero), // IN
	.b24(zero), // IN
	.c24(zero), // IN
	.a25(zero), // IN
	.b25(zero), // IN
	.c25(zero), // IN
	.a26(zero), // IN
	.b26(zero), // IN
	.c26(zero), // IN
	.a27(zero), // IN
	.b27(zero), // IN
	.c27(zero), // IN
	.a28(zero), // IN
	.b28(zero), // IN
	.c28(zero), // IN
	.a29(zero), // IN
	.b29(zero), // IN
	.c29(zero), // IN
	.a30(zero), // IN
	.b30(zero), // IN
	.c30(zero), // IN
	.a31(zero), // IN
	.b31(zero), // IN
	.c31(zero)  // IN
);

// ADDRGEN.NET (132) - co[0-1] : dummy

// ADDRGEN.NET (133) - ytmt[15-31] : dummy

// ADDRGEN.NET (135) - ytm[0-14] : nivh
assign ytm_0 = ytmt_0;
assign ytm_1 = ytmt_1;
assign ytm_2 = ytmt_2;
assign ytm_3 = ytmt_3;
assign ytm_4 = ytmt_4;
assign ytm_5 = ytmt_5;
assign ytm_6 = ytmt_6;
assign ytm_7 = ytmt_7;
assign ytm_8 = ytmt_8;
assign ytm_9 = ytmt_9;
assign ytm_10 = ytmt_10;
assign ytm_11 = ytmt_11;
assign ytm_12 = ytmt_12;
assign ytm_13 = ytmt_13;
assign ytm_14 = ytmt_14;

// ADDRGEN.NET (141) - lowen : or2
assign lowen = width_4 | width_5;

// ADDRGEN.NET (142) - yaddr[0] : mx4g
mx4g yaddr_index_0_inst
(
	.z(ya_0), // OUT
	.a0(ytm_2), // IN
	.a1(ytm_1), // IN
	.a2(ytm_0), // IN
	.a3(zero), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.gn(lowen)  // IN
);

// ADDRGEN.NET (144) - yaddr[1] : mx4g
mx4g yaddr_index_1_inst
(
	.z(ya_1), // OUT
	.a0(ytm_3), // IN
	.a1(ytm_2), // IN
	.a2(ytm_1), // IN
	.a3(ytm_0), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.gn(lowen)  // IN
);

// ADDRGEN.NET (146) - yaddr[2] : mx8g
mx8g yaddr_index_2_inst
(
	.z(ya_2), // OUT
	.a0(ytm_4), // IN
	.a1(ytm_3), // IN
	.a2(ytm_2), // IN
	.a3(ytm_1), // IN
	.a4(ytm_0), // IN
	.a5(zero), // IN
	.a6(zero), // IN
	.a7(zero), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(width_5)  // IN
);

// ADDRGEN.NET (149) - yaddr[3] : mx8g
mx8g yaddr_index_3_inst
(
	.z(ya_3), // OUT
	.a0(ytm_5), // IN
	.a1(ytm_4), // IN
	.a2(ytm_3), // IN
	.a3(ytm_2), // IN
	.a4(ytm_1), // IN
	.a5(ytm_0), // IN
	.a6(zero), // IN
	.a7(zero), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(width_5)  // IN
);

// ADDRGEN.NET (152) - yaddr[4] : mx8g
mx8g yaddr_index_4_inst
(
	.z(ya_4), // OUT
	.a0(ytm_6), // IN
	.a1(ytm_5), // IN
	.a2(ytm_4), // IN
	.a3(ytm_3), // IN
	.a4(ytm_2), // IN
	.a5(ytm_1), // IN
	.a6(ytm_0), // IN
	.a7(zero), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(width_5)  // IN
);

// ADDRGEN.NET (155) - yaddr[5] : mx8g
mx8g yaddr_index_5_inst
(
	.z(ya_5), // OUT
	.a0(ytm_7), // IN
	.a1(ytm_6), // IN
	.a2(ytm_5), // IN
	.a3(ytm_4), // IN
	.a4(ytm_3), // IN
	.a5(ytm_2), // IN
	.a6(ytm_1), // IN
	.a7(ytm_0), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(width_5)  // IN
);

// ADDRGEN.NET (158) - yaddr[6] : mx12b
mx12b yaddr_index_6_inst
(
	.q(ya_6), // OUT
	.a_0(ytm_8), // IN
	.a_1(ytm_7), // IN
	.a_2(ytm_6), // IN
	.a_3(ytm_5), // IN
	.a_4(ytm_4), // IN
	.a_5(ytm_3), // IN
	.a_6(ytm_2), // IN
	.a_7(ytm_1), // IN
	.a_8(ytm_0), // IN
	.a_9(zero), // IN
	.a_10(zerob), // IN
	.a_11(zeroc), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (161) - yaddr[7] : mx12b
mx12b yaddr_index_7_inst
(
	.q(ya_7), // OUT
	.a_0(ytm_9), // IN
	.a_1(ytm_8), // IN
	.a_2(ytm_7), // IN
	.a_3(ytm_6), // IN
	.a_4(ytm_5), // IN
	.a_5(ytm_4), // IN
	.a_6(ytm_3), // IN
	.a_7(ytm_2), // IN
	.a_8(ytm_1), // IN
	.a_9(ytm_0), // IN
	.a_10(zero), // IN
	.a_11(zero), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (164) - yaddr[8] : mx12b
mx12b yaddr_index_8_inst
(
	.q(ya_8), // OUT
	.a_0(ytm_10), // IN
	.a_1(ytm_9), // IN
	.a_2(ytm_8), // IN
	.a_3(ytm_7), // IN
	.a_4(ytm_6), // IN
	.a_5(ytm_5), // IN
	.a_6(ytm_4), // IN
	.a_7(ytm_3), // IN
	.a_8(ytm_2), // IN
	.a_9(ytm_1), // IN
	.a_10(ytm_0), // IN
	.a_11(zero), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (167) - yaddr[9] : mx12b
mx12b yaddr_index_9_inst
(
	.q(ya_9), // OUT
	.a_0(ytm_11), // IN
	.a_1(ytm_10), // IN
	.a_2(ytm_9), // IN
	.a_3(ytm_8), // IN
	.a_4(ytm_7), // IN
	.a_5(ytm_6), // IN
	.a_6(ytm_5), // IN
	.a_7(ytm_4), // IN
	.a_8(ytm_3), // IN
	.a_9(ytm_2), // IN
	.a_10(ytm_1), // IN
	.a_11(ytm_0), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (170) - yaddr[10] : mx12b
mx12b yaddr_index_10_inst
(
	.q(ya_10), // OUT
	.a_0(ytm_12), // IN
	.a_1(ytm_11), // IN
	.a_2(ytm_10), // IN
	.a_3(ytm_9), // IN
	.a_4(ytm_8), // IN
	.a_5(ytm_7), // IN
	.a_6(ytm_6), // IN
	.a_7(ytm_5), // IN
	.a_8(ytm_4), // IN
	.a_9(ytm_3), // IN
	.a_10(ytm_2), // IN
	.a_11(ytm_1), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (174) - yaddr[11] : mx12b
mx12b yaddr_index_11_inst
(
	.q(ya_11), // OUT
	.a_0(ytm_13), // IN
	.a_1(ytm_12), // IN
	.a_2(ytm_11), // IN
	.a_3(ytm_10), // IN
	.a_4(ytm_9), // IN
	.a_5(ytm_8), // IN
	.a_6(ytm_7), // IN
	.a_7(ytm_6), // IN
	.a_8(ytm_5), // IN
	.a_9(ytm_4), // IN
	.a_10(ytm_3), // IN
	.a_11(ytm_2), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (178) - yaddr[12] : mx12b
mx12b yaddr_index_12_inst
(
	.q(ya_12), // OUT
	.a_0(ytm_14), // IN
	.a_1(ytm_13), // IN
	.a_2(ytm_12), // IN
	.a_3(ytm_11), // IN
	.a_4(ytm_10), // IN
	.a_5(ytm_9), // IN
	.a_6(ytm_8), // IN
	.a_7(ytm_7), // IN
	.a_8(ytm_6), // IN
	.a_9(ytm_5), // IN
	.a_10(ytm_4), // IN
	.a_11(ytm_3), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (182) - yaddr[13] : mx12b
mx12b yaddr_index_13_inst
(
	.q(ya_13), // OUT
	.a_0(zero), // IN
	.a_1(ytm_14), // IN
	.a_2(ytm_13), // IN
	.a_3(ytm_12), // IN
	.a_4(ytm_11), // IN
	.a_5(ytm_10), // IN
	.a_6(ytm_9), // IN
	.a_7(ytm_8), // IN
	.a_8(ytm_7), // IN
	.a_9(ytm_6), // IN
	.a_10(ytm_5), // IN
	.a_11(ytm_4), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (186) - yaddr[14] : mx12b
mx12b yaddr_index_14_inst
(
	.q(ya_14), // OUT
	.a_0(zero), // IN
	.a_1(zero), // IN
	.a_2(ytm_14), // IN
	.a_3(ytm_13), // IN
	.a_4(ytm_12), // IN
	.a_5(ytm_11), // IN
	.a_6(ytm_10), // IN
	.a_7(ytm_9), // IN
	.a_8(ytm_8), // IN
	.a_9(ytm_7), // IN
	.a_10(ytm_6), // IN
	.a_11(ytm_5), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (190) - yaddr[15] : mx12b
mx12b yaddr_index_15_inst
(
	.q(ya_15), // OUT
	.a_0(zero), // IN
	.a_1(zero), // IN
	.a_2(zero), // IN
	.a_3(ytm_14), // IN
	.a_4(ytm_13), // IN
	.a_5(ytm_12), // IN
	.a_6(ytm_11), // IN
	.a_7(ytm_10), // IN
	.a_8(ytm_9), // IN
	.a_9(ytm_8), // IN
	.a_10(ytm_7), // IN
	.a_11(ytm_6), // IN
	.sel_0(width_2), // IN
	.sel_1(width_3), // IN
	.sel_2(width_4), // IN
	.sel_3(width_5)  // IN
);

// ADDRGEN.NET (196) - mid8en\ : en
assign mid8en_n = ~(width_4 ^ width_5);

// ADDRGEN.NET (197) - yaddr[16] : mx8g
mx8g yaddr_index_16_inst
(
	.z(ya_16), // OUT
	.a0(ytm_10), // IN
	.a1(ytm_9), // IN
	.a2(ytm_8), // IN
	.a3(ytm_7), // IN
	.a4(ytm_14), // IN
	.a5(ytm_13), // IN
	.a6(ytm_12), // IN
	.a7(ytm_11), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(mid8en_n)  // IN
);

// ADDRGEN.NET (201) - yaddr[17] : mx8g
mx8g yaddr_index_17_inst
(
	.z(ya_17), // OUT
	.a0(ytm_11), // IN
	.a1(ytm_10), // IN
	.a2(ytm_9), // IN
	.a3(ytm_8), // IN
	.a4(zero), // IN
	.a5(ytm_14), // IN
	.a6(ytm_13), // IN
	.a7(ytm_12), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(mid8en_n)  // IN
);

// ADDRGEN.NET (205) - yaddr[18] : mx8g
mx8g yaddr_index_18_inst
(
	.z(ya_18), // OUT
	.a0(ytm_12), // IN
	.a1(ytm_11), // IN
	.a2(ytm_10), // IN
	.a3(ytm_9), // IN
	.a4(zero), // IN
	.a5(zero), // IN
	.a6(ytm_14), // IN
	.a7(ytm_13), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(mid8en_n)  // IN
);

// ADDRGEN.NET (209) - yaddr[19] : mx8g
mx8g yaddr_index_19_inst
(
	.z(ya_19), // OUT
	.a0(ytm_13), // IN
	.a1(ytm_12), // IN
	.a2(ytm_11), // IN
	.a3(ytm_10), // IN
	.a4(zero), // IN
	.a5(zero), // IN
	.a6(zero), // IN
	.a7(ytm_14), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.s2(width_4), // IN
	.gn(mid8en_n)  // IN
);

// ADDRGEN.NET (213) - tm4en\ : nd2
assign tm4en_n = ~(width_n_4 & width_5);

// ADDRGEN.NET (214) - yaddr[20] : mx4g
mx4g yaddr_index_20_inst
(
	.z(ya_20), // OUT
	.a0(ytm_14), // IN
	.a1(ytm_13), // IN
	.a2(ytm_12), // IN
	.a3(ytm_11), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.gn(tm4en_n)  // IN
);

// ADDRGEN.NET (216) - yaddr[21] : mx4g
mx4g yaddr_index_21_inst
(
	.z(ya_21), // OUT
	.a0(zero), // IN
	.a1(ytm_14), // IN
	.a2(ytm_13), // IN
	.a3(ytm_12), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.gn(tm4en_n)  // IN
);

// ADDRGEN.NET (218) - yaddr[22] : mx4g
mx4g yaddr_index_22_inst
(
	.z(ya_22), // OUT
	.a0(zero), // IN
	.a1(zero), // IN
	.a2(ytm_14), // IN
	.a3(ytm_13), // IN
	.s0(width_2), // IN
	.s1(width_3), // IN
	.gn(tm4en_n)  // IN
);

// ADDRGEN.NET (220) - yaddr[23] : an5
an5 yaddr_index_23_inst
(
	.q(ya_23), // OUT
	.a_0(ytm_14), // IN
	.a_1(width_2), // IN
	.a_2(width_3), // IN
	.a_3(width_n_4), // IN
	.a_4(width_5)  // IN
);

// ADDRGEN.NET (227) - pa_a : join
assign pa_a[0] = ya_0;
assign pa_a[1] = ya_1;
assign pa_a[2] = ya_2;
assign pa_a[3] = ya_3;
assign pa_a[4] = ya_4;
assign pa_a[5] = ya_5;
assign pa_a[6] = ya_6;
assign pa_a[7] = ya_7;
assign pa_a[8] = ya_8;
assign pa_a[9] = ya_9;
assign pa_a[10] = ya_10;
assign pa_a[11] = ya_11;
assign pa_a[12] = ya_12;
assign pa_a[13] = ya_13;
assign pa_a[14] = ya_14;
assign pa_a[15] = ya_15;
assign pa_a[16] = ya_16;
assign pa_a[17] = ya_17;
assign pa_a[18] = ya_18;
assign pa_a[19] = ya_19;
assign pa_a[20] = ya_20;
assign pa_a[21] = ya_21;
assign pa_a[22] = ya_22;
assign pa_a[23] = ya_23;

// ADDRGEN.NET (228) - pa_ad : dummy

// ADDRGEN.NET (229) - pa_b : join
assign pa_b[0] = x_0;
assign pa_b[1] = x_1;
assign pa_b[2] = x_2;
assign pa_b[3] = x_3;
assign pa_b[4] = x_4;
assign pa_b[5] = x_5;
assign pa_b[6] = x_6;
assign pa_b[7] = x_7;
assign pa_b[8] = x_8;
assign pa_b[9] = x_9;
assign pa_b[10] = x_10;
assign pa_b[11] = x_11;
assign pa_b[12] = x_12;
assign pa_b[13] = x_13;
assign pa_b[14] = x_14;
assign pa_b[15] = x_15;

// ADDRGEN.NET (230) - pa_bd : dummy

// ADDRGEN.NET (231) - pa : join
assign pa[0] = pa_0;
assign pa[1] = pa_1;
assign pa[2] = pa_2;
assign pa[3] = pa_3;
assign pa[4] = pa_4;
assign pa[5] = pa_5;
assign pa[6] = pa_6;
assign pa[7] = pa_7;
assign pa[8] = pa_8;
assign pa[9] = pa_9;
assign pa[10] = pa_10;
assign pa[11] = pa_11;
assign pa[12] = pa_12;
assign pa[13] = pa_13;
assign pa[14] = pa_14;
assign pa[15] = pa_15;
assign pa[16] = pa_16;
assign pa[17] = pa_17;
assign pa[18] = pa_18;
assign pa[19] = pa_19;
assign pa[20] = pa_20;
assign pa[21] = pa_21;
assign pa[22] = pa_22;
assign pa[23] = pa_23;
assign pa[24] = pa_24;

// ADDRGEN.NET (232) - pad : dummy

// ADDRGEN.NET (234) - palow : fas16_s
fas16 palow_inst
(
	.s0(pa_0), // OUT
	.s1(pa_1), // OUT
	.s2(pa_2), // OUT
	.s3(pa_3), // OUT
	.s4(pa_4), // OUT
	.s5(pa_5), // OUT
	.s6(pa_6), // OUT
	.s7(pa_7), // OUT
	.s8(pa_8), // OUT
	.s9(pa_9), // OUT
	.s10(pa_10), // OUT
	.s11(pa_11), // OUT
	.s12(pa_12), // OUT
	.s13(pa_13), // OUT
	.s14(pa_14), // OUT
	.s15(pa_15), // OUT
	.co(pacy_n_15), // OUT
	.as(one), // IN
	.ci(one), // IN
	.a0(ya_0), // IN
	.b0(x_0), // IN
	.a1(ya_1), // IN
	.b1(x_1), // IN
	.a2(ya_2), // IN
	.b2(x_2), // IN
	.a3(ya_3), // IN
	.b3(x_3), // IN
	.a4(ya_4), // IN
	.b4(x_4), // IN
	.a5(ya_5), // IN
	.b5(x_5), // IN
	.a6(ya_6), // IN
	.b6(x_6), // IN
	.a7(ya_7), // IN
	.b7(x_7), // IN
	.a8(ya_8), // IN
	.b8(x_8), // IN
	.a9(ya_9), // IN
	.b9(x_9), // IN
	.a10(ya_10), // IN
	.b10(x_10), // IN
	.a11(ya_11), // IN
	.b11(x_11), // IN
	.a12(ya_12), // IN
	.b12(x_12), // IN
	.a13(ya_13), // IN
	.b13(x_13), // IN
	.a14(ya_14), // IN
	.b14(x_14), // IN
	.a15(ya_15), // IN
	.b15(x_15)  // IN
);

// ADDRGEN.NET (241) - pacy[15] : iv
assign pacy_15 = ~pacy_n_15;

// ADDRGEN.NET (242) - pa[16-19] : ha1
ha1 pa_from_16_to_19_inst_0
(
	.s(pa_16), // OUT
	.co(pacy_16), // OUT
	.a(ya_16), // IN
	.b(pacy_15)  // IN
);
ha1 pa_from_16_to_19_inst_1
(
	.s(pa_17), // OUT
	.co(pacy_17), // OUT
	.a(ya_17), // IN
	.b(pacy_16)  // IN
);
ha1 pa_from_16_to_19_inst_2
(
	.s(pa_18), // OUT
	.co(pacy_18), // OUT
	.a(ya_18), // IN
	.b(pacy_17)  // IN
);
ha1 pa_from_16_to_19_inst_3
(
	.s(pa_19), // OUT
	.co(pacy_19), // OUT
	.a(ya_19), // IN
	.b(pacy_18)  // IN
);

// ADDRGEN.NET (244) - pa[20] : eop
assign pa_20 = ya_20 ^ pacy_19;

// ADDRGEN.NET (245) - pacy[20] : an6m
assign pacy_20 = pacy_15 & ya_16 & ya_17 & ya_18 & ya_19 & ya_20;

// ADDRGEN.NET (246) - pa[21-22] : ha1
ha1 pa_from_21_to_22_inst_0
(
	.s(pa_21), // OUT
	.co(pacy_21), // OUT
	.a(ya_21), // IN
	.b(pacy_20)  // IN
);
ha1 pa_from_21_to_22_inst_1
(
	.s(pa_22), // OUT
	.co(pacy_22), // OUT
	.a(ya_22), // IN
	.b(pacy_21)  // IN
);

// ADDRGEN.NET (248) - pa[23] : ha1
ha1 pa_index_23_inst
(
	.s(pa_23), // OUT
	.co(pa_24), // OUT
	.a(ya_23), // IN
	.b(pacy_22)  // IN
);

// ADDRGEN.NET (252) - pixa4 : mx6
mx6 pixa4_inst
(
	.q(pixa_4), // OUT
	.a_0(pa_4), // IN
	.a_1(pa_3), // IN
	.a_2(pa_2), // IN
	.a_3(pa_1), // IN
	.a_4(pa_0), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (254) - pixa3 : mx6
mx6 pixa3_inst
(
	.q(pixa_3), // OUT
	.a_0(pa_3), // IN
	.a_1(pa_2), // IN
	.a_2(pa_1), // IN
	.a_3(pa_0), // IN
	.a_4(zero), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (256) - pixa2 : mx6
mx6 pixa2_inst
(
	.q(pixa_2_obuf), // OUT
	.a_0(pa_2), // IN
	.a_1(pa_1), // IN
	.a_2(pa_0), // IN
	.a_3(zero), // IN
	.a_4(zero), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (258) - pixa1 : mx6
mx6 pixa1_inst
(
	.q(pixa_1_obuf), // OUT
	.a_0(pa_1), // IN
	.a_1(pa_0), // IN
	.a_2(zero), // IN
	.a_3(zero), // IN
	.a_4(zero), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (260) - pixa0 : mx6
mx6 pixa0_inst
(
	.q(pixa_0_obuf), // OUT
	.a_0(pa_0), // IN
	.a_1(zero), // IN
	.a_2(zero), // IN
	.a_3(zero), // IN
	.a_4(zero), // IN
	.a_5(zero), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (262) - pixa[5-12] : mx6
mx6 pixa_from_5_to_12_inst_0
(
	.q(pixa_5), // OUT
	.a_0(pa_5), // IN
	.a_1(pa_4), // IN
	.a_2(pa_3), // IN
	.a_3(pa_2), // IN
	.a_4(pa_1), // IN
	.a_5(pa_0), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_1
(
	.q(pixa_6), // OUT
	.a_0(pa_6), // IN
	.a_1(pa_5), // IN
	.a_2(pa_4), // IN
	.a_3(pa_3), // IN
	.a_4(pa_2), // IN
	.a_5(pa_1), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_2
(
	.q(pixa_7), // OUT
	.a_0(pa_7), // IN
	.a_1(pa_6), // IN
	.a_2(pa_5), // IN
	.a_3(pa_4), // IN
	.a_4(pa_3), // IN
	.a_5(pa_2), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_3
(
	.q(pixa_8), // OUT
	.a_0(pa_8), // IN
	.a_1(pa_7), // IN
	.a_2(pa_6), // IN
	.a_3(pa_5), // IN
	.a_4(pa_4), // IN
	.a_5(pa_3), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_4
(
	.q(pixa_9), // OUT
	.a_0(pa_9), // IN
	.a_1(pa_8), // IN
	.a_2(pa_7), // IN
	.a_3(pa_6), // IN
	.a_4(pa_5), // IN
	.a_5(pa_4), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_5
(
	.q(pixa_10), // OUT
	.a_0(pa_10), // IN
	.a_1(pa_9), // IN
	.a_2(pa_8), // IN
	.a_3(pa_7), // IN
	.a_4(pa_6), // IN
	.a_5(pa_5), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_6
(
	.q(pixa_11), // OUT
	.a_0(pa_11), // IN
	.a_1(pa_10), // IN
	.a_2(pa_9), // IN
	.a_3(pa_8), // IN
	.a_4(pa_7), // IN
	.a_5(pa_6), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_5_to_12_inst_7
(
	.q(pixa_12), // OUT
	.a_0(pa_12), // IN
	.a_1(pa_11), // IN
	.a_2(pa_10), // IN
	.a_3(pa_9), // IN
	.a_4(pa_8), // IN
	.a_5(pa_7), // IN
	.sel_0(pixsize_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (265) - pixa[13-24] : mx6
mx6 pixa_from_13_to_24_inst_0
(
	.q(pixa_13), // OUT
	.a_0(pa_13), // IN
	.a_1(pa_12), // IN
	.a_2(pa_11), // IN
	.a_3(pa_10), // IN
	.a_4(pa_9), // IN
	.a_5(pa_8), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_1
(
	.q(pixa_14), // OUT
	.a_0(pa_14), // IN
	.a_1(pa_13), // IN
	.a_2(pa_12), // IN
	.a_3(pa_11), // IN
	.a_4(pa_10), // IN
	.a_5(pa_9), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_2
(
	.q(pixa_15), // OUT
	.a_0(pa_15), // IN
	.a_1(pa_14), // IN
	.a_2(pa_13), // IN
	.a_3(pa_12), // IN
	.a_4(pa_11), // IN
	.a_5(pa_10), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_3
(
	.q(pixa_16), // OUT
	.a_0(pa_16), // IN
	.a_1(pa_15), // IN
	.a_2(pa_14), // IN
	.a_3(pa_13), // IN
	.a_4(pa_12), // IN
	.a_5(pa_11), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_4
(
	.q(pixa_17), // OUT
	.a_0(pa_17), // IN
	.a_1(pa_16), // IN
	.a_2(pa_15), // IN
	.a_3(pa_14), // IN
	.a_4(pa_13), // IN
	.a_5(pa_12), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_5
(
	.q(pixa_18), // OUT
	.a_0(pa_18), // IN
	.a_1(pa_17), // IN
	.a_2(pa_16), // IN
	.a_3(pa_15), // IN
	.a_4(pa_14), // IN
	.a_5(pa_13), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_6
(
	.q(pixa_19), // OUT
	.a_0(pa_19), // IN
	.a_1(pa_18), // IN
	.a_2(pa_17), // IN
	.a_3(pa_16), // IN
	.a_4(pa_15), // IN
	.a_5(pa_14), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_7
(
	.q(pixa_20), // OUT
	.a_0(pa_20), // IN
	.a_1(pa_19), // IN
	.a_2(pa_18), // IN
	.a_3(pa_17), // IN
	.a_4(pa_16), // IN
	.a_5(pa_15), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_8
(
	.q(pixa_21), // OUT
	.a_0(pa_21), // IN
	.a_1(pa_20), // IN
	.a_2(pa_19), // IN
	.a_3(pa_18), // IN
	.a_4(pa_17), // IN
	.a_5(pa_16), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_9
(
	.q(pixa_22), // OUT
	.a_0(pa_22), // IN
	.a_1(pa_21), // IN
	.a_2(pa_20), // IN
	.a_3(pa_19), // IN
	.a_4(pa_18), // IN
	.a_5(pa_17), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_10
(
	.q(pixa_23), // OUT
	.a_0(pa_23), // IN
	.a_1(pa_22), // IN
	.a_2(pa_21), // IN
	.a_3(pa_20), // IN
	.a_4(pa_19), // IN
	.a_5(pa_18), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);
mx6 pixa_from_13_to_24_inst_11
(
	.q(pixa_24), // OUT
	.a_0(pa_24), // IN
	.a_1(pa_23), // IN
	.a_2(pa_22), // IN
	.a_3(pa_21), // IN
	.a_4(pa_20), // IN
	.a_5(pa_19), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (268) - pixa[25] : mx6
mx6 pixa_index_25_inst
(
	.q(pixa_25), // OUT
	.a_0(zero), // IN
	.a_1(pa_24), // IN
	.a_2(pa_23), // IN
	.a_3(pa_22), // IN
	.a_4(pa_21), // IN
	.a_5(pa_20), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (271) - pixa[26] : mx6
mx6 pixa_index_26_inst
(
	.q(pixa_26), // OUT
	.a_0(zero), // IN
	.a_1(zero), // IN
	.a_2(pa_24), // IN
	.a_3(pa_23), // IN
	.a_4(pa_22), // IN
	.a_5(pa_21), // IN
	.sel_0(pixsizeb_0), // IN
	.sel_1(pixsize_1), // IN
	.sel_2(pixsize_2)  // IN
);

// ADDRGEN.NET (275) - pixadr : join
assign pixadr[0] = pixa_0_obuf;
assign pixadr[1] = pixa_1_obuf;
assign pixadr[2] = pixa_2_obuf;
assign pixadr[3] = pixa_3;
assign pixadr[4] = pixa_4;
assign pixadr[5] = pixa_5;
assign pixadr[6] = pixa_6;
assign pixadr[7] = pixa_7;
assign pixadr[8] = pixa_8;
assign pixadr[9] = pixa_9;
assign pixadr[10] = pixa_10;
assign pixadr[11] = pixa_11;
assign pixadr[12] = pixa_12;
assign pixadr[13] = pixa_13;
assign pixadr[14] = pixa_14;
assign pixadr[15] = pixa_15;
assign pixadr[16] = pixa_16;
assign pixadr[17] = pixa_17;
assign pixadr[18] = pixa_18;
assign pixadr[19] = pixa_19;
assign pixadr[20] = pixa_20;
assign pixadr[21] = pixa_21;
assign pixadr[22] = pixa_22;
assign pixadr[23] = pixa_23;
assign pixadr[24] = pixa_24;
assign pixadr[25] = pixa_25;
assign pixadr[26] = pixa_26;

// ADDRGEN.NET (276) - pixadrd : dummy

// ADDRGEN.NET (286) - pt0 : an2u
assign pt_0 = pitch_0 & pitch_n_1;

// ADDRGEN.NET (287) - pt1 : an2u
assign pt_1 = pitch_1 & pitch_n_0;

// ADDRGEN.NET (289) - phradr[0] : mx4p
mx4 phradr_index_0_inst
(
	.z(phradr_0), // OUT
	.a0(pixa_6), // IN
	.a1(zero), // IN
	.a2(zero), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);

// ADDRGEN.NET (291) - phradr[1] : mx4p
mx4 phradr_index_1_inst
(
	.z(phradr_1), // OUT
	.a0(pixa_7), // IN
	.a1(pixa_6), // IN
	.a2(zero), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);

// ADDRGEN.NET (293) - phradr[2] : mx4p
mx4 phradr_index_2_inst
(
	.z(phradr_2), // OUT
	.a0(pixa_8), // IN
	.a1(pixa_7), // IN
	.a2(pixa_6), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);

// ADDRGEN.NET (295) - phradr[3-20] : mx4p
mx4 phradr_from_3_to_20_inst_0
(
	.z(phradr_3), // OUT
	.a0(pixa_9), // IN
	.a1(pixa_8), // IN
	.a2(pixa_7), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_1
(
	.z(phradr_4), // OUT
	.a0(pixa_10), // IN
	.a1(pixa_9), // IN
	.a2(pixa_8), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_2
(
	.z(phradr_5), // OUT
	.a0(pixa_11), // IN
	.a1(pixa_10), // IN
	.a2(pixa_9), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_3
(
	.z(phradr_6), // OUT
	.a0(pixa_12), // IN
	.a1(pixa_11), // IN
	.a2(pixa_10), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_4
(
	.z(phradr_7), // OUT
	.a0(pixa_13), // IN
	.a1(pixa_12), // IN
	.a2(pixa_11), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_5
(
	.z(phradr_8), // OUT
	.a0(pixa_14), // IN
	.a1(pixa_13), // IN
	.a2(pixa_12), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_6
(
	.z(phradr_9), // OUT
	.a0(pixa_15), // IN
	.a1(pixa_14), // IN
	.a2(pixa_13), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_7
(
	.z(phradr_10), // OUT
	.a0(pixa_16), // IN
	.a1(pixa_15), // IN
	.a2(pixa_14), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_8
(
	.z(phradr_11), // OUT
	.a0(pixa_17), // IN
	.a1(pixa_16), // IN
	.a2(pixa_15), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_9
(
	.z(phradr_12), // OUT
	.a0(pixa_18), // IN
	.a1(pixa_17), // IN
	.a2(pixa_16), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_10
(
	.z(phradr_13), // OUT
	.a0(pixa_19), // IN
	.a1(pixa_18), // IN
	.a2(pixa_17), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_11
(
	.z(phradr_14), // OUT
	.a0(pixa_20), // IN
	.a1(pixa_19), // IN
	.a2(pixa_18), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_12
(
	.z(phradr_15), // OUT
	.a0(pixa_21), // IN
	.a1(pixa_20), // IN
	.a2(pixa_19), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_13
(
	.z(phradr_16), // OUT
	.a0(pixa_22), // IN
	.a1(pixa_21), // IN
	.a2(pixa_20), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_14
(
	.z(phradr_17), // OUT
	.a0(pixa_23), // IN
	.a1(pixa_22), // IN
	.a2(pixa_21), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_15
(
	.z(phradr_18), // OUT
	.a0(pixa_24), // IN
	.a1(pixa_23), // IN
	.a2(pixa_22), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_16
(
	.z(phradr_19), // OUT
	.a0(pixa_25), // IN
	.a1(pixa_24), // IN
	.a2(pixa_23), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);
mx4 phradr_from_3_to_20_inst_17
(
	.z(phradr_20), // OUT
	.a0(pixa_26), // IN
	.a1(pixa_25), // IN
	.a2(pixa_24), // IN
	.a3(zero), // IN
	.s0(pt_0), // IN
	.s1(pt_1)  // IN
);

// ADDRGEN.NET (300) - shupen : an2u
assign shupen = pitch_0 & pitch_1;

// ADDRGEN.NET (301) - shup[0-19] : an2
assign shup_0 = pixa_6 & shupen;
assign shup_1 = pixa_7 & shupen;
assign shup_2 = pixa_8 & shupen;
assign shup_3 = pixa_9 & shupen;
assign shup_4 = pixa_10 & shupen;
assign shup_5 = pixa_11 & shupen;
assign shup_6 = pixa_12 & shupen;
assign shup_7 = pixa_13 & shupen;
assign shup_8 = pixa_14 & shupen;
assign shup_9 = pixa_15 & shupen;
assign shup_10 = pixa_16 & shupen;
assign shup_11 = pixa_17 & shupen;
assign shup_12 = pixa_18 & shupen;
assign shup_13 = pixa_19 & shupen;
assign shup_14 = pixa_20 & shupen;
assign shup_15 = pixa_21 & shupen;
assign shup_16 = pixa_22 & shupen;
assign shup_17 = pixa_23 & shupen;
assign shup_18 = pixa_24 & shupen;
assign shup_19 = pixa_25 & shupen;

// ADDRGEN.NET (309) - za[0-1] : an2
assign za_0 = zoffset_0 & zaddr;
assign za_1 = zoffset_1 & zaddr;

// ADDRGEN.NET (311) - addr[0] : fa1
fa1 addr_index_0_inst
(
	.s(addr_0), // OUT
	.co(adcy0), // OUT
	.ci(base[0]), // IN
	.a(phradr_0), // IN
	.b(za_0)  // IN
);

// ADDRGEN.NET (313) - addr1t : fa1
fa1 addr1t_inst
(
	.s(addr1t), // OUT
	.co(adcy1a), // OUT
	.ci(base[1]), // IN
	.a(phradr_1), // IN
	.b(za_1)  // IN
);

// ADDRGEN.NET (315) - addr[1] : fa1
fa1 addr_index_1_inst
(
	.s(addr_1), // OUT
	.co(adcy1b), // OUT
	.ci(addr1t), // IN
	.a(shup_0), // IN
	.b(adcy0)  // IN
);

// ADDRGEN.NET (317) - addr2t : fa1
fa1 addr2t_inst
(
	.s(addr2t), // OUT
	.co(adcy2a), // OUT
	.ci(base[2]), // IN
	.a(phradr_2), // IN
	.b(adcy1a)  // IN
);

// ADDRGEN.NET (319) - addr[2] : fa1
fa1 addr_index_2_inst
(
	.s(addr_2), // OUT
	.co(adcy2b), // OUT
	.ci(addr2t), // IN
	.a(shup_1), // IN
	.b(adcy1b)  // IN
);

// ADDRGEN.NET (321) - addr3t28 : fa332
fa332 addr3t28_inst
(
	.s0(addr_3), // OUT
	.s1(addr_4), // OUT
	.s2(addr_5), // OUT
	.s3(addr_6), // OUT
	.s4(addr_7), // OUT
	.s5(addr_8), // OUT
	.s6(addr_9), // OUT
	.s7(addr_10), // OUT
	.s8(addr_11), // OUT
	.s9(addr_12), // OUT
	.s10(addr_13), // OUT
	.s11(addr_14), // OUT
	.s12(addr_15), // OUT
	.s13(addr_16), // OUT
	.s14(addr_17), // OUT
	.s15(addr_18), // OUT
	.s16(addr_19), // OUT
	.s17(addr_20), // OUT
	.s18(unused_0), // OUT
	.s19(unused_1), // OUT
	.s20(unused_2), // OUT
	.s21(unused_3), // OUT
	.s22(unused_4), // OUT
	.s23(unused_5), // OUT
	.s24(unused_6), // OUT
	.s25(unused_7), // OUT
	.s26(unused_8), // OUT
	.s27(unused_9), // OUT
	.s28(unused_10), // OUT
	.s29(unused_11), // OUT
	.s30(unused_12), // OUT
	.s31(unused_13), // OUT
	.co0(unused_14), // OUT
	.co1(unused_15), // OUT
	.ci0(adcy2a), // IN
	.ci1(adcy2b), // IN
	.a0(shup_2), // IN
	.b0(base[3]), // IN
	.c0(phradr_3), // IN
	.a1(shup_3), // IN
	.b1(base[4]), // IN
	.c1(phradr_4), // IN
	.a2(shup_4), // IN
	.b2(base[5]), // IN
	.c2(phradr_5), // IN
	.a3(shup_5), // IN
	.b3(base[6]), // IN
	.c3(phradr_6), // IN
	.a4(shup_6), // IN
	.b4(base[7]), // IN
	.c4(phradr_7), // IN
	.a5(shup_7), // IN
	.b5(base[8]), // IN
	.c5(phradr_8), // IN
	.a6(shup_8), // IN
	.b6(base[9]), // IN
	.c6(phradr_9), // IN
	.a7(shup_9), // IN
	.b7(base[10]), // IN
	.c7(phradr_10), // IN
	.a8(shup_10), // IN
	.b8(base[11]), // IN
	.c8(phradr_11), // IN
	.a9(shup_11), // IN
	.b9(base[12]), // IN
	.c9(phradr_12), // IN
	.a10(shup_12), // IN
	.b10(base[13]), // IN
	.c10(phradr_13), // IN
	.a11(shup_13), // IN
	.b11(base[14]), // IN
	.c11(phradr_14), // IN
	.a12(shup_14), // IN
	.b12(base[15]), // IN
	.c12(phradr_15), // IN
	.a13(shup_15), // IN
	.b13(base[16]), // IN
	.c13(phradr_16), // IN
	.a14(shup_16), // IN
	.b14(base[17]), // IN
	.c14(phradr_17), // IN
	.a15(shup_17), // IN
	.b15(base[18]), // IN
	.c15(phradr_18), // IN
	.a16(shup_18), // IN
	.b16(base[19]), // IN
	.c16(phradr_19), // IN
	.a17(shup_19), // IN
	.b17(base[20]), // IN
	.c17(phradr_20), // IN
	.a18(zero), // IN
	.b18(zero), // IN
	.c18(zero), // IN
	.a19(zero), // IN
	.b19(zero), // IN
	.c19(zero), // IN
	.a20(zero), // IN
	.b20(zero), // IN
	.c20(zero), // IN
	.a21(zero), // IN
	.b21(zero), // IN
	.c21(zero), // IN
	.a22(zero), // IN
	.b22(zero), // IN
	.c22(zero), // IN
	.a23(zero), // IN
	.b23(zero), // IN
	.c23(zero), // IN
	.a24(zero), // IN
	.b24(zero), // IN
	.c24(zero), // IN
	.a25(zero), // IN
	.b25(zero), // IN
	.c25(zero), // IN
	.a26(zero), // IN
	.b26(zero), // IN
	.c26(zero), // IN
	.a27(zero), // IN
	.b27(zero), // IN
	.c27(zero), // IN
	.a28(zero), // IN
	.b28(zero), // IN
	.c28(zero), // IN
	.a29(zero), // IN
	.b29(zero), // IN
	.c29(zero), // IN
	.a30(zero), // IN
	.b30(zero), // IN
	.c30(zero), // IN
	.a31(zero), // IN
	.b31(zero), // IN
	.c31(zero)  // IN
);

// ADDRGEN.NET (356) - addrgen : join
assign addrgen[0] = pixa_3;
assign addrgen[1] = pixa_4;
assign addrgen[2] = pixa_5;
assign addrgen[3] = addr_0;
assign addrgen[4] = addr_1;
assign addrgen[5] = addr_2;
assign addrgen[6] = addr_3;
assign addrgen[7] = addr_4;
assign addrgen[8] = addr_5;
assign addrgen[9] = addr_6;
assign addrgen[10] = addr_7;
assign addrgen[11] = addr_8;
assign addrgen[12] = addr_9;
assign addrgen[13] = addr_10;
assign addrgen[14] = addr_11;
assign addrgen[15] = addr_12;
assign addrgen[16] = addr_13;
assign addrgen[17] = addr_14;
assign addrgen[18] = addr_15;
assign addrgen[19] = addr_16;
assign addrgen[20] = addr_17;
assign addrgen[21] = addr_18;
assign addrgen[22] = addr_19;
assign addrgen[23] = addr_20;

// ADDRGEN.NET (360) - apipeb : nivu
assign apipeb = apipe;

// ADDRGEN.NET (361) - addressi : mx2p
mx2 addressi_inst_0
(
	.z(address_b0_obuf), // OUT
	.a0(addressi[0]), // IN
	.a1(addrgen[0]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_1
(
	.z(address_b1_obuf), // OUT
	.a0(addressi[1]), // IN
	.a1(addrgen[1]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_2
(
	.z(address_b2_obuf), // OUT
	.a0(addressi[2]), // IN
	.a1(addrgen[2]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_3
(
	.z(address_b3_obuf), // OUT
	.a0(addressi[3]), // IN
	.a1(addrgen[3]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_4
(
	.z(address_b4_obuf), // OUT
	.a0(addressi[4]), // IN
	.a1(addrgen[4]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_5
(
	.z(address_b5_obuf), // OUT
	.a0(addressi[5]), // IN
	.a1(addrgen[5]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_6
(
	.z(address_b6_obuf), // OUT
	.a0(addressi[6]), // IN
	.a1(addrgen[6]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_7
(
	.z(address_b7_obuf), // OUT
	.a0(addressi[7]), // IN
	.a1(addrgen[7]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_8
(
	.z(address_b8_obuf), // OUT
	.a0(addressi[8]), // IN
	.a1(addrgen[8]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_9
(
	.z(address_b9_obuf), // OUT
	.a0(addressi[9]), // IN
	.a1(addrgen[9]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_10
(
	.z(address_b10_obuf), // OUT
	.a0(addressi[10]), // IN
	.a1(addrgen[10]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_11
(
	.z(address_b11_obuf), // OUT
	.a0(addressi[11]), // IN
	.a1(addrgen[11]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_12
(
	.z(address_b12_obuf), // OUT
	.a0(addressi[12]), // IN
	.a1(addrgen[12]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_13
(
	.z(address_b13_obuf), // OUT
	.a0(addressi[13]), // IN
	.a1(addrgen[13]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_14
(
	.z(address_b14_obuf), // OUT
	.a0(addressi[14]), // IN
	.a1(addrgen[14]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_15
(
	.z(address_b15_obuf), // OUT
	.a0(addressi[15]), // IN
	.a1(addrgen[15]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_16
(
	.z(address_b16_obuf), // OUT
	.a0(addressi[16]), // IN
	.a1(addrgen[16]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_17
(
	.z(address_b17_obuf), // OUT
	.a0(addressi[17]), // IN
	.a1(addrgen[17]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_18
(
	.z(address_b18_obuf), // OUT
	.a0(addressi[18]), // IN
	.a1(addrgen[18]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_19
(
	.z(address_b19_obuf), // OUT
	.a0(addressi[19]), // IN
	.a1(addrgen[19]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_20
(
	.z(address_b20_obuf), // OUT
	.a0(addressi[20]), // IN
	.a1(addrgen[20]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_21
(
	.z(address_b21_obuf), // OUT
	.a0(addressi[21]), // IN
	.a1(addrgen[21]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_22
(
	.z(address_b22_obuf), // OUT
	.a0(addressi[22]), // IN
	.a1(addrgen[22]), // IN
	.s(apipeb)  // IN
);
mx2 addressi_inst_23
(
	.z(address_b23_obuf), // OUT
	.a0(addressi[23]), // IN
	.a1(addrgen[23]), // IN
	.s(apipeb)  // IN
);

// ADDRGEN.NET (362) - address : fd1q
fd1q address_inst_0
(
	.q(addressi[0]), // OUT
	.d(address_b0_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_1
(
	.q(addressi[1]), // OUT
	.d(address_b1_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_2
(
	.q(addressi[2]), // OUT
	.d(address_b2_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_3
(
	.q(addressi[3]), // OUT
	.d(address_b3_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_4
(
	.q(addressi[4]), // OUT
	.d(address_b4_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_5
(
	.q(addressi[5]), // OUT
	.d(address_b5_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_6
(
	.q(addressi[6]), // OUT
	.d(address_b6_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_7
(
	.q(addressi[7]), // OUT
	.d(address_b7_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_8
(
	.q(addressi[8]), // OUT
	.d(address_b8_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_9
(
	.q(addressi[9]), // OUT
	.d(address_b9_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_10
(
	.q(addressi[10]), // OUT
	.d(address_b10_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_11
(
	.q(addressi[11]), // OUT
	.d(address_b11_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_12
(
	.q(addressi[12]), // OUT
	.d(address_b12_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_13
(
	.q(addressi[13]), // OUT
	.d(address_b13_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_14
(
	.q(addressi[14]), // OUT
	.d(address_b14_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_15
(
	.q(addressi[15]), // OUT
	.d(address_b15_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_16
(
	.q(addressi[16]), // OUT
	.d(address_b16_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_17
(
	.q(addressi[17]), // OUT
	.d(address_b17_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_18
(
	.q(addressi[18]), // OUT
	.d(address_b18_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_19
(
	.q(addressi[19]), // OUT
	.d(address_b19_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_20
(
	.q(addressi[20]), // OUT
	.d(address_b20_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_21
(
	.q(addressi[21]), // OUT
	.d(address_b21_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_22
(
	.q(addressi[22]), // OUT
	.d(address_b22_obuf), // IN
	.cp(clk)  // IN
);
fd1q address_inst_23
(
	.q(addressi[23]), // OUT
	.d(address_b23_obuf), // IN
	.cp(clk)  // IN
);

// ADDRGEN.NET (364) - unused[0-15] : dummy
endmodule
