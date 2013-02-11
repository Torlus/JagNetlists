`include "defs.v"

module gpu_ram
(
	inout[0:31] gpu_data;
	input clk,
	input gpu_memw,
	input ram_addr_2,
	input ram_addr_3,
	input ram_addr_4,
	input ram_addr_5,
	input ram_addr_6,
	input ram_addr_7,
	input ram_addr_8,
	input ram_addr_9,
	input ram_addr_10,
	input ram_addr_11,
	input ramen
);
wire [0:9] rama;
wire ramad_0;
wire ramad_1;
wire ramad_2;
wire ramad_3;
wire ramad_4;
wire ramad_5;
wire ramad_6;
wire ramad_7;
wire ramad_8;
wire ramad_9;
wire ramwe;

// GPU_RAM.NET (27) - ramad[0-9] : nivniv
nivniv ramad_from_0_to_9_inst_0
(
	.z(ramad_0), // OUT
	.a(ram_addr_2)  // IN
);
nivniv ramad_from_0_to_9_inst_1
(
	.z(ramad_1), // OUT
	.a(ram_addr_3)  // IN
);
nivniv ramad_from_0_to_9_inst_2
(
	.z(ramad_2), // OUT
	.a(ram_addr_4)  // IN
);
nivniv ramad_from_0_to_9_inst_3
(
	.z(ramad_3), // OUT
	.a(ram_addr_5)  // IN
);
nivniv ramad_from_0_to_9_inst_4
(
	.z(ramad_4), // OUT
	.a(ram_addr_6)  // IN
);
nivniv ramad_from_0_to_9_inst_5
(
	.z(ramad_5), // OUT
	.a(ram_addr_7)  // IN
);
nivniv ramad_from_0_to_9_inst_6
(
	.z(ramad_6), // OUT
	.a(ram_addr_8)  // IN
);
nivniv ramad_from_0_to_9_inst_7
(
	.z(ramad_7), // OUT
	.a(ram_addr_9)  // IN
);
nivniv ramad_from_0_to_9_inst_8
(
	.z(ramad_8), // OUT
	.a(ram_addr_10)  // IN
);
nivniv ramad_from_0_to_9_inst_9
(
	.z(ramad_9), // OUT
	.a(ram_addr_11)  // IN
);

// GPU_RAM.NET (28) - rama : join
assign rama[0] = ramad_0;
assign rama[1] = ramad_1;
assign rama[2] = ramad_2;
assign rama[3] = ramad_3;
assign rama[4] = ramad_4;
assign rama[5] = ramad_5;
assign rama[6] = ramad_6;
assign rama[7] = ramad_7;
assign rama[8] = ramad_8;
assign rama[9] = ramad_9;

// GPU_RAM.NET (31) - ramwe : nd2
assign ramwe = ~(ramen & gpu_memw);

// GPU_RAM.NET (33) - program : gpuram
gpuram program_inst
(
	.gpu_data({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.clk(clk), // IN
	.rama({rama[0],rama[1],rama[2],rama[3],rama[4],rama[5],rama[6],rama[7],rama[8],rama[9]}), // IN
	.ramen(ramen), // IN
	.ramwe(ramwe)  // IN
);
endmodule
