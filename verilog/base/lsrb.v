`include "defs.v"

module lsrb
(
	output	q,
	input		r,
	input		s
);

reg	data = 1'b0;

assign q = data;

always @(r or s)
begin
	if (s & ~r) begin
		data <= 1'b1;
	end else if (r) begin
		data <= 1'b0;
	end
end

endmodule
