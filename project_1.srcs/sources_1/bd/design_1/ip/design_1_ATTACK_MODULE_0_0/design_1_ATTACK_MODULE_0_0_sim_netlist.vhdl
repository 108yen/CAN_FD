-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Dec 12 15:42:03 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ATTACK_MODULE_0_0/design_1_ATTACK_MODULE_0_0_sim_netlist.vhdl
-- Design      : design_1_ATTACK_MODULE_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ATTACK_MODULE_0_0_ATTACK_MODULE is
  port (
    TO_DOMINANT : inout STD_LOGIC;
    TO_RECESSIVE : inout STD_LOGIC;
    RESET : in STD_LOGIC;
    CLK : in STD_LOGIC;
    ATTACK_STATE : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ATTACK_MODULE_0_0_ATTACK_MODULE : entity is "ATTACK_MODULE";
end design_1_ATTACK_MODULE_0_0_ATTACK_MODULE;

architecture STRUCTURE of design_1_ATTACK_MODULE_0_0_ATTACK_MODULE is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal dominant : STD_LOGIC;
  signal dominant_i_10_n_0 : STD_LOGIC;
  signal dominant_i_11_n_0 : STD_LOGIC;
  signal dominant_i_12_n_0 : STD_LOGIC;
  signal dominant_i_13_n_0 : STD_LOGIC;
  signal dominant_i_14_n_0 : STD_LOGIC;
  signal dominant_i_15_n_0 : STD_LOGIC;
  signal dominant_i_16_n_0 : STD_LOGIC;
  signal dominant_i_17_n_0 : STD_LOGIC;
  signal dominant_i_18_n_0 : STD_LOGIC;
  signal dominant_i_19_n_0 : STD_LOGIC;
  signal dominant_i_1_n_0 : STD_LOGIC;
  signal dominant_i_20_n_0 : STD_LOGIC;
  signal dominant_i_2_n_0 : STD_LOGIC;
  signal dominant_i_4_n_0 : STD_LOGIC;
  signal dominant_i_5_n_0 : STD_LOGIC;
  signal dominant_i_6_n_0 : STD_LOGIC;
  signal dominant_i_7_n_0 : STD_LOGIC;
  signal dominant_i_8_n_0 : STD_LOGIC;
  signal dominant_i_9_n_0 : STD_LOGIC;
  signal recessive : STD_LOGIC;
  signal recessive_i_10_n_0 : STD_LOGIC;
  signal recessive_i_11_n_0 : STD_LOGIC;
  signal recessive_i_12_n_0 : STD_LOGIC;
  signal recessive_i_13_n_0 : STD_LOGIC;
  signal recessive_i_14_n_0 : STD_LOGIC;
  signal recessive_i_15_n_0 : STD_LOGIC;
  signal recessive_i_16_n_0 : STD_LOGIC;
  signal recessive_i_17_n_0 : STD_LOGIC;
  signal recessive_i_18_n_0 : STD_LOGIC;
  signal recessive_i_19_n_0 : STD_LOGIC;
  signal recessive_i_1_n_0 : STD_LOGIC;
  signal recessive_i_20_n_0 : STD_LOGIC;
  signal recessive_i_21_n_0 : STD_LOGIC;
  signal recessive_i_2_n_0 : STD_LOGIC;
  signal recessive_i_4_n_0 : STD_LOGIC;
  signal recessive_i_5_n_0 : STD_LOGIC;
  signal recessive_i_6_n_0 : STD_LOGIC;
  signal recessive_i_7_n_0 : STD_LOGIC;
  signal recessive_i_8_n_0 : STD_LOGIC;
  signal recessive_i_9_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dominant_i_10 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dominant_i_11 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dominant_i_12 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of dominant_i_13 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of dominant_i_14 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of dominant_i_15 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of dominant_i_16 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of dominant_i_19 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of dominant_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of recessive_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of recessive_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of recessive_i_14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of recessive_i_15 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of recessive_i_16 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of recessive_i_17 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of recessive_i_19 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of recessive_i_20 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of recessive_i_21 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of recessive_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of recessive_i_9 : label is "soft_lutpair7";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => RESET,
      I1 => ATTACK_STATE,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_3_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
dominant_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => dominant_i_2_n_0,
      I1 => TO_DOMINANT,
      I2 => dominant,
      I3 => RESET,
      O => dominant_i_1_n_0
    );
dominant_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFEBF"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(8),
      I2 => counter_reg(6),
      I3 => counter_reg(5),
      I4 => counter_reg(3),
      O => dominant_i_10_n_0
    );
dominant_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      O => dominant_i_11_n_0
    );
dominant_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1081"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(8),
      I2 => counter_reg(9),
      I3 => counter_reg(7),
      O => dominant_i_12_n_0
    );
