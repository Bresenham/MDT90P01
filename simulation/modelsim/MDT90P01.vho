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

-- DATE "05/21/2018 15:40:00"

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
	c_flag : INOUT std_logic;
	z_flag : INOUT std_logic;
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
-- write_tmrl	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_tmrh	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_cpio	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[1]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[2]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[4]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[5]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[6]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc[8]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pc_skip	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[0]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[1]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[3]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[6]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[8]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[9]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[10]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_w	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- write_w	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_en	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_en	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- place_immediate	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- immediate[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[1]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[3]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_addr[4]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[1]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_read_data[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reg_write_data[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[2]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ram_top[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[0]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_reg_top[3]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- w_to_ram	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_add	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_and	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_decr	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_ret	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- is_jump	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[2]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[3]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[5]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[7]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- jump_addr[8]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- scall	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset_scall	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c_flag	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z_flag	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[0]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[1]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[3]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[4]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[6]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[7]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ret_addr[8]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[0]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[2]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[3]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[4]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[5]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[6]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[7]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_1[8]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[1]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[3]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[4]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[5]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[6]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[7]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stack_lvl_2[8]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[0]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- idx_out[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_set	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_clear	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[0]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_pos[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_test	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bit_skip_clear	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- state[2]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \pc_inst|Add0~6_combout\ : std_logic;
SIGNAL \pc_inst|Add0~10_combout\ : std_logic;
SIGNAL \pc_inst|Add0~13\ : std_logic;
SIGNAL \pc_inst|Add0~14_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~7\ : std_logic;
SIGNAL \wreg_inst|Add0~8_combout\ : std_logic;
SIGNAL \wreg_inst|pc_skip~0_combout\ : std_logic;
SIGNAL \wreg_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~19_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~20_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~21_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~28_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~36_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][3]~regout\ : std_logic;
SIGNAL \wreg_inst|RESULT~0_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~1_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~7_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~2_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~1_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~3_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~6_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~7_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~8_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~9_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][0]~17_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][0]~20_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][0]~22_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][0]~26_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][0]~30_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][0]~31_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][1]~32_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][1]~34_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][1]~37_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][1]~38_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][1]~39_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][1]~40_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][1]~41_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][1]~42_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][1]~43_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][1]~44_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][2]~48_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][2]~50_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][2]~51_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~58_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~59_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][2]~61_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][3]~63_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][3]~66_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][3]~67_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][3]~71_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][3]~73_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][3]~74_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][3]~75_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][3]~77_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~13_combout\ : std_logic;
SIGNAL \c0~combout\ : std_logic;
SIGNAL \c0~clkctrl_outclk\ : std_logic;
SIGNAL \instr_inst|Mux7~0_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~2_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~0_combout\ : std_logic;
SIGNAL \pipe_inst|state_mem~1_combout\ : std_logic;
SIGNAL \instr_inst|Equal0~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux4~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux8~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~1_combout\ : std_logic;
SIGNAL \instr_inst|Mux1~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux0~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux3~0_combout\ : std_logic;
SIGNAL \dec_inst|write_w~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~2_combout\ : std_logic;
SIGNAL \dec_inst|Equal0~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[0]~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[1]~2_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[1]~reg0_regout\ : std_logic;
SIGNAL \wreg_inst|RESULT~5_combout\ : std_logic;
SIGNAL \instr_inst|Mux5~0_combout\ : std_logic;
SIGNAL \dec_inst|immediate~3_combout\ : std_logic;
SIGNAL \dec_inst|immediate~4_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~4_combout\ : std_logic;
SIGNAL \dec_inst|write_w~1_combout\ : std_logic;
SIGNAL \dec_inst|write_w~regout\ : std_logic;
SIGNAL \dec_inst|is_and~0_combout\ : std_logic;
SIGNAL \dec_inst|is_and~regout\ : std_logic;
SIGNAL \dec_inst|process_0~0_combout\ : std_logic;
SIGNAL \dec_inst|process_0~2_combout\ : std_logic;
SIGNAL \dec_inst|is_decr~regout\ : std_logic;
SIGNAL \wreg_inst|w_content[3]~4_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[3]~5_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~13_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~14_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[3]~3_combout\ : std_logic;
SIGNAL \wreg_inst|process_0~0_combout\ : std_logic;
SIGNAL \dec_inst|immediate~2_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~1_combout\ : std_logic;
SIGNAL \dec_inst|Equal1~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~4_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~2_combout\ : std_logic;
SIGNAL \dec_inst|Equal15~0_combout\ : std_logic;
SIGNAL \dec_inst|bit_set~regout\ : std_logic;
SIGNAL \dec_inst|immediate~1_combout\ : std_logic;
SIGNAL \wreg_inst|RESULT~2_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~9_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~10_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[1]~1_combout\ : std_logic;
SIGNAL \dec_inst|Equal5~0_combout\ : std_logic;
SIGNAL \dec_inst|Equal5~1_combout\ : std_logic;
SIGNAL \dec_inst|Equal1~1_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~3_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~8_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~7_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~regout\ : std_logic;
SIGNAL \dec_inst|reg_addr~3_combout\ : std_logic;
SIGNAL \dec_inst|reg_addr~5_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~6_combout\ : std_logic;
SIGNAL \dec_inst|bit_pos~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_write_en~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_write_en~regout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~0_combout\ : std_logic;
SIGNAL \dec_inst|read_w~2_combout\ : std_logic;
SIGNAL \dec_inst|read_w~regout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~1_combout\ : std_logic;
SIGNAL \wreg_inst|Equal0~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_to_ram~regout\ : std_logic;
SIGNAL \ram_inst|process_0~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][0]~21_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~2_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~3_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~19_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][0]~regout\ : std_logic;
SIGNAL \dec_inst|process_0~1_combout\ : std_logic;
SIGNAL \dec_inst|is_add~regout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[2]~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[2]~1_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~2_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~3_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data[0]~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][0]~18_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~1_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][0]~24_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][0]~regout\ : std_logic;
SIGNAL \ram_inst|Decoder1~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][0]~23_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~4_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~6_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~28_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][0]~regout\ : std_logic;
SIGNAL \ram_inst|Decoder1~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][0]~29_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~10_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~25_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][0]~27_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][0]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~12_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~1\ : std_logic;
SIGNAL \wreg_inst|Add0~2_combout\ : std_logic;
SIGNAL \wreg_inst|c_int~0_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~8_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~5_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~4_combout\ : std_logic;
SIGNAL \dec_inst|bit_pos~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~5_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~6_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][1]~47_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][1]~35_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~24_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~45_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~46_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][1]~regout\ : std_logic;
SIGNAL \ram_inst|Decoder1~0_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~22_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~23_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~25_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][1]~36_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[6][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~15_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~1_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][1]~33_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][1]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~17_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~26_combout\ : std_logic;
SIGNAL \wreg_inst|Add1~3_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~11_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~12_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[2]~2_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~3\ : std_logic;
SIGNAL \wreg_inst|Add0~4_combout\ : std_logic;
SIGNAL \wreg_inst|Add0~5\ : std_logic;
SIGNAL \wreg_inst|Add0~6_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~9_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~12_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~13_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][3]~76_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[3][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~14_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~49_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~50_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][3]~65_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~41_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~51_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~52_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][3]~68_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[9][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~42_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][3]~64_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~40_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~43_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~44_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~47_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][3]~72_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[15][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][3]~69_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[14][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][3]~70_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][3]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~45_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~46_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~48_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~53_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~9_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~10_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~56_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[2][2]~regout\ : std_logic;
SIGNAL \ram_inst|Decoder1~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~57_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[1][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~34_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~35_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~60_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[5][2]~regout\ : std_logic;
SIGNAL \ram_inst|Decoder1~15_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~62_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[7][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~37_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~38_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~7_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][2]~53_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[11][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~30_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][2]~54_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[10][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][2]~55_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[13][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~31_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][2]~52_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[8][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~29_combout\ : std_logic;
SIGNAL \ram_inst|Decoder1~3_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][2]~49_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[12][2]~regout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~27_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~32_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~33_combout\ : std_logic;
SIGNAL \ram_inst|reg_read_data~39_combout\ : std_logic;
SIGNAL \wreg_inst|pc_skip~2_combout\ : std_logic;
SIGNAL \wreg_inst|Mux0~1_combout\ : std_logic;
SIGNAL \wreg_inst|pc_skip~1_combout\ : std_logic;
SIGNAL \wreg_inst|pc_skip~3_combout\ : std_logic;
SIGNAL \wreg_inst|pc_skip~regout\ : std_logic;
SIGNAL \dec_inst|is_jump~0_combout\ : std_logic;
SIGNAL \dec_inst|is_jump~reg0_regout\ : std_logic;
SIGNAL \pc_inst|pc_int[1]~4_combout\ : std_logic;
SIGNAL \pc_inst|Add1~1\ : std_logic;
SIGNAL \pc_inst|Add1~2_combout\ : std_logic;
SIGNAL \pc_inst|Add0~0_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~5_combout\ : std_logic;
SIGNAL \pc_inst|pc_int[1]~3_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~6_combout\ : std_logic;
SIGNAL \pc_inst|Equal0~0_combout\ : std_logic;
SIGNAL \instr_inst|Mux6~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[2]~3_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[2]~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add0~1\ : std_logic;
SIGNAL \pc_inst|Add0~2_combout\ : std_logic;
SIGNAL \stack_int|idx[0]~1_combout\ : std_logic;
SIGNAL \stack_int|Equal0~0_combout\ : std_logic;
SIGNAL \stack_int|idx[0]~0_combout\ : std_logic;
SIGNAL \stack_int|Add1~1\ : std_logic;
SIGNAL \stack_int|Add1~3\ : std_logic;
SIGNAL \stack_int|Add1~4_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][2]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~0_combout\ : std_logic;
SIGNAL \stack_int|reset_scall~0_combout\ : std_logic;
SIGNAL \stack_int|reset_scall~1_combout\ : std_logic;
SIGNAL \stack_int|reset_scall~regout\ : std_logic;
SIGNAL \ram_inst|reg_array~15_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~16_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[4][2]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~1_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][2]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~3_combout\ : std_logic;
SIGNAL \stack_int|ret_addr[0]~1_combout\ : std_logic;
SIGNAL \pc_inst|Add1~3\ : std_logic;
SIGNAL \pc_inst|Add1~4_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~7_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~8_combout\ : std_logic;
SIGNAL \stack_int|Add1~5\ : std_logic;
SIGNAL \stack_int|Add1~6_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~2_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][3]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][3]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][3]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~4_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[3]~4_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[3]~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add0~3\ : std_logic;
SIGNAL \pc_inst|Add0~4_combout\ : std_logic;
SIGNAL \pc_inst|Add1~5\ : std_logic;
SIGNAL \pc_inst|Add1~6_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~9_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~10_combout\ : std_logic;
SIGNAL \instr_inst|Mux2~0_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~3_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~4_combout\ : std_logic;
SIGNAL \dec_inst|is_ret~reg0_regout\ : std_logic;
SIGNAL \pc_inst|Add1~0_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~1_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[0]~1_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[0]~reg0_regout\ : std_logic;
SIGNAL \stack_int|Add1~0_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][0]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][0]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~0_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~0_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~2_combout\ : std_logic;
SIGNAL \pc_inst|pc_int[1]~11_combout\ : std_logic;
SIGNAL \stack_int|Add1~7\ : std_logic;
SIGNAL \stack_int|Add1~8_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][4]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][4]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~5_combout\ : std_logic;
SIGNAL \pc_inst|Add1~7\ : std_logic;
SIGNAL \pc_inst|Add1~8_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~12_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~13_combout\ : std_logic;
SIGNAL \stack_int|Add1~9\ : std_logic;
SIGNAL \stack_int|Add1~10_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][5]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~6_combout\ : std_logic;
SIGNAL \pc_inst|Add0~5\ : std_logic;
SIGNAL \pc_inst|Add0~7\ : std_logic;
SIGNAL \pc_inst|Add0~8_combout\ : std_logic;
SIGNAL \pc_inst|Add1~9\ : std_logic;
SIGNAL \pc_inst|Add1~10_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~14_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~15_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[6]~6_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[6]~reg0_regout\ : std_logic;
SIGNAL \stack_int|Add1~11\ : std_logic;
SIGNAL \stack_int|Add1~12_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][6]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][6]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~7_combout\ : std_logic;
SIGNAL \pc_inst|Add1~11\ : std_logic;
SIGNAL \pc_inst|Add1~12_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~16_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~17_combout\ : std_logic;
SIGNAL \stack_int|Add1~13\ : std_logic;
SIGNAL \stack_int|Add1~14_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][7]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][7]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~8_combout\ : std_logic;
SIGNAL \pc_inst|Add1~13\ : std_logic;
SIGNAL \pc_inst|Add1~14_combout\ : std_logic;
SIGNAL \pc_inst|Add0~9\ : std_logic;
SIGNAL \pc_inst|Add0~11\ : std_logic;
SIGNAL \pc_inst|Add0~12_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~18_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~19_combout\ : std_logic;
SIGNAL \stack_int|Add1~15\ : std_logic;
SIGNAL \stack_int|Add1~16_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][8]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~9_combout\ : std_logic;
SIGNAL \pc_inst|Add1~15\ : std_logic;
SIGNAL \pc_inst|Add1~16_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~20_combout\ : std_logic;
SIGNAL \pc_inst|pc_int~21_combout\ : std_logic;
SIGNAL \dec_inst|immediate~0_combout\ : std_logic;
SIGNAL \wreg_inst|reg_write_data~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_array~8_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~11_combout\ : std_logic;
SIGNAL \ram_inst|reg_array[0][2]~regout\ : std_logic;
SIGNAL \wreg_inst|w_content~6_combout\ : std_logic;
SIGNAL \wreg_inst|w_content~7_combout\ : std_logic;
SIGNAL \wreg_inst|w_content[0]~0_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[5]~5_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[5]~reg0_regout\ : std_logic;
SIGNAL \dec_inst|jump_addr[7]~7_combout\ : std_logic;
SIGNAL \dec_inst|jump_addr[7]~reg0_regout\ : std_logic;
SIGNAL \wreg_inst|c_int~1_combout\ : std_logic;
SIGNAL \wreg_inst|c_int~regout\ : std_logic;
SIGNAL \wreg_inst|z_int~10_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~11_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~12_combout\ : std_logic;
SIGNAL \wreg_inst|z_int~regout\ : std_logic;
SIGNAL \stack_int|Add1~2_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][1]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][1]~regout\ : std_logic;
SIGNAL \stack_int|ret_addr~2_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][5]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][6]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[0][8]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[0][8]~regout\ : std_logic;
SIGNAL \stack_int|stack_int[1][2]~feeder_combout\ : std_logic;
SIGNAL \stack_int|stack_int[1][2]~regout\ : std_logic;
SIGNAL \stack_int|Add2~0_combout\ : std_logic;
SIGNAL \dec_inst|reg_read_en~6_combout\ : std_logic;
SIGNAL \dec_inst|bit_test~regout\ : std_logic;
SIGNAL \dec_inst|immediate\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_inst|pc_int\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ram_inst|reg_read_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wreg_inst|reg_write_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_inst|instruction\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \pipe_inst|state_mem\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dec_inst|bit_pos\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \stack_int|idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dec_inst|reg_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \stack_int|ret_addr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \wreg_inst|w_content\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_c0~clkctrl_outclk\ : std_logic;

BEGIN

ww_c0 <= c0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \c0~combout\);
\ALT_INV_c0~clkctrl_outclk\ <= NOT \c0~clkctrl_outclk\;

-- Location: LCCOMB_X48_Y21_N16
\pc_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~6_combout\ = (\pc_inst|pc_int\(4) & (!\pc_inst|Add0~5\)) # (!\pc_inst|pc_int\(4) & ((\pc_inst|Add0~5\) # (GND)))
-- \pc_inst|Add0~7\ = CARRY((!\pc_inst|Add0~5\) # (!\pc_inst|pc_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(4),
	datad => VCC,
	cin => \pc_inst|Add0~5\,
	combout => \pc_inst|Add0~6_combout\,
	cout => \pc_inst|Add0~7\);

-- Location: LCCOMB_X48_Y21_N20
\pc_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~10_combout\ = (\pc_inst|pc_int\(6) & (!\pc_inst|Add0~9\)) # (!\pc_inst|pc_int\(6) & ((\pc_inst|Add0~9\) # (GND)))
-- \pc_inst|Add0~11\ = CARRY((!\pc_inst|Add0~9\) # (!\pc_inst|pc_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(6),
	datad => VCC,
	cin => \pc_inst|Add0~9\,
	combout => \pc_inst|Add0~10_combout\,
	cout => \pc_inst|Add0~11\);

-- Location: LCCOMB_X48_Y21_N22
\pc_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~12_combout\ = (\pc_inst|pc_int\(7) & (\pc_inst|Add0~11\ $ (GND))) # (!\pc_inst|pc_int\(7) & (!\pc_inst|Add0~11\ & VCC))
-- \pc_inst|Add0~13\ = CARRY((\pc_inst|pc_int\(7) & !\pc_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(7),
	datad => VCC,
	cin => \pc_inst|Add0~11\,
	combout => \pc_inst|Add0~12_combout\,
	cout => \pc_inst|Add0~13\);

-- Location: LCCOMB_X48_Y21_N24
\pc_inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~14_combout\ = \pc_inst|Add0~13\ $ (\pc_inst|pc_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_inst|pc_int\(8),
	cin => \pc_inst|Add0~13\,
	combout => \pc_inst|Add0~14_combout\);

-- Location: LCCOMB_X46_Y23_N24
\wreg_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~6_combout\ = (\wreg_inst|w_content\(3) & ((\ram_inst|reg_read_data\(3) & (\wreg_inst|Add0~5\ & VCC)) # (!\ram_inst|reg_read_data\(3) & (!\wreg_inst|Add0~5\)))) # (!\wreg_inst|w_content\(3) & ((\ram_inst|reg_read_data\(3) & 
-- (!\wreg_inst|Add0~5\)) # (!\ram_inst|reg_read_data\(3) & ((\wreg_inst|Add0~5\) # (GND)))))
-- \wreg_inst|Add0~7\ = CARRY((\wreg_inst|w_content\(3) & (!\ram_inst|reg_read_data\(3) & !\wreg_inst|Add0~5\)) # (!\wreg_inst|w_content\(3) & ((!\wreg_inst|Add0~5\) # (!\ram_inst|reg_read_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(3),
	datab => \ram_inst|reg_read_data\(3),
	datad => VCC,
	cin => \wreg_inst|Add0~5\,
	combout => \wreg_inst|Add0~6_combout\,
	cout => \wreg_inst|Add0~7\);

-- Location: LCCOMB_X46_Y23_N26
\wreg_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~8_combout\ = !\wreg_inst|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \wreg_inst|Add0~7\,
	combout => \wreg_inst|Add0~8_combout\);

-- Location: LCCOMB_X47_Y23_N12
\wreg_inst|pc_skip~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|pc_skip~0_combout\ = (!\dec_inst|read_w~regout\ & (!\dec_inst|is_and~regout\ & !\dec_inst|is_add~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \dec_inst|is_and~regout\,
	datad => \dec_inst|is_add~regout\,
	combout => \wreg_inst|pc_skip~0_combout\);

-- Location: LCCOMB_X47_Y23_N6
\wreg_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Mux0~0_combout\ = (\dec_inst|bit_pos\(0) & ((\dec_inst|bit_pos\(1)) # ((\ram_inst|reg_read_data\(1))))) # (!\dec_inst|bit_pos\(0) & (!\dec_inst|bit_pos\(1) & ((\ram_inst|reg_read_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|bit_pos\(0),
	datab => \dec_inst|bit_pos\(1),
	datac => \ram_inst|reg_read_data\(1),
	datad => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|Mux0~0_combout\);

-- Location: LCFF_X44_Y20_N17
\ram_inst|reg_array[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[14][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[14][0]~regout\);

-- Location: LCFF_X44_Y20_N15
\ram_inst|reg_array[9][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[9][0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[9][0]~regout\);

-- Location: LCFF_X44_Y20_N27
\ram_inst|reg_array[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[11][0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[11][0]~regout\);

-- Location: LCFF_X46_Y20_N5
\ram_inst|reg_array[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][0]~regout\);

-- Location: LCFF_X44_Y20_N21
\ram_inst|reg_array[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][0]~regout\);

-- Location: LCFF_X44_Y20_N9
\ram_inst|reg_array[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][0]~regout\);

-- Location: LCFF_X45_Y21_N17
\ram_inst|reg_array[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][1]~regout\);

-- Location: LCFF_X45_Y21_N9
\ram_inst|reg_array[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][1]~regout\);

-- Location: LCFF_X45_Y21_N29
\ram_inst|reg_array[9][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[9][1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[9][1]~regout\);

-- Location: LCFF_X45_Y21_N7
\ram_inst|reg_array[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[14][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[14][1]~regout\);

-- Location: LCFF_X45_Y21_N5
\ram_inst|reg_array[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][1]~regout\);

-- Location: LCFF_X45_Y21_N11
\ram_inst|reg_array[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[12][1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[12][1]~regout\);

-- Location: LCCOMB_X44_Y21_N12
\ram_inst|reg_read_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~18_combout\ = (\dec_inst|reg_addr\(1) & (((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & ((\dec_inst|reg_addr\(0) & (\ram_inst|reg_array[13][1]~regout\)) # (!\dec_inst|reg_addr\(0) & 
-- ((\ram_inst|reg_array[12][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[13][1]~regout\,
	datab => \ram_inst|reg_array[12][1]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~18_combout\);

-- Location: LCFF_X44_Y21_N3
\ram_inst|reg_array[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][1]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][1]~regout\);

-- Location: LCCOMB_X44_Y21_N8
\ram_inst|reg_read_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~19_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~18_combout\ & ((\ram_inst|reg_array[15][1]~regout\))) # (!\ram_inst|reg_read_data~18_combout\ & (\ram_inst|reg_array[14][1]~regout\)))) # (!\dec_inst|reg_addr\(1) & 
-- (((\ram_inst|reg_read_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[14][1]~regout\,
	datab => \ram_inst|reg_array[15][1]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_read_data~18_combout\,
	combout => \ram_inst|reg_read_data~19_combout\);

-- Location: LCFF_X45_Y21_N1
\ram_inst|reg_array[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][1]~regout\);

-- Location: LCCOMB_X44_Y21_N6
\ram_inst|reg_read_data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~20_combout\ = (\ram_inst|reg_read_data~13_combout\ & ((\ram_inst|reg_array[7][1]~regout\) # (!\dec_inst|reg_addr\(1)))) # (!\ram_inst|reg_read_data~13_combout\ & ((\dec_inst|reg_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[7][1]~regout\,
	datac => \ram_inst|reg_read_data~13_combout\,
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~20_combout\);

-- Location: LCCOMB_X44_Y21_N0
\ram_inst|reg_read_data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~21_combout\ = (\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~19_combout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datac => \ram_inst|reg_read_data~19_combout\,
	datad => \ram_inst|reg_read_data~20_combout\,
	combout => \ram_inst|reg_read_data~21_combout\);

-- Location: LCFF_X45_Y21_N23
\ram_inst|reg_array[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][1]~regout\);

-- Location: LCFF_X45_Y21_N21
\ram_inst|reg_array[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][1]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][1]~regout\);

-- Location: LCFF_X45_Y22_N27
\ram_inst|reg_array[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[14][2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[14][2]~regout\);

-- Location: LCFF_X44_Y22_N1
\ram_inst|reg_array[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][2]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][2]~regout\);

-- Location: LCCOMB_X43_Y22_N8
\ram_inst|reg_read_data~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~28_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[15][2]~regout\) # (!\ram_inst|reg_read_data~27_combout\))) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[15][2]~regout\,
	datad => \ram_inst|reg_read_data~27_combout\,
	combout => \ram_inst|reg_read_data~28_combout\);

-- Location: LCFF_X45_Y22_N7
\ram_inst|reg_array[9][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[9][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[9][2]~regout\);

-- Location: LCFF_X45_Y22_N17
\ram_inst|reg_array[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array~59_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][2]~regout\);

-- Location: LCFF_X44_Y22_N3
\ram_inst|reg_array[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][2]~regout\);

-- Location: LCCOMB_X44_Y22_N12
\ram_inst|reg_read_data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~36_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[6][2]~regout\))) # (!\dec_inst|reg_addr\(1) & 
-- (\ram_inst|reg_array[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][2]~regout\,
	datab => \ram_inst|reg_array[6][2]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~36_combout\);

