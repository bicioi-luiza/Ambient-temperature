---------------------------------------------------------------------------------------------------
--
-- Title       : BCD
-- Design      : nr_sec_z
-- Author      : luizaconstantina@gmail.com
-- Company     : personal
--
---------------------------------------------------------------------------------------------------
--
-- File        : BCD.vhd
-- Generated   : Sat May 20 16:12:47 2022
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
--{entity {BCD} architecture {bhv}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BCD is
	 port(
		 Din : in STD_LOGIC_VECTOR(3 downto 0);
		 Dout : out STD_LOGIC_VECTOR(6 downto 0)
	     );
end BCD;

--}} End of automatically maintained section

architecture bhv of BCD is
begin
	process(Din)
	begin
		case Din is
			when "0000" => Dout<="0000001";	--0	  --1111110
			when "0001" => Dout<="1001111";	--1	   --0110000
			when "0010" => Dout<="0010010";	--2		--1101101
			when "0011" => Dout<="0000110";	--3	   --1111001
			when "0100" => Dout<="1001100";	--4	  --0110011
			when "0101" => Dout<="0100100";	--5	  --1011011
			when "0110" => Dout<="0100000";	--6	  --1011111
			when "0111" => Dout<="0001111";	--7	   --1110000
			when "1000" => Dout<="0000000";	--8		--1111111
			when "1001" => Dout<="0000100";	--9		--1111011
			when others => Dout<="1111111";	--blank when not a digit
		end case;
	end process;
	 -- enter your statements here --

end bhv;
