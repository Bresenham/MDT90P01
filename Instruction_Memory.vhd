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
	 JUMP insrt
	str:
	 STWR 0
	insrt:
	 LDWI 0xF
	 JUMP str
	*/
	type ROM_type is array (0 to 3) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "00000000010",
		1 => "11110000000",
		2 => "10010001111",
		3 => "00000000001"
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