dominant_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0120"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(4),
      I2 => counter_reg(6),
      I3 => counter_reg(5),
      O => dominant_i_13_n_0
    );
dominant_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1801"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(9),
      I2 => counter_reg(5),
      I3 => counter_reg(7),
      O => dominant_i_14_n_0
    );
dominant_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      O => dominant_i_15_n_0
    );
dominant_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04840280"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(6),
      I3 => counter_reg(7),
      I4 => counter_reg(5),
      O => dominant_i_16_n_0
    );
dominant_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04E0"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      I2 => counter_reg(2),
      I3 => counter_reg(7),
      O => dominant_i_17_n_0
    );
dominant_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(4),
      I2 => counter_reg(10),
      I3 => counter_reg(9),
      I4 => counter_reg(8),
      I5 => counter_reg(1),
      O => dominant_i_18_n_0
    );
dominant_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      O => dominant_i_19_n_0
    );
dominant_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A2A0AA0802000"
    )
        port map (
      I0 => dominant_i_4_n_0,
      I1 => counter_reg(1),
      I2 => counter_reg(0),
      I3 => dominant_i_5_n_0,
      I4 => dominant_i_6_n_0,
      I5 => dominant_i_7_n_0,
      O => dominant_i_2_n_0
    );
dominant_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000004000010"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(3),
      I2 => counter_reg(4),
      I3 => counter_reg(9),
      I4 => counter_reg(8),
      I5 => counter_reg(5),
      O => dominant_i_20_n_0
    );
dominant_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"332003A0C1C1C1F5"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(5),
      I2 => counter_reg(2),
      I3 => counter_reg(7),
      I4 => counter_reg(4),
      I5 => counter_reg(3),
      O => dominant
    );
dominant_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      I3 => counter_reg(15),
      I4 => counter_reg(14),
      O => dominant_i_4_n_0
    );
dominant_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888888888888"
    )
        port map (
      I0 => dominant_i_8_n_0,
      I1 => dominant_i_9_n_0,
      I2 => dominant_i_10_n_0,
      I3 => counter_reg(2),
      I4 => counter_reg(7),
      I5 => dominant_i_11_n_0,
      O => dominant_i_5_n_0
    );
dominant_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0000088000000"
    )
        port map (
      I0 => dominant_i_12_n_0,
      I1 => dominant_i_13_n_0,
      I2 => dominant_i_14_n_0,
      I3 => counter_reg(2),
      I4 => dominant_i_15_n_0,
      I5 => dominant_i_16_n_0,
      O => dominant_i_6_n_0
    );
dominant_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88888888888888"
    )
        port map (
      I0 => dominant_i_17_n_0,
      I1 => dominant_i_18_n_0,
      I2 => counter_reg(2),
      I3 => dominant_i_19_n_0,
      I4 => dominant_i_15_n_0,
      I5 => dominant_i_20_n_0,
      O => dominant_i_7_n_0
    );
dominant_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009080002C01004"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(7),
      I2 => counter_reg(5),
      I3 => counter_reg(6),
      I4 => counter_reg(4),
      I5 => counter_reg(3),
      O => dominant_i_8_n_0
    );
dominant_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1800"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(8),
      I2 => counter_reg(10),
      I3 => counter_reg(2),
      O => dominant_i_9_n_0
    );
dominant_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dominant_i_1_n_0,
      Q => TO_DOMINANT,
      R => '0'
    );
recessive_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => recessive_i_2_n_0,
      I1 => TO_RECESSIVE,
      I2 => recessive,
      I3 => RESET,
      O => recessive_i_1_n_0
    );
recessive_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(8),
      I2 => counter_reg(9),
      I3 => counter_reg(7),
      I4 => counter_reg(6),
      O => recessive_i_10_n_0
    );
recessive_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(8),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => counter_reg(7),
      I5 => counter_reg(6),
      O => recessive_i_11_n_0
    );
recessive_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(9),
      I2 => counter_reg(2),
      O => recessive_i_12_n_0
    );
recessive_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFDFFFFFFFF7FF"
    )
        port map (
      I0 => counter_reg(5),
      I1 => counter_reg(6),
      I2 => counter_reg(4),
      I3 => counter_reg(9),
      I4 => counter_reg(10),
      I5 => counter_reg(7),
      O => recessive_i_13_n_0
    );
recessive_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      O => recessive_i_14_n_0
    );
recessive_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => recessive_i_15_n_0
    );
recessive_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400440"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(5),
      I2 => counter_reg(9),
      I3 => counter_reg(7),
      I4 => counter_reg(8),
      O => recessive_i_16_n_0
    );
recessive_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C000042"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(4),
      I2 => counter_reg(6),
      I3 => counter_reg(8),
      I4 => counter_reg(3),
      O => recessive_i_17_n_0
    );
