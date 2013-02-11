`include "defs.v"

module fa23
(
	output s_0,
	output s_1,
	output s_2,
	output s_3,
	output s_4,
	output s_5,
	output s_6,
	output s_7,
	output s_8,
	output s_9,
	output s_10,
	output s_11,
	output s_12,
	output s_13,
	output s_14,
	output s_15,
	output s_16,
	output s_17,
	output s_18,
	output s_19,
	output s_20,
	output s_21,
	output s_22,
	input a_0,
	input a_1,
	input a_2,
	input a_3,
	input a_4,
	input a_5,
	input a_6,
	input a_7,
	input a_8,
	input a_9,
	input a_10,
	input a_11,
	input a_12,
	input a_13,
	input a_14,
	input a_15,
	input a_16,
	input a_17,
	input a_18,
	input a_19,
	input a_20,
	input a_21,
	input a_22,
	input b_0,
	input b_1,
	input b_2,
	input b_3,
	input b_4,
	input b_5,
	input b_6,
	input b_7,
	input b_8,
	input b_9,
	input b_10,
	input b_11,
	input b_12,
	input b_13,
	input b_14,
	input b_15,
	input b_16,
	input b_17,
	input b_18,
	input b_19,
	input b_20,
	input b_21,
	input b_22
);
wire zero;
wire s_23;
wire s_24;
wire s_25;
wire s_26;
wire s_27;
wire s_28;
wire s_29;
wire s_30;
wire s_31;
wire unused_0;
wire unused_1;
wire unused_2;

// PREFETCH.NET (359) - zero : tie0
assign zero = 1'b0;

// PREFETCH.NET (360) - fa32 : fa32
fa32 fa32_inst
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
	.co32(unused_0), // OUT
	.co31(unused_1), // OUT
	.co24(unused_2), // OUT
	.ci(zero), // IN
	.a0(a_0), // IN
	.b0(b_0), // IN
	.a1(a_1), // IN
	.b1(b_1), // IN
	.a2(a_2), // IN
	.b2(b_2), // IN
	.a3(a_3), // IN
	.b3(b_3), // IN
	.a4(a_4), // IN
	.b4(b_4), // IN
	.a5(a_5), // IN
	.b5(b_5), // IN
	.a6(a_6), // IN
	.b6(b_6), // IN
	.a7(a_7), // IN
	.b7(b_7), // IN
	.a8(a_8), // IN
	.b8(b_8), // IN
	.a9(a_9), // IN
	.b9(b_9), // IN
	.a10(a_10), // IN
	.b10(b_10), // IN
	.a11(a_11), // IN
	.b11(b_11), // IN
	.a12(a_12), // IN
	.b12(b_12), // IN
	.a13(a_13), // IN
	.b13(b_13), // IN
	.a14(a_14), // IN
	.b14(b_14), // IN
	.a15(a_15), // IN
	.b15(b_15), // IN
	.a16(a_16), // IN
	.b16(b_16), // IN
	.a17(a_17), // IN
	.b17(b_17), // IN
	.a18(a_18), // IN
	.b18(b_18), // IN
	.a19(a_19), // IN
	.b19(b_19), // IN
	.a20(a_20), // IN
	.b20(b_20), // IN
	.a21(a_21), // IN
	.b21(b_21), // IN
	.a22(a_22), // IN
	.b22(b_22), // IN
	.a23(zero), // IN
	.b23(zero), // IN
	.a24(zero), // IN
	.b24(zero), // IN
	.a25(zero), // IN
	.b25(zero), // IN
	.a26(zero), // IN
	.b26(zero), // IN
	.a27(zero), // IN
	.b27(zero), // IN
	.a28(zero), // IN
	.b28(zero), // IN
	.a29(zero), // IN
	.b29(zero), // IN
	.a30(zero), // IN
	.b30(zero), // IN
	.a31(zero), // IN
	.b31(zero)  // IN
);

// PREFETCH.NET (369) - dummy[0-2] : dummy

// PREFETCH.NET (370) - dummy[23-31] : dummy
endmodule
