`include "defs.v"

module mcount
(
	output count1,
	input clk,
	input cnten,
	input cntld,
	input mwidth_0,
	input mwidth_1,
	input mwidth_2,
	input mwidth_3
);
wire cntt_0;
wire count_0;
wire cntt_1;
wire count_1;
wire cntc_1;
wire cntt_2;
wire count_2;
wire cntc_2;
wire cntt_3;
wire count_3;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire count_n_0;

// SYSTOLIC.NET (192) - cntt0 : iv
assign cntt_0 = ~count_0;

// SYSTOLIC.NET (193) - cntt1 : en
assign cntt_1 = ~(count_0 ^ count_1);

// SYSTOLIC.NET (194) - cntc1 : or2
assign cntc_1 = count_0 | count_1;

// SYSTOLIC.NET (195) - cntt2 : en
assign cntt_2 = ~(cntc_1 ^ count_2);

// SYSTOLIC.NET (196) - cntc2 : or2
assign cntc_2 = cntc_1 | count_2;

// SYSTOLIC.NET (197) - cntt3 : en
assign cntt_3 = ~(cntc_2 ^ count_3);

// SYSTOLIC.NET (199) - cnti[0-3] : mx4
mx4 cnti_from_0_to_3_inst_0
(
	.z(cnti_0), // OUT
	.a0(count_0), // IN
	.a1(cntt_0), // IN
	.a2(mwidth_0), // IN
	.a3(mwidth_0), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_3_inst_1
(
	.z(cnti_1), // OUT
	.a0(count_1), // IN
	.a1(cntt_1), // IN
	.a2(mwidth_1), // IN
	.a3(mwidth_1), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_3_inst_2
(
	.z(cnti_2), // OUT
	.a0(count_2), // IN
	.a1(cntt_2), // IN
	.a2(mwidth_2), // IN
	.a3(mwidth_2), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_0_to_3_inst_3
(
	.z(cnti_3), // OUT
	.a0(count_3), // IN
	.a1(cntt_3), // IN
	.a2(mwidth_3), // IN
	.a3(mwidth_3), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);

// SYSTOLIC.NET (202) - count[0-3] : fd1q
fd1q count_from_0_to_3_inst_0
(
	.q(count_0), // OUT
	.d(cnti_0), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_3_inst_1
(
	.q(count_1), // OUT
	.d(cnti_1), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_3_inst_2
(
	.q(count_2), // OUT
	.d(cnti_2), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_3_inst_3
(
	.q(count_3), // OUT
	.d(cnti_3), // IN
	.cp(clk)  // IN
);

// SYSTOLIC.NET (204) - count\[0] : iv
assign count_n_0 = ~count_0;

// SYSTOLIC.NET (205) - count2 : nr4
assign count1 = ~(count_n_0 | count_1 | count_2 | count_3);
endmodule
