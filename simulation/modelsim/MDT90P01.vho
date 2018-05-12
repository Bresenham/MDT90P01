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

-- DATE "05/12/2018 17:27:18"

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
	is_ret : INOUT std_logic;
	is_jump : INOUT std_logic;
	jump_addr : INOUT std_logic_vector(8 DOWNTO 0);
	ret_addr : INOUT std_logic_vector(8 DOWNTO 0);
	stack_lvl_1 : INOUT std_logic_vector(8 DOWNTO 0);
	stack_lvl_2 : INOUT std_logic_vector(8 DOWNTO 0);
	idx_out : INOUT std_logic_vector(0 DOWNTO 0);
	bit_set : INOUT std_logic;
	bit_clear : INOUT std_logic;
	bit_pos : INOUT std_logic_vector(1 DOWNTO 0);
	bit_test : INOUT std_logic;
	bit_skip_clear : INOUT std_logic;
	state : INOUT std_logic_vector(2 DOWNTO 0)
	);
END MDT90P01;

-- Design Ports Information
-- write_tmrl	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_tmrh	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_cpio	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[7]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[8]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_skip	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[7]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[8]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[9]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[10]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_w	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_w	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_en	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_en	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- place_immediate	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[3]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[4]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[2]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[3]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[1]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[2]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[3]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[0]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_to_ram	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_add	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_ret	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_jump	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[1]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[2]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[3]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[5]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[6]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[7]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[8]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[0]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[5]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[6]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[7]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[8]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[1]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[2]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[3]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[4]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[5]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[6]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[8]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[1]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[2]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[3]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[5]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[6]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[7]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[8]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[0]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_set	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_clear	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[1]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_test	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_skip_clear	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \ram_inst|reg_array[4][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~20_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~23_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][0]~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][0]~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~19_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][1]~20_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~25_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~29_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][2]~30_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~32_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~33_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][3]~34_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][3]~35_combout\ : std_logic;
SIGNAL \c0~combout\ : std_logic;
SIGNAL \c0~clkctrl_outclk\ : std_logic;
SIGNAL \pc_inst|Add1~1\ : std_logic;
SIGNAL \pc_inst|Add1~2_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~1_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~1_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~0_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~2_combout\ : std_logic;
SIGNAL \pc_inst|Equal0~0_combout\ : std_logic;
SIGNAL \pc_inst|Add1~3\ : std_logic;
SIGNAL \pc_inst|Add1~4_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~2_combout\ : std_logic;
SIGNAL \instr_inst|Mux2~0_combout\ : std_logic;
SIGNAL \instr_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add1~0_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~0_combout\ : std_logic;
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
SIGNAL \instr_inst|Mux5~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux4~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux3~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux1~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux0~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~regout\ : std_logic;
SIGNAL \dec_inst|write_w~0_combout\ : std_logic;
SIGNAL \dec_inst|write_w~regout\ : std_logic;
SIGNAL \dec_inst|process_0~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~regout\ : std_logic;
SIGNAL \dec_inst|Equal9~0_combout\ : std_logic;
SIGNAL \dec_inst|place_immediate~regout\ : std_logic;
SIGNAL \dec_inst|immediate~0_combout\ : std_logic;
SIGNAL \dec_inst|immediate~1_combout\ : std_logic;
SIGNAL \dec_inst|immediate~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~1_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][1]~6_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~0_combout\ : std_logic;
SIGNAL \wreg_inst|Equal0~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~1_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~regout\ : std_logic;
SIGNAL \ram_inst|process_0~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][0]~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][0]~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~5_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~4_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~2_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[0]~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~15_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~22_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][1]~23_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][1]~17_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][1]~21_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~15_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[1]~1_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~1\ : std_logic;
SIGNAL \wreg_inst|Add0~3\ : std_logic;
SIGNAL \wreg_inst|Add0~4_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[2]~2_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][2]~24_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][2]~28_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~27_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~26_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~17_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~19_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~21_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][3]~31_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~22_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~36_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][3]~37_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~26_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~24_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~25_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~27_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~2_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~3_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~5\ : std_logic;
SIGNAL \wreg_inst|Add0~6_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[3]~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~regout\ : std_logic;
SIGNAL \dec_inst|reg_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pipe_inst|state_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dec_inst|immediate\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_inst|pc_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \wreg_inst|reg_write_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_inst|instruction\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \wreg_inst|w_content\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_inst|reg_read_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_c0~clkctrl_outclk\ : std_logic;
SIGNAL \dec_inst|ALT_INV_reg_read_en~regout\ : std_logic;

BEGIN

ww_c0 <= c0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \c0~combout\);
\ALT_INV_c0~clkctrl_outclk\ <= NOT \c0~clkctrl_outclk\;
\dec_inst|ALT_INV_reg_read_en~regout\ <= NOT \dec_inst|reg_read_en~regout\;

-- Location: LCFF_X20_Y26_N23
\ram_inst|reg_array[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][0]~regout\);

-- Location: LCFF_X19_Y26_N19
\ram_inst|reg_array[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][0]~regout\);

-- Location: LCFF_X19_Y26_N29
\ram_inst|reg_array[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][1]~regout\);

-- Location: LCFF_X19_Y26_N23
\ram_inst|reg_array[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][1]~regout\);

-- Location: LCCOMB_X18_Y26_N10
\ram_inst|reg_read_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~11_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[5][1]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[5][1]~regout\,
	datac => \dec_inst|reg_addr\(2),
	datad => \ram_inst|reg_array[1][1]~regout\,
	combout => \ram_inst|reg_read_data~11_combout\);

-- Location: LCFF_X20_Y26_N27
\ram_inst|reg_array[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][2]~regout\);

-- Location: LCFF_X16_Y26_N7
\ram_inst|reg_array[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][2]~regout\);

-- Location: LCFF_X19_Y26_N7
\ram_inst|reg_array[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][2]~regout\);

-- Location: LCCOMB_X16_Y26_N24
\ram_inst|reg_read_data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~20_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[7][2]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[3][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[7][2]~regout\,
	datac => \ram_inst|reg_array[3][2]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~20_combout\);

-- Location: LCFF_X19_Y26_N3
\ram_inst|reg_array[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][3]~regout\);

-- Location: LCFF_X19_Y26_N9
\ram_inst|reg_array[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][3]~regout\);

-- Location: LCFF_X20_Y26_N7
\ram_inst|reg_array[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][3]~regout\);

