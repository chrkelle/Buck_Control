-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Jun 15 10:42:28 2018
-- Host        : EECS-Xiaomachine running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top on_time_counter -prefix
--               on_time_counter_ c_counter_binary_0_sim_netlist.vhdl
-- Design      : c_counter_binary_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50tfgg484-3
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
lfTrPE99bTQylnwLZoNCI2NttJzEdvhmNR1NQLZ2QrZiYBMvqSbfCVVPXn5zIuf4FdYxTcN4Q8Wn
KM9krGhu4g==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Y8AYFVptixj1F0Ip6Qn/tTPgXBOthlMjfFjs/GsKrsikfAiczq5CgHCbOF/FRnngvzeLk2JFTg6Y
CYvvGPAhzGpEiycRUkAPs0TRcBdfUdW1DzT7yj1njBIm4rpKwUWnr6dTppEw/EEsWxhGDgXn0qcB
sFdy8JTj5OIWig0Anpk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
MeK/JPXPYKnwazc4moh90eFYaXhTPMmsO9BAVRU8gbPXvTMAeZHQ5Qwp1Mucct9GN36hfTObs2eJ
oStPrR9ocHgxF1YuUgB5G5jdoEVUjKhxj4tJlIWNRRNe5Dg3YUcl91s2jKyC2L6vorJXQ6P0j73h
MEoityC0eSqz/ayi1BrzsnlZTbpGtjObAWmNDiFD0O+XYAZGkc2oeo9J9IOOJgue5Sc3pj7li7CA
4GxjKEqUyjMdqK51ICljEUo/hQFmr9zf3hifPdBAfv1pLUHNqnfCdiTYLg6h/Pk3Kb5xdLyoCeKe
ksRbm4g8ys5kNPsR9ExuP3R1N+R46+GYoVNaiw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
M1F15Brno+uiocqg3xE9f57UsdmPd5QDXfCHwXCVWUSgkqEqcqC8SW6qW6148zAZYtuYgbVpy54C
s4AqC3gf+gpb8kOktXeS1HJGKT2C9HVvgLSojToPbLEyWGlZWx1a0s4Uvyl0AgFwNf9mv3iEcW3V
MldiDpQRmBJsLcoRL22i+snaG/5J2bxSdcpYsSlP7Ue2oQ/z1jSNShSkQlmgGxyp9ZXGQ5j1tIq3
S0Gd8KpHCB7C4E08+E9/bbLzbFpoeoCWyO1c+9LUZRM6bCstV6ADO1SpkpBbjN87F6l+p9fs5wrb
zOcViHmfuVLafWKgUztI21/NUBGD1A4Jz3Xq7g==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JqH98WvKRJ8TQ9DU9QK1sGqL1xDziqO5+VPzzrDgvAASYyCyvcUmBX2sNMNRcTPeN3ilWWdFzkHm
Mlg0+5rTZl+OeSaleZN17kg9G5CtsXteSPmEgFRn1a3Ser+F4vC4YakKRyIlSOSWfnHnpQT2woIq
8ltnlan/n5g6nXOqQgz3Qz/RRNfyhdKPk7ySJK2dWjfGl4MVEFPKMWKk01La/l15MXYABkgeGjxp
BR/kbk12e8ltHhVjG12DFqemDkzGI11is0oJO0QlU31hBLos8N1FhJNxDrMCZ8szwOGv2Qs5c54G
hrl4rJxRyTufgQWqfa2O1t50hDuv29fgnckqvg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
bIjB0gkrv0znYVN9dM6rmyX28iUIic/pfZ6aV/sE5nvwRqM0ls2ZjJfpiY6zWUfzvAvs1lWBRg+W
CUNjJecPSC2nou2GjhsruW4Hk1Djt+TNif3lpEhs0cvn/bMn0GRhnjDzNpwWfVNbQpHd+jyGnQIW
c5PEGIzV/kbD0C9WH+M=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CDTAmDi8WTFu3KFrPloWcswF3r51yz2fvMB5lVENupjUbSRH51OHIcVOwScCfb8ddFKe4ngYi+vI
eX+8IXRUg1bnX6kV337MiVCNozXlLDXMpZSX0eP8V9cUhW3PgCF1yqt4g10w0PF7dqv6FDGxQxS+
kYIrx7aLJErKsS0FFRZTmYzRvrcBhTm8ugXmW0t0JmJwYZZ6ALKFfaFXDrsz6s7OjiVQpNvCfSOG
aWLm02Au6mz0ZpuX8gZFJV5hceffq3rt7LxB4TwjkRjSor2q2XxXBcaOCDCPDyRKfnrGYPZ6anLt
Ha0j9cgONjW2s18K6fHxN/0L9A043pO5Vt4kOg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
YvttcHXnM1JFBMJLqLiZOGzwa7hzqCJLPHlW9gJKKaXZ1OPglCvpCNUyYc8zMZCZ3SK+Eo7fuTAq
SzyRrzH5PSRbpBzA4zszZ6irJdY1qCuXDGSAJ/tZ1oDoadq2+uMm+MMIPMDZr0dooDExubjJjviX
MRVEdLmZo4im0aDc0fwbydaukDXak0vmCwWEaxxyYSDw2BEXX4BLTrupyMfC/OQWzOVASRNKllrj
pOnp7/t1EKHHVFyW8CHxRgXehy05Oet1OJ8I22LZYMIZE1yxuXVCfKcULZeDaUoNaci297aSrlKN
U1RNG5x0IrEB7lN+mMe5ex3xIkBdGcT9dJlDDA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
uHjxmq2hqwdn27mk76vnefo2bIv/uagy7F0VeGOZ+FMWJCxkubEERi30W9gI7Oi+UUiO3YhZFT5F
8iQixwbVumkXsjNUnNUGN7j9EER5Md48KY2B4cNzbVpBKMIHk3D38JwafYma7j/wpsJFIyUG97YQ
fdCOMJHNcjuUJ81DMGJhEPF8vQ4giMAwuSQFCDt+oEwZ0RnAmRMK1/RA5Yqkyh5p8DnRF/4/ZbeF
Vbnle/M0Bdjms4EUflFfUFbDpiqCDIZAIGvnLtX1cOGcQVg6Bs7/GTXB5A24li22lTz12Zfd5CC1
tQkiMkg+5yPhvgThRVEU7Y3w4E+8faUaeHVfNQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15552)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity on_time_counter_c_counter_binary_v12_0_12 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 9 downto 0 );
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of on_time_counter_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of on_time_counter_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of on_time_counter_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of on_time_counter_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of on_time_counter_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_LOAD_LOW : integer;
  attribute C_LOAD_LOW of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_RESTRICT_COUNT : integer;
  attribute C_RESTRICT_COUNT of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of on_time_counter_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of on_time_counter_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_THRESH0_VALUE : string;
  attribute C_THRESH0_VALUE of on_time_counter_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of on_time_counter_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of on_time_counter_c_counter_binary_v12_0_12 : entity is 10;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of on_time_counter_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of on_time_counter_c_counter_binary_v12_0_12 : entity is "yes";
