-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 27 23:39:21 2019
-- Host        : DESKTOP-NTANC38 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/car_security/vivado/CAN_FD/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_MODULE_CONTROLLER_0_0/design_1_MODULE_CONTROLLER_0_0_sim_netlist.vhdl
-- Design      : design_1_MODULE_CONTROLLER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[107]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[95]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[83]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[71]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \BUS_MSG_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ATTACK_PERMIT_0 : out STD_LOGIC;
    STATE_reg : out STD_LOGIC;
    ATTACK_PERMIT : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    state : in STD_LOGIC;
    ATTACK_STATE : in STD_LOGIC;
    TRIGER : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CAN_SIGNAL_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER : entity is "BUS_MSG_OBSERVER";
end design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER is
  signal \BUS_MSG_reg_n_0_[107]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 107 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ATTACK_STATE_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of TRIGER_i_2 : label is "soft_lutpair0";
begin
\ATTACK_STATE2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(24),
      I1 => p_1_in(23),
      I2 => p_1_in(22),
      O => \BUS_MSG_reg[23]_0\(3)
    );
\ATTACK_STATE2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(21),
      I1 => p_1_in(20),
      I2 => p_1_in(19),
      O => \BUS_MSG_reg[23]_0\(2)
    );
\ATTACK_STATE2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_1_in(17),
      I2 => p_1_in(16),
      O => \BUS_MSG_reg[23]_0\(1)
    );
\ATTACK_STATE2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_1_in(13),
      I1 => p_1_in(15),
      I2 => p_1_in(14),
      O => \BUS_MSG_reg[23]_0\(0)
    );
\ATTACK_STATE2_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(36),
      I1 => p_1_in(35),
      I2 => p_1_in(34),
      O => \BUS_MSG_reg[35]_0\(3)
    );
\ATTACK_STATE2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(33),
      I1 => p_1_in(32),
      I2 => p_1_in(31),
      O => \BUS_MSG_reg[35]_0\(2)
    );
\ATTACK_STATE2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(30),
      I1 => p_1_in(29),
      I2 => p_1_in(28),
      O => \BUS_MSG_reg[35]_0\(1)
    );
\ATTACK_STATE2_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(27),
      I1 => p_1_in(26),
      I2 => p_1_in(25),
      O => \BUS_MSG_reg[35]_0\(0)
    );
\ATTACK_STATE2_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(48),
      I1 => p_1_in(47),
      I2 => p_1_in(46),
      O => \BUS_MSG_reg[47]_0\(3)
    );
\ATTACK_STATE2_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(45),
      I1 => p_1_in(44),
      I2 => p_1_in(43),
      O => \BUS_MSG_reg[47]_0\(2)
    );
\ATTACK_STATE2_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(42),
      I1 => p_1_in(41),
      I2 => p_1_in(40),
      O => \BUS_MSG_reg[47]_0\(1)
    );
\ATTACK_STATE2_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(39),
      I1 => p_1_in(38),
      I2 => p_1_in(37),
      O => \BUS_MSG_reg[47]_0\(0)
    );
\ATTACK_STATE2_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(60),
      I1 => p_1_in(59),
      I2 => p_1_in(58),
      O => \BUS_MSG_reg[59]_0\(3)
    );
\ATTACK_STATE2_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(57),
      I1 => p_1_in(56),
      I2 => p_1_in(55),
      O => \BUS_MSG_reg[59]_0\(2)
    );
\ATTACK_STATE2_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(54),
      I1 => p_1_in(53),
      I2 => p_1_in(52),
      O => \BUS_MSG_reg[59]_0\(1)
    );
\ATTACK_STATE2_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(51),
      I1 => p_1_in(50),
      I2 => p_1_in(49),
      O => \BUS_MSG_reg[59]_0\(0)
    );
\ATTACK_STATE2_carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(72),
      I1 => p_1_in(71),
      I2 => p_1_in(70),
      O => \BUS_MSG_reg[71]_0\(3)
    );
\ATTACK_STATE2_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(69),
      I1 => p_1_in(68),
      I2 => p_1_in(67),
      O => \BUS_MSG_reg[71]_0\(2)
    );
\ATTACK_STATE2_carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(66),
      I1 => p_1_in(65),
      I2 => p_1_in(64),
      O => \BUS_MSG_reg[71]_0\(1)
    );
\ATTACK_STATE2_carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(63),
      I1 => p_1_in(62),
      I2 => p_1_in(61),
      O => \BUS_MSG_reg[71]_0\(0)
    );
\ATTACK_STATE2_carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(84),
      I1 => p_1_in(83),
      I2 => p_1_in(82),
      O => \BUS_MSG_reg[83]_0\(3)
    );
\ATTACK_STATE2_carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(81),
      I1 => p_1_in(80),
      I2 => p_1_in(79),
      O => \BUS_MSG_reg[83]_0\(2)
    );
\ATTACK_STATE2_carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(78),
      I1 => p_1_in(77),
      I2 => p_1_in(76),
      O => \BUS_MSG_reg[83]_0\(1)
    );
\ATTACK_STATE2_carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(75),
      I1 => p_1_in(74),
      I2 => p_1_in(73),
      O => \BUS_MSG_reg[83]_0\(0)
    );
\ATTACK_STATE2_carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(96),
      I1 => p_1_in(95),
      I2 => p_1_in(94),
      O => \BUS_MSG_reg[95]_0\(3)
    );
\ATTACK_STATE2_carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(93),
      I1 => p_1_in(92),
      I2 => p_1_in(91),
      O => \BUS_MSG_reg[95]_0\(2)
    );
\ATTACK_STATE2_carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(90),
      I1 => p_1_in(89),
      I2 => p_1_in(88),
      O => \BUS_MSG_reg[95]_0\(1)
    );
\ATTACK_STATE2_carry__6_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(87),
      I1 => p_1_in(86),
      I2 => p_1_in(85),
      O => \BUS_MSG_reg[95]_0\(0)
    );
