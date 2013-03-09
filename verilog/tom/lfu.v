`include "defs.v"

module lfu
(
	output [0:31] lfu_0;
	output [0:31] lfu_1;
	input [0:31] srcd_0;
	input [0:31] srcd_1;
	input [0:31] dstd_0;
	input [0:31] dstd_1;
	input lfc_0,
	input lfc_1,
	input lfc_2,
	input lfc_3
);
wire [0:31] dstd_n_0;
wire [0:31] dstd_n_1;
wire [0:31] lfunc_0;
wire [0:31] lfunc_1;
wire [0:31] lfunc_2;
wire [0:31] lfunc_3;
wire [0:31] lfuncb_0;
wire [0:31] lfuncb_1;
wire [0:31] lfuncb_2;
wire [0:31] lfuncb_3;
wire [0:31] srcd_n_0;
wire [0:31] srcd_n_1;
wire [0:31] trma_0;
wire [0:31] trma_1;
wire [0:31] trmb_0;
wire [0:31] trmb_1;
wire [0:31] trmc_0;
wire [0:31] trmc_1;
wire [0:31] trmd_0;
wire [0:31] trmd_1;
wire lfcb_0;
wire lfcb_1;
wire lfcb_2;
wire lfcb_3;

// LFU.NET (24) - srcd\[0-1] : iv
assign srcd_n_0[0] = ~srcd_0[0];
assign srcd_n_0[1] = ~srcd_0[1];
assign srcd_n_0[2] = ~srcd_0[2];
assign srcd_n_0[3] = ~srcd_0[3];
assign srcd_n_0[4] = ~srcd_0[4];
assign srcd_n_0[5] = ~srcd_0[5];
assign srcd_n_0[6] = ~srcd_0[6];
assign srcd_n_0[7] = ~srcd_0[7];
assign srcd_n_0[8] = ~srcd_0[8];
assign srcd_n_0[9] = ~srcd_0[9];
assign srcd_n_0[10] = ~srcd_0[10];
assign srcd_n_0[11] = ~srcd_0[11];
assign srcd_n_0[12] = ~srcd_0[12];
assign srcd_n_0[13] = ~srcd_0[13];
assign srcd_n_0[14] = ~srcd_0[14];
assign srcd_n_0[15] = ~srcd_0[15];
assign srcd_n_0[16] = ~srcd_0[16];
assign srcd_n_0[17] = ~srcd_0[17];
assign srcd_n_0[18] = ~srcd_0[18];
assign srcd_n_0[19] = ~srcd_0[19];
assign srcd_n_0[20] = ~srcd_0[20];
assign srcd_n_0[21] = ~srcd_0[21];
assign srcd_n_0[22] = ~srcd_0[22];
assign srcd_n_0[23] = ~srcd_0[23];
assign srcd_n_0[24] = ~srcd_0[24];
assign srcd_n_0[25] = ~srcd_0[25];
assign srcd_n_0[26] = ~srcd_0[26];
assign srcd_n_0[27] = ~srcd_0[27];
assign srcd_n_0[28] = ~srcd_0[28];
assign srcd_n_0[29] = ~srcd_0[29];
assign srcd_n_0[30] = ~srcd_0[30];
assign srcd_n_0[31] = ~srcd_0[31];
assign srcd_n_1[0] = ~srcd_1[0];
assign srcd_n_1[1] = ~srcd_1[1];
assign srcd_n_1[2] = ~srcd_1[2];
assign srcd_n_1[3] = ~srcd_1[3];
assign srcd_n_1[4] = ~srcd_1[4];
assign srcd_n_1[5] = ~srcd_1[5];
assign srcd_n_1[6] = ~srcd_1[6];
assign srcd_n_1[7] = ~srcd_1[7];
assign srcd_n_1[8] = ~srcd_1[8];
assign srcd_n_1[9] = ~srcd_1[9];
assign srcd_n_1[10] = ~srcd_1[10];
assign srcd_n_1[11] = ~srcd_1[11];
assign srcd_n_1[12] = ~srcd_1[12];
assign srcd_n_1[13] = ~srcd_1[13];
assign srcd_n_1[14] = ~srcd_1[14];
assign srcd_n_1[15] = ~srcd_1[15];
assign srcd_n_1[16] = ~srcd_1[16];
assign srcd_n_1[17] = ~srcd_1[17];
assign srcd_n_1[18] = ~srcd_1[18];
assign srcd_n_1[19] = ~srcd_1[19];
assign srcd_n_1[20] = ~srcd_1[20];
assign srcd_n_1[21] = ~srcd_1[21];
assign srcd_n_1[22] = ~srcd_1[22];
assign srcd_n_1[23] = ~srcd_1[23];
assign srcd_n_1[24] = ~srcd_1[24];
assign srcd_n_1[25] = ~srcd_1[25];
assign srcd_n_1[26] = ~srcd_1[26];
assign srcd_n_1[27] = ~srcd_1[27];
assign srcd_n_1[28] = ~srcd_1[28];
assign srcd_n_1[29] = ~srcd_1[29];
assign srcd_n_1[30] = ~srcd_1[30];
assign srcd_n_1[31] = ~srcd_1[31];

// LFU.NET (25) - dstd\[0-1] : iv
assign dstd_n_0[0] = ~dstd_0[0];
assign dstd_n_0[1] = ~dstd_0[1];
assign dstd_n_0[2] = ~dstd_0[2];
assign dstd_n_0[3] = ~dstd_0[3];
assign dstd_n_0[4] = ~dstd_0[4];
assign dstd_n_0[5] = ~dstd_0[5];
assign dstd_n_0[6] = ~dstd_0[6];
assign dstd_n_0[7] = ~dstd_0[7];
assign dstd_n_0[8] = ~dstd_0[8];
assign dstd_n_0[9] = ~dstd_0[9];
assign dstd_n_0[10] = ~dstd_0[10];
assign dstd_n_0[11] = ~dstd_0[11];
assign dstd_n_0[12] = ~dstd_0[12];
assign dstd_n_0[13] = ~dstd_0[13];
assign dstd_n_0[14] = ~dstd_0[14];
assign dstd_n_0[15] = ~dstd_0[15];
assign dstd_n_0[16] = ~dstd_0[16];
assign dstd_n_0[17] = ~dstd_0[17];
assign dstd_n_0[18] = ~dstd_0[18];
assign dstd_n_0[19] = ~dstd_0[19];
assign dstd_n_0[20] = ~dstd_0[20];
assign dstd_n_0[21] = ~dstd_0[21];
assign dstd_n_0[22] = ~dstd_0[22];
assign dstd_n_0[23] = ~dstd_0[23];
assign dstd_n_0[24] = ~dstd_0[24];
assign dstd_n_0[25] = ~dstd_0[25];
assign dstd_n_0[26] = ~dstd_0[26];
assign dstd_n_0[27] = ~dstd_0[27];
assign dstd_n_0[28] = ~dstd_0[28];
assign dstd_n_0[29] = ~dstd_0[29];
assign dstd_n_0[30] = ~dstd_0[30];
assign dstd_n_0[31] = ~dstd_0[31];
assign dstd_n_1[0] = ~dstd_1[0];
assign dstd_n_1[1] = ~dstd_1[1];
assign dstd_n_1[2] = ~dstd_1[2];
assign dstd_n_1[3] = ~dstd_1[3];
assign dstd_n_1[4] = ~dstd_1[4];
assign dstd_n_1[5] = ~dstd_1[5];
assign dstd_n_1[6] = ~dstd_1[6];
assign dstd_n_1[7] = ~dstd_1[7];
assign dstd_n_1[8] = ~dstd_1[8];
assign dstd_n_1[9] = ~dstd_1[9];
assign dstd_n_1[10] = ~dstd_1[10];
assign dstd_n_1[11] = ~dstd_1[11];
assign dstd_n_1[12] = ~dstd_1[12];
assign dstd_n_1[13] = ~dstd_1[13];
assign dstd_n_1[14] = ~dstd_1[14];
assign dstd_n_1[15] = ~dstd_1[15];
assign dstd_n_1[16] = ~dstd_1[16];
assign dstd_n_1[17] = ~dstd_1[17];
assign dstd_n_1[18] = ~dstd_1[18];
assign dstd_n_1[19] = ~dstd_1[19];
assign dstd_n_1[20] = ~dstd_1[20];
assign dstd_n_1[21] = ~dstd_1[21];
assign dstd_n_1[22] = ~dstd_1[22];
assign dstd_n_1[23] = ~dstd_1[23];
assign dstd_n_1[24] = ~dstd_1[24];
assign dstd_n_1[25] = ~dstd_1[25];
assign dstd_n_1[26] = ~dstd_1[26];
assign dstd_n_1[27] = ~dstd_1[27];
assign dstd_n_1[28] = ~dstd_1[28];
assign dstd_n_1[29] = ~dstd_1[29];
assign dstd_n_1[30] = ~dstd_1[30];
assign dstd_n_1[31] = ~dstd_1[31];

// LFU.NET (26) - lfcb[0-3] : nivu
assign lfcb_0 = lfc_0;
assign lfcb_1 = lfc_1;
assign lfcb_2 = lfc_2;
assign lfcb_3 = lfc_3;

// LFU.NET (27) - lfunc[0-3] : join
assign lfunc_0[0] = lfc_0;
assign lfunc_0[1] = lfc_0;
assign lfunc_0[2] = lfc_0;
assign lfunc_0[3] = lfc_0;
assign lfunc_0[4] = lfc_0;
assign lfunc_0[5] = lfc_0;
assign lfunc_0[6] = lfc_0;
assign lfunc_0[7] = lfc_0;
assign lfunc_0[8] = lfc_0;
assign lfunc_0[9] = lfc_0;
assign lfunc_0[10] = lfc_0;
assign lfunc_0[11] = lfc_0;
assign lfunc_0[12] = lfc_0;
assign lfunc_0[13] = lfc_0;
assign lfunc_0[14] = lfc_0;
assign lfunc_0[15] = lfc_0;
assign lfunc_0[16] = lfc_0;
assign lfunc_0[17] = lfc_0;
assign lfunc_0[18] = lfc_0;
assign lfunc_0[19] = lfc_0;
assign lfunc_0[20] = lfc_0;
assign lfunc_0[21] = lfc_0;
assign lfunc_0[22] = lfc_0;
assign lfunc_0[23] = lfc_0;
assign lfunc_0[24] = lfc_0;
assign lfunc_0[25] = lfc_0;
assign lfunc_0[26] = lfc_0;
assign lfunc_0[27] = lfc_0;
assign lfunc_0[28] = lfc_0;
assign lfunc_0[29] = lfc_0;
assign lfunc_0[30] = lfc_0;
assign lfunc_0[31] = lfc_0;
assign lfunc_1[0] = lfc_1;
assign lfunc_1[1] = lfc_1;
assign lfunc_1[2] = lfc_1;
assign lfunc_1[3] = lfc_1;
assign lfunc_1[4] = lfc_1;
assign lfunc_1[5] = lfc_1;
assign lfunc_1[6] = lfc_1;
assign lfunc_1[7] = lfc_1;
assign lfunc_1[8] = lfc_1;
assign lfunc_1[9] = lfc_1;
assign lfunc_1[10] = lfc_1;
assign lfunc_1[11] = lfc_1;
assign lfunc_1[12] = lfc_1;
assign lfunc_1[13] = lfc_1;
assign lfunc_1[14] = lfc_1;
assign lfunc_1[15] = lfc_1;
assign lfunc_1[16] = lfc_1;
assign lfunc_1[17] = lfc_1;
assign lfunc_1[18] = lfc_1;
assign lfunc_1[19] = lfc_1;
assign lfunc_1[20] = lfc_1;
assign lfunc_1[21] = lfc_1;
assign lfunc_1[22] = lfc_1;
assign lfunc_1[23] = lfc_1;
assign lfunc_1[24] = lfc_1;
assign lfunc_1[25] = lfc_1;
assign lfunc_1[26] = lfc_1;
assign lfunc_1[27] = lfc_1;
assign lfunc_1[28] = lfc_1;
assign lfunc_1[29] = lfc_1;
assign lfunc_1[30] = lfc_1;
assign lfunc_1[31] = lfc_1;
assign lfunc_2[0] = lfc_2;
assign lfunc_2[1] = lfc_2;
assign lfunc_2[2] = lfc_2;
assign lfunc_2[3] = lfc_2;
assign lfunc_2[4] = lfc_2;
assign lfunc_2[5] = lfc_2;
assign lfunc_2[6] = lfc_2;
assign lfunc_2[7] = lfc_2;
assign lfunc_2[8] = lfc_2;
assign lfunc_2[9] = lfc_2;
assign lfunc_2[10] = lfc_2;
assign lfunc_2[11] = lfc_2;
assign lfunc_2[12] = lfc_2;
assign lfunc_2[13] = lfc_2;
assign lfunc_2[14] = lfc_2;
assign lfunc_2[15] = lfc_2;
assign lfunc_2[16] = lfc_2;
assign lfunc_2[17] = lfc_2;
assign lfunc_2[18] = lfc_2;
assign lfunc_2[19] = lfc_2;
assign lfunc_2[20] = lfc_2;
assign lfunc_2[21] = lfc_2;
assign lfunc_2[22] = lfc_2;
assign lfunc_2[23] = lfc_2;
assign lfunc_2[24] = lfc_2;
assign lfunc_2[25] = lfc_2;
assign lfunc_2[26] = lfc_2;
assign lfunc_2[27] = lfc_2;
assign lfunc_2[28] = lfc_2;
assign lfunc_2[29] = lfc_2;
assign lfunc_2[30] = lfc_2;
assign lfunc_2[31] = lfc_2;
assign lfunc_3[0] = lfc_3;
assign lfunc_3[1] = lfc_3;
assign lfunc_3[2] = lfc_3;
assign lfunc_3[3] = lfc_3;
assign lfunc_3[4] = lfc_3;
assign lfunc_3[5] = lfc_3;
assign lfunc_3[6] = lfc_3;
assign lfunc_3[7] = lfc_3;
assign lfunc_3[8] = lfc_3;
assign lfunc_3[9] = lfc_3;
assign lfunc_3[10] = lfc_3;
assign lfunc_3[11] = lfc_3;
assign lfunc_3[12] = lfc_3;
assign lfunc_3[13] = lfc_3;
assign lfunc_3[14] = lfc_3;
assign lfunc_3[15] = lfc_3;
assign lfunc_3[16] = lfc_3;
assign lfunc_3[17] = lfc_3;
assign lfunc_3[18] = lfc_3;
assign lfunc_3[19] = lfc_3;
assign lfunc_3[20] = lfc_3;
assign lfunc_3[21] = lfc_3;
assign lfunc_3[22] = lfc_3;
assign lfunc_3[23] = lfc_3;
assign lfunc_3[24] = lfc_3;
assign lfunc_3[25] = lfc_3;
assign lfunc_3[26] = lfc_3;
assign lfunc_3[27] = lfc_3;
assign lfunc_3[28] = lfc_3;
assign lfunc_3[29] = lfc_3;
assign lfunc_3[30] = lfc_3;
assign lfunc_3[31] = lfc_3;

// LFU.NET (36) - lfuncb[0-3] : join
assign lfuncb_0[0] = lfcb_0;
assign lfuncb_0[1] = lfcb_0;
assign lfuncb_0[2] = lfcb_0;
assign lfuncb_0[3] = lfcb_0;
assign lfuncb_0[4] = lfcb_0;
assign lfuncb_0[5] = lfcb_0;
assign lfuncb_0[6] = lfcb_0;
assign lfuncb_0[7] = lfcb_0;
assign lfuncb_0[8] = lfcb_0;
assign lfuncb_0[9] = lfcb_0;
assign lfuncb_0[10] = lfcb_0;
assign lfuncb_0[11] = lfcb_0;
assign lfuncb_0[12] = lfcb_0;
assign lfuncb_0[13] = lfcb_0;
assign lfuncb_0[14] = lfcb_0;
assign lfuncb_0[15] = lfcb_0;
assign lfuncb_0[16] = lfcb_0;
assign lfuncb_0[17] = lfcb_0;
assign lfuncb_0[18] = lfcb_0;
assign lfuncb_0[19] = lfcb_0;
assign lfuncb_0[20] = lfcb_0;
assign lfuncb_0[21] = lfcb_0;
assign lfuncb_0[22] = lfcb_0;
assign lfuncb_0[23] = lfcb_0;
assign lfuncb_0[24] = lfcb_0;
assign lfuncb_0[25] = lfcb_0;
assign lfuncb_0[26] = lfcb_0;
assign lfuncb_0[27] = lfcb_0;
assign lfuncb_0[28] = lfcb_0;
assign lfuncb_0[29] = lfcb_0;
assign lfuncb_0[30] = lfcb_0;
assign lfuncb_0[31] = lfcb_0;
assign lfuncb_1[0] = lfcb_1;
assign lfuncb_1[1] = lfcb_1;
assign lfuncb_1[2] = lfcb_1;
assign lfuncb_1[3] = lfcb_1;
assign lfuncb_1[4] = lfcb_1;
assign lfuncb_1[5] = lfcb_1;
assign lfuncb_1[6] = lfcb_1;
assign lfuncb_1[7] = lfcb_1;
assign lfuncb_1[8] = lfcb_1;
assign lfuncb_1[9] = lfcb_1;
assign lfuncb_1[10] = lfcb_1;
assign lfuncb_1[11] = lfcb_1;
assign lfuncb_1[12] = lfcb_1;
assign lfuncb_1[13] = lfcb_1;
assign lfuncb_1[14] = lfcb_1;
assign lfuncb_1[15] = lfcb_1;
assign lfuncb_1[16] = lfcb_1;
assign lfuncb_1[17] = lfcb_1;
assign lfuncb_1[18] = lfcb_1;
assign lfuncb_1[19] = lfcb_1;
assign lfuncb_1[20] = lfcb_1;
assign lfuncb_1[21] = lfcb_1;
assign lfuncb_1[22] = lfcb_1;
assign lfuncb_1[23] = lfcb_1;
assign lfuncb_1[24] = lfcb_1;
assign lfuncb_1[25] = lfcb_1;
assign lfuncb_1[26] = lfcb_1;
assign lfuncb_1[27] = lfcb_1;
assign lfuncb_1[28] = lfcb_1;
assign lfuncb_1[29] = lfcb_1;
assign lfuncb_1[30] = lfcb_1;
assign lfuncb_1[31] = lfcb_1;
assign lfuncb_2[0] = lfcb_2;
assign lfuncb_2[1] = lfcb_2;
assign lfuncb_2[2] = lfcb_2;
assign lfuncb_2[3] = lfcb_2;
assign lfuncb_2[4] = lfcb_2;
assign lfuncb_2[5] = lfcb_2;
assign lfuncb_2[6] = lfcb_2;
assign lfuncb_2[7] = lfcb_2;
assign lfuncb_2[8] = lfcb_2;
assign lfuncb_2[9] = lfcb_2;
assign lfuncb_2[10] = lfcb_2;
assign lfuncb_2[11] = lfcb_2;
assign lfuncb_2[12] = lfcb_2;
assign lfuncb_2[13] = lfcb_2;
assign lfuncb_2[14] = lfcb_2;
assign lfuncb_2[15] = lfcb_2;
assign lfuncb_2[16] = lfcb_2;
assign lfuncb_2[17] = lfcb_2;
assign lfuncb_2[18] = lfcb_2;
assign lfuncb_2[19] = lfcb_2;
assign lfuncb_2[20] = lfcb_2;
assign lfuncb_2[21] = lfcb_2;
assign lfuncb_2[22] = lfcb_2;
assign lfuncb_2[23] = lfcb_2;
assign lfuncb_2[24] = lfcb_2;
assign lfuncb_2[25] = lfcb_2;
assign lfuncb_2[26] = lfcb_2;
assign lfuncb_2[27] = lfcb_2;
assign lfuncb_2[28] = lfcb_2;
assign lfuncb_2[29] = lfcb_2;
assign lfuncb_2[30] = lfcb_2;
assign lfuncb_2[31] = lfcb_2;
assign lfuncb_3[0] = lfcb_3;
assign lfuncb_3[1] = lfcb_3;
assign lfuncb_3[2] = lfcb_3;
assign lfuncb_3[3] = lfcb_3;
assign lfuncb_3[4] = lfcb_3;
assign lfuncb_3[5] = lfcb_3;
assign lfuncb_3[6] = lfcb_3;
assign lfuncb_3[7] = lfcb_3;
assign lfuncb_3[8] = lfcb_3;
assign lfuncb_3[9] = lfcb_3;
assign lfuncb_3[10] = lfcb_3;
assign lfuncb_3[11] = lfcb_3;
assign lfuncb_3[12] = lfcb_3;
assign lfuncb_3[13] = lfcb_3;
assign lfuncb_3[14] = lfcb_3;
assign lfuncb_3[15] = lfcb_3;
assign lfuncb_3[16] = lfcb_3;
assign lfuncb_3[17] = lfcb_3;
assign lfuncb_3[18] = lfcb_3;
assign lfuncb_3[19] = lfcb_3;
assign lfuncb_3[20] = lfcb_3;
assign lfuncb_3[21] = lfcb_3;
assign lfuncb_3[22] = lfcb_3;
assign lfuncb_3[23] = lfcb_3;
assign lfuncb_3[24] = lfcb_3;
assign lfuncb_3[25] = lfcb_3;
assign lfuncb_3[26] = lfcb_3;
assign lfuncb_3[27] = lfcb_3;
assign lfuncb_3[28] = lfcb_3;
assign lfuncb_3[29] = lfcb_3;
assign lfuncb_3[30] = lfcb_3;
assign lfuncb_3[31] = lfcb_3;

// LFU.NET (45) - lftrma[0] : nd3
assign trma_0[0] = ~(srcd_n_0[0] & dstd_n_0[0] & lfunc_0[0]);
assign trma_0[1] = ~(srcd_n_0[1] & dstd_n_0[1] & lfunc_0[1]);
assign trma_0[2] = ~(srcd_n_0[2] & dstd_n_0[2] & lfunc_0[2]);
assign trma_0[3] = ~(srcd_n_0[3] & dstd_n_0[3] & lfunc_0[3]);
assign trma_0[4] = ~(srcd_n_0[4] & dstd_n_0[4] & lfunc_0[4]);
assign trma_0[5] = ~(srcd_n_0[5] & dstd_n_0[5] & lfunc_0[5]);
assign trma_0[6] = ~(srcd_n_0[6] & dstd_n_0[6] & lfunc_0[6]);
assign trma_0[7] = ~(srcd_n_0[7] & dstd_n_0[7] & lfunc_0[7]);
assign trma_0[8] = ~(srcd_n_0[8] & dstd_n_0[8] & lfunc_0[8]);
assign trma_0[9] = ~(srcd_n_0[9] & dstd_n_0[9] & lfunc_0[9]);
assign trma_0[10] = ~(srcd_n_0[10] & dstd_n_0[10] & lfunc_0[10]);
assign trma_0[11] = ~(srcd_n_0[11] & dstd_n_0[11] & lfunc_0[11]);
assign trma_0[12] = ~(srcd_n_0[12] & dstd_n_0[12] & lfunc_0[12]);
assign trma_0[13] = ~(srcd_n_0[13] & dstd_n_0[13] & lfunc_0[13]);
assign trma_0[14] = ~(srcd_n_0[14] & dstd_n_0[14] & lfunc_0[14]);
assign trma_0[15] = ~(srcd_n_0[15] & dstd_n_0[15] & lfunc_0[15]);
assign trma_0[16] = ~(srcd_n_0[16] & dstd_n_0[16] & lfunc_0[16]);
assign trma_0[17] = ~(srcd_n_0[17] & dstd_n_0[17] & lfunc_0[17]);
assign trma_0[18] = ~(srcd_n_0[18] & dstd_n_0[18] & lfunc_0[18]);
assign trma_0[19] = ~(srcd_n_0[19] & dstd_n_0[19] & lfunc_0[19]);
assign trma_0[20] = ~(srcd_n_0[20] & dstd_n_0[20] & lfunc_0[20]);
assign trma_0[21] = ~(srcd_n_0[21] & dstd_n_0[21] & lfunc_0[21]);
assign trma_0[22] = ~(srcd_n_0[22] & dstd_n_0[22] & lfunc_0[22]);
assign trma_0[23] = ~(srcd_n_0[23] & dstd_n_0[23] & lfunc_0[23]);
assign trma_0[24] = ~(srcd_n_0[24] & dstd_n_0[24] & lfunc_0[24]);
assign trma_0[25] = ~(srcd_n_0[25] & dstd_n_0[25] & lfunc_0[25]);
assign trma_0[26] = ~(srcd_n_0[26] & dstd_n_0[26] & lfunc_0[26]);
assign trma_0[27] = ~(srcd_n_0[27] & dstd_n_0[27] & lfunc_0[27]);
assign trma_0[28] = ~(srcd_n_0[28] & dstd_n_0[28] & lfunc_0[28]);
assign trma_0[29] = ~(srcd_n_0[29] & dstd_n_0[29] & lfunc_0[29]);
assign trma_0[30] = ~(srcd_n_0[30] & dstd_n_0[30] & lfunc_0[30]);
assign trma_0[31] = ~(srcd_n_0[31] & dstd_n_0[31] & lfunc_0[31]);

// LFU.NET (47) - lftrmb[0] : nd3
assign trmb_0[0] = ~(srcd_n_0[0] & dstd_0[0] & lfunc_1[0]);
assign trmb_0[1] = ~(srcd_n_0[1] & dstd_0[1] & lfunc_1[1]);
assign trmb_0[2] = ~(srcd_n_0[2] & dstd_0[2] & lfunc_1[2]);
assign trmb_0[3] = ~(srcd_n_0[3] & dstd_0[3] & lfunc_1[3]);
assign trmb_0[4] = ~(srcd_n_0[4] & dstd_0[4] & lfunc_1[4]);
assign trmb_0[5] = ~(srcd_n_0[5] & dstd_0[5] & lfunc_1[5]);
assign trmb_0[6] = ~(srcd_n_0[6] & dstd_0[6] & lfunc_1[6]);
assign trmb_0[7] = ~(srcd_n_0[7] & dstd_0[7] & lfunc_1[7]);
assign trmb_0[8] = ~(srcd_n_0[8] & dstd_0[8] & lfunc_1[8]);
assign trmb_0[9] = ~(srcd_n_0[9] & dstd_0[9] & lfunc_1[9]);
assign trmb_0[10] = ~(srcd_n_0[10] & dstd_0[10] & lfunc_1[10]);
assign trmb_0[11] = ~(srcd_n_0[11] & dstd_0[11] & lfunc_1[11]);
assign trmb_0[12] = ~(srcd_n_0[12] & dstd_0[12] & lfunc_1[12]);
assign trmb_0[13] = ~(srcd_n_0[13] & dstd_0[13] & lfunc_1[13]);
assign trmb_0[14] = ~(srcd_n_0[14] & dstd_0[14] & lfunc_1[14]);
assign trmb_0[15] = ~(srcd_n_0[15] & dstd_0[15] & lfunc_1[15]);
assign trmb_0[16] = ~(srcd_n_0[16] & dstd_0[16] & lfunc_1[16]);
assign trmb_0[17] = ~(srcd_n_0[17] & dstd_0[17] & lfunc_1[17]);
assign trmb_0[18] = ~(srcd_n_0[18] & dstd_0[18] & lfunc_1[18]);
assign trmb_0[19] = ~(srcd_n_0[19] & dstd_0[19] & lfunc_1[19]);
assign trmb_0[20] = ~(srcd_n_0[20] & dstd_0[20] & lfunc_1[20]);
assign trmb_0[21] = ~(srcd_n_0[21] & dstd_0[21] & lfunc_1[21]);
assign trmb_0[22] = ~(srcd_n_0[22] & dstd_0[22] & lfunc_1[22]);
assign trmb_0[23] = ~(srcd_n_0[23] & dstd_0[23] & lfunc_1[23]);
assign trmb_0[24] = ~(srcd_n_0[24] & dstd_0[24] & lfunc_1[24]);
assign trmb_0[25] = ~(srcd_n_0[25] & dstd_0[25] & lfunc_1[25]);
assign trmb_0[26] = ~(srcd_n_0[26] & dstd_0[26] & lfunc_1[26]);
assign trmb_0[27] = ~(srcd_n_0[27] & dstd_0[27] & lfunc_1[27]);
assign trmb_0[28] = ~(srcd_n_0[28] & dstd_0[28] & lfunc_1[28]);
assign trmb_0[29] = ~(srcd_n_0[29] & dstd_0[29] & lfunc_1[29]);
assign trmb_0[30] = ~(srcd_n_0[30] & dstd_0[30] & lfunc_1[30]);
assign trmb_0[31] = ~(srcd_n_0[31] & dstd_0[31] & lfunc_1[31]);

// LFU.NET (49) - lftrmc[0] : nd3
assign trmc_0[0] = ~(srcd_0[0] & dstd_n_0[0] & lfunc_2[0]);
assign trmc_0[1] = ~(srcd_0[1] & dstd_n_0[1] & lfunc_2[1]);
assign trmc_0[2] = ~(srcd_0[2] & dstd_n_0[2] & lfunc_2[2]);
assign trmc_0[3] = ~(srcd_0[3] & dstd_n_0[3] & lfunc_2[3]);
assign trmc_0[4] = ~(srcd_0[4] & dstd_n_0[4] & lfunc_2[4]);
assign trmc_0[5] = ~(srcd_0[5] & dstd_n_0[5] & lfunc_2[5]);
assign trmc_0[6] = ~(srcd_0[6] & dstd_n_0[6] & lfunc_2[6]);
assign trmc_0[7] = ~(srcd_0[7] & dstd_n_0[7] & lfunc_2[7]);
assign trmc_0[8] = ~(srcd_0[8] & dstd_n_0[8] & lfunc_2[8]);
assign trmc_0[9] = ~(srcd_0[9] & dstd_n_0[9] & lfunc_2[9]);
assign trmc_0[10] = ~(srcd_0[10] & dstd_n_0[10] & lfunc_2[10]);
assign trmc_0[11] = ~(srcd_0[11] & dstd_n_0[11] & lfunc_2[11]);
assign trmc_0[12] = ~(srcd_0[12] & dstd_n_0[12] & lfunc_2[12]);
assign trmc_0[13] = ~(srcd_0[13] & dstd_n_0[13] & lfunc_2[13]);
assign trmc_0[14] = ~(srcd_0[14] & dstd_n_0[14] & lfunc_2[14]);
assign trmc_0[15] = ~(srcd_0[15] & dstd_n_0[15] & lfunc_2[15]);
assign trmc_0[16] = ~(srcd_0[16] & dstd_n_0[16] & lfunc_2[16]);
assign trmc_0[17] = ~(srcd_0[17] & dstd_n_0[17] & lfunc_2[17]);
assign trmc_0[18] = ~(srcd_0[18] & dstd_n_0[18] & lfunc_2[18]);
assign trmc_0[19] = ~(srcd_0[19] & dstd_n_0[19] & lfunc_2[19]);
assign trmc_0[20] = ~(srcd_0[20] & dstd_n_0[20] & lfunc_2[20]);
assign trmc_0[21] = ~(srcd_0[21] & dstd_n_0[21] & lfunc_2[21]);
assign trmc_0[22] = ~(srcd_0[22] & dstd_n_0[22] & lfunc_2[22]);
assign trmc_0[23] = ~(srcd_0[23] & dstd_n_0[23] & lfunc_2[23]);
assign trmc_0[24] = ~(srcd_0[24] & dstd_n_0[24] & lfunc_2[24]);
assign trmc_0[25] = ~(srcd_0[25] & dstd_n_0[25] & lfunc_2[25]);
assign trmc_0[26] = ~(srcd_0[26] & dstd_n_0[26] & lfunc_2[26]);
assign trmc_0[27] = ~(srcd_0[27] & dstd_n_0[27] & lfunc_2[27]);
assign trmc_0[28] = ~(srcd_0[28] & dstd_n_0[28] & lfunc_2[28]);
assign trmc_0[29] = ~(srcd_0[29] & dstd_n_0[29] & lfunc_2[29]);
assign trmc_0[30] = ~(srcd_0[30] & dstd_n_0[30] & lfunc_2[30]);
assign trmc_0[31] = ~(srcd_0[31] & dstd_n_0[31] & lfunc_2[31]);

// LFU.NET (51) - lftrmd[0] : nd3
assign trmd_0[0] = ~(srcd_0[0] & dstd_0[0] & lfunc_3[0]);
assign trmd_0[1] = ~(srcd_0[1] & dstd_0[1] & lfunc_3[1]);
assign trmd_0[2] = ~(srcd_0[2] & dstd_0[2] & lfunc_3[2]);
assign trmd_0[3] = ~(srcd_0[3] & dstd_0[3] & lfunc_3[3]);
assign trmd_0[4] = ~(srcd_0[4] & dstd_0[4] & lfunc_3[4]);
assign trmd_0[5] = ~(srcd_0[5] & dstd_0[5] & lfunc_3[5]);
assign trmd_0[6] = ~(srcd_0[6] & dstd_0[6] & lfunc_3[6]);
assign trmd_0[7] = ~(srcd_0[7] & dstd_0[7] & lfunc_3[7]);
assign trmd_0[8] = ~(srcd_0[8] & dstd_0[8] & lfunc_3[8]);
assign trmd_0[9] = ~(srcd_0[9] & dstd_0[9] & lfunc_3[9]);
assign trmd_0[10] = ~(srcd_0[10] & dstd_0[10] & lfunc_3[10]);
assign trmd_0[11] = ~(srcd_0[11] & dstd_0[11] & lfunc_3[11]);
assign trmd_0[12] = ~(srcd_0[12] & dstd_0[12] & lfunc_3[12]);
assign trmd_0[13] = ~(srcd_0[13] & dstd_0[13] & lfunc_3[13]);
assign trmd_0[14] = ~(srcd_0[14] & dstd_0[14] & lfunc_3[14]);
assign trmd_0[15] = ~(srcd_0[15] & dstd_0[15] & lfunc_3[15]);
assign trmd_0[16] = ~(srcd_0[16] & dstd_0[16] & lfunc_3[16]);
assign trmd_0[17] = ~(srcd_0[17] & dstd_0[17] & lfunc_3[17]);
assign trmd_0[18] = ~(srcd_0[18] & dstd_0[18] & lfunc_3[18]);
assign trmd_0[19] = ~(srcd_0[19] & dstd_0[19] & lfunc_3[19]);
assign trmd_0[20] = ~(srcd_0[20] & dstd_0[20] & lfunc_3[20]);
assign trmd_0[21] = ~(srcd_0[21] & dstd_0[21] & lfunc_3[21]);
assign trmd_0[22] = ~(srcd_0[22] & dstd_0[22] & lfunc_3[22]);
assign trmd_0[23] = ~(srcd_0[23] & dstd_0[23] & lfunc_3[23]);
assign trmd_0[24] = ~(srcd_0[24] & dstd_0[24] & lfunc_3[24]);
assign trmd_0[25] = ~(srcd_0[25] & dstd_0[25] & lfunc_3[25]);
assign trmd_0[26] = ~(srcd_0[26] & dstd_0[26] & lfunc_3[26]);
assign trmd_0[27] = ~(srcd_0[27] & dstd_0[27] & lfunc_3[27]);
assign trmd_0[28] = ~(srcd_0[28] & dstd_0[28] & lfunc_3[28]);
assign trmd_0[29] = ~(srcd_0[29] & dstd_0[29] & lfunc_3[29]);
assign trmd_0[30] = ~(srcd_0[30] & dstd_0[30] & lfunc_3[30]);
assign trmd_0[31] = ~(srcd_0[31] & dstd_0[31] & lfunc_3[31]);

// LFU.NET (53) - lftrma[1] : nd3
assign trma_1[0] = ~(srcd_n_1[0] & dstd_n_1[0] & lfuncb_0[0]);
assign trma_1[1] = ~(srcd_n_1[1] & dstd_n_1[1] & lfuncb_0[1]);
assign trma_1[2] = ~(srcd_n_1[2] & dstd_n_1[2] & lfuncb_0[2]);
assign trma_1[3] = ~(srcd_n_1[3] & dstd_n_1[3] & lfuncb_0[3]);
assign trma_1[4] = ~(srcd_n_1[4] & dstd_n_1[4] & lfuncb_0[4]);
assign trma_1[5] = ~(srcd_n_1[5] & dstd_n_1[5] & lfuncb_0[5]);
assign trma_1[6] = ~(srcd_n_1[6] & dstd_n_1[6] & lfuncb_0[6]);
assign trma_1[7] = ~(srcd_n_1[7] & dstd_n_1[7] & lfuncb_0[7]);
assign trma_1[8] = ~(srcd_n_1[8] & dstd_n_1[8] & lfuncb_0[8]);
assign trma_1[9] = ~(srcd_n_1[9] & dstd_n_1[9] & lfuncb_0[9]);
assign trma_1[10] = ~(srcd_n_1[10] & dstd_n_1[10] & lfuncb_0[10]);
assign trma_1[11] = ~(srcd_n_1[11] & dstd_n_1[11] & lfuncb_0[11]);
assign trma_1[12] = ~(srcd_n_1[12] & dstd_n_1[12] & lfuncb_0[12]);
assign trma_1[13] = ~(srcd_n_1[13] & dstd_n_1[13] & lfuncb_0[13]);
assign trma_1[14] = ~(srcd_n_1[14] & dstd_n_1[14] & lfuncb_0[14]);
assign trma_1[15] = ~(srcd_n_1[15] & dstd_n_1[15] & lfuncb_0[15]);
assign trma_1[16] = ~(srcd_n_1[16] & dstd_n_1[16] & lfuncb_0[16]);
assign trma_1[17] = ~(srcd_n_1[17] & dstd_n_1[17] & lfuncb_0[17]);
assign trma_1[18] = ~(srcd_n_1[18] & dstd_n_1[18] & lfuncb_0[18]);
assign trma_1[19] = ~(srcd_n_1[19] & dstd_n_1[19] & lfuncb_0[19]);
assign trma_1[20] = ~(srcd_n_1[20] & dstd_n_1[20] & lfuncb_0[20]);
assign trma_1[21] = ~(srcd_n_1[21] & dstd_n_1[21] & lfuncb_0[21]);
assign trma_1[22] = ~(srcd_n_1[22] & dstd_n_1[22] & lfuncb_0[22]);
assign trma_1[23] = ~(srcd_n_1[23] & dstd_n_1[23] & lfuncb_0[23]);
assign trma_1[24] = ~(srcd_n_1[24] & dstd_n_1[24] & lfuncb_0[24]);
assign trma_1[25] = ~(srcd_n_1[25] & dstd_n_1[25] & lfuncb_0[25]);
assign trma_1[26] = ~(srcd_n_1[26] & dstd_n_1[26] & lfuncb_0[26]);
assign trma_1[27] = ~(srcd_n_1[27] & dstd_n_1[27] & lfuncb_0[27]);
assign trma_1[28] = ~(srcd_n_1[28] & dstd_n_1[28] & lfuncb_0[28]);
assign trma_1[29] = ~(srcd_n_1[29] & dstd_n_1[29] & lfuncb_0[29]);
assign trma_1[30] = ~(srcd_n_1[30] & dstd_n_1[30] & lfuncb_0[30]);
assign trma_1[31] = ~(srcd_n_1[31] & dstd_n_1[31] & lfuncb_0[31]);

// LFU.NET (55) - lftrmb[1] : nd3
assign trmb_1[0] = ~(srcd_n_1[0] & dstd_1[0] & lfuncb_1[0]);
assign trmb_1[1] = ~(srcd_n_1[1] & dstd_1[1] & lfuncb_1[1]);
assign trmb_1[2] = ~(srcd_n_1[2] & dstd_1[2] & lfuncb_1[2]);
assign trmb_1[3] = ~(srcd_n_1[3] & dstd_1[3] & lfuncb_1[3]);
assign trmb_1[4] = ~(srcd_n_1[4] & dstd_1[4] & lfuncb_1[4]);
assign trmb_1[5] = ~(srcd_n_1[5] & dstd_1[5] & lfuncb_1[5]);
assign trmb_1[6] = ~(srcd_n_1[6] & dstd_1[6] & lfuncb_1[6]);
assign trmb_1[7] = ~(srcd_n_1[7] & dstd_1[7] & lfuncb_1[7]);
assign trmb_1[8] = ~(srcd_n_1[8] & dstd_1[8] & lfuncb_1[8]);
assign trmb_1[9] = ~(srcd_n_1[9] & dstd_1[9] & lfuncb_1[9]);
assign trmb_1[10] = ~(srcd_n_1[10] & dstd_1[10] & lfuncb_1[10]);
assign trmb_1[11] = ~(srcd_n_1[11] & dstd_1[11] & lfuncb_1[11]);
assign trmb_1[12] = ~(srcd_n_1[12] & dstd_1[12] & lfuncb_1[12]);
assign trmb_1[13] = ~(srcd_n_1[13] & dstd_1[13] & lfuncb_1[13]);
assign trmb_1[14] = ~(srcd_n_1[14] & dstd_1[14] & lfuncb_1[14]);
assign trmb_1[15] = ~(srcd_n_1[15] & dstd_1[15] & lfuncb_1[15]);
assign trmb_1[16] = ~(srcd_n_1[16] & dstd_1[16] & lfuncb_1[16]);
assign trmb_1[17] = ~(srcd_n_1[17] & dstd_1[17] & lfuncb_1[17]);
assign trmb_1[18] = ~(srcd_n_1[18] & dstd_1[18] & lfuncb_1[18]);
assign trmb_1[19] = ~(srcd_n_1[19] & dstd_1[19] & lfuncb_1[19]);
assign trmb_1[20] = ~(srcd_n_1[20] & dstd_1[20] & lfuncb_1[20]);
assign trmb_1[21] = ~(srcd_n_1[21] & dstd_1[21] & lfuncb_1[21]);
assign trmb_1[22] = ~(srcd_n_1[22] & dstd_1[22] & lfuncb_1[22]);
assign trmb_1[23] = ~(srcd_n_1[23] & dstd_1[23] & lfuncb_1[23]);
assign trmb_1[24] = ~(srcd_n_1[24] & dstd_1[24] & lfuncb_1[24]);
assign trmb_1[25] = ~(srcd_n_1[25] & dstd_1[25] & lfuncb_1[25]);
assign trmb_1[26] = ~(srcd_n_1[26] & dstd_1[26] & lfuncb_1[26]);
assign trmb_1[27] = ~(srcd_n_1[27] & dstd_1[27] & lfuncb_1[27]);
assign trmb_1[28] = ~(srcd_n_1[28] & dstd_1[28] & lfuncb_1[28]);
assign trmb_1[29] = ~(srcd_n_1[29] & dstd_1[29] & lfuncb_1[29]);
assign trmb_1[30] = ~(srcd_n_1[30] & dstd_1[30] & lfuncb_1[30]);
assign trmb_1[31] = ~(srcd_n_1[31] & dstd_1[31] & lfuncb_1[31]);

// LFU.NET (57) - lftrmc[1] : nd3
assign trmc_1[0] = ~(srcd_1[0] & dstd_n_1[0] & lfuncb_2[0]);
assign trmc_1[1] = ~(srcd_1[1] & dstd_n_1[1] & lfuncb_2[1]);
assign trmc_1[2] = ~(srcd_1[2] & dstd_n_1[2] & lfuncb_2[2]);
assign trmc_1[3] = ~(srcd_1[3] & dstd_n_1[3] & lfuncb_2[3]);
assign trmc_1[4] = ~(srcd_1[4] & dstd_n_1[4] & lfuncb_2[4]);
assign trmc_1[5] = ~(srcd_1[5] & dstd_n_1[5] & lfuncb_2[5]);
assign trmc_1[6] = ~(srcd_1[6] & dstd_n_1[6] & lfuncb_2[6]);
assign trmc_1[7] = ~(srcd_1[7] & dstd_n_1[7] & lfuncb_2[7]);
assign trmc_1[8] = ~(srcd_1[8] & dstd_n_1[8] & lfuncb_2[8]);
assign trmc_1[9] = ~(srcd_1[9] & dstd_n_1[9] & lfuncb_2[9]);
assign trmc_1[10] = ~(srcd_1[10] & dstd_n_1[10] & lfuncb_2[10]);
assign trmc_1[11] = ~(srcd_1[11] & dstd_n_1[11] & lfuncb_2[11]);
assign trmc_1[12] = ~(srcd_1[12] & dstd_n_1[12] & lfuncb_2[12]);
assign trmc_1[13] = ~(srcd_1[13] & dstd_n_1[13] & lfuncb_2[13]);
assign trmc_1[14] = ~(srcd_1[14] & dstd_n_1[14] & lfuncb_2[14]);
assign trmc_1[15] = ~(srcd_1[15] & dstd_n_1[15] & lfuncb_2[15]);
assign trmc_1[16] = ~(srcd_1[16] & dstd_n_1[16] & lfuncb_2[16]);
assign trmc_1[17] = ~(srcd_1[17] & dstd_n_1[17] & lfuncb_2[17]);
assign trmc_1[18] = ~(srcd_1[18] & dstd_n_1[18] & lfuncb_2[18]);
assign trmc_1[19] = ~(srcd_1[19] & dstd_n_1[19] & lfuncb_2[19]);
assign trmc_1[20] = ~(srcd_1[20] & dstd_n_1[20] & lfuncb_2[20]);
assign trmc_1[21] = ~(srcd_1[21] & dstd_n_1[21] & lfuncb_2[21]);
assign trmc_1[22] = ~(srcd_1[22] & dstd_n_1[22] & lfuncb_2[22]);
assign trmc_1[23] = ~(srcd_1[23] & dstd_n_1[23] & lfuncb_2[23]);
assign trmc_1[24] = ~(srcd_1[24] & dstd_n_1[24] & lfuncb_2[24]);
assign trmc_1[25] = ~(srcd_1[25] & dstd_n_1[25] & lfuncb_2[25]);
assign trmc_1[26] = ~(srcd_1[26] & dstd_n_1[26] & lfuncb_2[26]);
assign trmc_1[27] = ~(srcd_1[27] & dstd_n_1[27] & lfuncb_2[27]);
assign trmc_1[28] = ~(srcd_1[28] & dstd_n_1[28] & lfuncb_2[28]);
assign trmc_1[29] = ~(srcd_1[29] & dstd_n_1[29] & lfuncb_2[29]);
assign trmc_1[30] = ~(srcd_1[30] & dstd_n_1[30] & lfuncb_2[30]);
assign trmc_1[31] = ~(srcd_1[31] & dstd_n_1[31] & lfuncb_2[31]);

// LFU.NET (59) - lftrmd[1] : nd3
assign trmd_1[0] = ~(srcd_1[0] & dstd_1[0] & lfuncb_3[0]);
assign trmd_1[1] = ~(srcd_1[1] & dstd_1[1] & lfuncb_3[1]);
assign trmd_1[2] = ~(srcd_1[2] & dstd_1[2] & lfuncb_3[2]);
assign trmd_1[3] = ~(srcd_1[3] & dstd_1[3] & lfuncb_3[3]);
assign trmd_1[4] = ~(srcd_1[4] & dstd_1[4] & lfuncb_3[4]);
assign trmd_1[5] = ~(srcd_1[5] & dstd_1[5] & lfuncb_3[5]);
assign trmd_1[6] = ~(srcd_1[6] & dstd_1[6] & lfuncb_3[6]);
assign trmd_1[7] = ~(srcd_1[7] & dstd_1[7] & lfuncb_3[7]);
assign trmd_1[8] = ~(srcd_1[8] & dstd_1[8] & lfuncb_3[8]);
assign trmd_1[9] = ~(srcd_1[9] & dstd_1[9] & lfuncb_3[9]);
assign trmd_1[10] = ~(srcd_1[10] & dstd_1[10] & lfuncb_3[10]);
assign trmd_1[11] = ~(srcd_1[11] & dstd_1[11] & lfuncb_3[11]);
assign trmd_1[12] = ~(srcd_1[12] & dstd_1[12] & lfuncb_3[12]);
assign trmd_1[13] = ~(srcd_1[13] & dstd_1[13] & lfuncb_3[13]);
assign trmd_1[14] = ~(srcd_1[14] & dstd_1[14] & lfuncb_3[14]);
assign trmd_1[15] = ~(srcd_1[15] & dstd_1[15] & lfuncb_3[15]);
assign trmd_1[16] = ~(srcd_1[16] & dstd_1[16] & lfuncb_3[16]);
assign trmd_1[17] = ~(srcd_1[17] & dstd_1[17] & lfuncb_3[17]);
assign trmd_1[18] = ~(srcd_1[18] & dstd_1[18] & lfuncb_3[18]);
assign trmd_1[19] = ~(srcd_1[19] & dstd_1[19] & lfuncb_3[19]);
assign trmd_1[20] = ~(srcd_1[20] & dstd_1[20] & lfuncb_3[20]);
assign trmd_1[21] = ~(srcd_1[21] & dstd_1[21] & lfuncb_3[21]);
assign trmd_1[22] = ~(srcd_1[22] & dstd_1[22] & lfuncb_3[22]);
assign trmd_1[23] = ~(srcd_1[23] & dstd_1[23] & lfuncb_3[23]);
assign trmd_1[24] = ~(srcd_1[24] & dstd_1[24] & lfuncb_3[24]);
assign trmd_1[25] = ~(srcd_1[25] & dstd_1[25] & lfuncb_3[25]);
assign trmd_1[26] = ~(srcd_1[26] & dstd_1[26] & lfuncb_3[26]);
assign trmd_1[27] = ~(srcd_1[27] & dstd_1[27] & lfuncb_3[27]);
assign trmd_1[28] = ~(srcd_1[28] & dstd_1[28] & lfuncb_3[28]);
assign trmd_1[29] = ~(srcd_1[29] & dstd_1[29] & lfuncb_3[29]);
assign trmd_1[30] = ~(srcd_1[30] & dstd_1[30] & lfuncb_3[30]);
assign trmd_1[31] = ~(srcd_1[31] & dstd_1[31] & lfuncb_3[31]);

// LFU.NET (61) - lfgen[0-1] : nd4
assign lfu_0[0] = ~(trma_0[0] & trmb_0[0] & trmc_0[0] & trmd_0[0]);
assign lfu_0[1] = ~(trma_0[1] & trmb_0[1] & trmc_0[1] & trmd_0[1]);
assign lfu_0[2] = ~(trma_0[2] & trmb_0[2] & trmc_0[2] & trmd_0[2]);
assign lfu_0[3] = ~(trma_0[3] & trmb_0[3] & trmc_0[3] & trmd_0[3]);
assign lfu_0[4] = ~(trma_0[4] & trmb_0[4] & trmc_0[4] & trmd_0[4]);
assign lfu_0[5] = ~(trma_0[5] & trmb_0[5] & trmc_0[5] & trmd_0[5]);
assign lfu_0[6] = ~(trma_0[6] & trmb_0[6] & trmc_0[6] & trmd_0[6]);
assign lfu_0[7] = ~(trma_0[7] & trmb_0[7] & trmc_0[7] & trmd_0[7]);
assign lfu_0[8] = ~(trma_0[8] & trmb_0[8] & trmc_0[8] & trmd_0[8]);
assign lfu_0[9] = ~(trma_0[9] & trmb_0[9] & trmc_0[9] & trmd_0[9]);
assign lfu_0[10] = ~(trma_0[10] & trmb_0[10] & trmc_0[10] & trmd_0[10]);
assign lfu_0[11] = ~(trma_0[11] & trmb_0[11] & trmc_0[11] & trmd_0[11]);
assign lfu_0[12] = ~(trma_0[12] & trmb_0[12] & trmc_0[12] & trmd_0[12]);
assign lfu_0[13] = ~(trma_0[13] & trmb_0[13] & trmc_0[13] & trmd_0[13]);
assign lfu_0[14] = ~(trma_0[14] & trmb_0[14] & trmc_0[14] & trmd_0[14]);
assign lfu_0[15] = ~(trma_0[15] & trmb_0[15] & trmc_0[15] & trmd_0[15]);
assign lfu_0[16] = ~(trma_0[16] & trmb_0[16] & trmc_0[16] & trmd_0[16]);
assign lfu_0[17] = ~(trma_0[17] & trmb_0[17] & trmc_0[17] & trmd_0[17]);
assign lfu_0[18] = ~(trma_0[18] & trmb_0[18] & trmc_0[18] & trmd_0[18]);
assign lfu_0[19] = ~(trma_0[19] & trmb_0[19] & trmc_0[19] & trmd_0[19]);
assign lfu_0[20] = ~(trma_0[20] & trmb_0[20] & trmc_0[20] & trmd_0[20]);
assign lfu_0[21] = ~(trma_0[21] & trmb_0[21] & trmc_0[21] & trmd_0[21]);
assign lfu_0[22] = ~(trma_0[22] & trmb_0[22] & trmc_0[22] & trmd_0[22]);
assign lfu_0[23] = ~(trma_0[23] & trmb_0[23] & trmc_0[23] & trmd_0[23]);
assign lfu_0[24] = ~(trma_0[24] & trmb_0[24] & trmc_0[24] & trmd_0[24]);
assign lfu_0[25] = ~(trma_0[25] & trmb_0[25] & trmc_0[25] & trmd_0[25]);
assign lfu_0[26] = ~(trma_0[26] & trmb_0[26] & trmc_0[26] & trmd_0[26]);
assign lfu_0[27] = ~(trma_0[27] & trmb_0[27] & trmc_0[27] & trmd_0[27]);
assign lfu_0[28] = ~(trma_0[28] & trmb_0[28] & trmc_0[28] & trmd_0[28]);
assign lfu_0[29] = ~(trma_0[29] & trmb_0[29] & trmc_0[29] & trmd_0[29]);
assign lfu_0[30] = ~(trma_0[30] & trmb_0[30] & trmc_0[30] & trmd_0[30]);
assign lfu_0[31] = ~(trma_0[31] & trmb_0[31] & trmc_0[31] & trmd_0[31]);
assign lfu_1[0] = ~(trma_1[0] & trmb_1[0] & trmc_1[0] & trmd_1[0]);
assign lfu_1[1] = ~(trma_1[1] & trmb_1[1] & trmc_1[1] & trmd_1[1]);
assign lfu_1[2] = ~(trma_1[2] & trmb_1[2] & trmc_1[2] & trmd_1[2]);
assign lfu_1[3] = ~(trma_1[3] & trmb_1[3] & trmc_1[3] & trmd_1[3]);
assign lfu_1[4] = ~(trma_1[4] & trmb_1[4] & trmc_1[4] & trmd_1[4]);
assign lfu_1[5] = ~(trma_1[5] & trmb_1[5] & trmc_1[5] & trmd_1[5]);
assign lfu_1[6] = ~(trma_1[6] & trmb_1[6] & trmc_1[6] & trmd_1[6]);
assign lfu_1[7] = ~(trma_1[7] & trmb_1[7] & trmc_1[7] & trmd_1[7]);
assign lfu_1[8] = ~(trma_1[8] & trmb_1[8] & trmc_1[8] & trmd_1[8]);
assign lfu_1[9] = ~(trma_1[9] & trmb_1[9] & trmc_1[9] & trmd_1[9]);
assign lfu_1[10] = ~(trma_1[10] & trmb_1[10] & trmc_1[10] & trmd_1[10]);
assign lfu_1[11] = ~(trma_1[11] & trmb_1[11] & trmc_1[11] & trmd_1[11]);
assign lfu_1[12] = ~(trma_1[12] & trmb_1[12] & trmc_1[12] & trmd_1[12]);
assign lfu_1[13] = ~(trma_1[13] & trmb_1[13] & trmc_1[13] & trmd_1[13]);
assign lfu_1[14] = ~(trma_1[14] & trmb_1[14] & trmc_1[14] & trmd_1[14]);
assign lfu_1[15] = ~(trma_1[15] & trmb_1[15] & trmc_1[15] & trmd_1[15]);
assign lfu_1[16] = ~(trma_1[16] & trmb_1[16] & trmc_1[16] & trmd_1[16]);
assign lfu_1[17] = ~(trma_1[17] & trmb_1[17] & trmc_1[17] & trmd_1[17]);
assign lfu_1[18] = ~(trma_1[18] & trmb_1[18] & trmc_1[18] & trmd_1[18]);
assign lfu_1[19] = ~(trma_1[19] & trmb_1[19] & trmc_1[19] & trmd_1[19]);
assign lfu_1[20] = ~(trma_1[20] & trmb_1[20] & trmc_1[20] & trmd_1[20]);
assign lfu_1[21] = ~(trma_1[21] & trmb_1[21] & trmc_1[21] & trmd_1[21]);
assign lfu_1[22] = ~(trma_1[22] & trmb_1[22] & trmc_1[22] & trmd_1[22]);
assign lfu_1[23] = ~(trma_1[23] & trmb_1[23] & trmc_1[23] & trmd_1[23]);
assign lfu_1[24] = ~(trma_1[24] & trmb_1[24] & trmc_1[24] & trmd_1[24]);
assign lfu_1[25] = ~(trma_1[25] & trmb_1[25] & trmc_1[25] & trmd_1[25]);
assign lfu_1[26] = ~(trma_1[26] & trmb_1[26] & trmc_1[26] & trmd_1[26]);
assign lfu_1[27] = ~(trma_1[27] & trmb_1[27] & trmc_1[27] & trmd_1[27]);
assign lfu_1[28] = ~(trma_1[28] & trmb_1[28] & trmc_1[28] & trmd_1[28]);
assign lfu_1[29] = ~(trma_1[29] & trmb_1[29] & trmc_1[29] & trmd_1[29]);
assign lfu_1[30] = ~(trma_1[30] & trmb_1[30] & trmc_1[30] & trmd_1[30]);
assign lfu_1[31] = ~(trma_1[31] & trmb_1[31] & trmc_1[31] & trmd_1[31]);
endmodule
