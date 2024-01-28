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

-- DATE "07/22/2021 04:38:24"

-- 
-- Device: Altera 10M04SCU169C8G Package UFBGA169
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

ENTITY 	LAB6_Part1 IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	CLK : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END LAB6_Part1;

-- Design Ports Information
-- Cout	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part1 IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst2~feeder_combout\ : std_logic;
SIGNAL \inst33~0_combout\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst1~feeder_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst31|D2~0_combout\ : std_logic;
SIGNAL \inst99|10~2_combout\ : std_logic;
SIGNAL \inst10|sub|81~0_combout\ : std_logic;
SIGNAL \inst47|sub|81~0_combout\ : std_logic;
SIGNAL \inst11|5~0_combout\ : std_logic;
SIGNAL \inst69|9~2_combout\ : std_logic;
SIGNAL \inst4[1]~feeder_combout\ : std_logic;
SIGNAL \inst31|D4~0_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst69|10~0_combout\ : std_logic;
SIGNAL \inst69|10~1_combout\ : std_logic;
SIGNAL \inst17|sub|76~0_combout\ : std_logic;
SIGNAL \inst10|sub|81~1_combout\ : std_logic;
SIGNAL \inst17|sub|104~0_combout\ : std_logic;
SIGNAL \inst17|sub|78~combout\ : std_logic;
SIGNAL \inst9|sub|81~0_combout\ : std_logic;
SIGNAL \inst31|D6~combout\ : std_logic;
SIGNAL \inst9|sub|81~1_combout\ : std_logic;
SIGNAL \inst9|sub|81~2_combout\ : std_logic;
SIGNAL \inst9|sub|81~3_combout\ : std_logic;
SIGNAL \inst69|9~3_combout\ : std_logic;
SIGNAL \inst47|sub|81~1_combout\ : std_logic;
SIGNAL \inst47|sub|81~2_combout\ : std_logic;
SIGNAL \inst17|sub|105~0_combout\ : std_logic;
SIGNAL \inst17|sub|80~combout\ : std_logic;
SIGNAL \inst47|sub|81~3_combout\ : std_logic;
SIGNAL \inst99|10~3_combout\ : std_logic;
SIGNAL \inst99|10~4_combout\ : std_logic;
SIGNAL \inst17|sub|106~0_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \inst99|9~0_combout\ : std_logic;
SIGNAL \inst99|9~1_combout\ : std_logic;
SIGNAL \inst17|sub|82~0_combout\ : std_logic;
SIGNAL \inst8|sub|81~0_combout\ : std_logic;
SIGNAL \inst8|sub|81~1_combout\ : std_logic;
SIGNAL \inst4[3]~feeder_combout\ : std_logic;
SIGNAL \inst17|sub|107~0_combout\ : std_logic;
SIGNAL inst94 : std_logic_vector(3 DOWNTO 0);
SIGNAL inst4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_inst33~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_CLK <= CLK;
ww_INPUT <= INPUT;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst33~q\ <= NOT \inst33~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: IOOBUF_X13_Y25_N9
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

-- Location: IOOBUF_X10_Y15_N23
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
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

-- Location: IOOBUF_X31_Y19_N2
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

-- Location: IOOBUF_X10_Y20_N23
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
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

-- Location: IOOBUF_X10_Y18_N23
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

-- Location: IOOBUF_X10_Y19_N23
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

-- Location: IOOBUF_X15_Y25_N9
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

-- Location: IOOBUF_X15_Y25_N16
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

-- Location: IOOBUF_X10_Y20_N16
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

-- Location: IOOBUF_X17_Y25_N23
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

-- Location: IOOBUF_X15_Y25_N2
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

-- Location: IOIBUF_X0_Y6_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y19_N15
\INPUT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X16_Y19_N4
\inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~feeder_combout\ = \INPUT[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[0]~input_o\,
	combout => \inst2~feeder_combout\);

-- Location: LCCOMB_X16_Y19_N22
\inst33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33~0_combout\ = !\inst33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33~q\,
	combout => \inst33~0_combout\);

-- Location: FF_X16_Y19_N23
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: FF_X16_Y19_N5
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2~feeder_combout\,
	ena => \ALT_INV_inst33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: IOIBUF_X15_Y25_N29
\INPUT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: IOIBUF_X17_Y25_N29
\INPUT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X16_Y19_N6
\inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~feeder_combout\ = \INPUT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[1]~input_o\,
	combout => \inst1~feeder_combout\);

-- Location: FF_X16_Y19_N7
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1~feeder_combout\,
	ena => \ALT_INV_inst33~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X16_Y19_N26
\inst31|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D2~0_combout\ = (\inst1~q\) # ((\inst2~q\) # (!\inst33~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datac => \inst33~q\,
	datad => \inst2~q\,
	combout => \inst31|D2~0_combout\);

