`include "defs.v"

module add16sat
(
	output[0:15] r;
	output co,
	input[0:15] a;
	input[0:15] b;
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
wire r_b0_obuf;
wire r_b1_obuf;
wire r_b2_obuf;
wire r_b3_obuf;
wire r_b4_obuf;
wire r_b5_obuf;
wire r_b6_obuf;
wire r_b7_obuf;
wire r_b8_obuf;
wire r_b9_obuf;
wire r_b10_obuf;
wire r_b11_obuf;
wire r_b12_obuf;
wire r_b13_obuf;
wire r_b14_obuf;
wire r_b15_obuf;
wire co_obuf;


// Output buffers
assign r[0] = r_b0_obuf;
assign r[1] = r_b1_obuf;
assign r[2] = r_b2_obuf;
assign r[3] = r_b3_obuf;
assign r[4] = r_b4_obuf;
assign r[5] = r_b5_obuf;
assign r[6] = r_b6_obuf;
assign r[7] = r_b7_obuf;
assign r[8] = r_b8_obuf;
assign r[9] = r_b9_obuf;
assign r[10] = r_b10_obuf;
assign r[11] = r_b11_obuf;
assign r[12] = r_b12_obuf;
assign r[13] = r_b13_obuf;
assign r[14] = r_b14_obuf;
assign r[15] = r_b15_obuf;
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
	.s0(q_0), // OUT
	.s1(q_1), // OUT
	.s2(q_2), // OUT
	.s3(q_3), // OUT
	.con(co_n_0), // OUT
	.co0n(co0_n_0), // OUT
	.co1n(co1_n_0), // OUT
	.g(g_0), // OUT
	.p(p_0), // OUT
	.cin(cin_n), // IN
	.ci0n(one), // IN
	.ci1n(zero), // IN
	.a0(a[0]), // IN
	.b0(b[0]), // IN
	.a1(a[1]), // IN
	.b1(b[1]), // IN
	.a2(a[2]), // IN
	.b2(b[2]), // IN
	.a3(a[3]), // IN
	.b3(b[3])  // IN
);

// ADDARRAY.NET (180) - add1 : fa4cs
fa4cs add1_inst
(
	.s0(q_4), // OUT
	.s1(q_5), // OUT
	.s2(q_6), // OUT
	.s3(q_7), // OUT
	.con(co_n_1), // OUT
	.co0n(co0_n_1), // OUT
	.co1n(co1_n_1), // OUT
	.g(g_1), // OUT
	.p(p_1), // OUT
	.cin(cin_n_1), // IN
	.ci0n(one), // IN
	.ci1n(zero), // IN
	.a0(a[4]), // IN
	.b0(b[4]), // IN
	.a1(a[5]), // IN
	.b1(b[5]), // IN
	.a2(a[6]), // IN
	.b2(b[6]), // IN
	.a3(a[7]), // IN
	.b3(b[7])  // IN
);

// ADDARRAY.NET (183) - add2 : fa4cs
fa4cs add2_inst
(
	.s0(q_8), // OUT
	.s1(q_9), // OUT
	.s2(q_10), // OUT
	.s3(q_11), // OUT
	.con(co_n_2), // OUT
	.co0n(co0_n_2), // OUT
	.co1n(co1_n_2), // OUT
	.g(g_2), // OUT
	.p(p_2), // OUT
	.cin(cin_n_2), // IN
	.ci0n(one), // IN
	.ci1n(zero), // IN
	.a0(a[8]), // IN
	.b0(b[8]), // IN
	.a1(a[9]), // IN
	.b1(b[9]), // IN
	.a2(a[10]), // IN
	.b2(b[10]), // IN
	.a3(a[11]), // IN
	.b3(b[11])  // IN
);

// ADDARRAY.NET (186) - add3 : fa4cs
fa4cs add3_inst
(
	.s0(q_12), // OUT
	.s1(q_13), // OUT
	.s2(q_14), // OUT
	.s3(q_15), // OUT
	.con(co_n_3), // OUT
	.co0n(co0_n_3), // OUT
	.co1n(co1_n_3), // OUT
	.g(g_3), // OUT
	.p(p_3), // OUT
	.cin(cin_n_3), // IN
	.ci0n(one), // IN
	.ci1n(zero), // IN
	.a0(a[12]), // IN
	.b0(b[12]), // IN
	.a1(a[13]), // IN
	.b1(b[13]), // IN
	.a2(a[14]), // IN
	.b2(b[14]), // IN
	.a3(a[15]), // IN
	.b3(b[15])  // IN
);

// ADDARRAY.NET (189) - addcg : cg4
cg4 addcg_inst
(
	.co0l(cin_n_1), // OUT
	.co1l(cint_n_2), // OUT
	.co2l(cint_n_3), // OUT
	.g(g), // OUT
	.p(p), // OUT
	.cin(cin_n), // IN
	.g0(g_0), // IN
	.g1(g_1), // IN
	.g2(g_2), // IN
	.g3(g_3), // IN
	.p0(p_0), // IN
	.p1(p_1), // IN
	.p2(p_2), // IN
	.p3(p_3)  // IN
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
	.z(btop), // OUT
	.a0(b[15]), // IN
	.a1(b[7]), // IN
	.s(eightbit)  // IN
);

// ADDARRAY.NET (205) - ctop : mx2p
mx2 ctop_inst
(
	.z(ctop), // OUT
	.a0(co_obuf), // IN
	.a1(carry_0), // IN
	.s(eightbit)  // IN
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
	.z(r_0), // OUT
	.a0(q_0), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_1
(
	.z(r_1), // OUT
	.a0(q_1), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_2
(
	.z(r_2), // OUT
	.a0(q_2), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_3
(
	.z(r_3), // OUT
	.a0(q_3), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_4
(
	.z(r_4), // OUT
	.a0(q_4), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_5
(
	.z(r_5), // OUT
	.a0(q_5), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_6
(
	.z(r_6), // OUT
	.a0(q_6), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);
mx2 r_from_0_to_7_inst_7
(
	.z(r_7), // OUT
	.a0(q_7), // IN
	.a1(ctopb), // IN
	.s(saturateb)  // IN
);

// ADDARRAY.NET (221) - r[8-15] : mx2p
mx2 r_from_8_to_15_inst_0
(
	.z(r_8), // OUT
	.a0(q_8), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_1
(
	.z(r_9), // OUT
	.a0(q_9), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_2
(
	.z(r_10), // OUT
	.a0(q_10), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_3
(
	.z(r_11), // OUT
	.a0(q_11), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_4
(
	.z(r_12), // OUT
	.a0(q_12), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_5
(
	.z(r_13), // OUT
	.a0(q_13), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_6
(
	.z(r_14), // OUT
	.a0(q_14), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);
mx2 r_from_8_to_15_inst_7
(
	.z(r_15), // OUT
	.a0(q_15), // IN
	.a1(ctopb), // IN
	.s(hisaturate)  // IN
);

// ADDARRAY.NET (223) - r : join
assign r_b0_obuf = r_0;
assign r_b1_obuf = r_1;
assign r_b2_obuf = r_2;
assign r_b3_obuf = r_3;
assign r_b4_obuf = r_4;
assign r_b5_obuf = r_5;
assign r_b6_obuf = r_6;
assign r_b7_obuf = r_7;
assign r_b8_obuf = r_8;
assign r_b9_obuf = r_9;
assign r_b10_obuf = r_10;
assign r_b11_obuf = r_11;
assign r_b12_obuf = r_12;
assign r_b13_obuf = r_13;
assign r_b14_obuf = r_14;
assign r_b15_obuf = r_15;
endmodule
