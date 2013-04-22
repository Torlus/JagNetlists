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
reg	[15:0]	r_z;

wire [0:15]	r_z_out;
reg	[0:15]	r_z_oe = 16'h0000;
reg	[0:15]	r_z_out_dly;
reg	[0:15]	r_z_oe_dly = 16'h0000;

// Values are in 32 bits, but only 16 are used
reg	[15:0]	rom_blk [0:(1<<10)-1];

initial
begin
	$readmemh("sinerom.mem", rom_blk);
end

assign a_r[9:0] = {a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign r_z_out[0:15] = {r_z[0], r_z[1], r_z[2], r_z[3], r_z[4], r_z[5], r_z[6], r_z[7],
		r_z[8], r_z[9], r_z[10], r_z[11], r_z[12], r_z[13], r_z[14], r_z[15]};

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

endmodule
/* verilator lint_on LITENDIAN */
