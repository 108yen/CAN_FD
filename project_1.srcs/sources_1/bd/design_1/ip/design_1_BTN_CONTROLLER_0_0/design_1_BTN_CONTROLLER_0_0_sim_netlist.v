// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jun 14 18:43:15 2019
// Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_BTN_CONTROLLER_0_0/design_1_BTN_CONTROLLER_0_0_sim_netlist.v
// Design      : design_1_BTN_CONTROLLER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_BTN_CONTROLLER_0_0,BTN_CONTROLLER,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BTN_CONTROLLER,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_BTN_CONTROLLER_0_0
   (CLK,
    RESET,
    BTN_0,
    BTN_1,
    BTN_2,
    BTN_0_COUNTER,
    BTN_1_COUNTER);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input BTN_0;
  input BTN_1;
  input BTN_2;
  output [7:0]BTN_0_COUNTER;
  output [7:0]BTN_1_COUNTER;

  wire BTN_0;
  wire [7:0]BTN_0_COUNTER;
  wire BTN_1;
  wire [7:0]BTN_1_COUNTER;
  wire BTN_2;
  wire CLK;
  wire RESET;

  design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER inst
       (.BTN_0(BTN_0),
        .BTN_0_COUNTER(BTN_0_COUNTER),
        .BTN_1(BTN_1),
        .\BTN_1_COUNTER_reg[0]_0 (BTN_1_COUNTER[0]),
        .BTN_2(BTN_2),
        .CLK(CLK),
        .Q(BTN_1_COUNTER[7:1]),
        .RESET(RESET));
endmodule

