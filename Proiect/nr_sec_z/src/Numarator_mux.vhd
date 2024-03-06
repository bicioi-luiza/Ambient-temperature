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

entity Numarator_mux is
    Port ( 
           clk : in  STD_LOGIC;
           Qm : out  STD_LOGIC_VECTOR (1 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end Numarator_mux;

architecture Behavioral of Numarator_mux is
signal tmp :STD_LOGIC_VECTOR(1 downto 0):="11";
signal t: std_logic:='0';
begin
process(clk,R,En)
begin
if(R='1') then tmp<="00";
--else if(En='1') then
elsif(rising_edge(clk) and En='1' ) then
				if (tmp="11") then tmp<="00";
								t<='1';
				else  tmp<= tmp+1;
						t<='0';
				end if;
--end if;
end if;
end process;
Qm<=tmp; 
Tc<=t;

end Behavioral;

