-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 27 23:39:21 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_BTN_CONTROLLER_0_0/design_1_BTN_CONTROLLER_0_0_sim_netlist.vhdl
-- Design      : design_1_BTN_CONTROLLER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER is
  port (
    \BTN_1_COUNTER_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    BTN_0_COUNTER : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    BTN_0 : in STD_LOGIC;
    BTN_2 : in STD_LOGIC;
    BTN_1 : in STD_LOGIC;
    RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER : entity is "BTN_CONTROLLER";
end design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER;

architecture STRUCTURE of design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER is
  signal \^btn_0_counter\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BTN_0_COUNTER[7]_i_1_n_0\ : STD_LOGIC;
  signal \BTN_0_COUNTER[7]_i_2_n_0\ : STD_LOGIC;
  signal \BTN_0_COUNTER[7]_i_4_n_0\ : STD_LOGIC;
  signal \BTN_0_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \BTN_1_COUNTER[0]_i_1_n_0\ : STD_LOGIC;
  signal \BTN_1_COUNTER[0]_i_2_n_0\ : STD_LOGIC;
  signal \BTN_1_COUNTER[7]_i_1_n_0\ : STD_LOGIC;
  signal \BTN_1_COUNTER[7]_i_2_n_0\ : STD_LOGIC;
  signal \BTN_1_COUNTER[7]_i_4_n_0\ : STD_LOGIC;
  signal \^btn_1_counter_reg[0]_0\ : STD_LOGIC;
  signal BTN_1_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \BTN_2_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \BTN_0_COUNTER[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \BTN_1_COUNTER[7]_i_3\ : label is "soft_lutpair4";
begin
  BTN_0_COUNTER(7 downto 0) <= \^btn_0_counter\(7 downto 0);
  \BTN_1_COUNTER_reg[0]_0\ <= \^btn_1_counter_reg[0]_0\;
  Q(6 downto 0) <= \^q\(6 downto 0);
\BTN_0_COUNTER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^btn_0_counter\(0),
      O => p_0_in(0)
    );
\BTN_0_COUNTER[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^btn_0_counter\(0),
      I1 => \^btn_0_counter\(1),
      O => p_0_in(1)
    );
\BTN_0_COUNTER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^btn_0_counter\(0),
      I1 => \^btn_0_counter\(1),
      I2 => \^btn_0_counter\(2),
      O => p_0_in(2)
    );
\BTN_0_COUNTER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^btn_0_counter\(1),
      I1 => \^btn_0_counter\(0),
      I2 => \^btn_0_counter\(2),
      I3 => \^btn_0_counter\(3),
      O => p_0_in(3)
    );
\BTN_0_COUNTER[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^btn_0_counter\(2),
      I1 => \^btn_0_counter\(0),
      I2 => \^btn_0_counter\(1),
      I3 => \^btn_0_counter\(3),
      I4 => \^btn_0_counter\(4),
      O => p_0_in(4)
    );
\BTN_0_COUNTER[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^btn_0_counter\(3),
      I1 => \^btn_0_counter\(1),
      I2 => \^btn_0_counter\(0),
      I3 => \^btn_0_counter\(2),
      I4 => \^btn_0_counter\(4),
      I5 => \^btn_0_counter\(5),
      O => p_0_in(5)
    );
\BTN_0_COUNTER[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BTN_0_COUNTER[7]_i_4_n_0\,
      I1 => \^btn_0_counter\(6),
      O => p_0_in(6)
    );
\BTN_0_COUNTER[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0FFFF"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \BTN_0_reg_reg_n_0_[1]\,
      I2 => \p_1_in__0\(1),
      I3 => \BTN_2_reg_reg_n_0_[1]\,
      I4 => RESET,
      O => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(1),
      I1 => \BTN_0_reg_reg_n_0_[1]\,
      O => \BTN_0_COUNTER[7]_i_2_n_0\
    );
\BTN_0_COUNTER[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \BTN_0_COUNTER[7]_i_4_n_0\,
      I1 => \^btn_0_counter\(6),
      I2 => \^btn_0_counter\(7),
      O => p_0_in(7)
    );
\BTN_0_COUNTER[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^btn_0_counter\(5),
      I1 => \^btn_0_counter\(3),
      I2 => \^btn_0_counter\(1),
      I3 => \^btn_0_counter\(0),
      I4 => \^btn_0_counter\(2),
      I5 => \^btn_0_counter\(4),
      O => \BTN_0_COUNTER[7]_i_4_n_0\
    );
