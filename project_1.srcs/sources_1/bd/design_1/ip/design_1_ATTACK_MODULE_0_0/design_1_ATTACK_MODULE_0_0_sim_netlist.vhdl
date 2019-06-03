-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jun  3 15:14:12 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ATTACK_MODULE_0_0/design_1_ATTACK_MODULE_0_0_sim_netlist.vhdl
-- Design      : design_1_ATTACK_MODULE_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR is
  port (
    condAttack : out STD_LOGIC;
    CLK : in STD_LOGIC;
    counter_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    INC_LENGTH : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INC_LOC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TO_DOMINANT : in STD_LOGIC;
    RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR : entity is "ATTACK_SIGNAL_GENERATOR";
end design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR;

architecture STRUCTURE of design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR is
  signal attack : STD_LOGIC;
  signal \attackCounter[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \attackCounter[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \attackCounter[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \attackCounter_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \attack_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \attack_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \attack_carry__0_n_3\ : STD_LOGIC;
  signal attack_carry_i_1_n_0 : STD_LOGIC;
  signal attack_carry_i_2_n_0 : STD_LOGIC;
  signal attack_carry_i_3_n_0 : STD_LOGIC;
  signal attack_carry_i_4_n_0 : STD_LOGIC;
  signal attack_carry_n_0 : STD_LOGIC;
  signal attack_carry_n_1 : STD_LOGIC;
  signal attack_carry_n_2 : STD_LOGIC;
  signal attack_carry_n_3 : STD_LOGIC;
  signal \^condattack\ : STD_LOGIC;
  signal \condAttack_i_1__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_2__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_3__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_4__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_5__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_6__0_n_0\ : STD_LOGIC;
  signal \condAttack_i_7__0_n_0\ : STD_LOGIC;
  signal condAttack_i_8_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_attack_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_attack_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_attack_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \attackCounter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \attackCounter[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \attackCounter[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \attackCounter[3]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \attackCounter[4]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \attackCounter[6]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \attackCounter[7]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \attackCounter[7]_i_3__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \condAttack_i_5__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \condAttack_i_7__0\ : label is "soft_lutpair1";
begin
  condAttack <= \^condattack\;
\attackCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \attackCounter_reg__0\(0),
      O => p_0_in(0)
    );
\attackCounter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \attackCounter_reg__0\(0),
      I1 => \attackCounter_reg__0\(1),
      O => p_0_in(1)
    );
\attackCounter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \attackCounter_reg__0\(2),
      I1 => \attackCounter_reg__0\(0),
      I2 => \attackCounter_reg__0\(1),
      O => p_0_in(2)
    );
\attackCounter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \attackCounter_reg__0\(3),
      I1 => \attackCounter_reg__0\(1),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(2),
      O => p_0_in(3)
    );
\attackCounter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \attackCounter_reg__0\(4),
      I1 => \attackCounter_reg__0\(2),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(1),
      I4 => \attackCounter_reg__0\(3),
      O => p_0_in(4)
    );
\attackCounter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \attackCounter_reg__0\(5),
      I1 => \attackCounter_reg__0\(4),
      I2 => \attackCounter_reg__0\(2),
      I3 => \attackCounter_reg__0\(0),
      I4 => \attackCounter_reg__0\(1),
      I5 => \attackCounter_reg__0\(3),
      O => \attackCounter[5]_i_1__0_n_0\
    );
\attackCounter[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \attackCounter_reg__0\(6),
      I1 => \attackCounter[7]_i_3__0_n_0\,
      I2 => \attackCounter_reg__0\(5),
      O => p_0_in(6)
    );
\attackCounter[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => TO_DOMINANT,
      I1 => RESET,
      O => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \attackCounter_reg__0\(7),
      I1 => \attackCounter_reg__0\(5),
      I2 => \attackCounter[7]_i_3__0_n_0\,
      I3 => \attackCounter_reg__0\(6),
      O => p_0_in(7)
    );
\attackCounter[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \attackCounter_reg__0\(3),
      I1 => \attackCounter_reg__0\(1),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(2),
      I4 => \attackCounter_reg__0\(4),
      O => \attackCounter[7]_i_3__0_n_0\
    );
\attackCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => \attackCounter_reg__0\(0),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(1),
      Q => \attackCounter_reg__0\(1),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(2),
      Q => \attackCounter_reg__0\(2),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(3),
      Q => \attackCounter_reg__0\(3),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(4),
      Q => \attackCounter_reg__0\(4),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \attackCounter[5]_i_1__0_n_0\,
      Q => \attackCounter_reg__0\(5),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(6),
      Q => \attackCounter_reg__0\(6),
      R => \attackCounter[7]_i_1__0_n_0\
    );
\attackCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in(7),
      Q => \attackCounter_reg__0\(7),
      R => \attackCounter[7]_i_1__0_n_0\
    );
attack_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => attack_carry_n_0,
      CO(2) => attack_carry_n_1,
      CO(1) => attack_carry_n_2,
      CO(0) => attack_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_attack_carry_O_UNCONNECTED(3 downto 0),
      S(3) => attack_carry_i_1_n_0,
      S(2) => attack_carry_i_2_n_0,
      S(1) => attack_carry_i_3_n_0,
      S(0) => attack_carry_i_4_n_0
    );
\attack_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => attack_carry_n_0,
      CO(3 downto 2) => \NLW_attack_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => attack,
      CO(0) => \attack_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_attack_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \attack_carry__0_i_1_n_0\,
      S(0) => \attack_carry__0_i_2_n_0\
    );
\attack_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(15),
      O => \attack_carry__0_i_1_n_0\
    );
\attack_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      I2 => counter_reg(14),
      O => \attack_carry__0_i_2_n_0\
    );
attack_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(9),
      I2 => counter_reg(11),
      O => attack_carry_i_1_n_0
    );
attack_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0018180082000018"
    )
        port map (
      I0 => counter_reg(8),
      I1 => INC_LOC(7),
      I2 => counter_reg(7),
      I3 => INC_LOC(5),
      I4 => INC_LOC(6),
      I5 => counter_reg(6),
      O => attack_carry_i_2_n_0
    );
attack_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => counter_reg(3),
      I1 => INC_LOC(3),
      I2 => counter_reg(5),
      I3 => INC_LOC(5),
      I4 => INC_LOC(4),
      I5 => counter_reg(4),
      O => attack_carry_i_3_n_0
    );
attack_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(0),
      I1 => INC_LOC(0),
      I2 => counter_reg(1),
      I3 => INC_LOC(1),
      I4 => INC_LOC(2),
      I5 => counter_reg(2),
      O => attack_carry_i_4_n_0
    );
\condAttack_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA8A00000000"
    )
        port map (
      I0 => \^condattack\,
      I1 => \condAttack_i_2__0_n_0\,
      I2 => \condAttack_i_3__0_n_0\,
      I3 => \condAttack_i_4__0_n_0\,
      I4 => attack,
      I5 => RESET,
      O => \condAttack_i_1__0_n_0\
    );
\condAttack_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF96F6FF6"
    )
        port map (
      I0 => INC_LENGTH(4),
      I1 => \attackCounter_reg__0\(4),
      I2 => \attackCounter_reg__0\(3),
      I3 => \condAttack_i_5__0_n_0\,
      I4 => INC_LENGTH(3),
      I5 => \condAttack_i_6__0_n_0\,
      O => \condAttack_i_2__0_n_0\
    );
\condAttack_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \attackCounter_reg__0\(5),
      I1 => \condAttack_i_7__0_n_0\,
      I2 => INC_LENGTH(5),
      O => \condAttack_i_3__0_n_0\
    );
\condAttack_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F66F9FF6"
    )
        port map (
      I0 => \attackCounter_reg__0\(7),
      I1 => INC_LENGTH(7),
      I2 => INC_LENGTH(6),
      I3 => condAttack_i_8_n_0,
      I4 => \attackCounter_reg__0\(6),
      O => \condAttack_i_4__0_n_0\
    );
