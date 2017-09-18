// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Sep  4 16:05:08 2017
// Host        : DESKTOP-VK82MLB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dschussheim/Documents/GitHub/digital-servo/M_KX1_DB/Firmware/servo_tests/servo_tests_new/servo_tests_new.srcs/sources_1/ip/multiplier35x35k7/multiplier35x35k7_stub.v
// Design      : multiplier35x35k7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_12,Vivado 2017.2" *)
module multiplier35x35k7(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[34:0],B[34:0],P[69:0]" */;
  input CLK;
  input [34:0]A;
  input [34:0]B;
  output [69:0]P;
endmodule
