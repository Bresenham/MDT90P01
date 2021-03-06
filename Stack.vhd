library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Stack is

	port (
	
		c0: in std_logic;
		
		is_ret: in std_logic;
		is_jump: in std_logic;
		pc: in unsigned(8 downto 0);
		ret_addr: out unsigned(8 downto 0);
		
		scall: in std_logic;
		reset_scall: out std_logic;
		
		state: in unsigned(2 downto 0);
		
		stack_lvl_1: out unsigned(8 downto 0);
		stack_lvl_2: out unsigned(8 downto 0);
		
		idx_out: out unsigned(1 downto 0)
		
	);
	
end Stack;

architecture Behavioral of Stack is

	type two_level is array (0 to 1) of unsigned (8 downto 0);
	signal stack_int: two_level;
  
	signal idx : unsigned(1 downto 0) := "00";
  
	begin
	process(c0, state, is_ret, is_jump, idx)
	begin
	
		if(falling_edge(c0) and state = "101") then
			if(is_ret = '1') then
				ret_addr <= stack_int(to_integer(unsigned(idx - 1)));
				idx <= idx - 1;
			elsif(is_jump = '1' and scall = '1') then
				stack_int(to_integer(unsigned(idx))) <= pc + 1;
				reset_scall <= '1';
				idx <= idx + 1;
			end if;
			if (scall <= '0') then
				reset_scall <= '0';
			end if;
		end if;
	
	end process;
	
	idx_out <= idx;
	stack_lvl_1 <= stack_int(0);
	stack_lvl_2 <= stack_int(1);
	
end Behavioral;