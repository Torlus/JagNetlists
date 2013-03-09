`include "defs.v"

module graphics
(
	input ima_0,
	input ima_1,
	input ima_2,
	input ima_3,
	input ima_4,
	input ima_5,
	input ima_6,
	input ima_7,
	input ima_8,
	input ima_9,
	input ima_10,
	input ima_11,
	input ima_12,
	input ima_13,
	input ima_14,
	input ima_15,
	input dwrite_0,
	input dwrite_1,
	input dwrite_2,
	input dwrite_3,
	input dwrite_4,
	input dwrite_5,
	input dwrite_6,
	input dwrite_7,
	input dwrite_8,
	input dwrite_9,
	input dwrite_10,
	input dwrite_11,
	input dwrite_12,
	input dwrite_13,
	input dwrite_14,
	input dwrite_15,
	input dwrite_16,
	input dwrite_17,
	input dwrite_18,
	input dwrite_19,
	input dwrite_20,
	input dwrite_21,
	input dwrite_22,
	input dwrite_23,
	input dwrite_24,
	input dwrite_25,
	input dwrite_26,
	input dwrite_27,
	input dwrite_28,
	input dwrite_29,
	input dwrite_30,
	input dwrite_31,
	input ack,
	input blit_back,
	input gpu_back,
	input reset_n,
	input clk,
	input tlw,
	input dint,
	input gpu_irq_3,
	input gpu_irq_2,
	input iord,
	input iowr,
	input reset_lock,
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
	input at_1,
	output blit_breq_0,
	output blit_breq_1,
	output gpu_breq,
	output dma_breq,
	output cpu_int,
	output lock,
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
	output a_0_out,
	output a_0_oe,
	input a_0_in,
	output a_1_out,
	output a_1_oe,
	input a_1_in,
	output a_2_out,
	output a_2_oe,
	input a_2_in,
	output a_3_out,
	output a_3_oe,
	input a_3_in,
	output a_4_out,
	output a_4_oe,
	input a_4_in,
	output a_5_out,
	output a_5_oe,
	input a_5_in,
	output a_6_out,
	output a_6_oe,
	input a_6_in,
	output a_7_out,
	output a_7_oe,
	input a_7_in,
	output a_8_out,
	output a_8_oe,
	input a_8_in,
	output a_9_out,
	output a_9_oe,
	input a_9_in,
	output a_10_out,
	output a_10_oe,
	input a_10_in,
	output a_11_out,
	output a_11_oe,
	input a_11_in,
	output a_12_out,
	output a_12_oe,
	input a_12_in,
	output a_13_out,
	output a_13_oe,
	input a_13_in,
	output a_14_out,
	output a_14_oe,
	input a_14_in,
	output a_15_out,
	output a_15_oe,
	input a_15_in,
	output a_16_out,
	output a_16_oe,
	input a_16_in,
	output a_17_out,
	output a_17_oe,
	input a_17_in,
	output a_18_out,
	output a_18_oe,
	input a_18_in,
	output a_19_out,
	output a_19_oe,
	input a_19_in,
	output a_20_out,
	output a_20_oe,
	input a_20_in,
	output a_21_out,
	output a_21_oe,
	input a_21_in,
	output a_22_out,
	output a_22_oe,
	input a_22_in,
	output a_23_out,
	output a_23_oe,
	input a_23_in,
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
	output read_out,
	output read_oe,
	input read_in,
	output mreq_out,
	output mreq_oe,
	input mreq_in,
	output dr_0_out,
	output dr_0_oe,
	input dr_0_in,
	output dr_1_out,
	output dr_1_oe,
	input dr_1_in,
	output dr_2_out,
	output dr_2_oe,
	input dr_2_in,
	output dr_3_out,
	output dr_3_oe,
	input dr_3_in,
	output dr_4_out,
	output dr_4_oe,
	input dr_4_in,
	output dr_5_out,
	output dr_5_oe,
	input dr_5_in,
	output dr_6_out,
	output dr_6_oe,
	input dr_6_in,
	output dr_7_out,
	output dr_7_oe,
	input dr_7_in,
	output dr_8_out,
	output dr_8_oe,
	input dr_8_in,
	output dr_9_out,
	output dr_9_oe,
	input dr_9_in,
	output dr_10_out,
	output dr_10_oe,
	input dr_10_in,
	output dr_11_out,
	output dr_11_oe,
	input dr_11_in,
	output dr_12_out,
	output dr_12_oe,
	input dr_12_in,
	output dr_13_out,
	output dr_13_oe,
	input dr_13_in,
	output dr_14_out,
	output dr_14_oe,
	input dr_14_in,
	output dr_15_out,
	output dr_15_oe,
	input dr_15_in,
	output justify_out,
	output justify_oe,
	input justify_in
);

assign blit_breq_0 = 1'b0;
assign blit_breq_1 = 1'b0;
assign gpu_breq = 1'b0;
assign dma_breq = 1'b0;
assign cpu_int = 1'b0;
assign lock = 1'b0;

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
assign a_0_oe = 1'b0;
assign a_1_oe = 1'b0;
assign a_2_oe = 1'b0;
assign a_3_oe = 1'b0;
assign a_4_oe = 1'b0;
assign a_5_oe = 1'b0;
assign a_6_oe = 1'b0;
assign a_7_oe = 1'b0;
assign a_8_oe = 1'b0;
assign a_9_oe = 1'b0;
assign a_10_oe = 1'b0;
assign a_11_oe = 1'b0;
assign a_12_oe = 1'b0;
assign a_13_oe = 1'b0;
assign a_14_oe = 1'b0;
assign a_15_oe = 1'b0;
assign a_16_oe = 1'b0;
assign a_17_oe = 1'b0;
assign a_18_oe = 1'b0;
assign a_19_oe = 1'b0;
assign a_20_oe = 1'b0;
assign a_21_oe = 1'b0;
assign a_22_oe = 1'b0;
assign a_23_oe = 1'b0;
assign width_0_oe = 1'b0;
assign width_1_oe = 1'b0;
assign width_2_oe = 1'b0;
assign width_3_oe = 1'b0;
assign read_oe = 1'b0;
assign mreq_oe = 1'b0;
assign dr_0_oe = 1'b0;
assign dr_1_oe = 1'b0;
assign dr_2_oe = 1'b0;
assign dr_3_oe = 1'b0;
assign dr_4_oe = 1'b0;
assign dr_5_oe = 1'b0;
assign dr_6_oe = 1'b0;
assign dr_7_oe = 1'b0;
assign dr_8_oe = 1'b0;
assign dr_9_oe = 1'b0;
assign dr_10_oe = 1'b0;
assign dr_11_oe = 1'b0;
assign dr_12_oe = 1'b0;
assign dr_13_oe = 1'b0;
assign dr_14_oe = 1'b0;
assign dr_15_oe = 1'b0;
assign justify_oe = 1'b0;

endmodule
