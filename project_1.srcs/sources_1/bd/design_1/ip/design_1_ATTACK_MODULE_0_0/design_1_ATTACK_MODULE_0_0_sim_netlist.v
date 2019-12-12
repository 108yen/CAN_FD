// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec 12 15:42:03 2019
// Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ATTACK_MODULE_0_0/design_1_ATTACK_MODULE_0_0_sim_netlist.v
// Design      : design_1_ATTACK_MODULE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ATTACK_MODULE_0_0,ATTACK_MODULE,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ATTACK_MODULE,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ATTACK_MODULE_0_0
   (CLK,
    RESET,
    ATTACK_STATE,
    INC_LENGTH,
    INC_LOC,
    TO_DOMINANT,
    TO_RECESSIVE,
    INC,
    DEBUG);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input ATTACK_STATE;
  input [7:0]INC_LENGTH;
  input [7:0]INC_LOC;
  inout TO_DOMINANT;
  inout TO_RECESSIVE;
  output [31:0]INC;
  output DEBUG;

  wire \<const0> ;
  wire ATTACK_STATE;
  wire CLK;
  wire [7:0]INC_LENGTH;
  wire [7:0]INC_LOC;
  wire RESET;
  wire TO_DOMINANT;
  wire TO_RECESSIVE;

  assign INC[31] = \<const0> ;
  assign INC[30] = \<const0> ;
  assign INC[29] = \<const0> ;
  assign INC[28] = \<const0> ;
  assign INC[27] = \<const0> ;
  assign INC[26] = \<const0> ;
  assign INC[25] = \<const0> ;
  assign INC[24] = \<const0> ;
  assign INC[23] = \<const0> ;
  assign INC[22] = \<const0> ;
  assign INC[21] = \<const0> ;
  assign INC[20] = \<const0> ;
  assign INC[19] = \<const0> ;
  assign INC[18] = \<const0> ;
  assign INC[17] = \<const0> ;
  assign INC[16] = \<const0> ;
  assign INC[15:8] = INC_LENGTH;
  assign INC[7:0] = INC_LOC;
  GND GND
       (.G(\<const0> ));
  design_1_ATTACK_MODULE_0_0_ATTACK_MODULE inst
       (.ATTACK_STATE(ATTACK_STATE),
        .CLK(CLK),
        .RESET(RESET),
        .TO_DOMINANT(TO_DOMINANT),
        .TO_RECESSIVE(TO_RECESSIVE));
endmodule

