library ieee; use ieee.std_logic_1164.all;
entity comb1 is port (
	
		IR:	in	std_logic_vector(1 downto 0);	
		Q:	in std_logic;
		D7:	out std_logic;
		D6:	out std_logic;
		D5:	out std_logic;
		D4:	out std_logic;
		D3:	out std_logic;
		D2:	out std_logic;
		D1:	out std_logic;
		Qo:	out std_logic;
		IRLD: out std_logic
);
end comb1;
architecture behavior of comb1 is

begin


	D1 <=	
		((not IR(1)) and IR(0) and Q) or
		(IR(1) and IR(0) and Q); 
		
	D2 <=	
		((not IR(1)) and (not IR(0)) and (not (Q))) or
		((not IR(1)) and IR(0) and (not (Q))) or
		((not IR(1)) and IR(0) and Q) or
		(IR(1) and (not IR(0)) and (not (Q))) or
		(IR(1) and (not IR(0)) and Q) or
		(IR(1) and IR(0) and (not (Q))) or
		(IR(1) and IR(0) and (Q));
		
	D3 <=
		'1'; 
		
	D4 <=
		(IR(1) and (not IR(0)) and Q);
		
	D5 <=
		((not IR(1)) and IR(0) and Q) or
		(IR(1) and IR(0) and Q);
		
	D6 <=	
		((not IR(1)) and IR(0) and Q);
	D7 <=	
		(IR(1) and IR(0) and Q);	
		
	IRLD <=
		(not Q);
	Qo <=
		(not Q);
		
end behavior;