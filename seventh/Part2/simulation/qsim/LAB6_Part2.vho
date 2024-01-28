-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/23/2021 15:31:55"

-- 
-- Device: Altera 5CSXFC6D6F31I7ES Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB6_Part2 IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	reset : IN std_logic;
	CLK : OUT std_logic;
	MemCLK : IN std_logic;
	INPUT : OUT std_logic_vector(3 DOWNTO 0);
	PC : OUT std_logic_vector(3 DOWNTO 0);
	IR : OUT std_logic_vector(2 DOWNTO 0);
	DIR : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END LAB6_Part2;

-- Design Ports Information
-- Cout	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[3]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MemCLK : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DIR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \MemCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst32|sub|75~0_combout\ : std_logic;
SIGNAL \inst32|sub|9~q\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst32|sub|106~0_combout\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst32|sub|109~0_combout\ : std_logic;
SIGNAL \inst32|sub|110~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst32|sub|102~0_combout\ : std_logic;
SIGNAL \inst32|sub|99~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst32|sub|92~0_combout\ : std_logic;
SIGNAL \inst32|sub|87~q\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst15|24~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst51|Q0o~combout\ : std_logic;
SIGNAL \inst31~q\ : std_logic;
SIGNAL \inst15|23~0_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst51|D3~1_combout\ : std_logic;
SIGNAL \inst33~DUPLICATE_q\ : std_logic;
SIGNAL \inst15|22~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst51|D2~0_combout\ : std_logic;
SIGNAL \inst51|D5~0_combout\ : std_logic;
SIGNAL \inst51|D3~0_combout\ : std_logic;
SIGNAL \inst51|D4~0_combout\ : std_logic;
SIGNAL \inst51|D7~1_combout\ : std_logic;
SIGNAL \inst8|sub|81~1_combout\ : std_logic;
SIGNAL \inst8|sub|81~0_combout\ : std_logic;
SIGNAL \inst8|sub|81~2_combout\ : std_logic;
SIGNAL \inst17|sub|82~0_combout\ : std_logic;
SIGNAL \inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst12|10~0_combout\ : std_logic;
SIGNAL \inst17|sub|106~0_combout\ : std_logic;
SIGNAL \inst17|sub|100~0_combout\ : std_logic;
SIGNAL \inst8|sub|81~3_combout\ : std_logic;
SIGNAL \inst12|9~0_combout\ : std_logic;
SIGNAL \inst99|9~0_combout\ : std_logic;
SIGNAL \inst51|D7~0_combout\ : std_logic;
SIGNAL \inst17|sub|80~0_combout\ : std_logic;
SIGNAL \inst17|sub|80~combout\ : std_logic;
SIGNAL \inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst99|10~0_combout\ : std_logic;
SIGNAL \inst17|sub|78~combout\ : std_logic;
SIGNAL \inst9|sub|81~1_combout\ : std_logic;
SIGNAL \inst9|sub|81~0_combout\ : std_logic;
SIGNAL \inst13|9~0_combout\ : std_logic;
SIGNAL \inst69|9~0_combout\ : std_logic;
SIGNAL \inst10|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|sub|81~1_combout\ : std_logic;
SIGNAL \inst13|10~0_combout\ : std_logic;
SIGNAL \inst69|10~0_combout\ : std_logic;
SIGNAL \inst17|sub|105~0_combout\ : std_logic;
SIGNAL \inst17|sub|107~0_combout\ : std_logic;
SIGNAL inst94 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst4 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst19 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_inst94 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_inst4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \ALT_INV_inst33~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \inst51|ALT_INV_D3~1_combout\ : std_logic;
SIGNAL \inst32|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D3~0_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D4~0_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D2~0_combout\ : std_logic;
SIGNAL \inst10|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst10|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst9|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_78~combout\ : std_logic;
SIGNAL \inst47|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst47|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D7~1_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D7~0_combout\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_80~0_combout\ : std_logic;
SIGNAL \inst51|ALT_INV_D5~0_combout\ : std_logic;
SIGNAL \inst8|sub|ALT_INV_81~3_combout\ : std_logic;
SIGNAL \inst8|sub|ALT_INV_81~2_combout\ : std_logic;
SIGNAL \inst8|sub|ALT_INV_81~1_combout\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_82~0_combout\ : std_logic;
SIGNAL \inst8|sub|ALT_INV_81~0_combout\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_106~0_combout\ : std_logic;
SIGNAL ALT_INV_inst19 : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst17|sub|ALT_INV_100~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst31~q\ : std_logic;
SIGNAL \ALT_INV_inst33~q\ : std_logic;
SIGNAL \ALT_INV_inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst1~q\ : std_logic;
SIGNAL \ALT_INV_inst16~q\ : std_logic;
SIGNAL \inst32|sub|ALT_INV_9~q\ : std_logic;
SIGNAL \inst32|sub|ALT_INV_87~q\ : std_logic;
SIGNAL \inst32|sub|ALT_INV_99~q\ : std_logic;
SIGNAL \inst32|sub|ALT_INV_110~q\ : std_logic;
SIGNAL \ALT_INV_inst11~q\ : std_logic;
SIGNAL \inst17|sub|ALT_INV_105~0_combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_reset <= reset;
CLK <= ww_CLK;
ww_MemCLK <= MemCLK;
INPUT <= ww_INPUT;
PC <= ww_PC;
IR <= ww_IR;
DIR <= ww_DIR;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst32|sub|110~q\ & \inst32|sub|99~q\ & \inst32|sub|87~q\ & \inst32|sub|9~q\);