end on_time_counter_c_counter_binary_v12_0_12;

architecture STRUCTURE of on_time_counter_c_counter_binary_v12_0_12 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_i_synth_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_CE_OVERRIDES_SYNC of i_synth : label is 0;
  attribute C_FB_LATENCY of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 1;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_IMPLEMENTATION of i_synth : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_WIDTH of i_synth : label is 10;
  attribute C_XDEVICEFAMILY of i_synth : label is "artix7";
  attribute c_count_by of i_synth : label is "1";
  attribute c_count_mode of i_synth : label is 0;
  attribute c_count_to of i_synth : label is "1";
  attribute c_has_load of i_synth : label is 0;
  attribute c_has_thresh0 of i_synth : label is 0;
  attribute c_latency of i_synth : label is 1;
  attribute c_load_low of i_synth : label is 0;
  attribute c_restrict_count of i_synth : label is 0;
  attribute c_thresh0_value of i_synth : label is "1";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  THRESH0 <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_synth: entity work.on_time_counter_c_counter_binary_v12_0_12_viv
     port map (
      CE => '0',
      CLK => CLK,
      L(9 downto 0) => B"0000000000",
      LOAD => '0',
      Q(9 downto 0) => Q(9 downto 0),
      SCLR => '0',
      SINIT => SINIT,
      SSET => '0',
      THRESH0 => NLW_i_synth_THRESH0_UNCONNECTED,
      UP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity on_time_counter is
  port (
    CLK : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of on_time_counter : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of on_time_counter : entity is "c_counter_binary_0,c_counter_binary_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of on_time_counter : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of on_time_counter : entity is "c_counter_binary_v12_0_12,Vivado 2018.1";
end on_time_counter;

architecture STRUCTURE of on_time_counter is
  signal NLW_U0_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 1;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 10;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 0;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 0;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_load_low : integer;
  attribute c_load_low of U0 : label is 0;
  attribute c_restrict_count : integer;
  attribute c_restrict_count of U0 : label is 0;
  attribute c_thresh0_value : string;
  attribute c_thresh0_value of U0 : label is "1";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of SINIT : signal is "xilinx.com:signal:data:1.0 sinit_intf DATA";
  attribute x_interface_parameter of SINIT : signal is "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.on_time_counter_c_counter_binary_v12_0_12
     port map (
      CE => '1',
      CLK => CLK,
      L(9 downto 0) => B"0000000000",
      LOAD => '0',
      Q(9 downto 0) => Q(9 downto 0),
      SCLR => '0',
      SINIT => SINIT,
      SSET => '0',
      THRESH0 => NLW_U0_THRESH0_UNCONNECTED,
      UP => '1'
    );
end STRUCTURE;
