`include "defs.v"

module creg11
(
	output creq,
	inout dout_0,
	inout dout_1,
	inout dout_2,
	inout dout_3,
	inout dout_4,
	inout dout_5,
	inout dout_6,
	inout dout_7,
	inout dout_8,
	inout dout_9,
	inout dout_10,
	input count_0,
	input count_1,
	input count_2,
	input count_3,
	input count_4,
	input count_5,
	input count_6,
	input count_7,
	input count_8,
	input count_9,
	input count_10,
	input din_0,
	input din_1,
	input din_2,
	input din_3,
	input din_4,
	input din_5,
	input din_6,
	input din_7,
	input din_8,
	input din_9,
	input din_10,
	input crwr
);
wire cr_0;
wire cr_1;
wire cr_2;
wire cr_3;
wire cr_4;
wire cr_5;
wire cr_6;
wire cr_7;
wire cr_8;
wire cr_9;
wire cr_10;
wire cre_0;
wire cre_1;
wire cre_2;
wire cre_3;
wire cre_4;
wire cre_5;
wire cre_6;
wire cre_7;
wire cre_8;
wire cre_9;
wire cre_10;

// Output buffers
wire creq_obuf;


// Output buffers
assign creq = creq_obuf;


// VID.NET (411) - cr[0-10] : ldp1q
ldp1q cr_from_0_to_10_inst_0
(
	.q(cr_0), // OUT
	.d(din_0), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_1
(
	.q(cr_1), // OUT
	.d(din_1), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_2
(
	.q(cr_2), // OUT
	.d(din_2), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_3
(
	.q(cr_3), // OUT
	.d(din_3), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_4
(
	.q(cr_4), // OUT
	.d(din_4), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_5
(
	.q(cr_5), // OUT
	.d(din_5), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_6
(
	.q(cr_6), // OUT
	.d(din_6), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_7
(
	.q(cr_7), // OUT
	.d(din_7), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_8
(
	.q(cr_8), // OUT
	.d(din_8), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_9
(
	.q(cr_9), // OUT
	.d(din_9), // IN
	.g(crwr)  // IN
);
ldp1q cr_from_0_to_10_inst_10
(
	.q(cr_10), // OUT
	.d(din_10), // IN
	.g(crwr)  // IN
);

// VID.NET (412) - cre[0-10] : en
assign cre_0 = ~(cr_0 ^ count_0);
assign cre_1 = ~(cr_1 ^ count_1);
assign cre_2 = ~(cr_2 ^ count_2);
assign cre_3 = ~(cr_3 ^ count_3);
assign cre_4 = ~(cr_4 ^ count_4);
assign cre_5 = ~(cr_5 ^ count_5);
assign cre_6 = ~(cr_6 ^ count_6);
assign cre_7 = ~(cr_7 ^ count_7);
assign cre_8 = ~(cr_8 ^ count_8);
assign cre_9 = ~(cr_9 ^ count_9);
assign cre_10 = ~(cr_10 ^ count_10);

// VID.NET (413) - creq : and11
and11 creq_inst
(
	.z(creq_obuf), // IO
	.a_0(cre_0), // IN
	.a_1(cre_1), // IN
	.a_2(cre_2), // IN
	.a_3(cre_3), // IN
	.a_4(cre_4), // IN
	.a_5(cre_5), // IN
	.a_6(cre_6), // IN
	.a_7(cre_7), // IN
	.a_8(cre_8), // IN
	.a_9(cre_9), // IN
	.a_10(cre_10)  // IN
);
endmodule