\ATTACK_STATE2_carry__7_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \BUS_MSG_reg_n_0_[107]\,
      I1 => p_1_in(107),
      I2 => p_1_in(106),
      O => \BUS_MSG_reg[107]_0\(3)
    );
\ATTACK_STATE2_carry__7_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(105),
      I1 => p_1_in(104),
      I2 => p_1_in(103),
      O => \BUS_MSG_reg[107]_0\(2)
    );
\ATTACK_STATE2_carry__7_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(102),
      I1 => p_1_in(101),
      I2 => p_1_in(100),
      O => \BUS_MSG_reg[107]_0\(1)
    );
\ATTACK_STATE2_carry__7_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(99),
      I1 => p_1_in(98),
      I2 => p_1_in(97),
      O => \BUS_MSG_reg[107]_0\(0)
    );
ATTACK_STATE2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_1_in(12),
      I1 => p_1_in(11),
      I2 => p_1_in(10),
      O => S(3)
    );
ATTACK_STATE2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_1_in(9),
      I1 => p_1_in(8),
      I2 => p_1_in(7),
      O => S(2)
    );
ATTACK_STATE2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(6),
      I2 => p_1_in(5),
      O => S(1)
    );
ATTACK_STATE2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(2),
      I2 => p_1_in(1),
      O => S(0)
    );
ATTACK_STATE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ATTACK_PERMIT,
      I1 => CO(0),
      I2 => state,
      I3 => ATTACK_STATE,
      O => ATTACK_PERMIT_0
    );
\BUS_MSG_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => CAN_SIGNAL_IN,
      Q => p_1_in(1),
      S => SR(0)
    );
\BUS_MSG_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(100),
      Q => p_1_in(101),
      R => SR(0)
    );
\BUS_MSG_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(101),
      Q => p_1_in(102),
      R => SR(0)
    );
\BUS_MSG_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(102),
      Q => p_1_in(103),
      R => SR(0)
    );
\BUS_MSG_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(103),
      Q => p_1_in(104),
      R => SR(0)
    );
\BUS_MSG_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(104),
      Q => p_1_in(105),
      R => SR(0)
    );
\BUS_MSG_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(105),
      Q => p_1_in(106),
      R => SR(0)
    );
\BUS_MSG_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(106),
      Q => p_1_in(107),
      R => SR(0)
    );
\BUS_MSG_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(107),
      Q => \BUS_MSG_reg_n_0_[107]\,
      R => SR(0)
    );
\BUS_MSG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(10),
      Q => p_1_in(11),
      R => SR(0)
    );
\BUS_MSG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(11),
      Q => p_1_in(12),
      R => SR(0)
    );
\BUS_MSG_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(12),
      Q => p_1_in(13),
      R => SR(0)
    );
\BUS_MSG_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(13),
      Q => p_1_in(14),
      R => SR(0)
    );
\BUS_MSG_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(14),
      Q => p_1_in(15),
      R => SR(0)
    );
\BUS_MSG_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(15),
      Q => p_1_in(16),
      R => SR(0)
    );
\BUS_MSG_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(16),
      Q => p_1_in(17),
      R => SR(0)
    );
\BUS_MSG_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(17),
      Q => p_1_in(18),
      R => SR(0)
    );
\BUS_MSG_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(18),
      Q => p_1_in(19),
      R => SR(0)
    );
\BUS_MSG_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(19),
      Q => p_1_in(20),
      R => SR(0)
    );
\BUS_MSG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(1),
      Q => p_1_in(2),
      R => SR(0)
    );
\BUS_MSG_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(20),
      Q => p_1_in(21),
      R => SR(0)
    );
\BUS_MSG_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(21),
      Q => p_1_in(22),
      R => SR(0)
    );
\BUS_MSG_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(22),
      Q => p_1_in(23),
      R => SR(0)
    );
\BUS_MSG_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(23),
      Q => p_1_in(24),
      R => SR(0)
    );
\BUS_MSG_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(24),
      Q => p_1_in(25),
      R => SR(0)
    );
\BUS_MSG_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(25),
      Q => p_1_in(26),
      R => SR(0)
    );
\BUS_MSG_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(26),
      Q => p_1_in(27),
      R => SR(0)
    );
\BUS_MSG_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(27),
      Q => p_1_in(28),
      R => SR(0)
    );
\BUS_MSG_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(28),
      Q => p_1_in(29),
      R => SR(0)
    );
\BUS_MSG_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(29),
      Q => p_1_in(30),
      R => SR(0)
    );
\BUS_MSG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(2),
      Q => p_1_in(3),
      R => SR(0)
    );
\BUS_MSG_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(30),
      Q => p_1_in(31),
      R => SR(0)
    );
\BUS_MSG_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(31),
      Q => p_1_in(32),
      R => SR(0)
    );
\BUS_MSG_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(32),
      Q => p_1_in(33),
      R => SR(0)
    );
\BUS_MSG_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(33),
      Q => p_1_in(34),
      R => SR(0)
    );
\BUS_MSG_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(34),
      Q => p_1_in(35),
      R => SR(0)
    );
\BUS_MSG_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(35),
      Q => p_1_in(36),
      R => SR(0)
    );
\BUS_MSG_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(36),
      Q => p_1_in(37),
      R => SR(0)
    );
\BUS_MSG_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(37),
      Q => p_1_in(38),
      R => SR(0)
    );
\BUS_MSG_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(38),
      Q => p_1_in(39),
      R => SR(0)
    );
\BUS_MSG_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(39),
      Q => p_1_in(40),
      R => SR(0)
    );
\BUS_MSG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(3),
      Q => p_1_in(4),
      R => SR(0)
    );
\BUS_MSG_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(40),
      Q => p_1_in(41),
      R => SR(0)
    );
