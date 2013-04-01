/* verilator lint_off LITENDIAN */
`include "defs.v"

module vgalb
(
	output	[23:0]	q,
	input		[23:0]	d,
	input						we,
	input		[9:0]		a,
	input						sys_clk
);

reg	[23:0]	r_q_out;
reg	[23:0]	r_q_out_dly;

reg	[23:0]	ram_blk [0:(1<<10)-1];

assign q = r_q_out_dly;

always @(posedge sys_clk)
begin
	r_q_out_dly <= r_q_out;
	if (we) begin
		ram_blk[a][23:0] <= d;
	end
	r_q_out <= ram_blk[a][23:0];
end

endmodule
/* verilator lint_on LITENDIAN */
