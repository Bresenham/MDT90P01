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
		
		bit_set: in std_logic;
		bit_clear: in std_logic;
		bit_pos: in unsigned(1 downto 0);
		bit_skip_clear: in std_logic;
		bit_test: in std_logic;
		
		ram_top: out unsigned(3 downto 0);
		pc_skip: out std_logic;
		
		state: in unsigned(2 downto 0)
	);
	
end RAM_Memory;

architecture Behavioral of RAM_Memory is

	type reg_type is array (0 to 29) of unsigned (3 downto 0);
	signal reg_array: reg_type;

	begin
	process(c0, state, bit_test, bit_skip_clear, bit_set, bit_pos, reg_addr) 
	begin
 
	if(falling_edge(c0) and (state = "011" or state = "101")) then
		pc_skip <= '0';
		reg_read_data <= "0000";
		
		if reg_write_en = '1' then
			if bit_set = '1' then
				reg_array(to_integer(unsigned(reg_addr)))(to_integer(unsigned(bit_pos))) <= '1';
			elsif bit_clear = '1' then
				reg_array(to_integer(unsigned(reg_addr)))(to_integer(unsigned(bit_pos))) <= '0';
			else
				reg_array(to_integer(unsigned(reg_addr))) <= reg_write_data;
			end if;
		elsif reg_read_en = '1' then
			if bit_test = '1' then
				if bit_skip_clear = '1' and reg_array(to_integer(unsigned(reg_addr)))(to_integer(unsigned(bit_pos))) = '0' then
					pc_skip <= '1';
				elsif bit_skip_clear = '0' and reg_array(to_integer(unsigned(reg_addr)))(to_integer(unsigned(bit_pos))) = '1' then
					pc_skip <= '1';
				end if;
			else
				reg_read_data <= reg_array(to_integer(unsigned(reg_addr)));
			end if;
		end if;
	end if;
	 
	end process;
	
	ram_top <= reg_array(0);
	
end Behavioral;