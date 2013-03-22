/* verilator lint_off LITENDIAN */
`include "defs.v"

module ra6032a
(
	output	[0:26]	z,
	input						clk,
	input		[0:5]		a,
	input	sys_clk
);

wire [5:0]	a_r;

reg	[26:0]	r_z;
reg	[31:0]	rom_blk [0:(1<<6)-1];
reg clk_prev = 1'b1;

initial
begin
	$readmemh("mcode.rom", rom_blk);
end

assign a_r[5:0] = {a[5], a[4], a[3], a[2], a[1], a[0]};

assign z[0:26] = {
	r_z[0], r_z[1], r_z[2], r_z[3], r_z[4], r_z[5], r_z[6], r_z[7], r_z[8], r_z[9], 
	r_z[10], r_z[11], r_z[12], r_z[13], r_z[14], r_z[15], r_z[16], r_z[17], r_z[18], r_z[19],
	r_z[20], r_z[21], r_z[22], r_z[23], r_z[24], r_z[25], r_z[26]
};


// always@(posedge clk)
always@(posedge sys_clk)
begin
	clk_prev <= clk;
	if (~clk_prev & clk) begin
		r_z <= rom_blk[a_r][26:0];
	end
end


endmodule
/* verilator lint_on LITENDIAN */