-- Location: LCCOMB_X18_Y26_N20
\ram_inst|reg_read_data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~23_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[5][3]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[5][3]~regout\,
	datac => \dec_inst|reg_addr\(2),
	datad => \ram_inst|reg_array[1][3]~regout\,
	combout => \ram_inst|reg_read_data~23_combout\);

-- Location: LCFF_X19_Y26_N31
\ram_inst|reg_array[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][3]~regout\);

-- Location: LCCOMB_X20_Y26_N22
\ram_inst|reg_array[4][0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][0]~13_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[4][0]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[0][0]~1_combout\,
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[4][0]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[4][0]~13_combout\);

-- Location: LCCOMB_X19_Y26_N18
\ram_inst|reg_array[3][0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][0]~16_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[3][0]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[3][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[3][0]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[3][0]~16_combout\);

-- Location: LCCOMB_X19_Y26_N28
\ram_inst|reg_array[5][1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][1]~19_combout\ = (\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[5][1]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~10_combout\ & (((\ram_inst|reg_array[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[1][2]~10_combout\,
	datac => \ram_inst|reg_array[5][1]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[5][1]~19_combout\);

-- Location: LCCOMB_X19_Y26_N22
\ram_inst|reg_array[1][1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][1]~20_combout\ = (\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[1][1]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~10_combout\ & (((\ram_inst|reg_array[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[1][2]~10_combout\,
	datac => \ram_inst|reg_array[1][1]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[1][1]~20_combout\);

-- Location: LCCOMB_X20_Y26_N26
\ram_inst|reg_array[2][2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][2]~25_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & ((\wreg_inst|reg_write_data\(2)))) # (!\ram_inst|reg_array[1][2]~0_combout\ & (\ram_inst|reg_array[2][2]~regout\)))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[6][1]~6_combout\,
	datab => \ram_inst|reg_array[1][2]~0_combout\,
	datac => \ram_inst|reg_array[2][2]~regout\,
	datad => \wreg_inst|reg_write_data\(2),
	combout => \ram_inst|reg_array[2][2]~25_combout\);

-- Location: LCCOMB_X16_Y26_N6
\ram_inst|reg_array[7][2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][2]~29_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[7][2]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[7][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[7][2]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[7][2]~29_combout\);

-- Location: LCCOMB_X19_Y26_N6
\ram_inst|reg_array[3][2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][2]~30_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[3][2]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[3][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[3][2]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[3][2]~30_combout\);

-- Location: LCCOMB_X19_Y26_N2
\ram_inst|reg_array[2][3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][3]~32_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[2][3]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[2][3]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[2][3]~32_combout\);

-- Location: LCCOMB_X19_Y26_N8
\ram_inst|reg_array[5][3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][3]~33_combout\ = (\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[5][3]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~10_combout\ & (((\ram_inst|reg_array[5][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[1][2]~10_combout\,
	datac => \ram_inst|reg_array[5][3]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[5][3]~33_combout\);

-- Location: LCCOMB_X20_Y26_N6
\ram_inst|reg_array[1][3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][3]~34_combout\ = (\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[1][2]~10_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[1][3]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~0_combout\ & (((\ram_inst|reg_array[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[1][2]~0_combout\,
	datac => \ram_inst|reg_array[1][3]~regout\,
	datad => \ram_inst|reg_array[1][2]~10_combout\,
	combout => \ram_inst|reg_array[1][3]~34_combout\);

-- Location: LCCOMB_X19_Y26_N30
\ram_inst|reg_array[4][3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][3]~35_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[4][3]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[0][0]~1_combout\,
	datac => \ram_inst|reg_array[4][3]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[4][3]~35_combout\);

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

-- Location: LCCOMB_X23_Y26_N8
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

-- Location: LCCOMB_X23_Y26_N10
\pc_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~2_combout\ = (\pc_inst|pc_int\(1) & (!\pc_inst|Add1~1\)) # (!\pc_inst|pc_int\(1) & ((\pc_inst|Add1~1\) # (GND)))
-- \pc_inst|Add1~3\ = CARRY((!\pc_inst|Add1~1\) # (!\pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(1),
	datad => VCC,
	cin => \pc_inst|Add1~1\,
	combout => \pc_inst|Add1~2_combout\,
	cout => \pc_inst|Add1~3\);

-- Location: LCCOMB_X24_Y26_N26
\pc_inst|pc_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~1_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~2_combout\,
	combout => \pc_inst|pc_int~1_combout\);

-- Location: LCCOMB_X21_Y26_N14
\pipe_inst|state_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~1_combout\ = (\pipe_inst|state_mem\(1) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2))) # (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~1_combout\);

-- Location: LCFF_X20_Y26_N15
\pipe_inst|state_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(1));

-- Location: LCCOMB_X23_Y26_N28
\pipe_inst|state_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~0_combout\ = (!\pipe_inst|state_mem\(0) & ((!\pipe_inst|state_mem\(1)) # (!\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(2),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \pipe_inst|state_mem~0_combout\);

-- Location: LCFF_X20_Y26_N1
\pipe_inst|state_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(0));

-- Location: LCCOMB_X21_Y26_N16
\pipe_inst|state_mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~2_combout\ = (\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2))) # (!\pipe_inst|state_mem\(1) & ((\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~2_combout\);

-- Location: LCFF_X20_Y26_N29
\pipe_inst|state_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(2));

-- Location: LCCOMB_X23_Y26_N6
\pc_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datab => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \pc_inst|Equal0~0_combout\);

-- Location: LCFF_X23_Y26_N29
\pc_inst|pc_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~1_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(1));

-- Location: LCCOMB_X23_Y26_N12
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

-- Location: LCCOMB_X24_Y26_N12
\pc_inst|pc_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~2_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~4_combout\,
	combout => \pc_inst|pc_int~2_combout\);

-- Location: LCFF_X23_Y26_N27
\pc_inst|pc_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~2_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(2));

-- Location: LCCOMB_X24_Y26_N28
\instr_inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux2~0_combout\ = (\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(2) & !\pc_inst|pc_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(2),
	datad => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y26_N26
\instr_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Equal0~0_combout\ = (\pipe_inst|state_mem\(0) & (!\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datab => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \instr_inst|Equal0~0_combout\);

-- Location: LCFF_X23_Y26_N23
\instr_inst|instruction[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux2~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(5));

-- Location: LCCOMB_X22_Y26_N18
\dec_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(2) & (!\pipe_inst|state_mem\(0) & \pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(2),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(1),
	combout => \dec_inst|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\dec_inst|is_ret~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~0_combout\ = (\dec_inst|Equal0~0_combout\ & (\dec_inst|Equal9~0_combout\ & (\instr_inst|instruction\(5)))) # (!\dec_inst|Equal0~0_combout\ & (((\dec_inst|is_ret~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|Equal9~0_combout\,
	datab => \instr_inst|instruction\(5),
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|is_ret~0_combout\);

-- Location: LCFF_X22_Y26_N3
\dec_inst|is_ret~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_ret~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_ret~reg0_regout\);

-- Location: LCCOMB_X24_Y26_N8
\pc_inst|pc_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~0_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~0_combout\,
	combout => \pc_inst|pc_int~0_combout\);

-- Location: LCFF_X23_Y26_N7
\pc_inst|pc_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~0_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(0));

-- Location: LCCOMB_X23_Y26_N14
\pc_inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~6_combout\ = (\pc_inst|pc_int\(3) & (!\pc_inst|Add1~5\)) # (!\pc_inst|pc_int\(3) & ((\pc_inst|Add1~5\) # (GND)))
-- \pc_inst|Add1~7\ = CARRY((!\pc_inst|Add1~5\) # (!\pc_inst|pc_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(3),
	datad => VCC,
	cin => \pc_inst|Add1~5\,
	combout => \pc_inst|Add1~6_combout\,
	cout => \pc_inst|Add1~7\);

-- Location: LCCOMB_X24_Y26_N10
\pc_inst|pc_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~3_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~6_combout\,
	combout => \pc_inst|pc_int~3_combout\);

