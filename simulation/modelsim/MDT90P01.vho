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

-- DATE "05/20/2018 16:14:54"

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
	is_decr : INOUT std_logic;
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
-- write_tmrl	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_tmrh	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_cpio	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[0]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[2]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[3]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[4]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[5]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[6]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[7]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[8]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_skip	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[0]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[4]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[5]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[6]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[7]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[8]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[9]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[10]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_w	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_w	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_en	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_en	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- place_immediate	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[1]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[3]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[1]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[3]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[0]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[1]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[1]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_to_ram	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_add	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_and	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_decr	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_ret	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_jump	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[0]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[1]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[3]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[5]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[6]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[7]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[8]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scall	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset_scall	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[0]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[2]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[3]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[4]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[5]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[6]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[7]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[8]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[0]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[1]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[2]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[3]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[4]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[7]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[8]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[1]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[3]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[7]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[8]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[1]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_set	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_clear	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[1]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_test	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_skip_clear	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[0]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[1]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[2]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \ram_inst|reg_array[13][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~15_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][3]~regout\ : std_logic;
SIGNAL \wreg_inst|w_content~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][0]~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][0]~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~17_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~20_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][1]~21_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][1]~22_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~23_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~24_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][2]~28_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][2]~30_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~33_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~34_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][3]~35_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][3]~36_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~37_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~38_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][3]~40_combout\ : std_logic;
SIGNAL \c0~combout\ : std_logic;
SIGNAL \c0~clkctrl_outclk\ : std_logic;
SIGNAL \pc_inst|Add1~0_combout\ : std_logic;
SIGNAL \pc_inst|Add1~1\ : std_logic;
SIGNAL \pc_inst|Add1~3\ : std_logic;
SIGNAL \pc_inst|Add1~4_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~2_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~2_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~1_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~0_combout\ : std_logic;
SIGNAL \pc_inst|Equal0~0_combout\ : std_logic;
SIGNAL \instr_inst|instruction[7]~0_combout\ : std_logic;
SIGNAL \instr_inst|Equal0~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux0~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal6~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~reg0_regout\ : std_logic;
SIGNAL \pc_inst|pc_int~0_combout\ : std_logic;
SIGNAL \pc_inst|Add1~2_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~1_combout\ : std_logic;
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
SIGNAL \instr_inst|Mux3~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux3~1_combout\ : std_logic;
SIGNAL \instr_inst|Mux1~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal2~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal4~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~regout\ : std_logic;
SIGNAL \dec_inst|write_w~0_combout\ : std_logic;
SIGNAL \dec_inst|write_w~regout\ : std_logic;
SIGNAL \dec_inst|reg_write_en~regout\ : std_logic;
SIGNAL \dec_inst|reg_addr~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~regout\ : std_logic;
SIGNAL \dec_inst|place_immediate~0_combout\ : std_logic;
SIGNAL \dec_inst|place_immediate~regout\ : std_logic;
SIGNAL \dec_inst|immediate~0_combout\ : std_logic;
SIGNAL \dec_inst|immediate~1_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~1_combout\ : std_logic;
SIGNAL \dec_inst|immediate~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~3_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~4_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~5_combout\ : std_logic;
SIGNAL \ram_inst|process_0~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~15_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~3_combout\ : std_logic;
SIGNAL \dec_inst|is_and~0_combout\ : std_logic;
SIGNAL \dec_inst|is_and~regout\ : std_logic;
SIGNAL \wreg_inst|process_0~0_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~1_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~4_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~5_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~0_combout\ : std_logic;
SIGNAL \wreg_inst|Equal0~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~6_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~10_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[0]~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][0]~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][0]~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~4_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~3_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[2]~4_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][1]~26_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][0]~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][1]~25_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~19_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~27_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][2]~31_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][0]~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][2]~29_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~11_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~9_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~10_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[2]~2_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~6_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~32_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][3]~39_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][3]~regout\ : std_logic;
SIGNAL \wreg_inst|w_content~11_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~3_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~4_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~12_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~5_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[3]~3_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~1_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~8_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~41_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~17_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~19_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~3_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~2_combout\ : std_logic;
SIGNAL \wreg_inst|process_0~1_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~2_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~8_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[1]~1_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~regout\ : std_logic;
SIGNAL \stack_int|idx[0]~1_combout\ : std_logic;
SIGNAL \stack_int|idx[0]~0_combout\ : std_logic;
SIGNAL \stack_int|Add2~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_inst|pc_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dec_inst|reg_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \stack_int|idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pipe_inst|state_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \wreg_inst|w_content\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_inst|reg_read_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_inst|instruction\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dec_inst|immediate\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_c0~clkctrl_outclk\ : std_logic;

BEGIN

ww_c0 <= c0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \c0~combout\);
\ALT_INV_c0~clkctrl_outclk\ <= NOT \c0~clkctrl_outclk\;

-- Location: LCFF_X47_Y16_N17
\ram_inst|reg_array[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][0]~regout\);

-- Location: LCFF_X47_Y16_N27
\ram_inst|reg_array[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][0]~regout\);

-- Location: LCFF_X48_Y16_N17
\ram_inst|reg_array[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][0]~regout\);

-- Location: LCFF_X49_Y15_N17
\ram_inst|reg_array[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][0]~regout\);

-- Location: LCFF_X46_Y16_N13
\ram_inst|reg_array[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][1]~regout\);

-- Location: LCFF_X48_Y16_N25
\ram_inst|reg_array[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][1]~regout\);

-- Location: LCFF_X48_Y16_N11
\ram_inst|reg_array[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][1]~regout\);

-- Location: LCFF_X49_Y16_N31
\ram_inst|reg_array[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][1]~regout\);

-- Location: LCCOMB_X49_Y17_N0
\ram_inst|reg_read_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~5_combout\ = (\dec_inst|reg_addr\(3) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(3) & ((\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[7][1]~regout\))) # (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[5][1]~regout\,
	datab => \dec_inst|reg_addr\(3),
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_array[7][1]~regout\,
	combout => \ram_inst|reg_read_data~5_combout\);

-- Location: LCCOMB_X49_Y17_N6
\ram_inst|reg_read_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~6_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~5_combout\ & (\ram_inst|reg_array[15][1]~regout\)) # (!\ram_inst|reg_read_data~5_combout\ & ((\ram_inst|reg_array[13][1]~regout\))))) # (!\dec_inst|reg_addr\(3) & 
-- (((\ram_inst|reg_read_data~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_array[15][1]~regout\,
	datac => \ram_inst|reg_array[13][1]~regout\,
	datad => \ram_inst|reg_read_data~5_combout\,
	combout => \ram_inst|reg_read_data~6_combout\);

-- Location: LCFF_X47_Y16_N7
\ram_inst|reg_array[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][2]~regout\);

-- Location: LCFF_X47_Y16_N1
\ram_inst|reg_array[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][2]~regout\);

-- Location: LCFF_X47_Y16_N11
\ram_inst|reg_array[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][2]~regout\);

-- Location: LCFF_X48_Y16_N9
\ram_inst|reg_array[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][2]~regout\);

-- Location: LCFF_X47_Y16_N5
\ram_inst|reg_array[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][3]~regout\);

-- Location: LCFF_X48_Y16_N27
\ram_inst|reg_array[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][3]~regout\);

-- Location: LCFF_X48_Y17_N5
\ram_inst|reg_array[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][3]~regout\);

-- Location: LCFF_X48_Y16_N29
\ram_inst|reg_array[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][3]~regout\);

-- Location: LCCOMB_X48_Y17_N26
\ram_inst|reg_read_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~15_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[7][3]~regout\) # ((\dec_inst|reg_addr\(3))))) # (!\dec_inst|reg_addr\(1) & (((\ram_inst|reg_array[5][3]~regout\ & !\dec_inst|reg_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[7][3]~regout\,
	datab => \ram_inst|reg_array[5][3]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|reg_read_data~15_combout\);

