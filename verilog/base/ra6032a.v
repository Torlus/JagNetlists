/* verilator lint_off LITENDIAN */
`include "defs.v"

module ra6032a
(
	output	[0:26]	z,
	input						clk,
	input		[0:5]		a,
	input	sys_clk
);

reg	[0:26]	r_z;
reg	[0:31]	rom_blk [0:(1<<6)-1];
reg clk_prev = 1'b1;

initial
begin
	$readmemh("mcode.rom", rom_blk);
end

assign z[0:26] = r_z[0:26];

// always@(posedge clk)
always@(posedge sys_clk)
begin
	clk_prev <= clk;
	if (~clk_prev & clk) begin
		r_z <= rom_blk[a][0:5];
	end
end


endmodule
/* verilator lint_on LITENDIAN */