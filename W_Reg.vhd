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
		
		c_flag: out std_logic;
		z_flag: out std_logic;
		
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
	signal z_int: std_logic;
	signal c_int: std_logic;
	
	begin
	process(c0, state, reg_read_data, immediate, read_w, write_w)
		variable temp : unsigned(3 downto 0) := "0000";
		variable temp_c : unsigned(4 downto 0) := "00000";
	begin
	
		if(falling_edge(c0) and state = "100") then
			w_to_ram <= '0';
			pc_skip <= '0';
			temp := "0000";
			temp_c := "00000";
			
			if(read_w = '1') then
				reg_write_data <= w_content;
			elsif(is_add = '1') then
				temp_c := '0' & reg_read_data + w_content;
				c_int <= temp_c(4);
				temp := temp_c(3 downto 0);
				if(temp = 0) then
					z_int <= '1';
				else
					z_int <= '0';
				end if;
				if(write_w = '1') then
					w_content <= temp;
				else
					reg_write_data <= temp;
					w_to_ram <= '1';
				end if;
			elsif(is_and = '1' and place_immediate = '0') then
				temp := w_content and reg_read_data;
				if(temp = 0) then
					z_int <= '1';
				else
					z_int <= '0';
				end if;
				if(write_w = '1') then
					w_content <= temp;
				else
					reg_write_data <= temp;
					w_to_ram <= '1';
				end if;
			elsif(is_and = '1' and place_immediate = '1') then
				temp := w_content and immediate;
				if(temp = 0) then
					z_int <= '1';
				else
					z_int <= '0';
				end if;
				if(write_w = '1') then
					w_content <= temp;
				end if;
			elsif(is_decr = '1') then
				temp := reg_read_data - 1;
				if(temp = 0) then
					pc_skip <= '1';
				else
					pc_skip <= '0';
				end if;
				if(write_w = '1') then
					w_content <= temp;
				else
					reg_write_data <= temp;
					w_to_ram <= '1';
				end if;
			elsif(place_immediate = '1') then
				w_content <= immediate;
			elsif(bit_test = '1') then
				if bit_skip_clear = '1' and reg_read_data(to_integer(unsigned(bit_pos))) = '0' then
					pc_skip <= '1';
				elsif bit_skip_clear = '0' and reg_read_data(to_integer(unsigned(bit_pos))) = '1' then
					pc_skip <= '1';
				end if;
			elsif(write_w = '1') then
				w_content <= reg_read_data;
			end if;
			
		end if;
	end process;
	
	c_flag <= c_int;
	z_flag <= z_int;
	w_reg_top <= w_content;
	
end Behavioral;