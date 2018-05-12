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
	* 0: JUMP 0x2
	* 1: LDWI 0x2
	* 2: JUMP 0x4
	* 3: RETWI 0x3
	* 4: RETWI 0x1
	* => In W muss 0x2 stehen
	*/
	type ROM_type is array (0 to 4) of unsigned(10 downto 0);
	constant rom_data: ROM_type := (
		0 => "00000000010",
		1 => "10010000010",
		2 => "00000000100",
		3 => "10010100011",
		4 => "10010100001"
	);
  
	begin
	process(c0)
	begin
	
		if(falling_edge(c0)) then
			if(state = "001") then
				instruction <= rom_data(to_integer(unsigned(pc)));
			end if;
		end if;
		
	end process;
	
end Behavioral;