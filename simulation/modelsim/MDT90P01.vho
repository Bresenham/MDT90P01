-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/20/2018 09:39:55"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MDT90P01 IS
    PORT (
	c0 : IN std_logic;
	pc : INOUT std_logic_vector(8 DOWNTO 0);
	pc_skip : INOUT std_logic;
	instruction : INOUT std_logic_vector(10 DOWNTO 0);
	write_tmrl : INOUT std_logic;
	write_tmrh : INOUT std_logic;
	write_cpio : INOUT std_logic;
	read_w : INOUT std_logic;
	write_w : INOUT std_logic;
	reg_write_en : INOUT std_logic;
	reg_read_en : INOUT std_logic;
	place_immediate : INOUT std_logic;
	immediate : INOUT std_logic_vector(3 DOWNTO 0);
	reg_addr : INOUT std_logic_vector(4 DOWNTO 0);
	reg_read_data : INOUT std_logic_vector(3 DOWNTO 0);
	reg_write_data : INOUT std_logic_vector(3 DOWNTO 0);
	ram_top : INOUT std_logic_vector(3 DOWNTO 0);
	w_reg_top : INOUT std_logic_vector(3 DOWNTO 0);
	w_to_ram : INOUT std_logic;
	is_add : INOUT std_logic;
	is_and : INOUT std_logic;
	is_ret : INOUT std_logic;
	is_jump : INOUT std_logic;
	jump_addr : INOUT std_logic_vector(8 DOWNTO 0);
	scall : INOUT std_logic;
	reset_scall : INOUT std_logic;
	ret_addr : INOUT std_logic_vector(8 DOWNTO 0);
	stack_lvl_1 : INOUT std_logic_vector(8 DOWNTO 0);
	stack_lvl_2 : INOUT std_logic_vector(8 DOWNTO 0);
	idx_out : INOUT std_logic_vector(1 DOWNTO 0);
	bit_set : INOUT std_logic;
	bit_clear : INOUT std_logic;
	bit_pos : INOUT std_logic_vector(1 DOWNTO 0);
	bit_test : INOUT std_logic;
	bit_skip_clear : INOUT std_logic;
	state : INOUT std_logic_vector(2 DOWNTO 0)
	);
END MDT90P01;

-- Design Ports Information
-- write_tmrl	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_tmrh	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_cpio	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[2]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[7]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[8]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_skip	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[4]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[5]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[6]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[8]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[10]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_w	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_w	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_en	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_en	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- place_immediate	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[2]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[3]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[0]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[1]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[2]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[3]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[2]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_to_ram	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_add	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_and	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_ret	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_jump	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[2]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[3]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[5]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[6]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[7]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[8]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scall	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset_scall	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[0]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[1]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[2]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[6]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[7]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[8]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[0]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[3]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[5]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[6]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[8]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[4]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[6]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[7]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[8]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_set	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_clear	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_test	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_skip_clear	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c0	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MDT90P01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL \c0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_inst|Add1~0_combout\ : std_logic;
SIGNAL \c0~combout\ : std_logic;
SIGNAL \c0~clkctrl_outclk\ : std_logic;
SIGNAL \instr_inst|instruction[1]~0_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~1_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~2_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~0_combout\ : std_logic;
SIGNAL \instr_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[8]~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[1]~2_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[1]~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add1~1\ : std_logic;
SIGNAL \pc_inst|Add1~2_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~1_combout\ : std_logic;
SIGNAL \pc_inst|pc_int[1]~feeder_combout\ : std_logic;
SIGNAL \pc_inst|Equal0~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux0~1_combout\ : std_logic;
SIGNAL \dec_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|is_jump~0_combout\ : std_logic;
SIGNAL \dec_inst|is_jump~reg0_regout\ : std_logic;
SIGNAL \instr_inst|Mux0~2_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[0]~1_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[0]~reg0_regout\ : std_logic;
SIGNAL \pc_inst|pc_int~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[3]~3_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[2]~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add1~3\ : std_logic;
SIGNAL \pc_inst|Add1~4_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~2_combout\ : std_logic;
SIGNAL \pc_inst|pc_int[2]~feeder_combout\ : std_logic;
SIGNAL \pc_inst|Add1~5\ : std_logic;
SIGNAL \pc_inst|Add1~6_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~3_combout\ : std_logic;
SIGNAL \pc_inst|Add1~7\ : std_logic;
SIGNAL \pc_inst|Add1~8_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~4_combout\ : std_logic;
SIGNAL \pc_inst|Add1~9\ : std_logic;
SIGNAL \pc_inst|Add1~10_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~5_combout\ : std_logic;
SIGNAL \pc_inst|Add1~11\ : std_logic;
SIGNAL \pc_inst|Add1~12_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~6_combout\ : std_logic;
SIGNAL \pc_inst|Add1~13\ : std_logic;
SIGNAL \pc_inst|Add1~14_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~7_combout\ : std_logic;
SIGNAL \pc_inst|Add1~15\ : std_logic;
SIGNAL \pc_inst|Add1~16_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~8_combout\ : std_logic;
SIGNAL \instr_inst|Mux0~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal4~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~regout\ : std_logic;
SIGNAL \dec_inst|Equal6~0_combout\ : std_logic;
SIGNAL \dec_inst|write_w~regout\ : std_logic;
SIGNAL \dec_inst|reg_write_en~regout\ : std_logic;
SIGNAL \dec_inst|place_immediate~0_combout\ : std_logic;
SIGNAL \dec_inst|place_immediate~regout\ : std_logic;
SIGNAL \dec_inst|immediate~0_combout\ : std_logic;
SIGNAL \dec_inst|immediate~1_combout\ : std_logic;
SIGNAL \dec_inst|immediate~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~1_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[0]~feeder_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~1_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~2_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[0]~4_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[1]~feeder_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~3_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[2]~feeder_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~4_combout\ : std_logic;
SIGNAL \dec_inst|Equal12~0_combout\ : std_logic;
SIGNAL \dec_inst|bit_set~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~regout\ : std_logic;
SIGNAL \stack_int|Equal0~0_combout\ : std_logic;
SIGNAL \stack_int|reset_scall~0_combout\ : std_logic;
SIGNAL \stack_int|reset_scall~regout\ : std_logic;
SIGNAL \ram_inst|reg_array~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][2]~feeder_combout\ : std_logic;
SIGNAL \ram_inst|process_0~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][2]~regout\ : std_logic;
SIGNAL \stack_int|Add1~0_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~feeder_combout\ : std_logic;
SIGNAL \stack_int|idx[0]~0_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~2_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~0_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~regout\ : std_logic;
SIGNAL \stack_int|Add1~1\ : std_logic;
SIGNAL \stack_int|Add1~2_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][1]~regout\ : std_logic;
SIGNAL \stack_int|Add1~3\ : std_logic;
SIGNAL \stack_int|Add1~4_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][2]~regout\ : std_logic;
SIGNAL \stack_int|Add1~5\ : std_logic;
SIGNAL \stack_int|Add1~6_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][3]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][3]~regout\ : std_logic;
SIGNAL \stack_int|Add1~7\ : std_logic;
SIGNAL \stack_int|Add1~8_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][4]~regout\ : std_logic;
SIGNAL \stack_int|Add1~9\ : std_logic;
SIGNAL \stack_int|Add1~10_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][5]~regout\ : std_logic;
SIGNAL \stack_int|Add1~11\ : std_logic;
SIGNAL \stack_int|Add1~12_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][6]~regout\ : std_logic;
SIGNAL \stack_int|Add1~13\ : std_logic;
SIGNAL \stack_int|Add1~14_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][7]~regout\ : std_logic;
SIGNAL \stack_int|Add1~15\ : std_logic;
SIGNAL \stack_int|Add1~16_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][8]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~1_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][1]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][1]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][2]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][3]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][4]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][5]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][6]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][6]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][7]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][8]~regout\ : std_logic;
SIGNAL \stack_int|Add2~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pc_inst|pc_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pipe_inst|state_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dec_inst|immediate\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wreg_inst|w_content\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stack_int|idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instr_inst|instruction\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \wreg_inst|reg_write_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_c0~clkctrl_outclk\ : std_logic;