\BUS_MSG_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(41),
      Q => p_1_in(42),
      R => SR(0)
    );
\BUS_MSG_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(42),
      Q => p_1_in(43),
      R => SR(0)
    );
\BUS_MSG_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(43),
      Q => p_1_in(44),
      R => SR(0)
    );
\BUS_MSG_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(44),
      Q => p_1_in(45),
      R => SR(0)
    );
\BUS_MSG_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(45),
      Q => p_1_in(46),
      R => SR(0)
    );
\BUS_MSG_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(46),
      Q => p_1_in(47),
      R => SR(0)
    );
\BUS_MSG_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(47),
      Q => p_1_in(48),
      R => SR(0)
    );
\BUS_MSG_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(48),
      Q => p_1_in(49),
      R => SR(0)
    );
\BUS_MSG_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(49),
      Q => p_1_in(50),
      R => SR(0)
    );
\BUS_MSG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(4),
      Q => p_1_in(5),
      R => SR(0)
    );
\BUS_MSG_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(50),
      Q => p_1_in(51),
      R => SR(0)
    );
\BUS_MSG_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(51),
      Q => p_1_in(52),
      R => SR(0)
    );
\BUS_MSG_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(52),
      Q => p_1_in(53),
      R => SR(0)
    );
\BUS_MSG_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(53),
      Q => p_1_in(54),
      R => SR(0)
    );
\BUS_MSG_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(54),
      Q => p_1_in(55),
      R => SR(0)
    );
\BUS_MSG_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(55),
      Q => p_1_in(56),
      R => SR(0)
    );
\BUS_MSG_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(56),
      Q => p_1_in(57),
      R => SR(0)
    );
\BUS_MSG_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(57),
      Q => p_1_in(58),
      R => SR(0)
    );
\BUS_MSG_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(58),
      Q => p_1_in(59),
      R => SR(0)
    );
\BUS_MSG_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(59),
      Q => p_1_in(60),
      R => SR(0)
    );
\BUS_MSG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(5),
      Q => p_1_in(6),
      R => SR(0)
    );
\BUS_MSG_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(60),
      Q => p_1_in(61),
      R => SR(0)
    );
\BUS_MSG_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(61),
      Q => p_1_in(62),
      R => SR(0)
    );
\BUS_MSG_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(62),
      Q => p_1_in(63),
      R => SR(0)
    );
\BUS_MSG_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(63),
      Q => p_1_in(64),
      R => SR(0)
    );
\BUS_MSG_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(64),
      Q => p_1_in(65),
      R => SR(0)
    );
\BUS_MSG_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(65),
      Q => p_1_in(66),
      R => SR(0)
    );
\BUS_MSG_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(66),
      Q => p_1_in(67),
      R => SR(0)
    );
\BUS_MSG_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(67),
      Q => p_1_in(68),
      R => SR(0)
    );
\BUS_MSG_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(68),
      Q => p_1_in(69),
      R => SR(0)
    );
\BUS_MSG_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(69),
      Q => p_1_in(70),
      R => SR(0)
    );
\BUS_MSG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(6),
      Q => p_1_in(7),
      R => SR(0)
    );
\BUS_MSG_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(70),
      Q => p_1_in(71),
      R => SR(0)
    );
\BUS_MSG_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(71),
      Q => p_1_in(72),
      R => SR(0)
    );
\BUS_MSG_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(72),
      Q => p_1_in(73),
      R => SR(0)
    );
\BUS_MSG_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(73),
      Q => p_1_in(74),
      R => SR(0)
    );
\BUS_MSG_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(74),
      Q => p_1_in(75),
      R => SR(0)
    );
\BUS_MSG_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(75),
      Q => p_1_in(76),
      R => SR(0)
    );
\BUS_MSG_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(76),
      Q => p_1_in(77),
      R => SR(0)
    );
\BUS_MSG_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(77),
      Q => p_1_in(78),
      R => SR(0)
    );
\BUS_MSG_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(78),
      Q => p_1_in(79),
      R => SR(0)
    );
\BUS_MSG_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(79),
      Q => p_1_in(80),
      R => SR(0)
    );
\BUS_MSG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(7),
      Q => p_1_in(8),
      R => SR(0)
    );
\BUS_MSG_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(80),
      Q => p_1_in(81),
      R => SR(0)
    );
\BUS_MSG_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(81),
      Q => p_1_in(82),
      R => SR(0)
    );
\BUS_MSG_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(82),
      Q => p_1_in(83),
      R => SR(0)
    );
\BUS_MSG_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(83),
      Q => p_1_in(84),
      R => SR(0)
    );
\BUS_MSG_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(84),
      Q => p_1_in(85),
      R => SR(0)
    );
\BUS_MSG_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(85),
      Q => p_1_in(86),
      R => SR(0)
    );
\BUS_MSG_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(86),
      Q => p_1_in(87),
      R => SR(0)
    );
\BUS_MSG_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(87),
      Q => p_1_in(88),
      R => SR(0)
    );
\BUS_MSG_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(88),
      Q => p_1_in(89),
      R => SR(0)
    );
\BUS_MSG_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(89),
      Q => p_1_in(90),
      R => SR(0)
    );
\BUS_MSG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(8),
      Q => p_1_in(9),
      R => SR(0)
    );
\BUS_MSG_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(90),
      Q => p_1_in(91),
      R => SR(0)
    );
\BUS_MSG_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(91),
      Q => p_1_in(92),
      R => SR(0)
    );
\BUS_MSG_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(92),
      Q => p_1_in(93),
      R => SR(0)
    );
\BUS_MSG_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(93),
      Q => p_1_in(94),
      R => SR(0)
    );
\BUS_MSG_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(94),
      Q => p_1_in(95),
      R => SR(0)
    );
\BUS_MSG_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(95),
      Q => p_1_in(96),
      R => SR(0)
    );
\BUS_MSG_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(96),
      Q => p_1_in(97),
      R => SR(0)
    );
