/* verilator lint_off LITENDIAN */
`include "defs.v"

module tb
(
`ifdef verilator3
	input	xresetl,
	input xpclk,
	input xvclk,
	input sys_clk
`endif
);

`ifndef verilator3
reg						xpclk;
reg						xvclk;
reg						xresetl;
reg						sys_clk;
`endif

reg						xbgl 			= 1'b0;
reg		[0:1]		xdbrl 		= 2'b11;
reg						xlp				= 1'b0;
reg						xdint			= 1'b0;
reg						xtest			= 1'b0;
reg						xwaitl		= 1'b1;

wire	[0:63]	xd_out;
wire	[0:63]	xd_oe;
wire	[0:63]	xd_in;
wire	[0:23]	xa_out; //
wire	[0:23]	xa_oe;
wire	[0:23]	xa_in;
wire	[0:10]	xma_out; //
wire	[0:10]	xma_oe;
wire	[0:10]	xma_in;
wire					xhs_out; //
wire					xhs_oe;
wire					xhs_in;
wire					xvs_out; //
wire					xvs_oe;
wire					xvs_in;
wire	[0:1]		xsiz_out; //
wire	[0:1]		xsiz_oe;
wire	[0:1]		xsiz_in;
wire	[0:2]		xfc_out; //
wire	[0:2]		xfc_oe;
wire	[0:2]		xfc_in;
wire					xrw_out; //
wire					xrw_oe;
wire					xrw_in;
wire					xdreql_out; //
wire					xdreql_oe;
wire					xdreql_in;
wire					xba_out; //
wire					xba_oe;
wire					xba_in;
wire					xbrl_out; //
wire					xbrl_oe;
wire					xbrl_in;

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

wire	rasl;
wire	casl;

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
// For interrupt management
wire [23:0]	j68_address_final;

// OS ROM
wire	[16:0]	os_rom_a;
wire					os_rom_ce_n;
wire					os_rom_oe_n;
wire	[7:0]		os_rom_q;
wire					os_rom_oe;

// DRAM
wire	[0:63]	dram_d;
wire	[0:63]	dram_q;
wire	[0:3]		dram_oe;

// Simulation with Icarus Verilog
`ifdef ICARUS
initial
begin
  $dumpfile("tb.lxt.tmp");
  $dumpvars(0, tb);
	#4000000
	begin
		$finish;
	end
end
`endif

// Debug
assign rasl = xrasl[0];
assign casl = xcasl[0];

assign xa_r = { 
	xa_in[23], xa_in[22], xa_in[21], xa_in[20], xa_in[19], xa_in[18], xa_in[17], xa_in[16], 
	xa_in[15], xa_in[14], xa_in[13], xa_in[12], xa_in[11], xa_in[10], xa_in[9], xa_in[8], 
	xa_in[7], xa_in[6], xa_in[5], xa_in[4], xa_in[3], xa_in[2], xa_in[1], xa_in[0]
};
assign xd_r = { 
	xd_in[63], xd_in[62], xd_in[61], xd_in[60], xd_in[59], xd_in[58], xd_in[57], xd_in[56], 
	xd_in[55], xd_in[54], xd_in[53], xd_in[52], xd_in[51], xd_in[50], xd_in[49], xd_in[48], 
	xd_in[47], xd_in[46], xd_in[45], xd_in[44], xd_in[43], xd_in[42], xd_in[41], xd_in[40], 
	xd_in[39], xd_in[38], xd_in[37], xd_in[36], xd_in[35], xd_in[34], xd_in[33], xd_in[32], 
	xd_in[31], xd_in[30], xd_in[29], xd_in[28], xd_in[27], xd_in[26], xd_in[25], xd_in[24], 
	xd_in[23], xd_in[22], xd_in[21], xd_in[20], xd_in[19], xd_in[18], xd_in[17], xd_in[16], 
	xd_in[15], xd_in[14], xd_in[13], xd_in[12], xd_in[11], xd_in[10], xd_in[9], xd_in[8], 
	xd_in[7], xd_in[6], xd_in[5], xd_in[4], xd_in[3], xd_in[2], xd_in[1], xd_in[0]
};

`ifndef verilator3
// Clocks
initial
begin
	sys_clk   = 1'b0;
	// sys_clk   = 1'b1;
	forever #10 sys_clk = ~sys_clk;
