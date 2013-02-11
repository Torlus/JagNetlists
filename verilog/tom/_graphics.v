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
	inout wdata_0,
	inout wdata_1,
	inout wdata_2,
	inout wdata_3,
	inout wdata_4,
	inout wdata_5,
	inout wdata_6,
	inout wdata_7,
	inout wdata_8,
	inout wdata_9,
	inout wdata_10,
	inout wdata_11,
	inout wdata_12,
	inout wdata_13,
	inout wdata_14,
	inout wdata_15,
	inout wdata_16,
	inout wdata_17,
	inout wdata_18,
	inout wdata_19,
	inout wdata_20,
	inout wdata_21,
	inout wdata_22,
	inout wdata_23,
	inout wdata_24,
	inout wdata_25,
	inout wdata_26,
	inout wdata_27,
	inout wdata_28,
	inout wdata_29,
	inout wdata_30,
	inout wdata_31,
	inout wdata_32,
	inout wdata_33,
	inout wdata_34,
	inout wdata_35,
	inout wdata_36,
	inout wdata_37,
	inout wdata_38,
	inout wdata_39,
	inout wdata_40,
	inout wdata_41,
	inout wdata_42,
	inout wdata_43,
	inout wdata_44,
	inout wdata_45,
	inout wdata_46,
	inout wdata_47,
	inout wdata_48,
	inout wdata_49,
	inout wdata_50,
	inout wdata_51,
	inout wdata_52,
	inout wdata_53,
	inout wdata_54,
	inout wdata_55,
	inout wdata_56,
	inout wdata_57,
	inout wdata_58,
	inout wdata_59,
	inout wdata_60,
	inout wdata_61,
	inout wdata_62,
	inout wdata_63,
	inout a_0,
	inout a_1,
	inout a_2,
	inout a_3,
	inout a_4,
	inout a_5,
	inout a_6,
	inout a_7,
	inout a_8,
	inout a_9,
	inout a_10,
	inout a_11,
	inout a_12,
	inout a_13,
	inout a_14,
	inout a_15,
	inout a_16,
	inout a_17,
	inout a_18,
	inout a_19,
	inout a_20,
	inout a_21,
	inout a_22,
	inout a_23,
	inout width_0,
	inout width_1,
	inout width_2,
	inout width_3,
	inout read,
	inout mreq,
	inout dr_0,
	inout dr_1,
	inout dr_2,
	inout dr_3,
	inout dr_4,
	inout dr_5,
	inout dr_6,
	inout dr_7,
	inout dr_8,
	inout dr_9,
	inout dr_10,
	inout dr_11,
	inout dr_12,
	inout dr_13,
	inout dr_14,
	inout dr_15,
	inout justify
);

assign blit_breq_0 = 1'b0;
assign blit_breq_1 = 1'b0;
assign gpu_breq = 1'b0;
assign dma_breq = 1'b0;
assign cpu_int = 1'b0;
assign lock = 1'b0;

assign wdata_0 = 1'bz;
assign wdata_1 = 1'bz;
assign wdata_2 = 1'bz;
assign wdata_3 = 1'bz;
assign wdata_4 = 1'bz;
assign wdata_5 = 1'bz;
assign wdata_6 = 1'bz;
assign wdata_7 = 1'bz;
assign wdata_8 = 1'bz;
assign wdata_9 = 1'bz;
assign wdata_10 = 1'bz;
assign wdata_11 = 1'bz;
assign wdata_12 = 1'bz;
assign wdata_13 = 1'bz;
assign wdata_14 = 1'bz;
assign wdata_15 = 1'bz;
assign wdata_16 = 1'bz;
assign wdata_17 = 1'bz;
assign wdata_18 = 1'bz;
assign wdata_19 = 1'bz;
assign wdata_20 = 1'bz;
assign wdata_21 = 1'bz;
assign wdata_22 = 1'bz;
assign wdata_23 = 1'bz;
assign wdata_24 = 1'bz;
assign wdata_25 = 1'bz;
assign wdata_26 = 1'bz;
assign wdata_27 = 1'bz;
assign wdata_28 = 1'bz;
assign wdata_29 = 1'bz;
assign wdata_30 = 1'bz;
assign wdata_31 = 1'bz;
assign wdata_32 = 1'bz;
assign wdata_33 = 1'bz;
assign wdata_34 = 1'bz;
assign wdata_35 = 1'bz;
assign wdata_36 = 1'bz;
assign wdata_37 = 1'bz;
assign wdata_38 = 1'bz;
assign wdata_39 = 1'bz;
assign wdata_40 = 1'bz;
assign wdata_41 = 1'bz;
assign wdata_42 = 1'bz;
assign wdata_43 = 1'bz;
assign wdata_44 = 1'bz;
assign wdata_45 = 1'bz;
assign wdata_46 = 1'bz;
assign wdata_47 = 1'bz;
assign wdata_48 = 1'bz;
assign wdata_49 = 1'bz;
assign wdata_50 = 1'bz;
assign wdata_51 = 1'bz;
assign wdata_52 = 1'bz;
assign wdata_53 = 1'bz;
assign wdata_54 = 1'bz;
assign wdata_55 = 1'bz;
assign wdata_56 = 1'bz;
assign wdata_57 = 1'bz;
assign wdata_58 = 1'bz;
assign wdata_59 = 1'bz;
assign wdata_60 = 1'bz;
assign wdata_61 = 1'bz;
assign wdata_62 = 1'bz;
assign wdata_63 = 1'bz;
assign a_0 = 1'bz;
assign a_1 = 1'bz;
assign a_2 = 1'bz;
assign a_3 = 1'bz;
assign a_4 = 1'bz;
assign a_5 = 1'bz;
assign a_6 = 1'bz;
assign a_7 = 1'bz;
assign a_8 = 1'bz;
assign a_9 = 1'bz;
assign a_10 = 1'bz;
assign a_11 = 1'bz;
assign a_12 = 1'bz;
assign a_13 = 1'bz;
assign a_14 = 1'bz;
assign a_15 = 1'bz;
assign a_16 = 1'bz;
assign a_17 = 1'bz;
assign a_18 = 1'bz;
assign a_19 = 1'bz;
assign a_20 = 1'bz;
assign a_21 = 1'bz;
assign a_22 = 1'bz;
assign a_23 = 1'bz;
assign width_0 = 1'bz;
assign width_1 = 1'bz;
assign width_2 = 1'bz;
assign width_3 = 1'bz;
assign read = 1'bz;
assign mreq = 1'bz;
assign dr_0 = 1'bz;
assign dr_1 = 1'bz;
assign dr_2 = 1'bz;
assign dr_3 = 1'bz;
assign dr_4 = 1'bz;
assign dr_5 = 1'bz;
assign dr_6 = 1'bz;
assign dr_7 = 1'bz;
assign dr_8 = 1'bz;
assign dr_9 = 1'bz;
assign dr_10 = 1'bz;
assign dr_11 = 1'bz;
assign dr_12 = 1'bz;
assign dr_13 = 1'bz;
assign dr_14 = 1'bz;
assign dr_15 = 1'bz;
assign justify = 1'bz;


endmodule