(* ORIG_REF_NAME = "ATTACK_MODULE" *) 
module design_1_ATTACK_MODULE_0_0_ATTACK_MODULE
   (TO_DOMINANT,
    TO_RECESSIVE,
    RESET,
    CLK,
    ATTACK_STATE);
  inout TO_DOMINANT;
  inout TO_RECESSIVE;
  input RESET;
  input CLK;
  input ATTACK_STATE;

  wire ATTACK_STATE;
  wire CLK;
  wire RESET;
  wire TO_DOMINANT;
  wire TO_RECESSIVE;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire dominant;
  wire dominant_i_10_n_0;
  wire dominant_i_11_n_0;
  wire dominant_i_12_n_0;
  wire dominant_i_13_n_0;
  wire dominant_i_14_n_0;
  wire dominant_i_15_n_0;
  wire dominant_i_16_n_0;
  wire dominant_i_17_n_0;
  wire dominant_i_18_n_0;
  wire dominant_i_19_n_0;
  wire dominant_i_1_n_0;
  wire dominant_i_20_n_0;
  wire dominant_i_2_n_0;
  wire dominant_i_4_n_0;
  wire dominant_i_5_n_0;
  wire dominant_i_6_n_0;
  wire dominant_i_7_n_0;
  wire dominant_i_8_n_0;
  wire dominant_i_9_n_0;
  wire recessive;
  wire recessive_i_10_n_0;
  wire recessive_i_11_n_0;
  wire recessive_i_12_n_0;
  wire recessive_i_13_n_0;
  wire recessive_i_14_n_0;
  wire recessive_i_15_n_0;
  wire recessive_i_16_n_0;
  wire recessive_i_17_n_0;
  wire recessive_i_18_n_0;
  wire recessive_i_19_n_0;
  wire recessive_i_1_n_0;
  wire recessive_i_20_n_0;
  wire recessive_i_21_n_0;
  wire recessive_i_2_n_0;
  wire recessive_i_4_n_0;
  wire recessive_i_5_n_0;
  wire recessive_i_6_n_0;
  wire recessive_i_7_n_0;
  wire recessive_i_8_n_0;
  wire recessive_i_9_n_0;
  wire [3:3]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    \counter[0]_i_1 
       (.I0(RESET),
        .I1(ATTACK_STATE),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3],\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE4FF)) 
    dominant_i_1
       (.I0(dominant_i_2_n_0),
        .I1(TO_DOMINANT),
        .I2(dominant),
        .I3(RESET),
        .O(dominant_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FFFEBF)) 
    dominant_i_10
       (.I0(counter_reg[4]),
        .I1(counter_reg[8]),
        .I2(counter_reg[6]),
        .I3(counter_reg[5]),
        .I4(counter_reg[3]),
        .O(dominant_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dominant_i_11
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .O(dominant_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1081)) 
    dominant_i_12
       (.I0(counter_reg[6]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(counter_reg[7]),
        .O(dominant_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0120)) 
    dominant_i_13
       (.I0(counter_reg[3]),
        .I1(counter_reg[4]),
        .I2(counter_reg[6]),
        .I3(counter_reg[5]),
        .O(dominant_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1801)) 
    dominant_i_14
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .O(dominant_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    dominant_i_15
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .O(dominant_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04840280)) 
    dominant_i_16
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(counter_reg[5]),
        .O(dominant_i_16_n_0));
  LUT4 #(
    .INIT(16'h04E0)) 
    dominant_i_17
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[2]),
        .I3(counter_reg[7]),
        .O(dominant_i_17_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    dominant_i_18
       (.I0(counter_reg[3]),
        .I1(counter_reg[4]),
        .I2(counter_reg[10]),
        .I3(counter_reg[9]),
        .I4(counter_reg[8]),
        .I5(counter_reg[1]),
        .O(dominant_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dominant_i_19
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(dominant_i_19_n_0));
  LUT6 #(
    .INIT(64'hAA8A2A0AA0802000)) 
    dominant_i_2
       (.I0(dominant_i_4_n_0),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(dominant_i_5_n_0),
        .I4(dominant_i_6_n_0),
        .I5(dominant_i_7_n_0),
        .O(dominant_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000000004000010)) 
    dominant_i_20
       (.I0(counter_reg[1]),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[9]),
        .I4(counter_reg[8]),
        .I5(counter_reg[5]),
        .O(dominant_i_20_n_0));
  LUT6 #(
    .INIT(64'h332003A0C1C1C1F5)) 
    dominant_i_3
       (.I0(counter_reg[1]),
        .I1(counter_reg[5]),
        .I2(counter_reg[2]),
        .I3(counter_reg[7]),
        .I4(counter_reg[4]),
        .I5(counter_reg[3]),
        .O(dominant));
  LUT5 #(
    .INIT(32'h00000001)) 
    dominant_i_4
       (.I0(counter_reg[11]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(counter_reg[15]),
        .I4(counter_reg[14]),
        .O(dominant_i_4_n_0));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    dominant_i_5
       (.I0(dominant_i_8_n_0),
        .I1(dominant_i_9_n_0),
        .I2(dominant_i_10_n_0),
        .I3(counter_reg[2]),
        .I4(counter_reg[7]),
        .I5(dominant_i_11_n_0),
        .O(dominant_i_5_n_0));
  LUT6 #(
    .INIT(64'h88F0000088000000)) 
    dominant_i_6
       (.I0(dominant_i_12_n_0),
        .I1(dominant_i_13_n_0),
        .I2(dominant_i_14_n_0),
        .I3(counter_reg[2]),
        .I4(dominant_i_15_n_0),
        .I5(dominant_i_16_n_0),
        .O(dominant_i_6_n_0));
  LUT6 #(
    .INIT(64'h8F88888888888888)) 
    dominant_i_7
       (.I0(dominant_i_17_n_0),
        .I1(dominant_i_18_n_0),
        .I2(counter_reg[2]),
        .I3(dominant_i_19_n_0),
        .I4(dominant_i_15_n_0),
        .I5(dominant_i_20_n_0),
        .O(dominant_i_7_n_0));
  LUT6 #(
    .INIT(64'h0009080002C01004)) 
    dominant_i_8
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .I4(counter_reg[4]),
        .I5(counter_reg[3]),
        .O(dominant_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1800)) 
    dominant_i_9
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[10]),
        .I3(counter_reg[2]),
        .O(dominant_i_9_n_0));
  FDRE dominant_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dominant_i_1_n_0),
        .Q(TO_DOMINANT),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE4FF)) 
    recessive_i_1
       (.I0(recessive_i_2_n_0),
        .I1(TO_RECESSIVE),
        .I2(recessive),
        .I3(RESET),
        .O(recessive_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    recessive_i_10
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(counter_reg[7]),
        .I4(counter_reg[6]),
        .O(recessive_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    recessive_i_11
       (.I0(counter_reg[5]),
        .I1(counter_reg[8]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(counter_reg[7]),
        .I5(counter_reg[6]),
        .O(recessive_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    recessive_i_12
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[2]),
        .O(recessive_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFEFDFFFFFFFF7FF)) 
    recessive_i_13
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[9]),
        .I4(counter_reg[10]),
        .I5(counter_reg[7]),
        .O(recessive_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    recessive_i_14
       (.I0(counter_reg[8]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .O(recessive_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    recessive_i_15
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(recessive_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400440)) 
    recessive_i_16
       (.I0(counter_reg[2]),
        .I1(counter_reg[5]),
        .I2(counter_reg[9]),
        .I3(counter_reg[7]),
        .I4(counter_reg[8]),
        .O(recessive_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3C000042)) 
    recessive_i_17
       (.I0(counter_reg[7]),
        .I1(counter_reg[4]),
        .I2(counter_reg[6]),
        .I3(counter_reg[8]),
        .I4(counter_reg[3]),
        .O(recessive_i_17_n_0));
  LUT5 #(
    .INIT(32'h40000004)) 
    recessive_i_18
       (.I0(counter_reg[8]),
        .I1(counter_reg[2]),
        .I2(counter_reg[7]),
        .I3(counter_reg[6]),
        .I4(counter_reg[9]),
        .O(recessive_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC100)) 
    recessive_i_19
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .O(recessive_i_19_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA80AA80AA80)) 
    recessive_i_2
       (.I0(dominant_i_4_n_0),
        .I1(recessive_i_4_n_0),
        .I2(recessive_i_5_n_0),
        .I3(recessive_i_6_n_0),
        .I4(recessive_i_7_n_0),
        .I5(recessive_i_8_n_0),
        .O(recessive_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF66F)) 
    recessive_i_20
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[6]),
        .I3(counter_reg[4]),
        .O(recessive_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFDFDFFAC)) 
    recessive_i_21
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[6]),
        .I4(counter_reg[5]),
        .O(recessive_i_21_n_0));
  LUT6 #(
    .INIT(64'h202F7F7F20207575)) 
    recessive_i_3
       (.I0(counter_reg[6]),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .I4(counter_reg[1]),
        .I5(counter_reg[2]),
        .O(recessive));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    recessive_i_4
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(recessive_i_4_n_0));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    recessive_i_5
       (.I0(recessive_i_9_n_0),
        .I1(recessive_i_10_n_0),
        .I2(recessive_i_11_n_0),
        .I3(recessive_i_12_n_0),
        .I4(recessive_i_13_n_0),
        .I5(recessive_i_14_n_0),
        .O(recessive_i_5_n_0));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    recessive_i_6
       (.I0(dominant_i_15_n_0),
        .I1(recessive_i_15_n_0),
        .I2(recessive_i_16_n_0),
        .I3(recessive_i_17_n_0),
        .I4(recessive_i_18_n_0),
        .I5(recessive_i_19_n_0),
        .O(recessive_i_6_n_0));
  LUT5 #(
    .INIT(32'h00440F00)) 
    recessive_i_7
       (.I0(recessive_i_20_n_0),
        .I1(counter_reg[5]),
        .I2(recessive_i_21_n_0),
        .I3(counter_reg[1]),
        .I4(counter_reg[7]),
        .O(recessive_i_7_n_0));
  LUT6 #(
    .INIT(64'h2002200020202000)) 
    recessive_i_8
       (.I0(dominant_i_11_n_0),
        .I1(counter_reg[0]),
        .I2(counter_reg[8]),
        .I3(counter_reg[6]),
        .I4(counter_reg[3]),
        .I5(counter_reg[7]),
        .O(recessive_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    recessive_i_9
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[5]),
        .I3(counter_reg[2]),
        .O(recessive_i_9_n_0));
  FDRE recessive_reg
       (.C(CLK),
        .CE(1'b1),
        .D(recessive_i_1_n_0),
        .Q(TO_RECESSIVE),
        .R(1'b0));
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
