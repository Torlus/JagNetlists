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

assign q = data;
assign qn = ~data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	if (cp) begin
		data <= d;
	end
end

endmodule
