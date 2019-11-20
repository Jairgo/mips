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

-- DATE "11/20/2019 16:07:08"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	i_in : IN std_logic_vector(31 DOWNTO 0);
	i_dt1 : IN std_logic_vector(31 DOWNTO 0);
	i_dt2 : IN std_logic_vector(31 DOWNTO 0);
	control_ULAFonteA : OUT std_logic;
	control_EscReg : OUT std_logic;
	control_RegDst : OUT std_logic;
	control_PCEscCond : OUT std_logic;
	control_PCEsc : OUT std_logic;
	control_IouD : OUT std_logic;
	control_LerMem : OUT std_logic;
	control_EscMem : OUT std_logic;
	control_MemParaReg : OUT std_logic;
	control_IREsc : OUT std_logic;
	control_FontePC : OUT std_logic_vector(1 DOWNTO 0);
	control_ULAOp : OUT std_logic_vector(1 DOWNTO 0);
	control_ULAFonteB : OUT std_logic_vector(1 DOWNTO 0);
	control_instruction : OUT std_logic_vector(31 DOWNTO 0);
	control_dt_saida : OUT std_logic_vector(31 DOWNTO 0);
	control_data_3_EntradaMemDados : OUT std_logic_vector(31 DOWNTO 0);
	control_regRd_Mux : OUT std_logic_vector(4 DOWNTO 0);
	control_entradaPC : OUT std_logic_vector(31 DOWNTO 0);
	control_saidaPC : OUT std_logic_vector(31 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- control_ULAFonteA	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_EscReg	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_RegDst	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_PCEscCond	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_PCEsc	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_IouD	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_LerMem	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_EscMem	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_MemParaReg	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_IREsc	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_FontePC[0]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_FontePC[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAOp[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAOp[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAFonteB[0]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAFonteB[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[2]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[3]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[4]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[5]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[6]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[7]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[8]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[9]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[10]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[11]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[12]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[13]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[14]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[15]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[16]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[17]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[18]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[19]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[20]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[21]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[22]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[23]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[24]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[25]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[26]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[27]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[28]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[29]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[30]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[31]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[0]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[3]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[4]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[5]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[8]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[9]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[10]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[11]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[12]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[13]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[14]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[15]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[16]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[17]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[18]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[19]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[20]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[21]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[22]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[23]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[24]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[25]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[26]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[27]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[28]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[29]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[31]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[1]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[4]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[5]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[7]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[8]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[9]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[10]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[11]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[12]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[13]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[14]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[15]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[16]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[17]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[18]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[19]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[20]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[21]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[22]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[23]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[24]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[25]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[26]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[27]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[28]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[29]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[30]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[31]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[2]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[4]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[0]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[2]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[3]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[4]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[5]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[8]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[9]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[10]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[11]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[12]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[13]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[14]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[15]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[16]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[17]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[18]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[19]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[20]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[21]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[22]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[23]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[24]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[25]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[26]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[27]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[28]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[29]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[30]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[31]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[0]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[4]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[5]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[6]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[7]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[8]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[9]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[10]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[11]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[12]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[13]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[14]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[15]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[16]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[17]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[18]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[19]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[20]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[21]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[22]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[23]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[24]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[25]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[26]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[27]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[28]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[29]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[30]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[31]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_in[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[2]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[3]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[4]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[5]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[6]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[7]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[8]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[9]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[10]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[11]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[12]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[13]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[14]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[15]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[16]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[17]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[18]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[19]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[20]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[21]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[22]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[23]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[24]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[25]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[26]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[27]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[28]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[29]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[30]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[31]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[0]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[31]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[31]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[30]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[30]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[29]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[28]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[28]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[27]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[27]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[26]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[26]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[25]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[25]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[24]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[24]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[23]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[23]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[22]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[22]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[21]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[21]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[20]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[20]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[19]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[19]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[18]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[18]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[17]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[17]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[16]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[16]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[15]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[15]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[14]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[14]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[13]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[13]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[12]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[12]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[11]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[11]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[10]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[10]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[9]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[9]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[8]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[8]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[7]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[7]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[6]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[5]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[5]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[4]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[4]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[2]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[2]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_i_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_dt1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_dt2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_ULAFonteA : std_logic;
SIGNAL ww_control_EscReg : std_logic;
SIGNAL ww_control_RegDst : std_logic;
SIGNAL ww_control_PCEscCond : std_logic;
SIGNAL ww_control_PCEsc : std_logic;
SIGNAL ww_control_IouD : std_logic;
SIGNAL ww_control_LerMem : std_logic;
SIGNAL ww_control_EscMem : std_logic;
SIGNAL ww_control_MemParaReg : std_logic;
SIGNAL ww_control_IREsc : std_logic;
SIGNAL ww_control_FontePC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_control_ULAOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_control_ULAFonteB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_control_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_dt_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_data_3_EntradaMemDados : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_regRd_Mux : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_control_entradaPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_saidaPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Control|currentState.S0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~14_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~28_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~34_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~38_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~4_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~10_combout\ : std_logic;
SIGNAL \Mux5|S[31]~1_combout\ : std_logic;
SIGNAL \Mux5|S[29]~3_combout\ : std_logic;
SIGNAL \Mux5|S[20]~12_combout\ : std_logic;
SIGNAL \Mux5|S[13]~22_combout\ : std_logic;
SIGNAL \Mux5|S[13]~23_combout\ : std_logic;
SIGNAL \Mux4|S[7]~25_combout\ : std_logic;
SIGNAL \Mux5|S[6]~36_combout\ : std_logic;
SIGNAL \Mux5|S[6]~37_combout\ : std_logic;
SIGNAL \Mux4|S[5]~27_combout\ : std_logic;
SIGNAL \Mux5|S[1]~46_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~89_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~105_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~109_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~115_combout\ : std_logic;
SIGNAL \Mux6|S[30]~58_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Control|Equal0~0_combout\ : std_logic;
SIGNAL \Control|Equal4~0_combout\ : std_logic;
SIGNAL \Control|Equal3~0_combout\ : std_logic;
SIGNAL \Control|Equal1~0_combout\ : std_logic;
SIGNAL \Control|nextState~10_combout\ : std_logic;
SIGNAL \Control|Selector1~0_combout\ : std_logic;
SIGNAL \Control|Selector1~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Control|currentState.S1~regout\ : std_logic;
SIGNAL \Control|Selector6~0_combout\ : std_logic;
SIGNAL \Control|currentState.S6~regout\ : std_logic;
SIGNAL \Control|currentState.S7~feeder_combout\ : std_logic;
SIGNAL \Control|currentState.S7~regout\ : std_logic;
SIGNAL \Control|WideOr1~0_combout\ : std_logic;
SIGNAL \Control|Selector9~3_combout\ : std_logic;
SIGNAL \Control|Selector9~15_combout\ : std_logic;
SIGNAL \Control|currentState.S9~regout\ : std_logic;
SIGNAL \Control|Selector5~0_combout\ : std_logic;
SIGNAL \Control|currentState.S5~regout\ : std_logic;
SIGNAL \Control|WideOr1~combout\ : std_logic;
SIGNAL \Control|currentState.S0~regout\ : std_logic;
SIGNAL \Control|currentState.S0~clkctrl_outclk\ : std_logic;
SIGNAL \Control|Selector2~2_combout\ : std_logic;
SIGNAL \Control|currentState.S2~regout\ : std_logic;
SIGNAL \Control|Selector8~2_combout\ : std_logic;
SIGNAL \Control|currentState.S8~regout\ : std_logic;
SIGNAL \Control|ULAFonteA~0_combout\ : std_logic;
SIGNAL \Control|PCEsc~combout\ : std_logic;
SIGNAL \Control|Selector3~0_combout\ : std_logic;
SIGNAL \Control|currentState.S3~regout\ : std_logic;
SIGNAL \Control|IouD~combout\ : std_logic;
SIGNAL \Control|currentState.S4~regout\ : std_logic;
SIGNAL \Control|LerMem~combout\ : std_logic;
SIGNAL \Control|FontePC[1]~0_combout\ : std_logic;
SIGNAL \Control|ULAOp[0]~0_combout\ : std_logic;
SIGNAL \Control|ULAOp[1]~1_combout\ : std_logic;
SIGNAL \Control|ULAFonteB[1]~0_combout\ : std_logic;
SIGNAL \Mux4|S[31]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~57_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux4~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux2~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux5~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux0~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|S[0]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~56_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|S[0]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Equal0~0_combout\ : std_logic;
SIGNAL \Mux4|S[0]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~58_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~59_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~60_combout\ : std_logic;
SIGNAL \Mux4|S[30]~2_combout\ : std_logic;
SIGNAL \Mux4|S[29]~3_combout\ : std_logic;
SIGNAL \Mux4|S[28]~4_combout\ : std_logic;
SIGNAL \Control|ULAFonteB~1_combout\ : std_logic;
SIGNAL \Mux5|S[27]~5_combout\ : std_logic;
SIGNAL \Mux4|S[26]~6_combout\ : std_logic;
SIGNAL \Mux4|S[25]~7_combout\ : std_logic;
SIGNAL \Mux4|S[24]~8_combout\ : std_logic;
SIGNAL \Mux4|S[23]~9_combout\ : std_logic;
SIGNAL \Mux4|S[22]~10_combout\ : std_logic;
SIGNAL \Mux4|S[21]~11_combout\ : std_logic;
SIGNAL \Mux4|S[20]~12_combout\ : std_logic;
SIGNAL \Mux4|S[19]~13_combout\ : std_logic;
SIGNAL \Mux4|S[18]~14_combout\ : std_logic;
SIGNAL \Mux5|S[17]~15_combout\ : std_logic;
SIGNAL \Mux5|S[16]~16_combout\ : std_logic;
SIGNAL \Mux5|S[16]~17_combout\ : std_logic;
SIGNAL \Mux4|S[15]~17_combout\ : std_logic;
SIGNAL \Mux4|S[14]~18_combout\ : std_logic;
SIGNAL \Mux4|S[13]~19_combout\ : std_logic;
SIGNAL \Mux4|S[12]~20_combout\ : std_logic;
SIGNAL \Mux4|S[11]~21_combout\ : std_logic;
SIGNAL \Mux5|S[10]~28_combout\ : std_logic;
SIGNAL \Mux5|S[10]~29_combout\ : std_logic;
SIGNAL \Mux4|S[9]~23_combout\ : std_logic;
SIGNAL \Mux4|S[8]~24_combout\ : std_logic;
SIGNAL \Mux5|S[7]~34_combout\ : std_logic;
SIGNAL \Mux5|S[7]~35_combout\ : std_logic;
SIGNAL \Mux4|S[6]~26_combout\ : std_logic;
SIGNAL \Mux5|S[5]~38_combout\ : std_logic;
SIGNAL \Mux5|S[5]~39_combout\ : std_logic;
SIGNAL \Mux5|S[4]~40_combout\ : std_logic;
SIGNAL \Mux5|S[4]~41_combout\ : std_logic;
SIGNAL \Mux5|S[3]~42_combout\ : std_logic;
SIGNAL \Mux5|S[3]~43_combout\ : std_logic;
SIGNAL \Mux5|S[2]~44_combout\ : std_logic;
SIGNAL \Mux5|S[2]~45_combout\ : std_logic;
SIGNAL \Mux4|S[1]~31_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~1\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~3\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~5\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~7\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~9\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~11\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~13\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~15\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~17\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~19\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~21\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~23\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~25\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~27\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~29\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~31\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~33\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~35\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~37\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~39\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~41\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~43\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~45\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~47\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~49\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~51\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~53\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~55\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~57\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~59\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~61\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~62_combout\ : std_logic;
SIGNAL \Mux4|S[27]~5_combout\ : std_logic;
SIGNAL \Mux5|S[26]~6_combout\ : std_logic;
SIGNAL \RegB|q[25]~feeder_combout\ : std_logic;
SIGNAL \Mux5|S[25]~7_combout\ : std_logic;
SIGNAL \Mux5|S[23]~9_combout\ : std_logic;
SIGNAL \Mux5|S[21]~11_combout\ : std_logic;
SIGNAL \Mux5|S[19]~13_combout\ : std_logic;
SIGNAL \Mux5|S[18]~14_combout\ : std_logic;
SIGNAL \Mux4|S[16]~16_combout\ : std_logic;
SIGNAL \Mux5|S[12]~24_combout\ : std_logic;
SIGNAL \Mux5|S[12]~25_combout\ : std_logic;
SIGNAL \Mux4|S[10]~22_combout\ : std_logic;
SIGNAL \Mux4|S[4]~28_combout\ : std_logic;
SIGNAL \Mux4|S[2]~30_combout\ : std_logic;
SIGNAL \Mux5|S[0]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~1\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~3\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~5\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~7\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~9\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~11\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~13\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~15\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~17\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~19\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~21\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~23\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~25\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~27\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~29\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~31\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~33\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~35\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~37\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~39\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~41\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~43\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~45\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~47\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~49\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~51\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~53\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~55\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~57\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~59\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~61\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~62_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~61_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~62_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~63_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~64_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~65_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~128_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~4_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~67_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~68_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~129_combout\ : std_logic;
SIGNAL \Mux4|S[3]~29_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~6_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~6_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~69_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~70_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~130_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~71_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~72_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~131_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~10_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~73_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~74_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~132_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~12_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~12_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~75_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~76_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~133_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~77_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~14_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~78_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~134_combout\ : std_logic;
SIGNAL \Mux5|S[8]~32_combout\ : std_logic;
SIGNAL \Mux5|S[8]~33_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~79_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~80_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~135_combout\ : std_logic;
SIGNAL \Mux5|S[9]~30_combout\ : std_logic;
SIGNAL \Mux5|S[9]~31_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~81_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~18_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~18_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~82_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~136_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~83_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~84_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~137_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~22_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~22_combout\ : std_logic;
SIGNAL \Mux5|S[11]~26_combout\ : std_logic;
SIGNAL \Mux5|S[11]~27_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~85_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~86_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~138_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~24_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~24_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~87_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~88_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~139_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~90_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~140_combout\ : std_logic;
SIGNAL \Mux5|S[14]~20_combout\ : std_logic;
SIGNAL \Mux5|S[14]~21_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~28_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~91_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~92_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~141_combout\ : std_logic;
SIGNAL \Mux5|S[15]~18_combout\ : std_logic;
SIGNAL \Mux5|S[15]~19_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~93_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~94_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~142_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~32_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~32_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~95_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~96_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~143_combout\ : std_logic;
SIGNAL \Mux4|S[17]~15_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~97_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~34_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~98_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~144_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~36_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~36_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~99_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~100_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~145_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~101_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~38_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~102_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~146_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~40_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~40_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~103_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~104_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~147_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~42_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~42_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~106_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~148_combout\ : std_logic;
SIGNAL \Mux5|S[22]~10_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~44_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~44_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~107_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~108_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~149_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~46_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~46_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~110_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~150_combout\ : std_logic;
SIGNAL \Mux5|S[24]~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~111_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~48_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~48_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~112_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~151_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~50_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~50_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~113_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~114_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~152_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~52_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~52_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~116_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~153_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~117_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~54_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~54_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~118_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~154_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~66_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~120_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~56_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~56_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~119_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~121_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~122_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~58_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~58_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~123_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~155_combout\ : std_logic;
SIGNAL \Mux5|S[30]~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~125_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~60_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~60_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~124_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~126_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[31]~127_combout\ : std_logic;
SIGNAL \Mux3|S[0]~0_combout\ : std_logic;
SIGNAL \Mux3|S[1]~1_combout\ : std_logic;
SIGNAL \Mux3|S[2]~2_combout\ : std_logic;
SIGNAL \Mux3|S[3]~3_combout\ : std_logic;
SIGNAL \Mux3|S[4]~4_combout\ : std_logic;
SIGNAL \Mux3|S[5]~5_combout\ : std_logic;
SIGNAL \Mux3|S[6]~6_combout\ : std_logic;
SIGNAL \Mux3|S[7]~7_combout\ : std_logic;
SIGNAL \Mux3|S[8]~8_combout\ : std_logic;
SIGNAL \Mux3|S[9]~9_combout\ : std_logic;
SIGNAL \Mux3|S[10]~10_combout\ : std_logic;
SIGNAL \Mux3|S[11]~11_combout\ : std_logic;
SIGNAL \Mux3|S[12]~12_combout\ : std_logic;
SIGNAL \Mux3|S[13]~13_combout\ : std_logic;
SIGNAL \Mux3|S[14]~14_combout\ : std_logic;
SIGNAL \Mux3|S[15]~15_combout\ : std_logic;
SIGNAL \Mux3|S[16]~16_combout\ : std_logic;
SIGNAL \Mux3|S[17]~17_combout\ : std_logic;
SIGNAL \Mux3|S[18]~18_combout\ : std_logic;
SIGNAL \Mux3|S[19]~19_combout\ : std_logic;
SIGNAL \Mux3|S[20]~20_combout\ : std_logic;
SIGNAL \Mux3|S[21]~21_combout\ : std_logic;
SIGNAL \Mux3|S[22]~22_combout\ : std_logic;
SIGNAL \Mux3|S[23]~23_combout\ : std_logic;
SIGNAL \Mux3|S[24]~24_combout\ : std_logic;
SIGNAL \Mux3|S[25]~25_combout\ : std_logic;
SIGNAL \Mux3|S[26]~26_combout\ : std_logic;
SIGNAL \Mux3|S[27]~27_combout\ : std_logic;
SIGNAL \Mux3|S[28]~28_combout\ : std_logic;
SIGNAL \Mux3|S[29]~29_combout\ : std_logic;
SIGNAL \Mux3|S[30]~30_combout\ : std_logic;
SIGNAL \Mux3|S[31]~31_combout\ : std_logic;
SIGNAL \Mux2|S[0]~0_combout\ : std_logic;
SIGNAL \Mux2|S[1]~1_combout\ : std_logic;
SIGNAL \Mux2|S[2]~2_combout\ : std_logic;
SIGNAL \Mux2|S[3]~3_combout\ : std_logic;
SIGNAL \Mux2|S[4]~4_combout\ : std_logic;
SIGNAL \Mux6|S[0]~0_combout\ : std_logic;
SIGNAL \Mux6|S[1]~1_combout\ : std_logic;
SIGNAL \Mux6|S[2]~2_combout\ : std_logic;
SIGNAL \Mux6|S[2]~3_combout\ : std_logic;
SIGNAL \Mux6|S[3]~4_combout\ : std_logic;
SIGNAL \Mux6|S[3]~5_combout\ : std_logic;
SIGNAL \Mux6|S[4]~6_combout\ : std_logic;
SIGNAL \Mux6|S[4]~7_combout\ : std_logic;
SIGNAL \Mux6|S[5]~8_combout\ : std_logic;
SIGNAL \Mux6|S[5]~9_combout\ : std_logic;
SIGNAL \Mux6|S[6]~10_combout\ : std_logic;
SIGNAL \Mux6|S[6]~11_combout\ : std_logic;
SIGNAL \Mux6|S[7]~12_combout\ : std_logic;
SIGNAL \Mux6|S[7]~13_combout\ : std_logic;
SIGNAL \Mux6|S[8]~14_combout\ : std_logic;
SIGNAL \Mux6|S[8]~15_combout\ : std_logic;
SIGNAL \Mux6|S[9]~16_combout\ : std_logic;
SIGNAL \Mux6|S[9]~17_combout\ : std_logic;
SIGNAL \Mux6|S[10]~18_combout\ : std_logic;
SIGNAL \Mux6|S[10]~19_combout\ : std_logic;
SIGNAL \Mux6|S[11]~20_combout\ : std_logic;
SIGNAL \Mux6|S[11]~21_combout\ : std_logic;
SIGNAL \Mux6|S[12]~22_combout\ : std_logic;
SIGNAL \Mux6|S[12]~23_combout\ : std_logic;
SIGNAL \Mux6|S[13]~24_combout\ : std_logic;
SIGNAL \Mux6|S[13]~25_combout\ : std_logic;
SIGNAL \Mux6|S[14]~26_combout\ : std_logic;
SIGNAL \Mux6|S[14]~27_combout\ : std_logic;
SIGNAL \Mux6|S[15]~28_combout\ : std_logic;
SIGNAL \Mux6|S[15]~29_combout\ : std_logic;
SIGNAL \Mux6|S[16]~30_combout\ : std_logic;
SIGNAL \Mux6|S[16]~31_combout\ : std_logic;
SIGNAL \Mux6|S[17]~32_combout\ : std_logic;
SIGNAL \Mux6|S[17]~33_combout\ : std_logic;
SIGNAL \Mux6|S[18]~34_combout\ : std_logic;
SIGNAL \Mux6|S[18]~35_combout\ : std_logic;
SIGNAL \Mux6|S[19]~36_combout\ : std_logic;
SIGNAL \Mux6|S[19]~37_combout\ : std_logic;
SIGNAL \Mux6|S[20]~38_combout\ : std_logic;
SIGNAL \Mux6|S[20]~39_combout\ : std_logic;
SIGNAL \Mux6|S[21]~40_combout\ : std_logic;
SIGNAL \Mux6|S[21]~41_combout\ : std_logic;
SIGNAL \Mux6|S[22]~42_combout\ : std_logic;
SIGNAL \Mux6|S[22]~43_combout\ : std_logic;
SIGNAL \Mux6|S[23]~44_combout\ : std_logic;
SIGNAL \Mux6|S[23]~45_combout\ : std_logic;
SIGNAL \Mux6|S[24]~46_combout\ : std_logic;
SIGNAL \Mux6|S[24]~47_combout\ : std_logic;
SIGNAL \Mux6|S[25]~48_combout\ : std_logic;
SIGNAL \Mux6|S[25]~49_combout\ : std_logic;
SIGNAL \Mux6|S[26]~50_combout\ : std_logic;
SIGNAL \Mux6|S[26]~51_combout\ : std_logic;
SIGNAL \Mux6|S[27]~52_combout\ : std_logic;
SIGNAL \Mux6|S[27]~53_combout\ : std_logic;
SIGNAL \Mux6|S[28]~54_combout\ : std_logic;
SIGNAL \Mux5|S[28]~4_combout\ : std_logic;
SIGNAL \Mux6|S[28]~55_combout\ : std_logic;
SIGNAL \Mux6|S[28]~56_combout\ : std_logic;
SIGNAL \Mux6|S[29]~57_combout\ : std_logic;
SIGNAL \Mux6|S[30]~59_combout\ : std_logic;
SIGNAL \Mux6|S[30]~60_combout\ : std_logic;
SIGNAL \Mux6|S[31]~61_combout\ : std_logic;
SIGNAL \RegB|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegDados|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegULASaida|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegIns|addr_Output7\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RegIns|addr_Output6\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \RegIns|addr_Output5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegIns|addr_Output3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegIns|addr_Output1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RegA|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_dt2~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_dt1~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Control|ALT_INV_ULAOp[1]~1_combout\ : std_logic;
SIGNAL \Control|ALT_INV_FontePC[1]~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_currentState.S0~regout\ : std_logic;
SIGNAL \Control|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_ULAFonteA~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_i_in <= i_in;
ww_i_dt1 <= i_dt1;
ww_i_dt2 <= i_dt2;
control_ULAFonteA <= ww_control_ULAFonteA;
control_EscReg <= ww_control_EscReg;
control_RegDst <= ww_control_RegDst;
control_PCEscCond <= ww_control_PCEscCond;
control_PCEsc <= ww_control_PCEsc;
control_IouD <= ww_control_IouD;
control_LerMem <= ww_control_LerMem;
control_EscMem <= ww_control_EscMem;
control_MemParaReg <= ww_control_MemParaReg;
control_IREsc <= ww_control_IREsc;
control_FontePC <= ww_control_FontePC;
control_ULAOp <= ww_control_ULAOp;
control_ULAFonteB <= ww_control_ULAFonteB;
control_instruction <= ww_control_instruction;
control_dt_saida <= ww_control_dt_saida;
control_data_3_EntradaMemDados <= ww_control_data_3_EntradaMemDados;
control_regRd_Mux <= ww_control_regRd_Mux;
control_entradaPC <= ww_control_entradaPC;
control_saidaPC <= ww_control_saidaPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\Control|currentState.S0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|currentState.S0~regout\);
\Control|ALT_INV_ULAOp[1]~1_combout\ <= NOT \Control|ULAOp[1]~1_combout\;
\Control|ALT_INV_FontePC[1]~0_combout\ <= NOT \Control|FontePC[1]~0_combout\;
\Control|ALT_INV_currentState.S0~regout\ <= NOT \Control|currentState.S0~regout\;
\Control|ALT_INV_WideOr1~0_combout\ <= NOT \Control|WideOr1~0_combout\;
\Control|ALT_INV_ULAFonteA~0_combout\ <= NOT \Control|ULAFonteA~0_combout\;

-- Location: LCCOMB_X34_Y25_N0
\ULAUnit|UlaInstance|Somador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~0_combout\ = (\Mux4|S[0]~0_combout\ & (\Mux5|S[0]~0_combout\ $ (VCC))) # (!\Mux4|S[0]~0_combout\ & (\Mux5|S[0]~0_combout\ & VCC))
-- \ULAUnit|UlaInstance|Somador|Add0~1\ = CARRY((\Mux4|S[0]~0_combout\ & \Mux5|S[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[0]~0_combout\,
	datab => \Mux5|S[0]~0_combout\,
	datad => VCC,
	combout => \ULAUnit|UlaInstance|Somador|Add0~0_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~1\);

-- Location: LCCOMB_X35_Y25_N14
\ULAUnit|UlaInstance|Somador|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~14_combout\ = (\Mux4|S[7]~25_combout\ & ((\Mux5|S[7]~35_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~13\)) # (!\Mux5|S[7]~35_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~13\ & VCC)))) # (!\Mux4|S[7]~25_combout\ & 
-- ((\Mux5|S[7]~35_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~13\) # (GND))) # (!\Mux5|S[7]~35_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~13\))))
-- \ULAUnit|UlaInstance|Somador|Add1~15\ = CARRY((\Mux4|S[7]~25_combout\ & (\Mux5|S[7]~35_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~13\)) # (!\Mux4|S[7]~25_combout\ & ((\Mux5|S[7]~35_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~25_combout\,
	datab => \Mux5|S[7]~35_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~13\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~14_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~15\);

-- Location: LCCOMB_X35_Y25_N16
\ULAUnit|UlaInstance|Somador|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~16_combout\ = ((\Mux5|S[8]~33_combout\ $ (\Mux4|S[8]~24_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~15\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~17\ = CARRY((\Mux5|S[8]~33_combout\ & (\Mux4|S[8]~24_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~15\)) # (!\Mux5|S[8]~33_combout\ & ((\Mux4|S[8]~24_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[8]~33_combout\,
	datab => \Mux4|S[8]~24_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~15\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~16_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~17\);

-- Location: LCCOMB_X35_Y25_N28
\ULAUnit|UlaInstance|Somador|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~28_combout\ = ((\Mux5|S[14]~21_combout\ $ (\Mux4|S[14]~18_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~27\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~29\ = CARRY((\Mux5|S[14]~21_combout\ & (\Mux4|S[14]~18_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~27\)) # (!\Mux5|S[14]~21_combout\ & ((\Mux4|S[14]~18_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[14]~21_combout\,
	datab => \Mux4|S[14]~18_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~27\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~28_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~29\);

-- Location: LCCOMB_X35_Y24_N2
\ULAUnit|UlaInstance|Somador|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~34_combout\ = (\Mux4|S[17]~15_combout\ & ((\Mux5|S[17]~15_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~33\)) # (!\Mux5|S[17]~15_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~33\ & VCC)))) # (!\Mux4|S[17]~15_combout\ & 
-- ((\Mux5|S[17]~15_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~33\) # (GND))) # (!\Mux5|S[17]~15_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~33\))))
-- \ULAUnit|UlaInstance|Somador|Add1~35\ = CARRY((\Mux4|S[17]~15_combout\ & (\Mux5|S[17]~15_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~33\)) # (!\Mux4|S[17]~15_combout\ & ((\Mux5|S[17]~15_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[17]~15_combout\,
	datab => \Mux5|S[17]~15_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~33\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~34_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~35\);

-- Location: LCCOMB_X35_Y24_N6
\ULAUnit|UlaInstance|Somador|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~38_combout\ = (\Mux5|S[19]~13_combout\ & ((\Mux4|S[19]~13_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~37\)) # (!\Mux4|S[19]~13_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~37\) # (GND))))) # (!\Mux5|S[19]~13_combout\ 
-- & ((\Mux4|S[19]~13_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~37\ & VCC)) # (!\Mux4|S[19]~13_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~37\))))
-- \ULAUnit|UlaInstance|Somador|Add1~39\ = CARRY((\Mux5|S[19]~13_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~37\) # (!\Mux4|S[19]~13_combout\))) # (!\Mux5|S[19]~13_combout\ & (!\Mux4|S[19]~13_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[19]~13_combout\,
	datab => \Mux4|S[19]~13_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~37\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~38_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~39\);

-- Location: LCCOMB_X34_Y25_N2
\ULAUnit|UlaInstance|Somador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~2_combout\ = (\Mux5|S[1]~46_combout\ & ((\Mux4|S[1]~31_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~1\ & VCC)) # (!\Mux4|S[1]~31_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~1\)))) # (!\Mux5|S[1]~46_combout\ & 
-- ((\Mux4|S[1]~31_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~1\)) # (!\Mux4|S[1]~31_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~1\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~3\ = CARRY((\Mux5|S[1]~46_combout\ & (!\Mux4|S[1]~31_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~1\)) # (!\Mux5|S[1]~46_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~1\) # (!\Mux4|S[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[1]~46_combout\,
	datab => \Mux4|S[1]~31_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~1\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~2_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~3\);

-- Location: LCCOMB_X34_Y25_N4
\ULAUnit|UlaInstance|Somador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~4_combout\ = ((\Mux5|S[2]~45_combout\ $ (\Mux4|S[2]~30_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~3\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~5\ = CARRY((\Mux5|S[2]~45_combout\ & ((\Mux4|S[2]~30_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~3\))) # (!\Mux5|S[2]~45_combout\ & (\Mux4|S[2]~30_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[2]~45_combout\,
	datab => \Mux4|S[2]~30_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~3\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~4_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~5\);

-- Location: LCCOMB_X34_Y25_N10
\ULAUnit|UlaInstance|Somador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~10_combout\ = (\Mux4|S[5]~27_combout\ & ((\Mux5|S[5]~39_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~9\ & VCC)) # (!\Mux5|S[5]~39_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~9\)))) # (!\Mux4|S[5]~27_combout\ & 
-- ((\Mux5|S[5]~39_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~9\)) # (!\Mux5|S[5]~39_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~9\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~11\ = CARRY((\Mux4|S[5]~27_combout\ & (!\Mux5|S[5]~39_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~9\)) # (!\Mux4|S[5]~27_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~9\) # (!\Mux5|S[5]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[5]~27_combout\,
	datab => \Mux5|S[5]~39_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~9\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~10_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~11\);

-- Location: LCFF_X32_Y24_N5
\RegB|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(31));

-- Location: LCCOMB_X32_Y24_N4
\Mux5|S[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[31]~1_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(31) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(31) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(31),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[31]~1_combout\);

-- Location: LCFF_X33_Y24_N9
\RegB|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(29));

-- Location: LCCOMB_X33_Y24_N8
\Mux5|S[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[29]~3_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(29) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(29) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(29),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[29]~3_combout\);

-- Location: LCFF_X33_Y24_N11
\RegB|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(20));

-- Location: LCCOMB_X33_Y24_N10
\Mux5|S[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[20]~12_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(20) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(20) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(20),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[20]~12_combout\);

-- Location: LCCOMB_X33_Y25_N2
\Mux5|S[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[13]~22_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(11))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(11),
	datab => \RegIns|addr_Output5\(13),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[13]~22_combout\);

-- Location: LCFF_X33_Y25_N9
\RegB|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(13));

-- Location: LCCOMB_X33_Y25_N8
\Mux5|S[13]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[13]~23_combout\ = (\Mux5|S[13]~22_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(13),
	datad => \Mux5|S[13]~22_combout\,
	combout => \Mux5|S[13]~23_combout\);

-- Location: LCFF_X37_Y25_N27
\RegA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(7));

-- Location: LCCOMB_X37_Y25_N26
\Mux4|S[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[7]~25_combout\ = (\RegA|q\(7) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(7),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[7]~25_combout\);

-- Location: LCCOMB_X38_Y25_N24
\Mux5|S[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[6]~36_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(4))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(4),
	datab => \RegIns|addr_Output5\(6),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[6]~36_combout\);

-- Location: LCFF_X38_Y25_N23
\RegB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(6));

-- Location: LCCOMB_X38_Y25_N22
\Mux5|S[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[6]~37_combout\ = (\Mux5|S[6]~36_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(6),
	datad => \Mux5|S[6]~36_combout\,
	combout => \Mux5|S[6]~37_combout\);

-- Location: LCFF_X36_Y25_N21
\RegA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(5));

-- Location: LCCOMB_X36_Y25_N20
\Mux4|S[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[5]~27_combout\ = (\RegA|q\(5) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(5),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[5]~27_combout\);

-- Location: LCFF_X35_Y26_N17
\RegB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(1));

-- Location: LCCOMB_X35_Y26_N16
\Mux5|S[1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[1]~46_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|currentState.S2~regout\ & (\RegIns|addr_Output7\(1)))) # (!\Control|ULAFonteB~1_combout\ & (((\RegB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \RegIns|addr_Output7\(1),
	datac => \RegB|q\(1),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[1]~46_combout\);

-- Location: LCCOMB_X34_Y27_N10
\ULAUnit|UlaInstance|Result[13]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~89_combout\ = (\Mux4|S[13]~19_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[13]~23_combout\)))) # (!\Mux4|S[13]~19_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[13]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[13]~19_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \Mux5|S[13]~23_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~89_combout\);

-- Location: LCCOMB_X31_Y24_N12
\ULAUnit|UlaInstance|Result[21]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~105_combout\ = (\Mux4|S[21]~11_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux5|S[21]~11_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[21]~11_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux5|S[21]~11_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[21]~11_combout\,
	datab => \Mux5|S[21]~11_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~105_combout\);

-- Location: LCCOMB_X31_Y24_N24
\ULAUnit|UlaInstance|Result[23]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~109_combout\ = (\Mux4|S[23]~9_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux5|S[23]~9_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[23]~9_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux5|S[23]~9_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[23]~9_combout\,
	datab => \Mux5|S[23]~9_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~109_combout\);

-- Location: LCCOMB_X36_Y24_N24
\ULAUnit|UlaInstance|Result[26]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~115_combout\ = (\Mux4|S[26]~6_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux5|S[26]~6_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[26]~6_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux5|S[26]~6_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[26]~6_combout\,
	datab => \Mux5|S[26]~6_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~115_combout\);

-- Location: LCCOMB_X36_Y24_N30
\Mux6|S[30]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[30]~58_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~60_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~60_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~60_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~60_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \Mux6|S[30]~58_combout\);

-- Location: LCCOMB_X38_Y24_N14
\RegIns|addr_Output6[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(22) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output6\(22)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(22),
	datac => \RegIns|addr_Output6\(22),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(22));

-- Location: LCCOMB_X33_Y26_N14
\RegIns|addr_Output6[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(23) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output6\(23)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(23),
	datac => \RegIns|addr_Output6\(23),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(23));

-- Location: LCCOMB_X37_Y24_N6
\RegIns|addr_Output6[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(24) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output6\(24))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output6\(24),
	datac => \i_in~combout\(24),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(24));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(31),
	combout => \i_dt2~combout\(31));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(29),
	combout => \i_dt2~combout\(29));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(20),
	combout => \i_dt2~combout\(20));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(13),
	combout => \i_dt2~combout\(13));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(7),
	combout => \i_dt1~combout\(7));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(6),
	combout => \i_dt2~combout\(6));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(5),
	combout => \i_dt1~combout\(5));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(1),
	combout => \i_dt2~combout\(1));

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(31),
	combout => \i_in~combout\(31));

