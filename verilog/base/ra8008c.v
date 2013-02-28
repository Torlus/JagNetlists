`include "defs.v"

module ra8008c
(
	output	[0:7]	z,
	input					clk,
	input		[0:7]	a
);

reg	[0:7]	r_z;
reg	[0:7]	rom_blk [0:(1<<8)-1];

initial
begin
	$readmemh("cry_b.mem", rom_blk);
end

assign z = r_z;

always@(posedge clk)
begin
	r_z <= rom_blk[a][0:7];
end


endmodule