\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst7|altsyncram_component|auto_generated|ram_block1a9\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst7|altsyncram_component|auto_generated|ram_block1a10\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst7|altsyncram_component|auto_generated|ram_block1a11\ <= \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
ALT_INV_inst94(1) <= NOT inst94(1);
ALT_INV_inst4(2) <= NOT inst4(2);
ALT_INV_inst94(2) <= NOT inst94(2);
ALT_INV_inst4(3) <= NOT inst4(3);
ALT_INV_inst94(3) <= NOT inst94(3);
\inst9|sub|ALT_INV_81~1_combout\ <= NOT \inst9|sub|81~1_combout\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a9\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a10\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a11\;
\inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\;
\ALT_INV_inst33~DUPLICATE_q\ <= NOT \inst33~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\inst51|ALT_INV_D3~1_combout\ <= NOT \inst51|D3~1_combout\;
\inst32|sub|ALT_INV_106~0_combout\ <= NOT \inst32|sub|106~0_combout\;
\inst51|ALT_INV_D3~0_combout\ <= NOT \inst51|D3~0_combout\;
\inst51|ALT_INV_D4~0_combout\ <= NOT \inst51|D4~0_combout\;
\inst51|ALT_INV_D2~0_combout\ <= NOT \inst51|D2~0_combout\;
\inst10|sub|ALT_INV_81~1_combout\ <= NOT \inst10|sub|81~1_combout\;
\inst10|sub|ALT_INV_81~0_combout\ <= NOT \inst10|sub|81~0_combout\;
\inst9|sub|ALT_INV_81~0_combout\ <= NOT \inst9|sub|81~0_combout\;
\inst17|sub|ALT_INV_78~combout\ <= NOT \inst17|sub|78~combout\;
\inst47|sub|ALT_INV_81~1_combout\ <= NOT \inst47|sub|81~1_combout\;
\inst47|sub|ALT_INV_81~0_combout\ <= NOT \inst47|sub|81~0_combout\;
\inst51|ALT_INV_D7~1_combout\ <= NOT \inst51|D7~1_combout\;
\inst51|ALT_INV_D7~0_combout\ <= NOT \inst51|D7~0_combout\;
\inst17|sub|ALT_INV_80~combout\ <= NOT \inst17|sub|80~combout\;
\inst17|sub|ALT_INV_80~0_combout\ <= NOT \inst17|sub|80~0_combout\;
\inst51|ALT_INV_D5~0_combout\ <= NOT \inst51|D5~0_combout\;
\inst8|sub|ALT_INV_81~3_combout\ <= NOT \inst8|sub|81~3_combout\;
\inst8|sub|ALT_INV_81~2_combout\ <= NOT \inst8|sub|81~2_combout\;
\inst8|sub|ALT_INV_81~1_combout\ <= NOT \inst8|sub|81~1_combout\;
\inst17|sub|ALT_INV_82~0_combout\ <= NOT \inst17|sub|82~0_combout\;
\inst8|sub|ALT_INV_81~0_combout\ <= NOT \inst8|sub|81~0_combout\;
\inst17|sub|ALT_INV_106~0_combout\ <= NOT \inst17|sub|106~0_combout\;
ALT_INV_inst19(2) <= NOT inst19(2);
\inst17|sub|ALT_INV_100~0_combout\ <= NOT \inst17|sub|100~0_combout\;
\ALT_INV_inst31~q\ <= NOT \inst31~q\;
\ALT_INV_inst33~q\ <= NOT \inst33~q\;
\ALT_INV_inst2~q\ <= NOT \inst2~q\;
\ALT_INV_inst1~q\ <= NOT \inst1~q\;
\ALT_INV_inst16~q\ <= NOT \inst16~q\;
\inst32|sub|ALT_INV_9~q\ <= NOT \inst32|sub|9~q\;
\inst32|sub|ALT_INV_87~q\ <= NOT \inst32|sub|87~q\;
\inst32|sub|ALT_INV_99~q\ <= NOT \inst32|sub|99~q\;
\inst32|sub|ALT_INV_110~q\ <= NOT \inst32|sub|110~q\;
\ALT_INV_inst11~q\ <= NOT \inst11~q\;
\inst17|sub|ALT_INV_105~0_combout\ <= NOT \inst17|sub|105~0_combout\;
ALT_INV_inst4(0) <= NOT inst4(0);
ALT_INV_inst94(0) <= NOT inst94(0);
ALT_INV_inst4(1) <= NOT inst4(1);

-- Location: IOOBUF_X89_Y13_N22
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|sub|107~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOOBUF_X89_Y25_N5
\CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => ww_CLK);

-- Location: IOOBUF_X89_Y11_N96
\INPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => ww_INPUT(3));

-- Location: IOOBUF_X89_Y20_N79
\INPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => ww_INPUT(2));

-- Location: IOOBUF_X89_Y23_N22
\INPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => ww_INPUT(1));

-- Location: IOOBUF_X89_Y23_N39
\INPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => ww_INPUT(0));

-- Location: IOOBUF_X89_Y15_N5
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|110~q\,
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X89_Y16_N39
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|99~q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X89_Y20_N96
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|87~q\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X89_Y16_N56
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|9~q\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X89_Y23_N5
\IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => ww_IR(2));

-- Location: IOOBUF_X89_Y23_N56
\IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => ww_IR(1));

-- Location: IOOBUF_X89_Y20_N45
\IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => ww_IR(0));

-- Location: IOOBUF_X6_Y0_N19
\DIR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DIR(3));

-- Location: IOOBUF_X89_Y11_N45
\DIR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|22~0_combout\,
	devoe => ww_devoe,
	o => ww_DIR(2));

-- Location: IOOBUF_X89_Y15_N39
\DIR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|23~0_combout\,
	devoe => ww_devoe,
	o => ww_DIR(1));

-- Location: IOOBUF_X89_Y15_N22
\DIR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|24~0_combout\,
	devoe => ww_devoe,
	o => ww_DIR(0));

-- Location: IOOBUF_X89_Y13_N39
\OUTPUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|sub|81~3_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(3));

-- Location: IOOBUF_X89_Y15_N56
\OUTPUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|sub|81~1_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(2));

-- Location: IOOBUF_X89_Y13_N56
\OUTPUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sub|81~0_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(1));

-- Location: IOOBUF_X89_Y21_N22
\OUTPUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|sub|81~1_combout\,
	devoe => ww_devoe,
	o => ww_OUTPUT(0));

-- Location: IOOBUF_X89_Y21_N39
\REGA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(3),
	devoe => ww_devoe,
	o => ww_REGA(3));

-- Location: IOOBUF_X89_Y20_N62
\REGA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(2),
	devoe => ww_devoe,
	o => ww_REGA(2));

-- Location: IOOBUF_X89_Y25_N39
\REGA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(1),
	devoe => ww_devoe,
	o => ww_REGA(1));

-- Location: IOOBUF_X78_Y0_N36
\REGA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(0),
	devoe => ww_devoe,
	o => ww_REGA(0));

-- Location: IOOBUF_X89_Y13_N5
\REGB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(3),
	devoe => ww_devoe,
	o => ww_REGB(3));

-- Location: IOOBUF_X89_Y21_N56
\REGB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(2),
	devoe => ww_devoe,
	o => ww_REGB(2));

-- Location: IOOBUF_X89_Y21_N5
\REGB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(1),
	devoe => ww_devoe,
	o => ww_REGB(1));

-- Location: IOOBUF_X89_Y25_N56
\REGB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(0),
	devoe => ww_devoe,
	o => ww_REGB(0));

