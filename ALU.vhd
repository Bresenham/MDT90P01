library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity ALU is

	port (
	
		c0: in std_logic;
		state: in unsigned(2 downto 0);
		
		add: in std_logic;
		
		w_reg_top: in unsigned(3 downto 0);
		reg_read_data: in unsigned(3 downto 0);
		
		alu_out: out unsigned(3 downto 0)
		
	);
	
end ALU;

architecture Behavioral of ALU is

	begin
	process(c0)
	begin
	
		if(falling_edge(c0) and state = "101") then
			if(add = '1') then
				alu_out <= w_reg_top + reg_read_data;
			end if;
		end if;
	
	end process;

end Behavioral;