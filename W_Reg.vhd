library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;  

entity W_Reg is

	port (

		c0: in std_logic;
		read_w: in std_logic;
		write_w: in std_logic;
		place_immediate: in std_logic;
		
		is_add: in std_logic;
		
		reg_write_data: out unsigned(3 downto 0);
		reg_read_data: in unsigned(3 downto 0);
		
		immediate: in unsigned(3 downto 0);
		w_reg_top: out unsigned(3 downto 0);
		state: in unsigned(2 downto 0)
	);
	
	
end W_Reg;

architecture Behavioral of W_Reg is

	signal w_content: unsigned(3 downto 0) := "0000";

	begin
	process(c0, state, reg_read_data, immediate, read_w, write_w)
	begin
	
		if(falling_edge(c0) and state = "100") then
			if(read_w = '1') then
				reg_write_data <= w_content;
			elsif(write_w = '1') then
				if(place_immediate = '1') then
					w_content <= immediate;
				elsif(is_add = '1') then
					w_content <= w_content + reg_read_data;
				else
					w_content <= reg_read_data;
				end if;
			end if;
			
		end if;
	
	end process;
	
	w_reg_top <= w_content;
	
end Behavioral;