-- Location: LCCOMB_X37_Y25_N22
\RegIns|addr_Output1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(2) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(2)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(28),
	datab => \RegIns|addr_Output1\(2),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(2));

-- Location: LCCOMB_X37_Y26_N18
\RegIns|addr_Output1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(1) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(1)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(27),
	datab => \RegIns|addr_Output1\(1),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(1));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(26),
	combout => \i_in~combout\(26));

-- Location: LCCOMB_X37_Y26_N4
\RegIns|addr_Output1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(0) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(0)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(26),
	datac => \RegIns|addr_Output1\(0),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(30),
	combout => \i_in~combout\(30));

-- Location: LCCOMB_X37_Y26_N16
\RegIns|addr_Output1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(4) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(4)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(30),
	datac => \RegIns|addr_Output1\(4),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(4));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(29),
	combout => \i_in~combout\(29));

-- Location: LCCOMB_X34_Y26_N10
\RegIns|addr_Output1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(3) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output1\(3))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(3),
	datac => \i_in~combout\(29),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(3));

-- Location: LCCOMB_X37_Y26_N12
\Control|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal0~0_combout\ = (!\RegIns|addr_Output1\(5) & (!\RegIns|addr_Output1\(0) & (!\RegIns|addr_Output1\(4) & !\RegIns|addr_Output1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(0),
	datac => \RegIns|addr_Output1\(4),
	datad => \RegIns|addr_Output1\(3),
	combout => \Control|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y26_N0
\Control|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal4~0_combout\ = (\RegIns|addr_Output1\(1) & (!\RegIns|addr_Output1\(2) & \Control|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output1\(1),
	datac => \RegIns|addr_Output1\(2),
	datad => \Control|Equal0~0_combout\,
	combout => \Control|Equal4~0_combout\);

-- Location: LCCOMB_X37_Y26_N2
\Control|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal3~0_combout\ = (\RegIns|addr_Output1\(1)) # ((!\Control|Equal0~0_combout\) # (!\RegIns|addr_Output1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output1\(1),
	datac => \RegIns|addr_Output1\(2),
	datad => \Control|Equal0~0_combout\,
	combout => \Control|Equal3~0_combout\);

-- Location: LCCOMB_X37_Y26_N26
\Control|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal1~0_combout\ = (!\RegIns|addr_Output1\(4) & (!\RegIns|addr_Output1\(2) & (\RegIns|addr_Output1\(0) & \RegIns|addr_Output1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(4),
	datab => \RegIns|addr_Output1\(2),
	datac => \RegIns|addr_Output1\(0),
	datad => \RegIns|addr_Output1\(1),
	combout => \Control|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y26_N8
\Control|nextState~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|nextState~10_combout\ = (\Control|Equal3~0_combout\ & ((!\Control|Equal1~0_combout\) # (!\RegIns|addr_Output1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \Control|Equal3~0_combout\,
	datad => \Control|Equal1~0_combout\,
	combout => \Control|nextState~10_combout\);

-- Location: LCCOMB_X37_Y26_N22
\Control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~0_combout\ = (\Control|currentState.S1~regout\ & ((\RegIns|addr_Output1\(2)) # ((\RegIns|addr_Output1\(1)) # (!\Control|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(2),
	datab => \RegIns|addr_Output1\(1),
	datac => \Control|currentState.S1~regout\,
	datad => \Control|Equal0~0_combout\,
	combout => \Control|Selector1~0_combout\);

-- Location: LCCOMB_X37_Y26_N30
\Control|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~1_combout\ = ((!\Control|Equal4~0_combout\ & (\Control|nextState~10_combout\ & \Control|Selector1~0_combout\))) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|Equal4~0_combout\,
	datac => \Control|nextState~10_combout\,
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector1~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X37_Y26_N31
\Control|currentState.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector1~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S1~regout\);

-- Location: LCCOMB_X37_Y25_N14
\Control|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector6~0_combout\ = (\Control|Equal0~0_combout\ & (!\RegIns|addr_Output1\(2) & (\Control|currentState.S1~regout\ & !\RegIns|addr_Output1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Equal0~0_combout\,
	datab => \RegIns|addr_Output1\(2),
	datac => \Control|currentState.S1~regout\,
	datad => \RegIns|addr_Output1\(1),
	combout => \Control|Selector6~0_combout\);

-- Location: LCFF_X37_Y25_N15
\Control|currentState.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S6~regout\);

-- Location: LCCOMB_X34_Y27_N28
\Control|currentState.S7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|currentState.S7~feeder_combout\ = \Control|currentState.S6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|currentState.S6~regout\,
	combout => \Control|currentState.S7~feeder_combout\);

-- Location: LCFF_X34_Y27_N29
\Control|currentState.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|currentState.S7~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S7~regout\);

-- Location: LCCOMB_X37_Y24_N20
\Control|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr1~0_combout\ = (!\Control|currentState.S4~regout\ & !\Control|currentState.S7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \Control|currentState.S7~regout\,
	combout => \Control|WideOr1~0_combout\);

-- Location: LCCOMB_X37_Y26_N28
\Control|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector9~3_combout\ = (!\RegIns|addr_Output1\(5) & (!\RegIns|addr_Output1\(0) & (!\RegIns|addr_Output1\(4) & !\RegIns|addr_Output1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(0),
	datac => \RegIns|addr_Output1\(4),
	datad => \RegIns|addr_Output1\(3),
	combout => \Control|Selector9~3_combout\);

-- Location: LCCOMB_X37_Y26_N14
\Control|Selector9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector9~15_combout\ = (!\RegIns|addr_Output1\(2) & (\RegIns|addr_Output1\(1) & (\Control|currentState.S1~regout\ & \Control|Selector9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(2),
	datab => \RegIns|addr_Output1\(1),
	datac => \Control|currentState.S1~regout\,
	datad => \Control|Selector9~3_combout\,
	combout => \Control|Selector9~15_combout\);

-- Location: LCFF_X37_Y26_N15
\Control|currentState.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector9~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S9~regout\);

-- Location: LCCOMB_X37_Y26_N10
\Control|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector5~0_combout\ = (\RegIns|addr_Output1\(5) & (\RegIns|addr_Output1\(3) & (\Control|currentState.S2~regout\ & \Control|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(3),
	datac => \Control|currentState.S2~regout\,
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Selector5~0_combout\);

-- Location: LCFF_X37_Y26_N11
\Control|currentState.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S5~regout\);

-- Location: LCCOMB_X37_Y26_N20
\Control|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr1~combout\ = (!\Control|currentState.S8~regout\ & (\Control|WideOr1~0_combout\ & (!\Control|currentState.S9~regout\ & !\Control|currentState.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|WideOr1~0_combout\,
	datac => \Control|currentState.S9~regout\,
	datad => \Control|currentState.S5~regout\,
	combout => \Control|WideOr1~combout\);

-- Location: LCFF_X37_Y25_N23
\Control|currentState.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Control|WideOr1~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S0~regout\);

-- Location: CLKCTRL_G8
\Control|currentState.S0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Control|currentState.S0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Control|currentState.S0~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y26_N6
\RegIns|addr_Output1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(5) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output1\(5))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datac => \i_in~combout\(31),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(5));

-- Location: LCCOMB_X37_Y25_N20
\Control|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector2~2_combout\ = (\Control|Equal1~0_combout\ & ((\RegIns|addr_Output1\(5) & ((\Control|Selector1~0_combout\))) # (!\RegIns|addr_Output1\(5) & (\Control|currentState.S2~regout\)))) # (!\Control|Equal1~0_combout\ & 
-- (((\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Equal1~0_combout\,
	datab => \RegIns|addr_Output1\(5),
	datac => \Control|currentState.S2~regout\,
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector2~2_combout\);

-- Location: LCFF_X37_Y25_N21
\Control|currentState.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector2~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S2~regout\);

-- Location: LCCOMB_X37_Y25_N6
\Control|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector8~2_combout\ = (\Control|Selector1~0_combout\ & (!\Control|Equal3~0_combout\ & ((!\Control|Equal1~0_combout\) # (!\RegIns|addr_Output1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector1~0_combout\,
	datab => \Control|Equal3~0_combout\,
	datac => \RegIns|addr_Output1\(5),
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Selector8~2_combout\);

-- Location: LCFF_X37_Y25_N7
\Control|currentState.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector8~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S8~regout\);

-- Location: LCCOMB_X37_Y25_N18
\Control|ULAFonteA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAFonteA~0_combout\ = (!\Control|currentState.S2~regout\ & (!\Control|currentState.S6~regout\ & !\Control|currentState.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datac => \Control|currentState.S6~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|ULAFonteA~0_combout\);

-- Location: LCCOMB_X38_Y29_N8
\Control|PCEsc\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|PCEsc~combout\ = (\Control|currentState.S9~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S9~regout\,
	combout => \Control|PCEsc~combout\);

-- Location: LCCOMB_X37_Y26_N24
\Control|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector3~0_combout\ = (\RegIns|addr_Output1\(5) & (!\RegIns|addr_Output1\(3) & (\Control|currentState.S2~regout\ & \Control|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(3),
	datac => \Control|currentState.S2~regout\,
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Selector3~0_combout\);

-- Location: LCFF_X37_Y26_N25
\Control|currentState.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S3~regout\);

-- Location: LCCOMB_X41_Y29_N0
\Control|IouD\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|IouD~combout\ = (\Control|currentState.S3~regout\) # (\Control|currentState.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S3~regout\,
	datad => \Control|currentState.S5~regout\,
	combout => \Control|IouD~combout\);

-- Location: LCFF_X37_Y26_N19
\Control|currentState.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Control|currentState.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S4~regout\);

-- Location: LCCOMB_X31_Y35_N0
\Control|LerMem\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|LerMem~combout\ = (\Control|currentState.S4~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S4~regout\,
	combout => \Control|LerMem~combout\);

-- Location: LCCOMB_X36_Y28_N4
\Control|FontePC[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|FontePC[1]~0_combout\ = (\Control|currentState.S8~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|FontePC[1]~0_combout\);

-- Location: LCCOMB_X36_Y28_N6
\Control|ULAOp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAOp[0]~0_combout\ = (\Control|currentState.S8~regout\ & (!\Control|currentState.S1~regout\ & (!\Control|currentState.S2~regout\ & \Control|currentState.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S1~regout\,
	datac => \Control|currentState.S2~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Control|ULAOp[0]~0_combout\);

-- Location: LCCOMB_X36_Y27_N24
\Control|ULAOp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAOp[1]~1_combout\ = (\Control|currentState.S1~regout\) # (((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\)) # (!\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S1~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S2~regout\,
	combout => \Control|ULAOp[1]~1_combout\);

-- Location: LCCOMB_X37_Y25_N30
\Control|ULAFonteB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAFonteB[1]~0_combout\ = (\Control|currentState.S0~regout\ & (!\Control|currentState.S6~regout\ & !\Control|currentState.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S6~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|ULAFonteB[1]~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(0),
	combout => \i_in~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(1),
	combout => \i_in~combout\(1));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(2),
	combout => \i_in~combout\(2));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(3),
	combout => \i_in~combout\(3));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(4),
	combout => \i_in~combout\(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(5),
	combout => \i_in~combout\(5));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(6),
	combout => \i_in~combout\(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(7),
	combout => \i_in~combout\(7));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(8),
	combout => \i_in~combout\(8));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(9),
	combout => \i_in~combout\(9));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(10),
	combout => \i_in~combout\(10));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(11),
	combout => \i_in~combout\(11));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(12),
	combout => \i_in~combout\(12));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(13),
	combout => \i_in~combout\(13));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(14),
	combout => \i_in~combout\(14));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(15),
	combout => \i_in~combout\(15));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(16),
	combout => \i_in~combout\(16));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(17),
	combout => \i_in~combout\(17));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(18),
	combout => \i_in~combout\(18));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(19),
	combout => \i_in~combout\(19));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(20),
	combout => \i_in~combout\(20));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(21),
	combout => \i_in~combout\(21));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(22),
	combout => \i_in~combout\(22));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(23),
	combout => \i_in~combout\(23));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(24),
	combout => \i_in~combout\(24));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(25),
	combout => \i_in~combout\(25));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(27),
	combout => \i_in~combout\(27));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_in[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_in(28),
	combout => \i_in~combout\(28));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(31),
	combout => \i_dt1~combout\(31));