-- Location: LCFF_X23_Y26_N15
\pc_inst|pc_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~3_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(3));

-- Location: LCCOMB_X23_Y26_N16
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

-- Location: LCCOMB_X23_Y26_N2
\pc_inst|pc_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~4_combout\ = (\pc_inst|Add1~8_combout\ & !\dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|Add1~8_combout\,
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~4_combout\);

-- Location: LCFF_X23_Y26_N3
\pc_inst|pc_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~4_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(4));

-- Location: LCCOMB_X23_Y26_N18
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

-- Location: LCCOMB_X24_Y26_N0
\pc_inst|pc_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~5_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~10_combout\,
	combout => \pc_inst|pc_int~5_combout\);

-- Location: LCFF_X23_Y26_N9
\pc_inst|pc_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int~5_combout\,
	sload => VCC,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(5));

-- Location: LCCOMB_X23_Y26_N20
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

-- Location: LCCOMB_X23_Y26_N4
\pc_inst|pc_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~6_combout\ = (\pc_inst|Add1~12_combout\ & !\dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|Add1~12_combout\,
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~6_combout\);

-- Location: LCFF_X23_Y26_N5
\pc_inst|pc_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~6_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(6));

-- Location: LCCOMB_X23_Y26_N22
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

-- Location: LCCOMB_X23_Y26_N30
\pc_inst|pc_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~7_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \pc_inst|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datad => \pc_inst|Add1~14_combout\,
	combout => \pc_inst|pc_int~7_combout\);

-- Location: LCFF_X23_Y26_N31
\pc_inst|pc_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~7_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(7));

-- Location: LCCOMB_X23_Y26_N24
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

-- Location: LCCOMB_X23_Y26_N0
\pc_inst|pc_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~8_combout\ = (\pc_inst|Add1~16_combout\ & !\dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_inst|Add1~16_combout\,
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~8_combout\);

-- Location: LCFF_X23_Y26_N1
\pc_inst|pc_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~8_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(8));

-- Location: LCCOMB_X24_Y26_N22
\instr_inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux5~0_combout\ = (!\pc_inst|pc_int\(2) & !\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(2),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux5~0_combout\);

-- Location: LCFF_X23_Y26_N17
\instr_inst|instruction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux5~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(0));

-- Location: LCCOMB_X24_Y26_N24
\instr_inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux4~0_combout\ = (!\pc_inst|pc_int\(0) & !\pc_inst|pc_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datad => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux4~0_combout\);

-- Location: LCFF_X23_Y26_N13
\instr_inst|instruction[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux4~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(1));

-- Location: LCCOMB_X24_Y26_N14
\instr_inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux3~0_combout\ = (\pc_inst|pc_int\(1) & !\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux3~0_combout\);

-- Location: LCFF_X23_Y26_N21
\instr_inst|instruction[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux3~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(2));

