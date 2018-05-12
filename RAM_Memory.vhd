library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity RAM_Memory is

	port (
	
		c0: in std_logic;
		reg_write_en: in std_logic;
		reg_read_en: in std_logic;
		reg_addr: in unsigned(4 downto 0);
		reg_write_data: in unsigned(3 downto 0);
		reg_read_data: out unsigned(3 downto 0);
		
		ram_top: out unsigned(3 downto 0);
		
		state: in unsigned(2 downto 0)
	);
	
end RAM_Memory;

architecture Behavioral of RAM_Memory is

	type reg_type is array (0 to 4) of unsigned (3 downto 0);
	signal reg_array: reg_type;

	begin
	process(c0, state) 
	begin
 
	if(falling_edge(c0) and (state = "011" or state = "101")) then
		if reg_write_en = '1' then
			reg_array(to_integer(unsigned(reg_addr))) <= reg_write_data;
		elsif reg_read_en = '1' then
			reg_read_data <= reg_array(to_integer(unsigned(reg_addr)));
		end if;
	end if;
	 
	end process;
	
	ram_top <= reg_array(0);
	
end Behavioral;