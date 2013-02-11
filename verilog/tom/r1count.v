`include "defs.v"

module r1count
(
	output count_0,
	output count_1,
	output count_2,
	output count_3,
	output count_4,
	output count_5,
	input clk,
	input cnten,
	input cntld,
	input mr1_0,
	input mr1_1,
	input mr1_2,
	input mr1_3,
	input mr1_4
);
wire cntt_0;
wire cntt_1;
wire cntc_1;
wire cntt_2;
wire cntc_2;
wire cntt_3;
wire cntc_3;
wire cntt_4;
wire cntc_4;
wire cntt_5;
wire cnti_0;
wire cnti_1;
wire cnti_2;
wire cnti_3;
wire cnti_4;
wire cnti_5;

// Output buffers
wire count_0_obuf;
wire count_1_obuf;
wire count_2_obuf;
wire count_3_obuf;
wire count_4_obuf;
wire count_5_obuf;


// Output buffers
assign count_0 = count_0_obuf;
assign count_1 = count_1_obuf;
assign count_2 = count_2_obuf;
assign count_3 = count_3_obuf;
assign count_4 = count_4_obuf;
assign count_5 = count_5_obuf;


// SYSTOLIC.NET (222) - cntt0 : iv
assign cntt_0 = ~count_0_obuf;

// SYSTOLIC.NET (223) - cntt1 : ha1
ha1 cntt1_inst
(
	.s(cntt_1), // OUT
	.co(cntc_1), // OUT
	.a(count_1_obuf), // IN
	.b(count_0_obuf)  // IN
);

// SYSTOLIC.NET (224) - cntt2 : ha1
ha1 cntt2_inst
(
	.s(cntt_2), // OUT
	.co(cntc_2), // OUT
	.a(count_2_obuf), // IN
	.b(cntc_1)  // IN
);

// SYSTOLIC.NET (225) - cntt3 : ha1
ha1 cntt3_inst
(
	.s(cntt_3), // OUT
	.co(cntc_3), // OUT
	.a(count_3_obuf), // IN
	.b(cntc_2)  // IN
);

// SYSTOLIC.NET (226) - cntt4 : ha1
ha1 cntt4_inst
(
	.s(cntt_4), // OUT
	.co(cntc_4), // OUT
	.a(count_4_obuf), // IN
	.b(cntc_3)  // IN
);

// SYSTOLIC.NET (227) - cntt5 : eo
assign cntt_5 = count_5_obuf ^ cntc_4;

// SYSTOLIC.NET (229) - cnti[0] : mx2g
mx2g cnti_index_0_inst
(
	.z(cnti_0), // OUT
	.a0(count_0_obuf), // IN
	.a1(cntt_0), // IN
	.s(cnten), // IN
	.gn(cntld)  // IN
);

// SYSTOLIC.NET (230) - cnti[1-5] : mx4
mx4 cnti_from_1_to_5_inst_0
(
	.z(cnti_1), // OUT
	.a0(count_1_obuf), // IN
	.a1(cntt_1), // IN
	.a2(mr1_0), // IN
	.a3(mr1_0), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_1_to_5_inst_1
(
	.z(cnti_2), // OUT
	.a0(count_2_obuf), // IN
	.a1(cntt_2), // IN
	.a2(mr1_1), // IN
	.a3(mr1_1), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_1_to_5_inst_2
(
	.z(cnti_3), // OUT
	.a0(count_3_obuf), // IN
	.a1(cntt_3), // IN
	.a2(mr1_2), // IN
	.a3(mr1_2), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_1_to_5_inst_3
(
	.z(cnti_4), // OUT
	.a0(count_4_obuf), // IN
	.a1(cntt_4), // IN
	.a2(mr1_3), // IN
	.a3(mr1_3), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);
mx4 cnti_from_1_to_5_inst_4
(
	.z(cnti_5), // OUT
	.a0(count_5_obuf), // IN
	.a1(cntt_5), // IN
	.a2(mr1_4), // IN
	.a3(mr1_4), // IN
	.s0(cnten), // IN
	.s1(cntld)  // IN
);

// SYSTOLIC.NET (233) - count[0-5] : fd1q
fd1q count_from_0_to_5_inst_0
(
	.q(count_0_obuf), // OUT
	.d(cnti_0), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_5_inst_1
(
	.q(count_1_obuf), // OUT
	.d(cnti_1), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_5_inst_2
(
	.q(count_2_obuf), // OUT
	.d(cnti_2), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_5_inst_3
(
	.q(count_3_obuf), // OUT
	.d(cnti_3), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_5_inst_4
(
	.q(count_4_obuf), // OUT
	.d(cnti_4), // IN
	.cp(clk)  // IN
);
fd1q count_from_0_to_5_inst_5
(
	.q(count_5_obuf), // OUT
	.d(cnti_5), // IN
	.cp(clk)  // IN
);
endmodule
