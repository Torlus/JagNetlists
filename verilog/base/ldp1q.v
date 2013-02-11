`include "defs.v"

module ldp1q
(
	output	q,
	input		d,
	input		g
);

reg	data = 1'b0;

assign q = data;

always @(d or g)
begin
	if (g) begin
		data <= d;
	end
end

endmodule
