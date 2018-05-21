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
	main:
	 LDWI 0x5
	 STWR 0
	 LDWI 0xA
	 ANDWR 0,1
	 BTSS 3,2
	 LDWI 0x0
	 LDWI 0xF
	 NOP
	 NOP
	 BTSS 3,2
	 NOP
	 LDWI 0xA
	*/
	type ROM_type is array (0 to 11) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "10010000101",
		1 => "11110000000",
		2 => "10010001010",
		3 => "11100100000",
		4 => "01111000011",
		5 => "10010000000",
		6 => "10010001111",
		7 => "10000000000",
		8 => "10000000000",
		9 => "01111000011",
		10 => "10000000000",
		11 => "10010001010"
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