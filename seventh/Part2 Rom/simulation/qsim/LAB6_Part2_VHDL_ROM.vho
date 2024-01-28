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

-- DATE "07/22/2021 22:35:47"

-- 
-- Device: Altera 10M02SCU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB6_Part2_VHDL_ROM IS
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
END LAB6_Part2_VHDL_ROM;

-- Design Ports Information
-- Cout	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIR[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part2_VHDL_ROM IS
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
SIGNAL \inst11~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \INPUT[3]~output_o\ : std_logic;
SIGNAL \INPUT[2]~output_o\ : std_logic;
SIGNAL \INPUT[1]~output_o\ : std_logic;
SIGNAL \INPUT[0]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \DIR[3]~output_o\ : std_logic;
SIGNAL \DIR[2]~output_o\ : std_logic;
SIGNAL \DIR[1]~output_o\ : std_logic;
SIGNAL \DIR[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \MemCLK~input_o\ : std_logic;
SIGNAL \MemCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst11~clkctrl_outclk\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst7|D7~3_combout\ : std_logic;
SIGNAL \inst34|Mux4~0_combout\ : std_logic;
SIGNAL \inst34|D_sig[3]~feeder_combout\ : std_logic;
SIGNAL \inst32|sub|106~0_combout\ : std_logic;
SIGNAL \inst32|sub|109~0_combout\ : std_logic;
SIGNAL \inst32|sub|110~q\ : std_logic;
SIGNAL \inst34|Mux6~0_combout\ : std_logic;
SIGNAL \inst34|D_sig[1]~feeder_combout\ : std_logic;
SIGNAL \inst32|sub|92~2_combout\ : std_logic;
SIGNAL \inst32|sub|92~3_combout\ : std_logic;
SIGNAL \inst32|sub|87~q\ : std_logic;
SIGNAL \inst34|Mux7~0_combout\ : std_logic;
SIGNAL \inst32|sub|75~0_combout\ : std_logic;
SIGNAL \inst32|sub|9~q\ : std_logic;
SIGNAL \inst32|sub|96~0_combout\ : std_logic;
SIGNAL \inst32|sub|102~0_combout\ : std_logic;
SIGNAL \inst32|sub|99~q\ : std_logic;
SIGNAL \inst34|Mux5~0_combout\ : std_logic;
SIGNAL \inst15|22~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst15|23~0_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst7|D3~2_combout\ : std_logic;
SIGNAL \inst15|24~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst7|Q0o~combout\ : std_logic;
SIGNAL \inst31~q\ : std_logic;
SIGNAL \inst7|D2~0_combout\ : std_logic;
SIGNAL \inst7|D7~2_combout\ : std_logic;
SIGNAL \inst8|sub|81~4_combout\ : std_logic;
SIGNAL \inst99|9~0_combout\ : std_logic;
SIGNAL \inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst7|D7~1_combout\ : std_logic;
SIGNAL \inst47|sub|81~3_combout\ : std_logic;
SIGNAL \inst7|D3~0_combout\ : std_logic;
SIGNAL \inst7|D3~1_combout\ : std_logic;
SIGNAL \inst7|D4~0_combout\ : std_logic;
SIGNAL \inst12|10~0_combout\ : std_logic;
SIGNAL \inst12|10~1_combout\ : std_logic;
SIGNAL \inst13|9~0_combout\ : std_logic;
SIGNAL \inst7|D7~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst10|sub|81~1_combout\ : std_logic;
SIGNAL \inst8|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|sub|81~2_combout\ : std_logic;
SIGNAL \inst69|10~0_combout\ : std_logic;
SIGNAL \inst69|10~1_combout\ : std_logic;
SIGNAL \inst13|10~0_combout\ : std_logic;
SIGNAL \inst13|10~1_combout\ : std_logic;
SIGNAL \inst17|sub|104~0_combout\ : std_logic;
SIGNAL \inst9|sub|81~0_combout\ : std_logic;
SIGNAL \inst9|sub|81~1_combout\ : std_logic;
SIGNAL \inst9|sub|81~2_combout\ : std_logic;
SIGNAL \inst9|sub|81~3_combout\ : std_logic;
SIGNAL \inst13|9~1_combout\ : std_logic;
SIGNAL \inst69|9~0_combout\ : std_logic;
SIGNAL \inst69|9~1_combout\ : std_logic;
SIGNAL \inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst17|sub|80~0_combout\ : std_logic;
SIGNAL \inst17|sub|80~combout\ : std_logic;
SIGNAL \inst47|sub|81~2_combout\ : std_logic;
SIGNAL \inst99|10~0_combout\ : std_logic;
SIGNAL \inst99|10~1_combout\ : std_logic;
SIGNAL \inst8|sub|81~0_combout\ : std_logic;
SIGNAL \inst17|sub|105~0_combout\ : std_logic;
SIGNAL \inst17|sub|106~0_combout\ : std_logic;
SIGNAL \inst8|sub|81~2_combout\ : std_logic;
SIGNAL \inst8|sub|81~3_combout\ : std_logic;
SIGNAL \inst99|9~1_combout\ : std_logic;
SIGNAL \inst12|9~0_combout\ : std_logic;
SIGNAL \inst12|9~1_combout\ : std_logic;
SIGNAL \inst17|sub|107~0_combout\ : std_logic;
SIGNAL inst94 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst4 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst19 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst34|D_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\inst11~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11~q\);

\MemCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MemCLK~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X11_Y0_N2
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X18_Y6_N16
\CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

-- Location: IOOBUF_X6_Y7_N16
\INPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|D_sig\(3),
	devoe => ww_devoe,
	o => \INPUT[3]~output_o\);