\BUS_MSG_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(97),
      Q => p_1_in(98),
      R => SR(0)
    );
\BUS_MSG_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(98),
      Q => p_1_in(99),
      R => SR(0)
    );
\BUS_MSG_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(99),
      Q => p_1_in(100),
      R => SR(0)
    );
\BUS_MSG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(9),
      Q => p_1_in(10),
      R => SR(0)
    );
TRIGER_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => CO(0),
      I1 => state,
      I2 => TRIGER,
      O => STATE_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0_MSG_FILTER is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ATTACK_STATE : out STD_LOGIC;
    TRIGER : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ATTACK_STATE2_carry__7_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ATTACK_STATE_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in : in STD_LOGIC;
    ATTACK_STATE_reg_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    TRIGER_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MODULE_CONTROLLER_0_0_MSG_FILTER : entity is "MSG_FILTER";
end design_1_MODULE_CONTROLLER_0_0_MSG_FILTER;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0_MSG_FILTER is
  signal \ATTACK_STATE2_carry__0_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__0_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__0_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__0_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__1_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__1_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__1_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__1_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__2_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__2_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__2_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__2_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__3_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__3_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__3_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__3_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__4_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__4_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__4_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__4_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__5_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__5_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__5_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__5_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__6_n_0\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__6_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__6_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__6_n_3\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__7_n_1\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__7_n_2\ : STD_LOGIC;
  signal \ATTACK_STATE2_carry__7_n_3\ : STD_LOGIC;
  signal ATTACK_STATE2_carry_n_0 : STD_LOGIC;
  signal ATTACK_STATE2_carry_n_1 : STD_LOGIC;
  signal ATTACK_STATE2_carry_n_2 : STD_LOGIC;
  signal ATTACK_STATE2_carry_n_3 : STD_LOGIC;
  signal NLW_ATTACK_STATE2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ATTACK_STATE2_carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
ATTACK_STATE2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ATTACK_STATE2_carry_n_0,
      CO(2) => ATTACK_STATE2_carry_n_1,
      CO(1) => ATTACK_STATE2_carry_n_2,
      CO(0) => ATTACK_STATE2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ATTACK_STATE2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\ATTACK_STATE2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ATTACK_STATE2_carry_n_0,
      CO(3) => \ATTACK_STATE2_carry__0_n_0\,
      CO(2) => \ATTACK_STATE2_carry__0_n_1\,
      CO(1) => \ATTACK_STATE2_carry__0_n_2\,
      CO(0) => \ATTACK_STATE2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__1_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__0_n_0\,
      CO(3) => \ATTACK_STATE2_carry__1_n_0\,
      CO(2) => \ATTACK_STATE2_carry__1_n_1\,
      CO(1) => \ATTACK_STATE2_carry__1_n_2\,
      CO(0) => \ATTACK_STATE2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__2_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__1_n_0\,
      CO(3) => \ATTACK_STATE2_carry__2_n_0\,
      CO(2) => \ATTACK_STATE2_carry__2_n_1\,
      CO(1) => \ATTACK_STATE2_carry__2_n_2\,
      CO(0) => \ATTACK_STATE2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__3_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__2_n_0\,
      CO(3) => \ATTACK_STATE2_carry__3_n_0\,
      CO(2) => \ATTACK_STATE2_carry__3_n_1\,
      CO(1) => \ATTACK_STATE2_carry__3_n_2\,
      CO(0) => \ATTACK_STATE2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__4_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__3_n_0\,
      CO(3) => \ATTACK_STATE2_carry__4_n_0\,
      CO(2) => \ATTACK_STATE2_carry__4_n_1\,
      CO(1) => \ATTACK_STATE2_carry__4_n_2\,
      CO(0) => \ATTACK_STATE2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__5_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__4_n_0\,
      CO(3) => \ATTACK_STATE2_carry__5_n_0\,
      CO(2) => \ATTACK_STATE2_carry__5_n_1\,
      CO(1) => \ATTACK_STATE2_carry__5_n_2\,
      CO(0) => \ATTACK_STATE2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__6_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__5_n_0\,
      CO(3) => \ATTACK_STATE2_carry__6_n_0\,
      CO(2) => \ATTACK_STATE2_carry__6_n_1\,
      CO(1) => \ATTACK_STATE2_carry__6_n_2\,
      CO(0) => \ATTACK_STATE2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ATTACK_STATE2_carry__7_0\(3 downto 0)
    );
\ATTACK_STATE2_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ATTACK_STATE2_carry__6_n_0\,
      CO(3) => CO(0),
      CO(2) => \ATTACK_STATE2_carry__7_n_1\,
      CO(1) => \ATTACK_STATE2_carry__7_n_2\,
      CO(0) => \ATTACK_STATE2_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ATTACK_STATE2_carry__7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => ATTACK_STATE_reg_0(3 downto 0)
    );
ATTACK_STATE_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => ATTACK_STATE_reg_1,
      Q => ATTACK_STATE,
      R => p_0_in
    );
TRIGER_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => TRIGER_reg_0,
      Q => TRIGER,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR is
  port (
    state : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CAN_SIGNAL_IN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR : entity is "STATE_DETECTOR";
end design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR is
  signal STATE_i_1_n_0 : STD_LOGIC;
  signal \buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[4]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[4]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \can_signal_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \can_signal_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \can_signal_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^state\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of STATE_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \buffer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buffer[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \can_signal_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \can_signal_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \timing_reg[10]_i_1\ : label is "soft_lutpair5";
begin
  p_0_in <= \^p_0_in\;
  state <= \^state\;
STATE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => \buffer[4]_i_3_n_0\,
      I1 => p_0_in_0(1),
      I2 => \can_signal_reg_reg_n_0_[1]\,
      I3 => \^state\,
      O => STATE_i_1_n_0
    );
STATE_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => STATE_i_1_n_0,
      Q => \^state\,
      R => \^p_0_in\
    );
