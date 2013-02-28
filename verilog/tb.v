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

wire					cfgen;
wire					brlout;
wire					ba;
wire					aen;

// Debug
wire	[63:0]	xd_r;
wire	[23:0]	xa_r;


// J68

// Clock and reset
wire        j68_rst;          // CPU reset
wire        j68_clk;          // CPU clock
// Bus interface
wire        j68_rd_ena;       // Read strobe
wire        j68_wr_ena;       // Write strobe
wire        j68_data_ack;     // Data acknowledge
wire [1:0]  j68_byte_ena;     // Byte enable
wire [31:0] j68_address;      // Address bus
wire [15:0] j68_rd_data;      // Data bus in
wire [15:0] j68_wr_data;      // Data bus out
// 68000 control
wire [2:0]  j68_fc;           // Function code
wire [2:0]  j68_ipl_n;        // Interrupt level

// OS ROM
wire	[16:0]	os_rom_a;
wire	[7:0]		os_rom_q;
wire					os_rom_ce_n;
wire					os_rom_oe_n;




// Debug
assign xa_r = { 
	xa[23], xa[22], xa[21], xa[20], xa[19], xa[18], xa[17], xa[16], 
	xa[15], xa[14], xa[13], xa[12], xa[11], xa[10], xa[9], xa[8], 
	xa[7], xa[6], xa[5], xa[4], xa[3], xa[2], xa[1], xa[0]
};
assign xd_r = { 
	xd[63], xd[62], xd[61], xd[60], xd[59], xd[58], xd[57], xd[56], 
	xd[55], xd[54], xd[53], xd[52], xd[51], xd[50], xd[49], xd[48], 
	xd[47], xd[46], xd[45], xd[44], xd[43], xd[42], xd[41], xd[40], 
	xd[39], xd[38], xd[37], xd[36], xd[35], xd[34], xd[33], xd[32], 
	xd[31], xd[30], xd[29], xd[28], xd[27], xd[26], xd[25], xd[24], 
	xd[23], xd[22], xd[21], xd[20], xd[19], xd[18], xd[17], xd[16], 
	xd[15], xd[14], xd[13], xd[12], xd[11], xd[10], xd[9], xd[8], 
	xd[7], xd[6], xd[5], xd[4], xd[3], xd[2], xd[1], xd[0]
};

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
	#80 xresetl  = 1'b1;
end

// Latching of memory configuration register on startup

// From Jaguar schematics
assign xma[0] = (cfgen) ? 1'bz : 1'b1; // ROMHI
assign xma[1] = (cfgen) ? 1'bz : 1'b0; // ROMWID0
assign xma[2] = (cfgen) ? 1'bz : 1'b0; // ROMWID0

assign xma[4] = (cfgen) ? 1'bz : 1'b0; // NOCPU (?)
assign xma[5] = (cfgen) ? 1'bz : 1'b0;
assign xma[6] = (cfgen) ? 1'bz : 1'b1; // BIGEND
assign xma[7] = (cfgen) ? 1'bz : 1'b0; // EXTCLK
assign xma[8] = (cfgen) ? 1'bz : 1'b1; // 68K (?)

// Wire-ORed with pullup (?)
assign xbrl = (~brlout) ? 1'b0 : 1'b1;
// Wire-ORed with pullup (?)
assign xba = (ba) ? 1'b0 : 1'b1;

// J68 interface
assign j68_rst = ~xresetl;
assign j68_clk = xpclk;

assign j68_ipl_n = 3'b111;
// assign j68_ipl_n = { 1'b1, xintl, 1'b1 };

assign j68_data_ack = ~xdtackl;

assign xdreql = (~ba) ? ~(j68_rd_ena | j68_wr_ena) : 1'bz;

assign xa[0:23] = 
	(~ba) ?
		{ 
			j68_address[0], j68_address[1], j68_address[2], j68_address[3],
			j68_address[4], j68_address[5], j68_address[6], j68_address[7],
			j68_address[8], j68_address[9], j68_address[10], j68_address[11],
			j68_address[12], j68_address[13], j68_address[14], j68_address[15],
			j68_address[16], j68_address[17], j68_address[18], j68_address[19],
			j68_address[20], j68_address[21], j68_address[22], j68_address[23]
		}
	:
		24'bzzzzzzzz_zzzzzzzz_zzzzzzzz;

assign j68_rd_data[15:0] = { 
	xd[15], xd[14], xd[13], xd[12],
	xd[11], xd[10], xd[9], xd[8],
	xd[7], xd[6], xd[5], xd[4],
	xd[3], xd[2], xd[1], xd[0]
}; 

// 68k function code seems only used to check interrupt acknowledgment
//
// From ABUS.NET
// Intd0 :=	ND6 (intd0,dreqin,fc[0..2],ainen,m68k);
// Intd1 :=	ND2 (intd1,fcl[0],not68k);
// Intd :=		ND2 (intd,intd0,intd1);
// Intas :=	FD1Q (ouracki,intd,clk);
// Notourack :=	IVM (notourack,ouracki);
// Ourack :=	IVH (ourack,notourack);
// 
// "ourack" is the key signal here.
//
// It seems that a real 68k "emits" one FC=111 on interrupt acknowledgement
// where the J68 seems to set FC=111 whenever the VEC register is accessed,
// which doesn't work well with the Jaguar chipset.
// 
// Let's keep the FC constant for now, the interruput acknowledgement
// will be adressed later.

// assign xfc[0:2] = { j68_fc[0], j68_fc[1], j68_fc[2] };
assign xfc = 3'b101;