-- Location: LCCOMB_X24_Y26_N18
\instr_inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux1~0_combout\ = (\pc_inst|pc_int\(0) & (\pc_inst|pc_int\(2) $ (\pc_inst|pc_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(2),
	datad => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux1~0_combout\);

-- Location: LCFF_X23_Y26_N25
\instr_inst|instruction[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux1~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(6));

-- Location: LCFF_X23_Y26_N19
\instr_inst|instruction[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \pc_inst|pc_int\(0),
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(8));

-- Location: LCCOMB_X24_Y26_N16
\instr_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~0_combout\ = (\pc_inst|pc_int\(1) & \pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(0),
	combout => \instr_inst|Mux0~0_combout\);

-- Location: LCFF_X23_Y26_N11
\instr_inst|instruction[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \instr_inst|Mux0~0_combout\,
	sload => VCC,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(9));

-- Location: LCCOMB_X22_Y26_N24
\dec_inst|read_w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|read_w~0_combout\ = (!\instr_inst|instruction\(6) & (\instr_inst|instruction\(8) & (\instr_inst|instruction\(5) $ (\instr_inst|instruction\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(6),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|read_w~0_combout\);

-- Location: LCFF_X22_Y26_N25
\dec_inst|read_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|read_w~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|read_w~regout\);

-- Location: LCCOMB_X22_Y26_N30
\dec_inst|write_w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|write_w~0_combout\ = (!\instr_inst|instruction\(9) & ((\instr_inst|instruction\(6) & (!\instr_inst|instruction\(5) & \instr_inst|instruction\(8))) # (!\instr_inst|instruction\(6) & ((!\instr_inst|instruction\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(6),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|write_w~0_combout\);

-- Location: LCFF_X22_Y26_N31
\dec_inst|write_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|write_w~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|write_w~regout\);

-- Location: LCCOMB_X22_Y26_N28
\dec_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|process_0~0_combout\ = (\instr_inst|instruction\(8) & (!\instr_inst|instruction\(5) & \instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(5),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|process_0~0_combout\);

-- Location: LCFF_X22_Y26_N29
\dec_inst|reg_read_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|process_0~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_read_en~regout\);

-- Location: LCCOMB_X22_Y26_N20
\dec_inst|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal9~0_combout\ = (!\instr_inst|instruction\(8) & (!\instr_inst|instruction\(9) & !\instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|Equal9~0_combout\);

-- Location: LCFF_X22_Y26_N19
\dec_inst|place_immediate\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|Equal9~0_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|place_immediate~regout\);

-- Location: LCCOMB_X22_Y26_N8
\dec_inst|immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~0_combout\ = (\instr_inst|instruction\(0) & (!\instr_inst|instruction\(8) & (!\instr_inst|instruction\(9) & !\instr_inst|instruction\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(0),
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|immediate~0_combout\);

-- Location: LCFF_X22_Y26_N9
\dec_inst|immediate[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(0));

-- Location: LCCOMB_X22_Y26_N14
\dec_inst|immediate~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~1_combout\ = (!\instr_inst|instruction\(8) & (\instr_inst|instruction\(1) & (!\instr_inst|instruction\(9) & !\instr_inst|instruction\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(1),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|immediate~1_combout\);

-- Location: LCFF_X22_Y26_N15
\dec_inst|immediate[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(1));

-- Location: LCCOMB_X22_Y26_N16
\dec_inst|immediate~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~2_combout\ = (!\instr_inst|instruction\(8) & (!\instr_inst|instruction\(6) & (!\instr_inst|instruction\(9) & \instr_inst|instruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(6),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(2),
	combout => \dec_inst|immediate~2_combout\);

-- Location: LCFF_X22_Y26_N17
\dec_inst|immediate[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(2));

-- Location: LCCOMB_X22_Y26_N22
\dec_inst|reg_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~0_combout\ = (\instr_inst|instruction\(8) & (\instr_inst|instruction\(5) $ (((\instr_inst|instruction\(6)) # (\instr_inst|instruction\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(6),
	datac => \instr_inst|instruction\(9),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|reg_addr~0_combout\);

-- Location: LCCOMB_X22_Y26_N10
\dec_inst|reg_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~1_combout\ = (\instr_inst|instruction\(0) & \dec_inst|reg_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(0),
	datad => \dec_inst|reg_addr~0_combout\,
	combout => \dec_inst|reg_addr~1_combout\);

-- Location: LCFF_X22_Y26_N11
\dec_inst|reg_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(0));

-- Location: LCCOMB_X22_Y26_N12
\dec_inst|reg_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~2_combout\ = (\instr_inst|instruction\(1) & \dec_inst|reg_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instr_inst|instruction\(1),
	datad => \dec_inst|reg_addr~0_combout\,
	combout => \dec_inst|reg_addr~2_combout\);

-- Location: LCFF_X22_Y26_N13
\dec_inst|reg_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(1));

-- Location: LCCOMB_X22_Y26_N6
\dec_inst|reg_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~3_combout\ = (\dec_inst|reg_addr~0_combout\ & \instr_inst|instruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr~0_combout\,
	datad => \instr_inst|instruction\(2),
	combout => \dec_inst|reg_addr~3_combout\);

-- Location: LCFF_X22_Y26_N7
\dec_inst|reg_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~3_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(2));

-- Location: LCCOMB_X20_Y26_N0
\ram_inst|reg_array[6][1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][1]~6_combout\ = (!\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_array[6][1]~6_combout\);

-- Location: LCCOMB_X22_Y26_N4
\wreg_inst|w_to_ram~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_to_ram~0_combout\ = (\dec_inst|reg_read_en~regout\ & !\dec_inst|write_w~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_read_en~regout\,
	datad => \dec_inst|write_w~regout\,
	combout => \wreg_inst|w_to_ram~0_combout\);

-- Location: LCCOMB_X20_Y26_N14
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

-- Location: LCCOMB_X22_Y26_N0
\wreg_inst|w_to_ram~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_to_ram~1_combout\ = (\wreg_inst|Equal0~0_combout\ & (!\dec_inst|read_w~regout\ & (\wreg_inst|w_to_ram~0_combout\))) # (!\wreg_inst|Equal0~0_combout\ & (((\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \wreg_inst|w_to_ram~0_combout\,
	datac => \wreg_inst|w_to_ram~regout\,
	datad => \wreg_inst|Equal0~0_combout\,
	combout => \wreg_inst|w_to_ram~1_combout\);

-- Location: LCFF_X22_Y26_N1
\wreg_inst|w_to_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_to_ram~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_to_ram~regout\);

-- Location: LCCOMB_X20_Y26_N28
\ram_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|process_0~0_combout\ = (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) $ (\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(0),
	combout => \ram_inst|process_0~0_combout\);

-- Location: LCCOMB_X20_Y26_N18
\ram_inst|reg_array[7][1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][1]~7_combout\ = (\ram_inst|process_0~0_combout\ & (\dec_inst|reg_addr\(2) & ((\dec_inst|read_w~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \wreg_inst|w_to_ram~regout\,
	datac => \ram_inst|process_0~0_combout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_array[7][1]~7_combout\);

-- Location: LCCOMB_X19_Y26_N10
\ram_inst|reg_array[6][0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][0]~8_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[6][0]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[6][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[6][0]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[6][0]~8_combout\);

-- Location: LCFF_X19_Y26_N11
\ram_inst|reg_array[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][0]~regout\);

-- Location: LCCOMB_X20_Y26_N12
\ram_inst|reg_array[1][2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][2]~0_combout\ = (\ram_inst|process_0~0_combout\ & (!\dec_inst|reg_addr\(2) & ((\dec_inst|read_w~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \wreg_inst|w_to_ram~regout\,
	datac => \ram_inst|process_0~0_combout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_array[1][2]~0_combout\);

-- Location: LCCOMB_X19_Y26_N24
\ram_inst|reg_array[2][0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][0]~9_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[2][0]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[2][0]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[2][0]~9_combout\);

-- Location: LCFF_X19_Y26_N25
\ram_inst|reg_array[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][0]~regout\);

-- Location: LCCOMB_X18_Y26_N18
\ram_inst|reg_read_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~4_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[6][0]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[6][0]~regout\,
	datac => \dec_inst|reg_addr\(2),
	datad => \ram_inst|reg_array[2][0]~regout\,
	combout => \ram_inst|reg_read_data~4_combout\);

-- Location: LCCOMB_X18_Y26_N14
\ram_inst|reg_array[1][2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][2]~10_combout\ = (\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_array[1][2]~10_combout\);

-- Location: LCCOMB_X20_Y26_N4
\ram_inst|reg_array[1][0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][0]~12_combout\ = (\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[1][2]~10_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[1][0]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~0_combout\ & (((\ram_inst|reg_array[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[1][2]~0_combout\,
	datac => \ram_inst|reg_array[1][0]~regout\,
	datad => \ram_inst|reg_array[1][2]~10_combout\,
	combout => \ram_inst|reg_array[1][0]~12_combout\);

-- Location: LCFF_X20_Y26_N5
\ram_inst|reg_array[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][0]~regout\);

-- Location: LCCOMB_X20_Y26_N10
\ram_inst|reg_array[5][0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][0]~11_combout\ = (\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[5][0]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~10_combout\ & (((\ram_inst|reg_array[5][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[1][2]~10_combout\,
	datac => \ram_inst|reg_array[5][0]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[5][0]~11_combout\);

-- Location: LCFF_X20_Y26_N11
\ram_inst|reg_array[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][0]~regout\);

-- Location: LCCOMB_X16_Y26_N4
\ram_inst|reg_read_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~5_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[5][0]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[1][0]~regout\,
	datac => \ram_inst|reg_array[5][0]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~5_combout\);

-- Location: LCCOMB_X21_Y26_N4
\wreg_inst|w_content[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~0_combout\ = (\dec_inst|reg_read_en~regout\ & (\wreg_inst|Add0~0_combout\)) # (!\dec_inst|reg_read_en~regout\ & ((\ram_inst|reg_read_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_read_en~regout\,
	datab => \wreg_inst|Add0~0_combout\,
	datad => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|w_content[0]~0_combout\);

-- Location: LCCOMB_X21_Y26_N8
\wreg_inst|w_content[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~4_combout\ = (\dec_inst|write_w~regout\ & (!\dec_inst|read_w~regout\ & \wreg_inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|read_w~regout\,
	datad => \wreg_inst|Equal0~0_combout\,
	combout => \wreg_inst|w_content[0]~4_combout\);

-- Location: LCFF_X21_Y26_N5
\wreg_inst|w_content[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[0]~0_combout\,
	sdata => \dec_inst|immediate\(0),
	sload => \dec_inst|place_immediate~regout\,
	ena => \wreg_inst|w_content[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(0));

-- Location: LCCOMB_X21_Y26_N22
\wreg_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~0_combout\ = (\ram_inst|reg_read_data\(0) & (\wreg_inst|w_content\(0) $ (VCC))) # (!\ram_inst|reg_read_data\(0) & (\wreg_inst|w_content\(0) & VCC))
-- \wreg_inst|Add0~1\ = CARRY((\ram_inst|reg_read_data\(0) & \wreg_inst|w_content\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(0),
	datab => \wreg_inst|w_content\(0),
	datad => VCC,
	combout => \wreg_inst|Add0~0_combout\,
	cout => \wreg_inst|Add0~1\);

-- Location: LCCOMB_X21_Y26_N12
\wreg_inst|reg_write_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~2_combout\ = (\dec_inst|read_w~regout\ & ((\wreg_inst|w_content\(0)))) # (!\dec_inst|read_w~regout\ & (\wreg_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|Add0~0_combout\,
	datac => \wreg_inst|w_content\(0),
	datad => \dec_inst|read_w~regout\,
	combout => \wreg_inst|reg_write_data~2_combout\);

-- Location: LCCOMB_X21_Y26_N6
\wreg_inst|reg_write_data[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[0]~6_combout\ = (\wreg_inst|Equal0~0_combout\ & ((\dec_inst|read_w~regout\) # ((!\dec_inst|write_w~regout\ & \dec_inst|reg_read_en~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|reg_read_en~regout\,
	datad => \wreg_inst|Equal0~0_combout\,
	combout => \wreg_inst|reg_write_data[0]~6_combout\);

-- Location: LCFF_X21_Y26_N13
\wreg_inst|reg_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~2_combout\,
	ena => \wreg_inst|reg_write_data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(0));

-- Location: LCCOMB_X20_Y26_N8
\ram_inst|reg_array[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~2_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[0][0]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[0][0]~1_combout\,
	datab => \wreg_inst|reg_write_data\(0),
	datac => \ram_inst|reg_array[0][0]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[0][0]~2_combout\);

-- Location: LCFF_X20_Y26_N9
\ram_inst|reg_array[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][0]~regout\);

-- Location: LCCOMB_X16_Y26_N30
\ram_inst|reg_read_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~6_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[4][0]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][0]~regout\,
	datac => \ram_inst|reg_array[0][0]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~6_combout\);

-- Location: LCCOMB_X16_Y26_N28
\ram_inst|reg_read_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~7_combout\ = (\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1)) # ((\ram_inst|reg_read_data~5_combout\)))) # (!\dec_inst|reg_addr\(0) & (!\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(0),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_read_data~5_combout\,
	datad => \ram_inst|reg_read_data~6_combout\,
	combout => \ram_inst|reg_read_data~7_combout\);

-- Location: LCCOMB_X16_Y26_N22
\ram_inst|reg_array[7][1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][1]~14_combout\ = (\dec_inst|reg_addr\(1) & \dec_inst|reg_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_array[7][1]~14_combout\);

-- Location: LCCOMB_X18_Y26_N24
\ram_inst|reg_array[7][0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][0]~15_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(0))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[7][0]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[7][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(0),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[7][0]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[7][0]~15_combout\);

-- Location: LCFF_X18_Y26_N25
\ram_inst|reg_array[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][0]~regout\);

-- Location: LCCOMB_X18_Y26_N22
\ram_inst|reg_read_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~8_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[7][0]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[3][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[3][0]~regout\,
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_array[7][0]~regout\,
	combout => \ram_inst|reg_read_data~8_combout\);

-- Location: LCCOMB_X18_Y26_N0
\ram_inst|reg_read_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~9_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~7_combout\ & ((\ram_inst|reg_read_data~8_combout\))) # (!\ram_inst|reg_read_data~7_combout\ & (\ram_inst|reg_read_data~4_combout\)))) # (!\dec_inst|reg_addr\(1) & 
-- (((\ram_inst|reg_read_data~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_read_data~4_combout\,
	datac => \ram_inst|reg_read_data~7_combout\,
	datad => \ram_inst|reg_read_data~8_combout\,
	combout => \ram_inst|reg_read_data~9_combout\);

-- Location: LCFF_X18_Y26_N1
\ram_inst|reg_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~9_combout\,
	sclr => \dec_inst|ALT_INV_reg_read_en~regout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(0));

-- Location: LCCOMB_X19_Y26_N26
\ram_inst|reg_array[7][1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][1]~22_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[7][1]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[7][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[7][1]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[7][1]~22_combout\);

-- Location: LCFF_X19_Y26_N27
\ram_inst|reg_array[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][1]~regout\);

-- Location: LCCOMB_X19_Y26_N4
\ram_inst|reg_array[3][1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][1]~23_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[3][1]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[3][1]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[3][1]~23_combout\);

-- Location: LCFF_X19_Y26_N5
\ram_inst|reg_array[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][1]~regout\);

-- Location: LCCOMB_X18_Y26_N8
\ram_inst|reg_read_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~14_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[7][1]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[3][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_array[7][1]~regout\,
	datad => \ram_inst|reg_array[3][1]~regout\,
	combout => \ram_inst|reg_read_data~14_combout\);

-- Location: LCCOMB_X19_Y26_N14
\ram_inst|reg_array[2][1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][1]~18_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[2][1]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[2][1]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[2][1]~18_combout\);

-- Location: LCFF_X19_Y26_N15
\ram_inst|reg_array[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][1]~regout\);

-- Location: LCCOMB_X19_Y26_N20
\ram_inst|reg_array[6][1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][1]~17_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[6][1]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[6][1]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[6][1]~17_combout\);

-- Location: LCFF_X19_Y26_N21
\ram_inst|reg_array[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][1]~regout\);

-- Location: LCCOMB_X18_Y26_N4
\ram_inst|reg_read_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~10_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[6][1]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[2][1]~regout\,
	datac => \dec_inst|reg_addr\(2),
	datad => \ram_inst|reg_array[6][1]~regout\,
	combout => \ram_inst|reg_read_data~10_combout\);

-- Location: LCCOMB_X16_Y26_N12
\ram_inst|reg_array[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~1_combout\ = (!\dec_inst|reg_addr\(1) & !\dec_inst|reg_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_array[0][0]~1_combout\);

-- Location: LCCOMB_X19_Y26_N12
\ram_inst|reg_array[4][1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][1]~21_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[4][1]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[0][0]~1_combout\,
	datac => \ram_inst|reg_array[4][1]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[4][1]~21_combout\);

-- Location: LCFF_X19_Y26_N13
\ram_inst|reg_array[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][1]~regout\);

-- Location: LCCOMB_X20_Y26_N30
\ram_inst|reg_array[0][1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~3_combout\ = (\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[0][0]~1_combout\ & (\wreg_inst|reg_write_data\(1))) # (!\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[0][1]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~0_combout\ & (((\ram_inst|reg_array[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(1),
	datab => \ram_inst|reg_array[1][2]~0_combout\,
	datac => \ram_inst|reg_array[0][1]~regout\,
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][1]~3_combout\);

-- Location: LCFF_X20_Y26_N31
\ram_inst|reg_array[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][1]~regout\);

-- Location: LCCOMB_X18_Y26_N28
\ram_inst|reg_read_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~12_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[4][1]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_array[4][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~regout\,
	combout => \ram_inst|reg_read_data~12_combout\);

-- Location: LCCOMB_X18_Y26_N30
\ram_inst|reg_read_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~13_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~11_combout\) # ((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (((\ram_inst|reg_read_data~12_combout\ & !\dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~11_combout\,
	datab => \ram_inst|reg_read_data~12_combout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~13_combout\);

