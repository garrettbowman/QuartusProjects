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
-- Generated on "07/22/2021 19:55:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB6_Part2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB6_Part2_vhd_vec_tst IS
END LAB6_Part2_vhd_vec_tst;
ARCHITECTURE LAB6_Part2_arch OF LAB6_Part2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cin : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL DIR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL INPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL MemCLK : STD_LOGIC;
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT LAB6_Part2
	PORT (
	Cin : IN STD_LOGIC;
	CLK : OUT STD_LOGIC;
	Cout : OUT STD_LOGIC;
	DIR : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	INPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	MemCLK : IN STD_LOGIC;
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LAB6_Part2
	PORT MAP (
-- list connections between master ports and signals
	Cin => Cin,
	CLK => CLK,
	Cout => Cout,
	DIR => DIR,
	INPUT => INPUT,
	IR => IR,
	MemCLK => MemCLK,
	OUTPUT => OUTPUT,
	PC => PC,
	REGA => REGA,
	REGB => REGB,
	reset => reset
	);

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;

-- MemCLK
t_prcs_MemCLK: PROCESS
BEGIN
LOOP
	MemCLK <= '0';
	WAIT FOR 10000 ps;
	MemCLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MemCLK;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END LAB6_Part2_arch;
