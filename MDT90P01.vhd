library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;  

entity MDT90P01 is

	port(
		c0: in std_logic;
		
		pc: inout unsigned(8 downto 0);
		instruction: inout unsigned(10 downto 0);
		
		write_tmrl: inout std_logic;
		write_tmrh: inout std_logic;
		write_cpio: inout std_logic;
		read_w: inout std_logic;
		write_w: inout std_logic;
		reg_write_en: inout std_logic;
		reg_read_en: inout std_logic;
		place_immediate: inout std_logic;
		
		immediate: inout unsigned(3 downto 0);
		reg_addr: inout unsigned(4 downto 0);
		reg_read_data: inout unsigned(3 downto 0);
		reg_write_data: inout unsigned(3 downto 0);
		
		ram_top: inout unsigned(3 downto 0);
		w_reg_top: inout unsigned(3 downto 0);
		
		is_add: inout std_logic;
		
		is_ret: inout std_logic;
		is_jump: inout std_logic;
		jump_addr: inout unsigned(8 downto 0);
		ret_addr: inout unsigned(8 downto 0);
		
		stack_lvl_1: inout unsigned(8 downto 0);
		stack_lvl_2: inout unsigned(8 downto 0);
		idx_out: inout unsigned(0 downto 0);
		
		state: inout unsigned(2 downto 0)
	);
	
end MDT90P01;

architecture Behavioral of MDT90P01 is
	
	begin
	
	instr_inst: entity work.Instruction_Memory port map(
			c0 => c0,
			pc => pc,
			state => state,
			instruction => instruction
	);
	
	pc_inst: entity work.Program_Counter port map(
			c0 => c0,
			pc => pc,
			is_jump => is_jump,
			is_ret => is_ret,
			ret_addr => ret_addr,
			jump_addr => jump_addr,
			state => state
	);
	
	dec_inst: entity work.Instruction_Decoder port map(
			c0 => c0,
			instruction => instruction,
			state => state,
			read_w => read_w,
			write_w => write_w,
			reg_read_en => reg_read_en,
			reg_write_en => reg_write_en,
			place_immediate => place_immediate,
			is_add => is_add,
			is_jump => is_jump,
			is_ret => is_ret,
			jump_addr => jump_addr,
			immediate => immediate,
			reg_addr => reg_addr
	);
	
	wreg_inst: entity work.W_Reg port map(
			c0 => c0,
			state => state,
			is_add => is_add,
			place_immediate => place_immediate,
			immediate => immediate,
			read_w => read_w,
			write_w => write_w,
			reg_write_data => reg_write_data,
			reg_read_data => reg_read_data,
			w_reg_top => w_reg_top
	);
	
	ram_inst: entity work.RAM_Memory port map(
			c0 => c0,
			state => state,
			reg_write_en => reg_write_en,
			reg_read_en => reg_read_en,
			reg_addr => reg_addr,
			reg_write_data => reg_write_data,
			reg_read_data => reg_read_data,
			ram_top => ram_top
	);
	
	pipe_inst: entity work.Pipeline_State port map(
			c0 => c0,
			state => state
	);
	
	stack_int: entity work.Stack port map(
		c0 => c0,
		state => state,
		is_ret => is_ret,
		is_jump => is_jump,
		pc => pc,
		ret_addr => ret_addr,
		stack_lvl_1 => stack_lvl_1,
		stack_lvl_2 => stack_lvl_2,
		idx_out => idx_out
	);
	
end Behavioral;