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
-- Generated on "07/16/2021 15:23:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5_Quiz
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_Quiz_vhd_vec_tst IS
END Lab5_Quiz_vhd_vec_tst;
ARCHITECTURE Lab5_Quiz_arch OF Lab5_Quiz_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Lab5_Quiz
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	C : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC;
	E : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab5_Quiz
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	CLK => CLK,
	D => D,
	E => E,
	Q => Q
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- D
t_prcs_D: PROCESS
BEGIN
LOOP
	D <= '0';
	WAIT FOR 500000 ps;
	D <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D;

-- E
t_prcs_E: PROCESS
BEGIN
LOOP
	E <= '0';
	WAIT FOR 250000 ps;
	E <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_E;
END Lab5_Quiz_arch;
