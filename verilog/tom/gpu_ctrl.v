`include "defs.v"

module gpu_ctrl
(
	inout gpu_dout_0,
	inout gpu_dout_1,
	inout gpu_dout_2,
	inout gpu_dout_3,
	inout gpu_dout_4,
	inout gpu_dout_5,
	inout gpu_dout_11,
	inout gpu_dout_12,
	inout gpu_dout_13,
	inout gpu_dout_14,
	inout gpu_dout_15,
	output bus_hog,
	output cpu_int,
	output go,
	output gpu_irq_0,
	output single_go,
	output single_step,
	input clk,
	input ctrlwr,
	input ctrlwrgo,
	input[0:31] gpu_din;
	input reset_n,
	input single_stop,
	input statrd
);
wire one;
wire zero;
wire goi;
wire got;
wire cpu_intt;
wire gpu_intt;
wire single_got;

// Output buffers
wire bus_hog_obuf;
wire go_obuf;


// Output buffers
assign bus_hog = bus_hog_obuf;
assign go = go_obuf;


// GPU_CTRL.NET (34) - one : tie1
assign one = 1'b1;

// GPU_CTRL.NET (35) - zero : tie0
assign zero = 1'b0;

// GPU_CTRL.NET (39) - goi : mx2
mx2 goi_inst
(
	.z(goi), // OUT
	.a0(go_obuf), // IN
	.a1(gpu_din[0]), // IN
	.s(ctrlwrgo)  // IN
);

// GPU_CTRL.NET (40) - got : fd2q
fd2q got_inst
(
	.q(got), // OUT
	.d(goi), // IN
	.cp(clk), // IN
	.cd(reset_n)  // IN
);

// GPU_CTRL.NET (41) - go : nivh
assign go_obuf = got;

// GPU_CTRL.NET (43) - cpu_intt : an2
assign cpu_intt = ctrlwr & gpu_din[1];

// GPU_CTRL.NET (44) - cpu_int : fd1q
fd1q cpu_int_inst
(
	.q(cpu_int), // OUT
	.d(cpu_intt), // IN
	.cp(clk)  // IN
);

// GPU_CTRL.NET (46) - gpu_intt : an2
assign gpu_intt = ctrlwr & gpu_din[2];

// GPU_CTRL.NET (47) - gpu_int : fd1q
fd1q gpu_int_inst
(
	.q(gpu_irq_0), // OUT
	.d(gpu_intt), // IN
	.cp(clk)  // IN
);

// GPU_CTRL.NET (49) - single_step : fdsyncr
fdsyncr single_step_inst
(
	.q(single_step), // IO
	.d(gpu_din[3]), // IN
	.ld(ctrlwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// GPU_CTRL.NET (52) - single_got : an2
assign single_got = ctrlwr & gpu_din[4];

// GPU_CTRL.NET (53) - single_go : fd1q
fd1q single_go_inst
(
	.q(single_go), // OUT
	.d(single_got), // IN
	.cp(clk)  // IN
);

// GPU_CTRL.NET (55) - bus_hog : fdsyncr
fdsyncr bus_hog_inst
(
	.q(bus_hog_obuf), // IO
	.d(gpu_din[11]), // IN
	.ld(ctrlwr), // IN
	.clk(clk), // IN
	.rst_n(reset_n)  // IN
);

// GPU_CTRL.NET (60) - stat[0] : ts
assign gpu_dout_0 = (statrd) ? go_obuf : 1'bz;

// GPU_CTRL.NET (61) - stat[1-2] : ts
assign gpu_dout_1 = (statrd) ? zero : 1'bz;
assign gpu_dout_2 = (statrd) ? zero : 1'bz;

// GPU_CTRL.NET (62) - stat[3] : ts
assign gpu_dout_3 = (statrd) ? single_stop : 1'bz;

// GPU_CTRL.NET (63) - stat[4] : ts
assign gpu_dout_4 = (statrd) ? zero : 1'bz;

// GPU_CTRL.NET (64) - stat[5] : ts
assign gpu_dout_5 = (statrd) ? zero : 1'bz;

// GPU_CTRL.NET (65) - stat[11] : ts
assign gpu_dout_11 = (statrd) ? bus_hog_obuf : 1'bz;

// GPU_CTRL.NET (72) - stat[12] : ts
assign gpu_dout_12 = (statrd) ? zero : 1'bz;

// GPU_CTRL.NET (73) - stat[13] : ts
assign gpu_dout_13 = (statrd) ? one : 1'bz;

// GPU_CTRL.NET (74) - stat[14] : ts
assign gpu_dout_14 = (statrd) ? zero : 1'bz;

// GPU_CTRL.NET (75) - stat[15] : ts
assign gpu_dout_15 = (statrd) ? zero : 1'bz;
endmodule