-- Location: IOIBUF_X89_Y16_N21
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\MemCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: LABCELL_X80_Y29_N42
\inst11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ( !\inst11~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_inst11~q\,
	combout => \inst11~0_combout\);

-- Location: IOIBUF_X89_Y16_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X79_Y29_N41
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~input_o\,
	asdata => \inst11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: CLKCTRL_G10
\MemCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~input_o\,
	outclk => \MemCLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X77_Y29_N27
\inst32|sub|75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|sub|75~0_combout\ = ( \inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst32|sub|9~q\) # (\inst33~DUPLICATE_q\) ) ) ) # ( !\inst31~q\ & ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\inst33~DUPLICATE_q\ $ (!\inst32|sub|9~q\) ) ) ) # ( \inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst33~DUPLICATE_q\ & 
-- !\inst32|sub|9~q\) ) ) ) # ( !\inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\inst33~DUPLICATE_q\ $ (!\inst32|sub|9~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101000001010000001011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \inst32|sub|ALT_INV_9~q\,
	datae => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	combout => \inst32|sub|75~0_combout\);

-- Location: FF_X78_Y29_N14
\inst32|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst32|sub|75~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|9~q\);

-- Location: FF_X79_Y29_N56
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst51|D3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: MLABCELL_X78_Y29_N6
\inst32|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|sub|106~0_combout\ = ( \inst32|sub|87~q\ & ( (\inst32|sub|9~q\ & (\inst32|sub|99~q\ & (!\inst31~q\ $ (!\inst33~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000100000000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst31~q\,
	datab => \inst32|sub|ALT_INV_9~q\,
	datac => \inst32|sub|ALT_INV_99~q\,
	datad => \ALT_INV_inst33~q\,
	dataf => \inst32|sub|ALT_INV_87~q\,
	combout => \inst32|sub|106~0_combout\);

-- Location: M10K_X76_Y29_N0
\inst7|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000003000030000500000000010000100002",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../rom_32k.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM1:inst7|altsyncram:altsyncram_component|altsyncram_6h24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MemCLK~inputCLKENA0_outclk\,
	ena0 => VCC,
	portaaddr => \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst7|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: MLABCELL_X78_Y29_N21
\inst32|sub|109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|sub|109~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( \inst33~DUPLICATE_q\ & ( (!\inst32|sub|110~q\ $ (!\inst32|sub|106~0_combout\)) # (\inst31~q\) ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ 
-- & ( \inst33~DUPLICATE_q\ & ( (!\inst31~q\ & (!\inst32|sub|110~q\ $ (!\inst32|sub|106~0_combout\))) ) ) ) # ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst33~DUPLICATE_q\ & ( !\inst32|sub|110~q\ $ (!\inst32|sub|106~0_combout\) ) ) ) 
-- # ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst33~DUPLICATE_q\ & ( !\inst32|sub|110~q\ $ (!\inst32|sub|106~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001001000010010000111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|ALT_INV_110~q\,
	datab => \ALT_INV_inst31~q\,
	datac => \inst32|sub|ALT_INV_106~0_combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\,
	dataf => \ALT_INV_inst33~DUPLICATE_q\,
	combout => \inst32|sub|109~0_combout\);

-- Location: FF_X78_Y29_N53
\inst32|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst32|sub|109~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|110~q\);

-- Location: LABCELL_X77_Y29_N33
\inst32|sub|102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|sub|102~0_combout\ = ( \inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( (!\inst32|sub|99~q\ $ (((!\inst32|sub|9~q\) # (!\inst32|sub|87~q\)))) # (\inst33~DUPLICATE_q\) ) ) ) # ( !\inst31~q\ & ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !\inst32|sub|99~q\ $ (((!\inst33~DUPLICATE_q\) # ((!\inst32|sub|9~q\) # (!\inst32|sub|87~q\)))) ) ) ) # ( \inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( 
-- (!\inst33~DUPLICATE_q\ & (!\inst32|sub|99~q\ $ (((!\inst32|sub|9~q\) # (!\inst32|sub|87~q\))))) ) ) ) # ( !\inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !\inst32|sub|99~q\ $ (((!\inst33~DUPLICATE_q\) # ((!\inst32|sub|9~q\) 
-- # (!\inst32|sub|87~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010001000100100001010101010101100111011101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|ALT_INV_99~q\,
	datab => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \inst32|sub|ALT_INV_9~q\,
	datad => \inst32|sub|ALT_INV_87~q\,
	datae => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\,
	combout => \inst32|sub|102~0_combout\);

-- Location: FF_X78_Y29_N56
\inst32|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst32|sub|102~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|99~q\);

-- Location: LABCELL_X77_Y29_N0
\inst32|sub|92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst32|sub|92~0_combout\ = ( \inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst32|sub|87~q\ $ (!\inst32|sub|9~q\)) # (\inst33~DUPLICATE_q\) ) ) ) # ( !\inst31~q\ & ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst32|sub|87~q\ $ (((!\inst33~DUPLICATE_q\) # (!\inst32|sub|9~q\))) ) ) ) # ( \inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst33~DUPLICATE_q\ & 
-- (!\inst32|sub|87~q\ $ (!\inst32|sub|9~q\))) ) ) ) # ( !\inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst32|sub|87~q\ $ (((!\inst33~DUPLICATE_q\) # (!\inst32|sub|9~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000010101010000000001111010110100101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \inst32|sub|ALT_INV_87~q\,
	datad => \inst32|sub|ALT_INV_9~q\,
	datae => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst32|sub|92~0_combout\);

-- Location: FF_X78_Y29_N23
\inst32|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst32|sub|92~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|87~q\);

-- Location: LABCELL_X80_Y29_N27
\inst15|24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|24~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( ((!\inst33~DUPLICATE_q\ & !\inst31~q\)) # (\inst2~q\) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (\inst2~q\ & 
-- ((\inst31~q\) # (\inst33~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst2~q\,
	datac => \ALT_INV_inst33~DUPLICATE_q\,
	datad => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	combout => \inst15|24~0_combout\);

-- Location: FF_X80_Y29_N8
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst15|24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: MLABCELL_X78_Y29_N30
\inst51|Q0o\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|Q0o~combout\ = ( \inst33~DUPLICATE_q\ & ( (\inst51|D3~1_combout\ & \inst2~q\) ) ) # ( !\inst33~DUPLICATE_q\ & ( (!\inst31~q\) # ((\inst51|D3~1_combout\ & \inst2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst31~q\,
	datac => \inst51|ALT_INV_D3~1_combout\,
	datad => \ALT_INV_inst2~q\,
	dataf => \ALT_INV_inst33~DUPLICATE_q\,
	combout => \inst51|Q0o~combout\);

-- Location: FF_X78_Y29_N44
inst31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst51|Q0o~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31~q\);

-- Location: LABCELL_X77_Y29_N39
\inst15|23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|23~0_combout\ = ( \inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst1~q\ ) ) ) # ( !\inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (!\inst33~DUPLICATE_q\) # (\inst1~q\) ) ) ) # ( 
-- \inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst1~q\ ) ) ) # ( !\inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( (\inst33~DUPLICATE_q\ & \inst1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111110101010111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datad => \ALT_INV_inst1~q\,
	datae => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\,
	combout => \inst15|23~0_combout\);

