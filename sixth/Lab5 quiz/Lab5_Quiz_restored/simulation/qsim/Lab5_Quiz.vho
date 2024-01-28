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

-- DATE "07/16/2021 15:23:03"

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

ENTITY 	Lab5_Quiz IS
    PORT (
	A : OUT std_logic;
	Q : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic
	);
END Lab5_Quiz;

-- Design Ports Information
-- A	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_Quiz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \inst|D1~0_combout\ : std_logic;
SIGNAL \inst|D1~1_combout\ : std_logic;
SIGNAL \inst|C~0_combout\ : std_logic;
SIGNAL \inst|D2~0_combout\ : std_logic;
SIGNAL \inst|D2~1_combout\ : std_logic;
SIGNAL \inst|D0~0_combout\ : std_logic;
SIGNAL \inst|D0~1_combout\ : std_logic;
SIGNAL \inst|A~0_combout\ : std_logic;
SIGNAL \inst|B~2_combout\ : std_logic;
SIGNAL \inst|B~3_combout\ : std_logic;
SIGNAL \inst|C~1_combout\ : std_logic;
SIGNAL inst2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_A~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
Q <= ww_Q;
ww_CLK <= CLK;
ww_D <= D;
ww_E <= E;
B <= ww_B;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_A~0_combout\ <= NOT \inst|A~0_combout\;
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

-- Location: IOOBUF_X3_Y0_N30
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_A~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X3_Y7_N2
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B~3_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|C~1_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

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

-- Location: IOIBUF_X3_Y7_N29
\E~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X3_Y7_N8
\D~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X3_Y4_N28
\inst|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~0_combout\ = (!inst2(1) & (!inst2(2) & ((inst2(0)) # (!\D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => inst2(1),
	datac => inst2(0),
	datad => inst2(2),
	combout => \inst|D1~0_combout\);

-- Location: LCCOMB_X3_Y4_N16
\inst|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~1_combout\ = (\inst|D1~0_combout\) # ((!\E~input_o\ & (!inst2(0) & \inst|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => inst2(0),
	datac => \inst|C~0_combout\,
	datad => \inst|D1~0_combout\,
	combout => \inst|D1~1_combout\);

-- Location: FF_X3_Y4_N17
\inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(1));

-- Location: LCCOMB_X3_Y4_N4
\inst|C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C~0_combout\ = (!inst2(2) & inst2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst2(2),
	datad => inst2(1),
	combout => \inst|C~0_combout\);

-- Location: LCCOMB_X3_Y4_N20
\inst|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~0_combout\ = (!inst2(1) & (inst2(2) & ((\D~input_o\) # (!inst2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => inst2(1),
	datac => inst2(0),
	datad => inst2(2),
	combout => \inst|D2~0_combout\);

-- Location: LCCOMB_X3_Y4_N10
\inst|D2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~1_combout\ = (\inst|D2~0_combout\) # ((\inst|C~0_combout\ & ((\E~input_o\) # (inst2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => inst2(0),
	datac => \inst|C~0_combout\,
	datad => \inst|D2~0_combout\,
	combout => \inst|D2~1_combout\);

-- Location: FF_X3_Y4_N11
\inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(2));

-- Location: LCCOMB_X3_Y4_N2
\inst|D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~0_combout\ = (inst2(1) & (!\E~input_o\)) # (!inst2(1) & ((\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datac => \D~input_o\,
	datad => inst2(1),
	combout => \inst|D0~0_combout\);

-- Location: LCCOMB_X3_Y4_N30
\inst|D0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~1_combout\ = (inst2(2) & (!inst2(1) & ((\inst|D0~0_combout\) # (!inst2(0))))) # (!inst2(2) & (((inst2(0)) # (\inst|D0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst2(2),
	datab => inst2(1),
	datac => inst2(0),
	datad => \inst|D0~0_combout\,
	combout => \inst|D0~1_combout\);

-- Location: FF_X3_Y4_N31
\inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(0));

-- Location: LCCOMB_X3_Y4_N12
\inst|A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|A~0_combout\ = (inst2(0)) # (inst2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst2(0),
	datac => inst2(1),
	combout => \inst|A~0_combout\);

-- Location: LCCOMB_X3_Y4_N18
\inst|B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|B~2_combout\ = (inst2(1) & ((inst2(0) $ (\E~input_o\)))) # (!inst2(1) & (((inst2(0))) # (!\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst2(1),
	datab => \D~input_o\,
	datac => inst2(0),
	datad => \E~input_o\,
	combout => \inst|B~2_combout\);

-- Location: LCCOMB_X3_Y4_N24
\inst|B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|B~3_combout\ = (!inst2(2) & \inst|B~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inst2(2),
	datad => \inst|B~2_combout\,
	combout => \inst|B~3_combout\);

-- Location: LCCOMB_X3_Y4_N22
\inst|C~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C~1_combout\ = (inst2(1) & (!inst2(2) & inst2(0))) # (!inst2(1) & (inst2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst2(1),
	datac => inst2(2),
	datad => inst2(0),
	combout => \inst|C~1_combout\);

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

ww_A <= \A~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;
END structure;