-- Location: LCFF_X36_Y28_N13
\RegA|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(31));

-- Location: LCCOMB_X36_Y28_N12
\Mux4|S[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[31]~1_combout\ = (\RegA|q\(31) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(31),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[31]~1_combout\);

-- Location: LCCOMB_X38_Y25_N20
\RegIns|addr_Output7[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(4) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output7\(4)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(4),
	datac => \RegIns|addr_Output7\(4),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output7\(4));

-- Location: LCCOMB_X35_Y26_N26
\RegIns|addr_Output7[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(1) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output7\(1))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output7\(1),
	datac => \i_in~combout\(1),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output7\(1));

-- Location: LCCOMB_X36_Y25_N6
\RegIns|addr_Output7[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(3) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output7\(3)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(3),
	datac => \Control|currentState.S0~clkctrl_outclk\,
	datad => \RegIns|addr_Output7\(3),
	combout => \RegIns|addr_Output7\(3));

-- Location: LCCOMB_X35_Y27_N4
\ULAUnit|UlaInstance|Result[1]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~57_combout\ = (\RegIns|addr_Output7\(2) & (!\RegIns|addr_Output7\(1) & !\RegIns|addr_Output7\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(2),
	datab => \RegIns|addr_Output7\(1),
	datad => \RegIns|addr_Output7\(3),
	combout => \ULAUnit|UlaInstance|Result[1]~57_combout\);

-- Location: LCCOMB_X35_Y27_N30
\ULAUnit|UlaControlInstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux4~2_combout\ = ((\RegIns|addr_Output7\(4)) # ((\Control|ULAOp[1]~1_combout\) # (!\ULAUnit|UlaInstance|Result[1]~57_combout\))) # (!\RegIns|addr_Output7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \RegIns|addr_Output7\(4),
	datac => \ULAUnit|UlaInstance|Result[1]~57_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaControlInstance|Mux4~2_combout\);

-- Location: LCCOMB_X38_Y25_N4
\RegIns|addr_Output5[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(0) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(0)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(0),
	datac => \RegIns|addr_Output5\(0),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(0));

-- Location: LCCOMB_X35_Y27_N24
\ULAUnit|UlaControlInstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux2~0_combout\ = (\RegIns|addr_Output5\(0)) # ((\RegIns|addr_Output7\(3)) # ((\RegIns|addr_Output7\(2) & \RegIns|addr_Output7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(2),
	datab => \RegIns|addr_Output7\(1),
	datac => \RegIns|addr_Output5\(0),
	datad => \RegIns|addr_Output7\(3),
	combout => \ULAUnit|UlaControlInstance|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y27_N16
\ULAUnit|UlaControlInstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux5~2_combout\ = (!\Control|ULAOp[1]~1_combout\ & (((\RegIns|addr_Output7\(4)) # (\ULAUnit|UlaControlInstance|Mux2~0_combout\)) # (!\RegIns|addr_Output7\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \RegIns|addr_Output7\(4),
	datac => \ULAUnit|UlaControlInstance|Mux2~0_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaControlInstance|Mux5~2_combout\);

-- Location: LCCOMB_X38_Y24_N22
\ULAUnit|UlaInstance|Multiplexer|S[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\ = (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[31]~1_combout\ & ((\Mux4|S[31]~1_combout\) # (\ULAUnit|UlaControlInstance|Mux5~2_combout\))) # (!\Mux5|S[31]~1_combout\ & (\Mux4|S[31]~1_combout\ 
-- & \ULAUnit|UlaControlInstance|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[31]~1_combout\,
	datab => \Mux4|S[31]~1_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	combout => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\);

-- Location: LCCOMB_X35_Y27_N18
\ULAUnit|UlaControlInstance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux0~0_combout\ = (\RegIns|addr_Output7\(1)) # ((\RegIns|addr_Output7\(3)) # ((!\RegIns|addr_Output7\(2) & \RegIns|addr_Output5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(2),
	datab => \RegIns|addr_Output7\(1),
	datac => \RegIns|addr_Output5\(0),
	datad => \RegIns|addr_Output7\(3),
	combout => \ULAUnit|UlaControlInstance|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y27_N14
\ULAUnit|UlaInstance|Somador|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|S[0]~0_combout\ = (\Control|currentState.S0~regout\ & (!\Control|currentState.S1~regout\ & !\Control|currentState.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S1~regout\,
	datad => \Control|currentState.S2~regout\,
	combout => \ULAUnit|UlaInstance|Somador|S[0]~0_combout\);

-- Location: LCCOMB_X36_Y25_N16
\RegIns|addr_Output7[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(5) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output7\(5)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(5),
	datac => \Control|currentState.S0~clkctrl_outclk\,
	datad => \RegIns|addr_Output7\(5),
	combout => \RegIns|addr_Output7\(5));

-- Location: LCCOMB_X35_Y27_N22
\ULAUnit|UlaInstance|Result[1]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~56_combout\ = (!\RegIns|addr_Output7\(4) & \RegIns|addr_Output7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegIns|addr_Output7\(4),
	datad => \RegIns|addr_Output7\(5),
	combout => \ULAUnit|UlaInstance|Result[1]~56_combout\);

-- Location: LCCOMB_X35_Y27_N0
\ULAUnit|UlaInstance|Somador|S[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|S[0]~1_combout\ = (\ULAUnit|UlaInstance|Somador|S[0]~0_combout\ & ((\Control|currentState.S8~regout\) # ((\ULAUnit|UlaControlInstance|Mux0~0_combout\) # (!\ULAUnit|UlaInstance|Result[1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \ULAUnit|UlaControlInstance|Mux0~0_combout\,
	datac => \ULAUnit|UlaInstance|Somador|S[0]~0_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~56_combout\,
	combout => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\);

-- Location: LCCOMB_X38_Y24_N30
\ULAUnit|UlaInstance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Equal0~0_combout\ = (\ULAUnit|UlaControlInstance|Mux5~2_combout\ & (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \ULAUnit|UlaInstance|Somador|S[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	combout => \ULAUnit|UlaInstance|Equal0~0_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(0),
	combout => \i_dt1~combout\(0));

-- Location: LCFF_X37_Y25_N3
\RegA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(0));

-- Location: LCCOMB_X37_Y25_N2
\Mux4|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[0]~0_combout\ = (\RegA|q\(0) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(0),
	datad => \Control|currentState.S6~regout\,
	combout => \Mux4|S[0]~0_combout\);

-- Location: LCCOMB_X38_Y24_N8
\ULAUnit|UlaInstance|Result[0]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~58_combout\ = (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[0]~0_combout\ & ((\Mux4|S[0]~0_combout\) # (\ULAUnit|UlaControlInstance|Mux5~2_combout\))) # (!\Mux5|S[0]~0_combout\ & (\Mux4|S[0]~0_combout\ & 
-- \ULAUnit|UlaControlInstance|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[0]~0_combout\,
	datab => \Mux4|S[0]~0_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~58_combout\);

-- Location: LCCOMB_X35_Y25_N0
\ULAUnit|UlaInstance|Somador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~0_combout\ = (\Mux5|S[0]~0_combout\ & (\Mux4|S[0]~0_combout\ $ (VCC))) # (!\Mux5|S[0]~0_combout\ & ((\Mux4|S[0]~0_combout\) # (GND)))
-- \ULAUnit|UlaInstance|Somador|Add1~1\ = CARRY((\Mux4|S[0]~0_combout\) # (!\Mux5|S[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[0]~0_combout\,
	datab => \Mux4|S[0]~0_combout\,
	datad => VCC,
	combout => \ULAUnit|UlaInstance|Somador|Add1~0_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~1\);

-- Location: LCCOMB_X35_Y27_N6
\ULAUnit|UlaInstance|Result[0]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~59_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~0_combout\))) # (!\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~0_combout\,
	datab => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~0_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~59_combout\);

-- Location: LCCOMB_X38_Y24_N4
\ULAUnit|UlaInstance|Result[0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~60_combout\ = (!\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Result[0]~58_combout\) # (\ULAUnit|UlaInstance|Result[0]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datac => \ULAUnit|UlaInstance|Result[0]~58_combout\,
	datad => \ULAUnit|UlaInstance|Result[0]~59_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~60_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(30),
	combout => \i_dt1~combout\(30));

-- Location: LCFF_X36_Y28_N19
\RegA|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(30));

-- Location: LCCOMB_X36_Y28_N18
\Mux4|S[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[30]~2_combout\ = (\RegA|q\(30) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(30),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[30]~2_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(29),
	combout => \i_dt1~combout\(29));

-- Location: LCFF_X36_Y28_N17
\RegA|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(29));

-- Location: LCCOMB_X36_Y28_N16
\Mux4|S[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[29]~3_combout\ = (\RegA|q\(29) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(29),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[29]~3_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(28),
	combout => \i_dt1~combout\(28));

-- Location: LCFF_X38_Y24_N21
\RegA|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(28));

-- Location: LCCOMB_X38_Y24_N20
\Mux4|S[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[28]~4_combout\ = (\RegA|q\(28) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(28),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[28]~4_combout\);

-- Location: LCCOMB_X32_Y24_N0
\RegIns|addr_Output5[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(15) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output5\(15))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(15),
	datac => \i_in~combout\(15),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(15));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(27),
	combout => \i_dt2~combout\(27));

-- Location: LCFF_X32_Y24_N19
\RegB|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(27));

-- Location: LCCOMB_X37_Y25_N0
\Control|ULAFonteB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAFonteB~1_combout\ = (!\Control|currentState.S6~regout\ & !\Control|currentState.S8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S6~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|ULAFonteB~1_combout\);

-- Location: LCCOMB_X32_Y24_N18
\Mux5|S[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[27]~5_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(27) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(27) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(27),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[27]~5_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(26),
	combout => \i_dt1~combout\(26));

-- Location: LCFF_X38_Y24_N11
\RegA|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(26));

-- Location: LCCOMB_X38_Y24_N10
\Mux4|S[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[26]~6_combout\ = (\RegA|q\(26) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(26),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[26]~6_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(25),
	combout => \i_dt1~combout\(25));

-- Location: LCFF_X36_Y28_N25
\RegA|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(25));

-- Location: LCCOMB_X36_Y28_N24
\Mux4|S[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[25]~7_combout\ = (\RegA|q\(25) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(25),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[25]~7_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(24),
	combout => \i_dt1~combout\(24));

-- Location: LCFF_X38_Y24_N13
\RegA|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(24));

-- Location: LCCOMB_X38_Y24_N12
\Mux4|S[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[24]~8_combout\ = (\RegA|q\(24) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(24),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[24]~8_combout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(23),
	combout => \i_dt1~combout\(23));

-- Location: LCFF_X36_Y28_N15
\RegA|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(23));

-- Location: LCCOMB_X36_Y28_N14
\Mux4|S[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[23]~9_combout\ = (\RegA|q\(23) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(23),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[23]~9_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(22),
	combout => \i_dt1~combout\(22));

-- Location: LCFF_X36_Y27_N1
\RegA|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(22));

-- Location: LCCOMB_X36_Y27_N0
\Mux4|S[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[22]~10_combout\ = (\RegA|q\(22) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(22),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[22]~10_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(21),
	combout => \i_dt1~combout\(21));

-- Location: LCFF_X38_Y24_N27
\RegA|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(21));

-- Location: LCCOMB_X38_Y24_N26
\Mux4|S[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[21]~11_combout\ = (\RegA|q\(21) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(21),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[21]~11_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(20),
	combout => \i_dt1~combout\(20));

-- Location: LCFF_X36_Y27_N23
\RegA|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(20));

-- Location: LCCOMB_X36_Y27_N22
\Mux4|S[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[20]~12_combout\ = (\RegA|q\(20) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(20),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[20]~12_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(19),
	combout => \i_dt1~combout\(19));

-- Location: LCFF_X38_Y24_N1
\RegA|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(19));

-- Location: LCCOMB_X38_Y24_N0
\Mux4|S[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[19]~13_combout\ = (\RegA|q\(19) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(19),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[19]~13_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(18),
	combout => \i_dt1~combout\(18));

-- Location: LCFF_X36_Y28_N1
\RegA|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(18));

-- Location: LCCOMB_X36_Y28_N0
\Mux4|S[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[18]~14_combout\ = (\RegA|q\(18) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(18),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[18]~14_combout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(17),
	combout => \i_dt2~combout\(17));

-- Location: LCFF_X33_Y24_N29
\RegB|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(17));

-- Location: LCCOMB_X33_Y24_N28
\Mux5|S[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[17]~15_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(17))))) # (!\RegIns|addr_Output5\(15) & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(17),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[17]~15_combout\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(16),
	combout => \i_dt2~combout\(16));

-- Location: LCFF_X33_Y24_N3
\RegB|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(16));

-- Location: LCCOMB_X32_Y25_N0
\Mux5|S[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[16]~16_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(14))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(14),
	datab => \RegIns|addr_Output5\(15),
	datac => \Control|ULAFonteA~0_combout\,
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[16]~16_combout\);

-- Location: LCCOMB_X33_Y24_N2
\Mux5|S[16]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[16]~17_combout\ = (\Mux5|S[16]~16_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(16),
	datad => \Mux5|S[16]~16_combout\,
	combout => \Mux5|S[16]~17_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(15),
	combout => \i_dt1~combout\(15));

-- Location: LCFF_X35_Y28_N5
\RegA|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(15));

-- Location: LCCOMB_X35_Y28_N4
\Mux4|S[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[15]~17_combout\ = (\RegA|q\(15) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(15),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[15]~17_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(14),
	combout => \i_dt1~combout\(14));

-- Location: LCFF_X33_Y25_N17
\RegA|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(14));

-- Location: LCCOMB_X33_Y25_N16
\Mux4|S[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[14]~18_combout\ = (\RegA|q\(14) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(14),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[14]~18_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(13),
	combout => \i_dt1~combout\(13));

-- Location: LCFF_X36_Y28_N31
\RegA|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(13));

-- Location: LCCOMB_X36_Y28_N30
\Mux4|S[13]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[13]~19_combout\ = (\RegA|q\(13) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(13),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[13]~19_combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(12),
	combout => \i_dt1~combout\(12));

-- Location: LCFF_X32_Y25_N27
\RegA|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(12));

-- Location: LCCOMB_X32_Y25_N26
\Mux4|S[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[12]~20_combout\ = (\RegA|q\(12) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(12),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[12]~20_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(11),
	combout => \i_dt1~combout\(11));

-- Location: LCFF_X37_Y25_N13
\RegA|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(11));

-- Location: LCCOMB_X37_Y25_N12
\Mux4|S[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[11]~21_combout\ = (\RegA|q\(11) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(11),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[11]~21_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(10),
	combout => \i_dt2~combout\(10));

-- Location: LCFF_X38_Y25_N3
\RegB|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(10));

-- Location: LCCOMB_X33_Y25_N26
\RegIns|addr_Output5[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(10) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(10)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(10),
	datab => \RegIns|addr_Output5\(10),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(10));

-- Location: LCCOMB_X38_Y25_N28
\Mux5|S[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[10]~28_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(8))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \RegIns|addr_Output5\(10),
	combout => \Mux5|S[10]~28_combout\);

-- Location: LCCOMB_X38_Y25_N2
\Mux5|S[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[10]~29_combout\ = (\Mux5|S[10]~28_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(10),
	datad => \Mux5|S[10]~28_combout\,
	combout => \Mux5|S[10]~29_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(9),
	combout => \i_dt1~combout\(9));

-- Location: LCFF_X37_Y25_N9
\RegA|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(9));

-- Location: LCCOMB_X37_Y25_N8
\Mux4|S[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[9]~23_combout\ = (\RegA|q\(9) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(9),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[9]~23_combout\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(8),
	combout => \i_dt1~combout\(8));

-- Location: LCFF_X37_Y25_N5
\RegA|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(8));

-- Location: LCCOMB_X37_Y25_N4
\Mux4|S[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[8]~24_combout\ = (\RegA|q\(8) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(8),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[8]~24_combout\);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(7),
	combout => \i_dt2~combout\(7));

-- Location: LCFF_X36_Y25_N23
\RegB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(7));

-- Location: LCCOMB_X36_Y25_N28
\Mux5|S[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[7]~34_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(5)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(7),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegIns|addr_Output7\(5),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[7]~34_combout\);

-- Location: LCCOMB_X36_Y25_N22
\Mux5|S[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[7]~35_combout\ = (\Mux5|S[7]~34_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(7),
	datad => \Mux5|S[7]~34_combout\,
	combout => \Mux5|S[7]~35_combout\);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(6),
	combout => \i_dt1~combout\(6));

-- Location: LCFF_X32_Y25_N23
\RegA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(6));

-- Location: LCCOMB_X32_Y25_N22
\Mux4|S[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[6]~26_combout\ = (\RegA|q\(6) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(6),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[6]~26_combout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(5),
	combout => \i_dt2~combout\(5));

-- Location: LCFF_X36_Y25_N31
\RegB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(5));

-- Location: LCCOMB_X36_Y25_N12
\Mux5|S[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[5]~38_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(3)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \RegIns|addr_Output7\(3),
	datac => \Control|ULAFonteA~0_combout\,
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[5]~38_combout\);

-- Location: LCCOMB_X36_Y25_N30
\Mux5|S[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[5]~39_combout\ = (\Mux5|S[5]~38_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(5),
	datad => \Mux5|S[5]~38_combout\,
	combout => \Mux5|S[5]~39_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(4),
	combout => \i_dt2~combout\(4));

-- Location: LCFF_X38_Y25_N27
\RegB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(4));

-- Location: LCCOMB_X38_Y25_N14
\RegIns|addr_Output7[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(2) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output7\(2)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(2),
	datac => \RegIns|addr_Output7\(2),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output7\(2));

-- Location: LCCOMB_X38_Y25_N0
\Mux5|S[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[4]~40_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(2)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(4),
	datab => \RegIns|addr_Output7\(2),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[4]~40_combout\);

-- Location: LCCOMB_X38_Y25_N26
\Mux5|S[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[4]~41_combout\ = (\Mux5|S[4]~40_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(4),
	datad => \Mux5|S[4]~40_combout\,
	combout => \Mux5|S[4]~41_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(3),
	combout => \i_dt2~combout\(3));

-- Location: LCFF_X36_Y25_N9
\RegB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(3));

