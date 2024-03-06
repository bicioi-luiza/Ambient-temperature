---------------------------------------------------------------------------------------------------
--
-- Title       : Modul_pr
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : Modul_proiect.vhd
-- Generated   : Sat May 28 19:04:49 2022
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
--{entity {Modul_pr} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Modul_pr is
end Modul_pr;

--}} End of automatically maintained section

architecture bhv of Modul_pr is	
component proiect is
	 port(
		 S : in STD_LOGIC;
		 R : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 Min_u : in STD_LOGIC_VECTOR(3 downto 0);
		 Min_z : in STD_LOGIC_VECTOR(3 downto 0);
		 Ora_u : in STD_LOGIC_VECTOR(3 downto 0);
		 Ora_z : in STD_LOGIC_VECTOR(3 downto 0);
		 Zile_u : in STD_LOGIC_VECTOR(3 downto 0);
		 Zile_z : in STD_LOGIC_VECTOR(3 downto 0);
		 L_u : in STD_LOGIC_VECTOR(3 downto 0);
		 L_z : in STD_LOGIC_VECTOR(3 downto 0);
		 BCD1 : out STD_LOGIC_VECTOR(6 downto 0);
		 BCD2 : out STD_LOGIC_VECTOR(6 downto 0);
		 BCD3 : out STD_LOGIC_VECTOR(6 downto 0);
		 BCD4 : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end component;
signal S,R,clk: std_logic:='0';
signal Min_u,Min_z,Ora_u,Ora_z,Zile_u,Zile_z,L_u,L_z:STD_LOGIC_VECTOR(3 downto 0):="0000";
signal BCD1,BCD2,BCD3,BCD4: STD_LOGIC_VECTOR(6 downto 0);
begin
	U: proiect PORT MAP (S,R,clk,Min_u,Min_z,Ora_u,Ora_z,Zile_u,Zile_z,L_u,L_z,BCD1,BCD2,BCD3,BCD4);  
	clock: process
	begin
		clk <= not (clk);
		wait for 5 ns;
	end process;
	R<='0','0' after 10 ns;
	S<='1','0' after 10 ns;
	Min_u<="0110";
	Min_z<="0100";
	Ora_u<="0011";
	Ora_z<="0001";
	Zile_u<="1001";
	Zile_z<="0010";
	L_u<="0011";
	L_z<="0000";
	 -- enter your statements here --

end bhv;
