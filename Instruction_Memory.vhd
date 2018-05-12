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
	 * LDWI 0x3
	 * LDR 0
	 * LDWI 0x5
	 * ADDWR 0,1
	 * LDWI 0x2
	 * ADDWR 0,0
	 * => In Reg0 muss 0x8 stehen
	 * => In W muss 0xA stehen
	*/
	type ROM_type is array (0 to 5) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "10010000011",
		1 => "10110100000",
		2 => "10010000101",
		3 => "11111000000",
		4 => "10010000010",
		5 => "10111000000"
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