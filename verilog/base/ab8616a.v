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
reg	[0:15]	ram_blk [0:(1<<9)-1];

// assign #3 z = (~cen & rw) ? r_z : 16'bzzzzzzzzzzzzzzzz;
assign z_out = r_z_out;
assign z_oe = r_z_oe;

// always@(a or cen or rw)
always @(posedge sys_clk)
begin
	if (~cen) begin
		if (~rw) begin
			ram_blk[a][0:15] <= z_in;
		end
		r_z_out <= ram_blk[a][0:15];
	end
	r_z_oe <= (~cen & rw) ? 16'hffff : 16'h0000;
end

endmodule