-- Location: LCCOMB_X18_Y26_N6
\ram_inst|reg_read_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~15_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~13_combout\ & (\ram_inst|reg_read_data~14_combout\)) # (!\ram_inst|reg_read_data~13_combout\ & ((\ram_inst|reg_read_data~10_combout\))))) # (!\dec_inst|reg_addr\(1) 
-- & (((\ram_inst|reg_read_data~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_read_data~14_combout\,
	datac => \ram_inst|reg_read_data~10_combout\,
	datad => \ram_inst|reg_read_data~13_combout\,
	combout => \ram_inst|reg_read_data~15_combout\);

-- Location: LCFF_X18_Y26_N7
\ram_inst|reg_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~15_combout\,
	sclr => \dec_inst|ALT_INV_reg_read_en~regout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(1));

-- Location: LCCOMB_X21_Y26_N18
\wreg_inst|w_content[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[1]~1_combout\ = (\dec_inst|reg_read_en~regout\ & (\wreg_inst|Add0~2_combout\)) # (!\dec_inst|reg_read_en~regout\ & ((\ram_inst|reg_read_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add0~2_combout\,
	datab => \dec_inst|reg_read_en~regout\,
	datad => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|w_content[1]~1_combout\);

-- Location: LCFF_X21_Y26_N19
\wreg_inst|w_content[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[1]~1_combout\,
	sdata => \dec_inst|immediate\(1),
	sload => \dec_inst|place_immediate~regout\,
	ena => \wreg_inst|w_content[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(1));

-- Location: LCCOMB_X21_Y26_N24
\wreg_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~2_combout\ = (\ram_inst|reg_read_data\(1) & ((\wreg_inst|w_content\(1) & (\wreg_inst|Add0~1\ & VCC)) # (!\wreg_inst|w_content\(1) & (!\wreg_inst|Add0~1\)))) # (!\ram_inst|reg_read_data\(1) & ((\wreg_inst|w_content\(1) & 
-- (!\wreg_inst|Add0~1\)) # (!\wreg_inst|w_content\(1) & ((\wreg_inst|Add0~1\) # (GND)))))
-- \wreg_inst|Add0~3\ = CARRY((\ram_inst|reg_read_data\(1) & (!\wreg_inst|w_content\(1) & !\wreg_inst|Add0~1\)) # (!\ram_inst|reg_read_data\(1) & ((!\wreg_inst|Add0~1\) # (!\wreg_inst|w_content\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(1),
	datab => \wreg_inst|w_content\(1),
	datad => VCC,
	cin => \wreg_inst|Add0~1\,
	combout => \wreg_inst|Add0~2_combout\,
	cout => \wreg_inst|Add0~3\);

-- Location: LCCOMB_X21_Y26_N26
\wreg_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~4_combout\ = ((\ram_inst|reg_read_data\(2) $ (\wreg_inst|w_content\(2) $ (!\wreg_inst|Add0~3\)))) # (GND)
-- \wreg_inst|Add0~5\ = CARRY((\ram_inst|reg_read_data\(2) & ((\wreg_inst|w_content\(2)) # (!\wreg_inst|Add0~3\))) # (!\ram_inst|reg_read_data\(2) & (\wreg_inst|w_content\(2) & !\wreg_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datab => \wreg_inst|w_content\(2),
	datad => VCC,
	cin => \wreg_inst|Add0~3\,
	combout => \wreg_inst|Add0~4_combout\,
	cout => \wreg_inst|Add0~5\);

-- Location: LCCOMB_X21_Y26_N0
\wreg_inst|w_content[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[2]~2_combout\ = (\dec_inst|reg_read_en~regout\ & ((\wreg_inst|Add0~4_combout\))) # (!\dec_inst|reg_read_en~regout\ & (\ram_inst|reg_read_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_read_en~regout\,
	datab => \ram_inst|reg_read_data\(2),
	datad => \wreg_inst|Add0~4_combout\,
	combout => \wreg_inst|w_content[2]~2_combout\);

-- Location: LCFF_X21_Y26_N1
\wreg_inst|w_content[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[2]~2_combout\,
	sdata => \dec_inst|immediate\(2),
	sload => \dec_inst|place_immediate~regout\,
	ena => \wreg_inst|w_content[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(2));

-- Location: LCCOMB_X21_Y26_N20
\wreg_inst|reg_write_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~4_combout\ = (\dec_inst|read_w~regout\ & (\wreg_inst|w_content\(2))) # (!\dec_inst|read_w~regout\ & ((\wreg_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(2),
	datac => \dec_inst|read_w~regout\,
	datad => \wreg_inst|Add0~4_combout\,
	combout => \wreg_inst|reg_write_data~4_combout\);

-- Location: LCFF_X21_Y26_N21
\wreg_inst|reg_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~4_combout\,
	ena => \wreg_inst|reg_write_data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(2));

-- Location: LCCOMB_X20_Y26_N16
\ram_inst|reg_array[6][2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][2]~24_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[6][2]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[6][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[6][1]~6_combout\,
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[6][2]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[6][2]~24_combout\);

-- Location: LCFF_X20_Y26_N17
\ram_inst|reg_array[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][2]~regout\);

-- Location: LCCOMB_X16_Y26_N2
\ram_inst|reg_read_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~16_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[6][2]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[2][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][2]~regout\,
	datac => \ram_inst|reg_array[6][2]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~16_combout\);

-- Location: LCCOMB_X20_Y26_N20
\ram_inst|reg_array[4][2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][2]~28_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[4][2]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[0][0]~1_combout\,
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[4][2]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[4][2]~28_combout\);

-- Location: LCFF_X20_Y26_N21
\ram_inst|reg_array[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][2]~regout\);