-- Location: LCCOMB_X36_Y25_N18
\Mux5|S[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[3]~42_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(1)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(3),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \Control|ULAFonteA~0_combout\,
	datad => \RegIns|addr_Output7\(1),
	combout => \Mux5|S[3]~42_combout\);

-- Location: LCCOMB_X36_Y25_N8
\Mux5|S[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[3]~43_combout\ = (\Mux5|S[3]~42_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(3),
	datad => \Mux5|S[3]~42_combout\,
	combout => \Mux5|S[3]~43_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(2),
	combout => \i_dt2~combout\(2));

-- Location: LCFF_X38_Y25_N7
\RegB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(2));

-- Location: LCCOMB_X38_Y25_N12
\Mux5|S[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[2]~44_combout\ = (\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(0))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(0),
	datac => \RegIns|addr_Output7\(2),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[2]~44_combout\);

-- Location: LCCOMB_X38_Y25_N6
\Mux5|S[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[2]~45_combout\ = (\Control|ULAFonteB[1]~0_combout\ & (((\Mux5|S[2]~44_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\) # ((\RegB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(2),
	datad => \Mux5|S[2]~44_combout\,
	combout => \Mux5|S[2]~45_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(1),
	combout => \i_dt1~combout\(1));

-- Location: LCFF_X37_Y25_N17
\RegA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(1));

-- Location: LCCOMB_X37_Y25_N16
\Mux4|S[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[1]~31_combout\ = (\RegA|q\(1) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(1),
	datad => \Control|currentState.S6~regout\,
	combout => \Mux4|S[1]~31_combout\);

-- Location: LCCOMB_X35_Y25_N2
\ULAUnit|UlaInstance|Somador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~2_combout\ = (\Mux5|S[1]~46_combout\ & ((\Mux4|S[1]~31_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~1\)) # (!\Mux4|S[1]~31_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~1\) # (GND))))) # (!\Mux5|S[1]~46_combout\ & 
-- ((\Mux4|S[1]~31_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~1\ & VCC)) # (!\Mux4|S[1]~31_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~1\))))
-- \ULAUnit|UlaInstance|Somador|Add1~3\ = CARRY((\Mux5|S[1]~46_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~1\) # (!\Mux4|S[1]~31_combout\))) # (!\Mux5|S[1]~46_combout\ & (!\Mux4|S[1]~31_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[1]~46_combout\,
	datab => \Mux4|S[1]~31_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~1\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~2_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~3\);

-- Location: LCCOMB_X35_Y25_N4
\ULAUnit|UlaInstance|Somador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~4_combout\ = ((\Mux4|S[2]~30_combout\ $ (\Mux5|S[2]~45_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~3\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~5\ = CARRY((\Mux4|S[2]~30_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~3\) # (!\Mux5|S[2]~45_combout\))) # (!\Mux4|S[2]~30_combout\ & (!\Mux5|S[2]~45_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[2]~30_combout\,
	datab => \Mux5|S[2]~45_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~3\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~4_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~5\);

-- Location: LCCOMB_X35_Y25_N6
\ULAUnit|UlaInstance|Somador|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~6_combout\ = (\Mux4|S[3]~29_combout\ & ((\Mux5|S[3]~43_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~5\)) # (!\Mux5|S[3]~43_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~5\ & VCC)))) # (!\Mux4|S[3]~29_combout\ & 
-- ((\Mux5|S[3]~43_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~5\) # (GND))) # (!\Mux5|S[3]~43_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~5\))))
-- \ULAUnit|UlaInstance|Somador|Add1~7\ = CARRY((\Mux4|S[3]~29_combout\ & (\Mux5|S[3]~43_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~5\)) # (!\Mux4|S[3]~29_combout\ & ((\Mux5|S[3]~43_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[3]~29_combout\,
	datab => \Mux5|S[3]~43_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~5\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~6_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~7\);

-- Location: LCCOMB_X35_Y25_N8
\ULAUnit|UlaInstance|Somador|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~8_combout\ = ((\Mux4|S[4]~28_combout\ $ (\Mux5|S[4]~41_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~7\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~9\ = CARRY((\Mux4|S[4]~28_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~7\) # (!\Mux5|S[4]~41_combout\))) # (!\Mux4|S[4]~28_combout\ & (!\Mux5|S[4]~41_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[4]~28_combout\,
	datab => \Mux5|S[4]~41_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~7\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~8_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~9\);

-- Location: LCCOMB_X35_Y25_N10
\ULAUnit|UlaInstance|Somador|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~10_combout\ = (\Mux4|S[5]~27_combout\ & ((\Mux5|S[5]~39_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~9\)) # (!\Mux5|S[5]~39_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~9\ & VCC)))) # (!\Mux4|S[5]~27_combout\ & 
-- ((\Mux5|S[5]~39_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~9\) # (GND))) # (!\Mux5|S[5]~39_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~9\))))
-- \ULAUnit|UlaInstance|Somador|Add1~11\ = CARRY((\Mux4|S[5]~27_combout\ & (\Mux5|S[5]~39_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~9\)) # (!\Mux4|S[5]~27_combout\ & ((\Mux5|S[5]~39_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[5]~27_combout\,
	datab => \Mux5|S[5]~39_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~9\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~10_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~11\);

-- Location: LCCOMB_X35_Y25_N12
\ULAUnit|UlaInstance|Somador|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~12_combout\ = ((\Mux5|S[6]~37_combout\ $ (\Mux4|S[6]~26_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~11\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~13\ = CARRY((\Mux5|S[6]~37_combout\ & (\Mux4|S[6]~26_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~11\)) # (!\Mux5|S[6]~37_combout\ & ((\Mux4|S[6]~26_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[6]~37_combout\,
	datab => \Mux4|S[6]~26_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~11\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~12_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~13\);

-- Location: LCCOMB_X35_Y25_N18
\ULAUnit|UlaInstance|Somador|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~18_combout\ = (\Mux5|S[9]~31_combout\ & ((\Mux4|S[9]~23_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~17\)) # (!\Mux4|S[9]~23_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~17\) # (GND))))) # (!\Mux5|S[9]~31_combout\ & 
-- ((\Mux4|S[9]~23_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~17\ & VCC)) # (!\Mux4|S[9]~23_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~17\))))
-- \ULAUnit|UlaInstance|Somador|Add1~19\ = CARRY((\Mux5|S[9]~31_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~17\) # (!\Mux4|S[9]~23_combout\))) # (!\Mux5|S[9]~31_combout\ & (!\Mux4|S[9]~23_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[9]~31_combout\,
	datab => \Mux4|S[9]~23_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~17\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~18_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~19\);

-- Location: LCCOMB_X35_Y25_N20
\ULAUnit|UlaInstance|Somador|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~20_combout\ = ((\Mux4|S[10]~22_combout\ $ (\Mux5|S[10]~29_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~19\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~21\ = CARRY((\Mux4|S[10]~22_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~19\) # (!\Mux5|S[10]~29_combout\))) # (!\Mux4|S[10]~22_combout\ & (!\Mux5|S[10]~29_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[10]~22_combout\,
	datab => \Mux5|S[10]~29_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~19\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~20_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~21\);

-- Location: LCCOMB_X35_Y25_N22
\ULAUnit|UlaInstance|Somador|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~22_combout\ = (\Mux5|S[11]~27_combout\ & ((\Mux4|S[11]~21_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~21\)) # (!\Mux4|S[11]~21_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~21\) # (GND))))) # (!\Mux5|S[11]~27_combout\ 
-- & ((\Mux4|S[11]~21_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~21\ & VCC)) # (!\Mux4|S[11]~21_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~21\))))
-- \ULAUnit|UlaInstance|Somador|Add1~23\ = CARRY((\Mux5|S[11]~27_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~21\) # (!\Mux4|S[11]~21_combout\))) # (!\Mux5|S[11]~27_combout\ & (!\Mux4|S[11]~21_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[11]~27_combout\,
	datab => \Mux4|S[11]~21_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~21\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~22_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~23\);

-- Location: LCCOMB_X35_Y25_N24
\ULAUnit|UlaInstance|Somador|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~24_combout\ = ((\Mux5|S[12]~25_combout\ $ (\Mux4|S[12]~20_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~23\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~25\ = CARRY((\Mux5|S[12]~25_combout\ & (\Mux4|S[12]~20_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~23\)) # (!\Mux5|S[12]~25_combout\ & ((\Mux4|S[12]~20_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[12]~25_combout\,
	datab => \Mux4|S[12]~20_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~23\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~24_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~25\);

-- Location: LCCOMB_X35_Y25_N26
\ULAUnit|UlaInstance|Somador|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~26_combout\ = (\Mux5|S[13]~23_combout\ & ((\Mux4|S[13]~19_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~25\)) # (!\Mux4|S[13]~19_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~25\) # (GND))))) # (!\Mux5|S[13]~23_combout\ 
-- & ((\Mux4|S[13]~19_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~25\ & VCC)) # (!\Mux4|S[13]~19_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~25\))))
-- \ULAUnit|UlaInstance|Somador|Add1~27\ = CARRY((\Mux5|S[13]~23_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~25\) # (!\Mux4|S[13]~19_combout\))) # (!\Mux5|S[13]~23_combout\ & (!\Mux4|S[13]~19_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[13]~23_combout\,
	datab => \Mux4|S[13]~19_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~25\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~26_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~27\);

-- Location: LCCOMB_X35_Y25_N30
\ULAUnit|UlaInstance|Somador|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~30_combout\ = (\Mux5|S[15]~19_combout\ & ((\Mux4|S[15]~17_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~29\)) # (!\Mux4|S[15]~17_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~29\) # (GND))))) # (!\Mux5|S[15]~19_combout\ 
-- & ((\Mux4|S[15]~17_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~29\ & VCC)) # (!\Mux4|S[15]~17_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~29\))))
-- \ULAUnit|UlaInstance|Somador|Add1~31\ = CARRY((\Mux5|S[15]~19_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~29\) # (!\Mux4|S[15]~17_combout\))) # (!\Mux5|S[15]~19_combout\ & (!\Mux4|S[15]~17_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[15]~19_combout\,
	datab => \Mux4|S[15]~17_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~29\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~30_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~31\);

-- Location: LCCOMB_X35_Y24_N0
\ULAUnit|UlaInstance|Somador|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~32_combout\ = ((\Mux4|S[16]~16_combout\ $ (\Mux5|S[16]~17_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~31\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~33\ = CARRY((\Mux4|S[16]~16_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~31\) # (!\Mux5|S[16]~17_combout\))) # (!\Mux4|S[16]~16_combout\ & (!\Mux5|S[16]~17_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[16]~16_combout\,
	datab => \Mux5|S[16]~17_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~31\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~32_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~33\);

-- Location: LCCOMB_X35_Y24_N4
\ULAUnit|UlaInstance|Somador|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~36_combout\ = ((\Mux5|S[18]~14_combout\ $ (\Mux4|S[18]~14_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~35\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~37\ = CARRY((\Mux5|S[18]~14_combout\ & (\Mux4|S[18]~14_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~35\)) # (!\Mux5|S[18]~14_combout\ & ((\Mux4|S[18]~14_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[18]~14_combout\,
	datab => \Mux4|S[18]~14_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~35\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~36_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~37\);

-- Location: LCCOMB_X35_Y24_N8
\ULAUnit|UlaInstance|Somador|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~40_combout\ = ((\Mux5|S[20]~12_combout\ $ (\Mux4|S[20]~12_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~39\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~41\ = CARRY((\Mux5|S[20]~12_combout\ & (\Mux4|S[20]~12_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~39\)) # (!\Mux5|S[20]~12_combout\ & ((\Mux4|S[20]~12_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[20]~12_combout\,
	datab => \Mux4|S[20]~12_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~39\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~40_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~41\);

-- Location: LCCOMB_X35_Y24_N10
\ULAUnit|UlaInstance|Somador|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~42_combout\ = (\Mux5|S[21]~11_combout\ & ((\Mux4|S[21]~11_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~41\)) # (!\Mux4|S[21]~11_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~41\) # (GND))))) # (!\Mux5|S[21]~11_combout\ 
-- & ((\Mux4|S[21]~11_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~41\ & VCC)) # (!\Mux4|S[21]~11_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~41\))))
-- \ULAUnit|UlaInstance|Somador|Add1~43\ = CARRY((\Mux5|S[21]~11_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~41\) # (!\Mux4|S[21]~11_combout\))) # (!\Mux5|S[21]~11_combout\ & (!\Mux4|S[21]~11_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[21]~11_combout\,
	datab => \Mux4|S[21]~11_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~41\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~42_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~43\);

-- Location: LCCOMB_X35_Y24_N12
\ULAUnit|UlaInstance|Somador|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~44_combout\ = ((\Mux5|S[22]~10_combout\ $ (\Mux4|S[22]~10_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~43\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~45\ = CARRY((\Mux5|S[22]~10_combout\ & (\Mux4|S[22]~10_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~43\)) # (!\Mux5|S[22]~10_combout\ & ((\Mux4|S[22]~10_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[22]~10_combout\,
	datab => \Mux4|S[22]~10_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~43\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~44_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~45\);

-- Location: LCCOMB_X35_Y24_N14
\ULAUnit|UlaInstance|Somador|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~46_combout\ = (\Mux5|S[23]~9_combout\ & ((\Mux4|S[23]~9_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~45\)) # (!\Mux4|S[23]~9_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~45\) # (GND))))) # (!\Mux5|S[23]~9_combout\ & 
-- ((\Mux4|S[23]~9_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~45\ & VCC)) # (!\Mux4|S[23]~9_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~45\))))
-- \ULAUnit|UlaInstance|Somador|Add1~47\ = CARRY((\Mux5|S[23]~9_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~45\) # (!\Mux4|S[23]~9_combout\))) # (!\Mux5|S[23]~9_combout\ & (!\Mux4|S[23]~9_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[23]~9_combout\,
	datab => \Mux4|S[23]~9_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~45\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~46_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~47\);

-- Location: LCCOMB_X35_Y24_N16
\ULAUnit|UlaInstance|Somador|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~48_combout\ = ((\Mux5|S[24]~8_combout\ $ (\Mux4|S[24]~8_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~47\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~49\ = CARRY((\Mux5|S[24]~8_combout\ & (\Mux4|S[24]~8_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~47\)) # (!\Mux5|S[24]~8_combout\ & ((\Mux4|S[24]~8_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[24]~8_combout\,
	datab => \Mux4|S[24]~8_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~47\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~48_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~49\);

-- Location: LCCOMB_X35_Y24_N18
\ULAUnit|UlaInstance|Somador|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~50_combout\ = (\Mux5|S[25]~7_combout\ & ((\Mux4|S[25]~7_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~49\)) # (!\Mux4|S[25]~7_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~49\) # (GND))))) # (!\Mux5|S[25]~7_combout\ & 
-- ((\Mux4|S[25]~7_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~49\ & VCC)) # (!\Mux4|S[25]~7_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~49\))))
-- \ULAUnit|UlaInstance|Somador|Add1~51\ = CARRY((\Mux5|S[25]~7_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~49\) # (!\Mux4|S[25]~7_combout\))) # (!\Mux5|S[25]~7_combout\ & (!\Mux4|S[25]~7_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[25]~7_combout\,
	datab => \Mux4|S[25]~7_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~49\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~50_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~51\);

-- Location: LCCOMB_X35_Y24_N20
\ULAUnit|UlaInstance|Somador|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~52_combout\ = ((\Mux5|S[26]~6_combout\ $ (\Mux4|S[26]~6_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~51\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~53\ = CARRY((\Mux5|S[26]~6_combout\ & (\Mux4|S[26]~6_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~51\)) # (!\Mux5|S[26]~6_combout\ & ((\Mux4|S[26]~6_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[26]~6_combout\,
	datab => \Mux4|S[26]~6_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~51\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~52_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~53\);

-- Location: LCCOMB_X35_Y24_N22
\ULAUnit|UlaInstance|Somador|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~54_combout\ = (\Mux4|S[27]~5_combout\ & ((\Mux5|S[27]~5_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~53\)) # (!\Mux5|S[27]~5_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~53\ & VCC)))) # (!\Mux4|S[27]~5_combout\ & 
-- ((\Mux5|S[27]~5_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~53\) # (GND))) # (!\Mux5|S[27]~5_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~53\))))
-- \ULAUnit|UlaInstance|Somador|Add1~55\ = CARRY((\Mux4|S[27]~5_combout\ & (\Mux5|S[27]~5_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~53\)) # (!\Mux4|S[27]~5_combout\ & ((\Mux5|S[27]~5_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[27]~5_combout\,
	datab => \Mux5|S[27]~5_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~53\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~54_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~55\);

-- Location: LCCOMB_X35_Y24_N24
\ULAUnit|UlaInstance|Somador|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~56_combout\ = ((\Mux5|S[28]~4_combout\ $ (\Mux4|S[28]~4_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~55\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~57\ = CARRY((\Mux5|S[28]~4_combout\ & (\Mux4|S[28]~4_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~55\)) # (!\Mux5|S[28]~4_combout\ & ((\Mux4|S[28]~4_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[28]~4_combout\,
	datab => \Mux4|S[28]~4_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~55\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~56_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~57\);

-- Location: LCCOMB_X35_Y24_N26
\ULAUnit|UlaInstance|Somador|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~58_combout\ = (\Mux5|S[29]~3_combout\ & ((\Mux4|S[29]~3_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~57\)) # (!\Mux4|S[29]~3_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~57\) # (GND))))) # (!\Mux5|S[29]~3_combout\ & 
-- ((\Mux4|S[29]~3_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~57\ & VCC)) # (!\Mux4|S[29]~3_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~57\))))
-- \ULAUnit|UlaInstance|Somador|Add1~59\ = CARRY((\Mux5|S[29]~3_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~57\) # (!\Mux4|S[29]~3_combout\))) # (!\Mux5|S[29]~3_combout\ & (!\Mux4|S[29]~3_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[29]~3_combout\,
	datab => \Mux4|S[29]~3_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~57\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~58_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~59\);

-- Location: LCCOMB_X35_Y24_N28
\ULAUnit|UlaInstance|Somador|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~60_combout\ = ((\Mux5|S[30]~2_combout\ $ (\Mux4|S[30]~2_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~59\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~61\ = CARRY((\Mux5|S[30]~2_combout\ & (\Mux4|S[30]~2_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~59\)) # (!\Mux5|S[30]~2_combout\ & ((\Mux4|S[30]~2_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[30]~2_combout\,
	datab => \Mux4|S[30]~2_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~59\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~60_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~61\);

-- Location: LCCOMB_X35_Y24_N30
\ULAUnit|UlaInstance|Somador|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~62_combout\ = \Mux5|S[31]~1_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~61\ $ (!\Mux4|S[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[31]~1_combout\,
	datad => \Mux4|S[31]~1_combout\,
	cin => \ULAUnit|UlaInstance|Somador|Add1~61\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~62_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(27),
	combout => \i_dt1~combout\(27));

-- Location: LCFF_X36_Y28_N27
\RegA|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(27));

-- Location: LCCOMB_X36_Y28_N26
\Mux4|S[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[27]~5_combout\ = (\RegA|q\(27) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(27),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[27]~5_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(26),
	combout => \i_dt2~combout\(26));

-- Location: LCFF_X36_Y24_N3
\RegB|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(26));

-- Location: LCCOMB_X36_Y24_N2
\Mux5|S[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[26]~6_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15))))) # (!\Control|ULAFonteB~1_combout\ & ((\RegB|q\(26)) # ((\Control|ULAFonteB[1]~0_combout\ & \RegIns|addr_Output5\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB~1_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(26),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[26]~6_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(25),
	combout => \i_dt2~combout\(25));

-- Location: LCCOMB_X32_Y24_N24
\RegB|q[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegB|q[25]~feeder_combout\ = \i_dt2~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_dt2~combout\(25),
	combout => \RegB|q[25]~feeder_combout\);

-- Location: LCFF_X32_Y24_N25
\RegB|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RegB|q[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(25));

-- Location: LCCOMB_X33_Y24_N4
\Mux5|S[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[25]~7_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(25))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & ((\RegB|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegIns|addr_Output5\(15),
	datad => \RegB|q\(25),
	combout => \Mux5|S[25]~7_combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(23),
	combout => \i_dt2~combout\(23));

-- Location: LCFF_X33_Y24_N25
\RegB|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(23));

-- Location: LCCOMB_X33_Y24_N24
\Mux5|S[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[23]~9_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(23) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(23) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(23),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[23]~9_combout\);

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(21),
	combout => \i_dt2~combout\(21));

-- Location: LCFF_X33_Y24_N13
\RegB|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(21));

-- Location: LCCOMB_X33_Y24_N12
\Mux5|S[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[21]~11_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(21) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(21) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(21),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[21]~11_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(19),
	combout => \i_dt2~combout\(19));

-- Location: LCFF_X33_Y24_N17
\RegB|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(19));

-- Location: LCCOMB_X33_Y24_N16
\Mux5|S[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[19]~13_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(19))))) # (!\RegIns|addr_Output5\(15) & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(19),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[19]~13_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(18),
	combout => \i_dt2~combout\(18));

-- Location: LCFF_X33_Y24_N23
\RegB|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(18));

-- Location: LCCOMB_X33_Y24_N22
\Mux5|S[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[18]~14_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(18))))) # (!\RegIns|addr_Output5\(15) & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(18),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[18]~14_combout\);

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(16),
	combout => \i_dt1~combout\(16));

-- Location: LCFF_X34_Y23_N1
\RegA|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(16));

-- Location: LCCOMB_X34_Y23_N0
\Mux4|S[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[16]~16_combout\ = (\RegA|q\(16) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(16),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[16]~16_combout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(12),
	combout => \i_dt2~combout\(12));

-- Location: LCFF_X33_Y25_N5
\RegB|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(12));

-- Location: LCCOMB_X33_Y25_N22
\Mux5|S[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[12]~24_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(10)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(12),
	datab => \RegIns|addr_Output5\(10),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[12]~24_combout\);

-- Location: LCCOMB_X33_Y25_N4
\Mux5|S[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[12]~25_combout\ = (\Mux5|S[12]~24_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(12),
	datad => \Mux5|S[12]~24_combout\,
	combout => \Mux5|S[12]~25_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(10),
	combout => \i_dt1~combout\(10));

-- Location: LCFF_X32_Y25_N9
\RegA|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(10));

-- Location: LCCOMB_X32_Y25_N8
\Mux4|S[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[10]~22_combout\ = (\RegA|q\(10) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S2~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \RegA|q\(10),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[10]~22_combout\);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(4),
	combout => \i_dt1~combout\(4));

-- Location: LCFF_X37_Y25_N11
\RegA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(4));

-- Location: LCCOMB_X37_Y25_N10
\Mux4|S[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[4]~28_combout\ = (\RegA|q\(4) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(4),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[4]~28_combout\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(2),
	combout => \i_dt1~combout\(2));

-- Location: LCFF_X37_Y25_N29
\RegA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(2));

-- Location: LCCOMB_X37_Y25_N28
\Mux4|S[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[2]~30_combout\ = (\RegA|q\(2) & ((\Control|currentState.S2~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(2),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux4|S[2]~30_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(0),
	combout => \i_dt2~combout\(0));

-- Location: LCFF_X38_Y25_N9
\RegB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(0));

-- Location: LCCOMB_X38_Y25_N18
\Mux5|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[0]~0_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|currentState.S2~regout\ & ((\RegIns|addr_Output5\(0))))) # (!\Control|ULAFonteB~1_combout\ & (((\RegB|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \RegB|q\(0),
	datac => \Control|ULAFonteB~1_combout\,
	datad => \RegIns|addr_Output5\(0),
	combout => \Mux5|S[0]~0_combout\);

-- Location: LCCOMB_X34_Y25_N6
\ULAUnit|UlaInstance|Somador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~6_combout\ = (\Mux4|S[3]~29_combout\ & ((\Mux5|S[3]~43_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~5\ & VCC)) # (!\Mux5|S[3]~43_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~5\)))) # (!\Mux4|S[3]~29_combout\ & 
-- ((\Mux5|S[3]~43_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~5\)) # (!\Mux5|S[3]~43_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~5\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~7\ = CARRY((\Mux4|S[3]~29_combout\ & (!\Mux5|S[3]~43_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~5\)) # (!\Mux4|S[3]~29_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~5\) # (!\Mux5|S[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[3]~29_combout\,
	datab => \Mux5|S[3]~43_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~5\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~6_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~7\);

-- Location: LCCOMB_X34_Y25_N8
\ULAUnit|UlaInstance|Somador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~8_combout\ = ((\Mux5|S[4]~41_combout\ $ (\Mux4|S[4]~28_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~7\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~9\ = CARRY((\Mux5|S[4]~41_combout\ & ((\Mux4|S[4]~28_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~7\))) # (!\Mux5|S[4]~41_combout\ & (\Mux4|S[4]~28_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[4]~41_combout\,
	datab => \Mux4|S[4]~28_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~7\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~8_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~9\);

-- Location: LCCOMB_X34_Y25_N12
\ULAUnit|UlaInstance|Somador|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~12_combout\ = ((\Mux5|S[6]~37_combout\ $ (\Mux4|S[6]~26_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~11\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~13\ = CARRY((\Mux5|S[6]~37_combout\ & ((\Mux4|S[6]~26_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~11\))) # (!\Mux5|S[6]~37_combout\ & (\Mux4|S[6]~26_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[6]~37_combout\,
	datab => \Mux4|S[6]~26_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~11\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~12_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~13\);

-- Location: LCCOMB_X34_Y25_N14
\ULAUnit|UlaInstance|Somador|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~14_combout\ = (\Mux4|S[7]~25_combout\ & ((\Mux5|S[7]~35_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~13\ & VCC)) # (!\Mux5|S[7]~35_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~13\)))) # (!\Mux4|S[7]~25_combout\ & 
-- ((\Mux5|S[7]~35_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~13\)) # (!\Mux5|S[7]~35_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~13\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~15\ = CARRY((\Mux4|S[7]~25_combout\ & (!\Mux5|S[7]~35_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~13\)) # (!\Mux4|S[7]~25_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~13\) # (!\Mux5|S[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~25_combout\,
	datab => \Mux5|S[7]~35_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~13\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~14_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~15\);

-- Location: LCCOMB_X34_Y25_N16
\ULAUnit|UlaInstance|Somador|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~16_combout\ = ((\Mux5|S[8]~33_combout\ $ (\Mux4|S[8]~24_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~15\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~17\ = CARRY((\Mux5|S[8]~33_combout\ & ((\Mux4|S[8]~24_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~15\))) # (!\Mux5|S[8]~33_combout\ & (\Mux4|S[8]~24_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[8]~33_combout\,
	datab => \Mux4|S[8]~24_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~15\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~16_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~17\);

-- Location: LCCOMB_X34_Y25_N18
\ULAUnit|UlaInstance|Somador|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~18_combout\ = (\Mux5|S[9]~31_combout\ & ((\Mux4|S[9]~23_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~17\ & VCC)) # (!\Mux4|S[9]~23_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~17\)))) # (!\Mux5|S[9]~31_combout\ & 
-- ((\Mux4|S[9]~23_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~17\)) # (!\Mux4|S[9]~23_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~17\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~19\ = CARRY((\Mux5|S[9]~31_combout\ & (!\Mux4|S[9]~23_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~17\)) # (!\Mux5|S[9]~31_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~17\) # (!\Mux4|S[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[9]~31_combout\,
	datab => \Mux4|S[9]~23_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~17\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~18_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~19\);

-- Location: LCCOMB_X34_Y25_N20
\ULAUnit|UlaInstance|Somador|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~20_combout\ = ((\Mux5|S[10]~29_combout\ $ (\Mux4|S[10]~22_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~19\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~21\ = CARRY((\Mux5|S[10]~29_combout\ & ((\Mux4|S[10]~22_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~19\))) # (!\Mux5|S[10]~29_combout\ & (\Mux4|S[10]~22_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[10]~29_combout\,
	datab => \Mux4|S[10]~22_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~19\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~20_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~21\);

-- Location: LCCOMB_X34_Y25_N22
\ULAUnit|UlaInstance|Somador|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~22_combout\ = (\Mux5|S[11]~27_combout\ & ((\Mux4|S[11]~21_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~21\ & VCC)) # (!\Mux4|S[11]~21_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~21\)))) # (!\Mux5|S[11]~27_combout\ & 
-- ((\Mux4|S[11]~21_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~21\)) # (!\Mux4|S[11]~21_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~21\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~23\ = CARRY((\Mux5|S[11]~27_combout\ & (!\Mux4|S[11]~21_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~21\)) # (!\Mux5|S[11]~27_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~21\) # (!\Mux4|S[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[11]~27_combout\,
	datab => \Mux4|S[11]~21_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~21\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~22_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~23\);

-- Location: LCCOMB_X34_Y25_N24
\ULAUnit|UlaInstance|Somador|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~24_combout\ = ((\Mux4|S[12]~20_combout\ $ (\Mux5|S[12]~25_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~23\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~25\ = CARRY((\Mux4|S[12]~20_combout\ & ((\Mux5|S[12]~25_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~23\))) # (!\Mux4|S[12]~20_combout\ & (\Mux5|S[12]~25_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[12]~20_combout\,
	datab => \Mux5|S[12]~25_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~23\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~24_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~25\);

-- Location: LCCOMB_X34_Y25_N26
\ULAUnit|UlaInstance|Somador|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~26_combout\ = (\Mux5|S[13]~23_combout\ & ((\Mux4|S[13]~19_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~25\ & VCC)) # (!\Mux4|S[13]~19_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~25\)))) # (!\Mux5|S[13]~23_combout\ & 
-- ((\Mux4|S[13]~19_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~25\)) # (!\Mux4|S[13]~19_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~25\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~27\ = CARRY((\Mux5|S[13]~23_combout\ & (!\Mux4|S[13]~19_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~25\)) # (!\Mux5|S[13]~23_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~25\) # (!\Mux4|S[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[13]~23_combout\,
	datab => \Mux4|S[13]~19_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~25\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~26_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~27\);

-- Location: LCCOMB_X34_Y25_N28
\ULAUnit|UlaInstance|Somador|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~28_combout\ = ((\Mux5|S[14]~21_combout\ $ (\Mux4|S[14]~18_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~27\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~29\ = CARRY((\Mux5|S[14]~21_combout\ & ((\Mux4|S[14]~18_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~27\))) # (!\Mux5|S[14]~21_combout\ & (\Mux4|S[14]~18_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[14]~21_combout\,
	datab => \Mux4|S[14]~18_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~27\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~28_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~29\);

-- Location: LCCOMB_X34_Y25_N30
\ULAUnit|UlaInstance|Somador|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~30_combout\ = (\Mux5|S[15]~19_combout\ & ((\Mux4|S[15]~17_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~29\ & VCC)) # (!\Mux4|S[15]~17_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~29\)))) # (!\Mux5|S[15]~19_combout\ & 
-- ((\Mux4|S[15]~17_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~29\)) # (!\Mux4|S[15]~17_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~29\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~31\ = CARRY((\Mux5|S[15]~19_combout\ & (!\Mux4|S[15]~17_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~29\)) # (!\Mux5|S[15]~19_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~29\) # (!\Mux4|S[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[15]~19_combout\,
	datab => \Mux4|S[15]~17_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~29\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~30_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~31\);

-- Location: LCCOMB_X34_Y24_N0
\ULAUnit|UlaInstance|Somador|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~32_combout\ = ((\Mux5|S[16]~17_combout\ $ (\Mux4|S[16]~16_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~31\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~33\ = CARRY((\Mux5|S[16]~17_combout\ & ((\Mux4|S[16]~16_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~31\))) # (!\Mux5|S[16]~17_combout\ & (\Mux4|S[16]~16_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[16]~17_combout\,
	datab => \Mux4|S[16]~16_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~31\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~32_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~33\);

-- Location: LCCOMB_X34_Y24_N2
\ULAUnit|UlaInstance|Somador|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~34_combout\ = (\Mux4|S[17]~15_combout\ & ((\Mux5|S[17]~15_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~33\ & VCC)) # (!\Mux5|S[17]~15_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~33\)))) # (!\Mux4|S[17]~15_combout\ & 
-- ((\Mux5|S[17]~15_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~33\)) # (!\Mux5|S[17]~15_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~33\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~35\ = CARRY((\Mux4|S[17]~15_combout\ & (!\Mux5|S[17]~15_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~33\)) # (!\Mux4|S[17]~15_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~33\) # (!\Mux5|S[17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[17]~15_combout\,
	datab => \Mux5|S[17]~15_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~33\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~34_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~35\);

-- Location: LCCOMB_X34_Y24_N4
\ULAUnit|UlaInstance|Somador|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~36_combout\ = ((\Mux4|S[18]~14_combout\ $ (\Mux5|S[18]~14_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~35\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~37\ = CARRY((\Mux4|S[18]~14_combout\ & ((\Mux5|S[18]~14_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~35\))) # (!\Mux4|S[18]~14_combout\ & (\Mux5|S[18]~14_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[18]~14_combout\,
	datab => \Mux5|S[18]~14_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~35\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~36_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~37\);

-- Location: LCCOMB_X34_Y24_N6
\ULAUnit|UlaInstance|Somador|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~38_combout\ = (\Mux4|S[19]~13_combout\ & ((\Mux5|S[19]~13_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~37\ & VCC)) # (!\Mux5|S[19]~13_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~37\)))) # (!\Mux4|S[19]~13_combout\ & 
-- ((\Mux5|S[19]~13_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~37\)) # (!\Mux5|S[19]~13_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~37\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~39\ = CARRY((\Mux4|S[19]~13_combout\ & (!\Mux5|S[19]~13_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~37\)) # (!\Mux4|S[19]~13_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~37\) # (!\Mux5|S[19]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[19]~13_combout\,
	datab => \Mux5|S[19]~13_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~37\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~38_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~39\);

-- Location: LCCOMB_X34_Y24_N8
\ULAUnit|UlaInstance|Somador|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~40_combout\ = ((\Mux5|S[20]~12_combout\ $ (\Mux4|S[20]~12_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~39\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~41\ = CARRY((\Mux5|S[20]~12_combout\ & ((\Mux4|S[20]~12_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~39\))) # (!\Mux5|S[20]~12_combout\ & (\Mux4|S[20]~12_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[20]~12_combout\,
	datab => \Mux4|S[20]~12_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~39\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~40_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~41\);

-- Location: LCCOMB_X34_Y24_N10
\ULAUnit|UlaInstance|Somador|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~42_combout\ = (\Mux4|S[21]~11_combout\ & ((\Mux5|S[21]~11_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~41\ & VCC)) # (!\Mux5|S[21]~11_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~41\)))) # (!\Mux4|S[21]~11_combout\ & 
-- ((\Mux5|S[21]~11_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~41\)) # (!\Mux5|S[21]~11_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~41\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~43\ = CARRY((\Mux4|S[21]~11_combout\ & (!\Mux5|S[21]~11_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~41\)) # (!\Mux4|S[21]~11_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~41\) # (!\Mux5|S[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[21]~11_combout\,
	datab => \Mux5|S[21]~11_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~41\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~42_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~43\);

-- Location: LCCOMB_X34_Y24_N12
\ULAUnit|UlaInstance|Somador|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~44_combout\ = ((\Mux5|S[22]~10_combout\ $ (\Mux4|S[22]~10_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~43\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~45\ = CARRY((\Mux5|S[22]~10_combout\ & ((\Mux4|S[22]~10_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~43\))) # (!\Mux5|S[22]~10_combout\ & (\Mux4|S[22]~10_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[22]~10_combout\,
	datab => \Mux4|S[22]~10_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~43\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~44_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~45\);

-- Location: LCCOMB_X34_Y24_N14
\ULAUnit|UlaInstance|Somador|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~46_combout\ = (\Mux4|S[23]~9_combout\ & ((\Mux5|S[23]~9_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~45\ & VCC)) # (!\Mux5|S[23]~9_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~45\)))) # (!\Mux4|S[23]~9_combout\ & 
-- ((\Mux5|S[23]~9_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~45\)) # (!\Mux5|S[23]~9_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~45\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~47\ = CARRY((\Mux4|S[23]~9_combout\ & (!\Mux5|S[23]~9_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~45\)) # (!\Mux4|S[23]~9_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~45\) # (!\Mux5|S[23]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[23]~9_combout\,
	datab => \Mux5|S[23]~9_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~45\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~46_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~47\);

-- Location: LCCOMB_X34_Y24_N16
\ULAUnit|UlaInstance|Somador|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~48_combout\ = ((\Mux5|S[24]~8_combout\ $ (\Mux4|S[24]~8_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~47\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~49\ = CARRY((\Mux5|S[24]~8_combout\ & ((\Mux4|S[24]~8_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~47\))) # (!\Mux5|S[24]~8_combout\ & (\Mux4|S[24]~8_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[24]~8_combout\,
	datab => \Mux4|S[24]~8_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~47\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~48_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~49\);

-- Location: LCCOMB_X34_Y24_N18
\ULAUnit|UlaInstance|Somador|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~50_combout\ = (\Mux4|S[25]~7_combout\ & ((\Mux5|S[25]~7_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~49\ & VCC)) # (!\Mux5|S[25]~7_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~49\)))) # (!\Mux4|S[25]~7_combout\ & 
-- ((\Mux5|S[25]~7_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~49\)) # (!\Mux5|S[25]~7_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~49\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~51\ = CARRY((\Mux4|S[25]~7_combout\ & (!\Mux5|S[25]~7_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~49\)) # (!\Mux4|S[25]~7_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~49\) # (!\Mux5|S[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[25]~7_combout\,
	datab => \Mux5|S[25]~7_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~49\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~50_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~51\);

-- Location: LCCOMB_X34_Y24_N20
\ULAUnit|UlaInstance|Somador|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~52_combout\ = ((\Mux4|S[26]~6_combout\ $ (\Mux5|S[26]~6_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~51\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~53\ = CARRY((\Mux4|S[26]~6_combout\ & ((\Mux5|S[26]~6_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~51\))) # (!\Mux4|S[26]~6_combout\ & (\Mux5|S[26]~6_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[26]~6_combout\,
	datab => \Mux5|S[26]~6_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~51\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~52_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~53\);

-- Location: LCCOMB_X34_Y24_N22
\ULAUnit|UlaInstance|Somador|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~54_combout\ = (\Mux5|S[27]~5_combout\ & ((\Mux4|S[27]~5_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~53\ & VCC)) # (!\Mux4|S[27]~5_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~53\)))) # (!\Mux5|S[27]~5_combout\ & 
-- ((\Mux4|S[27]~5_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~53\)) # (!\Mux4|S[27]~5_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~53\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~55\ = CARRY((\Mux5|S[27]~5_combout\ & (!\Mux4|S[27]~5_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~53\)) # (!\Mux5|S[27]~5_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~53\) # (!\Mux4|S[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[27]~5_combout\,
	datab => \Mux4|S[27]~5_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~53\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~54_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~55\);

-- Location: LCCOMB_X34_Y24_N24
\ULAUnit|UlaInstance|Somador|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~56_combout\ = ((\Mux5|S[28]~4_combout\ $ (\Mux4|S[28]~4_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~55\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~57\ = CARRY((\Mux5|S[28]~4_combout\ & ((\Mux4|S[28]~4_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~55\))) # (!\Mux5|S[28]~4_combout\ & (\Mux4|S[28]~4_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[28]~4_combout\,
	datab => \Mux4|S[28]~4_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~55\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~56_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~57\);

-- Location: LCCOMB_X34_Y24_N26
\ULAUnit|UlaInstance|Somador|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~58_combout\ = (\Mux5|S[29]~3_combout\ & ((\Mux4|S[29]~3_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~57\ & VCC)) # (!\Mux4|S[29]~3_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~57\)))) # (!\Mux5|S[29]~3_combout\ & 
-- ((\Mux4|S[29]~3_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~57\)) # (!\Mux4|S[29]~3_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~57\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~59\ = CARRY((\Mux5|S[29]~3_combout\ & (!\Mux4|S[29]~3_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~57\)) # (!\Mux5|S[29]~3_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~57\) # (!\Mux4|S[29]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[29]~3_combout\,
	datab => \Mux4|S[29]~3_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~57\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~58_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~59\);

-- Location: LCCOMB_X34_Y24_N28
\ULAUnit|UlaInstance|Somador|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~60_combout\ = ((\Mux5|S[30]~2_combout\ $ (\Mux4|S[30]~2_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~59\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~61\ = CARRY((\Mux5|S[30]~2_combout\ & ((\Mux4|S[30]~2_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~59\))) # (!\Mux5|S[30]~2_combout\ & (\Mux4|S[30]~2_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[30]~2_combout\,
	datab => \Mux4|S[30]~2_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~59\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~60_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~61\);

-- Location: LCCOMB_X34_Y24_N30
\ULAUnit|UlaInstance|Somador|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~62_combout\ = \Mux5|S[31]~1_combout\ $ (\ULAUnit|UlaInstance|Somador|Add0~61\ $ (\Mux4|S[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[31]~1_combout\,
	datad => \Mux4|S[31]~1_combout\,
	cin => \ULAUnit|UlaInstance|Somador|Add0~61\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~62_combout\);

-- Location: LCCOMB_X38_Y24_N28
\ULAUnit|UlaInstance|Multiplexer|S[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~62_combout\)) # (!\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~62_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~62_combout\,
	combout => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\);

-- Location: LCCOMB_X38_Y24_N2
\ULAUnit|UlaInstance|Result[0]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~61_combout\ = (\ULAUnit|UlaInstance|Result[0]~60_combout\) # ((\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\) # (\ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\,
	datab => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datac => \ULAUnit|UlaInstance|Result[0]~60_combout\,
	datad => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~61_combout\);

-- Location: LCCOMB_X35_Y27_N8
\ULAUnit|UlaInstance|Result[17]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~62_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Somador|S[0]~1_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaControlInstance|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~62_combout\);

-- Location: LCCOMB_X34_Y26_N12
\ULAUnit|UlaInstance|Result[1]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~63_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~2_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~2_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~63_combout\);

-- Location: LCCOMB_X34_Y26_N14
\ULAUnit|UlaInstance|Result[1]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~64_combout\ = (\Mux5|S[1]~46_combout\ & ((\ULAUnit|UlaInstance|Result[1]~63_combout\) # ((\Mux4|S[1]~31_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[1]~46_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~63_combout\ & ((\Mux4|S[1]~31_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[1]~46_combout\,
	datab => \Mux4|S[1]~31_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~63_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~64_combout\);

-- Location: LCCOMB_X35_Y27_N14
\ULAUnit|UlaInstance|Result[1]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~65_combout\ = (\ULAUnit|UlaInstance|Result[1]~56_combout\ & (((\ULAUnit|UlaInstance|Result[1]~57_combout\) # (!\ULAUnit|UlaControlInstance|Mux0~0_combout\)) # (!\ULAUnit|UlaControlInstance|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux2~0_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~56_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~57_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux0~0_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~65_combout\);

-- Location: LCCOMB_X34_Y26_N24
\ULAUnit|UlaInstance|Result[1]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~128_combout\ = (\ULAUnit|UlaInstance|Result[1]~64_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~64_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~128_combout\);

-- Location: LCCOMB_X34_Y23_N2
\ULAUnit|UlaInstance|Result[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~67_combout\ = (\ULAUnit|UlaInstance|Result[17]~62_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~4_combout\) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~4_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~4_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~4_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~67_combout\);

-- Location: LCCOMB_X34_Y23_N28
\ULAUnit|UlaInstance|Result[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~68_combout\ = (\Mux4|S[2]~30_combout\ & ((\ULAUnit|UlaInstance|Result[2]~67_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[2]~45_combout\)))) # (!\Mux4|S[2]~30_combout\ & 
-- (\ULAUnit|UlaInstance|Result[2]~67_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[2]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[2]~30_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[2]~45_combout\,
	datad => \ULAUnit|UlaInstance|Result[2]~67_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~68_combout\);

-- Location: LCCOMB_X34_Y23_N8
\ULAUnit|UlaInstance|Result[2]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~129_combout\ = (\ULAUnit|UlaInstance|Result[2]~68_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[2]~68_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~129_combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(3),
	combout => \i_dt1~combout\(3));

-- Location: LCFF_X37_Y25_N25
\RegA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(3));

-- Location: LCCOMB_X37_Y25_N24
\Mux4|S[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[3]~29_combout\ = (\RegA|q\(3) & ((\Control|currentState.S8~regout\) # ((\Control|currentState.S6~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S6~regout\,
	datac => \RegA|q\(3),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[3]~29_combout\);

-- Location: LCCOMB_X35_Y23_N14
\ULAUnit|UlaInstance|Result[3]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~69_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~6_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~6_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~6_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~6_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~69_combout\);

-- Location: LCCOMB_X35_Y23_N16
\ULAUnit|UlaInstance|Result[3]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~70_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[3]~69_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[3]~29_combout\ & 
-- ((\ULAUnit|UlaInstance|Result[3]~69_combout\) # (\Mux5|S[3]~43_combout\))) # (!\Mux4|S[3]~29_combout\ & (\ULAUnit|UlaInstance|Result[3]~69_combout\ & \Mux5|S[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[3]~29_combout\,
	datac => \ULAUnit|UlaInstance|Result[3]~69_combout\,
	datad => \Mux5|S[3]~43_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~70_combout\);

-- Location: LCCOMB_X35_Y23_N22
\ULAUnit|UlaInstance|Result[3]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~130_combout\ = (\ULAUnit|UlaInstance|Result[3]~70_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[3]~70_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~130_combout\);

-- Location: LCCOMB_X35_Y23_N30
\ULAUnit|UlaInstance|Result[4]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~71_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~8_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~8_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~8_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~8_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~71_combout\);

-- Location: LCCOMB_X35_Y23_N24
\ULAUnit|UlaInstance|Result[4]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~72_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[4]~71_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[4]~28_combout\ & ((\Mux5|S[4]~41_combout\) # 
-- (\ULAUnit|UlaInstance|Result[4]~71_combout\))) # (!\Mux4|S[4]~28_combout\ & (\Mux5|S[4]~41_combout\ & \ULAUnit|UlaInstance|Result[4]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[4]~28_combout\,
	datac => \Mux5|S[4]~41_combout\,
	datad => \ULAUnit|UlaInstance|Result[4]~71_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~72_combout\);

-- Location: LCCOMB_X35_Y23_N4
\ULAUnit|UlaInstance|Result[4]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~131_combout\ = (\ULAUnit|UlaInstance|Result[4]~72_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[4]~72_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~131_combout\);

-- Location: LCCOMB_X34_Y26_N0
\ULAUnit|UlaInstance|Result[5]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~73_combout\ = (\Mux4|S[5]~27_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux5|S[5]~39_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[5]~27_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux5|S[5]~39_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[5]~27_combout\,
	datab => \Mux5|S[5]~39_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~73_combout\);

-- Location: LCCOMB_X34_Y26_N30
\ULAUnit|UlaInstance|Result[5]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~74_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[5]~73_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~10_combout\))) # (!\ULAUnit|UlaInstance|Result[5]~73_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~10_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[5]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~10_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~10_combout\,
	datad => \ULAUnit|UlaInstance|Result[5]~73_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~74_combout\);

-- Location: LCCOMB_X34_Y26_N4
\ULAUnit|UlaInstance|Result[5]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~132_combout\ = (\ULAUnit|UlaInstance|Result[5]~74_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[5]~74_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~132_combout\);

-- Location: LCCOMB_X33_Y25_N18
\ULAUnit|UlaInstance|Result[6]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~75_combout\ = (\ULAUnit|UlaInstance|Result[17]~62_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~12_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~12_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~12_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~75_combout\);

-- Location: LCCOMB_X32_Y25_N24
\ULAUnit|UlaInstance|Result[6]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~76_combout\ = (\Mux5|S[6]~37_combout\ & ((\ULAUnit|UlaInstance|Result[6]~75_combout\) # ((\Mux4|S[6]~26_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[6]~37_combout\ & 
-- (\ULAUnit|UlaInstance|Result[6]~75_combout\ & ((\Mux4|S[6]~26_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[6]~37_combout\,
	datab => \Mux4|S[6]~26_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[6]~75_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~76_combout\);

-- Location: LCCOMB_X32_Y25_N12
\ULAUnit|UlaInstance|Result[6]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~133_combout\ = (\ULAUnit|UlaInstance|Result[6]~76_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[6]~76_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~133_combout\);

-- Location: LCCOMB_X31_Y25_N24
\ULAUnit|UlaInstance|Result[7]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~77_combout\ = (\Mux4|S[7]~25_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[7]~35_combout\)))) # (!\Mux4|S[7]~25_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~25_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[7]~35_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~77_combout\);

-- Location: LCCOMB_X31_Y25_N2
\ULAUnit|UlaInstance|Result[7]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~78_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[7]~77_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~14_combout\)) # (!\ULAUnit|UlaInstance|Result[7]~77_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~14_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[7]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~14_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[7]~77_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~14_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~78_combout\);

-- Location: LCCOMB_X31_Y25_N18
\ULAUnit|UlaInstance|Result[7]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~134_combout\ = (\ULAUnit|UlaInstance|Result[7]~78_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[7]~78_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~134_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(8),
	combout => \i_dt2~combout\(8));

-- Location: LCFF_X38_Y25_N11
\RegB|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(8));

-- Location: LCCOMB_X38_Y25_N30
\RegIns|addr_Output5[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(6) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output5\(6))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(6),
	datac => \i_in~combout\(6),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(6));

-- Location: LCCOMB_X38_Y25_N16
\Mux5|S[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[8]~32_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(6)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \RegIns|addr_Output5\(6),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[8]~32_combout\);

-- Location: LCCOMB_X38_Y25_N10
\Mux5|S[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[8]~33_combout\ = (\Mux5|S[8]~32_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(8),
	datad => \Mux5|S[8]~32_combout\,
	combout => \Mux5|S[8]~33_combout\);

-- Location: LCCOMB_X31_Y25_N28
\ULAUnit|UlaInstance|Result[8]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~79_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~16_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~16_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~16_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~16_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~79_combout\);

-- Location: LCCOMB_X31_Y25_N6
\ULAUnit|UlaInstance|Result[8]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~80_combout\ = (\Mux4|S[8]~24_combout\ & ((\ULAUnit|UlaInstance|Result[8]~79_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[8]~33_combout\)))) # (!\Mux4|S[8]~24_combout\ & 
-- (\ULAUnit|UlaInstance|Result[8]~79_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[8]~24_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[8]~33_combout\,
	datad => \ULAUnit|UlaInstance|Result[8]~79_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~80_combout\);

-- Location: LCCOMB_X31_Y25_N22
\ULAUnit|UlaInstance|Result[8]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~135_combout\ = (\ULAUnit|UlaInstance|Result[8]~80_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[8]~80_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~135_combout\);

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(9),
	combout => \i_dt2~combout\(9));

-- Location: LCFF_X36_Y25_N15
\RegB|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(9));

-- Location: LCCOMB_X36_Y25_N24
\RegIns|addr_Output5[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(9) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(9)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(9),
	datac => \Control|currentState.S0~clkctrl_outclk\,
	datad => \RegIns|addr_Output5\(9),
	combout => \RegIns|addr_Output5\(9));

-- Location: LCCOMB_X36_Y25_N0
\Mux5|S[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[9]~30_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(7))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(7),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegIns|addr_Output5\(9),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[9]~30_combout\);

-- Location: LCCOMB_X36_Y25_N14
\Mux5|S[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[9]~31_combout\ = (\Mux5|S[9]~30_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(9),
	datad => \Mux5|S[9]~30_combout\,
	combout => \Mux5|S[9]~31_combout\);

-- Location: LCCOMB_X35_Y28_N18
\ULAUnit|UlaInstance|Result[9]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~81_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[9]~31_combout\ & ((\Mux4|S[9]~23_combout\) # 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\))) # (!\Mux5|S[9]~31_combout\ & (\Mux4|S[9]~23_combout\ & \ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[9]~31_combout\,
	datac => \Mux4|S[9]~23_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~81_combout\);

-- Location: LCCOMB_X35_Y28_N12
\ULAUnit|UlaInstance|Result[9]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~82_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[9]~81_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~18_combout\)) # (!\ULAUnit|UlaInstance|Result[9]~81_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~18_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[9]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[9]~81_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~18_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~18_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~82_combout\);

-- Location: LCCOMB_X35_Y28_N28
\ULAUnit|UlaInstance|Result[9]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~136_combout\ = (\ULAUnit|UlaInstance|Result[9]~82_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[9]~82_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~136_combout\);

-- Location: LCCOMB_X33_Y25_N0
\ULAUnit|UlaInstance|Result[10]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~83_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~20_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~20_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~20_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~20_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~83_combout\);

-- Location: LCCOMB_X33_Y25_N6
\ULAUnit|UlaInstance|Result[10]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~84_combout\ = (\Mux4|S[10]~22_combout\ & ((\ULAUnit|UlaInstance|Result[10]~83_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[10]~29_combout\)))) # (!\Mux4|S[10]~22_combout\ & 
-- (\ULAUnit|UlaInstance|Result[10]~83_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[10]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[10]~22_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[10]~29_combout\,
	datad => \ULAUnit|UlaInstance|Result[10]~83_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~84_combout\);

-- Location: LCCOMB_X33_Y25_N20
\ULAUnit|UlaInstance|Result[10]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~137_combout\ = (\ULAUnit|UlaInstance|Result[10]~84_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[10]~84_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~137_combout\);

-- Location: LCCOMB_X36_Y25_N26
\RegIns|addr_Output5[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(11) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(11)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(11),
	datab => \RegIns|addr_Output5\(11),
	datac => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(11));

-- Location: LCCOMB_X36_Y25_N4
\Mux5|S[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[11]~26_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(9))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(9),
	datab => \RegIns|addr_Output5\(11),
	datac => \Control|ULAFonteA~0_combout\,
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[11]~26_combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(11),
	combout => \i_dt2~combout\(11));

-- Location: LCFF_X36_Y25_N3
\RegB|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(11));

-- Location: LCCOMB_X36_Y25_N2
\Mux5|S[11]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[11]~27_combout\ = (\Mux5|S[11]~26_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (\RegB|q\(11) & !\Control|ULAFonteA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Mux5|S[11]~26_combout\,
	datac => \RegB|q\(11),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[11]~27_combout\);

-- Location: LCCOMB_X35_Y28_N10
\ULAUnit|UlaInstance|Result[11]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~85_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[11]~27_combout\ & ((\Mux4|S[11]~21_combout\) # 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\))) # (!\Mux5|S[11]~27_combout\ & (\Mux4|S[11]~21_combout\ & \ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[11]~27_combout\,
	datac => \Mux4|S[11]~21_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~85_combout\);

-- Location: LCCOMB_X35_Y28_N20
\ULAUnit|UlaInstance|Result[11]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~86_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[11]~85_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~22_combout\))) # (!\ULAUnit|UlaInstance|Result[11]~85_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~22_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[11]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~22_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~22_combout\,
	datad => \ULAUnit|UlaInstance|Result[11]~85_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~86_combout\);

-- Location: LCCOMB_X35_Y28_N14
\ULAUnit|UlaInstance|Result[11]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~138_combout\ = (\ULAUnit|UlaInstance|Result[11]~86_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[11]~86_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~138_combout\);

-- Location: LCCOMB_X35_Y23_N18
\ULAUnit|UlaInstance|Result[12]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~87_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~24_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~24_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~24_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~24_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~87_combout\);

-- Location: LCCOMB_X35_Y23_N12
\ULAUnit|UlaInstance|Result[12]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~88_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[12]~87_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[12]~25_combout\ & ((\Mux4|S[12]~20_combout\) # 
-- (\ULAUnit|UlaInstance|Result[12]~87_combout\))) # (!\Mux5|S[12]~25_combout\ & (\Mux4|S[12]~20_combout\ & \ULAUnit|UlaInstance|Result[12]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[12]~25_combout\,
	datac => \Mux4|S[12]~20_combout\,
	datad => \ULAUnit|UlaInstance|Result[12]~87_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~88_combout\);

-- Location: LCCOMB_X35_Y23_N6
\ULAUnit|UlaInstance|Result[12]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~139_combout\ = (\ULAUnit|UlaInstance|Result[12]~88_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[12]~88_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~139_combout\);

-- Location: LCCOMB_X34_Y27_N12
\ULAUnit|UlaInstance|Result[13]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~90_combout\ = (\ULAUnit|UlaInstance|Result[13]~89_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~26_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[13]~89_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[13]~89_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~26_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~26_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~90_combout\);

-- Location: LCCOMB_X34_Y27_N16
\ULAUnit|UlaInstance|Result[13]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~140_combout\ = (\ULAUnit|UlaInstance|Result[13]~90_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[13]~90_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~140_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(14),
	combout => \i_dt2~combout\(14));

-- Location: LCFF_X33_Y25_N11
\RegB|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(14));

-- Location: LCCOMB_X32_Y25_N16
\RegIns|addr_Output5[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(14) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(14)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(14),
	datac => \RegIns|addr_Output5\(14),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(14));

-- Location: LCCOMB_X33_Y25_N28
\Mux5|S[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[14]~20_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(12))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(12),
	datab => \RegIns|addr_Output5\(14),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[14]~20_combout\);

-- Location: LCCOMB_X33_Y25_N10
\Mux5|S[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[14]~21_combout\ = (\Mux5|S[14]~20_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(14),
	datad => \Mux5|S[14]~20_combout\,
	combout => \Mux5|S[14]~21_combout\);

-- Location: LCCOMB_X34_Y23_N22
\ULAUnit|UlaInstance|Result[14]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~91_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~28_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~28_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~28_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~28_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~91_combout\);

-- Location: LCCOMB_X34_Y23_N12
\ULAUnit|UlaInstance|Result[14]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~92_combout\ = (\Mux4|S[14]~18_combout\ & ((\ULAUnit|UlaInstance|Result[14]~91_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[14]~21_combout\)))) # (!\Mux4|S[14]~18_combout\ & 
-- (\ULAUnit|UlaInstance|Result[14]~91_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[14]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[14]~18_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[14]~21_combout\,
	datad => \ULAUnit|UlaInstance|Result[14]~91_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~92_combout\);

-- Location: LCCOMB_X34_Y23_N24
\ULAUnit|UlaInstance|Result[14]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~141_combout\ = (\ULAUnit|UlaInstance|Result[14]~92_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[14]~92_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~141_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(15),
	combout => \i_dt2~combout\(15));

-- Location: LCFF_X33_Y25_N31
\RegB|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(15));

-- Location: LCCOMB_X33_Y25_N14
\RegIns|addr_Output5[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(13) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(13)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(13),
	datac => \RegIns|addr_Output5\(13),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(13));

-- Location: LCCOMB_X33_Y25_N12
\Mux5|S[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[15]~18_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(13))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(13),
	datac => \RegIns|addr_Output5\(15),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[15]~18_combout\);

-- Location: LCCOMB_X33_Y25_N30
\Mux5|S[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[15]~19_combout\ = (\Mux5|S[15]~18_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(15),
	datad => \Mux5|S[15]~18_combout\,
	combout => \Mux5|S[15]~19_combout\);

-- Location: LCCOMB_X35_Y28_N30
\ULAUnit|UlaInstance|Result[15]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~93_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[15]~19_combout\ & ((\Mux4|S[15]~17_combout\) # 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\))) # (!\Mux5|S[15]~19_combout\ & (\Mux4|S[15]~17_combout\ & \ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[15]~19_combout\,
	datac => \Mux4|S[15]~17_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~93_combout\);

-- Location: LCCOMB_X35_Y28_N0
\ULAUnit|UlaInstance|Result[15]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~94_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[15]~93_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~30_combout\))) # (!\ULAUnit|UlaInstance|Result[15]~93_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~30_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[15]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[15]~93_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~30_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~30_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~94_combout\);

-- Location: LCCOMB_X35_Y28_N16
\ULAUnit|UlaInstance|Result[15]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~142_combout\ = (\ULAUnit|UlaInstance|Result[15]~94_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[15]~94_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~142_combout\);

-- Location: LCCOMB_X35_Y23_N26
\ULAUnit|UlaInstance|Result[16]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~95_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~32_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~32_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~32_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~32_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~95_combout\);

-- Location: LCCOMB_X35_Y23_N28
\ULAUnit|UlaInstance|Result[16]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~96_combout\ = (\Mux4|S[16]~16_combout\ & ((\ULAUnit|UlaInstance|Result[16]~95_combout\) # ((\Mux5|S[16]~17_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[16]~16_combout\ & 
-- (\ULAUnit|UlaInstance|Result[16]~95_combout\ & ((\Mux5|S[16]~17_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[16]~16_combout\,
	datab => \Mux5|S[16]~17_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[16]~95_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~96_combout\);

-- Location: LCCOMB_X35_Y23_N20
\ULAUnit|UlaInstance|Result[16]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~143_combout\ = (\ULAUnit|UlaInstance|Result[16]~96_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[16]~96_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~143_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt1[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt1(17),
	combout => \i_dt1~combout\(17));

-- Location: LCFF_X38_Y24_N7
\RegA|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt1~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(17));

-- Location: LCCOMB_X38_Y24_N6
\Mux4|S[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[17]~15_combout\ = (\RegA|q\(17) & ((\Control|currentState.S6~regout\) # ((\Control|currentState.S8~regout\) # (\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S6~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegA|q\(17),
	datad => \Control|currentState.S2~regout\,
	combout => \Mux4|S[17]~15_combout\);

-- Location: LCCOMB_X32_Y24_N30
\ULAUnit|UlaInstance|Result[17]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~97_combout\ = (\Mux5|S[17]~15_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux4|S[17]~15_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[17]~15_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux4|S[17]~15_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[17]~15_combout\,
	datab => \Mux4|S[17]~15_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~97_combout\);

-- Location: LCCOMB_X33_Y24_N0
\ULAUnit|UlaInstance|Result[17]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~98_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~97_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~34_combout\)) # (!\ULAUnit|UlaInstance|Result[17]~97_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~34_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~34_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~97_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~34_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~98_combout\);

-- Location: LCCOMB_X33_Y24_N20
\ULAUnit|UlaInstance|Result[17]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~144_combout\ = (\ULAUnit|UlaInstance|Result[17]~98_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~98_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~144_combout\);

-- Location: LCCOMB_X34_Y27_N30
\ULAUnit|UlaInstance|Result[18]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~99_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~36_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~36_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~36_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~36_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~99_combout\);

-- Location: LCCOMB_X34_Y27_N0
\ULAUnit|UlaInstance|Result[18]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~100_combout\ = (\Mux5|S[18]~14_combout\ & ((\ULAUnit|UlaInstance|Result[18]~99_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux4|S[18]~14_combout\)))) # (!\Mux5|S[18]~14_combout\ & 
-- (\ULAUnit|UlaInstance|Result[18]~99_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux4|S[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[18]~14_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux4|S[18]~14_combout\,
	datad => \ULAUnit|UlaInstance|Result[18]~99_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~100_combout\);

-- Location: LCCOMB_X34_Y27_N8
\ULAUnit|UlaInstance|Result[18]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~145_combout\ = (\ULAUnit|UlaInstance|Result[18]~100_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[18]~100_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~145_combout\);

-- Location: LCCOMB_X32_Y24_N20
\ULAUnit|UlaInstance|Result[19]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~101_combout\ = (\Mux5|S[19]~13_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux4|S[19]~13_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[19]~13_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux4|S[19]~13_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[19]~13_combout\,
	datab => \Mux4|S[19]~13_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~101_combout\);

-- Location: LCCOMB_X33_Y24_N18
\ULAUnit|UlaInstance|Result[19]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~102_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[19]~101_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~38_combout\)) # (!\ULAUnit|UlaInstance|Result[19]~101_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~38_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[19]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~38_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[19]~101_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~38_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~102_combout\);

-- Location: LCCOMB_X33_Y24_N26
\ULAUnit|UlaInstance|Result[19]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~146_combout\ = (\ULAUnit|UlaInstance|Result[19]~102_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[19]~102_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~146_combout\);

-- Location: LCCOMB_X35_Y23_N2
\ULAUnit|UlaInstance|Result[20]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~103_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~40_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~40_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~40_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~40_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~103_combout\);

-- Location: LCCOMB_X35_Y23_N0
\ULAUnit|UlaInstance|Result[20]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~104_combout\ = (\Mux5|S[20]~12_combout\ & ((\ULAUnit|UlaInstance|Result[20]~103_combout\) # ((\Mux4|S[20]~12_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[20]~12_combout\ & 
-- (\ULAUnit|UlaInstance|Result[20]~103_combout\ & ((\Mux4|S[20]~12_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[20]~12_combout\,
	datab => \Mux4|S[20]~12_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[20]~103_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~104_combout\);

-- Location: LCCOMB_X35_Y23_N10
\ULAUnit|UlaInstance|Result[20]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~147_combout\ = (\ULAUnit|UlaInstance|Result[20]~104_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[20]~104_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~147_combout\);

-- Location: LCCOMB_X31_Y24_N26
\ULAUnit|UlaInstance|Result[21]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~106_combout\ = (\ULAUnit|UlaInstance|Result[21]~105_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~42_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[21]~105_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[21]~105_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~42_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~42_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~106_combout\);

-- Location: LCCOMB_X31_Y24_N28
\ULAUnit|UlaInstance|Result[21]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~148_combout\ = (\ULAUnit|UlaInstance|Result[21]~106_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[21]~106_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~148_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(22),
	combout => \i_dt2~combout\(22));

-- Location: LCFF_X33_Y24_N31
\RegB|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(22));

-- Location: LCCOMB_X33_Y24_N30
\Mux5|S[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[22]~10_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(22) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(22) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(22),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[22]~10_combout\);

-- Location: LCCOMB_X35_Y27_N28
\ULAUnit|UlaInstance|Result[22]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~107_combout\ = (\ULAUnit|UlaInstance|Result[17]~62_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~44_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~44_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~44_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~107_combout\);

-- Location: LCCOMB_X35_Y27_N2
\ULAUnit|UlaInstance|Result[22]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~108_combout\ = (\Mux4|S[22]~10_combout\ & ((\ULAUnit|UlaInstance|Result[22]~107_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[22]~10_combout\)))) # (!\Mux4|S[22]~10_combout\ & 
-- (\ULAUnit|UlaInstance|Result[22]~107_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[22]~10_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[22]~10_combout\,
	datad => \ULAUnit|UlaInstance|Result[22]~107_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~108_combout\);

-- Location: LCCOMB_X35_Y27_N10
\ULAUnit|UlaInstance|Result[22]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~149_combout\ = (\ULAUnit|UlaInstance|Result[22]~108_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[22]~108_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~149_combout\);

-- Location: LCCOMB_X31_Y24_N30
\ULAUnit|UlaInstance|Result[23]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~110_combout\ = (\ULAUnit|UlaInstance|Result[23]~109_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~46_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[23]~109_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[23]~109_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~46_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~46_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~110_combout\);

-- Location: LCCOMB_X31_Y24_N0
\ULAUnit|UlaInstance|Result[23]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~150_combout\ = (\ULAUnit|UlaInstance|Result[23]~110_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[23]~110_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~150_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(24),
	combout => \i_dt2~combout\(24));

-- Location: LCFF_X33_Y24_N15
\RegB|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(24));

-- Location: LCCOMB_X33_Y24_N14
\Mux5|S[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[24]~8_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(24) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(24) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(24),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[24]~8_combout\);

-- Location: LCCOMB_X36_Y24_N28
\ULAUnit|UlaInstance|Result[24]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~111_combout\ = (\Mux4|S[24]~8_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux5|S[24]~8_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[24]~8_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux5|S[24]~8_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[24]~8_combout\,
	datab => \Mux5|S[24]~8_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~111_combout\);

-- Location: LCCOMB_X36_Y24_N10
\ULAUnit|UlaInstance|Result[24]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~112_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[24]~111_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~48_combout\)) # (!\ULAUnit|UlaInstance|Result[24]~111_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~48_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[24]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[24]~111_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~48_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~48_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~112_combout\);

-- Location: LCCOMB_X36_Y24_N26
\ULAUnit|UlaInstance|Result[24]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~151_combout\ = (\ULAUnit|UlaInstance|Result[24]~112_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datab => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[24]~112_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~151_combout\);

-- Location: LCCOMB_X35_Y26_N2
\ULAUnit|UlaInstance|Result[25]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~113_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[25]~7_combout\ & ((\Mux5|S[25]~7_combout\) # 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\))) # (!\Mux4|S[25]~7_combout\ & (\Mux5|S[25]~7_combout\ & \ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[25]~7_combout\,
	datac => \Mux5|S[25]~7_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~113_combout\);

-- Location: LCCOMB_X35_Y26_N0
\ULAUnit|UlaInstance|Result[25]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~114_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[25]~113_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~50_combout\)) # (!\ULAUnit|UlaInstance|Result[25]~113_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~50_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[25]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~50_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~50_combout\,
	datad => \ULAUnit|UlaInstance|Result[25]~113_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~114_combout\);

-- Location: LCCOMB_X35_Y26_N10
\ULAUnit|UlaInstance|Result[25]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~152_combout\ = (\ULAUnit|UlaInstance|Result[25]~114_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[25]~114_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~152_combout\);

-- Location: LCCOMB_X36_Y24_N6
\ULAUnit|UlaInstance|Result[26]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~116_combout\ = (\ULAUnit|UlaInstance|Result[26]~115_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~52_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[26]~115_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[26]~115_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~52_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~52_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~116_combout\);

-- Location: LCCOMB_X36_Y24_N12
\ULAUnit|UlaInstance|Result[26]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~153_combout\ = (\ULAUnit|UlaInstance|Result[26]~116_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datab => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[26]~116_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~153_combout\);

-- Location: LCCOMB_X35_Y26_N14
\ULAUnit|UlaInstance|Result[27]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~117_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[27]~5_combout\ & ((\Mux5|S[27]~5_combout\) # 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\))) # (!\Mux4|S[27]~5_combout\ & (\Mux5|S[27]~5_combout\ & \ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[27]~5_combout\,
	datac => \Mux5|S[27]~5_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~117_combout\);

-- Location: LCCOMB_X35_Y26_N28
\ULAUnit|UlaInstance|Result[27]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~118_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[27]~117_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~54_combout\))) # (!\ULAUnit|UlaInstance|Result[27]~117_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~54_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[27]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[27]~117_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~54_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~54_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~118_combout\);

-- Location: LCCOMB_X35_Y26_N6
\ULAUnit|UlaInstance|Result[27]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~154_combout\ = (\ULAUnit|UlaInstance|Result[27]~118_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datad => \ULAUnit|UlaInstance|Result[27]~118_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~154_combout\);

-- Location: LCCOMB_X35_Y23_N8
\ULAUnit|UlaInstance|Result[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~66_combout\ = (\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~66_combout\);

-- Location: LCCOMB_X36_Y24_N14
\ULAUnit|UlaInstance|Result[28]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~120_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((!\Mux4|S[28]~4_combout\))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\Mux5|S[28]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[28]~4_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux4|S[28]~4_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~120_combout\);

-- Location: LCCOMB_X36_Y24_N0
\ULAUnit|UlaInstance|Result[28]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~119_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~56_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~56_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[17]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~56_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~56_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~119_combout\);

-- Location: LCCOMB_X36_Y24_N20
\ULAUnit|UlaInstance|Result[28]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~121_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[28]~4_combout\ & ((\ULAUnit|UlaInstance|Result[28]~120_combout\) # (\ULAUnit|UlaInstance|Result[28]~119_combout\))) # (!\Mux4|S[28]~4_combout\ & 
-- (\ULAUnit|UlaInstance|Result[28]~120_combout\ & \ULAUnit|UlaInstance|Result[28]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datab => \Mux4|S[28]~4_combout\,
	datac => \ULAUnit|UlaInstance|Result[28]~120_combout\,
	datad => \ULAUnit|UlaInstance|Result[28]~119_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~121_combout\);

-- Location: LCCOMB_X34_Y26_N28
\ULAUnit|UlaInstance|Result[29]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~122_combout\ = (\Mux5|S[29]~3_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\) # ((\Mux4|S[29]~3_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[29]~3_combout\ & 
-- (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\Mux4|S[29]~3_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[29]~3_combout\,
	datab => \Mux4|S[29]~3_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~122_combout\);

-- Location: LCCOMB_X34_Y26_N18
\ULAUnit|UlaInstance|Result[29]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~123_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[29]~122_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~58_combout\))) # (!\ULAUnit|UlaInstance|Result[29]~122_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~58_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[29]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[29]~122_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~58_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~58_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~123_combout\);

-- Location: LCCOMB_X34_Y26_N20
\ULAUnit|UlaInstance|Result[29]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~155_combout\ = (\ULAUnit|UlaInstance|Result[29]~123_combout\ & ((\ULAUnit|UlaInstance|Result[1]~65_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~65_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[29]~123_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~155_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(30),
	combout => \i_dt2~combout\(30));

-- Location: LCFF_X36_Y24_N17
\RegB|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(30));

-- Location: LCCOMB_X36_Y24_N16
\Mux5|S[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[30]~2_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15))))) # (!\Control|ULAFonteB~1_combout\ & ((\RegB|q\(30)) # ((\Control|ULAFonteB[1]~0_combout\ & \RegIns|addr_Output5\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB~1_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(30),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[30]~2_combout\);

-- Location: LCCOMB_X37_Y24_N14
\ULAUnit|UlaInstance|Result[30]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~125_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((!\Mux4|S[30]~2_combout\))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\Mux5|S[30]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5|S[30]~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux4|S[30]~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~125_combout\);

-- Location: LCCOMB_X36_Y24_N18
\ULAUnit|UlaInstance|Result[30]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~124_combout\ = (\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~60_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (((\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \ULAUnit|UlaInstance|Somador|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~60_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~60_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~124_combout\);

-- Location: LCCOMB_X36_Y24_N4
\ULAUnit|UlaInstance|Result[30]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~126_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[30]~2_combout\ & ((\ULAUnit|UlaInstance|Result[30]~125_combout\) # (\ULAUnit|UlaInstance|Result[30]~124_combout\))) # (!\Mux4|S[30]~2_combout\ & 
-- (\ULAUnit|UlaInstance|Result[30]~125_combout\ & \ULAUnit|UlaInstance|Result[30]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datab => \Mux4|S[30]~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[30]~125_combout\,
	datad => \ULAUnit|UlaInstance|Result[30]~124_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~126_combout\);

-- Location: LCCOMB_X38_Y24_N16
\ULAUnit|UlaInstance|Result[31]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[31]~127_combout\ = (!\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\) # (\ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datac => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\,
	datad => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[31]~127_combout\);

-- Location: LCFF_X36_Y28_N9
\RegDados|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(0));

-- Location: LCFF_X38_Y24_N3
\RegULASaida|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(0));

-- Location: LCCOMB_X36_Y28_N8
\Mux3|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[0]~0_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(0))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(0),
	datad => \RegULASaida|q\(0),
	combout => \Mux3|S[0]~0_combout\);

-- Location: LCFF_X35_Y26_N19
\RegDados|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(1));

-- Location: LCFF_X34_Y26_N25
\RegULASaida|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[1]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(1));

-- Location: LCCOMB_X35_Y26_N18
\Mux3|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[1]~1_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(1))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(1),
	datad => \RegULASaida|q\(1),
	combout => \Mux3|S[1]~1_combout\);

-- Location: LCFF_X34_Y23_N9
\RegULASaida|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[2]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(2));

-- Location: LCFF_X34_Y23_N27
\RegDados|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(2));

-- Location: LCCOMB_X34_Y23_N26
\Mux3|S[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[2]~2_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(2)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(2),
	datac => \RegDados|q\(2),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[2]~2_combout\);

-- Location: LCFF_X35_Y23_N23
\RegULASaida|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[3]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(3));

-- Location: LCFF_X36_Y23_N1
\RegDados|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(3));

-- Location: LCCOMB_X36_Y23_N0
\Mux3|S[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[3]~3_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(3)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(3),
	datac => \RegDados|q\(3),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[3]~3_combout\);

-- Location: LCFF_X35_Y23_N5
\RegULASaida|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[4]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(4));

-- Location: LCFF_X36_Y23_N23
\RegDados|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(4));

-- Location: LCCOMB_X36_Y23_N22
\Mux3|S[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[4]~4_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(4)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(4),
	datac => \RegDados|q\(4),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[4]~4_combout\);

-- Location: LCFF_X34_Y26_N5
\RegULASaida|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[5]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(5));

-- Location: LCFF_X34_Y26_N27
\RegDados|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(5));

-- Location: LCCOMB_X34_Y26_N26
\Mux3|S[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[5]~5_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(5)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(5),
	datac => \RegDados|q\(5),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[5]~5_combout\);

-- Location: LCFF_X32_Y25_N19
\RegDados|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(6));

-- Location: LCFF_X32_Y25_N13
\RegULASaida|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[6]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(6));

-- Location: LCCOMB_X32_Y25_N18
\Mux3|S[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[6]~6_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(6))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(6),
	datad => \RegULASaida|q\(6),
	combout => \Mux3|S[6]~6_combout\);

-- Location: LCFF_X31_Y25_N19
\RegULASaida|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(7));

-- Location: LCFF_X31_Y25_N9
\RegDados|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(7));

-- Location: LCCOMB_X31_Y25_N8
\Mux3|S[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[7]~7_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(7)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(7),
	datac => \RegDados|q\(7),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[7]~7_combout\);

-- Location: LCFF_X31_Y25_N23
\RegULASaida|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[8]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(8));

-- Location: LCFF_X31_Y25_N21
\RegDados|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(8));

-- Location: LCCOMB_X31_Y25_N20
\Mux3|S[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[8]~8_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(8)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(8),
	datac => \RegDados|q\(8),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[8]~8_combout\);

-- Location: LCFF_X35_Y28_N23
\RegDados|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(9));

-- Location: LCFF_X35_Y28_N29
\RegULASaida|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[9]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(9));

-- Location: LCCOMB_X35_Y28_N22
\Mux3|S[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[9]~9_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(9))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(9),
	datad => \RegULASaida|q\(9),
	combout => \Mux3|S[9]~9_combout\);

-- Location: LCFF_X33_Y25_N21
\RegULASaida|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[10]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(10));

-- Location: LCFF_X32_Y25_N7
\RegDados|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(10));

-- Location: LCCOMB_X32_Y25_N6
\Mux3|S[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[10]~10_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(10)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(10),
	datac => \RegDados|q\(10),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[10]~10_combout\);

-- Location: LCFF_X36_Y28_N3
\RegDados|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(11));

-- Location: LCFF_X35_Y28_N15
\RegULASaida|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[11]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(11));

-- Location: LCCOMB_X36_Y28_N2
\Mux3|S[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[11]~11_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(11))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(11),
	datad => \RegULASaida|q\(11),
	combout => \Mux3|S[11]~11_combout\);

-- Location: LCFF_X35_Y23_N7
\RegULASaida|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[12]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(12));

-- Location: LCFF_X36_Y23_N17
\RegDados|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(12));

-- Location: LCCOMB_X36_Y23_N16
\Mux3|S[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[12]~12_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(12)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(12),
	datac => \RegDados|q\(12),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[12]~12_combout\);

-- Location: LCFF_X34_Y27_N17
\RegULASaida|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[13]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(13));

-- Location: LCFF_X34_Y27_N3
\RegDados|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(13));

-- Location: LCCOMB_X34_Y27_N2
\Mux3|S[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[13]~13_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(13)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(13),
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(13),
	combout => \Mux3|S[13]~13_combout\);

-- Location: LCFF_X34_Y23_N25
\RegULASaida|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[14]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(14));

