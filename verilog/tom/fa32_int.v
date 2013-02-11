`include "defs.v"

module fa32_int
(
	output[0:31] s;
	output co32,
	output co31,
	output co24,
	input c,
	input[0:31] a;
	input[0:31] b
);
wire s_0;
wire s_1;
wire s_2;
wire s_3;
wire s_4;
wire s_5;
wire s_6;
wire s_7;
wire s_8;
wire s_9;
wire s_10;
wire s_11;
wire s_12;
wire s_13;
wire s_14;
wire s_15;
wire s_16;
wire s_17;
wire s_18;
wire s_19;
wire s_20;
wire s_21;
wire s_22;
wire s_23;
wire s_24;
wire s_25;
wire s_26;
wire s_27;
wire s_28;
wire s_29;
wire s_30;
wire s_31;

// DUPLO.NET (850) - adder32 : fa32
fa32 adder32_inst
(
	.s0(s_0), // OUT
	.s1(s_1), // OUT
	.s2(s_2), // OUT
	.s3(s_3), // OUT
	.s4(s_4), // OUT
	.s5(s_5), // OUT
	.s6(s_6), // OUT
	.s7(s_7), // OUT
	.s8(s_8), // OUT
	.s9(s_9), // OUT
	.s10(s_10), // OUT
	.s11(s_11), // OUT
	.s12(s_12), // OUT
	.s13(s_13), // OUT
	.s14(s_14), // OUT
	.s15(s_15), // OUT
	.s16(s_16), // OUT
	.s17(s_17), // OUT
	.s18(s_18), // OUT
	.s19(s_19), // OUT
	.s20(s_20), // OUT
	.s21(s_21), // OUT
	.s22(s_22), // OUT
	.s23(s_23), // OUT
	.s24(s_24), // OUT
	.s25(s_25), // OUT
	.s26(s_26), // OUT
	.s27(s_27), // OUT
	.s28(s_28), // OUT
	.s29(s_29), // OUT
	.s30(s_30), // OUT
	.s31(s_31), // OUT
	.co32(co32), // OUT
	.co31(co31), // OUT
	.co24(co24), // OUT
	.ci(c), // IN
	.a0(a[0]), // IN
	.b0(b[0]), // IN
	.a1(a[1]), // IN
	.b1(b[1]), // IN
	.a2(a[2]), // IN
	.b2(b[2]), // IN
	.a3(a[3]), // IN
	.b3(b[3]), // IN
	.a4(a[4]), // IN
	.b4(b[4]), // IN
	.a5(a[5]), // IN
	.b5(b[5]), // IN
	.a6(a[6]), // IN
	.b6(b[6]), // IN
	.a7(a[7]), // IN
	.b7(b[7]), // IN
	.a8(a[8]), // IN
	.b8(b[8]), // IN
	.a9(a[9]), // IN
	.b9(b[9]), // IN
	.a10(a[10]), // IN
	.b10(b[10]), // IN
	.a11(a[11]), // IN
	.b11(b[11]), // IN
	.a12(a[12]), // IN
	.b12(b[12]), // IN
	.a13(a[13]), // IN
	.b13(b[13]), // IN
	.a14(a[14]), // IN
	.b14(b[14]), // IN
	.a15(a[15]), // IN
	.b15(b[15]), // IN
	.a16(a[16]), // IN
	.b16(b[16]), // IN
	.a17(a[17]), // IN
	.b17(b[17]), // IN
	.a18(a[18]), // IN
	.b18(b[18]), // IN
	.a19(a[19]), // IN
	.b19(b[19]), // IN
	.a20(a[20]), // IN
	.b20(b[20]), // IN
	.a21(a[21]), // IN
	.b21(b[21]), // IN
	.a22(a[22]), // IN
	.b22(b[22]), // IN
	.a23(a[23]), // IN
	.b23(b[23]), // IN
	.a24(a[24]), // IN
	.b24(b[24]), // IN
	.a25(a[25]), // IN
	.b25(b[25]), // IN
	.a26(a[26]), // IN
	.b26(b[26]), // IN
	.a27(a[27]), // IN
	.b27(b[27]), // IN
	.a28(a[28]), // IN
	.b28(b[28]), // IN
	.a29(a[29]), // IN
	.b29(b[29]), // IN
	.a30(a[30]), // IN
	.b30(b[30]), // IN
	.a31(a[31]), // IN
	.b31(b[31])  // IN
);

// DUPLO.NET (859) - s : join
assign s[0] = s_0;
assign s[1] = s_1;
assign s[2] = s_2;
assign s[3] = s_3;
assign s[4] = s_4;
assign s[5] = s_5;
assign s[6] = s_6;
assign s[7] = s_7;
assign s[8] = s_8;
assign s[9] = s_9;
assign s[10] = s_10;
assign s[11] = s_11;
assign s[12] = s_12;
assign s[13] = s_13;
assign s[14] = s_14;
assign s[15] = s_15;
assign s[16] = s_16;
assign s[17] = s_17;
assign s[18] = s_18;
assign s[19] = s_19;
assign s[20] = s_20;
assign s[21] = s_21;
assign s[22] = s_22;
assign s[23] = s_23;
assign s[24] = s_24;
assign s[25] = s_25;
assign s[26] = s_26;
assign s[27] = s_27;
assign s[28] = s_28;
assign s[29] = s_29;
assign s[30] = s_30;
assign s[31] = s_31;
endmodule
