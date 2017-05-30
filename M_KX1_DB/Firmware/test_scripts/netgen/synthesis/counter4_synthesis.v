////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: counter4_synthesis.v
// /___/   /\     Timestamp: Mon May 15 12:04:06 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim counter4.ngc counter4_synthesis.v 
// Device	: xc7k160t-1-fbg676
// Input file	: counter4.ngc
// Output file	: C:\Users\dschussheim\Desktop\M_KX1_DB\Firmware\test_scripts\netgen\synthesis\counter4_synthesis.v
// # of Modules	: 1
// Design Name	: counter4
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

module counter4 (
  clk, enable, reset, out
);
  input clk;
  input enable;
  input reset;
  output [3 : 0] out;
  wire clk_BUFGP_0;
  wire enable_IBUF_1;
  wire reset_IBUF_2;
  wire out_0_7;
  wire out_1_8;
  wire out_2_9;
  wire out_3_10;
  wire [3 : 0] Result;
  FDRE   out_0 (
    .C(clk_BUFGP_0),
    .CE(enable_IBUF_1),
    .D(Result[0]),
    .R(reset_IBUF_2),
    .Q(out_0_7)
  );
  FDRE   out_1 (
    .C(clk_BUFGP_0),
    .CE(enable_IBUF_1),
    .D(Result[1]),
    .R(reset_IBUF_2),
    .Q(out_1_8)
  );
  FDRE   out_2 (
    .C(clk_BUFGP_0),
    .CE(enable_IBUF_1),
    .D(Result[2]),
    .R(reset_IBUF_2),
    .Q(out_2_9)
  );
  FDRE   out_3 (
    .C(clk_BUFGP_0),
    .CE(enable_IBUF_1),
    .D(Result[3]),
    .R(reset_IBUF_2),
    .Q(out_3_10)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_out_xor<1>11  (
    .I0(out_1_8),
    .I1(out_0_7),
    .O(Result[1])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>1  (
    .I0(out_2_9),
    .I1(out_3_10),
    .I2(out_0_7),
    .I3(out_1_8),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(out_2_9),
    .I1(out_0_7),
    .I2(out_1_8),
    .O(Result[2])
  );
  IBUF   enable_IBUF (
    .I(enable),
    .O(enable_IBUF_1)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_2)
  );
  OBUF   out_3_OBUF (
    .I(out_3_10),
    .O(out[3])
  );
  OBUF   out_2_OBUF (
    .I(out_2_9),
    .O(out[2])
  );
  OBUF   out_1_OBUF (
    .I(out_1_8),
    .O(out[1])
  );
  OBUF   out_0_OBUF (
    .I(out_0_7),
    .O(out[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Mcount_out_xor<0>11_INV_0  (
    .I(out_0_7),
    .O(Result[0])
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