-- Location: LCFF_X34_Y23_N7
\RegDados|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(14));

-- Location: LCCOMB_X34_Y23_N6
\Mux3|S[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[14]~14_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(14)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(14),
	datac => \RegDados|q\(14),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[14]~14_combout\);

-- Location: LCFF_X36_Y28_N29
\RegDados|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(15));

-- Location: LCFF_X35_Y28_N17
\RegULASaida|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[15]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(15));

-- Location: LCCOMB_X36_Y28_N28
\Mux3|S[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[15]~15_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(15))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(15),
	datad => \RegULASaida|q\(15),
	combout => \Mux3|S[15]~15_combout\);

-- Location: LCFF_X36_Y28_N23
\RegDados|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(16));

-- Location: LCFF_X35_Y23_N21
\RegULASaida|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[16]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(16));

-- Location: LCCOMB_X36_Y28_N22
\Mux3|S[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[16]~16_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(16))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(16),
	datad => \RegULASaida|q\(16),
	combout => \Mux3|S[16]~16_combout\);

-- Location: LCFF_X33_Y24_N21
\RegULASaida|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[17]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(17));

-- Location: LCFF_X32_Y24_N23
\RegDados|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(17));

-- Location: LCCOMB_X32_Y24_N22
\Mux3|S[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[17]~17_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(17)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(17),
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(17),
	combout => \Mux3|S[17]~17_combout\);

