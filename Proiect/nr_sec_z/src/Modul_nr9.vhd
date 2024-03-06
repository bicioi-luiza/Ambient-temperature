---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_nr5
-- Design      : proiect_pt1
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_nr5.vhd
-- Generated   : Sat May 18 01:46:36 2022
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
--{entity {Modul_nr5} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library nr_sec_z;

entity Modul_nr9 is
end Modul_nr9;

--}} End of automatically maintained section

architecture bhv of Modul_nr9 is 
component Numarator_9 is
    Port ( A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q2 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;  
		 signal A2 : STD_LOGIC_VECTOR (3 downto 0);
  		 signal clk : STD_LOGIC:='0';
  		 signal Q2 :  STD_LOGIC_VECTOR (3 downto 0);
         signal R : STD_LOGIC:='0';
         signal En : STD_LOGIC:='0';
         signal Pl : STD_LOGIC:='0';
		 signal Tc : STD_LOGIC:='0';
begin
	   UST: Numarator_9 port map (A2, clk, Q2, R, En, Pl,Tc);
	
	clock: process
	begin
		clk <= not (clk);
		wait for 5 ns;
	end process; 
	A2<="0010" , "0010" after 10 ns;
	R<='0','0' after 20 ns;
	En<='0','1' after 20 ns;
	Pl<='1','0' after 100 ns;
	 -- enter your statements here --

end bhv;
