`include "defs.v"

module jag_s2
(
	input		[3:0]	SW,
	input 				OSC_CLK0,
	
  output        SSRAM_CLK,
  output        SSRAM_CE1_n,
  output        SSRAM_CE2,
  output        SSRAM_CE3_n,
  output        SSRAM_OE_n,
  output        SSRAM_BWE_n,
  output        SSRAM_GW_n,   
  output        SSRAM_ADSC_n, 
  output        SSRAM_ADSP_n, 
  output        SSRAM_ADV_n,  
  output [20:0] SSRAM_ADDR,
  output  [3:0] SSRAM_BE_n,
  inout  [31:0] SSRAM_DQ,
	
	// output  [0:9] 	dram_a,
	// output					dram_ras_n,
	// output					dram_cas_n,
	// output	[0:3]		dram_oe_n,
	// output 	[0:3]		dram_uw_n,
	// output 	[0:3]		dram_lw_n,
	// output	[0:63]	dram_d,
	// input		[0:63]	dram_q,
	// input		[0:3]		dram_oe,
	
	//output	[16:0]	os_rom_a,
	//output					os_rom_ce_n,
	//output					os_rom_oe_n,
	//input		[7:0]		os_rom_q,
	//input						os_rom_oe,

	//output	[23:0]	cart_a,
	//output					cart_ce_n,
	//output	[1:0]			cart_oe_n,
	//input		[31:0]		cart_q,
	//input		[1:0]			cart_oe,

	output	[28:0]	PROTO2_IO,

	output	[7:0] HEX_0,
	output	[7:0] HEX_1,
	output	[7:0]	LED_n

);

wire xresetl;

wire xpclk;
wire xvclk;
wire sys_clk;
wire mem_clk;


wire vga_vs_n;
wire vga_hs_n;
wire [7:0] vga_r;
wire [7:0] vga_g;
wire [7:0] vga_b;

reg vga_vs_prev = 1'b1;
reg [15:0] vs_cnt = 16'd0;

always @(posedge sys_clk)
begin
	vga_vs_prev <= vga_vs_n;
	if (~xresetl) begin
		vs_cnt <= 16'd0;
	end else if (vga_vs_prev & ~vga_vs_n) begin
		vs_cnt <= vs_cnt + 1;
	end
end

assign LED_n = ~vs_cnt[12:5];


assign PROTO2_IO[0] = vga_vs_n;
assign PROTO2_IO[1] = vga_hs_n;

assign PROTO2_IO[2] = vga_r[7];
assign PROTO2_IO[3] = vga_r[6];
assign PROTO2_IO[4] = vga_r[5];
assign PROTO2_IO[5] = vga_r[4];

assign PROTO2_IO[6] = vga_g[7];
assign PROTO2_IO[7] = vga_g[6];
assign PROTO2_IO[10] = vga_g[5];
assign PROTO2_IO[11] = vga_g[4];

assign PROTO2_IO[12] = vga_b[7];
assign PROTO2_IO[13] = vga_b[6];
assign PROTO2_IO[14] = vga_b[5];
assign PROTO2_IO[15] = vga_b[4];


assign xresetl = SW[0];

pll50 pll
(
	.inclk0(OSC_CLK0),
	.c0(xvclk),
	.c1(xpclk),
	.c2(sys_clk),
	.c3(mem_clk)
);

wire	[16:0]	os_rom_a;
wire					os_rom_ce_n;
wire					os_rom_oe_n;
wire	[7:0]		os_rom_q;
wire					os_rom_oe;

	altsyncram	os_rom (
				.clock0 (sys_clk),
				.address_a (os_rom_a[13:0]),
				.q_a (os_rom_q),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.address_b (1'b1),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_a ({8{1'b1}}),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_a (1'b0),
				.wren_b (1'b0));
	defparam
		os_rom.clock_enable_input_a = "BYPASS",
		os_rom.clock_enable_output_a = "BYPASS",
		os_rom.init_file = "os.mif",
		os_rom.intended_device_family = "Stratix II",
		os_rom.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		os_rom.lpm_type = "altsyncram",
		os_rom.numwords_a = 16384,
		os_rom.operation_mode = "ROM",
		os_rom.outdata_aclr_a = "NONE",
		os_rom.outdata_reg_a = "CLOCK0",
		os_rom.widthad_a = 14,
		os_rom.width_a = 8,
		os_rom.width_byteena_a = 1;

assign os_rom_oe = (~os_rom_ce_n & ~os_rom_oe_n);


wire	[23:0]	cart_a;
wire					cart_ce_n;
wire	[1:0]		cart_oe_n;
wire	[31:0]	cart_q;
wire	[1:0]		cart_oe;

assign cart_q = 32'h00000000;
assign cart_oe = 2'b00;




wire  [0:9] 	dram_a;
wire					dram_ras_n;
wire					dram_cas_n;
wire	[0:3]		dram_oe_n;
wire 	[0:3]		dram_uw_n;
wire 	[0:3]		dram_lw_n;
wire	[0:63]	dram_d;
wire		[0:63]	dram_q;
wire		[0:3]		dram_oe;

wire			fdram;

jaguar jag
(
	.xresetl(xresetl),
	.xpclk(xpclk),
	.xvclk(xvclk),
	.sys_clk(sys_clk),
	
	.dram_a(dram_a),
	.dram_ras_n(dram_ras_n),
	.dram_cas_n(dram_cas_n),
	.dram_oe_n(dram_oe_n),
	.dram_uw_n(dram_uw_n),
	.dram_lw_n(dram_lw_n),
	.dram_d(dram_d),
	.dram_q(dram_q),
	.dram_oe(dram_oe),
	
	.DBG_CPU_RDEN(),
	.DBG_CPU_WREN(),
	.DBG_CPU_DTACK(),
	.DBG_CPU_BENA(),
	.DBG_CPU_ADDR(),
	.DBG_CPU_RDATA(),
	.DBG_CPU_WDATA(),
	.DBG_REG_ADDR(),
	.DBG_REG_WREN(),
	.DBG_REG_DATA(),
	.DBG_SR_REG(),
	.DBG_PC_REG(),
	.DBG_USP_REG(),
	.DBG_SSP_REG(),
	.DBG_CYCLES(),
	.DBG_IFETCH(),
	
	.os_rom_a(os_rom_a),
	.os_rom_ce_n(os_rom_ce_n),
	.os_rom_oe_n(os_rom_oe_n),
	.os_rom_q(os_rom_q),
	.os_rom_oe(os_rom_oe),
	
	.cart_a(cart_a),
	.cart_ce_n(cart_ce_n),
	.cart_oe_n(cart_oe_n),
	.cart_q(cart_q),
	.cart_oe(cart_oe),
	
	.fdram(fdram),
	
	.vga_vs_n(vga_vs_n),
	.vga_hs_n(vga_hs_n),
	.vga_r(vga_r),
	.vga_g(vga_g),
	.vga_b(vga_b)
);


///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////


`define SS_IDLE		4'b0000
`define SS_END		4'b1111

// Burst Read
// 1) MC: Sets address, Asserts ADSC_N / OE_N		SS: Idle
// 2) MC:	Asserts ADV_N													SS: Receives "Read start"
// 3) MC: Deasserts ADV_N												SS: Receives "Burst advance"
// 4) MC: Latches data @address at the eoc			SS: Outputs data @address
// 5) MC: Latches data @address+1 at the eoc		SS: Outputs data @address+1

`define SS_RD_1	4'b0001
`define SS_RD_2	4'b0010
`define SS_RD_3	4'b0011
`define SS_RD_4	4'b0100
`define SS_RD_5	4'b0101

