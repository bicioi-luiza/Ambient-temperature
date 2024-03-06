---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_bcd
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_bcd.vhd
-- Generated   : Sat May 22 16:26:03 2022
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
--{entity {Modul_bcd} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Modul_bcd is
end Modul_bcd;

--}} End of automatically maintained section

architecture bhv of Modul_bcd is	  
component BCD is
	 port(
		 Din : in STD_LOGIC_VECTOR(3 downto 0);
		 Dout : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end component;
signal Din : STD_LOGIC_VECTOR(3 downto 0):="0000";
signal Dout : STD_LOGIC_VECTOR(6 downto 0);

begin
	U : BCD port map (Din, Dout);
	Din<="1001", "0010" after 50 ns, "0001" after 100 ns, "0111" after 150 ns, "0011" after 200 ns, "0100" after 250 ns , "0101" after 300 ns, "1000" after  350 ns;
	 -- enter your statements here --

end bhv;
