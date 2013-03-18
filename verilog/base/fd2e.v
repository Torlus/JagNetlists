`include "defs.v"

module fd2e
(
	output	q,
	output	qn,
	input		d,
	input		cp,
	input		cd,
	input		ti,
	input		te,
	input		sys_clk
);

reg	data = 1'b0;
reg cp_prev = 1'b1;

assign q = data;
assign qn = ~data;

// always @(posedge cp or negedge cd)
always @(posedge sys_clk)
begin
	cp_prev <= cp;
	if ((~cp_prev & cp) | (~cd)) begin
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
end

endmodule
