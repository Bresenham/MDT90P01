library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;  

entity MDT90P01 is

	port(
		c0: in std_logic;
		
		pc: inout unsigned(8 downto 0);
		pc_skip: inout std_logic;
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
		w_to_ram: inout std_logic;
		
		is_add: inout std_logic;
		is_and: inout std_logic;
		is_decr: inout std_logic;
		
		is_ret: inout std_logic;
		is_jump: inout std_logic;
		jump_addr: inout unsigned(8 downto 0);
		scall: inout std_logic;
		reset_scall: inout std_logic;
		c_flag: inout std_logic;
		z_flag: inout std_logic;
		ret_addr: inout unsigned(8 downto 0);
		
		stack_lvl_1: inout unsigned(8 downto 0);
		stack_lvl_2: inout unsigned(8 downto 0);
		idx_out: inout unsigned(1 downto 0);
		
		bit_set: inout std_logic;
		bit_clear: inout std_logic;
		bit_pos: inout unsigned(1 downto 0);
		bit_test: inout std_logic;
		bit_skip_clear: inout std_logic;
		
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
			pc_skip => pc_skip,
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
			is_and => is_and,
			is_decr => is_decr,
			is_jump => is_jump,
			is_ret => is_ret,
			jump_addr => jump_addr,
			immediate => immediate,
			reg_addr => reg_addr,
			bit_set => bit_set,
			bit_test => bit_test,
			bit_skip_clear => bit_skip_clear,
			bit_clear => bit_clear,
			bit_pos => bit_pos
	);
	
	wreg_inst: entity work.W_Reg port map(
			c0 => c0,
			state => state,
			is_add => is_add,
			is_and => is_and,
			is_decr => is_decr,
			c_flag => c_flag,
			z_flag => z_flag,
			place_immediate => place_immediate,
			immediate => immediate,
			read_w => read_w,
			write_w => write_w,
			w_to_ram => w_to_ram,
			reg_write_data => reg_write_data,
			reg_read_data => reg_read_data,
			pc_skip => pc_skip,
			bit_pos => bit_pos,
			bit_skip_clear => bit_skip_clear,
			bit_test => bit_test,
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
			bit_set => bit_set,
			bit_clear => bit_clear,
			bit_pos => bit_pos,
			w_to_ram => w_to_ram,
			scall => scall,
			reset_scall => reset_scall,
			c_flag => c_flag,
			z_flag => z_flag,
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
		scall => scall,
		reset_scall => reset_scall,
		pc => pc,
		ret_addr => ret_addr,
		stack_lvl_1 => stack_lvl_1,
		stack_lvl_2 => stack_lvl_2,
		idx_out => idx_out
	);
	
end Behavioral;