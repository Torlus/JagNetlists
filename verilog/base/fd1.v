`include "defs.v"

module fd1
(
	output	q,
	output	qn,
	input		d,
	input		cp
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

always @(posedge cp)
begin
	data <= d;
end

endmodule
