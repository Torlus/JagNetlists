`include "defs.v"

module fd2
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		cd,
	input		sys_clk
);

reg	data = 1'b0;

assign q = data;
assign qn = ~data;

// always @(posedge cp or negedge cd)
always @(posedge sys_clk)
begin
	if (cp | (~cd)) begin
		if (~cd) begin
			data <= 1'b0;
		end else begin
			data <= d;
		end
	end
end

endmodule
