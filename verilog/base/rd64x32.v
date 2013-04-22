`include "defs.v"

module rd64x32
(
	output	[31:0]	qa,
	output	[31:0]	qb,
	input						nwea,
	input						clka,
	input		[5:0]		aa,
	input		[31:0]	da,
	input						nweb,
	input						clkb,
	input		[5:0]		ab,
	input		[31:0]	db,	
	input						sys_clk
);

reg	[31:0]	r_qa;
reg	[31:0]	r_qb;
reg	[31:0]	ram_blk [0:(1<<6)-1];

assign qa = r_qa;
assign qb = r_qb;

always @(posedge sys_clk)
begin
	if (clka) begin
		if (~nwea) begin
			ram_blk[aa][31:0] <= da;
			$display("GPU REG WR-A $%x #%x", aa, da);
		end
		r_qa <= ram_blk[aa][31:0];
	end
	if (clkb) begin
		if (~nweb) begin
			ram_blk[ab][31:0] <= db;
			$display("GPU REG WR-B $%x #%x", ab, db);
		end
		r_qb <= ram_blk[ab][31:0];
	end
end

endmodule
