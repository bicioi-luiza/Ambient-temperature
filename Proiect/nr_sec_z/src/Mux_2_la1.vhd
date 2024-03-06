---------------------------------------------------------------------------------------------------
--
-- Title       : Mux_2_la1
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Mux_2_la1.vhd
-- Generated   : Sat May 28 17:44:58 2022
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
--{entity {Mux_2_la1} architecture {bhv}}
  --------NEFOLOSIT IN FINAL-----
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux_2_la1 is
	 port(
	 	S: in STD_LOGIC;
	 	clk: in STD_LOGIC;
		 A1 : in STD_LOGIC_VECTOR(3 downto 0);
		 A2 : in STD_LOGIC_VECTOR(3 downto 0);
		 Q : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end Mux_2_la1;

--}} End of automatically maintained section

architecture bhv of Mux_2_la1 is
signal tmp:	STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
	process(S)
	begin
		if(S='1'and rising_edge(clk)) then tmp<=A1;
		elsif(S='0' and rising_edge(clk)) then tmp<=A2;
		end if;
	end process;
	Q<=tmp;
	 -- enter your statements here --

end bhv;