-- Location: LCCOMB_X15_Y19_N12
\inst99|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|10~2_combout\ = (\inst31|D2~0_combout\ & (inst94(2))) # (!\inst31|D2~0_combout\ & ((\INPUT[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst94(2),
	datac => \INPUT[2]~input_o\,
	datad => \inst31|D2~0_combout\,
	combout => \inst99|10~2_combout\);

-- Location: LCCOMB_X16_Y19_N20
\inst10|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|sub|81~0_combout\ = (\inst33~q\ & (\inst2~q\ & \inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst10|sub|81~0_combout\);

-- Location: LCCOMB_X15_Y19_N28
\inst47|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~0_combout\ = inst94(2) $ (((\inst1~q\) # ((!\inst2~q\) # (!\inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datab => inst94(2),
	datac => \inst33~q\,
	datad => \inst2~q\,
	combout => \inst47|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y19_N12
\inst11|5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|5~0_combout\ = (\inst33~q\ & \inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33~q\,
	datad => \inst2~q\,
	combout => \inst11|5~0_combout\);

-- Location: LCCOMB_X17_Y19_N20
\inst69|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|9~2_combout\ = (!\inst11|5~0_combout\ & ((\inst31|D2~0_combout\ & ((inst94(1)))) # (!\inst31|D2~0_combout\ & (\INPUT[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[1]~input_o\,
	datab => inst94(1),
	datac => \inst31|D2~0_combout\,
	datad => \inst11|5~0_combout\,
	combout => \inst69|9~2_combout\);

-- Location: LCCOMB_X17_Y19_N30
\inst4[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4[1]~feeder_combout\ = \inst9|sub|81~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|sub|81~3_combout\,
	combout => \inst4[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y19_N8
\inst31|D4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D4~0_combout\ = (\inst1~q\ & (\inst33~q\ & !\inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datac => \inst33~q\,
	datad => \inst2~q\,
	combout => \inst31|D4~0_combout\);

-- Location: FF_X17_Y19_N31
\inst4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4[1]~feeder_combout\,
	ena => \inst31|D4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(1));

-- Location: IOIBUF_X10_Y21_N22
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

-- Location: LCCOMB_X17_Y19_N10
\inst69|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|10~0_combout\ = (!\inst11|5~0_combout\ & ((\inst31|D2~0_combout\ & ((inst94(0)))) # (!\inst31|D2~0_combout\ & (\INPUT[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => inst94(0),
	datac => \inst31|D2~0_combout\,
	datad => \inst11|5~0_combout\,
	combout => \inst69|10~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\inst69|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|10~1_combout\ = (\inst69|10~0_combout\) # ((\inst31|D2~0_combout\ & (\inst11|5~0_combout\ & \inst10|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|D2~0_combout\,
	datab => \inst11|5~0_combout\,
	datac => \inst10|sub|81~1_combout\,
	datad => \inst69|10~0_combout\,
	combout => \inst69|10~1_combout\);

-- Location: FF_X17_Y19_N25
\inst94[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst69|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(0));

-- Location: LCCOMB_X17_Y19_N28
\inst17|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|76~0_combout\ = \Cin~input_o\ $ (inst4(0) $ (inst94(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => inst4(0),
	datad => inst94(0),
	combout => \inst17|sub|76~0_combout\);

-- Location: LCCOMB_X17_Y19_N26
\inst10|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|sub|81~1_combout\ = (\inst11|5~0_combout\ & (\inst10|sub|81~0_combout\ & ((\inst17|sub|76~0_combout\)))) # (!\inst11|5~0_combout\ & ((inst94(0)) # ((\inst10|sub|81~0_combout\ & \inst17|sub|76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|5~0_combout\,
	datab => \inst10|sub|81~0_combout\,
	datac => inst94(0),
	datad => \inst17|sub|76~0_combout\,
	combout => \inst10|sub|81~1_combout\);

-- Location: FF_X17_Y19_N23
\inst4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|sub|81~1_combout\,
	sload => VCC,
	ena => \inst31|D4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(0));

-- Location: LCCOMB_X17_Y19_N12
\inst17|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|104~0_combout\ = (\Cin~input_o\ & ((inst4(0)) # (inst94(0)))) # (!\Cin~input_o\ & (inst4(0) & inst94(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => inst4(0),
	datad => inst94(0),
	combout => \inst17|sub|104~0_combout\);

-- Location: LCCOMB_X17_Y19_N8
\inst17|sub|78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|78~combout\ = inst94(1) $ (inst4(1) $ (\inst17|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst94(1),
	datac => inst4(1),
	datad => \inst17|sub|104~0_combout\,
	combout => \inst17|sub|78~combout\);

-- Location: LCCOMB_X16_Y19_N16
\inst9|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~0_combout\ = inst94(1) $ ((((\inst1~q\) # (!\inst2~q\)) # (!\inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datab => \inst2~q\,
	datac => \inst1~q\,
	datad => inst94(1),
	combout => \inst9|sub|81~0_combout\);

-- Location: LCCOMB_X16_Y19_N2
\inst31|D6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|D6~combout\ = ((\inst1~q\) # (!\inst2~q\)) # (!\inst33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33~q\,
	datac => \inst2~q\,
	datad => \inst1~q\,
	combout => \inst31|D6~combout\);

-- Location: LCCOMB_X17_Y19_N16
\inst9|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~1_combout\ = (\inst31|D6~combout\ & ((inst4(1)) # ((inst94(1))))) # (!\inst31|D6~combout\ & (((inst94(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(1),
	datab => inst94(0),
	datac => inst94(1),
	datad => \inst31|D6~combout\,
	combout => \inst9|sub|81~1_combout\);

-- Location: LCCOMB_X17_Y19_N18
\inst9|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~2_combout\ = (\inst11|5~0_combout\ & ((\inst1~q\) # ((\inst9|sub|81~1_combout\)))) # (!\inst11|5~0_combout\ & (((!\inst9|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|5~0_combout\,
	datab => \inst1~q\,
	datac => \inst9|sub|81~0_combout\,
	datad => \inst9|sub|81~1_combout\,
	combout => \inst9|sub|81~2_combout\);

-- Location: LCCOMB_X17_Y19_N6
\inst9|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|sub|81~3_combout\ = (\inst10|sub|81~0_combout\ & ((\inst9|sub|81~2_combout\ & ((\inst17|sub|78~combout\))) # (!\inst9|sub|81~2_combout\ & (inst4(1))))) # (!\inst10|sub|81~0_combout\ & (((\inst9|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(1),
	datab => \inst10|sub|81~0_combout\,
	datac => \inst17|sub|78~combout\,
	datad => \inst9|sub|81~2_combout\,
	combout => \inst9|sub|81~3_combout\);

-- Location: LCCOMB_X17_Y19_N4
\inst69|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst69|9~3_combout\ = (\inst69|9~2_combout\) # ((\inst2~q\ & (\inst33~q\ & \inst9|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst33~q\,
	datac => \inst69|9~2_combout\,
	datad => \inst9|sub|81~3_combout\,
	combout => \inst69|9~3_combout\);

-- Location: FF_X17_Y19_N5
\inst94[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst69|9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(1));

-- Location: LCCOMB_X15_Y19_N6
\inst47|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~1_combout\ = (\inst31|D6~combout\ & ((inst4(2)) # ((inst94(2))))) # (!\inst31|D6~combout\ & (((inst94(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(2),
	datab => inst94(2),
	datac => inst94(1),
	datad => \inst31|D6~combout\,
	combout => \inst47|sub|81~1_combout\);

-- Location: LCCOMB_X15_Y19_N8
\inst47|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~2_combout\ = (\inst11|5~0_combout\ & ((\inst1~q\) # ((\inst47|sub|81~1_combout\)))) # (!\inst11|5~0_combout\ & (((!\inst47|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datab => \inst47|sub|81~0_combout\,
	datac => \inst11|5~0_combout\,
	datad => \inst47|sub|81~1_combout\,
	combout => \inst47|sub|81~2_combout\);

-- Location: LCCOMB_X17_Y19_N14
\inst17|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|105~0_combout\ = (inst4(1) & ((inst94(1)) # (\inst17|sub|104~0_combout\))) # (!inst4(1) & (inst94(1) & \inst17|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(1),
	datac => inst94(1),
	datad => \inst17|sub|104~0_combout\,
	combout => \inst17|sub|105~0_combout\);

-- Location: LCCOMB_X15_Y19_N18
\inst17|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|80~combout\ = inst4(2) $ (inst94(2) $ (\inst17|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst4(2),
	datab => inst94(2),
	datad => \inst17|sub|105~0_combout\,
	combout => \inst17|sub|80~combout\);

-- Location: LCCOMB_X15_Y19_N4
\inst47|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47|sub|81~3_combout\ = (\inst10|sub|81~0_combout\ & ((\inst47|sub|81~2_combout\ & ((\inst17|sub|80~combout\))) # (!\inst47|sub|81~2_combout\ & (inst4(2))))) # (!\inst10|sub|81~0_combout\ & (((\inst47|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sub|81~0_combout\,
	datab => inst4(2),
	datac => \inst47|sub|81~2_combout\,
	datad => \inst17|sub|80~combout\,
	combout => \inst47|sub|81~3_combout\);

-- Location: FF_X15_Y19_N23
\inst4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst47|sub|81~3_combout\,
	sload => VCC,
	ena => \inst31|D4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(2));

-- Location: LCCOMB_X15_Y19_N10
\inst99|10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|10~3_combout\ = (\inst10|sub|81~0_combout\ & ((\inst47|sub|81~2_combout\ & ((\inst17|sub|80~combout\))) # (!\inst47|sub|81~2_combout\ & (inst4(2))))) # (!\inst10|sub|81~0_combout\ & (((\inst47|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sub|81~0_combout\,
	datab => inst4(2),
	datac => \inst47|sub|81~2_combout\,
	datad => \inst17|sub|80~combout\,
	combout => \inst99|10~3_combout\);

-- Location: LCCOMB_X15_Y19_N24
\inst99|10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|10~4_combout\ = (\inst2~q\ & ((\inst33~q\ & ((\inst99|10~3_combout\))) # (!\inst33~q\ & (\inst99|10~2_combout\)))) # (!\inst2~q\ & (((\inst99|10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst33~q\,
	datac => \inst99|10~2_combout\,
	datad => \inst99|10~3_combout\,
	combout => \inst99|10~4_combout\);

-- Location: FF_X15_Y19_N25
\inst94[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst99|10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(2));

-- Location: LCCOMB_X15_Y19_N0
\inst17|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|106~0_combout\ = (inst94(2) & ((inst4(2)) # (\inst17|sub|105~0_combout\))) # (!inst94(2) & (inst4(2) & \inst17|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst94(2),
	datac => inst4(2),
	datad => \inst17|sub|105~0_combout\,
	combout => \inst17|sub|106~0_combout\);

-- Location: IOIBUF_X15_Y25_N22
\INPUT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X15_Y19_N30
\inst99|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|9~0_combout\ = (!\inst11|5~0_combout\ & ((\inst31|D2~0_combout\ & ((inst94(3)))) # (!\inst31|D2~0_combout\ & (\INPUT[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[3]~input_o\,
	datab => inst94(3),
	datac => \inst11|5~0_combout\,
	datad => \inst31|D2~0_combout\,
	combout => \inst99|9~0_combout\);

-- Location: LCCOMB_X15_Y19_N16
\inst99|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst99|9~1_combout\ = (\inst99|9~0_combout\) # ((\inst31|D2~0_combout\ & (\inst11|5~0_combout\ & \inst8|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst99|9~0_combout\,
	datab => \inst31|D2~0_combout\,
	datac => \inst11|5~0_combout\,
	datad => \inst8|sub|81~1_combout\,
	combout => \inst99|9~1_combout\);

-- Location: FF_X15_Y19_N17
\inst94[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst99|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst94(3));

-- Location: LCCOMB_X15_Y19_N20
\inst17|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|82~0_combout\ = inst4(3) $ (inst94(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst4(3),
	datad => inst94(3),
	combout => \inst17|sub|82~0_combout\);

-- Location: LCCOMB_X15_Y19_N26
\inst8|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~0_combout\ = (\inst11|5~0_combout\ & (!\inst1~q\ & ((inst94(2))))) # (!\inst11|5~0_combout\ & (((inst94(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datab => inst94(3),
	datac => \inst11|5~0_combout\,
	datad => inst94(2),
	combout => \inst8|sub|81~0_combout\);

-- Location: LCCOMB_X15_Y19_N2
\inst8|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|sub|81~1_combout\ = (\inst8|sub|81~0_combout\) # ((\inst10|sub|81~0_combout\ & (\inst17|sub|82~0_combout\ $ (\inst17|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sub|81~0_combout\,
	datab => \inst17|sub|82~0_combout\,
	datac => \inst8|sub|81~0_combout\,
	datad => \inst17|sub|106~0_combout\,
	combout => \inst8|sub|81~1_combout\);

-- Location: LCCOMB_X15_Y19_N14
\inst4[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4[3]~feeder_combout\ = \inst8|sub|81~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|sub|81~1_combout\,
	combout => \inst4[3]~feeder_combout\);

-- Location: FF_X15_Y19_N15
\inst4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4[3]~feeder_combout\,
	ena => \inst31|D4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst4(3));

-- Location: LCCOMB_X15_Y19_N22
\inst17|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|sub|107~0_combout\ = (\inst17|sub|106~0_combout\ & ((inst4(3)) # (inst94(3)))) # (!\inst17|sub|106~0_combout\ & (inst4(3) & inst94(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|sub|106~0_combout\,
	datab => inst4(3),
	datad => inst94(3),
	combout => \inst17|sub|107~0_combout\);

-- Location: UNVM_X0_Y11_N40
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
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_Cout <= \Cout~output_o\;

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


