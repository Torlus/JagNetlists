`include "defs.v"

module fd1
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		sys_clk
);

reg	data = 1'b0;
reg cp_prev = 1'b1;

assign q = data;
assign qn = ~data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	cp_prev <= cp;
	if (~cp_prev & cp) begin
		data <= d;
	end
end

endmodule
