`include "defs.v"

module sboard
(
	output[0:5] dsta;
	output sdatreq,
	output dstrwen_n,
	output[0:31] dstwd;
	output resaddrldi,
	output sbwait,
	output[0:5] srca;
	output srcaddrldi,
	output srcrwen_n,
	output[0:31] srcwd;
	input clk,
	input datack,
	input datwe,
	input datwe_raw,
	input del_xld,
	input div_activei,
	input div_instr,
	input div_start,
	input[0:5] dstanwi;
	input[0:5] dstat;
	input dstrrd,
	input dstrrdi,
	input dstrwr,
	input dstrwri,
	input dstwen,
	input exe,
	input flag_depend,
	input flagld,
	input gate_active,
	input[0:31] immdata;
	input immld,
	input immwri,
	input insexei,
	input[0:31] load_data;
	input[0:31] mem_data;
	input memrw,
	input mtx_dover,
	input precomp,
	input[0:31] quotient;
	input reset_n,
	input reswr,
	input[0:31] result;
	input[0:5] srcanwi;
	input[0:31] srcdp;
	input srcrrd,
	input xld_ready
);
wire [0:5] alu_wbaddr;
wire [0:5] div_wbaddr;
wire [0:5] dstwbaddr;
wire [0:5] hwbaddr;
wire [0:5] ild_wbaddr;
wire [0:5] ild_wbaddrl;
wire [0:5] imm_wbaddr;
wire [0:5] mov_wbaddr;
wire [0:5] srcwbaddr;
wire [0:5] swbaddr;
wire [0:5] xld_wbaddr;
wire [0:5] xlddst;
wire [0:5] xlddst2;
wire [0:5] zero6;
wire [0:5] dsta_reg;
wire [0:5] srca_reg;
wire [0:5] dstanw;
wire [0:5] srcanw;
wire [0:31] mxdata;
wire [0:31] xld_data;
wire [0:31] ild_data;
wire [0:31] ild_datad;
wire datack_n;
wire datwe_n;
wire del_xld_n;
wire exe_n;
wire memrw_n;
wire mtx_dover_n;
wire precomp_n;
wire zero;
wire insexe;
wire dstren;
wire dsta_reg_ena;
wire srca_reg_ena;
wire pendwr;
wire alu_wback;
wire alu_wback_n;
wire dp1eq;
wire sp1eq;
wire aluwt;
wire aludwait;
wire mov_wback_n;
wire mov_wback;
wire immasel;
wire imm_wback;
wire imm_wback_n;
wire ildwal;
wire ildwbset_n;
wire ildwbset;
wire ildwbclr;
wire ild_wbackh_n;
wire ild_wbacks_n;
wire ildwbt;
wire ild_wbackd;
wire ild_wbacki;
wire ild_wbackd_n;
wire ild_wback;
wire ild_wback_n;
wire ilddselt_n;
wire ilddsel_n;
wire idlet_0;
wire idle;
wire idlet_1;
wire idlet_2;
wire loading;
wire idlei;
wire idle_n;
wire comp1i;
wire comp1;
wire comp2i;
wire comp2;
wire comp2_n;
wire loadingt_0;
wire loadingt_1;
wire loadingt_2;
wire loadingi;
wire dlaeq;
wire slaeq;
wire ldwaitt_0;
wire ldwaitt_1;
wire ldwaitt_2;
wire ldwait;
wire drqt_0;
wire drqt_1;
wire drqt_2;
wire ld1t_0;
wire ldidle;
wire ld1t_1;
wire oneld;
wire xldd_sel_n;
wire ld1t_2;
wire xldd_sel;
wire ld1t_3;
wire twold;
wire oneldi;
wire ld2t_0;
wire ld2t_1;
wire twoldi;
wire ldidle_n;
wire xlddt_0;
wire xlddt_1;
wire xlddt_2;
wire xlddt_3;
wire xlddeq;
wire xldseq;
wire xldeq;
wire xld2deq;
wire xld2seq;
wire xld2eq;
wire xlddwait;
wire mbsywt_0;
wire mbsywt_1;
wire mbsywt_2;
wire mbsywt_3;
wire mbusywait;
wire xwbclr;
wire xld_wbackh_n;
wire xld_wbacks_n;
wire xwbat_0;
wire xld_wbackl;
wire xwbat_1;
wire xld_wback;
wire xld_wback_n;
wire div_active;
wire div_activei_n;
wire divdeq;
wire divseq;
wire diveq;
wire divdwait;
wire dwbset;
wire dwbclr;
wire div_wbackh_n;
wire div_wbacks_n;
wire dwbat_0;
wire div_wbackl;
wire dwbat_1;
wire div_wback;
wire div_wback_n;
wire diviwait;
wire flag_pend;
wire flagwait;
wire wbacki;
wire wback;
wire alu_wbackh_n;
wire mov_wbackh_n;
wire imm_wbackh_n;
wire mov_wbacks_n;
wire imm_wbackst;
wire imm_wbacks_n;
wire ild_wbackst;
wire xld_wbackst;
wire div_wbackst;
wire mult_wbacki;
wire mult_wback;
wire mult_wback_n;
wire hasel_0;
wire hasel_1;
wire hasel_2;
wire sasel_0;
wire sasel_1;
wire sasel_2;
wire wbdcmpt_0;
wire wbdcmpt_1;
wire wbdcmpt_2;
wire wbdcmpt_3;
wire wbdcmpt_4;
wire wbdcmpt_5;
wire wbdeqi_n;
wire wbdeqit;
wire wbdeqi;
wire wbdeq_n;
wire wbseqi_n;
wire wbseq_n;
wire bothen;
wire wbwaitt;
wire wbwait;
wire dwbt_0;
wire dwbt_4;
wire dwbt_5;
wire dwbt_6;
wire dwbt_1;
wire dwbt_2;
wire dwbt_3;
wire dstwbwei;
wire dstwbwet;
wire dstwbwe_n;
wire dstwbwe;
wire swbt_0;
wire swbt_1;
wire srcwbwei;
wire srcwbwe;
wire xldd_selt;
wire divd_selt;
wire divd_sel;
wire dwselt_0;
wire dwselt_1;
wire dwsel_0;
wire dwsel_1;
wire dwselb_0;
wire dwselb_1;
wire swselti_0;
wire swselti_1;
wire swselt_0;
wire swselt_1;
wire swsel_0;
wire swsel_1;
wire swselb_0;
wire swselb_1;
wire sbwaitt_0;
wire sbwaitt_1;
wire sbwaitt_2;
wire sbwaitt_3;

// SBOARD.NET (91) - datack\ : iv
assign datack_n = ~datack;

// SBOARD.NET (92) - datwe\ : iv
assign datwe_n = ~datwe;

// SBOARD.NET (93) - del_xld\ : iv
assign del_xld_n = ~del_xld;

// SBOARD.NET (94) - exe\ : iv
assign exe_n = ~exe;

// SBOARD.NET (95) - memrw\ : iv
assign memrw_n = ~memrw;

// SBOARD.NET (96) - mtx_dover\ : iv
assign mtx_dover_n = ~mtx_dover;

// SBOARD.NET (97) - precomp\ : iv
assign precomp_n = ~precomp;

// SBOARD.NET (98) - zero : tie0
assign zero = 1'b0;

// SBOARD.NET (99) - zero6 : join
assign zero6[0] = zero;
assign zero6[1] = zero;
assign zero6[2] = zero;
assign zero6[3] = zero;
assign zero6[4] = zero;
assign zero6[5] = zero;

// SBOARD.NET (102) - insexe : fd1q
fd1q insexe_inst
(
	.q(insexe), // OUT
	.d(insexei), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (103) - dstanw : fd1q
fd1q dstanw_inst_0
(
	.q(dstanw[0]), // OUT
	.d(dstanwi[0]), // IN
	.cp(clk)  // IN
);
fd1q dstanw_inst_1
(
	.q(dstanw[1]), // OUT
	.d(dstanwi[1]), // IN
	.cp(clk)  // IN
);
fd1q dstanw_inst_2
(
	.q(dstanw[2]), // OUT
	.d(dstanwi[2]), // IN
	.cp(clk)  // IN
);
fd1q dstanw_inst_3
(
	.q(dstanw[3]), // OUT
	.d(dstanwi[3]), // IN
	.cp(clk)  // IN
);
fd1q dstanw_inst_4
(
	.q(dstanw[4]), // OUT
	.d(dstanwi[4]), // IN
	.cp(clk)  // IN
);
fd1q dstanw_inst_5
(
	.q(dstanw[5]), // OUT
	.d(dstanwi[5]), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (104) - srcanw : fd1q
fd1q srcanw_inst_0
(
	.q(srcanw[0]), // OUT
	.d(srcanwi[0]), // IN
	.cp(clk)  // IN
);
fd1q srcanw_inst_1
(
	.q(srcanw[1]), // OUT
	.d(srcanwi[1]), // IN
	.cp(clk)  // IN
);
fd1q srcanw_inst_2
(
	.q(srcanw[2]), // OUT
	.d(srcanwi[2]), // IN
	.cp(clk)  // IN
);
fd1q srcanw_inst_3
(
	.q(srcanw[3]), // OUT
	.d(srcanwi[3]), // IN
	.cp(clk)  // IN
);
fd1q srcanw_inst_4
(
	.q(srcanw[4]), // OUT
	.d(srcanwi[4]), // IN
	.cp(clk)  // IN
);
fd1q srcanw_inst_5
(
	.q(srcanw[5]), // OUT
	.d(srcanwi[5]), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (108) - dstren : or2
assign dstren = dstrrd | dstrwr;

// SBOARD.NET (127) - dsta_reg : niv
assign dsta_reg[0] = dstanw[0];
assign dsta_reg[1] = dstanw[1];
assign dsta_reg[2] = dstanw[2];
assign dsta_reg[3] = dstanw[3];
assign dsta_reg[4] = dstanw[4];
assign dsta_reg[5] = dstanw[5];

// SBOARD.NET (128) - srca_reg : niv
assign srca_reg[0] = srcanw[0];
assign srca_reg[1] = srcanw[1];
assign srca_reg[2] = srcanw[2];
assign srca_reg[3] = srcanw[3];
assign srca_reg[4] = srcanw[4];
assign srca_reg[5] = srcanw[5];

// SBOARD.NET (129) - dsta_reg_ena : join
assign dsta_reg_ena = dstrrd;

// SBOARD.NET (130) - srca_reg_ena : or2
assign srca_reg_ena = srcrrd | precomp;

// SBOARD.NET (136) - alu_wbaddr : fd2qp
fd2q alu_wbaddr_inst_0
(
	.q(alu_wbaddr[0]), // OUT
	.d(dstanw[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q alu_wbaddr_inst_1
(
	.q(alu_wbaddr[1]), // OUT
	.d(dstanw[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q alu_wbaddr_inst_2
(
	.q(alu_wbaddr[2]), // OUT
	.d(dstanw[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q alu_wbaddr_inst_3
(
	.q(alu_wbaddr[3]), // OUT
	.d(dstanw[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q alu_wbaddr_inst_4
(
	.q(alu_wbaddr[4]), // OUT
	.d(dstanw[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q alu_wbaddr_inst_5
(
	.q(alu_wbaddr[5]), // OUT
	.d(dstanw[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (140) - pendwr : an2
assign pendwr = reswr & exe;

// SBOARD.NET (141) - alu_wback : fd2qp
fd2q alu_wback_inst
(
	.q(alu_wback), // OUT
	.d(pendwr), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (142) - alu_wback\ : iv
assign alu_wback_n = ~alu_wback;

// SBOARD.NET (152) - dp1cmp : cmp6
cmp6 dp1cmp_inst
(
	.equal(dp1eq), // OUT
	.a({alu_wbaddr[0],alu_wbaddr[1],alu_wbaddr[2],alu_wbaddr[3],alu_wbaddr[4],alu_wbaddr[5]}), // IN
	.b({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]})  // IN
);

// SBOARD.NET (153) - sp1cmp : cmp6
cmp6 sp1cmp_inst
(
	.equal(sp1eq), // OUT
	.a({alu_wbaddr[0],alu_wbaddr[1],alu_wbaddr[2],alu_wbaddr[3],alu_wbaddr[4],alu_wbaddr[5]}), // IN
	.b({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]})  // IN
);

// SBOARD.NET (154) - aluwt : aor2
assign aluwt = (dp1eq & dsta_reg_ena) | (sp1eq & srca_reg_ena);

// SBOARD.NET (156) - aludwait : an2
assign aludwait = aluwt & alu_wback;

// SBOARD.NET (162) - moveai : join
assign mov_wbaddr[0] = dstanw[0];
assign mov_wbaddr[1] = dstanw[1];
assign mov_wbaddr[2] = dstanw[2];
assign mov_wbaddr[3] = dstanw[3];
assign mov_wbaddr[4] = dstanw[4];
assign mov_wbaddr[5] = dstanw[5];

// SBOARD.NET (163) - mov_wback\ : nd2p
assign mov_wback_n = ~(dstwen & exe);

// SBOARD.NET (164) - mov_wback : ivs
assign mov_wback = ~mov_wback_n;

// SBOARD.NET (171) - immasel : an2
assign immasel = immld & exe;

// SBOARD.NET (172) - imm_wbaddr : fdsync6
fdsync6 imm_wbaddr_inst
(
	.q({imm_wbaddr[0],imm_wbaddr[1],imm_wbaddr[2],imm_wbaddr[3],imm_wbaddr[4],imm_wbaddr[5]}), // IO
	.d({dstanw[0],dstanw[1],dstanw[2],dstanw[3],dstanw[4],dstanw[5]}), // IN
	.ld(immasel), // IN
	.clk(clk)  // IN
);

// SBOARD.NET (174) - imm_wback : join
assign imm_wback = immwri;

// SBOARD.NET (175) - imm_wback\ : iv
assign imm_wback_n = ~imm_wback;

// SBOARD.NET (188) - ildwal : an2
assign ildwal = memrw & exe;

// SBOARD.NET (189) - ild_wbaddr : mx2
mx2 ild_wbaddr_inst_0
(
	.z(ild_wbaddr[0]), // OUT
	.a0(ild_wbaddrl[0]), // IN
	.a1(dstat[0]), // IN
	.s(ildwal)  // IN
);
mx2 ild_wbaddr_inst_1
(
	.z(ild_wbaddr[1]), // OUT
	.a0(ild_wbaddrl[1]), // IN
	.a1(dstat[1]), // IN
	.s(ildwal)  // IN
);
mx2 ild_wbaddr_inst_2
(
	.z(ild_wbaddr[2]), // OUT
	.a0(ild_wbaddrl[2]), // IN
	.a1(dstat[2]), // IN
	.s(ildwal)  // IN
);
mx2 ild_wbaddr_inst_3
(
	.z(ild_wbaddr[3]), // OUT
	.a0(ild_wbaddrl[3]), // IN
	.a1(dstat[3]), // IN
	.s(ildwal)  // IN
);
mx2 ild_wbaddr_inst_4
(
	.z(ild_wbaddr[4]), // OUT
	.a0(ild_wbaddrl[4]), // IN
	.a1(dstat[4]), // IN
	.s(ildwal)  // IN
);
mx2 ild_wbaddr_inst_5
(
	.z(ild_wbaddr[5]), // OUT
	.a0(ild_wbaddrl[5]), // IN
	.a1(dstat[5]), // IN
	.s(ildwal)  // IN
);

// SBOARD.NET (190) - ild_wbaddrl : fd2q
fd2q ild_wbaddrl_inst_0
(
	.q(ild_wbaddrl[0]), // OUT
	.d(ild_wbaddr[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ild_wbaddrl_inst_1
(
	.q(ild_wbaddrl[1]), // OUT
	.d(ild_wbaddr[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ild_wbaddrl_inst_2
(
	.q(ild_wbaddrl[2]), // OUT
	.d(ild_wbaddr[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ild_wbaddrl_inst_3
(
	.q(ild_wbaddrl[3]), // OUT
	.d(ild_wbaddr[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ild_wbaddrl_inst_4
(
	.q(ild_wbaddrl[4]), // OUT
	.d(ild_wbaddr[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q ild_wbaddrl_inst_5
(
	.q(ild_wbaddrl[5]), // OUT
	.d(ild_wbaddr[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (198) - ildwbset\ : nd4
assign ildwbset_n = ~(datack & datwe_n & del_xld_n & mtx_dover_n);

// SBOARD.NET (200) - ildwbset : iv
assign ildwbset = ~ildwbset_n;

// SBOARD.NET (201) - ildwbclr : nd2
assign ildwbclr = ~(ild_wbackh_n & ild_wbacks_n);

// SBOARD.NET (202) - ildwbt : nr2
assign ildwbt = ~(ild_wbackd | ildwbset);

// SBOARD.NET (203) - ild_wbacki : nr2
assign ild_wbacki = ~(ildwbclr | ildwbt);

// SBOARD.NET (204) - ild_wbackd : fd2
fd2 ild_wbackd_inst
(
	.q(ild_wbackd), // OUT
	.qn(ild_wbackd_n), // OUT
	.d(ild_wbacki), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (206) - ild_wback : nd2
assign ild_wback = ~(ildwbset_n & ild_wbackd_n);

// SBOARD.NET (207) - ild_wback\ : iv
assign ild_wback_n = ~ild_wback;

// SBOARD.NET (209) - ilddselt\ : fd1q
fd1q ilddselt_n_inst
(
	.q(ilddselt_n), // OUT
	.d(ildwbset_n), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (210) - ilddsel\ : nivu
assign ilddsel_n = ilddselt_n;

// SBOARD.NET (211) - ild_data : mx2
mx2 ild_data_inst_0
(
	.z(ild_data[0]), // OUT
	.a0(mem_data[0]), // IN
	.a1(ild_datad[0]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_1
(
	.z(ild_data[1]), // OUT
	.a0(mem_data[1]), // IN
	.a1(ild_datad[1]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_2
(
	.z(ild_data[2]), // OUT
	.a0(mem_data[2]), // IN
	.a1(ild_datad[2]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_3
(
	.z(ild_data[3]), // OUT
	.a0(mem_data[3]), // IN
	.a1(ild_datad[3]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_4
(
	.z(ild_data[4]), // OUT
	.a0(mem_data[4]), // IN
	.a1(ild_datad[4]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_5
(
	.z(ild_data[5]), // OUT
	.a0(mem_data[5]), // IN
	.a1(ild_datad[5]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_6
(
	.z(ild_data[6]), // OUT
	.a0(mem_data[6]), // IN
	.a1(ild_datad[6]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_7
(
	.z(ild_data[7]), // OUT
	.a0(mem_data[7]), // IN
	.a1(ild_datad[7]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_8
(
	.z(ild_data[8]), // OUT
	.a0(mem_data[8]), // IN
	.a1(ild_datad[8]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_9
(
	.z(ild_data[9]), // OUT
	.a0(mem_data[9]), // IN
	.a1(ild_datad[9]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_10
(
	.z(ild_data[10]), // OUT
	.a0(mem_data[10]), // IN
	.a1(ild_datad[10]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_11
(
	.z(ild_data[11]), // OUT
	.a0(mem_data[11]), // IN
	.a1(ild_datad[11]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_12
(
	.z(ild_data[12]), // OUT
	.a0(mem_data[12]), // IN
	.a1(ild_datad[12]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_13
(
	.z(ild_data[13]), // OUT
	.a0(mem_data[13]), // IN
	.a1(ild_datad[13]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_14
(
	.z(ild_data[14]), // OUT
	.a0(mem_data[14]), // IN
	.a1(ild_datad[14]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_15
(
	.z(ild_data[15]), // OUT
	.a0(mem_data[15]), // IN
	.a1(ild_datad[15]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_16
(
	.z(ild_data[16]), // OUT
	.a0(mem_data[16]), // IN
	.a1(ild_datad[16]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_17
(
	.z(ild_data[17]), // OUT
	.a0(mem_data[17]), // IN
	.a1(ild_datad[17]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_18
(
	.z(ild_data[18]), // OUT
	.a0(mem_data[18]), // IN
	.a1(ild_datad[18]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_19
(
	.z(ild_data[19]), // OUT
	.a0(mem_data[19]), // IN
	.a1(ild_datad[19]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_20
(
	.z(ild_data[20]), // OUT
	.a0(mem_data[20]), // IN
	.a1(ild_datad[20]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_21
(
	.z(ild_data[21]), // OUT
	.a0(mem_data[21]), // IN
	.a1(ild_datad[21]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_22
(
	.z(ild_data[22]), // OUT
	.a0(mem_data[22]), // IN
	.a1(ild_datad[22]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_23
(
	.z(ild_data[23]), // OUT
	.a0(mem_data[23]), // IN
	.a1(ild_datad[23]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_24
(
	.z(ild_data[24]), // OUT
	.a0(mem_data[24]), // IN
	.a1(ild_datad[24]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_25
(
	.z(ild_data[25]), // OUT
	.a0(mem_data[25]), // IN
	.a1(ild_datad[25]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_26
(
	.z(ild_data[26]), // OUT
	.a0(mem_data[26]), // IN
	.a1(ild_datad[26]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_27
(
	.z(ild_data[27]), // OUT
	.a0(mem_data[27]), // IN
	.a1(ild_datad[27]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_28
(
	.z(ild_data[28]), // OUT
	.a0(mem_data[28]), // IN
	.a1(ild_datad[28]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_29
(
	.z(ild_data[29]), // OUT
	.a0(mem_data[29]), // IN
	.a1(ild_datad[29]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_30
(
	.z(ild_data[30]), // OUT
	.a0(mem_data[30]), // IN
	.a1(ild_datad[30]), // IN
	.s(ilddsel_n)  // IN
);
mx2 ild_data_inst_31
(
	.z(ild_data[31]), // OUT
	.a0(mem_data[31]), // IN
	.a1(ild_datad[31]), // IN
	.s(ilddsel_n)  // IN
);

// SBOARD.NET (212) - ild_datad : fd1q
fd1q ild_datad_inst_0
(
	.q(ild_datad[0]), // OUT
	.d(ild_data[0]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_1
(
	.q(ild_datad[1]), // OUT
	.d(ild_data[1]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_2
(
	.q(ild_datad[2]), // OUT
	.d(ild_data[2]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_3
(
	.q(ild_datad[3]), // OUT
	.d(ild_data[3]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_4
(
	.q(ild_datad[4]), // OUT
	.d(ild_data[4]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_5
(
	.q(ild_datad[5]), // OUT
	.d(ild_data[5]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_6
(
	.q(ild_datad[6]), // OUT
	.d(ild_data[6]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_7
(
	.q(ild_datad[7]), // OUT
	.d(ild_data[7]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_8
(
	.q(ild_datad[8]), // OUT
	.d(ild_data[8]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_9
(
	.q(ild_datad[9]), // OUT
	.d(ild_data[9]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_10
(
	.q(ild_datad[10]), // OUT
	.d(ild_data[10]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_11
(
	.q(ild_datad[11]), // OUT
	.d(ild_data[11]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_12
(
	.q(ild_datad[12]), // OUT
	.d(ild_data[12]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_13
(
	.q(ild_datad[13]), // OUT
	.d(ild_data[13]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_14
(
	.q(ild_datad[14]), // OUT
	.d(ild_data[14]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_15
(
	.q(ild_datad[15]), // OUT
	.d(ild_data[15]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_16
(
	.q(ild_datad[16]), // OUT
	.d(ild_data[16]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_17
(
	.q(ild_datad[17]), // OUT
	.d(ild_data[17]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_18
(
	.q(ild_datad[18]), // OUT
	.d(ild_data[18]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_19
(
	.q(ild_datad[19]), // OUT
	.d(ild_data[19]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_20
(
	.q(ild_datad[20]), // OUT
	.d(ild_data[20]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_21
(
	.q(ild_datad[21]), // OUT
	.d(ild_data[21]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_22
(
	.q(ild_datad[22]), // OUT
	.d(ild_data[22]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_23
(
	.q(ild_datad[23]), // OUT
	.d(ild_data[23]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_24
(
	.q(ild_datad[24]), // OUT
	.d(ild_data[24]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_25
(
	.q(ild_datad[25]), // OUT
	.d(ild_data[25]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_26
(
	.q(ild_datad[26]), // OUT
	.d(ild_data[26]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_27
(
	.q(ild_datad[27]), // OUT
	.d(ild_data[27]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_28
(
	.q(ild_datad[28]), // OUT
	.d(ild_data[28]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_29
(
	.q(ild_datad[29]), // OUT
	.d(ild_data[29]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_30
(
	.q(ild_datad[30]), // OUT
	.d(ild_data[30]), // IN
	.cp(clk)  // IN
);
fd1q ild_datad_inst_31
(
	.q(ild_datad[31]), // OUT
	.d(ild_data[31]), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (216) - idlet[0] : nd2
assign idlet_0 = ~(idle & memrw_n);

// SBOARD.NET (217) - idlet[1] : nd2
assign idlet_1 = ~(idle & exe_n);

// SBOARD.NET (218) - idlet[2] : nd2
assign idlet_2 = ~(loading & datack);

// SBOARD.NET (219) - idlei : nd3
assign idlei = ~(idlet_0 & idlet_1 & idlet_2);

// SBOARD.NET (220) - idle : fd4q
fd4q idle_inst
(
	.q(idle), // OUT
	.d(idlei), // IN
	.cp(clk), // IN
	.sd(reset_n)  // IN
);

// SBOARD.NET (221) - idle\ : iv
assign idle_n = ~idle;

// SBOARD.NET (223) - comp1i : an4
assign comp1i = idle & memrw & precomp & exe;

// SBOARD.NET (224) - comp1 : fd2q
fd2q comp1_inst
(
	.q(comp1), // OUT
	.d(comp1i), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (226) - comp2i : join
assign comp2i = comp1;

// SBOARD.NET (227) - comp2 : fd2q
fd2q comp2_inst
(
	.q(comp2), // OUT
	.d(comp2i), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (228) - comp2\ : iv
assign comp2_n = ~comp2;

// SBOARD.NET (230) - loadingt[0] : nd4
assign loadingt_0 = ~(idle & memrw & precomp_n & exe);

// SBOARD.NET (231) - loadingt[1] : iv
assign loadingt_1 = ~comp2;

// SBOARD.NET (232) - loadingt[2] : nd2
assign loadingt_2 = ~(loading & datack_n);

// SBOARD.NET (233) - loadingi : nd3
assign loadingi = ~(loadingt_0 & loadingt_1 & loadingt_2);

// SBOARD.NET (234) - loading : fd2q
fd2q loading_inst
(
	.q(loading), // OUT
	.d(loadingi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (239) - dlacmp : cmp6
cmp6 dlacmp_inst
(
	.equal(dlaeq), // OUT
	.a({ild_wbaddrl[0],ild_wbaddrl[1],ild_wbaddrl[2],ild_wbaddrl[3],ild_wbaddrl[4],ild_wbaddrl[5]}), // IN
	.b({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]})  // IN
);

// SBOARD.NET (240) - slacmp : cmp6
cmp6 slacmp_inst
(
	.equal(slaeq), // OUT
	.a({ild_wbaddrl[0],ild_wbaddrl[1],ild_wbaddrl[2],ild_wbaddrl[3],ild_wbaddrl[4],ild_wbaddrl[5]}), // IN
	.b({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]})  // IN
);

// SBOARD.NET (241) - ldwaitt0 : aor2
assign ldwaitt_0 = (dlaeq & dsta_reg_ena) | (slaeq & srca_reg_ena);

// SBOARD.NET (243) - ldwaitt1 : nd2
assign ldwaitt_1 = ~(ldwaitt_0 & idle_n);

// SBOARD.NET (244) - ldwaitt2 : nd2
assign ldwaitt_2 = ~(idle_n & memrw);

// SBOARD.NET (245) - ldwait : nd2
assign ldwait = ~(ldwaitt_1 & ldwaitt_2);

// SBOARD.NET (254) - drqt[0] : nd4
assign drqt_0 = ~(idle & exe & precomp_n & memrw);

// SBOARD.NET (255) - drqt[1] : nd2
assign drqt_1 = ~(drqt_0 & comp2_n);

// SBOARD.NET (256) - drqt[2] : cp_latch
cp_latch drqt_index_2_inst
(
	.q(drqt_2), // IO
	.set(drqt_1), // IN
	.clear(datack), // IN
	.clock(clk), // IN
	.reset_n(reset_n)  // IN
);

// SBOARD.NET (258) - datreq : oan1
assign sdatreq = (drqt_1 | drqt_2) & datack_n;

// SBOARD.NET (264) - srcaddrldi : an4
assign srcaddrldi = idle & exe & precomp_n & memrw;

// SBOARD.NET (271) - resaddrldi : join
assign resaddrldi = comp1;

// SBOARD.NET (284) - ld1t0 : nd2
assign ld1t_0 = ~(del_xld & ldidle);

// SBOARD.NET (285) - ld1t1 : nd3
assign ld1t_1 = ~(oneld & del_xld_n & xldd_sel_n);

// SBOARD.NET (286) - ld1t2 : nd3
assign ld1t_2 = ~(oneld & del_xld & xldd_sel);

// SBOARD.NET (287) - ld1t3 : nd2
assign ld1t_3 = ~(twold & xldd_sel);

// SBOARD.NET (288) - ld1t4 : nd4
assign oneldi = ~(ld1t_0 & ld1t_1 & ld1t_2 & ld1t_3);

// SBOARD.NET (289) - oneld : fd2qp
fd2q oneld_inst
(
	.q(oneld), // OUT
	.d(oneldi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (291) - ld2t0 : nd3
assign ld2t_0 = ~(oneld & del_xld & xldd_sel_n);

// SBOARD.NET (292) - ld2t1 : nd2
assign ld2t_1 = ~(twold & xldd_sel_n);

// SBOARD.NET (293) - ld2t2 : nd2
assign twoldi = ~(ld2t_0 & ld2t_1);

// SBOARD.NET (294) - twold : fd2qp
fd2q twold_inst
(
	.q(twold), // OUT
	.d(twoldi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (296) - ldidle : nr2p
assign ldidle = ~(twold | oneld);

// SBOARD.NET (297) - ldidle\ : iv
assign ldidle_n = ~ldidle;

// SBOARD.NET (314) - xlddt0 : nd2
assign xlddt_0 = ~(del_xld & ldidle);

// SBOARD.NET (315) - xlddt1 : nd3
assign xlddt_1 = ~(del_xld & oneld & xldd_sel);

// SBOARD.NET (316) - xlddt2 : nd2p
assign xlddt_2 = ~(xlddt_0 & xlddt_1);

// SBOARD.NET (317) - xlddt3 : an2p
assign xlddt_3 = xldd_sel & twold;

// SBOARD.NET (318) - xlddsti : mx4
mx4 xlddsti_inst_0
(
	.z(xld_wbaddr[0]), // OUT
	.a0(xlddst[0]), // IN
	.a1(ild_wbaddr[0]), // IN
	.a2(xlddst2[0]), // IN
	.a3(xlddst2[0]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);
mx4 xlddsti_inst_1
(
	.z(xld_wbaddr[1]), // OUT
	.a0(xlddst[1]), // IN
	.a1(ild_wbaddr[1]), // IN
	.a2(xlddst2[1]), // IN
	.a3(xlddst2[1]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);
mx4 xlddsti_inst_2
(
	.z(xld_wbaddr[2]), // OUT
	.a0(xlddst[2]), // IN
	.a1(ild_wbaddr[2]), // IN
	.a2(xlddst2[2]), // IN
	.a3(xlddst2[2]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);
mx4 xlddsti_inst_3
(
	.z(xld_wbaddr[3]), // OUT
	.a0(xlddst[3]), // IN
	.a1(ild_wbaddr[3]), // IN
	.a2(xlddst2[3]), // IN
	.a3(xlddst2[3]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);
mx4 xlddsti_inst_4
(
	.z(xld_wbaddr[4]), // OUT
	.a0(xlddst[4]), // IN
	.a1(ild_wbaddr[4]), // IN
	.a2(xlddst2[4]), // IN
	.a3(xlddst2[4]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);
mx4 xlddsti_inst_5
(
	.z(xld_wbaddr[5]), // OUT
	.a0(xlddst[5]), // IN
	.a1(ild_wbaddr[5]), // IN
	.a2(xlddst2[5]), // IN
	.a3(xlddst2[5]), // IN
	.s0(xlddt_2), // IN
	.s1(xlddt_3)  // IN
);

// SBOARD.NET (320) - xlddst : fd2q
fd2q xlddst_inst_0
(
	.q(xlddst[0]), // OUT
	.d(xld_wbaddr[0]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q xlddst_inst_1
(
	.q(xlddst[1]), // OUT
	.d(xld_wbaddr[1]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q xlddst_inst_2
(
	.q(xlddst[2]), // OUT
	.d(xld_wbaddr[2]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q xlddst_inst_3
(
	.q(xlddst[3]), // OUT
	.d(xld_wbaddr[3]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q xlddst_inst_4
(
	.q(xlddst[4]), // OUT
	.d(xld_wbaddr[4]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);
fd2q xlddst_inst_5
(
	.q(xlddst[5]), // OUT
	.d(xld_wbaddr[5]), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (322) - xlddst2 : fdsyncr6
fdsyncr6 xlddst2_inst
(
	.q({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]}), // IO
	.d({ild_wbaddr[0],ild_wbaddr[1],ild_wbaddr[2],ild_wbaddr[3],ild_wbaddr[4],ild_wbaddr[5]}), // IN
	.ld(del_xld), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// SBOARD.NET (330) - xlddmatch : cmp6
cmp6 xlddmatch_inst
(
	.equal(xlddeq), // OUT
	.a({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}), // IN
	.b({xlddst[0],xlddst[1],xlddst[2],xlddst[3],xlddst[4],xlddst[5]})  // IN
);

// SBOARD.NET (331) - xldsmatch : cmp6
cmp6 xldsmatch_inst
(
	.equal(xldseq), // OUT
	.a({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}), // IN
	.b({xlddst[0],xlddst[1],xlddst[2],xlddst[3],xlddst[4],xlddst[5]})  // IN
);

// SBOARD.NET (332) - xldeq : aor2
assign xldeq = (xlddeq & dsta_reg_ena) | (xldseq & srca_reg_ena);

// SBOARD.NET (334) - xld2dmatch : cmp6
cmp6 xld2dmatch_inst
(
	.equal(xld2deq), // OUT
	.a({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}), // IN
	.b({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]})  // IN
);

// SBOARD.NET (335) - xld2smatch : cmp6
cmp6 xld2smatch_inst
(
	.equal(xld2seq), // OUT
	.a({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}), // IN
	.b({xlddst2[0],xlddst2[1],xlddst2[2],xlddst2[3],xlddst2[4],xlddst2[5]})  // IN
);

// SBOARD.NET (336) - xld2eq : aor2
assign xld2eq = (xld2deq & dsta_reg_ena) | (xld2seq & srca_reg_ena);

// SBOARD.NET (339) - xlddwait : aor2
assign xlddwait = (ldidle_n & xldeq) | (twold & xld2eq);

// SBOARD.NET (343) - xld_data : fdsync32
fdsync32 xld_data_inst
(
	.q({xld_data[0],xld_data[1],xld_data[2],xld_data[3],xld_data[4],xld_data[5],xld_data[6],xld_data[7],xld_data[8],xld_data[9],xld_data[10],xld_data[11],xld_data[12],xld_data[13],xld_data[14],xld_data[15],xld_data[16],xld_data[17],xld_data[18],xld_data[19],xld_data[20],xld_data[21],xld_data[22],xld_data[23],xld_data[24],xld_data[25],xld_data[26],xld_data[27],xld_data[28],xld_data[29],xld_data[30],xld_data[31]}), // IO
	.d({load_data[0],load_data[1],load_data[2],load_data[3],load_data[4],load_data[5],load_data[6],load_data[7],load_data[8],load_data[9],load_data[10],load_data[11],load_data[12],load_data[13],load_data[14],load_data[15],load_data[16],load_data[17],load_data[18],load_data[19],load_data[20],load_data[21],load_data[22],load_data[23],load_data[24],load_data[25],load_data[26],load_data[27],load_data[28],load_data[29],load_data[30],load_data[31]}), // IN
	.ld(xld_ready), // IN
	.clk(clk)  // IN
);

// SBOARD.NET (353) - mbsywt0 : or2
assign mbsywt_0 = gate_active | twoldi;

// SBOARD.NET (354) - mbsywt1 : nd2
assign mbsywt_1 = ~(mbsywt_0 & memrw);

// SBOARD.NET (355) - mbsywt2 : or2
assign mbsywt_2 = oneldi | twoldi;

// SBOARD.NET (356) - mbsywt3 : nd2
assign mbsywt_3 = ~(mbsywt_2 & datwe_raw);

// SBOARD.NET (357) - mbusywait : nd2
assign mbusywait = ~(mbsywt_1 & mbsywt_3);

// SBOARD.NET (362) - xwbclr : nd2
assign xwbclr = ~(xld_wbackh_n & xld_wbacks_n);

// SBOARD.NET (363) - xwbat0 : nr2
assign xwbat_0 = ~(xld_wbackl | xld_ready);

// SBOARD.NET (364) - xwbat1 : nr2
assign xwbat_1 = ~(xwbclr | xwbat_0);

// SBOARD.NET (365) - xldpend : fd2q
fd2q xldpend_inst
(
	.q(xld_wbackl), // OUT
	.d(xwbat_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (366) - xld_wback : or2
assign xld_wback = xld_wbackl | xld_ready;

// SBOARD.NET (367) - xld_wback\ : iv
assign xld_wback_n = ~xld_wback;

// SBOARD.NET (375) - div_active : fd1q
fd1q div_active_inst
(
	.q(div_active), // OUT
	.d(div_activei), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (376) - div_activei\ : iv
assign div_activei_n = ~div_activei;

// SBOARD.NET (378) - divdst : fdsyncr6
fdsyncr6 divdst_inst
(
	.q({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]}), // IO
	.d({dstanw[0],dstanw[1],dstanw[2],dstanw[3],dstanw[4],dstanw[5]}), // IN
	.ld(div_start), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// SBOARD.NET (380) - divdmatch : cmp6
cmp6 divdmatch_inst
(
	.equal(divdeq), // OUT
	.a({dsta_reg[0],dsta_reg[1],dsta_reg[2],dsta_reg[3],dsta_reg[4],dsta_reg[5]}), // IN
	.b({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]})  // IN
);

// SBOARD.NET (381) - divsmatch : cmp6
cmp6 divsmatch_inst
(
	.equal(divseq), // OUT
	.a({srca_reg[0],srca_reg[1],srca_reg[2],srca_reg[3],srca_reg[4],srca_reg[5]}), // IN
	.b({div_wbaddr[0],div_wbaddr[1],div_wbaddr[2],div_wbaddr[3],div_wbaddr[4],div_wbaddr[5]})  // IN
);

// SBOARD.NET (382) - diveq : aor2
assign diveq = (divdeq & dsta_reg_ena) | (divseq & srca_reg_ena);

// SBOARD.NET (384) - divdwait : an2
assign divdwait = div_active & diveq;

// SBOARD.NET (390) - dwbset : an2
assign dwbset = div_active & div_activei_n;

// SBOARD.NET (391) - dwbclr : nd2
assign dwbclr = ~(div_wbackh_n & div_wbacks_n);

// SBOARD.NET (392) - dwbat0 : nr2
assign dwbat_0 = ~(div_wbackl | dwbset);

// SBOARD.NET (393) - dwbat1 : nr2
assign dwbat_1 = ~(dwbat_0 | dwbclr);

// SBOARD.NET (394) - dwbat2 : fd2q
fd2q dwbat2_inst
(
	.q(div_wbackl), // OUT
	.d(dwbat_1), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// SBOARD.NET (395) - div_wback : or2
assign div_wback = div_wbackl | dwbset;

// SBOARD.NET (396) - div_wback\ : iv
assign div_wback_n = ~div_wback;

// SBOARD.NET (402) - diviwait : oan1
assign diviwait = (div_active | div_wback) & div_instr;

// SBOARD.NET (411) - flag_pend : fd1q
fd1q flag_pend_inst
(
	.q(flag_pend), // OUT
	.d(flagld), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (412) - flagwait : an2
assign flagwait = flag_pend & flag_depend;

// SBOARD.NET (446) - wbacki : nd6
assign wbacki = ~(alu_wback_n & mov_wback_n & imm_wback_n & div_wback_n & xld_wback_n & ild_wback_n);

// SBOARD.NET (449) - wback : fd1q
fd1q wback_inst
(
	.q(wback), // OUT
	.d(wbacki), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (453) - alu_wbackh : iv
assign alu_wbackh_n = ~alu_wback;

// SBOARD.NET (454) - mov_wbackh : nd2
assign mov_wbackh_n = ~(mov_wback & alu_wback_n);

// SBOARD.NET (455) - imm_wbackh : nd3
assign imm_wbackh_n = ~(imm_wback & mov_wback_n & alu_wback_n);

// SBOARD.NET (457) - ild_wbackh : nd4p
assign ild_wbackh_n = ~(ild_wback & imm_wback_n & mov_wback_n & alu_wback_n);

// SBOARD.NET (459) - xld_wbackh : nd5
nd5 xld_wbackh_inst
(
	.q(xld_wbackh_n), // OUT
	.a_0(xld_wback), // IN
	.a_1(ild_wback_n), // IN
	.a_2(imm_wback_n), // IN
	.a_3(mov_wback_n), // IN
	.a_4(alu_wback_n)  // IN
);

// SBOARD.NET (461) - div_wbackh : nd6
assign div_wbackh_n = ~(div_wback & xld_wback_n & ild_wback_n & imm_wback_n & mov_wback_n & alu_wback_n);

// SBOARD.NET (474) - mov_wbacks : nd2
assign mov_wbacks_n = ~(mov_wback & alu_wback);

// SBOARD.NET (477) - imm_wbackst : nd2
assign imm_wbackst = ~(mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (478) - imm_wbacks : nd2
assign imm_wbacks_n = ~(imm_wback & imm_wbackst);

// SBOARD.NET (482) - ild_wbackst : nd3
assign ild_wbackst = ~(imm_wbackh_n & mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (484) - ild_wbacks : nd4p
assign ild_wbacks_n = ~(ild_wback & ild_wbackst & imm_wbacks_n & mov_wbacks_n);

// SBOARD.NET (486) - xld_wbackst : nd4
assign xld_wbackst = ~(ild_wbackh_n & imm_wbackh_n & mov_wbackh_n & alu_wbackh_n);

// SBOARD.NET (488) - xld_wbacks : nd5
nd5 xld_wbacks_inst
(
	.q(xld_wbacks_n), // OUT
	.a_0(xld_wback), // IN
	.a_1(xld_wbackst), // IN
	.a_2(imm_wback_n), // IN
	.a_3(ild_wbacks_n), // IN
	.a_4(mov_wbacks_n)  // IN
);

// SBOARD.NET (490) - div_wbackst : nd5
nd5 div_wbackst_inst
(
	.q(div_wbackst), // OUT
	.a_0(xld_wbackh_n), // IN
	.a_1(ild_wbackh_n), // IN
	.a_2(imm_wbackh_n), // IN
	.a_3(mov_wbackh_n), // IN
	.a_4(alu_wbackh_n)  // IN
);

// SBOARD.NET (492) - div_wbacks : nd6
assign div_wbacks_n = ~(div_wback & div_wbackst & xld_wback_n & imm_wback_n & ild_wbacks_n & mov_wbacks_n);

// SBOARD.NET (498) - mult_wbacki : nd5
nd5 mult_wbacki_inst
(
	.q(mult_wbacki), // OUT
	.a_0(mov_wbacks_n), // IN
	.a_1(imm_wbacks_n), // IN
	.a_2(ild_wbacks_n), // IN
	.a_3(xld_wbacks_n), // IN
	.a_4(div_wbacks_n)  // IN
);

// SBOARD.NET (500) - mult_wback : fd1q
fd1q mult_wback_inst
(
	.q(mult_wback), // OUT
	.d(mult_wbacki), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (501) - mult_wback\ : iv
assign mult_wback_n = ~mult_wback;

// SBOARD.NET (505) - hasel[0] : nd3
assign hasel_0 = ~(mov_wbackh_n & ild_wbackh_n & div_wbackh_n);

// SBOARD.NET (507) - hasel[1] : nd2
assign hasel_1 = ~(imm_wbackh_n & ild_wbackh_n);

// SBOARD.NET (508) - hasel[2] : nd2
assign hasel_2 = ~(xld_wbackh_n & div_wbackh_n);

// SBOARD.NET (509) - hwbaddr : mx8p
mx8 hwbaddr_inst_0
(
	.z(hwbaddr[0]), // OUT
	.a0(alu_wbaddr[0]), // IN
	.a1(mov_wbaddr[0]), // IN
	.a2(imm_wbaddr[0]), // IN
	.a3(ild_wbaddr[0]), // IN
	.a4(xld_wbaddr[0]), // IN
	.a5(div_wbaddr[0]), // IN
	.a6(zero6[0]), // IN
	.a7(zero6[0]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);
mx8 hwbaddr_inst_1
(
	.z(hwbaddr[1]), // OUT
	.a0(alu_wbaddr[1]), // IN
	.a1(mov_wbaddr[1]), // IN
	.a2(imm_wbaddr[1]), // IN
	.a3(ild_wbaddr[1]), // IN
	.a4(xld_wbaddr[1]), // IN
	.a5(div_wbaddr[1]), // IN
	.a6(zero6[1]), // IN
	.a7(zero6[1]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);
mx8 hwbaddr_inst_2
(
	.z(hwbaddr[2]), // OUT
	.a0(alu_wbaddr[2]), // IN
	.a1(mov_wbaddr[2]), // IN
	.a2(imm_wbaddr[2]), // IN
	.a3(ild_wbaddr[2]), // IN
	.a4(xld_wbaddr[2]), // IN
	.a5(div_wbaddr[2]), // IN
	.a6(zero6[2]), // IN
	.a7(zero6[2]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);
mx8 hwbaddr_inst_3
(
	.z(hwbaddr[3]), // OUT
	.a0(alu_wbaddr[3]), // IN
	.a1(mov_wbaddr[3]), // IN
	.a2(imm_wbaddr[3]), // IN
	.a3(ild_wbaddr[3]), // IN
	.a4(xld_wbaddr[3]), // IN
	.a5(div_wbaddr[3]), // IN
	.a6(zero6[3]), // IN
	.a7(zero6[3]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);
mx8 hwbaddr_inst_4
(
	.z(hwbaddr[4]), // OUT
	.a0(alu_wbaddr[4]), // IN
	.a1(mov_wbaddr[4]), // IN
	.a2(imm_wbaddr[4]), // IN
	.a3(ild_wbaddr[4]), // IN
	.a4(xld_wbaddr[4]), // IN
	.a5(div_wbaddr[4]), // IN
	.a6(zero6[4]), // IN
	.a7(zero6[4]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);
mx8 hwbaddr_inst_5
(
	.z(hwbaddr[5]), // OUT
	.a0(alu_wbaddr[5]), // IN
	.a1(mov_wbaddr[5]), // IN
	.a2(imm_wbaddr[5]), // IN
	.a3(ild_wbaddr[5]), // IN
	.a4(xld_wbaddr[5]), // IN
	.a5(div_wbaddr[5]), // IN
	.a6(zero6[5]), // IN
	.a7(zero6[5]), // IN
	.s0(hasel_0), // IN
	.s1(hasel_1), // IN
	.s2(hasel_2)  // IN
);

// SBOARD.NET (515) - sasel[0] : nd3
assign sasel_0 = ~(mov_wbacks_n & ild_wbacks_n & div_wbacks_n);

// SBOARD.NET (517) - sasel[1] : nd2
assign sasel_1 = ~(imm_wbacks_n & ild_wbacks_n);

// SBOARD.NET (518) - sasel[2] : nd2
assign sasel_2 = ~(xld_wbacks_n & div_wbacks_n);

// SBOARD.NET (519) - swbaddr : mx8
mx8 swbaddr_inst_0
(
	.z(swbaddr[0]), // OUT
	.a0(alu_wbaddr[0]), // IN
	.a1(mov_wbaddr[0]), // IN
	.a2(imm_wbaddr[0]), // IN
	.a3(ild_wbaddr[0]), // IN
	.a4(xld_wbaddr[0]), // IN
	.a5(div_wbaddr[0]), // IN
	.a6(zero6[0]), // IN
	.a7(zero6[0]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);
mx8 swbaddr_inst_1
(
	.z(swbaddr[1]), // OUT
	.a0(alu_wbaddr[1]), // IN
	.a1(mov_wbaddr[1]), // IN
	.a2(imm_wbaddr[1]), // IN
	.a3(ild_wbaddr[1]), // IN
	.a4(xld_wbaddr[1]), // IN
	.a5(div_wbaddr[1]), // IN
	.a6(zero6[1]), // IN
	.a7(zero6[1]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);
mx8 swbaddr_inst_2
(
	.z(swbaddr[2]), // OUT
	.a0(alu_wbaddr[2]), // IN
	.a1(mov_wbaddr[2]), // IN
	.a2(imm_wbaddr[2]), // IN
	.a3(ild_wbaddr[2]), // IN
	.a4(xld_wbaddr[2]), // IN
	.a5(div_wbaddr[2]), // IN
	.a6(zero6[2]), // IN
	.a7(zero6[2]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);
mx8 swbaddr_inst_3
(
	.z(swbaddr[3]), // OUT
	.a0(alu_wbaddr[3]), // IN
	.a1(mov_wbaddr[3]), // IN
	.a2(imm_wbaddr[3]), // IN
	.a3(ild_wbaddr[3]), // IN
	.a4(xld_wbaddr[3]), // IN
	.a5(div_wbaddr[3]), // IN
	.a6(zero6[3]), // IN
	.a7(zero6[3]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);
mx8 swbaddr_inst_4
(
	.z(swbaddr[4]), // OUT
	.a0(alu_wbaddr[4]), // IN
	.a1(mov_wbaddr[4]), // IN
	.a2(imm_wbaddr[4]), // IN
	.a3(ild_wbaddr[4]), // IN
	.a4(xld_wbaddr[4]), // IN
	.a5(div_wbaddr[4]), // IN
	.a6(zero6[4]), // IN
	.a7(zero6[4]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);
mx8 swbaddr_inst_5
(
	.z(swbaddr[5]), // OUT
	.a0(alu_wbaddr[5]), // IN
	.a1(mov_wbaddr[5]), // IN
	.a2(imm_wbaddr[5]), // IN
	.a3(ild_wbaddr[5]), // IN
	.a4(xld_wbaddr[5]), // IN
	.a5(div_wbaddr[5]), // IN
	.a6(zero6[5]), // IN
	.a7(zero6[5]), // IN
	.s0(sasel_0), // IN
	.s1(sasel_1), // IN
	.s2(sasel_2)  // IN
);

// SBOARD.NET (531) - wbdcmpt[0-5] : enp
assign wbdcmpt_0 = ~(hwbaddr[0] ^ dstanwi[0]);
assign wbdcmpt_1 = ~(hwbaddr[1] ^ dstanwi[1]);
assign wbdcmpt_2 = ~(hwbaddr[2] ^ dstanwi[2]);
assign wbdcmpt_3 = ~(hwbaddr[3] ^ dstanwi[3]);
assign wbdcmpt_4 = ~(hwbaddr[4] ^ dstanwi[4]);
assign wbdcmpt_5 = ~(hwbaddr[5] ^ dstanwi[5]);

// SBOARD.NET (532) - wbdeqi\ : nd6
assign wbdeqi_n = ~(wbdcmpt_0 & wbdcmpt_1 & wbdcmpt_2 & wbdcmpt_3 & wbdcmpt_4 & wbdcmpt_5);

// SBOARD.NET (533) - wbdeqit : an4
assign wbdeqit = wbdcmpt_0 & wbdcmpt_1 & wbdcmpt_2 & wbdcmpt_3;

// SBOARD.NET (534) - wbdeqi : an3
assign wbdeqi = wbdeqit & wbdcmpt_4 & wbdcmpt_5;

// SBOARD.NET (536) - wbdeq\ : fd1q
fd1q wbdeq_n_inst
(
	.q(wbdeq_n), // OUT
	.d(wbdeqi_n), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (537) - wbscmp : cmp6i
cmp6i wbscmp_inst
(
	.equal_n(wbseqi_n), // OUT
	.a({hwbaddr[0],hwbaddr[1],hwbaddr[2],hwbaddr[3],hwbaddr[4],hwbaddr[5]}), // IN
	.b({srcanwi[0],srcanwi[1],srcanwi[2],srcanwi[3],srcanwi[4],srcanwi[5]})  // IN
);

// SBOARD.NET (538) - wbdsq : fd1q
fd1q wbdsq_inst
(
	.q(wbseq_n), // OUT
	.d(wbseqi_n), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (539) - bothen : an3
assign bothen = srcrrd & dstren & insexe;

// SBOARD.NET (540) - wbwaitt : nd4
assign wbwaitt = ~(wbdeq_n & wbseq_n & bothen & wback);

// SBOARD.NET (541) - wbwait : nd2
assign wbwait = ~(wbwaitt & mult_wback_n);

// SBOARD.NET (553) - dwbt0 : nd2p
assign dwbt_0 = ~(wbacki & wbdeqi);

// SBOARD.NET (554) - dwbt4 : nd2
assign dwbt_4 = ~(comp1i & datwe);

// SBOARD.NET (555) - dwbt5 : nd2
assign dwbt_5 = ~(insexei & dstrrdi);

// SBOARD.NET (556) - dwbt6 : nd2
assign dwbt_6 = ~(insexei & dstrwri);

// SBOARD.NET (557) - dwbt1 : an3
assign dwbt_1 = dwbt_4 & dwbt_5 & dwbt_6;

// SBOARD.NET (558) - dwbt2 : nd2p
assign dwbt_2 = ~(wbacki & dwbt_1);

// SBOARD.NET (559) - dwbt3 : nd2p
assign dwbt_3 = ~(wbacki & mult_wbacki);

// SBOARD.NET (560) - dstwbwei : nd3
assign dstwbwei = ~(dwbt_0 & dwbt_2 & dwbt_3);

// SBOARD.NET (561) - dstwbwe : fd1p
fd1 dstwbwe_inst
(
	.q(dstwbwet), // OUT
	.qn(dstwbwe_n), // OUT
	.d(dstwbwei), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (562) - dstwbweb : nivm
assign dstwbwe = dstwbwet;

// SBOARD.NET (573) - swbt0 : nd4
assign swbt_0 = ~(wbacki & dwbt_0 & dwbt_2 & dwbt_3);

// SBOARD.NET (574) - swbt1 : nd2
assign swbt_1 = ~(wbacki & mult_wbacki);

// SBOARD.NET (575) - srcwbwei : nd2
assign srcwbwei = ~(swbt_0 & swbt_1);

// SBOARD.NET (576) - srcwbwe : fd1qm
fd1q srcwbwe_inst
(
	.q(srcwbwe), // OUT
	.d(srcwbwei), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (580) - dstwbaddr : fd1q
fd1q dstwbaddr_inst_0
(
	.q(dstwbaddr[0]), // OUT
	.d(hwbaddr[0]), // IN
	.cp(clk)  // IN
);
fd1q dstwbaddr_inst_1
(
	.q(dstwbaddr[1]), // OUT
	.d(hwbaddr[1]), // IN
	.cp(clk)  // IN
);
fd1q dstwbaddr_inst_2
(
	.q(dstwbaddr[2]), // OUT
	.d(hwbaddr[2]), // IN
	.cp(clk)  // IN
);
fd1q dstwbaddr_inst_3
(
	.q(dstwbaddr[3]), // OUT
	.d(hwbaddr[3]), // IN
	.cp(clk)  // IN
);
fd1q dstwbaddr_inst_4
(
	.q(dstwbaddr[4]), // OUT
	.d(hwbaddr[4]), // IN
	.cp(clk)  // IN
);
fd1q dstwbaddr_inst_5
(
	.q(dstwbaddr[5]), // OUT
	.d(hwbaddr[5]), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (581) - dsta : mx2
mx2 dsta_inst_0
(
	.z(dsta[0]), // OUT
	.a0(dstanw[0]), // IN
	.a1(dstwbaddr[0]), // IN
	.s(dstwbwe)  // IN
);
mx2 dsta_inst_1
(
	.z(dsta[1]), // OUT
	.a0(dstanw[1]), // IN
	.a1(dstwbaddr[1]), // IN
	.s(dstwbwe)  // IN
);
mx2 dsta_inst_2
(
	.z(dsta[2]), // OUT
	.a0(dstanw[2]), // IN
	.a1(dstwbaddr[2]), // IN
	.s(dstwbwe)  // IN
);
mx2 dsta_inst_3
(
	.z(dsta[3]), // OUT
	.a0(dstanw[3]), // IN
	.a1(dstwbaddr[3]), // IN
	.s(dstwbwe)  // IN
);
mx2 dsta_inst_4
(
	.z(dsta[4]), // OUT
	.a0(dstanw[4]), // IN
	.a1(dstwbaddr[4]), // IN
	.s(dstwbwe)  // IN
);
mx2 dsta_inst_5
(
	.z(dsta[5]), // OUT
	.a0(dstanw[5]), // IN
	.a1(dstwbaddr[5]), // IN
	.s(dstwbwe)  // IN
);

// SBOARD.NET (585) - srcwbaddr : fd1q
fd1q srcwbaddr_inst_0
(
	.q(srcwbaddr[0]), // OUT
	.d(swbaddr[0]), // IN
	.cp(clk)  // IN
);
fd1q srcwbaddr_inst_1
(
	.q(srcwbaddr[1]), // OUT
	.d(swbaddr[1]), // IN
	.cp(clk)  // IN
);
fd1q srcwbaddr_inst_2
(
	.q(srcwbaddr[2]), // OUT
	.d(swbaddr[2]), // IN
	.cp(clk)  // IN
);
fd1q srcwbaddr_inst_3
(
	.q(srcwbaddr[3]), // OUT
	.d(swbaddr[3]), // IN
	.cp(clk)  // IN
);
fd1q srcwbaddr_inst_4
(
	.q(srcwbaddr[4]), // OUT
	.d(swbaddr[4]), // IN
	.cp(clk)  // IN
);
fd1q srcwbaddr_inst_5
(
	.q(srcwbaddr[5]), // OUT
	.d(swbaddr[5]), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (586) - srca : mx4
mx4 srca_inst_0
(
	.z(srca[0]), // OUT
	.a0(srcanw[0]), // IN
	.a1(srcwbaddr[0]), // IN
	.a2(srcanw[0]), // IN
	.a3(dstwbaddr[0]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);
mx4 srca_inst_1
(
	.z(srca[1]), // OUT
	.a0(srcanw[1]), // IN
	.a1(srcwbaddr[1]), // IN
	.a2(srcanw[1]), // IN
	.a3(dstwbaddr[1]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);
mx4 srca_inst_2
(
	.z(srca[2]), // OUT
	.a0(srcanw[2]), // IN
	.a1(srcwbaddr[2]), // IN
	.a2(srcanw[2]), // IN
	.a3(dstwbaddr[2]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);
mx4 srca_inst_3
(
	.z(srca[3]), // OUT
	.a0(srcanw[3]), // IN
	.a1(srcwbaddr[3]), // IN
	.a2(srcanw[3]), // IN
	.a3(dstwbaddr[3]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);
mx4 srca_inst_4
(
	.z(srca[4]), // OUT
	.a0(srcanw[4]), // IN
	.a1(srcwbaddr[4]), // IN
	.a2(srcanw[4]), // IN
	.a3(dstwbaddr[4]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);
mx4 srca_inst_5
(
	.z(srca[5]), // OUT
	.a0(srcanw[5]), // IN
	.a1(srcwbaddr[5]), // IN
	.a2(srcanw[5]), // IN
	.a3(dstwbaddr[5]), // IN
	.s0(srcwbwe), // IN
	.s1(dstwbwe_n)  // IN
);

// SBOARD.NET (596) - xldd_selt : nd2
assign xldd_selt = ~(xld_wbackh_n & xld_wbacks_n);

// SBOARD.NET (597) - xldd_sel : fd1qu
fd1q xldd_sel_inst
(
	.q(xldd_sel), // OUT
	.d(xldd_selt), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (598) - xldd_sel\ : iv
assign xldd_sel_n = ~xldd_sel;

// SBOARD.NET (599) - divd_selt : nd2
assign divd_selt = ~(div_wbackh_n & div_wbacks_n);

// SBOARD.NET (600) - divd_sel : fd1qu
fd1q divd_sel_inst
(
	.q(divd_sel), // OUT
	.d(divd_selt), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (601) - mxdata : mx4
mx4 mxdata_inst_0
(
	.z(mxdata[0]), // OUT
	.a0(immdata[0]), // IN
	.a1(quotient[0]), // IN
	.a2(xld_data[0]), // IN
	.a3(xld_data[0]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_1
(
	.z(mxdata[1]), // OUT
	.a0(immdata[1]), // IN
	.a1(quotient[1]), // IN
	.a2(xld_data[1]), // IN
	.a3(xld_data[1]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_2
(
	.z(mxdata[2]), // OUT
	.a0(immdata[2]), // IN
	.a1(quotient[2]), // IN
	.a2(xld_data[2]), // IN
	.a3(xld_data[2]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_3
(
	.z(mxdata[3]), // OUT
	.a0(immdata[3]), // IN
	.a1(quotient[3]), // IN
	.a2(xld_data[3]), // IN
	.a3(xld_data[3]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_4
(
	.z(mxdata[4]), // OUT
	.a0(immdata[4]), // IN
	.a1(quotient[4]), // IN
	.a2(xld_data[4]), // IN
	.a3(xld_data[4]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_5
(
	.z(mxdata[5]), // OUT
	.a0(immdata[5]), // IN
	.a1(quotient[5]), // IN
	.a2(xld_data[5]), // IN
	.a3(xld_data[5]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_6
(
	.z(mxdata[6]), // OUT
	.a0(immdata[6]), // IN
	.a1(quotient[6]), // IN
	.a2(xld_data[6]), // IN
	.a3(xld_data[6]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_7
(
	.z(mxdata[7]), // OUT
	.a0(immdata[7]), // IN
	.a1(quotient[7]), // IN
	.a2(xld_data[7]), // IN
	.a3(xld_data[7]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_8
(
	.z(mxdata[8]), // OUT
	.a0(immdata[8]), // IN
	.a1(quotient[8]), // IN
	.a2(xld_data[8]), // IN
	.a3(xld_data[8]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_9
(
	.z(mxdata[9]), // OUT
	.a0(immdata[9]), // IN
	.a1(quotient[9]), // IN
	.a2(xld_data[9]), // IN
	.a3(xld_data[9]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_10
(
	.z(mxdata[10]), // OUT
	.a0(immdata[10]), // IN
	.a1(quotient[10]), // IN
	.a2(xld_data[10]), // IN
	.a3(xld_data[10]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_11
(
	.z(mxdata[11]), // OUT
	.a0(immdata[11]), // IN
	.a1(quotient[11]), // IN
	.a2(xld_data[11]), // IN
	.a3(xld_data[11]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_12
(
	.z(mxdata[12]), // OUT
	.a0(immdata[12]), // IN
	.a1(quotient[12]), // IN
	.a2(xld_data[12]), // IN
	.a3(xld_data[12]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_13
(
	.z(mxdata[13]), // OUT
	.a0(immdata[13]), // IN
	.a1(quotient[13]), // IN
	.a2(xld_data[13]), // IN
	.a3(xld_data[13]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_14
(
	.z(mxdata[14]), // OUT
	.a0(immdata[14]), // IN
	.a1(quotient[14]), // IN
	.a2(xld_data[14]), // IN
	.a3(xld_data[14]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_15
(
	.z(mxdata[15]), // OUT
	.a0(immdata[15]), // IN
	.a1(quotient[15]), // IN
	.a2(xld_data[15]), // IN
	.a3(xld_data[15]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_16
(
	.z(mxdata[16]), // OUT
	.a0(immdata[16]), // IN
	.a1(quotient[16]), // IN
	.a2(xld_data[16]), // IN
	.a3(xld_data[16]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_17
(
	.z(mxdata[17]), // OUT
	.a0(immdata[17]), // IN
	.a1(quotient[17]), // IN
	.a2(xld_data[17]), // IN
	.a3(xld_data[17]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_18
(
	.z(mxdata[18]), // OUT
	.a0(immdata[18]), // IN
	.a1(quotient[18]), // IN
	.a2(xld_data[18]), // IN
	.a3(xld_data[18]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_19
(
	.z(mxdata[19]), // OUT
	.a0(immdata[19]), // IN
	.a1(quotient[19]), // IN
	.a2(xld_data[19]), // IN
	.a3(xld_data[19]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_20
(
	.z(mxdata[20]), // OUT
	.a0(immdata[20]), // IN
	.a1(quotient[20]), // IN
	.a2(xld_data[20]), // IN
	.a3(xld_data[20]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_21
(
	.z(mxdata[21]), // OUT
	.a0(immdata[21]), // IN
	.a1(quotient[21]), // IN
	.a2(xld_data[21]), // IN
	.a3(xld_data[21]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_22
(
	.z(mxdata[22]), // OUT
	.a0(immdata[22]), // IN
	.a1(quotient[22]), // IN
	.a2(xld_data[22]), // IN
	.a3(xld_data[22]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_23
(
	.z(mxdata[23]), // OUT
	.a0(immdata[23]), // IN
	.a1(quotient[23]), // IN
	.a2(xld_data[23]), // IN
	.a3(xld_data[23]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_24
(
	.z(mxdata[24]), // OUT
	.a0(immdata[24]), // IN
	.a1(quotient[24]), // IN
	.a2(xld_data[24]), // IN
	.a3(xld_data[24]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_25
(
	.z(mxdata[25]), // OUT
	.a0(immdata[25]), // IN
	.a1(quotient[25]), // IN
	.a2(xld_data[25]), // IN
	.a3(xld_data[25]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_26
(
	.z(mxdata[26]), // OUT
	.a0(immdata[26]), // IN
	.a1(quotient[26]), // IN
	.a2(xld_data[26]), // IN
	.a3(xld_data[26]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_27
(
	.z(mxdata[27]), // OUT
	.a0(immdata[27]), // IN
	.a1(quotient[27]), // IN
	.a2(xld_data[27]), // IN
	.a3(xld_data[27]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_28
(
	.z(mxdata[28]), // OUT
	.a0(immdata[28]), // IN
	.a1(quotient[28]), // IN
	.a2(xld_data[28]), // IN
	.a3(xld_data[28]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_29
(
	.z(mxdata[29]), // OUT
	.a0(immdata[29]), // IN
	.a1(quotient[29]), // IN
	.a2(xld_data[29]), // IN
	.a3(xld_data[29]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_30
(
	.z(mxdata[30]), // OUT
	.a0(immdata[30]), // IN
	.a1(quotient[30]), // IN
	.a2(xld_data[30]), // IN
	.a3(xld_data[30]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);
mx4 mxdata_inst_31
(
	.z(mxdata[31]), // OUT
	.a0(immdata[31]), // IN
	.a1(quotient[31]), // IN
	.a2(xld_data[31]), // IN
	.a3(xld_data[31]), // IN
	.s0(divd_sel), // IN
	.s1(xldd_sel)  // IN
);

// SBOARD.NET (609) - dwselt[0] : nd2
assign dwselt_0 = ~(alu_wbackh_n & mov_wbackh_n);

// SBOARD.NET (610) - dwselt[1] : nd2
assign dwselt_1 = ~(ild_wbackh_n & mov_wbackh_n);

// SBOARD.NET (611) - dwsel[0-1] : fd1q
fd1q dwsel_from_0_to_1_inst_0
(
	.q(dwsel_0), // OUT
	.d(dwselt_0), // IN
	.cp(clk)  // IN
);
fd1q dwsel_from_0_to_1_inst_1
(
	.q(dwsel_1), // OUT
	.d(dwselt_1), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (612) - dwselb[0-1] : nivu
assign dwselb_0 = dwsel_0;
assign dwselb_1 = dwsel_1;

// SBOARD.NET (613) - dstwdmux : mx4
mx4 dstwdmux_inst_0
(
	.z(dstwd[0]), // OUT
	.a0(mxdata[0]), // IN
	.a1(result[0]), // IN
	.a2(ild_data[0]), // IN
	.a3(srcdp[0]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_1
(
	.z(dstwd[1]), // OUT
	.a0(mxdata[1]), // IN
	.a1(result[1]), // IN
	.a2(ild_data[1]), // IN
	.a3(srcdp[1]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_2
(
	.z(dstwd[2]), // OUT
	.a0(mxdata[2]), // IN
	.a1(result[2]), // IN
	.a2(ild_data[2]), // IN
	.a3(srcdp[2]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_3
(
	.z(dstwd[3]), // OUT
	.a0(mxdata[3]), // IN
	.a1(result[3]), // IN
	.a2(ild_data[3]), // IN
	.a3(srcdp[3]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_4
(
	.z(dstwd[4]), // OUT
	.a0(mxdata[4]), // IN
	.a1(result[4]), // IN
	.a2(ild_data[4]), // IN
	.a3(srcdp[4]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_5
(
	.z(dstwd[5]), // OUT
	.a0(mxdata[5]), // IN
	.a1(result[5]), // IN
	.a2(ild_data[5]), // IN
	.a3(srcdp[5]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_6
(
	.z(dstwd[6]), // OUT
	.a0(mxdata[6]), // IN
	.a1(result[6]), // IN
	.a2(ild_data[6]), // IN
	.a3(srcdp[6]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_7
(
	.z(dstwd[7]), // OUT
	.a0(mxdata[7]), // IN
	.a1(result[7]), // IN
	.a2(ild_data[7]), // IN
	.a3(srcdp[7]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_8
(
	.z(dstwd[8]), // OUT
	.a0(mxdata[8]), // IN
	.a1(result[8]), // IN
	.a2(ild_data[8]), // IN
	.a3(srcdp[8]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_9
(
	.z(dstwd[9]), // OUT
	.a0(mxdata[9]), // IN
	.a1(result[9]), // IN
	.a2(ild_data[9]), // IN
	.a3(srcdp[9]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_10
(
	.z(dstwd[10]), // OUT
	.a0(mxdata[10]), // IN
	.a1(result[10]), // IN
	.a2(ild_data[10]), // IN
	.a3(srcdp[10]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_11
(
	.z(dstwd[11]), // OUT
	.a0(mxdata[11]), // IN
	.a1(result[11]), // IN
	.a2(ild_data[11]), // IN
	.a3(srcdp[11]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_12
(
	.z(dstwd[12]), // OUT
	.a0(mxdata[12]), // IN
	.a1(result[12]), // IN
	.a2(ild_data[12]), // IN
	.a3(srcdp[12]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_13
(
	.z(dstwd[13]), // OUT
	.a0(mxdata[13]), // IN
	.a1(result[13]), // IN
	.a2(ild_data[13]), // IN
	.a3(srcdp[13]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_14
(
	.z(dstwd[14]), // OUT
	.a0(mxdata[14]), // IN
	.a1(result[14]), // IN
	.a2(ild_data[14]), // IN
	.a3(srcdp[14]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_15
(
	.z(dstwd[15]), // OUT
	.a0(mxdata[15]), // IN
	.a1(result[15]), // IN
	.a2(ild_data[15]), // IN
	.a3(srcdp[15]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_16
(
	.z(dstwd[16]), // OUT
	.a0(mxdata[16]), // IN
	.a1(result[16]), // IN
	.a2(ild_data[16]), // IN
	.a3(srcdp[16]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_17
(
	.z(dstwd[17]), // OUT
	.a0(mxdata[17]), // IN
	.a1(result[17]), // IN
	.a2(ild_data[17]), // IN
	.a3(srcdp[17]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_18
(
	.z(dstwd[18]), // OUT
	.a0(mxdata[18]), // IN
	.a1(result[18]), // IN
	.a2(ild_data[18]), // IN
	.a3(srcdp[18]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_19
(
	.z(dstwd[19]), // OUT
	.a0(mxdata[19]), // IN
	.a1(result[19]), // IN
	.a2(ild_data[19]), // IN
	.a3(srcdp[19]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_20
(
	.z(dstwd[20]), // OUT
	.a0(mxdata[20]), // IN
	.a1(result[20]), // IN
	.a2(ild_data[20]), // IN
	.a3(srcdp[20]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_21
(
	.z(dstwd[21]), // OUT
	.a0(mxdata[21]), // IN
	.a1(result[21]), // IN
	.a2(ild_data[21]), // IN
	.a3(srcdp[21]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_22
(
	.z(dstwd[22]), // OUT
	.a0(mxdata[22]), // IN
	.a1(result[22]), // IN
	.a2(ild_data[22]), // IN
	.a3(srcdp[22]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_23
(
	.z(dstwd[23]), // OUT
	.a0(mxdata[23]), // IN
	.a1(result[23]), // IN
	.a2(ild_data[23]), // IN
	.a3(srcdp[23]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_24
(
	.z(dstwd[24]), // OUT
	.a0(mxdata[24]), // IN
	.a1(result[24]), // IN
	.a2(ild_data[24]), // IN
	.a3(srcdp[24]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_25
(
	.z(dstwd[25]), // OUT
	.a0(mxdata[25]), // IN
	.a1(result[25]), // IN
	.a2(ild_data[25]), // IN
	.a3(srcdp[25]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_26
(
	.z(dstwd[26]), // OUT
	.a0(mxdata[26]), // IN
	.a1(result[26]), // IN
	.a2(ild_data[26]), // IN
	.a3(srcdp[26]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_27
(
	.z(dstwd[27]), // OUT
	.a0(mxdata[27]), // IN
	.a1(result[27]), // IN
	.a2(ild_data[27]), // IN
	.a3(srcdp[27]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_28
(
	.z(dstwd[28]), // OUT
	.a0(mxdata[28]), // IN
	.a1(result[28]), // IN
	.a2(ild_data[28]), // IN
	.a3(srcdp[28]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_29
(
	.z(dstwd[29]), // OUT
	.a0(mxdata[29]), // IN
	.a1(result[29]), // IN
	.a2(ild_data[29]), // IN
	.a3(srcdp[29]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_30
(
	.z(dstwd[30]), // OUT
	.a0(mxdata[30]), // IN
	.a1(result[30]), // IN
	.a2(ild_data[30]), // IN
	.a3(srcdp[30]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);
mx4 dstwdmux_inst_31
(
	.z(dstwd[31]), // OUT
	.a0(mxdata[31]), // IN
	.a1(result[31]), // IN
	.a2(ild_data[31]), // IN
	.a3(srcdp[31]), // IN
	.s0(dwselb_0), // IN
	.s1(dwselb_1)  // IN
);

// SBOARD.NET (622) - swselti[0] : iv
assign swselti_0 = ~mov_wbacks_n;

// SBOARD.NET (623) - swselti[1] : nd2
assign swselti_1 = ~(ild_wbacks_n & mov_wbacks_n);

// SBOARD.NET (624) - swselt[0-1] : fd1q
fd1q swselt_from_0_to_1_inst_0
(
	.q(swselt_0), // OUT
	.d(swselti_0), // IN
	.cp(clk)  // IN
);
fd1q swselt_from_0_to_1_inst_1
(
	.q(swselt_1), // OUT
	.d(swselti_1), // IN
	.cp(clk)  // IN
);

// SBOARD.NET (625) - swsel[0-1] : mx2
mx2 swsel_from_0_to_1_inst_0
(
	.z(swsel_0), // OUT
	.a0(dwsel_0), // IN
	.a1(swselt_0), // IN
	.s(dstwbwe)  // IN
);
mx2 swsel_from_0_to_1_inst_1
(
	.z(swsel_1), // OUT
	.a0(dwsel_1), // IN
	.a1(swselt_1), // IN
	.s(dstwbwe)  // IN
);

// SBOARD.NET (627) - swselb[0-1] : nivu
assign swselb_0 = swsel_0;
assign swselb_1 = swsel_1;

// SBOARD.NET (628) - srcwdmux : mx4
mx4 srcwdmux_inst_0
(
	.z(srcwd[0]), // OUT
	.a0(mxdata[0]), // IN
	.a1(result[0]), // IN
	.a2(ild_data[0]), // IN
	.a3(srcdp[0]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_1
(
	.z(srcwd[1]), // OUT
	.a0(mxdata[1]), // IN
	.a1(result[1]), // IN
	.a2(ild_data[1]), // IN
	.a3(srcdp[1]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_2
(
	.z(srcwd[2]), // OUT
	.a0(mxdata[2]), // IN
	.a1(result[2]), // IN
	.a2(ild_data[2]), // IN
	.a3(srcdp[2]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_3
(
	.z(srcwd[3]), // OUT
	.a0(mxdata[3]), // IN
	.a1(result[3]), // IN
	.a2(ild_data[3]), // IN
	.a3(srcdp[3]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_4
(
	.z(srcwd[4]), // OUT
	.a0(mxdata[4]), // IN
	.a1(result[4]), // IN
	.a2(ild_data[4]), // IN
	.a3(srcdp[4]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_5
(
	.z(srcwd[5]), // OUT
	.a0(mxdata[5]), // IN
	.a1(result[5]), // IN
	.a2(ild_data[5]), // IN
	.a3(srcdp[5]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_6
(
	.z(srcwd[6]), // OUT
	.a0(mxdata[6]), // IN
	.a1(result[6]), // IN
	.a2(ild_data[6]), // IN
	.a3(srcdp[6]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_7
(
	.z(srcwd[7]), // OUT
	.a0(mxdata[7]), // IN
	.a1(result[7]), // IN
	.a2(ild_data[7]), // IN
	.a3(srcdp[7]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_8
(
	.z(srcwd[8]), // OUT
	.a0(mxdata[8]), // IN
	.a1(result[8]), // IN
	.a2(ild_data[8]), // IN
	.a3(srcdp[8]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_9
(
	.z(srcwd[9]), // OUT
	.a0(mxdata[9]), // IN
	.a1(result[9]), // IN
	.a2(ild_data[9]), // IN
	.a3(srcdp[9]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_10
(
	.z(srcwd[10]), // OUT
	.a0(mxdata[10]), // IN
	.a1(result[10]), // IN
	.a2(ild_data[10]), // IN
	.a3(srcdp[10]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_11
(
	.z(srcwd[11]), // OUT
	.a0(mxdata[11]), // IN
	.a1(result[11]), // IN
	.a2(ild_data[11]), // IN
	.a3(srcdp[11]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_12
(
	.z(srcwd[12]), // OUT
	.a0(mxdata[12]), // IN
	.a1(result[12]), // IN
	.a2(ild_data[12]), // IN
	.a3(srcdp[12]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_13
(
	.z(srcwd[13]), // OUT
	.a0(mxdata[13]), // IN
	.a1(result[13]), // IN
	.a2(ild_data[13]), // IN
	.a3(srcdp[13]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_14
(
	.z(srcwd[14]), // OUT
	.a0(mxdata[14]), // IN
	.a1(result[14]), // IN
	.a2(ild_data[14]), // IN
	.a3(srcdp[14]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_15
(
	.z(srcwd[15]), // OUT
	.a0(mxdata[15]), // IN
	.a1(result[15]), // IN
	.a2(ild_data[15]), // IN
	.a3(srcdp[15]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_16
(
	.z(srcwd[16]), // OUT
	.a0(mxdata[16]), // IN
	.a1(result[16]), // IN
	.a2(ild_data[16]), // IN
	.a3(srcdp[16]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_17
(
	.z(srcwd[17]), // OUT
	.a0(mxdata[17]), // IN
	.a1(result[17]), // IN
	.a2(ild_data[17]), // IN
	.a3(srcdp[17]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_18
(
	.z(srcwd[18]), // OUT
	.a0(mxdata[18]), // IN
	.a1(result[18]), // IN
	.a2(ild_data[18]), // IN
	.a3(srcdp[18]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_19
(
	.z(srcwd[19]), // OUT
	.a0(mxdata[19]), // IN
	.a1(result[19]), // IN
	.a2(ild_data[19]), // IN
	.a3(srcdp[19]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_20
(
	.z(srcwd[20]), // OUT
	.a0(mxdata[20]), // IN
	.a1(result[20]), // IN
	.a2(ild_data[20]), // IN
	.a3(srcdp[20]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_21
(
	.z(srcwd[21]), // OUT
	.a0(mxdata[21]), // IN
	.a1(result[21]), // IN
	.a2(ild_data[21]), // IN
	.a3(srcdp[21]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_22
(
	.z(srcwd[22]), // OUT
	.a0(mxdata[22]), // IN
	.a1(result[22]), // IN
	.a2(ild_data[22]), // IN
	.a3(srcdp[22]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_23
(
	.z(srcwd[23]), // OUT
	.a0(mxdata[23]), // IN
	.a1(result[23]), // IN
	.a2(ild_data[23]), // IN
	.a3(srcdp[23]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_24
(
	.z(srcwd[24]), // OUT
	.a0(mxdata[24]), // IN
	.a1(result[24]), // IN
	.a2(ild_data[24]), // IN
	.a3(srcdp[24]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_25
(
	.z(srcwd[25]), // OUT
	.a0(mxdata[25]), // IN
	.a1(result[25]), // IN
	.a2(ild_data[25]), // IN
	.a3(srcdp[25]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_26
(
	.z(srcwd[26]), // OUT
	.a0(mxdata[26]), // IN
	.a1(result[26]), // IN
	.a2(ild_data[26]), // IN
	.a3(srcdp[26]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_27
(
	.z(srcwd[27]), // OUT
	.a0(mxdata[27]), // IN
	.a1(result[27]), // IN
	.a2(ild_data[27]), // IN
	.a3(srcdp[27]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_28
(
	.z(srcwd[28]), // OUT
	.a0(mxdata[28]), // IN
	.a1(result[28]), // IN
	.a2(ild_data[28]), // IN
	.a3(srcdp[28]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_29
(
	.z(srcwd[29]), // OUT
	.a0(mxdata[29]), // IN
	.a1(result[29]), // IN
	.a2(ild_data[29]), // IN
	.a3(srcdp[29]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_30
(
	.z(srcwd[30]), // OUT
	.a0(mxdata[30]), // IN
	.a1(result[30]), // IN
	.a2(ild_data[30]), // IN
	.a3(srcdp[30]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);
mx4 srcwdmux_inst_31
(
	.z(srcwd[31]), // OUT
	.a0(mxdata[31]), // IN
	.a1(result[31]), // IN
	.a2(ild_data[31]), // IN
	.a3(srcdp[31]), // IN
	.s0(swselb_0), // IN
	.s1(swselb_1)  // IN
);

// SBOARD.NET (633) - srcrwen\ : iv
assign srcrwen_n = ~srcwbwe;

// SBOARD.NET (637) - dstrwen\ : iv
assign dstrwen_n = ~dstwbwe;

// SBOARD.NET (641) - sbwaitt0 : nr2
assign sbwaitt_0 = ~(wbwait | divdwait);

// SBOARD.NET (642) - sbwaitt1 : nr2
assign sbwaitt_1 = ~(diviwait | aludwait);

// SBOARD.NET (643) - sbwaitt2 : nr2
assign sbwaitt_2 = ~(flagwait | xlddwait);

// SBOARD.NET (644) - sbwaitt3 : nr2
assign sbwaitt_3 = ~(mbusywait | ldwait);

// SBOARD.NET (645) - sbwait : nd4p
assign sbwait = ~(sbwaitt_0 & sbwaitt_1 & sbwaitt_2 & sbwaitt_3);
endmodule