// Burst Write
// 1) MC: Sets address, Asserts ADSC_N / WE_N									SS: Idle
// 2) MC: Sets data @address, BWEs, asserts ADV_N	???					SS: Receives "Write start"
// 3) MC: Sets data @address+1, BWEs,	(de)asserts ADV_N	???		SS: Latches data @address, receives "Burst advance"
// 4) MC: Deasserts all																				SS: Latches data @address+1, receives "Burst stop"
`define SS_WR_1	4'b1001
`define SS_WR_2	4'b1010
`define SS_WR_3	4'b1011
`define SS_WR_4	4'b1100
`define SS_WR_5	4'b1101

// reg		[20:0]	ssram_a = 21'd0;	// 20:2 are wired
wire	[20:0]	ssram_a;	// 20:2 are wired
// reg						ssram_adsc_n = 1'b1;
// reg		[3:0]		ssram_be_n = 4'b1111;
// reg						ssram_ce_n = 1'b1;
// reg						ssram_oe_n = 1'b1;
// reg						ssram_we_n = 1'b1;
// reg						ssram_asdp_n = 1'b1;
// reg						ssram_adv_n = 1'b1;
reg		[31:0]	ssram_q0 = 32'd0;
reg		[31:0]	ssram_q1 = 32'd0;

reg		[7:0]		r_ssram_be_n = 8'b11111111;

reg		[3:0]		mem_cyc = `SS_IDLE;