-- Location: LCFF_X34_Y27_N9
\RegULASaida|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[18]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(18));

-- Location: LCFF_X34_Y27_N23
\RegDados|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(18));

-- Location: LCCOMB_X34_Y27_N22
\Mux3|S[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[18]~18_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(18)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(18),
	datac => \RegDados|q\(18),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[18]~18_combout\);

-- Location: LCFF_X33_Y24_N27
\RegULASaida|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[19]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(19));

-- Location: LCFF_X31_Y24_N9
\RegDados|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(19));

-- Location: LCCOMB_X31_Y24_N8
\Mux3|S[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[19]~19_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(19)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(19),
	datac => \RegDados|q\(19),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[19]~19_combout\);

-- Location: LCFF_X35_Y23_N11
\RegULASaida|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[20]~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(20));

-- Location: LCFF_X36_Y23_N15
\RegDados|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(20));

-- Location: LCCOMB_X36_Y23_N14
\Mux3|S[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[20]~20_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(20)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(20),
	datac => \RegDados|q\(20),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[20]~20_combout\);

-- Location: LCFF_X31_Y24_N29
\RegULASaida|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[21]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(21));

-- Location: LCFF_X31_Y24_N7
\RegDados|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(21));

-- Location: LCCOMB_X31_Y24_N6
\Mux3|S[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[21]~21_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(21)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(21),
	datac => \RegDados|q\(21),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[21]~21_combout\);

