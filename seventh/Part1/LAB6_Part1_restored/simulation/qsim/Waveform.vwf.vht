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
-- Generated on "07/22/2021 04:35:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB6_Part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB6_Part1_vhd_vec_tst IS
END LAB6_Part1_vhd_vec_tst;
ARCHITECTURE LAB6_Part1_arch OF LAB6_Part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cin : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT LAB6_Part1
	PORT (
	Cin : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	INPUT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LAB6_Part1
	PORT MAP (
-- list connections between master ports and signals
	Cin => Cin,
	CLK => CLK,
	Cout => Cout,
	INPUT => INPUT,
	OUTPUT => OUTPUT,
	REGA => REGA,
	REGB => REGB
	);

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;

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
-- INPUT[3]
t_prcs_INPUT_3: PROCESS
BEGIN
	INPUT(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_3;
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
	INPUT(2) <= '0';
	WAIT FOR 40000 ps;
	INPUT(2) <= '1';
	WAIT FOR 60000 ps;
	INPUT(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
	INPUT(1) <= '0';
	WAIT FOR 120000 ps;
	INPUT(1) <= '1';
	WAIT FOR 540000 ps;
	INPUT(1) <= '0';
	WAIT FOR 160000 ps;
	INPUT(1) <= '1';
	WAIT FOR 160000 ps;
	INPUT(1) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
	INPUT(0) <= '0';
	WAIT FOR 80000 ps;
	INPUT(0) <= '1';
	WAIT FOR 40000 ps;
	INPUT(0) <= '0';
	WAIT FOR 40000 ps;
	INPUT(0) <= '1';
	WAIT FOR 500000 ps;
	INPUT(0) <= '0';
	WAIT FOR 160000 ps;
	INPUT(0) <= '1';
	WAIT FOR 160000 ps;
	INPUT(0) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_0;
END LAB6_Part1_arch;