BEGIN

ww_c0 <= c0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \c0~combout\);
\ALT_INV_c0~clkctrl_outclk\ <= NOT \c0~clkctrl_outclk\;

-- Location: LCCOMB_X23_Y26_N14
\pc_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~0_combout\ = \pc_inst|pc_int\(0) $ (VCC)
-- \pc_inst|Add1~1\ = CARRY(\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(0),
	datad => VCC,
	combout => \pc_inst|Add1~0_combout\,
	cout => \pc_inst|Add1~1\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_c0,
	combout => \c0~combout\);

-- Location: CLKCTRL_G3
\c0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \c0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \c0~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y26_N14
\instr_inst|instruction[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|instruction[1]~0_combout\ = !\pc_inst|pc_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|instruction[1]~0_combout\);

-- Location: LCCOMB_X22_Y26_N14
\pipe_inst|state_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~1_combout\ = (\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(1))) # (!\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~1_combout\);

-- Location: LCFF_X22_Y26_N15
\pipe_inst|state_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(1));

-- Location: LCCOMB_X22_Y26_N0
\pipe_inst|state_mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~2_combout\ = (\pipe_inst|state_mem\(2) & ((!\pipe_inst|state_mem\(1)))) # (!\pipe_inst|state_mem\(2) & (\pipe_inst|state_mem\(0) & \pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \pipe_inst|state_mem~2_combout\);

-- Location: LCFF_X22_Y26_N1
\pipe_inst|state_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(2));

-- Location: LCCOMB_X22_Y26_N24
\pipe_inst|state_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~0_combout\ = (!\pipe_inst|state_mem\(0) & ((!\pipe_inst|state_mem\(1)) # (!\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(2),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \pipe_inst|state_mem~0_combout\);

-- Location: LCFF_X22_Y26_N25
\pipe_inst|state_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(0));

-- Location: LCCOMB_X25_Y26_N4
\instr_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \instr_inst|Equal0~0_combout\);

-- Location: LCFF_X25_Y26_N15
\instr_inst|instruction[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|instruction[1]~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(1));

-- Location: LCCOMB_X25_Y26_N12
\dec_inst|jump_addr[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[8]~0_combout\ = (\pipe_inst|state_mem\(2)) # ((\instr_inst|instruction\(7)) # ((\pipe_inst|state_mem\(0)) # (!\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(2),
	datab => \instr_inst|instruction\(7),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \dec_inst|jump_addr[8]~0_combout\);

-- Location: LCCOMB_X25_Y26_N18
\dec_inst|jump_addr[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[1]~2_combout\ = (\instr_inst|instruction\(8) & (((\dec_inst|jump_addr[1]~reg0_regout\)))) # (!\instr_inst|instruction\(8) & ((\dec_inst|jump_addr[8]~0_combout\ & ((\dec_inst|jump_addr[1]~reg0_regout\))) # 
-- (!\dec_inst|jump_addr[8]~0_combout\ & (\instr_inst|instruction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(1),
	datac => \dec_inst|jump_addr[1]~reg0_regout\,
	datad => \dec_inst|jump_addr[8]~0_combout\,
	combout => \dec_inst|jump_addr[1]~2_combout\);

-- Location: LCFF_X25_Y26_N19
\dec_inst|jump_addr[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[1]~reg0_regout\);

-- Location: LCCOMB_X23_Y26_N16
\pc_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~2_combout\ = (\pc_inst|pc_int\(1) & (!\pc_inst|Add1~1\)) # (!\pc_inst|pc_int\(1) & ((\pc_inst|Add1~1\) # (GND)))
-- \pc_inst|Add1~3\ = CARRY((!\pc_inst|Add1~1\) # (!\pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(1),
	datad => VCC,
	cin => \pc_inst|Add1~1\,
	combout => \pc_inst|Add1~2_combout\,
	cout => \pc_inst|Add1~3\);

-- Location: LCCOMB_X25_Y26_N30
\pc_inst|pc_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~1_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\dec_inst|jump_addr[1]~reg0_regout\)) # (!\dec_inst|is_jump~reg0_regout\ & ((\pc_inst|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \dec_inst|jump_addr[1]~reg0_regout\,
	datad => \pc_inst|Add1~2_combout\,
	combout => \pc_inst|pc_int~1_combout\);

