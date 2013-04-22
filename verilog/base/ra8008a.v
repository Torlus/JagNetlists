/* verilator lint_off LITENDIAN */
`include "defs.v"

module ra8008a
(
	output	[0:7]	z,
	input					clk,
	input		[0:7]	a,
	input	sys_clk
);

wire [7:0] a_r;

reg	[7:0]	r_z;
reg	[7:0]	rom_blk [0:(1<<8)-1];
reg clk_prev = 1'b1;

initial
begin
	$readmemh("cry_r.mem", rom_blk);
end

assign a_r[7:0] = {a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]};
assign z[0:7] = {r_z[0], r_z[1], r_z[2], r_z[3], r_z[4], r_z[5], r_z[6], r_z[7]};

// always@(posedge clk)
always@(posedge sys_clk)
begin
	clk_prev <= clk;
	//if (~clk_prev & clk) begin
		r_z <= rom_blk[a_r][7:0];
	//end
end

endmodule
/* verilator lint_on LITENDIAN */
