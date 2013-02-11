`include "defs.v"

module cnte3
(
	output count_0,
	output count_1,
	output count_2,
	input cnten,
	input clk,
	input reset_n
);
wire sum_1;
wire carry_1;
wire sum_2;
wire cnti_0;
wire count_n_0;
wire cnti_1;
wire cnti_2;
wire countt_0;
wire countt_1;
wire countt_2;

// Output buffers
wire count_0_obuf;
wire count_1_obuf;
wire count_2_obuf;


// Output buffers
assign count_0 = count_0_obuf;
assign count_1 = count_1_obuf;
assign count_2 = count_2_obuf;


// INTER-UA.NET (161) - add1 : ha1
ha1 add1_inst
(
	.s(sum_1), // OUT
	.co(carry_1), // OUT
	.a(count_1_obuf), // IN
	.b(count_0_obuf)  // IN
);

// INTER-UA.NET (162) - add2 : eo
assign sum_2 = count_2_obuf ^ carry_1;

// INTER-UA.NET (163) - cnti0 : mx2
mx2 cnti0_inst
(
	.z(cnti_0), // OUT
	.a0(count_0_obuf), // IN
	.a1(count_n_0), // IN
	.s(cnten)  // IN
);

// INTER-UA.NET (164) - cnti1 : mx2
mx2 cnti1_inst
(
	.z(cnti_1), // OUT
	.a0(count_1_obuf), // IN
	.a1(sum_1), // IN
	.s(cnten)  // IN
);

// INTER-UA.NET (165) - cnti2 : mx2
mx2 cnti2_inst
(
	.z(cnti_2), // OUT
	.a0(count_2_obuf), // IN
	.a1(sum_2), // IN
	.s(cnten)  // IN
);

// INTER-UA.NET (166) - count0 : fd2p
fd2 count0_inst
(
	.q(countt_0), // OUT
	.qn(count_n_0), // OUT
	.d(cnti_0), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (167) - count1 : fd2qp
fd2q count1_inst
(
	.q(countt_1), // OUT
	.d(cnti_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (168) - count2 : fd2qp
fd2q count2_inst
(
	.q(countt_2), // OUT
	.d(cnti_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (169) - icount[0-2] : nivu
assign count_0_obuf = countt_0;
assign count_1_obuf = countt_1;
assign count_2_obuf = countt_2;
endmodule