-- Location: LCFF_X45_Y20_N9
\ram_inst|reg_array[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][3]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][3]~regout\);

-- Location: LCFF_X45_Y20_N15
\ram_inst|reg_array[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][3]~regout\);

-- Location: LCFF_X45_Y20_N21
\ram_inst|reg_array[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][3]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][3]~regout\);

-- Location: LCFF_X45_Y20_N17
\ram_inst|reg_array[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[12][3]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[12][3]~regout\);

-- Location: LCFF_X46_Y20_N31
\ram_inst|reg_array[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][3]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][3]~regout\);

-- Location: LCFF_X46_Y20_N29
\ram_inst|reg_array[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][3]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][3]~regout\);

-- Location: LCFF_X45_Y20_N31
\ram_inst|reg_array[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][3]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][3]~regout\);

-- Location: LCFF_X46_Y20_N13
\ram_inst|reg_array[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[11][3]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[11][3]~regout\);

-- Location: LCCOMB_X46_Y23_N4
\wreg_inst|RESULT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~0_combout\ = (\wreg_inst|w_content\(2) & \ram_inst|reg_read_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(2),
	datad => \ram_inst|reg_read_data\(2),
	combout => \wreg_inst|RESULT~0_combout\);

-- Location: LCCOMB_X46_Y23_N10
\wreg_inst|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~1_combout\ = \ram_inst|reg_read_data\(2) $ (((\ram_inst|reg_read_data\(1)) # (\ram_inst|reg_read_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_read_data\(1),
	datac => \ram_inst|reg_read_data\(0),
	datad => \ram_inst|reg_read_data\(2),
	combout => \wreg_inst|Add1~1_combout\);

-- Location: LCCOMB_X46_Y23_N16
\wreg_inst|reg_write_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~7_combout\ = (\wreg_inst|reg_write_data[2]~0_combout\ & (((\wreg_inst|reg_write_data[2]~1_combout\)))) # (!\wreg_inst|reg_write_data[2]~0_combout\ & ((\wreg_inst|reg_write_data[2]~1_combout\ & ((\wreg_inst|RESULT~0_combout\))) # 
-- (!\wreg_inst|reg_write_data[2]~1_combout\ & (!\wreg_inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add1~1_combout\,
	datab => \wreg_inst|RESULT~0_combout\,
	datac => \wreg_inst|reg_write_data[2]~0_combout\,
	datad => \wreg_inst|reg_write_data[2]~1_combout\,
	combout => \wreg_inst|reg_write_data~7_combout\);

-- Location: LCCOMB_X44_Y23_N12
\wreg_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~2_combout\ = \ram_inst|reg_read_data\(3) $ (((\ram_inst|reg_read_data\(2)) # ((\ram_inst|reg_read_data\(1)) # (\ram_inst|reg_read_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datab => \ram_inst|reg_read_data\(1),
	datac => \ram_inst|reg_read_data\(0),
	datad => \ram_inst|reg_read_data\(3),
	combout => \wreg_inst|Add1~2_combout\);

-- Location: LCCOMB_X45_Y23_N6
\wreg_inst|RESULT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~1_combout\ = (\wreg_inst|w_content\(0) & \ram_inst|reg_read_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_content\(0),
	datad => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|RESULT~1_combout\);

-- Location: LCCOMB_X44_Y23_N26
\wreg_inst|RESULT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~3_combout\ = (\wreg_inst|w_content\(1) & \ram_inst|reg_read_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(1),
	datac => \ram_inst|reg_read_data\(1),
	combout => \wreg_inst|RESULT~3_combout\);

-- Location: LCCOMB_X45_Y23_N26
\wreg_inst|z_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~6_combout\ = (!\wreg_inst|RESULT~2_combout\ & (!\wreg_inst|RESULT~4_combout\ & ((!\dec_inst|immediate\(2)) # (!\wreg_inst|w_content\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(2),
	datab => \wreg_inst|RESULT~2_combout\,
	datac => \wreg_inst|RESULT~4_combout\,
	datad => \dec_inst|immediate\(2),
	combout => \wreg_inst|z_int~6_combout\);

-- Location: LCCOMB_X45_Y23_N24
\wreg_inst|z_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~7_combout\ = (\dec_inst|write_w~regout\ & (\dec_inst|immediate\(0))) # (!\dec_inst|write_w~regout\ & ((\ram_inst|reg_read_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|write_w~regout\,
	datac => \dec_inst|immediate\(0),
	datad => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|z_int~7_combout\);

-- Location: LCCOMB_X45_Y23_N22
\wreg_inst|z_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~8_combout\ = (\dec_inst|is_and~regout\ & (!\dec_inst|is_add~regout\ & ((!\wreg_inst|w_content\(0)) # (!\wreg_inst|z_int~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|z_int~7_combout\,
	datab => \dec_inst|is_and~regout\,
	datac => \wreg_inst|w_content\(0),
	datad => \dec_inst|is_add~regout\,
	combout => \wreg_inst|z_int~8_combout\);

-- Location: LCCOMB_X45_Y23_N20
\wreg_inst|z_int~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~9_combout\ = (\wreg_inst|z_int~8_combout\ & ((\dec_inst|write_w~regout\ & ((\wreg_inst|z_int~6_combout\))) # (!\dec_inst|write_w~regout\ & (!\wreg_inst|z_int~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|write_w~regout\,
	datab => \wreg_inst|z_int~8_combout\,
	datac => \wreg_inst|z_int~13_combout\,
	datad => \wreg_inst|z_int~6_combout\,
	combout => \wreg_inst|z_int~9_combout\);

-- Location: LCCOMB_X43_Y22_N18
\ram_inst|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~2_combout\ = (\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~2_combout\);

-- Location: LCCOMB_X44_Y20_N16
\ram_inst|reg_array[14][0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[14][0]~17_combout\ = (\ram_inst|Decoder1~2_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[14][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~2_combout\ & (((\ram_inst|reg_array[14][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~2_combout\,
	datac => \ram_inst|reg_array[14][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[14][0]~17_combout\);

-- Location: LCCOMB_X43_Y22_N24
\ram_inst|Decoder1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~5_combout\ = (!\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(1) & (\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~5_combout\);

-- Location: LCCOMB_X44_Y20_N14
\ram_inst|reg_array[9][0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[9][0]~20_combout\ = (\ram_inst|Decoder1~5_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[9][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~5_combout\ & (((\ram_inst|reg_array[9][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~5_combout\,
	datac => \ram_inst|reg_array[9][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[9][0]~20_combout\);

-- Location: LCCOMB_X44_Y20_N26
\ram_inst|reg_array[11][0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[11][0]~22_combout\ = (\ram_inst|Decoder1~7_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[11][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~7_combout\ & (((\ram_inst|reg_array[11][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~7_combout\,
	datac => \ram_inst|reg_array[11][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[11][0]~22_combout\);

-- Location: LCCOMB_X46_Y20_N4
\ram_inst|reg_array[1][0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][0]~26_combout\ = (\ram_inst|Decoder1~11_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[1][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~11_combout\ & (((\ram_inst|reg_array[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~11_combout\,
	datac => \ram_inst|reg_array[1][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[1][0]~26_combout\);

-- Location: LCCOMB_X43_Y22_N30
\ram_inst|Decoder1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~12_combout\ = (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(1) & (\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~12_combout\);

-- Location: LCCOMB_X44_Y20_N20
\ram_inst|reg_array[4][0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][0]~30_combout\ = (\ram_inst|Decoder1~1_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[4][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~1_combout\ & (((\ram_inst|reg_array[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~1_combout\,
	datab => \ram_inst|reg_array~0_combout\,
	datac => \ram_inst|reg_array[4][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[4][0]~30_combout\);

-- Location: LCCOMB_X44_Y20_N8
\ram_inst|reg_array[7][0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][0]~31_combout\ = (\ram_inst|Decoder1~15_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[7][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~15_combout\ & (((\ram_inst|reg_array[7][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~15_combout\,
	datac => \ram_inst|reg_array[7][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[7][0]~31_combout\);

-- Location: LCCOMB_X45_Y21_N16
\ram_inst|reg_array[5][1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][1]~32_combout\ = (\ram_inst|Decoder1~13_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[5][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~13_combout\ & (((\ram_inst|reg_array[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~4_combout\,
	datab => \ram_inst|Decoder1~13_combout\,
	datac => \ram_inst|reg_array[5][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[5][1]~32_combout\);

-- Location: LCCOMB_X45_Y21_N8
\ram_inst|reg_array[10][1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][1]~34_combout\ = (\ram_inst|Decoder1~8_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[10][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~8_combout\ & (((\ram_inst|reg_array[10][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~8_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[10][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[10][1]~34_combout\);

-- Location: LCCOMB_X45_Y21_N28
\ram_inst|reg_array[9][1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[9][1]~37_combout\ = (\ram_inst|Decoder1~5_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[9][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~5_combout\ & (((\ram_inst|reg_array[9][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~5_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[9][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[9][1]~37_combout\);

-- Location: LCCOMB_X45_Y21_N6
\ram_inst|reg_array[14][1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[14][1]~38_combout\ = (\ram_inst|Decoder1~2_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[14][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~2_combout\ & (((\ram_inst|reg_array[14][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~2_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[14][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[14][1]~38_combout\);

-- Location: LCCOMB_X45_Y21_N4
\ram_inst|reg_array[13][1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][1]~39_combout\ = (\ram_inst|Decoder1~9_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[13][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~9_combout\ & (((\ram_inst|reg_array[13][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~9_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[13][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[13][1]~39_combout\);

-- Location: LCCOMB_X45_Y21_N10
\ram_inst|reg_array[12][1]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[12][1]~40_combout\ = (\ram_inst|Decoder1~3_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[12][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~3_combout\ & (((\ram_inst|reg_array[12][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~4_combout\,
	datab => \ram_inst|Decoder1~3_combout\,
	datac => \ram_inst|reg_array[12][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[12][1]~40_combout\);

-- Location: LCCOMB_X44_Y21_N2
\ram_inst|reg_array[15][1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][1]~41_combout\ = (\ram_inst|Decoder1~4_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[15][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~4_combout\ & (((\ram_inst|reg_array[15][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~4_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[15][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[15][1]~41_combout\);

-- Location: LCCOMB_X45_Y21_N0
\ram_inst|reg_array[7][1]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][1]~42_combout\ = (\ram_inst|Decoder1~15_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[7][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~15_combout\ & (((\ram_inst|reg_array[7][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~4_combout\,
	datab => \ram_inst|Decoder1~15_combout\,
	datac => \ram_inst|reg_array[7][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[7][1]~42_combout\);

-- Location: LCCOMB_X45_Y21_N22
\ram_inst|reg_array[1][1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][1]~43_combout\ = (\ram_inst|Decoder1~11_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[1][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~11_combout\ & (((\ram_inst|reg_array[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~11_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[1][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[1][1]~43_combout\);

-- Location: LCCOMB_X45_Y21_N20
\ram_inst|reg_array[2][1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][1]~44_combout\ = (\ram_inst|Decoder1~10_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[2][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~10_combout\ & (((\ram_inst|reg_array[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~10_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[2][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[2][1]~44_combout\);

-- Location: LCCOMB_X45_Y22_N26
\ram_inst|reg_array[14][2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[14][2]~48_combout\ = (\ram_inst|Decoder1~2_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[14][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~2_combout\ & (((\ram_inst|reg_array[14][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~2_combout\,
	datac => \ram_inst|reg_array[14][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[14][2]~48_combout\);

-- Location: LCCOMB_X44_Y22_N0
\ram_inst|reg_array[15][2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][2]~50_combout\ = (\ram_inst|Decoder1~4_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[15][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~4_combout\ & (((\ram_inst|reg_array[15][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~4_combout\,
	datab => \ram_inst|reg_array~8_combout\,
	datac => \ram_inst|reg_array[15][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[15][2]~50_combout\);

-- Location: LCCOMB_X45_Y22_N6
\ram_inst|reg_array[9][2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[9][2]~51_combout\ = (\ram_inst|Decoder1~5_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[9][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~5_combout\ & (((\ram_inst|reg_array[9][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~5_combout\,
	datac => \ram_inst|reg_array[9][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[9][2]~51_combout\);

-- Location: LCCOMB_X44_Y22_N18
\ram_inst|reg_array~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~58_combout\ = (\ram_inst|Decoder1~12_combout\ & (\ram_inst|reg_array[0][2]~9_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~12_combout\,
	datab => \ram_inst|reg_array[0][2]~9_combout\,
	datac => \dec_inst|reg_write_en~regout\,
	datad => \wreg_inst|w_to_ram~regout\,
	combout => \ram_inst|reg_array~58_combout\);

-- Location: LCCOMB_X45_Y22_N16
\ram_inst|reg_array~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~59_combout\ = (\ram_inst|reg_array~8_combout\ & ((\wreg_inst|z_int~regout\) # ((!\ram_inst|reg_array[3][2]~regout\ & \ram_inst|reg_array~58_combout\)))) # (!\ram_inst|reg_array~8_combout\ & (\wreg_inst|z_int~regout\ & 
-- ((!\ram_inst|reg_array~58_combout\) # (!\ram_inst|reg_array[3][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \wreg_inst|z_int~regout\,
	datac => \ram_inst|reg_array[3][2]~regout\,
	datad => \ram_inst|reg_array~58_combout\,
	combout => \ram_inst|reg_array~59_combout\);

-- Location: LCCOMB_X44_Y22_N2
\ram_inst|reg_array[6][2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][2]~61_combout\ = (\ram_inst|Decoder1~14_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[6][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~14_combout\ & (((\ram_inst|reg_array[6][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~14_combout\,
	datab => \ram_inst|reg_array~8_combout\,
	datac => \ram_inst|reg_array[6][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[6][2]~61_combout\);

-- Location: LCCOMB_X45_Y20_N8
\ram_inst|reg_array[5][3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][3]~63_combout\ = (\ram_inst|Decoder1~13_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[5][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~13_combout\ & (((\ram_inst|reg_array[5][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~13_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[5][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[5][3]~63_combout\);

-- Location: LCCOMB_X45_Y20_N14
\ram_inst|reg_array[8][3]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][3]~66_combout\ = (\ram_inst|Decoder1~6_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[8][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~6_combout\ & (((\ram_inst|reg_array[8][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~6_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[8][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[8][3]~66_combout\);

-- Location: LCCOMB_X45_Y20_N20
\ram_inst|reg_array[6][3]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][3]~67_combout\ = (\ram_inst|Decoder1~14_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[6][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~14_combout\ & (((\ram_inst|reg_array[6][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~14_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[6][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[6][3]~67_combout\);

-- Location: LCCOMB_X45_Y20_N16
\ram_inst|reg_array[12][3]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[12][3]~71_combout\ = (\ram_inst|Decoder1~3_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[12][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~3_combout\ & (((\ram_inst|reg_array[12][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~3_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[12][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[12][3]~71_combout\);

-- Location: LCCOMB_X46_Y20_N30
\ram_inst|reg_array[7][3]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][3]~73_combout\ = (\ram_inst|Decoder1~15_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[7][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~15_combout\ & (((\ram_inst|reg_array[7][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~12_combout\,
	datab => \ram_inst|Decoder1~15_combout\,
	datac => \ram_inst|reg_array[7][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[7][3]~73_combout\);

-- Location: LCCOMB_X46_Y20_N28
\ram_inst|reg_array[1][3]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][3]~74_combout\ = (\ram_inst|Decoder1~11_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[1][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~11_combout\ & (((\ram_inst|reg_array[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~12_combout\,
	datab => \ram_inst|Decoder1~11_combout\,
	datac => \ram_inst|reg_array[1][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[1][3]~74_combout\);

-- Location: LCCOMB_X45_Y20_N30
\ram_inst|reg_array[2][3]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][3]~75_combout\ = (\ram_inst|Decoder1~10_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[2][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~10_combout\ & (((\ram_inst|reg_array[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~10_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[2][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[2][3]~75_combout\);

-- Location: LCCOMB_X46_Y20_N12
\ram_inst|reg_array[11][3]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[11][3]~77_combout\ = (\ram_inst|Decoder1~7_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[11][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~7_combout\ & (((\ram_inst|reg_array[11][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~12_combout\,
	datab => \ram_inst|Decoder1~7_combout\,
	datac => \ram_inst|reg_array[11][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[11][3]~77_combout\);

-- Location: LCCOMB_X44_Y23_N0
\wreg_inst|z_int~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~13_combout\ = (\wreg_inst|RESULT~3_combout\) # ((\wreg_inst|RESULT~5_combout\) # ((\ram_inst|reg_read_data\(2) & \wreg_inst|w_content\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datab => \wreg_inst|RESULT~3_combout\,
	datac => \wreg_inst|w_content\(2),
	datad => \wreg_inst|RESULT~5_combout\,
	combout => \wreg_inst|z_int~13_combout\);

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

-- Location: LCCOMB_X47_Y21_N10
\instr_inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux7~0_combout\ = (\pc_inst|pc_int\(0) & (\pc_inst|pc_int\(3) & ((!\pc_inst|pc_int\(2))))) # (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3) & ((\pc_inst|pc_int\(1)) # (\pc_inst|pc_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux7~0_combout\);

-- Location: LCCOMB_X47_Y20_N14
\pipe_inst|state_mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~2_combout\ = (\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2))) # (!\pipe_inst|state_mem\(1) & ((\pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~2_combout\);

-- Location: LCFF_X46_Y20_N15
\pipe_inst|state_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(2));

-- Location: LCCOMB_X47_Y20_N16
\pipe_inst|state_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~0_combout\ = (!\pipe_inst|state_mem\(0) & ((!\pipe_inst|state_mem\(2)) # (!\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~0_combout\);

-- Location: LCFF_X46_Y20_N7
\pipe_inst|state_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(0));

-- Location: LCCOMB_X47_Y20_N8
\pipe_inst|state_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pipe_inst|state_mem~1_combout\ = (\pipe_inst|state_mem\(1) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2))) # (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pipe_inst|state_mem~1_combout\);

-- Location: LCFF_X46_Y20_N1
\pipe_inst|state_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \c0~clkctrl_outclk\,
	sdata => \pipe_inst|state_mem~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pipe_inst|state_mem\(1));

-- Location: LCCOMB_X47_Y21_N18
\instr_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \instr_inst|Equal0~0_combout\);

-- Location: LCFF_X47_Y21_N11
\instr_inst|instruction[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux7~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(1));

-- Location: LCCOMB_X47_Y21_N24
\instr_inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux4~0_combout\ = (\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3) & (\pc_inst|pc_int\(1) & !\pc_inst|pc_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux4~0_combout\);

-- Location: LCFF_X47_Y21_N25
\instr_inst|instruction[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux4~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(5));

-- Location: LCCOMB_X47_Y21_N20
\instr_inst|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux8~0_combout\ = (\pc_inst|pc_int\(2) & (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3)))) # (!\pc_inst|pc_int\(2) & (!\pc_inst|pc_int\(1) & (\pc_inst|pc_int\(0) $ (!\pc_inst|pc_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux8~0_combout\);

-- Location: LCFF_X47_Y21_N21
\instr_inst|instruction[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux8~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(0));

-- Location: LCCOMB_X48_Y22_N16
\dec_inst|is_ret~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~1_combout\ = (\instr_inst|instruction\(7)) # ((\instr_inst|instruction\(1) & ((\instr_inst|instruction\(2)) # (!\instr_inst|instruction\(0)))) # (!\instr_inst|instruction\(1) & (\instr_inst|instruction\(2) $ 
-- (\instr_inst|instruction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(2),
	datad => \instr_inst|instruction\(0),
	combout => \dec_inst|is_ret~1_combout\);

-- Location: LCCOMB_X47_Y21_N6
\instr_inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux1~0_combout\ = (\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(2) & ((!\pc_inst|pc_int\(1)) # (!\pc_inst|pc_int\(3))))) # (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3) & (!\pc_inst|pc_int\(1) & \pc_inst|pc_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux1~0_combout\);

-- Location: LCFF_X47_Y21_N7
\instr_inst|instruction[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux1~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(8));

-- Location: LCCOMB_X47_Y21_N16
\instr_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux0~0_combout\ = (\pc_inst|pc_int\(1)) # ((\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3))) # (!\pc_inst|pc_int\(0) & ((!\pc_inst|pc_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux0~0_combout\);

-- Location: LCFF_X47_Y21_N17
\instr_inst|instruction[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux0~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(10));

-- Location: LCCOMB_X47_Y21_N2
\instr_inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux3~0_combout\ = (!\pc_inst|pc_int\(1) & ((\pc_inst|pc_int\(0) & (\pc_inst|pc_int\(3) & !\pc_inst|pc_int\(2))) # (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3) & \pc_inst|pc_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux3~0_combout\);

-- Location: LCFF_X47_Y21_N3
\instr_inst|instruction[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux3~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(6));

-- Location: LCCOMB_X49_Y22_N4
\dec_inst|write_w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|write_w~0_combout\ = (!\instr_inst|instruction\(8) & (\instr_inst|instruction\(10) & !\instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|write_w~0_combout\);

-- Location: LCCOMB_X48_Y22_N18
\dec_inst|is_ret~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~2_combout\ = (\instr_inst|instruction\(3)) # ((\instr_inst|instruction\(5)) # ((\dec_inst|is_ret~1_combout\) # (!\dec_inst|write_w~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(3),
	datab => \instr_inst|instruction\(5),
	datac => \dec_inst|is_ret~1_combout\,
	datad => \dec_inst|write_w~0_combout\,
	combout => \dec_inst|is_ret~2_combout\);

-- Location: LCCOMB_X47_Y22_N0
\dec_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(1) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datab => \pipe_inst|state_mem\(1),
	datad => \pipe_inst|state_mem\(2),
	combout => \dec_inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y22_N10
\dec_inst|jump_addr[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[0]~0_combout\ = (\instr_inst|instruction\(8)) # (((\instr_inst|instruction\(10)) # (!\dec_inst|Equal0~0_combout\)) # (!\dec_inst|is_ret~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \dec_inst|is_ret~2_combout\,
	datac => \instr_inst|instruction\(10),
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|jump_addr[0]~0_combout\);

-- Location: LCCOMB_X47_Y22_N26
\dec_inst|jump_addr[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[1]~2_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[1]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(1),
	datac => \dec_inst|jump_addr[1]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[1]~2_combout\);

-- Location: LCFF_X47_Y22_N27
\dec_inst|jump_addr[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[1]~reg0_regout\);

-- Location: LCCOMB_X44_Y23_N18
\wreg_inst|RESULT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~5_combout\ = (\wreg_inst|w_content\(3) & \ram_inst|reg_read_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|w_content\(3),
	datad => \ram_inst|reg_read_data\(3),
	combout => \wreg_inst|RESULT~5_combout\);

-- Location: LCCOMB_X47_Y21_N26
\instr_inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux5~0_combout\ = (\pc_inst|pc_int\(1) & (\pc_inst|pc_int\(0) $ (!\pc_inst|pc_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux5~0_combout\);

-- Location: LCFF_X47_Y21_N27
\instr_inst|instruction[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux5~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(3));

-- Location: LCCOMB_X49_Y22_N20
\dec_inst|immediate~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~3_combout\ = (\instr_inst|instruction\(10) & (!\instr_inst|instruction\(8) & ((\instr_inst|instruction\(5)) # (\instr_inst|instruction\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(10),
	datac => \instr_inst|instruction\(8),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|immediate~3_combout\);

-- Location: LCCOMB_X49_Y22_N14
\dec_inst|immediate~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~4_combout\ = (!\instr_inst|instruction\(6) & (\instr_inst|instruction\(3) & (\dec_inst|immediate~3_combout\ & !\instr_inst|instruction\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(6),
	datab => \instr_inst|instruction\(3),
	datac => \dec_inst|immediate~3_combout\,
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|immediate~4_combout\);

-- Location: LCFF_X48_Y22_N31
\dec_inst|immediate[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|immediate~4_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(3));

-- Location: LCCOMB_X44_Y23_N30
\wreg_inst|RESULT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~4_combout\ = (\wreg_inst|w_content\(3) & \dec_inst|immediate\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|w_content\(3),
	datad => \dec_inst|immediate\(3),
	combout => \wreg_inst|RESULT~4_combout\);

-- Location: LCCOMB_X48_Y22_N14
\dec_inst|write_w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|write_w~1_combout\ = (\dec_inst|write_w~0_combout\ & ((\instr_inst|instruction\(7)) # (\instr_inst|instruction\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(5),
	datad => \dec_inst|write_w~0_combout\,
	combout => \dec_inst|write_w~1_combout\);

-- Location: LCFF_X47_Y22_N1
\dec_inst|write_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|write_w~1_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|write_w~regout\);

-- Location: LCCOMB_X47_Y22_N30
\dec_inst|is_and~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_and~0_combout\ = (\instr_inst|instruction\(5) & (!\instr_inst|instruction\(7) & (\instr_inst|instruction\(10) & !\instr_inst|instruction\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|is_and~0_combout\);

-- Location: LCFF_X47_Y22_N31
\dec_inst|is_and\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_and~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_and~regout\);

-- Location: LCCOMB_X47_Y22_N24
\dec_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|process_0~0_combout\ = (\instr_inst|instruction\(6) & \instr_inst|instruction\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(6),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|process_0~0_combout\);

-- Location: LCCOMB_X48_Y22_N20
\dec_inst|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|process_0~2_combout\ = (\instr_inst|instruction\(5) & (\dec_inst|process_0~0_combout\ & (\instr_inst|instruction\(10) & \instr_inst|instruction\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \dec_inst|process_0~0_combout\,
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|process_0~2_combout\);

-- Location: LCFF_X48_Y22_N21
\dec_inst|is_decr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|process_0~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_decr~regout\);

-- Location: LCCOMB_X47_Y23_N8
\wreg_inst|w_content[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[3]~4_combout\ = (\dec_inst|write_w~regout\ & ((\dec_inst|is_and~regout\) # (!\dec_inst|is_decr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \dec_inst|is_decr~regout\,
	combout => \wreg_inst|w_content[3]~4_combout\);

-- Location: LCCOMB_X47_Y23_N26
\wreg_inst|w_content[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[3]~5_combout\ = (\dec_inst|is_decr~regout\) # ((\dec_inst|write_w~regout\ & \dec_inst|is_and~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \dec_inst|is_decr~regout\,
	combout => \wreg_inst|w_content[3]~5_combout\);

-- Location: LCCOMB_X44_Y23_N4
\wreg_inst|w_content~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~13_combout\ = (\wreg_inst|w_content[3]~4_combout\ & ((\dec_inst|immediate\(3)) # ((\wreg_inst|w_content[3]~5_combout\)))) # (!\wreg_inst|w_content[3]~4_combout\ & (((\ram_inst|reg_read_data\(3) & 
-- !\wreg_inst|w_content[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(3),
	datab => \ram_inst|reg_read_data\(3),
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~13_combout\);

-- Location: LCCOMB_X44_Y23_N8
\wreg_inst|w_content~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~14_combout\ = (\wreg_inst|w_content~13_combout\ & (((\wreg_inst|RESULT~4_combout\) # (!\wreg_inst|w_content[3]~5_combout\)))) # (!\wreg_inst|w_content~13_combout\ & (!\wreg_inst|Add1~2_combout\ & 
-- ((\wreg_inst|w_content[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add1~2_combout\,
	datab => \wreg_inst|RESULT~4_combout\,
	datac => \wreg_inst|w_content~13_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~14_combout\);

-- Location: LCCOMB_X45_Y23_N14
\wreg_inst|w_content[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[3]~3_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~5_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|process_0~0_combout\,
	datab => \wreg_inst|RESULT~5_combout\,
	datad => \wreg_inst|w_content~14_combout\,
	combout => \wreg_inst|w_content[3]~3_combout\);

-- Location: LCCOMB_X45_Y23_N8
\wreg_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|process_0~0_combout\ = (!\dec_inst|write_w~regout\ & \dec_inst|is_and~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|write_w~regout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|process_0~0_combout\);

-- Location: LCCOMB_X47_Y22_N22
\dec_inst|immediate~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~2_combout\ = (\instr_inst|instruction\(2) & (\dec_inst|write_w~1_combout\ & \dec_inst|is_ret~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(2),
	datac => \dec_inst|write_w~1_combout\,
	datad => \dec_inst|is_ret~2_combout\,
	combout => \dec_inst|immediate~2_combout\);

-- Location: LCFF_X47_Y22_N23
\dec_inst|immediate[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(2));

-- Location: LCCOMB_X49_Y22_N28
\dec_inst|reg_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~0_combout\ = (\instr_inst|instruction\(7) $ (((!\instr_inst|instruction\(6) & \instr_inst|instruction\(5))))) # (!\instr_inst|instruction\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(6),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|reg_addr~0_combout\);

-- Location: LCCOMB_X48_Y22_N4
\dec_inst|reg_addr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~1_combout\ = (\instr_inst|instruction\(8) & \dec_inst|reg_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datad => \dec_inst|reg_addr~0_combout\,
	combout => \dec_inst|reg_addr~1_combout\);

-- Location: LCCOMB_X49_Y22_N6
\dec_inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal1~0_combout\ = (!\instr_inst|instruction\(5) & (!\instr_inst|instruction\(3) & (\dec_inst|write_w~0_combout\ & !\instr_inst|instruction\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(3),
	datac => \dec_inst|write_w~0_combout\,
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y22_N26
\dec_inst|reg_addr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~4_combout\ = (\instr_inst|instruction\(2) & (\dec_inst|is_ret~2_combout\ & ((\dec_inst|reg_addr~1_combout\) # (\dec_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(2),
	datab => \dec_inst|is_ret~2_combout\,
	datac => \dec_inst|reg_addr~1_combout\,
	datad => \dec_inst|Equal1~0_combout\,
	combout => \dec_inst|reg_addr~4_combout\);

-- Location: LCFF_X47_Y22_N25
\dec_inst|reg_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|reg_addr~4_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(2));

-- Location: LCCOMB_X47_Y22_N28
\dec_inst|reg_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~2_combout\ = (\instr_inst|instruction\(0) & (\dec_inst|is_ret~2_combout\ & ((\dec_inst|Equal1~0_combout\) # (\dec_inst|reg_addr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|Equal1~0_combout\,
	datab => \instr_inst|instruction\(0),
	datac => \dec_inst|reg_addr~1_combout\,
	datad => \dec_inst|is_ret~2_combout\,
	combout => \dec_inst|reg_addr~2_combout\);

-- Location: LCFF_X47_Y22_N29
\dec_inst|reg_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(0));

-- Location: LCCOMB_X49_Y22_N8
\dec_inst|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal15~0_combout\ = (\instr_inst|instruction\(8) & (!\instr_inst|instruction\(7) & !\instr_inst|instruction\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	combout => \dec_inst|Equal15~0_combout\);

-- Location: LCFF_X48_Y22_N23
\dec_inst|bit_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|Equal15~0_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|bit_set~regout\);

-- Location: LCCOMB_X48_Y22_N0
\dec_inst|immediate~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~1_combout\ = (\instr_inst|instruction\(1) & (\dec_inst|write_w~1_combout\ & \dec_inst|is_ret~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datac => \dec_inst|write_w~1_combout\,
	datad => \dec_inst|is_ret~2_combout\,
	combout => \dec_inst|immediate~1_combout\);

-- Location: LCFF_X48_Y22_N1
\dec_inst|immediate[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(1));

-- Location: LCCOMB_X44_Y23_N22
\wreg_inst|RESULT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|RESULT~2_combout\ = (\wreg_inst|w_content\(1) & \dec_inst|immediate\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|w_content\(1),
	datad => \dec_inst|immediate\(1),
	combout => \wreg_inst|RESULT~2_combout\);

-- Location: LCCOMB_X44_Y23_N24
\wreg_inst|w_content~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~9_combout\ = (\wreg_inst|w_content[3]~4_combout\ & ((\dec_inst|immediate\(1)) # ((\wreg_inst|w_content[3]~5_combout\)))) # (!\wreg_inst|w_content[3]~4_combout\ & (((\ram_inst|reg_read_data\(1) & !\wreg_inst|w_content[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(1),
	datab => \ram_inst|reg_read_data\(1),
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~9_combout\);

-- Location: LCCOMB_X44_Y23_N16
\wreg_inst|w_content~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~10_combout\ = (\wreg_inst|w_content~9_combout\ & (((\wreg_inst|RESULT~2_combout\) # (!\wreg_inst|w_content[3]~5_combout\)))) # (!\wreg_inst|w_content~9_combout\ & (!\wreg_inst|Add1~0_combout\ & ((\wreg_inst|w_content[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add1~0_combout\,
	datab => \wreg_inst|RESULT~2_combout\,
	datac => \wreg_inst|w_content~9_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~10_combout\);

-- Location: LCCOMB_X45_Y23_N30
\wreg_inst|w_content[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[1]~1_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~3_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|RESULT~3_combout\,
	datab => \wreg_inst|process_0~0_combout\,
	datad => \wreg_inst|w_content~10_combout\,
	combout => \wreg_inst|w_content[1]~1_combout\);

-- Location: LCCOMB_X49_Y22_N30
\dec_inst|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal5~0_combout\ = (!\instr_inst|instruction\(5) & (\instr_inst|instruction\(7) & (\instr_inst|instruction\(10) & !\instr_inst|instruction\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|Equal5~0_combout\);

-- Location: LCCOMB_X48_Y22_N22
\dec_inst|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal5~1_combout\ = (\instr_inst|instruction\(8) & \dec_inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datad => \dec_inst|Equal5~0_combout\,
	combout => \dec_inst|Equal5~1_combout\);

-- Location: LCCOMB_X49_Y22_N26
\dec_inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|Equal1~1_combout\ = (\instr_inst|instruction\(1) & (\instr_inst|instruction\(0) & (!\instr_inst|instruction\(2) & \dec_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \instr_inst|instruction\(0),
	datac => \instr_inst|instruction\(2),
	datad => \dec_inst|Equal1~0_combout\,
	combout => \dec_inst|Equal1~1_combout\);

-- Location: LCCOMB_X49_Y22_N18
\dec_inst|reg_read_en~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_read_en~3_combout\ = (\instr_inst|instruction\(7) & ((\instr_inst|instruction\(6)))) # (!\instr_inst|instruction\(7) & (\instr_inst|instruction\(5) & !\instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(7),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|reg_read_en~3_combout\);

-- Location: LCCOMB_X49_Y22_N24
\dec_inst|reg_read_en~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_read_en~8_combout\ = (\instr_inst|instruction\(8) & (\instr_inst|instruction\(10) & \dec_inst|reg_read_en~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(10),
	datad => \dec_inst|reg_read_en~3_combout\,
	combout => \dec_inst|reg_read_en~8_combout\);

-- Location: LCCOMB_X48_Y22_N12
\dec_inst|reg_read_en~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_read_en~7_combout\ = (\dec_inst|reg_read_en~6_combout\) # ((!\dec_inst|Equal5~1_combout\ & (!\dec_inst|Equal1~1_combout\ & \dec_inst|reg_read_en~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_read_en~6_combout\,
	datab => \dec_inst|Equal5~1_combout\,
	datac => \dec_inst|Equal1~1_combout\,
	datad => \dec_inst|reg_read_en~8_combout\,
	combout => \dec_inst|reg_read_en~7_combout\);

-- Location: LCFF_X48_Y22_N13
\dec_inst|reg_read_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_read_en~7_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_read_en~regout\);

-- Location: LCCOMB_X48_Y22_N8
\dec_inst|reg_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~3_combout\ = (\instr_inst|instruction\(1) & (\dec_inst|is_ret~2_combout\ & ((\dec_inst|reg_addr~1_combout\) # (\dec_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \dec_inst|is_ret~2_combout\,
	datac => \dec_inst|reg_addr~1_combout\,
	datad => \dec_inst|Equal1~0_combout\,
	combout => \dec_inst|reg_addr~3_combout\);

-- Location: LCFF_X47_Y22_N3
\dec_inst|reg_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|reg_addr~3_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(1));

-- Location: LCCOMB_X48_Y22_N28
\dec_inst|reg_addr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_addr~5_combout\ = (\instr_inst|instruction\(8) & (\dec_inst|reg_addr~0_combout\ & \instr_inst|instruction\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \dec_inst|reg_addr~0_combout\,
	datad => \instr_inst|instruction\(3),
	combout => \dec_inst|reg_addr~5_combout\);

-- Location: LCFF_X48_Y22_N29
\dec_inst|reg_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_addr~5_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_addr\(3));

-- Location: LCCOMB_X46_Y21_N22
\ram_inst|Decoder1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~6_combout\ = (!\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~6_combout\);

-- Location: LCCOMB_X47_Y22_N18
\dec_inst|bit_pos~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|bit_pos~0_combout\ = (!\instr_inst|instruction\(10) & (\instr_inst|instruction\(5) & \instr_inst|instruction\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(10),
	datac => \instr_inst|instruction\(5),
	datad => \instr_inst|instruction\(8),
	combout => \dec_inst|bit_pos~0_combout\);

-- Location: LCFF_X47_Y22_N19
\dec_inst|bit_pos[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|bit_pos~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|bit_pos\(0));

-- Location: LCCOMB_X48_Y22_N2
\dec_inst|reg_write_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_write_en~0_combout\ = (\instr_inst|instruction\(8) & ((\dec_inst|Equal5~0_combout\) # ((!\instr_inst|instruction\(7) & !\instr_inst|instruction\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \dec_inst|Equal5~0_combout\,
	combout => \dec_inst|reg_write_en~0_combout\);

-- Location: LCFF_X48_Y22_N3
\dec_inst|reg_write_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|reg_write_en~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|reg_write_en~regout\);

-- Location: LCCOMB_X47_Y23_N28
\wreg_inst|w_to_ram~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_to_ram~0_combout\ = (\dec_inst|write_w~regout\) # ((!\dec_inst|is_add~regout\ & (!\dec_inst|is_decr~regout\ & !\dec_inst|is_and~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_add~regout\,
	datab => \dec_inst|is_decr~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \dec_inst|write_w~regout\,
	combout => \wreg_inst|w_to_ram~0_combout\);

-- Location: LCCOMB_X49_Y22_N0
\dec_inst|is_ret~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~0_combout\ = ((\instr_inst|instruction\(1) $ (!\instr_inst|instruction\(2))) # (!\dec_inst|Equal1~0_combout\)) # (!\instr_inst|instruction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(1),
	datab => \instr_inst|instruction\(0),
	datac => \instr_inst|instruction\(2),
	datad => \dec_inst|Equal1~0_combout\,
	combout => \dec_inst|is_ret~0_combout\);

-- Location: LCCOMB_X48_Y22_N24
\dec_inst|read_w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|read_w~2_combout\ = ((\instr_inst|instruction\(8) & \dec_inst|Equal5~0_combout\)) # (!\dec_inst|is_ret~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datac => \dec_inst|is_ret~0_combout\,
	datad => \dec_inst|Equal5~0_combout\,
	combout => \dec_inst|read_w~2_combout\);

-- Location: LCFF_X48_Y22_N25
\dec_inst|read_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|read_w~2_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|read_w~regout\);

-- Location: LCCOMB_X47_Y23_N2
\wreg_inst|w_to_ram~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_to_ram~1_combout\ = (!\wreg_inst|w_to_ram~0_combout\ & !\dec_inst|read_w~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wreg_inst|w_to_ram~0_combout\,
	datad => \dec_inst|read_w~regout\,
	combout => \wreg_inst|w_to_ram~1_combout\);

-- Location: LCCOMB_X46_Y20_N24
\wreg_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(0),
	combout => \wreg_inst|Equal0~0_combout\);

-- Location: LCFF_X47_Y23_N3
\wreg_inst|w_to_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_to_ram~1_combout\,
	ena => \wreg_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_to_ram~regout\);

-- Location: LCCOMB_X46_Y20_N22
\ram_inst|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|process_0~0_combout\ = (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(2) $ (\pipe_inst|state_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \ram_inst|process_0~0_combout\);

-- Location: LCCOMB_X45_Y20_N26
\ram_inst|reg_array[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~1_combout\ = (\ram_inst|process_0~0_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_write_en~regout\,
	datac => \wreg_inst|w_to_ram~regout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[0][0]~1_combout\);

-- Location: LCCOMB_X45_Y20_N28
\ram_inst|reg_array[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~2_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (((!\dec_inst|bit_pos\(1) & !\dec_inst|bit_pos\(0))) # (!\dec_inst|bit_set~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|bit_pos\(1),
	datab => \dec_inst|bit_set~regout\,
	datac => \dec_inst|bit_pos\(0),
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][0]~2_combout\);

-- Location: LCCOMB_X44_Y20_N24
\ram_inst|reg_array[8][0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][0]~21_combout\ = (\ram_inst|Decoder1~6_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[8][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~6_combout\ & (((\ram_inst|reg_array[8][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~6_combout\,
	datac => \ram_inst|reg_array[8][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[8][0]~21_combout\);

-- Location: LCFF_X44_Y20_N25
\ram_inst|reg_array[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][0]~regout\);

-- Location: LCCOMB_X43_Y20_N28
\ram_inst|reg_read_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~2_combout\ = (\dec_inst|reg_addr\(1) & (((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & ((\dec_inst|reg_addr\(0) & (\ram_inst|reg_array[9][0]~regout\)) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[8][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[9][0]~regout\,
	datab => \ram_inst|reg_array[8][0]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~2_combout\);

-- Location: LCCOMB_X43_Y20_N2
\ram_inst|reg_read_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~3_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[11][0]~regout\) # (!\ram_inst|reg_read_data~2_combout\))) # (!\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[11][0]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_read_data~2_combout\,
	combout => \ram_inst|reg_read_data~3_combout\);

-- Location: LCCOMB_X44_Y21_N10
\ram_inst|Decoder1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~4_combout\ = (\dec_inst|reg_addr\(3) & (\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(1) & \dec_inst|reg_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|Decoder1~4_combout\);

-- Location: LCCOMB_X44_Y20_N28
\ram_inst|reg_array[15][0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][0]~19_combout\ = (\ram_inst|Decoder1~4_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[15][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~4_combout\ & (((\ram_inst|reg_array[15][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~4_combout\,
	datac => \ram_inst|reg_array[15][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[15][0]~19_combout\);

-- Location: LCFF_X44_Y20_N29
\ram_inst|reg_array[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][0]~regout\);

-- Location: LCCOMB_X48_Y22_N6
\dec_inst|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|process_0~1_combout\ = (!\instr_inst|instruction\(5) & (\instr_inst|instruction\(7) & (\instr_inst|instruction\(10) & \dec_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(5),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \dec_inst|process_0~0_combout\,
	combout => \dec_inst|process_0~1_combout\);

-- Location: LCFF_X48_Y22_N7
\dec_inst|is_add\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|process_0~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_add~regout\);

-- Location: LCCOMB_X47_Y23_N14
\wreg_inst|reg_write_data[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[2]~0_combout\ = (\dec_inst|is_add~regout\) # (\dec_inst|read_w~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|is_add~regout\,
	datad => \dec_inst|read_w~regout\,
	combout => \wreg_inst|reg_write_data[2]~0_combout\);

-- Location: LCCOMB_X47_Y23_N30
\wreg_inst|reg_write_data[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[2]~1_combout\ = (\dec_inst|read_w~regout\) # ((!\dec_inst|is_add~regout\ & (!\dec_inst|write_w~regout\ & \dec_inst|is_and~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_add~regout\,
	datab => \dec_inst|write_w~regout\,
	datac => \dec_inst|is_and~regout\,
	datad => \dec_inst|read_w~regout\,
	combout => \wreg_inst|reg_write_data[2]~1_combout\);

-- Location: LCCOMB_X46_Y23_N0
\wreg_inst|reg_write_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~2_combout\ = (\ram_inst|reg_read_data\(0) & (\wreg_inst|reg_write_data[2]~1_combout\ & ((\wreg_inst|w_content\(0)) # (\wreg_inst|reg_write_data[2]~0_combout\)))) # (!\ram_inst|reg_read_data\(0) & 
-- ((\wreg_inst|reg_write_data[2]~0_combout\ $ (!\wreg_inst|reg_write_data[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(0),
	datab => \ram_inst|reg_read_data\(0),
	datac => \wreg_inst|reg_write_data[2]~0_combout\,
	datad => \wreg_inst|reg_write_data[2]~1_combout\,
	combout => \wreg_inst|reg_write_data~2_combout\);

-- Location: LCCOMB_X46_Y23_N18
\wreg_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~0_combout\ = (\wreg_inst|w_content\(0) & (\ram_inst|reg_read_data\(0) $ (VCC))) # (!\wreg_inst|w_content\(0) & (\ram_inst|reg_read_data\(0) & VCC))
-- \wreg_inst|Add0~1\ = CARRY((\wreg_inst|w_content\(0) & \ram_inst|reg_read_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(0),
	datab => \ram_inst|reg_read_data\(0),
	datad => VCC,
	combout => \wreg_inst|Add0~0_combout\,
	cout => \wreg_inst|Add0~1\);

-- Location: LCCOMB_X46_Y23_N30
\wreg_inst|reg_write_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~3_combout\ = (\wreg_inst|reg_write_data~2_combout\ & ((\wreg_inst|w_content\(0)) # ((!\wreg_inst|reg_write_data[2]~0_combout\)))) # (!\wreg_inst|reg_write_data~2_combout\ & (((\wreg_inst|reg_write_data[2]~0_combout\ & 
-- \wreg_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(0),
	datab => \wreg_inst|reg_write_data~2_combout\,
	datac => \wreg_inst|reg_write_data[2]~0_combout\,
	datad => \wreg_inst|Add0~0_combout\,
	combout => \wreg_inst|reg_write_data~3_combout\);

-- Location: LCCOMB_X47_Y23_N22
\wreg_inst|reg_write_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data[0]~4_combout\ = (\wreg_inst|Equal0~0_combout\ & ((\dec_inst|read_w~regout\) # (!\wreg_inst|w_to_ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \wreg_inst|w_to_ram~0_combout\,
	datad => \wreg_inst|Equal0~0_combout\,
	combout => \wreg_inst|reg_write_data[0]~4_combout\);

-- Location: LCFF_X47_Y23_N15
\wreg_inst|reg_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \wreg_inst|reg_write_data~3_combout\,
	sload => VCC,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(0));

-- Location: LCCOMB_X43_Y20_N12
\ram_inst|reg_array~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~0_combout\ = (\wreg_inst|reg_write_data\(0)) # (\dec_inst|bit_set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|reg_write_data\(0),
	datad => \dec_inst|bit_set~regout\,
	combout => \ram_inst|reg_array~0_combout\);

-- Location: LCCOMB_X44_Y20_N10
\ram_inst|reg_array[12][0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[12][0]~18_combout\ = (\ram_inst|Decoder1~3_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[12][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~3_combout\ & (((\ram_inst|reg_array[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~3_combout\,
	datab => \ram_inst|reg_array~0_combout\,
	datac => \ram_inst|reg_array[12][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[12][0]~18_combout\);

-- Location: LCFF_X44_Y20_N11
\ram_inst|reg_array[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[12][0]~regout\);

-- Location: LCCOMB_X43_Y20_N24
\ram_inst|reg_read_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~0_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[14][0]~regout\) # ((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & (((\ram_inst|reg_array[12][0]~regout\ & !\dec_inst|reg_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[14][0]~regout\,
	datab => \ram_inst|reg_array[12][0]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~0_combout\);

-- Location: LCCOMB_X43_Y20_N14
\ram_inst|reg_read_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~1_combout\ = (\ram_inst|reg_read_data~0_combout\ & ((\ram_inst|reg_array[15][0]~regout\) # (!\dec_inst|reg_addr\(0)))) # (!\ram_inst|reg_read_data~0_combout\ & ((\dec_inst|reg_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[15][0]~regout\,
	datac => \ram_inst|reg_read_data~0_combout\,
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~1_combout\);

-- Location: LCCOMB_X43_Y22_N12
\ram_inst|Decoder1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~9_combout\ = (\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(1) & (\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~9_combout\);

-- Location: LCCOMB_X44_Y20_N18
\ram_inst|reg_array[13][0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][0]~24_combout\ = (\ram_inst|Decoder1~9_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[13][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~9_combout\ & (((\ram_inst|reg_array[13][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~9_combout\,
	datac => \ram_inst|reg_array[13][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[13][0]~24_combout\);

-- Location: LCFF_X44_Y20_N19
\ram_inst|reg_array[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][0]~regout\);

-- Location: LCCOMB_X43_Y22_N22
\ram_inst|Decoder1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~8_combout\ = (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~8_combout\);

-- Location: LCCOMB_X44_Y20_N4
\ram_inst|reg_array[10][0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][0]~23_combout\ = (\ram_inst|Decoder1~8_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[10][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~8_combout\ & (((\ram_inst|reg_array[10][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~8_combout\,
	datac => \ram_inst|reg_array[10][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[10][0]~23_combout\);

-- Location: LCFF_X44_Y20_N5
\ram_inst|reg_array[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][0]~regout\);

-- Location: LCCOMB_X43_Y20_N0
\ram_inst|reg_read_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~4_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[13][0]~regout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[10][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[13][0]~regout\,
	datac => \dec_inst|reg_addr\(2),
	datad => \ram_inst|reg_array[10][0]~regout\,
	combout => \ram_inst|reg_read_data~4_combout\);

-- Location: LCCOMB_X43_Y20_N6
\ram_inst|reg_read_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~5_combout\ = (\ram_inst|reg_read_data~4_combout\) # ((\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~0_combout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \ram_inst|reg_read_data~2_combout\,
	datac => \ram_inst|reg_read_data~0_combout\,
	datad => \ram_inst|reg_read_data~4_combout\,
	combout => \ram_inst|reg_read_data~5_combout\);

-- Location: LCCOMB_X43_Y20_N16
\ram_inst|reg_read_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~6_combout\ = (\ram_inst|reg_read_data~5_combout\ & ((\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~1_combout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \ram_inst|reg_read_data~3_combout\,
	datac => \ram_inst|reg_read_data~1_combout\,
	datad => \ram_inst|reg_read_data~5_combout\,
	combout => \ram_inst|reg_read_data~6_combout\);

-- Location: LCCOMB_X46_Y21_N26
\ram_inst|Decoder1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~13_combout\ = (!\dec_inst|reg_addr\(1) & (\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~13_combout\);

-- Location: LCCOMB_X44_Y20_N12
\ram_inst|reg_array[5][0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][0]~28_combout\ = (\ram_inst|Decoder1~13_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[5][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~13_combout\ & (((\ram_inst|reg_array[5][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~13_combout\,
	datac => \ram_inst|reg_array[5][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[5][0]~28_combout\);

-- Location: LCFF_X44_Y20_N13
\ram_inst|reg_array[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][0]~regout\);

-- Location: LCCOMB_X43_Y22_N16
\ram_inst|Decoder1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~14_combout\ = (\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~14_combout\);

-- Location: LCCOMB_X44_Y20_N22
\ram_inst|reg_array[6][0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][0]~29_combout\ = (\ram_inst|Decoder1~14_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[6][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~14_combout\ & (((\ram_inst|reg_array[6][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~14_combout\,
	datac => \ram_inst|reg_array[6][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[6][0]~29_combout\);

-- Location: LCFF_X44_Y20_N23
\ram_inst|reg_array[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][0]~regout\);

-- Location: LCCOMB_X44_Y20_N6
\ram_inst|reg_read_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~9_combout\ = (\dec_inst|reg_addr\(1) & (((\ram_inst|reg_array[6][0]~regout\) # (\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[4][0]~regout\ & ((!\dec_inst|reg_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][0]~regout\,
	datab => \ram_inst|reg_array[6][0]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~9_combout\);

-- Location: LCCOMB_X43_Y20_N18
\ram_inst|reg_read_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~10_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~9_combout\ & (\ram_inst|reg_array[7][0]~regout\)) # (!\ram_inst|reg_read_data~9_combout\ & ((\ram_inst|reg_array[5][0]~regout\))))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[7][0]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[5][0]~regout\,
	datad => \ram_inst|reg_read_data~9_combout\,
	combout => \ram_inst|reg_read_data~10_combout\);

-- Location: LCCOMB_X46_Y21_N6
\ram_inst|Decoder1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~10_combout\ = (\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~10_combout\);

-- Location: LCCOMB_X46_Y20_N10
\ram_inst|reg_array[2][0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][0]~25_combout\ = (\ram_inst|Decoder1~10_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[2][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~10_combout\ & (((\ram_inst|reg_array[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~0_combout\,
	datab => \ram_inst|Decoder1~10_combout\,
	datac => \ram_inst|reg_array[2][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[2][0]~25_combout\);

-- Location: LCFF_X46_Y20_N11
\ram_inst|reg_array[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][0]~regout\);

-- Location: LCCOMB_X45_Y20_N2
\ram_inst|reg_array[3][0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][0]~27_combout\ = (\ram_inst|Decoder1~12_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[3][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~12_combout\ & (((\ram_inst|reg_array[3][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~12_combout\,
	datab => \ram_inst|reg_array~0_combout\,
	datac => \ram_inst|reg_array[3][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[3][0]~27_combout\);

-- Location: LCFF_X45_Y20_N3
\ram_inst|reg_array[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][0]~regout\);

-- Location: LCCOMB_X45_Y20_N24
\ram_inst|reg_array[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][0]~3_combout\ = (\ram_inst|Decoder1~0_combout\ & ((\ram_inst|reg_array[0][0]~2_combout\ & (\ram_inst|reg_array~0_combout\)) # (!\ram_inst|reg_array[0][0]~2_combout\ & ((\ram_inst|reg_array[0][0]~regout\))))) # 
-- (!\ram_inst|Decoder1~0_combout\ & (((\ram_inst|reg_array[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~0_combout\,
	datab => \ram_inst|reg_array~0_combout\,
	datac => \ram_inst|reg_array[0][0]~regout\,
	datad => \ram_inst|reg_array[0][0]~2_combout\,
	combout => \ram_inst|reg_array[0][0]~3_combout\);

-- Location: LCFF_X45_Y20_N25
\ram_inst|reg_array[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][0]~regout\);

-- Location: LCCOMB_X46_Y21_N12
\ram_inst|reg_read_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~7_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[1][0]~regout\) # ((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (((!\dec_inst|reg_addr\(1) & \ram_inst|reg_array[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[1][0]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_array[0][0]~regout\,
	combout => \ram_inst|reg_read_data~7_combout\);

-- Location: LCCOMB_X46_Y21_N18
\ram_inst|reg_read_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~8_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~7_combout\ & ((\ram_inst|reg_array[3][0]~regout\))) # (!\ram_inst|reg_read_data~7_combout\ & (\ram_inst|reg_array[2][0]~regout\)))) # (!\dec_inst|reg_addr\(1) & 
-- (((\ram_inst|reg_read_data~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[2][0]~regout\,
	datac => \ram_inst|reg_array[3][0]~regout\,
	datad => \ram_inst|reg_read_data~7_combout\,
	combout => \ram_inst|reg_read_data~8_combout\);

-- Location: LCCOMB_X46_Y21_N28
\ram_inst|reg_read_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~11_combout\ = (\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~10_combout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_read_data~10_combout\,
	datad => \ram_inst|reg_read_data~8_combout\,
	combout => \ram_inst|reg_read_data~11_combout\);

-- Location: LCCOMB_X46_Y21_N24
\ram_inst|reg_read_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~12_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~6_combout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_read_en~regout\,
	datac => \ram_inst|reg_read_data~6_combout\,
	datad => \ram_inst|reg_read_data~11_combout\,
	combout => \ram_inst|reg_read_data~12_combout\);

-- Location: LCFF_X46_Y21_N25
\ram_inst|reg_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~12_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(0));

-- Location: LCCOMB_X46_Y23_N20
\wreg_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add0~2_combout\ = (\wreg_inst|w_content\(1) & ((\ram_inst|reg_read_data\(1) & (\wreg_inst|Add0~1\ & VCC)) # (!\ram_inst|reg_read_data\(1) & (!\wreg_inst|Add0~1\)))) # (!\wreg_inst|w_content\(1) & ((\ram_inst|reg_read_data\(1) & 
-- (!\wreg_inst|Add0~1\)) # (!\ram_inst|reg_read_data\(1) & ((\wreg_inst|Add0~1\) # (GND)))))
-- \wreg_inst|Add0~3\ = CARRY((\wreg_inst|w_content\(1) & (!\ram_inst|reg_read_data\(1) & !\wreg_inst|Add0~1\)) # (!\wreg_inst|w_content\(1) & ((!\wreg_inst|Add0~1\) # (!\ram_inst|reg_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(1),
	datab => \ram_inst|reg_read_data\(1),
	datad => VCC,
	cin => \wreg_inst|Add0~1\,
	combout => \wreg_inst|Add0~2_combout\,
	cout => \wreg_inst|Add0~3\);

-- Location: LCCOMB_X46_Y20_N18
\wreg_inst|c_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|c_int~0_combout\ = (!\dec_inst|read_w~regout\ & (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|read_w~regout\,
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(0),
	combout => \wreg_inst|c_int~0_combout\);

-- Location: LCCOMB_X45_Y23_N2
\wreg_inst|w_content[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~8_combout\ = (\dec_inst|write_w~regout\ & \wreg_inst|c_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|write_w~regout\,
	datad => \wreg_inst|c_int~0_combout\,
	combout => \wreg_inst|w_content[0]~8_combout\);

-- Location: LCFF_X45_Y23_N31
\wreg_inst|w_content[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[1]~1_combout\,
	sdata => \wreg_inst|Add0~2_combout\,
	sload => \dec_inst|is_add~regout\,
	ena => \wreg_inst|w_content[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(1));

-- Location: LCCOMB_X46_Y23_N28
\wreg_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~0_combout\ = \ram_inst|reg_read_data\(1) $ (\ram_inst|reg_read_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_read_data\(1),
	datac => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|Add1~0_combout\);

-- Location: LCCOMB_X46_Y23_N14
\wreg_inst|reg_write_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~5_combout\ = (\wreg_inst|reg_write_data[2]~0_combout\ & ((\wreg_inst|Add0~2_combout\) # ((\wreg_inst|reg_write_data[2]~1_combout\)))) # (!\wreg_inst|reg_write_data[2]~0_combout\ & (((!\wreg_inst|Add1~0_combout\ & 
-- !\wreg_inst|reg_write_data[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add0~2_combout\,
	datab => \wreg_inst|Add1~0_combout\,
	datac => \wreg_inst|reg_write_data[2]~0_combout\,
	datad => \wreg_inst|reg_write_data[2]~1_combout\,
	combout => \wreg_inst|reg_write_data~5_combout\);

-- Location: LCCOMB_X47_Y23_N0
\wreg_inst|reg_write_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~6_combout\ = (\wreg_inst|reg_write_data[2]~1_combout\ & (\wreg_inst|w_content\(1) & ((\ram_inst|reg_read_data\(1)) # (\wreg_inst|reg_write_data~5_combout\)))) # (!\wreg_inst|reg_write_data[2]~1_combout\ & 
-- (((\wreg_inst|reg_write_data~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data[2]~1_combout\,
	datab => \ram_inst|reg_read_data\(1),
	datac => \wreg_inst|w_content\(1),
	datad => \wreg_inst|reg_write_data~5_combout\,
	combout => \wreg_inst|reg_write_data~6_combout\);

-- Location: LCFF_X47_Y23_N1
\wreg_inst|reg_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~6_combout\,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(1));

-- Location: LCCOMB_X45_Y24_N28
\ram_inst|reg_array~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~4_combout\ = (\dec_inst|bit_set~regout\) # (\wreg_inst|reg_write_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|bit_set~regout\,
	datad => \wreg_inst|reg_write_data\(1),
	combout => \ram_inst|reg_array~4_combout\);

-- Location: LCCOMB_X47_Y22_N4
\dec_inst|bit_pos~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|bit_pos~1_combout\ = (\instr_inst|instruction\(8) & (!\instr_inst|instruction\(10) & \instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(8),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(6),
	combout => \dec_inst|bit_pos~1_combout\);

-- Location: LCFF_X47_Y22_N5
\dec_inst|bit_pos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|bit_pos~1_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|bit_pos\(1));

-- Location: LCCOMB_X47_Y23_N18
\ram_inst|reg_array[0][1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~5_combout\ = ((\dec_inst|bit_pos\(0) & !\dec_inst|bit_pos\(1))) # (!\dec_inst|bit_set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|bit_set~regout\,
	datac => \dec_inst|bit_pos\(0),
	datad => \dec_inst|bit_pos\(1),
	combout => \ram_inst|reg_array[0][1]~5_combout\);

-- Location: LCCOMB_X45_Y21_N2
\ram_inst|reg_array[0][1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~6_combout\ = (\ram_inst|reg_array[0][1]~5_combout\ & (\ram_inst|process_0~0_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_write_en~regout\,
	datab => \wreg_inst|w_to_ram~regout\,
	datac => \ram_inst|reg_array[0][1]~5_combout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[0][1]~6_combout\);

-- Location: LCCOMB_X45_Y21_N12
\ram_inst|reg_array[11][1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[11][1]~47_combout\ = (\ram_inst|Decoder1~7_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[11][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~7_combout\ & (((\ram_inst|reg_array[11][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~7_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[11][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[11][1]~47_combout\);

-- Location: LCFF_X45_Y21_N13
\ram_inst|reg_array[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[11][1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[11][1]~regout\);

-- Location: LCCOMB_X45_Y21_N14
\ram_inst|reg_array[8][1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][1]~35_combout\ = (\ram_inst|Decoder1~6_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[8][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~6_combout\ & (((\ram_inst|reg_array[8][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~6_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[8][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[8][1]~35_combout\);

-- Location: LCFF_X45_Y21_N15
\ram_inst|reg_array[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][1]~regout\);

-- Location: LCCOMB_X44_Y21_N22
\ram_inst|reg_read_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~14_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[10][1]~regout\) # ((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & (((\ram_inst|reg_array[8][1]~regout\ & !\dec_inst|reg_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[10][1]~regout\,
	datab => \ram_inst|reg_array[8][1]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~14_combout\);

-- Location: LCCOMB_X44_Y21_N20
\ram_inst|reg_read_data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~24_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[11][1]~regout\) # (!\ram_inst|reg_read_data~14_combout\))) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[11][1]~regout\,
	datad => \ram_inst|reg_read_data~14_combout\,
	combout => \ram_inst|reg_read_data~24_combout\);

-- Location: LCCOMB_X44_Y22_N16
\ram_inst|reg_array~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~45_combout\ = (\ram_inst|Decoder1~12_combout\ & (\ram_inst|reg_array[0][1]~5_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~12_combout\,
	datab => \dec_inst|reg_write_en~regout\,
	datac => \ram_inst|reg_array[0][1]~5_combout\,
	datad => \wreg_inst|w_to_ram~regout\,
	combout => \ram_inst|reg_array~45_combout\);

-- Location: LCCOMB_X45_Y22_N20
\ram_inst|reg_array~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~46_combout\ = (\wreg_inst|c_int~regout\ & ((\ram_inst|reg_array~4_combout\) # ((!\ram_inst|reg_array~45_combout\) # (!\ram_inst|reg_array[3][1]~regout\)))) # (!\wreg_inst|c_int~regout\ & (\ram_inst|reg_array~4_combout\ & 
-- (!\ram_inst|reg_array[3][1]~regout\ & \ram_inst|reg_array~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|c_int~regout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[3][1]~regout\,
	datad => \ram_inst|reg_array~45_combout\,
	combout => \ram_inst|reg_array~46_combout\);

-- Location: LCFF_X45_Y22_N21
\ram_inst|reg_array[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array~46_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][1]~regout\);

-- Location: LCCOMB_X46_Y21_N0
\ram_inst|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~0_combout\ = (!\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~0_combout\);

-- Location: LCCOMB_X45_Y21_N30
\ram_inst|reg_array[0][1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][1]~7_combout\ = (\ram_inst|Decoder1~0_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[0][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~0_combout\ & (((\ram_inst|reg_array[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~4_combout\,
	datab => \ram_inst|Decoder1~0_combout\,
	datac => \ram_inst|reg_array[0][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[0][1]~7_combout\);

-- Location: LCFF_X45_Y21_N31
\ram_inst|reg_array[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][1]~regout\);

-- Location: LCCOMB_X45_Y21_N26
\ram_inst|reg_read_data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~22_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[2][1]~regout\)) # (!\dec_inst|reg_addr\(1) & 
-- ((\ram_inst|reg_array[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][1]~regout\,
	datab => \ram_inst|reg_array[0][1]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~22_combout\);

-- Location: LCCOMB_X44_Y21_N18
\ram_inst|reg_read_data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~23_combout\ = (\ram_inst|reg_read_data~22_combout\ & (((\ram_inst|reg_array[3][1]~regout\) # (!\dec_inst|reg_addr\(0))))) # (!\ram_inst|reg_read_data~22_combout\ & (\ram_inst|reg_array[1][1]~regout\ & ((\dec_inst|reg_addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[1][1]~regout\,
	datab => \ram_inst|reg_array[3][1]~regout\,
	datac => \ram_inst|reg_read_data~22_combout\,
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~23_combout\);

-- Location: LCCOMB_X44_Y21_N30
\ram_inst|reg_read_data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~25_combout\ = (\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~24_combout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datac => \ram_inst|reg_read_data~24_combout\,
	datad => \ram_inst|reg_read_data~23_combout\,
	combout => \ram_inst|reg_read_data~25_combout\);

-- Location: LCCOMB_X44_Y21_N28
\ram_inst|reg_array[6][1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[6][1]~36_combout\ = (\ram_inst|Decoder1~14_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[6][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~14_combout\ & (((\ram_inst|reg_array[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~14_combout\,
	datab => \ram_inst|reg_array~4_combout\,
	datac => \ram_inst|reg_array[6][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[6][1]~36_combout\);

-- Location: LCFF_X44_Y21_N29
\ram_inst|reg_array[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[6][1]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[6][1]~regout\);

-- Location: LCCOMB_X44_Y21_N26
\ram_inst|reg_read_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~15_combout\ = (\dec_inst|reg_addr\(3) & (\ram_inst|reg_array[9][1]~regout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_array[6][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[9][1]~regout\,
	datab => \ram_inst|reg_array[6][1]~regout\,
	datac => \dec_inst|reg_addr\(3),
	combout => \ram_inst|reg_read_data~15_combout\);

-- Location: LCCOMB_X43_Y22_N0
\ram_inst|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~1_combout\ = (\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \dec_inst|reg_addr\(1),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~1_combout\);

-- Location: LCCOMB_X45_Y21_N18
\ram_inst|reg_array[4][1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][1]~33_combout\ = (\ram_inst|Decoder1~1_combout\ & ((\ram_inst|reg_array[0][1]~6_combout\ & (\ram_inst|reg_array~4_combout\)) # (!\ram_inst|reg_array[0][1]~6_combout\ & ((\ram_inst|reg_array[4][1]~regout\))))) # 
-- (!\ram_inst|Decoder1~1_combout\ & (((\ram_inst|reg_array[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~4_combout\,
	datab => \ram_inst|Decoder1~1_combout\,
	datac => \ram_inst|reg_array[4][1]~regout\,
	datad => \ram_inst|reg_array[0][1]~6_combout\,
	combout => \ram_inst|reg_array[4][1]~33_combout\);

-- Location: LCFF_X45_Y21_N19
\ram_inst|reg_array[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][1]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][1]~regout\);

-- Location: LCCOMB_X44_Y21_N24
\ram_inst|reg_read_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~13_combout\ = (\dec_inst|reg_addr\(1) & (((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & ((\dec_inst|reg_addr\(0) & (\ram_inst|reg_array[5][1]~regout\)) # (!\dec_inst|reg_addr\(0) & 
-- ((\ram_inst|reg_array[4][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[5][1]~regout\,
	datab => \ram_inst|reg_array[4][1]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~13_combout\);

-- Location: LCCOMB_X44_Y21_N16
\ram_inst|reg_read_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~16_combout\ = (\ram_inst|reg_read_data~15_combout\) # ((\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~14_combout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_read_data~15_combout\,
	datac => \ram_inst|reg_read_data~13_combout\,
	datad => \ram_inst|reg_read_data~14_combout\,
	combout => \ram_inst|reg_read_data~16_combout\);

-- Location: LCCOMB_X44_Y21_N14
\ram_inst|reg_read_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~17_combout\ = (\dec_inst|reg_read_en~regout\ & ((\ram_inst|reg_read_data~16_combout\) # (\dec_inst|reg_addr\(3) $ (!\dec_inst|reg_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_read_en~regout\,
	datac => \ram_inst|reg_read_data~16_combout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~17_combout\);

-- Location: LCCOMB_X45_Y21_N24
\ram_inst|reg_read_data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~26_combout\ = (\ram_inst|reg_read_data~17_combout\ & ((\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~21_combout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~21_combout\,
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_read_data~25_combout\,
	datad => \ram_inst|reg_read_data~17_combout\,
	combout => \ram_inst|reg_read_data~26_combout\);

-- Location: LCFF_X45_Y21_N25
\ram_inst|reg_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~26_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(1));

-- Location: LCCOMB_X44_Y23_N28
\wreg_inst|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Add1~3_combout\ = (\ram_inst|reg_read_data\(1)) # (\ram_inst|reg_read_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_read_data\(1),
	datac => \ram_inst|reg_read_data\(0),
	combout => \wreg_inst|Add1~3_combout\);

-- Location: LCCOMB_X44_Y23_N14
\wreg_inst|w_content~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~11_combout\ = (\wreg_inst|w_content[3]~4_combout\ & (((\wreg_inst|w_content[3]~5_combout\)))) # (!\wreg_inst|w_content[3]~4_combout\ & (\ram_inst|reg_read_data\(2) $ (((!\wreg_inst|Add1~3_combout\ & 
-- \wreg_inst|w_content[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(2),
	datab => \wreg_inst|Add1~3_combout\,
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~11_combout\);

-- Location: LCCOMB_X45_Y23_N28
\wreg_inst|w_content~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~12_combout\ = (\wreg_inst|w_content[3]~4_combout\ & (\dec_inst|immediate\(2) & ((\wreg_inst|w_content\(2)) # (!\wreg_inst|w_content~11_combout\)))) # (!\wreg_inst|w_content[3]~4_combout\ & (((\wreg_inst|w_content~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|w_content\(2),
	datab => \dec_inst|immediate\(2),
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content~11_combout\,
	combout => \wreg_inst|w_content~12_combout\);

-- Location: LCCOMB_X45_Y23_N4
\wreg_inst|w_content[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[2]~2_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~0_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|RESULT~0_combout\,
	datab => \wreg_inst|process_0~0_combout\,
	datad => \wreg_inst|w_content~12_combout\,
	combout => \wreg_inst|w_content[2]~2_combout\);

-- Location: LCCOMB_X46_Y23_N22
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

-- Location: LCFF_X45_Y23_N5
\wreg_inst|w_content[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[2]~2_combout\,
	sdata => \wreg_inst|Add0~4_combout\,
	sload => \dec_inst|is_add~regout\,
	ena => \wreg_inst|w_content[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(2));

-- Location: LCFF_X45_Y23_N15
\wreg_inst|w_content[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[3]~3_combout\,
	sdata => \wreg_inst|Add0~6_combout\,
	sload => \dec_inst|is_add~regout\,
	ena => \wreg_inst|w_content[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(3));

-- Location: LCCOMB_X46_Y23_N12
\wreg_inst|reg_write_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~9_combout\ = (\wreg_inst|reg_write_data[2]~0_combout\ & (((\wreg_inst|Add0~6_combout\) # (\wreg_inst|reg_write_data[2]~1_combout\)))) # (!\wreg_inst|reg_write_data[2]~0_combout\ & (!\wreg_inst|Add1~2_combout\ & 
-- ((!\wreg_inst|reg_write_data[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add1~2_combout\,
	datab => \wreg_inst|reg_write_data[2]~0_combout\,
	datac => \wreg_inst|Add0~6_combout\,
	datad => \wreg_inst|reg_write_data[2]~1_combout\,
	combout => \wreg_inst|reg_write_data~9_combout\);

-- Location: LCCOMB_X47_Y23_N16
\wreg_inst|reg_write_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~10_combout\ = (\wreg_inst|reg_write_data[2]~1_combout\ & (\wreg_inst|w_content\(3) & ((\ram_inst|reg_read_data\(3)) # (\wreg_inst|reg_write_data~9_combout\)))) # (!\wreg_inst|reg_write_data[2]~1_combout\ & 
-- (((\wreg_inst|reg_write_data~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data[2]~1_combout\,
	datab => \ram_inst|reg_read_data\(3),
	datac => \wreg_inst|w_content\(3),
	datad => \wreg_inst|reg_write_data~9_combout\,
	combout => \wreg_inst|reg_write_data~10_combout\);

-- Location: LCFF_X47_Y23_N17
\wreg_inst|reg_write_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|reg_write_data~10_combout\,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(3));

-- Location: LCCOMB_X46_Y22_N16
\ram_inst|reg_array~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~12_combout\ = (\wreg_inst|reg_write_data\(3)) # (\dec_inst|bit_set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wreg_inst|reg_write_data\(3),
	datad => \dec_inst|bit_set~regout\,
	combout => \ram_inst|reg_array~12_combout\);

-- Location: LCCOMB_X45_Y20_N18
\ram_inst|reg_array[0][3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][3]~13_combout\ = (\ram_inst|reg_array[0][0]~1_combout\ & (((\dec_inst|bit_pos\(1) & \dec_inst|bit_pos\(0))) # (!\dec_inst|bit_set~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|bit_pos\(1),
	datab => \dec_inst|bit_set~regout\,
	datac => \dec_inst|bit_pos\(0),
	datad => \ram_inst|reg_array[0][0]~1_combout\,
	combout => \ram_inst|reg_array[0][3]~13_combout\);

-- Location: LCCOMB_X45_Y20_N12
\ram_inst|reg_array[3][3]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[3][3]~76_combout\ = (\ram_inst|Decoder1~12_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[3][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~12_combout\ & (((\ram_inst|reg_array[3][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~12_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[3][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[3][3]~76_combout\);

-- Location: LCFF_X45_Y20_N13
\ram_inst|reg_array[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[3][3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[3][3]~regout\);

-- Location: LCCOMB_X46_Y20_N8
\ram_inst|reg_array[0][3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][3]~14_combout\ = (\ram_inst|Decoder1~0_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[0][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~0_combout\ & (((\ram_inst|reg_array[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~12_combout\,
	datab => \ram_inst|Decoder1~0_combout\,
	datac => \ram_inst|reg_array[0][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[0][3]~14_combout\);

-- Location: LCFF_X46_Y20_N9
\ram_inst|reg_array[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][3]~regout\);

-- Location: LCCOMB_X46_Y20_N26
\ram_inst|reg_read_data~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~49_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[2][3]~regout\)) # (!\dec_inst|reg_addr\(1) & 
-- ((\ram_inst|reg_array[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[2][3]~regout\,
	datab => \ram_inst|reg_array[0][3]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~49_combout\);

-- Location: LCCOMB_X47_Y20_N28
\ram_inst|reg_read_data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~50_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~49_combout\ & ((\ram_inst|reg_array[3][3]~regout\))) # (!\ram_inst|reg_read_data~49_combout\ & (\ram_inst|reg_array[1][3]~regout\)))) # (!\dec_inst|reg_addr\(0) & 
-- (((\ram_inst|reg_read_data~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[1][3]~regout\,
	datab => \ram_inst|reg_array[3][3]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \ram_inst|reg_read_data~49_combout\,
	combout => \ram_inst|reg_read_data~50_combout\);

-- Location: LCCOMB_X45_Y20_N4
\ram_inst|reg_array[10][3]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][3]~65_combout\ = (\ram_inst|Decoder1~8_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[10][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~8_combout\ & (((\ram_inst|reg_array[10][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~8_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[10][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[10][3]~65_combout\);

-- Location: LCFF_X45_Y20_N5
\ram_inst|reg_array[10][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][3]~regout\);

-- Location: LCCOMB_X46_Y20_N2
\ram_inst|reg_read_data~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~41_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[10][3]~regout\))) # (!\dec_inst|reg_addr\(1) & 
-- (\ram_inst|reg_array[8][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[8][3]~regout\,
	datab => \ram_inst|reg_array[10][3]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~41_combout\);

-- Location: LCCOMB_X46_Y20_N6
\ram_inst|reg_read_data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~51_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[11][3]~regout\) # (!\ram_inst|reg_read_data~41_combout\))) # (!\dec_inst|reg_addr\(0) & ((\ram_inst|reg_read_data~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[11][3]~regout\,
	datab => \dec_inst|reg_addr\(0),
	datad => \ram_inst|reg_read_data~41_combout\,
	combout => \ram_inst|reg_read_data~51_combout\);

-- Location: LCCOMB_X47_Y20_N10
\ram_inst|reg_read_data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~52_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~51_combout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_read_data~50_combout\,
	datad => \ram_inst|reg_read_data~51_combout\,
	combout => \ram_inst|reg_read_data~52_combout\);

-- Location: LCCOMB_X45_Y20_N22
\ram_inst|reg_array[9][3]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[9][3]~68_combout\ = (\ram_inst|Decoder1~5_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[9][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~5_combout\ & (((\ram_inst|reg_array[9][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~5_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[9][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[9][3]~68_combout\);

-- Location: LCFF_X45_Y20_N23
\ram_inst|reg_array[9][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[9][3]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[9][3]~regout\);

-- Location: LCCOMB_X46_Y20_N0
\ram_inst|reg_read_data~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~42_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_array[9][3]~regout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_array[6][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[6][3]~regout\,
	datab => \ram_inst|reg_array[9][3]~regout\,
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|reg_read_data~42_combout\);

-- Location: LCCOMB_X45_Y20_N6
\ram_inst|reg_array[4][3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[4][3]~64_combout\ = (\ram_inst|Decoder1~1_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[4][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~1_combout\ & (((\ram_inst|reg_array[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~1_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[4][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[4][3]~64_combout\);

-- Location: LCFF_X45_Y20_N7
\ram_inst|reg_array[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[4][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][3]~regout\);

-- Location: LCCOMB_X46_Y20_N20
\ram_inst|reg_read_data~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~40_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[5][3]~regout\) # ((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (((\ram_inst|reg_array[4][3]~regout\ & !\dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[5][3]~regout\,
	datab => \ram_inst|reg_array[4][3]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~40_combout\);

-- Location: LCCOMB_X46_Y20_N16
\ram_inst|reg_read_data~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~43_combout\ = (\ram_inst|reg_read_data~42_combout\) # ((\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~41_combout\)) # (!\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_read_data~41_combout\,
	datac => \ram_inst|reg_read_data~42_combout\,
	datad => \ram_inst|reg_read_data~40_combout\,
	combout => \ram_inst|reg_read_data~43_combout\);

-- Location: LCCOMB_X46_Y21_N14
\ram_inst|reg_read_data~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~44_combout\ = (\dec_inst|reg_read_en~regout\ & ((\ram_inst|reg_read_data~43_combout\) # (\dec_inst|reg_addr\(3) $ (!\dec_inst|reg_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_read_en~regout\,
	datad => \ram_inst|reg_read_data~43_combout\,
	combout => \ram_inst|reg_read_data~44_combout\);

-- Location: LCCOMB_X43_Y20_N4
\ram_inst|reg_read_data~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~47_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_array[7][3]~regout\) # (!\ram_inst|reg_read_data~40_combout\))) # (!\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[7][3]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \ram_inst|reg_read_data~40_combout\,
	combout => \ram_inst|reg_read_data~47_combout\);

-- Location: LCCOMB_X44_Y20_N0
\ram_inst|reg_array[15][3]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[15][3]~72_combout\ = (\ram_inst|Decoder1~4_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[15][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~4_combout\ & (((\ram_inst|reg_array[15][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~12_combout\,
	datab => \ram_inst|Decoder1~4_combout\,
	datac => \ram_inst|reg_array[15][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[15][3]~72_combout\);

-- Location: LCFF_X44_Y20_N1
\ram_inst|reg_array[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[15][3]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[15][3]~regout\);

-- Location: LCCOMB_X45_Y20_N0
\ram_inst|reg_array[14][3]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[14][3]~69_combout\ = (\ram_inst|Decoder1~2_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[14][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~2_combout\ & (((\ram_inst|reg_array[14][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~2_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[14][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[14][3]~69_combout\);

-- Location: LCFF_X45_Y20_N1
\ram_inst|reg_array[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[14][3]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[14][3]~regout\);

-- Location: LCCOMB_X45_Y20_N10
\ram_inst|reg_array[13][3]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][3]~70_combout\ = (\ram_inst|Decoder1~9_combout\ & ((\ram_inst|reg_array[0][3]~13_combout\ & (\ram_inst|reg_array~12_combout\)) # (!\ram_inst|reg_array[0][3]~13_combout\ & ((\ram_inst|reg_array[13][3]~regout\))))) # 
-- (!\ram_inst|Decoder1~9_combout\ & (((\ram_inst|reg_array[13][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~9_combout\,
	datab => \ram_inst|reg_array~12_combout\,
	datac => \ram_inst|reg_array[13][3]~regout\,
	datad => \ram_inst|reg_array[0][3]~13_combout\,
	combout => \ram_inst|reg_array[13][3]~70_combout\);

-- Location: LCFF_X45_Y20_N11
\ram_inst|reg_array[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][3]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][3]~regout\);

-- Location: LCCOMB_X44_Y20_N30
\ram_inst|reg_read_data~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~45_combout\ = (\dec_inst|reg_addr\(1) & (((\dec_inst|reg_addr\(0))))) # (!\dec_inst|reg_addr\(1) & ((\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[13][3]~regout\))) # (!\dec_inst|reg_addr\(0) & 
-- (\ram_inst|reg_array[12][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[12][3]~regout\,
	datab => \ram_inst|reg_array[13][3]~regout\,
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|reg_read_data~45_combout\);

-- Location: LCCOMB_X44_Y20_N2
\ram_inst|reg_read_data~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~46_combout\ = (\dec_inst|reg_addr\(1) & ((\ram_inst|reg_read_data~45_combout\ & (\ram_inst|reg_array[15][3]~regout\)) # (!\ram_inst|reg_read_data~45_combout\ & ((\ram_inst|reg_array[14][3]~regout\))))) # (!\dec_inst|reg_addr\(1) & 
-- (((\ram_inst|reg_read_data~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \ram_inst|reg_array[15][3]~regout\,
	datac => \ram_inst|reg_array[14][3]~regout\,
	datad => \ram_inst|reg_read_data~45_combout\,
	combout => \ram_inst|reg_read_data~46_combout\);

-- Location: LCCOMB_X43_Y20_N26
\ram_inst|reg_read_data~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~48_combout\ = (\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~46_combout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(3),
	datac => \ram_inst|reg_read_data~47_combout\,
	datad => \ram_inst|reg_read_data~46_combout\,
	combout => \ram_inst|reg_read_data~48_combout\);

-- Location: LCCOMB_X46_Y21_N10
\ram_inst|reg_read_data~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~53_combout\ = (\ram_inst|reg_read_data~44_combout\ & ((\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~48_combout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \ram_inst|reg_read_data~52_combout\,
	datac => \ram_inst|reg_read_data~44_combout\,
	datad => \ram_inst|reg_read_data~48_combout\,
	combout => \ram_inst|reg_read_data~53_combout\);

-- Location: LCFF_X46_Y21_N11
\ram_inst|reg_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~53_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(3));

-- Location: LCCOMB_X47_Y22_N2
\ram_inst|reg_array[0][2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][2]~9_combout\ = ((!\dec_inst|bit_pos\(0) & \dec_inst|bit_pos\(1))) # (!\dec_inst|bit_set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|bit_pos\(0),
	datab => \dec_inst|bit_pos\(1),
	datad => \dec_inst|bit_set~regout\,
	combout => \ram_inst|reg_array[0][2]~9_combout\);

-- Location: LCCOMB_X45_Y22_N2
\ram_inst|reg_array[0][2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][2]~10_combout\ = (\ram_inst|reg_array[0][2]~9_combout\ & (\ram_inst|process_0~0_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_write_en~regout\,
	datab => \ram_inst|reg_array[0][2]~9_combout\,
	datac => \wreg_inst|w_to_ram~regout\,
	datad => \ram_inst|process_0~0_combout\,
	combout => \ram_inst|reg_array[0][2]~10_combout\);

-- Location: LCCOMB_X45_Y22_N8
\ram_inst|reg_array[2][2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[2][2]~56_combout\ = (\ram_inst|Decoder1~10_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[2][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~10_combout\ & (((\ram_inst|reg_array[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~10_combout\,
	datac => \ram_inst|reg_array[2][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[2][2]~56_combout\);

-- Location: LCFF_X45_Y22_N9
\ram_inst|reg_array[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[2][2]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[2][2]~regout\);

-- Location: LCCOMB_X46_Y21_N20
\ram_inst|Decoder1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~11_combout\ = (!\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~11_combout\);

-- Location: LCCOMB_X45_Y22_N30
\ram_inst|reg_array[1][2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[1][2]~57_combout\ = (\ram_inst|Decoder1~11_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[1][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~11_combout\ & (((\ram_inst|reg_array[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~11_combout\,
	datac => \ram_inst|reg_array[1][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[1][2]~57_combout\);

-- Location: LCFF_X45_Y22_N31
\ram_inst|reg_array[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[1][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[1][2]~regout\);

-- Location: LCCOMB_X44_Y22_N14
\ram_inst|reg_read_data~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~34_combout\ = (\dec_inst|reg_addr\(0) & (((\ram_inst|reg_array[1][2]~regout\) # (\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (\ram_inst|reg_array[0][2]~regout\ & ((!\dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[0][2]~regout\,
	datab => \ram_inst|reg_array[1][2]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~34_combout\);

-- Location: LCCOMB_X44_Y22_N8
\ram_inst|reg_read_data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~35_combout\ = (\ram_inst|reg_read_data~34_combout\ & ((\ram_inst|reg_array[3][2]~regout\) # ((!\dec_inst|reg_addr\(1))))) # (!\ram_inst|reg_read_data~34_combout\ & (((\ram_inst|reg_array[2][2]~regout\ & \dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[3][2]~regout\,
	datab => \ram_inst|reg_array[2][2]~regout\,
	datac => \ram_inst|reg_read_data~34_combout\,
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~35_combout\);

-- Location: LCCOMB_X45_Y22_N14
\ram_inst|reg_array[5][2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[5][2]~60_combout\ = (\ram_inst|Decoder1~13_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[5][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~13_combout\ & (((\ram_inst|reg_array[5][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~13_combout\,
	datac => \ram_inst|reg_array[5][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[5][2]~60_combout\);

-- Location: LCFF_X45_Y22_N15
\ram_inst|reg_array[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[5][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[5][2]~regout\);

-- Location: LCCOMB_X46_Y21_N16
\ram_inst|Decoder1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~15_combout\ = (\dec_inst|reg_addr\(1) & (\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(0) & !\dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~15_combout\);

-- Location: LCCOMB_X45_Y22_N28
\ram_inst|reg_array[7][2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[7][2]~62_combout\ = (\ram_inst|Decoder1~15_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[7][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~15_combout\ & (((\ram_inst|reg_array[7][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~15_combout\,
	datac => \ram_inst|reg_array[7][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[7][2]~62_combout\);

-- Location: LCFF_X45_Y22_N29
\ram_inst|reg_array[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[7][2]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[7][2]~regout\);

-- Location: LCCOMB_X44_Y22_N26
\ram_inst|reg_read_data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~37_combout\ = (\ram_inst|reg_read_data~36_combout\ & (((\ram_inst|reg_array[7][2]~regout\)) # (!\dec_inst|reg_addr\(0)))) # (!\ram_inst|reg_read_data~36_combout\ & (\dec_inst|reg_addr\(0) & (\ram_inst|reg_array[5][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~36_combout\,
	datab => \dec_inst|reg_addr\(0),
	datac => \ram_inst|reg_array[5][2]~regout\,
	datad => \ram_inst|reg_array[7][2]~regout\,
	combout => \ram_inst|reg_read_data~37_combout\);

-- Location: LCCOMB_X44_Y22_N28
\ram_inst|reg_read_data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~38_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~37_combout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_read_data~35_combout\,
	datad => \ram_inst|reg_read_data~37_combout\,
	combout => \ram_inst|reg_read_data~38_combout\);

-- Location: LCCOMB_X46_Y21_N4
\ram_inst|Decoder1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~7_combout\ = (\dec_inst|reg_addr\(1) & (!\dec_inst|reg_addr\(2) & (\dec_inst|reg_addr\(0) & \dec_inst|reg_addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(1),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(3),
	combout => \ram_inst|Decoder1~7_combout\);

-- Location: LCCOMB_X45_Y22_N18
\ram_inst|reg_array[11][2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[11][2]~53_combout\ = (\ram_inst|Decoder1~7_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[11][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~7_combout\ & (((\ram_inst|reg_array[11][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~7_combout\,
	datac => \ram_inst|reg_array[11][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[11][2]~53_combout\);

-- Location: LCFF_X45_Y22_N19
\ram_inst|reg_array[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[11][2]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[11][2]~regout\);

-- Location: LCCOMB_X44_Y22_N4
\ram_inst|reg_read_data~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~30_combout\ = (\ram_inst|reg_read_data~29_combout\ & ((\ram_inst|reg_array[11][2]~regout\) # (!\dec_inst|reg_addr\(1)))) # (!\ram_inst|reg_read_data~29_combout\ & ((\dec_inst|reg_addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~29_combout\,
	datab => \ram_inst|reg_array[11][2]~regout\,
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~30_combout\);

-- Location: LCCOMB_X45_Y22_N0
\ram_inst|reg_array[10][2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[10][2]~54_combout\ = (\ram_inst|Decoder1~8_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[10][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~8_combout\ & (((\ram_inst|reg_array[10][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~8_combout\,
	datac => \ram_inst|reg_array[10][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[10][2]~54_combout\);

-- Location: LCFF_X45_Y22_N1
\ram_inst|reg_array[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[10][2]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[10][2]~regout\);

-- Location: LCCOMB_X45_Y22_N10
\ram_inst|reg_array[13][2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[13][2]~55_combout\ = (\ram_inst|Decoder1~9_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[13][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~9_combout\ & (((\ram_inst|reg_array[13][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~9_combout\,
	datac => \ram_inst|reg_array[13][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[13][2]~55_combout\);

-- Location: LCFF_X45_Y22_N11
\ram_inst|reg_array[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[13][2]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[13][2]~regout\);

-- Location: LCCOMB_X44_Y22_N22
\ram_inst|reg_read_data~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~31_combout\ = (\dec_inst|reg_addr\(2) & ((\ram_inst|reg_array[13][2]~regout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_array[10][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_array[10][2]~regout\,
	datac => \ram_inst|reg_array[13][2]~regout\,
	datad => \dec_inst|reg_addr\(2),
	combout => \ram_inst|reg_read_data~31_combout\);

-- Location: LCCOMB_X45_Y22_N12
\ram_inst|reg_array[8][2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[8][2]~52_combout\ = (\ram_inst|Decoder1~6_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[8][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~6_combout\ & (((\ram_inst|reg_array[8][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~6_combout\,
	datac => \ram_inst|reg_array[8][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[8][2]~52_combout\);

-- Location: LCFF_X45_Y22_N13
\ram_inst|reg_array[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[8][2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[8][2]~regout\);

-- Location: LCCOMB_X44_Y22_N10
\ram_inst|reg_read_data~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~29_combout\ = (\dec_inst|reg_addr\(0) & ((\ram_inst|reg_array[9][2]~regout\) # ((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & (((\ram_inst|reg_array[8][2]~regout\ & !\dec_inst|reg_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[9][2]~regout\,
	datab => \ram_inst|reg_array[8][2]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~29_combout\);

-- Location: LCCOMB_X44_Y21_N4
\ram_inst|Decoder1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|Decoder1~3_combout\ = (\dec_inst|reg_addr\(3) & (\dec_inst|reg_addr\(2) & (!\dec_inst|reg_addr\(1) & !\dec_inst|reg_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \dec_inst|reg_addr\(2),
	datac => \dec_inst|reg_addr\(1),
	datad => \dec_inst|reg_addr\(0),
	combout => \ram_inst|Decoder1~3_combout\);

-- Location: LCCOMB_X45_Y22_N24
\ram_inst|reg_array[12][2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[12][2]~49_combout\ = (\ram_inst|Decoder1~3_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[12][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~3_combout\ & (((\ram_inst|reg_array[12][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \ram_inst|Decoder1~3_combout\,
	datac => \ram_inst|reg_array[12][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[12][2]~49_combout\);

-- Location: LCFF_X45_Y22_N25
\ram_inst|reg_array[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[12][2]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[12][2]~regout\);

-- Location: LCCOMB_X44_Y22_N6
\ram_inst|reg_read_data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~27_combout\ = (\dec_inst|reg_addr\(0) & (((\dec_inst|reg_addr\(1))))) # (!\dec_inst|reg_addr\(0) & ((\dec_inst|reg_addr\(1) & (\ram_inst|reg_array[14][2]~regout\)) # (!\dec_inst|reg_addr\(1) & 
-- ((\ram_inst|reg_array[12][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[14][2]~regout\,
	datab => \ram_inst|reg_array[12][2]~regout\,
	datac => \dec_inst|reg_addr\(0),
	datad => \dec_inst|reg_addr\(1),
	combout => \ram_inst|reg_read_data~27_combout\);

-- Location: LCCOMB_X43_Y22_N14
\ram_inst|reg_read_data~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~32_combout\ = (\ram_inst|reg_read_data~31_combout\) # ((\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~27_combout\))) # (!\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(2),
	datab => \ram_inst|reg_read_data~31_combout\,
	datac => \ram_inst|reg_read_data~29_combout\,
	datad => \ram_inst|reg_read_data~27_combout\,
	combout => \ram_inst|reg_read_data~32_combout\);

-- Location: LCCOMB_X44_Y22_N24
\ram_inst|reg_read_data~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~33_combout\ = (\ram_inst|reg_read_data~32_combout\ & ((\dec_inst|reg_addr\(2) & (\ram_inst|reg_read_data~28_combout\)) # (!\dec_inst|reg_addr\(2) & ((\ram_inst|reg_read_data~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data~28_combout\,
	datab => \dec_inst|reg_addr\(2),
	datac => \ram_inst|reg_read_data~30_combout\,
	datad => \ram_inst|reg_read_data~32_combout\,
	combout => \ram_inst|reg_read_data~33_combout\);

-- Location: LCCOMB_X45_Y22_N4
\ram_inst|reg_read_data~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_read_data~39_combout\ = (\dec_inst|reg_read_en~regout\ & ((\dec_inst|reg_addr\(3) & ((\ram_inst|reg_read_data~33_combout\))) # (!\dec_inst|reg_addr\(3) & (\ram_inst|reg_read_data~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|reg_addr\(3),
	datab => \ram_inst|reg_read_data~38_combout\,
	datac => \dec_inst|reg_read_en~regout\,
	datad => \ram_inst|reg_read_data~33_combout\,
	combout => \ram_inst|reg_read_data~39_combout\);

-- Location: LCFF_X45_Y22_N5
\ram_inst|reg_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_read_data~39_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_read_data\(2));

-- Location: LCCOMB_X47_Y23_N20
\wreg_inst|pc_skip~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|pc_skip~2_combout\ = (\ram_inst|reg_read_data\(0) & (!\ram_inst|reg_read_data\(2) & (!\ram_inst|reg_read_data\(1) & \dec_inst|is_decr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_read_data\(0),
	datab => \ram_inst|reg_read_data\(2),
	datac => \ram_inst|reg_read_data\(1),
	datad => \dec_inst|is_decr~regout\,
	combout => \wreg_inst|pc_skip~2_combout\);

-- Location: LCCOMB_X47_Y23_N4
\wreg_inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|Mux0~1_combout\ = (\wreg_inst|Mux0~0_combout\ & (((\ram_inst|reg_read_data\(3))) # (!\dec_inst|bit_pos\(1)))) # (!\wreg_inst|Mux0~0_combout\ & (\dec_inst|bit_pos\(1) & ((\ram_inst|reg_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Mux0~0_combout\,
	datab => \dec_inst|bit_pos\(1),
	datac => \ram_inst|reg_read_data\(3),
	datad => \ram_inst|reg_read_data\(2),
	combout => \wreg_inst|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y23_N10
\wreg_inst|pc_skip~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|pc_skip~1_combout\ = (\dec_inst|bit_test~regout\ & (!\dec_inst|write_w~regout\ & (\wreg_inst|Mux0~1_combout\ & !\dec_inst|is_decr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|bit_test~regout\,
	datab => \dec_inst|write_w~regout\,
	datac => \wreg_inst|Mux0~1_combout\,
	datad => \dec_inst|is_decr~regout\,
	combout => \wreg_inst|pc_skip~1_combout\);

-- Location: LCCOMB_X47_Y23_N24
\wreg_inst|pc_skip~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|pc_skip~3_combout\ = (\wreg_inst|pc_skip~0_combout\ & ((\wreg_inst|pc_skip~1_combout\) # ((!\ram_inst|reg_read_data\(3) & \wreg_inst|pc_skip~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|pc_skip~0_combout\,
	datab => \ram_inst|reg_read_data\(3),
	datac => \wreg_inst|pc_skip~2_combout\,
	datad => \wreg_inst|pc_skip~1_combout\,
	combout => \wreg_inst|pc_skip~3_combout\);

-- Location: LCFF_X47_Y23_N25
\wreg_inst|pc_skip\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|pc_skip~3_combout\,
	ena => \wreg_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|pc_skip~regout\);

-- Location: LCCOMB_X49_Y22_N22
\dec_inst|is_jump~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_jump~0_combout\ = (\dec_inst|Equal0~0_combout\ & (!\instr_inst|instruction\(8) & (!\instr_inst|instruction\(10)))) # (!\dec_inst|Equal0~0_combout\ & (((\dec_inst|is_jump~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(10),
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|is_jump~0_combout\);

-- Location: LCFF_X49_Y22_N23
\dec_inst|is_jump~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_jump~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_jump~reg0_regout\);

-- Location: LCCOMB_X47_Y21_N14
\pc_inst|pc_int[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int[1]~4_combout\ = (\dec_inst|is_jump~reg0_regout\) # ((!\dec_inst|is_ret~reg0_regout\ & \wreg_inst|pc_skip~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|is_ret~reg0_regout\,
	datac => \wreg_inst|pc_skip~regout\,
	datad => \dec_inst|is_jump~reg0_regout\,
	combout => \pc_inst|pc_int[1]~4_combout\);

-- Location: LCCOMB_X49_Y21_N2
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

-- Location: LCCOMB_X49_Y21_N4
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

-- Location: LCCOMB_X48_Y21_N10
\pc_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~0_combout\ = \pc_inst|pc_int\(1) $ (VCC)
-- \pc_inst|Add0~1\ = CARRY(\pc_inst|pc_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(1),
	datad => VCC,
	combout => \pc_inst|Add0~0_combout\,
	cout => \pc_inst|Add0~1\);

-- Location: LCCOMB_X49_Y21_N0
\pc_inst|pc_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~5_combout\ = (\pc_inst|pc_int[1]~3_combout\ & (\pc_inst|pc_int[1]~4_combout\)) # (!\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int[1]~4_combout\ & ((\pc_inst|Add0~0_combout\))) # (!\pc_inst|pc_int[1]~4_combout\ & 
-- (\pc_inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \pc_inst|pc_int[1]~4_combout\,
	datac => \pc_inst|Add1~2_combout\,
	datad => \pc_inst|Add0~0_combout\,
	combout => \pc_inst|pc_int~5_combout\);

-- Location: LCCOMB_X49_Y22_N12
\pc_inst|pc_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int[1]~3_combout\ = (\dec_inst|is_ret~reg0_regout\) # (\dec_inst|is_jump~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \dec_inst|is_jump~reg0_regout\,
	combout => \pc_inst|pc_int[1]~3_combout\);

-- Location: LCCOMB_X48_Y21_N8
\pc_inst|pc_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~6_combout\ = (\pc_inst|pc_int~5_combout\ & (((\dec_inst|jump_addr[1]~reg0_regout\) # (!\pc_inst|pc_int[1]~3_combout\)))) # (!\pc_inst|pc_int~5_combout\ & (\stack_int|ret_addr\(1) & ((\pc_inst|pc_int[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|ret_addr\(1),
	datab => \dec_inst|jump_addr[1]~reg0_regout\,
	datac => \pc_inst|pc_int~5_combout\,
	datad => \pc_inst|pc_int[1]~3_combout\,
	combout => \pc_inst|pc_int~6_combout\);

-- Location: LCCOMB_X47_Y21_N8
\pc_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Equal0~0_combout\ = (!\pipe_inst|state_mem\(1) & (!\pipe_inst|state_mem\(0) & !\pipe_inst|state_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pipe_inst|state_mem\(1),
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \pc_inst|Equal0~0_combout\);

-- Location: LCFF_X48_Y21_N9
\pc_inst|pc_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~6_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(1));

-- Location: LCCOMB_X47_Y21_N28
\instr_inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux6~0_combout\ = (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3) & (\pc_inst|pc_int\(1) $ (!\pc_inst|pc_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	datad => \pc_inst|pc_int\(2),
	combout => \instr_inst|Mux6~0_combout\);

-- Location: LCFF_X47_Y21_N29
\instr_inst|instruction[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux6~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(2));

-- Location: LCCOMB_X47_Y22_N20
\dec_inst|jump_addr[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[2]~3_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[2]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(2),
	datac => \dec_inst|jump_addr[2]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[2]~3_combout\);

-- Location: LCFF_X47_Y22_N21
\dec_inst|jump_addr[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y21_N12
\pc_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~2_combout\ = (\pc_inst|pc_int\(2) & (!\pc_inst|Add0~1\)) # (!\pc_inst|pc_int\(2) & ((\pc_inst|Add0~1\) # (GND)))
-- \pc_inst|Add0~3\ = CARRY((!\pc_inst|Add0~1\) # (!\pc_inst|pc_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(2),
	datad => VCC,
	cin => \pc_inst|Add0~1\,
	combout => \pc_inst|Add0~2_combout\,
	cout => \pc_inst|Add0~3\);

-- Location: LCCOMB_X46_Y22_N22
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

-- Location: LCCOMB_X46_Y20_N14
\stack_int|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Equal0~0_combout\ = (\pipe_inst|state_mem\(0) & (\pipe_inst|state_mem\(2) & !\pipe_inst|state_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(0),
	datac => \pipe_inst|state_mem\(2),
	datad => \pipe_inst|state_mem\(1),
	combout => \stack_int|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y22_N12
\stack_int|idx[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|idx[0]~0_combout\ = (\stack_int|Equal0~0_combout\ & ((\dec_inst|is_ret~reg0_regout\) # ((\ram_inst|reg_array[4][2]~regout\ & \dec_inst|is_jump~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][2]~regout\,
	datab => \dec_inst|is_jump~reg0_regout\,
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \stack_int|Equal0~0_combout\,
	combout => \stack_int|idx[0]~0_combout\);

-- Location: LCFF_X46_Y22_N23
\stack_int|idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|idx[0]~1_combout\,
	ena => \stack_int|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(0));

-- Location: LCCOMB_X48_Y20_N6
\stack_int|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~0_combout\ = \pc_inst|pc_int\(0) $ (VCC)
-- \stack_int|Add1~1\ = CARRY(\pc_inst|pc_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datad => VCC,
	combout => \stack_int|Add1~0_combout\,
	cout => \stack_int|Add1~1\);

-- Location: LCCOMB_X48_Y20_N8
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

-- Location: LCCOMB_X48_Y20_N10
\stack_int|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~4_combout\ = (\pc_inst|pc_int\(2) & (\stack_int|Add1~3\ $ (GND))) # (!\pc_inst|pc_int\(2) & (!\stack_int|Add1~3\ & VCC))
-- \stack_int|Add1~5\ = CARRY((\pc_inst|pc_int\(2) & !\stack_int|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(2),
	datad => VCC,
	cin => \stack_int|Add1~3\,
	combout => \stack_int|Add1~4_combout\,
	cout => \stack_int|Add1~5\);

-- Location: LCCOMB_X48_Y20_N26
\stack_int|stack_int[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][2]~feeder_combout\ = \stack_int|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~4_combout\,
	combout => \stack_int|stack_int[0][2]~feeder_combout\);

-- Location: LCCOMB_X47_Y20_N6
\stack_int|stack_int[1][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][0]~0_combout\ = (!\pipe_inst|state_mem\(1) & (!\dec_inst|is_ret~reg0_regout\ & (\pipe_inst|state_mem\(0) & \pipe_inst|state_mem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \dec_inst|is_ret~reg0_regout\,
	datac => \pipe_inst|state_mem\(0),
	datad => \pipe_inst|state_mem\(2),
	combout => \stack_int|stack_int[1][0]~0_combout\);

-- Location: LCCOMB_X46_Y22_N30
\stack_int|reset_scall~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|reset_scall~0_combout\ = (\stack_int|reset_scall~regout\ & ((\ram_inst|reg_array[4][2]~regout\) # (!\stack_int|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][2]~regout\,
	datac => \stack_int|reset_scall~regout\,
	datad => \stack_int|Equal0~0_combout\,
	combout => \stack_int|reset_scall~0_combout\);

-- Location: LCCOMB_X46_Y22_N20
\stack_int|reset_scall~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|reset_scall~1_combout\ = (\stack_int|reset_scall~0_combout\) # ((\ram_inst|reg_array[4][2]~regout\ & (\dec_inst|is_jump~reg0_regout\ & \stack_int|stack_int[1][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array[4][2]~regout\,
	datab => \dec_inst|is_jump~reg0_regout\,
	datac => \stack_int|stack_int[1][0]~0_combout\,
	datad => \stack_int|reset_scall~0_combout\,
	combout => \stack_int|reset_scall~1_combout\);

-- Location: LCFF_X46_Y22_N21
\stack_int|reset_scall\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|reset_scall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|reset_scall~regout\);

-- Location: LCCOMB_X44_Y22_N30
\ram_inst|reg_array~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~15_combout\ = (\ram_inst|Decoder1~1_combout\ & (\ram_inst|reg_array[0][2]~9_combout\ & ((\dec_inst|reg_write_en~regout\) # (\wreg_inst|w_to_ram~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~1_combout\,
	datab => \ram_inst|reg_array[0][2]~9_combout\,
	datac => \dec_inst|reg_write_en~regout\,
	datad => \wreg_inst|w_to_ram~regout\,
	combout => \ram_inst|reg_array~15_combout\);

-- Location: LCCOMB_X45_Y22_N22
\ram_inst|reg_array~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~16_combout\ = (!\stack_int|reset_scall~regout\ & ((\ram_inst|reg_array~15_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array~15_combout\ & ((\ram_inst|reg_array[4][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|reg_array~8_combout\,
	datab => \stack_int|reset_scall~regout\,
	datac => \ram_inst|reg_array[4][2]~regout\,
	datad => \ram_inst|reg_array~15_combout\,
	combout => \ram_inst|reg_array~16_combout\);

-- Location: LCFF_X45_Y22_N23
\ram_inst|reg_array[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array~16_combout\,
	ena => \ram_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[4][2]~regout\);

-- Location: LCCOMB_X47_Y20_N0
\stack_int|stack_int[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][0]~1_combout\ = (\dec_inst|is_jump~reg0_regout\ & (!\stack_int|idx\(0) & (\ram_inst|reg_array[4][2]~regout\ & \stack_int|stack_int[1][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \stack_int|idx\(0),
	datac => \ram_inst|reg_array[4][2]~regout\,
	datad => \stack_int|stack_int[1][0]~0_combout\,
	combout => \stack_int|stack_int[0][0]~1_combout\);

-- Location: LCFF_X48_Y20_N27
\stack_int|stack_int[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][2]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][2]~regout\);

-- Location: LCCOMB_X49_Y20_N12
\stack_int|ret_addr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~3_combout\ = (\stack_int|idx\(0) & ((\stack_int|stack_int[0][2]~regout\))) # (!\stack_int|idx\(0) & (\stack_int|stack_int[1][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|stack_int[1][2]~regout\,
	datab => \stack_int|idx\(0),
	datad => \stack_int|stack_int[0][2]~regout\,
	combout => \stack_int|ret_addr~3_combout\);

-- Location: LCCOMB_X49_Y20_N20
\stack_int|ret_addr[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr[0]~1_combout\ = (!\pipe_inst|state_mem\(1) & (\pipe_inst|state_mem\(2) & (\dec_inst|is_ret~reg0_regout\ & \pipe_inst|state_mem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pipe_inst|state_mem\(1),
	datab => \pipe_inst|state_mem\(2),
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \pipe_inst|state_mem\(0),
	combout => \stack_int|ret_addr[0]~1_combout\);

-- Location: LCFF_X49_Y20_N13
\stack_int|ret_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~3_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(2));

-- Location: LCCOMB_X49_Y21_N6
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

-- Location: LCCOMB_X49_Y21_N24
\pc_inst|pc_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~7_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\stack_int|ret_addr\(2)) # ((\pc_inst|pc_int[1]~4_combout\)))) # (!\pc_inst|pc_int[1]~3_combout\ & (((!\pc_inst|pc_int[1]~4_combout\ & \pc_inst|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \stack_int|ret_addr\(2),
	datac => \pc_inst|pc_int[1]~4_combout\,
	datad => \pc_inst|Add1~4_combout\,
	combout => \pc_inst|pc_int~7_combout\);

-- Location: LCCOMB_X48_Y21_N6
\pc_inst|pc_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~8_combout\ = (\pc_inst|pc_int[1]~4_combout\ & ((\pc_inst|pc_int~7_combout\ & (\dec_inst|jump_addr[2]~reg0_regout\)) # (!\pc_inst|pc_int~7_combout\ & ((\pc_inst|Add0~2_combout\))))) # (!\pc_inst|pc_int[1]~4_combout\ & 
-- (((\pc_inst|pc_int~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~4_combout\,
	datab => \dec_inst|jump_addr[2]~reg0_regout\,
	datac => \pc_inst|Add0~2_combout\,
	datad => \pc_inst|pc_int~7_combout\,
	combout => \pc_inst|pc_int~8_combout\);

-- Location: LCFF_X48_Y21_N7
\pc_inst|pc_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~8_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(2));

-- Location: LCCOMB_X48_Y20_N12
\stack_int|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~6_combout\ = (\pc_inst|pc_int\(3) & (!\stack_int|Add1~5\)) # (!\pc_inst|pc_int\(3) & ((\stack_int|Add1~5\) # (GND)))
-- \stack_int|Add1~7\ = CARRY((!\stack_int|Add1~5\) # (!\pc_inst|pc_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(3),
	datad => VCC,
	cin => \stack_int|Add1~5\,
	combout => \stack_int|Add1~6_combout\,
	cout => \stack_int|Add1~7\);

-- Location: LCCOMB_X47_Y20_N30
\stack_int|stack_int[1][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][0]~2_combout\ = (\dec_inst|is_jump~reg0_regout\ & (\stack_int|idx\(0) & (\ram_inst|reg_array[4][2]~regout\ & \stack_int|stack_int[1][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \stack_int|idx\(0),
	datac => \ram_inst|reg_array[4][2]~regout\,
	datad => \stack_int|stack_int[1][0]~0_combout\,
	combout => \stack_int|stack_int[1][0]~2_combout\);

-- Location: LCFF_X47_Y20_N19
\stack_int|stack_int[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~6_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][3]~regout\);

-- Location: LCCOMB_X48_Y20_N24
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

-- Location: LCFF_X48_Y20_N25
\stack_int|stack_int[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][3]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][3]~regout\);

-- Location: LCCOMB_X49_Y20_N6
\stack_int|ret_addr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~4_combout\ = (\stack_int|idx\(0) & ((\stack_int|stack_int[0][3]~regout\))) # (!\stack_int|idx\(0) & (\stack_int|stack_int[1][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|idx\(0),
	datab => \stack_int|stack_int[1][3]~regout\,
	datad => \stack_int|stack_int[0][3]~regout\,
	combout => \stack_int|ret_addr~4_combout\);

-- Location: LCFF_X49_Y20_N7
\stack_int|ret_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~4_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(3));

-- Location: LCCOMB_X47_Y22_N14
\dec_inst|jump_addr[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[3]~4_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[3]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(3),
	datac => \dec_inst|jump_addr[3]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[3]~4_combout\);

-- Location: LCFF_X47_Y22_N15
\dec_inst|jump_addr[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[3]~reg0_regout\);

-- Location: LCCOMB_X48_Y21_N14
\pc_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~4_combout\ = (\pc_inst|pc_int\(3) & (\pc_inst|Add0~3\ $ (GND))) # (!\pc_inst|pc_int\(3) & (!\pc_inst|Add0~3\ & VCC))
-- \pc_inst|Add0~5\ = CARRY((\pc_inst|pc_int\(3) & !\pc_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(3),
	datad => VCC,
	cin => \pc_inst|Add0~3\,
	combout => \pc_inst|Add0~4_combout\,
	cout => \pc_inst|Add0~5\);

-- Location: LCCOMB_X49_Y21_N8
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

-- Location: LCCOMB_X48_Y21_N30
\pc_inst|pc_int~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~9_combout\ = (\pc_inst|pc_int[1]~4_combout\ & ((\pc_inst|Add0~4_combout\) # ((\pc_inst|pc_int[1]~3_combout\)))) # (!\pc_inst|pc_int[1]~4_combout\ & (((\pc_inst|Add1~6_combout\ & !\pc_inst|pc_int[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~4_combout\,
	datab => \pc_inst|Add0~4_combout\,
	datac => \pc_inst|Add1~6_combout\,
	datad => \pc_inst|pc_int[1]~3_combout\,
	combout => \pc_inst|pc_int~9_combout\);

-- Location: LCCOMB_X47_Y21_N30
\pc_inst|pc_int~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~10_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int~9_combout\ & ((\dec_inst|jump_addr[3]~reg0_regout\))) # (!\pc_inst|pc_int~9_combout\ & (\stack_int|ret_addr\(3))))) # (!\pc_inst|pc_int[1]~3_combout\ & 
-- (((\pc_inst|pc_int~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \stack_int|ret_addr\(3),
	datac => \dec_inst|jump_addr[3]~reg0_regout\,
	datad => \pc_inst|pc_int~9_combout\,
	combout => \pc_inst|pc_int~10_combout\);

-- Location: LCFF_X47_Y21_N31
\pc_inst|pc_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~10_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(3));

-- Location: LCCOMB_X47_Y21_N0
\instr_inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instr_inst|Mux2~0_combout\ = (\pc_inst|pc_int\(0) & ((\pc_inst|pc_int\(3)) # (!\pc_inst|pc_int\(1)))) # (!\pc_inst|pc_int\(0) & (!\pc_inst|pc_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \pc_inst|pc_int\(3),
	datac => \pc_inst|pc_int\(1),
	combout => \instr_inst|Mux2~0_combout\);

-- Location: LCFF_X47_Y21_N1
\instr_inst|instruction[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \instr_inst|Mux2~0_combout\,
	ena => \instr_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instr_inst|instruction\(7));

-- Location: LCCOMB_X49_Y22_N2
\dec_inst|is_ret~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~3_combout\ = (!\instr_inst|instruction\(6) & (\instr_inst|instruction\(7) & (\instr_inst|instruction\(10) & \instr_inst|instruction\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(6),
	datab => \instr_inst|instruction\(7),
	datac => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(5),
	combout => \dec_inst|is_ret~3_combout\);

-- Location: LCCOMB_X49_Y22_N16
\dec_inst|is_ret~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|is_ret~4_combout\ = (\dec_inst|Equal0~0_combout\ & (!\instr_inst|instruction\(8) & (\dec_inst|is_ret~3_combout\))) # (!\dec_inst|Equal0~0_combout\ & (((\dec_inst|is_ret~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \dec_inst|is_ret~3_combout\,
	datac => \dec_inst|is_ret~reg0_regout\,
	datad => \dec_inst|Equal0~0_combout\,
	combout => \dec_inst|is_ret~4_combout\);

-- Location: LCFF_X49_Y22_N17
\dec_inst|is_ret~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|is_ret~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|is_ret~reg0_regout\);

-- Location: LCCOMB_X47_Y21_N22
\pc_inst|pc_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~1_combout\ = (!\dec_inst|is_ret~reg0_regout\ & ((\wreg_inst|pc_skip~regout\ & (\pc_inst|pc_int\(0))) # (!\wreg_inst|pc_skip~regout\ & ((\pc_inst|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(0),
	datab => \dec_inst|is_ret~reg0_regout\,
	datac => \wreg_inst|pc_skip~regout\,
	datad => \pc_inst|Add1~0_combout\,
	combout => \pc_inst|pc_int~1_combout\);

-- Location: LCCOMB_X47_Y22_N16
\dec_inst|jump_addr[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[0]~1_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[0]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(0),
	datac => \dec_inst|jump_addr[0]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[0]~1_combout\);

-- Location: LCFF_X47_Y22_N17
\dec_inst|jump_addr[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[0]~reg0_regout\);

-- Location: LCCOMB_X47_Y20_N2
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

-- Location: LCFF_X47_Y20_N3
\stack_int|stack_int[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][0]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][0]~regout\);

-- Location: LCCOMB_X47_Y20_N12
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

-- Location: LCFF_X47_Y20_N13
\stack_int|stack_int[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][0]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][0]~regout\);

-- Location: LCCOMB_X49_Y20_N8
\stack_int|ret_addr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~0_combout\ = (\stack_int|idx\(0) & ((\stack_int|stack_int[0][0]~regout\))) # (!\stack_int|idx\(0) & (\stack_int|stack_int[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|idx\(0),
	datab => \stack_int|stack_int[1][0]~regout\,
	datad => \stack_int|stack_int[0][0]~regout\,
	combout => \stack_int|ret_addr~0_combout\);

-- Location: LCFF_X49_Y20_N9
\stack_int|ret_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~0_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(0));

-- Location: LCCOMB_X49_Y20_N26
\pc_inst|pc_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~0_combout\ = (\stack_int|ret_addr\(0) & \dec_inst|is_ret~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack_int|ret_addr\(0),
	datad => \dec_inst|is_ret~reg0_regout\,
	combout => \pc_inst|pc_int~0_combout\);

-- Location: LCCOMB_X47_Y21_N12
\pc_inst|pc_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~2_combout\ = (\dec_inst|is_jump~reg0_regout\ & (((\dec_inst|jump_addr[0]~reg0_regout\)))) # (!\dec_inst|is_jump~reg0_regout\ & ((\pc_inst|pc_int~1_combout\) # ((\pc_inst|pc_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_jump~reg0_regout\,
	datab => \pc_inst|pc_int~1_combout\,
	datac => \dec_inst|jump_addr[0]~reg0_regout\,
	datad => \pc_inst|pc_int~0_combout\,
	combout => \pc_inst|pc_int~2_combout\);

-- Location: LCFF_X47_Y21_N13
\pc_inst|pc_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~2_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(0));

-- Location: LCCOMB_X47_Y21_N4
\pc_inst|pc_int[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int[1]~11_combout\ = (!\dec_inst|is_ret~reg0_regout\ & \wreg_inst|pc_skip~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_inst|is_ret~reg0_regout\,
	datac => \wreg_inst|pc_skip~regout\,
	combout => \pc_inst|pc_int[1]~11_combout\);

-- Location: LCCOMB_X48_Y20_N14
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

-- Location: LCFF_X47_Y20_N5
\stack_int|stack_int[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~8_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][4]~regout\);

-- Location: LCFF_X47_Y20_N27
\stack_int|stack_int[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~8_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][4]~regout\);

-- Location: LCCOMB_X49_Y20_N28
\stack_int|ret_addr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~5_combout\ = (\stack_int|idx\(0) & ((\stack_int|stack_int[0][4]~regout\))) # (!\stack_int|idx\(0) & (\stack_int|stack_int[1][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|idx\(0),
	datab => \stack_int|stack_int[1][4]~regout\,
	datad => \stack_int|stack_int[0][4]~regout\,
	combout => \stack_int|ret_addr~5_combout\);

-- Location: LCFF_X49_Y20_N29
\stack_int|ret_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~5_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(4));

-- Location: LCCOMB_X49_Y21_N10
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

-- Location: LCCOMB_X49_Y21_N30
\pc_inst|pc_int~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~12_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\stack_int|ret_addr\(4)) # ((\pc_inst|pc_int[1]~4_combout\)))) # (!\pc_inst|pc_int[1]~3_combout\ & (((!\pc_inst|pc_int[1]~4_combout\ & \pc_inst|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \stack_int|ret_addr\(4),
	datac => \pc_inst|pc_int[1]~4_combout\,
	datad => \pc_inst|Add1~8_combout\,
	combout => \pc_inst|pc_int~12_combout\);

-- Location: LCCOMB_X48_Y21_N28
\pc_inst|pc_int~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~13_combout\ = (\pc_inst|pc_int~12_combout\ & (((!\pc_inst|pc_int[1]~11_combout\ & !\dec_inst|is_jump~reg0_regout\)))) # (!\pc_inst|pc_int~12_combout\ & (\pc_inst|Add0~6_combout\ & ((\pc_inst|pc_int[1]~11_combout\) # 
-- (\dec_inst|is_jump~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|Add0~6_combout\,
	datab => \pc_inst|pc_int[1]~11_combout\,
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|pc_int~12_combout\,
	combout => \pc_inst|pc_int~13_combout\);

-- Location: LCFF_X48_Y21_N29
\pc_inst|pc_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~13_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(4));

-- Location: LCCOMB_X48_Y20_N16
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

-- Location: LCFF_X48_Y20_N29
\stack_int|stack_int[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~10_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][5]~regout\);

-- Location: LCCOMB_X49_Y20_N10
\stack_int|ret_addr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~6_combout\ = (\stack_int|idx\(0) & (\stack_int|stack_int[0][5]~regout\)) # (!\stack_int|idx\(0) & ((\stack_int|stack_int[1][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|stack_int[0][5]~regout\,
	datab => \stack_int|stack_int[1][5]~regout\,
	datad => \stack_int|idx\(0),
	combout => \stack_int|ret_addr~6_combout\);

-- Location: LCFF_X49_Y20_N11
\stack_int|ret_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~6_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(5));

-- Location: LCCOMB_X48_Y21_N18
\pc_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add0~8_combout\ = (\pc_inst|pc_int\(5) & (\pc_inst|Add0~7\ $ (GND))) # (!\pc_inst|pc_int\(5) & (!\pc_inst|Add0~7\ & VCC))
-- \pc_inst|Add0~9\ = CARRY((\pc_inst|pc_int\(5) & !\pc_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(5),
	datad => VCC,
	cin => \pc_inst|Add0~7\,
	combout => \pc_inst|Add0~8_combout\,
	cout => \pc_inst|Add0~9\);

-- Location: LCCOMB_X49_Y21_N12
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

-- Location: LCCOMB_X49_Y21_N20
\pc_inst|pc_int~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~14_combout\ = (\pc_inst|pc_int[1]~3_combout\ & (((\pc_inst|pc_int[1]~4_combout\)))) # (!\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int[1]~4_combout\ & (\pc_inst|Add0~8_combout\)) # (!\pc_inst|pc_int[1]~4_combout\ & 
-- ((\pc_inst|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \pc_inst|Add0~8_combout\,
	datac => \pc_inst|pc_int[1]~4_combout\,
	datad => \pc_inst|Add1~10_combout\,
	combout => \pc_inst|pc_int~14_combout\);

-- Location: LCCOMB_X48_Y21_N26
\pc_inst|pc_int~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~15_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int~14_combout\ & (\dec_inst|jump_addr[5]~reg0_regout\)) # (!\pc_inst|pc_int~14_combout\ & ((\stack_int|ret_addr\(5)))))) # (!\pc_inst|pc_int[1]~3_combout\ & 
-- (((\pc_inst|pc_int~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|jump_addr[5]~reg0_regout\,
	datab => \pc_inst|pc_int[1]~3_combout\,
	datac => \stack_int|ret_addr\(5),
	datad => \pc_inst|pc_int~14_combout\,
	combout => \pc_inst|pc_int~15_combout\);

-- Location: LCFF_X48_Y21_N27
\pc_inst|pc_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~15_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(5));

-- Location: LCCOMB_X47_Y22_N6
\dec_inst|jump_addr[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[6]~6_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[6]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(6),
	datac => \dec_inst|jump_addr[6]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[6]~6_combout\);

-- Location: LCFF_X47_Y22_N7
\dec_inst|jump_addr[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[6]~reg0_regout\);

-- Location: LCCOMB_X48_Y20_N18
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

-- Location: LCCOMB_X47_Y20_N22
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

-- Location: LCFF_X47_Y20_N23
\stack_int|stack_int[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][6]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][6]~regout\);

-- Location: LCCOMB_X49_Y20_N16
\stack_int|ret_addr~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~7_combout\ = (\stack_int|idx\(0) & (\stack_int|stack_int[0][6]~regout\)) # (!\stack_int|idx\(0) & ((\stack_int|stack_int[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|stack_int[0][6]~regout\,
	datac => \stack_int|stack_int[1][6]~regout\,
	datad => \stack_int|idx\(0),
	combout => \stack_int|ret_addr~7_combout\);

-- Location: LCFF_X49_Y20_N17
\stack_int|ret_addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~7_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(6));

-- Location: LCCOMB_X49_Y21_N14
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

-- Location: LCCOMB_X49_Y21_N26
\pc_inst|pc_int~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~16_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int[1]~4_combout\) # ((\stack_int|ret_addr\(6))))) # (!\pc_inst|pc_int[1]~3_combout\ & (!\pc_inst|pc_int[1]~4_combout\ & ((\pc_inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \pc_inst|pc_int[1]~4_combout\,
	datac => \stack_int|ret_addr\(6),
	datad => \pc_inst|Add1~12_combout\,
	combout => \pc_inst|pc_int~16_combout\);

-- Location: LCCOMB_X48_Y21_N4
\pc_inst|pc_int~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~17_combout\ = (\pc_inst|pc_int~16_combout\ & (((\dec_inst|jump_addr[6]~reg0_regout\) # (!\pc_inst|pc_int[1]~4_combout\)))) # (!\pc_inst|pc_int~16_combout\ & (\pc_inst|Add0~10_combout\ & ((\pc_inst|pc_int[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|Add0~10_combout\,
	datab => \dec_inst|jump_addr[6]~reg0_regout\,
	datac => \pc_inst|pc_int~16_combout\,
	datad => \pc_inst|pc_int[1]~4_combout\,
	combout => \pc_inst|pc_int~17_combout\);

-- Location: LCFF_X48_Y21_N5
\pc_inst|pc_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~17_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(6));

-- Location: LCCOMB_X48_Y20_N20
\stack_int|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add1~14_combout\ = (\pc_inst|pc_int\(7) & (!\stack_int|Add1~13\)) # (!\pc_inst|pc_int\(7) & ((\stack_int|Add1~13\) # (GND)))
-- \stack_int|Add1~15\ = CARRY((!\stack_int|Add1~13\) # (!\pc_inst|pc_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int\(7),
	datad => VCC,
	cin => \stack_int|Add1~13\,
	combout => \stack_int|Add1~14_combout\,
	cout => \stack_int|Add1~15\);

-- Location: LCFF_X47_Y20_N25
\stack_int|stack_int[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~14_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][7]~regout\);

-- Location: LCFF_X47_Y20_N15
\stack_int|stack_int[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~14_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][7]~regout\);

-- Location: LCCOMB_X49_Y20_N18
\stack_int|ret_addr~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~8_combout\ = (\stack_int|idx\(0) & ((\stack_int|stack_int[0][7]~regout\))) # (!\stack_int|idx\(0) & (\stack_int|stack_int[1][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|idx\(0),
	datab => \stack_int|stack_int[1][7]~regout\,
	datad => \stack_int|stack_int[0][7]~regout\,
	combout => \stack_int|ret_addr~8_combout\);

-- Location: LCFF_X49_Y20_N19
\stack_int|ret_addr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~8_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(7));

-- Location: LCCOMB_X49_Y21_N16
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

-- Location: LCCOMB_X49_Y21_N28
\pc_inst|pc_int~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~18_combout\ = (\pc_inst|pc_int[1]~3_combout\ & (\pc_inst|pc_int[1]~4_combout\)) # (!\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int[1]~4_combout\ & ((\pc_inst|Add0~12_combout\))) # (!\pc_inst|pc_int[1]~4_combout\ & 
-- (\pc_inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \pc_inst|pc_int[1]~4_combout\,
	datac => \pc_inst|Add1~14_combout\,
	datad => \pc_inst|Add0~12_combout\,
	combout => \pc_inst|pc_int~18_combout\);

-- Location: LCCOMB_X48_Y21_N2
\pc_inst|pc_int~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~19_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\pc_inst|pc_int~18_combout\ & (\dec_inst|jump_addr[7]~reg0_regout\)) # (!\pc_inst|pc_int~18_combout\ & ((\stack_int|ret_addr\(7)))))) # (!\pc_inst|pc_int[1]~3_combout\ & 
-- (((\pc_inst|pc_int~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|jump_addr[7]~reg0_regout\,
	datab => \pc_inst|pc_int[1]~3_combout\,
	datac => \stack_int|ret_addr\(7),
	datad => \pc_inst|pc_int~18_combout\,
	combout => \pc_inst|pc_int~19_combout\);

-- Location: LCFF_X48_Y21_N3
\pc_inst|pc_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~19_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(7));

-- Location: LCCOMB_X48_Y20_N22
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

-- Location: LCFF_X47_Y20_N11
\stack_int|stack_int[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~16_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][8]~regout\);

-- Location: LCCOMB_X49_Y20_N0
\stack_int|ret_addr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~9_combout\ = (\stack_int|idx\(0) & (\stack_int|stack_int[0][8]~regout\)) # (!\stack_int|idx\(0) & ((\stack_int|stack_int[1][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|stack_int[0][8]~regout\,
	datab => \stack_int|stack_int[1][8]~regout\,
	datad => \stack_int|idx\(0),
	combout => \stack_int|ret_addr~9_combout\);

-- Location: LCFF_X49_Y20_N1
\stack_int|ret_addr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~9_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(8));

-- Location: LCCOMB_X49_Y21_N18
\pc_inst|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|Add1~16_combout\ = \pc_inst|pc_int\(8) $ (!\pc_inst|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_inst|pc_int\(8),
	cin => \pc_inst|Add1~15\,
	combout => \pc_inst|Add1~16_combout\);

-- Location: LCCOMB_X49_Y21_N22
\pc_inst|pc_int~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~20_combout\ = (\pc_inst|pc_int[1]~3_combout\ & ((\stack_int|ret_addr\(8)) # ((\pc_inst|pc_int[1]~4_combout\)))) # (!\pc_inst|pc_int[1]~3_combout\ & (((!\pc_inst|pc_int[1]~4_combout\ & \pc_inst|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|pc_int[1]~3_combout\,
	datab => \stack_int|ret_addr\(8),
	datac => \pc_inst|pc_int[1]~4_combout\,
	datad => \pc_inst|Add1~16_combout\,
	combout => \pc_inst|pc_int~20_combout\);

-- Location: LCCOMB_X48_Y21_N0
\pc_inst|pc_int~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_inst|pc_int~21_combout\ = (\pc_inst|pc_int~20_combout\ & (((!\pc_inst|pc_int[1]~11_combout\ & !\dec_inst|is_jump~reg0_regout\)))) # (!\pc_inst|pc_int~20_combout\ & (\pc_inst|Add0~14_combout\ & ((\pc_inst|pc_int[1]~11_combout\) # 
-- (\dec_inst|is_jump~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_inst|Add0~14_combout\,
	datab => \pc_inst|pc_int[1]~11_combout\,
	datac => \dec_inst|is_jump~reg0_regout\,
	datad => \pc_inst|pc_int~20_combout\,
	combout => \pc_inst|pc_int~21_combout\);

-- Location: LCFF_X48_Y21_N1
\pc_inst|pc_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \pc_inst|pc_int~21_combout\,
	ena => \pc_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc_inst|pc_int\(8));

-- Location: LCCOMB_X48_Y22_N10
\dec_inst|immediate~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|immediate~0_combout\ = (\instr_inst|instruction\(0) & (\dec_inst|write_w~1_combout\ & \dec_inst|is_ret~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(0),
	datac => \dec_inst|write_w~1_combout\,
	datad => \dec_inst|is_ret~2_combout\,
	combout => \dec_inst|immediate~0_combout\);

-- Location: LCFF_X48_Y22_N11
\dec_inst|immediate[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|immediate~0_combout\,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|immediate\(0));

-- Location: LCCOMB_X46_Y23_N6
\wreg_inst|reg_write_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|reg_write_data~8_combout\ = (\wreg_inst|reg_write_data~7_combout\ & (((\wreg_inst|w_content\(2))) # (!\wreg_inst|reg_write_data[2]~0_combout\))) # (!\wreg_inst|reg_write_data~7_combout\ & (\wreg_inst|reg_write_data[2]~0_combout\ & 
-- ((\wreg_inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data~7_combout\,
	datab => \wreg_inst|reg_write_data[2]~0_combout\,
	datac => \wreg_inst|w_content\(2),
	datad => \wreg_inst|Add0~4_combout\,
	combout => \wreg_inst|reg_write_data~8_combout\);

-- Location: LCFF_X47_Y23_N23
\wreg_inst|reg_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \wreg_inst|reg_write_data~8_combout\,
	sload => VCC,
	ena => \wreg_inst|reg_write_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|reg_write_data\(2));

-- Location: LCCOMB_X46_Y22_N26
\ram_inst|reg_array~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array~8_combout\ = (\wreg_inst|reg_write_data\(2)) # (\dec_inst|bit_set~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|reg_write_data\(2),
	datad => \dec_inst|bit_set~regout\,
	combout => \ram_inst|reg_array~8_combout\);

-- Location: LCCOMB_X44_Y22_N20
\ram_inst|reg_array[0][2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ram_inst|reg_array[0][2]~11_combout\ = (\ram_inst|Decoder1~0_combout\ & ((\ram_inst|reg_array[0][2]~10_combout\ & (\ram_inst|reg_array~8_combout\)) # (!\ram_inst|reg_array[0][2]~10_combout\ & ((\ram_inst|reg_array[0][2]~regout\))))) # 
-- (!\ram_inst|Decoder1~0_combout\ & (((\ram_inst|reg_array[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_inst|Decoder1~0_combout\,
	datab => \ram_inst|reg_array~8_combout\,
	datac => \ram_inst|reg_array[0][2]~regout\,
	datad => \ram_inst|reg_array[0][2]~10_combout\,
	combout => \ram_inst|reg_array[0][2]~11_combout\);

-- Location: LCFF_X44_Y22_N21
\ram_inst|reg_array[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \ram_inst|reg_array[0][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ram_inst|reg_array[0][2]~regout\);

-- Location: LCCOMB_X44_Y23_N2
\wreg_inst|w_content~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~6_combout\ = \wreg_inst|w_content[3]~5_combout\ $ (((\ram_inst|reg_read_data\(0) & !\wreg_inst|w_content[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_inst|reg_read_data\(0),
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content[3]~5_combout\,
	combout => \wreg_inst|w_content~6_combout\);

-- Location: LCCOMB_X45_Y23_N12
\wreg_inst|w_content~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content~7_combout\ = (\wreg_inst|w_content[3]~4_combout\ & (\dec_inst|immediate\(0) & ((\wreg_inst|w_content\(0)) # (!\wreg_inst|w_content~6_combout\)))) # (!\wreg_inst|w_content[3]~4_combout\ & (((\wreg_inst|w_content~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|immediate\(0),
	datab => \wreg_inst|w_content\(0),
	datac => \wreg_inst|w_content[3]~4_combout\,
	datad => \wreg_inst|w_content~6_combout\,
	combout => \wreg_inst|w_content~7_combout\);

-- Location: LCCOMB_X45_Y23_N0
\wreg_inst|w_content[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|w_content[0]~0_combout\ = (\wreg_inst|process_0~0_combout\ & (\wreg_inst|RESULT~1_combout\)) # (!\wreg_inst|process_0~0_combout\ & ((\wreg_inst|w_content~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|RESULT~1_combout\,
	datab => \wreg_inst|process_0~0_combout\,
	datad => \wreg_inst|w_content~7_combout\,
	combout => \wreg_inst|w_content[0]~0_combout\);

-- Location: LCFF_X45_Y23_N1
\wreg_inst|w_content[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|w_content[0]~0_combout\,
	sdata => \wreg_inst|Add0~0_combout\,
	sload => \dec_inst|is_add~regout\,
	ena => \wreg_inst|w_content[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|w_content\(0));

-- Location: LCCOMB_X47_Y22_N8
\dec_inst|jump_addr[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[5]~5_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[5]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(5),
	datac => \dec_inst|jump_addr[5]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[5]~5_combout\);

-- Location: LCFF_X47_Y22_N9
\dec_inst|jump_addr[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[5]~reg0_regout\);

-- Location: LCCOMB_X47_Y22_N12
\dec_inst|jump_addr[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|jump_addr[7]~7_combout\ = (\dec_inst|jump_addr[0]~0_combout\ & ((\dec_inst|jump_addr[7]~reg0_regout\))) # (!\dec_inst|jump_addr[0]~0_combout\ & (\instr_inst|instruction\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_inst|instruction\(7),
	datac => \dec_inst|jump_addr[7]~reg0_regout\,
	datad => \dec_inst|jump_addr[0]~0_combout\,
	combout => \dec_inst|jump_addr[7]~7_combout\);

-- Location: LCFF_X47_Y22_N13
\dec_inst|jump_addr[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \dec_inst|jump_addr[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|jump_addr[7]~reg0_regout\);

-- Location: LCCOMB_X45_Y23_N16
\wreg_inst|c_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|c_int~1_combout\ = (\dec_inst|is_add~regout\ & ((\wreg_inst|c_int~0_combout\ & (\wreg_inst|Add0~8_combout\)) # (!\wreg_inst|c_int~0_combout\ & ((\wreg_inst|c_int~regout\))))) # (!\dec_inst|is_add~regout\ & (((\wreg_inst|c_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add0~8_combout\,
	datab => \dec_inst|is_add~regout\,
	datac => \wreg_inst|c_int~regout\,
	datad => \wreg_inst|c_int~0_combout\,
	combout => \wreg_inst|c_int~1_combout\);

-- Location: LCFF_X45_Y23_N17
\wreg_inst|c_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|c_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|c_int~regout\);

-- Location: LCCOMB_X46_Y23_N8
\wreg_inst|z_int~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~10_combout\ = (\wreg_inst|Add0~2_combout\) # ((\wreg_inst|Add0~0_combout\) # ((\wreg_inst|Add0~6_combout\) # (\wreg_inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|Add0~2_combout\,
	datab => \wreg_inst|Add0~0_combout\,
	datac => \wreg_inst|Add0~6_combout\,
	datad => \wreg_inst|Add0~4_combout\,
	combout => \wreg_inst|z_int~10_combout\);

-- Location: LCCOMB_X45_Y23_N18
\wreg_inst|z_int~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~11_combout\ = (\dec_inst|is_add~regout\ & (\wreg_inst|z_int~regout\ $ ((!\wreg_inst|z_int~10_combout\)))) # (!\dec_inst|is_add~regout\ & (\wreg_inst|z_int~regout\ & ((\dec_inst|is_and~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|z_int~regout\,
	datab => \dec_inst|is_add~regout\,
	datac => \wreg_inst|z_int~10_combout\,
	datad => \dec_inst|is_and~regout\,
	combout => \wreg_inst|z_int~11_combout\);

-- Location: LCCOMB_X45_Y23_N10
\wreg_inst|z_int~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \wreg_inst|z_int~12_combout\ = (\wreg_inst|c_int~0_combout\ & ((\wreg_inst|z_int~9_combout\) # (\wreg_inst|z_int~regout\ $ (\wreg_inst|z_int~11_combout\)))) # (!\wreg_inst|c_int~0_combout\ & (((\wreg_inst|z_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wreg_inst|z_int~9_combout\,
	datab => \wreg_inst|c_int~0_combout\,
	datac => \wreg_inst|z_int~regout\,
	datad => \wreg_inst|z_int~11_combout\,
	combout => \wreg_inst|z_int~12_combout\);

-- Location: LCFF_X45_Y23_N11
\wreg_inst|z_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \wreg_inst|z_int~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wreg_inst|z_int~regout\);

-- Location: LCFF_X48_Y20_N5
\stack_int|stack_int[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~2_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][1]~regout\);

-- Location: LCFF_X47_Y20_N17
\stack_int|stack_int[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~2_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][1]~regout\);

-- Location: LCCOMB_X49_Y20_N2
\stack_int|ret_addr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|ret_addr~2_combout\ = (\stack_int|idx\(0) & (\stack_int|stack_int[0][1]~regout\)) # (!\stack_int|idx\(0) & ((\stack_int|stack_int[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_int|idx\(0),
	datac => \stack_int|stack_int[0][1]~regout\,
	datad => \stack_int|stack_int[1][1]~regout\,
	combout => \stack_int|ret_addr~2_combout\);

-- Location: LCFF_X49_Y20_N3
\stack_int|ret_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|ret_addr~2_combout\,
	ena => \stack_int|ret_addr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|ret_addr\(1));

-- Location: LCFF_X48_Y20_N1
\stack_int|stack_int[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~10_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][5]~regout\);

-- Location: LCFF_X47_Y20_N9
\stack_int|stack_int[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \stack_int|Add1~12_combout\,
	sload => VCC,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][6]~regout\);

-- Location: LCCOMB_X47_Y20_N20
\stack_int|stack_int[0][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[0][8]~feeder_combout\ = \stack_int|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~16_combout\,
	combout => \stack_int|stack_int[0][8]~feeder_combout\);

-- Location: LCFF_X47_Y20_N21
\stack_int|stack_int[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[0][8]~feeder_combout\,
	ena => \stack_int|stack_int[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[0][8]~regout\);

-- Location: LCCOMB_X48_Y20_N30
\stack_int|stack_int[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|stack_int[1][2]~feeder_combout\ = \stack_int|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack_int|Add1~4_combout\,
	combout => \stack_int|stack_int[1][2]~feeder_combout\);

-- Location: LCFF_X48_Y20_N31
\stack_int|stack_int[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|stack_int[1][2]~feeder_combout\,
	ena => \stack_int|stack_int[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|stack_int[1][2]~regout\);

-- Location: LCCOMB_X46_Y22_N0
\stack_int|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_int|Add2~0_combout\ = \dec_inst|is_ret~reg0_regout\ $ (\stack_int|idx\(0) $ (\stack_int|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_inst|is_ret~reg0_regout\,
	datab => \stack_int|idx\(0),
	datac => \stack_int|idx\(1),
	combout => \stack_int|Add2~0_combout\);

-- Location: LCFF_X46_Y22_N1
\stack_int|idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	datain => \stack_int|Add2~0_combout\,
	ena => \stack_int|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_int|idx\(1));

-- Location: LCCOMB_X48_Y22_N30
\dec_inst|reg_read_en~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dec_inst|reg_read_en~6_combout\ = (\instr_inst|instruction\(8) & (!\instr_inst|instruction\(10) & \instr_inst|instruction\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_inst|instruction\(8),
	datab => \instr_inst|instruction\(10),
	datad => \instr_inst|instruction\(7),
	combout => \dec_inst|reg_read_en~6_combout\);

-- Location: LCFF_X48_Y22_N5
\dec_inst|bit_test\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_c0~clkctrl_outclk\,
	sdata => \dec_inst|reg_read_en~6_combout\,
	sload => VCC,
	ena => \dec_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_inst|bit_test~regout\);

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|pc_skip~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => pc_skip);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instr_inst|instruction\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instr_inst|instruction\(10),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => instruction(10));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|write_w~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => place_immediate);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|immediate\(3),
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

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|is_add~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_add);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|is_decr~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => is_decr);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|jump_addr[3]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|jump_addr[5]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|jump_addr[6]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(6));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \dec_inst|jump_addr[7]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => jump_addr(7));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c_flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|c_int~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => c_flag);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z_flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \wreg_inst|z_int~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => z_flag);

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(0));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(1),
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
	datain => \stack_int|ret_addr\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(2));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(3));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(4),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(5),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(5));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(6),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(6));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(7));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \stack_int|ret_addr\(8),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ret_addr(8));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|bit_pos\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => bit_pos(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|bit_pos\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => bit_pos(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dec_inst|bit_test~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => bit_test);

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


