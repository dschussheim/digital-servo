////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: DAC_Sweep_Test_synthesis.v
// /___/   /\     Timestamp: Thu Jun 01 19:54:06 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim DAC_Sweep_Test.ngc DAC_Sweep_Test_synthesis.v 
// Device	: xc7k160t-1-fbg676
// Input file	: DAC_Sweep_Test.ngc
// Output file	: C:\Users\dschussheim\Documents\GitHub\digital-servo\M_KX1_DB\Firmware\DAC_test\netgen\synthesis\DAC_Sweep_Test_synthesis.v
// # of Modules	: 1
// Design Name	: DAC_Sweep_Test
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

module DAC_Sweep_Test (
  clk, on_in, CLK_out_p, CLK_out_n, DCI_out_p, DCI_out_n, D_out_p, D_out_n
);
  input clk;
  input on_in;
  output CLK_out_p;
  output CLK_out_n;
  output DCI_out_p;
  output DCI_out_n;
  output [15 : 0] D_out_p;
  output [15 : 0] D_out_n;
  wire clk_IBUF_0;
  wire on_in_IBUF_1;
  wire clk_in;
  wire \Sweep_inst/state_f_98 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<6> ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi3 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<5>_102 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<5>_103 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi2_104 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<4>_105 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<4>_106 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi1_107 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<3>_108 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<3>_109 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi_110 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<2>_111 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<2>_112 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<1>_113 ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<1> ;
  wire \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ;
  wire \Sweep_inst/Result[33] ;
  wire \Sweep_inst/Result[30] ;
  wire \Sweep_inst/Result[29] ;
  wire \Sweep_inst/Result[28] ;
  wire \Sweep_inst/Result[27] ;
  wire \Sweep_inst/Result[26] ;
  wire \Sweep_inst/Result[25] ;
  wire \Sweep_inst/Result[24] ;
  wire \Sweep_inst/Result[23] ;
  wire \Sweep_inst/Result[22] ;
  wire \Sweep_inst/Result[21] ;
  wire \Sweep_inst/Result[20] ;
  wire \Sweep_inst/Result[19] ;
  wire \Sweep_inst/Result[18] ;
  wire \Sweep_inst/Result[17] ;
  wire \Sweep_inst/Result[16] ;
  wire \Sweep_inst/Result[15] ;
  wire \Sweep_inst/Result[14] ;
  wire \Sweep_inst/Result[13] ;
  wire \Sweep_inst/Result[12] ;
  wire \Sweep_inst/Result[11] ;
  wire \Sweep_inst/Result[10] ;
  wire \Sweep_inst/Result[9] ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<29>1_140 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<28>1_141 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<27>1_142 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<26>1_143 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<25>1_144 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<24>1_145 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<23>1_146 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<22>1_147 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<21>1_148 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<20>1_149 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<19>1_150 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<18>1_151 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<17>1_152 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<16>1_153 ;
  wire \Sweep_inst/on_in_inv ;
  wire \Sweep_inst/next_val_f[9] ;
  wire \Sweep_inst/next_val_f[10] ;
  wire \Sweep_inst/next_val_f[11] ;
  wire \Sweep_inst/next_val_f[12] ;
  wire \Sweep_inst/next_val_f[13] ;
  wire \Sweep_inst/next_val_f[14] ;
  wire \Sweep_inst/next_val_f[15] ;
  wire \Sweep_inst/next_val_f[16] ;
  wire \Sweep_inst/next_val_f[17] ;
  wire \Sweep_inst/next_val_f[18] ;
  wire \Sweep_inst/next_val_f[19] ;
  wire \Sweep_inst/next_val_f[20] ;
  wire \Sweep_inst/next_val_f[21] ;
  wire \Sweep_inst/next_val_f[22] ;
  wire \Sweep_inst/next_val_f[23] ;
  wire \Sweep_inst/next_val_f[24] ;
  wire \Sweep_inst/next_val_f[25] ;
  wire \Sweep_inst/next_val_f[26] ;
  wire \Sweep_inst/next_val_f[27] ;
  wire \Sweep_inst/next_val_f[28] ;
  wire \Sweep_inst/next_val_f[29] ;
  wire \Sweep_inst/next_val_f[30] ;
  wire \Sweep_inst/next_val_f[33] ;
  wire \Sweep_inst/state_f_glue_set_228 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<8>_rt_229 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<7>_rt_230 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<6>_rt_231 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<5>_rt_232 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<4>_rt_233 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<3>_rt_234 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<2>_rt_235 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<1>_rt_236 ;
  wire \Sweep_inst/Maccum_next_val_f_cy<0>_rt_237 ;
  wire \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1_lut_238 ;
  wire \Sweep_inst/state_f_1_239 ;
  wire \AD9783_inst/Mshreg_data_in_32_240 ;
  wire \AD9783_inst/Mshreg_data_in_31_241 ;
  wire \AD9783_inst/Mshreg_data_in_30_242 ;
  wire \AD9783_inst/Mshreg_data_in_29_243 ;
  wire \AD9783_inst/Mshreg_data_in_28_244 ;
  wire \AD9783_inst/Mshreg_data_in_27_245 ;
  wire \AD9783_inst/Mshreg_data_in_26_246 ;
  wire \AD9783_inst/Mshreg_data_in_25_247 ;
  wire \AD9783_inst/Mshreg_data_in_24_248 ;
  wire \AD9783_inst/Mshreg_data_in_23_249 ;
  wire \AD9783_inst/Mshreg_data_in_22_250 ;
  wire \AD9783_inst/Mshreg_data_in_21_251 ;
  wire \AD9783_inst/Mshreg_data_in_18_252 ;
  wire \AD9783_inst/Mshreg_data_in_20_253 ;
  wire \AD9783_inst/Mshreg_data_in_19_254 ;
  wire \NLW_AD9783_inst/Mshreg_data_in_32_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_31_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_30_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_29_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_28_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_27_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_26_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_25_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_24_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_23_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_22_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_21_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_18_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_20_Q15_UNCONNECTED ;
  wire \NLW_AD9783_inst/Mshreg_data_in_19_Q15_UNCONNECTED ;
  wire [15 : 15] DAC1_in;
  wire [33 : 9] \Sweep_inst/Maccum_next_val_f_lut ;
  wire [32 : 0] \Sweep_inst/Maccum_next_val_f_cy ;
  wire [30 : 16] \Sweep_inst/current_val_f ;
  wire [32 : 18] \AD9783_inst/data_in ;
  wire [17 : 0] \AD9783_inst/data_out_to_pins ;
  VCC   XST_VCC (
    .P(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> )
  );
  GND   XST_GND (
    .G(DAC1_in[15])
  );
  BUFR #(
    .BUFR_DIVIDE ( "BYPASS" ),
    .SIM_DEVICE ( "VIRTEX4" ))
  BUFR_inst (
    .O(clk_in),
    .I(clk_IBUF_0),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLR(DAC1_in[15])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<33>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [32]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [33]),
    .O(\Sweep_inst/Result[33] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<33>  (
    .I0(\Sweep_inst/next_val_f[33] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [33])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<32>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [31]),
    .DI(\Sweep_inst/next_val_f[33] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [32]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [32])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<32>  (
    .I0(\Sweep_inst/next_val_f[33] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [32])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<31>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [30]),
    .DI(\Sweep_inst/next_val_f[33] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [31]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<31>  (
    .I0(\Sweep_inst/next_val_f[33] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [31])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<30>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [29]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [30]),
    .O(\Sweep_inst/Result[30] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<30>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [29]),
    .DI(\Sweep_inst/next_val_f[30] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [30]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<30>  (
    .I0(\Sweep_inst/next_val_f[30] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [30])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<29>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [28]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [29]),
    .O(\Sweep_inst/Result[29] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<29>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [28]),
    .DI(\Sweep_inst/next_val_f[29] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [29]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<29>  (
    .I0(\Sweep_inst/next_val_f[29] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [29])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<28>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [27]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [28]),
    .O(\Sweep_inst/Result[28] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<28>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [27]),
    .DI(\Sweep_inst/next_val_f[28] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [28]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<28>  (
    .I0(\Sweep_inst/next_val_f[28] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [28])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<27>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [26]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [27]),
    .O(\Sweep_inst/Result[27] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<27>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [26]),
    .DI(\Sweep_inst/next_val_f[27] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [27]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<27>  (
    .I0(\Sweep_inst/next_val_f[27] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [27])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<26>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [25]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [26]),
    .O(\Sweep_inst/Result[26] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<26>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [25]),
    .DI(\Sweep_inst/next_val_f[26] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [26]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<26>  (
    .I0(\Sweep_inst/next_val_f[26] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [26])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<25>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [24]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [25]),
    .O(\Sweep_inst/Result[25] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<25>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [24]),
    .DI(\Sweep_inst/next_val_f[25] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [25]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<25>  (
    .I0(\Sweep_inst/next_val_f[25] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [25])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<24>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [23]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [24]),
    .O(\Sweep_inst/Result[24] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<24>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [23]),
    .DI(\Sweep_inst/next_val_f[24] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [24]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<24>  (
    .I0(\Sweep_inst/next_val_f[24] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [24])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<23>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [22]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [23]),
    .O(\Sweep_inst/Result[23] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<23>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [22]),
    .DI(\Sweep_inst/next_val_f[23] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [23]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<23>  (
    .I0(\Sweep_inst/next_val_f[23] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [23])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<22>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [21]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [22]),
    .O(\Sweep_inst/Result[22] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<22>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [21]),
    .DI(\Sweep_inst/next_val_f[22] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [22]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<22>  (
    .I0(\Sweep_inst/next_val_f[22] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [22])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<21>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [20]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [21]),
    .O(\Sweep_inst/Result[21] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<21>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [20]),
    .DI(\Sweep_inst/next_val_f[21] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [21]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<21>  (
    .I0(\Sweep_inst/next_val_f[21] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [21])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<20>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [19]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [20]),
    .O(\Sweep_inst/Result[20] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<20>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [19]),
    .DI(\Sweep_inst/next_val_f[20] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [20]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<20>  (
    .I0(\Sweep_inst/next_val_f[20] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [20])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<19>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [18]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [19]),
    .O(\Sweep_inst/Result[19] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<19>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [18]),
    .DI(\Sweep_inst/next_val_f[19] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [19]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<19>  (
    .I0(\Sweep_inst/next_val_f[19] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [19])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<18>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [17]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [18]),
    .O(\Sweep_inst/Result[18] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<18>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [17]),
    .DI(\Sweep_inst/next_val_f[18] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [18]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<18>  (
    .I0(\Sweep_inst/next_val_f[18] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [18])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<17>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [16]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [17]),
    .O(\Sweep_inst/Result[17] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<17>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [16]),
    .DI(\Sweep_inst/next_val_f[17] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [17]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<17>  (
    .I0(\Sweep_inst/next_val_f[17] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [17])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<16>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [15]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [16]),
    .O(\Sweep_inst/Result[16] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<16>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [15]),
    .DI(\Sweep_inst/next_val_f[16] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [16]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<16>  (
    .I0(\Sweep_inst/next_val_f[16] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [16])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<15>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [14]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [15]),
    .O(\Sweep_inst/Result[15] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<15>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [14]),
    .DI(\Sweep_inst/next_val_f[15] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [15]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<15>  (
    .I0(\Sweep_inst/next_val_f[15] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [15])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<14>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [13]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [14]),
    .O(\Sweep_inst/Result[14] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<14>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [13]),
    .DI(\Sweep_inst/next_val_f[14] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [14]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<14>  (
    .I0(\Sweep_inst/next_val_f[14] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [14])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<13>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [12]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [13]),
    .O(\Sweep_inst/Result[13] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<13>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [12]),
    .DI(\Sweep_inst/next_val_f[13] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [13]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<13>  (
    .I0(\Sweep_inst/next_val_f[13] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [13])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<12>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [11]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [12]),
    .O(\Sweep_inst/Result[12] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<12>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [11]),
    .DI(\Sweep_inst/next_val_f[12] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [12]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<12>  (
    .I0(\Sweep_inst/next_val_f[12] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [12])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<11>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [10]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [11]),
    .O(\Sweep_inst/Result[11] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<11>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [10]),
    .DI(\Sweep_inst/next_val_f[11] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [11]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<11>  (
    .I0(\Sweep_inst/next_val_f[11] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [11])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<10>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [9]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [10]),
    .O(\Sweep_inst/Result[10] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<10>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [9]),
    .DI(\Sweep_inst/next_val_f[10] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [10]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sweep_inst/Maccum_next_val_f_lut<10>  (
    .I0(\Sweep_inst/next_val_f[10] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [10])
  );
  XORCY   \Sweep_inst/Maccum_next_val_f_xor<9>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [8]),
    .LI(\Sweep_inst/Maccum_next_val_f_lut [9]),
    .O(\Sweep_inst/Result[9] )
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<9>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [8]),
    .DI(\Sweep_inst/next_val_f[9] ),
    .S(\Sweep_inst/Maccum_next_val_f_lut [9]),
    .O(\Sweep_inst/Maccum_next_val_f_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Sweep_inst/Maccum_next_val_f_lut<9>  (
    .I0(\Sweep_inst/next_val_f[9] ),
    .I1(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_lut [9])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<8>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [7]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<8>_rt_229 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [8])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<7>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [6]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<7>_rt_230 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [7])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<6>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [5]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<6>_rt_231 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [6])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<5>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [4]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<5>_rt_232 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [5])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<4>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [3]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<4>_rt_233 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [4])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<3>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [2]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<3>_rt_234 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [3])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<2>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [1]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<2>_rt_235 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [2])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<1>  (
    .CI(\Sweep_inst/Maccum_next_val_f_cy [0]),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<1>_rt_236 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [1])
  );
  MUXCY   \Sweep_inst/Maccum_next_val_f_cy<0>  (
    .CI(\Sweep_inst/state_f_98 ),
    .DI(DAC1_in[15]),
    .S(\Sweep_inst/Maccum_next_val_f_cy<0>_rt_237 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy [0])
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<5>_102 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi3 ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<6> ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 )
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<5>  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<4>_105 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi2_104 ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<5>_103 ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<5>_102 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<5>  (
    .I0(\Sweep_inst/next_val_f[25] ),
    .I1(\Sweep_inst/next_val_f[26] ),
    .I2(\Sweep_inst/next_val_f[27] ),
    .I3(\Sweep_inst/next_val_f[28] ),
    .I4(\Sweep_inst/next_val_f[29] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<5>_103 )
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<4>  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<3>_108 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi1_107 ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<4>_106 ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<4>_105 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<4>  (
    .I0(\Sweep_inst/next_val_f[20] ),
    .I1(\Sweep_inst/next_val_f[21] ),
    .I2(\Sweep_inst/next_val_f[22] ),
    .I3(\Sweep_inst/next_val_f[23] ),
    .I4(\Sweep_inst/next_val_f[24] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<4>_106 )
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<3>  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<2>_111 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi_110 ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<3>_109 ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<3>_108 )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<3>  (
    .I0(\Sweep_inst/next_val_f[18] ),
    .I1(\Sweep_inst/next_val_f[16] ),
    .I2(\Sweep_inst/next_val_f[17] ),
    .I3(\Sweep_inst/next_val_f[15] ),
    .I4(\Sweep_inst/next_val_f[19] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<3>_109 )
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<2>  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<1>_113 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<2>_112 ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<2>_111 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<2>  (
    .I0(\Sweep_inst/next_val_f[10] ),
    .I1(\Sweep_inst/next_val_f[11] ),
    .I2(\Sweep_inst/next_val_f[12] ),
    .I3(\Sweep_inst/next_val_f[13] ),
    .I4(\Sweep_inst/next_val_f[14] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<2>_112 )
  );
  MUXCY   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<1>  (
    .CI(DAC1_in[15]),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .S(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<1> ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<1>_113 )
  );
  FDR   \Sweep_inst/next_val_f_33  (
    .C(clk_in),
    .D(\Sweep_inst/Result[33] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[33] )
  );
  FDR   \Sweep_inst/next_val_f_30  (
    .C(clk_in),
    .D(\Sweep_inst/Result[30] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[30] )
  );
  FDR   \Sweep_inst/next_val_f_29  (
    .C(clk_in),
    .D(\Sweep_inst/Result[29] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[29] )
  );
  FDR   \Sweep_inst/next_val_f_28  (
    .C(clk_in),
    .D(\Sweep_inst/Result[28] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[28] )
  );
  FDR   \Sweep_inst/next_val_f_27  (
    .C(clk_in),
    .D(\Sweep_inst/Result[27] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[27] )
  );
  FDR   \Sweep_inst/next_val_f_26  (
    .C(clk_in),
    .D(\Sweep_inst/Result[26] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[26] )
  );
  FDR   \Sweep_inst/next_val_f_25  (
    .C(clk_in),
    .D(\Sweep_inst/Result[25] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[25] )
  );
  FDR   \Sweep_inst/next_val_f_24  (
    .C(clk_in),
    .D(\Sweep_inst/Result[24] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[24] )
  );
  FDR   \Sweep_inst/next_val_f_23  (
    .C(clk_in),
    .D(\Sweep_inst/Result[23] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[23] )
  );
  FDR   \Sweep_inst/next_val_f_22  (
    .C(clk_in),
    .D(\Sweep_inst/Result[22] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[22] )
  );
  FDR   \Sweep_inst/next_val_f_21  (
    .C(clk_in),
    .D(\Sweep_inst/Result[21] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[21] )
  );
  FDR   \Sweep_inst/next_val_f_20  (
    .C(clk_in),
    .D(\Sweep_inst/Result[20] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[20] )
  );
  FDR   \Sweep_inst/next_val_f_19  (
    .C(clk_in),
    .D(\Sweep_inst/Result[19] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[19] )
  );
  FDR   \Sweep_inst/next_val_f_18  (
    .C(clk_in),
    .D(\Sweep_inst/Result[18] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[18] )
  );
  FDR   \Sweep_inst/next_val_f_17  (
    .C(clk_in),
    .D(\Sweep_inst/Result[17] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[17] )
  );
  FDR   \Sweep_inst/next_val_f_16  (
    .C(clk_in),
    .D(\Sweep_inst/Result[16] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[16] )
  );
  FDR   \Sweep_inst/next_val_f_15  (
    .C(clk_in),
    .D(\Sweep_inst/Result[15] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[15] )
  );
  FDR   \Sweep_inst/next_val_f_14  (
    .C(clk_in),
    .D(\Sweep_inst/Result[14] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[14] )
  );
  FDR   \Sweep_inst/next_val_f_13  (
    .C(clk_in),
    .D(\Sweep_inst/Result[13] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[13] )
  );
  FDR   \Sweep_inst/next_val_f_12  (
    .C(clk_in),
    .D(\Sweep_inst/Result[12] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[12] )
  );
  FDR   \Sweep_inst/next_val_f_11  (
    .C(clk_in),
    .D(\Sweep_inst/Result[11] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[11] )
  );
  FDR   \Sweep_inst/next_val_f_10  (
    .C(clk_in),
    .D(\Sweep_inst/Result[10] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[10] )
  );
  FDR   \Sweep_inst/next_val_f_9  (
    .C(clk_in),
    .D(\Sweep_inst/Result[9] ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/next_val_f[9] )
  );
  FDR   \Sweep_inst/current_val_f_30  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [30])
  );
  FDR   \Sweep_inst/current_val_f_29  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<29>1_140 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [29])
  );
  FDR   \Sweep_inst/current_val_f_28  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<28>1_141 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [28])
  );
  FDR   \Sweep_inst/current_val_f_27  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<27>1_142 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [27])
  );
  FDR   \Sweep_inst/current_val_f_26  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<26>1_143 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [26])
  );
  FDR   \Sweep_inst/current_val_f_25  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<25>1_144 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [25])
  );
  FDR   \Sweep_inst/current_val_f_24  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<24>1_145 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [24])
  );
  FDR   \Sweep_inst/current_val_f_23  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<23>1_146 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [23])
  );
  FDR   \Sweep_inst/current_val_f_22  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<22>1_147 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [22])
  );
  FDR   \Sweep_inst/current_val_f_21  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<21>1_148 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [21])
  );
  FDR   \Sweep_inst/current_val_f_20  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<20>1_149 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [20])
  );
  FDR   \Sweep_inst/current_val_f_19  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<19>1_150 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [19])
  );
  FDR   \Sweep_inst/current_val_f_18  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<18>1_151 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [18])
  );
  FDR   \Sweep_inst/current_val_f_17  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<17>1_152 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [17])
  );
  FDR   \Sweep_inst/current_val_f_16  (
    .C(clk_in),
    .D(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<16>1_153 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/current_val_f [16])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[17].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [17]),
    .O(CLK_out_p),
    .OB(CLK_out_n)
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[16].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [16]),
    .O(DCI_out_p),
    .OB(DCI_out_n)
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[15].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [15]),
    .O(D_out_p[15]),
    .OB(D_out_n[15])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[14].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [14]),
    .O(D_out_p[14]),
    .OB(D_out_n[14])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[13].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [13]),
    .O(D_out_p[13]),
    .OB(D_out_n[13])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[12].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [12]),
    .O(D_out_p[12]),
    .OB(D_out_n[12])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[11].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [11]),
    .O(D_out_p[11]),
    .OB(D_out_n[11])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[10].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [10]),
    .O(D_out_p[10]),
    .OB(D_out_n[10])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[9].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [9]),
    .O(D_out_p[9]),
    .OB(D_out_n[9])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[8].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [8]),
    .O(D_out_p[8]),
    .OB(D_out_n[8])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[7].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [7]),
    .O(D_out_p[7]),
    .OB(D_out_n[7])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[6].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [6]),
    .O(D_out_p[6]),
    .OB(D_out_n[6])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[5].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [5]),
    .O(D_out_p[5]),
    .OB(D_out_n[5])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[4].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [4]),
    .O(D_out_p[4]),
    .OB(D_out_n[4])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[3].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [3]),
    .O(D_out_p[3]),
    .OB(D_out_n[3])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[2].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [2]),
    .O(D_out_p[2]),
    .OB(D_out_n[2])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[1].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [1]),
    .O(D_out_p[1]),
    .OB(D_out_n[1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "LVDS" ),
    .SLEW ( "20" ))
  \AD9783_inst/pins[0].OBUFDS_inst  (
    .I(\AD9783_inst/data_out_to_pins [0]),
    .O(D_out_p[0]),
    .OB(D_out_n[0])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[17].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [17])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[16].ODDR_inst  (
    .D1(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D2(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [16])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[15].ODDR_inst  (
    .D1(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D2(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [15])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[14].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [32]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [14])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[13].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [31]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [13])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[12].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [30]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [12])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[11].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [29]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [11])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[10].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [28]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [10])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[9].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [27]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [9])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[8].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [26]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [8])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[7].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [25]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [7])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[6].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [24]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [6])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[5].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [23]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [5])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[4].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [22]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [4])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[3].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [21]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [3])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[2].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [20]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [2])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[1].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [19]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [1])
  );
  ODDR #(
    .DDR_CLK_EDGE ( "OPPOSITE_EDGE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \AD9783_inst/pins[0].ODDR_inst  (
    .D1(DAC1_in[15]),
    .D2(\AD9783_inst/data_in [18]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .C(clk_in),
    .S(DAC1_in[15]),
    .R(DAC1_in[15]),
    .Q(\AD9783_inst/data_out_to_pins [0])
  );
  IBUF   clk_IBUF (
    .I(clk),
    .O(clk_IBUF_0)
  );
  IBUF   on_in_IBUF (
    .I(on_in),
    .O(on_in_IBUF_1)
  );
  FDR   \Sweep_inst/state_f  (
    .C(clk_in),
    .D(\Sweep_inst/state_f_glue_set_228 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/state_f_98 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<6>1  (
    .I0(\Sweep_inst/next_val_f[30] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<6> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<8>_rt  (
    .I0(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<8>_rt_229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<7>_rt  (
    .I0(\Sweep_inst/state_f_98 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<7>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<6>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<6>_rt_231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<5>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<5>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<4>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<4>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<3>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<3>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<2>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<2>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<1>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<1>_rt_236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Sweep_inst/Maccum_next_val_f_cy<0>_rt  (
    .I0(\Sweep_inst/state_f_1_239 ),
    .O(\Sweep_inst/Maccum_next_val_f_cy<0>_rt_237 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi31  (
    .I0(\Sweep_inst/next_val_f[30] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi3 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi2  (
    .I0(\Sweep_inst/next_val_f[29] ),
    .I1(\Sweep_inst/next_val_f[28] ),
    .I2(\Sweep_inst/next_val_f[27] ),
    .I3(\Sweep_inst/next_val_f[26] ),
    .I4(\Sweep_inst/next_val_f[25] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi2_104 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi1  (
    .I0(\Sweep_inst/next_val_f[24] ),
    .I1(\Sweep_inst/next_val_f[23] ),
    .I2(\Sweep_inst/next_val_f[22] ),
    .I3(\Sweep_inst/next_val_f[21] ),
    .I4(\Sweep_inst/next_val_f[20] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi1_107 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi  (
    .I0(\Sweep_inst/next_val_f[19] ),
    .I1(\Sweep_inst/next_val_f[18] ),
    .I2(\Sweep_inst/next_val_f[17] ),
    .I3(\Sweep_inst/next_val_f[16] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lutdi_110 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1_lut  (
    .I0(\Sweep_inst/next_val_f[33] ),
    .I1(\Sweep_inst/next_val_f[30] ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1_lut_238 )
  );
  MUXCY   \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1_cy  (
    .CI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .DI(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .S(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1_lut_238 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<30>1 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<29>1  (
    .I0(\Sweep_inst/next_val_f[29] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<29>1_140 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<28>1  (
    .I0(\Sweep_inst/next_val_f[28] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<28>1_141 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<27>1  (
    .I0(\Sweep_inst/next_val_f[27] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<27>1_142 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<26>1  (
    .I0(\Sweep_inst/next_val_f[26] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<26>1_143 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<25>1  (
    .I0(\Sweep_inst/next_val_f[25] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<25>1_144 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<24>1  (
    .I0(\Sweep_inst/next_val_f[24] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<24>1_145 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<23>1  (
    .I0(\Sweep_inst/next_val_f[23] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<23>1_146 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<22>1  (
    .I0(\Sweep_inst/next_val_f[22] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<22>1_147 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<21>1  (
    .I0(\Sweep_inst/next_val_f[21] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<21>1_148 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<20>1  (
    .I0(\Sweep_inst/next_val_f[20] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<20>1_149 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<19>1  (
    .I0(\Sweep_inst/next_val_f[19] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<19>1_150 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<18>1  (
    .I0(\Sweep_inst/next_val_f[18] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<18>1_151 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<17>1  (
    .I0(\Sweep_inst/next_val_f[17] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<17>1_152 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<16>1  (
    .I0(\Sweep_inst/next_val_f[16] ),
    .I1(\Sweep_inst/next_val_f[33] ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/next_val_f[33]_minval_in[15]_mux_7_OUT<16>1_153 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \Sweep_inst/state_f_glue_set  (
    .I0(\Sweep_inst/next_val_f[33] ),
    .I1(\Sweep_inst/state_f_98 ),
    .I2(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<6>_99 ),
    .O(\Sweep_inst/state_f_glue_set_228 )
  );
  FDR   \Sweep_inst/state_f_1  (
    .C(clk_in),
    .D(\Sweep_inst/state_f_glue_set_228 ),
    .R(\Sweep_inst/on_in_inv ),
    .Q(\Sweep_inst/state_f_1_239 )
  );
  INV   \Sweep_inst/on_in_inv1_INV_0  (
    .I(on_in_IBUF_1),
    .O(\Sweep_inst/on_in_inv )
  );
  INV   \Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<1>1_INV_0  (
    .I(\Sweep_inst/next_val_f[9] ),
    .O(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_lut<1> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_32  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [30]),
    .Q(\AD9783_inst/Mshreg_data_in_32_240 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_32_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_32  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_32_240 ),
    .Q(\AD9783_inst/data_in [32])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_31  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [29]),
    .Q(\AD9783_inst/Mshreg_data_in_31_241 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_31_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_31  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_31_241 ),
    .Q(\AD9783_inst/data_in [31])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_30  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [28]),
    .Q(\AD9783_inst/Mshreg_data_in_30_242 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_30_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_30  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_30_242 ),
    .Q(\AD9783_inst/data_in [30])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_29  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [27]),
    .Q(\AD9783_inst/Mshreg_data_in_29_243 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_29_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_29  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_29_243 ),
    .Q(\AD9783_inst/data_in [29])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_28  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [26]),
    .Q(\AD9783_inst/Mshreg_data_in_28_244 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_28_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_28  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_28_244 ),
    .Q(\AD9783_inst/data_in [28])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_27  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [25]),
    .Q(\AD9783_inst/Mshreg_data_in_27_245 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_27_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_27  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_27_245 ),
    .Q(\AD9783_inst/data_in [27])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_26  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [24]),
    .Q(\AD9783_inst/Mshreg_data_in_26_246 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_26_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_26  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_26_246 ),
    .Q(\AD9783_inst/data_in [26])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_25  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [23]),
    .Q(\AD9783_inst/Mshreg_data_in_25_247 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_25_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_25  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_25_247 ),
    .Q(\AD9783_inst/data_in [25])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_24  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [22]),
    .Q(\AD9783_inst/Mshreg_data_in_24_248 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_24_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_24  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_24_248 ),
    .Q(\AD9783_inst/data_in [24])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_23  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [21]),
    .Q(\AD9783_inst/Mshreg_data_in_23_249 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_23_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_23  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_23_249 ),
    .Q(\AD9783_inst/data_in [23])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_22  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [20]),
    .Q(\AD9783_inst/Mshreg_data_in_22_250 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_22_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_22  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_22_250 ),
    .Q(\AD9783_inst/data_in [22])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_21  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [19]),
    .Q(\AD9783_inst/Mshreg_data_in_21_251 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_21_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_21  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_21_251 ),
    .Q(\AD9783_inst/data_in [21])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_18  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [16]),
    .Q(\AD9783_inst/Mshreg_data_in_18_252 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_18_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_18  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_18_252 ),
    .Q(\AD9783_inst/data_in [18])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_20  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [18]),
    .Q(\AD9783_inst/Mshreg_data_in_20_253 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_20_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_20  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_20_253 ),
    .Q(\AD9783_inst/data_in [20])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \AD9783_inst/Mshreg_data_in_19  (
    .A0(DAC1_in[15]),
    .A1(DAC1_in[15]),
    .A2(DAC1_in[15]),
    .A3(DAC1_in[15]),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .CLK(clk_in),
    .D(\Sweep_inst/current_val_f [17]),
    .Q(\AD9783_inst/Mshreg_data_in_19_254 ),
    .Q15(\NLW_AD9783_inst/Mshreg_data_in_19_Q15_UNCONNECTED )
  );
  FDE   \AD9783_inst/data_in_19  (
    .C(clk_in),
    .CE(\Sweep_inst/Mcompar_next_val_f[33]_maxval_in[15]_LessThan_6_o_cy<0> ),
    .D(\AD9783_inst/Mshreg_data_in_19_254 ),
    .Q(\AD9783_inst/data_in [19])
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