-- Location: LCCOMB_X24_Y26_N2
\pc_inst|pc_int[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int[1]~feeder_combout\ = \pc_inst|pc_int~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int~1_combout\,
	combout => \pc_inst|pc_int[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y26_N12
\pc_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(2) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(2),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \pc_inst|Equal0~0_combout\);

-- Location: LCFF_X24_Y26_N3
\pc_inst|pc_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int[1]~feeder_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(1));

-- Location: LCCOMB_X25_Y26_N26
\instr_inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~1_combout\ = \pc_inst|pc_int\(1) $ (\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux0~1_combout\);

-- Location: LCFF_X25_Y26_N27
\instr_inst|instruction[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux0~1_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(7));

-- Location: LCCOMB_X26_Y26_N24
\dec_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal0~0_combout\ = (\pipe_inst|state_mem\(1) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \dec_inst|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y26_N22
\dec_inst|is_jump~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_jump~0_combout\ = (\dec_inst|Equal0~0_combout\ & (!\instr_inst|instruction\(8) & (!\instr_inst|instruction\(7)))) # (!\dec_inst|Equal0~0_combout\ & (((\dec_inst|is_jump~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(7),
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|is_jump~0_combout\);

-- Location: LCFF_X25_Y26_N23
\dec_inst|is_jump~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_jump~reg0_regout\);

-- Location: LCCOMB_X25_Y26_N20
\instr_inst|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~2_combout\ = (!\pc_inst|pc_int\(1) & \pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux0~2_combout\);

-- Location: LCFF_X25_Y26_N21
\instr_inst|instruction[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux0~2_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(8));

-- Location: LCCOMB_X25_Y26_N16
\dec_inst|jump_addr[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[0]~1_combout\ = (\instr_inst|instruction\(8) & (((\dec_inst|jump_addr[0]~reg0_regout\)))) # (!\instr_inst|instruction\(8) & ((\dec_inst|jump_addr[8]~0_combout\ & ((\dec_inst|jump_addr[0]~reg0_regout\))) # 
-- (!\dec_inst|jump_addr[8]~0_combout\ & (\instr_inst|instruction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(0),
	datab => \instr_inst|instruction\(8),
	datac => \dec_inst|jump_addr[0]~reg0_regout\,
	datad => \dec_inst|jump_addr[8]~0_combout\,
	combout => \dec_inst|jump_addr[0]~1_combout\);

-- Location: LCFF_X25_Y26_N17
\dec_inst|jump_addr[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y26_N8
\pc_inst|pc_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~0_combout\ = (\dec_inst|is_jump~reg0_regout\ & ((\dec_inst|jump_addr[0]~reg0_regout\))) # (!\dec_inst|is_jump~reg0_regout\ & (\pc_inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|Add1~0_combout\,
	datab => \dec_inst|is_jump~reg0_regout\,
	datac => \dec_inst|jump_addr[0]~reg0_regout\,
	combout => \pc_inst|pc_int~0_combout\);

-- Location: LCFF_X24_Y26_N9
\pc_inst|pc_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~0_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(0));

-- Location: LCCOMB_X25_Y26_N8
\dec_inst|jump_addr[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[3]~3_combout\ = (\instr_inst|instruction\(8) & (((\dec_inst|jump_addr[2]~reg0_regout\)))) # (!\instr_inst|instruction\(8) & ((\dec_inst|jump_addr[8]~0_combout\ & ((\dec_inst|jump_addr[2]~reg0_regout\))) # 
-- (!\dec_inst|jump_addr[8]~0_combout\ & (\instr_inst|instruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(2),
	datab => \instr_inst|instruction\(8),
	datac => \dec_inst|jump_addr[2]~reg0_regout\,
	datad => \dec_inst|jump_addr[8]~0_combout\,
	combout => \dec_inst|jump_addr[3]~3_combout\);

-- Location: LCFF_X25_Y26_N9
\dec_inst|jump_addr[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[2]~reg0_regout\);

-- Location: LCCOMB_X23_Y26_N18
\pc_inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~4_combout\ = (\pc_inst|pc_int\(2) & (\pc_inst|Add1~3\ $ (GND))) # (!\pc_inst|pc_int\(2) & (!\pc_inst|Add1~3\ & VCC))
-- \pc_inst|Add1~5\ = CARRY((\pc_inst|pc_int\(2) & !\pc_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(2),
	datad => VCC,
	cin => \pc_inst|Add1~3\,
	combout => \pc_inst|Add1~4_combout\,
	cout => \pc_inst|Add1~5\);

-- Location: LCCOMB_X24_Y26_N30
\pc_inst|pc_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~2_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\dec_inst|jump_addr[2]~reg0_regout\)) # (!\dec_inst|is_jump~reg0_regout\ & ((\pc_inst|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|is_jump~reg0_regout\,
	datac => \dec_inst|jump_addr[2]~reg0_regout\,
	datad => \pc_inst|Add1~4_combout\,
	combout => \pc_inst|pc_int~2_combout\);

-- Location: LCCOMB_X23_Y26_N8
\pc_inst|pc_int[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int[2]~feeder_combout\ = \pc_inst|pc_int~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int~2_combout\,
	combout => \pc_inst|pc_int[2]~feeder_combout\);

-- Location: LCFF_X23_Y26_N9
\pc_inst|pc_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int[2]~feeder_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(2));

