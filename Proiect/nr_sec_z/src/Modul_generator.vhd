---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_generator
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_generator.vhd
-- Generated   : Sat May 19 03:15:22 2022
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
--{entity {Modul_generator} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Modul_generator is
end Modul_generator;

--}} End of automatically maintained section

architecture bhv of Modul_generator is	 
component generator is	 
	generic(n: natural :=4);
	Port ( mode : in  STD_LOGIC;
	--ser: inout STD_LOGIC;
           R : in  STD_LOGIC;
           CLK1: in  STD_LOGIC;	
		   Tc: out STD_LOGIC;
			  LED_G : out STD_LOGIC_VECTOR(n-1 downto 0)
		);	
end component;	 
signal R,CLK1,mode: STD_LOGIC :='0';
signal TC : STD_LOGIC;
signal LED_G : STD_LOGIC_VECTOR(3 downto 0);
begin
	U: generator port map ( mode, R, CLK1, Tc, LED_G);
	clock: process
	begin
		CLK1 <= not (CLK1);
		wait for 5 ns;
	end process; 
	R<='0','0' after 10 ns;	
	mode<='0','1' after 20 ns;
	 -- enter your statements here --

end bhv;