recessive_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000004"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(2),
      I2 => counter_reg(7),
      I3 => counter_reg(6),
      I4 => counter_reg(9),
      O => recessive_i_18_n_0
    );
recessive_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C100"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(5),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      O => recessive_i_19_n_0
    );
recessive_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AA80AA80"
    )
        port map (
      I0 => dominant_i_4_n_0,
      I1 => recessive_i_4_n_0,
      I2 => recessive_i_5_n_0,
      I3 => recessive_i_6_n_0,
      I4 => recessive_i_7_n_0,
      I5 => recessive_i_8_n_0,
      O => recessive_i_2_n_0
    );
recessive_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F66F"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => counter_reg(6),
      I3 => counter_reg(4),
      O => recessive_i_20_n_0
    );
recessive_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFFAC"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      I3 => counter_reg(6),
      I4 => counter_reg(5),
      O => recessive_i_21_n_0
    );
recessive_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202F7F7F20207575"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(3),
      I2 => counter_reg(4),
      I3 => counter_reg(5),
      I4 => counter_reg(1),
      I5 => counter_reg(2),
      O => recessive
    );
recessive_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => recessive_i_4_n_0
    );
recessive_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => recessive_i_9_n_0,
      I1 => recessive_i_10_n_0,
      I2 => recessive_i_11_n_0,
      I3 => recessive_i_12_n_0,
      I4 => recessive_i_13_n_0,
      I5 => recessive_i_14_n_0,
      O => recessive_i_5_n_0
    );
recessive_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800080008000"
    )
        port map (
      I0 => dominant_i_15_n_0,
      I1 => recessive_i_15_n_0,
      I2 => recessive_i_16_n_0,
      I3 => recessive_i_17_n_0,
      I4 => recessive_i_18_n_0,
      I5 => recessive_i_19_n_0,
      O => recessive_i_6_n_0
    );
recessive_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00440F00"
    )
        port map (
      I0 => recessive_i_20_n_0,
      I1 => counter_reg(5),
      I2 => recessive_i_21_n_0,
      I3 => counter_reg(1),
      I4 => counter_reg(7),
      O => recessive_i_7_n_0
    );
recessive_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002200020202000"
    )
        port map (
      I0 => dominant_i_11_n_0,
      I1 => counter_reg(0),
      I2 => counter_reg(8),
      I3 => counter_reg(6),
      I4 => counter_reg(3),
      I5 => counter_reg(7),
      O => recessive_i_8_n_0
    );
recessive_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(5),
      I3 => counter_reg(2),
      O => recessive_i_9_n_0
    );
recessive_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => recessive_i_1_n_0,
      Q => TO_RECESSIVE,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ATTACK_MODULE_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ATTACK_STATE : in STD_LOGIC;
    INC_LENGTH : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INC_LOC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TO_DOMINANT : inout STD_LOGIC;
    TO_RECESSIVE : inout STD_LOGIC;
    INC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DEBUG : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ATTACK_MODULE_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ATTACK_MODULE_0_0 : entity is "design_1_ATTACK_MODULE_0_0,ATTACK_MODULE,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ATTACK_MODULE_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ATTACK_MODULE_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ATTACK_MODULE_0_0 : entity is "ATTACK_MODULE,Vivado 2018.3";
end design_1_ATTACK_MODULE_0_0;

architecture STRUCTURE of design_1_ATTACK_MODULE_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^inc_length\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^inc_loc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  INC(31) <= \<const0>\;
  INC(30) <= \<const0>\;
  INC(29) <= \<const0>\;
  INC(28) <= \<const0>\;
  INC(27) <= \<const0>\;
  INC(26) <= \<const0>\;
  INC(25) <= \<const0>\;
  INC(24) <= \<const0>\;
  INC(23) <= \<const0>\;
  INC(22) <= \<const0>\;
  INC(21) <= \<const0>\;
  INC(20) <= \<const0>\;
  INC(19) <= \<const0>\;
  INC(18) <= \<const0>\;
  INC(17) <= \<const0>\;
  INC(16) <= \<const0>\;
  INC(15 downto 8) <= \^inc_length\(7 downto 0);
  INC(7 downto 0) <= \^inc_loc\(7 downto 0);
  \^inc_length\(7 downto 0) <= INC_LENGTH(7 downto 0);
  \^inc_loc\(7 downto 0) <= INC_LOC(7 downto 0);
  DEBUG <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_ATTACK_MODULE_0_0_ATTACK_MODULE
     port map (
      ATTACK_STATE => ATTACK_STATE,
      CLK => CLK,
      RESET => RESET,
      TO_DOMINANT => TO_DOMINANT,
      TO_RECESSIVE => TO_RECESSIVE
    );
end STRUCTURE;
