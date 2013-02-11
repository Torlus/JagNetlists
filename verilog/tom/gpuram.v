`include "defs.v"

module gpuram
(
	inout[0:31] gpu_data;
	input clk,
	input[0:9] rama;
	input ramen,
	input ramwe
);
wire ramcs;

// GPU_RAM.NET (52) - ramcs : clkgen
clkgen ramcs_inst
(
	.ramcs(ramcs), // OUT
	.clk(clk), // IN
	.ena(ramen)  // IN
);

// GPU_RAM.NET (69) - ram : aba032a
aba032a ram_inst
(
	.z({gpu_data[0],gpu_data[1],gpu_data[2],gpu_data[3],gpu_data[4],gpu_data[5],gpu_data[6],gpu_data[7],gpu_data[8],gpu_data[9],gpu_data[10],gpu_data[11],gpu_data[12],gpu_data[13],gpu_data[14],gpu_data[15],gpu_data[16],gpu_data[17],gpu_data[18],gpu_data[19],gpu_data[20],gpu_data[21],gpu_data[22],gpu_data[23],gpu_data[24],gpu_data[25],gpu_data[26],gpu_data[27],gpu_data[28],gpu_data[29],gpu_data[30],gpu_data[31]}), // BUS
	.cs(ramcs), // IN
	.we(ramwe), // IN
	.a0(rama[0]), // IN
	.a1(rama[1]), // IN
	.a2(rama[2]), // IN
	.a3(rama[3]), // IN
	.a4(rama[4]), // IN
	.a5(rama[5]), // IN
	.a6(rama[6]), // IN
	.a7(rama[7]), // IN
	.a8(rama[8]), // IN
	.a9(rama[9])  // IN
);
endmodule
