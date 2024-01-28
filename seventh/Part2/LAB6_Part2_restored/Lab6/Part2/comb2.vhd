library ieee; use ieee.std_logic_1164.all;
entity comb2 is port (
	
		IR:	in	std_logic_vector(2 downto 0);	
		Q1:	in std_logic;
		Q0:	in std_logic;
		D7:	out std_logic;
		D6:	out std_logic;
		D5:	out std_logic;
		D4:	out std_logic;
		D3:	out std_logic;
		D2:	out std_logic;
		D1:	out std_logic;
		Q1o:	out std_logic;
		Q0o:	out std_logic;
		PCINC:	out std_logic;
		PCLD:	out std_logic;
		IRLD: out std_logic
);
end comb2;
architecture behavior of comb2 is

begin


	D1 <=	
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and IR(0));
		
	D2 <=	
		((not (Q1)) and (not (Q0))) or
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and IR(0)) or
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and (not(IR(0)))) or
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and IR(0)) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and IR(0)) or
		(Q1 and Q0);
		
	D3 <=
		((not (Q1)) and (not (Q0))) or
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and (not(IR(0)))) or
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and IR(0)) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and IR(0)) or
		(Q1 and (not Q0)) or
		(Q1 and Q0);
		
	D4 <=
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and IR(0));
		
	D5 <=
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and IR(0));
		
	D6 <=	
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and IR(0));
	D7 <=	
		((not (Q1)) and Q0 and (not (IR(2))) and (not (IR(1))) and (not(IR(0)))) or
		((not (Q1)) and Q0 and IR(2) and (not (IR(1))) and (not(IR(0))));
		
	PCINC <=
		((not (Q1)) and Q0) or
		(Q1 and (not Q0));	
		
	PCLD <=
		(Q1 and Q0);	
		
	IRLD <=
		((not (Q1)) and (not (Q0)));
		
	Q1o <=
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and (not(IR(0)))) or
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and (IR(0)));
		
	Q0o <=
		((not (Q1)) and Q0 and (not (IR(2))) and IR(1) and (IR(0))) or
		((not (Q1)) and (not (Q0)));
		
end behavior;