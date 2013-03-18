`include "defs.v"

module blit
(
	output [0:23] blit_addr_out,
	output [0:23] blit_addr_oe,
	input [0:23] blit_addr_in,
	output wdata_0_out,
	output wdata_0_oe,
	input wdata_0_in,
	output wdata_1_out,
	output wdata_1_oe,
	input wdata_1_in,
	output wdata_2_out,
	output wdata_2_oe,
	input wdata_2_in,
	output wdata_3_out,
	output wdata_3_oe,
	input wdata_3_in,
	output wdata_4_out,
	output wdata_4_oe,
	input wdata_4_in,
	output wdata_5_out,
	output wdata_5_oe,
	input wdata_5_in,
	output wdata_6_out,
	output wdata_6_oe,
	input wdata_6_in,
	output wdata_7_out,
	output wdata_7_oe,
	input wdata_7_in,
	output wdata_8_out,
	output wdata_8_oe,
	input wdata_8_in,
	output wdata_9_out,
	output wdata_9_oe,
	input wdata_9_in,
	output wdata_10_out,
	output wdata_10_oe,
	input wdata_10_in,
	output wdata_11_out,
	output wdata_11_oe,
	input wdata_11_in,
	output wdata_12_out,
	output wdata_12_oe,
	input wdata_12_in,
	output wdata_13_out,
	output wdata_13_oe,
	input wdata_13_in,
	output wdata_14_out,
	output wdata_14_oe,
	input wdata_14_in,
	output wdata_15_out,
	output wdata_15_oe,
	input wdata_15_in,
	output wdata_16_out,
	output wdata_16_oe,
	input wdata_16_in,
	output wdata_17_out,
	output wdata_17_oe,
	input wdata_17_in,
	output wdata_18_out,
	output wdata_18_oe,
	input wdata_18_in,
	output wdata_19_out,
	output wdata_19_oe,
	input wdata_19_in,
	output wdata_20_out,
	output wdata_20_oe,
	input wdata_20_in,
	output wdata_21_out,
	output wdata_21_oe,
	input wdata_21_in,
	output wdata_22_out,
	output wdata_22_oe,
	input wdata_22_in,
	output wdata_23_out,
	output wdata_23_oe,
	input wdata_23_in,
	output wdata_24_out,
	output wdata_24_oe,
	input wdata_24_in,
	output wdata_25_out,
	output wdata_25_oe,
	input wdata_25_in,
	output wdata_26_out,
	output wdata_26_oe,
	input wdata_26_in,
	output wdata_27_out,
	output wdata_27_oe,
	input wdata_27_in,
	output wdata_28_out,
	output wdata_28_oe,
	input wdata_28_in,
	output wdata_29_out,
	output wdata_29_oe,
	input wdata_29_in,
	output wdata_30_out,
	output wdata_30_oe,
	input wdata_30_in,
	output wdata_31_out,
	output wdata_31_oe,
	input wdata_31_in,
	output wdata_32_out,
	output wdata_32_oe,
	input wdata_32_in,
	output wdata_33_out,
	output wdata_33_oe,
	input wdata_33_in,
	output wdata_34_out,
	output wdata_34_oe,
	input wdata_34_in,
	output wdata_35_out,
	output wdata_35_oe,
	input wdata_35_in,
	output wdata_36_out,
	output wdata_36_oe,
	input wdata_36_in,
	output wdata_37_out,
	output wdata_37_oe,
	input wdata_37_in,
	output wdata_38_out,
	output wdata_38_oe,
	input wdata_38_in,
	output wdata_39_out,
	output wdata_39_oe,
	input wdata_39_in,
	output wdata_40_out,
	output wdata_40_oe,
	input wdata_40_in,
	output wdata_41_out,
	output wdata_41_oe,
	input wdata_41_in,
	output wdata_42_out,
	output wdata_42_oe,
	input wdata_42_in,
	output wdata_43_out,
	output wdata_43_oe,
	input wdata_43_in,
	output wdata_44_out,
	output wdata_44_oe,
	input wdata_44_in,
	output wdata_45_out,
	output wdata_45_oe,
	input wdata_45_in,
	output wdata_46_out,
	output wdata_46_oe,
	input wdata_46_in,
	output wdata_47_out,
	output wdata_47_oe,
	input wdata_47_in,
	output wdata_48_out,
	output wdata_48_oe,
	input wdata_48_in,
	output wdata_49_out,
	output wdata_49_oe,
	input wdata_49_in,
	output wdata_50_out,
	output wdata_50_oe,
	input wdata_50_in,
	output wdata_51_out,
	output wdata_51_oe,
	input wdata_51_in,
	output wdata_52_out,
	output wdata_52_oe,
	input wdata_52_in,
	output wdata_53_out,
	output wdata_53_oe,
	input wdata_53_in,
	output wdata_54_out,
	output wdata_54_oe,
	input wdata_54_in,
	output wdata_55_out,
	output wdata_55_oe,
	input wdata_55_in,
	output wdata_56_out,
	output wdata_56_oe,
	input wdata_56_in,
	output wdata_57_out,
	output wdata_57_oe,
	input wdata_57_in,
	output wdata_58_out,
	output wdata_58_oe,
	input wdata_58_in,
	output wdata_59_out,
	output wdata_59_oe,
	input wdata_59_in,
	output wdata_60_out,
	output wdata_60_oe,
	input wdata_60_in,
	output wdata_61_out,
	output wdata_61_oe,
	input wdata_61_in,
	output wdata_62_out,
	output wdata_62_oe,
	input wdata_62_in,
	output wdata_63_out,
	output wdata_63_oe,
	input wdata_63_in,
	output justify_out,
	output justify_oe,
	input justify_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output read_out,
	output read_oe,
	input read_in,
	output width_0_out,
	output width_0_oe,
	input width_0_in,
	output width_1_out,
	output width_1_oe,
	input width_1_in,
	output width_2_out,
	output width_2_oe,
	input width_2_in,
	output width_3_out,
	output width_3_oe,
	input width_3_in,
	output gpu_dout_0_out,
	output gpu_dout_0_oe,
	input gpu_dout_0_in,
	output gpu_dout_1_out,
	output gpu_dout_1_oe,
	input gpu_dout_1_in,
	output gpu_dout_2_out,
	output gpu_dout_2_oe,
	input gpu_dout_2_in,
	output gpu_dout_3_out,
	output gpu_dout_3_oe,
	input gpu_dout_3_in,
	output gpu_dout_4_out,
	output gpu_dout_4_oe,
	input gpu_dout_4_in,
	output gpu_dout_5_out,
	output gpu_dout_5_oe,
	input gpu_dout_5_in,
	output gpu_dout_6_out,
	output gpu_dout_6_oe,
	input gpu_dout_6_in,
	output gpu_dout_7_out,
	output gpu_dout_7_oe,
	input gpu_dout_7_in,
	output gpu_dout_8_out,
	output gpu_dout_8_oe,
	input gpu_dout_8_in,
	output gpu_dout_9_out,
	output gpu_dout_9_oe,
	input gpu_dout_9_in,
	output gpu_dout_10_out,
	output gpu_dout_10_oe,
	input gpu_dout_10_in,
	output gpu_dout_11_out,
	output gpu_dout_11_oe,
	input gpu_dout_11_in,
	output gpu_dout_12_out,
	output gpu_dout_12_oe,
	input gpu_dout_12_in,
	output gpu_dout_13_out,
	output gpu_dout_13_oe,
	input gpu_dout_13_in,
	output gpu_dout_14_out,
	output gpu_dout_14_oe,
	input gpu_dout_14_in,
	output gpu_dout_15_out,
	output gpu_dout_15_oe,
	input gpu_dout_15_in,
	output gpu_dout_16_out,
	output gpu_dout_16_oe,
	input gpu_dout_16_in,
	output gpu_dout_17_out,
	output gpu_dout_17_oe,
	input gpu_dout_17_in,
	output gpu_dout_18_out,
	output gpu_dout_18_oe,
	input gpu_dout_18_in,
	output gpu_dout_19_out,
	output gpu_dout_19_oe,
	input gpu_dout_19_in,
	output gpu_dout_20_out,
	output gpu_dout_20_oe,
	input gpu_dout_20_in,
	output gpu_dout_21_out,
	output gpu_dout_21_oe,
	input gpu_dout_21_in,
	output gpu_dout_22_out,
	output gpu_dout_22_oe,
	input gpu_dout_22_in,
	output gpu_dout_23_out,
	output gpu_dout_23_oe,
	input gpu_dout_23_in,
	output gpu_dout_24_out,
	output gpu_dout_24_oe,
	input gpu_dout_24_in,
	output gpu_dout_25_out,
	output gpu_dout_25_oe,
	input gpu_dout_25_in,
	output gpu_dout_26_out,
	output gpu_dout_26_oe,
	input gpu_dout_26_in,
	output gpu_dout_27_out,
	output gpu_dout_27_oe,
	input gpu_dout_27_in,
	output gpu_dout_28_out,
	output gpu_dout_28_oe,
	input gpu_dout_28_in,
	output gpu_dout_29_out,
	output gpu_dout_29_oe,
	input gpu_dout_29_in,
	output gpu_dout_30_out,
	output gpu_dout_30_oe,
	input gpu_dout_30_in,
	output gpu_dout_31_out,
	output gpu_dout_31_oe,
	input gpu_dout_31_in,
	output blit_breq_0,
	output blit_breq_1,
	output blit_int,
	input ack,
	input big_pix,
	input blit_back,
	input bliten,
	input clk,
	input tlw,
	input data_0,
	input data_1,
	input data_2,
	input data_3,
	input data_4,
	input data_5,
	input data_6,
	input data_7,
	input data_8,
	input data_9,
	input data_10,
	input data_11,
	input data_12,
	input data_13,
	input data_14,
	input data_15,
	input data_16,
	input data_17,
	input data_18,
	input data_19,
	input data_20,
	input data_21,
	input data_22,
	input data_23,
	input data_24,
	input data_25,
	input data_26,
	input data_27,
	input data_28,
	input data_29,
	input data_30,
	input data_31,
	input data_32,
	input data_33,
	input data_34,
	input data_35,
	input data_36,
	input data_37,
	input data_38,
	input data_39,
	input data_40,
	input data_41,
	input data_42,
	input data_43,
	input data_44,
	input data_45,
	input data_46,
	input data_47,
	input data_48,
	input data_49,
	input data_50,
	input data_51,
	input data_52,
	input data_53,
	input data_54,
	input data_55,
	input data_56,
	input data_57,
	input data_58,
	input data_59,
	input data_60,
	input data_61,
	input data_62,
	input data_63,
	input [0:23] gpu_addr,
	input [0:31] gpu_din,
	input gpu_memw,
	input xreset_n,
	input sys_clk
);

assign blit_addr_oe[0:23] = 24'h000000;

assign wdata_0_oe = 1'b0;
assign wdata_1_oe = 1'b0;
assign wdata_2_oe = 1'b0;
assign wdata_3_oe = 1'b0;
assign wdata_4_oe = 1'b0;
assign wdata_5_oe = 1'b0;
assign wdata_6_oe = 1'b0;
assign wdata_7_oe = 1'b0;
assign wdata_8_oe = 1'b0;
assign wdata_9_oe = 1'b0;
assign wdata_10_oe = 1'b0;
assign wdata_11_oe = 1'b0;
assign wdata_12_oe = 1'b0;
assign wdata_13_oe = 1'b0;
assign wdata_14_oe = 1'b0;
assign wdata_15_oe = 1'b0;
assign wdata_16_oe = 1'b0;
assign wdata_17_oe = 1'b0;
assign wdata_18_oe = 1'b0;
assign wdata_19_oe = 1'b0;
assign wdata_20_oe = 1'b0;
assign wdata_21_oe = 1'b0;
assign wdata_22_oe = 1'b0;
assign wdata_23_oe = 1'b0;
assign wdata_24_oe = 1'b0;
assign wdata_25_oe = 1'b0;
assign wdata_26_oe = 1'b0;
assign wdata_27_oe = 1'b0;
assign wdata_28_oe = 1'b0;
assign wdata_29_oe = 1'b0;
assign wdata_30_oe = 1'b0;
assign wdata_31_oe = 1'b0;
assign wdata_32_oe = 1'b0;
assign wdata_33_oe = 1'b0;
assign wdata_34_oe = 1'b0;
assign wdata_35_oe = 1'b0;
assign wdata_36_oe = 1'b0;
assign wdata_37_oe = 1'b0;
assign wdata_38_oe = 1'b0;
assign wdata_39_oe = 1'b0;
assign wdata_40_oe = 1'b0;
assign wdata_41_oe = 1'b0;
assign wdata_42_oe = 1'b0;
assign wdata_43_oe = 1'b0;
assign wdata_44_oe = 1'b0;
assign wdata_45_oe = 1'b0;
assign wdata_46_oe = 1'b0;
assign wdata_47_oe = 1'b0;
assign wdata_48_oe = 1'b0;
assign wdata_49_oe = 1'b0;
assign wdata_50_oe = 1'b0;
assign wdata_51_oe = 1'b0;
assign wdata_52_oe = 1'b0;
assign wdata_53_oe = 1'b0;
assign wdata_54_oe = 1'b0;
assign wdata_55_oe = 1'b0;
assign wdata_56_oe = 1'b0;
assign wdata_57_oe = 1'b0;
assign wdata_58_oe = 1'b0;
assign wdata_59_oe = 1'b0;
assign wdata_60_oe = 1'b0;
assign wdata_61_oe = 1'b0;
assign wdata_62_oe = 1'b0;
assign wdata_63_oe = 1'b0;

assign justify_oe = 1'b0;
assign mreq_oe = 1'b0;
assign read_oe = 1'b0;
assign width_0_oe = 1'b0;
assign width_1_oe = 1'b0;
assign width_2_oe = 1'b0;
assign width_3_oe = 1'b0;

assign gpu_dout_0_oe = 1'b0;
assign gpu_dout_1_oe = 1'b0;
assign gpu_dout_2_oe = 1'b0;
assign gpu_dout_3_oe = 1'b0;
assign gpu_dout_4_oe = 1'b0;
assign gpu_dout_5_oe = 1'b0;
assign gpu_dout_6_oe = 1'b0;
assign gpu_dout_7_oe = 1'b0;
assign gpu_dout_8_oe = 1'b0;
assign gpu_dout_9_oe = 1'b0;
assign gpu_dout_10_oe = 1'b0;
assign gpu_dout_11_oe = 1'b0;
assign gpu_dout_12_oe = 1'b0;
assign gpu_dout_13_oe = 1'b0;
assign gpu_dout_14_oe = 1'b0;
assign gpu_dout_15_oe = 1'b0;
assign gpu_dout_16_oe = 1'b0;
assign gpu_dout_17_oe = 1'b0;
assign gpu_dout_18_oe = 1'b0;
assign gpu_dout_19_oe = 1'b0;
assign gpu_dout_20_oe = 1'b0;
assign gpu_dout_21_oe = 1'b0;
assign gpu_dout_22_oe = 1'b0;
assign gpu_dout_23_oe = 1'b0;
assign gpu_dout_24_oe = 1'b0;
assign gpu_dout_25_oe = 1'b0;
assign gpu_dout_26_oe = 1'b0;
assign gpu_dout_27_oe = 1'b0;
assign gpu_dout_28_oe = 1'b0;
assign gpu_dout_29_oe = 1'b0;
assign gpu_dout_30_oe = 1'b0;
assign gpu_dout_31_oe = 1'b0;

assign blit_breq_0 = 1'b0;
assign blit_breq_1 = 1'b0;
assign blit_int = 1'b0;

endmodule