-- Location: FF_X79_Y29_N8
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst15|23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: MLABCELL_X78_Y29_N12
\inst51|D3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D3~1_combout\ = ( !\inst16~q\ & ( (!\inst33~DUPLICATE_q\ & (\inst31~q\ & \inst1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datab => \ALT_INV_inst31~q\,
	datac => \ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst16~q\,
	combout => \inst51|D3~1_combout\);

-- Location: FF_X79_Y29_N55
\inst33~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst51|D3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~DUPLICATE_q\);

-- Location: LABCELL_X77_Y29_N57
\inst15|22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15|22~0_combout\ = ( \inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( \inst16~q\ ) ) ) # ( !\inst31~q\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( (!\inst33~DUPLICATE_q\) # (\inst16~q\) ) ) ) # ( 
-- \inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( \inst16~q\ ) ) ) # ( !\inst31~q\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( (\inst16~q\ & \inst33~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111111111111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst16~q\,
	datad => \ALT_INV_inst33~DUPLICATE_q\,
	datae => \ALT_INV_inst31~q\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\,
	combout => \inst15|22~0_combout\);

-- Location: FF_X79_Y29_N17
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst15|22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: MLABCELL_X78_Y29_N33
\inst51|D2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D2~0_combout\ = ( \inst31~q\ & ( (\inst16~q\ & (!\inst33~q\ & \inst1~q\)) ) ) # ( !\inst31~q\ & ( \inst33~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst16~q\,
	datac => \ALT_INV_inst33~q\,
	datad => \ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst31~q\,
	combout => \inst51|D2~0_combout\);

-- Location: LABCELL_X80_Y29_N18
\inst51|D5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D5~0_combout\ = ( !\inst1~q\ & ( \inst2~q\ & ( (!\inst33~DUPLICATE_q\ & (\inst31~q\ & \inst16~q\)) ) ) ) # ( !\inst1~q\ & ( !\inst2~q\ & ( (!\inst33~DUPLICATE_q\ & \inst31~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \ALT_INV_inst31~q\,
	datad => \ALT_INV_inst16~q\,
	datae => \ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst2~q\,
	combout => \inst51|D5~0_combout\);

-- Location: LABCELL_X80_Y29_N45
\inst51|D3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D3~0_combout\ = ( \inst2~q\ & ( (\inst31~q\ & (!\inst33~DUPLICATE_q\ & (!\inst16~q\ $ (\inst1~q\)))) ) ) # ( !\inst2~q\ & ( (\inst31~q\ & (!\inst33~DUPLICATE_q\ & (\inst16~q\ & \inst1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010001000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst31~q\,
	datab => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \ALT_INV_inst16~q\,
	datad => \ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst2~q\,
	combout => \inst51|D3~0_combout\);

