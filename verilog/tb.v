`include "defs.v"

module tb
(
);


reg						xbgl 			= 1'b0;
reg		[0:1]		xdbrl 		= 2'b11;
reg						xlp				= 1'b0;
reg						xdint			= 1'b0;
reg						xtest			= 1'b0;
reg						xpclk;
reg						xvclk;
reg						xwaitl		= 1'b1;
reg						xresetl;

wire	[0:63]	xd;
wire	[0:23]	xa;
wire	[0:10]	xma;
wire					xhs;
wire					xvs;
wire	[0:1]		xsiz;
wire	[0:2]		xfc;
wire					xrw;
wire					xdreql;
wire					xba;
wire					xbrl;

wire	[0:7]		xr;
wire	[0:7]		xg;
wire	[0:7]		xb;
wire					xinc;
wire	[0:2]		xoel;
wire	[0:2]		xmaska;
wire	[0:1]		xromcsl;
wire	[0:1]		xcasl;
wire					xdbgl;
wire					xexpl;
wire					xdspcsl;
wire	[0:7]		xwel;
wire	[0:1]		xrasl;
wire					xdtackl;
wire					xintl;

// Clocks
always
begin
	xvclk     = 1'b1;
	forever #18 xvclk = ~xvclk;
end

always
begin
	xpclk     = 1'b1;
	forever #36 xpclk = ~xpclk;
end

// Reset
initial
begin
	xresetl 	= 1'b0;
	#40 xresetl  = 1'b1;
end

tom tom_inst
(
	.xbgl(xbgl),
	.xdbrl_0(xdbrl[0]),
	.xdbrl_1(xdbrl[1]),
	.xlp(xlp),
	.xdint(xdint),
	.xtest(xtest),
	.xpclk(xpclk),
	.xvclk(xvclk),
	.xwaitl(xwaitl),
	.xresetl(xresetl),
	.xd_0(xd[0]),
	.xd_1(xd[1]),
	.xd_2(xd[2]),
	.xd_3(xd[3]),
	.xd_4(xd[4]),
	.xd_5(xd[5]),
	.xd_6(xd[6]),
	.xd_7(xd[7]),
	.xd_8(xd[8]),
	.xd_9(xd[9]),
	.xd_10(xd[10]),
	.xd_11(xd[11]),
	.xd_12(xd[12]),
	.xd_13(xd[13]),
	.xd_14(xd[14]),
	.xd_15(xd[15]),
	.xd_16(xd[16]),
	.xd_17(xd[17]),
	.xd_18(xd[18]),
	.xd_19(xd[19]),
	.xd_20(xd[20]),
	.xd_21(xd[21]),
	.xd_22(xd[22]),
	.xd_23(xd[23]),
	.xd_24(xd[24]),
	.xd_25(xd[25]),
	.xd_26(xd[26]),
	.xd_27(xd[27]),
	.xd_28(xd[28]),
	.xd_29(xd[29]),
	.xd_30(xd[30]),
	.xd_31(xd[31]),
	.xd_32(xd[32]),
	.xd_33(xd[33]),
	.xd_34(xd[34]),
	.xd_35(xd[35]),
	.xd_36(xd[36]),
	.xd_37(xd[37]),
	.xd_38(xd[38]),
	.xd_39(xd[39]),
	.xd_40(xd[40]),
	.xd_41(xd[41]),
	.xd_42(xd[42]),
	.xd_43(xd[43]),
	.xd_44(xd[44]),
	.xd_45(xd[45]),
	.xd_46(xd[46]),
	.xd_47(xd[47]),
	.xd_48(xd[48]),
	.xd_49(xd[49]),
	.xd_50(xd[50]),
	.xd_51(xd[51]),
	.xd_52(xd[52]),
	.xd_53(xd[53]),
	.xd_54(xd[54]),
	.xd_55(xd[55]),
	.xd_56(xd[56]),
	.xd_57(xd[57]),
	.xd_58(xd[58]),
	.xd_59(xd[59]),
	.xd_60(xd[60]),
	.xd_61(xd[61]),
	.xd_62(xd[62]),
	.xd_63(xd[63]),
	.xa_0(xa[0]),
	.xa_1(xa[1]),
	.xa_2(xa[2]),
	.xa_3(xa[3]),
	.xa_4(xa[4]),
	.xa_5(xa[5]),
	.xa_6(xa[6]),
	.xa_7(xa[7]),
	.xa_8(xa[8]),
	.xa_9(xa[9]),
	.xa_10(xa[10]),
	.xa_11(xa[11]),
	.xa_12(xa[12]),
	.xa_13(xa[13]),
	.xa_14(xa[14]),
	.xa_15(xa[15]),
	.xa_16(xa[16]),
	.xa_17(xa[17]),
	.xa_18(xa[18]),
	.xa_19(xa[19]),
	.xa_20(xa[20]),
	.xa_21(xa[21]),
	.xa_22(xa[22]),
	.xa_23(xa[23]),
	.xma_0(xma[0]),
	.xma_1(xma[1]),
	.xma_2(xma[2]),
	.xma_3(xma[3]),
	.xma_4(xma[4]),
	.xma_5(xma[5]),
	.xma_6(xma[6]),
	.xma_7(xma[7]),
	.xma_8(xma[8]),
	.xma_9(xma[9]),
	.xma_10(xma[10]),
	.xhs(xhs),
	.xvs(xvs),
	.xsiz_0(xsiz[0]),
	.xsiz_1(xsiz[1]),
	.xfc_0(xfc[0]),
	.xfc_1(xfc[1]),
	.xfc_2(xfc[2]),
	.xrw(xrw),
	.xdreql(xdreql),
	.xba(xba),
	.xbrl(xbrl),
	.xr_0(xr[0]),
	.xr_1(xr[1]),
	.xr_2(xr[2]),
	.xr_3(xr[3]),
	.xr_4(xr[4]),
	.xr_5(xr[5]),
	.xr_6(xr[6]),
	.xr_7(xr[7]),
	.xg_0(xg[0]),
	.xg_1(xg[1]),
	.xg_2(xg[2]),
	.xg_3(xg[3]),
	.xg_4(xg[4]),
	.xg_5(xg[5]),
	.xg_6(xg[6]),
	.xg_7(xg[7]),
	.xb_0(xb[0]),
	.xb_1(xb[1]),
	.xb_2(xb[2]),
	.xb_3(xb[3]),
	.xb_4(xb[4]),
	.xb_5(xb[5]),
	.xb_6(xb[6]),
	.xb_7(xb[7]),
	.xinc(xinc),
	.xoel_0(xoel[0]),
	.xoel_1(xoel[1]),
	.xoel_2(xoel[2]),
	.xmaska_0(xmaska[0]),
	.xmaska_1(xmaska[1]),
	.xmaska_2(xmaska[2]),
	.xromcsl_0(xromcsl[0]),
	.xromcsl_1(xromcsl[1]),
	.xcasl_0(xcasl[0]),
	.xcasl_1(xcasl[1]),
	.xdbgl(xdbgl),
	.xexpl(xexpl),
	.xdspcsl(xdspcsl),
	.xwel_0(xwel[0]),
	.xwel_1(xwel[1]),
	.xwel_2(xwel[2]),
	.xwel_3(xwel[3]),
	.xwel_4(xwel[4]),
	.xwel_5(xwel[5]),
	.xwel_6(xwel[6]),
	.xwel_7(xwel[7]),
	.xrasl_0(xrasl[0]),
	.xrasl_1(xrasl[1]),
	.xdtackl(xdtackl),
	.xintl(xintl),
	.cfgen(cfgen)
);

endmodule
