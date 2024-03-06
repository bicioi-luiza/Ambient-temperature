				  ---------------------------------------------------------------------------------------------------
--
-- Title       : proiect
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : proiect.vhd
-- Generated   : Sat May 28 16:43:12 2022
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
--{entity {proiect} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITh.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library nr_sec_z; 

entity proiect_j is
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
end proiect_j;

--}} End of automatically maintained section

architecture bhv of proiect_j is 
--pt minute
component  Numarator_5 is
    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q1 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component; 

component Numarator_9 is
    Port ( A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q2 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;	
--pt ore
component Numarator_2 is
    Port ( A3 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q3 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;

component Numarator_4 is
    Port ( A4 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q4 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC;
		   SE: in STD_LOGIC);
end component;	
--pt zile
component Numarator_3 is
    Port ( A5 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q5 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc: out STD_LOGIC);
end component;
--pt luni
  component Numarator_1 is
    Port ( A11 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q11 : out  STD_LOGIC_VECTOR (3 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Pl : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;
--pt det selectii mux
component Numarator_mux is
    Port ( 
           clk : in  STD_LOGIC;
           Qm : out  STD_LOGIC_VECTOR (1 downto 0);
           R : in  STD_LOGIC;
           En : in  STD_LOGIC;
		   Tc : out STD_LOGIC);
end component;
--mux(4:1)
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
--bcd
component BCD is
	 port(
		 Din : in STD_LOGIC_VECTOR(3 downto 0);
		 Dout : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end component;
--mux 2:1
component Mux_2_la1 is
	 port(
	 	S: in STD_LOGIC;
	 	clk:in STD_LOGIC;
		 A1 : in STD_LOGIC_VECTOR(3 downto 0);
		 A2 : in STD_LOGIC_VECTOR(3 downto 0);
		 Q : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end component;
--generator
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

--declarare semnale
signal C_Mu,C_Mz,C_Ou1,C_Ou2,C_Oz,C_Zu1,C_Zz,C_Lu1,C_Lu2,C_Lz,C_mux,C_g1,C_g2,C_nr: std_logic:='0'; 
signal E_ou1,E_z:std_logic:='0';
signal I_Mu,I_Mz,I_Ou1,I_Ou2,I_Ou,I_Oz,I_Zu1,I_Zu,I_Zz,I_Lu1,I_Lu2,I_Lu,I_Lz,I_G1,I_G2,I_BCD1,I_BCD2,I_BCD3,I_BCD4 :STD_LOGIC_VECTOR(3 downto 0):="0000";
signal Sel: std_logic_vector (1 downto 0):="00";

begin

	-- enter your statements here -- 
	U_min_u: Numarator_9 port map(Min_u,clk,I_Mu,R,'1',S,C_Mu);
	U_min_z: Numarator_5 port map(Min_z,clk,I_Mz,R,C_Mu,S,C_Mz); --in loc de enable pentru zeci se va folosi carry ul de la unitati , la fel vor functiona si restul nr folosite
		--se incepe numararea orelor
	E_ou1<= C_Mu and C_Mz; -- se probeaza daca si carry ul de la minute unitati si minute zeci este pe 1
	--U_o_u1: Numarator_9 port map(Ora_u,clk,I_Ou1,R,E_ou1,S,C_Ou1);
	U_o_z: Numarator_2 port map(Ora_z,clk,I_Oz,R,C_Ou1,S,C_Oz);
	U_o_u2: Numarator_4 port map(Ora_u,clk,I_Ou,R,C_Oz,S,C_Ou2,C_Oz);
	--U_o_uf: Mux_2_la1 port map(C_Oz,clk,I_Ou2,I_Ou1,I_Ou); -- daca carry ul de la numarator de zeci e pe 1 , se ia val pt unitati din al doilea numarator(nr_4)
		--se incepe numararea zilelor 
	E_z<= C_Oz and C_Ou2; --daca s-a ajuns la ora 24 se pune enable ul de la zile, pe 1
	U_z_u: Numarator_9 port map(Zile_u,clk,I_Zu,E_z,S,C_Zu1);
	U_z_z: Numarator_3 port map(Zile_z,clk,I_Zz,C_Zu1,S,C_Zz);
		--se incepe numararea lunilor
	U_l_u: Numarator_9 port map(L_u,clk,I_Lu1,C_Zz,S,C_Lu1);
	U_l_z: Numarator_1 port map(L_z,clk,I_Lz,C_Lu1,S,C_Lz);
	U_1_u2: Numarator_2 port map(L_u,clk,I_Lu2,C_Lz,S,C_Lu2);	
	
	


	
	--	component BCD is
--	 port(
--		 Din : in STD_LOGIC_VECTOR(3 downto 0);
--		 Dout : out STD_LOGIC_VECTOR(6 downto 0)
--	     );
--end component;

end bhv;