-- Location: LCFF_X35_Y27_N21
\RegDados|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(22));

-- Location: LCFF_X35_Y27_N11
\RegULASaida|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[22]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(22));

-- Location: LCCOMB_X35_Y27_N20
\Mux3|S[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[22]~22_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(22))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(22),
	datad => \RegULASaida|q\(22),
	combout => \Mux3|S[22]~22_combout\);

-- Location: LCFF_X31_Y24_N1
\RegULASaida|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[23]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(23));

-- Location: LCFF_X31_Y24_N19
\RegDados|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(23));

-- Location: LCCOMB_X31_Y24_N18
\Mux3|S[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[23]~23_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(23)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(23),
	datac => \RegDados|q\(23),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[23]~23_combout\);

-- Location: LCFF_X36_Y24_N27
\RegULASaida|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[24]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(24));

-- Location: LCFF_X37_Y24_N17
\RegDados|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(24));

-- Location: LCCOMB_X37_Y24_N16
\Mux3|S[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[24]~24_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(24)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datab => \RegULASaida|q\(24),
	datac => \RegDados|q\(24),
	combout => \Mux3|S[24]~24_combout\);

-- Location: LCFF_X35_Y26_N21
\RegDados|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(25));

-- Location: LCFF_X35_Y26_N11
\RegULASaida|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[25]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(25));

-- Location: LCCOMB_X35_Y26_N20
\Mux3|S[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[25]~25_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(25))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(25),
	datad => \RegULASaida|q\(25),
	combout => \Mux3|S[25]~25_combout\);

-- Location: LCFF_X37_Y24_N27
\RegDados|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(26));

-- Location: LCFF_X36_Y24_N13
\RegULASaida|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[26]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(26));

-- Location: LCCOMB_X37_Y24_N26
\Mux3|S[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[26]~26_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(26))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(26),
	datad => \RegULASaida|q\(26),
	combout => \Mux3|S[26]~26_combout\);

-- Location: LCFF_X35_Y26_N13
\RegDados|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(27));

-- Location: LCFF_X35_Y26_N7
\RegULASaida|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[27]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(27));

-- Location: LCCOMB_X35_Y26_N12
\Mux3|S[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[27]~27_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(27))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(27),
	datad => \RegULASaida|q\(27),
	combout => \Mux3|S[27]~27_combout\);

-- Location: LCFF_X36_Y24_N21
\RegULASaida|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[28]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(28));

-- Location: LCFF_X37_Y24_N5
\RegDados|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(28));

-- Location: LCCOMB_X37_Y24_N4
\Mux3|S[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[28]~28_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(28)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(28),
	datac => \RegDados|q\(28),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[28]~28_combout\);

-- Location: LCFF_X34_Y26_N21
\RegULASaida|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[29]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(29));

-- Location: LCFF_X34_Y26_N23
\RegDados|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(29));

-- Location: LCCOMB_X34_Y26_N22
\Mux3|S[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[29]~29_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(29)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(29),
	datac => \RegDados|q\(29),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[29]~29_combout\);

-- Location: LCFF_X36_Y24_N5
\RegULASaida|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[30]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(30));

-- Location: LCFF_X37_Y24_N31
\RegDados|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(30));

-- Location: LCCOMB_X37_Y24_N30
\Mux3|S[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[30]~30_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(30)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datab => \RegULASaida|q\(30),
	datac => \RegDados|q\(30),
	combout => \Mux3|S[30]~30_combout\);

-- Location: LCFF_X38_Y24_N17
\RegULASaida|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[31]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(31));

-- Location: LCFF_X37_Y24_N9
\RegDados|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(31));

-- Location: LCCOMB_X37_Y24_N8
\Mux3|S[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[31]~31_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(31)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(31),
	datac => \RegDados|q\(31),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[31]~31_combout\);

-- Location: LCCOMB_X35_Y26_N24
\RegIns|addr_Output3[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(0) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(0)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(16),
	datac => \RegIns|addr_Output3\(0),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(0));

-- Location: LCCOMB_X34_Y27_N26
\Mux2|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[0]~0_combout\ = (\Control|currentState.S7~regout\ & (\RegIns|addr_Output5\(11))) # (!\Control|currentState.S7~regout\ & ((\RegIns|addr_Output3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(11),
	datab => \RegIns|addr_Output3\(0),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[0]~0_combout\);

-- Location: LCCOMB_X32_Y24_N14
\RegIns|addr_Output3[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(1) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(1)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(17),
	datac => \RegIns|addr_Output3\(1),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(1));

-- Location: LCCOMB_X33_Y25_N24
\RegIns|addr_Output5[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(12) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output5\(12)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(12),
	datac => \RegIns|addr_Output5\(12),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(12));

-- Location: LCCOMB_X32_Y24_N8
\Mux2|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[1]~1_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(12)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output3\(1),
	datac => \RegIns|addr_Output5\(12),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[1]~1_combout\);

-- Location: LCCOMB_X36_Y26_N14
\RegIns|addr_Output3[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(2) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(2)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(18),
	datac => \RegIns|addr_Output3\(2),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(2));

-- Location: LCCOMB_X37_Y24_N18
\Mux2|S[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[2]~2_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(13)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S7~regout\,
	datac => \RegIns|addr_Output3\(2),
	datad => \RegIns|addr_Output5\(13),
	combout => \Mux2|S[2]~2_combout\);

-- Location: LCCOMB_X31_Y24_N14
\RegIns|addr_Output3[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(3) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(3)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(19),
	datac => \RegIns|addr_Output3\(3),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(3));

-- Location: LCCOMB_X32_Y24_N2
\Mux2|S[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[3]~3_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(14)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output3\(3),
	datac => \RegIns|addr_Output5\(14),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[3]~3_combout\);

