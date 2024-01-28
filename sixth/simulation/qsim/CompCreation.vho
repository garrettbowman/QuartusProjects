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

-- DATE "07/15/2021 02:00:55"

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

ENTITY 	Lab5_DFF_Traf_Cont IS
    PORT (
	red : OUT std_logic;
	EV : IN std_logic;
	CW : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	Restart : IN std_logic;
	CLK : IN std_logic;
	yellow : OUT std_logic;
	green : OUT std_logic;
	S : IN std_logic;
	R : IN std_logic
	);
END Lab5_DFF_Traf_Cont;

-- Design Ports Information
-- red	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EV	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Restart	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CW	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_DFF_Traf_Cont IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_EV : std_logic;
SIGNAL ww_CW : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Restart : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S~input_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EV~input_o\ : std_logic;
SIGNAL \inst7|yellow~0_combout\ : std_logic;
SIGNAL \inst7|D3~0_combout\ : std_logic;
SIGNAL \inst7|D3~1_combout\ : std_logic;
SIGNAL \Restart~input_o\ : std_logic;
SIGNAL \inst7|D1~0_combout\ : std_logic;
SIGNAL \CW~input_o\ : std_logic;
SIGNAL \inst7|D2~2_combout\ : std_logic;
SIGNAL \inst7|D2~3_combout\ : std_logic;
SIGNAL \inst7|D1~1_combout\ : std_logic;
SIGNAL \inst7|D2~1_combout\ : std_logic;
SIGNAL \inst7|D0~0_combout\ : std_logic;
SIGNAL \inst7|D0~1_combout\ : std_logic;
SIGNAL \inst7|D2~4_combout\ : std_logic;
SIGNAL \inst7|D2~5_combout\ : std_logic;
SIGNAL \inst7|D2~6_combout\ : std_logic;
SIGNAL \inst7|red~0_combout\ : std_logic;
SIGNAL \inst7|yellow~1_combout\ : std_logic;
SIGNAL \inst7|D2~0_combout\ : std_logic;
SIGNAL \inst7|green~0_combout\ : std_logic;
SIGNAL inst : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Restart~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

red <= ww_red;
ww_EV <= EV;
ww_CW <= CW;
Q <= ww_Q;
ww_Restart <= Restart;
ww_CLK <= CLK;
yellow <= ww_yellow;
green <= ww_green;
ww_S <= S;
ww_R <= R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Restart~input_o\ <= NOT \Restart~input_o\;
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
\red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|red~0_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\yellow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|yellow~1_combout\,
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|green~0_combout\,
	devoe => ww_devoe,
	o => \green~output_o\);

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

-- Location: IOIBUF_X0_Y3_N8
\EV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EV,
	o => \EV~input_o\);

-- Location: LCCOMB_X9_Y1_N26
\inst7|yellow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|yellow~0_combout\ = (inst(2) & (inst(0) & (inst(1) & !inst(3)))) # (!inst(2) & (!inst(0) & (!inst(1) & inst(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(2),
	datab => inst(0),
	datac => inst(1),
	datad => inst(3),
	combout => \inst7|yellow~0_combout\);

-- Location: LCCOMB_X9_Y1_N28
\inst7|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D3~0_combout\ = (inst(0) & (((!inst(2))))) # (!inst(0) & ((inst(1) & ((!inst(2)))) # (!inst(1) & (!\EV~input_o\ & inst(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => inst(0),
	datac => inst(1),
	datad => inst(2),
	combout => \inst7|D3~0_combout\);

-- Location: LCCOMB_X9_Y1_N16
\inst7|D3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D3~1_combout\ = (\inst7|yellow~0_combout\) # ((inst(3) & ((\inst7|D3~0_combout\))) # (!inst(3) & (!\EV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|yellow~0_combout\,
	datab => \EV~input_o\,
	datac => inst(3),
	datad => \inst7|D3~0_combout\,
	combout => \inst7|D3~1_combout\);

-- Location: IOIBUF_X3_Y0_N15
\Restart~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Restart,
	o => \Restart~input_o\);

-- Location: FF_X9_Y1_N17
\inst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|D3~1_combout\,
	clrn => \ALT_INV_Restart~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst(3));

-- Location: LCCOMB_X9_Y1_N22
\inst7|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D1~0_combout\ = (!inst(1) & ((inst(3) & (!inst(2))) # (!inst(3) & ((\EV~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(2),
	datab => \EV~input_o\,
	datac => inst(1),
	datad => inst(3),
	combout => \inst7|D1~0_combout\);

-- Location: IOIBUF_X0_Y2_N8
\CW~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CW,
	o => \CW~input_o\);

