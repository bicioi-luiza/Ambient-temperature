library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITh.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity nr is
	generic(n: natural :=4);
    Port ( En : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  LED : out STD_LOGIC_VECTOR(n-1 downto 0)
			  );
end nr;

architecture Behavioral of nr_sec_z is
signal tmp: std_logic_vector(n-1 downto 0) :=(others => '0');
signal reset: std_logic :='0';
begin
	nr: process(CLK, En)
	begin
		if(R = '1') then tmp <="0000";
		elsif (rising_edge(CLK)) then
			if(tmp ="0101")
				then tmp <="0000";
			elsif(En = '1') then		
			tmp <= tmp +1;
			  end if;
			end if;
				 
			end process;
		LED <= tmp;
		
	end Behavioral;

