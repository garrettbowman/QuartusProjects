library ieee;
use ieee.std_logic_1164.all;
entity compCreate is
	port(
		Q2: in std_logic;
		Q1: in std_logic;
		Q0: in std_logic;
		D: in std_logic;
		E: in std_logic;
		A: out std_logic;
		B: out std_logic;
		C: out std_logic;
		D2: out std_logic;
		D1:out std_logic;
		D0:out std_logic
		);
end compCreate;

architecture behavior of compCreate is
signal COut: std_logic;
begin
	D2 <= 
		((not (Q2)) and Q1 and (not (Q0)) and E) or
		((not (Q2)) and Q1 and Q0) or
		(Q2 and (not (Q1)) and (not (Q0))) or
		(Q2 and (not (Q1)) and Q0 and D);
	D1 <=
		((not (Q2)) and (not (Q1)) and (not (Q0)) and (not (D))) or
		((not (Q2)) and (not (Q1)) and Q0) or
		((not (Q2)) and (Q1) and (not (Q0)) and (not(E)));
	D0 <=
		((not (Q2)) and (not (Q1)) and (not (Q0)) and D) or
		((not (Q2)) and (not (Q1)) and Q0) or
		((not (Q2)) and Q1 and (not (Q0)) and (not (E))) or
		((not (Q2)) and Q1 and Q0) or
		(Q2 and (not (Q1)) and (not (Q0))) or
		(Q2 and (not (Q1)) and Q0 and D);
	A <=
		((not (Q2)) and (not (Q1)) and (not (Q0)) and (not(D))) or
		((not (Q2)) and (not (Q1)) and (not (Q0)) and D) or
		(Q2 and (not (Q1)) and (not (Q0)));
		
	B <=
		((not (Q2)) and (not (Q1)) and (not (Q0)) and (not(D))) or
		((not (Q2)) and (not (Q1)) and Q0) or
		((not (Q2)) and Q1 and Q0 and (not (E))) or
		((not (Q2)) and Q1 and (not (Q0)) and E);
		
	C <= 
		((not (Q2)) and Q1 and Q0) or
		(Q2 and (not (Q1)) and (not (Q0))) or
		(Q2 and (not (Q1)) and Q0 and (not(D))) or
		(Q2 and (not (Q1)) and Q0 and D);
		
end behavior;
