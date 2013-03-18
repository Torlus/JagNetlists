`include "defs.v"

module ab8616a
(
	output	[0:15]	z_out,
	output	[0:15]	z_oe,
	input		[0:15]	z_in,
	input						cen,
	input						rw,
	input		[0:8]		a,
	input						sys_clk
);

reg	[0:15]	r_z_out;
reg	[0:15]	r_z_oe = 16'h0000;
reg	[0:15]	r_z_out_dly;
reg	[0:15]	r_z_oe_dly = 16'h0000;

reg	[0:15]	ram_blk [0:(1<<9)-1];

assign z_out = r_z_out_dly;
assign z_oe = r_z_oe_dly;

always @(posedge sys_clk)
begin
	r_z_out_dly <= r_z_out;
	r_z_oe_dly <= r_z_oe;	

	if (~cen) begin
		if (~rw) begin
			ram_blk[a][0:15] <= z_in;
		end
		r_z_out <= ram_blk[a][0:15];
	end
	r_z_oe <= (~cen & rw) ? 16'hffff : 16'h0000;
end

endmodule
