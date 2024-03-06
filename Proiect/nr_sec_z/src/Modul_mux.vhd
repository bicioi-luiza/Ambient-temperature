---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_mux
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_mux.vhd
-- Generated   : Sat May 20 14:29:31 2022
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
--{entity {Modul_mux} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library nr_sec_z;

entity Modul_mux is
end Modul_mux;

--}} End of automatically maintained section

architecture bhv of Modul_mux is 
component MUX is
	 port(
		 EN : in STD_LOGIC;
		 A1 : in STD_LOGIC_VECTOR(3 downto 0);
		 A2 : in STD_LOGIC_VECTOR(3 downto 0);
		 A3 : in STD_LOGIC_VECTOR(3 downto 0);
		 A4 : in STD_LOGIC_VECTOR(3 downto 0);
		 SEL : in STD_LOGIC_VECTOR(1 downto 0);
		 Q : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end component;

signal A1,A2,A3,A4,Q : STD_LOGIC_VECTOR(3 downto 0);
signal SEL : STD_LOGIC_VECTOR(1 downto 0);
signal EN: std_logic:='0';
begin
	U: MUX port map (EN,A1,A2,A3,A4,SEL,Q);
	EN<='1','1' after 20 ns;
	SEL<="00","01" after 20 ns,"10" after 30 ns, "11" after 40 ns;
	A1<="0010";
	A2<="0011";
	A3<="0110";
	A4<="1010";
	 -- enter your statements here --

end bhv;