-- Location: LCCOMB_X16_Y26_N14
\ram_inst|reg_read_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~18_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[4][2]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[0][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[0][2]~regout\,
	datac => \ram_inst|reg_array[4][2]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~18_combout\);

-- Location: LCCOMB_X20_Y26_N2
\ram_inst|reg_array[1][2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][2]~27_combout\ = (\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[1][2]~10_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[1][2]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~0_combout\ & (((\ram_inst|reg_array[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datab => \ram_inst|reg_array[1][2]~0_combout\,
	datac => \ram_inst|reg_array[1][2]~regout\,
	datad => \ram_inst|reg_array[1][2]~10_combout\,
	combout => \ram_inst|reg_array[1][2]~27_combout\);

-- Location: LCFF_X20_Y26_N3
\ram_inst|reg_array[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][2]~regout\);

-- Location: LCCOMB_X20_Y26_N24
\ram_inst|reg_array[5][2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][2]~26_combout\ = (\ram_inst|reg_array[1][2]~10_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[5][2]~regout\))))) # 
-- (!\ram_inst|reg_array[1][2]~10_combout\ & (((\ram_inst|reg_array[5][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[1][2]~10_combout\,
	datab => \wreg_inst|reg_write_data\(2),
	datac => \ram_inst|reg_array[5][2]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[5][2]~26_combout\);

-- Location: LCFF_X20_Y26_N25
\ram_inst|reg_array[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][2]~regout\);

-- Location: LCCOMB_X16_Y26_N0
\ram_inst|reg_read_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~17_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[5][2]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[1][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[1][2]~regout\,
	datac => \ram_inst|reg_array[5][2]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~17_combout\);

-- Location: LCCOMB_X16_Y26_N16
\ram_inst|reg_read_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~19_combout\ = (\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1)) # ((\ram_inst|reg_read_data~17_combout\)))) # (!\dec_inst|reg_addr\(0) & (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_read_data~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(0),
	datab => \dec_inst|reg_addr\(1),
	datac => \ram_inst|reg_read_data~18_combout\,
	datad => \ram_inst|reg_read_data~17_combout\,
	combout => \ram_inst|reg_read_data~19_combout\);

-- Location: LCCOMB_X16_Y26_N8
\ram_inst|reg_read_data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~21_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~19_combout\ & (\ram_inst|reg_read_data~20_combout\)) # (!\ram_inst|reg_read_data~19_combout\ & ((\ram_inst|reg_read_data~16_combout\))))) # (!\dec_inst|reg_addr\(1) 
-- & (((\ram_inst|reg_read_data~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~20_combout\,
	datab => \ram_inst|reg_read_data~16_combout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_read_data~19_combout\,
	combout => \ram_inst|reg_read_data~21_combout\);

-- Location: LCFF_X16_Y26_N9
\ram_inst|reg_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~21_combout\,
	sclr => \dec_inst|ALT_INV_reg_read_en~regout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(2));

-- Location: LCCOMB_X19_Y26_N0
\ram_inst|reg_array[6][3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][3]~31_combout\ = (\ram_inst|reg_array[6][1]~6_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[6][3]~regout\))))) # 
-- (!\ram_inst|reg_array[6][1]~6_combout\ & (((\ram_inst|reg_array[6][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[6][1]~6_combout\,
	datac => \ram_inst|reg_array[6][3]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[6][3]~31_combout\);

-- Location: LCFF_X19_Y26_N1
\ram_inst|reg_array[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][3]~regout\);

-- Location: LCCOMB_X18_Y26_N2
\ram_inst|reg_read_data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~22_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[6][3]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][3]~regout\,
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_array[6][3]~regout\,
	combout => \ram_inst|reg_read_data~22_combout\);

-- Location: LCCOMB_X16_Y26_N26
\ram_inst|reg_array[7][3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][3]~36_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[7][1]~7_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[7][1]~7_combout\ & ((\ram_inst|reg_array[7][3]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[7][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[7][3]~regout\,
	datad => \ram_inst|reg_array[7][1]~7_combout\,
	combout => \ram_inst|reg_array[7][3]~36_combout\);

-- Location: LCFF_X16_Y26_N27
\ram_inst|reg_array[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][3]~regout\);

-- Location: LCCOMB_X16_Y26_N20
\ram_inst|reg_array[3][3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][3]~37_combout\ = (\ram_inst|reg_array[7][1]~14_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[3][3]~regout\))))) # 
-- (!\ram_inst|reg_array[7][1]~14_combout\ & (((\ram_inst|reg_array[3][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[7][1]~14_combout\,
	datac => \ram_inst|reg_array[3][3]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[3][3]~37_combout\);

-- Location: LCFF_X16_Y26_N21
\ram_inst|reg_array[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][3]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][3]~regout\);

-- Location: LCCOMB_X16_Y26_N18
\ram_inst|reg_read_data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~26_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[7][3]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[3][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[7][3]~regout\,
	datac => \ram_inst|reg_array[3][3]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~26_combout\);

-- Location: LCCOMB_X19_Y26_N16
\ram_inst|reg_array[0][3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][3]~5_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(3))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[0][3]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(3),
	datab => \ram_inst|reg_array[0][0]~1_combout\,
	datac => \ram_inst|reg_array[0][3]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[0][3]~5_combout\);