\condAttack_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => INC_LENGTH(2),
      I1 => INC_LENGTH(1),
      I2 => INC_LENGTH(0),
      O => \condAttack_i_5__0_n_0\
    );
\condAttack_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF6DBBDFFFF"
    )
        port map (
      I0 => \attackCounter_reg__0\(1),
      I1 => INC_LENGTH(1),
      I2 => \attackCounter_reg__0\(2),
      I3 => INC_LENGTH(2),
      I4 => INC_LENGTH(0),
      I5 => \attackCounter_reg__0\(0),
      O => \condAttack_i_6__0_n_0\
    );
\condAttack_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => INC_LENGTH(4),
      I1 => INC_LENGTH(2),
      I2 => INC_LENGTH(1),
      I3 => INC_LENGTH(0),
      I4 => INC_LENGTH(3),
      O => \condAttack_i_7__0_n_0\
    );
condAttack_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => INC_LENGTH(5),
      I1 => INC_LENGTH(3),
      I2 => INC_LENGTH(0),
      I3 => INC_LENGTH(1),
      I4 => INC_LENGTH(2),
      I5 => INC_LENGTH(4),
      O => condAttack_i_8_n_0
    );
condAttack_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \condAttack_i_1__0_n_0\,
      Q => \^condattack\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0 is
  port (
    DEBUG : out STD_LOGIC;
    CLK : in STD_LOGIC;
    counter_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TO_RECESSIVE : in STD_LOGIC;
    RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0 : entity is "ATTACK_SIGNAL_GENERATOR";
end design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0;

architecture STRUCTURE of design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0 is
  signal \^debug\ : STD_LOGIC;
  signal attack : STD_LOGIC;
  signal \attackCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \attackCounter[7]_i_3_n_0\ : STD_LOGIC;
  signal \attackCounter_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal condAttack_i_1_n_0 : STD_LOGIC;
  signal condAttack_i_2_n_0 : STD_LOGIC;
  signal condAttack_i_4_n_0 : STD_LOGIC;
  signal condAttack_i_5_n_0 : STD_LOGIC;
  signal condAttack_i_6_n_0 : STD_LOGIC;
  signal condAttack_i_7_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \attackCounter[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \attackCounter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \attackCounter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \attackCounter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \attackCounter[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \attackCounter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \attackCounter[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of condAttack_i_4 : label is "soft_lutpair6";
begin
  DEBUG <= \^debug\;
\attackCounter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \attackCounter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\attackCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \attackCounter_reg__0\(0),
      I1 => \attackCounter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\attackCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \attackCounter_reg__0\(2),
      I1 => \attackCounter_reg__0\(0),
      I2 => \attackCounter_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\attackCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \attackCounter_reg__0\(3),
      I1 => \attackCounter_reg__0\(1),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\attackCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \attackCounter_reg__0\(4),
      I1 => \attackCounter_reg__0\(2),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(1),
      I4 => \attackCounter_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\attackCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \attackCounter_reg__0\(3),
      I1 => \attackCounter_reg__0\(1),
      I2 => \attackCounter_reg__0\(0),
      I3 => \attackCounter_reg__0\(2),
      I4 => \attackCounter_reg__0\(4),
      I5 => \attackCounter_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\attackCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \attackCounter_reg__0\(6),
      I1 => \attackCounter[7]_i_3_n_0\,
      O => \p_0_in__0\(6)
    );
\attackCounter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => TO_RECESSIVE,
      I1 => RESET,
      O => \attackCounter[7]_i_1_n_0\
    );
\attackCounter[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \attackCounter_reg__0\(7),
      I1 => \attackCounter[7]_i_3_n_0\,
      I2 => \attackCounter_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\attackCounter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \attackCounter_reg__0\(5),
      I1 => \attackCounter_reg__0\(4),
      I2 => \attackCounter_reg__0\(2),
      I3 => \attackCounter_reg__0\(0),
      I4 => \attackCounter_reg__0\(1),
      I5 => \attackCounter_reg__0\(3),
      O => \attackCounter[7]_i_3_n_0\
    );
\attackCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \attackCounter_reg__0\(0),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \attackCounter_reg__0\(1),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \attackCounter_reg__0\(2),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \attackCounter_reg__0\(3),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \attackCounter_reg__0\(4),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \attackCounter_reg__0\(5),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \attackCounter_reg__0\(6),
      R => \attackCounter[7]_i_1_n_0\
    );
\attackCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \attackCounter_reg__0\(7),
      R => \attackCounter[7]_i_1_n_0\
    );
