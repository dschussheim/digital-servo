////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: AD9783_synthesis.v
// /___/   /\     Timestamp: Wed May 31 15:19:10 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim AD9783.ngc AD9783_synthesis.v 
// Device	: xc7k160t-1-fbg676
// Input file	: AD9783.ngc
// Output file	: C:\Users\dschussheim\Documents\GitHub\digital-servo\M_KX1_DB\Firmware\DAC_test\netgen\synthesis\AD9783_synthesis.v
// # of Modules	: 1
// Design Name	: AD9783
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module AD9783 (
  clk_in, rst_in, cmd_trig_in, spi_sdi_in, rst_out, spi_scs_out, spi_sck_out, spi_sdo_out, CLK_out_p, CLK_out_n, DCI_out_p, DCI_out_n, cmd_addr_in, 
cmd_data_in, DAC0_in, DAC1_in, cmd_data_out, D_out_p, D_out_n
);
  input clk_in;
  input rst_in;
  input cmd_trig_in;
  input spi_sdi_in;
  output rst_out;
  output spi_scs_out;
  output spi_sck_out;
  output spi_sdo_out;
  output CLK_out_p;
  output CLK_out_n;
  output DCI_out_p;
  output DCI_out_n;
  input [15 : 0] cmd_addr_in;
  input [15 : 0] cmd_data_in;
  input [15 : 0] DAC0_in;
  input [15 : 0] DAC1_in;
  output [15 : 0] cmd_data_out;
  output [15 : 0] D_out_p;
  output [15 : 0] D_out_n;
  wire cmd_addr_in_4_IBUF_0;
  wire cmd_addr_in_3_IBUF_1;
  wire cmd_addr_in_2_IBUF_2;
  wire cmd_addr_in_1_IBUF_3;
  wire cmd_addr_in_0_IBUF_4;
  wire cmd_addr_in_15_IBUF_5;
  wire cmd_addr_in_14_IBUF_6;
  wire cmd_addr_in_13_IBUF_7;
  wire cmd_addr_in_12_IBUF_8;
  wire cmd_addr_in_11_IBUF_9;
  wire cmd_addr_in_10_IBUF_10;
  wire cmd_addr_in_9_IBUF_11;
  wire cmd_addr_in_8_IBUF_12;
  wire cmd_data_in_7_IBUF_13;
  wire cmd_data_in_6_IBUF_14;
  wire cmd_data_in_5_IBUF_15;
  wire cmd_data_in_4_IBUF_16;
  wire cmd_data_in_3_IBUF_17;
  wire cmd_data_in_2_IBUF_18;
  wire cmd_data_in_1_IBUF_19;
  wire cmd_data_in_0_IBUF_20;
  wire DAC0_in_15_IBUF_21;
  wire DAC0_in_14_IBUF_22;
  wire DAC0_in_13_IBUF_23;
  wire DAC0_in_12_IBUF_24;
  wire DAC0_in_11_IBUF_25;
  wire DAC0_in_10_IBUF_26;
  wire DAC0_in_9_IBUF_27;
  wire DAC0_in_8_IBUF_28;
  wire DAC0_in_7_IBUF_29;
  wire DAC0_in_6_IBUF_30;
  wire DAC0_in_5_IBUF_31;
  wire DAC0_in_4_IBUF_32;
  wire DAC0_in_3_IBUF_33;
  wire DAC0_in_2_IBUF_34;
  wire DAC0_in_1_IBUF_35;
  wire DAC0_in_0_IBUF_36;
  wire DAC1_in_15_IBUF_37;
  wire DAC1_in_14_IBUF_38;
  wire DAC1_in_13_IBUF_39;
  wire DAC1_in_12_IBUF_40;
  wire DAC1_in_11_IBUF_41;
  wire DAC1_in_10_IBUF_42;
  wire DAC1_in_9_IBUF_43;
  wire DAC1_in_8_IBUF_44;
  wire DAC1_in_7_IBUF_45;
  wire DAC1_in_6_IBUF_46;
  wire DAC1_in_5_IBUF_47;
  wire DAC1_in_4_IBUF_48;
  wire DAC1_in_3_IBUF_49;
  wire DAC1_in_2_IBUF_50;
  wire DAC1_in_1_IBUF_51;
  wire DAC1_in_0_IBUF_52;
  wire clk_in_IBUF_BUFG_53;
  wire rst_in_IBUF_54;
  wire cmd_trig_in_IBUF_55;
  wire spi_sdi_in_IBUF_56;
  wire clk8xInt;
  wire \AD_9783_SPI_inst/data_out_15 ;
  wire \AD_9783_SPI_inst/data_out_14_77 ;
  wire \AD_9783_SPI_inst/data_out_13_78 ;
  wire \AD_9783_SPI_inst/data_out_12 ;
  wire \AD_9783_SPI_inst/data_out_11 ;
  wire \AD_9783_SPI_inst/data_out_10 ;
  wire \AD_9783_SPI_inst/data_out_9 ;
  wire \AD_9783_SPI_inst/data_out_8 ;
  wire \AD_9783_SPI_inst/data_out_7 ;
  wire \AD_9783_SPI_inst/data_out_6 ;
  wire \AD_9783_SPI_inst/data_out_5 ;
  wire \AD_9783_SPI_inst/data_out_4 ;
  wire \AD_9783_SPI_inst/data_out_3 ;
  wire \AD_9783_SPI_inst/data_out_2 ;
  wire \AD_9783_SPI_inst/data_out_1 ;
  wire \AD_9783_SPI_inst/data_out_0 ;
  wire \AD_9783_SPI_inst/ready_out_92 ;
  wire \AD_9783_SPI_inst/spi_scs_out_93 ;
  wire \AD_9783_SPI_inst/spi_sck_out_94 ;
  wire \AD_9783_SPI_inst/spi_sdo_out_95 ;
  wire \data_in[0] ;
  wire \data_in[18] ;
  wire \data_in[1] ;
  wire \data_in[19] ;
  wire \data_in[2] ;
  wire \data_in[20] ;
  wire \data_in[3] ;
  wire \data_in[21] ;
  wire \data_in[4] ;
  wire \data_in[22] ;
  wire \data_in[5] ;
  wire \data_in[23] ;
  wire \data_in[6] ;
  wire \data_in[24] ;
  wire \data_in[7] ;
  wire \data_in[25] ;
  wire \data_in[8] ;
  wire \data_in[26] ;
  wire \data_in[9] ;
  wire \data_in[27] ;
  wire \data_in[10] ;
  wire \data_in[28] ;
  wire \data_in[11] ;
  wire \data_in[29] ;
  wire \data_in[12] ;
  wire \data_in[30] ;
  wire \data_in[13] ;
  wire \data_in[31] ;
  wire \data_in[14] ;
  wire \data_in[32] ;
  wire \data_in[15] ;
  wire \data_in[33] ;
  wire state_f_FSM_FFd1_128;
  wire state_f_FSM_FFd2_129;
  wire state_f_FSM_FFd3_130;
  wire state_f_FSM_FFd4_131;
  wire spi_trigger_140;
  wire \spi_data[15] ;
  wire \spi_data[12] ;
  wire \spi_data[11] ;
  wire \spi_data[10] ;
  wire \spi_data[9] ;
  wire \spi_data[8] ;
  wire \spi_data[7] ;
  wire \spi_data[6] ;
  wire \spi_data[5] ;
  wire \spi_data[4] ;
  wire \spi_data[3] ;
  wire \spi_data[2] ;
  wire \spi_data[1] ;
  wire \spi_data[0] ;
  wire rst_out_OBUF_155;
  wire clk8x;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<15> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<12> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<11> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<10> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<9> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<8> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<7> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<6> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<5> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<4> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<3> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<2> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<1> ;
  wire \state_f[3]_spi_data[15]_wide_mux_16_OUT<0> ;
  wire _n0072;
  wire N0;
  wire _n0146_inv;
  wire \state_f_FSM_FFd2-In11_218 ;
  wire \state_f_FSM_FFd1-In11_219 ;
  wire \state_f_FSM_FFd4-In_220 ;
  wire \state_f_FSM_FFd3-In_221 ;
  wire \state_f_FSM_FFd2-In ;
  wire \state_f_FSM_FFd1-In ;
  wire \AD_9783_SPI_inst/Mcount_counter_f11 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f10 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f9 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f8 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f7 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f6 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f5 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f4 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f3 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f2 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f1 ;
  wire \AD_9783_SPI_inst/Mcount_counter_f ;
  wire \AD_9783_SPI_inst/_n0159_inv ;
  wire \AD_9783_SPI_inst/state_f<2>_inv ;
  wire \AD_9783_SPI_inst/Mcount_clk_counter2 ;
  wire \AD_9783_SPI_inst/Mcount_clk_counter1 ;
  wire \AD_9783_SPI_inst/Mcount_clk_counter ;
  wire \AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o_inv ;
  wire \AD_9783_SPI_inst/rst_in1 ;
  wire \AD_9783_SPI_inst/trigger_in1_283 ;
  wire \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<0> ;
  wire \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<1> ;
  wire \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<2> ;
  wire \AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[0]_AND_34_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[0]_AND_33_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[1]_AND_32_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[1]_AND_31_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[2]_AND_30_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[2]_AND_29_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[3]_AND_28_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[3]_AND_27_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[4]_AND_26_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[4]_AND_25_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[5]_AND_24_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[5]_AND_23_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[6]_AND_22_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[6]_AND_21_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[7]_AND_20_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[7]_AND_19_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[8]_AND_18_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[8]_AND_17_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[9]_AND_16_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[9]_AND_15_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[10]_AND_14_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[10]_AND_13_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[11]_AND_12_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[11]_AND_11_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[12]_AND_10_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[12]_AND_9_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[15]_AND_4_o ;
  wire \AD_9783_SPI_inst/trigger_in_data_in[15]_AND_3_o ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<0> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<1> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<2> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<3> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<4> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<5> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<6> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<7> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<8> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<9> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<10> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<11> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<12> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<13> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<14> ;
  wire \AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<15> ;
  wire \AD_9783_SPI_inst/spi_clk_BUFG_347 ;
  wire N3;
  wire N7;
  wire N14;
  wire \AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11> ;
  wire \AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>1_356 ;
  wire \Mcount_counter_f_cy<0>_rt_434 ;
  wire spi_trigger_rstpot_435;
  wire \AD_9783_SPI_inst/ready_out_rstpot_436 ;
  wire rst_out_rstpot_437;
  wire \AD_9783_SPI_inst/spi_sdo_out_rstpot_438 ;
  wire \AD_9783_SPI_inst/spi_sck_out_rstpot_439 ;
  wire \AD_9783_SPI_inst/spi_scs_out_rstpot_440 ;
  wire N18;
  wire N19;
  wire N20;
  wire N22;
  wire N23;
  wire N25;
  wire N27;
  wire N35;
  wire N37;
  wire \AD_9783_SPI_inst/data_out_0_LDC_450 ;
  wire \AD_9783_SPI_inst/data_out_0_C_0_451 ;
  wire \AD_9783_SPI_inst/data_out_0_P_0_452 ;
  wire \AD_9783_SPI_inst/data_out_1_LDC_453 ;
  wire \AD_9783_SPI_inst/data_out_1_C_1_454 ;
  wire \AD_9783_SPI_inst/data_out_1_P_1_455 ;
  wire \AD_9783_SPI_inst/data_out_2_LDC_456 ;
  wire \AD_9783_SPI_inst/data_out_2_C_2_457 ;
  wire \AD_9783_SPI_inst/data_out_2_P_2_458 ;
  wire \AD_9783_SPI_inst/data_out_4_LDC_459 ;
  wire \AD_9783_SPI_inst/data_out_4_C_4_460 ;
  wire \AD_9783_SPI_inst/data_out_4_P_4_461 ;
  wire \AD_9783_SPI_inst/data_out_5_LDC_462 ;
  wire \AD_9783_SPI_inst/data_out_5_C_5_463 ;
  wire \AD_9783_SPI_inst/data_out_5_P_5_464 ;
  wire \AD_9783_SPI_inst/data_out_3_LDC_465 ;
  wire \AD_9783_SPI_inst/data_out_3_C_3_466 ;
  wire \AD_9783_SPI_inst/data_out_3_P_3_467 ;
  wire \AD_9783_SPI_inst/data_out_7_LDC_468 ;
  wire \AD_9783_SPI_inst/data_out_7_C_7_469 ;
  wire \AD_9783_SPI_inst/data_out_7_P_7_470 ;
  wire \AD_9783_SPI_inst/data_out_8_LDC_471 ;
  wire \AD_9783_SPI_inst/data_out_8_C_8_472 ;
  wire \AD_9783_SPI_inst/data_out_8_P_8_473 ;
  wire \AD_9783_SPI_inst/data_out_6_LDC_474 ;
  wire \AD_9783_SPI_inst/data_out_6_C_6_475 ;
  wire \AD_9783_SPI_inst/data_out_6_P_6_476 ;
  wire \AD_9783_SPI_inst/data_out_10_LDC_477 ;
  wire \AD_9783_SPI_inst/data_out_10_C_10_478 ;
  wire \AD_9783_SPI_inst/data_out_10_P_10_479 ;
  wire \AD_9783_SPI_inst/data_out_11_LDC_480 ;
  wire \AD_9783_SPI_inst/data_out_11_C_11_481 ;
  wire \AD_9783_SPI_inst/data_out_11_P_11_482 ;
  wire \AD_9783_SPI_inst/data_out_9_LDC_483 ;
  wire \AD_9783_SPI_inst/data_out_9_C_9_484 ;
  wire \AD_9783_SPI_inst/data_out_9_P_9_485 ;
  wire \AD_9783_SPI_inst/data_out_12_LDC_486 ;
  wire \AD_9783_SPI_inst/data_out_12_C_12_487 ;
  wire \AD_9783_SPI_inst/data_out_12_P_12_488 ;
  wire \AD_9783_SPI_inst/data_out_15_LDC_489 ;
  wire \AD_9783_SPI_inst/data_out_15_C_15_490 ;
  wire \AD_9783_SPI_inst/data_out_15_P_15_491 ;
  wire \AD_9783_SPI_inst/state_f_0_LDC_492 ;
  wire \AD_9783_SPI_inst/state_f_0_C_0_493 ;
  wire \AD_9783_SPI_inst/state_f_0_P_0_494 ;
  wire \AD_9783_SPI_inst/Mcount_clk_counter_cy<1>_rt_495 ;
  wire \AD_9783_SPI_inst/Mcount_clk_counter_cy<0>_rt_496 ;
  wire N39;
  wire \AD_9783_SPI_inst/_n0159_inv1_rstpot_498 ;
  wire \AD_9783_SPI_inst/_n0159_inv1_cepot ;
  wire \AD_9783_SPI_inst/counter_f_0_dpot_500 ;
  wire \AD_9783_SPI_inst/state_f_2_1_501 ;
  wire clk_in_IBUF_502;
  wire \AD_9783_SPI_inst/spi_clk_503 ;
  wire \NLW_pins[0].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[0].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[1].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[2].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[3].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[4].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[5].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[6].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[7].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[8].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[9].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[10].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[11].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[12].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[13].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[14].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[15].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[16].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_TQ_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_TFB_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_OQ_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ;
  wire \NLW_pins[17].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBOUT_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire \NLW_MMCME2_BASE_inst_DO<15>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<14>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<13>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<12>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<11>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<10>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<9>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<8>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<7>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<6>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<5>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<4>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<3>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<2>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<1>_UNCONNECTED ;
  wire \NLW_MMCME2_BASE_inst_DO<0>_UNCONNECTED ;
  wire [17 : 0] data_out_to_pins;
  wire [7 : 0] counter_f;
  wire [7 : 0] Result;
  wire [6 : 0] Mcount_counter_f_cy;
  wire [7 : 1] Mcount_counter_f_lut;
  wire [11 : 0] \AD_9783_SPI_inst/Mcount_counter_f_lut ;
  wire [10 : 0] \AD_9783_SPI_inst/Mcount_counter_f_cy ;
  wire [2 : 2] \AD_9783_SPI_inst/Mcount_clk_counter_lut ;
  wire [1 : 0] \AD_9783_SPI_inst/Mcount_clk_counter_cy ;
  wire [11 : 0] \AD_9783_SPI_inst/counter_f ;
  wire [2 : 0] \AD_9783_SPI_inst/state_f ;
  wire [3 : 0] \AD_9783_SPI_inst/clk_counter ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\AD_9783_SPI_inst/clk_counter [3])
  );
  FD   data_in_0 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_0_IBUF_36),
    .Q(\data_in[0] )
  );
  FD   data_in_1 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_1_IBUF_35),
    .Q(\data_in[1] )
  );
  FD   data_in_2 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_2_IBUF_34),
    .Q(\data_in[2] )
  );
  FD   data_in_3 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_3_IBUF_33),
    .Q(\data_in[3] )
  );
  FD   data_in_4 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_4_IBUF_32),
    .Q(\data_in[4] )
  );
  FD   data_in_5 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_5_IBUF_31),
    .Q(\data_in[5] )
  );
  FD   data_in_6 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_6_IBUF_30),
    .Q(\data_in[6] )
  );
  FD   data_in_7 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_7_IBUF_29),
    .Q(\data_in[7] )
  );
  FD   data_in_8 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_8_IBUF_28),
    .Q(\data_in[8] )
  );
  FD   data_in_9 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_9_IBUF_27),
    .Q(\data_in[9] )
  );
  FD   data_in_10 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_10_IBUF_26),
    .Q(\data_in[10] )
  );
  FD   data_in_11 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_11_IBUF_25),
    .Q(\data_in[11] )
  );
  FD   data_in_12 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_12_IBUF_24),
    .Q(\data_in[12] )
  );
  FD   data_in_13 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_13_IBUF_23),
    .Q(\data_in[13] )
  );
  FD   data_in_14 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_14_IBUF_22),
    .Q(\data_in[14] )
  );
  FD   data_in_15 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC0_in_15_IBUF_21),
    .Q(\data_in[15] )
  );
  FD   data_in_18 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_0_IBUF_52),
    .Q(\data_in[18] )
  );
  FD   data_in_19 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_1_IBUF_51),
    .Q(\data_in[19] )
  );
  FD   data_in_20 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_2_IBUF_50),
    .Q(\data_in[20] )
  );
  FD   data_in_21 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_3_IBUF_49),
    .Q(\data_in[21] )
  );
  FD   data_in_22 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_4_IBUF_48),
    .Q(\data_in[22] )
  );
  FD   data_in_23 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_5_IBUF_47),
    .Q(\data_in[23] )
  );
  FD   data_in_24 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_6_IBUF_46),
    .Q(\data_in[24] )
  );
  FD   data_in_25 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_7_IBUF_45),
    .Q(\data_in[25] )
  );
  FD   data_in_26 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_8_IBUF_44),
    .Q(\data_in[26] )
  );
  FD   data_in_27 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_9_IBUF_43),
    .Q(\data_in[27] )
  );
  FD   data_in_28 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_10_IBUF_42),
    .Q(\data_in[28] )
  );
  FD   data_in_29 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_11_IBUF_41),
    .Q(\data_in[29] )
  );
  FD   data_in_30 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_12_IBUF_40),
    .Q(\data_in[30] )
  );
  FD   data_in_31 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_13_IBUF_39),
    .Q(\data_in[31] )
  );
  FD   data_in_32 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_14_IBUF_38),
    .Q(\data_in[32] )
  );
  FD   data_in_33 (
    .C(clk_in_IBUF_BUFG_53),
    .D(DAC1_in_15_IBUF_37),
    .Q(\data_in[33] )
  );
  FDE   spi_data_0 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<0> ),
    .Q(\spi_data[0] )
  );
  FDE   spi_data_1 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<1> ),
    .Q(\spi_data[1] )
  );
  FDE   spi_data_2 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<2> ),
    .Q(\spi_data[2] )
  );
  FDE   spi_data_3 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<3> ),
    .Q(\spi_data[3] )
  );
  FDE   spi_data_4 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<4> ),
    .Q(\spi_data[4] )
  );
  FDE   spi_data_5 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<5> ),
    .Q(\spi_data[5] )
  );
  FDE   spi_data_6 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<6> ),
    .Q(\spi_data[6] )
  );
  FDE   spi_data_7 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<7> ),
    .Q(\spi_data[7] )
  );
  FDE   spi_data_8 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<8> ),
    .Q(\spi_data[8] )
  );
  FDE   spi_data_9 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<9> ),
    .Q(\spi_data[9] )
  );
  FDE   spi_data_10 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<10> ),
    .Q(\spi_data[10] )
  );
  FDE   spi_data_11 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<11> ),
    .Q(\spi_data[11] )
  );
  FDE   spi_data_12 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<12> ),
    .Q(\spi_data[12] )
  );
  FDE   spi_data_15 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0146_inv),
    .D(\state_f[3]_spi_data[15]_wide_mux_16_OUT<15> ),
    .Q(\spi_data[15] )
  );
  FDC   state_f_FSM_FFd3 (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\state_f_FSM_FFd3-In_221 ),
    .Q(state_f_FSM_FFd3_130)
  );
  FDPE   counter_f_0 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[0]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[0])
  );
  FDPE   counter_f_1 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[1]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[1])
  );
  FDPE   counter_f_2 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[2]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[2])
  );
  FDPE   counter_f_3 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[3]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[3])
  );
  FDPE   counter_f_4 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[4]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[4])
  );
  FDPE   counter_f_5 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[5]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[5])
  );
  FDPE   counter_f_6 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[6]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[6])
  );
  FDPE   counter_f_7 (
    .C(clk_in_IBUF_BUFG_53),
    .CE(_n0072),
    .D(Result[7]),
    .PRE(rst_in_IBUF_54),
    .Q(counter_f[7])
  );
  FDP   state_f_FSM_FFd4 (
    .C(clk_in_IBUF_BUFG_53),
    .D(\state_f_FSM_FFd4-In_220 ),
    .PRE(rst_in_IBUF_54),
    .Q(state_f_FSM_FFd4_131)
  );
  FDC   state_f_FSM_FFd2 (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\state_f_FSM_FFd2-In ),
    .Q(state_f_FSM_FFd2_129)
  );
  FDC   state_f_FSM_FFd1 (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\state_f_FSM_FFd1-In ),
    .Q(state_f_FSM_FFd1_128)
  );
  MUXCY   \Mcount_counter_f_cy<0>  (
    .CI(N0),
    .DI(\AD_9783_SPI_inst/clk_counter [3]),
    .S(\Mcount_counter_f_cy<0>_rt_434 ),
    .O(Mcount_counter_f_cy[0])
  );
  XORCY   \Mcount_counter_f_xor<0>  (
    .CI(N0),
    .LI(\Mcount_counter_f_cy<0>_rt_434 ),
    .O(Result[0])
  );
  MUXCY   \Mcount_counter_f_cy<1>  (
    .CI(Mcount_counter_f_cy[0]),
    .DI(N0),
    .S(Mcount_counter_f_lut[1]),
    .O(Mcount_counter_f_cy[1])
  );
  XORCY   \Mcount_counter_f_xor<1>  (
    .CI(Mcount_counter_f_cy[0]),
    .LI(Mcount_counter_f_lut[1]),
    .O(Result[1])
  );
  MUXCY   \Mcount_counter_f_cy<2>  (
    .CI(Mcount_counter_f_cy[1]),
    .DI(N0),
    .S(Mcount_counter_f_lut[2]),
    .O(Mcount_counter_f_cy[2])
  );
  XORCY   \Mcount_counter_f_xor<2>  (
    .CI(Mcount_counter_f_cy[1]),
    .LI(Mcount_counter_f_lut[2]),
    .O(Result[2])
  );
  MUXCY   \Mcount_counter_f_cy<3>  (
    .CI(Mcount_counter_f_cy[2]),
    .DI(N0),
    .S(Mcount_counter_f_lut[3]),
    .O(Mcount_counter_f_cy[3])
  );
  XORCY   \Mcount_counter_f_xor<3>  (
    .CI(Mcount_counter_f_cy[2]),
    .LI(Mcount_counter_f_lut[3]),
    .O(Result[3])
  );
  MUXCY   \Mcount_counter_f_cy<4>  (
    .CI(Mcount_counter_f_cy[3]),
    .DI(N0),
    .S(Mcount_counter_f_lut[4]),
    .O(Mcount_counter_f_cy[4])
  );
  XORCY   \Mcount_counter_f_xor<4>  (
    .CI(Mcount_counter_f_cy[3]),
    .LI(Mcount_counter_f_lut[4]),
    .O(Result[4])
  );
  MUXCY   \Mcount_counter_f_cy<5>  (
    .CI(Mcount_counter_f_cy[4]),
    .DI(N0),
    .S(Mcount_counter_f_lut[5]),
    .O(Mcount_counter_f_cy[5])
  );
  XORCY   \Mcount_counter_f_xor<5>  (
    .CI(Mcount_counter_f_cy[4]),
    .LI(Mcount_counter_f_lut[5]),
    .O(Result[5])
  );
  MUXCY   \Mcount_counter_f_cy<6>  (
    .CI(Mcount_counter_f_cy[5]),
    .DI(N0),
    .S(Mcount_counter_f_lut[6]),
    .O(Mcount_counter_f_cy[6])
  );
  XORCY   \Mcount_counter_f_xor<6>  (
    .CI(Mcount_counter_f_cy[5]),
    .LI(Mcount_counter_f_lut[6]),
    .O(Result[6])
  );
  XORCY   \Mcount_counter_f_xor<7>  (
    .CI(Mcount_counter_f_cy[6]),
    .LI(Mcount_counter_f_lut[7]),
    .O(Result[7])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[0].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[0].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[18] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[18] ),
    .D3(\data_in[0] ),
    .TBYTEOUT(\NLW_pins[0].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[0].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[0].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[0] ),
    .TFB(\NLW_pins[0].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[18] ),
    .OQ(\NLW_pins[0].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[0].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[0]),
    .D1(\data_in[0] ),
    .D4(\data_in[18] ),
    .SHIFTOUT2(\NLW_pins[0].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[0] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[1].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[1].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[19] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[19] ),
    .D3(\data_in[1] ),
    .TBYTEOUT(\NLW_pins[1].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[1].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[1].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[1] ),
    .TFB(\NLW_pins[1].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[19] ),
    .OQ(\NLW_pins[1].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[1].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[1]),
    .D1(\data_in[1] ),
    .D4(\data_in[19] ),
    .SHIFTOUT2(\NLW_pins[1].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[1] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[2].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[2].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[20] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[20] ),
    .D3(\data_in[2] ),
    .TBYTEOUT(\NLW_pins[2].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[2].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[2].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[2] ),
    .TFB(\NLW_pins[2].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[20] ),
    .OQ(\NLW_pins[2].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[2].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[2]),
    .D1(\data_in[2] ),
    .D4(\data_in[20] ),
    .SHIFTOUT2(\NLW_pins[2].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[2] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[3].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[3].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[21] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[21] ),
    .D3(\data_in[3] ),
    .TBYTEOUT(\NLW_pins[3].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[3].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[3].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[3] ),
    .TFB(\NLW_pins[3].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[21] ),
    .OQ(\NLW_pins[3].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[3].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[3]),
    .D1(\data_in[3] ),
    .D4(\data_in[21] ),
    .SHIFTOUT2(\NLW_pins[3].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[3] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[4].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[4].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[22] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[22] ),
    .D3(\data_in[4] ),
    .TBYTEOUT(\NLW_pins[4].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[4].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[4].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[4] ),
    .TFB(\NLW_pins[4].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[22] ),
    .OQ(\NLW_pins[4].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[4].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[4]),
    .D1(\data_in[4] ),
    .D4(\data_in[22] ),
    .SHIFTOUT2(\NLW_pins[4].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[4] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[5].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[5].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[23] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[23] ),
    .D3(\data_in[5] ),
    .TBYTEOUT(\NLW_pins[5].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[5].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[5].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[5] ),
    .TFB(\NLW_pins[5].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[23] ),
    .OQ(\NLW_pins[5].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[5].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[5]),
    .D1(\data_in[5] ),
    .D4(\data_in[23] ),
    .SHIFTOUT2(\NLW_pins[5].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[5] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[6].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[6].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[24] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[24] ),
    .D3(\data_in[6] ),
    .TBYTEOUT(\NLW_pins[6].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[6].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[6].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[6] ),
    .TFB(\NLW_pins[6].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[24] ),
    .OQ(\NLW_pins[6].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[6].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[6]),
    .D1(\data_in[6] ),
    .D4(\data_in[24] ),
    .SHIFTOUT2(\NLW_pins[6].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[6] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[7].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[7].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[25] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[25] ),
    .D3(\data_in[7] ),
    .TBYTEOUT(\NLW_pins[7].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[7].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[7].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[7] ),
    .TFB(\NLW_pins[7].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[25] ),
    .OQ(\NLW_pins[7].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[7].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[7]),
    .D1(\data_in[7] ),
    .D4(\data_in[25] ),
    .SHIFTOUT2(\NLW_pins[7].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[7] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[8].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[8].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[26] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[26] ),
    .D3(\data_in[8] ),
    .TBYTEOUT(\NLW_pins[8].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[8].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[8].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[8] ),
    .TFB(\NLW_pins[8].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[26] ),
    .OQ(\NLW_pins[8].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[8].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[8]),
    .D1(\data_in[8] ),
    .D4(\data_in[26] ),
    .SHIFTOUT2(\NLW_pins[8].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[8] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[9].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[9].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[27] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[27] ),
    .D3(\data_in[9] ),
    .TBYTEOUT(\NLW_pins[9].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[9].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[9].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[9] ),
    .TFB(\NLW_pins[9].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[27] ),
    .OQ(\NLW_pins[9].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[9].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[9]),
    .D1(\data_in[9] ),
    .D4(\data_in[27] ),
    .SHIFTOUT2(\NLW_pins[9].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[9] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[10].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[10].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[28] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[28] ),
    .D3(\data_in[10] ),
    .TBYTEOUT(\NLW_pins[10].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[10].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[10].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[10] ),
    .TFB(\NLW_pins[10].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[28] ),
    .OQ(\NLW_pins[10].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[10].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[10]),
    .D1(\data_in[10] ),
    .D4(\data_in[28] ),
    .SHIFTOUT2(\NLW_pins[10].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[10] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[11].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[11].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[29] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[29] ),
    .D3(\data_in[11] ),
    .TBYTEOUT(\NLW_pins[11].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[11].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[11].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[11] ),
    .TFB(\NLW_pins[11].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[29] ),
    .OQ(\NLW_pins[11].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[11].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[11]),
    .D1(\data_in[11] ),
    .D4(\data_in[29] ),
    .SHIFTOUT2(\NLW_pins[11].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[11] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[12].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[12].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[30] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[30] ),
    .D3(\data_in[12] ),
    .TBYTEOUT(\NLW_pins[12].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[12].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[12].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[12] ),
    .TFB(\NLW_pins[12].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[30] ),
    .OQ(\NLW_pins[12].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[12].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[12]),
    .D1(\data_in[12] ),
    .D4(\data_in[30] ),
    .SHIFTOUT2(\NLW_pins[12].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[12] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[13].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[13].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[31] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[31] ),
    .D3(\data_in[13] ),
    .TBYTEOUT(\NLW_pins[13].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[13].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[13].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[13] ),
    .TFB(\NLW_pins[13].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[31] ),
    .OQ(\NLW_pins[13].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[13].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[13]),
    .D1(\data_in[13] ),
    .D4(\data_in[31] ),
    .SHIFTOUT2(\NLW_pins[13].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[13] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[14].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[14].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[32] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[32] ),
    .D3(\data_in[14] ),
    .TBYTEOUT(\NLW_pins[14].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[14].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[14].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[14] ),
    .TFB(\NLW_pins[14].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[32] ),
    .OQ(\NLW_pins[14].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[14].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[14]),
    .D1(\data_in[14] ),
    .D4(\data_in[32] ),
    .SHIFTOUT2(\NLW_pins[14].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[14] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[15].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[15].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\data_in[33] ),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\data_in[33] ),
    .D3(\data_in[15] ),
    .TBYTEOUT(\NLW_pins[15].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[15].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[15].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\data_in[15] ),
    .TFB(\NLW_pins[15].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\data_in[33] ),
    .OQ(\NLW_pins[15].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[15].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[15]),
    .D1(\data_in[15] ),
    .D4(\data_in[33] ),
    .SHIFTOUT2(\NLW_pins[15].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\data_in[15] ),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[16].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[16].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(\AD_9783_SPI_inst/clk_counter [3]),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(\AD_9783_SPI_inst/clk_counter [3]),
    .D3(N0),
    .TBYTEOUT(\NLW_pins[16].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[16].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[16].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(N0),
    .TFB(\NLW_pins[16].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(\AD_9783_SPI_inst/clk_counter [3]),
    .OQ(\NLW_pins[16].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[16].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[16]),
    .D1(N0),
    .D4(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTOUT2(\NLW_pins[16].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(N0),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  OSERDESE2 #(
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_TQ ( "SDR" ),
    .SERDES_MODE ( "MASTER" ),
    .TBYTE_CTL ( "FALSE" ),
    .TBYTE_SRC ( "FALSE" ),
    .INIT_OQ ( 1'b0 ),
    .INIT_TQ ( 1'b0 ),
    .SRVAL_OQ ( 1'b0 ),
    .SRVAL_TQ ( 1'b0 ),
    .DATA_WIDTH ( 8 ),
    .TRISTATE_WIDTH ( 4 ))
  \pins[17].OSERDESE2_inst  (
    .SHIFTOUT1(\NLW_pins[17].OSERDESE2_inst_SHIFTOUT1_UNCONNECTED ),
    .D2(N0),
    .TBYTEIN(\AD_9783_SPI_inst/clk_counter [3]),
    .D6(N0),
    .D3(\AD_9783_SPI_inst/clk_counter [3]),
    .TBYTEOUT(\NLW_pins[17].OSERDESE2_inst_TBYTEOUT_UNCONNECTED ),
    .CLKDIV(clk_in_IBUF_BUFG_53),
    .TQ(\NLW_pins[17].OSERDESE2_inst_TQ_UNCONNECTED ),
    .SHIFTIN1(\NLW_pins[17].OSERDESE2_inst_SHIFTIN1_UNCONNECTED ),
    .OCE(N0),
    .T4(\AD_9783_SPI_inst/clk_counter [3]),
    .D5(\AD_9783_SPI_inst/clk_counter [3]),
    .TFB(\NLW_pins[17].OSERDESE2_inst_TFB_UNCONNECTED ),
    .D8(N0),
    .OQ(\NLW_pins[17].OSERDESE2_inst_OQ_UNCONNECTED ),
    .T1(\AD_9783_SPI_inst/clk_counter [3]),
    .SHIFTIN2(\NLW_pins[17].OSERDESE2_inst_SHIFTIN2_UNCONNECTED ),
    .CLK(clk8x),
    .OFB(data_out_to_pins[17]),
    .D1(\AD_9783_SPI_inst/clk_counter [3]),
    .D4(N0),
    .SHIFTOUT2(\NLW_pins[17].OSERDESE2_inst_SHIFTOUT2_UNCONNECTED ),
    .TCE(N0),
    .T3(\AD_9783_SPI_inst/clk_counter [3]),
    .D7(\AD_9783_SPI_inst/clk_counter [3]),
    .RST(rst_in_IBUF_54),
    .T2(\AD_9783_SPI_inst/clk_counter [3])
  );
  BUFR #(
    .BUFR_DIVIDE ( "BYPASS" ),
    .SIM_DEVICE ( "VIRTEX4" ))
  BUFR_inst (
    .O(clk8x),
    .I(clk8xInt),
    .CE(N0),
    .CLR(\AD_9783_SPI_inst/clk_counter [3])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[0].OBUFDS_inst  (
    .I(data_out_to_pins[0]),
    .O(D_out_p[0]),
    .OB(D_out_n[0])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[1].OBUFDS_inst  (
    .I(data_out_to_pins[1]),
    .O(D_out_p[1]),
    .OB(D_out_n[1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[2].OBUFDS_inst  (
    .I(data_out_to_pins[2]),
    .O(D_out_p[2]),
    .OB(D_out_n[2])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[3].OBUFDS_inst  (
    .I(data_out_to_pins[3]),
    .O(D_out_p[3]),
    .OB(D_out_n[3])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[4].OBUFDS_inst  (
    .I(data_out_to_pins[4]),
    .O(D_out_p[4]),
    .OB(D_out_n[4])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[5].OBUFDS_inst  (
    .I(data_out_to_pins[5]),
    .O(D_out_p[5]),
    .OB(D_out_n[5])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[6].OBUFDS_inst  (
    .I(data_out_to_pins[6]),
    .O(D_out_p[6]),
    .OB(D_out_n[6])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[7].OBUFDS_inst  (
    .I(data_out_to_pins[7]),
    .O(D_out_p[7]),
    .OB(D_out_n[7])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[8].OBUFDS_inst  (
    .I(data_out_to_pins[8]),
    .O(D_out_p[8]),
    .OB(D_out_n[8])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[9].OBUFDS_inst  (
    .I(data_out_to_pins[9]),
    .O(D_out_p[9]),
    .OB(D_out_n[9])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[10].OBUFDS_inst  (
    .I(data_out_to_pins[10]),
    .O(D_out_p[10]),
    .OB(D_out_n[10])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[11].OBUFDS_inst  (
    .I(data_out_to_pins[11]),
    .O(D_out_p[11]),
    .OB(D_out_n[11])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[12].OBUFDS_inst  (
    .I(data_out_to_pins[12]),
    .O(D_out_p[12]),
    .OB(D_out_n[12])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[13].OBUFDS_inst  (
    .I(data_out_to_pins[13]),
    .O(D_out_p[13]),
    .OB(D_out_n[13])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[14].OBUFDS_inst  (
    .I(data_out_to_pins[14]),
    .O(D_out_p[14]),
    .OB(D_out_n[14])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[15].OBUFDS_inst  (
    .I(data_out_to_pins[15]),
    .O(D_out_p[15]),
    .OB(D_out_n[15])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[16].OBUFDS_inst  (
    .I(data_out_to_pins[16]),
    .O(DCI_out_p),
    .OB(DCI_out_n)
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS_18" ),
    .SLEW ( "20" ))
  \pins[17].OBUFDS_inst  (
    .I(data_out_to_pins[17]),
    .O(CLK_out_p),
    .OB(CLK_out_n)
  );
  MMCME2_ADV #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLKOUT4_CASCADE ( "FALSE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .CLKOUT1_DIVIDE ( 1 ),
    .CLKOUT2_DIVIDE ( 1 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .CLKOUT6_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_MULT_F ( 8.000000 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN1_PERIOD ( 10.000000 ),
    .CLKOUT0_DIVIDE_F ( 1.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .CLKOUT6_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT6_PHASE ( 0.000000 ),
    .REF_JITTER1 ( 0.010000 ),
    .CLKIN2_PERIOD ( 10.000 ),
    .REF_JITTER2 ( 0.010000 ),
    .SS_MOD_PERIOD ( 10000 ),
    .COMPENSATION ( "ZHOLD" ),
    .SS_MODE ( "CENTER_HIGH" ),
    .CLKFBOUT_USE_FINE_PS ( "FALSE" ),
    .CLKOUT4_USE_FINE_PS ( "FALSE" ),
    .CLKOUT3_USE_FINE_PS ( "FALSE" ),
    .SS_EN ( "FALSE" ),
    .CLKOUT0_USE_FINE_PS ( "FALSE" ),
    .CLKOUT6_USE_FINE_PS ( "FALSE" ),
    .CLKOUT5_USE_FINE_PS ( "FALSE" ),
    .CLKOUT2_USE_FINE_PS ( "FALSE" ),
    .CLKOUT1_USE_FINE_PS ( "FALSE" ))
  MMCME2_BASE_inst (
    .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
    .CLKFBIN(clk8x),
    .PSCLK(\AD_9783_SPI_inst/clk_counter [3]),
    .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
    .PWRDWN(\AD_9783_SPI_inst/clk_counter [3]),
    .DCLK(\AD_9783_SPI_inst/clk_counter [3]),
    .CLKFBOUT(NLW_MMCME2_BASE_inst_CLKFBOUT_UNCONNECTED),
    .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
    .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
    .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
    .DEN(\AD_9783_SPI_inst/clk_counter [3]),
    .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
    .CLKINSEL(N0),
    .CLKIN2(\AD_9783_SPI_inst/clk_counter [3]),
    .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
    .RST(rst_in_IBUF_54),
    .PSINCDEC(\AD_9783_SPI_inst/clk_counter [3]),
    .DWE(\AD_9783_SPI_inst/clk_counter [3]),
    .PSEN(\AD_9783_SPI_inst/clk_counter [3]),
    .CLKOUT0(clk8xInt),
    .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
    .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
    .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
    .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
    .CLKIN1(clk_in_IBUF_502),
    .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
    .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
    .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
    .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
    .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
    .DI({\AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], 
\AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], 
\AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], 
\AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3]}),
    .DO({\NLW_MMCME2_BASE_inst_DO<15>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<14>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<13>_UNCONNECTED , 
\NLW_MMCME2_BASE_inst_DO<12>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<11>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<10>_UNCONNECTED , 
\NLW_MMCME2_BASE_inst_DO<9>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<8>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<7>_UNCONNECTED , 
\NLW_MMCME2_BASE_inst_DO<6>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<5>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<4>_UNCONNECTED , 
\NLW_MMCME2_BASE_inst_DO<3>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<2>_UNCONNECTED , \NLW_MMCME2_BASE_inst_DO<1>_UNCONNECTED , 
\NLW_MMCME2_BASE_inst_DO<0>_UNCONNECTED }),
    .DADDR({\AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3]
, \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3], \AD_9783_SPI_inst/clk_counter [3]})
  );
  FDCE   \AD_9783_SPI_inst/counter_f_11  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f11 ),
    .Q(\AD_9783_SPI_inst/counter_f [11])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_10  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f10 ),
    .Q(\AD_9783_SPI_inst/counter_f [10])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_9  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f9 ),
    .Q(\AD_9783_SPI_inst/counter_f [9])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_8  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f8 ),
    .Q(\AD_9783_SPI_inst/counter_f [8])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_7  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f7 ),
    .Q(\AD_9783_SPI_inst/counter_f [7])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_6  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f6 ),
    .Q(\AD_9783_SPI_inst/counter_f [6])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_5  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f5 ),
    .Q(\AD_9783_SPI_inst/counter_f [5])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_4  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f4 ),
    .Q(\AD_9783_SPI_inst/counter_f [4])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_3  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f3 ),
    .Q(\AD_9783_SPI_inst/counter_f [3])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_2  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f2 ),
    .Q(\AD_9783_SPI_inst/counter_f [2])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_1  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_counter_f1 ),
    .Q(\AD_9783_SPI_inst/counter_f [1])
  );
  FDCE   \AD_9783_SPI_inst/counter_f_0  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CE(\AD_9783_SPI_inst/_n0159_inv1_cepot ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/counter_f_0_dpot_500 ),
    .Q(\AD_9783_SPI_inst/counter_f [0])
  );
  FDC   \AD_9783_SPI_inst/clk_counter_2  (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_clk_counter2 ),
    .Q(\AD_9783_SPI_inst/clk_counter [2])
  );
  FDC   \AD_9783_SPI_inst/clk_counter_1  (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_clk_counter1 ),
    .Q(\AD_9783_SPI_inst/clk_counter [1])
  );
  FDC   \AD_9783_SPI_inst/clk_counter_0  (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/Mcount_clk_counter ),
    .Q(\AD_9783_SPI_inst/clk_counter [0])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<11>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [10]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [11]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f11 )
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<10>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [9]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [10]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f10 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<10>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [9]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [10]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [10])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<9>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [8]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [9]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f9 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<9>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [8]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [9]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [9])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<8>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [7]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [8]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f8 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<8>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [7]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [8]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [8])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<7>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [6]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [7]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f7 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<7>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [6]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [7]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [7])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<6>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [5]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [6]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f6 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<6>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [5]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [6]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [6])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<5>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [4]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [5]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f5 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<5>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [4]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [5]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [5])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<4>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [3]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [4]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f4 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<4>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [3]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [4]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [4])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<3>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [2]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [3]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f3 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<3>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [2]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [3]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [3])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<2>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [1]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f2 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<2>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [1]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [2])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<1>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [0]),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [1]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f1 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<1>  (
    .CI(\AD_9783_SPI_inst/Mcount_counter_f_cy [0]),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [1]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [1])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_counter_f_xor<0>  (
    .CI(\AD_9783_SPI_inst/state_f<2>_inv ),
    .LI(\AD_9783_SPI_inst/Mcount_counter_f_lut [0]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_counter_f_cy<0>  (
    .CI(\AD_9783_SPI_inst/state_f<2>_inv ),
    .DI(N0),
    .S(\AD_9783_SPI_inst/Mcount_counter_f_lut [0]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_cy [0])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_clk_counter_xor<2>  (
    .CI(\AD_9783_SPI_inst/Mcount_clk_counter_cy [1]),
    .LI(\AD_9783_SPI_inst/Mcount_clk_counter_lut [2]),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter2 )
  );
  XORCY   \AD_9783_SPI_inst/Mcount_clk_counter_xor<1>  (
    .CI(\AD_9783_SPI_inst/Mcount_clk_counter_cy [0]),
    .LI(\AD_9783_SPI_inst/Mcount_clk_counter_cy<1>_rt_495 ),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter1 )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_clk_counter_cy<1>  (
    .CI(\AD_9783_SPI_inst/Mcount_clk_counter_cy [0]),
    .DI(\AD_9783_SPI_inst/clk_counter [3]),
    .S(\AD_9783_SPI_inst/Mcount_clk_counter_cy<1>_rt_495 ),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter_cy [1])
  );
  XORCY   \AD_9783_SPI_inst/Mcount_clk_counter_xor<0>  (
    .CI(\AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o_inv ),
    .LI(\AD_9783_SPI_inst/Mcount_clk_counter_cy<0>_rt_496 ),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter )
  );
  MUXCY   \AD_9783_SPI_inst/Mcount_clk_counter_cy<0>  (
    .CI(\AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o_inv ),
    .DI(\AD_9783_SPI_inst/clk_counter [3]),
    .S(\AD_9783_SPI_inst/Mcount_clk_counter_cy<0>_rt_496 ),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter_cy [0])
  );
  FDC   \AD_9783_SPI_inst/state_f_2  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<2> ),
    .Q(\AD_9783_SPI_inst/state_f [2])
  );
  FDC   \AD_9783_SPI_inst/state_f_1  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<1> ),
    .Q(\AD_9783_SPI_inst/state_f [1])
  );
  FDC   \AD_9783_SPI_inst/spi_clk  (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o ),
    .Q(\AD_9783_SPI_inst/spi_clk_503 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT131  (
    .I0(state_f_FSM_FFd1_128),
    .I1(state_f_FSM_FFd2_129),
    .I2(cmd_addr_in_0_IBUF_4),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT121  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_7_IBUF_13),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT111  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_6_IBUF_14),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT101  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_5_IBUF_15),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT91  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_4_IBUF_16),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT81  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_3_IBUF_17),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT71  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_2_IBUF_18),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT61  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_1_IBUF_19),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT51  (
    .I0(state_f_FSM_FFd1_128),
    .I1(state_f_FSM_FFd2_129),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT21  (
    .I0(state_f_FSM_FFd1_128),
    .I1(state_f_FSM_FFd2_129),
    .I2(cmd_addr_in_2_IBUF_2),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT11  (
    .I0(state_f_FSM_FFd1_128),
    .I1(cmd_data_in_0_IBUF_20),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \_n0072<3>1  (
    .I0(state_f_FSM_FFd3_130),
    .I1(state_f_FSM_FFd4_131),
    .I2(state_f_FSM_FFd2_129),
    .I3(state_f_FSM_FFd1_128),
    .O(_n0072)
  );
  LUT6 #(
    .INIT ( 64'h0F003FB30F000F80 ))
  \state_f_FSM_FFd2-In1  (
    .I0(\AD_9783_SPI_inst/ready_out_92 ),
    .I1(state_f_FSM_FFd3_130),
    .I2(state_f_FSM_FFd4_131),
    .I3(state_f_FSM_FFd2_129),
    .I4(state_f_FSM_FFd1_128),
    .I5(\state_f_FSM_FFd2-In11_218 ),
    .O(\state_f_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00100440 ))
  _n0146_inv1 (
    .I0(rst_in_IBUF_54),
    .I1(state_f_FSM_FFd3_130),
    .I2(state_f_FSM_FFd4_131),
    .I3(state_f_FSM_FFd2_129),
    .I4(state_f_FSM_FFd1_128),
    .O(_n0146_inv)
  );
  LUT5 #(
    .INIT ( 32'hE781E680 ))
  \state_f_FSM_FFd1-In1  (
    .I0(state_f_FSM_FFd4_131),
    .I1(state_f_FSM_FFd3_130),
    .I2(state_f_FSM_FFd2_129),
    .I3(state_f_FSM_FFd1_128),
    .I4(\state_f_FSM_FFd1-In11_219 ),
    .O(\state_f_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT141  (
    .I0(cmd_addr_in_1_IBUF_3),
    .I1(state_f_FSM_FFd2_129),
    .I2(state_f_FSM_FFd1_128),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT41  (
    .I0(cmd_addr_in_4_IBUF_0),
    .I1(state_f_FSM_FFd2_129),
    .I2(state_f_FSM_FFd1_128),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mmux_state_f[3]_spi_data[15]_wide_mux_16_OUT31  (
    .I0(cmd_addr_in_3_IBUF_1),
    .I1(state_f_FSM_FFd2_129),
    .I2(state_f_FSM_FFd1_128),
    .O(\state_f[3]_spi_data[15]_wide_mux_16_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[0]_AND_34_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[0] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_34_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[0]_AND_33_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[0] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_33_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[1]_AND_32_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[1] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_32_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[1]_AND_31_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[1] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_31_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[2]_AND_30_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[2] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_30_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[2]_AND_29_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[2] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_29_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[3]_AND_28_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[3] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_28_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[3]_AND_27_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[3] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_27_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[4]_AND_26_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[4] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_26_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[4]_AND_25_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[4] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_25_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[5]_AND_24_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[5] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_24_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[5]_AND_23_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[5] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_23_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[6]_AND_22_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[6] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_22_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[6]_AND_21_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[6] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_21_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[7]_AND_20_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[7] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_20_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[7]_AND_19_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[7] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_19_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[8]_AND_18_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[8] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_18_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[8]_AND_17_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[8] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_17_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[9]_AND_16_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[9] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_16_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[9]_AND_15_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[9] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_15_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[10]_AND_14_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[10] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_14_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[10]_AND_13_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[10] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_13_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[11]_AND_12_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[11] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_12_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[11]_AND_11_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[11] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_11_o )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[12]_AND_10_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[12] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_10_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[12]_AND_9_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[12] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_9_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \AD_9783_SPI_inst/trigger_in_data_in[13]_AND_8_o1  (
    .I0(spi_trigger_140),
    .I1(rst_in_IBUF_54),
    .O(\AD_9783_SPI_inst/rst_in1 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \AD_9783_SPI_inst/trigger_in_data_in[15]_AND_4_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[15] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_4_o )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \AD_9783_SPI_inst/trigger_in_data_in[15]_AND_3_o1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .I2(\spi_data[15] ),
    .O(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_3_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \AD_9783_SPI_inst/trigger_in1  (
    .I0(rst_in_IBUF_54),
    .I1(spi_trigger_140),
    .O(\AD_9783_SPI_inst/trigger_in1_283 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o<7>1  (
    .I0(\AD_9783_SPI_inst/clk_counter [2]),
    .I1(\AD_9783_SPI_inst/clk_counter [1]),
    .I2(\AD_9783_SPI_inst/clk_counter [0]),
    .O(\AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \GND_1_o_GND_1_o_equal_9_o<7>_SW0  (
    .I0(counter_f[5]),
    .I1(counter_f[6]),
    .I2(counter_f[7]),
    .O(N3)
  );
  LUT3 #(
    .INIT ( 8'hD3 ))
  \state_f_FSM_FFd3-In_SW2  (
    .I0(\AD_9783_SPI_inst/ready_out_92 ),
    .I1(state_f_FSM_FFd3_130),
    .I2(state_f_FSM_FFd4_131),
    .O(N7)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \state_f_FSM_FFd2-In11_SW0  (
    .I0(cmd_addr_in_13_IBUF_7),
    .I1(cmd_addr_in_14_IBUF_6),
    .I2(cmd_addr_in_12_IBUF_8),
    .I3(cmd_addr_in_11_IBUF_9),
    .I4(cmd_addr_in_10_IBUF_10),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \state_f_FSM_FFd2-In11  (
    .I0(N14),
    .I1(cmd_addr_in_15_IBUF_5),
    .I2(cmd_addr_in_8_IBUF_12),
    .I3(cmd_addr_in_9_IBUF_11),
    .I4(cmd_trig_in_IBUF_55),
    .I5(state_f_FSM_FFd4_131),
    .O(\state_f_FSM_FFd2-In11_218 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000100000 ))
  \state_f_FSM_FFd1-In11  (
    .I0(N14),
    .I1(cmd_addr_in_15_IBUF_5),
    .I2(cmd_addr_in_8_IBUF_12),
    .I3(cmd_addr_in_9_IBUF_11),
    .I4(cmd_trig_in_IBUF_55),
    .I5(state_f_FSM_FFd1_128),
    .O(\state_f_FSM_FFd1-In11_219 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>1  (
    .I0(\AD_9783_SPI_inst/counter_f [1]),
    .I1(\AD_9783_SPI_inst/counter_f [0]),
    .I2(\AD_9783_SPI_inst/counter_f [2]),
    .I3(\AD_9783_SPI_inst/counter_f [3]),
    .I4(\AD_9783_SPI_inst/counter_f [4]),
    .I5(\AD_9783_SPI_inst/counter_f [5]),
    .O(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>2  (
    .I0(\AD_9783_SPI_inst/counter_f [7]),
    .I1(\AD_9783_SPI_inst/counter_f [6]),
    .I2(\AD_9783_SPI_inst/counter_f [8]),
    .I3(\AD_9783_SPI_inst/counter_f [9]),
    .I4(\AD_9783_SPI_inst/counter_f [10]),
    .I5(\AD_9783_SPI_inst/counter_f [11]),
    .O(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>1_356 )
  );
  IBUF   clk_in_IBUF (
    .I(clk_in),
    .O(clk_in_IBUF_502)
  );
  IBUF   cmd_addr_in_15_IBUF (
    .I(cmd_addr_in[15]),
    .O(cmd_addr_in_15_IBUF_5)
  );
  IBUF   cmd_addr_in_14_IBUF (
    .I(cmd_addr_in[14]),
    .O(cmd_addr_in_14_IBUF_6)
  );
  IBUF   cmd_addr_in_13_IBUF (
    .I(cmd_addr_in[13]),
    .O(cmd_addr_in_13_IBUF_7)
  );
  IBUF   cmd_addr_in_12_IBUF (
    .I(cmd_addr_in[12]),
    .O(cmd_addr_in_12_IBUF_8)
  );
  IBUF   cmd_addr_in_11_IBUF (
    .I(cmd_addr_in[11]),
    .O(cmd_addr_in_11_IBUF_9)
  );
  IBUF   cmd_addr_in_10_IBUF (
    .I(cmd_addr_in[10]),
    .O(cmd_addr_in_10_IBUF_10)
  );
  IBUF   cmd_addr_in_9_IBUF (
    .I(cmd_addr_in[9]),
    .O(cmd_addr_in_9_IBUF_11)
  );
  IBUF   cmd_addr_in_8_IBUF (
    .I(cmd_addr_in[8]),
    .O(cmd_addr_in_8_IBUF_12)
  );
  IBUF   cmd_addr_in_4_IBUF (
    .I(cmd_addr_in[4]),
    .O(cmd_addr_in_4_IBUF_0)
  );
  IBUF   cmd_addr_in_3_IBUF (
    .I(cmd_addr_in[3]),
    .O(cmd_addr_in_3_IBUF_1)
  );
  IBUF   cmd_addr_in_2_IBUF (
    .I(cmd_addr_in[2]),
    .O(cmd_addr_in_2_IBUF_2)
  );
  IBUF   cmd_addr_in_1_IBUF (
    .I(cmd_addr_in[1]),
    .O(cmd_addr_in_1_IBUF_3)
  );
  IBUF   cmd_addr_in_0_IBUF (
    .I(cmd_addr_in[0]),
    .O(cmd_addr_in_0_IBUF_4)
  );
  IBUF   cmd_data_in_7_IBUF (
    .I(cmd_data_in[7]),
    .O(cmd_data_in_7_IBUF_13)
  );
  IBUF   cmd_data_in_6_IBUF (
    .I(cmd_data_in[6]),
    .O(cmd_data_in_6_IBUF_14)
  );
  IBUF   cmd_data_in_5_IBUF (
    .I(cmd_data_in[5]),
    .O(cmd_data_in_5_IBUF_15)
  );
  IBUF   cmd_data_in_4_IBUF (
    .I(cmd_data_in[4]),
    .O(cmd_data_in_4_IBUF_16)
  );
  IBUF   cmd_data_in_3_IBUF (
    .I(cmd_data_in[3]),
    .O(cmd_data_in_3_IBUF_17)
  );
  IBUF   cmd_data_in_2_IBUF (
    .I(cmd_data_in[2]),
    .O(cmd_data_in_2_IBUF_18)
  );
  IBUF   cmd_data_in_1_IBUF (
    .I(cmd_data_in[1]),
    .O(cmd_data_in_1_IBUF_19)
  );
  IBUF   cmd_data_in_0_IBUF (
    .I(cmd_data_in[0]),
    .O(cmd_data_in_0_IBUF_20)
  );
  IBUF   DAC0_in_15_IBUF (
    .I(DAC0_in[15]),
    .O(DAC0_in_15_IBUF_21)
  );
  IBUF   DAC0_in_14_IBUF (
    .I(DAC0_in[14]),
    .O(DAC0_in_14_IBUF_22)
  );
  IBUF   DAC0_in_13_IBUF (
    .I(DAC0_in[13]),
    .O(DAC0_in_13_IBUF_23)
  );
  IBUF   DAC0_in_12_IBUF (
    .I(DAC0_in[12]),
    .O(DAC0_in_12_IBUF_24)
  );
  IBUF   DAC0_in_11_IBUF (
    .I(DAC0_in[11]),
    .O(DAC0_in_11_IBUF_25)
  );
  IBUF   DAC0_in_10_IBUF (
    .I(DAC0_in[10]),
    .O(DAC0_in_10_IBUF_26)
  );
  IBUF   DAC0_in_9_IBUF (
    .I(DAC0_in[9]),
    .O(DAC0_in_9_IBUF_27)
  );
  IBUF   DAC0_in_8_IBUF (
    .I(DAC0_in[8]),
    .O(DAC0_in_8_IBUF_28)
  );
  IBUF   DAC0_in_7_IBUF (
    .I(DAC0_in[7]),
    .O(DAC0_in_7_IBUF_29)
  );
  IBUF   DAC0_in_6_IBUF (
    .I(DAC0_in[6]),
    .O(DAC0_in_6_IBUF_30)
  );
  IBUF   DAC0_in_5_IBUF (
    .I(DAC0_in[5]),
    .O(DAC0_in_5_IBUF_31)
  );
  IBUF   DAC0_in_4_IBUF (
    .I(DAC0_in[4]),
    .O(DAC0_in_4_IBUF_32)
  );
  IBUF   DAC0_in_3_IBUF (
    .I(DAC0_in[3]),
    .O(DAC0_in_3_IBUF_33)
  );
  IBUF   DAC0_in_2_IBUF (
    .I(DAC0_in[2]),
    .O(DAC0_in_2_IBUF_34)
  );
  IBUF   DAC0_in_1_IBUF (
    .I(DAC0_in[1]),
    .O(DAC0_in_1_IBUF_35)
  );
  IBUF   DAC0_in_0_IBUF (
    .I(DAC0_in[0]),
    .O(DAC0_in_0_IBUF_36)
  );
  IBUF   DAC1_in_15_IBUF (
    .I(DAC1_in[15]),
    .O(DAC1_in_15_IBUF_37)
  );
  IBUF   DAC1_in_14_IBUF (
    .I(DAC1_in[14]),
    .O(DAC1_in_14_IBUF_38)
  );
  IBUF   DAC1_in_13_IBUF (
    .I(DAC1_in[13]),
    .O(DAC1_in_13_IBUF_39)
  );
  IBUF   DAC1_in_12_IBUF (
    .I(DAC1_in[12]),
    .O(DAC1_in_12_IBUF_40)
  );
  IBUF   DAC1_in_11_IBUF (
    .I(DAC1_in[11]),
    .O(DAC1_in_11_IBUF_41)
  );
  IBUF   DAC1_in_10_IBUF (
    .I(DAC1_in[10]),
    .O(DAC1_in_10_IBUF_42)
  );
  IBUF   DAC1_in_9_IBUF (
    .I(DAC1_in[9]),
    .O(DAC1_in_9_IBUF_43)
  );
  IBUF   DAC1_in_8_IBUF (
    .I(DAC1_in[8]),
    .O(DAC1_in_8_IBUF_44)
  );
  IBUF   DAC1_in_7_IBUF (
    .I(DAC1_in[7]),
    .O(DAC1_in_7_IBUF_45)
  );
  IBUF   DAC1_in_6_IBUF (
    .I(DAC1_in[6]),
    .O(DAC1_in_6_IBUF_46)
  );
  IBUF   DAC1_in_5_IBUF (
    .I(DAC1_in[5]),
    .O(DAC1_in_5_IBUF_47)
  );
  IBUF   DAC1_in_4_IBUF (
    .I(DAC1_in[4]),
    .O(DAC1_in_4_IBUF_48)
  );
  IBUF   DAC1_in_3_IBUF (
    .I(DAC1_in[3]),
    .O(DAC1_in_3_IBUF_49)
  );
  IBUF   DAC1_in_2_IBUF (
    .I(DAC1_in[2]),
    .O(DAC1_in_2_IBUF_50)
  );
  IBUF   DAC1_in_1_IBUF (
    .I(DAC1_in[1]),
    .O(DAC1_in_1_IBUF_51)
  );
  IBUF   DAC1_in_0_IBUF (
    .I(DAC1_in[0]),
    .O(DAC1_in_0_IBUF_52)
  );
  IBUF   rst_in_IBUF (
    .I(rst_in),
    .O(rst_in_IBUF_54)
  );
  IBUF   cmd_trig_in_IBUF (
    .I(cmd_trig_in),
    .O(cmd_trig_in_IBUF_55)
  );
  IBUF   spi_sdi_in_IBUF (
    .I(spi_sdi_in),
    .O(spi_sdi_in_IBUF_56)
  );
  OBUF   cmd_data_out_15_OBUF (
    .I(\AD_9783_SPI_inst/data_out_15 ),
    .O(cmd_data_out[15])
  );
  OBUF   cmd_data_out_14_OBUF (
    .I(\AD_9783_SPI_inst/data_out_14_77 ),
    .O(cmd_data_out[14])
  );
  OBUF   cmd_data_out_13_OBUF (
    .I(\AD_9783_SPI_inst/data_out_13_78 ),
    .O(cmd_data_out[13])
  );
  OBUF   cmd_data_out_12_OBUF (
    .I(\AD_9783_SPI_inst/data_out_12 ),
    .O(cmd_data_out[12])
  );
  OBUF   cmd_data_out_11_OBUF (
    .I(\AD_9783_SPI_inst/data_out_11 ),
    .O(cmd_data_out[11])
  );
  OBUF   cmd_data_out_10_OBUF (
    .I(\AD_9783_SPI_inst/data_out_10 ),
    .O(cmd_data_out[10])
  );
  OBUF   cmd_data_out_9_OBUF (
    .I(\AD_9783_SPI_inst/data_out_9 ),
    .O(cmd_data_out[9])
  );
  OBUF   cmd_data_out_8_OBUF (
    .I(\AD_9783_SPI_inst/data_out_8 ),
    .O(cmd_data_out[8])
  );
  OBUF   cmd_data_out_7_OBUF (
    .I(\AD_9783_SPI_inst/data_out_7 ),
    .O(cmd_data_out[7])
  );
  OBUF   cmd_data_out_6_OBUF (
    .I(\AD_9783_SPI_inst/data_out_6 ),
    .O(cmd_data_out[6])
  );
  OBUF   cmd_data_out_5_OBUF (
    .I(\AD_9783_SPI_inst/data_out_5 ),
    .O(cmd_data_out[5])
  );
  OBUF   cmd_data_out_4_OBUF (
    .I(\AD_9783_SPI_inst/data_out_4 ),
    .O(cmd_data_out[4])
  );
  OBUF   cmd_data_out_3_OBUF (
    .I(\AD_9783_SPI_inst/data_out_3 ),
    .O(cmd_data_out[3])
  );
  OBUF   cmd_data_out_2_OBUF (
    .I(\AD_9783_SPI_inst/data_out_2 ),
    .O(cmd_data_out[2])
  );
  OBUF   cmd_data_out_1_OBUF (
    .I(\AD_9783_SPI_inst/data_out_1 ),
    .O(cmd_data_out[1])
  );
  OBUF   cmd_data_out_0_OBUF (
    .I(\AD_9783_SPI_inst/data_out_0 ),
    .O(cmd_data_out[0])
  );
  OBUF   rst_out_OBUF (
    .I(rst_out_OBUF_155),
    .O(rst_out)
  );
  OBUF   spi_scs_out_OBUF (
    .I(\AD_9783_SPI_inst/spi_scs_out_93 ),
    .O(spi_scs_out)
  );
  OBUF   spi_sck_out_OBUF (
    .I(\AD_9783_SPI_inst/spi_sck_out_94 ),
    .O(spi_sck_out)
  );
  OBUF   spi_sdo_out_OBUF (
    .I(\AD_9783_SPI_inst/spi_sdo_out_95 ),
    .O(spi_sdo_out)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_f_cy<0>_rt  (
    .I0(counter_f[0]),
    .O(\Mcount_counter_f_cy<0>_rt_434 )
  );
  FDC   spi_trigger (
    .C(clk_in_IBUF_BUFG_53),
    .CLR(rst_in_IBUF_54),
    .D(spi_trigger_rstpot_435),
    .Q(spi_trigger_140)
  );
  FDC   \AD_9783_SPI_inst/ready_out  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/ready_out_rstpot_436 ),
    .Q(\AD_9783_SPI_inst/ready_out_92 )
  );
  FD   rst_out_296 (
    .C(clk_in_IBUF_BUFG_53),
    .D(rst_out_rstpot_437),
    .Q(rst_out_OBUF_155)
  );
  FD   \AD_9783_SPI_inst/spi_sdo_out  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/spi_sdo_out_rstpot_438 ),
    .Q(\AD_9783_SPI_inst/spi_sdo_out_95 )
  );
  FD   \AD_9783_SPI_inst/spi_sck_out  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/spi_sck_out_rstpot_439 ),
    .Q(\AD_9783_SPI_inst/spi_sck_out_94 )
  );
  FD   \AD_9783_SPI_inst/spi_scs_out  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/spi_scs_out_rstpot_440 ),
    .Q(\AD_9783_SPI_inst/spi_scs_out_93 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<0>  (
    .I0(\AD_9783_SPI_inst/counter_f [0]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<1>  (
    .I0(\AD_9783_SPI_inst/counter_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<2>  (
    .I0(\AD_9783_SPI_inst/counter_f [2]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<3>  (
    .I0(\AD_9783_SPI_inst/counter_f [3]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<4>  (
    .I0(\AD_9783_SPI_inst/counter_f [4]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<5>  (
    .I0(\AD_9783_SPI_inst/counter_f [5]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<6>  (
    .I0(\AD_9783_SPI_inst/counter_f [6]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<7>  (
    .I0(\AD_9783_SPI_inst/counter_f [7]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<8>  (
    .I0(\AD_9783_SPI_inst/counter_f [8]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [8])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<9>  (
    .I0(\AD_9783_SPI_inst/counter_f [9]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<10>  (
    .I0(\AD_9783_SPI_inst/counter_f [10]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [10])
  );
  LUT5 #(
    .INIT ( 32'hFFFBFFFF ))
  \state_f_FSM_FFd4-In_SW5_SW0  (
    .I0(N14),
    .I1(cmd_trig_in_IBUF_55),
    .I2(cmd_addr_in_9_IBUF_11),
    .I3(cmd_addr_in_15_IBUF_5),
    .I4(cmd_addr_in_8_IBUF_12),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hFC00FC0FFC00FC0A ))
  \state_f_FSM_FFd4-In_SW5  (
    .I0(N25),
    .I1(\AD_9783_SPI_inst/ready_out_92 ),
    .I2(state_f_FSM_FFd3_130),
    .I3(state_f_FSM_FFd4_131),
    .I4(state_f_FSM_FFd2_129),
    .I5(state_f_FSM_FFd1_128),
    .O(N19)
  );
  LUT5 #(
    .INIT ( 32'h12161616 ))
  \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<2>1  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/state_f [0]),
    .I3(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>1_356 ),
    .I4(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11> ),
    .O(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h24202020 ))
  \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<1>1  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/state_f [0]),
    .I3(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11>1_356 ),
    .I4(\AD_9783_SPI_inst/counter_f[11]_GND_6_o_equal_5_o<11> ),
    .O(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o_inv1  (
    .I0(\AD_9783_SPI_inst/clk_counter [0]),
    .I1(\AD_9783_SPI_inst/clk_counter [1]),
    .I2(\AD_9783_SPI_inst/clk_counter [2]),
    .O(\AD_9783_SPI_inst/clk_counter[7]_GND_6_o_equal_1_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \state_f_FSM_FFd3-In_SW0_SW0_SW0  (
    .I0(cmd_addr_in_9_IBUF_11),
    .I1(cmd_addr_in_8_IBUF_12),
    .I2(cmd_addr_in_15_IBUF_5),
    .I3(N14),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h0000FF005500FF30 ))
  \state_f_FSM_FFd3-In_SW0_SW0  (
    .I0(\AD_9783_SPI_inst/ready_out_92 ),
    .I1(N27),
    .I2(cmd_trig_in_IBUF_55),
    .I3(state_f_FSM_FFd3_130),
    .I4(state_f_FSM_FFd4_131),
    .I5(state_f_FSM_FFd2_129),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000FF000FFFFF44 ))
  \state_f_FSM_FFd3-In_SW0_SW1  (
    .I0(N27),
    .I1(cmd_trig_in_IBUF_55),
    .I2(\AD_9783_SPI_inst/ready_out_92 ),
    .I3(state_f_FSM_FFd3_130),
    .I4(state_f_FSM_FFd4_131),
    .I5(state_f_FSM_FFd2_129),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'hFF30C00FFF30C00A ))
  \state_f_FSM_FFd4-In_SW4  (
    .I0(N25),
    .I1(\AD_9783_SPI_inst/ready_out_92 ),
    .I2(state_f_FSM_FFd3_130),
    .I3(state_f_FSM_FFd4_131),
    .I4(state_f_FSM_FFd2_129),
    .I5(state_f_FSM_FFd1_128),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFF50AF0FFF50AF0C ))
  \state_f_FSM_FFd4-In_SW6  (
    .I0(\AD_9783_SPI_inst/ready_out_92 ),
    .I1(N25),
    .I2(state_f_FSM_FFd3_130),
    .I3(state_f_FSM_FFd4_131),
    .I4(state_f_FSM_FFd2_129),
    .I5(state_f_FSM_FFd1_128),
    .O(N20)
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \GND_1_o_GND_1_o_equal_9_o<7>_SW1  (
    .I0(counter_f[1]),
    .I1(counter_f[2]),
    .I2(counter_f[3]),
    .I3(counter_f[4]),
    .I4(counter_f[0]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0A1B4E5F0A0A5F5F ))
  \state_f_FSM_FFd4-In  (
    .I0(state_f_FSM_FFd1_128),
    .I1(N3),
    .I2(N19),
    .I3(N20),
    .I4(N18),
    .I5(N35),
    .O(\state_f_FSM_FFd4-In_220 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \GND_1_o_GND_1_o_equal_9_o<7>_SW2  (
    .I0(counter_f[0]),
    .I1(counter_f[2]),
    .I2(counter_f[3]),
    .I3(counter_f[4]),
    .I4(counter_f[1]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h7777222277722722 ))
  \state_f_FSM_FFd3-In  (
    .I0(state_f_FSM_FFd1_128),
    .I1(N7),
    .I2(N3),
    .I3(N23),
    .I4(N22),
    .I5(N37),
    .O(\state_f_FSM_FFd3-In_221 )
  );
  LDC   \AD_9783_SPI_inst/data_out_0_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_34_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_33_o ),
    .Q(\AD_9783_SPI_inst/data_out_0_LDC_450 )
  );
  FDC   \AD_9783_SPI_inst/data_out_0_C_0  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_34_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<0> ),
    .Q(\AD_9783_SPI_inst/data_out_0_C_0_451 )
  );
  FDP   \AD_9783_SPI_inst/data_out_0_P_0  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<0> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[0]_AND_33_o ),
    .Q(\AD_9783_SPI_inst/data_out_0_P_0_452 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_01  (
    .I0(\AD_9783_SPI_inst/data_out_0_LDC_450 ),
    .I1(\AD_9783_SPI_inst/data_out_0_C_0_451 ),
    .I2(\AD_9783_SPI_inst/data_out_0_P_0_452 ),
    .O(\AD_9783_SPI_inst/data_out_0 )
  );
  LDC   \AD_9783_SPI_inst/data_out_1_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_32_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_31_o ),
    .Q(\AD_9783_SPI_inst/data_out_1_LDC_453 )
  );
  FDC   \AD_9783_SPI_inst/data_out_1_C_1  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_32_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<1> ),
    .Q(\AD_9783_SPI_inst/data_out_1_C_1_454 )
  );
  FDP   \AD_9783_SPI_inst/data_out_1_P_1  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<1> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[1]_AND_31_o ),
    .Q(\AD_9783_SPI_inst/data_out_1_P_1_455 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_16  (
    .I0(\AD_9783_SPI_inst/data_out_1_LDC_453 ),
    .I1(\AD_9783_SPI_inst/data_out_1_C_1_454 ),
    .I2(\AD_9783_SPI_inst/data_out_1_P_1_455 ),
    .O(\AD_9783_SPI_inst/data_out_1 )
  );
  LDC   \AD_9783_SPI_inst/data_out_2_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_30_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_29_o ),
    .Q(\AD_9783_SPI_inst/data_out_2_LDC_456 )
  );
  FDC   \AD_9783_SPI_inst/data_out_2_C_2  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_30_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<2> ),
    .Q(\AD_9783_SPI_inst/data_out_2_C_2_457 )
  );
  FDP   \AD_9783_SPI_inst/data_out_2_P_2  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<2> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[2]_AND_29_o ),
    .Q(\AD_9783_SPI_inst/data_out_2_P_2_458 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_21  (
    .I0(\AD_9783_SPI_inst/data_out_2_LDC_456 ),
    .I1(\AD_9783_SPI_inst/data_out_2_C_2_457 ),
    .I2(\AD_9783_SPI_inst/data_out_2_P_2_458 ),
    .O(\AD_9783_SPI_inst/data_out_2 )
  );
  LDC   \AD_9783_SPI_inst/data_out_4_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_26_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_25_o ),
    .Q(\AD_9783_SPI_inst/data_out_4_LDC_459 )
  );
  FDC   \AD_9783_SPI_inst/data_out_4_C_4  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_26_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<4> ),
    .Q(\AD_9783_SPI_inst/data_out_4_C_4_460 )
  );
  FDP   \AD_9783_SPI_inst/data_out_4_P_4  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<4> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[4]_AND_25_o ),
    .Q(\AD_9783_SPI_inst/data_out_4_P_4_461 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_41  (
    .I0(\AD_9783_SPI_inst/data_out_4_LDC_459 ),
    .I1(\AD_9783_SPI_inst/data_out_4_C_4_460 ),
    .I2(\AD_9783_SPI_inst/data_out_4_P_4_461 ),
    .O(\AD_9783_SPI_inst/data_out_4 )
  );
  LDC   \AD_9783_SPI_inst/data_out_5_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_24_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_23_o ),
    .Q(\AD_9783_SPI_inst/data_out_5_LDC_462 )
  );
  FDC   \AD_9783_SPI_inst/data_out_5_C_5  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_24_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<5> ),
    .Q(\AD_9783_SPI_inst/data_out_5_C_5_463 )
  );
  FDP   \AD_9783_SPI_inst/data_out_5_P_5  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<5> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[5]_AND_23_o ),
    .Q(\AD_9783_SPI_inst/data_out_5_P_5_464 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_51  (
    .I0(\AD_9783_SPI_inst/data_out_5_LDC_462 ),
    .I1(\AD_9783_SPI_inst/data_out_5_C_5_463 ),
    .I2(\AD_9783_SPI_inst/data_out_5_P_5_464 ),
    .O(\AD_9783_SPI_inst/data_out_5 )
  );
  LDC   \AD_9783_SPI_inst/data_out_3_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_28_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_27_o ),
    .Q(\AD_9783_SPI_inst/data_out_3_LDC_465 )
  );
  FDC   \AD_9783_SPI_inst/data_out_3_C_3  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_28_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<3> ),
    .Q(\AD_9783_SPI_inst/data_out_3_C_3_466 )
  );
  FDP   \AD_9783_SPI_inst/data_out_3_P_3  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<3> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[3]_AND_27_o ),
    .Q(\AD_9783_SPI_inst/data_out_3_P_3_467 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_31  (
    .I0(\AD_9783_SPI_inst/data_out_3_LDC_465 ),
    .I1(\AD_9783_SPI_inst/data_out_3_C_3_466 ),
    .I2(\AD_9783_SPI_inst/data_out_3_P_3_467 ),
    .O(\AD_9783_SPI_inst/data_out_3 )
  );
  LDC   \AD_9783_SPI_inst/data_out_7_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_20_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_19_o ),
    .Q(\AD_9783_SPI_inst/data_out_7_LDC_468 )
  );
  FDC   \AD_9783_SPI_inst/data_out_7_C_7  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_20_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<7> ),
    .Q(\AD_9783_SPI_inst/data_out_7_C_7_469 )
  );
  FDP   \AD_9783_SPI_inst/data_out_7_P_7  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<7> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[7]_AND_19_o ),
    .Q(\AD_9783_SPI_inst/data_out_7_P_7_470 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_71  (
    .I0(\AD_9783_SPI_inst/data_out_7_LDC_468 ),
    .I1(\AD_9783_SPI_inst/data_out_7_C_7_469 ),
    .I2(\AD_9783_SPI_inst/data_out_7_P_7_470 ),
    .O(\AD_9783_SPI_inst/data_out_7 )
  );
  LDC   \AD_9783_SPI_inst/data_out_8_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_18_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_17_o ),
    .Q(\AD_9783_SPI_inst/data_out_8_LDC_471 )
  );
  FDC   \AD_9783_SPI_inst/data_out_8_C_8  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_18_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<8> ),
    .Q(\AD_9783_SPI_inst/data_out_8_C_8_472 )
  );
  FDP   \AD_9783_SPI_inst/data_out_8_P_8  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<8> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[8]_AND_17_o ),
    .Q(\AD_9783_SPI_inst/data_out_8_P_8_473 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_81  (
    .I0(\AD_9783_SPI_inst/data_out_8_LDC_471 ),
    .I1(\AD_9783_SPI_inst/data_out_8_C_8_472 ),
    .I2(\AD_9783_SPI_inst/data_out_8_P_8_473 ),
    .O(\AD_9783_SPI_inst/data_out_8 )
  );
  LDC   \AD_9783_SPI_inst/data_out_6_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_22_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_21_o ),
    .Q(\AD_9783_SPI_inst/data_out_6_LDC_474 )
  );
  FDC   \AD_9783_SPI_inst/data_out_6_C_6  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_22_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<6> ),
    .Q(\AD_9783_SPI_inst/data_out_6_C_6_475 )
  );
  FDP   \AD_9783_SPI_inst/data_out_6_P_6  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<6> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[6]_AND_21_o ),
    .Q(\AD_9783_SPI_inst/data_out_6_P_6_476 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_61  (
    .I0(\AD_9783_SPI_inst/data_out_6_LDC_474 ),
    .I1(\AD_9783_SPI_inst/data_out_6_C_6_475 ),
    .I2(\AD_9783_SPI_inst/data_out_6_P_6_476 ),
    .O(\AD_9783_SPI_inst/data_out_6 )
  );
  LDC   \AD_9783_SPI_inst/data_out_10_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_14_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_13_o ),
    .Q(\AD_9783_SPI_inst/data_out_10_LDC_477 )
  );
  FDC   \AD_9783_SPI_inst/data_out_10_C_10  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_14_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<10> ),
    .Q(\AD_9783_SPI_inst/data_out_10_C_10_478 )
  );
  FDP   \AD_9783_SPI_inst/data_out_10_P_10  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<10> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[10]_AND_13_o ),
    .Q(\AD_9783_SPI_inst/data_out_10_P_10_479 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_101  (
    .I0(\AD_9783_SPI_inst/data_out_10_LDC_477 ),
    .I1(\AD_9783_SPI_inst/data_out_10_C_10_478 ),
    .I2(\AD_9783_SPI_inst/data_out_10_P_10_479 ),
    .O(\AD_9783_SPI_inst/data_out_10 )
  );
  LDC   \AD_9783_SPI_inst/data_out_11_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_12_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_11_o ),
    .Q(\AD_9783_SPI_inst/data_out_11_LDC_480 )
  );
  FDC   \AD_9783_SPI_inst/data_out_11_C_11  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_12_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<11> ),
    .Q(\AD_9783_SPI_inst/data_out_11_C_11_481 )
  );
  FDP   \AD_9783_SPI_inst/data_out_11_P_11  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<11> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[11]_AND_11_o ),
    .Q(\AD_9783_SPI_inst/data_out_11_P_11_482 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_111  (
    .I0(\AD_9783_SPI_inst/data_out_11_LDC_480 ),
    .I1(\AD_9783_SPI_inst/data_out_11_C_11_481 ),
    .I2(\AD_9783_SPI_inst/data_out_11_P_11_482 ),
    .O(\AD_9783_SPI_inst/data_out_11 )
  );
  LDC   \AD_9783_SPI_inst/data_out_9_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_16_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_15_o ),
    .Q(\AD_9783_SPI_inst/data_out_9_LDC_483 )
  );
  FDC   \AD_9783_SPI_inst/data_out_9_C_9  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_16_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<9> ),
    .Q(\AD_9783_SPI_inst/data_out_9_C_9_484 )
  );
  FDP   \AD_9783_SPI_inst/data_out_9_P_9  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<9> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[9]_AND_15_o ),
    .Q(\AD_9783_SPI_inst/data_out_9_P_9_485 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_91  (
    .I0(\AD_9783_SPI_inst/data_out_9_LDC_483 ),
    .I1(\AD_9783_SPI_inst/data_out_9_C_9_484 ),
    .I2(\AD_9783_SPI_inst/data_out_9_P_9_485 ),
    .O(\AD_9783_SPI_inst/data_out_9 )
  );
  LDC   \AD_9783_SPI_inst/data_out_12_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_10_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_9_o ),
    .Q(\AD_9783_SPI_inst/data_out_12_LDC_486 )
  );
  FDC   \AD_9783_SPI_inst/data_out_12_C_12  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_10_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<12> ),
    .Q(\AD_9783_SPI_inst/data_out_12_C_12_487 )
  );
  FDP   \AD_9783_SPI_inst/data_out_12_P_12  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<12> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[12]_AND_9_o ),
    .Q(\AD_9783_SPI_inst/data_out_12_P_12_488 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_121  (
    .I0(\AD_9783_SPI_inst/data_out_12_LDC_486 ),
    .I1(\AD_9783_SPI_inst/data_out_12_C_12_487 ),
    .I2(\AD_9783_SPI_inst/data_out_12_P_12_488 ),
    .O(\AD_9783_SPI_inst/data_out_12 )
  );
  FDC   \AD_9783_SPI_inst/data_out_13  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<13> ),
    .Q(\AD_9783_SPI_inst/data_out_13_78 )
  );
  LDC   \AD_9783_SPI_inst/data_out_15_LDC  (
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_4_o ),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_3_o ),
    .Q(\AD_9783_SPI_inst/data_out_15_LDC_489 )
  );
  FDC   \AD_9783_SPI_inst/data_out_15_C_15  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_4_o ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<15> ),
    .Q(\AD_9783_SPI_inst/data_out_15_C_15_490 )
  );
  FDP   \AD_9783_SPI_inst/data_out_15_P_15  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<15> ),
    .PRE(\AD_9783_SPI_inst/trigger_in_data_in[15]_AND_3_o ),
    .Q(\AD_9783_SPI_inst/data_out_15_P_15_491 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/data_out_151  (
    .I0(\AD_9783_SPI_inst/data_out_15_LDC_489 ),
    .I1(\AD_9783_SPI_inst/data_out_15_C_15_490 ),
    .I2(\AD_9783_SPI_inst/data_out_15_P_15_491 ),
    .O(\AD_9783_SPI_inst/data_out_15 )
  );
  FDC   \AD_9783_SPI_inst/data_out_14  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<14> ),
    .Q(\AD_9783_SPI_inst/data_out_14_77 )
  );
  LDC   \AD_9783_SPI_inst/state_f_0_LDC  (
    .CLR(rst_in_IBUF_54),
    .D(N0),
    .G(\AD_9783_SPI_inst/trigger_in1_283 ),
    .Q(\AD_9783_SPI_inst/state_f_0_LDC_492 )
  );
  FDC   \AD_9783_SPI_inst/state_f_0_C_0  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(rst_in_IBUF_54),
    .D(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<0> ),
    .Q(\AD_9783_SPI_inst/state_f_0_C_0_493 )
  );
  FDP   \AD_9783_SPI_inst/state_f_0_P_0  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .D(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<0> ),
    .PRE(\AD_9783_SPI_inst/trigger_in1_283 ),
    .Q(\AD_9783_SPI_inst/state_f_0_P_0_494 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/state_f_01  (
    .I0(\AD_9783_SPI_inst/state_f_0_LDC_492 ),
    .I1(\AD_9783_SPI_inst/state_f_0_C_0_493 ),
    .I2(\AD_9783_SPI_inst/state_f_0_P_0_494 ),
    .O(\AD_9783_SPI_inst/state_f [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \AD_9783_SPI_inst/Mcount_clk_counter_cy<1>_rt  (
    .I0(\AD_9783_SPI_inst/clk_counter [1]),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter_cy<1>_rt_495 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \AD_9783_SPI_inst/Mcount_clk_counter_cy<0>_rt  (
    .I0(\AD_9783_SPI_inst/clk_counter [0]),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter_cy<0>_rt_496 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \AD_9783_SPI_inst/spi_sdo_out_rstpot_SW0  (
    .I0(spi_trigger_140),
    .I1(rst_in_IBUF_54),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'hEEECEE4CECCEECCE ))
  \AD_9783_SPI_inst/spi_sdo_out_rstpot  (
    .I0(N39),
    .I1(\AD_9783_SPI_inst/spi_sdo_out_95 ),
    .I2(\AD_9783_SPI_inst/state_f [1]),
    .I3(\AD_9783_SPI_inst/state_f [2]),
    .I4(\AD_9783_SPI_inst/data_out_15 ),
    .I5(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/spi_sdo_out_rstpot_438 )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT91  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_1 ),
    .I3(\AD_9783_SPI_inst/data_out_2 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT81  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_0 ),
    .I3(\AD_9783_SPI_inst/data_out_1 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFF00EF20 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT71  (
    .I0(\AD_9783_SPI_inst/data_out_14_77 ),
    .I1(\AD_9783_SPI_inst/state_f [1]),
    .I2(\AD_9783_SPI_inst/state_f [2]),
    .I3(\AD_9783_SPI_inst/data_out_15 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hCCCCCACC ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT61  (
    .I0(\AD_9783_SPI_inst/data_out_13_78 ),
    .I1(\AD_9783_SPI_inst/data_out_14_77 ),
    .I2(\AD_9783_SPI_inst/state_f [1]),
    .I3(\AD_9783_SPI_inst/state_f [2]),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hAAAABA8A ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT51  (
    .I0(\AD_9783_SPI_inst/data_out_13_78 ),
    .I1(\AD_9783_SPI_inst/state_f [1]),
    .I2(\AD_9783_SPI_inst/state_f [2]),
    .I3(\AD_9783_SPI_inst/data_out_12 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT41  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_11 ),
    .I3(\AD_9783_SPI_inst/data_out_12 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT31  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_10 ),
    .I3(\AD_9783_SPI_inst/data_out_11 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT21  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_9 ),
    .I3(\AD_9783_SPI_inst/data_out_10 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT161  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_8 ),
    .I3(\AD_9783_SPI_inst/data_out_9 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT151  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_7 ),
    .I3(\AD_9783_SPI_inst/data_out_8 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT141  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_6 ),
    .I3(\AD_9783_SPI_inst/data_out_7 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT131  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_5 ),
    .I3(\AD_9783_SPI_inst/data_out_6 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT121  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_4 ),
    .I3(\AD_9783_SPI_inst/data_out_5 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT111  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_3 ),
    .I3(\AD_9783_SPI_inst/data_out_4 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFF00FB40 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT101  (
    .I0(\AD_9783_SPI_inst/state_f [1]),
    .I1(\AD_9783_SPI_inst/state_f [2]),
    .I2(\AD_9783_SPI_inst/data_out_2 ),
    .I3(\AD_9783_SPI_inst/data_out_3 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFF00EF20 ))
  \AD_9783_SPI_inst/Mmux_state_f[2]_data_out[15]_wide_mux_11_OUT11  (
    .I0(spi_sdi_in_IBUF_56),
    .I1(\AD_9783_SPI_inst/state_f [1]),
    .I2(\AD_9783_SPI_inst/state_f [2]),
    .I3(\AD_9783_SPI_inst/data_out_0 ),
    .I4(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/state_f[2]_data_out[15]_wide_mux_11_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \AD_9783_SPI_inst/Mcount_clk_counter_lut<2>  (
    .I0(\AD_9783_SPI_inst/clk_counter [2]),
    .I1(\AD_9783_SPI_inst/clk_counter [1]),
    .I2(\AD_9783_SPI_inst/clk_counter [0]),
    .O(\AD_9783_SPI_inst/Mcount_clk_counter_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \AD_9783_SPI_inst/Mcount_counter_f_lut<11>  (
    .I0(\AD_9783_SPI_inst/state_f [2]),
    .I1(\AD_9783_SPI_inst/counter_f [11]),
    .O(\AD_9783_SPI_inst/Mcount_counter_f_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h0000012300003210 ))
  \AD_9783_SPI_inst/_n0159_inv1  (
    .I0(\AD_9783_SPI_inst/state_f_0_LDC_492 ),
    .I1(spi_trigger_140),
    .I2(\AD_9783_SPI_inst/state_f_0_C_0_493 ),
    .I3(\AD_9783_SPI_inst/state_f_0_P_0_494 ),
    .I4(\AD_9783_SPI_inst/state_f [1]),
    .I5(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/_n0159_inv )
  );
  LUT5 #(
    .INIT ( 32'h8BEAA82C ))
  spi_trigger_rstpot (
    .I0(spi_trigger_140),
    .I1(state_f_FSM_FFd2_129),
    .I2(state_f_FSM_FFd4_131),
    .I3(state_f_FSM_FFd1_128),
    .I4(state_f_FSM_FFd3_130),
    .O(spi_trigger_rstpot_435)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAA8AAAA ))
  rst_out_rstpot (
    .I0(rst_out_OBUF_155),
    .I1(state_f_FSM_FFd2_129),
    .I2(rst_in_IBUF_54),
    .I3(state_f_FSM_FFd1_128),
    .I4(state_f_FSM_FFd3_130),
    .I5(state_f_FSM_FFd4_131),
    .O(rst_out_rstpot_437)
  );
  LUT6 #(
    .INIT ( 64'hF1F0E0F0F1F1F0F1 ))
  \AD_9783_SPI_inst/spi_sck_out_rstpot  (
    .I0(spi_trigger_140),
    .I1(rst_in_IBUF_54),
    .I2(\AD_9783_SPI_inst/spi_sck_out_94 ),
    .I3(\AD_9783_SPI_inst/state_f [1]),
    .I4(\AD_9783_SPI_inst/state_f [2]),
    .I5(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/spi_sck_out_rstpot_439 )
  );
  LUT6 #(
    .INIT ( 64'hF1F1F0F0F1F0E0F1 ))
  \AD_9783_SPI_inst/spi_scs_out_rstpot  (
    .I0(spi_trigger_140),
    .I1(rst_in_IBUF_54),
    .I2(\AD_9783_SPI_inst/spi_scs_out_93 ),
    .I3(\AD_9783_SPI_inst/state_f [1]),
    .I4(\AD_9783_SPI_inst/state_f [2]),
    .I5(\AD_9783_SPI_inst/state_f [0]),
    .O(\AD_9783_SPI_inst/spi_scs_out_rstpot_440 )
  );
  LUT5 #(
    .INIT ( 32'h001B1B00 ))
  \AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<3>1  (
    .I0(\AD_9783_SPI_inst/state_f_0_LDC_492 ),
    .I1(\AD_9783_SPI_inst/state_f_0_C_0_493 ),
    .I2(\AD_9783_SPI_inst/state_f_0_P_0_494 ),
    .I3(\AD_9783_SPI_inst/state_f [1]),
    .I4(\AD_9783_SPI_inst/state_f [2]),
    .O(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00011011 ))
  \AD_9783_SPI_inst/ready_out_rstpot  (
    .I0(\AD_9783_SPI_inst/state_f [2]),
    .I1(\AD_9783_SPI_inst/state_f [1]),
    .I2(\AD_9783_SPI_inst/state_f_0_LDC_492 ),
    .I3(\AD_9783_SPI_inst/state_f_0_C_0_493 ),
    .I4(\AD_9783_SPI_inst/state_f_0_P_0_494 ),
    .I5(\AD_9783_SPI_inst/ready_out_92 ),
    .O(\AD_9783_SPI_inst/ready_out_rstpot_436 )
  );
  LUT5 #(
    .INIT ( 32'h04511540 ))
  \AD_9783_SPI_inst/_n0159_inv1_rstpot  (
    .I0(spi_trigger_140),
    .I1(\AD_9783_SPI_inst/state_f_0_LDC_492 ),
    .I2(\AD_9783_SPI_inst/state_f_0_P_0_494 ),
    .I3(\AD_9783_SPI_inst/state_f [2]),
    .I4(\AD_9783_SPI_inst/state_f_0_C_0_493 ),
    .O(\AD_9783_SPI_inst/_n0159_inv1_rstpot_498 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \AD_9783_SPI_inst/counter_f_0_dpot  (
    .I0(\AD_9783_SPI_inst/_n0159_inv1_rstpot_498 ),
    .I1(\AD_9783_SPI_inst/counter_f [0]),
    .I2(\AD_9783_SPI_inst/Mcount_counter_f ),
    .O(\AD_9783_SPI_inst/counter_f_0_dpot_500 )
  );
  FDC   \AD_9783_SPI_inst/state_f_2_1  (
    .C(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .CLR(\AD_9783_SPI_inst/rst_in1 ),
    .D(\AD_9783_SPI_inst/state_f[2]_GND_6_o_wide_mux_6_OUT<2> ),
    .Q(\AD_9783_SPI_inst/state_f_2_1_501 )
  );
  BUFG   clk_in_IBUF_BUFG (
    .O(clk_in_IBUF_BUFG_53),
    .I(clk_in_IBUF_502)
  );
  BUFG   \AD_9783_SPI_inst/spi_clk_BUFG  (
    .O(\AD_9783_SPI_inst/spi_clk_BUFG_347 ),
    .I(\AD_9783_SPI_inst/spi_clk_503 )
  );
  INV   \Mcount_counter_f_lut<1>_INV_0  (
    .I(counter_f[1]),
    .O(Mcount_counter_f_lut[1])
  );
  INV   \Mcount_counter_f_lut<2>_INV_0  (
    .I(counter_f[2]),
    .O(Mcount_counter_f_lut[2])
  );
  INV   \Mcount_counter_f_lut<3>_INV_0  (
    .I(counter_f[3]),
    .O(Mcount_counter_f_lut[3])
  );
  INV   \Mcount_counter_f_lut<4>_INV_0  (
    .I(counter_f[4]),
    .O(Mcount_counter_f_lut[4])
  );
  INV   \Mcount_counter_f_lut<5>_INV_0  (
    .I(counter_f[5]),
    .O(Mcount_counter_f_lut[5])
  );
  INV   \Mcount_counter_f_lut<6>_INV_0  (
    .I(counter_f[6]),
    .O(Mcount_counter_f_lut[6])
  );
  INV   \Mcount_counter_f_lut<7>_INV_0  (
    .I(counter_f[7]),
    .O(Mcount_counter_f_lut[7])
  );
  INV   \AD_9783_SPI_inst/state_f<2>_inv1_INV_0  (
    .I(\AD_9783_SPI_inst/state_f_2_1_501 ),
    .O(\AD_9783_SPI_inst/state_f<2>_inv )
  );
  INV   \AD_9783_SPI_inst/_n0159_inv1_cepot_INV_0  (
    .I(\AD_9783_SPI_inst/state_f [1]),
    .O(\AD_9783_SPI_inst/_n0159_inv1_cepot )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

