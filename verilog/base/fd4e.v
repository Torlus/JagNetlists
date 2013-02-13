`include "defs.v"

module fd4e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		sd,
	input		ti,
	input		te
);

reg	data = 1'b1;

assign q = data;
assign qn = ~data;

always @(posedge cp or negedge sd)
begin
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

endmodule