-- Location: LCCOMB_X23_Y26_N20
\pc_inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~6_combout\ = (\pc_inst|pc_int\(3) & (!\pc_inst|Add1~5\)) # (!\pc_inst|pc_int\(3) & ((\pc_inst|Add1~5\) # (GND)))
-- \pc_inst|Add1~7\ = CARRY((!\pc_inst|Add1~5\) # (!\pc_inst|pc_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(3),
	datad => VCC,
	cin => \pc_inst|Add1~5\,
	combout => \pc_inst|Add1~6_combout\,
	cout => \pc_inst|Add1~7\);

-- Location: LCCOMB_X24_Y26_N20
\pc_inst|pc_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~3_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\dec_inst|jump_addr[2]~reg0_regout\)) # (!\dec_inst|is_jump~reg0_regout\ & ((\pc_inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|jump_addr[2]~reg0_regout\,
	datac => \pc_inst|Add1~6_combout\,
	datad => \dec_inst|is_jump~reg0_regout\,
	combout => \pc_inst|pc_int~3_combout\);

-- Location: LCFF_X24_Y26_N21
\pc_inst|pc_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~3_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(3));

-- Location: LCCOMB_X23_Y26_N22
\pc_inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~8_combout\ = (\pc_inst|pc_int\(4) & (\pc_inst|Add1~7\ $ (GND))) # (!\pc_inst|pc_int\(4) & (!\pc_inst|Add1~7\ & VCC))
-- \pc_inst|Add1~9\ = CARRY((\pc_inst|pc_int\(4) & !\pc_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(4),
	datad => VCC,
	cin => \pc_inst|Add1~7\,
	combout => \pc_inst|Add1~8_combout\,
	cout => \pc_inst|Add1~9\);

-- Location: LCCOMB_X23_Y26_N6
\pc_inst|pc_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~4_combout\ = (!\dec_inst|is_jump~reg0_regout\ & \pc_inst|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|Add1~8_combout\,
	combout => \pc_inst|pc_int~4_combout\);

-- Location: LCFF_X23_Y26_N7
\pc_inst|pc_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~4_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(4));

-- Location: LCCOMB_X23_Y26_N24
\pc_inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~10_combout\ = (\pc_inst|pc_int\(5) & (!\pc_inst|Add1~9\)) # (!\pc_inst|pc_int\(5) & ((\pc_inst|Add1~9\) # (GND)))
-- \pc_inst|Add1~11\ = CARRY((!\pc_inst|Add1~9\) # (!\pc_inst|pc_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(5),
	datad => VCC,
	cin => \pc_inst|Add1~9\,
	combout => \pc_inst|Add1~10_combout\,
	cout => \pc_inst|Add1~11\);

-- Location: LCCOMB_X23_Y26_N4
\pc_inst|pc_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~5_combout\ = (!\dec_inst|is_jump~reg0_regout\ & \pc_inst|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datac => \pc_inst|Add1~10_combout\,
	combout => \pc_inst|pc_int~5_combout\);

-- Location: LCFF_X23_Y26_N5
\pc_inst|pc_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~5_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(5));

-- Location: LCCOMB_X23_Y26_N26
\pc_inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~12_combout\ = (\pc_inst|pc_int\(6) & (\pc_inst|Add1~11\ $ (GND))) # (!\pc_inst|pc_int\(6) & (!\pc_inst|Add1~11\ & VCC))
-- \pc_inst|Add1~13\ = CARRY((\pc_inst|pc_int\(6) & !\pc_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(6),
	datad => VCC,
	cin => \pc_inst|Add1~11\,
	combout => \pc_inst|Add1~12_combout\,
	cout => \pc_inst|Add1~13\);

-- Location: LCCOMB_X23_Y26_N2
\pc_inst|pc_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~6_combout\ = (!\dec_inst|is_jump~reg0_regout\ & \pc_inst|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|Add1~12_combout\,
	combout => \pc_inst|pc_int~6_combout\);

-- Location: LCFF_X23_Y26_N3
\pc_inst|pc_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~6_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(6));

-- Location: LCCOMB_X23_Y26_N28
\pc_inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~14_combout\ = (\pc_inst|pc_int\(7) & (!\pc_inst|Add1~13\)) # (!\pc_inst|pc_int\(7) & ((\pc_inst|Add1~13\) # (GND)))
-- \pc_inst|Add1~15\ = CARRY((!\pc_inst|Add1~13\) # (!\pc_inst|pc_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(7),
	datad => VCC,
	cin => \pc_inst|Add1~13\,
	combout => \pc_inst|Add1~14_combout\,
	cout => \pc_inst|Add1~15\);

-- Location: LCCOMB_X23_Y26_N0
\pc_inst|pc_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~7_combout\ = (!\dec_inst|is_jump~reg0_regout\ & \pc_inst|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|Add1~14_combout\,
	combout => \pc_inst|pc_int~7_combout\);

-- Location: LCFF_X23_Y26_N1
\pc_inst|pc_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~7_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(7));

-- Location: LCCOMB_X23_Y26_N30
\pc_inst|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~16_combout\ = \pc_inst|Add1~15\ $ (!\pc_inst|pc_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int\(8),
	cin => \pc_inst|Add1~15\,
	combout => \pc_inst|Add1~16_combout\);

-- Location: LCCOMB_X23_Y26_N10
\pc_inst|pc_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~8_combout\ = (!\dec_inst|is_jump~reg0_regout\ & \pc_inst|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|Add1~16_combout\,
	combout => \pc_inst|pc_int~8_combout\);

-- Location: LCFF_X23_Y26_N11
\pc_inst|pc_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~8_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(8));

-- Location: LCFF_X25_Y26_N5
\instr_inst|instruction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int\(1),
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(0));

-- Location: LCCOMB_X25_Y26_N28
\instr_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~0_combout\ = (\pc_inst|pc_int\(1) & !\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux0~0_combout\);

-- Location: LCFF_X25_Y26_N29
\instr_inst|instruction[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux0~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(2));

-- Location: LCCOMB_X26_Y26_N12
\dec_inst|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal4~0_combout\ = (\instr_inst|instruction\(8) & \instr_inst|instruction\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|Equal4~0_combout\);

-- Location: LCFF_X26_Y26_N13
\dec_inst|read_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|Equal4~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|read_w~regout\);

