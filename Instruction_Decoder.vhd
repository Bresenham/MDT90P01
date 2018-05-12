library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Instruction_Decoder is

	port (
	
		 c0: in std_logic;
		 instruction: in unsigned(10 downto 0);
		 state: in unsigned(2 downto 0);
		 
		 is_add: out std_logic;
		 
		 write_tmrl: out std_logic;
		 write_tmrh: out std_logic;
		 write_cpio: out std_logic;
		 read_w: out std_logic;
		 write_w: out std_logic;
		 reg_write_en: out std_logic;
		 reg_read_en: out std_logic;
		 place_immediate: out std_logic;
		 
		 immediate: out unsigned(3 downto 0);
		 reg_addr: out unsigned(4 downto 0);
		 
		 is_ret: inout std_logic;
		 is_jump: inout std_logic;
		 jump_addr: inout unsigned(8 downto 0)
	);

end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

	begin
	process(c0, instruction, state)
	begin
	
		if(falling_edge(c0) and state = "010") then

			is_add <= '0';
			
			write_tmrh <= '0';
			write_tmrl <= '0';
			write_cpio <= '0';
			read_w <= '0';
			write_w <= '0';
			reg_write_en <= '0';
			reg_read_en <= '0';
			place_immediate <= '0';
			is_ret <= '0';
			is_jump <= '0';
			
			immediate <= "0000";
			reg_addr <= "00000";
		
			/* TMODEL - Load W to TMRL register */
			if(instruction = "10000000011") then
				write_tmrl <= '1';
				read_w <= '1';
			/* TMODEH - Load W to TMRH register */
			elsif(instruction = "10000000101") then
				write_tmrl <= '1';
				read_w <= '1';
			/* CPIO R - Control I/O port register */
			elsif(instruction(10 downto 3) = "10000000") then
				write_cpio <= '1';
				reg_addr(2 downto 0) <= instruction(2 downto 0);
			/* STWR R - Store W to register */
			elsif(instruction(10 downto 5) = "111100") then
				read_w <= '1';
				reg_addr <= instruction(4 downto 0);
				reg_write_en <= '1';
			/* LDR R, t - Load register */
			elsif(instruction(10 downto 5) = "111101") then
				read_w <= '1';
				reg_write_en <= '1';
				reg_addr <= instruction(4 downto 0);
			/* LDWI I - Load immediate to W */
			elsif(instruction(10 downto 4) = "1001000") then
				write_w <= '1';
				place_immediate <= '1';
				immediate <= instruction(3 downto 0);
			/* ADDWR R, t - Add W and register */
			elsif(instruction(10 downto 5) = "101110") then
				write_w <= '1';
				reg_read_en <= '1';
				reg_addr <= instruction(4 downto 0);
				is_add <= '1';
			/* JUMP(CALL) to address */
			elsif(instruction(10 downto 9) = "00") then
				is_jump <= '1';
				jump_addr <= instruction(8 downto 0);
			/* RTWI - Return, place immediate to W */
			elsif(instruction(10 downto 4) = "1001010") then
				is_ret <= '1';
				write_w <= '1';
				place_immediate <= '1';
				immediate <= instruction(3 downto 0);
			end if;
			
		end if;
		
	end process;

end Behavioral;