TRIGER_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => \^p_0_in\
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => CAN_SIGNAL_IN,
      I1 => \^state\,
      O => \buffer[0]_i_1_n_0\
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_0_in__0\(1),
      I1 => \^state\,
      O => \buffer[1]_i_1_n_0\
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_0_in__0\(2),
      I1 => \^state\,
      O => \buffer[2]_i_1_n_0\
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_0_in__0\(3),
      I1 => \^state\,
      O => \buffer[3]_i_1_n_0\
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \buffer[4]_i_3_n_0\,
      I1 => \^state\,
      I2 => E(0),
      I3 => RESET,
      O => \buffer[4]_i_1_n_0\
    );
\buffer[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_0_in__0\(4),
      I1 => \^state\,
      O => \buffer[4]_i_2_n_0\
    );
\buffer[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000001"
    )
        port map (
      I0 => \p_0_in__0\(3),
      I1 => \p_0_in__0\(4),
      I2 => \p_0_in__0\(1),
      I3 => \p_0_in__0\(2),
      I4 => \p_0_in__0\(5),
      I5 => \buffer_reg_n_0_[5]\,
      O => \buffer[4]_i_3_n_0\
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD001D00C0000000"
    )
        port map (
      I0 => \buffer[4]_i_3_n_0\,
      I1 => \^state\,
      I2 => E(0),
      I3 => RESET,
      I4 => \p_0_in__0\(5),
      I5 => \buffer_reg_n_0_[5]\,
      O => \buffer[5]_i_1_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \buffer[4]_i_1_n_0\,
      D => \buffer[0]_i_1_n_0\,
      Q => \p_0_in__0\(1),
      S => \^p_0_in\
    );
\buffer_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \buffer[4]_i_1_n_0\,
      D => \buffer[1]_i_1_n_0\,
      Q => \p_0_in__0\(2),
      S => \^p_0_in\
    );
\buffer_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \buffer[4]_i_1_n_0\,
      D => \buffer[2]_i_1_n_0\,
      Q => \p_0_in__0\(3),
      S => \^p_0_in\
    );
\buffer_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \buffer[4]_i_1_n_0\,
      D => \buffer[3]_i_1_n_0\,
      Q => \p_0_in__0\(4),
      S => \^p_0_in\
    );
\buffer_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \buffer[4]_i_1_n_0\,
      D => \buffer[4]_i_2_n_0\,
      Q => \p_0_in__0\(5),
      S => \^p_0_in\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \buffer[5]_i_1_n_0\,
      Q => \buffer_reg_n_0_[5]\,
      R => '0'
    );
\can_signal_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => RESET,
      I1 => \^state\,
      I2 => CAN_SIGNAL_IN,
      O => \can_signal_reg[0]_i_1_n_0\
    );
\can_signal_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => RESET,
      I1 => \^state\,
      I2 => p_0_in_0(1),
      O => \can_signal_reg[1]_i_1_n_0\
    );
\can_signal_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \can_signal_reg[0]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => '0'
    );
\can_signal_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \can_signal_reg[1]_i_1_n_0\,
      Q => \can_signal_reg_reg_n_0_[1]\,
      R => '0'
    );
\timing_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => RESET,
      I1 => \^state\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER : entity is "TIMING_CONTROLLER";
end design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER is
  signal SP_TRG_i_1_n_0 : STD_LOGIC;
  signal SP_TRG_i_2_n_0 : STD_LOGIC;
  signal timing_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \timing_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \timing_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \timing_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \timing_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal timing_reg_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \timing_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \timing_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \timing_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timing_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \timing_reg[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \timing_reg[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \timing_reg[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \timing_reg[9]_i_1\ : label is "soft_lutpair1";
begin
SP_TRG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => timing_reg(0),
      I1 => timing_reg(5),
      I2 => timing_reg(1),
      I3 => SP_TRG_i_2_n_0,
      I4 => \timing_reg[6]_i_3_n_0\,
      O => SP_TRG_i_1_n_0
    );
SP_TRG_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => timing_reg(4),
      I1 => timing_reg(3),
      I2 => timing_reg(6),
      I3 => timing_reg(2),
      O => SP_TRG_i_2_n_0
    );
SP_TRG_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => SP_TRG_i_1_n_0,
      Q => E(0),
      R => p_0_in
    );
\timing_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timing_reg(0),
      O => timing_reg_0(0)
    );
\timing_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => timing_reg(10),
      I1 => timing_reg(8),
      I2 => timing_reg(6),
      I3 => \timing_reg[10]_i_3_n_0\,
      I4 => timing_reg(7),
      I5 => timing_reg(9),
      O => timing_reg_0(10)
    );
\timing_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => timing_reg(4),
      I1 => timing_reg(2),
      I2 => timing_reg(1),
      I3 => timing_reg(0),
      I4 => timing_reg(3),
      I5 => timing_reg(5),
      O => \timing_reg[10]_i_3_n_0\
    );
\timing_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => timing_reg(1),
      I1 => timing_reg(0),
      O => timing_reg_0(1)
    );
\timing_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => timing_reg(2),
      I1 => timing_reg(1),
      I2 => timing_reg(0),
      O => timing_reg_0(2)
    );
\timing_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => timing_reg(3),
      I1 => timing_reg(2),
      I2 => timing_reg(1),
      I3 => timing_reg(0),
      O => \timing_reg[3]_i_1_n_0\
    );
\timing_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000FB"
    )
        port map (
      I0 => timing_reg(5),
      I1 => timing_reg(6),
      I2 => \timing_reg[6]_i_3_n_0\,
      I3 => \timing_reg[6]_i_2_n_0\,
      I4 => timing_reg(4),
      O => timing_reg_0(4)
    );
