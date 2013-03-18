`include "defs.v"

module fd4e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		sd,
	input		ti,
	input		te,
	input		sys_clk
);

reg	data = 1'b1;
reg cp_prev = 1'b1;

assign q = data;
assign qn = ~data;

// always @(posedge cp or negedge sd)
always @(posedge sys_clk)
begin
	cp_prev <= cp;
	if ((~cp_prev & cp) | (~sd)) begin
		if (~sd) begin
			data <= 1'b1;
		end else begin
			if (~te) begin
				data <= d;
			end else begin
				data <= ti;
			end
		end
	end
end

endmodule
