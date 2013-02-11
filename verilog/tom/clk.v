`include "defs.v"

module clk
(
	input resetl,
	input pclk,
	input vxclk,
	input ndtest,
	input cfg_7,
	output cfgw,
	output cfgen,
	output clk,
	output vclk,
	output tlw
);
wire clk1;
wire clk2;
wire vclk1;
wire cfgwl;
wire cfgend;
wire nottest;
wire cfgeni;
wire external;
wire internal;

// Output buffers
wire cfgw_obuf;
wire cfgen_obuf;
wire clk_obuf;
wire vclk_obuf;
wire tlw_obuf;


// Output buffers
assign cfgw = cfgw_obuf;
assign cfgen = cfgen_obuf;
assign clk = clk_obuf;
assign vclk = vclk_obuf;
assign tlw = tlw_obuf;


// CLK.NET (35) - clk1 : niv
assign clk1 = pclk;

// CLK.NET (36) - clk2 : nivu
assign clk2 = clk1;

// CLK.NET (37) - clk : bniv310
assign clk_obuf = clk2;

// CLK.NET (42) - tlw : ivu
assign tlw_obuf = ~clk1;

// CLK.NET (58) - vclk1 : nivh
assign vclk1 = vxclk;

// CLK.NET (59) - vclk : bniv34
assign vclk_obuf = vclk1;

// CLK.NET (80) - cfgwl : fd1q
fd1q cfgwl_inst
(
	.q(cfgwl), // OUT
	.d(resetl), // IN
	.cp(pclk)  // IN
);

// CLK.NET (81) - cfgw : iv
assign cfgw_obuf = ~cfgwl;

// CLK.NET (82) - cfgend : fd2q
fd2q cfgend_inst
(
	.q(cfgend), // OUT
	.d(cfgwl), // IN
	.cp(pclk), // IN
	.cd(resetl)  // IN
);

// CLK.NET (83) - nottest : iv
assign nottest = ~ndtest;

// CLK.NET (84) - cfgeni : nd2
assign cfgeni = ~(cfgend & nottest);

// CLK.NET (85) - cfgen : ivh
assign cfgen_obuf = ~cfgeni;

// CLK.NET (87) - external : ldp1q
ldp1q external_inst
(
	.q(external), // OUT
	.d(cfg_7), // IN
	.g(cfgw_obuf)  // IN
);

// CLK.NET (88) - internal : iv
assign internal = ~external;
endmodule