// Fixed outputs
// assign SSRAM_CLK = mem_clk;
assign SSRAM_CLK = sys_clk;
assign SSRAM_CE2 = 1'b1;
assign SSRAM_CE3_n = 1'b0;
assign SSRAM_GW_n = 1'b1;

// FSM
always @(posedge sys_clk)
begin
	// if (~fdram) begin
		// mem_cyc <= `SS_IDLE;
	// end else begin
		case (mem_cyc)
			`SS_IDLE:
				if (fdram) begin
					if (dram_oe_n != 4'b1111) begin
						mem_cyc <= `SS_RD_1;
					end else if ({dram_uw_n, dram_lw_n} != 8'b11111111) begin
						mem_cyc <= `SS_WR_1;
					end
				end
			`SS_RD_1: mem_cyc <= `SS_RD_2;
			`SS_RD_2: mem_cyc <= `SS_RD_3;
			`SS_RD_3: mem_cyc <= `SS_RD_4;
			`SS_RD_4: mem_cyc <= `SS_RD_5;
			`SS_RD_5: mem_cyc <= `SS_END;
			
			`SS_WR_1: mem_cyc <= `SS_WR_2;
			`SS_WR_2: mem_cyc <= `SS_WR_3;
			`SS_WR_3: mem_cyc <= `SS_WR_4;
			`SS_WR_4: mem_cyc <= `SS_WR_5;
			`SS_WR_5: mem_cyc <= `SS_END;
			
			default:
				if (dram_cas_n) begin
					mem_cyc <= `SS_IDLE;
				end else begin
					mem_cyc <= `SS_END;
				end
		endcase
	// end
end

// Latch dram_uw_n and dram_lw_n in case of write
always @(posedge sys_clk)
begin
	if (mem_cyc == `SS_WR_1) begin
		r_ssram_be_n <= { dram_uw_n[3], dram_lw_n[3], 
											dram_uw_n[2], dram_lw_n[2], 
											dram_uw_n[1], dram_lw_n[1], 
											dram_uw_n[0], dram_lw_n[0] };
	end
end

// Address
assign SSRAM_ADDR = ssram_a;

// reg dram_ras_n_prev = 1'b0;
// reg dram_cas_n_prev = 1'b0;

// always @(posedge sys_clk)
// begin
	// dram_ras_n_prev <= dram_ras_n;
	// dram_cas_n_prev <= dram_cas_n;
	// if (dram_ras_n_prev & ~dram_ras_n) begin
		// ssram_a[20:11] <= { dram_a[9], dram_a[8], dram_a[7], dram_a[6], dram_a[5], 
			// dram_a[4], dram_a[3], dram_a[2], dram_a[1], dram_a[0] };
	// end
	// if (dram_cas_n_prev & ~dram_cas_n) begin
		// ssram_a[10:3] <= { dram_a[7], dram_a[6], dram_a[5], 
			// dram_a[4], dram_a[3], dram_a[2], dram_a[1], dram_a[0] };
	// end
// end	

assign ssram_a[20:3] = cart_a[20:3];
assign ssram_a[2:0] = 3'b000;