-- Location: IOOBUF_X6_Y7_N30
\INPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|D_sig\(2),
	devoe => ww_devoe,
	o => \INPUT[2]~output_o\);

-- Location: IOOBUF_X10_Y10_N23
\INPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|D_sig\(1),
	devoe => ww_devoe,
	o => \INPUT[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\INPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst34|D_sig\(0),
	devoe => ww_devoe,
	o => \INPUT[0]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|110~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|99~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|87~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|sub|9~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X3_Y7_N2
\IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\DIR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DIR[3]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\DIR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|22~0_combout\,
	devoe => ww_devoe,
	o => \DIR[2]~output_o\);

-- Location: IOOBUF_X6_Y7_N23
\DIR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|23~0_combout\,
	devoe => ww_devoe,
	o => \DIR[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DIR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|24~0_combout\,
	devoe => ww_devoe,
	o => \DIR[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X6_Y7_N9
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(3),
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X18_Y4_N16
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(2),
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(1),
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X3_Y7_N9
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst94(0),
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(3),
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X18_Y3_N9
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(2),
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(1),
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst4(0),
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\MemCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemCLK,
	o => \MemCLK~input_o\);

-- Location: CLKCTRL_G3
\MemCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MemCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MemCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y6_N18
\inst11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = !\inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11~q\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X17_Y6_N16
\inst11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~feeder_combout\ = \inst11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11~0_combout\,
	combout => \inst11~feeder_combout\);

-- Location: IOIBUF_X0_Y4_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X17_Y6_N17
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst11~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: CLKCTRL_G7
\inst11~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11~clkctrl_outclk\);

-- Location: FF_X9_Y4_N9
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst7|D3~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: LCCOMB_X7_Y4_N24
\inst7|D7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D7~3_combout\ = (\inst33~q\ & \inst31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33~q\,
	datad => \inst31~q\,
	combout => \inst7|D7~3_combout\);