\timing_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => timing_reg(5),
      I1 => timing_reg(3),
      I2 => timing_reg(0),
      I3 => timing_reg(1),
      I4 => timing_reg(2),
      I5 => timing_reg(4),
      O => timing_reg_0(5)
    );
\timing_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AF50FE00"
    )
        port map (
      I0 => \timing_reg[6]_i_2_n_0\,
      I1 => \timing_reg[6]_i_3_n_0\,
      I2 => timing_reg(4),
      I3 => timing_reg(6),
      I4 => timing_reg(5),
      O => timing_reg_0(6)
    );
\timing_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => timing_reg(2),
      I1 => timing_reg(1),
      I2 => timing_reg(0),
      I3 => timing_reg(3),
      O => \timing_reg[6]_i_2_n_0\
    );
\timing_reg[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timing_reg(8),
      I1 => timing_reg(7),
      I2 => timing_reg(10),
      I3 => timing_reg(9),
      O => \timing_reg[6]_i_3_n_0\
    );
\timing_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => timing_reg(7),
      I1 => \timing_reg[10]_i_3_n_0\,
      I2 => timing_reg(6),
      O => timing_reg_0(7)
    );
\timing_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => timing_reg(8),
      I1 => timing_reg(6),
      I2 => \timing_reg[10]_i_3_n_0\,
      I3 => timing_reg(7),
      O => timing_reg_0(8)
    );
\timing_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => timing_reg(9),
      I1 => timing_reg(7),
      I2 => \timing_reg[10]_i_3_n_0\,
      I3 => timing_reg(6),
      I4 => timing_reg(8),
      O => timing_reg_0(9)
    );
\timing_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(0),
      Q => timing_reg(0),
      R => SR(0)
    );
\timing_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(10),
      Q => timing_reg(10),
      R => SR(0)
    );
\timing_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(1),
      Q => timing_reg(1),
      R => SR(0)
    );
\timing_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(2),
      Q => timing_reg(2),
      R => SR(0)
    );
\timing_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \timing_reg[3]_i_1_n_0\,
      Q => timing_reg(3),
      R => SR(0)
    );
\timing_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(4),
      Q => timing_reg(4),
      R => SR(0)
    );
\timing_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(5),
      Q => timing_reg(5),
      R => SR(0)
    );
\timing_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(6),
      Q => timing_reg(6),
      R => SR(0)
    );
\timing_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(7),
      Q => timing_reg(7),
      R => SR(0)
    );
\timing_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(8),
      Q => timing_reg(8),
      R => SR(0)
    );
