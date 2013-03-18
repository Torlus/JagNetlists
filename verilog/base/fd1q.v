`include "defs.v"

module fd1q
(
	output	q,
	input		d,
	input		cp,
	input		sys_clk
);

reg	data = 1'b0;
reg cp_prev = 1'b1;

assign q = data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	cp_prev <= cp;
	if (~cp_prev & cp) begin
		data <= d;
	end
end

endmodule