// Control
assign SSRAM_ADSC_n = (mem_cyc == `SS_RD_1) ? 1'b0 : 1'b1;
assign SSRAM_ADSP_n = (mem_cyc == `SS_WR_1) ? 1'b0 : 1'b1;
assign SSRAM_ADV_n = ( (mem_cyc == `SS_RD_2) || (mem_cyc == `SS_WR_4)  ) ? 1'b0 : 1'b1;
assign SSRAM_CE1_n = ( (mem_cyc == `SS_RD_1) || (mem_cyc == `SS_WR_1)  ) ? 1'b0 : 1'b1;
assign SSRAM_BE_n[0] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[4] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[0] : 1'b1;
assign SSRAM_BE_n[1] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[5] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[1] : 1'b1;
assign SSRAM_BE_n[2] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[6] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[2] : 1'b1;
assign SSRAM_BE_n[3] = (mem_cyc == `SS_WR_2) ? r_ssram_be_n[7] : (mem_cyc == `SS_WR_4) ? r_ssram_be_n[3] : 1'b1;
assign SSRAM_BWE_n = ( (mem_cyc == `SS_WR_2) || (mem_cyc == `SS_WR_4)  ) ? 1'b0 : 1'b1;
assign SSRAM_OE_n = ( (mem_cyc == `SS_RD_2) || (mem_cyc == `SS_RD_3) || (mem_cyc == `SS_RD_4) || (mem_cyc == `SS_RD_5) ) ? 1'b0 : 1'b1;

// Data bus
assign SSRAM_DQ = ( (mem_cyc == `SS_WR_2) || (mem_cyc == `SS_WR_3) ) ? {
		dram_d[63], dram_d[62], dram_d[61], dram_d[60], dram_d[59], dram_d[58], dram_d[57], dram_d[56], 
		dram_d[55], dram_d[54], dram_d[53], dram_d[52], dram_d[51], dram_d[50], dram_d[49], dram_d[48], 
		dram_d[47], dram_d[46], dram_d[45], dram_d[44], dram_d[43], dram_d[42], dram_d[41], dram_d[40], 
		dram_d[39], dram_d[38], dram_d[37], dram_d[36], dram_d[35], dram_d[34], dram_d[33], dram_d[32]
	} : ( (mem_cyc == `SS_WR_4) || (mem_cyc == `SS_WR_5) ) ? {
		dram_d[31], dram_d[30], dram_d[29], dram_d[28], dram_d[27], dram_d[26], dram_d[25], dram_d[24], 
		dram_d[23], dram_d[22], dram_d[21], dram_d[20], dram_d[19], dram_d[18], dram_d[17], dram_d[16], 
		dram_d[15], dram_d[14], dram_d[13], dram_d[12], dram_d[11], dram_d[10], dram_d[9], dram_d[8], 
		dram_d[7], dram_d[6], dram_d[5], dram_d[4], dram_d[3], dram_d[2], dram_d[1], dram_d[0]
	} : 32'bzzzzzzzz_zzzzzzzz_zzzzzzzz_zzzzzzzz;

// Latches
always @(posedge sys_clk)
begin
	if (mem_cyc == `SS_RD_3) begin
		ssram_q1 <= SSRAM_DQ;
	end
end

always @(posedge sys_clk)
begin
	if (mem_cyc == `SS_RD_4) begin
		ssram_q0 <= SSRAM_DQ;
	end
end


assign dram_q[0:63] = {
	ssram_q0[0], ssram_q0[1], ssram_q0[2], ssram_q0[3], ssram_q0[4], ssram_q0[5], ssram_q0[6], ssram_q0[7],
	ssram_q0[8], ssram_q0[9], ssram_q0[10], ssram_q0[11], ssram_q0[12], ssram_q0[13], ssram_q0[14], ssram_q0[15],
	ssram_q0[16], ssram_q0[17], ssram_q0[18], ssram_q0[19], ssram_q0[20], ssram_q0[21], ssram_q0[22], ssram_q0[23],
	ssram_q0[24], ssram_q0[25], ssram_q0[26], ssram_q0[27], ssram_q0[28], ssram_q0[29], ssram_q0[30], ssram_q0[31],
	ssram_q1[0], ssram_q1[1], ssram_q1[2], ssram_q1[3], ssram_q1[4], ssram_q1[5], ssram_q1[6], ssram_q1[7],
	ssram_q1[8], ssram_q1[9], ssram_q1[10], ssram_q1[11], ssram_q1[12], ssram_q1[13], ssram_q1[14], ssram_q1[15],
	ssram_q1[16], ssram_q1[17], ssram_q1[18], ssram_q1[19], ssram_q1[20], ssram_q1[21], ssram_q1[22], ssram_q1[23],
	ssram_q1[24], ssram_q1[25], ssram_q1[26], ssram_q1[27], ssram_q1[28], ssram_q1[29], ssram_q1[30], ssram_q1[31]
};
assign dram_oe = (~dram_cas_n) ? ~dram_oe_n : 4'b0000;

endmodule