condAttack_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^debug\,
      I1 => condAttack_i_2_n_0,
      I2 => attack,
      I3 => RESET,
      O => condAttack_i_1_n_0
    );
condAttack_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \attackCounter_reg__0\(4),
      I1 => \attackCounter_reg__0\(6),
      I2 => \attackCounter_reg__0\(3),
      I3 => \attackCounter_reg__0\(2),
      I4 => condAttack_i_4_n_0,
      O => condAttack_i_2_n_0
    );
condAttack_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => condAttack_i_5_n_0,
      I1 => condAttack_i_6_n_0,
      I2 => condAttack_i_7_n_0,
      I3 => counter_reg(12),
      I4 => counter_reg(13),
      I5 => counter_reg(14),
      O => attack
    );
condAttack_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \attackCounter_reg__0\(1),
      I1 => \attackCounter_reg__0\(0),
      I2 => \attackCounter_reg__0\(7),
      I3 => \attackCounter_reg__0\(5),
      O => condAttack_i_4_n_0
    );
condAttack_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(3),
      I2 => counter_reg(1),
      I3 => counter_reg(4),
      I4 => counter_reg(0),
      I5 => counter_reg(5),
      O => condAttack_i_5_n_0
    );
condAttack_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(9),
      I2 => counter_reg(10),
      O => condAttack_i_6_n_0
    );
condAttack_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(7),
      I2 => counter_reg(2),
      I3 => counter_reg(15),
      O => condAttack_i_7_n_0
    );
condAttack_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => condAttack_i_1_n_0,
      Q => \^debug\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ATTACK_MODULE_0_0_ATTACK_MODULE is
  port (
    DEBUG : out STD_LOGIC;
    condAttack : out STD_LOGIC;
    CLK : in STD_LOGIC;
    INC_LENGTH : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INC_LOC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RESET : in STD_LOGIC;
    ATTACK_STATE : in STD_LOGIC;
    TO_RECESSIVE : in STD_LOGIC;
    TO_DOMINANT : in STD_LOGIC
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
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
forgery: entity work.design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR
     port map (
      CLK => CLK,
      INC_LENGTH(7 downto 0) => INC_LENGTH(7 downto 0),
      INC_LOC(7 downto 0) => INC_LOC(7 downto 0),
      RESET => RESET,
      TO_DOMINANT => TO_DOMINANT,
      condAttack => condAttack,
      counter_reg(15 downto 0) => counter_reg(15 downto 0)
    );
resyn: entity work.design_1_ATTACK_MODULE_0_0_ATTACK_SIGNAL_GENERATOR_0
     port map (
      CLK => CLK,
      DEBUG => DEBUG,
      RESET => RESET,
      TO_RECESSIVE => TO_RECESSIVE,
      counter_reg(15 downto 0) => counter_reg(15 downto 0)
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
  signal \^debug\ : STD_LOGIC;
  signal condAttack : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DEBUG <= \^debug\;
TO_DOMINANT_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => condAttack,
      O => TO_DOMINANT
    );
TO_RECESSIVE_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^debug\,
      O => TO_RECESSIVE
    );
inst: entity work.design_1_ATTACK_MODULE_0_0_ATTACK_MODULE
     port map (
      ATTACK_STATE => ATTACK_STATE,
      CLK => CLK,
      DEBUG => \^debug\,
      INC_LENGTH(7 downto 0) => INC_LENGTH(7 downto 0),
      INC_LOC(7 downto 0) => INC_LOC(7 downto 0),
      RESET => RESET,
      TO_DOMINANT => TO_DOMINANT,
      TO_RECESSIVE => TO_RECESSIVE,
      condAttack => condAttack
    );
end STRUCTURE;
