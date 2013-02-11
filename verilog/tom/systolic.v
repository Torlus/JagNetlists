`include "defs.v"

module systolic
(
	output mtx_atomic,
	output mtx_dover,
	output mtx_wait,
	output mtxaddr_2,
	output mtxaddr_3,
	output mtxaddr_4,
	output mtxaddr_5,
	output mtxaddr_6,
	output mtxaddr_7,
	output mtxaddr_8,
	output mtxaddr_9,
	output mtxaddr_10,
	output mtxaddr_11,
	output mtx_mreq,
	output multsel,
	output[0:15] sysins;
	output sysser,
	input movei_data,
	input clk,
	input datack,
	input[0:31] gpu_din;
	input[0:15] instruction;
	input mtxawr,
	input mtxcwr,
	input reset_n,
	input romold
);
wire movei_data_n;
wire datack_n;
wire romold_n;
wire zero;
wire mmultt;
wire mmult_n;
wire mmult;
wire mtx_active;
wire mwidth_0;
wire mwidth_1;
wire mwidth_2;
wire mwidth_3;
wire maddw;
wire macnten;
wire idlet_0;
wire idle;
wire idlet_1;
wire resmac;
wire idlet_2;
wire imultnt_0;
wire imultnt_1;
wire imultn;
wire imultnt_2;
wire imacnt_0;
wire imacnt_1;
wire imacn;
wire count1_n;
wire imacnt_2;
wire imacnt_3;
wire resmact_0;
wire count1;
wire resmact_1;
wire resmact_2;
wire mcnten;
wire reghalf;
wire sysr1_0;
wire sysr1_1;
wire sysr1_2;
wire sysr1_3;
wire sysr1_4;
wire sysr2_0;
wire sysr2_1;
wire sysr2_2;
wire sysr2_3;
wire sysr2_4;
wire bit11;
wire oneb;
wire zerob;
wire zeroc;
wire mtx_mreqt;
wire multselt;

// Output buffers
wire mtx_dover_obuf;
wire mtx_mreq_obuf;


// Output buffers
assign mtx_dover = mtx_dover_obuf;
assign mtx_mreq = mtx_mreq_obuf;


// SYSTOLIC.NET (46) - atomic\ : iv
assign movei_data_n = ~movei_data;

// SYSTOLIC.NET (47) - datack\ : iv
assign datack_n = ~datack;

// SYSTOLIC.NET (48) - romold\ : iv
assign romold_n = ~romold;

// SYSTOLIC.NET (50) - zero : tie0
assign zero = 1'b0;

// SYSTOLIC.NET (54) - mmultt : nr2
assign mmultt = ~(instruction[10] | instruction[13]);

// SYSTOLIC.NET (55) - mmult\ : nd7
nd7 mmult_n_inst
(
	.q(mmult_n), // OUT
	.a_0(mmultt), // IN
	.a_1(movei_data_n), // IN
	.a_2(romold), // IN
	.a_3(instruction[11]), // IN
	.a_4(instruction[12]), // IN
	.a_5(instruction[14]), // IN
	.a_6(instruction[15])  // IN
);

// SYSTOLIC.NET (57) - mmult : ivh
assign mmult = ~mmult_n;

// SYSTOLIC.NET (63) - mtx_atomic : or2
assign mtx_atomic = mtx_active | mmult;

// SYSTOLIC.NET (67) - mwidth[0-3] : fdsync
fdsync mwidth_from_0_to_3_inst_0
(
	.q(mwidth_0), // IO
	.d(gpu_din[0]), // IN
	.ld(mtxcwr), // IN
	.clk(clk)  // IN
);
fdsync mwidth_from_0_to_3_inst_1
(
	.q(mwidth_1), // IO
	.d(gpu_din[1]), // IN
	.ld(mtxcwr), // IN
	.clk(clk)  // IN
);
fdsync mwidth_from_0_to_3_inst_2
(
	.q(mwidth_2), // IO
	.d(gpu_din[2]), // IN
	.ld(mtxcwr), // IN
	.clk(clk)  // IN
);
fdsync mwidth_from_0_to_3_inst_3
(
	.q(mwidth_3), // IO
	.d(gpu_din[3]), // IN
	.ld(mtxcwr), // IN
	.clk(clk)  // IN
);

// SYSTOLIC.NET (69) - maddw : fdsync
fdsync maddw_inst
(
	.q(maddw), // IO
	.d(gpu_din[4]), // IN
	.ld(mtxcwr), // IN
	.clk(clk)  // IN
);

// SYSTOLIC.NET (81) - macnten : an2h
assign macnten = mtx_dover_obuf & datack;

// SYSTOLIC.NET (82) - mtxaddr : macount
macount mtxaddr_inst
(
	.maddr_0(mtxaddr_2), // IO
	.maddr_1(mtxaddr_3), // IO
	.maddr_2(mtxaddr_4), // IO
	.maddr_3(mtxaddr_5), // IO
	.maddr_4(mtxaddr_6), // IO
	.maddr_5(mtxaddr_7), // IO
	.maddr_6(mtxaddr_8), // IO
	.maddr_7(mtxaddr_9), // IO
	.maddr_8(mtxaddr_10), // IO
	.maddr_9(mtxaddr_11), // IO
	.clk(clk), // IN
	.cnten(macnten), // IN
	.cntld(mtxawr), // IN
	.gpu_din_2(gpu_din[2]), // IN
	.gpu_din_3(gpu_din[3]), // IN
	.gpu_din_4(gpu_din[4]), // IN
	.gpu_din_5(gpu_din[5]), // IN
	.gpu_din_6(gpu_din[6]), // IN
	.gpu_din_7(gpu_din[7]), // IN
	.gpu_din_8(gpu_din[8]), // IN
	.gpu_din_9(gpu_din[9]), // IN
	.gpu_din_10(gpu_din[10]), // IN
	.gpu_din_11(gpu_din[11]), // IN
	.maddw(maddw), // IN
	.mwidth_0(mwidth_0), // IN
	.mwidth_1(mwidth_1), // IN
	.mwidth_2(mwidth_2), // IN
	.mwidth_3(mwidth_3)  // IN
);

// SYSTOLIC.NET (88) - idlet0 : nd2
assign idlet_0 = ~(idle & mmult_n);

// SYSTOLIC.NET (89) - idlet1 : nd2
assign idlet_1 = ~(resmac & romold);

// SYSTOLIC.NET (90) - idlet2 : nd2
assign idlet_2 = ~(idlet_0 & idlet_1);

// SYSTOLIC.NET (91) - idle : fd4q
fd4q idle_inst
(
	.q(idle), // OUT
	.d(idlet_2), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// SYSTOLIC.NET (93) - imultnt0 : nd2
assign imultnt_0 = ~(idle & mmult);

// SYSTOLIC.NET (94) - imultnt1 : nd2
assign imultnt_1 = ~(imultn & romold_n);

// SYSTOLIC.NET (95) - imultnt2 : nd2
assign imultnt_2 = ~(imultnt_0 & imultnt_1);

// SYSTOLIC.NET (96) - imultn : fd2q
fd2q imultn_inst
(
	.q(imultn), // OUT
	.d(imultnt_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SYSTOLIC.NET (98) - imacnt0 : nd2
assign imacnt_0 = ~(imultn & romold);

// SYSTOLIC.NET (99) - imacnt1 : nd2
assign imacnt_1 = ~(imacn & count1_n);

// SYSTOLIC.NET (100) - imacnt2 : nd2
assign imacnt_2 = ~(imacn & romold_n);

// SYSTOLIC.NET (101) - imacnt3 : nd3
assign imacnt_3 = ~(imacnt_0 & imacnt_1 & imacnt_2);

// SYSTOLIC.NET (102) - imacn : fd2q
fd2q imacn_inst
(
	.q(imacn), // OUT
	.d(imacnt_3), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SYSTOLIC.NET (104) - resmact0 : nd3
assign resmact_0 = ~(imacn & count1 & romold);

// SYSTOLIC.NET (105) - resmact1 : nd2
assign resmact_1 = ~(resmac & romold_n);

// SYSTOLIC.NET (106) - resmact2 : nd2
assign resmact_2 = ~(resmact_0 & resmact_1);

// SYSTOLIC.NET (107) - resmac : fd2q
fd2q resmac_inst
(
	.q(resmac), // OUT
	.d(resmact_2), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SYSTOLIC.NET (109) - mtx_active : iv
assign mtx_active = ~idle;

// SYSTOLIC.NET (115) - mcnten : an2
assign mcnten = romold & mtx_active;

// SYSTOLIC.NET (116) - mcount : mcount
mcount mcount_inst
(
	.count1(count1), // OUT
	.clk(clk), // IN
	.cnten(mcnten), // IN
	.cntld(mmult), // IN
	.mwidth_0(mwidth_0), // IN
	.mwidth_1(mwidth_1), // IN
	.mwidth_2(mwidth_2), // IN
	.mwidth_3(mwidth_3)  // IN
);

// SYSTOLIC.NET (118) - count1\ : iv
assign count1_n = ~count1;

// SYSTOLIC.NET (124) - r1count : r1count
r1count r1count_inst
(
	.count_0(reghalf), // IO
	.count_1(sysr1_0), // IO
	.count_2(sysr1_1), // IO
	.count_3(sysr1_2), // IO
	.count_4(sysr1_3), // IO
	.count_5(sysr1_4), // IO
	.clk(clk), // IN
	.cnten(romold), // IN
	.cntld(mmult), // IN
	.mr1_0(instruction[5]), // IN
	.mr1_1(instruction[6]), // IN
	.mr1_2(instruction[7]), // IN
	.mr1_3(instruction[8]), // IN
	.mr1_4(instruction[9])  // IN
);

// SYSTOLIC.NET (129) - sysr2[0-4] : fdsync
fdsync sysr2_from_0_to_4_inst_0
(
	.q(sysr2_0), // IO
	.d(instruction[0]), // IN
	.ld(mmult), // IN
	.clk(clk)  // IN
);
fdsync sysr2_from_0_to_4_inst_1
(
	.q(sysr2_1), // IO
	.d(instruction[1]), // IN
	.ld(mmult), // IN
	.clk(clk)  // IN
);
fdsync sysr2_from_0_to_4_inst_2
(
	.q(sysr2_2), // IO
	.d(instruction[2]), // IN
	.ld(mmult), // IN
	.clk(clk)  // IN
);
fdsync sysr2_from_0_to_4_inst_3
(
	.q(sysr2_3), // IO
	.d(instruction[3]), // IN
	.ld(mmult), // IN
	.clk(clk)  // IN
);
fdsync sysr2_from_0_to_4_inst_4
(
	.q(sysr2_4), // IO
	.d(instruction[4]), // IN
	.ld(mmult), // IN
	.clk(clk)  // IN
);

// SYSTOLIC.NET (141) - bit11 : or2
assign bit11 = imultn | resmac;

// SYSTOLIC.NET (143) - oneb : iv
assign oneb = ~zero;

// SYSTOLIC.NET (144) - zerob : iv
assign zerob = ~oneb;

// SYSTOLIC.NET (145) - zeroc : iv
assign zeroc = ~oneb;

// SYSTOLIC.NET (146) - sysins : join
assign sysins[0] = sysr2_0;
assign sysins[1] = sysr2_1;
assign sysins[2] = sysr2_2;
assign sysins[3] = sysr2_3;
assign sysins[4] = sysr2_4;
assign sysins[5] = sysr1_0;
assign sysins[6] = sysr1_1;
assign sysins[7] = sysr1_2;
assign sysins[8] = sysr1_3;
assign sysins[9] = sysr1_4;
assign sysins[10] = resmac;
assign sysins[11] = bit11;
assign sysins[12] = imacn;
assign sysins[13] = zerob;
assign sysins[14] = oneb;
assign sysins[15] = zeroc;

// SYSTOLIC.NET (152) - sysser : ivu
assign sysser = ~idle;

// SYSTOLIC.NET (158) - mtx_mreqt : or2
assign mtx_mreqt = imultn | imacn;

// SYSTOLIC.NET (159) - mtx_mreq : aor1
assign mtx_mreq_obuf = (mtx_dover_obuf & datack_n) | mtx_mreqt;

// SYSTOLIC.NET (164) - mtx_dover : fd2qu
fd2q mtx_dover_inst
(
	.q(mtx_dover_obuf), // OUT
	.d(mtx_mreq_obuf), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SYSTOLIC.NET (168) - mtx_wait : an2
assign mtx_wait = mtx_dover_obuf & datack_n;

// SYSTOLIC.NET (174) - multselt : an2
assign multselt = reghalf & mtx_active;

// SYSTOLIC.NET (175) - multsel : fdsync
fdsync multsel_inst
(
	.q(multsel), // IO
	.d(multselt), // IN
	.ld(romold), // IN
	.clk(clk)  // IN
);
endmodule
