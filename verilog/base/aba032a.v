`include "defs.v"

module aba032a
(
	output	[0:31]	z_out,
	output	[0:31]	z_oe,
	input		[0:31]	z_in,
	input						cs,
	input						we,
	input		[0:9]		a,
	input						sys_clk
);

wire [9:0]	a_r;

reg	[0:31]	r_z_out;
reg	[0:31]	r_z_oe = 32'h00000000;
reg	[0:31]	r_z_out_dly;
reg	[0:31]	r_z_oe_dly = 32'h00000000;

reg	[0:31]	ram_blk [0:(1<<10)-1];

assign a_r[9:0] = {a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};

assign z_out = r_z_out_dly;
// assign z_oe = r_z_oe_dly;
assign z_oe = r_z_oe;

always @(posedge sys_clk)
begin
	r_z_out_dly <= r_z_out;
	r_z_oe_dly <= r_z_oe;	

	if (cs) begin
		if (we) begin
			ram_blk[a_r][0:31] <= z_in;
		end
		r_z_out <= ram_blk[a_r][0:31];
	end
	r_z_oe <= (cs & ~we) ? 32'hffffffff : 32'h00000000;
end

endmodule