(* ORIG_REF_NAME = "BTN_CONTROLLER" *) 
module design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER
   (\BTN_1_COUNTER_reg[0]_0 ,
    Q,
    BTN_0_COUNTER,
    CLK,
    BTN_0,
    BTN_2,
    BTN_1,
    RESET);
  output \BTN_1_COUNTER_reg[0]_0 ;
  output [6:0]Q;
  output [7:0]BTN_0_COUNTER;
  input CLK;
  input BTN_0;
  input BTN_2;
  input BTN_1;
  input RESET;

  wire BTN_0;
  wire [7:0]BTN_0_COUNTER;
  wire \BTN_0_COUNTER[7]_i_1_n_0 ;
  wire \BTN_0_COUNTER[7]_i_2_n_0 ;
  wire \BTN_0_COUNTER[7]_i_4_n_0 ;
  wire \BTN_0_reg_reg_n_0_[1] ;
  wire BTN_1;
  wire \BTN_1_COUNTER[0]_i_1_n_0 ;
  wire \BTN_1_COUNTER[0]_i_2_n_0 ;
  wire \BTN_1_COUNTER[7]_i_1_n_0 ;
  wire \BTN_1_COUNTER[7]_i_2_n_0 ;
  wire \BTN_1_COUNTER[7]_i_4_n_0 ;
  wire \BTN_1_COUNTER_reg[0]_0 ;
  wire [1:0]BTN_1_reg;
  wire BTN_2;
  wire \BTN_2_reg_reg_n_0_[1] ;
  wire CLK;
  wire [6:0]Q;
  wire RESET;
  wire [7:0]p_0_in;
  wire [1:1]p_1_in;
  wire [1:1]p_1_in__0;
  wire [7:1]p_2_in;

  LUT1 #(
    .INIT(2'h1)) 
    \BTN_0_COUNTER[0]_i_1 
       (.I0(BTN_0_COUNTER[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BTN_0_COUNTER[1]_i_1 
       (.I0(BTN_0_COUNTER[0]),
        .I1(BTN_0_COUNTER[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BTN_0_COUNTER[2]_i_1 
       (.I0(BTN_0_COUNTER[0]),
        .I1(BTN_0_COUNTER[1]),
        .I2(BTN_0_COUNTER[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \BTN_0_COUNTER[3]_i_1 
       (.I0(BTN_0_COUNTER[1]),
        .I1(BTN_0_COUNTER[0]),
        .I2(BTN_0_COUNTER[2]),
        .I3(BTN_0_COUNTER[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \BTN_0_COUNTER[4]_i_1 
       (.I0(BTN_0_COUNTER[2]),
        .I1(BTN_0_COUNTER[0]),
        .I2(BTN_0_COUNTER[1]),
        .I3(BTN_0_COUNTER[3]),
        .I4(BTN_0_COUNTER[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \BTN_0_COUNTER[5]_i_1 
       (.I0(BTN_0_COUNTER[3]),
        .I1(BTN_0_COUNTER[1]),
        .I2(BTN_0_COUNTER[0]),
        .I3(BTN_0_COUNTER[2]),
        .I4(BTN_0_COUNTER[4]),
        .I5(BTN_0_COUNTER[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BTN_0_COUNTER[6]_i_1 
       (.I0(\BTN_0_COUNTER[7]_i_4_n_0 ),
        .I1(BTN_0_COUNTER[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00D0FFFF)) 
    \BTN_0_COUNTER[7]_i_1 
       (.I0(p_1_in),
        .I1(\BTN_0_reg_reg_n_0_[1] ),
        .I2(p_1_in__0),
        .I3(\BTN_2_reg_reg_n_0_[1] ),
        .I4(RESET),
        .O(\BTN_0_COUNTER[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \BTN_0_COUNTER[7]_i_2 
       (.I0(p_1_in),
        .I1(\BTN_0_reg_reg_n_0_[1] ),
        .O(\BTN_0_COUNTER[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BTN_0_COUNTER[7]_i_3 
       (.I0(\BTN_0_COUNTER[7]_i_4_n_0 ),
        .I1(BTN_0_COUNTER[6]),
        .I2(BTN_0_COUNTER[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BTN_0_COUNTER[7]_i_4 
       (.I0(BTN_0_COUNTER[5]),
        .I1(BTN_0_COUNTER[3]),
        .I2(BTN_0_COUNTER[1]),
        .I3(BTN_0_COUNTER[0]),
        .I4(BTN_0_COUNTER[2]),
        .I5(BTN_0_COUNTER[4]),
        .O(\BTN_0_COUNTER[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[0] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(BTN_0_COUNTER[0]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[1] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(BTN_0_COUNTER[1]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[2] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(BTN_0_COUNTER[2]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[3] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(BTN_0_COUNTER[3]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[4] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(BTN_0_COUNTER[4]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[5] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(BTN_0_COUNTER[5]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[6] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(BTN_0_COUNTER[6]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_0_COUNTER_reg[7] 
       (.C(CLK),
        .CE(\BTN_0_COUNTER[7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(BTN_0_COUNTER[7]),
        .R(\BTN_0_COUNTER[7]_i_1_n_0 ));
  FDRE \BTN_0_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(BTN_0),
        .Q(p_1_in),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
  FDRE \BTN_0_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\BTN_0_reg_reg_n_0_[1] ),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BTN_1_COUNTER[0]_i_1 
       (.I0(RESET),
        .O(\BTN_1_COUNTER[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB0B4444)) 
    \BTN_1_COUNTER[0]_i_2 
       (.I0(BTN_1_reg[1]),
        .I1(BTN_1_reg[0]),
        .I2(p_1_in__0),
        .I3(\BTN_2_reg_reg_n_0_[1] ),
        .I4(\BTN_1_COUNTER_reg[0]_0 ),
        .O(\BTN_1_COUNTER[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BTN_1_COUNTER[1]_i_1 
       (.I0(\BTN_1_COUNTER_reg[0]_0 ),
        .I1(Q[0]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BTN_1_COUNTER[2]_i_1 
       (.I0(\BTN_1_COUNTER_reg[0]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \BTN_1_COUNTER[3]_i_1 
       (.I0(Q[0]),
        .I1(\BTN_1_COUNTER_reg[0]_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \BTN_1_COUNTER[4]_i_1 
       (.I0(Q[1]),
        .I1(\BTN_1_COUNTER_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \BTN_1_COUNTER[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\BTN_1_COUNTER_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BTN_1_COUNTER[6]_i_1 
       (.I0(\BTN_1_COUNTER[7]_i_4_n_0 ),
        .I1(Q[5]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'h5555DF55)) 
    \BTN_1_COUNTER[7]_i_1 
       (.I0(RESET),
        .I1(BTN_1_reg[1]),
        .I2(BTN_1_reg[0]),
        .I3(p_1_in__0),
        .I4(\BTN_2_reg_reg_n_0_[1] ),
        .O(\BTN_1_COUNTER[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \BTN_1_COUNTER[7]_i_2 
       (.I0(BTN_1_reg[0]),
        .I1(BTN_1_reg[1]),
        .O(\BTN_1_COUNTER[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \BTN_1_COUNTER[7]_i_3 
       (.I0(\BTN_1_COUNTER[7]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BTN_1_COUNTER[7]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\BTN_1_COUNTER_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\BTN_1_COUNTER[7]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\BTN_1_COUNTER[0]_i_2_n_0 ),
        .Q(\BTN_1_COUNTER_reg[0]_0 ),
        .S(\BTN_1_COUNTER[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[1] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[0]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[2] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[1]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[3] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[2]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[4] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[3]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[5] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[4]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[6] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[5]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BTN_1_COUNTER_reg[7] 
       (.C(CLK),
        .CE(\BTN_1_COUNTER[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[6]),
        .R(\BTN_1_COUNTER[7]_i_1_n_0 ));
  FDRE \BTN_1_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(BTN_1),
        .Q(BTN_1_reg[0]),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
  FDRE \BTN_1_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(BTN_1_reg[0]),
        .Q(BTN_1_reg[1]),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
  FDRE \BTN_2_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(BTN_2),
        .Q(p_1_in__0),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
  FDRE \BTN_2_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in__0),
        .Q(\BTN_2_reg_reg_n_0_[1] ),
        .R(\BTN_1_COUNTER[0]_i_1_n_0 ));
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
