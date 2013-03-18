`include "defs.v"

module ra8008c
(
	output	[0:7]	z,
	input					clk,
	input		[0:7]	a,
	input	sys_clk
);

reg	[0:7]	r_z;
reg	[0:7]	rom_blk [0:(1<<8)-1];
reg clk_prev = 1'b1;

initial
begin
	$readmemh("cry_b.mem", rom_blk);
end

assign z = r_z;

// always@(posedge clk)
always@(posedge sys_clk)
begin
	clk_prev <= clk;
	if (~clk_prev & clk) begin
		r_z <= rom_blk[a][0:7];
	end
end

endmodule
