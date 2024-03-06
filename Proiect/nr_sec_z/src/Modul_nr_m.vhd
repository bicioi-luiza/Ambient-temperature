---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_nr_m
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_nr_m.vhd
-- Generated   : Sat May 20 15:39:10 2022
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
--{entity {Modul_nr_m} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Modul_nr_m is
end Modul_nr_m;

--}} End of automatically maintained section

architecture bhv of Modul_nr_m is
component Numarator_mux is
    Port ( 
           clk : in  STD_LOGIC;
           Qm : out  STD_LOGIC_VECTOR (1 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;	
signal clk,R,En,Tc : std_logic:='0';
signal Qm :STD_LOGIC_VECTOR (1 downto 0);
begin
	U: Numarator_mux port map (clk,Qm,R,En,Tc);
	clock: process
	begin
		clk <= not (clk);
		wait for 5 ns;
	end process;
	En<='1','1' after 10 ns;
	R<='0','0' after 10 ns;
	 -- enter your statements here --

end bhv;
