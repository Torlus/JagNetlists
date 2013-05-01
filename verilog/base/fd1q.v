`include "defs.v"

module fd1q
(
	output	q,
	input		d,
	input		cp,
	input		sys_clk
);

reg	data = 1'b0;

assign q = data;

// always @(posedge cp)
always @(posedge sys_clk)
begin
	if (cp) begin
		data <= d;
	end
end

endmodule
