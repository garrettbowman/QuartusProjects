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

-- DATE "06/11/2021 09:16:27"

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

ENTITY 	Lab3_3bit_Cnt IS
    PORT (
	Q1 : OUT std_logic;
	C1 : IN std_logic;
	CLK : IN std_logic;
	F : IN std_logic;
	Q2 : OUT std_logic;
	C2 : IN std_logic;
	B : IN std_logic;
	Q0 : OUT std_logic;
	C0 : IN std_logic;
	S0 : IN std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	SP : OUT std_logic
	);
END Lab3_3bit_Cnt;

-- Design Ports Information
-- Q1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3_3bit_Cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_C0 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_SP : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \SP~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \inst1~6_combout\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \C2~input_o\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \C0~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst31~0_combout\ : std_logic;
SIGNAL \inst34~0_combout\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;
SIGNAL \inst30~1_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~_emulated_q\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst~3_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~_emulated_q\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \inst1~5_combout\ : std_logic;
SIGNAL \inst1~3_combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~_emulated_q\ : std_logic;
SIGNAL \inst1~2_combout\ : std_logic;
SIGNAL \inst35~0_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q1 <= ww_Q1;
ww_C1 <= C1;
ww_CLK <= CLK;
ww_F <= F;
Q2 <= ww_Q2;
ww_C2 <= C2;
ww_B <= B;
Q0 <= ww_Q0;
ww_C0 <= C0;
ww_S0 <= S0;
ww_S2 <= S2;
ww_S1 <= S1;
SP <= ww_SP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst3~0_combout\ <= NOT \inst3~0_combout\;
\ALT_INV_inst~0_combout\ <= NOT \inst~0_combout\;
\ALT_INV_inst1~0_combout\ <= NOT \inst1~0_combout\;
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

-- Location: IOOBUF_X18_Y3_N2
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~2_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X18_Y3_N23
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\SP~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \SP~output_o\);

-- Location: IOIBUF_X18_Y4_N1
\S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X18_Y2_N22
\C1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: LCCOMB_X17_Y3_N0
\inst1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = (\C1~input_o\ & ((\inst1~1_combout\) # (!\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S1~input_o\,
	datac => \C1~input_o\,
	datad => \inst1~1_combout\,
	combout => \inst1~1_combout\);

-- Location: IOIBUF_X0_Y4_N15
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

-- Location: IOIBUF_X18_Y3_N15
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X18_Y4_N8
\F~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: LCCOMB_X17_Y3_N30
\inst1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~6_combout\ = (\B~input_o\) # (\F~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~input_o\,
	datad => \F~input_o\,
	combout => \inst1~6_combout\);

-- Location: IOIBUF_X18_Y3_N8
\S2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X18_Y2_N1
\C2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C2,
	o => \C2~input_o\);

