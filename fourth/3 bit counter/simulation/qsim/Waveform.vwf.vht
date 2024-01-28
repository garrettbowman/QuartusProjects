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
-- Generated on "06/11/2021 09:16:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab3_3bit_Cnt
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab3_3bit_Cnt_vhd_vec_tst IS
END Lab3_3bit_Cnt_vhd_vec_tst;
ARCHITECTURE Lab3_3bit_Cnt_arch OF Lab3_3bit_Cnt_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC;
SIGNAL C0 : STD_LOGIC;
SIGNAL C1 : STD_LOGIC;
SIGNAL C2 : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL SP : STD_LOGIC;
COMPONENT Lab3_3bit_Cnt
	PORT (
	B : IN STD_LOGIC;
	C0 : IN STD_LOGIC;
	C1 : IN STD_LOGIC;
	C2 : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	F : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC;
	SP : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab3_3bit_Cnt
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	C0 => C0,
	C1 => C1,
	C2 => C2,
	CLK => CLK,
	F => F,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	SP => SP
	);

-- F
t_prcs_F: PROCESS
BEGIN
	F <= '0';
	WAIT FOR 800000 ps;
	F <= '1';
WAIT;
END PROCESS t_prcs_F;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 400000 ps;
	B <= '1';
	WAIT FOR 400000 ps;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 23
	LOOP
		CLK <= '0';
		WAIT FOR 25000 ps;
		CLK <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 24000 ps;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- S2
t_prcs_S2: PROCESS
BEGIN
	S2 <= '1';
WAIT;
END PROCESS t_prcs_S2;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '1';
WAIT;
END PROCESS t_prcs_S1;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;

-- C2
t_prcs_C2: PROCESS
BEGIN
	C2 <= '0';
	WAIT FOR 50000 ps;
	C2 <= '1';
WAIT;
END PROCESS t_prcs_C2;

-- C1
t_prcs_C1: PROCESS
BEGIN
	C1 <= '0';
	WAIT FOR 50000 ps;
	C1 <= '1';
WAIT;
END PROCESS t_prcs_C1;

-- C0
t_prcs_C0: PROCESS
BEGIN
	C0 <= '0';
	WAIT FOR 50000 ps;
	C0 <= '1';
WAIT;
END PROCESS t_prcs_C0;
END Lab3_3bit_Cnt_arch;
