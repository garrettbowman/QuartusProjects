library ieee; use ieee.std_logic_1164.all;
entity CompCreation is port (
		Q:	in	std_logic_vector(3 downto 0);	
		EV_L:	in std_logic;
		CW:	in std_logic;
		D3:	out std_logic;
		D2:	out std_logic;
		D1:	out std_logic;
		D0:	out std_logic;
		green: out std_logic;
		yellow: out std_logic; 
		red: out std_logic 
);
end CompCreation;
architecture behavior of CompCreation is
signal EV : std_logic;

begin
	EV <= (not EV_L);
	D3 <=	
		(( not Q(3) ) and ( not Q(2) ) and ( not Q(1) ) and ( not Q(0) ) and EV) or
		(( not Q(3) ) and ( not Q(2) ) and ( not Q(1) ) and  Q(0) and EV) or
		(( not Q(3) ) and ( not Q(2) ) and  Q(1) and ( not Q(0) ) and EV) or
		(( not Q(3) ) and ( not Q(2) ) and  Q(1) and  Q(0)  and EV) or
		(( not Q(3) ) and  Q(2) and ( not Q(1) ) and ( not Q(0) ) and EV) or
		(( not Q(3) ) and Q(2) and ( not Q(1) ) and Q(0)  and EV) or
		(( not Q(3) ) and  Q(2)  and  Q(1) and ( not Q(0) ) and EV) or
		(( not Q(3) ) and Q(2) and  Q(1)  and Q(0) ) or
		( Q(3) and ( not Q(2) ) and ( not Q(1) ) and ( not Q(0) )) or
		(Q(3)  and ( not Q(2) ) and ( not Q(1) ) and Q(0) ) or
		(Q(3) and ( not Q(2) ) and Q(1)  and ( not Q(0) ) ) or
		( Q(3) and ( not Q(2) ) and  Q(1)  and  Q(0) ) or
		(Q(3)  and Q(2) and ( not Q(1) ) and ( not Q(0) ) and EV);
		
	D2 <=
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and Q(0) and (not EV)) or
		(( not Q(3) ) and  Q(2) and (not Q(1))  and ( not Q(0))  and (not EV)) or
		(( not Q(3) ) and Q(2)  and (not Q(1))  and Q(0) and (not EV)) or
		(( not Q(3) ) and Q(2) and Q(1)  and (not Q(0)) and (not EV) and CW) or
		(Q(3)  and ( not Q(2) ) and Q(1)  and Q(0)) or
		(Q(3) and Q(2) and (not Q(1))  and (not Q(0)) and EV);
		
	D1 <=
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and Q(0) and (not EV)) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and Q(2)  and (not Q(1))  and Q(0) and (not EV)) or
		(( not Q(3) ) and Q(2) and Q(1)  and (not Q(0)) and (not EV) and CW) or
		(Q(3)  and ( not Q(2) ) and (not Q(1))  and Q(0)) or
		(Q(3)  and ( not Q(2) ) and  Q(1)  and ( not Q(0)));
		
	D0 <=
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and Q(2) and (not Q(1))  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and Q(2) and Q(1)  and (not Q(0)) and (not EV) and CW) or
		(Q(3)  and ( not Q(2) ) and (not Q(1))  and (not Q(0))) or
		(Q(3)  and ( not Q(2) ) and Q(1)  and (not Q(0)));
		
	green <=
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and Q(0) and (not EV)) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and Q(0) and (not EV)) or
		(( not Q(3) ) and  Q(2) and (not Q(1))  and (not Q(0)) and (not EV)) or
		(( not Q(3) ) and Q(2)  and (not Q(1))  and Q(0) and (not EV)) or
		(( not Q(3) ) and  Q(2) and Q(1)  and (not Q(0)) and (not EV) and CW) or
		(( not Q(3) ) and  Q(2) and Q(1)  and (not Q(0)) and (not EV) and (not CW));
		
	yellow <=
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and (not Q(0)) and  EV) or
		(( not Q(3) ) and ( not Q(2) ) and (not Q(1))  and Q(0) and EV) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and (not Q(0)) and EV) or
		(( not Q(3) ) and ( not Q(2) ) and Q(1)  and Q(0) and EV) or
		(( not Q(3) ) and  Q(2) and (not Q(1))  and (not Q(0)) and EV) or
		(( not Q(3) ) and Q(2)  and (not Q(1))  and Q(0) and EV) or
		(( not Q(3) ) and  Q(2) and Q(1)  and (not Q(0)) and EV) or
		(( not Q(3) ) and  Q(2) and Q(1)  and Q(0)) or
		(Q(3)  and ( not Q(2) ) and (not Q(1))  and (not Q(0)));
		
	red <=
		(Q(3)  and ( not Q(2) ) and (not Q(1))  and Q(0)) or
		(Q(3)  and ( not Q(2) ) and Q(1)  and (not Q(0))) or
		(Q(3)  and ( not Q(2) ) and  Q(1)  and Q(0)) or
		(Q(3)  and Q(2)and (not Q(1))  and (not Q(0)));
		
end behavior;