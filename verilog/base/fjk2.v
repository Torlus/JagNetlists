`include "defs.v"

module fjk2
(
	output	q,
	output	qn,
	input		j,
	input		k,
	input		cp,
	input		cd
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

always @(posedge cp or negedge cd)
begin
	if (~cd) begin
		data <= 1'b0;
	end else begin
		if (~j & k) begin
			data <= 1'b0;
		end else if (j & ~k) begin
			data <= 1'b1;
		end else if (j & k) begin
			data <= ~data;
		end
	end
end

endmodule
