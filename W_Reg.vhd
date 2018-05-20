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
		is_and: in std_logic;
		is_decr: in std_logic;
		
		reg_write_data: out unsigned(3 downto 0);
		reg_read_data: in unsigned(3 downto 0);
		
		immediate: in unsigned(3 downto 0);
		w_reg_top: out unsigned(3 downto 0);
		w_to_ram: out std_logic;
		
		bit_pos: in unsigned(1 downto 0);
		bit_skip_clear: in std_logic;
		bit_test: in std_logic;
		pc_skip: out std_logic;
		
		state: in unsigned(2 downto 0)
	);
	
	
end W_Reg;

architecture Behavioral of W_Reg is

	signal w_content: unsigned(3 downto 0) := "0000";

	begin
	process(c0, state, reg_read_data, immediate, read_w, write_w)
		variable temp : unsigned(3 downto 0) := "0000";
	begin
	
		if(falling_edge(c0) and state = "100") then
			w_to_ram <= '0';
			pc_skip <= '0';
			
			if(read_w = '1') then
				reg_write_data <= w_content;
			elsif(write_w = '1') then
				if(is_add = '1') then
					w_content <= w_content + reg_read_data;
				elsif(is_and = '1' and place_immediate = '0') then
					w_content <= w_content and reg_read_data;
				elsif(is_and = '1' and place_immediate = '1') then
					w_content <= w_content and immediate;
				elsif(is_decr = '1') then
					w_content <= reg_read_data - 1;
					if(w_content = 0) then
						pc_skip <= '1';
					end if;
				elsif(place_immediate = '1') then
					w_content <= immediate;
				else
					w_content <= reg_read_data;
				end if;
			elsif(bit_test = '1') then
				if bit_skip_clear = '1' and reg_read_data(to_integer(unsigned(bit_pos))) = '0' then
					pc_skip <= '1';
				elsif bit_skip_clear = '0' and reg_read_data(to_integer(unsigned(bit_pos))) = '1' then
					pc_skip <= '1';
				end if;
			elsif(is_add = '1') then
				reg_write_data <= w_content + reg_read_data;
				w_to_ram <= '1';
			elsif(is_and = '1') then
				reg_write_data <= w_content and reg_read_data;
				w_to_ram <= '1';
			elsif(is_decr = '1') then
				temp := reg_read_data - 1;
				reg_write_data <= temp;
				if(temp = 0) then
					pc_skip <= '1';
				end if;
				w_to_ram <= '1';
			end if;
			
		end if;
	
	end process;
	
	w_reg_top <= w_content;
	
end Behavioral;