-- Location: LCCOMB_X17_Y3_N6
\inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (\C2~input_o\ & ((\inst~1_combout\) # (!\S2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S2~input_o\,
	datac => \C2~input_o\,
	datad => \inst~1_combout\,
	combout => \inst~1_combout\);

-- Location: LCCOMB_X17_Y3_N20
inst14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (!\B~input_o\ & (!\F~input_o\ & \inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \F~input_o\,
	datac => \inst~2_combout\,
	combout => \inst14~combout\);

-- Location: IOIBUF_X16_Y0_N29
\C0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C0,
	o => \C0~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\S0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X16_Y3_N18
\inst3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\C0~input_o\ & ((\inst3~1_combout\) # (!\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0~input_o\,
	datac => \S0~input_o\,
	datad => \inst3~1_combout\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X16_Y3_N30
\inst31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31~0_combout\ = (!\B~input_o\ & (\inst3~2_combout\ & !\inst~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \inst3~2_combout\,
	datad => \inst~2_combout\,
	combout => \inst31~0_combout\);

-- Location: LCCOMB_X17_Y3_N10
\inst34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34~0_combout\ = (\F~input_o\ & (\inst~2_combout\ & !\inst1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F~input_o\,
	datac => \inst~2_combout\,
	datad => \inst1~2_combout\,
	combout => \inst34~0_combout\);

-- Location: LCCOMB_X16_Y3_N6
\inst30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = (\F~input_o\ & (\B~input_o\ & (!\inst3~2_combout\))) # (!\F~input_o\ & ((\inst~2_combout\) # ((\B~input_o\ & !\inst3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \B~input_o\,
	datac => \inst3~2_combout\,
	datad => \inst~2_combout\,
	combout => \inst30~0_combout\);

-- Location: LCCOMB_X16_Y3_N28
\inst30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30~1_combout\ = (\inst1~2_combout\ & \inst30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1~2_combout\,
	datad => \inst30~0_combout\,
	combout => \inst30~1_combout\);

-- Location: LCCOMB_X16_Y3_N10
\inst3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = \inst3~1_combout\ $ (((\inst31~0_combout\) # ((\inst34~0_combout\) # (\inst30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31~0_combout\,
	datab => \inst3~1_combout\,
	datac => \inst34~0_combout\,
	datad => \inst30~1_combout\,
	combout => \inst3~3_combout\);

-- Location: LCCOMB_X16_Y3_N12
\inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (!\C0~input_o\) # (!\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0~input_o\,
	datad => \C0~input_o\,
	combout => \inst3~0_combout\);

-- Location: FF_X16_Y3_N11
\inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3~3_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~_emulated_q\);

-- Location: LCCOMB_X16_Y3_N4
\inst3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\C0~input_o\ & ((\inst3~1_combout\ $ (\inst3~_emulated_q\)) # (!\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \C0~input_o\,
	datac => \S0~input_o\,
	datad => \inst3~_emulated_q\,
	combout => \inst3~2_combout\);

-- Location: LCCOMB_X17_Y3_N26
\inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (!\inst~2_combout\ & (\F~input_o\ & ((\inst3~2_combout\) # (!\inst1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~2_combout\,
	datab => \F~input_o\,
	datac => \inst3~2_combout\,
	datad => \inst1~2_combout\,
	combout => \inst16~0_combout\);

-- Location: LCCOMB_X17_Y3_N2
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\B~input_o\ & (!\inst~2_combout\ & \inst1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \inst~2_combout\,
	datad => \inst1~2_combout\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X17_Y3_N16
\inst~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~3_combout\ = \inst~1_combout\ $ (((\inst14~combout\) # ((\inst16~0_combout\) # (\inst13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~1_combout\,
	datab => \inst14~combout\,
	datac => \inst16~0_combout\,
	datad => \inst13~0_combout\,
	combout => \inst~3_combout\);

-- Location: LCCOMB_X17_Y3_N8
\inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (!\S2~input_o\) # (!\C2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2~input_o\,
	datad => \S2~input_o\,
	combout => \inst~0_combout\);

-- Location: FF_X17_Y3_N17
\inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst~3_combout\,
	clrn => \ALT_INV_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~_emulated_q\);

-- Location: LCCOMB_X17_Y3_N22
\inst~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = (\C2~input_o\ & ((\inst~1_combout\ $ (\inst~_emulated_q\)) # (!\S2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~1_combout\,
	datab => \S2~input_o\,
	datac => \C2~input_o\,
	datad => \inst~_emulated_q\,
	combout => \inst~2_combout\);

-- Location: LCCOMB_X17_Y3_N24
\inst1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~5_combout\ = (\inst~2_combout\ & (!\F~input_o\ & (!\inst3~2_combout\))) # (!\inst~2_combout\ & ((\inst3~2_combout\ & (!\F~input_o\)) # (!\inst3~2_combout\ & ((!\B~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~2_combout\,
	datab => \F~input_o\,
	datac => \inst3~2_combout\,
	datad => \B~input_o\,
	combout => \inst1~5_combout\);

-- Location: LCCOMB_X17_Y3_N28
\inst1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~3_combout\ = \inst1~1_combout\ $ ((((!\inst1~6_combout\ & \inst1~2_combout\)) # (!\inst1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~6_combout\,
	datab => \inst1~1_combout\,
	datac => \inst1~2_combout\,
	datad => \inst1~5_combout\,
	combout => \inst1~3_combout\);

-- Location: LCCOMB_X17_Y3_N12
\inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (!\S1~input_o\) # (!\C1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1~input_o\,
	datad => \S1~input_o\,
	combout => \inst1~0_combout\);

-- Location: FF_X17_Y3_N29
\inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1~3_combout\,
	clrn => \ALT_INV_inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~_emulated_q\);

-- Location: LCCOMB_X17_Y3_N18
\inst1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~2_combout\ = (\C1~input_o\ & ((\inst1~1_combout\ $ (\inst1~_emulated_q\)) # (!\S1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~1_combout\,
	datab => \S1~input_o\,
	datac => \C1~input_o\,
	datad => \inst1~_emulated_q\,
	combout => \inst1~2_combout\);

-- Location: LCCOMB_X16_Y3_N24
\inst35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35~0_combout\ = (\inst3~2_combout\ & ((\inst~2_combout\ & ((\B~input_o\))) # (!\inst~2_combout\ & (\F~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \inst3~2_combout\,
	datac => \B~input_o\,
	datad => \inst~2_combout\,
	combout => \inst35~0_combout\);

-- Location: FF_X16_Y3_N25
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

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

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_SP <= \SP~output_o\;
END structure;


