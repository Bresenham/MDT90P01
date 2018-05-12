library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Instruction_Memory is

	port (
	
		pc: in unsigned(8 downto 0);
		instruction: out unsigned(10 downto 0);
		state: in unsigned(2 downto 0);
		c0: in std_logic
		
	);
	
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is

	/*
	 * BSR 0,0
	 * BTSC 0,1
	 * NOP
	 * LDWI 0xF
	*/
	type ROM_type is array (0 to 3) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "01100000000",
		1 => "01010100000",
		2 => "10000000000",
		3 => "10010001111"
	);
  
	begin
	process(c0, pc)
	begin
	
		if(falling_edge(c0)) then
			if(state = "001") then
				instruction <= rom_data(to_integer(unsigned(pc)));
			end if;
		end if;
		
	end process;
	
end Behavioral;