-- Location: LCCOMB_X9_Y1_N8
\inst7|D2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~2_combout\ = (\CW~input_o\ & (!inst(0) & \inst7|D2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CW~input_o\,
	datac => inst(0),
	datad => \inst7|D2~1_combout\,
	combout => \inst7|D2~2_combout\);

-- Location: LCCOMB_X9_Y1_N0
\inst7|D2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~3_combout\ = (inst(1) & (!inst(2) & ((\EV~input_o\) # (inst(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => inst(3),
	datac => inst(1),
	datad => inst(2),
	combout => \inst7|D2~3_combout\);

-- Location: LCCOMB_X9_Y1_N14
\inst7|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D1~1_combout\ = (\inst7|D2~2_combout\) # ((inst(0) & (\inst7|D1~0_combout\)) # (!inst(0) & ((\inst7|D2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D1~0_combout\,
	datab => inst(0),
	datac => \inst7|D2~2_combout\,
	datad => \inst7|D2~3_combout\,
	combout => \inst7|D1~1_combout\);

-- Location: FF_X9_Y1_N15
\inst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|D1~1_combout\,
	clrn => \ALT_INV_Restart~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst(1));

-- Location: LCCOMB_X9_Y1_N10
\inst7|D2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~1_combout\ = (inst(2) & (\EV~input_o\ & (inst(1) & !inst(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(2),
	datab => \EV~input_o\,
	datac => inst(1),
	datad => inst(3),
	combout => \inst7|D2~1_combout\);

-- Location: LCCOMB_X9_Y1_N18
\inst7|D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D0~0_combout\ = (inst(3) & (!inst(2))) # (!inst(3) & (\EV~input_o\ & ((!inst(1)) # (!inst(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(2),
	datab => \EV~input_o\,
	datac => inst(1),
	datad => inst(3),
	combout => \inst7|D0~0_combout\);

-- Location: LCCOMB_X9_Y1_N4
\inst7|D0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D0~1_combout\ = (!inst(0) & ((\inst7|D0~0_combout\) # ((\inst7|D2~1_combout\ & \CW~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D2~1_combout\,
	datab => \CW~input_o\,
	datac => inst(0),
	datad => \inst7|D0~0_combout\,
	combout => \inst7|D0~1_combout\);

-- Location: FF_X9_Y1_N5
\inst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|D0~1_combout\,
	clrn => \ALT_INV_Restart~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst(0));

-- Location: LCCOMB_X9_Y1_N20
\inst7|D2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~4_combout\ = (\EV~input_o\ & ((!inst(3)))) # (!\EV~input_o\ & (!inst(0) & inst(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datac => inst(0),
	datad => inst(3),
	combout => \inst7|D2~4_combout\);

-- Location: LCCOMB_X9_Y1_N6
\inst7|D2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~5_combout\ = (inst(2) & (!inst(1) & \inst7|D2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inst(2),
	datac => inst(1),
	datad => \inst7|D2~4_combout\,
	combout => \inst7|D2~5_combout\);

-- Location: LCCOMB_X9_Y1_N30
\inst7|D2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~6_combout\ = (\inst7|D2~2_combout\) # ((\inst7|D2~5_combout\) # ((inst(0) & \inst7|D2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(0),
	datab => \inst7|D2~3_combout\,
	datac => \inst7|D2~2_combout\,
	datad => \inst7|D2~5_combout\,
	combout => \inst7|D2~6_combout\);

-- Location: FF_X9_Y1_N31
\inst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|D2~6_combout\,
	clrn => \ALT_INV_Restart~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst(2));

-- Location: LCCOMB_X9_Y1_N12
\inst7|red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|red~0_combout\ = (inst(3) & (inst(2) $ (((inst(1)) # (inst(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(2),
	datab => inst(1),
	datac => inst(0),
	datad => inst(3),
	combout => \inst7|red~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\inst7|yellow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|yellow~1_combout\ = (\inst7|yellow~0_combout\) # ((!inst(3) & !\EV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inst(3),
	datac => \EV~input_o\,
	datad => \inst7|yellow~0_combout\,
	combout => \inst7|yellow~1_combout\);

-- Location: LCCOMB_X9_Y1_N24
\inst7|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|D2~0_combout\ = (\EV~input_o\ & !inst(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EV~input_o\,
	datad => inst(3),
	combout => \inst7|D2~0_combout\);

-- Location: LCCOMB_X9_Y1_N2
\inst7|green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|green~0_combout\ = (\inst7|D2~0_combout\ & (((!inst(2)) # (!inst(0))) # (!inst(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|D2~0_combout\,
	datab => inst(1),
	datac => inst(0),
	datad => inst(2),
	combout => \inst7|green~0_combout\);

-- Location: IOIBUF_X10_Y15_N15
\S~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: IOIBUF_X10_Y15_N22
\R~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

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

ww_red <= \red~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_yellow <= \yellow~output_o\;

ww_green <= \green~output_o\;
END structure;


