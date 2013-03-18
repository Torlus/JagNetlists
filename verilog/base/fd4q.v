`include "defs.v"

module fd4q
(
	output	q,
	input		d,
	input		cp,
	input		sd,
	input		sys_clk
);

reg	data = 1'b1;
reg cp_prev = 1'b1;

assign q = data;

// always @(posedge cp or negedge sd)
always @(posedge sys_clk)
begin
	cp_prev <= cp;
	if ((~cp_prev & cp) | (~sd)) begin
		if (~sd) begin
			data <= 1'b1;
		end else begin
			data <= d;
		end
	end
end

endmodule