\BTN_0_COUNTER_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^btn_0_counter\(0),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^btn_0_counter\(1),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^btn_0_counter\(2),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^btn_0_counter\(3),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => \^btn_0_counter\(4),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => \^btn_0_counter\(5),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(6),
      Q => \^btn_0_counter\(6),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_COUNTER_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_0_COUNTER[7]_i_2_n_0\,
      D => p_0_in(7),
      Q => \^btn_0_counter\(7),
      R => \BTN_0_COUNTER[7]_i_1_n_0\
    );
\BTN_0_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => BTN_0,
      Q => p_1_in(1),
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_0_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in(1),
      Q => \BTN_0_reg_reg_n_0_[1]\,
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_1_COUNTER[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_1_COUNTER[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB0B4444"
    )
        port map (
      I0 => BTN_1_reg(1),
      I1 => BTN_1_reg(0),
      I2 => \p_1_in__0\(1),
      I3 => \BTN_2_reg_reg_n_0_[1]\,
      I4 => \^btn_1_counter_reg[0]_0\,
      O => \BTN_1_COUNTER[0]_i_2_n_0\
    );
\BTN_1_COUNTER[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^btn_1_counter_reg[0]_0\,
      I1 => \^q\(0),
      O => p_2_in(1)
    );
\BTN_1_COUNTER[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^btn_1_counter_reg[0]_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => p_2_in(2)
    );
\BTN_1_COUNTER[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^btn_1_counter_reg[0]_0\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => p_2_in(3)
    );
\BTN_1_COUNTER[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^btn_1_counter_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => p_2_in(4)
    );
\BTN_1_COUNTER[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^btn_1_counter_reg[0]_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => p_2_in(5)
    );
\BTN_1_COUNTER[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BTN_1_COUNTER[7]_i_4_n_0\,
      I1 => \^q\(5),
      O => p_2_in(6)
    );
\BTN_1_COUNTER[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555DF55"
    )
        port map (
      I0 => RESET,
      I1 => BTN_1_reg(1),
      I2 => BTN_1_reg(0),
      I3 => \p_1_in__0\(1),
      I4 => \BTN_2_reg_reg_n_0_[1]\,
      O => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => BTN_1_reg(0),
      I1 => BTN_1_reg(1),
      O => \BTN_1_COUNTER[7]_i_2_n_0\
    );
\BTN_1_COUNTER[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \BTN_1_COUNTER[7]_i_4_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      O => p_2_in(7)
    );
\BTN_1_COUNTER[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^btn_1_counter_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \BTN_1_COUNTER[7]_i_4_n_0\
    );
\BTN_1_COUNTER_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \BTN_1_COUNTER[0]_i_2_n_0\,
      Q => \^btn_1_counter_reg[0]_0\,
      S => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^q\(0),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^q\(1),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^q\(2),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(4),
      Q => \^q\(3),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(5),
      Q => \^q\(4),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(6),
      Q => \^q\(5),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_COUNTER_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \BTN_1_COUNTER[7]_i_2_n_0\,
      D => p_2_in(7),
      Q => \^q\(6),
      R => \BTN_1_COUNTER[7]_i_1_n_0\
    );
\BTN_1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => BTN_1,
      Q => BTN_1_reg(0),
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => BTN_1_reg(0),
      Q => BTN_1_reg(1),
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => BTN_2,
      Q => \p_1_in__0\(1),
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
\BTN_2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => \BTN_2_reg_reg_n_0_[1]\,
      R => \BTN_1_COUNTER[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BTN_CONTROLLER_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    BTN_0 : in STD_LOGIC;
    BTN_1 : in STD_LOGIC;
    BTN_2 : in STD_LOGIC;
    BTN_0_COUNTER : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BTN_1_COUNTER : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_BTN_CONTROLLER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_BTN_CONTROLLER_0_0 : entity is "design_1_BTN_CONTROLLER_0_0,BTN_CONTROLLER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_BTN_CONTROLLER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_BTN_CONTROLLER_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_BTN_CONTROLLER_0_0 : entity is "BTN_CONTROLLER,Vivado 2018.3";
end design_1_BTN_CONTROLLER_0_0;

architecture STRUCTURE of design_1_BTN_CONTROLLER_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_BTN_CONTROLLER_0_0_BTN_CONTROLLER
     port map (
      BTN_0 => BTN_0,
      BTN_0_COUNTER(7 downto 0) => BTN_0_COUNTER(7 downto 0),
      BTN_1 => BTN_1,
      \BTN_1_COUNTER_reg[0]_0\ => BTN_1_COUNTER(0),
      BTN_2 => BTN_2,
      CLK => CLK,
      Q(6 downto 0) => BTN_1_COUNTER(7 downto 1),
      RESET => RESET
    );
end STRUCTURE;
