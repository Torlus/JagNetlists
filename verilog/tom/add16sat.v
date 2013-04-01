/* verilator lint_off LITENDIAN */
`include "defs.v"

module add16sat
(
	output [0:15] r,
	output co,
	input [0:15] a,
	input [0:15] b,
	input cin,
	input sat,
	input eightbit,
	input hicinh
);
wire eightbit_n;
wire hicinh_n;
wire q_0;
wire q_1;
wire q_2;
wire q_3;
wire carryt;
wire q_4;
wire q_5;
wire q_6;
wire q_7;
wire carry_0;
wire carry_1;
wire q_8;
wire q_9;
wire q_10;
wire q_11;
wire carry_2;
wire carry_3;
wire q_12;
wire q_13;
wire q_14;
wire q_15;
wire btop;
wire ctop;
wire ctopb;
wire satt;
wire saturate;
wire saturateb;
wire hisaturate;
wire r_0;
wire r_1;
wire r_2;
wire r_3;
wire r_4;
wire r_5;
wire r_6;
wire r_7;
wire r_8;
wire r_9;
wire r_10;
wire r_11;
wire r_12;
wire r_13;
wire r_14;
wire r_15;

// Output buffers
wire co_obuf;


// Output buffers
assign co = co_obuf;


// ADDARRAY.NET (125) - eightbit\ : iv
assign eightbit_n = ~eightbit;

// ADDARRAY.NET (130) - hicinh\ : iv
assign hicinh_n = ~hicinh;

// ADDARRAY.NET (132) - add0 : add4
add4 add0_inst
(
	.q_0 /* OUT */ (q_0),
	.q_1 /* OUT */ (q_1),
	.q_2 /* OUT */ (q_2),
	.q_3 /* OUT */ (q_3),
	.co /* OUT */ (carryt),
	.a_0 /* IN */ (a[0]),
	.a_1 /* IN */ (a[1]),
	.a_2 /* IN */ (a[2]),
	.a_3 /* IN */ (a[3]),
	.b_0 /* IN */ (b[0]),
	.b_1 /* IN */ (b[1]),
	.b_2 /* IN */ (b[2]),
	.b_3 /* IN */ (b[3]),
	.ci /* IN */ (cin)
);

// ADDARRAY.NET (133) - add1 : add4
add4 add1_inst
(
	.q_0 /* OUT */ (q_4),
	.q_1 /* OUT */ (q_5),
	.q_2 /* OUT */ (q_6),
	.q_3 /* OUT */ (q_7),
	.co /* OUT */ (carry_0),
	.a_0 /* IN */ (a[4]),
	.a_1 /* IN */ (a[5]),
	.a_2 /* IN */ (a[6]),
	.a_3 /* IN */ (a[7]),
	.b_0 /* IN */ (b[4]),
	.b_1 /* IN */ (b[5]),
	.b_2 /* IN */ (b[6]),
	.b_3 /* IN */ (b[7]),
	.ci /* IN */ (carryt)
);

// ADDARRAY.NET (136) - carry[1] : an2
assign carry_1 = eightbit_n & carry_0;

// ADDARRAY.NET (138) - add2 : add4
add4 add2_inst
(
	.q_0 /* OUT */ (q_8),
	.q_1 /* OUT */ (q_9),
	.q_2 /* OUT */ (q_10),
	.q_3 /* OUT */ (q_11),
	.co /* OUT */ (carry_2),
	.a_0 /* IN */ (a[8]),
	.a_1 /* IN */ (a[9]),
	.a_2 /* IN */ (a[10]),
	.a_3 /* IN */ (a[11]),
	.b_0 /* IN */ (b[8]),
	.b_1 /* IN */ (b[9]),
	.b_2 /* IN */ (b[10]),
	.b_3 /* IN */ (b[11]),
	.ci /* IN */ (carry_1)
);

// ADDARRAY.NET (141) - carry[3] : an2
assign carry_3 = hicinh_n & carry_2;

// ADDARRAY.NET (143) - add3 : add4
add4 add3_inst
(
	.q_0 /* OUT */ (q_12),
	.q_1 /* OUT */ (q_13),
	.q_2 /* OUT */ (q_14),
	.q_3 /* OUT */ (q_15),
	.co /* OUT */ (co_obuf),
	.a_0 /* IN */ (a[12]),
	.a_1 /* IN */ (a[13]),
	.a_2 /* IN */ (a[14]),
	.a_3 /* IN */ (a[15]),
	.b_0 /* IN */ (b[12]),
	.b_1 /* IN */ (b[13]),
	.b_2 /* IN */ (b[14]),
	.b_3 /* IN */ (b[15]),
	.ci /* IN */ (carry_3)
);

// ADDARRAY.NET (207) - btop : mx2
mx2 btop_inst
(
	.z /* OUT */ (btop),
	.a0 /* IN */ (b[15]),
	.a1 /* IN */ (b[7]),
	.s /* IN */ (eightbit)
);

// ADDARRAY.NET (208) - ctop : mx2p
mx2 ctop_inst
(
	.z /* OUT */ (ctop),
	.a0 /* IN */ (co_obuf),
	.a1 /* IN */ (carry_0),
	.s /* IN */ (eightbit)
);

// ADDARRAY.NET (209) - ctopb : nivh
assign ctopb = ctop;

// ADDARRAY.NET (213) - satt : eo
assign satt = btop ^ ctop;

// ADDARRAY.NET (214) - saturate : an2p
assign saturate = sat & satt;

// ADDARRAY.NET (215) - saturateb : nivh
assign saturateb = saturate;

// ADDARRAY.NET (219) - hisaturate : an2m
assign hisaturate = eightbit_n & saturate;

// ADDARRAY.NET (223) - r[0-7] : mx2p
mx2 r_from_0_to_7_inst_0
(
	.z /* OUT */ (r_0),
	.a0 /* IN */ (q_0),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_1
(
	.z /* OUT */ (r_1),
	.a0 /* IN */ (q_1),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_2
(
	.z /* OUT */ (r_2),
	.a0 /* IN */ (q_2),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_3
(
	.z /* OUT */ (r_3),
	.a0 /* IN */ (q_3),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_4
(
	.z /* OUT */ (r_4),
	.a0 /* IN */ (q_4),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_5
(
	.z /* OUT */ (r_5),
	.a0 /* IN */ (q_5),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_6
(
	.z /* OUT */ (r_6),
	.a0 /* IN */ (q_6),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);
mx2 r_from_0_to_7_inst_7
(
	.z /* OUT */ (r_7),
	.a0 /* IN */ (q_7),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (saturateb)
);

// ADDARRAY.NET (224) - r[8-15] : mx2p
mx2 r_from_8_to_15_inst_0
(
	.z /* OUT */ (r_8),
	.a0 /* IN */ (q_8),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_1
(
	.z /* OUT */ (r_9),
	.a0 /* IN */ (q_9),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_2
(
	.z /* OUT */ (r_10),
	.a0 /* IN */ (q_10),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_3
(
	.z /* OUT */ (r_11),
	.a0 /* IN */ (q_11),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_4
(
	.z /* OUT */ (r_12),
	.a0 /* IN */ (q_12),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_5
(
	.z /* OUT */ (r_13),
	.a0 /* IN */ (q_13),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_6
(
	.z /* OUT */ (r_14),
	.a0 /* IN */ (q_14),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);
mx2 r_from_8_to_15_inst_7
(
	.z /* OUT */ (r_15),
	.a0 /* IN */ (q_15),
	.a1 /* IN */ (ctopb),
	.s /* IN */ (hisaturate)
);

// ADDARRAY.NET (226) - r : join
assign r[0] = r_0;
assign r[1] = r_1;
assign r[2] = r_2;
assign r[3] = r_3;
assign r[4] = r_4;
assign r[5] = r_5;
assign r[6] = r_6;
assign r[7] = r_7;
assign r[8] = r_8;
assign r[9] = r_9;
assign r[10] = r_10;
assign r[11] = r_11;
assign r[12] = r_12;
assign r[13] = r_13;
assign r[14] = r_14;
assign r[15] = r_15;
endmodule
/* verilator lint_on LITENDIAN */
