`include "defs.v"

module fd1q
(
	output	q,
	input		d,
	input		cp
);

reg	data = 1'b0;

assign q = data;

always @(posedge cp)
begin
	data <= d;
end

endmodule
