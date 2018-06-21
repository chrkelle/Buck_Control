// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Jun 16 17:30:29 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_2 -prefix
//               c_addsub_2_ c_addsub_2_sim_netlist.v
// Design      : c_addsub_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_2,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module c_addsub_2
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
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000001" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_2_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000001" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_2_c_addsub_v12_0_12
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
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000001" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_2_c_addsub_v12_0_12_viv xst_addsub
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
YRWut+1Ea8xcMWoAmMzByb1gADAa2APjg4SV+Si8mZiPhYl7WES5BoT2f7rgabAkyISCfwZVZk11
usoZQTb1EdUJtKtJFbZSXhF6xd7lyrjGwx0f1/IswIIwmtWl1sTDwlugQTIJzK3RObXW2CKNpGqs
ZObp+H05WxTtIqnw1yBQxp2g11vVPMLAQBaWuJw8jF+nNvLjmvTgwyRCsGOmENSjjUwFTFA9Z/7t
nKRPY5+Aim5RfnZO6jA4mUxgCSYERJ7P9UWS0CK5lN4/7rLr+kzn6PqnN+Aew6Ps5QUQ6s9DWC0A
LHHhEBo3daW791TbrrUSEv3Trl6WBvInLcySiQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ajBEWS3nQUDAh+ro34g/YHrVtT6dqIPSTCZbSIiEPxYJlEo1FKLqOaSyiy8N5FFjTGeSpD+i/din
BaMlgSkayfldA5Hlr/iuFZENu+GkX0N6kkeXSYngKMaL85SabSaGp7bBn1Vyju+0f8kNsJMgz7Qc
V2/l5wqjfIm/cSKMeiHf70S6SzHLITnAysMAv186N50Az/gpm7lPI1jGVdNOLOBXUFaXLjyXHBi6
ArKJyqNxCN21D9W8ZoB5aF3dsXNSNeR7UMwXNIkSL5lrPiht+sAMHJ0WQZLTf9LmAEKLCPHjDkTI
3Ry16J1Fcc+SMOm38dSs3RK2uyG+IUnRDxLEzQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23136)
`pragma protect data_block
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
MWpHvx2t1M5RplobHgG3JJae3edqAKZn
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
