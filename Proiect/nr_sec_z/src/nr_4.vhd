																					   ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:50 05/18/2022 
-- Design Name: 
-- Module Name:    Numarator_PL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITh.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Numarator_4 is
    Port ( A4 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q4 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC;
		   SE: in STD_LOGIC);
end Numarator_4;

architecture Behavioral of Numarator_4 is
signal tmp :STD_LOGIC_VECTOR(3 downto 0):="0000";
signal t: std_logic:='0';
begin
process(clk,R,En,Pl)
begin
if(R='1') then tmp<="0000";
--else if(En='1') then
elsif(rising_edge(clk)) then
				if (Pl='1') then tmp <= A4;
 				elsif (Pl='0' and En='1' ) then 
				if (tmp="0011" and SE='1') then tmp<="0000";
					t<='1';
				else if(tmp="1001" and SE='0') then tmp<="0000";
					t<='1';
				else  tmp<= tmp+1;
					t<='0';
				end if;
				end if;
--end if;
end if;
end if;
end process;
Q4<=tmp;
Tc<=t;

end Behavioral;

