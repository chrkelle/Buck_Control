// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun 15 10:42:27 2018
// Host        : EECS-Xiaomachine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top on_time_counter -prefix
//               on_time_counter_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module on_time_counter
   (CLK,
    SINIT,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [9:0]Q;

  wire CLK;
  wire [9:0]Q;
  wire SINIT;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  on_time_counter_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "1" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "10" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module on_time_counter_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [9:0]L;
  output THRESH0;
  output [9:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [9:0]Q;
  wire SINIT;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  on_time_counter_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
K+RoRQEX7urb9k0ZG7Py5CYDI8cuvs14xoQj7gtVpxPg8gc9AAxgPKMlTF/pmpoeM7BqyHNs/ITw
DnLOVNrWUTtV8UHvrYz1v/9PyN9akjmTN6kVNBvP0LXENkYEfJ11Q9vFU9kKLepoSleu6z+pKa3U
K++6dpCVRH/FqyBb3BfP2I83+9+VciXoEFEYOVklc9rykrZ8SZH4XV6OsOzMz0MReTeQv6uPA9JR
gMySd2nXGU0hpXAaEQAZd3SCbOGXo711gkA82rdrAXCta5U5TYs/1LL/6Cq10pIQltGk4vQHKjsN
3AopVXIdBl10OLoSzHeTtPjItoEltMLkqyLZjQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rgakyZPqiBNRZi+Cx1XZKmzAhnM1Lm58/TqFVh7LL4Qm74RqMXPNhX2K8lylrNIaPTktN+BqteDg
XUhPAQ27QUbvvZA34xPzL3eZRjKXMOsyRz2e3uROSbgkFRcvl4nd5Dv9YLTdssxFAxbT1x7UwQtb
TxEAC9rDfc1TAdBJE477Br9v7z+QT2noiNc2zvqpAZDK+ngihjM6x1cj1wTc4mW8C1uiX6lx2p52
An23lJ/SJI8OTNQCj/Cf0YVJypDMiBc77UGR3IYlgdnQXPQG91FuPpLyWJxDMkjshgrq6IS/BUMT
cnZe5qk/VmMH9Hc7rdv1/RtGY5u68HlG4K9KIQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8144)
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
