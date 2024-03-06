---------------------------------------------------------------------------------------------------
--
-- Title       : MUX
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : MUX(4:1).vhd
-- Generated   : Sat May 20 14:23:09 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {MUX} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX is
	 port(
		 EN : in STD_LOGIC;
		 A1 : in STD_LOGIC_VECTOR(3 downto 0);
		 A2 : in STD_LOGIC_VECTOR(3 downto 0);
		 A3 : in STD_LOGIC_VECTOR(3 downto 0);
		 A4 : in STD_LOGIC_VECTOR(3 downto 0);
		 SEL : in STD_LOGIC_VECTOR(1 downto 0);
		 Q : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end MUX;

--}} End of automatically maintained section

architecture bhv of MUX is
signal tmp: STD_LOGIC_VECTOR(3 downto 0);
begin
	process(EN,SEL)
	begin
		case SEL is
			when "00" => tmp<=A1;
			when "01" => tmp<=A2;
			when "10" => tmp<=A3; 
			when others => tmp<="1111" ;
			end case;
	end process;
	Q<=tmp;

	 -- enter your statements here --

end bhv;
