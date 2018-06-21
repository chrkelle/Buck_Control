// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 13 10:17:22 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_0 -prefix
//               c_addsub_0_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ym5VxIIhvHkXUV7bGCKSJ+7XDf2CRdTmmzQBj+ILOtvBpERivmKJUCsdzDWAPrJTjfsX3LqT4Oyr
KxelIvvljzM6XRbnDC2r4gIz43CS77pSL4N87wo7w8jWloSOMThpTJopoKqLvOZz6flwCDQsuhEn
0B5IGvJj4D1wsnPLc0O5zqihXhfKuqoP6S8UYrUDHwefJ0IP54cQ+LV25DnxHhRzQiDPpnCbfOm1
imYTMH6bfYARspA0Ai6sO/7QZWg/1yDkWuWrGfel6TDHGkPh2TkkVpRi3hUQw1Dyg5+ag8z1XBbf
2smumfNpJMVrhVkBcZC4dQoUqEh7lrNY9zkK2w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XaE7ZdWa9OqTFD2dzNdFERbf6oKs3Y5Ks0XYDci95o67hv6f5l83idbDjMEFcv5e+/lJtmCxPcmG
+2hhMEGUALqBshVpz5BAArLnD2N+Pb0C+YbgaZpeIjO4dQQ4mFRLAgRH1yp+f3lav3CaMBT0P2Gf
LBVjbhi5IS0nF1IrPFWETaYZ05Wj0W7+9zYgQsEeku9WDAEduuj+rzo65HGe66Z4dWwNplSBzb4J
ZNT3TWMveSNOvgGVWqHeYD5isUD+7taoL6IjKuRlHUeUBuHmz0O7qm70XHFCfDphBFk6DtwJW+6k
6oZy1Ca2F/VNHye59680Rd3p1SdEGEi7IWXveA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26784)
`pragma protect data_block
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
D2sxY3WvE0c=
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
