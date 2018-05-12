library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Program_Counter is

	port (
	
		c0: in std_logic;
		pc: out unsigned(8 downto 0);
		is_jump: in std_logic;
		jump_addr: in unsigned(8 downto 0);
		is_ret: in std_logic;
		ret_addr: in unsigned(8 downto 0);
		pc_skip: in std_logic;
		
		state: in unsigned(2 downto 0)
		
	);
	
end Program_Counter;

architecture Behavioral of Program_Counter is

	signal pc_int : unsigned(8 downto 0) := "000000000";
  
	begin
	process(c0, state, is_jump, is_ret, pc_skip)
	begin
	
		if(falling_edge(c0) and state = "000") then
			if(is_jump = '1') then
				pc_int <= jump_addr;
			elsif(is_ret = '1') then
				pc_int <= ret_addr;
			elsif(pc_skip = '1') then
				pc_int <= pc_int + 2;
			else
				pc_int <= pc_int + 1;
			end if;
		end if;
	
	end process;
	
	pc <= pc_int;

end Behavioral;