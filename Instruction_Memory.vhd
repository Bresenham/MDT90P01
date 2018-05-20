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
	 LDWI 0xF
	 STWR 0
	 LDWI 0x0
	 LDR 0,0
	 ANDWI 0xA
	*/
	type ROM_type is array (0 to 4) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "10010001111",
		1 => "11110000000",
		2 => "10010000000",
		3 => "10110100000",
		4 => "10000101010"
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