\timing_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => timing_reg_0(9),
      Q => timing_reg(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER is
  port (
    ATTACK_STATE : out STD_LOGIC;
    TRIGER : out STD_LOGIC;
    RESET : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CAN_SIGNAL_IN : in STD_LOGIC;
    ATTACK_PERMIT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER : entity is "MODULE_CONTROLLER";
end design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER is
  signal \^attack_state\ : STD_LOGIC;
  signal \^triger\ : STD_LOGIC;
  signal bus_msg_observer_n_0 : STD_LOGIC;
  signal bus_msg_observer_n_1 : STD_LOGIC;
  signal bus_msg_observer_n_10 : STD_LOGIC;
  signal bus_msg_observer_n_11 : STD_LOGIC;
  signal bus_msg_observer_n_12 : STD_LOGIC;
  signal bus_msg_observer_n_13 : STD_LOGIC;
  signal bus_msg_observer_n_14 : STD_LOGIC;
  signal bus_msg_observer_n_15 : STD_LOGIC;
  signal bus_msg_observer_n_16 : STD_LOGIC;
  signal bus_msg_observer_n_17 : STD_LOGIC;
  signal bus_msg_observer_n_18 : STD_LOGIC;
  signal bus_msg_observer_n_19 : STD_LOGIC;
  signal bus_msg_observer_n_2 : STD_LOGIC;
  signal bus_msg_observer_n_20 : STD_LOGIC;
  signal bus_msg_observer_n_21 : STD_LOGIC;
  signal bus_msg_observer_n_22 : STD_LOGIC;
  signal bus_msg_observer_n_23 : STD_LOGIC;
  signal bus_msg_observer_n_24 : STD_LOGIC;
  signal bus_msg_observer_n_25 : STD_LOGIC;
  signal bus_msg_observer_n_26 : STD_LOGIC;
  signal bus_msg_observer_n_27 : STD_LOGIC;
  signal bus_msg_observer_n_28 : STD_LOGIC;
  signal bus_msg_observer_n_29 : STD_LOGIC;
  signal bus_msg_observer_n_3 : STD_LOGIC;
  signal bus_msg_observer_n_30 : STD_LOGIC;
  signal bus_msg_observer_n_31 : STD_LOGIC;
  signal bus_msg_observer_n_32 : STD_LOGIC;
  signal bus_msg_observer_n_33 : STD_LOGIC;
  signal bus_msg_observer_n_34 : STD_LOGIC;
  signal bus_msg_observer_n_35 : STD_LOGIC;
  signal bus_msg_observer_n_36 : STD_LOGIC;
  signal bus_msg_observer_n_37 : STD_LOGIC;
  signal bus_msg_observer_n_4 : STD_LOGIC;
  signal bus_msg_observer_n_5 : STD_LOGIC;
  signal bus_msg_observer_n_6 : STD_LOGIC;
  signal bus_msg_observer_n_7 : STD_LOGIC;
  signal bus_msg_observer_n_8 : STD_LOGIC;
  signal bus_msg_observer_n_9 : STD_LOGIC;
  signal msg_filter_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sp_trg : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_detector_n_2 : STD_LOGIC;
begin
  ATTACK_STATE <= \^attack_state\;
  TRIGER <= \^triger\;
bus_msg_observer: entity work.design_1_MODULE_CONTROLLER_0_0_BUS_MSG_OBSERVER
     port map (
      ATTACK_PERMIT => ATTACK_PERMIT,
      ATTACK_PERMIT_0 => bus_msg_observer_n_36,
      ATTACK_STATE => \^attack_state\,
      \BUS_MSG_reg[107]_0\(3) => bus_msg_observer_n_4,
      \BUS_MSG_reg[107]_0\(2) => bus_msg_observer_n_5,
      \BUS_MSG_reg[107]_0\(1) => bus_msg_observer_n_6,
      \BUS_MSG_reg[107]_0\(0) => bus_msg_observer_n_7,
      \BUS_MSG_reg[23]_0\(3) => bus_msg_observer_n_32,
      \BUS_MSG_reg[23]_0\(2) => bus_msg_observer_n_33,
      \BUS_MSG_reg[23]_0\(1) => bus_msg_observer_n_34,
      \BUS_MSG_reg[23]_0\(0) => bus_msg_observer_n_35,
      \BUS_MSG_reg[35]_0\(3) => bus_msg_observer_n_28,
      \BUS_MSG_reg[35]_0\(2) => bus_msg_observer_n_29,
      \BUS_MSG_reg[35]_0\(1) => bus_msg_observer_n_30,
      \BUS_MSG_reg[35]_0\(0) => bus_msg_observer_n_31,
      \BUS_MSG_reg[47]_0\(3) => bus_msg_observer_n_24,
      \BUS_MSG_reg[47]_0\(2) => bus_msg_observer_n_25,
      \BUS_MSG_reg[47]_0\(1) => bus_msg_observer_n_26,
      \BUS_MSG_reg[47]_0\(0) => bus_msg_observer_n_27,
      \BUS_MSG_reg[59]_0\(3) => bus_msg_observer_n_20,
      \BUS_MSG_reg[59]_0\(2) => bus_msg_observer_n_21,
      \BUS_MSG_reg[59]_0\(1) => bus_msg_observer_n_22,
      \BUS_MSG_reg[59]_0\(0) => bus_msg_observer_n_23,
      \BUS_MSG_reg[71]_0\(3) => bus_msg_observer_n_16,
      \BUS_MSG_reg[71]_0\(2) => bus_msg_observer_n_17,
      \BUS_MSG_reg[71]_0\(1) => bus_msg_observer_n_18,
      \BUS_MSG_reg[71]_0\(0) => bus_msg_observer_n_19,
      \BUS_MSG_reg[83]_0\(3) => bus_msg_observer_n_12,
      \BUS_MSG_reg[83]_0\(2) => bus_msg_observer_n_13,
      \BUS_MSG_reg[83]_0\(1) => bus_msg_observer_n_14,
      \BUS_MSG_reg[83]_0\(0) => bus_msg_observer_n_15,
      \BUS_MSG_reg[95]_0\(3) => bus_msg_observer_n_8,
      \BUS_MSG_reg[95]_0\(2) => bus_msg_observer_n_9,
      \BUS_MSG_reg[95]_0\(1) => bus_msg_observer_n_10,
      \BUS_MSG_reg[95]_0\(0) => bus_msg_observer_n_11,
      CAN_SIGNAL_IN => CAN_SIGNAL_IN,
      CLK => CLK,
      CO(0) => msg_filter_n_0,
      E(0) => sp_trg,
      S(3) => bus_msg_observer_n_0,
      S(2) => bus_msg_observer_n_1,
      S(1) => bus_msg_observer_n_2,
      S(0) => bus_msg_observer_n_3,
      SR(0) => state_detector_n_2,
      STATE_reg => bus_msg_observer_n_37,
      TRIGER => \^triger\,
      state => state
    );
msg_filter: entity work.design_1_MODULE_CONTROLLER_0_0_MSG_FILTER
     port map (
      ATTACK_STATE => \^attack_state\,
      \ATTACK_STATE2_carry__1_0\(3) => bus_msg_observer_n_32,
      \ATTACK_STATE2_carry__1_0\(2) => bus_msg_observer_n_33,
      \ATTACK_STATE2_carry__1_0\(1) => bus_msg_observer_n_34,
      \ATTACK_STATE2_carry__1_0\(0) => bus_msg_observer_n_35,
      \ATTACK_STATE2_carry__2_0\(3) => bus_msg_observer_n_28,
      \ATTACK_STATE2_carry__2_0\(2) => bus_msg_observer_n_29,
      \ATTACK_STATE2_carry__2_0\(1) => bus_msg_observer_n_30,
      \ATTACK_STATE2_carry__2_0\(0) => bus_msg_observer_n_31,
      \ATTACK_STATE2_carry__3_0\(3) => bus_msg_observer_n_24,
      \ATTACK_STATE2_carry__3_0\(2) => bus_msg_observer_n_25,
      \ATTACK_STATE2_carry__3_0\(1) => bus_msg_observer_n_26,
      \ATTACK_STATE2_carry__3_0\(0) => bus_msg_observer_n_27,
      \ATTACK_STATE2_carry__4_0\(3) => bus_msg_observer_n_20,
      \ATTACK_STATE2_carry__4_0\(2) => bus_msg_observer_n_21,
      \ATTACK_STATE2_carry__4_0\(1) => bus_msg_observer_n_22,
      \ATTACK_STATE2_carry__4_0\(0) => bus_msg_observer_n_23,
      \ATTACK_STATE2_carry__5_0\(3) => bus_msg_observer_n_16,
      \ATTACK_STATE2_carry__5_0\(2) => bus_msg_observer_n_17,
      \ATTACK_STATE2_carry__5_0\(1) => bus_msg_observer_n_18,
      \ATTACK_STATE2_carry__5_0\(0) => bus_msg_observer_n_19,
      \ATTACK_STATE2_carry__6_0\(3) => bus_msg_observer_n_12,
      \ATTACK_STATE2_carry__6_0\(2) => bus_msg_observer_n_13,
      \ATTACK_STATE2_carry__6_0\(1) => bus_msg_observer_n_14,
      \ATTACK_STATE2_carry__6_0\(0) => bus_msg_observer_n_15,
      \ATTACK_STATE2_carry__7_0\(3) => bus_msg_observer_n_8,
      \ATTACK_STATE2_carry__7_0\(2) => bus_msg_observer_n_9,
      \ATTACK_STATE2_carry__7_0\(1) => bus_msg_observer_n_10,
      \ATTACK_STATE2_carry__7_0\(0) => bus_msg_observer_n_11,
      ATTACK_STATE_reg_0(3) => bus_msg_observer_n_4,
      ATTACK_STATE_reg_0(2) => bus_msg_observer_n_5,
      ATTACK_STATE_reg_0(1) => bus_msg_observer_n_6,
      ATTACK_STATE_reg_0(0) => bus_msg_observer_n_7,
      ATTACK_STATE_reg_1 => bus_msg_observer_n_36,
      CLK => CLK,
      CO(0) => msg_filter_n_0,
      S(3) => bus_msg_observer_n_0,
      S(2) => bus_msg_observer_n_1,
      S(1) => bus_msg_observer_n_2,
      S(0) => bus_msg_observer_n_3,
      TRIGER => \^triger\,
      TRIGER_reg_0 => bus_msg_observer_n_37,
      p_0_in => p_0_in
    );
nolabel_line46: entity work.design_1_MODULE_CONTROLLER_0_0_TIMING_CONTROLLER
     port map (
      CLK => CLK,
      E(0) => sp_trg,
      SR(0) => state_detector_n_2,
      p_0_in => p_0_in
    );
state_detector: entity work.design_1_MODULE_CONTROLLER_0_0_STATE_DETECTOR
     port map (
      CAN_SIGNAL_IN => CAN_SIGNAL_IN,
      CLK => CLK,
      E(0) => sp_trg,
      RESET => RESET,
      SR(0) => state_detector_n_2,
      p_0_in => p_0_in,
      state => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MODULE_CONTROLLER_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ATTACK_PERMIT : in STD_LOGIC;
    CAN_SIGNAL_IN : in STD_LOGIC;
    TRIGER : out STD_LOGIC;
    ATTACK_STATE : out STD_LOGIC;
    OPERATING_STATE : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SUCCESS_RATE : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DEBUG : out STD_LOGIC;
    DEBUG_1 : out STD_LOGIC;
    DEBUG_2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MODULE_CONTROLLER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MODULE_CONTROLLER_0_0 : entity is "design_1_MODULE_CONTROLLER_0_0,MODULE_CONTROLLER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MODULE_CONTROLLER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_MODULE_CONTROLLER_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MODULE_CONTROLLER_0_0 : entity is "MODULE_CONTROLLER,Vivado 2018.3";
end design_1_MODULE_CONTROLLER_0_0;

architecture STRUCTURE of design_1_MODULE_CONTROLLER_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal n_0_65 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DEBUG <= \<const0>\;
  DEBUG_1 <= \<const0>\;
  DEBUG_2 <= \<const0>\;
  OPERATING_STATE(7) <= \<const0>\;
  OPERATING_STATE(6) <= \<const0>\;
  OPERATING_STATE(5) <= \<const0>\;
  OPERATING_STATE(4) <= \<const0>\;
  OPERATING_STATE(3) <= \<const0>\;
  OPERATING_STATE(2) <= \<const0>\;
  OPERATING_STATE(1) <= \<const0>\;
  OPERATING_STATE(0) <= \<const0>\;
  SUCCESS_RATE(31) <= \<const0>\;
  SUCCESS_RATE(30) <= \<const0>\;
  SUCCESS_RATE(29) <= \<const0>\;
  SUCCESS_RATE(28) <= \<const0>\;
  SUCCESS_RATE(27) <= \<const0>\;
  SUCCESS_RATE(26) <= \<const0>\;
  SUCCESS_RATE(25) <= \<const0>\;
  SUCCESS_RATE(24) <= \<const0>\;
  SUCCESS_RATE(23) <= \<const0>\;
  SUCCESS_RATE(22) <= \<const0>\;
  SUCCESS_RATE(21) <= \<const0>\;
  SUCCESS_RATE(20) <= \<const0>\;
  SUCCESS_RATE(19) <= \<const0>\;
  SUCCESS_RATE(18) <= \<const0>\;
  SUCCESS_RATE(17) <= \<const0>\;
  SUCCESS_RATE(16) <= \<const0>\;
  SUCCESS_RATE(15) <= \<const0>\;
  SUCCESS_RATE(14) <= \<const0>\;
  SUCCESS_RATE(13) <= \<const0>\;
  SUCCESS_RATE(12) <= \<const0>\;
  SUCCESS_RATE(11) <= \<const0>\;
  SUCCESS_RATE(10) <= \<const0>\;
  SUCCESS_RATE(9) <= \<const0>\;
  SUCCESS_RATE(8) <= \<const0>\;
  SUCCESS_RATE(7) <= \<const0>\;
  SUCCESS_RATE(6) <= \<const0>\;
  SUCCESS_RATE(5) <= \<const0>\;
  SUCCESS_RATE(4) <= \<const0>\;
  SUCCESS_RATE(3) <= \<const0>\;
  SUCCESS_RATE(2) <= \<const0>\;
  SUCCESS_RATE(1) <= \<const0>\;
  SUCCESS_RATE(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_65: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET,
      O => n_0_65
    );
inst: entity work.design_1_MODULE_CONTROLLER_0_0_MODULE_CONTROLLER
     port map (
      ATTACK_PERMIT => ATTACK_PERMIT,
      ATTACK_STATE => ATTACK_STATE,
      CAN_SIGNAL_IN => CAN_SIGNAL_IN,
      CLK => CLK,
      RESET => RESET,
      TRIGER => TRIGER
    );
end STRUCTURE;