-- Location: LCCOMB_X26_Y26_N26
\dec_inst|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal6~0_combout\ = (!\instr_inst|instruction\(8) & \instr_inst|instruction\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|Equal6~0_combout\);

-- Location: LCFF_X26_Y26_N27
\dec_inst|write_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|Equal6~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|write_w~regout\);

-- Location: LCFF_X26_Y26_N25
\dec_inst|reg_write_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|instruction\(8),
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_write_en~regout\);

-- Location: LCCOMB_X26_Y26_N18
\dec_inst|place_immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|place_immediate~0_combout\ = (!\instr_inst|instruction\(8) & \instr_inst|instruction\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|place_immediate~0_combout\);

-- Location: LCFF_X26_Y26_N19
\dec_inst|place_immediate\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|place_immediate~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|place_immediate~regout\);

-- Location: LCCOMB_X26_Y26_N28
\dec_inst|immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~0_combout\ = (\instr_inst|instruction\(7) & (!\instr_inst|instruction\(8) & \instr_inst|instruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|immediate~0_combout\);

-- Location: LCFF_X26_Y26_N29
\dec_inst|immediate[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(0));

-- Location: LCCOMB_X26_Y26_N6
\dec_inst|immediate~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~1_combout\ = (\instr_inst|instruction\(7) & (!\instr_inst|instruction\(8) & \instr_inst|instruction\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(1),
	combout => \dec_inst|immediate~1_combout\);

-- Location: LCFF_X26_Y26_N7
\dec_inst|immediate[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(1));

-- Location: LCCOMB_X26_Y26_N16
\dec_inst|immediate~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~2_combout\ = (\instr_inst|instruction\(2) & (!\instr_inst|instruction\(8) & \instr_inst|instruction\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(2),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|immediate~2_combout\);

-- Location: LCFF_X26_Y26_N17
\dec_inst|immediate[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(2));

-- Location: LCCOMB_X26_Y26_N10
\dec_inst|reg_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~0_combout\ = (\instr_inst|instruction\(8) & \instr_inst|instruction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|reg_addr~0_combout\);

-- Location: LCFF_X26_Y26_N11
\dec_inst|reg_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(0));

-- Location: LCCOMB_X26_Y26_N4
\dec_inst|reg_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~1_combout\ = (\instr_inst|instruction\(8) & \instr_inst|instruction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(1),
	combout => \dec_inst|reg_addr~1_combout\);

-- Location: LCFF_X26_Y26_N5
\dec_inst|reg_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(1));

-- Location: LCCOMB_X26_Y26_N14
\dec_inst|reg_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~2_combout\ = (\instr_inst|instruction\(8) & \instr_inst|instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(2),
	combout => \dec_inst|reg_addr~2_combout\);

-- Location: LCFF_X26_Y26_N15
\dec_inst|reg_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(2));