-- Location: LCFF_X19_Y26_N17
\ram_inst|reg_array[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][3]~regout\);

-- Location: LCCOMB_X18_Y26_N26
\ram_inst|reg_read_data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~24_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[4][3]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][3]~regout\,
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_array[0][3]~regout\,
	combout => \ram_inst|reg_read_data~24_combout\);

-- Location: LCCOMB_X18_Y26_N12
\ram_inst|reg_read_data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~25_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~23_combout\) # ((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (((\ram_inst|reg_read_data~24_combout\ & !\dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~23_combout\,
	datab => \ram_inst|reg_read_data~24_combout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~25_combout\);

-- Location: LCCOMB_X18_Y26_N16
\ram_inst|reg_read_data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~27_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~25_combout\ & ((\ram_inst|reg_read_data~26_combout\))) # (!\ram_inst|reg_read_data~25_combout\ & (\ram_inst|reg_read_data~22_combout\)))) # (!\dec_inst|reg_addr\(1) 
-- & (((\ram_inst|reg_read_data~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_read_data~22_combout\,
	datac => \ram_inst|reg_read_data~26_combout\,
	datad => \ram_inst|reg_read_data~25_combout\,
	combout => \ram_inst|reg_read_data~27_combout\);

-- Location: LCFF_X18_Y26_N17
\ram_inst|reg_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~27_combout\,
	sclr => \dec_inst|ALT_INV_reg_read_en~regout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(3));

-- Location: LCCOMB_X21_Y26_N30
\wreg_inst|reg_write_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~3_combout\ = (\dec_inst|read_w~regout\ & (\wreg_inst|w_content\(1))) # (!\dec_inst|read_w~regout\ & ((\wreg_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(1),
	datac => \wreg_inst|Add0~2_combout\,
	datad => \dec_inst|read_w~regout\,
	combout => \wreg_inst|reg_write_data~3_combout\);

