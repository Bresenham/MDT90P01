library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Instruction_Decoder is

	port (
	
		 c0: in std_logic;
		 instruction: in unsigned(10 downto 0);
		 state: in unsigned(2 downto 0);
		 
		 is_add: out std_logic;
		 is_and: out std_logic;
		 is_decr: out std_logic;
		 
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
		 jump_addr: inout unsigned(8 downto 0);
		 
		 bit_set: out std_logic;
		 bit_clear: out std_logic;
		 bit_pos: out unsigned(1 downto 0);
		 bit_test: out std_logic;
		 bit_skip_clear: out std_logic
	);

end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

	begin
	process(c0, instruction, state)
	begin
	
		if(falling_edge(c0) and state = "010") then

			is_add <= '0';
			is_and <= '0';
			is_decr <= '0';
			
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
			bit_set <= '0';
			bit_clear <= '0';
			bit_test <= '0';
			bit_skip_clear <= '0';
			
			immediate <= "0000";
			reg_addr <= "00000";
			bit_pos <= "00";
		
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
			elsif(instruction(10 downto 5) = "101101") then
				write_w <= '1';
				reg_read_en <= '1';
				reg_addr <= instruction(4 downto 0);
			/* LDWI I - Load immediate to W */
			elsif(instruction(10 downto 4) = "1001000") then
				write_w <= '1';
				place_immediate <= '1';
				immediate <= instruction(3 downto 0);
			/* ADDWR R, t - Add W and register */
			elsif(instruction(10) = '1' and instruction(8 downto 5) = "1110") then
				reg_addr <= instruction(4 downto 0);
				is_add <= '1';
				reg_read_en <= '1';
				/* Result is placed in W register */
				if(instruction(9) = '0') then
					write_w <= '1';
				/* Result is placed in RAM */
				else
				end if;
			/* DECRSZ R, t - Decrement register, skip if zero */
			elsif(instruction(10) = '1' and instruction(8 downto 5) = "1111") then
				reg_addr <= instruction(4 downto 0);
				is_decr <= '1';
				reg_read_en <= '1';
				/* Result is placed in W register */
				if(instruction(9) = '0') then
					write_w <= '1';
				/* Result is placed in RAM */
				else
				end if;
			/* ANDWR R, t - AND W and register */
			elsif(instruction(10) = '1' and instruction(8 downto 5) = "1001") then
				reg_addr <= instruction(4 downto 0);
				is_and <= '1';
				reg_read_en <= '1';
				/* Result is placed in W register */
				if(instruction(9) = '0') then
					write_w <= '1';
				/* Result is placed in RAM */
				else
				end if;
			/* ANDWI i - AND W and immediate */
			elsif(instruction(10 downto 4) = "1000010") then
				write_w <= '1';
				is_and <= '1';
				place_immediate <= '1';
				immediate <= instruction(3 downto 0);
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
			/* BCR R, b - Bit clear */
			elsif(instruction(10 downto 7) = "0100") then
				reg_write_en <= '1';
				bit_clear <= '1';
				bit_pos <= instruction(6 downto 5);
				reg_addr <= instruction(4 downto 0);
			/* BSR R, b - Bit set */
			elsif(instruction(10 downto 7) = "0110") then
				reg_write_en <= '1';
				bit_set <= '1';
				bit_pos <= instruction(6 downto 5);
				reg_addr <= instruction(4 downto 0);
			/* BTSC R, b - Bit Test, skip if clear */
			elsif(instruction(10 downto 7) = "0101") then
				bit_test <= '1';
				bit_skip_clear <= '1';
				reg_read_en <= '1';
				bit_pos <= instruction(6 downto 5);
				reg_addr <= instruction(4 downto 0);
			/* BTSS R, b - Bit Test, skip if set */
			elsif(instruction(10 downto 7) = "0111") then
				bit_test <= '1';
				bit_skip_clear <= '0';
				reg_read_en <= '1';
				bit_pos <= instruction(6 downto 5);
				reg_addr <= instruction(4 downto 0);
			end if;
			
		end if;
		
	end process;

end Behavioral;