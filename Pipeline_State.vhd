library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Pipeline_State is

	port (

		c0: in std_logic;
		state: out unsigned(2 downto 0)
		
	);
	
end Pipeline_State;

architecture Behavioral of Pipeline_State is

	signal state_mem: unsigned(2 downto 0) := "000";

	begin
	process(c0, state_mem)
	begin
	
		if(rising_edge(c0)) then
			state_mem <= state_mem + 1;
			if(state_mem = "110") then
				state_mem <= "000";
			end if;
		end if;
		
	end process;
	
	state <= state_mem;
	
end Behavioral;