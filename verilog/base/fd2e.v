`include "defs.v"

module fd2e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		cd,
	input		ti,
	input		te
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

always @(posedge cp or negedge cd)
begin
	if (~cd) begin
		data <= 1'b0;
	end else begin
		if (~te) begin
			data <= d;
		end else begin
			data <= ti;
		end
	end
end

endmodule
