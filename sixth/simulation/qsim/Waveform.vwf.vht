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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/15/2021 01:55:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5_DFF_Traf_Cont
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_DFF_Traf_Cont_vhd_vec_tst IS
END Lab5_DFF_Traf_Cont_vhd_vec_tst;
ARCHITECTURE Lab5_DFF_Traf_Cont_arch OF Lab5_DFF_Traf_Cont_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CW : STD_LOGIC;
SIGNAL EV : STD_LOGIC;
SIGNAL green : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL R : STD_LOGIC;
SIGNAL red : STD_LOGIC;
SIGNAL Restart : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL yellow : STD_LOGIC;
COMPONENT Lab5_DFF_Traf_Cont
	PORT (
	CLK : IN STD_LOGIC;
	CW : IN STD_LOGIC;
	EV : IN STD_LOGIC;
	green : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	R : IN STD_LOGIC;
	red : OUT STD_LOGIC;
	Restart : IN STD_LOGIC;
	S : IN STD_LOGIC;
	yellow : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab5_DFF_Traf_Cont
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CW => CW,
	EV => EV,
	green => green,
	Q => Q,
	R => R,
	red => red,
	Restart => Restart,
	S => S,
	yellow => yellow
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CW
t_prcs_CW: PROCESS
BEGIN
	CW <= '0';
	WAIT FOR 400000 ps;
	CW <= '1';
WAIT;
END PROCESS t_prcs_CW;

-- EV
t_prcs_EV: PROCESS
BEGIN
	EV <= '1';
	WAIT FOR 925000 ps;
	EV <= '0';
WAIT;
END PROCESS t_prcs_EV;

-- Restart
t_prcs_Restart: PROCESS
BEGIN
	Restart <= '1';
	WAIT FOR 25000 ps;
	Restart <= '0';
WAIT;
END PROCESS t_prcs_Restart;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
WAIT;
END PROCESS t_prcs_R;

-- S
t_prcs_S: PROCESS
BEGIN
	S <= '0';
WAIT;
END PROCESS t_prcs_S;
END Lab5_DFF_Traf_Cont_arch;