-- Location: LCCOMB_X7_Y4_N28
\inst34|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|Mux4~0_combout\ = (\inst32|sub|99~q\ & (\inst32|sub|110~q\ & (!\inst32|sub|87~q\ & !\inst32|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|99~q\,
	datab => \inst32|sub|110~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst32|sub|9~q\,
	combout => \inst34|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y4_N20
\inst34|D_sig[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|D_sig[3]~feeder_combout\ = \inst34|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst34|Mux4~0_combout\,
	combout => \inst34|D_sig[3]~feeder_combout\);

-- Location: FF_X7_Y4_N21
\inst34|D_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst34|D_sig[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|D_sig\(3));

-- Location: LCCOMB_X7_Y4_N12
\inst32|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|106~0_combout\ = (\inst32|sub|99~q\ & \inst32|sub|96~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|sub|99~q\,
	datad => \inst32|sub|96~0_combout\,
	combout => \inst32|sub|106~0_combout\);

-- Location: LCCOMB_X7_Y4_N16
\inst32|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|109~0_combout\ = (\inst7|D7~3_combout\ & (\inst34|D_sig\(3))) # (!\inst7|D7~3_combout\ & ((\inst32|sub|110~q\ $ (\inst32|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|D_sig\(3),
	datab => \inst7|D7~3_combout\,
	datac => \inst32|sub|110~q\,
	datad => \inst32|sub|106~0_combout\,
	combout => \inst32|sub|109~0_combout\);

-- Location: FF_X7_Y4_N17
\inst32|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst32|sub|109~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|110~q\);

-- Location: LCCOMB_X7_Y4_N8
\inst34|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|Mux6~0_combout\ = (\inst32|sub|110~q\ & (\inst32|sub|99~q\ $ (((\inst32|sub|9~q\) # (\inst32|sub|87~q\))))) # (!\inst32|sub|110~q\ & (((!\inst32|sub|87~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|99~q\,
	datab => \inst32|sub|9~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst32|sub|110~q\,
	combout => \inst34|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y4_N0
\inst34|D_sig[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|D_sig[1]~feeder_combout\ = \inst34|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|Mux6~0_combout\,
	combout => \inst34|D_sig[1]~feeder_combout\);

-- Location: FF_X7_Y4_N1
\inst34|D_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	d => \inst34|D_sig[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|D_sig\(1));

-- Location: LCCOMB_X7_Y4_N2
\inst32|sub|92~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|92~2_combout\ = (\inst33~q\ & (!\inst31~q\ & (\inst32|sub|9~q\ $ (\inst32|sub|87~q\)))) # (!\inst33~q\ & (\inst32|sub|87~q\ $ (((\inst32|sub|9~q\ & \inst31~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|9~q\,
	datab => \inst33~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst31~q\,
	combout => \inst32|sub|92~2_combout\);

-- Location: LCCOMB_X7_Y4_N4
\inst32|sub|92~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|92~3_combout\ = (\inst32|sub|92~2_combout\) # ((\inst31~q\ & (\inst34|D_sig\(1) & \inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~q\,
	datab => \inst34|D_sig\(1),
	datac => \inst32|sub|92~2_combout\,
	datad => \inst33~q\,
	combout => \inst32|sub|92~3_combout\);

-- Location: FF_X7_Y4_N5
\inst32|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst32|sub|92~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|87~q\);

-- Location: LCCOMB_X7_Y4_N22
\inst34|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|Mux7~0_combout\ = (\inst32|sub|110~q\ & (!\inst32|sub|99~q\ & ((!\inst32|sub|87~q\) # (!\inst32|sub|9~q\)))) # (!\inst32|sub|110~q\ & (((\inst32|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|99~q\,
	datab => \inst32|sub|9~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst32|sub|110~q\,
	combout => \inst34|Mux7~0_combout\);

-- Location: FF_X7_Y4_N27
\inst34|D_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst34|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|D_sig\(0));

-- Location: LCCOMB_X7_Y4_N18
\inst32|sub|75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|75~0_combout\ = (\inst31~q\ & ((\inst33~q\ & ((\inst34|D_sig\(0)))) # (!\inst33~q\ & (!\inst32|sub|9~q\)))) # (!\inst31~q\ & (\inst33~q\ $ ((\inst32|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~q\,
	datab => \inst33~q\,
	datac => \inst32|sub|9~q\,
	datad => \inst34|D_sig\(0),
	combout => \inst32|sub|75~0_combout\);

-- Location: FF_X7_Y4_N19
\inst32|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst32|sub|75~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|9~q\);

-- Location: LCCOMB_X7_Y4_N30
\inst32|sub|96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|96~0_combout\ = (\inst32|sub|9~q\ & (\inst32|sub|87~q\ & (\inst33~q\ $ (\inst31~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|9~q\,
	datab => \inst33~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst31~q\,
	combout => \inst32|sub|96~0_combout\);

-- Location: LCCOMB_X7_Y4_N10
\inst32|sub|102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|sub|102~0_combout\ = (\inst7|D7~3_combout\ & (\inst34|D_sig\(2))) # (!\inst7|D7~3_combout\ & ((\inst32|sub|99~q\ $ (\inst32|sub|96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|D_sig\(2),
	datab => \inst7|D7~3_combout\,
	datac => \inst32|sub|99~q\,
	datad => \inst32|sub|96~0_combout\,
	combout => \inst32|sub|102~0_combout\);

-- Location: FF_X7_Y4_N11
\inst32|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst32|sub|102~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|sub|99~q\);

-- Location: LCCOMB_X7_Y4_N14
\inst34|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|Mux5~0_combout\ = (\inst32|sub|110~q\ & (\inst32|sub|99~q\ & (!\inst32|sub|9~q\ & !\inst32|sub|87~q\))) # (!\inst32|sub|110~q\ & (\inst32|sub|9~q\ $ (((!\inst32|sub|99~q\ & \inst32|sub|87~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|sub|99~q\,
	datab => \inst32|sub|9~q\,
	datac => \inst32|sub|87~q\,
	datad => \inst32|sub|110~q\,
	combout => \inst34|Mux5~0_combout\);

-- Location: FF_X7_Y4_N7
\inst34|D_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MemCLK~inputclkctrl_outclk\,
	asdata => \inst34|Mux5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|D_sig\(2));

-- Location: LCCOMB_X9_Y4_N24
\inst15|22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|22~0_combout\ = (\inst31~q\ & (\inst16~q\)) # (!\inst31~q\ & ((\inst33~q\ & (\inst16~q\)) # (!\inst33~q\ & ((\inst34|D_sig\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst31~q\,
	datac => \inst33~q\,
	datad => \inst34|D_sig\(2),
	combout => \inst15|22~0_combout\);

-- Location: FF_X9_Y4_N7
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	asdata => \inst15|22~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X9_Y4_N22
\inst15|23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|23~0_combout\ = (\inst33~q\ & (((\inst1~q\)))) # (!\inst33~q\ & ((\inst31~q\ & (\inst1~q\)) # (!\inst31~q\ & ((\inst34|D_sig\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \inst31~q\,
	datac => \inst1~q\,
	datad => \inst34|D_sig\(1),
	combout => \inst15|23~0_combout\);

