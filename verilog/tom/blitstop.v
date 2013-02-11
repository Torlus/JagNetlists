`include "defs.v"

module blitstop
(
	inout gpu_dout_1,
	output stopped,
	output reset_n,
	input clk_0,
	input dwrite_1,
	input[0:31] gpu_din;
	input nowrite,
	input statrd,
	input stopld,
	input xreset_n
);
wire resume_n;
wire coll_abort_n;
wire coll_abort;
wire stopen;
wire collidea;
wire collideb;
wire collideb_n;
wire collide;
wire idle;
wire drv_reset;
wire stt_0;
wire stt_1;
wire stt_2;
wire drst;
wire drv_reset_n;

// Output buffers
wire stopped_obuf;


// Output buffers
assign stopped = stopped_obuf;


// BLITSTOP.NET (38) - resume\ : nd2
assign resume_n = ~(stopld & gpu_din[0]);

// BLITSTOP.NET (39) - coll_abort\ : nd2
assign coll_abort_n = ~(stopld & gpu_din[1]);

// BLITSTOP.NET (40) - coll_abort : iv
assign coll_abort = ~coll_abort_n;

// BLITSTOP.NET (41) - stopen : fdsyncr
fdsyncr stopen_inst
(
	.q(stopen), // IO
	.d(gpu_din[2]), // IN
	.ld(stopld), // IN
	.clk(clk_0), // IN
	.rst_n(xreset_n)  // IN
);

// BLITSTOP.NET (46) - stat[1] : ts
assign gpu_dout_1 = (statrd) ? stopped_obuf : 1'bz;

// BLITSTOP.NET (53) - collidea : an3
assign collidea = nowrite & stopen & dwrite_1;

// BLITSTOP.NET (54) - collideb : fd1q
fd1q collideb_inst
(
	.q(collideb), // OUT
	.d(collidea), // IN
	.cp(clk_0)  // IN
);

// BLITSTOP.NET (55) - collideb\ : iv
assign collideb_n = ~collideb;

// BLITSTOP.NET (56) - collide : an2
assign collide = collidea & collideb_n;

// BLITSTOP.NET (60) - idle : nr2
assign idle = ~(stopped_obuf | drv_reset);

// BLITSTOP.NET (62) - stt0 : nd2
assign stt_0 = ~(idle & collide);

// BLITSTOP.NET (63) - stt1 : nd3
assign stt_1 = ~(stopped_obuf & resume_n & coll_abort_n);

// BLITSTOP.NET (64) - stt2 : nd2
assign stt_2 = ~(stt_0 & stt_1);

// BLITSTOP.NET (65) - stopped : fd2q
fd2q stopped_inst
(
	.q(stopped_obuf), // OUT
	.d(stt_2), // IN
	.cp(clk_0), // IN
	.cd(xreset_n)  // IN
);

// BLITSTOP.NET (67) - drst : an2
assign drst = stopped_obuf & coll_abort;

// BLITSTOP.NET (68) - drv_reset : fd2q
fd2q drv_reset_inst
(
	.q(drv_reset), // OUT
	.d(drst), // IN
	.cp(clk_0), // IN
	.cd(xreset_n)  // IN
);

// BLITSTOP.NET (73) - drv_reset\ : iv
assign drv_reset_n = ~drv_reset;

// BLITSTOP.NET (74) - reset\ : an2u
assign reset_n = xreset_n & drv_reset_n;
endmodule
