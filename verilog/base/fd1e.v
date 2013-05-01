`include "defs.v"

module fd1e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		ti,
	input		te,
	input		sys_clk
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	if (cp) begin
		if (~te) begin
			data <= d;
		end else begin
			data <= ti;
		end
	end
end

endmodule