-- Location: FF_X9_Y4_N5
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	asdata => \inst15|23~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X9_Y4_N8
\inst7|D3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D3~2_combout\ = (!\inst16~q\ & (\inst1~q\ & (!\inst33~q\ & \inst31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst1~q\,
	datac => \inst33~q\,
	datad => \inst31~q\,
	combout => \inst7|D3~2_combout\);

-- Location: LCCOMB_X9_Y4_N20
\inst15|24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|24~0_combout\ = (\inst33~q\ & (\inst2~q\)) # (!\inst33~q\ & ((\inst31~q\ & (\inst2~q\)) # (!\inst31~q\ & ((\inst34|D_sig\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \inst2~q\,
	datac => \inst31~q\,
	datad => \inst34|D_sig\(0),
	combout => \inst15|24~0_combout\);

-- Location: FF_X9_Y4_N3
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	asdata => \inst15|24~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X9_Y4_N10
\inst7|Q0o\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Q0o~combout\ = (\inst7|D3~2_combout\ & ((\inst2~q\) # ((!\inst33~q\ & !\inst31~q\)))) # (!\inst7|D3~2_combout\ & (!\inst33~q\ & (!\inst31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D3~2_combout\,
	datab => \inst33~q\,
	datac => \inst31~q\,
	datad => \inst2~q\,
	combout => \inst7|Q0o~combout\);

-- Location: FF_X9_Y4_N11
inst31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst7|Q0o~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31~q\);

-- Location: LCCOMB_X9_Y4_N6
\inst7|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~0_combout\ = (\inst31~q\ & (((\inst33~q\) # (!\inst16~q\)) # (!\inst1~q\))) # (!\inst31~q\ & (((!\inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~q\,
	datab => \inst1~q\,
	datac => \inst16~q\,
	datad => \inst33~q\,
	combout => \inst7|D2~0_combout\);

-- Location: LCCOMB_X9_Y4_N18
\inst7|D7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D7~2_combout\ = (!\inst1~q\ & (!\inst33~q\ & \inst31~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \inst33~q\,
	datad => \inst31~q\,
	combout => \inst7|D7~2_combout\);

-- Location: LCCOMB_X9_Y4_N26
\inst8|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~4_combout\ = (\inst7|D7~2_combout\ & ((\inst16~q\) # (!\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst2~q\,
	datad => \inst7|D7~2_combout\,
	combout => \inst8|sub|81~4_combout\);

-- Location: LCCOMB_X12_Y4_N18
\inst99|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|9~0_combout\ = (\inst7|D2~0_combout\ & (((\inst8|sub|81~4_combout\)))) # (!\inst7|D2~0_combout\ & ((\inst8|sub|81~4_combout\ & (inst4(3))) # (!\inst8|sub|81~4_combout\ & ((\inst34|D_sig\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(3),
	datab => \inst7|D2~0_combout\,
	datac => \inst8|sub|81~4_combout\,
	datad => \inst34|D_sig\(3),
	combout => \inst99|9~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\inst47|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~0_combout\ = ((!\inst16~q\ & \inst2~q\)) # (!\inst7|D7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst2~q\,
	datad => \inst7|D7~2_combout\,
	combout => \inst47|sub|81~0_combout\);

-- Location: LCCOMB_X9_Y4_N0
\inst7|D7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D7~1_combout\ = (!\inst1~q\ & (!\inst2~q\ & (!\inst33~q\ & \inst31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datab => \inst2~q\,
	datac => \inst33~q\,
	datad => \inst31~q\,
	combout => \inst7|D7~1_combout\);

-- Location: LCCOMB_X10_Y4_N12
\inst47|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~3_combout\ = (\inst47|sub|81~0_combout\ & ((inst94(2)) # ((\inst8|sub|81~4_combout\ & \inst47|sub|81~2_combout\)))) # (!\inst47|sub|81~0_combout\ & (((\inst8|sub|81~4_combout\ & \inst47|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|sub|81~0_combout\,
	datab => inst94(2),
	datac => \inst8|sub|81~4_combout\,
	datad => \inst47|sub|81~2_combout\,
	combout => \inst47|sub|81~3_combout\);

-- Location: LCCOMB_X9_Y4_N12
\inst7|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D3~0_combout\ = (\inst16~q\ & (\inst1~q\)) # (!\inst16~q\ & (!\inst1~q\ & \inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datac => \inst1~q\,
	datad => \inst2~q\,
	combout => \inst7|D3~0_combout\);

-- Location: LCCOMB_X9_Y4_N4
\inst7|D3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D3~1_combout\ = (\inst33~q\) # ((!\inst7|D3~0_combout\) # (!\inst31~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \inst31~q\,
	datad => \inst7|D3~0_combout\,
	combout => \inst7|D3~1_combout\);

-- Location: LCCOMB_X9_Y4_N2
\inst7|D4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D4~0_combout\ = (!\inst16~q\ & (\inst2~q\ & \inst7|D7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datac => \inst2~q\,
	datad => \inst7|D7~2_combout\,
	combout => \inst7|D4~0_combout\);

-- Location: LCCOMB_X10_Y4_N0
\inst12|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|10~0_combout\ = (\inst7|D4~0_combout\ & ((inst94(2)) # ((\inst7|D3~1_combout\)))) # (!\inst7|D4~0_combout\ & (((!\inst7|D3~1_combout\ & \inst34|D_sig\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D4~0_combout\,
	datab => inst94(2),
	datac => \inst7|D3~1_combout\,
	datad => \inst34|D_sig\(2),
	combout => \inst12|10~0_combout\);

-- Location: LCCOMB_X10_Y4_N26
\inst12|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|10~1_combout\ = (\inst7|D3~1_combout\ & ((\inst12|10~0_combout\ & (\inst47|sub|81~3_combout\)) # (!\inst12|10~0_combout\ & ((inst4(2)))))) # (!\inst7|D3~1_combout\ & (((\inst12|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|sub|81~3_combout\,
	datab => \inst7|D3~1_combout\,
	datac => inst4(2),
	datad => \inst12|10~0_combout\,
	combout => \inst12|10~1_combout\);

-- Location: FF_X10_Y4_N27
\inst4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst12|10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(2));

-- Location: LCCOMB_X10_Y4_N30
\inst19[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- inst19(2) = (inst4(2)) # (inst94(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst4(2),
	datad => inst94(2),
	combout => inst19(2));

-- Location: LCCOMB_X10_Y4_N22
\inst13|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|9~0_combout\ = (\inst7|D4~0_combout\ & (((\inst7|D3~1_combout\)))) # (!\inst7|D4~0_combout\ & ((\inst7|D3~1_combout\ & (inst4(1))) # (!\inst7|D3~1_combout\ & ((\inst34|D_sig\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D4~0_combout\,
	datab => inst4(1),
	datac => \inst7|D3~1_combout\,
	datad => \inst34|D_sig\(1),
	combout => \inst13|9~0_combout\);

-- Location: LCCOMB_X9_Y4_N30
\inst7|D7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D7~0_combout\ = ((\inst33~q\) # ((\inst1~q\) # (!\inst31~q\))) # (!\inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst33~q\,
	datac => \inst1~q\,
	datad => \inst31~q\,
	combout => \inst7|D7~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\Cin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X11_Y4_N30
\inst10|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|sub|81~1_combout\ = (inst94(1) & (!\inst7|D7~0_combout\ & \inst7|D7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst94(1),
	datac => \inst7|D7~0_combout\,
	datad => \inst7|D7~1_combout\,
	combout => \inst10|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y4_N18
\inst8|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~1_combout\ = (\inst7|D7~0_combout\ & \inst7|D7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|D7~0_combout\,
	datad => \inst7|D7~1_combout\,
	combout => \inst8|sub|81~1_combout\);

-- Location: LCCOMB_X11_Y4_N24
\inst10|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|sub|81~0_combout\ = (\inst8|sub|81~1_combout\ & (inst4(0) $ (\Cin~input_o\ $ (inst94(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(0),
	datab => \Cin~input_o\,
	datac => inst94(0),
	datad => \inst8|sub|81~1_combout\,
	combout => \inst10|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y4_N0
\inst10|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|sub|81~2_combout\ = (\inst10|sub|81~1_combout\) # ((\inst10|sub|81~0_combout\) # ((inst94(0) & \inst47|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sub|81~1_combout\,
	datab => inst94(0),
	datac => \inst47|sub|81~0_combout\,
	datad => \inst10|sub|81~0_combout\,
	combout => \inst10|sub|81~2_combout\);

-- Location: LCCOMB_X11_Y4_N20
\inst69|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|10~0_combout\ = (\inst7|D2~0_combout\ & (((\inst8|sub|81~4_combout\)))) # (!\inst7|D2~0_combout\ & ((\inst8|sub|81~4_combout\ & (inst4(0))) # (!\inst8|sub|81~4_combout\ & ((\inst34|D_sig\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D2~0_combout\,
	datab => inst4(0),
	datac => \inst8|sub|81~4_combout\,
	datad => \inst34|D_sig\(0),
	combout => \inst69|10~0_combout\);

-- Location: LCCOMB_X11_Y4_N12
\inst69|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|10~1_combout\ = (\inst7|D2~0_combout\ & ((\inst69|10~0_combout\ & (\inst10|sub|81~2_combout\)) # (!\inst69|10~0_combout\ & ((inst94(0)))))) # (!\inst7|D2~0_combout\ & (((\inst69|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D2~0_combout\,
	datab => \inst10|sub|81~2_combout\,
	datac => inst94(0),
	datad => \inst69|10~0_combout\,
	combout => \inst69|10~1_combout\);

-- Location: FF_X11_Y4_N13
\inst94[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst69|10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(0));

-- Location: LCCOMB_X11_Y4_N10
\inst13|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|10~0_combout\ = (\inst7|D4~0_combout\ & ((inst94(0)) # ((\inst7|D3~1_combout\)))) # (!\inst7|D4~0_combout\ & (((!\inst7|D3~1_combout\ & \inst34|D_sig\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst94(0),
	datab => \inst7|D4~0_combout\,
	datac => \inst7|D3~1_combout\,
	datad => \inst34|D_sig\(0),
	combout => \inst13|10~0_combout\);

-- Location: LCCOMB_X11_Y4_N22
\inst13|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|10~1_combout\ = (\inst13|10~0_combout\ & (((\inst10|sub|81~2_combout\)) # (!\inst7|D3~1_combout\))) # (!\inst13|10~0_combout\ & (\inst7|D3~1_combout\ & (inst4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|10~0_combout\,
	datab => \inst7|D3~1_combout\,
	datac => inst4(0),
	datad => \inst10|sub|81~2_combout\,
	combout => \inst13|10~1_combout\);

-- Location: FF_X11_Y4_N23
\inst4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst13|10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(0));

-- Location: LCCOMB_X11_Y4_N4
\inst17|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|104~0_combout\ = (\Cin~input_o\ & ((inst4(0)) # (inst94(0)))) # (!\Cin~input_o\ & (inst4(0) & inst94(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => inst4(0),
	datad => inst94(0),
	combout => \inst17|sub|104~0_combout\);

-- Location: LCCOMB_X10_Y4_N14
\inst9|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~0_combout\ = inst4(1) $ (((\inst7|D7~1_combout\ & \inst17|sub|104~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst4(1),
	datac => \inst7|D7~1_combout\,
	datad => \inst17|sub|104~0_combout\,
	combout => \inst9|sub|81~0_combout\);

-- Location: LCCOMB_X10_Y4_N16
\inst9|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~1_combout\ = (\inst7|D7~1_combout\ & ((inst94(2)) # ((\inst7|D7~0_combout\)))) # (!\inst7|D7~1_combout\ & (((inst94(0) & !\inst7|D7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst94(2),
	datab => inst94(0),
	datac => \inst7|D7~1_combout\,
	datad => \inst7|D7~0_combout\,
	combout => \inst9|sub|81~1_combout\);

-- Location: LCCOMB_X10_Y4_N2
\inst9|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~2_combout\ = (\inst7|D7~0_combout\ & ((inst94(1) & ((!\inst9|sub|81~1_combout\) # (!\inst9|sub|81~0_combout\))) # (!inst94(1) & (\inst9|sub|81~0_combout\)))) # (!\inst7|D7~0_combout\ & (((\inst9|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst94(1),
	datab => \inst7|D7~0_combout\,
	datac => \inst9|sub|81~0_combout\,
	datad => \inst9|sub|81~1_combout\,
	combout => \inst9|sub|81~2_combout\);

-- Location: LCCOMB_X10_Y4_N28
\inst9|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~3_combout\ = (\inst47|sub|81~0_combout\ & ((inst94(1)) # ((\inst8|sub|81~4_combout\ & \inst9|sub|81~2_combout\)))) # (!\inst47|sub|81~0_combout\ & (((\inst8|sub|81~4_combout\ & \inst9|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|sub|81~0_combout\,
	datab => inst94(1),
	datac => \inst8|sub|81~4_combout\,
	datad => \inst9|sub|81~2_combout\,
	combout => \inst9|sub|81~3_combout\);

-- Location: LCCOMB_X10_Y4_N4
\inst13|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|9~1_combout\ = (\inst7|D4~0_combout\ & ((\inst13|9~0_combout\ & ((\inst9|sub|81~3_combout\))) # (!\inst13|9~0_combout\ & (inst94(1))))) # (!\inst7|D4~0_combout\ & (((\inst13|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D4~0_combout\,
	datab => inst94(1),
	datac => \inst13|9~0_combout\,
	datad => \inst9|sub|81~3_combout\,
	combout => \inst13|9~1_combout\);

-- Location: FF_X10_Y4_N5
\inst4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst13|9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(1));

-- Location: LCCOMB_X9_Y4_N14
\inst69|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|9~0_combout\ = (\inst8|sub|81~4_combout\ & (((\inst7|D2~0_combout\)))) # (!\inst8|sub|81~4_combout\ & ((\inst7|D2~0_combout\ & (inst94(1))) # (!\inst7|D2~0_combout\ & ((\inst34|D_sig\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|sub|81~4_combout\,
	datab => inst94(1),
	datac => \inst7|D2~0_combout\,
	datad => \inst34|D_sig\(1),
	combout => \inst69|9~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\inst69|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|9~1_combout\ = (\inst8|sub|81~4_combout\ & ((\inst69|9~0_combout\ & ((\inst9|sub|81~2_combout\))) # (!\inst69|9~0_combout\ & (inst4(1))))) # (!\inst8|sub|81~4_combout\ & (((\inst69|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(1),
	datab => \inst8|sub|81~4_combout\,
	datac => \inst9|sub|81~2_combout\,
	datad => \inst69|9~0_combout\,
	combout => \inst69|9~1_combout\);

-- Location: FF_X9_Y4_N29
\inst94[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst69|9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(1));

-- Location: LCCOMB_X10_Y4_N8
\inst47|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~1_combout\ = (\inst7|D7~1_combout\ & (((\inst7|D7~0_combout\)))) # (!\inst7|D7~1_combout\ & ((\inst7|D7~0_combout\ & (inst19(2))) # (!\inst7|D7~0_combout\ & ((inst94(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst19(2),
	datab => inst94(1),
	datac => \inst7|D7~1_combout\,
	datad => \inst7|D7~0_combout\,
	combout => \inst47|sub|81~1_combout\);

-- Location: LCCOMB_X10_Y4_N6
\inst17|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|80~0_combout\ = inst4(2) $ (inst94(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst4(2),
	datad => inst94(2),
	combout => \inst17|sub|80~0_combout\);

-- Location: LCCOMB_X10_Y4_N20
\inst17|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|80~combout\ = \inst17|sub|80~0_combout\ $ (((inst4(1) & ((inst94(1)) # (\inst17|sub|104~0_combout\))) # (!inst4(1) & (inst94(1) & \inst17|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|sub|80~0_combout\,
	datab => inst4(1),
	datac => inst94(1),
	datad => \inst17|sub|104~0_combout\,
	combout => \inst17|sub|80~combout\);

-- Location: LCCOMB_X10_Y4_N10
\inst47|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~2_combout\ = (\inst7|D7~1_combout\ & ((\inst47|sub|81~1_combout\ & ((\inst17|sub|80~combout\))) # (!\inst47|sub|81~1_combout\ & (inst94(3))))) # (!\inst7|D7~1_combout\ & (((\inst47|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D7~1_combout\,
	datab => inst94(3),
	datac => \inst47|sub|81~1_combout\,
	datad => \inst17|sub|80~combout\,
	combout => \inst47|sub|81~2_combout\);

-- Location: LCCOMB_X10_Y4_N18
\inst99|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|10~0_combout\ = (\inst8|sub|81~4_combout\ & (((\inst7|D2~0_combout\)))) # (!\inst8|sub|81~4_combout\ & ((\inst7|D2~0_combout\ & (inst94(2))) # (!\inst7|D2~0_combout\ & ((\inst34|D_sig\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|sub|81~4_combout\,
	datab => inst94(2),
	datac => \inst7|D2~0_combout\,
	datad => \inst34|D_sig\(2),
	combout => \inst99|10~0_combout\);

-- Location: LCCOMB_X10_Y4_N24
\inst99|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|10~1_combout\ = (\inst8|sub|81~4_combout\ & ((\inst99|10~0_combout\ & (\inst47|sub|81~2_combout\)) # (!\inst99|10~0_combout\ & ((inst4(2)))))) # (!\inst8|sub|81~4_combout\ & (((\inst99|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|sub|81~2_combout\,
	datab => \inst8|sub|81~4_combout\,
	datac => inst4(2),
	datad => \inst99|10~0_combout\,
	combout => \inst99|10~1_combout\);

-- Location: FF_X10_Y4_N25
\inst94[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst99|10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(2));

-- Location: LCCOMB_X12_Y4_N0
\inst8|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~0_combout\ = (inst94(2) & (\inst2~q\ & (!\inst7|D7~0_combout\ & !\inst7|D7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst94(2),
	datab => \inst2~q\,
	datac => \inst7|D7~0_combout\,
	datad => \inst7|D7~1_combout\,
	combout => \inst8|sub|81~0_combout\);

-- Location: LCCOMB_X11_Y4_N6
\inst17|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|105~0_combout\ = (inst4(1) & ((\inst17|sub|104~0_combout\) # (inst94(1)))) # (!inst4(1) & (\inst17|sub|104~0_combout\ & inst94(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst4(1),
	datac => \inst17|sub|104~0_combout\,
	datad => inst94(1),
	combout => \inst17|sub|105~0_combout\);

-- Location: LCCOMB_X11_Y4_N16
\inst17|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|106~0_combout\ = (inst4(2) & ((inst94(2)) # (\inst17|sub|105~0_combout\))) # (!inst4(2) & (inst94(2) & \inst17|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(2),
	datac => inst94(2),
	datad => \inst17|sub|105~0_combout\,
	combout => \inst17|sub|106~0_combout\);

-- Location: LCCOMB_X11_Y4_N28
\inst8|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~2_combout\ = (\inst8|sub|81~1_combout\ & (inst4(3) $ (\inst17|sub|106~0_combout\ $ (inst94(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(3),
	datab => \inst17|sub|106~0_combout\,
	datac => inst94(3),
	datad => \inst8|sub|81~1_combout\,
	combout => \inst8|sub|81~2_combout\);

-- Location: LCCOMB_X11_Y4_N2
\inst8|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~3_combout\ = (\inst8|sub|81~0_combout\) # ((\inst8|sub|81~2_combout\) # ((\inst47|sub|81~0_combout\ & inst94(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|sub|81~0_combout\,
	datab => inst94(3),
	datac => \inst8|sub|81~0_combout\,
	datad => \inst8|sub|81~2_combout\,
	combout => \inst8|sub|81~3_combout\);

-- Location: LCCOMB_X11_Y4_N8
\inst99|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|9~1_combout\ = (\inst7|D2~0_combout\ & ((\inst99|9~0_combout\ & ((\inst8|sub|81~3_combout\))) # (!\inst99|9~0_combout\ & (inst94(3))))) # (!\inst7|D2~0_combout\ & (\inst99|9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D2~0_combout\,
	datab => \inst99|9~0_combout\,
	datac => inst94(3),
	datad => \inst8|sub|81~3_combout\,
	combout => \inst99|9~1_combout\);

-- Location: FF_X11_Y4_N9
\inst94[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst99|9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(3));

-- Location: LCCOMB_X11_Y4_N26
\inst12|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|9~0_combout\ = (\inst7|D3~1_combout\ & ((inst4(3)) # ((\inst7|D4~0_combout\)))) # (!\inst7|D3~1_combout\ & (((!\inst7|D4~0_combout\ & \inst34|D_sig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D3~1_combout\,
	datab => inst4(3),
	datac => \inst7|D4~0_combout\,
	datad => \inst34|D_sig\(3),
	combout => \inst12|9~0_combout\);

-- Location: LCCOMB_X11_Y4_N14
\inst12|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|9~1_combout\ = (\inst7|D4~0_combout\ & ((\inst12|9~0_combout\ & ((\inst8|sub|81~3_combout\))) # (!\inst12|9~0_combout\ & (inst94(3))))) # (!\inst7|D4~0_combout\ & (((\inst12|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst94(3),
	datab => \inst7|D4~0_combout\,
	datac => \inst12|9~0_combout\,
	datad => \inst8|sub|81~3_combout\,
	combout => \inst12|9~1_combout\);

-- Location: FF_X11_Y4_N15
\inst4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~clkctrl_outclk\,
	d => \inst12|9~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(3));

-- Location: LCCOMB_X11_Y1_N28
\inst17|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|107~0_combout\ = (inst4(3) & ((\inst17|sub|106~0_combout\) # (inst94(3)))) # (!inst4(3) & (\inst17|sub|106~0_combout\ & inst94(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst4(3),
	datac => \inst17|sub|106~0_combout\,
	datad => inst94(3),
	combout => \inst17|sub|107~0_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_Cout <= \Cout~output_o\;

ww_CLK <= \CLK~output_o\;

ww_INPUT(3) <= \INPUT[3]~output_o\;

ww_INPUT(2) <= \INPUT[2]~output_o\;

ww_INPUT(1) <= \INPUT[1]~output_o\;

ww_INPUT(0) <= \INPUT[0]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_DIR(3) <= \DIR[3]~output_o\;

ww_DIR(2) <= \DIR[2]~output_o\;

ww_DIR(1) <= \DIR[1]~output_o\;

ww_DIR(0) <= \DIR[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;
END structure;


