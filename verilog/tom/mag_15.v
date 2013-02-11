`include "defs.v"

module mag_15
(
	output gt,
	output eq,
	output lt,
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
	input b_14
);
wire zeroa;
wire zerob;
wire one;
wire gt_0;
wire eq_0;
wire lt_0;
wire gt_1;
wire eq_1;
wire lt_1;
wire gt_2;
wire eq_2;
wire lt_2;

// DUPLO.NET (399) - zeroa : tie0
assign zeroa = 1'b0;

// DUPLO.NET (400) - zerob : tie0
assign zerob = 1'b0;

// DUPLO.NET (401) - one : tie1
assign one = 1'b1;

// DUPLO.NET (403) - mag0 : mag_4
mag_4 mag0_inst
(
	.gto(gt_0), // OUT
	.eqo(eq_0), // OUT
	.lto(lt_0), // OUT
	.gti(zeroa), // IN
	.eqi(one), // IN
	.lti(zerob), // IN
	.a_0(a_0), // IN
	.a_1(a_1), // IN
	.a_2(a_2), // IN
	.a_3(a_3), // IN
	.b_0(b_0), // IN
	.b_1(b_1), // IN
	.b_2(b_2), // IN
	.b_3(b_3)  // IN
);

// DUPLO.NET (405) - mag1 : mag_4
mag_4 mag1_inst
(
	.gto(gt_1), // OUT
	.eqo(eq_1), // OUT
	.lto(lt_1), // OUT
	.gti(a_4), // IN
	.eqi(zerob), // IN
	.lti(b_4), // IN
	.a_0(a_5), // IN
	.a_1(a_6), // IN
	.a_2(a_7), // IN
	.a_3(a_8), // IN
	.b_0(b_5), // IN
	.b_1(b_6), // IN
	.b_2(b_7), // IN
	.b_3(b_8)  // IN
);

// DUPLO.NET (407) - mag2 : mag_4
mag_4 mag2_inst
(
	.gto(gt_2), // OUT
	.eqo(eq_2), // OUT
	.lto(lt_2), // OUT
	.gti(a_9), // IN
	.eqi(zerob), // IN
	.lti(b_9), // IN
	.a_0(a_10), // IN
	.a_1(a_11), // IN
	.a_2(a_12), // IN
	.a_3(a_13), // IN
	.b_0(b_10), // IN
	.b_1(b_11), // IN
	.b_2(b_12), // IN
	.b_3(b_13)  // IN
);

// DUPLO.NET (409) - mag3 : mag_4
mag_4 mag3_inst
(
	.gto(gt), // OUT
	.eqo(eq), // OUT
	.lto(lt), // OUT
	.gti(gt_0), // IN
	.eqi(eq_0), // IN
	.lti(lt_0), // IN
	.a_0(gt_1), // IN
	.a_1(gt_2), // IN
	.a_2(a_14), // IN
	.a_3(zerob), // IN
	.b_0(lt_1), // IN
	.b_1(lt_2), // IN
	.b_2(b_14), // IN
	.b_3(zerob)  // IN
);

// DUPLO.NET (412) - dummy[1-2] : dummy
endmodule
