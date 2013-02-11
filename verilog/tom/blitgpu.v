`include "defs.v"

module blitgpu
(
	output a1baseld,
	output a1flagld,
	output a1fracld,
	output a1incld,
	output a1incfld,
	output a1posrd,
	output a1posfrd,
	output a1ptrld,
	output a1stepld,
	output a1stepfld,
	output a1winld,
	output a2baseld,
	output a2flagld,
	output a2posrd,
	output a2ptrld,
	output a2stepld,
	output a2winld,
	output cmdld,
	output countld,
	output dstdld_0,
	output dstdld_1,
	output dstzld_0,
	output dstzld_1,
	output iincld,
	output intld_0,
	output intld_1,
	output intld_2,
	output intld_3,
	output patdld_0,
	output patdld_1,
	output srcd1ld_0,
	output srcd1ld_1,
	output srcz1ld_0,
	output srcz1ld_1,
	output srcz2ld_0,
	output srcz2ld_1,
	output statrd,
	output stopld,
	output zedld_0,
	output zedld_1,
	output zedld_2,
	output zedld_3,
	output zincld,
	input a1fracldi,
	input a1ptrldi,
	input a2ptrldi,
	input blit_back,
	input bliten,
	input dstdread,
	input dstzread,
	input[0:23] gpu_addr;
	input gpu_memw,
	input patdadd,
	input patfadd,
	input srcdread,
	input srcz1add,
	input srczread
);
wire blit_back_n;
wire gpua_2;
wire gpua_3;
wire gpua_4;
wire gpua_5;
wire gpua_6;
wire gpua_7;
wire gpua_n_2;
wire gpua_n_3;
wire gpua_n_4;
wire gpua_n_5;
wire gpua_n_6;
wire gpua_n_7;
wire wren_n_0;
wire wren_n_1;
wire wren_n_2;
wire wren_n_3;
wire wren_n_4;
wire a1ptrldg;
wire a1fracldg;
wire a2ptrldg;
wire cmdldt;
wire countldt;
wire srcd1ldg_0;
wire srcd1ldg_1;
wire dstdldg_0;
wire dstdldg_1;
wire dstzldg_0;
wire dstzldg_1;
wire srcz1ldg_0;
wire srcz1ldg_1;
wire patdldg_0;
wire patdldg_1;
wire unused_0;
wire gpu_memw_n;
wire brd;

// BLITGPU.NET (67) - blit_back\ : iv
assign blit_back_n = ~blit_back;

// BLITGPU.NET (73) - gpua[2-4] : nivm
assign gpua_2 = gpu_addr[2];
assign gpua_3 = gpu_addr[3];
assign gpua_4 = gpu_addr[4];

// BLITGPU.NET (74) - gpua[5-7] : niv
assign gpua_5 = gpu_addr[5];
assign gpua_6 = gpu_addr[6];
assign gpua_7 = gpu_addr[7];

// BLITGPU.NET (75) - gpua\[2-7] : iv
assign gpua_n_2 = ~gpua_2;
assign gpua_n_3 = ~gpua_3;
assign gpua_n_4 = ~gpua_4;
assign gpua_n_5 = ~gpua_5;
assign gpua_n_6 = ~gpua_6;
assign gpua_n_7 = ~gpua_7;

// BLITGPU.NET (77) - wren0 : nd5
nd5 wren0_inst
(
	.q(wren_n_0), // OUT
	.a_0(gpua_n_5), // IN
	.a_1(gpua_n_6), // IN
	.a_2(gpua_n_7), // IN
	.a_3(bliten), // IN
	.a_4(gpu_memw)  // IN
);

// BLITGPU.NET (79) - wren1 : nd5
nd5 wren1_inst
(
	.q(wren_n_1), // OUT
	.a_0(gpua_5), // IN
	.a_1(gpua_n_6), // IN
	.a_2(gpua_n_7), // IN
	.a_3(bliten), // IN
	.a_4(gpu_memw)  // IN
);

// BLITGPU.NET (81) - wren2 : nd6
assign wren_n_2 = ~(gpua_n_5 & gpua_6 & gpua_n_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (83) - wren3 : nd6
assign wren_n_3 = ~(gpua_5 & gpua_6 & gpua_n_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (85) - wren4 : nd6
assign wren_n_4 = ~(gpua_n_5 & gpua_n_6 & gpua_7 & bliten & gpu_memw & blit_back_n);

// BLITGPU.NET (88) - dec0 : d38gh
d38gh dec0_inst
(
	.z0(a1baseld), // OUT
	.z1(a1flagld), // OUT
	.z2(a1winld), // OUT
	.z3(a1ptrldg), // OUT
	.z4(a1stepld), // OUT
	.z5(a1stepfld), // OUT
	.z6(a1fracldg), // OUT
	.z7(a1incld), // OUT
	.a0(gpua_2), // IN
	.a1(gpua_3), // IN
	.a2(gpua_4), // IN
	.g(wren_n_0)  // IN
);

// BLITGPU.NET (91) - dec1 : d38gh
d38gh dec1_inst
(
	.z0(a1incfld), // OUT
	.z1(a2baseld), // OUT
	.z2(a2flagld), // OUT
	.z3(a2winld), // OUT
	.z4(a2ptrldg), // OUT
	.z5(a2stepld), // OUT
	.z6(cmdldt), // OUT
	.z7(countldt), // OUT
	.a0(gpua_2), // IN
	.a1(gpua_3), // IN
	.a2(gpua_4), // IN
	.g(wren_n_1)  // IN
);

// BLITGPU.NET (94) - dec2 : d38gh
d38gh dec2_inst
(
	.z0(srcd1ldg_0), // OUT
	.z1(srcd1ldg_1), // OUT
	.z2(dstdldg_0), // OUT
	.z3(dstdldg_1), // OUT
	.z4(dstzldg_0), // OUT
	.z5(dstzldg_1), // OUT
	.z6(srcz1ldg_0), // OUT
	.z7(srcz1ldg_1), // OUT
	.a0(gpua_2), // IN
	.a1(gpua_3), // IN
	.a2(gpua_4), // IN
	.g(wren_n_2)  // IN
);

// BLITGPU.NET (97) - dec3 : d38gh
d38gh dec3_inst
(
	.z0(srcz2ld_0), // OUT
	.z1(srcz2ld_1), // OUT
	.z2(patdldg_0), // OUT
	.z3(patdldg_1), // OUT
	.z4(iincld), // OUT
	.z5(zincld), // OUT
	.z6(stopld), // OUT
	.z7(intld_0), // OUT
	.a0(gpua_2), // IN
	.a1(gpua_3), // IN
	.a2(gpua_4), // IN
	.g(wren_n_3)  // IN
);

// BLITGPU.NET (100) - dec4 : d38gh
d38gh dec4_inst
(
	.z0(intld_1), // OUT
	.z1(intld_2), // OUT
	.z2(intld_3), // OUT
	.z3(zedld_0), // OUT
	.z4(zedld_1), // OUT
	.z5(zedld_2), // OUT
	.z6(zedld_3), // OUT
	.z7(unused_0), // OUT
	.a0(gpua_2), // IN
	.a1(gpua_3), // IN
	.a2(gpua_4), // IN
	.g(wren_n_4)  // IN
);

// BLITGPU.NET (103) - cmdld : nivu
assign cmdld = cmdldt;

// BLITGPU.NET (104) - countld : nivu
assign countld = countldt;

// BLITGPU.NET (108) - a1ptrld : or2u
assign a1ptrld = a1ptrldi | a1ptrldg;

// BLITGPU.NET (109) - a1fracld : or2u
assign a1fracld = a1fracldi | a1fracldg;

// BLITGPU.NET (110) - a2ptrld : or2u
assign a2ptrld = a2ptrldi | a2ptrldg;

// BLITGPU.NET (111) - dstdld[0-1] : or2
assign dstdld_0 = dstdldg_0 | dstdread;
assign dstdld_1 = dstdldg_1 | dstdread;

// BLITGPU.NET (112) - dstzld[0-1] : or2
assign dstzld_0 = dstzldg_0 | dstzread;
assign dstzld_1 = dstzldg_1 | dstzread;

// BLITGPU.NET (113) - srcd1ld[0-1] : or3u
assign srcd1ld_0 = srcd1ldg_0 | srcdread | patfadd;
assign srcd1ld_1 = srcd1ldg_1 | srcdread | patfadd;

// BLITGPU.NET (115) - srcz1ld[0-1] : or3u
assign srcz1ld_0 = srcz1ldg_0 | srczread | srcz1add;
assign srcz1ld_1 = srcz1ldg_1 | srczread | srcz1add;

// BLITGPU.NET (121) - patdld[0-1] : or2u
assign patdld_0 = patdldg_0 | patdadd;
assign patdld_1 = patdldg_1 | patdadd;

// BLITGPU.NET (125) - gpu_memw\ : iv
assign gpu_memw_n = ~gpu_memw;

// BLITGPU.NET (126) - brd : an2
assign brd = bliten & gpu_memw_n;

// BLITGPU.NET (128) - statrd : an6u
assign statrd = brd & gpua_n_2 & gpua_3 & gpua_4 & gpua_5 & gpua_n_6;

// BLITGPU.NET (130) - a1posrd : an6u
assign a1posrd = brd & gpua_2 & gpua_n_3 & gpua_n_4 & gpua_n_5 & gpua_n_6;

// BLITGPU.NET (132) - a1posfrd : an6u
assign a1posfrd = brd & gpua_n_2 & gpua_3 & gpua_4 & gpua_n_5 & gpua_n_6;

// BLITGPU.NET (134) - a2posrd : an6u
assign a2posrd = brd & gpua_2 & gpua_3 & gpua_n_4 & gpua_5 & gpua_n_6;

// BLITGPU.NET (137) - unused[0] : dummy
endmodule