end

initial
begin
	xvclk     = 1'b1;
	forever #20 xvclk = ~xvclk;
end

initial
begin
	xpclk     = 1'b1;
	forever #40 xpclk = ~xpclk;
end

// Reset
initial
begin
	xresetl 	= 1'b0;
	#80 xresetl  = 1'b1;
end
`endif

// Latching of memory configuration register on startup

// From Jaguar schematics
assign xma_in[0] = (xma_oe[0]) ? xma_out[0] : 1'b1; // ROMHI
assign xma_in[1] = (xma_oe[1]) ? xma_out[1] : 1'b0; // ROMWID0
assign xma_in[2] = (xma_oe[2]) ? xma_out[2] : 1'b0; // ROMWID0
assign xma_in[3] = (xma_oe[3]) ? xma_out[3] : 1'b0;
assign xma_in[4] = (xma_oe[4]) ? xma_out[4] : 1'b0; // NOCPU (?)
assign xma_in[5] = (xma_oe[5]) ? xma_out[5] : 1'b0;
assign xma_in[6] = (xma_oe[6]) ? xma_out[6] : 1'b1; // BIGEND
assign xma_in[7] = (xma_oe[7]) ? xma_out[7] : 1'b0; // EXTCLK
assign xma_in[8] = (xma_oe[8]) ? xma_out[8] : 1'b1; // 68K (?)
assign xma_in[9] = (xma_oe[9]) ? xma_out[9] : 1'b0;
assign xma_in[10] = (xma_oe[10]) ? xma_out[10] : 1'b0;

// Wire-ORed with pullup (?)
assign xbrl_in = xbrl_oe ? xbrl_out : 1'b1;
// Wire-ORed with pullup (?)
assign xba_in = xba_oe ? xba_out : 1'b1;

// J68 interface
assign j68_rst = ~xresetl;
assign j68_clk = xpclk;

// assign j68_ipl_n = 3'b111;
assign j68_ipl_n = { 1'b1, xintl, 1'b1 };

assign j68_data_ack = ~xdtackl;

assign xdreql_in = xdreql_oe ? xdreql_out : ~(j68_rd_ena | j68_wr_ena);

assign xa_in[0:23] = 
	(~ba) ?
		{ 
			j68_address_final[0], j68_address_final[1], j68_address_final[2], j68_address_final[3],
			j68_address_final[4], j68_address_final[5], j68_address_final[6], j68_address_final[7],
			j68_address_final[8], j68_address_final[9], j68_address_final[10], j68_address_final[11],
			j68_address_final[12], j68_address_final[13], j68_address_final[14], j68_address_final[15],
			j68_address_final[16], j68_address_final[17], j68_address_final[18], j68_address_final[19],
			j68_address_final[20], j68_address_final[21], j68_address_final[22], j68_address_final[23]
		}
	:
		xa_out[0:23];

assign j68_rd_data[15:0] = { 
	xd_in[15], xd_in[14], xd_in[13], xd_in[12],
	xd_in[11], xd_in[10], xd_in[9], xd_in[8],
	xd_in[7], xd_in[6], xd_in[5], xd_in[4],
	xd_in[3], xd_in[2], xd_in[1], xd_in[0]
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
// The Jaguar chipset asserts the vector address on FC=111,
// unfortunately it doesn't seem properly handled by the J68,
// or there may be something I haven't found out yet.
// There seems to be only one interrupt vector used
// for all interrupt sources of the Jaguar chipset.
// Its location is $100, which corresponds to User Interrupt 0.
// Below is a quick hack to set up $100-$102 when the J68 fetchs
// the interrupt vector corresponding to Level 2 Interrupt Autovector

// assign xfc[0:2] = { j68_fc[0], j68_fc[1], j68_fc[2] };
assign xfc_in = 3'b101;

/*assign j68_address_final = 
	( (j68_fc ==  3'b111) & ~xintl & (j68_address[23:2] == { 20'h00006, 2'b10 }) ) ?
		{ 20'h00010, 2'b00, j68_address[1:0] }
	:
		j68_address[23:0];*/
assign j68_address_final = 
	( (j68_fc ==  3'b111) & (j68_address[23:2] == { 20'h00006, 2'b10 }) ) ?
		{ 20'h00010, 2'b00, j68_address[1:0] }
	:
		j68_address[23:0];


assign xrw_in = (~ba) ? ~j68_wr_ena : xrw_out;
assign xsiz_in[0] = (~ba) ? ~j68_byte_ena[0] : xsiz_out[0];
assign xsiz_in[1] = (~ba) ? ~j68_byte_ena[1] : xsiz_out[1];



assign xhs_in = xhs_out;
assign xvs_in = xvs_out;


// OS ROM
assign os_rom_a[16:0] = { 
	xa_in[16], 
	xa_in[15], xa_in[14], xa_in[13], xa_in[12],
	xa_in[11], xa_in[10], xa_in[9], xa_in[8],
	xa_in[7], xa_in[6], xa_in[5], xa_in[4],
	xa_in[3], xmaska[2], xmaska[1], xmaska[0]
}; 
assign os_rom_ce_n = xromcsl[0];
assign os_rom_oe_n = xoel[0];

// Data bus
assign xd_in[0:7] = 
		(j68_wr_ena & j68_byte_ena[0] & ~ba) ?
			{
				j68_wr_data[0], j68_wr_data[1], j68_wr_data[2], j68_wr_data[3], 
				j68_wr_data[4], j68_wr_data[5], j68_wr_data[6], j68_wr_data[7]
			}
		: (os_rom_oe) ?
			{
				os_rom_q[0], os_rom_q[1], os_rom_q[2], os_rom_q[3], 
				os_rom_q[4], os_rom_q[5], os_rom_q[6], os_rom_q[7]
			}	
		: (dram_oe[0]) ?
			dram_q[0:7]
		:
			xd_out[0:7];

assign xd_in[8:15] = 
	(j68_wr_ena & j68_byte_ena[1] & ~ba) ?
		{
			j68_wr_data[8], j68_wr_data[9], j68_wr_data[10], j68_wr_data[11], 
			j68_wr_data[12], j68_wr_data[13], j68_wr_data[14], j68_wr_data[15]
		}
	: (dram_oe[0]) ?
		dram_q[8:15]
	:
		xd_out[8:15];

assign xd_in[16:31] = 
	(dram_oe[1]) ?
		dram_q[16:31]
	:
		xd_out[16:31];

assign xd_in[32:47] = 
	(dram_oe[2]) ?
		dram_q[32:47]
	:
		xd_out[32:47];

assign xd_in[48:63] = 
	(dram_oe[3]) ?
		dram_q[48:63]
	:
		xd_out[48:63];

// TOM
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
	.xd_0_out(xd_out[0]),
	.xd_0_oe(xd_oe[0]),
	.xd_0_in(xd_in[0]),
	.xd_1_out(xd_out[1]),
	.xd_1_oe(xd_oe[1]),
	.xd_1_in(xd_in[1]),
	.xd_2_out(xd_out[2]),
	.xd_2_oe(xd_oe[2]),
	.xd_2_in(xd_in[2]),
	.xd_3_out(xd_out[3]),
	.xd_3_oe(xd_oe[3]),
	.xd_3_in(xd_in[3]),
	.xd_4_out(xd_out[4]),
	.xd_4_oe(xd_oe[4]),
	.xd_4_in(xd_in[4]),
	.xd_5_out(xd_out[5]),
	.xd_5_oe(xd_oe[5]),
	.xd_5_in(xd_in[5]),
	.xd_6_out(xd_out[6]),
	.xd_6_oe(xd_oe[6]),
	.xd_6_in(xd_in[6]),
	.xd_7_out(xd_out[7]),
	.xd_7_oe(xd_oe[7]),
	.xd_7_in(xd_in[7]),
	.xd_8_out(xd_out[8]),
	.xd_8_oe(xd_oe[8]),
	.xd_8_in(xd_in[8]),
	.xd_9_out(xd_out[9]),
	.xd_9_oe(xd_oe[9]),
	.xd_9_in(xd_in[9]),
	.xd_10_out(xd_out[10]),
	.xd_10_oe(xd_oe[10]),
	.xd_10_in(xd_in[10]),
	.xd_11_out(xd_out[11]),
	.xd_11_oe(xd_oe[11]),
	.xd_11_in(xd_in[11]),
	.xd_12_out(xd_out[12]),
	.xd_12_oe(xd_oe[12]),
	.xd_12_in(xd_in[12]),
	.xd_13_out(xd_out[13]),
	.xd_13_oe(xd_oe[13]),
	.xd_13_in(xd_in[13]),
	.xd_14_out(xd_out[14]),
	.xd_14_oe(xd_oe[14]),
	.xd_14_in(xd_in[14]),
	.xd_15_out(xd_out[15]),
	.xd_15_oe(xd_oe[15]),
	.xd_15_in(xd_in[15]),
	.xd_16_out(xd_out[16]),
	.xd_16_oe(xd_oe[16]),
	.xd_16_in(xd_in[16]),
	.xd_17_out(xd_out[17]),
	.xd_17_oe(xd_oe[17]),
	.xd_17_in(xd_in[17]),
	.xd_18_out(xd_out[18]),
	.xd_18_oe(xd_oe[18]),
	.xd_18_in(xd_in[18]),
	.xd_19_out(xd_out[19]),
	.xd_19_oe(xd_oe[19]),
	.xd_19_in(xd_in[19]),
	.xd_20_out(xd_out[20]),
	.xd_20_oe(xd_oe[20]),
	.xd_20_in(xd_in[20]),
	.xd_21_out(xd_out[21]),
	.xd_21_oe(xd_oe[21]),
	.xd_21_in(xd_in[21]),
	.xd_22_out(xd_out[22]),
	.xd_22_oe(xd_oe[22]),
	.xd_22_in(xd_in[22]),
	.xd_23_out(xd_out[23]),
	.xd_23_oe(xd_oe[23]),
	.xd_23_in(xd_in[23]),
	.xd_24_out(xd_out[24]),
	.xd_24_oe(xd_oe[24]),
	.xd_24_in(xd_in[24]),
	.xd_25_out(xd_out[25]),
	.xd_25_oe(xd_oe[25]),
	.xd_25_in(xd_in[25]),
	.xd_26_out(xd_out[26]),
	.xd_26_oe(xd_oe[26]),
	.xd_26_in(xd_in[26]),
	.xd_27_out(xd_out[27]),
	.xd_27_oe(xd_oe[27]),
	.xd_27_in(xd_in[27]),
	.xd_28_out(xd_out[28]),
	.xd_28_oe(xd_oe[28]),
	.xd_28_in(xd_in[28]),
	.xd_29_out(xd_out[29]),
	.xd_29_oe(xd_oe[29]),
	.xd_29_in(xd_in[29]),
	.xd_30_out(xd_out[30]),
	.xd_30_oe(xd_oe[30]),
	.xd_30_in(xd_in[30]),
	.xd_31_out(xd_out[31]),
	.xd_31_oe(xd_oe[31]),
	.xd_31_in(xd_in[31]),
	.xd_32_out(xd_out[32]),
	.xd_32_oe(xd_oe[32]),
	.xd_32_in(xd_in[32]),
	.xd_33_out(xd_out[33]),
	.xd_33_oe(xd_oe[33]),
	.xd_33_in(xd_in[33]),
	.xd_34_out(xd_out[34]),
	.xd_34_oe(xd_oe[34]),
	.xd_34_in(xd_in[34]),
	.xd_35_out(xd_out[35]),
	.xd_35_oe(xd_oe[35]),
	.xd_35_in(xd_in[35]),
	.xd_36_out(xd_out[36]),
	.xd_36_oe(xd_oe[36]),
	.xd_36_in(xd_in[36]),
	.xd_37_out(xd_out[37]),
	.xd_37_oe(xd_oe[37]),
	.xd_37_in(xd_in[37]),
	.xd_38_out(xd_out[38]),
	.xd_38_oe(xd_oe[38]),
	.xd_38_in(xd_in[38]),
	.xd_39_out(xd_out[39]),
	.xd_39_oe(xd_oe[39]),
	.xd_39_in(xd_in[39]),
	.xd_40_out(xd_out[40]),
	.xd_40_oe(xd_oe[40]),
	.xd_40_in(xd_in[40]),
	.xd_41_out(xd_out[41]),
	.xd_41_oe(xd_oe[41]),
	.xd_41_in(xd_in[41]),
	.xd_42_out(xd_out[42]),
	.xd_42_oe(xd_oe[42]),
	.xd_42_in(xd_in[42]),
	.xd_43_out(xd_out[43]),
	.xd_43_oe(xd_oe[43]),
	.xd_43_in(xd_in[43]),
	.xd_44_out(xd_out[44]),
	.xd_44_oe(xd_oe[44]),
	.xd_44_in(xd_in[44]),
	.xd_45_out(xd_out[45]),
	.xd_45_oe(xd_oe[45]),
	.xd_45_in(xd_in[45]),
	.xd_46_out(xd_out[46]),
	.xd_46_oe(xd_oe[46]),
	.xd_46_in(xd_in[46]),
	.xd_47_out(xd_out[47]),
	.xd_47_oe(xd_oe[47]),
	.xd_47_in(xd_in[47]),
	.xd_48_out(xd_out[48]),
	.xd_48_oe(xd_oe[48]),
	.xd_48_in(xd_in[48]),
	.xd_49_out(xd_out[49]),
	.xd_49_oe(xd_oe[49]),
	.xd_49_in(xd_in[49]),
	.xd_50_out(xd_out[50]),
	.xd_50_oe(xd_oe[50]),
	.xd_50_in(xd_in[50]),
	.xd_51_out(xd_out[51]),
	.xd_51_oe(xd_oe[51]),
	.xd_51_in(xd_in[51]),
	.xd_52_out(xd_out[52]),
	.xd_52_oe(xd_oe[52]),
	.xd_52_in(xd_in[52]),
	.xd_53_out(xd_out[53]),
	.xd_53_oe(xd_oe[53]),
	.xd_53_in(xd_in[53]),
	.xd_54_out(xd_out[54]),
	.xd_54_oe(xd_oe[54]),
	.xd_54_in(xd_in[54]),
	.xd_55_out(xd_out[55]),
	.xd_55_oe(xd_oe[55]),
	.xd_55_in(xd_in[55]),
	.xd_56_out(xd_out[56]),
	.xd_56_oe(xd_oe[56]),
	.xd_56_in(xd_in[56]),
	.xd_57_out(xd_out[57]),
	.xd_57_oe(xd_oe[57]),
	.xd_57_in(xd_in[57]),
	.xd_58_out(xd_out[58]),
	.xd_58_oe(xd_oe[58]),
	.xd_58_in(xd_in[58]),
	.xd_59_out(xd_out[59]),
	.xd_59_oe(xd_oe[59]),
	.xd_59_in(xd_in[59]),
	.xd_60_out(xd_out[60]),
	.xd_60_oe(xd_oe[60]),
	.xd_60_in(xd_in[60]),
	.xd_61_out(xd_out[61]),
	.xd_61_oe(xd_oe[61]),
	.xd_61_in(xd_in[61]),
	.xd_62_out(xd_out[62]),
	.xd_62_oe(xd_oe[62]),
	.xd_62_in(xd_in[62]),
	.xd_63_out(xd_out[63]),
	.xd_63_oe(xd_oe[63]),
	.xd_63_in(xd_in[63]),
	.xa_0_out(xa_out[0]),
	.xa_0_oe(xa_oe[0]),
	.xa_0_in(xa_in[0]),
	.xa_1_out(xa_out[1]),
	.xa_1_oe(xa_oe[1]),
	.xa_1_in(xa_in[1]),
	.xa_2_out(xa_out[2]),
	.xa_2_oe(xa_oe[2]),
	.xa_2_in(xa_in[2]),
	.xa_3_out(xa_out[3]),
	.xa_3_oe(xa_oe[3]),
	.xa_3_in(xa_in[3]),
	.xa_4_out(xa_out[4]),
	.xa_4_oe(xa_oe[4]),
	.xa_4_in(xa_in[4]),
	.xa_5_out(xa_out[5]),
	.xa_5_oe(xa_oe[5]),
	.xa_5_in(xa_in[5]),
	.xa_6_out(xa_out[6]),
	.xa_6_oe(xa_oe[6]),
	.xa_6_in(xa_in[6]),
	.xa_7_out(xa_out[7]),
	.xa_7_oe(xa_oe[7]),
	.xa_7_in(xa_in[7]),
	.xa_8_out(xa_out[8]),
	.xa_8_oe(xa_oe[8]),
	.xa_8_in(xa_in[8]),
	.xa_9_out(xa_out[9]),
	.xa_9_oe(xa_oe[9]),
	.xa_9_in(xa_in[9]),
	.xa_10_out(xa_out[10]),
	.xa_10_oe(xa_oe[10]),
	.xa_10_in(xa_in[10]),
	.xa_11_out(xa_out[11]),
	.xa_11_oe(xa_oe[11]),
	.xa_11_in(xa_in[11]),
	.xa_12_out(xa_out[12]),
	.xa_12_oe(xa_oe[12]),
	.xa_12_in(xa_in[12]),
	.xa_13_out(xa_out[13]),
	.xa_13_oe(xa_oe[13]),
	.xa_13_in(xa_in[13]),
	.xa_14_out(xa_out[14]),
	.xa_14_oe(xa_oe[14]),
	.xa_14_in(xa_in[14]),
	.xa_15_out(xa_out[15]),
	.xa_15_oe(xa_oe[15]),
	.xa_15_in(xa_in[15]),
	.xa_16_out(xa_out[16]),
	.xa_16_oe(xa_oe[16]),
	.xa_16_in(xa_in[16]),
	.xa_17_out(xa_out[17]),
	.xa_17_oe(xa_oe[17]),
	.xa_17_in(xa_in[17]),
	.xa_18_out(xa_out[18]),
	.xa_18_oe(xa_oe[18]),
	.xa_18_in(xa_in[18]),
	.xa_19_out(xa_out[19]),
	.xa_19_oe(xa_oe[19]),
	.xa_19_in(xa_in[19]),
	.xa_20_out(xa_out[20]),
	.xa_20_oe(xa_oe[20]),
	.xa_20_in(xa_in[20]),
	.xa_21_out(xa_out[21]),
	.xa_21_oe(xa_oe[21]),
	.xa_21_in(xa_in[21]),
	.xa_22_out(xa_out[22]),
	.xa_22_oe(xa_oe[22]),
	.xa_22_in(xa_in[22]),
	.xa_23_out(xa_out[23]),
	.xa_23_oe(xa_oe[23]),
	.xa_23_in(xa_in[23]),
	.xma_0_out(xma_out[0]),
	.xma_0_oe(xma_oe[0]),
	.xma_0_in(xma_in[0]),
	.xma_1_out(xma_out[1]),
	.xma_1_oe(xma_oe[1]),
	.xma_1_in(xma_in[1]),
	.xma_2_out(xma_out[2]),
	.xma_2_oe(xma_oe[2]),
	.xma_2_in(xma_in[2]),
	.xma_3_out(xma_out[3]),
	.xma_3_oe(xma_oe[3]),
	.xma_3_in(xma_in[3]),
	.xma_4_out(xma_out[4]),
	.xma_4_oe(xma_oe[4]),
	.xma_4_in(xma_in[4]),
	.xma_5_out(xma_out[5]),
	.xma_5_oe(xma_oe[5]),
	.xma_5_in(xma_in[5]),
	.xma_6_out(xma_out[6]),
	.xma_6_oe(xma_oe[6]),
	.xma_6_in(xma_in[6]),
	.xma_7_out(xma_out[7]),
	.xma_7_oe(xma_oe[7]),
	.xma_7_in(xma_in[7]),
	.xma_8_out(xma_out[8]),
	.xma_8_oe(xma_oe[8]),
	.xma_8_in(xma_in[8]),
	.xma_9_out(xma_out[9]),
	.xma_9_oe(xma_oe[9]),
	.xma_9_in(xma_in[9]),
	.xma_10_out(xma_out[10]),
	.xma_10_oe(xma_oe[10]),
	.xma_10_in(xma_in[10]),
	.xhs_out(xhs_out),
	.xhs_oe(xhs_oe),
	.xhs_in(xhs_in),
	.xvs_out(xvs_out),
	.xvs_oe(xvs_oe),
	.xvs_in(xvs_in),
	.xsiz_0_out(xsiz_out[0]),
	.xsiz_0_oe(xsiz_oe[0]),
	.xsiz_0_in(xsiz_in[0]),
	.xsiz_1_out(xsiz_out[1]),
	.xsiz_1_oe(xsiz_oe[1]),
	.xsiz_1_in(xsiz_in[1]),
	.xfc_0_out(xfc_out[0]),
	.xfc_0_oe(xfc_oe[0]),
	.xfc_0_in(xfc_in[0]),
	.xfc_1_out(xfc_out[1]),
	.xfc_1_oe(xfc_oe[1]),
	.xfc_1_in(xfc_in[1]),
	.xfc_2_out(xfc_out[2]),
	.xfc_2_oe(xfc_oe[2]),
	.xfc_2_in(xfc_in[2]),
	.xrw_out(xrw_out),
	.xrw_oe(xrw_oe),
	.xrw_in(xrw_in),
	.xdreql_out(xdreql_out),
	.xdreql_oe(xdreql_oe),
	.xdreql_in(xdreql_in),
	.xba_out(xba_out),
	.xba_oe(xba_oe),
	.xba_in(xba_in),
	.xbrl_out(xbrl_out),
	.xbrl_oe(xbrl_oe),
	.xbrl_in(xbrl_in),
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
	.aen(aen),
	.sys_clk(sys_clk)
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
	.q(os_rom_q),
	.oe(os_rom_oe)
);

dram dram_int
(
	.a(xma_in[0:9]),
	.ras_n(xrasl[0]),
	.cas_n(xcasl[0]),
	.uw_n({xwel[1], xwel[3], xwel[5], xwel[7]}),
	.lw_n({xwel[0], xwel[2], xwel[4], xwel[6]}),
	.oe_n({xoel[0], xoel[1], xoel[2], xoel[2]}), // /!\
	.d(xd_in),
	.q(dram_q),
	.oe(dram_oe),
	.sys_clk(sys_clk)
);

endmodule

///////////////////////////////////////////////////////////////////////

module os_rom
(
	input 	[16:0]	a,
	input						ce_n,
	input						oe_n,
	output	[7:0]		q,
	output					oe
);

reg	[7:0]	rom_blk [0:(1<<17)-1];
// reg	[7:0] r_q;

initial
begin
	$readmemh("os.mem", rom_blk);
end

// assign q = (ce_n | oe_n) ? 8'bzzzzzzzz : r_q;
// assign q = r_q;
assign oe = (~ce_n & ~oe_n);
assign q = rom_blk[a][7:0];

endmodule

///////////////////////////////////////////////////////////////////////

module dram
(
	input		[0:9] 	a,
	input						ras_n,
	input						cas_n,
	input		[0:3]		oe_n,
	input		[0:3]		uw_n,
	input		[0:3]		lw_n,
	output	[0:63]	q,
	input		[0:63]	d,
	output	[0:3]		oe,
	input sys_clk
);

reg [0:63] ram_blk[0:(1<<18)-1];

wire [9:0] a_r;
reg [17:0] ea;

wire [0:3] w_oe;

reg ras_n_prev = 1'b0;
reg cas_n_prev = 1'b0;

initial
begin
	$readmemb("dram.mem", ram_blk);
end

assign a_r = { a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0] };

always @(posedge sys_clk)
begin
	ras_n_prev <= ras_n;
	cas_n_prev <= cas_n;
	if (ras_n_prev & ~ras_n) begin
		ea[17:8] <= a_r[9:0];
	end
	if (cas_n_prev & ~cas_n) begin
		ea[7:0] <= a_r[7:0];
		if (~uw_n[0]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][8:15] <= d[8:15];
		end
		if (~lw_n[0]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][0:7] <= d[0:7];
		end	
		if (~uw_n[1]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][24:31] <= d[24:31];
		end
		if (~lw_n[1]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][16:23] <= d[16:23];
		end	
		if (~uw_n[2]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][40:47] <= d[40:47];
		end
		if (~lw_n[2]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][32:39] <= d[32:39];
		end	
		if (~uw_n[3]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][56:63] <= d[56:63];
		end
		if (~lw_n[3]) begin
			ram_blk[ { ea[17:8], a_r[7:0] } ][48:55] <= d[48:55];
		end
	end
end

assign oe = w_oe;
assign w_oe[0] = (~oe_n[0] & ~cas_n & (uw_n[0] | lw_n[0]));
assign w_oe[1] = (~oe_n[1] & ~cas_n & (uw_n[1] | lw_n[1]));
assign w_oe[2] = (~oe_n[2] & ~cas_n & (uw_n[2] | lw_n[2]));
assign w_oe[3] = (~oe_n[3] & ~cas_n & (uw_n[3] | lw_n[3]));

assign q = ram_blk[ ea ][0:63];

endmodule
/* verilator lint_on LITENDIAN */