-- Location: LCCOMB_X27_Y26_N10
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X27_Y26_N16
\wreg_inst|reg_write_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[0]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \~GND~combout\,
	combout => \wreg_inst|reg_write_data[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y26_N20
\wreg_inst|w_content~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~0_combout\ = (\dec_inst|immediate\(0) & \dec_inst|place_immediate~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|immediate\(0),
	datad => \dec_inst|place_immediate~regout\,
	combout => \wreg_inst|w_content~0_combout\);

-- Location: LCCOMB_X22_Y26_N8
\wreg_inst|w_content[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~1_combout\ = (\dec_inst|write_w~regout\ & (!\pipe_inst|state_mem\(1) & (!\pipe_inst|state_mem\(0) & \pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|write_w~regout\,
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \wreg_inst|w_content[0]~1_combout\);

-- Location: LCCOMB_X26_Y26_N8
\wreg_inst|w_content[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~2_combout\ = (!\dec_inst|read_w~regout\ & \wreg_inst|w_content[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datad => \wreg_inst|w_content[0]~1_combout\,
	combout => \wreg_inst|w_content[0]~2_combout\);

-- Location: LCFF_X26_Y26_N21
\wreg_inst|w_content[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content~0_combout\,
	ena => \wreg_inst|w_content[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(0));

-- Location: LCCOMB_X27_Y26_N24
\wreg_inst|reg_write_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[0]~4_combout\ = (\dec_inst|read_w~regout\ & (\pipe_inst|state_mem\(2) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \pipe_inst|state_mem\(2),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \wreg_inst|reg_write_data[0]~4_combout\);

-- Location: LCFF_X27_Y26_N17
\wreg_inst|reg_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data[0]~feeder_combout\,
	sdata => \wreg_inst|w_content\(0),
	sload => \dec_inst|read_w~regout\,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(0));

-- Location: LCCOMB_X27_Y26_N18
\wreg_inst|reg_write_data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[1]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \~GND~combout\,
	combout => \wreg_inst|reg_write_data[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y26_N30
\wreg_inst|w_content~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~3_combout\ = (\dec_inst|immediate\(1) & \dec_inst|place_immediate~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(1),
	datad => \dec_inst|place_immediate~regout\,
	combout => \wreg_inst|w_content~3_combout\);

-- Location: LCFF_X26_Y26_N31
\wreg_inst|w_content[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content~3_combout\,
	ena => \wreg_inst|w_content[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(1));

-- Location: LCFF_X27_Y26_N19
\wreg_inst|reg_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data[1]~feeder_combout\,
	sdata => \wreg_inst|w_content\(1),
	sload => \dec_inst|read_w~regout\,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(1));

-- Location: LCCOMB_X27_Y26_N20
\wreg_inst|reg_write_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[2]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \~GND~combout\,
	combout => \wreg_inst|reg_write_data[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y26_N0
\wreg_inst|w_content~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~4_combout\ = (\dec_inst|immediate\(2) & \dec_inst|place_immediate~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|immediate\(2),
	datad => \dec_inst|place_immediate~regout\,
	combout => \wreg_inst|w_content~4_combout\);

-- Location: LCFF_X26_Y26_N1
\wreg_inst|w_content[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content~4_combout\,
	ena => \wreg_inst|w_content[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(2));

-- Location: LCFF_X27_Y26_N21
\wreg_inst|reg_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data[2]~feeder_combout\,
	sdata => \wreg_inst|w_content\(2),
	sload => \dec_inst|read_w~regout\,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(2));

-- Location: LCCOMB_X26_Y26_N22
\dec_inst|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal12~0_combout\ = (\instr_inst|instruction\(8) & !\instr_inst|instruction\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|Equal12~0_combout\);

-- Location: LCFF_X26_Y26_N23
\dec_inst|bit_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|Equal12~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|bit_set~regout\);

-- Location: LCCOMB_X22_Y26_N18
\ram_inst|reg_array[0][1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~0_combout\ = (!\dec_inst|reg_addr\(0) & (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) $ (\pipe_inst|state_mem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(0),
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \ram_inst|reg_array[0][1]~0_combout\);

-- Location: LCCOMB_X27_Y26_N26
\ram_inst|reg_array[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~1_combout\ = (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_write_en~regout\ & (!\dec_inst|reg_addr\(1) & \ram_inst|reg_array[0][1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_write_en~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_array[0][1]~0_combout\,
	combout => \ram_inst|reg_array[0][0]~1_combout\);

-- Location: LCCOMB_X27_Y26_N2
\ram_inst|reg_array[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~2_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\wreg_inst|reg_write_data\(0)) # ((\dec_inst|bit_set~regout\)))) # (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \dec_inst|bit_set~regout\,
	datac => \ram_inst|reg_array[0][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][0]~2_combout\);

-- Location: LCFF_X27_Y26_N3
\ram_inst|reg_array[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][0]~regout\);

-- Location: LCCOMB_X27_Y26_N0
\ram_inst|reg_array[0][1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~3_combout\ = (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_write_en~regout\ & (!\dec_inst|reg_addr\(1) & !\dec_inst|bit_set~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_write_en~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|bit_set~regout\,
	combout => \ram_inst|reg_array[0][1]~3_combout\);

-- Location: LCCOMB_X27_Y26_N4
\ram_inst|reg_array[0][1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~4_combout\ = (\ram_inst|reg_array[0][1]~3_combout\ & ((\ram_inst|reg_array[0][1]~0_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[0][1]~0_combout\ & ((\ram_inst|reg_array[0][1]~regout\))))) # 
-- (!\ram_inst|reg_array[0][1]~3_combout\ & (((\ram_inst|reg_array[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[0][1]~3_combout\,
	datac => \ram_inst|reg_array[0][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~0_combout\,
	combout => \ram_inst|reg_array[0][1]~4_combout\);

-- Location: LCFF_X27_Y26_N5
\ram_inst|reg_array[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][1]~regout\);

-- Location: LCCOMB_X27_Y26_N22
\ram_inst|reg_array[0][3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][3]~5_combout\ = (\ram_inst|reg_array[0][1]~3_combout\ & ((\ram_inst|reg_array[0][1]~0_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[0][1]~0_combout\ & ((\ram_inst|reg_array[0][2]~regout\))))) # 
-- (!\ram_inst|reg_array[0][1]~3_combout\ & (((\ram_inst|reg_array[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datab => \ram_inst|reg_array[0][1]~3_combout\,
	datac => \ram_inst|reg_array[0][2]~regout\,
	datad => \ram_inst|reg_array[0][1]~0_combout\,
	combout => \ram_inst|reg_array[0][3]~5_combout\);

-- Location: LCFF_X27_Y26_N23
\ram_inst|reg_array[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][2]~regout\);

-- Location: LCCOMB_X22_Y26_N4
\stack_int|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Equal0~0_combout\ = (\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(1) & \pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \stack_int|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y26_N28
\stack_int|reset_scall~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|reset_scall~0_combout\ = (\stack_int|Equal0~0_combout\ & (\ram_inst|reg_array[4][2]~regout\ & ((\dec_inst|is_jump~reg0_regout\) # (\stack_int|reset_scall~regout\)))) # (!\stack_int|Equal0~0_combout\ & (((\stack_int|reset_scall~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][2]~regout\,
	datab => \dec_inst|is_jump~reg0_regout\,
	datac => \stack_int|reset_scall~regout\,
	datad => \stack_int|Equal0~0_combout\,
	combout => \stack_int|reset_scall~0_combout\);

-- Location: LCFF_X19_Y26_N29
\stack_int|reset_scall\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|reset_scall~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|reset_scall~regout\);

-- Location: LCCOMB_X19_Y26_N14
\ram_inst|reg_array~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~6_combout\ = (!\stack_int|reset_scall~regout\ & \ram_inst|reg_array[4][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_int|reset_scall~regout\,
	datac => \ram_inst|reg_array[4][2]~regout\,
	combout => \ram_inst|reg_array~6_combout\);

-- Location: LCCOMB_X20_Y26_N16
\ram_inst|reg_array[4][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][2]~feeder_combout\ = \ram_inst|reg_array~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_inst|reg_array~6_combout\,
	combout => \ram_inst|reg_array[4][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y26_N22
\ram_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|process_0~0_combout\ = (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) $ (\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \ram_inst|process_0~0_combout\);

-- Location: LCFF_X20_Y26_N17
\ram_inst|reg_array[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][2]~feeder_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][2]~regout\);

-- Location: LCCOMB_X21_Y26_N0
\stack_int|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~0_combout\ = \pc_inst|pc_int\(0) $ (VCC)
-- \stack_int|Add1~1\ = CARRY(\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(0),
	datad => VCC,
	combout => \stack_int|Add1~0_combout\,
	cout => \stack_int|Add1~1\);

-- Location: LCCOMB_X21_Y26_N30
\stack_int|stack_int[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][0]~feeder_combout\ = \stack_int|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~0_combout\,
	combout => \stack_int|stack_int[0][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y26_N16
\stack_int|idx[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|idx[0]~0_combout\ = !\stack_int|idx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack_int|idx\(0),
	combout => \stack_int|idx[0]~0_combout\);

-- Location: LCCOMB_X22_Y26_N20
\stack_int|stack_int[1][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][0]~2_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\ram_inst|reg_array[4][2]~regout\ & \stack_int|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \ram_inst|reg_array[4][2]~regout\,
	datac => \stack_int|Equal0~0_combout\,
	combout => \stack_int|stack_int[1][0]~2_combout\);

-- Location: LCFF_X22_Y26_N17
\stack_int|idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|idx[0]~0_combout\,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(0));

-- Location: LCCOMB_X22_Y26_N30
\stack_int|stack_int[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][0]~0_combout\ = (\dec_inst|is_jump~reg0_regout\ & (!\stack_int|idx\(0) & (\stack_int|Equal0~0_combout\ & \ram_inst|reg_array[4][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \stack_int|idx\(0),
	datac => \stack_int|Equal0~0_combout\,
	datad => \ram_inst|reg_array[4][2]~regout\,
	combout => \stack_int|stack_int[0][0]~0_combout\);

-- Location: LCFF_X21_Y26_N31
\stack_int|stack_int[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][0]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][0]~regout\);

-- Location: LCCOMB_X21_Y26_N2
\stack_int|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~2_combout\ = (\pc_inst|pc_int\(1) & (!\stack_int|Add1~1\)) # (!\pc_inst|pc_int\(1) & ((\stack_int|Add1~1\) # (GND)))
-- \stack_int|Add1~3\ = CARRY((!\stack_int|Add1~1\) # (!\pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(1),
	datad => VCC,
	cin => \stack_int|Add1~1\,
	combout => \stack_int|Add1~2_combout\,
	cout => \stack_int|Add1~3\);

-- Location: LCFF_X21_Y26_N3
\stack_int|stack_int[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~2_combout\,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][1]~regout\);

-- Location: LCCOMB_X21_Y26_N4
\stack_int|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~4_combout\ = (\pc_inst|pc_int\(2) & (\stack_int|Add1~3\ $ (GND))) # (!\pc_inst|pc_int\(2) & (!\stack_int|Add1~3\ & VCC))
-- \stack_int|Add1~5\ = CARRY((\pc_inst|pc_int\(2) & !\stack_int|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(2),
	datad => VCC,
	cin => \stack_int|Add1~3\,
	combout => \stack_int|Add1~4_combout\,
	cout => \stack_int|Add1~5\);

-- Location: LCFF_X23_Y26_N23
\stack_int|stack_int[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~4_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][2]~regout\);

-- Location: LCCOMB_X21_Y26_N6
\stack_int|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~6_combout\ = (\pc_inst|pc_int\(3) & (!\stack_int|Add1~5\)) # (!\pc_inst|pc_int\(3) & ((\stack_int|Add1~5\) # (GND)))
-- \stack_int|Add1~7\ = CARRY((!\stack_int|Add1~5\) # (!\pc_inst|pc_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(3),
	datad => VCC,
	cin => \stack_int|Add1~5\,
	combout => \stack_int|Add1~6_combout\,
	cout => \stack_int|Add1~7\);

-- Location: LCCOMB_X21_Y26_N28
\stack_int|stack_int[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][3]~feeder_combout\ = \stack_int|Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~6_combout\,
	combout => \stack_int|stack_int[0][3]~feeder_combout\);

-- Location: LCFF_X21_Y26_N29
\stack_int|stack_int[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][3]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][3]~regout\);

-- Location: LCCOMB_X21_Y26_N8
\stack_int|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~8_combout\ = (\pc_inst|pc_int\(4) & (\stack_int|Add1~7\ $ (GND))) # (!\pc_inst|pc_int\(4) & (!\stack_int|Add1~7\ & VCC))
-- \stack_int|Add1~9\ = CARRY((\pc_inst|pc_int\(4) & !\stack_int|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(4),
	datad => VCC,
	cin => \stack_int|Add1~7\,
	combout => \stack_int|Add1~8_combout\,
	cout => \stack_int|Add1~9\);

-- Location: LCFF_X23_Y26_N31
\stack_int|stack_int[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~8_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][4]~regout\);

-- Location: LCCOMB_X21_Y26_N10
\stack_int|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~10_combout\ = (\pc_inst|pc_int\(5) & (!\stack_int|Add1~9\)) # (!\pc_inst|pc_int\(5) & ((\stack_int|Add1~9\) # (GND)))
-- \stack_int|Add1~11\ = CARRY((!\stack_int|Add1~9\) # (!\pc_inst|pc_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(5),
	datad => VCC,
	cin => \stack_int|Add1~9\,
	combout => \stack_int|Add1~10_combout\,
	cout => \stack_int|Add1~11\);

-- Location: LCFF_X23_Y26_N15
\stack_int|stack_int[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~10_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][5]~regout\);

-- Location: LCCOMB_X21_Y26_N12
\stack_int|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~12_combout\ = (\pc_inst|pc_int\(6) & (\stack_int|Add1~11\ $ (GND))) # (!\pc_inst|pc_int\(6) & (!\stack_int|Add1~11\ & VCC))
-- \stack_int|Add1~13\ = CARRY((\pc_inst|pc_int\(6) & !\stack_int|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(6),
	datad => VCC,
	cin => \stack_int|Add1~11\,
	combout => \stack_int|Add1~12_combout\,
	cout => \stack_int|Add1~13\);

-- Location: LCFF_X21_Y26_N13
\stack_int|stack_int[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~12_combout\,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][6]~regout\);

-- Location: LCCOMB_X21_Y26_N14
\stack_int|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~14_combout\ = (\pc_inst|pc_int\(7) & (!\stack_int|Add1~13\)) # (!\pc_inst|pc_int\(7) & ((\stack_int|Add1~13\) # (GND)))
-- \stack_int|Add1~15\ = CARRY((!\stack_int|Add1~13\) # (!\pc_inst|pc_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(7),
	datad => VCC,
	cin => \stack_int|Add1~13\,
	combout => \stack_int|Add1~14_combout\,
	cout => \stack_int|Add1~15\);

-- Location: LCFF_X21_Y26_N23
\stack_int|stack_int[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~14_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][7]~regout\);

-- Location: LCCOMB_X21_Y26_N16
\stack_int|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~16_combout\ = \stack_int|Add1~15\ $ (!\pc_inst|pc_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int\(8),
	cin => \stack_int|Add1~15\,
	combout => \stack_int|Add1~16_combout\);

-- Location: LCFF_X21_Y26_N1
\stack_int|stack_int[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~16_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][8]~regout\);

-- Location: LCCOMB_X21_Y26_N24
\stack_int|stack_int[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][0]~feeder_combout\ = \stack_int|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~0_combout\,
	combout => \stack_int|stack_int[1][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y26_N26
\stack_int|stack_int[1][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][0]~1_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\ram_inst|reg_array[4][2]~regout\ & (\stack_int|idx\(0) & \stack_int|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \ram_inst|reg_array[4][2]~regout\,
	datac => \stack_int|idx\(0),
	datad => \stack_int|Equal0~0_combout\,
	combout => \stack_int|stack_int[1][0]~1_combout\);

-- Location: LCFF_X21_Y26_N25
\stack_int|stack_int[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][0]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][0]~regout\);

-- Location: LCCOMB_X21_Y26_N18
\stack_int|stack_int[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][1]~feeder_combout\ = \stack_int|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~2_combout\,
	combout => \stack_int|stack_int[1][1]~feeder_combout\);

-- Location: LCFF_X21_Y26_N19
\stack_int|stack_int[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][1]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][1]~regout\);

-- Location: LCFF_X21_Y26_N5
\stack_int|stack_int[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~4_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][2]~regout\);

-- Location: LCFF_X21_Y26_N7
\stack_int|stack_int[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~6_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][3]~regout\);

-- Location: LCFF_X21_Y26_N9
\stack_int|stack_int[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~8_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][4]~regout\);

-- Location: LCFF_X21_Y26_N11
\stack_int|stack_int[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~10_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][5]~regout\);

-- Location: LCCOMB_X21_Y26_N20
\stack_int|stack_int[1][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][6]~feeder_combout\ = \stack_int|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~12_combout\,
	combout => \stack_int|stack_int[1][6]~feeder_combout\);

-- Location: LCFF_X21_Y26_N21
\stack_int|stack_int[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][6]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][6]~regout\);

-- Location: LCFF_X21_Y26_N15
\stack_int|stack_int[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~14_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][7]~regout\);

-- Location: LCFF_X21_Y26_N17
\stack_int|stack_int[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add1~16_combout\,
	ena => \stack_int|stack_int[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][8]~regout\);

-- Location: LCCOMB_X22_Y26_N26
\stack_int|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add2~0_combout\ = \stack_int|idx\(1) $ (\stack_int|idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack_int|idx\(1),
	datad => \stack_int|idx\(0),
	combout => \stack_int|Add2~0_combout\);

-- Location: LCFF_X22_Y26_N27
\stack_int|idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add2~0_combout\,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(1));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_tmrl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => write_tmrl);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_tmrh~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => write_tmrh);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_cpio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => write_cpio);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(1));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(4),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(4));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(5),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(5));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(6),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(7));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pc_inst|pc_int\(8),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc(8));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pc_skip~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => pc_skip);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(1));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(3));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => instruction(4));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => instruction(5));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => instruction(6));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(7));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(8),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(8));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(8),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(9));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(10));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\read_w~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|read_w~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => read_w);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\write_w~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|write_w~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => write_w);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_write_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|reg_write_en~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_en);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_read_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_en);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\place_immediate~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|place_immediate~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => place_immediate);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\immediate[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|immediate\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\immediate[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|immediate\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\immediate[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|immediate\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(2));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\immediate[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|immediate\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(3));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|reg_addr\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|reg_addr\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(1));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|reg_addr\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(2));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|reg_addr\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => reg_addr(4));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_read_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(0));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_read_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_read_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(2));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_read_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(3));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_write_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|reg_write_data\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_data(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_write_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|reg_write_data\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_data(1));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_write_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|reg_write_data\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_data(2));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reg_write_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|reg_write_data\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_data(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ram_top[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ram_inst|reg_array[0][0]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ram_top(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ram_top[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ram_inst|reg_array[0][1]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ram_top(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ram_top[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ram_inst|reg_array[0][2]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ram_top(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ram_top[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ram_inst|reg_array[0][2]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ram_top(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_reg_top[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|w_content\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_reg_top(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_reg_top[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|w_content\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_reg_top(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_reg_top[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|w_content\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_reg_top(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_reg_top[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|w_content\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_reg_top(3));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\w_to_ram~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => w_to_ram);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\is_add~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => is_add);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\is_and~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => is_and);

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\is_ret~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_ret);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\is_jump~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|is_jump~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_jump);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|jump_addr[0]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|jump_addr[1]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(1));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|jump_addr[2]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(2));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|jump_addr[2]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(4));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(5));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(6));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(7));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\jump_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(8));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\scall~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ram_inst|reg_array[4][2]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => scall);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\reset_scall~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|reset_scall~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reset_scall);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(0));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(1));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(4));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(5));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(6));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(7));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ret_addr[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(8));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][0]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(0));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][1]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][2]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(2));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][3]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][4]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(4));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][5]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(5));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][6]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][7]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[0][8]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(8));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][0]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(0));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][1]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][2]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][3]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(3));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][4]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(4));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][5]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(5));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][6]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(6));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][7]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(7));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stack_lvl_2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|stack_int[1][8]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(8));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\idx_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|idx\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => idx_out(0));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\idx_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stack_int|idx\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => idx_out(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_set~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|bit_set~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => bit_set);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_clear~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => bit_clear);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_pos[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => bit_pos(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_pos[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => bit_pos(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_test~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => bit_test);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bit_skip_clear~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => bit_skip_clear);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pipe_inst|state_mem\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => state(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pipe_inst|state_mem\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => state(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\state[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pipe_inst|state_mem\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => state(2));
END structure;


