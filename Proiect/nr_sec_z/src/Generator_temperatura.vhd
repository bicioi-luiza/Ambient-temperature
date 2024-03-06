library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITh.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity generator is	 
	generic(n: natural :=4);
	Port ( mode : in  STD_LOGIC;
	--ser: inout STD_LOGIC;
           R : in  STD_LOGIC;
           CLK1: in  STD_LOGIC;	
		   Tc: out STD_LOGIC;
			  LED_G : out STD_LOGIC_VECTOR(n-1 downto 0)
		);	
end generator;
		
architecture Behavioral of generator is
signal tmp: std_logic_vector(n-1 downto 0) :="0001";  
signal tmp2: std_logic_vector(n-1 downto 0);
signal ser: std_logic :='0';
signal x: std_logic:='1'; 
signal y: std_logic:='1';
begin
	--tmp(n-1)<='1';
	gn: process(mode, CLK1,R,tmp2)
	begin
		if(R='1') then tmp <= "0001";
		elsif (mode='1' and rising_edge(CLK1)) then
			ser<=tmp(n-1)xor tmp(0);
			tmp <= tmp(n-2 downto 0) & ser;	
			x<=tmp(n-3);
			y<= tmp(n-4);
		tmp(n-2)<= not (tmp(n-2))and x;	  
		tmp(n-3)<= not(tmp(n-2))and y; 
		
			
		end if;
		end process;

	   
		LED_G <=tmp;
end Behavioral;