-- Location: LABCELL_X80_Y29_N51
\inst51|D4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D4~0_combout\ = ( \inst2~q\ & ( (\inst31~q\ & (!\inst33~DUPLICATE_q\ & (!\inst16~q\ & !\inst1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst31~q\,
	datab => \ALT_INV_inst33~DUPLICATE_q\,
	datac => \ALT_INV_inst16~q\,
	datad => \ALT_INV_inst1~q\,
	dataf => \ALT_INV_inst2~q\,
	combout => \inst51|D4~0_combout\);

-- Location: LABCELL_X79_Y29_N33
\inst51|D7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D7~1_combout\ = ( \inst31~q\ & ( (!\inst16~q\) # ((\inst33~q\) # (\inst1~q\)) ) ) # ( !\inst31~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst16~q\,
	datac => \ALT_INV_inst1~q\,
	datad => \ALT_INV_inst33~q\,
	dataf => \ALT_INV_inst31~q\,
	combout => \inst51|D7~1_combout\);

-- Location: MLABCELL_X78_Y29_N48
\inst8|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|sub|81~1_combout\ = ( \inst16~q\ & ( \inst2~q\ & ( (inst94(3) & (((!\inst31~q\) # (\inst33~q\)) # (\inst1~q\))) ) ) ) # ( !\inst16~q\ & ( \inst2~q\ & ( inst94(3) ) ) ) # ( \inst16~q\ & ( !\inst2~q\ & ( (inst94(3) & (((!\inst31~q\) # (\inst33~q\)) # 
-- (\inst1~q\))) ) ) ) # ( !\inst16~q\ & ( !\inst2~q\ & ( (inst94(3) & (((!\inst31~q\) # (\inst33~q\)) # (\inst1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001111000011010000111100001111000011110000110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst1~q\,
	datab => \ALT_INV_inst31~q\,
	datac => ALT_INV_inst94(3),
	datad => \ALT_INV_inst33~q\,
	datae => \ALT_INV_inst16~q\,
	dataf => \ALT_INV_inst2~q\,
	combout => \inst8|sub|81~1_combout\);

-- Location: LABCELL_X79_Y29_N57
\inst8|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|sub|81~0_combout\ = ( !\inst2~q\ & ( !\inst1~q\ & ( (!\inst33~q\ & (!\inst16~q\ & \inst31~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~q\,
	datac => \ALT_INV_inst16~q\,
	datad => \ALT_INV_inst31~q\,
	datae => \ALT_INV_inst2~q\,
	dataf => \ALT_INV_inst1~q\,
	combout => \inst8|sub|81~0_combout\);

-- Location: LABCELL_X79_Y29_N9
\inst8|sub|81~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|sub|81~2_combout\ = ( \inst2~q\ & ( \inst31~q\ & ( (!\inst33~q\ & (\inst16~q\ & (!\inst1~q\ & inst94(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~q\,
	datab => \ALT_INV_inst16~q\,
	datac => \ALT_INV_inst1~q\,
	datad => ALT_INV_inst94(2),
	datae => \ALT_INV_inst2~q\,
	dataf => \ALT_INV_inst31~q\,
	combout => \inst8|sub|81~2_combout\);

-- Location: MLABCELL_X78_Y29_N15
\inst17|sub|82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|82~0_combout\ = ( inst94(3) & ( !inst4(3) ) ) # ( !inst94(3) & ( inst4(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_inst4(3),
	dataf => ALT_INV_inst94(3),
	combout => \inst17|sub|82~0_combout\);

-- Location: LABCELL_X79_Y29_N18
\inst47|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst47|sub|81~1_combout\ = ( \inst47|sub|81~0_combout\ & ( (\inst51|D5~0_combout\) # (inst94(2)) ) ) # ( !\inst47|sub|81~0_combout\ & ( (inst94(2) & !\inst51|D5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_inst94(2),
	datad => \inst51|ALT_INV_D5~0_combout\,
	dataf => \inst47|sub|ALT_INV_81~0_combout\,
	combout => \inst47|sub|81~1_combout\);

-- Location: LABCELL_X79_Y29_N36
\inst12|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|10~0_combout\ = ( inst4(2) & ( \inst47|sub|81~1_combout\ & ( (!\inst51|D3~0_combout\) # ((!\inst51|D4~0_combout\ & ((\inst7|altsyncram_component|auto_generated|ram_block1a10\))) # (\inst51|D4~0_combout\ & (inst94(2)))) ) ) ) # ( !inst4(2) & ( 
-- \inst47|sub|81~1_combout\ & ( (!\inst51|D3~0_combout\ & (((\inst51|D4~0_combout\)))) # (\inst51|D3~0_combout\ & ((!\inst51|D4~0_combout\ & ((\inst7|altsyncram_component|auto_generated|ram_block1a10\))) # (\inst51|D4~0_combout\ & (inst94(2))))) ) ) ) # ( 
-- inst4(2) & ( !\inst47|sub|81~1_combout\ & ( (!\inst51|D3~0_combout\ & (((!\inst51|D4~0_combout\)))) # (\inst51|D3~0_combout\ & ((!\inst51|D4~0_combout\ & ((\inst7|altsyncram_component|auto_generated|ram_block1a10\))) # (\inst51|D4~0_combout\ & 
-- (inst94(2))))) ) ) ) # ( !inst4(2) & ( !\inst47|sub|81~1_combout\ & ( (\inst51|D3~0_combout\ & ((!\inst51|D4~0_combout\ & ((\inst7|altsyncram_component|auto_generated|ram_block1a10\))) # (\inst51|D4~0_combout\ & (inst94(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|ALT_INV_D3~0_combout\,
	datab => ALT_INV_inst94(2),
	datac => \inst51|ALT_INV_D4~0_combout\,
	datad => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\,
	datae => ALT_INV_inst4(2),
	dataf => \inst47|sub|ALT_INV_81~1_combout\,
	combout => \inst12|10~0_combout\);

-- Location: FF_X79_Y29_N50
\inst4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst12|10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(2));

-- Location: LABCELL_X79_Y29_N21
\inst19[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- inst19(2) = ( !inst4(2) & ( !inst94(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_inst94(2),
	dataf => ALT_INV_inst4(2),
	combout => inst19(2));

-- Location: MLABCELL_X78_Y29_N57
\inst17|sub|106~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|106~0_combout\ = ( !inst19(2) & ( inst94(1) & ( ((!inst4(0) & (\Cin~input_o\ & inst94(0))) # (inst4(0) & ((inst94(0)) # (\Cin~input_o\)))) # (inst4(1)) ) ) ) # ( !inst19(2) & ( !inst94(1) & ( (inst4(1) & ((!inst4(0) & (\Cin~input_o\ & 
-- inst94(0))) # (inst4(0) & ((inst94(0)) # (\Cin~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000000000000010111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst4(0),
	datab => \ALT_INV_Cin~input_o\,
	datac => ALT_INV_inst94(0),
	datad => ALT_INV_inst4(1),
	datae => ALT_INV_inst19(2),
	dataf => ALT_INV_inst94(1),
	combout => \inst17|sub|106~0_combout\);

-- Location: MLABCELL_X78_Y29_N9
\inst17|sub|100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|100~0_combout\ = ( inst94(2) & ( inst4(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_inst4(2),
	dataf => ALT_INV_inst94(2),
	combout => \inst17|sub|100~0_combout\);

-- Location: MLABCELL_X78_Y29_N36
\inst8|sub|81~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|sub|81~3_combout\ = ( \inst17|sub|106~0_combout\ & ( \inst17|sub|100~0_combout\ & ( (((\inst8|sub|81~0_combout\ & !\inst17|sub|82~0_combout\)) # (\inst8|sub|81~2_combout\)) # (\inst8|sub|81~1_combout\) ) ) ) # ( !\inst17|sub|106~0_combout\ & ( 
-- \inst17|sub|100~0_combout\ & ( (((\inst8|sub|81~0_combout\ & !\inst17|sub|82~0_combout\)) # (\inst8|sub|81~2_combout\)) # (\inst8|sub|81~1_combout\) ) ) ) # ( \inst17|sub|106~0_combout\ & ( !\inst17|sub|100~0_combout\ & ( (((\inst8|sub|81~0_combout\ & 
-- !\inst17|sub|82~0_combout\)) # (\inst8|sub|81~2_combout\)) # (\inst8|sub|81~1_combout\) ) ) ) # ( !\inst17|sub|106~0_combout\ & ( !\inst17|sub|100~0_combout\ & ( (((\inst8|sub|81~0_combout\ & \inst17|sub|82~0_combout\)) # (\inst8|sub|81~2_combout\)) # 
-- (\inst8|sub|81~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111011111110101111101111111010111110111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|sub|ALT_INV_81~1_combout\,
	datab => \inst8|sub|ALT_INV_81~0_combout\,
	datac => \inst8|sub|ALT_INV_81~2_combout\,
	datad => \inst17|sub|ALT_INV_82~0_combout\,
	datae => \inst17|sub|ALT_INV_106~0_combout\,
	dataf => \inst17|sub|ALT_INV_100~0_combout\,
	combout => \inst8|sub|81~3_combout\);

-- Location: MLABCELL_X78_Y29_N27
\inst12|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst12|9~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( \inst8|sub|81~3_combout\ & ( (!\inst51|D4~0_combout\ & (((\inst51|D3~0_combout\) # (inst4(3))))) # (\inst51|D4~0_combout\ & (((!\inst51|D3~0_combout\)) # (inst94(3)))) 
-- ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( \inst8|sub|81~3_combout\ & ( (!\inst51|D4~0_combout\ & (((inst4(3) & !\inst51|D3~0_combout\)))) # (\inst51|D4~0_combout\ & (((!\inst51|D3~0_combout\)) # (inst94(3)))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst8|sub|81~3_combout\ & ( (!\inst51|D4~0_combout\ & (((\inst51|D3~0_combout\) # (inst4(3))))) # (\inst51|D4~0_combout\ & (inst94(3) & ((\inst51|D3~0_combout\)))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst8|sub|81~3_combout\ & ( (!\inst51|D4~0_combout\ & (((inst4(3) & !\inst51|D3~0_combout\)))) # (\inst51|D4~0_combout\ & (inst94(3) & ((\inst51|D3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst94(3),
	datab => ALT_INV_inst4(3),
	datac => \inst51|ALT_INV_D4~0_combout\,
	datad => \inst51|ALT_INV_D3~0_combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\,
	dataf => \inst8|sub|ALT_INV_81~3_combout\,
	combout => \inst12|9~0_combout\);

-- Location: FF_X78_Y29_N26
\inst4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst12|9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(3));

-- Location: MLABCELL_X78_Y29_N3
\inst99|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst99|9~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( \inst8|sub|81~3_combout\ & ( (!\inst51|D5~0_combout\ & (((\inst51|D2~0_combout\) # (inst94(3))))) # (\inst51|D5~0_combout\ & (((!\inst51|D2~0_combout\)) # (inst4(3)))) 
-- ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( \inst8|sub|81~3_combout\ & ( (!\inst51|D5~0_combout\ & (((inst94(3) & !\inst51|D2~0_combout\)))) # (\inst51|D5~0_combout\ & (((!\inst51|D2~0_combout\)) # (inst4(3)))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst8|sub|81~3_combout\ & ( (!\inst51|D5~0_combout\ & (((\inst51|D2~0_combout\) # (inst94(3))))) # (\inst51|D5~0_combout\ & (inst4(3) & ((\inst51|D2~0_combout\)))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a11\ & ( !\inst8|sub|81~3_combout\ & ( (!\inst51|D5~0_combout\ & (((inst94(3) & !\inst51|D2~0_combout\)))) # (\inst51|D5~0_combout\ & (inst4(3) & ((\inst51|D2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst4(3),
	datab => ALT_INV_inst94(3),
	datac => \inst51|ALT_INV_D5~0_combout\,
	datad => \inst51|ALT_INV_D2~0_combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a11\,
	dataf => \inst8|sub|ALT_INV_81~3_combout\,
	combout => \inst99|9~0_combout\);

-- Location: FF_X78_Y29_N20
\inst94[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst99|9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(3));

-- Location: LABCELL_X80_Y29_N24
\inst51|D7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst51|D7~0_combout\ = ( !\inst1~q\ & ( (!\inst33~DUPLICATE_q\ & (!\inst2~q\ & \inst31~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datab => \ALT_INV_inst2~q\,
	datac => \ALT_INV_inst31~q\,
	dataf => \ALT_INV_inst1~q\,
	combout => \inst51|D7~0_combout\);

-- Location: LABCELL_X79_Y29_N30
\inst17|sub|80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|80~0_combout\ = ( inst4(2) & ( !inst94(2) ) ) # ( !inst4(2) & ( inst94(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_inst94(2),
	dataf => ALT_INV_inst4(2),
	combout => \inst17|sub|80~0_combout\);

-- Location: LABCELL_X79_Y29_N51
\inst17|sub|80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|80~combout\ = ( inst4(1) & ( \inst17|sub|80~0_combout\ & ( (!inst94(1) & ((!inst4(0) & ((!\Cin~input_o\) # (!inst94(0)))) # (inst4(0) & (!\Cin~input_o\ & !inst94(0))))) ) ) ) # ( !inst4(1) & ( \inst17|sub|80~0_combout\ & ( (!inst94(1)) # 
-- ((!inst4(0) & ((!\Cin~input_o\) # (!inst94(0)))) # (inst4(0) & (!\Cin~input_o\ & !inst94(0)))) ) ) ) # ( inst4(1) & ( !\inst17|sub|80~0_combout\ & ( ((!inst4(0) & (\Cin~input_o\ & inst94(0))) # (inst4(0) & ((inst94(0)) # (\Cin~input_o\)))) # (inst94(1)) ) 
-- ) ) # ( !inst4(1) & ( !\inst17|sub|80~0_combout\ & ( (inst94(1) & ((!inst4(0) & (\Cin~input_o\ & inst94(0))) # (inst4(0) & ((inst94(0)) # (\Cin~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst4(0),
	datab => \ALT_INV_Cin~input_o\,
	datac => ALT_INV_inst94(0),
	datad => ALT_INV_inst94(1),
	datae => ALT_INV_inst4(1),
	dataf => \inst17|sub|ALT_INV_80~0_combout\,
	combout => \inst17|sub|80~combout\);

-- Location: LABCELL_X79_Y29_N42
\inst47|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst47|sub|81~0_combout\ = ( inst19(2) & ( \inst17|sub|80~combout\ & ( (!\inst51|D7~1_combout\ & ((!\inst51|D7~0_combout\ & ((inst94(1)))) # (\inst51|D7~0_combout\ & (inst94(3))))) # (\inst51|D7~1_combout\ & (((\inst51|D7~0_combout\)))) ) ) ) # ( 
-- !inst19(2) & ( \inst17|sub|80~combout\ & ( ((!\inst51|D7~0_combout\ & ((inst94(1)))) # (\inst51|D7~0_combout\ & (inst94(3)))) # (\inst51|D7~1_combout\) ) ) ) # ( inst19(2) & ( !\inst17|sub|80~combout\ & ( (!\inst51|D7~1_combout\ & ((!\inst51|D7~0_combout\ 
-- & ((inst94(1)))) # (\inst51|D7~0_combout\ & (inst94(3))))) ) ) ) # ( !inst19(2) & ( !\inst17|sub|80~combout\ & ( (!\inst51|D7~1_combout\ & ((!\inst51|D7~0_combout\ & ((inst94(1)))) # (\inst51|D7~0_combout\ & (inst94(3))))) # (\inst51|D7~1_combout\ & 
-- (((!\inst51|D7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100100010000010100010001001011111011101110000101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|ALT_INV_D7~1_combout\,
	datab => ALT_INV_inst94(3),
	datac => ALT_INV_inst94(1),
	datad => \inst51|ALT_INV_D7~0_combout\,
	datae => ALT_INV_inst19(2),
	dataf => \inst17|sub|ALT_INV_80~combout\,
	combout => \inst47|sub|81~0_combout\);

-- Location: LABCELL_X79_Y29_N12
\inst99|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst99|10~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( inst4(2) & ( ((!\inst51|D5~0_combout\ & (inst94(2))) # (\inst51|D5~0_combout\ & ((\inst47|sub|81~0_combout\)))) # (\inst51|D2~0_combout\) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( inst4(2) & ( (!\inst51|D5~0_combout\ & (inst94(2) & (!\inst51|D2~0_combout\))) # (\inst51|D5~0_combout\ & (((\inst47|sub|81~0_combout\) # (\inst51|D2~0_combout\)))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !inst4(2) & ( (!\inst51|D5~0_combout\ & (((\inst51|D2~0_combout\)) # (inst94(2)))) # (\inst51|D5~0_combout\ & (((!\inst51|D2~0_combout\ & \inst47|sub|81~0_combout\)))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a10\ & ( !inst4(2) & ( (!\inst51|D2~0_combout\ & ((!\inst51|D5~0_combout\ & (inst94(2))) # (\inst51|D5~0_combout\ & ((\inst47|sub|81~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst94(2),
	datab => \inst51|ALT_INV_D5~0_combout\,
	datac => \inst51|ALT_INV_D2~0_combout\,
	datad => \inst47|sub|ALT_INV_81~0_combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a10\,
	dataf => ALT_INV_inst4(2),
	combout => \inst99|10~0_combout\);

-- Location: FF_X79_Y29_N47
\inst94[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst99|10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(2));

-- Location: LABCELL_X80_Y29_N12
\inst17|sub|78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|78~combout\ = ( inst4(1) & ( !inst94(1) $ (((!\Cin~input_o\ & (inst94(0) & inst4(0))) # (\Cin~input_o\ & ((inst4(0)) # (inst94(0)))))) ) ) # ( !inst4(1) & ( !inst94(1) $ (((!\Cin~input_o\ & ((!inst94(0)) # (!inst4(0)))) # (\Cin~input_o\ & 
-- (!inst94(0) & !inst4(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => ALT_INV_inst94(0),
	datac => ALT_INV_inst4(0),
	datad => ALT_INV_inst94(1),
	dataf => ALT_INV_inst4(1),
	combout => \inst17|sub|78~combout\);

-- Location: LABCELL_X80_Y29_N30
\inst9|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sub|81~1_combout\ = ( !\inst51|D7~1_combout\ & ( (((!\inst51|D7~0_combout\ & ((inst94(0)))) # (\inst51|D7~0_combout\ & (inst94(2))))) ) ) # ( \inst51|D7~1_combout\ & ( ((!\inst51|D7~0_combout\ & (((inst94(1))) # (inst4(1)))) # 
-- (\inst51|D7~0_combout\ & (((\inst17|sub|78~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001111110011111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst94(2),
	datab => ALT_INV_inst4(1),
	datac => ALT_INV_inst94(1),
	datad => \inst17|sub|ALT_INV_78~combout\,
	datae => \inst51|ALT_INV_D7~1_combout\,
	dataf => \inst51|ALT_INV_D7~0_combout\,
	datag => ALT_INV_inst94(0),
	combout => \inst9|sub|81~1_combout\);

-- Location: LABCELL_X80_Y29_N48
\inst9|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|sub|81~0_combout\ = ( \inst9|sub|81~1_combout\ & ( (inst94(1)) # (\inst51|D5~0_combout\) ) ) # ( !\inst9|sub|81~1_combout\ & ( (!\inst51|D5~0_combout\ & inst94(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst51|ALT_INV_D5~0_combout\,
	datad => ALT_INV_inst94(1),
	dataf => \inst9|sub|ALT_INV_81~1_combout\,
	combout => \inst9|sub|81~0_combout\);

-- Location: LABCELL_X80_Y29_N0
\inst13|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|9~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst9|sub|81~0_combout\ & ( (!\inst51|D3~0_combout\ & (((inst4(1)) # (\inst51|D4~0_combout\)))) # (\inst51|D3~0_combout\ & (((!\inst51|D4~0_combout\)) # (inst94(1)))) ) 
-- ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst9|sub|81~0_combout\ & ( (!\inst51|D3~0_combout\ & (((inst4(1)) # (\inst51|D4~0_combout\)))) # (\inst51|D3~0_combout\ & (inst94(1) & (\inst51|D4~0_combout\))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst9|sub|81~0_combout\ & ( (!\inst51|D3~0_combout\ & (((!\inst51|D4~0_combout\ & inst4(1))))) # (\inst51|D3~0_combout\ & (((!\inst51|D4~0_combout\)) # (inst94(1)))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst9|sub|81~0_combout\ & ( (!\inst51|D3~0_combout\ & (((!\inst51|D4~0_combout\ & inst4(1))))) # (\inst51|D3~0_combout\ & (inst94(1) & (\inst51|D4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|ALT_INV_D3~0_combout\,
	datab => ALT_INV_inst94(1),
	datac => \inst51|ALT_INV_D4~0_combout\,
	datad => ALT_INV_inst4(1),
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \inst9|sub|ALT_INV_81~0_combout\,
	combout => \inst13|9~0_combout\);

-- Location: FF_X80_Y29_N17
\inst4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst13|9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(1));

-- Location: LABCELL_X79_Y29_N0
\inst69|9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst69|9~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst9|sub|81~1_combout\ & ( (!\inst51|D2~0_combout\ & (((\inst51|D5~0_combout\) # (inst94(1))))) # (\inst51|D2~0_combout\ & (((!\inst51|D5~0_combout\)) # (inst4(1)))) ) 
-- ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( \inst9|sub|81~1_combout\ & ( (!\inst51|D2~0_combout\ & (((\inst51|D5~0_combout\) # (inst94(1))))) # (\inst51|D2~0_combout\ & (inst4(1) & ((\inst51|D5~0_combout\)))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst9|sub|81~1_combout\ & ( (!\inst51|D2~0_combout\ & (((inst94(1) & !\inst51|D5~0_combout\)))) # (\inst51|D2~0_combout\ & (((!\inst51|D5~0_combout\)) # (inst4(1)))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a9\ & ( !\inst9|sub|81~1_combout\ & ( (!\inst51|D2~0_combout\ & (((inst94(1) & !\inst51|D5~0_combout\)))) # (\inst51|D2~0_combout\ & (inst4(1) & ((\inst51|D5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst4(1),
	datab => \inst51|ALT_INV_D2~0_combout\,
	datac => ALT_INV_inst94(1),
	datad => \inst51|ALT_INV_D5~0_combout\,
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \inst9|sub|ALT_INV_81~1_combout\,
	combout => \inst69|9~0_combout\);

-- Location: FF_X79_Y29_N26
\inst94[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst69|9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(1));

-- Location: LABCELL_X80_Y29_N9
\inst10|sub|81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|sub|81~0_combout\ = ( \inst16~q\ & ( inst94(1) & ( (!\inst33~DUPLICATE_q\ & (!\inst2~q\ & (!\inst1~q\ & \inst31~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst33~DUPLICATE_q\,
	datab => \ALT_INV_inst2~q\,
	datac => \ALT_INV_inst1~q\,
	datad => \ALT_INV_inst31~q\,
	datae => \ALT_INV_inst16~q\,
	dataf => ALT_INV_inst94(1),
	combout => \inst10|sub|81~0_combout\);

-- Location: LABCELL_X80_Y29_N54
\inst10|sub|81~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|sub|81~1_combout\ = ( \inst8|sub|81~0_combout\ & ( inst94(0) & ( (!\inst51|D5~0_combout\) # ((!\Cin~input_o\ $ (inst4(0))) # (\inst10|sub|81~0_combout\)) ) ) ) # ( !\inst8|sub|81~0_combout\ & ( inst94(0) & ( (!\inst51|D5~0_combout\) # 
-- (\inst10|sub|81~0_combout\) ) ) ) # ( \inst8|sub|81~0_combout\ & ( !inst94(0) & ( (!\Cin~input_o\ $ (!inst4(0))) # (\inst10|sub|81~0_combout\) ) ) ) # ( !\inst8|sub|81~0_combout\ & ( !inst94(0) & ( \inst10|sub|81~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011001101111111111110000111111111111100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => ALT_INV_inst4(0),
	datac => \inst51|ALT_INV_D5~0_combout\,
	datad => \inst10|sub|ALT_INV_81~0_combout\,
	datae => \inst8|sub|ALT_INV_81~0_combout\,
	dataf => ALT_INV_inst94(0),
	combout => \inst10|sub|81~1_combout\);

-- Location: LABCELL_X79_Y29_N27
\inst13|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|10~0_combout\ = ( \inst51|D3~0_combout\ & ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst51|D4~0_combout\) # (inst94(0)) ) ) ) # ( !\inst51|D3~0_combout\ & ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst51|D4~0_combout\ & (inst4(0))) # (\inst51|D4~0_combout\ & ((\inst10|sub|81~1_combout\))) ) ) ) # ( \inst51|D3~0_combout\ & ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (inst94(0) & \inst51|D4~0_combout\) ) ) ) # ( !\inst51|D3~0_combout\ & ( !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( (!\inst51|D4~0_combout\ & 
-- (inst4(0))) # (\inst51|D4~0_combout\ & ((\inst10|sub|81~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_inst4(0),
	datab => ALT_INV_inst94(0),
	datac => \inst10|sub|ALT_INV_81~1_combout\,
	datad => \inst51|ALT_INV_D4~0_combout\,
	datae => \inst51|ALT_INV_D3~0_combout\,
	dataf => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	combout => \inst13|10~0_combout\);

-- Location: FF_X79_Y29_N5
\inst4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst13|10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(0));

-- Location: LABCELL_X80_Y29_N36
\inst69|10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst69|10~0_combout\ = ( \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \inst51|D5~0_combout\ & ( (!\inst51|D2~0_combout\ & ((\inst10|sub|81~1_combout\))) # (\inst51|D2~0_combout\ & (inst4(0))) ) ) ) # ( 
-- !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \inst51|D5~0_combout\ & ( (!\inst51|D2~0_combout\ & ((\inst10|sub|81~1_combout\))) # (\inst51|D2~0_combout\ & (inst4(0))) ) ) ) # ( 
-- \inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\inst51|D5~0_combout\ & ( (inst94(0)) # (\inst51|D2~0_combout\) ) ) ) # ( !\inst7|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\inst51|D5~0_combout\ & ( 
-- (!\inst51|D2~0_combout\ & inst94(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst51|ALT_INV_D2~0_combout\,
	datab => ALT_INV_inst4(0),
	datac => \inst10|sub|ALT_INV_81~1_combout\,
	datad => ALT_INV_inst94(0),
	datae => \inst7|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \inst51|ALT_INV_D5~0_combout\,
	combout => \inst69|10~0_combout\);

-- Location: FF_X80_Y29_N44
\inst94[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	asdata => \inst69|10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(0));

-- Location: LABCELL_X80_Y29_N15
\inst17|sub|105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|105~0_combout\ = ( inst4(0) & ( (!inst94(1) & (inst4(1) & ((inst94(0)) # (\Cin~input_o\)))) # (inst94(1) & (((inst4(1)) # (inst94(0))) # (\Cin~input_o\))) ) ) # ( !inst4(0) & ( (!inst94(1) & (\Cin~input_o\ & (inst94(0) & inst4(1)))) # 
-- (inst94(1) & (((\Cin~input_o\ & inst94(0))) # (inst4(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Cin~input_o\,
	datab => ALT_INV_inst94(0),
	datac => ALT_INV_inst94(1),
	datad => ALT_INV_inst4(1),
	dataf => ALT_INV_inst4(0),
	combout => \inst17|sub|105~0_combout\);

-- Location: MLABCELL_X78_Y29_N42
\inst17|sub|107~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst17|sub|107~0_combout\ = ( inst4(2) & ( inst94(2) & ( (inst4(3)) # (inst94(3)) ) ) ) # ( !inst4(2) & ( inst94(2) & ( (!\inst17|sub|105~0_combout\ & (inst94(3) & inst4(3))) # (\inst17|sub|105~0_combout\ & ((inst4(3)) # (inst94(3)))) ) ) ) # ( inst4(2) 
-- & ( !inst94(2) & ( (!\inst17|sub|105~0_combout\ & (inst94(3) & inst4(3))) # (\inst17|sub|105~0_combout\ & ((inst4(3)) # (inst94(3)))) ) ) ) # ( !inst4(2) & ( !inst94(2) & ( (inst94(3) & inst4(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000001010101111100000101010111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|sub|ALT_INV_105~0_combout\,
	datac => ALT_INV_inst94(3),
	datad => ALT_INV_inst4(3),
	datae => ALT_INV_inst4(2),
	dataf => ALT_INV_inst94(2),
	combout => \inst17|sub|107~0_combout\);

-- Location: LABCELL_X33_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