-- Location: LCCOMB_X33_Y26_N16
\RegIns|addr_Output3[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(4) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(4)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(20),
	datac => \RegIns|addr_Output3\(4),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(4));

-- Location: LCCOMB_X34_Y27_N4
\Mux2|S[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[4]~4_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(15)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output3\(4),
	datac => \RegIns|addr_Output5\(15),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[4]~4_combout\);

-- Location: LCCOMB_X38_Y24_N18
\Mux6|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[0]~0_combout\ = (\Control|currentState.S8~regout\ & \RegULASaida|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(0),
	combout => \Mux6|S[0]~0_combout\);

-- Location: LCCOMB_X34_Y26_N2
\Mux6|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[1]~1_combout\ = (\RegULASaida|q\(1) & ((\Control|currentState.S8~regout\) # ((\ULAUnit|UlaInstance|Result[1]~64_combout\ & !\Control|currentState.S0~regout\)))) # (!\RegULASaida|q\(1) & (\ULAUnit|UlaInstance|Result[1]~64_combout\ & 
-- ((!\Control|currentState.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(1),
	datab => \ULAUnit|UlaInstance|Result[1]~64_combout\,
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[1]~1_combout\);

-- Location: LCCOMB_X34_Y23_N14
\Mux6|S[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[2]~2_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(2))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegULASaida|q\(2),
	datac => \RegIns|addr_Output5\(0),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[2]~2_combout\);

-- Location: LCCOMB_X34_Y23_N20
\Mux6|S[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[2]~3_combout\ = (\Mux6|S[2]~2_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[2]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Mux6|S[2]~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[2]~68_combout\,
	combout => \Mux6|S[2]~3_combout\);

-- Location: LCCOMB_X36_Y23_N12
\Mux6|S[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[3]~4_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(3))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output7\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegULASaida|q\(3),
	datac => \RegIns|addr_Output7\(1),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[3]~4_combout\);

-- Location: LCCOMB_X36_Y23_N26
\Mux6|S[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[3]~5_combout\ = (\Mux6|S[3]~4_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[3]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[3]~4_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[3]~70_combout\,
	combout => \Mux6|S[3]~5_combout\);

-- Location: LCCOMB_X36_Y23_N28
\Mux6|S[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[4]~6_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(4))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output7\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(4),
	datad => \RegIns|addr_Output7\(2),
	combout => \Mux6|S[4]~6_combout\);

-- Location: LCCOMB_X36_Y23_N18
\Mux6|S[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[4]~7_combout\ = (\Mux6|S[4]~6_combout\) # ((\ULAUnit|UlaInstance|Result[4]~72_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[4]~72_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[4]~6_combout\,
	combout => \Mux6|S[4]~7_combout\);

-- Location: LCCOMB_X34_Y26_N16
\Mux6|S[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[5]~8_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(5)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(3),
	datab => \RegULASaida|q\(5),
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[5]~8_combout\);

-- Location: LCCOMB_X34_Y26_N6
\Mux6|S[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[5]~9_combout\ = (\Mux6|S[5]~8_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[5]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[5]~8_combout\,
	datab => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[5]~74_combout\,
	combout => \Mux6|S[5]~9_combout\);

-- Location: LCCOMB_X32_Y25_N20
\Mux6|S[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[6]~10_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(6)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output7\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output7\(4),
	datad => \RegULASaida|q\(6),
	combout => \Mux6|S[6]~10_combout\);

-- Location: LCCOMB_X32_Y25_N10
\Mux6|S[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[6]~11_combout\ = (\Mux6|S[6]~10_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[6]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[6]~10_combout\,
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[6]~76_combout\,
	combout => \Mux6|S[6]~11_combout\);

-- Location: LCCOMB_X31_Y25_N0
\Mux6|S[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[7]~12_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(7)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output7\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \RegIns|addr_Output7\(5),
	datad => \RegULASaida|q\(7),
	combout => \Mux6|S[7]~12_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Mux6|S[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[7]~13_combout\ = (\Mux6|S[7]~12_combout\) # ((\ULAUnit|UlaInstance|Result[7]~78_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[7]~78_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[7]~12_combout\,
	combout => \Mux6|S[7]~13_combout\);

-- Location: LCCOMB_X31_Y25_N12
\Mux6|S[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[8]~14_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(8)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(6),
	datab => \RegULASaida|q\(8),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[8]~14_combout\);

-- Location: LCCOMB_X31_Y25_N26
\Mux6|S[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[8]~15_combout\ = (\Mux6|S[8]~14_combout\) # ((\ULAUnit|UlaInstance|Result[8]~80_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[8]~80_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[8]~14_combout\,
	combout => \Mux6|S[8]~15_combout\);

-- Location: LCCOMB_X36_Y25_N10
\RegIns|addr_Output5[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(7) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output5\(7))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(7),
	datab => \i_in~combout\(7),
	datac => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(7));

-- Location: LCCOMB_X35_Y28_N26
\Mux6|S[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[9]~16_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(9)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \RegIns|addr_Output5\(7),
	datad => \RegULASaida|q\(9),
	combout => \Mux6|S[9]~16_combout\);

-- Location: LCCOMB_X35_Y28_N24
\Mux6|S[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[9]~17_combout\ = (\Mux6|S[9]~16_combout\) # ((\ULAUnit|UlaInstance|Result[9]~82_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[9]~82_combout\,
	datab => \Mux6|S[9]~16_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[9]~17_combout\);

-- Location: LCCOMB_X38_Y25_N8
\RegIns|addr_Output5[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(8) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output5\(8))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \i_in~combout\(8),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output5\(8));

-- Location: LCCOMB_X32_Y25_N4
\Mux6|S[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[10]~18_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(10))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(10),
	datab => \Control|currentState.S8~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output5\(8),
	combout => \Mux6|S[10]~18_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Mux6|S[10]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[10]~19_combout\ = (\Mux6|S[10]~18_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[10]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \ULAUnit|UlaInstance|Result[10]~84_combout\,
	datac => \Mux6|S[10]~18_combout\,
	combout => \Mux6|S[10]~19_combout\);

-- Location: LCCOMB_X36_Y28_N20
\Mux6|S[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[11]~20_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(11))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(11),
	datab => \RegIns|addr_Output5\(9),
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[11]~20_combout\);

-- Location: LCCOMB_X36_Y28_N10
\Mux6|S[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[11]~21_combout\ = (\Mux6|S[11]~20_combout\) # ((\ULAUnit|UlaInstance|Result[11]~86_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[11]~86_combout\,
	datac => \Mux6|S[11]~20_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[11]~21_combout\);

-- Location: LCCOMB_X36_Y23_N4
\Mux6|S[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[12]~22_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(12))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(12),
	datab => \RegIns|addr_Output5\(10),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[12]~22_combout\);

-- Location: LCCOMB_X36_Y23_N6
\Mux6|S[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[12]~23_combout\ = (\Mux6|S[12]~22_combout\) # ((\ULAUnit|UlaInstance|Result[12]~88_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[12]~88_combout\,
	datab => \Mux6|S[12]~22_combout\,
	datac => \Control|currentState.S0~regout\,
	combout => \Mux6|S[12]~23_combout\);

-- Location: LCCOMB_X34_Y27_N18
\Mux6|S[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[13]~24_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(13))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \RegULASaida|q\(13),
	datad => \RegIns|addr_Output5\(11),
	combout => \Mux6|S[13]~24_combout\);

-- Location: LCCOMB_X34_Y27_N24
\Mux6|S[13]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[13]~25_combout\ = (\Mux6|S[13]~24_combout\) # ((\ULAUnit|UlaInstance|Result[13]~90_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[13]~90_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[13]~24_combout\,
	combout => \Mux6|S[13]~25_combout\);

-- Location: LCCOMB_X34_Y23_N18
\Mux6|S[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[14]~26_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(14))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(14),
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output5\(12),
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[14]~26_combout\);

-- Location: LCCOMB_X34_Y23_N4
\Mux6|S[14]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[14]~27_combout\ = (\Mux6|S[14]~26_combout\) # ((\ULAUnit|UlaInstance|Result[14]~92_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[14]~92_combout\,
	datab => \Mux6|S[14]~26_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[14]~27_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Mux6|S[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[15]~28_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(15))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \RegULASaida|q\(15),
	datad => \RegIns|addr_Output5\(13),
	combout => \Mux6|S[15]~28_combout\);

-- Location: LCCOMB_X35_Y28_N8
\Mux6|S[15]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[15]~29_combout\ = (\Mux6|S[15]~28_combout\) # ((\ULAUnit|UlaInstance|Result[15]~94_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[15]~28_combout\,
	datab => \ULAUnit|UlaInstance|Result[15]~94_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[15]~29_combout\);

-- Location: LCCOMB_X34_Y23_N10
\Mux6|S[16]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[16]~30_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(16)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output5\(14),
	datad => \RegULASaida|q\(16),
	combout => \Mux6|S[16]~30_combout\);

-- Location: LCCOMB_X34_Y23_N16
\Mux6|S[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[16]~31_combout\ = (\Mux6|S[16]~30_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[16]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \ULAUnit|UlaInstance|Result[16]~96_combout\,
	datad => \Mux6|S[16]~30_combout\,
	combout => \Mux6|S[16]~31_combout\);

-- Location: LCCOMB_X32_Y24_N16
\Mux6|S[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[17]~32_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(17))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(17),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux6|S[17]~32_combout\);

-- Location: LCCOMB_X32_Y24_N26
\Mux6|S[17]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[17]~33_combout\ = (\Mux6|S[17]~32_combout\) # ((\ULAUnit|UlaInstance|Result[17]~98_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[17]~32_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~98_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[17]~33_combout\);

-- Location: LCCOMB_X34_Y27_N6
\Mux6|S[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[18]~34_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(18))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S0~regout\,
	datac => \RegULASaida|q\(18),
	datad => \RegIns|addr_Output3\(0),
	combout => \Mux6|S[18]~34_combout\);

-- Location: LCCOMB_X34_Y27_N20
\Mux6|S[18]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[18]~35_combout\ = (\Mux6|S[18]~34_combout\) # ((\ULAUnit|UlaInstance|Result[18]~100_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[18]~34_combout\,
	datab => \ULAUnit|UlaInstance|Result[18]~100_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[18]~35_combout\);

-- Location: LCCOMB_X32_Y24_N12
\Mux6|S[19]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[19]~36_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(19)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output3\(1),
	datac => \RegULASaida|q\(19),
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[19]~36_combout\);

-- Location: LCCOMB_X32_Y24_N10
\Mux6|S[19]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[19]~37_combout\ = (\Mux6|S[19]~36_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[19]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[19]~36_combout\,
	datab => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[19]~102_combout\,
	combout => \Mux6|S[19]~37_combout\);

-- Location: LCCOMB_X36_Y23_N20
\Mux6|S[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[20]~38_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(20)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output3\(2),
	datab => \Control|currentState.S8~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(20),
	combout => \Mux6|S[20]~38_combout\);

-- Location: LCCOMB_X36_Y23_N10
\Mux6|S[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[20]~39_combout\ = (\Mux6|S[20]~38_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[20]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[20]~38_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[20]~104_combout\,
	combout => \Mux6|S[20]~39_combout\);

-- Location: LCCOMB_X31_Y24_N10
\Mux6|S[21]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[21]~40_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(21)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output3\(3),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(21),
	combout => \Mux6|S[21]~40_combout\);

-- Location: LCCOMB_X31_Y24_N20
\Mux6|S[21]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[21]~41_combout\ = (\Mux6|S[21]~40_combout\) # ((\ULAUnit|UlaInstance|Result[21]~106_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[21]~106_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[21]~40_combout\,
	combout => \Mux6|S[21]~41_combout\);

-- Location: LCCOMB_X35_Y27_N12
\Mux6|S[22]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[22]~42_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(22))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output3\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(22),
	datab => \Control|currentState.S8~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output3\(4),
	combout => \Mux6|S[22]~42_combout\);

-- Location: LCCOMB_X35_Y27_N26
\Mux6|S[22]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[22]~43_combout\ = (\Mux6|S[22]~42_combout\) # ((\ULAUnit|UlaInstance|Result[22]~108_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[22]~108_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[22]~42_combout\,
	combout => \Mux6|S[22]~43_combout\);

-- Location: LCCOMB_X31_Y24_N4
\RegIns|addr_Output6[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(21) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output6\(21)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(21),
	datac => \RegIns|addr_Output6\(21),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(21));

-- Location: LCCOMB_X31_Y24_N22
\Mux6|S[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[23]~44_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(23)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output6\(21),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(23),
	combout => \Mux6|S[23]~44_combout\);

-- Location: LCCOMB_X31_Y24_N16
\Mux6|S[23]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[23]~45_combout\ = (\Mux6|S[23]~44_combout\) # ((\ULAUnit|UlaInstance|Result[23]~110_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[23]~110_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Mux6|S[23]~44_combout\,
	combout => \Mux6|S[23]~45_combout\);

-- Location: LCCOMB_X37_Y24_N12
\Mux6|S[24]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[24]~46_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(24)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output6\(22),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(24),
	combout => \Mux6|S[24]~46_combout\);

-- Location: LCCOMB_X37_Y24_N2
\Mux6|S[24]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[24]~47_combout\ = (\Mux6|S[24]~46_combout\) # ((\ULAUnit|UlaInstance|Result[24]~112_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[24]~112_combout\,
	datab => \Control|currentState.S0~regout\,
	datad => \Mux6|S[24]~46_combout\,
	combout => \Mux6|S[24]~47_combout\);

-- Location: LCCOMB_X35_Y26_N4
\Mux6|S[25]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[25]~48_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(25)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output6\(23),
	datab => \Control|currentState.S8~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(25),
	combout => \Mux6|S[25]~48_combout\);

-- Location: LCCOMB_X35_Y26_N22
\Mux6|S[25]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[25]~49_combout\ = (\Mux6|S[25]~48_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[25]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Mux6|S[25]~48_combout\,
	datad => \ULAUnit|UlaInstance|Result[25]~114_combout\,
	combout => \Mux6|S[25]~49_combout\);

-- Location: LCCOMB_X37_Y24_N0
\Mux6|S[26]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[26]~50_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(26)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output6\(24),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(26),
	combout => \Mux6|S[26]~50_combout\);

-- Location: LCCOMB_X37_Y24_N22
\Mux6|S[26]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[26]~51_combout\ = (\Mux6|S[26]~50_combout\) # ((\ULAUnit|UlaInstance|Result[26]~116_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[26]~50_combout\,
	datac => \ULAUnit|UlaInstance|Result[26]~116_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[26]~51_combout\);

-- Location: LCCOMB_X35_Y26_N30
\RegIns|addr_Output6[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(25) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output6\(25))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output6\(25),
	datac => \i_in~combout\(25),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(25));

-- Location: LCCOMB_X35_Y26_N8
\Mux6|S[27]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[27]~52_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(27))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output6\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(27),
	datab => \RegIns|addr_Output6\(25),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[27]~52_combout\);

-- Location: LCCOMB_X36_Y26_N24
\Mux6|S[27]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[27]~53_combout\ = (\Mux6|S[27]~52_combout\) # ((\ULAUnit|UlaInstance|Result[27]~118_combout\ & !\Control|currentState.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[27]~52_combout\,
	datab => \ULAUnit|UlaInstance|Result[27]~118_combout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[27]~53_combout\);

-- Location: LCCOMB_X36_Y24_N22
\Mux6|S[28]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[28]~54_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[17]~62_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~56_combout\))) # (!\ULAUnit|UlaInstance|Result[17]~62_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~56_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~56_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~56_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~62_combout\,
	combout => \Mux6|S[28]~54_combout\);

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_dt2[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_i_dt2(28),
	combout => \i_dt2~combout\(28));

-- Location: LCFF_X33_Y24_N7
\RegB|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_dt2~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(28));

-- Location: LCCOMB_X33_Y24_N6
\Mux5|S[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[28]~4_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(28) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(28) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(28),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[28]~4_combout\);

-- Location: LCCOMB_X36_Y24_N8
\Mux6|S[28]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[28]~55_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\Mux6|S[28]~54_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux6|S[28]~54_combout\ & ((\Mux5|S[28]~4_combout\) # (\Mux4|S[28]~4_combout\))) # 
-- (!\Mux6|S[28]~54_combout\ & (\Mux5|S[28]~4_combout\ & \Mux4|S[28]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux6|S[28]~54_combout\,
	datac => \Mux5|S[28]~4_combout\,
	datad => \Mux4|S[28]~4_combout\,
	combout => \Mux6|S[28]~55_combout\);

-- Location: LCCOMB_X37_Y24_N28
\Mux6|S[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[28]~56_combout\ = (\Mux6|S[28]~55_combout\ & (((\RegULASaida|q\(28) & \Control|currentState.S8~regout\)) # (!\Control|currentState.S0~regout\))) # (!\Mux6|S[28]~55_combout\ & (\RegULASaida|q\(28) & (\Control|currentState.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[28]~55_combout\,
	datab => \RegULASaida|q\(28),
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[28]~56_combout\);

-- Location: LCCOMB_X34_Y26_N8
\Mux6|S[29]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[29]~57_combout\ = (\RegULASaida|q\(29) & ((\Control|currentState.S8~regout\) # ((\ULAUnit|UlaInstance|Result[29]~123_combout\ & !\Control|currentState.S0~regout\)))) # (!\RegULASaida|q\(29) & (\ULAUnit|UlaInstance|Result[29]~123_combout\ & 
-- ((!\Control|currentState.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(29),
	datab => \ULAUnit|UlaInstance|Result[29]~123_combout\,
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[29]~57_combout\);

-- Location: LCCOMB_X37_Y24_N10
\Mux6|S[30]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[30]~59_combout\ = (\Mux6|S[30]~58_combout\ & ((\Mux5|S[30]~2_combout\) # ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux4|S[30]~2_combout\)))) # (!\Mux6|S[30]~58_combout\ & (\Mux5|S[30]~2_combout\ & 
-- (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux4|S[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[30]~58_combout\,
	datab => \Mux5|S[30]~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux4|S[30]~2_combout\,
	combout => \Mux6|S[30]~59_combout\);

-- Location: LCCOMB_X37_Y24_N24
\Mux6|S[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[30]~60_combout\ = (\Mux6|S[30]~59_combout\ & (((\Control|currentState.S8~regout\ & \RegULASaida|q\(30))) # (!\Control|currentState.S0~regout\))) # (!\Mux6|S[30]~59_combout\ & (\Control|currentState.S8~regout\ & (\RegULASaida|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[30]~59_combout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(30),
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[30]~60_combout\);

-- Location: LCCOMB_X38_Y24_N24
\Mux6|S[31]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[31]~61_combout\ = (\RegULASaida|q\(31) & ((\Control|currentState.S8~regout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Somador|Add0~62_combout\)))) # (!\RegULASaida|q\(31) & (!\Control|currentState.S0~regout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(31),
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~62_combout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[31]~61_combout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_ULAFonteA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_ULAFonteA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_ULAFonteA);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_EscReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_EscReg);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_RegDst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|currentState.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_RegDst);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_PCEscCond~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|currentState.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_PCEscCond);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_PCEsc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|PCEsc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_PCEsc);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_IouD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|IouD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_IouD);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_LerMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|LerMem~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_LerMem);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_EscMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|currentState.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_EscMem);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_MemParaReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|currentState.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_MemParaReg);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_IREsc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_currentState.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_IREsc);

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_FontePC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|currentState.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_FontePC(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_FontePC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_FontePC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_FontePC(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_ULAOp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ULAOp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_ULAOp(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_ULAOp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_ULAOp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_ULAOp(1));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_ULAFonteB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ULAFonteA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_ULAFonteB(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_ULAFonteB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ULAFonteB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_ULAFonteB(1));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(1));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(2));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(3));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(5));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(6));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(7));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(8));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(9));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(10));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(11));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(12));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(13));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(14));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(15));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(16));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(17));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(18));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(19));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(20));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(21));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(22));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(23));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(24));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(25));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(26));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(27));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(28));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(29));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(30));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_instruction[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_in~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_instruction(31));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[1]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[2]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(2));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[3]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(3));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[4]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(4));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[5]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[6]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(6));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[7]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(7));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[8]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(8));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[9]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(9));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[10]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(10));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[11]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(11));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[12]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(12));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[13]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(13));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[14]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(14));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[15]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(15));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[16]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(16));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[17]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(17));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[18]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(18));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[19]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(19));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[20]~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(20));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[21]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(21));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[22]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(22));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[23]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(23));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[24]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(24));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[25]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(25));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[26]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(26));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[27]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(27));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[28]~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(28));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[29]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[30]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(30));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_dt_saida[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAUnit|UlaInstance|Result[31]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(31));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(0));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(3));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(4));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(5));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(7));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(8));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(10));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(11));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(12));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(13));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(14));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(15));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(16));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(17));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(18));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(19));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(20));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(21));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(22));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(23));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(24));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(25));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(26));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(27));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(28));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(29));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(30));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_data_3_EntradaMemDados[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3|S[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_data_3_EntradaMemDados(31));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_regRd_Mux[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_regRd_Mux(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_regRd_Mux[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2|S[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_regRd_Mux(1));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_regRd_Mux[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2|S[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_regRd_Mux(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_regRd_Mux[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2|S[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_regRd_Mux(3));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_regRd_Mux[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2|S[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_regRd_Mux(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(1));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(2));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(3));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(4));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(5));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(7));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(8));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(9));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(10));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(11));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(12));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[13]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(13));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[14]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(14));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[15]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(15));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(16));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[17]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(17));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(18));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[19]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(19));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[20]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(20));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[21]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(21));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[22]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(22));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[23]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(23));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[24]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(24));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[25]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(25));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[26]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(26));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[27]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(27));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[28]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(28));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[29]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(29));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[30]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(30));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_entradaPC[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6|S[31]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(31));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(0));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(1));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(2));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(3));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(4));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(5));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(6));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(7));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(8));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(9));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(10));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(11));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(12));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(13));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(14));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(15));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(16));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(17));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(18));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(19));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(20));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(21));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(22));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(23));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(24));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(25));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(26));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(27));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(28));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(29));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(30));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\control_saidaPC[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
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
	padio => ww_control_saidaPC(31));
END structure;


