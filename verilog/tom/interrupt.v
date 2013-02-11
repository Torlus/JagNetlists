`include "defs.v"

module interrupt
(
	inout gpu_dout_3,
	inout gpu_dout_4,
	inout gpu_dout_5,
	inout gpu_dout_6,
	inout gpu_dout_7,
	inout gpu_dout_8,
	inout gpu_dout_9,
	inout gpu_dout_10,
	inout gpu_dout_11,
	inout gpu_dout_12,
	inout gpu_dout_13,
	output imaski,
	output[0:15] intins;
	output intser,
	input atomic,
	input clk,
	input[0:31] gpu_din;
	input flagrd,
	input flagwr,
	input gpu_irq_0,
	input gpu_irq_1,
	input gpu_irq_2,
	input gpu_irq_3,
	input gpu_irq_4,
	input reset_n,
	input romold,
	input statrd
);
wire [0:2] int;
wire [0:15] ins_0;
wire [0:15] ins_1;
wire [0:15] ins_2;
wire [0:15] ins_3;
wire [0:15] ins_4;
wire [0:15] ins_5;
wire [0:15] ins_6;
wire [0:15] ins_7;
wire zero;
wire atomic_n;
wire int_ena_0;
wire int_ena_1;
wire int_ena_2;
wire int_ena_3;
wire int_ena_4;
wire ilclr_n_0;
wire ilclr_n_1;
wire ilclr_n_2;
wire ilclr_n_3;
wire ilclr_n_4;
wire ilt_0;
wire ilt_1;
wire ilt_2;
wire ilt_3;
wire ilt_4;
wire ilatch_0;
wire ilatch_1;
wire ilatch_2;
wire ilatch_3;
wire ilatch_4;
wire irqm_n_0;
wire irqm_n_1;
wire irqm_n_2;
wire irqm_n_3;
wire irqm_n_4;
wire ils_0;
wire ils_1;
wire ils_2;
wire ils_3;
wire ils_4;
wire irq;
wire ilatch_n_1;
wire int0t0;
wire int0t1;
wire int_0;
wire int1t;
wire int_1;
wire isrset;
wire intser_n;
wire imask_n;
wire isrclr;
wire jumped;
wire intsert;
wire isrt0;
wire isrt1;
wire imset_n;
wire gpu_din_n_3;
wire imclr_n;
wire imt_0;
wire imask;
wire cnten;
wire icount_0;
wire icount_1;
wire icount_2;
wire i;
wire o;

// Output buffers
wire imaski_obuf;
wire intser_obuf;


// Output buffers
assign imaski = imaski_obuf;
assign intser = intser_obuf;


// INTER-UA.NET (41) - zero : tie0
assign zero = 1'b0;

// INTER-UA.NET (43) - atomic\ : iv
assign atomic_n = ~atomic;

// INTER-UA.NET (51) - int_ena[0-4] : fdsyncr
fdsyncr int_ena_from_0_to_4_inst_0
(
	.q(int_ena_0), // IO
	.d(gpu_din[4]), // IN
	.ld(flagwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);
fdsyncr int_ena_from_0_to_4_inst_1
(
	.q(int_ena_1), // IO
	.d(gpu_din[5]), // IN
	.ld(flagwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);
fdsyncr int_ena_from_0_to_4_inst_2
(
	.q(int_ena_2), // IO
	.d(gpu_din[6]), // IN
	.ld(flagwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);
fdsyncr int_ena_from_0_to_4_inst_3
(
	.q(int_ena_3), // IO
	.d(gpu_din[7]), // IN
	.ld(flagwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);
fdsyncr int_ena_from_0_to_4_inst_4
(
	.q(int_ena_4), // IO
	.d(gpu_din[8]), // IN
	.ld(flagwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// INTER-UA.NET (58) - ilclr\[0-4] : nd2
assign ilclr_n_0 = ~(gpu_din[9] & flagwr);
assign ilclr_n_1 = ~(gpu_din[10] & flagwr);
assign ilclr_n_2 = ~(gpu_din[11] & flagwr);
assign ilclr_n_3 = ~(gpu_din[12] & flagwr);
assign ilclr_n_4 = ~(gpu_din[13] & flagwr);

// INTER-UA.NET (59) - ilt[0-4] : nd2
assign ilt_0 = ~(ilatch_0 & ilclr_n_0);
assign ilt_1 = ~(ilatch_1 & ilclr_n_1);
assign ilt_2 = ~(ilatch_2 & ilclr_n_2);
assign ilt_3 = ~(ilatch_3 & ilclr_n_3);
assign ilt_4 = ~(ilatch_4 & ilclr_n_4);

// INTER-UA.NET (60) - gpu_irqm[0-4] : nd2
assign irqm_n_0 = ~(gpu_irq_0 & int_ena_0);
assign irqm_n_1 = ~(gpu_irq_1 & int_ena_1);
assign irqm_n_2 = ~(gpu_irq_2 & int_ena_2);
assign irqm_n_3 = ~(gpu_irq_3 & int_ena_3);
assign irqm_n_4 = ~(gpu_irq_4 & int_ena_4);

// INTER-UA.NET (61) - ils[0-4] : nd2
assign ils_0 = ~(irqm_n_0 & ilt_0);
assign ils_1 = ~(irqm_n_1 & ilt_1);
assign ils_2 = ~(irqm_n_2 & ilt_2);
assign ils_3 = ~(irqm_n_3 & ilt_3);
assign ils_4 = ~(irqm_n_4 & ilt_4);

// INTER-UA.NET (62) - ilatch[0-4] : fd2q
fd2q ilatch_from_0_to_4_inst_0
(
	.q(ilatch_0), // OUT
	.d(ils_0), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ilatch_from_0_to_4_inst_1
(
	.q(ilatch_1), // OUT
	.d(ils_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ilatch_from_0_to_4_inst_2
(
	.q(ilatch_2), // OUT
	.d(ils_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ilatch_from_0_to_4_inst_3
(
	.q(ilatch_3), // OUT
	.d(ils_3), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ilatch_from_0_to_4_inst_4
(
	.q(ilatch_4), // OUT
	.d(ils_4), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (66) - flagrd[4-8] : ts
assign gpu_dout_4 = (flagrd) ? int_ena_0 : 1'bz;
assign gpu_dout_5 = (flagrd) ? int_ena_1 : 1'bz;
assign gpu_dout_6 = (flagrd) ? int_ena_2 : 1'bz;
assign gpu_dout_7 = (flagrd) ? int_ena_3 : 1'bz;
assign gpu_dout_8 = (flagrd) ? int_ena_4 : 1'bz;

// INTER-UA.NET (67) - flagrd[9-13] : ts
assign gpu_dout_9 = (flagrd) ? zero : 1'bz;
assign gpu_dout_10 = (flagrd) ? zero : 1'bz;
assign gpu_dout_11 = (flagrd) ? zero : 1'bz;
assign gpu_dout_12 = (flagrd) ? zero : 1'bz;
assign gpu_dout_13 = (flagrd) ? zero : 1'bz;

// INTER-UA.NET (68) - statrd[6-10] : ts
assign gpu_dout_6 = (statrd) ? ilatch_0 : 1'bz;
assign gpu_dout_7 = (statrd) ? ilatch_1 : 1'bz;
assign gpu_dout_8 = (statrd) ? ilatch_2 : 1'bz;
assign gpu_dout_9 = (statrd) ? ilatch_3 : 1'bz;
assign gpu_dout_10 = (statrd) ? ilatch_4 : 1'bz;

// INTER-UA.NET (72) - irq : or5
or5 irq_inst
(
	.z(irq), // IO
	.a(ilatch_0), // IN
	.b(ilatch_1), // IN
	.c(ilatch_2), // IN
	.d(ilatch_3), // IN
	.e(ilatch_4)  // IN
);

// INTER-UA.NET (82) - ilatch\[1] : iv
assign ilatch_n_1 = ~ilatch_1;

// INTER-UA.NET (83) - int0t0 : nr2
assign int0t0 = ~(ilatch_n_1 | ilatch_2);

// INTER-UA.NET (84) - int0t1 : nr2
assign int0t1 = ~(ilatch_3 | int0t0);

// INTER-UA.NET (85) - int[0] : nr2
assign int_0 = ~(ilatch_4 | int0t1);

// INTER-UA.NET (86) - int1t : nr2
assign int1t = ~(ilatch_2 | ilatch_3);

// INTER-UA.NET (87) - int[1] : nr2
assign int_1 = ~(ilatch_4 | int1t);

// INTER-UA.NET (88) - int : join
assign int[0] = int_0;
assign int[1] = int_1;
assign int[2] = ilatch_4;

// INTER-UA.NET (97) - isrset : an4
assign isrset = irq & intser_n & imask_n & atomic_n;

// INTER-UA.NET (98) - isrclr : an2
assign isrclr = jumped & intsert;

// INTER-UA.NET (99) - isrt0 : nr2
assign isrt0 = ~(isrset | intsert);

// INTER-UA.NET (100) - isrt1 : nr2
assign isrt1 = ~(isrt0 | isrclr);

// INTER-UA.NET (101) - intsert : fd2
fd2 intsert_inst
(
	.q(intsert), // OUT
	.qn(intser_n), // OUT
	.d(isrt1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (102) - intser : nivh
assign intser_obuf = intsert;

// INTER-UA.NET (109) - imset : nd2
assign imset_n = ~(romold & intser_obuf);

// INTER-UA.NET (110) - gpu_data\[3] : iv
assign gpu_din_n_3 = ~gpu_din[3];

// INTER-UA.NET (111) - imclr : nd2
assign imclr_n = ~(flagwr & gpu_din_n_3);

// INTER-UA.NET (112) - imt0 : nd2
assign imt_0 = ~(imask & imclr_n);

// INTER-UA.NET (113) - imt1 : nd2
assign imaski_obuf = ~(imset_n & imt_0);

// INTER-UA.NET (114) - imask : fd2q
fd2q imask_inst
(
	.q(imask), // OUT
	.d(imaski_obuf), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// INTER-UA.NET (115) - imask\ : iv
assign imask_n = ~imask;

// INTER-UA.NET (116) - flagrd[3] : ts
assign gpu_dout_3 = (flagrd) ? imask : 1'bz;

// INTER-UA.NET (122) - cnten : an2
assign cnten = romold & intser_obuf;

// INTER-UA.NET (123) - cnter : cnte3
cnte3 cnter_inst
(
	.count_0(icount_0), // IO
	.count_1(icount_1), // IO
	.count_2(icount_2), // IO
	.cnten(cnten), // IN
	.clk(clk), // IN
	.reset_n(reset_n)  // IN
);

// INTER-UA.NET (125) - jumped : an4
assign jumped = romold & icount_0 & icount_1 & icount_2;

// INTER-UA.NET (142) - high : tie1
assign i = 1'b1;

// INTER-UA.NET (143) - low : tie0
assign o = 1'b0;

// INTER-UA.NET (144) - ins0 : join
assign ins_0[0] = i;
assign ins_0[1] = i;
assign ins_0[2] = i;
assign ins_0[3] = i;
assign ins_0[4] = i;
assign ins_0[5] = o;
assign ins_0[6] = o;
assign ins_0[7] = i;
assign ins_0[8] = o;
assign ins_0[9] = o;
assign ins_0[10] = i;
assign ins_0[11] = i;
assign ins_0[12] = i;
assign ins_0[13] = o;
assign ins_0[14] = o;
assign ins_0[15] = o;

// INTER-UA.NET (145) - ins1 : join
assign ins_1[0] = o;
assign ins_1[1] = i;
assign ins_1[2] = i;
assign ins_1[3] = i;
assign ins_1[4] = i;
assign ins_1[5] = o;
assign ins_1[6] = o;
assign ins_1[7] = o;
assign ins_1[8] = o;
assign ins_1[9] = o;
assign ins_1[10] = i;
assign ins_1[11] = i;
assign ins_1[12] = o;
assign ins_1[13] = o;
assign ins_1[14] = i;
assign ins_1[15] = i;

// INTER-UA.NET (146) - ins2 : join
assign ins_2[0] = o;
assign ins_2[1] = i;
assign ins_2[2] = i;
assign ins_2[3] = i;
assign ins_2[4] = i;
assign ins_2[5] = i;
assign ins_2[6] = i;
assign ins_2[7] = i;
assign ins_2[8] = i;
assign ins_2[9] = i;
assign ins_2[10] = i;
assign ins_2[11] = i;
assign ins_2[12] = i;
assign ins_2[13] = i;
assign ins_2[14] = o;
assign ins_2[15] = i;

// INTER-UA.NET (147) - ins3 : join
assign ins_3[0] = o;
assign ins_3[1] = i;
assign ins_3[2] = i;
assign ins_3[3] = i;
assign ins_3[4] = i;
assign ins_3[5] = o;
assign ins_3[6] = o;
assign ins_3[7] = o;
assign ins_3[8] = o;
assign ins_3[9] = o;
assign ins_3[10] = o;
assign ins_3[11] = i;
assign ins_3[12] = i;
assign ins_3[13] = o;
assign ins_3[14] = o;
assign ins_3[15] = i;

// INTER-UA.NET (148) - ins4 : join
assign ins_4[0] = o;
assign ins_4[1] = o;
assign ins_4[2] = o;
assign ins_4[3] = o;
assign ins_4[4] = int[0];
assign ins_4[5] = int[1];
assign ins_4[6] = int[2];
assign ins_4[7] = o;
assign ins_4[8] = o;
assign ins_4[9] = o;
assign ins_4[10] = o;
assign ins_4[11] = o;
assign ins_4[12] = i;
assign ins_4[13] = i;
assign ins_4[14] = o;
assign ins_4[15] = o;

// INTER-UA.NET (149) - ins5 : join
assign ins_5[0] = o;
assign ins_5[1] = o;
assign ins_5[2] = o;
assign ins_5[3] = o;
assign ins_5[4] = i;
assign ins_5[5] = i;
assign ins_5[6] = i;
assign ins_5[7] = i;
assign ins_5[8] = o;
assign ins_5[9] = o;
assign ins_5[10] = o;
assign ins_5[11] = o;
assign ins_5[12] = o;
assign ins_5[13] = o;
assign ins_5[14] = o;
assign ins_5[15] = o;

// INTER-UA.NET (150) - ins6 : join
assign ins_6[0] = o;
assign ins_6[1] = o;
assign ins_6[2] = o;
assign ins_6[3] = o;
assign ins_6[4] = o;
assign ins_6[5] = o;
assign ins_6[6] = i;
assign ins_6[7] = i;
assign ins_6[8] = i;
assign ins_6[9] = i;
assign ins_6[10] = o;
assign ins_6[11] = o;
assign ins_6[12] = i;
assign ins_6[13] = o;
assign ins_6[14] = i;
assign ins_6[15] = i;

// INTER-UA.NET (151) - ins7 : join
assign ins_7[0] = o;
assign ins_7[1] = o;
assign ins_7[2] = o;
assign ins_7[3] = o;
assign ins_7[4] = o;
assign ins_7[5] = o;
assign ins_7[6] = o;
assign ins_7[7] = o;
assign ins_7[8] = o;
assign ins_7[9] = o;
assign ins_7[10] = i;
assign ins_7[11] = o;
assign ins_7[12] = o;
assign ins_7[13] = i;
assign ins_7[14] = i;
assign ins_7[15] = i;

// INTER-UA.NET (153) - inssel : mx8p
mx8 inssel_inst_0
(
	.z(intins[0]), // OUT
	.a0(ins_0[0]), // IN
	.a1(ins_1[0]), // IN
	.a2(ins_2[0]), // IN
	.a3(ins_3[0]), // IN
	.a4(ins_4[0]), // IN
	.a5(ins_5[0]), // IN
	.a6(ins_6[0]), // IN
	.a7(ins_7[0]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_1
(
	.z(intins[1]), // OUT
	.a0(ins_0[1]), // IN
	.a1(ins_1[1]), // IN
	.a2(ins_2[1]), // IN
	.a3(ins_3[1]), // IN
	.a4(ins_4[1]), // IN
	.a5(ins_5[1]), // IN
	.a6(ins_6[1]), // IN
	.a7(ins_7[1]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_2
(
	.z(intins[2]), // OUT
	.a0(ins_0[2]), // IN
	.a1(ins_1[2]), // IN
	.a2(ins_2[2]), // IN
	.a3(ins_3[2]), // IN
	.a4(ins_4[2]), // IN
	.a5(ins_5[2]), // IN
	.a6(ins_6[2]), // IN
	.a7(ins_7[2]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_3
(
	.z(intins[3]), // OUT
	.a0(ins_0[3]), // IN
	.a1(ins_1[3]), // IN
	.a2(ins_2[3]), // IN
	.a3(ins_3[3]), // IN
	.a4(ins_4[3]), // IN
	.a5(ins_5[3]), // IN
	.a6(ins_6[3]), // IN
	.a7(ins_7[3]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_4
(
	.z(intins[4]), // OUT
	.a0(ins_0[4]), // IN
	.a1(ins_1[4]), // IN
	.a2(ins_2[4]), // IN
	.a3(ins_3[4]), // IN
	.a4(ins_4[4]), // IN
	.a5(ins_5[4]), // IN
	.a6(ins_6[4]), // IN
	.a7(ins_7[4]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_5
(
	.z(intins[5]), // OUT
	.a0(ins_0[5]), // IN
	.a1(ins_1[5]), // IN
	.a2(ins_2[5]), // IN
	.a3(ins_3[5]), // IN
	.a4(ins_4[5]), // IN
	.a5(ins_5[5]), // IN
	.a6(ins_6[5]), // IN
	.a7(ins_7[5]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_6
(
	.z(intins[6]), // OUT
	.a0(ins_0[6]), // IN
	.a1(ins_1[6]), // IN
	.a2(ins_2[6]), // IN
	.a3(ins_3[6]), // IN
	.a4(ins_4[6]), // IN
	.a5(ins_5[6]), // IN
	.a6(ins_6[6]), // IN
	.a7(ins_7[6]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_7
(
	.z(intins[7]), // OUT
	.a0(ins_0[7]), // IN
	.a1(ins_1[7]), // IN
	.a2(ins_2[7]), // IN
	.a3(ins_3[7]), // IN
	.a4(ins_4[7]), // IN
	.a5(ins_5[7]), // IN
	.a6(ins_6[7]), // IN
	.a7(ins_7[7]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_8
(
	.z(intins[8]), // OUT
	.a0(ins_0[8]), // IN
	.a1(ins_1[8]), // IN
	.a2(ins_2[8]), // IN
	.a3(ins_3[8]), // IN
	.a4(ins_4[8]), // IN
	.a5(ins_5[8]), // IN
	.a6(ins_6[8]), // IN
	.a7(ins_7[8]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_9
(
	.z(intins[9]), // OUT
	.a0(ins_0[9]), // IN
	.a1(ins_1[9]), // IN
	.a2(ins_2[9]), // IN
	.a3(ins_3[9]), // IN
	.a4(ins_4[9]), // IN
	.a5(ins_5[9]), // IN
	.a6(ins_6[9]), // IN
	.a7(ins_7[9]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_10
(
	.z(intins[10]), // OUT
	.a0(ins_0[10]), // IN
	.a1(ins_1[10]), // IN
	.a2(ins_2[10]), // IN
	.a3(ins_3[10]), // IN
	.a4(ins_4[10]), // IN
	.a5(ins_5[10]), // IN
	.a6(ins_6[10]), // IN
	.a7(ins_7[10]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_11
(
	.z(intins[11]), // OUT
	.a0(ins_0[11]), // IN
	.a1(ins_1[11]), // IN
	.a2(ins_2[11]), // IN
	.a3(ins_3[11]), // IN
	.a4(ins_4[11]), // IN
	.a5(ins_5[11]), // IN
	.a6(ins_6[11]), // IN
	.a7(ins_7[11]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_12
(
	.z(intins[12]), // OUT
	.a0(ins_0[12]), // IN
	.a1(ins_1[12]), // IN
	.a2(ins_2[12]), // IN
	.a3(ins_3[12]), // IN
	.a4(ins_4[12]), // IN
	.a5(ins_5[12]), // IN
	.a6(ins_6[12]), // IN
	.a7(ins_7[12]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_13
(
	.z(intins[13]), // OUT
	.a0(ins_0[13]), // IN
	.a1(ins_1[13]), // IN
	.a2(ins_2[13]), // IN
	.a3(ins_3[13]), // IN
	.a4(ins_4[13]), // IN
	.a5(ins_5[13]), // IN
	.a6(ins_6[13]), // IN
	.a7(ins_7[13]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_14
(
	.z(intins[14]), // OUT
	.a0(ins_0[14]), // IN
	.a1(ins_1[14]), // IN
	.a2(ins_2[14]), // IN
	.a3(ins_3[14]), // IN
	.a4(ins_4[14]), // IN
	.a5(ins_5[14]), // IN
	.a6(ins_6[14]), // IN
	.a7(ins_7[14]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
mx8 inssel_inst_15
(
	.z(intins[15]), // OUT
	.a0(ins_0[15]), // IN
	.a1(ins_1[15]), // IN
	.a2(ins_2[15]), // IN
	.a3(ins_3[15]), // IN
	.a4(ins_4[15]), // IN
	.a5(ins_5[15]), // IN
	.a6(ins_6[15]), // IN
	.a7(ins_7[15]), // IN
	.s0(icount_0), // IN
	.s1(icount_1), // IN
	.s2(icount_2)  // IN
);
endmodule