assign xrw = (~ba) ? ~j68_wr_ena : 1'bz;
assign xsiz[0] = (~ba) ? ~j68_byte_ena[0] : 1'bz;
assign xsiz[1] = (~ba) ? ~j68_byte_ena[1] : 1'bz;


// OS ROM
assign os_rom_a[16:0] = { 
	xa[16], 
	xa[15], xa[14], xa[13], xa[12],
	xa[11], xa[10], xa[9], xa[8],
	xa[7], xa[6], xa[5], xa[4],
	xa[3], xmaska[2], xmaska[1], xmaska[0]
}; 
assign os_rom_ce_n = xromcsl[0];
assign os_rom_oe_n = xoel[0];

// Data bus
assign xd[8:15] = 
	(j68_wr_ena & j68_byte_ena[1] & ~ba) ?
		{
			j68_wr_data[8], j68_wr_data[9], j68_wr_data[10], j68_wr_data[11], 
			j68_wr_data[12], j68_wr_data[13], j68_wr_data[14], j68_wr_data[15]
		}
	:
		8'bzzzzzzzz;

assign xd[0:7] = 
		(j68_wr_ena & j68_byte_ena[0] & ~ba) ?
			{
				j68_wr_data[0], j68_wr_data[1], j68_wr_data[2], j68_wr_data[3], 
				j68_wr_data[4], j68_wr_data[5], j68_wr_data[6], j68_wr_data[7]
			}
		: (~os_rom_ce_n & ~os_rom_oe_n) ?
			{
				os_rom_q[0], os_rom_q[1], os_rom_q[2], os_rom_q[3], 
				os_rom_q[4], os_rom_q[5], os_rom_q[6], os_rom_q[7]
			}	
		: 
			8'bzzzzzzzz;

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
	.cfgen(cfgen),
	.brlout(brlout),
	.ba(ba),
	.aen(aen)
);


j68 j68_inst
(
	.rst(j68_rst),
	.clk(j68_clk),
	.rd_ena(j68_rd_ena),
	.wr_ena(j68_wr_ena),
	.data_ack(j68_data_ack),
	.byte_ena(j68_byte_ena),
	.address(j68_address),
	.rd_data(j68_rd_data),
	.wr_data(j68_wr_data),
	.fc(j68_fc),
	.ipl_n(j68_ipl_n),
	
	.dbg_reg_addr(),
	.dbg_reg_wren(),
	.dbg_reg_data(),
	.dbg_sr_reg(),
	.dbg_pc_reg(),
	.dbg_usp_reg(),
	.dbg_ssp_reg(),
	.dbg_vbr_reg(),
	.dbg_cycles(),
	.dbg_ifetch()
);

os_rom os_rom_inst
(
	.a(os_rom_a),
	.ce_n(os_rom_ce_n),
	.oe_n(os_rom_oe_n),
	.q(os_rom_q)
);

dram dram_0
(
	.num(2'b00),
	.a(xma[0:9]),
	.ras_n(xrasl[0]),
	.cas_n(xcasl[0]),
	.uw_n(xwel[1]),
	.lw_n(xwel[0]),
	.oe_n(xoel[0]),
	.d(xd[0:15]),
	.oe()
);
dram dram_1
(
	.num(2'b10),
	.a(xma[0:9]),
	.ras_n(xrasl[0]),
	.cas_n(xcasl[0]),
	.uw_n(xwel[3]),
	.lw_n(xwel[2]),
	.oe_n(xoel[1]),
	.d(xd[16:31]),
	.oe()
);
dram dram_2
(
	.num(2'b01),
	.a(xma[0:9]),
	.ras_n(xrasl[0]),
	.cas_n(xcasl[0]),
	.uw_n(xwel[5]),
	.lw_n(xwel[4]),
	.oe_n(xoel[2]),
	.d(xd[32:47]),
	.oe()
);
dram dram_3
(
	.num(2'b11),
	.a(xma[0:9]),
	.ras_n(xrasl[0]),
	.cas_n(xcasl[0]),
	.uw_n(xwel[7]),
	.lw_n(xwel[6]),
	.oe_n(xoel[2]),
	.d(xd[48:63]),
	.oe()
);

endmodule


module os_rom
(
	input 	[16:0]	a,
	input						ce_n,
	input						oe_n,
	output	[7:0]		q
);

reg	[7:0]	rom_blk [0:(1<<17)-1];
reg	[7:0] r_q;

initial
begin
	$readmemh("os.mem", rom_blk);
end

assign q = (ce_n | oe_n) ? 8'bzzzzzzzz : r_q;

always @(a)
begin
	r_q = rom_blk[a][7:0];
end

endmodule


module dram
(
	input		[0:1]		num,
	input		[0:9] 	a,
	input						ras_n,
	input						cas_n,
	input						oe_n,
	input						uw_n,
	input						lw_n,
	inout		[0:15]	d,
	output					oe
);

reg [0:15] ram_blk[0:(1<<18)-1];
reg [0:17] ea;
wire w_oe;

initial
begin
	$readmemh("zero.mem", ram_blk);
end

always @(negedge ras_n)
begin
	ea[8:17] <= a[0:9];
end

always @(negedge cas_n)
begin
	ea[0:7] <= a[0:7];
	if (~uw_n) begin
		ram_blk[ { a[0:7], ea[8:17] } ][8:15] <= d[8:15];
	end
	if (~lw_n) begin
		ram_blk[ { a[0:7], ea[8:17] } ][0:7] <= d[0:7];
	end
end

assign oe = w_oe;
assign w_oe = (~oe_n & ~cas_n & uw_n & lw_n);

assign d = 
	(w_oe) ?
		ram_blk[ ea ]
	: 
		16'bzzzzzzzz_zzzzzzzz;

endmodule