-- Location: LCFF_X21_Y26_N31
\wreg_inst|reg_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~3_combout\,
	ena => \wreg_inst|reg_write_data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(1));

-- Location: LCCOMB_X21_Y26_N28
\wreg_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~6_combout\ = \ram_inst|reg_read_data\(3) $ (\wreg_inst|Add0~5\ $ (\wreg_inst|w_content\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(3),
	datad => \wreg_inst|w_content\(3),
	cin => \wreg_inst|Add0~5\,
	combout => \wreg_inst|Add0~6_combout\);

-- Location: LCCOMB_X21_Y26_N2
\wreg_inst|w_content[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[3]~3_combout\ = (\dec_inst|reg_read_en~regout\ & ((\wreg_inst|Add0~6_combout\))) # (!\dec_inst|reg_read_en~regout\ & (\ram_inst|reg_read_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(3),
	datab => \dec_inst|reg_read_en~regout\,
	datad => \wreg_inst|Add0~6_combout\,
	combout => \wreg_inst|w_content[3]~3_combout\);

-- Location: LCCOMB_X22_Y26_N26
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

-- Location: LCFF_X21_Y26_N3
\wreg_inst|w_content[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[3]~3_combout\,
	sdata => \~GND~combout\,
	sload => \dec_inst|place_immediate~regout\,
	ena => \wreg_inst|w_content[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(3));

-- Location: LCCOMB_X21_Y26_N10
\wreg_inst|reg_write_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~5_combout\ = (\dec_inst|read_w~regout\ & (\wreg_inst|w_content\(3))) # (!\dec_inst|read_w~regout\ & ((\wreg_inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|read_w~regout\,
	datac => \wreg_inst|w_content\(3),
	datad => \wreg_inst|Add0~6_combout\,
	combout => \wreg_inst|reg_write_data~5_combout\);

-- Location: LCFF_X21_Y26_N11
\wreg_inst|reg_write_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~5_combout\,
	ena => \wreg_inst|reg_write_data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(3));

-- Location: LCCOMB_X16_Y26_N10
\ram_inst|reg_array[0][2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][2]~4_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & ((\ram_inst|reg_array[1][2]~0_combout\ & (\wreg_inst|reg_write_data\(2))) # (!\ram_inst|reg_array[1][2]~0_combout\ & ((\ram_inst|reg_array[0][2]~regout\))))) # 
-- (!\ram_inst|reg_array[0][0]~1_combout\ & (((\ram_inst|reg_array[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datab => \ram_inst|reg_array[0][0]~1_combout\,
	datac => \ram_inst|reg_array[0][2]~regout\,
	datad => \ram_inst|reg_array[1][2]~0_combout\,
	combout => \ram_inst|reg_array[0][2]~4_combout\);

-- Location: LCFF_X16_Y26_N11
\ram_inst|reg_array[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][2]~regout\);

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => instruction(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instr_inst|instruction\(6),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(6));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(7));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|read_w~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => reg_write_en);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => immediate(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => reg_addr(3));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => is_add);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => idx_out(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


