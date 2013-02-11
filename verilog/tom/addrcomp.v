`include "defs.v"

module addrcomp
(
	output a1_outside,
	input[0:15] a1_x;
	input[0:15] a1_y;
	input[0:14] a1_win_x;
	input[0:14] a1_win_y
);
wire a1xgr;
wire a1xeq;
wire a1xlt;
wire a1ygr;
wire a1yeq;
wire a1ylt;

// ADDRCOMP.NET (26) - a1_xcomp : mag_15
mag_15 a1_xcomp_inst
(
	.gt(a1xgr), // OUT
	.eq(a1xeq), // OUT
	.lt(a1xlt), // OUT
	.a_0(a1_x[0]), // IN
	.a_1(a1_x[1]), // IN
	.a_2(a1_x[2]), // IN
	.a_3(a1_x[3]), // IN
	.a_4(a1_x[4]), // IN
	.a_5(a1_x[5]), // IN
	.a_6(a1_x[6]), // IN
	.a_7(a1_x[7]), // IN
	.a_8(a1_x[8]), // IN
	.a_9(a1_x[9]), // IN
	.a_10(a1_x[10]), // IN
	.a_11(a1_x[11]), // IN
	.a_12(a1_x[12]), // IN
	.a_13(a1_x[13]), // IN
	.a_14(a1_x[14]), // IN
	.b_0(a1_win_x[0]), // IN
	.b_1(a1_win_x[1]), // IN
	.b_2(a1_win_x[2]), // IN
	.b_3(a1_win_x[3]), // IN
	.b_4(a1_win_x[4]), // IN
	.b_5(a1_win_x[5]), // IN
	.b_6(a1_win_x[6]), // IN
	.b_7(a1_win_x[7]), // IN
	.b_8(a1_win_x[8]), // IN
	.b_9(a1_win_x[9]), // IN
	.b_10(a1_win_x[10]), // IN
	.b_11(a1_win_x[11]), // IN
	.b_12(a1_win_x[12]), // IN
	.b_13(a1_win_x[13]), // IN
	.b_14(a1_win_x[14])  // IN
);

// ADDRCOMP.NET (28) - a1_ycomp : mag_15
mag_15 a1_ycomp_inst
(
	.gt(a1ygr), // OUT
	.eq(a1yeq), // OUT
	.lt(a1ylt), // OUT
	.a_0(a1_y[0]), // IN
	.a_1(a1_y[1]), // IN
	.a_2(a1_y[2]), // IN
	.a_3(a1_y[3]), // IN
	.a_4(a1_y[4]), // IN
	.a_5(a1_y[5]), // IN
	.a_6(a1_y[6]), // IN
	.a_7(a1_y[7]), // IN
	.a_8(a1_y[8]), // IN
	.a_9(a1_y[9]), // IN
	.a_10(a1_y[10]), // IN
	.a_11(a1_y[11]), // IN
	.a_12(a1_y[12]), // IN
	.a_13(a1_y[13]), // IN
	.a_14(a1_y[14]), // IN
	.b_0(a1_win_y[0]), // IN
	.b_1(a1_win_y[1]), // IN
	.b_2(a1_win_y[2]), // IN
	.b_3(a1_win_y[3]), // IN
	.b_4(a1_win_y[4]), // IN
	.b_5(a1_win_y[5]), // IN
	.b_6(a1_win_y[6]), // IN
	.b_7(a1_win_y[7]), // IN
	.b_8(a1_win_y[8]), // IN
	.b_9(a1_win_y[9]), // IN
	.b_10(a1_win_y[10]), // IN
	.b_11(a1_win_y[11]), // IN
	.b_12(a1_win_y[12]), // IN
	.b_13(a1_win_y[13]), // IN
	.b_14(a1_win_y[14])  // IN
);

// ADDRCOMP.NET (30) - a1_outside : or6
assign a1_outside = a1_x[15] | a1xgr | a1xeq | a1_y[15] | a1ygr | a1yeq;

// ADDRCOMP.NET (33) - unused0 : dummy

// ADDRCOMP.NET (34) - unused1 : dummy
endmodule