-- Location: LCCOMB_X48_Y17_N20
\ram_inst|reg_read_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~16_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~15_combout\ & ((\ram_inst|reg_array[15][3]~regout\))) # (!\ram_inst|reg_read_data~15_combout\ & (\ram_inst|reg_array[13][3]~regout\)))) # (!\dec_inst|reg_addr\(3) & 
-- (((\ram_inst|reg_read_data~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[13][3]~regout\,
	datab => \dec_inst|reg_addr\(3),
	datac => \ram_inst|reg_array[15][3]~regout\,
	datad => \ram_inst|reg_read_data~15_combout\,
	combout => \ram_inst|reg_read_data~16_combout\);

-- Location: LCFF_X46_Y16_N23
\ram_inst|reg_array[10][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][3]~regout\);

-- Location: LCCOMB_X46_Y16_N6
\wreg_inst|w_content~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~7_combout\ = (\dec_inst|place_immediate~regout\ & ((\dec_inst|immediate\(1)) # ((\dec_inst|is_and~regout\)))) # (!\dec_inst|place_immediate~regout\ & (((\ram_inst|reg_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(1),
	datab => \dec_inst|place_immediate~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|w_content~7_combout\);

-- Location: LCCOMB_X48_Y16_N20
\ram_inst|reg_array[15][0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][0]~7_combout\ = (\dec_inst|reg_addr\(3) & (\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[15][0]~6_combout\ & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_array[15][0]~6_combout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[15][0]~7_combout\);

-- Location: LCCOMB_X47_Y16_N16
\ram_inst|reg_array[13][0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][0]~10_combout\ = (\ram_inst|reg_array[13][0]~9_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[13][0]~9_combout\ & ((\ram_inst|reg_array[13][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[13][0]~regout\,
	datad => \ram_inst|reg_array[13][0]~9_combout\,
	combout => \ram_inst|reg_array[13][0]~10_combout\);

-- Location: LCCOMB_X47_Y16_N26
\ram_inst|reg_array[8][0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][0]~12_combout\ = (\ram_inst|reg_array[8][0]~11_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[8][0]~11_combout\ & ((\ram_inst|reg_array[8][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[8][0]~regout\,
	datad => \ram_inst|reg_array[8][0]~11_combout\,
	combout => \ram_inst|reg_array[8][0]~12_combout\);

-- Location: LCCOMB_X48_Y16_N0
\ram_inst|reg_array[5][0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][0]~17_combout\ = (!\dec_inst|reg_addr\(3) & (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[15][0]~6_combout\ & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_array[15][0]~6_combout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[5][0]~17_combout\);

-- Location: LCCOMB_X48_Y16_N16
\ram_inst|reg_array[5][0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][0]~18_combout\ = (\ram_inst|reg_array[5][0]~17_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[5][0]~17_combout\ & ((\ram_inst|reg_array[5][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[5][0]~regout\,
	datad => \ram_inst|reg_array[5][0]~17_combout\,
	combout => \ram_inst|reg_array[5][0]~18_combout\);

-- Location: LCCOMB_X49_Y15_N16
\ram_inst|reg_array[2][0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][0]~20_combout\ = (\ram_inst|reg_array[2][0]~19_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[2][0]~19_combout\ & ((\ram_inst|reg_array[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[2][0]~regout\,
	datad => \ram_inst|reg_array[2][0]~19_combout\,
	combout => \ram_inst|reg_array[2][0]~20_combout\);

-- Location: LCCOMB_X46_Y16_N12
\ram_inst|reg_array[13][1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][1]~21_combout\ = (\ram_inst|reg_array[13][0]~9_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[13][0]~9_combout\ & ((\ram_inst|reg_array[13][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[13][1]~regout\,
	datad => \ram_inst|reg_array[13][0]~9_combout\,
	combout => \ram_inst|reg_array[13][1]~21_combout\);

-- Location: LCCOMB_X48_Y16_N24
\ram_inst|reg_array[15][1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][1]~22_combout\ = (\ram_inst|reg_array[15][0]~7_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[15][0]~7_combout\ & ((\ram_inst|reg_array[15][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[15][0]~7_combout\,
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[15][1]~regout\,
	combout => \ram_inst|reg_array[15][1]~22_combout\);

-- Location: LCCOMB_X48_Y16_N10
\ram_inst|reg_array[5][1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][1]~23_combout\ = (\ram_inst|reg_array[5][0]~17_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[5][0]~17_combout\ & ((\ram_inst|reg_array[5][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[5][1]~regout\,
	datad => \ram_inst|reg_array[5][0]~17_combout\,
	combout => \ram_inst|reg_array[5][1]~23_combout\);

-- Location: LCCOMB_X49_Y16_N30
\ram_inst|reg_array[7][1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][1]~24_combout\ = (\ram_inst|reg_array[7][0]~15_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[7][0]~15_combout\ & ((\ram_inst|reg_array[7][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[7][1]~regout\,
	datad => \ram_inst|reg_array[7][0]~15_combout\,
	combout => \ram_inst|reg_array[7][1]~24_combout\);

-- Location: LCCOMB_X47_Y16_N6
\ram_inst|reg_array[15][2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][2]~28_combout\ = (\ram_inst|reg_array[15][0]~7_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[15][0]~7_combout\ & ((\ram_inst|reg_array[15][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[15][2]~regout\,
	datad => \ram_inst|reg_array[15][0]~7_combout\,
	combout => \ram_inst|reg_array[15][2]~28_combout\);

-- Location: LCCOMB_X47_Y16_N0
\ram_inst|reg_array[8][2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][2]~30_combout\ = (\ram_inst|reg_array[8][0]~11_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[8][0]~11_combout\ & ((\ram_inst|reg_array[8][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[8][2]~regout\,
	datad => \ram_inst|reg_array[8][0]~11_combout\,
	combout => \ram_inst|reg_array[8][2]~30_combout\);

-- Location: LCCOMB_X47_Y16_N10
\ram_inst|reg_array[5][2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][2]~33_combout\ = (\ram_inst|reg_array[5][0]~17_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[5][0]~17_combout\ & ((\ram_inst|reg_array[5][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[5][2]~regout\,
	datad => \ram_inst|reg_array[5][0]~17_combout\,
	combout => \ram_inst|reg_array[5][2]~33_combout\);

-- Location: LCCOMB_X48_Y16_N8
\ram_inst|reg_array[2][2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][2]~34_combout\ = (\ram_inst|reg_array[2][0]~19_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[2][0]~19_combout\ & ((\ram_inst|reg_array[2][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[2][2]~regout\,
	datad => \ram_inst|reg_array[2][0]~19_combout\,
	combout => \ram_inst|reg_array[2][2]~34_combout\);

-- Location: LCCOMB_X47_Y16_N4
\ram_inst|reg_array[13][3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][3]~35_combout\ = (\ram_inst|reg_array[13][0]~9_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[13][0]~9_combout\ & ((\ram_inst|reg_array[13][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[13][3]~regout\,
	datad => \ram_inst|reg_array[13][0]~9_combout\,
	combout => \ram_inst|reg_array[13][3]~35_combout\);

-- Location: LCCOMB_X48_Y16_N26
\ram_inst|reg_array[15][3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][3]~36_combout\ = (\ram_inst|reg_array[15][0]~7_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[15][0]~7_combout\ & ((\ram_inst|reg_array[15][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[15][0]~7_combout\,
	datab => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[15][3]~regout\,
	combout => \ram_inst|reg_array[15][3]~36_combout\);

-- Location: LCCOMB_X48_Y17_N4
\ram_inst|reg_array[5][3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][3]~37_combout\ = (\ram_inst|reg_array[5][0]~17_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[5][0]~17_combout\ & ((\ram_inst|reg_array[5][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[5][3]~regout\,
	datad => \ram_inst|reg_array[5][0]~17_combout\,
	combout => \ram_inst|reg_array[5][3]~37_combout\);

-- Location: LCCOMB_X48_Y16_N28
\ram_inst|reg_array[7][3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][3]~38_combout\ = (\ram_inst|reg_array[7][0]~15_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[7][0]~15_combout\ & ((\ram_inst|reg_array[7][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[7][3]~regout\,
	datad => \ram_inst|reg_array[7][0]~15_combout\,
	combout => \ram_inst|reg_array[7][3]~38_combout\);

-- Location: LCCOMB_X46_Y16_N22
\ram_inst|reg_array[10][3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][3]~40_combout\ = (\ram_inst|reg_array[10][0]~13_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[10][0]~13_combout\ & ((\ram_inst|reg_array[10][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[10][3]~regout\,
	datad => \ram_inst|reg_array[10][0]~13_combout\,
	combout => \ram_inst|reg_array[10][3]~40_combout\);

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

-- Location: LCCOMB_X49_Y13_N0
\pc_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~0_combout\ = \pc_inst|pc_int\(0) $ (VCC)
-- \pc_inst|Add1~1\ = CARRY(\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datad => VCC,
	combout => \pc_inst|Add1~0_combout\,
	cout => \pc_inst|Add1~1\);

-- Location: LCCOMB_X49_Y13_N2
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

-- Location: LCCOMB_X49_Y13_N4
\pc_inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~4_combout\ = (\pc_inst|pc_int\(2) & (\pc_inst|Add1~3\ $ (GND))) # (!\pc_inst|pc_int\(2) & (!\pc_inst|Add1~3\ & VCC))
-- \pc_inst|Add1~5\ = CARRY((\pc_inst|pc_int\(2) & !\pc_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(2),
	datad => VCC,
	cin => \pc_inst|Add1~3\,
	combout => \pc_inst|Add1~4_combout\,
	cout => \pc_inst|Add1~5\);

-- Location: LCCOMB_X49_Y13_N20
\pc_inst|pc_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~2_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~4_combout\,
	combout => \pc_inst|pc_int~2_combout\);

-- Location: LCCOMB_X48_Y16_N12
\pipe_inst|state_mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~2_combout\ = (\pipe_inst|state_mem\(2) & ((!\pipe_inst|state_mem\(1)))) # (!\pipe_inst|state_mem\(2) & (\pipe_inst|state_mem\(0) & \pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \pipe_inst|state_mem~2_combout\);

-- Location: LCFF_X48_Y16_N13
\pipe_inst|state_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(2));

-- Location: LCCOMB_X48_Y16_N14
\pipe_inst|state_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~1_combout\ = (\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(1))) # (!\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~1_combout\);

-- Location: LCFF_X48_Y16_N15
\pipe_inst|state_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(1));

-- Location: LCCOMB_X48_Y16_N4
\pipe_inst|state_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~0_combout\ = (!\pipe_inst|state_mem\(0) & ((!\pipe_inst|state_mem\(2)) # (!\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~0_combout\);

-- Location: LCFF_X48_Y16_N5
\pipe_inst|state_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	datain => \pipe_inst|state_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(0));

-- Location: LCCOMB_X49_Y13_N30
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

-- Location: LCFF_X49_Y13_N21
\pc_inst|pc_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~2_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(2));

-- Location: LCCOMB_X49_Y12_N26
\instr_inst|instruction[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|instruction[7]~0_combout\ = !\pc_inst|pc_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|pc_int\(2),
	combout => \instr_inst|instruction[7]~0_combout\);

-- Location: LCCOMB_X49_Y12_N20
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

-- Location: LCFF_X49_Y12_N27
\instr_inst|instruction[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|instruction[7]~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(7));

-- Location: LCCOMB_X49_Y12_N14
\instr_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~0_combout\ = (!\pc_inst|pc_int\(1) & \pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(1),
	datac => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux0~0_combout\);

-- Location: LCFF_X49_Y12_N15
\instr_inst|instruction[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux0~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(9));

-- Location: LCCOMB_X49_Y14_N0
\dec_inst|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal6~0_combout\ = (!\instr_inst|instruction\(8) & (\instr_inst|instruction\(7) & !\instr_inst|instruction\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(7),
	datad => \instr_inst|instruction\(9),
	combout => \dec_inst|Equal6~0_combout\);

-- Location: LCCOMB_X49_Y14_N28
\dec_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \dec_inst|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y14_N22
\dec_inst|is_ret~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~0_combout\ = (\dec_inst|Equal0~0_combout\ & (\instr_inst|instruction\(5) & (\dec_inst|Equal6~0_combout\))) # (!\dec_inst|Equal0~0_combout\ & (((\dec_inst|is_ret~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|Equal6~0_combout\,
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|is_ret~0_combout\);

-- Location: LCFF_X49_Y14_N23
\dec_inst|is_ret~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_ret~reg0_regout\);

-- Location: LCCOMB_X48_Y13_N4
\pc_inst|pc_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~0_combout\ = (\pc_inst|Add1~0_combout\ & !\dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|Add1~0_combout\,
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~0_combout\);

-- Location: LCFF_X49_Y13_N31
\pc_inst|pc_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~0_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(0));

-- Location: LCCOMB_X48_Y13_N30
\pc_inst|pc_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~1_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~2_combout\,
	combout => \pc_inst|pc_int~1_combout\);

-- Location: LCFF_X49_Y13_N13
\pc_inst|pc_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~1_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(1));

-- Location: LCCOMB_X49_Y13_N6
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

-- Location: LCCOMB_X49_Y13_N22
\pc_inst|pc_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~3_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~6_combout\,
	combout => \pc_inst|pc_int~3_combout\);

-- Location: LCFF_X49_Y13_N23
\pc_inst|pc_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~3_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(3));

-- Location: LCCOMB_X49_Y13_N8
\pc_inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~8_combout\ = (\pc_inst|pc_int\(4) & (\pc_inst|Add1~7\ $ (GND))) # (!\pc_inst|pc_int\(4) & (!\pc_inst|Add1~7\ & VCC))
-- \pc_inst|Add1~9\ = CARRY((\pc_inst|pc_int\(4) & !\pc_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(4),
	datad => VCC,
	cin => \pc_inst|Add1~7\,
	combout => \pc_inst|Add1~8_combout\,
	cout => \pc_inst|Add1~9\);

-- Location: LCCOMB_X49_Y13_N28
\pc_inst|pc_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~4_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~8_combout\,
	combout => \pc_inst|pc_int~4_combout\);

-- Location: LCFF_X49_Y13_N29
\pc_inst|pc_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~4_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(4));

-- Location: LCCOMB_X49_Y13_N10
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

-- Location: LCCOMB_X48_Y13_N0
\pc_inst|pc_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~5_combout\ = (\pc_inst|Add1~10_combout\ & !\dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|Add1~10_combout\,
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~5_combout\);

-- Location: LCFF_X49_Y13_N1
\pc_inst|pc_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~5_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(5));

-- Location: LCCOMB_X49_Y13_N12
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

-- Location: LCCOMB_X49_Y13_N26
\pc_inst|pc_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~6_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~12_combout\,
	combout => \pc_inst|pc_int~6_combout\);

-- Location: LCFF_X49_Y13_N27
\pc_inst|pc_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~6_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(6));

-- Location: LCCOMB_X49_Y13_N14
\pc_inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~14_combout\ = (\pc_inst|pc_int\(7) & (!\pc_inst|Add1~13\)) # (!\pc_inst|pc_int\(7) & ((\pc_inst|Add1~13\) # (GND)))
-- \pc_inst|Add1~15\ = CARRY((!\pc_inst|Add1~13\) # (!\pc_inst|pc_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(7),
	datad => VCC,
	cin => \pc_inst|Add1~13\,
	combout => \pc_inst|Add1~14_combout\,
	cout => \pc_inst|Add1~15\);

-- Location: LCCOMB_X49_Y13_N24
\pc_inst|pc_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~7_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~14_combout\,
	combout => \pc_inst|pc_int~7_combout\);

-- Location: LCFF_X49_Y13_N25
\pc_inst|pc_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~7_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(7));

-- Location: LCCOMB_X49_Y13_N16
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

-- Location: LCCOMB_X49_Y13_N18
\pc_inst|pc_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~8_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \pc_inst|Add1~16_combout\,
	combout => \pc_inst|pc_int~8_combout\);

-- Location: LCFF_X49_Y13_N19
\pc_inst|pc_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~8_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(8));

-- Location: LCCOMB_X49_Y12_N4
\instr_inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux3~0_combout\ = (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(2) & !\pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(2),
	datac => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux3~0_combout\);

-- Location: LCFF_X49_Y12_N5
\instr_inst|instruction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux3~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(0));

-- Location: LCCOMB_X49_Y12_N18
\instr_inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux3~1_combout\ = (!\pc_inst|pc_int\(1) & !\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(1),
	datac => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux3~1_combout\);

-- Location: LCFF_X49_Y12_N19
\instr_inst|instruction[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux3~1_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(1));

-- Location: LCCOMB_X49_Y12_N28
\instr_inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux1~0_combout\ = (\pc_inst|pc_int\(2)) # ((\pc_inst|pc_int\(0) & \pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(2),
	datac => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux1~0_combout\);

-- Location: LCFF_X49_Y12_N29
\instr_inst|instruction[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux1~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(5));

-- Location: LCFF_X49_Y12_N21
\instr_inst|instruction[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int\(0),
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(8));

-- Location: LCCOMB_X49_Y12_N24
\dec_inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal2~0_combout\ = (!\instr_inst|instruction\(1) & (!\instr_inst|instruction\(7) & (!\instr_inst|instruction\(9) & !\instr_inst|instruction\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|Equal2~0_combout\);

-- Location: LCCOMB_X49_Y14_N8
\dec_inst|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal4~0_combout\ = (\instr_inst|instruction\(9) & (\instr_inst|instruction\(7) & (\instr_inst|instruction\(8) & !\instr_inst|instruction\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|Equal4~0_combout\);

-- Location: LCCOMB_X49_Y14_N16
\dec_inst|read_w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|read_w~0_combout\ = (\dec_inst|Equal4~0_combout\) # ((!\instr_inst|instruction\(5) & (\dec_inst|Equal2~0_combout\ & \instr_inst|instruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|Equal2~0_combout\,
	datac => \dec_inst|Equal4~0_combout\,
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|read_w~0_combout\);

-- Location: LCFF_X49_Y14_N17
\dec_inst|read_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|read_w~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|read_w~regout\);

-- Location: LCCOMB_X49_Y14_N6
\dec_inst|write_w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|write_w~0_combout\ = (!\instr_inst|instruction\(9) & ((\instr_inst|instruction\(5)) # ((\instr_inst|instruction\(7) & !\instr_inst|instruction\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|write_w~0_combout\);

-- Location: LCFF_X49_Y14_N7
\dec_inst|write_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|write_w~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|write_w~regout\);

-- Location: LCFF_X49_Y14_N9
\dec_inst|reg_write_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|Equal4~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_write_en~regout\);

-- Location: LCCOMB_X49_Y14_N18
\dec_inst|reg_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~0_combout\ = (\instr_inst|instruction\(8) & (\instr_inst|instruction\(5) & ((!\instr_inst|instruction\(7)) # (!\instr_inst|instruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|reg_addr~0_combout\);

-- Location: LCFF_X49_Y14_N19
\dec_inst|reg_read_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_read_en~regout\);

-- Location: LCCOMB_X49_Y14_N14
\dec_inst|place_immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|place_immediate~0_combout\ = (!\instr_inst|instruction\(9) & (!\instr_inst|instruction\(8) & ((\instr_inst|instruction\(7)) # (\instr_inst|instruction\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(7),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|place_immediate~0_combout\);

-- Location: LCFF_X49_Y14_N1
\dec_inst|place_immediate\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|place_immediate~0_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|place_immediate~regout\);

-- Location: LCCOMB_X49_Y14_N26
\dec_inst|immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~0_combout\ = (\dec_inst|place_immediate~0_combout\ & (\instr_inst|instruction\(0) & ((\instr_inst|instruction\(5)) # (!\dec_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|Equal2~0_combout\,
	datac => \dec_inst|place_immediate~0_combout\,
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|immediate~0_combout\);

-- Location: LCFF_X49_Y14_N27
\dec_inst|immediate[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(0));

-- Location: LCCOMB_X49_Y14_N24
\dec_inst|immediate~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~1_combout\ = (\dec_inst|place_immediate~0_combout\ & \instr_inst|instruction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|place_immediate~0_combout\,
	datad => \instr_inst|instruction\(1),
	combout => \dec_inst|immediate~1_combout\);

-- Location: LCFF_X49_Y14_N25
\dec_inst|immediate[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(1));

-- Location: LCCOMB_X49_Y14_N4
\dec_inst|reg_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~1_combout\ = (\instr_inst|instruction\(9) & (\instr_inst|instruction\(7) & (\instr_inst|instruction\(8)))) # (!\instr_inst|instruction\(9) & (!\instr_inst|instruction\(7) & (!\instr_inst|instruction\(8) & !\instr_inst|instruction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(1),
	combout => \dec_inst|reg_addr~1_combout\);

-- Location: LCCOMB_X49_Y14_N12
\dec_inst|immediate~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~2_combout\ = (\instr_inst|instruction\(0) & ((\instr_inst|instruction\(5)) # (!\dec_inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|Equal2~0_combout\,
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|immediate~2_combout\);

-- Location: LCCOMB_X49_Y14_N10
\dec_inst|reg_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~2_combout\ = (\dec_inst|immediate~2_combout\ & ((\dec_inst|reg_addr~0_combout\) # ((!\instr_inst|instruction\(5) & \dec_inst|reg_addr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|reg_addr~0_combout\,
	datac => \dec_inst|reg_addr~1_combout\,
	datad => \dec_inst|immediate~2_combout\,
	combout => \dec_inst|reg_addr~2_combout\);

-- Location: LCFF_X49_Y14_N11
\dec_inst|reg_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(0));

-- Location: LCCOMB_X49_Y14_N20
\dec_inst|reg_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~3_combout\ = (\instr_inst|instruction\(1) & ((\dec_inst|reg_addr~0_combout\) # ((\dec_inst|reg_addr~1_combout\ & !\instr_inst|instruction\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \dec_inst|reg_addr~0_combout\,
	datac => \dec_inst|reg_addr~1_combout\,
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|reg_addr~3_combout\);

-- Location: LCFF_X49_Y14_N21
\dec_inst|reg_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~3_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(1));

-- Location: LCCOMB_X49_Y14_N2
\dec_inst|reg_addr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~4_combout\ = (\instr_inst|instruction\(1) & (\instr_inst|instruction\(5) $ (((\instr_inst|instruction\(9) & \instr_inst|instruction\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(9),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(5),
	datad => \instr_inst|instruction\(1),
	combout => \dec_inst|reg_addr~4_combout\);

-- Location: LCCOMB_X49_Y14_N30
\dec_inst|reg_addr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~5_combout\ = (\instr_inst|instruction\(8) & \dec_inst|reg_addr~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(8),
	datad => \dec_inst|reg_addr~4_combout\,
	combout => \dec_inst|reg_addr~5_combout\);

-- Location: LCFF_X49_Y14_N31
\dec_inst|reg_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~5_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(3));

-- Location: LCCOMB_X48_Y16_N6
\ram_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|process_0~0_combout\ = (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) $ (\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \ram_inst|process_0~0_combout\);

-- Location: LCCOMB_X48_Y15_N2
\ram_inst|reg_array[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~0_combout\ = (!\dec_inst|reg_addr\(0) & ((\wreg_inst|w_to_ram~regout\) # (\dec_inst|reg_write_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_to_ram~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_write_en~regout\,
	combout => \ram_inst|reg_array[0][0]~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\ram_inst|reg_array[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~1_combout\ = (!\dec_inst|reg_addr\(3) & (!\dec_inst|reg_addr\(1) & (\ram_inst|process_0~0_combout\ & \ram_inst|reg_array[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|process_0~0_combout\,
	datad => \ram_inst|reg_array[0][0]~0_combout\,
	combout => \ram_inst|reg_array[0][0]~1_combout\);

-- Location: LCCOMB_X49_Y16_N16
\ram_inst|reg_array[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~2_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[0][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][0]~2_combout\);

-- Location: LCFF_X49_Y16_N17
\ram_inst|reg_array[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][0]~regout\);

-- Location: LCCOMB_X48_Y15_N24
\ram_inst|reg_read_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~2_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[2][0]~regout\)) # (!\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][0]~regout\,
	datab => \ram_inst|reg_array[0][0]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~2_combout\);

-- Location: LCCOMB_X48_Y15_N10
\ram_inst|reg_array[15][0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][0]~6_combout\ = (\dec_inst|reg_addr\(0) & ((\wreg_inst|w_to_ram~regout\) # (\dec_inst|reg_write_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_to_ram~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_write_en~regout\,
	combout => \ram_inst|reg_array[15][0]~6_combout\);

-- Location: LCCOMB_X48_Y16_N22
\ram_inst|reg_array[7][0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][0]~15_combout\ = (!\dec_inst|reg_addr\(3) & (\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[15][0]~6_combout\ & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_array[15][0]~6_combout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[7][0]~15_combout\);

-- Location: LCCOMB_X49_Y16_N28
\ram_inst|reg_array[7][0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][0]~16_combout\ = (\ram_inst|reg_array[7][0]~15_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[7][0]~15_combout\ & ((\ram_inst|reg_array[7][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[7][0]~regout\,
	datad => \ram_inst|reg_array[7][0]~15_combout\,
	combout => \ram_inst|reg_array[7][0]~16_combout\);

-- Location: LCFF_X49_Y16_N29
\ram_inst|reg_array[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][0]~regout\);

-- Location: LCCOMB_X48_Y15_N26
\ram_inst|reg_read_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~3_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~2_combout\ & ((\ram_inst|reg_array[7][0]~regout\))) # (!\ram_inst|reg_read_data~2_combout\ & (\ram_inst|reg_array[5][0]~regout\)))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[5][0]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_read_data~2_combout\,
	datad => \ram_inst|reg_array[7][0]~regout\,
	combout => \ram_inst|reg_read_data~3_combout\);

-- Location: LCCOMB_X49_Y12_N2
\dec_inst|is_and~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_and~0_combout\ = (\instr_inst|instruction\(5) & (!\instr_inst|instruction\(7) & ((\instr_inst|instruction\(8)) # (!\instr_inst|instruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|is_and~0_combout\);

-- Location: LCFF_X49_Y14_N13
\dec_inst|is_and\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|is_and~0_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_and~regout\);

-- Location: LCCOMB_X46_Y16_N26
\wreg_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|process_0~0_combout\ = (\dec_inst|is_and~regout\ & !\dec_inst|place_immediate~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|is_and~regout\,
	datad => \dec_inst|place_immediate~regout\,
	combout => \wreg_inst|process_0~0_combout\);

-- Location: LCCOMB_X46_Y16_N20
\wreg_inst|RESULT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~1_combout\ = (\ram_inst|reg_read_data\(0) & \wreg_inst|w_content\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_inst|reg_read_data\(0),
	datad => \wreg_inst|w_content\(0),
	combout => \wreg_inst|RESULT~1_combout\);

-- Location: LCCOMB_X48_Y17_N12
\wreg_inst|w_content~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~4_combout\ = (\dec_inst|immediate\(0) & (\dec_inst|place_immediate~regout\ & ((\wreg_inst|w_content\(0)) # (!\dec_inst|is_and~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(0),
	datab => \dec_inst|place_immediate~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \wreg_inst|w_content\(0),
	combout => \wreg_inst|w_content~4_combout\);

-- Location: LCCOMB_X48_Y17_N22
\wreg_inst|w_content~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~5_combout\ = (\wreg_inst|w_content~4_combout\) # ((!\dec_inst|place_immediate~regout\ & \ram_inst|reg_read_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|place_immediate~regout\,
	datac => \ram_inst|reg_read_data\(0),
	datad => \wreg_inst|w_content~4_combout\,
	combout => \wreg_inst|w_content~5_combout\);

-- Location: LCCOMB_X47_Y16_N24
\wreg_inst|w_content[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~0_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~1_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|process_0~0_combout\,
	datac => \wreg_inst|RESULT~1_combout\,
	datad => \wreg_inst|w_content~5_combout\,
	combout => \wreg_inst|w_content[0]~0_combout\);

-- Location: LCCOMB_X48_Y16_N30
\wreg_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(1) & \pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \wreg_inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y16_N12
\wreg_inst|w_content[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~6_combout\ = (\dec_inst|write_w~regout\ & (!\dec_inst|read_w~regout\ & \wreg_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|read_w~regout\,
	datad => \wreg_inst|Equal0~0_combout\,
	combout => \wreg_inst|w_content[0]~6_combout\);

-- Location: LCFF_X47_Y16_N25
\wreg_inst|w_content[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[0]~0_combout\,
	ena => \wreg_inst|w_content[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(0));

-- Location: LCCOMB_X49_Y16_N12
\wreg_inst|reg_write_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~10_combout\ = (\dec_inst|read_w~regout\ & (((\wreg_inst|w_content\(0))))) # (!\dec_inst|read_w~regout\ & ((\dec_inst|is_and~regout\ & (\ram_inst|reg_read_data\(0) & \wreg_inst|w_content\(0))) # (!\dec_inst|is_and~regout\ & 
-- (!\ram_inst|reg_read_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_and~regout\,
	datab => \dec_inst|read_w~regout\,
	datac => \ram_inst|reg_read_data\(0),
	datad => \wreg_inst|w_content\(0),
	combout => \wreg_inst|reg_write_data~10_combout\);

-- Location: LCCOMB_X49_Y16_N26
\wreg_inst|reg_write_data[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[0]~2_combout\ = (\wreg_inst|Equal0~0_combout\ & ((\dec_inst|read_w~regout\) # ((\dec_inst|is_and~regout\ & !\dec_inst|write_w~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_and~regout\,
	datab => \dec_inst|read_w~regout\,
	datac => \wreg_inst|Equal0~0_combout\,
	datad => \dec_inst|write_w~regout\,
	combout => \wreg_inst|reg_write_data[0]~2_combout\);

-- Location: LCFF_X49_Y16_N13
\wreg_inst|reg_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~10_combout\,
	ena => \wreg_inst|reg_write_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(0));

-- Location: LCCOMB_X48_Y16_N2
\ram_inst|reg_array[15][0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][0]~8_combout\ = (\ram_inst|reg_array[15][0]~7_combout\ & ((\wreg_inst|reg_write_data\(0)))) # (!\ram_inst|reg_array[15][0]~7_combout\ & (\ram_inst|reg_array[15][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[15][0]~7_combout\,
	datac => \ram_inst|reg_array[15][0]~regout\,
	datad => \wreg_inst|reg_write_data\(0),
	combout => \ram_inst|reg_array[15][0]~8_combout\);

-- Location: LCFF_X48_Y16_N3
\ram_inst|reg_array[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][0]~regout\);

-- Location: LCCOMB_X47_Y16_N30
\ram_inst|reg_array[10][0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][0]~13_combout\ = (\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[0][0]~0_combout\ & (\dec_inst|reg_addr\(3) & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[0][0]~0_combout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[10][0]~13_combout\);

-- Location: LCCOMB_X47_Y16_N8
\ram_inst|reg_array[10][0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][0]~14_combout\ = (\ram_inst|reg_array[10][0]~13_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[10][0]~13_combout\ & ((\ram_inst|reg_array[10][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[10][0]~regout\,
	datad => \ram_inst|reg_array[10][0]~13_combout\,
	combout => \ram_inst|reg_array[10][0]~14_combout\);

-- Location: LCFF_X47_Y16_N9
\ram_inst|reg_array[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][0]~regout\);

-- Location: LCCOMB_X48_Y15_N0
\ram_inst|reg_read_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~0_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[10][0]~regout\))) # (!\dec_inst|reg_addr\(1) & 
-- (\ram_inst|reg_array[8][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[8][0]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[10][0]~regout\,
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~0_combout\);

-- Location: LCCOMB_X48_Y15_N18
\ram_inst|reg_read_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~1_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~0_combout\ & ((\ram_inst|reg_array[15][0]~regout\))) # (!\ram_inst|reg_read_data~0_combout\ & (\ram_inst|reg_array[13][0]~regout\)))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[13][0]~regout\,
	datab => \ram_inst|reg_array[15][0]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \ram_inst|reg_read_data~0_combout\,
	combout => \ram_inst|reg_read_data~1_combout\);

-- Location: LCCOMB_X48_Y15_N4
\ram_inst|reg_read_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~4_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~1_combout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_read_en~regout\,
	datab => \ram_inst|reg_read_data~3_combout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|reg_read_data~1_combout\,
	combout => \ram_inst|reg_read_data~4_combout\);

-- Location: LCFF_X48_Y15_N5
\ram_inst|reg_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~4_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(0));

-- Location: LCCOMB_X49_Y16_N20
\wreg_inst|reg_write_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~3_combout\ = (\dec_inst|read_w~regout\) # ((!\dec_inst|is_and~regout\ & (\ram_inst|reg_read_data\(0) $ (!\ram_inst|reg_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(0),
	datab => \ram_inst|reg_read_data\(1),
	datac => \dec_inst|read_w~regout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|reg_write_data~3_combout\);

-- Location: LCCOMB_X48_Y15_N16
\wreg_inst|reg_write_data[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[2]~4_combout\ = (\dec_inst|read_w~regout\) # (\dec_inst|is_and~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|read_w~regout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|reg_write_data[2]~4_combout\);

-- Location: LCCOMB_X49_Y16_N14
\wreg_inst|reg_write_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~5_combout\ = (\wreg_inst|reg_write_data[2]~4_combout\ & (\wreg_inst|w_content\(1) & ((\ram_inst|reg_read_data\(1)) # (\wreg_inst|reg_write_data~3_combout\)))) # (!\wreg_inst|reg_write_data[2]~4_combout\ & 
-- (((\wreg_inst|reg_write_data~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(1),
	datab => \ram_inst|reg_read_data\(1),
	datac => \wreg_inst|reg_write_data~3_combout\,
	datad => \wreg_inst|reg_write_data[2]~4_combout\,
	combout => \wreg_inst|reg_write_data~5_combout\);

-- Location: LCFF_X49_Y16_N15
\wreg_inst|reg_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~5_combout\,
	ena => \wreg_inst|reg_write_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(1));

-- Location: LCCOMB_X46_Y16_N24
\ram_inst|reg_array[10][1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][1]~26_combout\ = (\ram_inst|reg_array[10][0]~13_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[10][0]~13_combout\ & ((\ram_inst|reg_array[10][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[10][1]~regout\,
	datad => \ram_inst|reg_array[10][0]~13_combout\,
	combout => \ram_inst|reg_array[10][1]~26_combout\);

-- Location: LCFF_X46_Y16_N25
\ram_inst|reg_array[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][1]~regout\);

-- Location: LCCOMB_X47_Y16_N28
\ram_inst|reg_array[8][0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][0]~11_combout\ = (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[0][0]~0_combout\ & (\dec_inst|reg_addr\(3) & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[0][0]~0_combout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[8][0]~11_combout\);

-- Location: LCCOMB_X46_Y16_N30
\ram_inst|reg_array[8][1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][1]~25_combout\ = (\ram_inst|reg_array[8][0]~11_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[8][0]~11_combout\ & ((\ram_inst|reg_array[8][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[8][1]~regout\,
	datad => \ram_inst|reg_array[8][0]~11_combout\,
	combout => \ram_inst|reg_array[8][1]~25_combout\);

-- Location: LCFF_X46_Y16_N31
\ram_inst|reg_array[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][1]~regout\);

-- Location: LCCOMB_X48_Y16_N18
\ram_inst|reg_array[2][0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][0]~19_combout\ = (!\dec_inst|reg_addr\(3) & (\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[0][0]~0_combout\ & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_array[0][0]~0_combout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[2][0]~19_combout\);

-- Location: LCCOMB_X49_Y16_N24
\ram_inst|reg_array[2][1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][1]~27_combout\ = (\ram_inst|reg_array[2][0]~19_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[2][0]~19_combout\ & ((\ram_inst|reg_array[2][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[2][1]~regout\,
	datad => \ram_inst|reg_array[2][0]~19_combout\,
	combout => \ram_inst|reg_array[2][1]~27_combout\);

-- Location: LCFF_X49_Y16_N25
\ram_inst|reg_array[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][1]~regout\);

-- Location: LCCOMB_X49_Y16_N2
\ram_inst|reg_array[0][1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~3_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(1),
	datac => \ram_inst|reg_array[0][1]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][1]~3_combout\);

-- Location: LCFF_X49_Y16_N3
\ram_inst|reg_array[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][1]~regout\);

-- Location: LCCOMB_X48_Y17_N30
\ram_inst|reg_read_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~7_combout\ = (\dec_inst|reg_addr\(1) & ((\dec_inst|reg_addr\(3)) # ((\ram_inst|reg_array[2][1]~regout\)))) # (!\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_array[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(3),
	datac => \ram_inst|reg_array[2][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~regout\,
	combout => \ram_inst|reg_read_data~7_combout\);

-- Location: LCCOMB_X47_Y17_N28
\ram_inst|reg_read_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~8_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~7_combout\ & (\ram_inst|reg_array[10][1]~regout\)) # (!\ram_inst|reg_read_data~7_combout\ & ((\ram_inst|reg_array[8][1]~regout\))))) # (!\dec_inst|reg_addr\(3) & 
-- (((\ram_inst|reg_read_data~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_array[10][1]~regout\,
	datac => \ram_inst|reg_array[8][1]~regout\,
	datad => \ram_inst|reg_read_data~7_combout\,
	combout => \ram_inst|reg_read_data~8_combout\);

-- Location: LCCOMB_X48_Y17_N24
\ram_inst|reg_read_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~9_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(0) & (\ram_inst|reg_read_data~6_combout\)) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~6_combout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \dec_inst|reg_read_en~regout\,
	datad => \ram_inst|reg_read_data~8_combout\,
	combout => \ram_inst|reg_read_data~9_combout\);

-- Location: LCFF_X48_Y17_N25
\ram_inst|reg_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~9_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(1));

-- Location: LCCOMB_X46_Y16_N16
\ram_inst|reg_array[10][2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][2]~31_combout\ = (\ram_inst|reg_array[10][0]~13_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[10][0]~13_combout\ & ((\ram_inst|reg_array[10][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[10][2]~regout\,
	datad => \ram_inst|reg_array[10][0]~13_combout\,
	combout => \ram_inst|reg_array[10][2]~31_combout\);

-- Location: LCFF_X46_Y16_N17
\ram_inst|reg_array[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][2]~regout\);

-- Location: LCCOMB_X48_Y17_N8
\ram_inst|reg_read_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~10_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[10][2]~regout\))) # (!\dec_inst|reg_addr\(1) & 
-- (\ram_inst|reg_array[8][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[8][2]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_array[10][2]~regout\,
	combout => \ram_inst|reg_read_data~10_combout\);

-- Location: LCCOMB_X47_Y16_N22
\ram_inst|reg_array[13][0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][0]~9_combout\ = (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[15][0]~6_combout\ & (\dec_inst|reg_addr\(3) & \ram_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[15][0]~6_combout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[13][0]~9_combout\);

-- Location: LCCOMB_X46_Y16_N10
\ram_inst|reg_array[13][2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][2]~29_combout\ = (\ram_inst|reg_array[13][0]~9_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[13][0]~9_combout\ & ((\ram_inst|reg_array[13][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[13][2]~regout\,
	datad => \ram_inst|reg_array[13][0]~9_combout\,
	combout => \ram_inst|reg_array[13][2]~29_combout\);

-- Location: LCFF_X46_Y16_N11
\ram_inst|reg_array[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][2]~regout\);

-- Location: LCCOMB_X48_Y17_N14
\ram_inst|reg_read_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~11_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~10_combout\ & (\ram_inst|reg_array[15][2]~regout\)) # (!\ram_inst|reg_read_data~10_combout\ & ((\ram_inst|reg_array[13][2]~regout\))))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[15][2]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_read_data~10_combout\,
	datad => \ram_inst|reg_array[13][2]~regout\,
	combout => \ram_inst|reg_read_data~11_combout\);

-- Location: LCCOMB_X48_Y15_N12
\wreg_inst|w_content~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~9_combout\ = (\dec_inst|place_immediate~regout\ & ((\dec_inst|is_and~regout\))) # (!\dec_inst|place_immediate~regout\ & (\ram_inst|reg_read_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datac => \dec_inst|place_immediate~regout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|w_content~9_combout\);

-- Location: LCCOMB_X48_Y15_N30
\wreg_inst|w_content~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~10_combout\ = (\dec_inst|place_immediate~regout\ & (\dec_inst|immediate\(0) & ((\wreg_inst|w_content\(2)) # (!\wreg_inst|w_content~9_combout\)))) # (!\dec_inst|place_immediate~regout\ & (((\wreg_inst|w_content~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(0),
	datab => \dec_inst|place_immediate~regout\,
	datac => \wreg_inst|w_content\(2),
	datad => \wreg_inst|w_content~9_combout\,
	combout => \wreg_inst|w_content~10_combout\);

-- Location: LCCOMB_X48_Y17_N16
\wreg_inst|RESULT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~0_combout\ = (\ram_inst|reg_read_data\(2) & \wreg_inst|w_content\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datad => \wreg_inst|w_content\(2),
	combout => \wreg_inst|RESULT~0_combout\);

-- Location: LCCOMB_X47_Y16_N20
\wreg_inst|w_content[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[2]~2_combout\ = (\wreg_inst|process_0~0_combout\ & ((\wreg_inst|RESULT~0_combout\))) # (!\wreg_inst|process_0~0_combout\ & (\wreg_inst|w_content~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|process_0~0_combout\,
	datac => \wreg_inst|w_content~10_combout\,
	datad => \wreg_inst|RESULT~0_combout\,
	combout => \wreg_inst|w_content[2]~2_combout\);

-- Location: LCFF_X47_Y16_N21
\wreg_inst|w_content[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[2]~2_combout\,
	ena => \wreg_inst|w_content[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(2));

-- Location: LCCOMB_X48_Y17_N10
\wreg_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~0_combout\ = \ram_inst|reg_read_data\(2) $ (((\ram_inst|reg_read_data\(0)) # (\ram_inst|reg_read_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datac => \ram_inst|reg_read_data\(0),
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|Add1~0_combout\);

-- Location: LCCOMB_X48_Y17_N2
\wreg_inst|reg_write_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~6_combout\ = (\dec_inst|read_w~regout\) # ((\dec_inst|is_and~regout\ & (\wreg_inst|RESULT~0_combout\)) # (!\dec_inst|is_and~regout\ & ((!\wreg_inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|RESULT~0_combout\,
	datab => \dec_inst|read_w~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \wreg_inst|Add1~0_combout\,
	combout => \wreg_inst|reg_write_data~6_combout\);

-- Location: LCCOMB_X49_Y16_N4
\wreg_inst|reg_write_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~7_combout\ = (\wreg_inst|reg_write_data~6_combout\ & ((\wreg_inst|w_content\(2)) # (!\dec_inst|read_w~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|read_w~regout\,
	datac => \wreg_inst|w_content\(2),
	datad => \wreg_inst|reg_write_data~6_combout\,
	combout => \wreg_inst|reg_write_data~7_combout\);

-- Location: LCFF_X49_Y16_N5
\wreg_inst|reg_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~7_combout\,
	ena => \wreg_inst|reg_write_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(2));

-- Location: LCCOMB_X49_Y16_N18
\ram_inst|reg_array[7][2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][2]~32_combout\ = (\ram_inst|reg_array[7][0]~15_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[7][0]~15_combout\ & ((\ram_inst|reg_array[7][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[7][2]~regout\,
	datad => \ram_inst|reg_array[7][0]~15_combout\,
	combout => \ram_inst|reg_array[7][2]~32_combout\);

-- Location: LCFF_X49_Y16_N19
\ram_inst|reg_array[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][2]~regout\);

-- Location: LCCOMB_X49_Y16_N8
\ram_inst|reg_array[0][2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][2]~4_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[0][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[0][2]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][2]~4_combout\);

-- Location: LCFF_X49_Y16_N9
\ram_inst|reg_array[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][2]~regout\);

-- Location: LCCOMB_X48_Y17_N28
\ram_inst|reg_read_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~12_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[2][2]~regout\)) # (!\dec_inst|reg_addr\(1) & 
-- ((\ram_inst|reg_array[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][2]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_array[0][2]~regout\,
	combout => \ram_inst|reg_read_data~12_combout\);

-- Location: LCCOMB_X48_Y17_N18
\ram_inst|reg_read_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~13_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~12_combout\ & ((\ram_inst|reg_array[7][2]~regout\))) # (!\ram_inst|reg_read_data~12_combout\ & (\ram_inst|reg_array[5][2]~regout\)))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[5][2]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[7][2]~regout\,
	datad => \ram_inst|reg_read_data~12_combout\,
	combout => \ram_inst|reg_read_data~13_combout\);

-- Location: LCCOMB_X48_Y17_N6
\ram_inst|reg_read_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~14_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~11_combout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_read_data~11_combout\,
	datac => \dec_inst|reg_read_en~regout\,
	datad => \ram_inst|reg_read_data~13_combout\,
	combout => \ram_inst|reg_read_data~14_combout\);

-- Location: LCFF_X48_Y17_N7
\ram_inst|reg_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~14_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(2));

-- Location: LCCOMB_X47_Y16_N2
\ram_inst|reg_array[8][3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][3]~39_combout\ = (\ram_inst|reg_array[8][0]~11_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[8][0]~11_combout\ & ((\ram_inst|reg_array[8][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[8][3]~regout\,
	datad => \ram_inst|reg_array[8][0]~11_combout\,
	combout => \ram_inst|reg_array[8][3]~39_combout\);

-- Location: LCFF_X47_Y16_N3
\ram_inst|reg_array[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][3]~regout\);

-- Location: LCCOMB_X48_Y15_N22
\wreg_inst|w_content~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~11_combout\ = (\dec_inst|place_immediate~regout\ & ((\dec_inst|is_and~regout\) # ((\dec_inst|immediate\(1))))) # (!\dec_inst|place_immediate~regout\ & (((\ram_inst|reg_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|place_immediate~regout\,
	datab => \dec_inst|is_and~regout\,
	datac => \ram_inst|reg_read_data\(3),
	datad => \dec_inst|immediate\(1),
	combout => \wreg_inst|w_content~11_combout\);

-- Location: LCCOMB_X48_Y15_N8
\wreg_inst|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~3_combout\ = \ram_inst|reg_read_data\(3) $ (((\ram_inst|reg_read_data\(1)) # ((\ram_inst|reg_read_data\(0)) # (\ram_inst|reg_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(1),
	datab => \ram_inst|reg_read_data\(0),
	datac => \ram_inst|reg_read_data\(3),
	datad => \ram_inst|reg_read_data\(2),
	combout => \wreg_inst|Add1~3_combout\);

-- Location: LCCOMB_X48_Y15_N28
\wreg_inst|RESULT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~4_combout\ = (\wreg_inst|w_content\(3) & \dec_inst|immediate\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|w_content\(3),
	datad => \dec_inst|immediate\(1),
	combout => \wreg_inst|RESULT~4_combout\);

-- Location: LCCOMB_X47_Y15_N26
\wreg_inst|w_content~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~12_combout\ = (\wreg_inst|process_0~1_combout\ & ((\wreg_inst|w_content~11_combout\ & ((\wreg_inst|RESULT~4_combout\))) # (!\wreg_inst|w_content~11_combout\ & (!\wreg_inst|Add1~3_combout\)))) # (!\wreg_inst|process_0~1_combout\ & 
-- (\wreg_inst|w_content~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|process_0~1_combout\,
	datab => \wreg_inst|w_content~11_combout\,
	datac => \wreg_inst|Add1~3_combout\,
	datad => \wreg_inst|RESULT~4_combout\,
	combout => \wreg_inst|w_content~12_combout\);

-- Location: LCCOMB_X47_Y15_N24
\wreg_inst|RESULT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~5_combout\ = (\wreg_inst|w_content\(3) & \ram_inst|reg_read_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(3),
	datad => \ram_inst|reg_read_data\(3),
	combout => \wreg_inst|RESULT~5_combout\);

-- Location: LCCOMB_X47_Y16_N14
\wreg_inst|w_content[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[3]~3_combout\ = (\wreg_inst|process_0~0_combout\ & ((\wreg_inst|RESULT~5_combout\))) # (!\wreg_inst|process_0~0_combout\ & (\wreg_inst|w_content~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|process_0~0_combout\,
	datac => \wreg_inst|w_content~12_combout\,
	datad => \wreg_inst|RESULT~5_combout\,
	combout => \wreg_inst|w_content[3]~3_combout\);

-- Location: LCFF_X47_Y16_N15
\wreg_inst|w_content[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[3]~3_combout\,
	ena => \wreg_inst|w_content[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(3));

-- Location: LCCOMB_X48_Y15_N14
\wreg_inst|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~1_combout\ = (\ram_inst|reg_read_data\(2)) # ((\ram_inst|reg_read_data\(0)) # (\ram_inst|reg_read_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datac => \ram_inst|reg_read_data\(0),
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|Add1~1_combout\);

-- Location: LCCOMB_X48_Y15_N20
\wreg_inst|reg_write_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~8_combout\ = (\dec_inst|read_w~regout\) # ((!\dec_inst|is_and~regout\ & (\ram_inst|reg_read_data\(3) $ (!\wreg_inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \ram_inst|reg_read_data\(3),
	datac => \wreg_inst|Add1~1_combout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|reg_write_data~8_combout\);

-- Location: LCCOMB_X49_Y16_N22
\wreg_inst|reg_write_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~9_combout\ = (\wreg_inst|reg_write_data[2]~4_combout\ & (\wreg_inst|w_content\(3) & ((\wreg_inst|reg_write_data~8_combout\) # (\ram_inst|reg_read_data\(3))))) # (!\wreg_inst|reg_write_data[2]~4_combout\ & 
-- (((\wreg_inst|reg_write_data~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data[2]~4_combout\,
	datab => \wreg_inst|w_content\(3),
	datac => \wreg_inst|reg_write_data~8_combout\,
	datad => \ram_inst|reg_read_data\(3),
	combout => \wreg_inst|reg_write_data~9_combout\);

-- Location: LCFF_X49_Y16_N23
\wreg_inst|reg_write_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~9_combout\,
	ena => \wreg_inst|reg_write_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(3));

-- Location: LCCOMB_X49_Y16_N0
\ram_inst|reg_array[2][3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][3]~41_combout\ = (\ram_inst|reg_array[2][0]~19_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[2][0]~19_combout\ & ((\ram_inst|reg_array[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[2][3]~regout\,
	datad => \ram_inst|reg_array[2][0]~19_combout\,
	combout => \ram_inst|reg_array[2][3]~41_combout\);

-- Location: LCFF_X49_Y16_N1
\ram_inst|reg_array[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][3]~regout\);

-- Location: LCCOMB_X49_Y16_N10
\ram_inst|reg_array[0][3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][3]~5_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|reg_write_data\(3),
	datac => \ram_inst|reg_array[0][3]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][3]~5_combout\);

-- Location: LCFF_X49_Y16_N11
\ram_inst|reg_array[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][3]~regout\);

-- Location: LCCOMB_X49_Y17_N16
\ram_inst|reg_read_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~17_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[2][3]~regout\) # ((\dec_inst|reg_addr\(3))))) # (!\dec_inst|reg_addr\(1) & (((!\dec_inst|reg_addr\(3) & \ram_inst|reg_array[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[2][3]~regout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|reg_array[0][3]~regout\,
	combout => \ram_inst|reg_read_data~17_combout\);

-- Location: LCCOMB_X47_Y17_N14
\ram_inst|reg_read_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~18_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~17_combout\ & (\ram_inst|reg_array[10][3]~regout\)) # (!\ram_inst|reg_read_data~17_combout\ & ((\ram_inst|reg_array[8][3]~regout\))))) # (!\dec_inst|reg_addr\(3) & 
-- (((\ram_inst|reg_read_data~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[10][3]~regout\,
	datab => \ram_inst|reg_array[8][3]~regout\,
	datac => \dec_inst|reg_addr\(3),
	datad => \ram_inst|reg_read_data~17_combout\,
	combout => \ram_inst|reg_read_data~18_combout\);

-- Location: LCCOMB_X48_Y17_N0
\ram_inst|reg_read_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~19_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(0) & (\ram_inst|reg_read_data~16_combout\)) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~16_combout\,
	datab => \dec_inst|reg_read_en~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \ram_inst|reg_read_data~18_combout\,
	combout => \ram_inst|reg_read_data~19_combout\);

-- Location: LCFF_X48_Y17_N1
\ram_inst|reg_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~19_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(3));

-- Location: LCCOMB_X46_Y16_N4
\wreg_inst|RESULT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~3_combout\ = (\wreg_inst|w_content\(1) & \ram_inst|reg_read_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(1),
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|RESULT~3_combout\);

-- Location: LCCOMB_X46_Y16_N8
\wreg_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~2_combout\ = \ram_inst|reg_read_data\(0) $ (\ram_inst|reg_read_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_inst|reg_read_data\(0),
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|Add1~2_combout\);

-- Location: LCCOMB_X47_Y15_N20
\wreg_inst|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|process_0~1_combout\ = (\dec_inst|place_immediate~regout\ & \dec_inst|is_and~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|place_immediate~regout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|process_0~1_combout\);

-- Location: LCCOMB_X46_Y16_N28
\wreg_inst|RESULT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~2_combout\ = (\wreg_inst|w_content\(1) & \dec_inst|immediate\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(1),
	datad => \dec_inst|immediate\(1),
	combout => \wreg_inst|RESULT~2_combout\);

-- Location: LCCOMB_X46_Y16_N14
\wreg_inst|w_content~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~8_combout\ = (\wreg_inst|w_content~7_combout\ & (((\wreg_inst|RESULT~2_combout\) # (!\wreg_inst|process_0~1_combout\)))) # (!\wreg_inst|w_content~7_combout\ & (!\wreg_inst|Add1~2_combout\ & (\wreg_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content~7_combout\,
	datab => \wreg_inst|Add1~2_combout\,
	datac => \wreg_inst|process_0~1_combout\,
	datad => \wreg_inst|RESULT~2_combout\,
	combout => \wreg_inst|w_content~8_combout\);

-- Location: LCCOMB_X47_Y16_N18
\wreg_inst|w_content[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[1]~1_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~3_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|process_0~0_combout\,
	datac => \wreg_inst|RESULT~3_combout\,
	datad => \wreg_inst|w_content~8_combout\,
	combout => \wreg_inst|w_content[1]~1_combout\);

-- Location: LCFF_X47_Y16_N19
\wreg_inst|w_content[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[1]~1_combout\,
	ena => \wreg_inst|w_content[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(1));

-- Location: LCCOMB_X48_Y15_N6
\wreg_inst|w_to_ram~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_to_ram~0_combout\ = (\dec_inst|is_and~regout\ & (!\dec_inst|read_w~regout\ & !\dec_inst|write_w~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_and~regout\,
	datac => \dec_inst|read_w~regout\,
	datad => \dec_inst|write_w~regout\,
	combout => \wreg_inst|w_to_ram~0_combout\);

-- Location: LCFF_X48_Y15_N7
\wreg_inst|w_to_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_to_ram~0_combout\,
	ena => \wreg_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_to_ram~regout\);

-- Location: LCCOMB_X48_Y13_N12
\stack_int|idx[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|idx[0]~1_combout\ = !\stack_int|idx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack_int|idx\(0),
	combout => \stack_int|idx[0]~1_combout\);

-- Location: LCCOMB_X48_Y13_N26
\stack_int|idx[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|idx[0]~0_combout\ = (\dec_inst|is_ret~reg0_regout\ & (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datab => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \stack_int|idx[0]~0_combout\);

-- Location: LCFF_X48_Y13_N13
\stack_int|idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|idx[0]~1_combout\,
	ena => \stack_int|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(0));

-- Location: LCCOMB_X48_Y13_N2
\stack_int|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add2~0_combout\ = \dec_inst|is_ret~reg0_regout\ $ (\stack_int|idx\(1) $ (\stack_int|idx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datac => \stack_int|idx\(1),
	datad => \stack_int|idx\(0),
	combout => \stack_int|Add2~0_combout\);

-- Location: LCFF_X48_Y13_N3
\stack_int|idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add2~0_combout\,
	ena => \stack_int|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(1));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instr_inst|instruction\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instr_inst|instruction\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(3));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(5),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(5));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instr_inst|instruction\(9),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(9));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(10));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|reg_read_en~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_en);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|immediate\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|immediate\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => immediate(3));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|reg_addr\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(2));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|reg_addr\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_addr(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ram_inst|reg_read_data\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(0));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ram_inst|reg_read_data\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ram_inst|reg_read_data\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(2));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ram_inst|reg_read_data\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_read_data(3));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \wreg_inst|reg_write_data\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_data(3));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ram_inst|reg_array[0][3]~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ram_top(3));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \wreg_inst|w_content\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_reg_top(3));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|w_to_ram~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => w_to_ram);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|is_and~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_and);

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\is_decr~I\ : cycloneii_io
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
	padio => is_decr);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|is_ret~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_ret);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_jump);

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(2));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => scall);

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reset_scall);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(0));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(2));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(3));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(4));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(6));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(7));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_1(8));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(0));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(1));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(5));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(6));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(7));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => stack_lvl_2(8));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => bit_set);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


