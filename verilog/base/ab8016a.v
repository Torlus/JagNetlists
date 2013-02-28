`include "defs.v"

module ab8016a
(
	inout		[0:15]	z,
	input						cen,
	input						rw,
	input		[0:7]		a
);

reg	[0:15]	r_z;
reg	[0:15]	ram_blk [0:(1<<8)-1];

assign #3 z = (~cen & rw) ? r_z : 16'bzzzzzzzzzzzzzzzz;

always@(a or cen or rw)
begin
	if (~cen) begin
		if (~rw) begin
			ram_blk[a][0:15] <= z;
		end
		r_z <= ram_blk[a][0:15];
	end
end

endmodule
