// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Sep 20 15:34:30 2017
// Host        : DESKTOP-VK82MLB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multiplier35x35_sim_netlist.v
// Design      : multiplier35x35
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier35x35,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [34:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [34:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [69:0]P;

  wire [34:0]A;
  wire [34:0]B;
  wire [69:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "35" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "69" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "35" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "35" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "69" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [34:0]A;
  input [34:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [69:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [34:0]A;
  wire [34:0]B;
  wire [69:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "35" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "69" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
lEAWhwyix5jBGG66vdOS8nJpVNdFrJkI8qYgE8UK5+7avncLp8v54uPGoRWR36jLWh6ehDkiSjec
BS6Kf+NkuQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pIREr1/dqaPvd4j2lTxOBSnAy2Ra6DuJsnP63kEHv0IS6up5E7T2izznuVUSTCTOb47ap4dcNzFs
VunReb3wPh7pLPeb7xw5iV9uBkd/TpxZM73yc3k1Rpf+4J2IVlTVOAQ5OEjaorVixNlt8NiWGqzH
R/d96oqeazauoI3oOnQ=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DELvK5o++4pE4MCoxr5fui0H5JI8L1lrkSphbogK2GjTRYuCaX9esyobvkVAA3D3d9tJqaP3hGDO
abwxN4b4ezNtusv1gy6cglGx/GN3jUuKSbgskyfUxDvL7LrGyqNFVNMUu2E9m+BfM4Ntpn0n9FIV
ziDzomLe9jJOEfua5U0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V5WVwaxzoZCaNjBtQkebL2emEOYwtLrt2YC/Nhjv+maBGQv/B4iXQaCQdVt72XysdOqpG+W7acY4
LQoDKOXjpn3NnQIeXe5yNHpeBxy0UeQS9x3LKwyD7PTy2e6Psu8FyrhI0YZfF7izMLFdHz6hGOSF
AIMgUa/N0UmNtXEjM3DkfZLqoYQAht0o6JFtiqajvc59tPsvMZCCtiKwhXu7PlN11ghLauG7TulD
K2KfLDkX0cfwDA2TPyp16kT6EIfZoCRnafITvpKhHXZv+NQc+XN9PbcRpp9BOAC79WhsNkBBXYhL
PABV65LzYa8+x5tqKdf3v0X46IAMWJ1e3wS5UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U33OFhvyDr6TZQknmG9CiJblHCnuyjNFktguLuIFzd/VYuPGNPUXzm3pNVHAmifAJrPB2CT7TAF6
SpBdgM2KIeON3LRhsrRAbVtPF8PLeYtYTgU5BOY8SIKKoSu1FY2Gr1zMrTO/nd+RiZegYkT/1u27
xI0aTCkoWlFt3amFg2MasqdnOSk77Lt/DgM2JPd9muhj3QoSr10ZjlsDKpO31B9RZyxGfIMIft8A
zXeFtxJQH+1UZmzli9TNedfnlc4Etx1ofsn10PXyAOJjpszIhUCVPKZIY14gmxL8f+2bLkbtbsCM
BVqE9L8J6oKTduRVz5WGnDuPWMDwM24T9TA/dA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j6YL/khcx2/CEaOFv1YeHhnfPBfzoLLf3YocgJW2UWv3fiNKR3/XVXrjS7WsQlB+PoA6wradLkll
gsCEiQrgYuwxUEkrZPREX1CG/XJwUl9PKDBg75CevIh9+3qKHJGSxr9GydBxI8A2Bl+6FCqWp+ji
fmjdmpZhDdGqO9F7NIOUIknT0jWHS4jX/6J6w3BhZ/5VtUKxAeh4CNotWM+2fGo67UsEmFovMSdb
AWdoeaA+uo+Nh0kX6bc0yzej6R0ECeV3uzW4Gr9HgZtmqiZ4XMox/30Qmatsy8mCmeKd4pCcCVaP
xJ2QjwO5By08VArjkqF+F5MjSBTB2AgEgKQm4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
QE3Xk83RxLj8Gr5BYhBOVOSFcQMZjbWuCuOzKh3DMcEEDEiHANCzdOVbt2SK2LpJMx4plxpZhl6X
+MpzWRb+TTQ1Pz7iRtHmFJ9YX+10cTX5xE8GCM2QICy75IKuYzXENseJhXZqdT9IuBCAeyZO3be/
eUM7VrRSZQ3gZ2yDJv7BeW6b4sR5rMzg+D5xb+9Qe8BlrfhRR1TvqtdQlDfNN2gEpPaZjRgcpe//
ZLhj5DOlBVttMooKrtDG8JY2xUZou4tF9ctYNrie5SJX6X/zmU54yCc2gD5PLemLlJhri8D6Liun
R5Zj2CxezDmL+jZu5hhhLwiwYUq3TcTlA2KwEg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
dBA86tx7gDzvUSUkGmWz17UthYs2DZ/Kr1PCfvC19tOXQYXYrtwJ8EXml+Exi7Bk2v1/Rxv3wY2f
CzwI74UQeTRqUWyDN2R4oRgZHiu8tonawBWe5x17euJ1Cq9t/WTujblThTP6x8H7wVLGq0JqfeJ5
ZCAyhoTAGkaYOc4G/C8x1hOCJGRNuwaW8o4huI3V/BUOb5ihDLIznVCJfItEGswwjRyMAgtR6dZg
slCXHuLaIBbBtsC7zv5vVULPmII2rrg7zdXsUFQAGtdTZ+5O8dWPv97Tp1twWIxMBiC5OfkDN1uh
X8ft4hHRb/XX1y+lg+bQ9snCa4imGzrHuejlQQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28656)
`pragma protect data_block
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
`pragma protect end_protected
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
