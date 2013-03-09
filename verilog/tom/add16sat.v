`include "defs.v"

module add16sat
(
	output [0:15] r;
	output co,
	input [0:15] a;
	input [0:15] b;
	input cin,
	input sat,
	input eightbit,
	input hicinh
);
wire eightbit_n;
wire cin_n;
wire one;
wire zero;
wire q_0;
wire q_1;
wire q_2;
wire q_3;
wire co_n_0;
wire co0_n_0;
wire co1_n_0;
wire g_0;
wire p_0;
wire q_4;
wire q_5;
wire q_6;
wire q_7;
wire co_n_1;
wire co0_n_1;
wire co1_n_1;
wire g_1;
wire p_1;
wire cin_n_1;
wire q_8;
wire q_9;
wire q_10;
wire q_11;
wire co_n_2;
wire co0_n_2;
wire co1_n_2;
wire g_2;
wire p_2;
wire cin_n_2;
wire q_12;
wire q_13;
wire q_14;
wire q_15;
wire co_n_3;
wire co0_n_3;
wire co1_n_3;
wire g_3;
wire p_3;
wire cin_n_3;
wire cint_n_2;
wire cint_n_3;
wire g;
wire p;
wire carry_0;
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

// ADDARRAY.NET (174) - cin\ : iv
assign cin_n = ~cin;

// ADDARRAY.NET (175) - one : tie1
assign one = 1'b1;

// ADDARRAY.NET (176) - zero : tie0
assign zero = 1'b0;

// ADDARRAY.NET (177) - add0 : fa4cs
fa4cs add0_inst
(
	.s0 /* OUT */ (q_0),
	.s1 /* OUT */ (q_1),
	.s2 /* OUT */ (q_2),
	.s3 /* OUT */ (q_3),
	.con /* OUT */ (co_n_0),
	.co0n /* OUT */ (co0_n_0),
	.co1n /* OUT */ (co1_n_0),
	.g /* OUT */ (g_0),
	.p /* OUT */ (p_0),
	.cin /* IN */ (cin_n),
	.ci0n /* IN */ (one),
	.ci1n /* IN */ (zero),
	.a0 /* IN */ (a[0]),
	.b0 /* IN */ (b[0]),
	.a1 /* IN */ (a[1]),
	.b1 /* IN */ (b[1]),
	.a2 /* IN */ (a[2]),
	.b2 /* IN */ (b[2]),
	.a3 /* IN */ (a[3]),
	.b3 /* IN */ (b[3])
);

// ADDARRAY.NET (180) - add1 : fa4cs
fa4cs add1_inst
(
	.s0 /* OUT */ (q_4),
	.s1 /* OUT */ (q_5),
	.s2 /* OUT */ (q_6),
	.s3 /* OUT */ (q_7),
	.con /* OUT */ (co_n_1),
	.co0n /* OUT */ (co0_n_1),
	.co1n /* OUT */ (co1_n_1),
	.g /* OUT */ (g_1),
	.p /* OUT */ (p_1),
	.cin /* IN */ (cin_n_1),
	.ci0n /* IN */ (one),
	.ci1n /* IN */ (zero),
	.a0 /* IN */ (a[4]),
	.b0 /* IN */ (b[4]),
	.a1 /* IN */ (a[5]),
	.b1 /* IN */ (b[5]),
	.a2 /* IN */ (a[6]),
	.b2 /* IN */ (b[6]),
	.a3 /* IN */ (a[7]),
	.b3 /* IN */ (b[7])
);

// ADDARRAY.NET (183) - add2 : fa4cs
fa4cs add2_inst
(
	.s0 /* OUT */ (q_8),
	.s1 /* OUT */ (q_9),
	.s2 /* OUT */ (q_10),
	.s3 /* OUT */ (q_11),
	.con /* OUT */ (co_n_2),
	.co0n /* OUT */ (co0_n_2),
	.co1n /* OUT */ (co1_n_2),
	.g /* OUT */ (g_2),
	.p /* OUT */ (p_2),
	.cin /* IN */ (cin_n_2),
	.ci0n /* IN */ (one),
	.ci1n /* IN */ (zero),
	.a0 /* IN */ (a[8]),
	.b0 /* IN */ (b[8]),
	.a1 /* IN */ (a[9]),
	.b1 /* IN */ (b[9]),
	.a2 /* IN */ (a[10]),
	.b2 /* IN */ (b[10]),
	.a3 /* IN */ (a[11]),
	.b3 /* IN */ (b[11])
);

// ADDARRAY.NET (186) - add3 : fa4cs
fa4cs add3_inst
(
	.s0 /* OUT */ (q_12),
	.s1 /* OUT */ (q_13),
	.s2 /* OUT */ (q_14),
	.s3 /* OUT */ (q_15),
	.con /* OUT */ (co_n_3),
	.co0n /* OUT */ (co0_n_3),
	.co1n /* OUT */ (co1_n_3),
	.g /* OUT */ (g_3),
	.p /* OUT */ (p_3),
	.cin /* IN */ (cin_n_3),
	.ci0n /* IN */ (one),
	.ci1n /* IN */ (zero),
	.a0 /* IN */ (a[12]),
	.b0 /* IN */ (b[12]),
	.a1 /* IN */ (a[13]),
	.b1 /* IN */ (b[13]),
	.a2 /* IN */ (a[14]),
	.b2 /* IN */ (b[14]),
	.a3 /* IN */ (a[15]),
	.b3 /* IN */ (b[15])
);

// ADDARRAY.NET (189) - addcg : cg4
cg4 addcg_inst
(
	.co0l /* OUT */ (cin_n_1),
	.co1l /* OUT */ (cint_n_2),
	.co2l /* OUT */ (cint_n_3),
	.g /* OUT */ (g),
	.p /* OUT */ (p),
	.cin /* IN */ (cin_n),
	.g0 /* IN */ (g_0),
	.g1 /* IN */ (g_1),
	.g2 /* IN */ (g_2),
	.g3 /* IN */ (g_3),
	.p0 /* IN */ (p_0),
	.p1 /* IN */ (p_1),
	.p2 /* IN */ (p_2),
	.p3 /* IN */ (p_3)
);

// ADDARRAY.NET (191) - cin\[2] : or2
assign cin_n_2 = eightbit | cint_n_2;

// ADDARRAY.NET (192) - cin\[3] : or2
assign cin_n_3 = hicinh | cint_n_3;

// ADDARRAY.NET (194) - carry[0] : iv
assign carry_0 = ~cint_n_2;

// ADDARRAY.NET (195) - co : aor1
assign co_obuf = (p & cin) | g;

// ADDARRAY.NET (197) - co\[0-3] : dummy

// ADDARRAY.NET (198) - co0\[0-3] : dummy

// ADDARRAY.NET (199) - co1\[0-3] : dummy

// ADDARRAY.NET (204) - btop : mx2
mx2 btop_inst
(
	.z /* OUT */ (btop),
	.a0 /* IN */ (b[15]),
	.a1 /* IN */ (b[7]),
	.s /* IN */ (eightbit)
);

// ADDARRAY.NET (205) - ctop : mx2p
mx2 ctop_inst
(
	.z /* OUT */ (ctop),
	.a0 /* IN */ (co_obuf),
	.a1 /* IN */ (carry_0),
	.s /* IN */ (eightbit)
);

// ADDARRAY.NET (206) - ctopb : nivh
assign ctopb = ctop;

// ADDARRAY.NET (210) - satt : eo
assign satt = btop ^ ctop;

// ADDARRAY.NET (211) - saturate : an2p
assign saturate = sat & satt;

// ADDARRAY.NET (212) - saturateb : nivh
assign saturateb = saturate;

// ADDARRAY.NET (216) - hisaturate : an2m
assign hisaturate = eightbit_n & saturate;

// ADDARRAY.NET (220) - r[0-7] : mx2p
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

// ADDARRAY.NET (221) - r[8-15] : mx2p
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

// ADDARRAY.NET (223) - r : join
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
