/* verilator lint_off LITENDIAN */
`include "defs.v"

module raa016a
(
	output	[0:15]	z_out,
	output	[0:15]	z_oe,
	input		[0:15]	z_in,
	input						cs,
	input		[0:9]		a,
	input						sys_clk
);

wire [9:0]	a_r;
`ifdef SIMULATION
reg	[15:0]	r_z;
`else
wire [15:0]	r_z;
`endif

wire [0:15]	r_z_out;

assign a_r[9:0] = {a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign r_z_out[0:15] = {r_z[0], r_z[1], r_z[2], r_z[3], r_z[4], r_z[5], r_z[6], r_z[7],
		r_z[8], r_z[9], r_z[10], r_z[11], r_z[12], r_z[13], r_z[14], r_z[15]};

reg	[0:15]	r_z_oe = 16'h0000;
reg	[0:15]	r_z_oe_dly = 16'h0000;

// Values are in 32 bits, but only 16 are used

`ifdef SIMULATION
	reg	[0:15]	r_z_out_dly;
	reg	[15:0]	rom_blk [0:(1<<10)-1];

	initial
	begin
		$readmemh("sinerom.mem", rom_blk);
	end


	assign z_out = r_z_out_dly;
	// assign z_oe = r_z_oe_dly;
	assign z_oe = r_z_oe;

	always @(posedge sys_clk)
	begin
		r_z_out_dly <= r_z_out;
		r_z_oe_dly <= r_z_oe;	

		if (~cs) begin
			r_z[15:0] <= rom_blk[a_r][15:0];
			$display("SINEROM $%03x #%04x", a_r, r_z);
		end
		r_z_oe <= (~cs) ? 16'hffff : 16'h0000;
	end
`else

	assign z_out = r_z_out;
	// assign z_oe = r_z_oe_dly;
	assign z_oe = r_z_oe;
	
	always @(posedge sys_clk)
	begin
		// r_z_oe_dly <= r_z_oe;	
		r_z_oe <= (~cs) ? 16'hffff : 16'h0000;
	end

		altsyncram	altsyncram_component (
				.clock0 (sys_clk),
				.address_a (a_r),
				.q_a (r_z),
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
				.data_a ({16{1'b1}}),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_a (1'b0),
				.wren_b (1'b0));
	defparam
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_output_a = "BYPASS",
		altsyncram_component.init_file = "sinerom.mif",
		altsyncram_component.intended_device_family = "Cyclone II",
		altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 1024,
		altsyncram_component.operation_mode = "ROM",
		altsyncram_component.outdata_aclr_a = "NONE",
		altsyncram_component.outdata_reg_a = "CLOCK0",
		altsyncram_component.widthad_a = 10,
		altsyncram_component.width_a = 16,
		altsyncram_component.width_byteena_a = 1;

`endif

endmodule
/* verilator lint_on LITENDIAN */
