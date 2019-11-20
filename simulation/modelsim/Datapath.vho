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

-- DATE "11/20/2019 03:01:15"

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
-- control_ULAFonteA	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_EscReg	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_RegDst	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_PCEscCond	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_PCEsc	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_IouD	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_LerMem	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_EscMem	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_MemParaReg	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_IREsc	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_FontePC[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_FontePC[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAOp[0]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAOp[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAFonteB[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_ULAFonteB[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[2]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[3]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[4]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[5]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[6]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[7]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[8]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[9]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[10]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[11]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[12]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[13]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[14]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[15]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[16]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[17]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[18]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[19]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[20]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[21]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[22]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[23]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[24]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[25]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[26]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[27]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[28]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[29]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[30]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_instruction[31]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[1]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[3]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[4]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[7]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[9]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[10]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[11]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[12]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[13]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[14]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[15]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[16]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[17]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[18]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[19]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[20]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[21]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[22]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[23]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[24]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[25]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[26]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[27]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[28]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[29]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[30]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_dt_saida[31]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[1]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[4]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[7]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[8]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[9]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[10]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[11]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[12]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[13]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[14]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[15]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[16]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[17]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[18]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[19]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[20]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[21]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[22]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[23]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[24]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[25]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[26]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[27]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[28]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[29]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[30]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_data_3_EntradaMemDados[31]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[0]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[1]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[2]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_regRd_Mux[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[0]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[1]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[2]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[4]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[5]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[7]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[8]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[9]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[10]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[11]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[12]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[13]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[14]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[15]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[16]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[17]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[18]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[19]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[20]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[21]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[22]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[23]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[24]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[25]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[26]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[27]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[28]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[29]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[30]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_entradaPC[31]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[0]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[1]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[3]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[4]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[8]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[9]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[10]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[11]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[13]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[14]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[15]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[16]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[17]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[18]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[19]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[20]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[21]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[22]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[23]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[24]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[25]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[26]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[27]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[28]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[29]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[30]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control_saidaPC[31]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_in[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[2]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[3]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[4]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[6]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[8]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[9]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[10]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[11]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[12]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[13]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[14]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[15]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[16]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[17]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[18]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[19]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[20]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[21]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[22]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[23]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[24]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[25]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[26]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[27]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[28]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[29]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[30]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_in[31]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[31]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[31]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[30]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[30]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[29]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[29]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[28]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[28]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[27]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[27]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[26]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[26]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[25]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[25]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[24]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[24]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[23]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[23]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[22]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[22]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[21]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[21]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[20]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[20]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[19]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[19]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[18]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[18]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[17]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[17]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[16]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[16]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[15]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[15]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[14]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[14]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[13]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[13]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[12]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[12]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[11]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[11]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[10]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[10]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[9]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[9]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[8]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[8]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[7]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[7]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[6]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[5]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[5]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[4]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[2]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[1]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt2[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_dt1[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Control|currentState.S0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \writeEnablePC~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~4_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~10_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~22_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~24_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~34_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~48_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~12_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~36_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~38_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~50_combout\ : std_logic;
SIGNAL \Mux4|S[30]~1_combout\ : std_logic;
SIGNAL \Mux5|S[16]~15_combout\ : std_logic;
SIGNAL \Mux5|S[13]~21_combout\ : std_logic;
SIGNAL \Mux4|S[12]~19_combout\ : std_logic;
SIGNAL \Mux5|S[11]~25_combout\ : std_logic;
SIGNAL \Mux5|S[9]~29_combout\ : std_logic;
SIGNAL \Mux4|S[7]~24_combout\ : std_logic;
SIGNAL \Mux4|S[1]~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~109_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~113_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~121_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~127_combout\ : std_logic;
SIGNAL \Mux6|S[3]~5_combout\ : std_logic;
SIGNAL \Mux6|S[10]~19_combout\ : std_logic;
SIGNAL \Mux6|S[13]~25_combout\ : std_logic;
SIGNAL \Mux6|S[18]~35_combout\ : std_logic;
SIGNAL \Mux6|S[20]~39_combout\ : std_logic;
SIGNAL \writeEnablePC~4_combout\ : std_logic;
SIGNAL \writeEnablePC~8_combout\ : std_logic;
SIGNAL \writeEnablePC~9_combout\ : std_logic;
SIGNAL \writeEnablePC~10_combout\ : std_logic;
SIGNAL \writeEnablePC~11_combout\ : std_logic;
SIGNAL \writeEnablePC~12_combout\ : std_logic;
SIGNAL \Control|Selector9~3_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Control|Equal1~0_combout\ : std_logic;
SIGNAL \Control|Selector5~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Control|currentState.S5~regout\ : std_logic;
SIGNAL \Control|Equal1~1_combout\ : std_logic;
SIGNAL \Control|nextState~10_combout\ : std_logic;
SIGNAL \Control|Selector1~1_combout\ : std_logic;
SIGNAL \Control|currentState.S1~regout\ : std_logic;
SIGNAL \Control|Selector9~15_combout\ : std_logic;
SIGNAL \Control|currentState.S9~feeder_combout\ : std_logic;
SIGNAL \Control|currentState.S9~regout\ : std_logic;
SIGNAL \Control|Equal0~0_combout\ : std_logic;
SIGNAL \Control|Equal3~0_combout\ : std_logic;
SIGNAL \Control|Selector8~2_combout\ : std_logic;
SIGNAL \Control|currentState.S8~regout\ : std_logic;
SIGNAL \Control|WideOr1~combout\ : std_logic;
SIGNAL \Control|currentState.S0~regout\ : std_logic;
SIGNAL \Control|currentState.S0~clkctrl_outclk\ : std_logic;
SIGNAL \Control|Selector1~0_combout\ : std_logic;
SIGNAL \Control|Selector2~2_combout\ : std_logic;
SIGNAL \Control|currentState.S2~regout\ : std_logic;
SIGNAL \Control|Selector6~0_combout\ : std_logic;
SIGNAL \Control|currentState.S6~regout\ : std_logic;
SIGNAL \Control|ULAFonteA~0_combout\ : std_logic;
SIGNAL \Control|currentState.S7~regout\ : std_logic;
SIGNAL \Control|Selector3~0_combout\ : std_logic;
SIGNAL \Control|currentState.S3~regout\ : std_logic;
SIGNAL \Control|currentState.S4~regout\ : std_logic;
SIGNAL \Control|WideOr1~0_combout\ : std_logic;
SIGNAL \Control|PCEsc~combout\ : std_logic;
SIGNAL \Control|IouD~combout\ : std_logic;
SIGNAL \Control|LerMem~combout\ : std_logic;
SIGNAL \Control|FontePC[1]~0_combout\ : std_logic;
SIGNAL \Control|ULAOp[0]~0_combout\ : std_logic;
SIGNAL \Control|ULAOp[1]~1_combout\ : std_logic;
SIGNAL \Control|ULAFonteB[1]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux2~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux5~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|S[0]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux0~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|S[0]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Equal0~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~61_combout\ : std_logic;
SIGNAL \ULAUnit|UlaControlInstance|Mux4~2_combout\ : std_logic;
SIGNAL \Mux5|S[10]~27_combout\ : std_logic;
SIGNAL \Mux5|S[10]~28_combout\ : std_logic;
SIGNAL \Mux4|S[9]~22_combout\ : std_logic;
SIGNAL \Mux5|S[8]~31_combout\ : std_logic;
SIGNAL \Mux5|S[8]~32_combout\ : std_logic;
SIGNAL \Mux5|S[7]~33_combout\ : std_logic;
SIGNAL \Mux5|S[7]~34_combout\ : std_logic;
SIGNAL \Mux5|S[6]~35_combout\ : std_logic;
SIGNAL \Mux5|S[6]~36_combout\ : std_logic;
SIGNAL \Mux5|S[5]~37_combout\ : std_logic;
SIGNAL \Mux5|S[5]~38_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~77_combout\ : std_logic;
SIGNAL \Mux6|S[4]~7_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~66_combout\ : std_logic;
SIGNAL \Mux5|S[4]~39_combout\ : std_logic;
SIGNAL \Mux5|S[4]~40_combout\ : std_logic;
SIGNAL \Mux5|S[3]~41_combout\ : std_logic;
SIGNAL \Mux5|S[3]~42_combout\ : std_logic;
SIGNAL \Mux6|S[2]~3_combout\ : std_logic;
SIGNAL \Mux5|S[2]~43_combout\ : std_logic;
SIGNAL \Mux5|S[2]~44_combout\ : std_logic;
SIGNAL \Control|ULAFonteB~1_combout\ : std_logic;
SIGNAL \Mux5|S[1]~45_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~1\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~3\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~4_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~71_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~72_combout\ : std_logic;
SIGNAL \Mux6|S[2]~4_combout\ : std_logic;
SIGNAL \Mux4|S[2]~29_combout\ : std_logic;
SIGNAL \Mux5|S[0]~46_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~1\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~3\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~5\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~6_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~5\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~6_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~73_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~74_combout\ : std_logic;
SIGNAL \Mux6|S[3]~6_combout\ : std_logic;
SIGNAL \Mux4|S[3]~28_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~7\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~75_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~76_combout\ : std_logic;
SIGNAL \Mux6|S[4]~8_combout\ : std_logic;
SIGNAL \Mux4|S[4]~27_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~7\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~9\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~10_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~78_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[5]~134_combout\ : std_logic;
SIGNAL \Mux6|S[5]~9_combout\ : std_logic;
SIGNAL \Mux6|S[5]~10_combout\ : std_logic;
SIGNAL \Mux4|S[5]~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~11\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~13\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~15\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~17\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~19\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~87_combout\ : std_logic;
SIGNAL \Mux6|S[10]~20_combout\ : std_logic;
SIGNAL \Mux4|S[10]~21_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~88_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~60_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~69_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[10]~139_combout\ : std_logic;
SIGNAL \Mux6|S[13]~26_combout\ : std_logic;
SIGNAL \Mux4|S[13]~18_combout\ : std_logic;
SIGNAL \Mux5|S[12]~23_combout\ : std_logic;
SIGNAL \Mux5|S[12]~24_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~21\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~22_combout\ : std_logic;
SIGNAL \Mux5|S[11]~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~89_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~90_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[11]~140_combout\ : std_logic;
SIGNAL \Mux6|S[11]~21_combout\ : std_logic;
SIGNAL \Mux6|S[11]~22_combout\ : std_logic;
SIGNAL \Mux4|S[11]~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~9\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~11\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~12_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~79_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~80_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[6]~135_combout\ : std_logic;
SIGNAL \Mux6|S[6]~11_combout\ : std_logic;
SIGNAL \Mux6|S[6]~12_combout\ : std_logic;
SIGNAL \Mux4|S[6]~25_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~13\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~15\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~17\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~19\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~21\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~23\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~25\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~26_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~93_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~94_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~70_combout\ : std_logic;
SIGNAL \Mux5|S[14]~19_combout\ : std_logic;
SIGNAL \Mux5|S[14]~20_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~27\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~28_combout\ : std_logic;
SIGNAL \Mux6|S[14]~27_combout\ : std_logic;
SIGNAL \Mux6|S[14]~28_combout\ : std_logic;
SIGNAL \Mux4|S[14]~17_combout\ : std_logic;
SIGNAL \Mux5|S[13]~22_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~23\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~25\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~27\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~28_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~95_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~96_combout\ : std_logic;
SIGNAL \writeEnablePC~0_combout\ : std_logic;
SIGNAL \writeEnablePC~1_combout\ : std_logic;
SIGNAL \Mux5|S[24]~7_combout\ : std_logic;
SIGNAL \Mux5|S[23]~8_combout\ : std_logic;
SIGNAL \Mux5|S[22]~9_combout\ : std_logic;
SIGNAL \Mux5|S[21]~10_combout\ : std_logic;
SIGNAL \Mux5|S[20]~11_combout\ : std_logic;
SIGNAL \Mux5|S[19]~12_combout\ : std_logic;
SIGNAL \Mux5|S[18]~13_combout\ : std_logic;
SIGNAL \Mux5|S[17]~14_combout\ : std_logic;
SIGNAL \Mux4|S[16]~15_combout\ : std_logic;
SIGNAL \Mux5|S[15]~17_combout\ : std_logic;
SIGNAL \Mux5|S[15]~18_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~29\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~31\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~33\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~35\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~37\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~39\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~41\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~43\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~45\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~46_combout\ : std_logic;
SIGNAL \Mux4|S[21]~10_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~107_combout\ : std_logic;
SIGNAL \Mux4|S[19]~12_combout\ : std_logic;
SIGNAL \Mux5|S[16]~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~29\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~97_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~98_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[15]~144_combout\ : std_logic;
SIGNAL \Mux6|S[15]~29_combout\ : std_logic;
SIGNAL \Mux6|S[15]~30_combout\ : std_logic;
SIGNAL \Mux4|S[15]~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~31\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~33\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~35\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~37\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~39\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~40_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~40_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~108_combout\ : std_logic;
SIGNAL \Mux6|S[20]~40_combout\ : std_logic;
SIGNAL \Mux4|S[20]~11_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~41\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~43\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~45\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~46_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~114_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[23]~152_combout\ : std_logic;
SIGNAL \Mux6|S[23]~45_combout\ : std_logic;
SIGNAL \Mux6|S[23]~46_combout\ : std_logic;
SIGNAL \Mux4|S[23]~8_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~47\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~48_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~115_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~116_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[24]~153_combout\ : std_logic;
SIGNAL \writeEnablePC~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~34_combout\ : std_logic;
SIGNAL \Mux4|S[17]~14_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~101_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~102_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[17]~146_combout\ : std_logic;
SIGNAL \Mux6|S[18]~36_combout\ : std_logic;
SIGNAL \Mux4|S[18]~13_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~36_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~103_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~104_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[18]~147_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~32_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~32_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~99_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~100_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[16]~145_combout\ : std_logic;
SIGNAL \writeEnablePC~5_combout\ : std_logic;
SIGNAL \Mux4|S[27]~4_combout\ : std_logic;
SIGNAL \Mux5|S[26]~5_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~119_combout\ : std_logic;
SIGNAL \Mux4|S[25]~6_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~49\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~51\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~52_combout\ : std_logic;
SIGNAL \Mux5|S[25]~6_combout\ : std_logic;
SIGNAL \Mux6|S[24]~47_combout\ : std_logic;
SIGNAL \Mux6|S[24]~48_combout\ : std_logic;
SIGNAL \Mux4|S[24]~7_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~47\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~49\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~51\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~52_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~120_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[26]~155_combout\ : std_logic;
SIGNAL \Mux6|S[26]~51_combout\ : std_logic;
SIGNAL \Mux6|S[26]~52_combout\ : std_logic;
SIGNAL \Mux4|S[26]~5_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~53\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~54_combout\ : std_logic;
SIGNAL \Mux5|S[27]~4_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~53\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~54_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~122_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~50_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~117_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~118_combout\ : std_logic;
SIGNAL \writeEnablePC~6_combout\ : std_logic;
SIGNAL \Mux5|S[29]~2_combout\ : std_logic;
SIGNAL \Mux5|S[28]~3_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~55\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~57\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~58_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~55\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~57\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~58_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~158_combout\ : std_logic;
SIGNAL \Mux6|S[29]~57_combout\ : std_logic;
SIGNAL \Mux6|S[29]~58_combout\ : std_logic;
SIGNAL \Mux4|S[29]~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~125_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[29]~126_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~157_combout\ : std_logic;
SIGNAL \Mux6|S[28]~55_combout\ : std_logic;
SIGNAL \Mux6|S[28]~56_combout\ : std_logic;
SIGNAL \Mux4|S[28]~3_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~56_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~56_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~123_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[28]~124_combout\ : std_logic;
SIGNAL \Mux5|S[30]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~59\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~60_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~59\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~60_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~128_combout\ : std_logic;
SIGNAL \writeEnablePC~3_combout\ : std_logic;
SIGNAL \writeEnablePC~7_combout\ : std_logic;
SIGNAL \writeEnablePC~combout\ : std_logic;
SIGNAL \writeEnablePC~clkctrl_outclk\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~63_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~61\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~62_combout\ : std_logic;
SIGNAL \Mux5|S[31]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~61\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~62_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[31]~129_combout\ : std_logic;
SIGNAL \Mux6|S[31]~61_combout\ : std_logic;
SIGNAL \Mux6|S[31]~62_combout\ : std_logic;
SIGNAL \Mux4|S[31]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~62_combout\ : std_logic;
SIGNAL \Mux6|S[0]~0_combout\ : std_logic;
SIGNAL \Mux6|S[0]~1_combout\ : std_logic;
SIGNAL \Mux4|S[0]~31_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~0_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~64_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[0]~65_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~2_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~67_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~68_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[1]~130_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[2]~131_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[3]~132_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[4]~133_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~14_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~81_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~14_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~82_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[7]~136_combout\ : std_logic;
SIGNAL \Mux6|S[8]~15_combout\ : std_logic;
SIGNAL \Mux6|S[8]~16_combout\ : std_logic;
SIGNAL \Mux4|S[8]~23_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~16_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~83_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~84_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[8]~137_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~18_combout\ : std_logic;
SIGNAL \Mux5|S[9]~30_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~85_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~18_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~86_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[9]~138_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~24_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~91_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~92_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[12]~141_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[13]~142_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[14]~143_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~105_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~38_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~106_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[19]~148_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[20]~149_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~42_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~42_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~110_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[21]~150_combout\ : std_logic;
SIGNAL \Mux6|S[22]~43_combout\ : std_logic;
SIGNAL \Mux6|S[22]~44_combout\ : std_logic;
SIGNAL \Mux4|S[22]~9_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~111_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add1~44_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Somador|Add0~44_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~112_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[22]~151_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[25]~154_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[27]~156_combout\ : std_logic;
SIGNAL \ULAUnit|UlaInstance|Result[30]~159_combout\ : std_logic;
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
SIGNAL \Mux6|S[1]~2_combout\ : std_logic;
SIGNAL \Mux6|S[7]~13_combout\ : std_logic;
SIGNAL \Mux6|S[7]~14_combout\ : std_logic;
SIGNAL \Mux6|S[9]~17_combout\ : std_logic;
SIGNAL \Mux6|S[9]~18_combout\ : std_logic;
SIGNAL \Mux6|S[12]~23_combout\ : std_logic;
SIGNAL \Mux6|S[12]~24_combout\ : std_logic;
SIGNAL \Mux6|S[16]~31_combout\ : std_logic;
SIGNAL \Mux6|S[16]~32_combout\ : std_logic;
SIGNAL \Mux6|S[17]~33_combout\ : std_logic;
SIGNAL \Mux6|S[17]~34_combout\ : std_logic;
SIGNAL \Mux6|S[19]~37_combout\ : std_logic;
SIGNAL \Mux6|S[19]~38_combout\ : std_logic;
SIGNAL \Mux6|S[21]~41_combout\ : std_logic;
SIGNAL \Mux6|S[21]~42_combout\ : std_logic;
SIGNAL \Mux6|S[25]~49_combout\ : std_logic;
SIGNAL \Mux6|S[25]~50_combout\ : std_logic;
SIGNAL \Mux6|S[27]~53_combout\ : std_logic;
SIGNAL \Mux6|S[27]~54_combout\ : std_logic;
SIGNAL \Mux6|S[30]~59_combout\ : std_logic;
SIGNAL \Mux6|S[30]~60_combout\ : std_logic;
SIGNAL \RegB|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegDados|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegULASaida|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegIns|addr_Output7\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RegIns|addr_Output6\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \RegIns|addr_Output5\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegIns|addr_Output3\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RegIns|addr_Output1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RegA|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC1|addr_Output\ : std_logic_vector(31 DOWNTO 0);
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

\Control|currentState.S0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|currentState.S0~regout\);

\writeEnablePC~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \writeEnablePC~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\Control|ALT_INV_ULAOp[1]~1_combout\ <= NOT \Control|ULAOp[1]~1_combout\;
\Control|ALT_INV_FontePC[1]~0_combout\ <= NOT \Control|FontePC[1]~0_combout\;
\Control|ALT_INV_currentState.S0~regout\ <= NOT \Control|currentState.S0~regout\;
\Control|ALT_INV_WideOr1~0_combout\ <= NOT \Control|WideOr1~0_combout\;
\Control|ALT_INV_ULAFonteA~0_combout\ <= NOT \Control|ULAFonteA~0_combout\;

-- Location: LCCOMB_X21_Y21_N0
\ULAUnit|UlaInstance|Somador|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~0_combout\ = (\Mux4|S[0]~31_combout\ & ((GND) # (!\Mux5|S[0]~46_combout\))) # (!\Mux4|S[0]~31_combout\ & (\Mux5|S[0]~46_combout\ $ (GND)))
-- \ULAUnit|UlaInstance|Somador|Add1~1\ = CARRY((\Mux4|S[0]~31_combout\) # (!\Mux5|S[0]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[0]~31_combout\,
	datab => \Mux5|S[0]~46_combout\,
	datad => VCC,
	combout => \ULAUnit|UlaInstance|Somador|Add1~0_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~1\);

-- Location: LCCOMB_X21_Y21_N2
\ULAUnit|UlaInstance|Somador|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~2_combout\ = (\Mux4|S[1]~30_combout\ & ((\Mux5|S[1]~45_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~1\)) # (!\Mux5|S[1]~45_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~1\ & VCC)))) # (!\Mux4|S[1]~30_combout\ & 
-- ((\Mux5|S[1]~45_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~1\) # (GND))) # (!\Mux5|S[1]~45_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~1\))))
-- \ULAUnit|UlaInstance|Somador|Add1~3\ = CARRY((\Mux4|S[1]~30_combout\ & (\Mux5|S[1]~45_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~1\)) # (!\Mux4|S[1]~30_combout\ & ((\Mux5|S[1]~45_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[1]~30_combout\,
	datab => \Mux5|S[1]~45_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~1\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~2_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~3\);

-- Location: LCCOMB_X21_Y21_N4
\ULAUnit|UlaInstance|Somador|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~4_combout\ = ((\Mux5|S[2]~44_combout\ $ (\Mux4|S[2]~29_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~3\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~5\ = CARRY((\Mux5|S[2]~44_combout\ & (\Mux4|S[2]~29_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~3\)) # (!\Mux5|S[2]~44_combout\ & ((\Mux4|S[2]~29_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[2]~44_combout\,
	datab => \Mux4|S[2]~29_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~3\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~4_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~5\);

-- Location: LCCOMB_X21_Y21_N10
\ULAUnit|UlaInstance|Somador|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~10_combout\ = (\Mux5|S[5]~38_combout\ & ((\Mux4|S[5]~26_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~9\)) # (!\Mux4|S[5]~26_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~9\) # (GND))))) # (!\Mux5|S[5]~38_combout\ & 
-- ((\Mux4|S[5]~26_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~9\ & VCC)) # (!\Mux4|S[5]~26_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~9\))))
-- \ULAUnit|UlaInstance|Somador|Add1~11\ = CARRY((\Mux5|S[5]~38_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~9\) # (!\Mux4|S[5]~26_combout\))) # (!\Mux5|S[5]~38_combout\ & (!\Mux4|S[5]~26_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[5]~38_combout\,
	datab => \Mux4|S[5]~26_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~9\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~10_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~11\);

-- Location: LCCOMB_X21_Y21_N16
\ULAUnit|UlaInstance|Somador|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~16_combout\ = ((\Mux4|S[8]~23_combout\ $ (\Mux5|S[8]~32_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~15\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~17\ = CARRY((\Mux4|S[8]~23_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~15\) # (!\Mux5|S[8]~32_combout\))) # (!\Mux4|S[8]~23_combout\ & (!\Mux5|S[8]~32_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[8]~23_combout\,
	datab => \Mux5|S[8]~32_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~15\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~16_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~17\);

-- Location: LCCOMB_X21_Y21_N20
\ULAUnit|UlaInstance|Somador|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~20_combout\ = ((\Mux5|S[10]~28_combout\ $ (\Mux4|S[10]~21_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~19\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~21\ = CARRY((\Mux5|S[10]~28_combout\ & (\Mux4|S[10]~21_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~19\)) # (!\Mux5|S[10]~28_combout\ & ((\Mux4|S[10]~21_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[10]~28_combout\,
	datab => \Mux4|S[10]~21_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~19\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~20_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~21\);

-- Location: LCCOMB_X21_Y21_N22
\ULAUnit|UlaInstance|Somador|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~22_combout\ = (\Mux5|S[11]~26_combout\ & ((\Mux4|S[11]~20_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~21\)) # (!\Mux4|S[11]~20_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~21\) # (GND))))) # (!\Mux5|S[11]~26_combout\ 
-- & ((\Mux4|S[11]~20_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~21\ & VCC)) # (!\Mux4|S[11]~20_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~21\))))
-- \ULAUnit|UlaInstance|Somador|Add1~23\ = CARRY((\Mux5|S[11]~26_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~21\) # (!\Mux4|S[11]~20_combout\))) # (!\Mux5|S[11]~26_combout\ & (!\Mux4|S[11]~20_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[11]~26_combout\,
	datab => \Mux4|S[11]~20_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~21\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~22_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~23\);

-- Location: LCCOMB_X21_Y21_N24
\ULAUnit|UlaInstance|Somador|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~24_combout\ = ((\Mux4|S[12]~19_combout\ $ (\Mux5|S[12]~24_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~23\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~25\ = CARRY((\Mux4|S[12]~19_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~23\) # (!\Mux5|S[12]~24_combout\))) # (!\Mux4|S[12]~19_combout\ & (!\Mux5|S[12]~24_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[12]~19_combout\,
	datab => \Mux5|S[12]~24_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~23\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~24_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~25\);

-- Location: LCCOMB_X21_Y21_N30
\ULAUnit|UlaInstance|Somador|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~30_combout\ = (\Mux4|S[15]~16_combout\ & ((\Mux5|S[15]~18_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~29\)) # (!\Mux5|S[15]~18_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~29\ & VCC)))) # (!\Mux4|S[15]~16_combout\ & 
-- ((\Mux5|S[15]~18_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~29\) # (GND))) # (!\Mux5|S[15]~18_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~29\))))
-- \ULAUnit|UlaInstance|Somador|Add1~31\ = CARRY((\Mux4|S[15]~16_combout\ & (\Mux5|S[15]~18_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~29\)) # (!\Mux4|S[15]~16_combout\ & ((\Mux5|S[15]~18_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[15]~16_combout\,
	datab => \Mux5|S[15]~18_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~29\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~30_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~31\);

-- Location: LCCOMB_X21_Y20_N2
\ULAUnit|UlaInstance|Somador|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~34_combout\ = (\Mux4|S[17]~14_combout\ & ((\Mux5|S[17]~14_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~33\)) # (!\Mux5|S[17]~14_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~33\ & VCC)))) # (!\Mux4|S[17]~14_combout\ & 
-- ((\Mux5|S[17]~14_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~33\) # (GND))) # (!\Mux5|S[17]~14_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~33\))))
-- \ULAUnit|UlaInstance|Somador|Add1~35\ = CARRY((\Mux4|S[17]~14_combout\ & (\Mux5|S[17]~14_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~33\)) # (!\Mux4|S[17]~14_combout\ & ((\Mux5|S[17]~14_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[17]~14_combout\,
	datab => \Mux5|S[17]~14_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~33\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~34_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~35\);

-- Location: LCCOMB_X21_Y20_N16
\ULAUnit|UlaInstance|Somador|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~48_combout\ = ((\Mux5|S[24]~7_combout\ $ (\Mux4|S[24]~7_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~47\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~49\ = CARRY((\Mux5|S[24]~7_combout\ & (\Mux4|S[24]~7_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~47\)) # (!\Mux5|S[24]~7_combout\ & ((\Mux4|S[24]~7_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[24]~7_combout\,
	datab => \Mux4|S[24]~7_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~47\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~48_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~49\);

-- Location: LCCOMB_X23_Y21_N8
\ULAUnit|UlaInstance|Somador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~8_combout\ = ((\Mux5|S[4]~40_combout\ $ (\Mux4|S[4]~27_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~7\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~9\ = CARRY((\Mux5|S[4]~40_combout\ & ((\Mux4|S[4]~27_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~7\))) # (!\Mux5|S[4]~40_combout\ & (\Mux4|S[4]~27_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[4]~40_combout\,
	datab => \Mux4|S[4]~27_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~7\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~8_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~9\);

-- Location: LCCOMB_X23_Y21_N12
\ULAUnit|UlaInstance|Somador|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~12_combout\ = ((\Mux4|S[6]~25_combout\ $ (\Mux5|S[6]~36_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~11\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~13\ = CARRY((\Mux4|S[6]~25_combout\ & ((\Mux5|S[6]~36_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~11\))) # (!\Mux4|S[6]~25_combout\ & (\Mux5|S[6]~36_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[6]~25_combout\,
	datab => \Mux5|S[6]~36_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~11\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~12_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~13\);

-- Location: LCCOMB_X23_Y21_N26
\ULAUnit|UlaInstance|Somador|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~26_combout\ = (\Mux4|S[13]~18_combout\ & ((\Mux5|S[13]~22_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~25\ & VCC)) # (!\Mux5|S[13]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~25\)))) # (!\Mux4|S[13]~18_combout\ & 
-- ((\Mux5|S[13]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~25\)) # (!\Mux5|S[13]~22_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~25\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~27\ = CARRY((\Mux4|S[13]~18_combout\ & (!\Mux5|S[13]~22_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~25\)) # (!\Mux4|S[13]~18_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~25\) # (!\Mux5|S[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[13]~18_combout\,
	datab => \Mux5|S[13]~22_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~25\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~26_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~27\);

-- Location: LCCOMB_X23_Y20_N4
\ULAUnit|UlaInstance|Somador|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~36_combout\ = ((\Mux4|S[18]~13_combout\ $ (\Mux5|S[18]~13_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~35\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~37\ = CARRY((\Mux4|S[18]~13_combout\ & ((\Mux5|S[18]~13_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~35\))) # (!\Mux4|S[18]~13_combout\ & (\Mux5|S[18]~13_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[18]~13_combout\,
	datab => \Mux5|S[18]~13_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~35\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~36_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~37\);

-- Location: LCCOMB_X23_Y20_N6
\ULAUnit|UlaInstance|Somador|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~38_combout\ = (\Mux5|S[19]~12_combout\ & ((\Mux4|S[19]~12_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~37\ & VCC)) # (!\Mux4|S[19]~12_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~37\)))) # (!\Mux5|S[19]~12_combout\ & 
-- ((\Mux4|S[19]~12_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~37\)) # (!\Mux4|S[19]~12_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~37\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~39\ = CARRY((\Mux5|S[19]~12_combout\ & (!\Mux4|S[19]~12_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~37\)) # (!\Mux5|S[19]~12_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~37\) # (!\Mux4|S[19]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[19]~12_combout\,
	datab => \Mux4|S[19]~12_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~37\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~38_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~39\);

-- Location: LCCOMB_X23_Y20_N18
\ULAUnit|UlaInstance|Somador|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~50_combout\ = (\Mux5|S[25]~6_combout\ & ((\Mux4|S[25]~6_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~49\ & VCC)) # (!\Mux4|S[25]~6_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~49\)))) # (!\Mux5|S[25]~6_combout\ & 
-- ((\Mux4|S[25]~6_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~49\)) # (!\Mux4|S[25]~6_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~49\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~51\ = CARRY((\Mux5|S[25]~6_combout\ & (!\Mux4|S[25]~6_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~49\)) # (!\Mux5|S[25]~6_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~49\) # (!\Mux4|S[25]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[25]~6_combout\,
	datab => \Mux4|S[25]~6_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~49\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~50_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~51\);

-- Location: LCFF_X20_Y22_N29
\RegA|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(30));

-- Location: LCCOMB_X20_Y22_N28
\Mux4|S[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[30]~1_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(30))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(30),
	datac => \RegA|q\(30),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[30]~1_combout\);

-- Location: LCCOMB_X20_Y21_N24
\Mux5|S[16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[16]~15_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(14))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(14),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[16]~15_combout\);

-- Location: LCCOMB_X22_Y24_N20
\Mux5|S[13]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[13]~21_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(11))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(13))))))

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
	combout => \Mux5|S[13]~21_combout\);

-- Location: LCFF_X22_Y22_N3
\RegA|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(12));

-- Location: LCCOMB_X22_Y22_N2
\Mux4|S[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[12]~19_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(12)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(12),
	datad => \PC1|addr_Output\(12),
	combout => \Mux4|S[12]~19_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Mux5|S[11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[11]~25_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(9)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(11),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegIns|addr_Output5\(9),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[11]~25_combout\);

-- Location: LCCOMB_X22_Y24_N16
\Mux5|S[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[9]~29_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(7))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(7),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegIns|addr_Output5\(9),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[9]~29_combout\);

-- Location: LCFF_X22_Y25_N15
\RegA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(7));

-- Location: LCCOMB_X22_Y25_N14
\Mux4|S[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[7]~24_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(7)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(7),
	datad => \PC1|addr_Output\(7),
	combout => \Mux4|S[7]~24_combout\);

-- Location: LCFF_X25_Y21_N7
\RegA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(1));

-- Location: LCCOMB_X25_Y21_N6
\Mux4|S[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[1]~30_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(1)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(1),
	datad => \PC1|addr_Output\(1),
	combout => \Mux4|S[1]~30_combout\);

-- Location: LCCOMB_X19_Y22_N14
\ULAUnit|UlaInstance|Result[21]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~109_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[21]~10_combout\ & ((\Mux4|S[21]~10_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux5|S[21]~10_combout\ & (\Mux4|S[21]~10_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[21]~10_combout\,
	datac => \Mux4|S[21]~10_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~109_combout\);

-- Location: LCCOMB_X25_Y20_N24
\ULAUnit|UlaInstance|Result[23]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~113_combout\ = (\Mux5|S[23]~8_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux4|S[23]~8_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[23]~8_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[23]~8_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[23]~8_combout\,
	datab => \Mux4|S[23]~8_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~113_combout\);

-- Location: LCCOMB_X20_Y20_N24
\ULAUnit|UlaInstance|Result[27]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~121_combout\ = (\Mux4|S[27]~4_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux5|S[27]~4_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[27]~4_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux5|S[27]~4_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[27]~4_combout\,
	datab => \Mux5|S[27]~4_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~121_combout\);

-- Location: LCCOMB_X21_Y22_N4
\ULAUnit|UlaInstance|Result[30]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~127_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[30]~1_combout\ & ((\Mux5|S[30]~1_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux4|S[30]~1_combout\ & (\Mux5|S[30]~1_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[30]~1_combout\,
	datac => \Mux5|S[30]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~127_combout\);

-- Location: LCCOMB_X25_Y21_N12
\Mux6|S[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[3]~5_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(3)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(1),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(3),
	combout => \Mux6|S[3]~5_combout\);

-- Location: LCCOMB_X21_Y23_N16
\Mux6|S[10]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[10]~19_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(10)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \RegULASaida|q\(10),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[10]~19_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mux6|S[13]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[13]~25_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(13))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(13),
	datad => \RegIns|addr_Output5\(11),
	combout => \Mux6|S[13]~25_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mux6|S[18]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[18]~35_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(18)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output3\(0),
	datad => \RegULASaida|q\(18),
	combout => \Mux6|S[18]~35_combout\);

-- Location: LCCOMB_X18_Y20_N16
\Mux6|S[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[20]~39_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(20))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegULASaida|q\(20),
	datac => \RegIns|addr_Output3\(2),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[20]~39_combout\);

-- Location: LCCOMB_X19_Y22_N10
\writeEnablePC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~4_combout\ = ((!\ULAUnit|UlaInstance|Result[20]~108_combout\ & (!\ULAUnit|UlaInstance|Result[19]~106_combout\ & !\ULAUnit|UlaInstance|Result[21]~110_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datab => \ULAUnit|UlaInstance|Result[20]~108_combout\,
	datac => \ULAUnit|UlaInstance|Result[19]~106_combout\,
	datad => \ULAUnit|UlaInstance|Result[21]~110_combout\,
	combout => \writeEnablePC~4_combout\);

-- Location: LCCOMB_X22_Y22_N30
\writeEnablePC~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~8_combout\ = ((!\ULAUnit|UlaInstance|Result[9]~86_combout\ & (!\ULAUnit|UlaInstance|Result[7]~82_combout\ & !\ULAUnit|UlaInstance|Result[8]~84_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datab => \ULAUnit|UlaInstance|Result[9]~86_combout\,
	datac => \ULAUnit|UlaInstance|Result[7]~82_combout\,
	datad => \ULAUnit|UlaInstance|Result[8]~84_combout\,
	combout => \writeEnablePC~8_combout\);

-- Location: LCCOMB_X23_Y23_N24
\writeEnablePC~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~9_combout\ = ((!\ULAUnit|UlaInstance|Result[6]~80_combout\ & (!\ULAUnit|UlaInstance|Result[4]~76_combout\ & !\ULAUnit|UlaInstance|Result[5]~78_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[6]~80_combout\,
	datab => \ULAUnit|UlaInstance|Result[4]~76_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datad => \ULAUnit|UlaInstance|Result[5]~78_combout\,
	combout => \writeEnablePC~9_combout\);

-- Location: LCCOMB_X24_Y21_N0
\writeEnablePC~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~10_combout\ = (!\ULAUnit|UlaInstance|Result[2]~131_combout\ & (\Control|currentState.S8~regout\ & (!\ULAUnit|UlaInstance|Result[1]~130_combout\ & !\ULAUnit|UlaInstance|Result[3]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[2]~131_combout\,
	datab => \Control|currentState.S8~regout\,
	datac => \ULAUnit|UlaInstance|Result[1]~130_combout\,
	datad => \ULAUnit|UlaInstance|Result[3]~132_combout\,
	combout => \writeEnablePC~10_combout\);

-- Location: LCCOMB_X23_Y23_N4
\writeEnablePC~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~11_combout\ = (\writeEnablePC~10_combout\ & (\writeEnablePC~9_combout\ & \writeEnablePC~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnablePC~10_combout\,
	datac => \writeEnablePC~9_combout\,
	datad => \writeEnablePC~8_combout\,
	combout => \writeEnablePC~11_combout\);

-- Location: LCCOMB_X25_Y20_N0
\writeEnablePC~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~12_combout\ = (\writeEnablePC~11_combout\ & (!\ULAUnit|UlaInstance|Result[23]~152_combout\ & (!\ULAUnit|UlaInstance|Result[22]~151_combout\ & !\ULAUnit|UlaInstance|Result[0]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnablePC~11_combout\,
	datab => \ULAUnit|UlaInstance|Result[23]~152_combout\,
	datac => \ULAUnit|UlaInstance|Result[22]~151_combout\,
	datad => \ULAUnit|UlaInstance|Result[0]~65_combout\,
	combout => \writeEnablePC~12_combout\);

-- Location: LCCOMB_X24_Y23_N16
\Control|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector9~3_combout\ = (!\RegIns|addr_Output1\(4) & (!\RegIns|addr_Output1\(3) & (!\RegIns|addr_Output1\(0) & !\RegIns|addr_Output1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(4),
	datab => \RegIns|addr_Output1\(3),
	datac => \RegIns|addr_Output1\(0),
	datad => \RegIns|addr_Output1\(5),
	combout => \Control|Selector9~3_combout\);

-- Location: LCCOMB_X23_Y23_N18
\RegIns|addr_Output5[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(8) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(8)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(8),
	datab => \RegIns|addr_Output5\(8),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(8));

-- Location: LCCOMB_X20_Y19_N24
\RegIns|addr_Output6[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(24) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output6\(24)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(24),
	datac => \RegIns|addr_Output6\(24),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(24));

-- Location: LCCOMB_X20_Y23_N14
\RegIns|addr_Output1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(4) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(4)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(30),
	datac => \RegIns|addr_Output1\(4),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(4));

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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y23_N8
\RegIns|addr_Output1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(3) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(3)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(29),
	datac => \RegIns|addr_Output1\(3),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(3));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y23_N24
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

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y23_N20
\RegIns|addr_Output1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(1) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output1\(1))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(1),
	datab => \i_in~combout\(27),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(1));

-- Location: LCCOMB_X23_Y22_N10
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

-- Location: LCCOMB_X24_Y23_N2
\Control|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector5~0_combout\ = (\RegIns|addr_Output1\(5) & (\RegIns|addr_Output1\(3) & (\Control|Equal1~0_combout\ & \Control|currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(3),
	datac => \Control|Equal1~0_combout\,
	datad => \Control|currentState.S2~regout\,
	combout => \Control|Selector5~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCFF_X24_Y23_N3
\Control|currentState.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S5~regout\);

-- Location: LCCOMB_X21_Y23_N14
\RegIns|addr_Output1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(5) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(5)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(31),
	datac => \RegIns|addr_Output1\(5),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(5));

-- Location: LCCOMB_X23_Y22_N6
\Control|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal1~1_combout\ = (\RegIns|addr_Output1\(5) & \Control|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegIns|addr_Output1\(5),
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y22_N30
\Control|nextState~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|nextState~10_combout\ = (!\Control|Equal1~1_combout\ & ((\RegIns|addr_Output1\(2) $ (!\RegIns|addr_Output1\(1))) # (!\Control|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Equal0~0_combout\,
	datab => \RegIns|addr_Output1\(2),
	datac => \Control|Equal1~1_combout\,
	datad => \RegIns|addr_Output1\(1),
	combout => \Control|nextState~10_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Control|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~1_combout\ = ((\Control|nextState~10_combout\ & \Control|Selector1~0_combout\)) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|nextState~10_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector1~1_combout\);

-- Location: LCFF_X23_Y22_N15
\Control|currentState.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Control|Selector1~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S1~regout\);

-- Location: LCCOMB_X24_Y23_N18
\Control|Selector9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector9~15_combout\ = (\Control|Selector9~3_combout\ & (!\RegIns|addr_Output1\(2) & (\RegIns|addr_Output1\(1) & \Control|currentState.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector9~3_combout\,
	datab => \RegIns|addr_Output1\(2),
	datac => \RegIns|addr_Output1\(1),
	datad => \Control|currentState.S1~regout\,
	combout => \Control|Selector9~15_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Control|currentState.S9~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|currentState.S9~feeder_combout\ = \Control|Selector9~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Selector9~15_combout\,
	combout => \Control|currentState.S9~feeder_combout\);

-- Location: LCFF_X23_Y23_N29
\Control|currentState.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Control|currentState.S9~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S9~regout\);

-- Location: LCCOMB_X23_Y22_N20
\Control|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal0~0_combout\ = (!\RegIns|addr_Output1\(4) & (!\RegIns|addr_Output1\(0) & (!\RegIns|addr_Output1\(3) & !\RegIns|addr_Output1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(4),
	datab => \RegIns|addr_Output1\(0),
	datac => \RegIns|addr_Output1\(3),
	datad => \RegIns|addr_Output1\(5),
	combout => \Control|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Control|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Equal3~0_combout\ = ((\RegIns|addr_Output1\(1)) # (!\Control|Equal0~0_combout\)) # (!\RegIns|addr_Output1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output1\(2),
	datac => \Control|Equal0~0_combout\,
	datad => \RegIns|addr_Output1\(1),
	combout => \Control|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Control|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector8~2_combout\ = (\Control|Selector1~0_combout\ & (!\Control|Equal3~0_combout\ & ((!\Control|Equal1~0_combout\) # (!\RegIns|addr_Output1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \Control|Selector1~0_combout\,
	datac => \Control|Equal3~0_combout\,
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Selector8~2_combout\);

-- Location: LCFF_X23_Y22_N13
\Control|currentState.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Control|Selector8~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S8~regout\);

-- Location: LCCOMB_X24_Y23_N10
\Control|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr1~combout\ = (\Control|WideOr1~0_combout\ & (!\Control|currentState.S5~regout\ & (!\Control|currentState.S9~regout\ & !\Control|currentState.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr1~0_combout\,
	datab => \Control|currentState.S5~regout\,
	datac => \Control|currentState.S9~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|WideOr1~combout\);

-- Location: LCFF_X23_Y23_N17
\Control|currentState.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Control|WideOr1~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S0~regout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X21_Y23_N20
\RegIns|addr_Output1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output1\(2) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output1\(2)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(28),
	datac => \RegIns|addr_Output1\(2),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output1\(2));

-- Location: LCCOMB_X23_Y22_N0
\Control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~0_combout\ = (\Control|currentState.S1~regout\ & ((\RegIns|addr_Output1\(1)) # ((\RegIns|addr_Output1\(2)) # (!\Control|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(1),
	datab => \RegIns|addr_Output1\(2),
	datac => \Control|Equal0~0_combout\,
	datad => \Control|currentState.S1~regout\,
	combout => \Control|Selector1~0_combout\);

-- Location: LCCOMB_X23_Y22_N2
\Control|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector2~2_combout\ = (\RegIns|addr_Output1\(5) & ((\Control|Equal1~0_combout\ & (\Control|Selector1~0_combout\)) # (!\Control|Equal1~0_combout\ & ((\Control|currentState.S2~regout\))))) # (!\RegIns|addr_Output1\(5) & 
-- (((\Control|currentState.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \Control|Selector1~0_combout\,
	datac => \Control|currentState.S2~regout\,
	datad => \Control|Equal1~0_combout\,
	combout => \Control|Selector2~2_combout\);

-- Location: LCFF_X23_Y22_N3
\Control|currentState.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Control|Selector2~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S2~regout\);

-- Location: LCCOMB_X23_Y22_N4
\Control|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector6~0_combout\ = (!\RegIns|addr_Output1\(1) & (!\RegIns|addr_Output1\(2) & (\Control|Equal0~0_combout\ & \Control|currentState.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(1),
	datab => \RegIns|addr_Output1\(2),
	datac => \Control|Equal0~0_combout\,
	datad => \Control|currentState.S1~regout\,
	combout => \Control|Selector6~0_combout\);

-- Location: LCFF_X23_Y22_N5
\Control|currentState.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \Control|Selector6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S6~regout\);

-- Location: LCCOMB_X23_Y22_N16
\Control|ULAFonteA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAFonteA~0_combout\ = (!\Control|currentState.S2~regout\ & (!\Control|currentState.S6~regout\ & !\Control|currentState.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S2~regout\,
	datac => \Control|currentState.S6~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|ULAFonteA~0_combout\);

-- Location: LCFF_X23_Y22_N27
\Control|currentState.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Control|currentState.S6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S7~regout\);

-- Location: LCCOMB_X24_Y23_N14
\Control|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector3~0_combout\ = (\RegIns|addr_Output1\(5) & (!\RegIns|addr_Output1\(3) & (\Control|Equal1~0_combout\ & \Control|currentState.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output1\(5),
	datab => \RegIns|addr_Output1\(3),
	datac => \Control|Equal1~0_combout\,
	datad => \Control|currentState.S2~regout\,
	combout => \Control|Selector3~0_combout\);

-- Location: LCFF_X24_Y23_N15
\Control|currentState.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Control|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S3~regout\);

-- Location: LCFF_X24_Y23_N21
\Control|currentState.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Control|currentState.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|currentState.S4~regout\);

-- Location: LCCOMB_X24_Y23_N6
\Control|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr1~0_combout\ = (!\Control|currentState.S7~regout\ & !\Control|currentState.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S7~regout\,
	datad => \Control|currentState.S4~regout\,
	combout => \Control|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y23_N30
\Control|PCEsc\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|PCEsc~combout\ = (\Control|currentState.S9~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S9~regout\,
	combout => \Control|PCEsc~combout\);

-- Location: LCCOMB_X24_Y23_N28
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

-- Location: LCCOMB_X18_Y35_N20
\Control|LerMem\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|LerMem~combout\ = (\Control|currentState.S4~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S4~regout\,
	combout => \Control|LerMem~combout\);

-- Location: LCCOMB_X25_Y35_N0
\Control|FontePC[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|FontePC[1]~0_combout\ = (\Control|currentState.S8~regout\) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|FontePC[1]~0_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Control|ULAOp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAOp[0]~0_combout\ = (\Control|currentState.S8~regout\ & (!\Control|currentState.S2~regout\ & (\Control|currentState.S0~regout\ & !\Control|currentState.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S1~regout\,
	combout => \Control|ULAOp[0]~0_combout\);

-- Location: LCCOMB_X23_Y22_N22
\Control|ULAOp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAOp[1]~1_combout\ = ((\Control|currentState.S2~regout\) # ((\Control|currentState.S1~regout\) # (\Control|currentState.S8~regout\))) # (!\Control|currentState.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S2~regout\,
	datac => \Control|currentState.S1~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Control|ULAOp[1]~1_combout\);

-- Location: LCCOMB_X23_Y22_N8
\Control|ULAFonteB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ULAFonteB[1]~0_combout\ = (\Control|currentState.S0~regout\ & (!\Control|currentState.S6~regout\ & !\Control|currentState.S8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
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

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X23_Y23_N12
\RegIns|addr_Output7[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(4) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output7\(4)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(4),
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output7\(4),
	combout => \RegIns|addr_Output7\(4));

-- Location: LCCOMB_X24_Y22_N22
\RegIns|addr_Output7[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(3) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output7\(3)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(3),
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output7\(3),
	combout => \RegIns|addr_Output7\(3));

-- Location: LCCOMB_X24_Y22_N14
\RegIns|addr_Output7[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(2) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output7\(2)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(2),
	datac => \RegIns|addr_Output7\(2),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output7\(2));

-- Location: LCCOMB_X24_Y22_N12
\RegIns|addr_Output5[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(0) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(0)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(0),
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output5\(0),
	combout => \RegIns|addr_Output5\(0));

-- Location: LCCOMB_X24_Y22_N30
\ULAUnit|UlaControlInstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux2~0_combout\ = (\RegIns|addr_Output7\(3)) # ((\RegIns|addr_Output5\(0)) # ((\RegIns|addr_Output7\(1) & \RegIns|addr_Output7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(1),
	datab => \RegIns|addr_Output7\(3),
	datac => \RegIns|addr_Output7\(2),
	datad => \RegIns|addr_Output5\(0),
	combout => \ULAUnit|UlaControlInstance|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\ULAUnit|UlaControlInstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux5~2_combout\ = (!\Control|ULAOp[1]~1_combout\ & (((\RegIns|addr_Output7\(4)) # (\ULAUnit|UlaControlInstance|Mux2~0_combout\)) # (!\RegIns|addr_Output7\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \RegIns|addr_Output7\(4),
	datad => \ULAUnit|UlaControlInstance|Mux2~0_combout\,
	combout => \ULAUnit|UlaControlInstance|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y22_N24
\ULAUnit|UlaInstance|Somador|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|S[0]~0_combout\ = (\Control|currentState.S0~regout\ & (!\Control|currentState.S1~regout\ & !\Control|currentState.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S1~regout\,
	datad => \Control|currentState.S2~regout\,
	combout => \ULAUnit|UlaInstance|Somador|S[0]~0_combout\);

-- Location: LCCOMB_X24_Y22_N6
\ULAUnit|UlaControlInstance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux0~0_combout\ = (\RegIns|addr_Output7\(1)) # ((\RegIns|addr_Output7\(3)) # ((!\RegIns|addr_Output7\(2) & \RegIns|addr_Output5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(1),
	datab => \RegIns|addr_Output7\(3),
	datac => \RegIns|addr_Output7\(2),
	datad => \RegIns|addr_Output5\(0),
	combout => \ULAUnit|UlaControlInstance|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\ULAUnit|UlaInstance|Somador|S[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|S[0]~1_combout\ = (\ULAUnit|UlaInstance|Somador|S[0]~0_combout\ & (((\ULAUnit|UlaControlInstance|Mux0~0_combout\) # (\Control|currentState.S8~regout\)) # (!\ULAUnit|UlaInstance|Result[1]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~60_combout\,
	datab => \ULAUnit|UlaInstance|Somador|S[0]~0_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux0~0_combout\,
	datad => \Control|currentState.S8~regout\,
	combout => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\);

-- Location: LCCOMB_X22_Y21_N14
\ULAUnit|UlaInstance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Equal0~0_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaControlInstance|Mux5~2_combout\ & \ULAUnit|UlaInstance|Somador|S[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	combout => \ULAUnit|UlaInstance|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N28
\RegIns|addr_Output7[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(1) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output7\(1)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(1),
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output7\(1),
	combout => \RegIns|addr_Output7\(1));

-- Location: LCCOMB_X24_Y22_N0
\ULAUnit|UlaInstance|Result[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~61_combout\ = (!\RegIns|addr_Output7\(3) & (\RegIns|addr_Output7\(2) & !\RegIns|addr_Output7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output7\(3),
	datac => \RegIns|addr_Output7\(2),
	datad => \RegIns|addr_Output7\(1),
	combout => \ULAUnit|UlaInstance|Result[1]~61_combout\);

-- Location: LCCOMB_X22_Y21_N16
\ULAUnit|UlaControlInstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaControlInstance|Mux4~2_combout\ = ((\Control|ULAOp[1]~1_combout\) # ((\RegIns|addr_Output7\(4)) # (!\ULAUnit|UlaInstance|Result[1]~61_combout\))) # (!\RegIns|addr_Output7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \RegIns|addr_Output7\(4),
	datad => \ULAUnit|UlaInstance|Result[1]~61_combout\,
	combout => \ULAUnit|UlaControlInstance|Mux4~2_combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y21_N7
\RegA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y23_N7
\RegB|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(10));

-- Location: LCCOMB_X22_Y23_N20
\RegIns|addr_Output5[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(10) = (\Control|currentState.S0~regout\ & (\RegIns|addr_Output5\(10))) # (!\Control|currentState.S0~regout\ & ((\i_in~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(10),
	datab => \i_in~combout\(10),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(10));

-- Location: LCCOMB_X22_Y23_N26
\Mux5|S[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[10]~27_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(8))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegIns|addr_Output5\(10),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[10]~27_combout\);

-- Location: LCCOMB_X22_Y23_N6
\Mux5|S[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[10]~28_combout\ = (\Mux5|S[10]~27_combout\) # ((!\Control|ULAFonteA~0_combout\ & (!\Control|ULAFonteB[1]~0_combout\ & \RegB|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(10),
	datad => \Mux5|S[10]~27_combout\,
	combout => \Mux5|S[10]~28_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y22_N9
\RegA|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(9));

-- Location: LCCOMB_X22_Y22_N26
\PC1|addr_Output[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(9) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\Mux6|S[9]~18_combout\)) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\PC1|addr_Output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[9]~18_combout\,
	datab => \PC1|addr_Output\(9),
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(9));

-- Location: LCCOMB_X22_Y22_N8
\Mux4|S[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[9]~22_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(9)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(9),
	datad => \PC1|addr_Output\(9),
	combout => \Mux4|S[9]~22_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y23_N17
\RegB|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(8));

-- Location: LCCOMB_X23_Y23_N22
\RegIns|addr_Output5[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(6) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(6)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(6),
	datac => \Control|currentState.S0~regout\,
	datad => \RegIns|addr_Output5\(6),
	combout => \RegIns|addr_Output5\(6));

-- Location: LCCOMB_X22_Y23_N12
\Mux5|S[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[8]~31_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(6)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(8),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \Control|ULAFonteA~0_combout\,
	datad => \RegIns|addr_Output5\(6),
	combout => \Mux5|S[8]~31_combout\);

-- Location: LCCOMB_X22_Y23_N16
\Mux5|S[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[8]~32_combout\ = (\Mux5|S[8]~31_combout\) # ((!\Control|ULAFonteA~0_combout\ & (!\Control|ULAFonteB[1]~0_combout\ & \RegB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(8),
	datad => \Mux5|S[8]~31_combout\,
	combout => \Mux5|S[8]~32_combout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y24_N9
\RegB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(7));

-- Location: LCCOMB_X23_Y23_N20
\RegIns|addr_Output7[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output7\(5) = (\Control|currentState.S0~regout\ & (\RegIns|addr_Output7\(5))) # (!\Control|currentState.S0~regout\ & ((\i_in~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datab => \i_in~combout\(5),
	datac => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output7\(5));

-- Location: LCCOMB_X22_Y24_N18
\Mux5|S[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[7]~33_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(5)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(7),
	datab => \RegIns|addr_Output7\(5),
	datac => \Control|ULAFonteA~0_combout\,
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[7]~33_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Mux5|S[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[7]~34_combout\ = (\Mux5|S[7]~33_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteA~0_combout\ & \RegB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(7),
	datad => \Mux5|S[7]~33_combout\,
	combout => \Mux5|S[7]~34_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y23_N11
\RegB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(6));

-- Location: LCCOMB_X22_Y23_N22
\Mux5|S[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[6]~35_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(4))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(4),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \RegIns|addr_Output5\(6),
	combout => \Mux5|S[6]~35_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Mux5|S[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[6]~36_combout\ = (\Mux5|S[6]~35_combout\) # ((!\Control|ULAFonteA~0_combout\ & (!\Control|ULAFonteB[1]~0_combout\ & \RegB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(6),
	datad => \Mux5|S[6]~35_combout\,
	combout => \Mux5|S[6]~36_combout\);

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X23_Y23_N3
\RegA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(5));

-- Location: LCCOMB_X24_Y22_N26
\Mux5|S[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[5]~37_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(3))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(3),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegIns|addr_Output7\(5),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[5]~37_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y22_N25
\RegB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(5));

-- Location: LCCOMB_X24_Y22_N24
\Mux5|S[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[5]~38_combout\ = (\Mux5|S[5]~37_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(5) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Mux5|S[5]~37_combout\,
	datac => \RegB|q\(5),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[5]~38_combout\);

-- Location: LCCOMB_X23_Y23_N14
\ULAUnit|UlaInstance|Result[5]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~77_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[5]~26_combout\) # ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[5]~38_combout\)))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\Mux4|S[5]~26_combout\ & (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datab => \Mux4|S[5]~26_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux5|S[5]~38_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~77_combout\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y21_N31
\RegA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(4));

-- Location: LCCOMB_X25_Y21_N16
\Mux6|S[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[4]~7_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(4))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output7\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(4),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegIns|addr_Output7\(2),
	combout => \Mux6|S[4]~7_combout\);

-- Location: LCCOMB_X22_Y21_N22
\ULAUnit|UlaInstance|Result[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~66_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|S[0]~1_combout\))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaControlInstance|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~66_combout\);

-- Location: LCCOMB_X24_Y22_N2
\Mux5|S[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[4]~39_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(2))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(2),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegIns|addr_Output7\(4),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[4]~39_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y22_N5
\RegB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(4));

-- Location: LCCOMB_X24_Y22_N4
\Mux5|S[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[4]~40_combout\ = (\Mux5|S[4]~39_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(4) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Mux5|S[4]~39_combout\,
	datac => \RegB|q\(4),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[4]~40_combout\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y21_N5
\RegA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(3));

-- Location: LCCOMB_X24_Y22_N18
\Mux5|S[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[3]~41_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(1)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output7\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output7\(3),
	datac => \RegIns|addr_Output7\(1),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[3]~41_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y22_N21
\RegB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(3));

-- Location: LCCOMB_X24_Y22_N20
\Mux5|S[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[3]~42_combout\ = (\Mux5|S[3]~41_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(3) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Mux5|S[3]~41_combout\,
	datac => \RegB|q\(3),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[3]~42_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y21_N3
\RegA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(2));

-- Location: LCCOMB_X25_Y21_N20
\Mux6|S[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[2]~3_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(2))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(2),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \RegIns|addr_Output5\(0),
	combout => \Mux6|S[2]~3_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y22_N17
\RegB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(2));

-- Location: LCCOMB_X24_Y22_N10
\Mux5|S[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[2]~43_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(0))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output7\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(0),
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegIns|addr_Output7\(2),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[2]~43_combout\);

-- Location: LCCOMB_X24_Y22_N16
\Mux5|S[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[2]~44_combout\ = (\Mux5|S[2]~43_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\) # (\RegB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(2),
	datad => \Mux5|S[2]~43_combout\,
	combout => \Mux5|S[2]~44_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y21_N29
\RegB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(1));

-- Location: LCCOMB_X23_Y22_N28
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

-- Location: LCCOMB_X24_Y21_N28
\Mux5|S[1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[1]~45_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|currentState.S2~regout\ & (\RegIns|addr_Output7\(1)))) # (!\Control|ULAFonteB~1_combout\ & (((\RegB|q\(1)))))

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
	combout => \Mux5|S[1]~45_combout\);

-- Location: LCCOMB_X23_Y21_N0
\ULAUnit|UlaInstance|Somador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~0_combout\ = (\Mux5|S[0]~46_combout\ & (\Mux4|S[0]~31_combout\ $ (VCC))) # (!\Mux5|S[0]~46_combout\ & (\Mux4|S[0]~31_combout\ & VCC))
-- \ULAUnit|UlaInstance|Somador|Add0~1\ = CARRY((\Mux5|S[0]~46_combout\ & \Mux4|S[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[0]~46_combout\,
	datab => \Mux4|S[0]~31_combout\,
	datad => VCC,
	combout => \ULAUnit|UlaInstance|Somador|Add0~0_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~1\);

-- Location: LCCOMB_X23_Y21_N2
\ULAUnit|UlaInstance|Somador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~2_combout\ = (\Mux4|S[1]~30_combout\ & ((\Mux5|S[1]~45_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~1\ & VCC)) # (!\Mux5|S[1]~45_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~1\)))) # (!\Mux4|S[1]~30_combout\ & 
-- ((\Mux5|S[1]~45_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~1\)) # (!\Mux5|S[1]~45_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~1\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~3\ = CARRY((\Mux4|S[1]~30_combout\ & (!\Mux5|S[1]~45_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~1\)) # (!\Mux4|S[1]~30_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~1\) # (!\Mux5|S[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[1]~30_combout\,
	datab => \Mux5|S[1]~45_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~1\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~2_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~3\);

-- Location: LCCOMB_X23_Y21_N4
\ULAUnit|UlaInstance|Somador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~4_combout\ = ((\Mux4|S[2]~29_combout\ $ (\Mux5|S[2]~44_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~3\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~5\ = CARRY((\Mux4|S[2]~29_combout\ & ((\Mux5|S[2]~44_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~3\))) # (!\Mux4|S[2]~29_combout\ & (\Mux5|S[2]~44_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[2]~29_combout\,
	datab => \Mux5|S[2]~44_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~3\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~4_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~5\);

-- Location: LCCOMB_X24_Y21_N16
\ULAUnit|UlaInstance|Result[2]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~71_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~4_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~4_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~4_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~4_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~71_combout\);

-- Location: LCCOMB_X24_Y21_N14
\ULAUnit|UlaInstance|Result[2]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~72_combout\ = (\Mux5|S[2]~44_combout\ & ((\ULAUnit|UlaInstance|Result[2]~71_combout\) # ((\Mux4|S[2]~29_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[2]~44_combout\ & 
-- (\ULAUnit|UlaInstance|Result[2]~71_combout\ & ((\Mux4|S[2]~29_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[2]~44_combout\,
	datab => \Mux4|S[2]~29_combout\,
	datac => \ULAUnit|UlaInstance|Result[2]~71_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~72_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Mux6|S[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[2]~4_combout\ = (\Mux6|S[2]~3_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[2]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Mux6|S[2]~3_combout\,
	datac => \ULAUnit|UlaInstance|Result[2]~72_combout\,
	combout => \Mux6|S[2]~4_combout\);

-- Location: LCCOMB_X24_Y21_N10
\PC1|addr_Output[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(2) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[2]~4_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(2),
	datac => \Mux6|S[2]~4_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(2));

-- Location: LCCOMB_X24_Y21_N2
\Mux4|S[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[2]~29_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(2)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(2),
	datad => \PC1|addr_Output\(2),
	combout => \Mux4|S[2]~29_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y21_N5
\RegB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(0));

-- Location: LCCOMB_X24_Y21_N4
\Mux5|S[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[0]~46_combout\ = (\Control|ULAFonteB~1_combout\ & (\Control|currentState.S2~regout\ & (\RegIns|addr_Output5\(0)))) # (!\Control|ULAFonteB~1_combout\ & (((\RegB|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S2~regout\,
	datab => \RegIns|addr_Output5\(0),
	datac => \RegB|q\(0),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[0]~46_combout\);

-- Location: LCCOMB_X21_Y21_N6
\ULAUnit|UlaInstance|Somador|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~6_combout\ = (\Mux5|S[3]~42_combout\ & ((\Mux4|S[3]~28_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~5\)) # (!\Mux4|S[3]~28_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~5\) # (GND))))) # (!\Mux5|S[3]~42_combout\ & 
-- ((\Mux4|S[3]~28_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~5\ & VCC)) # (!\Mux4|S[3]~28_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~5\))))
-- \ULAUnit|UlaInstance|Somador|Add1~7\ = CARRY((\Mux5|S[3]~42_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~5\) # (!\Mux4|S[3]~28_combout\))) # (!\Mux5|S[3]~42_combout\ & (!\Mux4|S[3]~28_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[3]~42_combout\,
	datab => \Mux4|S[3]~28_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~5\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~6_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~7\);

-- Location: LCCOMB_X23_Y21_N6
\ULAUnit|UlaInstance|Somador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~6_combout\ = (\Mux4|S[3]~28_combout\ & ((\Mux5|S[3]~42_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~5\ & VCC)) # (!\Mux5|S[3]~42_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~5\)))) # (!\Mux4|S[3]~28_combout\ & 
-- ((\Mux5|S[3]~42_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~5\)) # (!\Mux5|S[3]~42_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~5\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~7\ = CARRY((\Mux4|S[3]~28_combout\ & (!\Mux5|S[3]~42_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~5\)) # (!\Mux4|S[3]~28_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~5\) # (!\Mux5|S[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[3]~28_combout\,
	datab => \Mux5|S[3]~42_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~5\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~6_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~7\);

-- Location: LCCOMB_X24_Y21_N22
\ULAUnit|UlaInstance|Result[3]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~73_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~6_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~6_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~6_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~73_combout\);

-- Location: LCCOMB_X25_Y21_N18
\ULAUnit|UlaInstance|Result[3]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~74_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[3]~73_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[3]~28_combout\ & ((\Mux5|S[3]~42_combout\) # 
-- (\ULAUnit|UlaInstance|Result[3]~73_combout\))) # (!\Mux4|S[3]~28_combout\ & (\Mux5|S[3]~42_combout\ & \ULAUnit|UlaInstance|Result[3]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[3]~28_combout\,
	datac => \Mux5|S[3]~42_combout\,
	datad => \ULAUnit|UlaInstance|Result[3]~73_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~74_combout\);

-- Location: LCCOMB_X25_Y21_N8
\Mux6|S[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[3]~6_combout\ = (\Mux6|S[3]~5_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[3]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[3]~5_combout\,
	datab => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[3]~74_combout\,
	combout => \Mux6|S[3]~6_combout\);

-- Location: LCCOMB_X25_Y21_N28
\PC1|addr_Output[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(3) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[3]~6_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(3),
	datac => \Mux6|S[3]~6_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(3));

-- Location: LCCOMB_X25_Y21_N4
\Mux4|S[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[3]~28_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(3)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(3),
	datad => \PC1|addr_Output\(3),
	combout => \Mux4|S[3]~28_combout\);

-- Location: LCCOMB_X21_Y21_N8
\ULAUnit|UlaInstance|Somador|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~8_combout\ = ((\Mux4|S[4]~27_combout\ $ (\Mux5|S[4]~40_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~7\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~9\ = CARRY((\Mux4|S[4]~27_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~7\) # (!\Mux5|S[4]~40_combout\))) # (!\Mux4|S[4]~27_combout\ & (!\Mux5|S[4]~40_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[4]~27_combout\,
	datab => \Mux5|S[4]~40_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~7\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~8_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~9\);

-- Location: LCCOMB_X24_Y21_N8
\ULAUnit|UlaInstance|Result[4]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~75_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~8_combout\) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~8_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~8_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~8_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~75_combout\);

-- Location: LCCOMB_X24_Y21_N26
\ULAUnit|UlaInstance|Result[4]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~76_combout\ = (\Mux4|S[4]~27_combout\ & ((\ULAUnit|UlaInstance|Result[4]~75_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[4]~40_combout\)))) # (!\Mux4|S[4]~27_combout\ & 
-- (\ULAUnit|UlaInstance|Result[4]~75_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[4]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[4]~27_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[4]~75_combout\,
	datad => \Mux5|S[4]~40_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~76_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Mux6|S[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[4]~8_combout\ = (\Mux6|S[4]~7_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[4]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[4]~7_combout\,
	datad => \ULAUnit|UlaInstance|Result[4]~76_combout\,
	combout => \Mux6|S[4]~8_combout\);

-- Location: LCCOMB_X24_Y21_N18
\PC1|addr_Output[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(4) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[4]~8_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(4),
	datac => \Mux6|S[4]~8_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(4));

-- Location: LCCOMB_X24_Y21_N30
\Mux4|S[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[4]~27_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(4)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(4),
	datad => \PC1|addr_Output\(4),
	combout => \Mux4|S[4]~27_combout\);

-- Location: LCCOMB_X23_Y21_N10
\ULAUnit|UlaInstance|Somador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~10_combout\ = (\Mux5|S[5]~38_combout\ & ((\Mux4|S[5]~26_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~9\ & VCC)) # (!\Mux4|S[5]~26_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~9\)))) # (!\Mux5|S[5]~38_combout\ & 
-- ((\Mux4|S[5]~26_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~9\)) # (!\Mux4|S[5]~26_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~9\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~11\ = CARRY((\Mux5|S[5]~38_combout\ & (!\Mux4|S[5]~26_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~9\)) # (!\Mux5|S[5]~38_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~9\) # (!\Mux4|S[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[5]~38_combout\,
	datab => \Mux4|S[5]~26_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~9\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~10_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~11\);

-- Location: LCCOMB_X22_Y23_N24
\ULAUnit|UlaInstance|Result[5]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~78_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[5]~77_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~10_combout\)) # (!\ULAUnit|UlaInstance|Result[5]~77_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~10_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[5]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~10_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[5]~77_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~10_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~78_combout\);

-- Location: LCCOMB_X22_Y23_N0
\ULAUnit|UlaInstance|Result[5]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[5]~134_combout\ = (\ULAUnit|UlaInstance|Result[5]~78_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[5]~78_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[5]~134_combout\);

-- Location: LCFF_X22_Y23_N1
\RegULASaida|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[5]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(5));

-- Location: LCCOMB_X24_Y23_N12
\Mux6|S[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[5]~9_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(5))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output7\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegULASaida|q\(5),
	datac => \RegIns|addr_Output7\(3),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[5]~9_combout\);

-- Location: LCCOMB_X23_Y23_N6
\Mux6|S[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[5]~10_combout\ = (\Mux6|S[5]~9_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[5]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[5]~9_combout\,
	datad => \ULAUnit|UlaInstance|Result[5]~78_combout\,
	combout => \Mux6|S[5]~10_combout\);

-- Location: LCCOMB_X23_Y23_N0
\PC1|addr_Output[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(5) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[5]~10_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(5),
	datac => \Mux6|S[5]~10_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(5));

-- Location: LCCOMB_X23_Y23_N2
\Mux4|S[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[5]~26_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(5)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(5),
	datad => \PC1|addr_Output\(5),
	combout => \Mux4|S[5]~26_combout\);

-- Location: LCCOMB_X23_Y21_N14
\ULAUnit|UlaInstance|Somador|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~14_combout\ = (\Mux4|S[7]~24_combout\ & ((\Mux5|S[7]~34_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~13\ & VCC)) # (!\Mux5|S[7]~34_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~13\)))) # (!\Mux4|S[7]~24_combout\ & 
-- ((\Mux5|S[7]~34_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~13\)) # (!\Mux5|S[7]~34_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~13\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~15\ = CARRY((\Mux4|S[7]~24_combout\ & (!\Mux5|S[7]~34_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~13\)) # (!\Mux4|S[7]~24_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~13\) # (!\Mux5|S[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~24_combout\,
	datab => \Mux5|S[7]~34_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~13\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~14_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~15\);

-- Location: LCCOMB_X23_Y21_N16
\ULAUnit|UlaInstance|Somador|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~16_combout\ = ((\Mux4|S[8]~23_combout\ $ (\Mux5|S[8]~32_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~15\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~17\ = CARRY((\Mux4|S[8]~23_combout\ & ((\Mux5|S[8]~32_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~15\))) # (!\Mux4|S[8]~23_combout\ & (\Mux5|S[8]~32_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[8]~23_combout\,
	datab => \Mux5|S[8]~32_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~15\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~16_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~17\);

-- Location: LCCOMB_X23_Y21_N18
\ULAUnit|UlaInstance|Somador|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~18_combout\ = (\Mux5|S[9]~30_combout\ & ((\Mux4|S[9]~22_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~17\ & VCC)) # (!\Mux4|S[9]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~17\)))) # (!\Mux5|S[9]~30_combout\ & 
-- ((\Mux4|S[9]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~17\)) # (!\Mux4|S[9]~22_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~17\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~19\ = CARRY((\Mux5|S[9]~30_combout\ & (!\Mux4|S[9]~22_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~17\)) # (!\Mux5|S[9]~30_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~17\) # (!\Mux4|S[9]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[9]~30_combout\,
	datab => \Mux4|S[9]~22_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~17\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~18_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~19\);

-- Location: LCCOMB_X23_Y21_N20
\ULAUnit|UlaInstance|Somador|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~20_combout\ = ((\Mux4|S[10]~21_combout\ $ (\Mux5|S[10]~28_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~19\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~21\ = CARRY((\Mux4|S[10]~21_combout\ & ((\Mux5|S[10]~28_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~19\))) # (!\Mux4|S[10]~21_combout\ & (\Mux5|S[10]~28_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[10]~21_combout\,
	datab => \Mux5|S[10]~28_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~19\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~20_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~21\);

-- Location: LCCOMB_X22_Y22_N12
\ULAUnit|UlaInstance|Result[10]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~87_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~20_combout\)) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~20_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~20_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~20_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~87_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y22_N29
\RegA|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(10));

-- Location: LCCOMB_X21_Y22_N18
\Mux6|S[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[10]~20_combout\ = (\Mux6|S[10]~19_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[10]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[10]~19_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[10]~88_combout\,
	combout => \Mux6|S[10]~20_combout\);

-- Location: LCCOMB_X21_Y22_N2
\PC1|addr_Output[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(10) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[10]~20_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(10),
	datac => \writeEnablePC~clkctrl_outclk\,
	datad => \Mux6|S[10]~20_combout\,
	combout => \PC1|addr_Output\(10));

-- Location: LCCOMB_X22_Y22_N28
\Mux4|S[10]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[10]~21_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(10)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(10),
	datad => \PC1|addr_Output\(10),
	combout => \Mux4|S[10]~21_combout\);

-- Location: LCCOMB_X21_Y22_N30
\ULAUnit|UlaInstance|Result[10]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~88_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[10]~87_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[10]~87_combout\ & 
-- ((\Mux4|S[10]~21_combout\) # (\Mux5|S[10]~28_combout\))) # (!\ULAUnit|UlaInstance|Result[10]~87_combout\ & (\Mux4|S[10]~21_combout\ & \Mux5|S[10]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[10]~87_combout\,
	datac => \Mux4|S[10]~21_combout\,
	datad => \Mux5|S[10]~28_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~88_combout\);

-- Location: LCCOMB_X23_Y23_N16
\ULAUnit|UlaInstance|Result[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~60_combout\ = (\RegIns|addr_Output7\(5) & !\RegIns|addr_Output7\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output7\(5),
	datad => \RegIns|addr_Output7\(4),
	combout => \ULAUnit|UlaInstance|Result[1]~60_combout\);

-- Location: LCCOMB_X24_Y22_N8
\ULAUnit|UlaInstance|Result[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~69_combout\ = (\ULAUnit|UlaInstance|Result[1]~60_combout\ & (((\ULAUnit|UlaInstance|Result[1]~61_combout\) # (!\ULAUnit|UlaControlInstance|Mux2~0_combout\)) # (!\ULAUnit|UlaControlInstance|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux0~0_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~61_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux2~0_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~60_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~69_combout\);

-- Location: LCCOMB_X21_Y22_N28
\ULAUnit|UlaInstance|Result[10]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[10]~139_combout\ = (\ULAUnit|UlaInstance|Result[10]~88_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[10]~88_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	combout => \ULAUnit|UlaInstance|Result[10]~139_combout\);

-- Location: LCCOMB_X22_Y19_N12
\Mux6|S[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[13]~26_combout\ = (\Mux6|S[13]~25_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[13]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[13]~25_combout\,
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[13]~94_combout\,
	combout => \Mux6|S[13]~26_combout\);

-- Location: LCCOMB_X22_Y19_N0
\PC1|addr_Output[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(13) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[13]~26_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(13),
	datac => \Mux6|S[13]~26_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(13));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y19_N27
\RegA|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(13));

-- Location: LCCOMB_X22_Y19_N26
\Mux4|S[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[13]~18_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(13))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(13),
	datac => \RegA|q\(13),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[13]~18_combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y22_N17
\RegB|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(12));

-- Location: LCCOMB_X20_Y21_N10
\RegIns|addr_Output5[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(12) = (\Control|currentState.S0~regout\ & (\RegIns|addr_Output5\(12))) # (!\Control|currentState.S0~regout\ & ((\i_in~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(12),
	datac => \i_in~combout\(12),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(12));

-- Location: LCCOMB_X21_Y22_N8
\Mux5|S[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[12]~23_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(10))) # (!\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(10),
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \Control|ULAFonteA~0_combout\,
	datad => \RegIns|addr_Output5\(12),
	combout => \Mux5|S[12]~23_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Mux5|S[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[12]~24_combout\ = (\Mux5|S[12]~23_combout\) # ((!\Control|ULAFonteA~0_combout\ & (!\Control|ULAFonteB[1]~0_combout\ & \RegB|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Control|ULAFonteB[1]~0_combout\,
	datac => \RegB|q\(12),
	datad => \Mux5|S[12]~23_combout\,
	combout => \Mux5|S[12]~24_combout\);

-- Location: LCCOMB_X23_Y21_N22
\ULAUnit|UlaInstance|Somador|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~22_combout\ = (\Mux5|S[11]~26_combout\ & ((\Mux4|S[11]~20_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~21\ & VCC)) # (!\Mux4|S[11]~20_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~21\)))) # (!\Mux5|S[11]~26_combout\ & 
-- ((\Mux4|S[11]~20_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~21\)) # (!\Mux4|S[11]~20_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~21\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~23\ = CARRY((\Mux5|S[11]~26_combout\ & (!\Mux4|S[11]~20_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~21\)) # (!\Mux5|S[11]~26_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~21\) # (!\Mux4|S[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[11]~26_combout\,
	datab => \Mux4|S[11]~20_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~21\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~22_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~23\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y24_N1
\RegB|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(11));

-- Location: LCCOMB_X22_Y24_N0
\Mux5|S[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[11]~26_combout\ = (\Mux5|S[11]~25_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(11) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[11]~25_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(11),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[11]~26_combout\);

-- Location: LCCOMB_X22_Y25_N8
\ULAUnit|UlaInstance|Result[11]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~89_combout\ = (\Mux4|S[11]~20_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[11]~26_combout\)))) # (!\Mux4|S[11]~20_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[11]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[11]~20_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux5|S[11]~26_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~89_combout\);

-- Location: LCCOMB_X22_Y25_N20
\ULAUnit|UlaInstance|Result[11]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~90_combout\ = (\ULAUnit|UlaInstance|Result[11]~89_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~22_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[11]~89_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~22_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~22_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~22_combout\,
	datac => \ULAUnit|UlaInstance|Result[11]~89_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~90_combout\);

-- Location: LCCOMB_X22_Y24_N4
\RegIns|addr_Output5[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(9) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(9)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(9),
	datac => \RegIns|addr_Output5\(9),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(9));

-- Location: LCCOMB_X22_Y25_N30
\ULAUnit|UlaInstance|Result[11]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[11]~140_combout\ = (\ULAUnit|UlaInstance|Result[11]~90_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[11]~90_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[11]~140_combout\);

-- Location: LCFF_X22_Y25_N31
\RegULASaida|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[11]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(11));

-- Location: LCCOMB_X22_Y25_N18
\Mux6|S[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[11]~21_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(11)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output5\(9),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(11),
	combout => \Mux6|S[11]~21_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Mux6|S[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[11]~22_combout\ = (\Mux6|S[11]~21_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[11]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[11]~90_combout\,
	datad => \Mux6|S[11]~21_combout\,
	combout => \Mux6|S[11]~22_combout\);

-- Location: LCCOMB_X22_Y25_N0
\PC1|addr_Output[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(11) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[11]~22_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(11),
	datac => \Mux6|S[11]~22_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(11));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y25_N7
\RegA|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(11));

-- Location: LCCOMB_X22_Y25_N6
\Mux4|S[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[11]~20_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(11))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(11),
	datac => \RegA|q\(11),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[11]~20_combout\);

-- Location: LCCOMB_X21_Y21_N12
\ULAUnit|UlaInstance|Somador|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~12_combout\ = ((\Mux5|S[6]~36_combout\ $ (\Mux4|S[6]~25_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~11\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~13\ = CARRY((\Mux5|S[6]~36_combout\ & (\Mux4|S[6]~25_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~11\)) # (!\Mux5|S[6]~36_combout\ & ((\Mux4|S[6]~25_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[6]~36_combout\,
	datab => \Mux4|S[6]~25_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~11\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~12_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~13\);

-- Location: LCCOMB_X22_Y23_N4
\ULAUnit|UlaInstance|Result[6]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~79_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~12_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~12_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~12_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~12_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~79_combout\);

-- Location: LCCOMB_X23_Y23_N10
\ULAUnit|UlaInstance|Result[6]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~80_combout\ = (\Mux4|S[6]~25_combout\ & ((\ULAUnit|UlaInstance|Result[6]~79_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[6]~36_combout\)))) # (!\Mux4|S[6]~25_combout\ & 
-- (\ULAUnit|UlaInstance|Result[6]~79_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[6]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[6]~25_combout\,
	datab => \ULAUnit|UlaInstance|Result[6]~79_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux5|S[6]~36_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~80_combout\);

-- Location: LCCOMB_X23_Y23_N8
\ULAUnit|UlaInstance|Result[6]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[6]~135_combout\ = (\ULAUnit|UlaInstance|Result[6]~80_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[6]~80_combout\,
	combout => \ULAUnit|UlaInstance|Result[6]~135_combout\);

-- Location: LCFF_X23_Y23_N9
\RegULASaida|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[6]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(6));

-- Location: LCCOMB_X24_Y23_N30
\Mux6|S[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[6]~11_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(6)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output7\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output7\(4),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(6),
	combout => \Mux6|S[6]~11_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Mux6|S[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[6]~12_combout\ = (\Mux6|S[6]~11_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[6]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[6]~11_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[6]~80_combout\,
	combout => \Mux6|S[6]~12_combout\);

-- Location: LCCOMB_X22_Y23_N28
\PC1|addr_Output[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(6) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[6]~12_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(6),
	datac => \Mux6|S[6]~12_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y23_N31
\RegA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(6));

-- Location: LCCOMB_X22_Y23_N30
\Mux4|S[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[6]~25_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(6))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(6),
	datac => \RegA|q\(6),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[6]~25_combout\);

-- Location: LCCOMB_X21_Y21_N14
\ULAUnit|UlaInstance|Somador|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~14_combout\ = (\Mux4|S[7]~24_combout\ & ((\Mux5|S[7]~34_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~13\)) # (!\Mux5|S[7]~34_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~13\ & VCC)))) # (!\Mux4|S[7]~24_combout\ & 
-- ((\Mux5|S[7]~34_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~13\) # (GND))) # (!\Mux5|S[7]~34_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~13\))))
-- \ULAUnit|UlaInstance|Somador|Add1~15\ = CARRY((\Mux4|S[7]~24_combout\ & (\Mux5|S[7]~34_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~13\)) # (!\Mux4|S[7]~24_combout\ & ((\Mux5|S[7]~34_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~24_combout\,
	datab => \Mux5|S[7]~34_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~13\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~14_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~15\);

-- Location: LCCOMB_X21_Y21_N18
\ULAUnit|UlaInstance|Somador|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~18_combout\ = (\Mux5|S[9]~30_combout\ & ((\Mux4|S[9]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~17\)) # (!\Mux4|S[9]~22_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~17\) # (GND))))) # (!\Mux5|S[9]~30_combout\ & 
-- ((\Mux4|S[9]~22_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~17\ & VCC)) # (!\Mux4|S[9]~22_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~17\))))
-- \ULAUnit|UlaInstance|Somador|Add1~19\ = CARRY((\Mux5|S[9]~30_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~17\) # (!\Mux4|S[9]~22_combout\))) # (!\Mux5|S[9]~30_combout\ & (!\Mux4|S[9]~22_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[9]~30_combout\,
	datab => \Mux4|S[9]~22_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~17\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~18_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~19\);

-- Location: LCCOMB_X21_Y21_N26
\ULAUnit|UlaInstance|Somador|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~26_combout\ = (\Mux5|S[13]~22_combout\ & ((\Mux4|S[13]~18_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~25\)) # (!\Mux4|S[13]~18_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~25\) # (GND))))) # (!\Mux5|S[13]~22_combout\ 
-- & ((\Mux4|S[13]~18_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~25\ & VCC)) # (!\Mux4|S[13]~18_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~25\))))
-- \ULAUnit|UlaInstance|Somador|Add1~27\ = CARRY((\Mux5|S[13]~22_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~25\) # (!\Mux4|S[13]~18_combout\))) # (!\Mux5|S[13]~22_combout\ & (!\Mux4|S[13]~18_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[13]~22_combout\,
	datab => \Mux4|S[13]~18_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~25\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~26_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~27\);

-- Location: LCCOMB_X22_Y19_N20
\ULAUnit|UlaInstance|Result[13]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~93_combout\ = (\Mux5|S[13]~22_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux4|S[13]~18_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[13]~22_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[13]~18_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[13]~22_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datac => \Mux4|S[13]~18_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~93_combout\);

-- Location: LCCOMB_X22_Y19_N24
\ULAUnit|UlaInstance|Result[13]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~94_combout\ = (\ULAUnit|UlaInstance|Result[13]~93_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~26_combout\) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[13]~93_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~26_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~26_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~26_combout\,
	datac => \ULAUnit|UlaInstance|Result[13]~93_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~94_combout\);

-- Location: LCCOMB_X23_Y22_N26
\ULAUnit|UlaInstance|Result[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~70_combout\ = (\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~70_combout\);

-- Location: LCCOMB_X20_Y21_N18
\Mux5|S[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[14]~19_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(12)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(14),
	datab => \RegIns|addr_Output5\(12),
	datac => \Control|ULAFonteA~0_combout\,
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[14]~19_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y21_N31
\RegB|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(14));

-- Location: LCCOMB_X20_Y21_N30
\Mux5|S[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[14]~20_combout\ = (\Mux5|S[14]~19_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(14) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datab => \Mux5|S[14]~19_combout\,
	datac => \RegB|q\(14),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[14]~20_combout\);

-- Location: LCCOMB_X21_Y21_N28
\ULAUnit|UlaInstance|Somador|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~28_combout\ = ((\Mux4|S[14]~17_combout\ $ (\Mux5|S[14]~20_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~27\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~29\ = CARRY((\Mux4|S[14]~17_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~27\) # (!\Mux5|S[14]~20_combout\))) # (!\Mux4|S[14]~17_combout\ & (!\Mux5|S[14]~20_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[14]~17_combout\,
	datab => \Mux5|S[14]~20_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~27\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~28_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~29\);

-- Location: LCCOMB_X20_Y21_N6
\Mux6|S[14]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[14]~27_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(14))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(14),
	datab => \RegIns|addr_Output5\(12),
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[14]~27_combout\);

-- Location: LCCOMB_X20_Y21_N8
\Mux6|S[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[14]~28_combout\ = (\Mux6|S[14]~27_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[14]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[14]~27_combout\,
	datad => \ULAUnit|UlaInstance|Result[14]~96_combout\,
	combout => \Mux6|S[14]~28_combout\);

-- Location: LCCOMB_X20_Y21_N0
\PC1|addr_Output[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(14) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[14]~28_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(14),
	datac => \Mux6|S[14]~28_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(14));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y21_N13
\RegA|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(14));

-- Location: LCCOMB_X20_Y21_N12
\Mux4|S[14]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[14]~17_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(14))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(14),
	datac => \RegA|q\(14),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[14]~17_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y24_N11
\RegB|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(13));

-- Location: LCCOMB_X22_Y24_N10
\Mux5|S[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[13]~22_combout\ = (\Mux5|S[13]~21_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(13) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[13]~21_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(13),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[13]~22_combout\);

-- Location: LCCOMB_X23_Y21_N24
\ULAUnit|UlaInstance|Somador|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~24_combout\ = ((\Mux4|S[12]~19_combout\ $ (\Mux5|S[12]~24_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~23\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~25\ = CARRY((\Mux4|S[12]~19_combout\ & ((\Mux5|S[12]~24_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~23\))) # (!\Mux4|S[12]~19_combout\ & (\Mux5|S[12]~24_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[12]~19_combout\,
	datab => \Mux5|S[12]~24_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~23\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~24_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~25\);

-- Location: LCCOMB_X23_Y21_N28
\ULAUnit|UlaInstance|Somador|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~28_combout\ = ((\Mux5|S[14]~20_combout\ $ (\Mux4|S[14]~17_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~27\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~29\ = CARRY((\Mux5|S[14]~20_combout\ & ((\Mux4|S[14]~17_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~27\))) # (!\Mux5|S[14]~20_combout\ & (\Mux4|S[14]~17_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[14]~20_combout\,
	datab => \Mux4|S[14]~17_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~27\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~28_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~29\);

-- Location: LCCOMB_X20_Y21_N4
\ULAUnit|UlaInstance|Result[14]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~95_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~28_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~28_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~28_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~28_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~95_combout\);

-- Location: LCCOMB_X20_Y21_N14
\ULAUnit|UlaInstance|Result[14]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~96_combout\ = (\Mux4|S[14]~17_combout\ & ((\ULAUnit|UlaInstance|Result[14]~95_combout\) # ((\Mux5|S[14]~20_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[14]~17_combout\ & 
-- (\ULAUnit|UlaInstance|Result[14]~95_combout\ & ((\Mux5|S[14]~20_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[14]~17_combout\,
	datab => \Mux5|S[14]~20_combout\,
	datac => \ULAUnit|UlaInstance|Result[14]~95_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~96_combout\);

-- Location: LCCOMB_X21_Y22_N24
\writeEnablePC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~0_combout\ = ((!\ULAUnit|UlaInstance|Result[15]~98_combout\ & (!\ULAUnit|UlaInstance|Result[13]~94_combout\ & !\ULAUnit|UlaInstance|Result[14]~96_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[15]~98_combout\,
	datab => \ULAUnit|UlaInstance|Result[13]~94_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datad => \ULAUnit|UlaInstance|Result[14]~96_combout\,
	combout => \writeEnablePC~0_combout\);

-- Location: LCCOMB_X21_Y22_N26
\writeEnablePC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~1_combout\ = (!\ULAUnit|UlaInstance|Result[12]~141_combout\ & (!\ULAUnit|UlaInstance|Result[10]~139_combout\ & (\writeEnablePC~0_combout\ & !\ULAUnit|UlaInstance|Result[11]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[12]~141_combout\,
	datab => \ULAUnit|UlaInstance|Result[10]~139_combout\,
	datac => \writeEnablePC~0_combout\,
	datad => \ULAUnit|UlaInstance|Result[11]~140_combout\,
	combout => \writeEnablePC~1_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N7
\RegB|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(24));

-- Location: LCCOMB_X22_Y20_N14
\RegIns|addr_Output5[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(15) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(15)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(15),
	datac => \RegIns|addr_Output5\(15),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(15));

-- Location: LCCOMB_X22_Y20_N6
\Mux5|S[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[24]~7_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(24))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(24),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[24]~7_combout\);

-- Location: LCCOMB_X25_Y23_N16
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

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N11
\RegB|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(23));

-- Location: LCCOMB_X22_Y20_N10
\Mux5|S[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[23]~8_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(23) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(23) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(23),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[23]~8_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N19
\RegB|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(22));

-- Location: LCCOMB_X22_Y20_N18
\Mux5|S[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[22]~9_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(22))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(22),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[22]~9_combout\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N13
\RegB|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(21));

-- Location: LCCOMB_X22_Y20_N12
\Mux5|S[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[21]~10_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(21) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(21) & !\Control|ULAFonteB~1_combout\))))

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
	combout => \Mux5|S[21]~10_combout\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N9
\RegB|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(20));

-- Location: LCCOMB_X22_Y20_N8
\Mux5|S[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[20]~11_combout\ = (\RegIns|addr_Output5\(15) & ((\Control|ULAFonteB[1]~0_combout\) # ((\RegB|q\(20) & !\Control|ULAFonteB~1_combout\)))) # (!\RegIns|addr_Output5\(15) & (((\RegB|q\(20) & !\Control|ULAFonteB~1_combout\))))

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
	combout => \Mux5|S[20]~11_combout\);

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N21
\RegB|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(19));

-- Location: LCCOMB_X22_Y20_N20
\Mux5|S[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[19]~12_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(19) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(19) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(19),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[19]~12_combout\);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N25
\RegB|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(18));

-- Location: LCCOMB_X22_Y20_N24
\Mux5|S[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[18]~13_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(18) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(18) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(18),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[18]~13_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N29
\RegB|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(17));

-- Location: LCCOMB_X22_Y20_N28
\Mux5|S[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[17]~14_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(17) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(17) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(17),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[17]~14_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y22_N21
\RegA|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(16));

-- Location: LCCOMB_X20_Y22_N20
\Mux4|S[16]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[16]~15_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(16))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(16),
	datac => \RegA|q\(16),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[16]~15_combout\);

-- Location: LCCOMB_X22_Y24_N28
\RegIns|addr_Output5[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(13) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(13)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(13),
	datac => \RegIns|addr_Output5\(13),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(13));

-- Location: LCCOMB_X22_Y24_N14
\Mux5|S[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[15]~17_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\Control|ULAFonteA~0_combout\ & ((\RegIns|addr_Output5\(13)))) # (!\Control|ULAFonteA~0_combout\ & (\RegIns|addr_Output5\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(15),
	datab => \RegIns|addr_Output5\(13),
	datac => \Control|ULAFonteB[1]~0_combout\,
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[15]~17_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y24_N23
\RegB|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(15));

-- Location: LCCOMB_X22_Y24_N22
\Mux5|S[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[15]~18_combout\ = (\Mux5|S[15]~17_combout\) # ((!\Control|ULAFonteB[1]~0_combout\ & (\RegB|q\(15) & !\Control|ULAFonteA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Mux5|S[15]~17_combout\,
	datac => \RegB|q\(15),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux5|S[15]~18_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ULAUnit|UlaInstance|Somador|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~32_combout\ = ((\Mux5|S[16]~16_combout\ $ (\Mux4|S[16]~15_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~31\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~33\ = CARRY((\Mux5|S[16]~16_combout\ & (\Mux4|S[16]~15_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~31\)) # (!\Mux5|S[16]~16_combout\ & ((\Mux4|S[16]~15_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[16]~16_combout\,
	datab => \Mux4|S[16]~15_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~31\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~32_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~33\);

-- Location: LCCOMB_X21_Y20_N4
\ULAUnit|UlaInstance|Somador|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~36_combout\ = ((\Mux4|S[18]~13_combout\ $ (\Mux5|S[18]~13_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~35\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~37\ = CARRY((\Mux4|S[18]~13_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~35\) # (!\Mux5|S[18]~13_combout\))) # (!\Mux4|S[18]~13_combout\ & (!\Mux5|S[18]~13_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[18]~13_combout\,
	datab => \Mux5|S[18]~13_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~35\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~36_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~37\);

-- Location: LCCOMB_X21_Y20_N6
\ULAUnit|UlaInstance|Somador|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~38_combout\ = (\Mux4|S[19]~12_combout\ & ((\Mux5|S[19]~12_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~37\)) # (!\Mux5|S[19]~12_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~37\ & VCC)))) # (!\Mux4|S[19]~12_combout\ & 
-- ((\Mux5|S[19]~12_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~37\) # (GND))) # (!\Mux5|S[19]~12_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~37\))))
-- \ULAUnit|UlaInstance|Somador|Add1~39\ = CARRY((\Mux4|S[19]~12_combout\ & (\Mux5|S[19]~12_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~37\)) # (!\Mux4|S[19]~12_combout\ & ((\Mux5|S[19]~12_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[19]~12_combout\,
	datab => \Mux5|S[19]~12_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~37\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~38_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~39\);

-- Location: LCCOMB_X21_Y20_N8
\ULAUnit|UlaInstance|Somador|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~40_combout\ = ((\Mux4|S[20]~11_combout\ $ (\Mux5|S[20]~11_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~39\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~41\ = CARRY((\Mux4|S[20]~11_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~39\) # (!\Mux5|S[20]~11_combout\))) # (!\Mux4|S[20]~11_combout\ & (!\Mux5|S[20]~11_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[20]~11_combout\,
	datab => \Mux5|S[20]~11_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~39\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~40_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~41\);

-- Location: LCCOMB_X21_Y20_N10
\ULAUnit|UlaInstance|Somador|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~42_combout\ = (\Mux4|S[21]~10_combout\ & ((\Mux5|S[21]~10_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~41\)) # (!\Mux5|S[21]~10_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~41\ & VCC)))) # (!\Mux4|S[21]~10_combout\ & 
-- ((\Mux5|S[21]~10_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~41\) # (GND))) # (!\Mux5|S[21]~10_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~41\))))
-- \ULAUnit|UlaInstance|Somador|Add1~43\ = CARRY((\Mux4|S[21]~10_combout\ & (\Mux5|S[21]~10_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~41\)) # (!\Mux4|S[21]~10_combout\ & ((\Mux5|S[21]~10_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[21]~10_combout\,
	datab => \Mux5|S[21]~10_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~41\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~42_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~43\);

-- Location: LCCOMB_X21_Y20_N12
\ULAUnit|UlaInstance|Somador|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~44_combout\ = ((\Mux4|S[22]~9_combout\ $ (\Mux5|S[22]~9_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~43\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~45\ = CARRY((\Mux4|S[22]~9_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~43\) # (!\Mux5|S[22]~9_combout\))) # (!\Mux4|S[22]~9_combout\ & (!\Mux5|S[22]~9_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[22]~9_combout\,
	datab => \Mux5|S[22]~9_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~43\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~44_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~45\);

-- Location: LCCOMB_X21_Y20_N14
\ULAUnit|UlaInstance|Somador|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~46_combout\ = (\Mux4|S[23]~8_combout\ & ((\Mux5|S[23]~8_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~45\)) # (!\Mux5|S[23]~8_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~45\ & VCC)))) # (!\Mux4|S[23]~8_combout\ & 
-- ((\Mux5|S[23]~8_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~45\) # (GND))) # (!\Mux5|S[23]~8_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~45\))))
-- \ULAUnit|UlaInstance|Somador|Add1~47\ = CARRY((\Mux4|S[23]~8_combout\ & (\Mux5|S[23]~8_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~45\)) # (!\Mux4|S[23]~8_combout\ & ((\Mux5|S[23]~8_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[23]~8_combout\,
	datab => \Mux5|S[23]~8_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~45\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~46_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~47\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y22_N11
\RegA|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(21));

-- Location: LCCOMB_X20_Y22_N10
\Mux4|S[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[21]~10_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(21))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(21),
	datac => \RegA|q\(21),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[21]~10_combout\);

-- Location: LCCOMB_X18_Y20_N4
\ULAUnit|UlaInstance|Result[20]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~107_combout\ = (\Mux5|S[20]~11_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux4|S[20]~11_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[20]~11_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[20]~11_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[20]~11_combout\,
	datab => \Mux4|S[20]~11_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~107_combout\);

-- Location: LCCOMB_X18_Y20_N0
\PC1|addr_Output[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(19) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\Mux6|S[19]~38_combout\)) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\PC1|addr_Output\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[19]~38_combout\,
	datab => \PC1|addr_Output\(19),
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(19));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y20_N31
\RegA|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(19));

-- Location: LCCOMB_X18_Y20_N30
\Mux4|S[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[19]~12_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(19))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(19),
	datac => \RegA|q\(19),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[19]~12_combout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y21_N23
\RegB|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(16));

-- Location: LCCOMB_X20_Y21_N22
\Mux5|S[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[16]~16_combout\ = (\Mux5|S[16]~15_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(16) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[16]~15_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(16),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[16]~16_combout\);

-- Location: LCCOMB_X23_Y21_N30
\ULAUnit|UlaInstance|Somador|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~30_combout\ = (\Mux5|S[15]~18_combout\ & ((\Mux4|S[15]~16_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~29\ & VCC)) # (!\Mux4|S[15]~16_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~29\)))) # (!\Mux5|S[15]~18_combout\ & 
-- ((\Mux4|S[15]~16_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~29\)) # (!\Mux4|S[15]~16_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~29\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~31\ = CARRY((\Mux5|S[15]~18_combout\ & (!\Mux4|S[15]~16_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~29\)) # (!\Mux5|S[15]~18_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~29\) # (!\Mux4|S[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[15]~18_combout\,
	datab => \Mux4|S[15]~16_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~29\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~30_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~31\);

-- Location: LCCOMB_X21_Y22_N12
\ULAUnit|UlaInstance|Result[15]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~97_combout\ = (\Mux5|S[15]~18_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux4|S[15]~16_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[15]~18_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[15]~16_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[15]~18_combout\,
	datab => \Mux4|S[15]~16_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~97_combout\);

-- Location: LCCOMB_X20_Y22_N12
\ULAUnit|UlaInstance|Result[15]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~98_combout\ = (\ULAUnit|UlaInstance|Result[15]~97_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~30_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[15]~97_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~30_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~30_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~30_combout\,
	datac => \ULAUnit|UlaInstance|Result[15]~97_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~98_combout\);

-- Location: LCCOMB_X20_Y22_N0
\ULAUnit|UlaInstance|Result[15]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[15]~144_combout\ = (\ULAUnit|UlaInstance|Result[15]~98_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[15]~98_combout\,
	combout => \ULAUnit|UlaInstance|Result[15]~144_combout\);

-- Location: LCFF_X20_Y22_N1
\RegULASaida|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[15]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(15));

-- Location: LCCOMB_X21_Y23_N26
\Mux6|S[15]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[15]~29_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(15)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output5\(13),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(15),
	combout => \Mux6|S[15]~29_combout\);

-- Location: LCCOMB_X20_Y22_N14
\Mux6|S[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[15]~30_combout\ = (\Mux6|S[15]~29_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[15]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[15]~29_combout\,
	datad => \ULAUnit|UlaInstance|Result[15]~98_combout\,
	combout => \Mux6|S[15]~30_combout\);

-- Location: LCCOMB_X20_Y22_N30
\PC1|addr_Output[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(15) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[15]~30_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(15),
	datac => \Mux6|S[15]~30_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(15));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y22_N17
\RegA|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(15));

-- Location: LCCOMB_X20_Y22_N16
\Mux4|S[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[15]~16_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(15))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(15),
	datac => \RegA|q\(15),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[15]~16_combout\);

-- Location: LCCOMB_X23_Y20_N0
\ULAUnit|UlaInstance|Somador|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~32_combout\ = ((\Mux4|S[16]~15_combout\ $ (\Mux5|S[16]~16_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~31\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~33\ = CARRY((\Mux4|S[16]~15_combout\ & ((\Mux5|S[16]~16_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~31\))) # (!\Mux4|S[16]~15_combout\ & (\Mux5|S[16]~16_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[16]~15_combout\,
	datab => \Mux5|S[16]~16_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~31\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~32_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~33\);

-- Location: LCCOMB_X23_Y20_N2
\ULAUnit|UlaInstance|Somador|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~34_combout\ = (\Mux4|S[17]~14_combout\ & ((\Mux5|S[17]~14_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~33\ & VCC)) # (!\Mux5|S[17]~14_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~33\)))) # (!\Mux4|S[17]~14_combout\ & 
-- ((\Mux5|S[17]~14_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~33\)) # (!\Mux5|S[17]~14_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~33\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~35\ = CARRY((\Mux4|S[17]~14_combout\ & (!\Mux5|S[17]~14_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~33\)) # (!\Mux4|S[17]~14_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~33\) # (!\Mux5|S[17]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[17]~14_combout\,
	datab => \Mux5|S[17]~14_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~33\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~34_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~35\);

-- Location: LCCOMB_X23_Y20_N8
\ULAUnit|UlaInstance|Somador|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~40_combout\ = ((\Mux5|S[20]~11_combout\ $ (\Mux4|S[20]~11_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~39\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~41\ = CARRY((\Mux5|S[20]~11_combout\ & ((\Mux4|S[20]~11_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~39\))) # (!\Mux5|S[20]~11_combout\ & (\Mux4|S[20]~11_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[20]~11_combout\,
	datab => \Mux4|S[20]~11_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~39\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~40_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~41\);

-- Location: LCCOMB_X18_Y20_N28
\ULAUnit|UlaInstance|Result[20]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~108_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[20]~107_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~40_combout\))) # (!\ULAUnit|UlaInstance|Result[20]~107_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~40_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[20]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[20]~107_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~40_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~40_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~108_combout\);

-- Location: LCCOMB_X18_Y20_N8
\Mux6|S[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[20]~40_combout\ = (\Mux6|S[20]~39_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[20]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[20]~39_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[20]~108_combout\,
	combout => \Mux6|S[20]~40_combout\);

-- Location: LCCOMB_X18_Y20_N18
\PC1|addr_Output[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(20) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[20]~40_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(20),
	datac => \Mux6|S[20]~40_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(20));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y20_N15
\RegA|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(20));

-- Location: LCCOMB_X18_Y20_N14
\Mux4|S[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[20]~11_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(20))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(20),
	datac => \RegA|q\(20),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[20]~11_combout\);

-- Location: LCCOMB_X23_Y20_N10
\ULAUnit|UlaInstance|Somador|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~42_combout\ = (\Mux5|S[21]~10_combout\ & ((\Mux4|S[21]~10_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~41\ & VCC)) # (!\Mux4|S[21]~10_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~41\)))) # (!\Mux5|S[21]~10_combout\ & 
-- ((\Mux4|S[21]~10_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~41\)) # (!\Mux4|S[21]~10_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~41\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~43\ = CARRY((\Mux5|S[21]~10_combout\ & (!\Mux4|S[21]~10_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~41\)) # (!\Mux5|S[21]~10_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~41\) # (!\Mux4|S[21]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[21]~10_combout\,
	datab => \Mux4|S[21]~10_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~41\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~42_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~43\);

-- Location: LCCOMB_X23_Y20_N12
\ULAUnit|UlaInstance|Somador|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~44_combout\ = ((\Mux4|S[22]~9_combout\ $ (\Mux5|S[22]~9_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~43\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~45\ = CARRY((\Mux4|S[22]~9_combout\ & ((\Mux5|S[22]~9_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~43\))) # (!\Mux4|S[22]~9_combout\ & (\Mux5|S[22]~9_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[22]~9_combout\,
	datab => \Mux5|S[22]~9_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~43\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~44_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~45\);

-- Location: LCCOMB_X23_Y20_N14
\ULAUnit|UlaInstance|Somador|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~46_combout\ = (\Mux5|S[23]~8_combout\ & ((\Mux4|S[23]~8_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~45\ & VCC)) # (!\Mux4|S[23]~8_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~45\)))) # (!\Mux5|S[23]~8_combout\ & 
-- ((\Mux4|S[23]~8_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~45\)) # (!\Mux4|S[23]~8_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~45\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~47\ = CARRY((\Mux5|S[23]~8_combout\ & (!\Mux4|S[23]~8_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~45\)) # (!\Mux5|S[23]~8_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~45\) # (!\Mux4|S[23]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[23]~8_combout\,
	datab => \Mux4|S[23]~8_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~45\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~46_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~47\);

-- Location: LCCOMB_X25_Y20_N10
\ULAUnit|UlaInstance|Result[23]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~114_combout\ = (\ULAUnit|UlaInstance|Result[23]~113_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~46_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[23]~113_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[23]~113_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~46_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~46_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~114_combout\);

-- Location: LCCOMB_X25_Y20_N2
\ULAUnit|UlaInstance|Result[23]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[23]~152_combout\ = (\ULAUnit|UlaInstance|Result[23]~114_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datab => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[23]~114_combout\,
	combout => \ULAUnit|UlaInstance|Result[23]~152_combout\);

-- Location: LCFF_X25_Y20_N3
\RegULASaida|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[23]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(23));

-- Location: LCCOMB_X25_Y20_N6
\Mux6|S[23]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[23]~45_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(23)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegIns|addr_Output6\(21),
	datac => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(23),
	combout => \Mux6|S[23]~45_combout\);

-- Location: LCCOMB_X25_Y20_N8
\Mux6|S[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[23]~46_combout\ = (\Mux6|S[23]~45_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[23]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[23]~45_combout\,
	datad => \ULAUnit|UlaInstance|Result[23]~114_combout\,
	combout => \Mux6|S[23]~46_combout\);

-- Location: LCCOMB_X25_Y20_N18
\PC1|addr_Output[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(23) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[23]~46_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(23),
	datac => \Mux6|S[23]~46_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(23));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y20_N29
\RegA|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(23));

-- Location: LCCOMB_X25_Y20_N28
\Mux4|S[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[23]~8_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(23))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(23),
	datac => \RegA|q\(23),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[23]~8_combout\);

-- Location: LCCOMB_X23_Y20_N16
\ULAUnit|UlaInstance|Somador|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~48_combout\ = ((\Mux4|S[24]~7_combout\ $ (\Mux5|S[24]~7_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~47\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~49\ = CARRY((\Mux4|S[24]~7_combout\ & ((\Mux5|S[24]~7_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~47\))) # (!\Mux4|S[24]~7_combout\ & (\Mux5|S[24]~7_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[24]~7_combout\,
	datab => \Mux5|S[24]~7_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~47\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~48_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~49\);

-- Location: LCCOMB_X21_Y19_N28
\ULAUnit|UlaInstance|Result[24]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~115_combout\ = (\Mux4|S[24]~7_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux5|S[24]~7_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[24]~7_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux5|S[24]~7_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[24]~7_combout\,
	datab => \Mux5|S[24]~7_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~115_combout\);

-- Location: LCCOMB_X22_Y19_N18
\ULAUnit|UlaInstance|Result[24]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~116_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[24]~115_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~48_combout\)) # (!\ULAUnit|UlaInstance|Result[24]~115_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~48_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[24]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~48_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~48_combout\,
	datad => \ULAUnit|UlaInstance|Result[24]~115_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~116_combout\);

-- Location: LCCOMB_X22_Y19_N28
\ULAUnit|UlaInstance|Result[24]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[24]~153_combout\ = (\ULAUnit|UlaInstance|Result[24]~116_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[24]~116_combout\,
	combout => \ULAUnit|UlaInstance|Result[24]~153_combout\);

-- Location: LCCOMB_X21_Y19_N2
\writeEnablePC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~2_combout\ = (!\ULAUnit|UlaInstance|Result[31]~129_combout\ & (\writeEnablePC~1_combout\ & !\ULAUnit|UlaInstance|Result[24]~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[31]~129_combout\,
	datac => \writeEnablePC~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[24]~153_combout\,
	combout => \writeEnablePC~2_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y20_N31
\RegA|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(17));

-- Location: LCCOMB_X20_Y20_N30
\Mux4|S[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[17]~14_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(17))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(17),
	datac => \RegA|q\(17),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[17]~14_combout\);

-- Location: LCCOMB_X20_Y20_N4
\ULAUnit|UlaInstance|Result[17]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~101_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[17]~14_combout\ & ((\Mux5|S[17]~14_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux4|S[17]~14_combout\ & (\Mux5|S[17]~14_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[17]~14_combout\,
	datac => \Mux5|S[17]~14_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~101_combout\);

-- Location: LCCOMB_X20_Y20_N28
\ULAUnit|UlaInstance|Result[17]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~102_combout\ = (\ULAUnit|UlaInstance|Result[17]~101_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~34_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[17]~101_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~34_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~34_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~34_combout\,
	datac => \ULAUnit|UlaInstance|Result[17]~101_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~102_combout\);

-- Location: LCCOMB_X20_Y20_N10
\ULAUnit|UlaInstance|Result[17]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[17]~146_combout\ = (\ULAUnit|UlaInstance|Result[17]~102_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[17]~102_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[17]~146_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Mux6|S[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[18]~36_combout\ = (\Mux6|S[18]~35_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[18]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[18]~35_combout\,
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[18]~104_combout\,
	combout => \Mux6|S[18]~36_combout\);

-- Location: LCCOMB_X22_Y19_N30
\PC1|addr_Output[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(18) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[18]~36_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(18),
	datac => \Mux6|S[18]~36_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(18));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y19_N23
\RegA|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(18));

-- Location: LCCOMB_X22_Y19_N22
\Mux4|S[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[18]~13_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(18))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(18),
	datac => \RegA|q\(18),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[18]~13_combout\);

-- Location: LCCOMB_X22_Y19_N16
\ULAUnit|UlaInstance|Result[18]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~103_combout\ = (\ULAUnit|UlaInstance|Result[1]~66_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~36_combout\) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~36_combout\ & (\ULAUnit|UlaControlInstance|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~36_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~36_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~103_combout\);

-- Location: LCCOMB_X22_Y19_N14
\ULAUnit|UlaInstance|Result[18]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~104_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[18]~103_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[18]~13_combout\ & 
-- ((\ULAUnit|UlaInstance|Result[18]~103_combout\) # (\Mux5|S[18]~13_combout\))) # (!\Mux4|S[18]~13_combout\ & (\ULAUnit|UlaInstance|Result[18]~103_combout\ & \Mux5|S[18]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[18]~13_combout\,
	datac => \ULAUnit|UlaInstance|Result[18]~103_combout\,
	datad => \Mux5|S[18]~13_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~104_combout\);

-- Location: LCCOMB_X22_Y19_N10
\ULAUnit|UlaInstance|Result[18]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[18]~147_combout\ = (\ULAUnit|UlaInstance|Result[18]~104_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[18]~104_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[18]~147_combout\);

-- Location: LCCOMB_X20_Y22_N4
\ULAUnit|UlaInstance|Result[16]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~99_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~32_combout\)) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~32_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~32_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~32_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~99_combout\);

-- Location: LCCOMB_X20_Y22_N6
\ULAUnit|UlaInstance|Result[16]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~100_combout\ = (\Mux4|S[16]~15_combout\ & ((\ULAUnit|UlaInstance|Result[16]~99_combout\) # ((\Mux5|S[16]~16_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[16]~15_combout\ & 
-- (\ULAUnit|UlaInstance|Result[16]~99_combout\ & ((\Mux5|S[16]~16_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[16]~15_combout\,
	datab => \Mux5|S[16]~16_combout\,
	datac => \ULAUnit|UlaInstance|Result[16]~99_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~100_combout\);

-- Location: LCCOMB_X20_Y22_N18
\ULAUnit|UlaInstance|Result[16]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[16]~145_combout\ = (\ULAUnit|UlaInstance|Result[16]~100_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[16]~100_combout\,
	combout => \ULAUnit|UlaInstance|Result[16]~145_combout\);

-- Location: LCCOMB_X19_Y22_N26
\writeEnablePC~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~5_combout\ = (\writeEnablePC~4_combout\ & (!\ULAUnit|UlaInstance|Result[17]~146_combout\ & (!\ULAUnit|UlaInstance|Result[18]~147_combout\ & !\ULAUnit|UlaInstance|Result[16]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnablePC~4_combout\,
	datab => \ULAUnit|UlaInstance|Result[17]~146_combout\,
	datac => \ULAUnit|UlaInstance|Result[18]~147_combout\,
	datad => \ULAUnit|UlaInstance|Result[16]~145_combout\,
	combout => \writeEnablePC~5_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y20_N21
\RegA|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(27));

-- Location: LCCOMB_X20_Y20_N20
\Mux4|S[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[27]~4_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(27))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(27),
	datac => \RegA|q\(27),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[27]~4_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N17
\RegB|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(26));

-- Location: LCCOMB_X22_Y20_N16
\Mux5|S[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[26]~5_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(26))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(26),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[26]~5_combout\);

-- Location: LCCOMB_X21_Y19_N4
\ULAUnit|UlaInstance|Result[26]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~119_combout\ = (\Mux4|S[26]~5_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux5|S[26]~5_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux4|S[26]~5_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux5|S[26]~5_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[26]~5_combout\,
	datab => \Mux5|S[26]~5_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~119_combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y20_N9
\RegA|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(25));

-- Location: LCCOMB_X20_Y20_N8
\Mux4|S[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[25]~6_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(25))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(25),
	datac => \RegA|q\(25),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[25]~6_combout\);

-- Location: LCCOMB_X23_Y20_N20
\ULAUnit|UlaInstance|Somador|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~52_combout\ = ((\Mux4|S[26]~5_combout\ $ (\Mux5|S[26]~5_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~51\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~53\ = CARRY((\Mux4|S[26]~5_combout\ & ((\Mux5|S[26]~5_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~51\))) # (!\Mux4|S[26]~5_combout\ & (\Mux5|S[26]~5_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[26]~5_combout\,
	datab => \Mux5|S[26]~5_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~51\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~52_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~53\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N31
\RegB|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(25));

-- Location: LCCOMB_X22_Y20_N30
\Mux5|S[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[25]~6_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(25))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(25),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[25]~6_combout\);

-- Location: LCFF_X22_Y19_N29
\RegULASaida|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[24]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(24));

-- Location: LCCOMB_X22_Y19_N8
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

-- Location: LCCOMB_X21_Y19_N22
\Mux6|S[24]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[24]~47_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(24))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output6\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(24),
	datad => \RegIns|addr_Output6\(22),
	combout => \Mux6|S[24]~47_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Mux6|S[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[24]~48_combout\ = (\Mux6|S[24]~47_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[24]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Mux6|S[24]~47_combout\,
	datac => \ULAUnit|UlaInstance|Result[24]~116_combout\,
	combout => \Mux6|S[24]~48_combout\);

-- Location: LCCOMB_X21_Y19_N26
\PC1|addr_Output[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(24) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[24]~48_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(24),
	datac => \Mux6|S[24]~48_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y19_N3
\RegA|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(24));

-- Location: LCCOMB_X22_Y19_N2
\Mux4|S[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[24]~7_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(24))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(24),
	datac => \RegA|q\(24),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[24]~7_combout\);

-- Location: LCCOMB_X21_Y20_N18
\ULAUnit|UlaInstance|Somador|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~50_combout\ = (\Mux4|S[25]~6_combout\ & ((\Mux5|S[25]~6_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~49\)) # (!\Mux5|S[25]~6_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~49\ & VCC)))) # (!\Mux4|S[25]~6_combout\ & 
-- ((\Mux5|S[25]~6_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~49\) # (GND))) # (!\Mux5|S[25]~6_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~49\))))
-- \ULAUnit|UlaInstance|Somador|Add1~51\ = CARRY((\Mux4|S[25]~6_combout\ & (\Mux5|S[25]~6_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~49\)) # (!\Mux4|S[25]~6_combout\ & ((\Mux5|S[25]~6_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[25]~6_combout\,
	datab => \Mux5|S[25]~6_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~49\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~50_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~51\);

-- Location: LCCOMB_X21_Y20_N20
\ULAUnit|UlaInstance|Somador|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~52_combout\ = ((\Mux5|S[26]~5_combout\ $ (\Mux4|S[26]~5_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~51\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~53\ = CARRY((\Mux5|S[26]~5_combout\ & (\Mux4|S[26]~5_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~51\)) # (!\Mux5|S[26]~5_combout\ & ((\Mux4|S[26]~5_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[26]~5_combout\,
	datab => \Mux4|S[26]~5_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~51\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~52_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~53\);

-- Location: LCCOMB_X20_Y20_N16
\ULAUnit|UlaInstance|Result[26]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~120_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[26]~119_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~52_combout\))) # (!\ULAUnit|UlaInstance|Result[26]~119_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~52_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[26]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[26]~119_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~52_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~52_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~120_combout\);

-- Location: LCCOMB_X20_Y20_N26
\ULAUnit|UlaInstance|Result[26]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[26]~155_combout\ = (\ULAUnit|UlaInstance|Result[26]~120_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[26]~120_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[26]~155_combout\);

-- Location: LCFF_X20_Y20_N27
\RegULASaida|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[26]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(26));

-- Location: LCCOMB_X20_Y19_N30
\Mux6|S[26]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[26]~51_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(26)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output6\(24),
	datab => \Control|currentState.S0~regout\,
	datac => \RegULASaida|q\(26),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[26]~51_combout\);

-- Location: LCCOMB_X20_Y19_N12
\Mux6|S[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[26]~52_combout\ = (\Mux6|S[26]~51_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[26]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[26]~120_combout\,
	datad => \Mux6|S[26]~51_combout\,
	combout => \Mux6|S[26]~52_combout\);

-- Location: LCCOMB_X20_Y19_N26
\PC1|addr_Output[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(26) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[26]~52_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(26),
	datac => \writeEnablePC~clkctrl_outclk\,
	datad => \Mux6|S[26]~52_combout\,
	combout => \PC1|addr_Output\(26));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y19_N19
\RegA|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(26));

-- Location: LCCOMB_X20_Y19_N18
\Mux4|S[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[26]~5_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(26))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(26),
	datac => \RegA|q\(26),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[26]~5_combout\);

-- Location: LCCOMB_X21_Y20_N22
\ULAUnit|UlaInstance|Somador|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~54_combout\ = (\Mux5|S[27]~4_combout\ & ((\Mux4|S[27]~4_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~53\)) # (!\Mux4|S[27]~4_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~53\) # (GND))))) # (!\Mux5|S[27]~4_combout\ & 
-- ((\Mux4|S[27]~4_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~53\ & VCC)) # (!\Mux4|S[27]~4_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~53\))))
-- \ULAUnit|UlaInstance|Somador|Add1~55\ = CARRY((\Mux5|S[27]~4_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~53\) # (!\Mux4|S[27]~4_combout\))) # (!\Mux5|S[27]~4_combout\ & (!\Mux4|S[27]~4_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[27]~4_combout\,
	datab => \Mux4|S[27]~4_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~53\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~54_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~55\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N5
\RegB|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(27));

-- Location: LCCOMB_X22_Y20_N4
\Mux5|S[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[27]~4_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(27))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(27),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[27]~4_combout\);

-- Location: LCCOMB_X23_Y20_N22
\ULAUnit|UlaInstance|Somador|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~54_combout\ = (\Mux4|S[27]~4_combout\ & ((\Mux5|S[27]~4_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~53\ & VCC)) # (!\Mux5|S[27]~4_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~53\)))) # (!\Mux4|S[27]~4_combout\ & 
-- ((\Mux5|S[27]~4_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~53\)) # (!\Mux5|S[27]~4_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~53\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~55\ = CARRY((\Mux4|S[27]~4_combout\ & (!\Mux5|S[27]~4_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~53\)) # (!\Mux4|S[27]~4_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~53\) # (!\Mux5|S[27]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[27]~4_combout\,
	datab => \Mux5|S[27]~4_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~53\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~54_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~55\);

-- Location: LCCOMB_X20_Y20_N2
\ULAUnit|UlaInstance|Result[27]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~122_combout\ = (\ULAUnit|UlaInstance|Result[27]~121_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~54_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[27]~121_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~54_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[27]~121_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~54_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~54_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~122_combout\);

-- Location: LCCOMB_X20_Y20_N14
\ULAUnit|UlaInstance|Result[25]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~117_combout\ = (\Mux5|S[25]~6_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((\Mux4|S[25]~6_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[25]~6_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\Mux4|S[25]~6_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[25]~6_combout\,
	datab => \Mux4|S[25]~6_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~117_combout\);

-- Location: LCCOMB_X20_Y20_N22
\ULAUnit|UlaInstance|Result[25]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~118_combout\ = (\ULAUnit|UlaInstance|Result[25]~117_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~50_combout\) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[25]~117_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~50_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~50_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~50_combout\,
	datac => \ULAUnit|UlaInstance|Result[25]~117_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~118_combout\);

-- Location: LCCOMB_X20_Y20_N12
\writeEnablePC~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~6_combout\ = ((!\ULAUnit|UlaInstance|Result[27]~122_combout\ & (!\ULAUnit|UlaInstance|Result[26]~120_combout\ & !\ULAUnit|UlaInstance|Result[25]~118_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datab => \ULAUnit|UlaInstance|Result[27]~122_combout\,
	datac => \ULAUnit|UlaInstance|Result[26]~120_combout\,
	datad => \ULAUnit|UlaInstance|Result[25]~118_combout\,
	combout => \writeEnablePC~6_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N23
\RegB|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(29));

-- Location: LCCOMB_X22_Y20_N22
\Mux5|S[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[29]~2_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(29))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(29),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[29]~2_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N27
\RegB|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(28));

-- Location: LCCOMB_X22_Y20_N26
\Mux5|S[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[28]~3_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(28) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(28) & !\Control|ULAFonteB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \RegIns|addr_Output5\(15),
	datac => \RegB|q\(28),
	datad => \Control|ULAFonteB~1_combout\,
	combout => \Mux5|S[28]~3_combout\);

-- Location: LCCOMB_X23_Y20_N24
\ULAUnit|UlaInstance|Somador|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~56_combout\ = ((\Mux4|S[28]~3_combout\ $ (\Mux5|S[28]~3_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~55\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~57\ = CARRY((\Mux4|S[28]~3_combout\ & ((\Mux5|S[28]~3_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~55\))) # (!\Mux4|S[28]~3_combout\ & (\Mux5|S[28]~3_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[28]~3_combout\,
	datab => \Mux5|S[28]~3_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~55\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~56_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~57\);

-- Location: LCCOMB_X23_Y20_N26
\ULAUnit|UlaInstance|Somador|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~58_combout\ = (\Mux4|S[29]~2_combout\ & ((\Mux5|S[29]~2_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~57\ & VCC)) # (!\Mux5|S[29]~2_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~57\)))) # (!\Mux4|S[29]~2_combout\ & 
-- ((\Mux5|S[29]~2_combout\ & (!\ULAUnit|UlaInstance|Somador|Add0~57\)) # (!\Mux5|S[29]~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add0~57\) # (GND)))))
-- \ULAUnit|UlaInstance|Somador|Add0~59\ = CARRY((\Mux4|S[29]~2_combout\ & (!\Mux5|S[29]~2_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~57\)) # (!\Mux4|S[29]~2_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add0~57\) # (!\Mux5|S[29]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[29]~2_combout\,
	datab => \Mux5|S[29]~2_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~57\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~58_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~59\);

-- Location: LCCOMB_X21_Y20_N24
\ULAUnit|UlaInstance|Somador|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~56_combout\ = ((\Mux4|S[28]~3_combout\ $ (\Mux5|S[28]~3_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~55\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~57\ = CARRY((\Mux4|S[28]~3_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~55\) # (!\Mux5|S[28]~3_combout\))) # (!\Mux4|S[28]~3_combout\ & (!\Mux5|S[28]~3_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[28]~3_combout\,
	datab => \Mux5|S[28]~3_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~55\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~56_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~57\);

-- Location: LCCOMB_X21_Y20_N26
\ULAUnit|UlaInstance|Somador|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~58_combout\ = (\Mux4|S[29]~2_combout\ & ((\Mux5|S[29]~2_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~57\)) # (!\Mux5|S[29]~2_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~57\ & VCC)))) # (!\Mux4|S[29]~2_combout\ & 
-- ((\Mux5|S[29]~2_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~57\) # (GND))) # (!\Mux5|S[29]~2_combout\ & (!\ULAUnit|UlaInstance|Somador|Add1~57\))))
-- \ULAUnit|UlaInstance|Somador|Add1~59\ = CARRY((\Mux4|S[29]~2_combout\ & (\Mux5|S[29]~2_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~57\)) # (!\Mux4|S[29]~2_combout\ & ((\Mux5|S[29]~2_combout\) # (!\ULAUnit|UlaInstance|Somador|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[29]~2_combout\,
	datab => \Mux5|S[29]~2_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~57\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~58_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~59\);

-- Location: LCCOMB_X24_Y20_N28
\ULAUnit|UlaInstance|Result[29]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~158_combout\ = (\ULAUnit|UlaInstance|Result[29]~126_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[29]~126_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~158_combout\);

-- Location: LCFF_X24_Y20_N29
\RegULASaida|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[29]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(29));

-- Location: LCCOMB_X24_Y20_N16
\Mux6|S[29]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[29]~57_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(29))) # (!\Control|currentState.S8~regout\ & ((\PC1|addr_Output\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegULASaida|q\(29),
	datac => \Control|currentState.S8~regout\,
	datad => \PC1|addr_Output\(29),
	combout => \Mux6|S[29]~57_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mux6|S[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[29]~58_combout\ = (\Mux6|S[29]~57_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[29]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Mux6|S[29]~57_combout\,
	datad => \ULAUnit|UlaInstance|Result[29]~126_combout\,
	combout => \Mux6|S[29]~58_combout\);

-- Location: LCCOMB_X24_Y20_N18
\PC1|addr_Output[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(29) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[29]~58_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(29),
	datac => \writeEnablePC~clkctrl_outclk\,
	datad => \Mux6|S[29]~58_combout\,
	combout => \PC1|addr_Output\(29));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y20_N15
\RegA|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(29));

-- Location: LCCOMB_X24_Y20_N14
\Mux4|S[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[29]~2_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(29))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(29),
	datac => \RegA|q\(29),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[29]~2_combout\);

-- Location: LCCOMB_X24_Y20_N22
\ULAUnit|UlaInstance|Result[29]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~125_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[29]~2_combout\ & ((\Mux4|S[29]~2_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux5|S[29]~2_combout\ & (\Mux4|S[29]~2_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[29]~2_combout\,
	datac => \Mux4|S[29]~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~125_combout\);

-- Location: LCCOMB_X24_Y20_N30
\ULAUnit|UlaInstance|Result[29]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[29]~126_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[29]~125_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~58_combout\))) # (!\ULAUnit|UlaInstance|Result[29]~125_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~58_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[29]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~58_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~58_combout\,
	datad => \ULAUnit|UlaInstance|Result[29]~125_combout\,
	combout => \ULAUnit|UlaInstance|Result[29]~126_combout\);

-- Location: LCCOMB_X24_Y20_N12
\ULAUnit|UlaInstance|Result[28]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~157_combout\ = (\ULAUnit|UlaInstance|Result[28]~124_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[28]~124_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~157_combout\);

-- Location: LCFF_X24_Y20_N13
\RegULASaida|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[28]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(28));

-- Location: LCCOMB_X24_Y20_N6
\Mux6|S[28]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[28]~55_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(28))) # (!\Control|currentState.S8~regout\ & ((\PC1|addr_Output\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegULASaida|q\(28),
	datac => \PC1|addr_Output\(28),
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[28]~55_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Mux6|S[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[28]~56_combout\ = (\Mux6|S[28]~55_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[28]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \ULAUnit|UlaInstance|Result[28]~124_combout\,
	datad => \Mux6|S[28]~55_combout\,
	combout => \Mux6|S[28]~56_combout\);

-- Location: LCCOMB_X24_Y20_N8
\PC1|addr_Output[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(28) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\Mux6|S[28]~56_combout\)) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\PC1|addr_Output\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[28]~56_combout\,
	datac => \PC1|addr_Output\(28),
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(28));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X24_Y20_N5
\RegA|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(28));

-- Location: LCCOMB_X24_Y20_N4
\Mux4|S[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[28]~3_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(28))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(28),
	datac => \RegA|q\(28),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[28]~3_combout\);

-- Location: LCCOMB_X24_Y20_N20
\ULAUnit|UlaInstance|Result[28]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~123_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~56_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~56_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~56_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~56_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~123_combout\);

-- Location: LCCOMB_X24_Y20_N24
\ULAUnit|UlaInstance|Result[28]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[28]~124_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[28]~123_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[28]~3_combout\ & ((\Mux4|S[28]~3_combout\) # 
-- (\ULAUnit|UlaInstance|Result[28]~123_combout\))) # (!\Mux5|S[28]~3_combout\ & (\Mux4|S[28]~3_combout\ & \ULAUnit|UlaInstance|Result[28]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[28]~3_combout\,
	datac => \Mux4|S[28]~3_combout\,
	datad => \ULAUnit|UlaInstance|Result[28]~123_combout\,
	combout => \ULAUnit|UlaInstance|Result[28]~124_combout\);

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N3
\RegB|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(30));

-- Location: LCCOMB_X22_Y20_N2
\Mux5|S[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[30]~1_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((!\Control|ULAFonteB~1_combout\ & \RegB|q\(30))))) # (!\Control|ULAFonteB[1]~0_combout\ & (!\Control|ULAFonteB~1_combout\ & (\RegB|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteB[1]~0_combout\,
	datab => \Control|ULAFonteB~1_combout\,
	datac => \RegB|q\(30),
	datad => \RegIns|addr_Output5\(15),
	combout => \Mux5|S[30]~1_combout\);

-- Location: LCCOMB_X23_Y20_N28
\ULAUnit|UlaInstance|Somador|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~60_combout\ = ((\Mux4|S[30]~1_combout\ $ (\Mux5|S[30]~1_combout\ $ (!\ULAUnit|UlaInstance|Somador|Add0~59\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add0~61\ = CARRY((\Mux4|S[30]~1_combout\ & ((\Mux5|S[30]~1_combout\) # (!\ULAUnit|UlaInstance|Somador|Add0~59\))) # (!\Mux4|S[30]~1_combout\ & (\Mux5|S[30]~1_combout\ & !\ULAUnit|UlaInstance|Somador|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[30]~1_combout\,
	datab => \Mux5|S[30]~1_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add0~59\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~60_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add0~61\);

-- Location: LCCOMB_X21_Y20_N28
\ULAUnit|UlaInstance|Somador|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~60_combout\ = ((\Mux4|S[30]~1_combout\ $ (\Mux5|S[30]~1_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~59\)))) # (GND)
-- \ULAUnit|UlaInstance|Somador|Add1~61\ = CARRY((\Mux4|S[30]~1_combout\ & ((!\ULAUnit|UlaInstance|Somador|Add1~59\) # (!\Mux5|S[30]~1_combout\))) # (!\Mux4|S[30]~1_combout\ & (!\Mux5|S[30]~1_combout\ & !\ULAUnit|UlaInstance|Somador|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[30]~1_combout\,
	datab => \Mux5|S[30]~1_combout\,
	datad => VCC,
	cin => \ULAUnit|UlaInstance|Somador|Add1~59\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~60_combout\,
	cout => \ULAUnit|UlaInstance|Somador|Add1~61\);

-- Location: LCCOMB_X20_Y22_N22
\ULAUnit|UlaInstance|Result[30]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~128_combout\ = (\ULAUnit|UlaInstance|Result[30]~127_combout\ & (((\ULAUnit|UlaInstance|Somador|Add1~60_combout\)) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\))) # (!\ULAUnit|UlaInstance|Result[30]~127_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Somador|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[30]~127_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~60_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~60_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~128_combout\);

-- Location: LCCOMB_X24_Y20_N26
\writeEnablePC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~3_combout\ = ((!\ULAUnit|UlaInstance|Result[29]~126_combout\ & (!\ULAUnit|UlaInstance|Result[28]~124_combout\ & !\ULAUnit|UlaInstance|Result[30]~128_combout\))) # (!\ULAUnit|UlaInstance|Result[1]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~70_combout\,
	datab => \ULAUnit|UlaInstance|Result[29]~126_combout\,
	datac => \ULAUnit|UlaInstance|Result[28]~124_combout\,
	datad => \ULAUnit|UlaInstance|Result[30]~128_combout\,
	combout => \writeEnablePC~3_combout\);

-- Location: LCCOMB_X19_Y20_N24
\writeEnablePC~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~7_combout\ = (\writeEnablePC~5_combout\ & (\writeEnablePC~6_combout\ & \writeEnablePC~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnablePC~5_combout\,
	datac => \writeEnablePC~6_combout\,
	datad => \writeEnablePC~3_combout\,
	combout => \writeEnablePC~7_combout\);

-- Location: LCCOMB_X20_Y20_N18
writeEnablePC : cycloneii_lcell_comb
-- Equation(s):
-- \writeEnablePC~combout\ = (\Control|PCEsc~combout\) # ((\writeEnablePC~12_combout\ & (\writeEnablePC~2_combout\ & \writeEnablePC~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnablePC~12_combout\,
	datab => \Control|PCEsc~combout\,
	datac => \writeEnablePC~2_combout\,
	datad => \writeEnablePC~7_combout\,
	combout => \writeEnablePC~combout\);

-- Location: CLKCTRL_G1
\writeEnablePC~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \writeEnablePC~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \writeEnablePC~clkctrl_outclk\);

-- Location: LCFF_X22_Y21_N21
\RegULASaida|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(0));

-- Location: LCCOMB_X22_Y21_N24
\ULAUnit|UlaInstance|Result[0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~63_combout\ = (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[0]~46_combout\ & ((\ULAUnit|UlaControlInstance|Mux5~2_combout\) # (\Mux4|S[0]~31_combout\))) # (!\Mux5|S[0]~46_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux5~2_combout\ & \Mux4|S[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[0]~46_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datad => \Mux4|S[0]~31_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~63_combout\);

-- Location: LCCOMB_X23_Y20_N30
\ULAUnit|UlaInstance|Somador|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add0~62_combout\ = \Mux5|S[31]~0_combout\ $ (\ULAUnit|UlaInstance|Somador|Add0~61\ $ (\Mux4|S[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[31]~0_combout\,
	datad => \Mux4|S[31]~0_combout\,
	cin => \ULAUnit|UlaInstance|Somador|Add0~61\,
	combout => \ULAUnit|UlaInstance|Somador|Add0~62_combout\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y20_N1
\RegB|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(31));

-- Location: LCCOMB_X22_Y20_N0
\Mux5|S[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[31]~0_combout\ = (\Control|ULAFonteB[1]~0_combout\ & ((\RegIns|addr_Output5\(15)) # ((\RegB|q\(31) & !\Control|ULAFonteB~1_combout\)))) # (!\Control|ULAFonteB[1]~0_combout\ & (((\RegB|q\(31) & !\Control|ULAFonteB~1_combout\))))

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
	combout => \Mux5|S[31]~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\ULAUnit|UlaInstance|Somador|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Somador|Add1~62_combout\ = \Mux5|S[31]~0_combout\ $ (\ULAUnit|UlaInstance|Somador|Add1~61\ $ (!\Mux4|S[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux5|S[31]~0_combout\,
	datad => \Mux4|S[31]~0_combout\,
	cin => \ULAUnit|UlaInstance|Somador|Add1~61\,
	combout => \ULAUnit|UlaInstance|Somador|Add1~62_combout\);

-- Location: LCCOMB_X22_Y21_N10
\ULAUnit|UlaInstance|Multiplexer|S[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~62_combout\))) # (!\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~62_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~62_combout\,
	combout => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\);

-- Location: LCCOMB_X22_Y21_N28
\ULAUnit|UlaInstance|Result[31]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[31]~129_combout\ = (!\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\) # (\ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datac => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\,
	datad => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[31]~129_combout\);

-- Location: LCFF_X22_Y21_N29
\RegULASaida|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[31]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(31));

-- Location: LCCOMB_X21_Y23_N4
\Mux6|S[31]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[31]~61_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(31)))) # (!\Control|currentState.S8~regout\ & (\PC1|addr_Output\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \PC1|addr_Output\(31),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(31),
	combout => \Mux6|S[31]~61_combout\);

-- Location: LCCOMB_X22_Y23_N14
\Mux6|S[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[31]~62_combout\ = (\Mux6|S[31]~61_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Somador|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Mux6|S[31]~61_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~62_combout\,
	combout => \Mux6|S[31]~62_combout\);

-- Location: LCCOMB_X22_Y23_N8
\PC1|addr_Output[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(31) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[31]~62_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(31),
	datac => \Mux6|S[31]~62_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(31));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y23_N3
\RegA|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(31));

-- Location: LCCOMB_X22_Y23_N2
\Mux4|S[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[31]~0_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(31))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(31),
	datac => \RegA|q\(31),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[31]~0_combout\);

-- Location: LCCOMB_X22_Y21_N8
\ULAUnit|UlaInstance|Multiplexer|S[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\ = (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux4|S[31]~0_combout\ & ((\ULAUnit|UlaControlInstance|Mux5~2_combout\) # (\Mux5|S[31]~0_combout\))) # (!\Mux4|S[31]~0_combout\ & 
-- (\ULAUnit|UlaControlInstance|Mux5~2_combout\ & \Mux5|S[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux4|S[31]~0_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux5~2_combout\,
	datad => \Mux5|S[31]~0_combout\,
	combout => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\ULAUnit|UlaInstance|Result[0]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~62_combout\ = (\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\) # (\ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datac => \ULAUnit|UlaInstance|Multiplexer|S[31]~0_combout\,
	datad => \ULAUnit|UlaInstance|Multiplexer|S[31]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~62_combout\);

-- Location: LCCOMB_X22_Y21_N12
\Mux6|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[0]~0_combout\ = (\ULAUnit|UlaInstance|Result[0]~62_combout\) # ((!\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Result[0]~64_combout\) # (\ULAUnit|UlaInstance|Result[0]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datab => \ULAUnit|UlaInstance|Result[0]~64_combout\,
	datac => \ULAUnit|UlaInstance|Result[0]~63_combout\,
	datad => \ULAUnit|UlaInstance|Result[0]~62_combout\,
	combout => \Mux6|S[0]~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Mux6|S[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[0]~1_combout\ = (\Control|currentState.S0~regout\ & (\Control|currentState.S8~regout\ & (\RegULASaida|q\(0)))) # (!\Control|currentState.S0~regout\ & ((\Mux6|S[0]~0_combout\) # ((\Control|currentState.S8~regout\ & \RegULASaida|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(0),
	datad => \Mux6|S[0]~0_combout\,
	combout => \Mux6|S[0]~1_combout\);

-- Location: LCCOMB_X22_Y21_N30
\PC1|addr_Output[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(0) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[0]~1_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(0),
	datac => \writeEnablePC~clkctrl_outclk\,
	datad => \Mux6|S[0]~1_combout\,
	combout => \PC1|addr_Output\(0));

-- Location: LCCOMB_X22_Y21_N6
\Mux4|S[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[0]~31_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(0)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(0),
	datad => \PC1|addr_Output\(0),
	combout => \Mux4|S[0]~31_combout\);

-- Location: LCCOMB_X22_Y21_N2
\ULAUnit|UlaInstance|Result[0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~64_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~0_combout\)) # (!\ULAUnit|UlaInstance|Somador|S[0]~1_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~0_combout\,
	datab => \ULAUnit|UlaInstance|Somador|S[0]~1_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~0_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~64_combout\);

-- Location: LCCOMB_X22_Y21_N20
\ULAUnit|UlaInstance|Result[0]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[0]~65_combout\ = (\ULAUnit|UlaInstance|Result[0]~62_combout\) # ((!\ULAUnit|UlaInstance|Equal0~0_combout\ & ((\ULAUnit|UlaInstance|Result[0]~64_combout\) # (\ULAUnit|UlaInstance|Result[0]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Equal0~0_combout\,
	datab => \ULAUnit|UlaInstance|Result[0]~64_combout\,
	datac => \ULAUnit|UlaInstance|Result[0]~63_combout\,
	datad => \ULAUnit|UlaInstance|Result[0]~62_combout\,
	combout => \ULAUnit|UlaInstance|Result[0]~65_combout\);

-- Location: LCCOMB_X25_Y21_N24
\ULAUnit|UlaInstance|Result[1]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~67_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~2_combout\)) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~2_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~2_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~67_combout\);

-- Location: LCCOMB_X25_Y21_N2
\ULAUnit|UlaInstance|Result[1]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~68_combout\ = (\Mux4|S[1]~30_combout\ & ((\ULAUnit|UlaInstance|Result[1]~67_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[1]~45_combout\)))) # (!\Mux4|S[1]~30_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~67_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[1]~30_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~67_combout\,
	datad => \Mux5|S[1]~45_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~68_combout\);

-- Location: LCCOMB_X25_Y21_N10
\ULAUnit|UlaInstance|Result[1]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[1]~130_combout\ = (\ULAUnit|UlaInstance|Result[1]~68_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~68_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[1]~130_combout\);

-- Location: LCCOMB_X24_Y21_N6
\ULAUnit|UlaInstance|Result[2]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[2]~131_combout\ = (\ULAUnit|UlaInstance|Result[2]~72_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[2]~72_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	combout => \ULAUnit|UlaInstance|Result[2]~131_combout\);

-- Location: LCCOMB_X25_Y21_N30
\ULAUnit|UlaInstance|Result[3]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[3]~132_combout\ = (\ULAUnit|UlaInstance|Result[3]~74_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[3]~74_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[3]~132_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ULAUnit|UlaInstance|Result[4]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[4]~133_combout\ = (\ULAUnit|UlaInstance|Result[4]~76_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[4]~76_combout\,
	combout => \ULAUnit|UlaInstance|Result[4]~133_combout\);

-- Location: LCCOMB_X22_Y25_N4
\ULAUnit|UlaInstance|Result[7]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~81_combout\ = (\Mux4|S[7]~24_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[7]~34_combout\)))) # (!\Mux4|S[7]~24_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[7]~24_combout\,
	datab => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \Mux5|S[7]~34_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~81_combout\);

-- Location: LCCOMB_X22_Y25_N12
\ULAUnit|UlaInstance|Result[7]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~82_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[7]~81_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~14_combout\))) # (!\ULAUnit|UlaInstance|Result[7]~81_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~14_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[7]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~14_combout\,
	datac => \ULAUnit|UlaInstance|Result[7]~81_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~14_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~82_combout\);

-- Location: LCCOMB_X22_Y25_N16
\ULAUnit|UlaInstance|Result[7]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[7]~136_combout\ = (\ULAUnit|UlaInstance|Result[7]~82_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datab => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[7]~82_combout\,
	combout => \ULAUnit|UlaInstance|Result[7]~136_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y22_N19
\RegA|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(8));

-- Location: LCFF_X21_Y22_N23
\RegULASaida|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[8]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(8));

-- Location: LCCOMB_X22_Y23_N18
\Mux6|S[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[8]~15_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(8)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegIns|addr_Output5\(6),
	datac => \Control|currentState.S8~regout\,
	datad => \RegULASaida|q\(8),
	combout => \Mux6|S[8]~15_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Mux6|S[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[8]~16_combout\ = (\Mux6|S[8]~15_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[8]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Mux6|S[8]~15_combout\,
	datad => \ULAUnit|UlaInstance|Result[8]~84_combout\,
	combout => \Mux6|S[8]~16_combout\);

-- Location: LCCOMB_X22_Y22_N0
\PC1|addr_Output[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(8) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[8]~16_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(8),
	datac => \Mux6|S[8]~16_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(8));

-- Location: LCCOMB_X22_Y22_N18
\Mux4|S[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[8]~23_combout\ = (\Control|ULAFonteA~0_combout\ & ((\PC1|addr_Output\(8)))) # (!\Control|ULAFonteA~0_combout\ & (\RegA|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAFonteA~0_combout\,
	datac => \RegA|q\(8),
	datad => \PC1|addr_Output\(8),
	combout => \Mux4|S[8]~23_combout\);

-- Location: LCCOMB_X22_Y22_N20
\ULAUnit|UlaInstance|Result[8]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~83_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~16_combout\)) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~16_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~16_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~16_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~83_combout\);

-- Location: LCCOMB_X22_Y22_N22
\ULAUnit|UlaInstance|Result[8]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~84_combout\ = (\Mux5|S[8]~32_combout\ & ((\ULAUnit|UlaInstance|Result[8]~83_combout\) # ((\Mux4|S[8]~23_combout\ & !\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\Mux5|S[8]~32_combout\ & 
-- (\ULAUnit|UlaInstance|Result[8]~83_combout\ & ((\Mux4|S[8]~23_combout\) # (\ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[8]~32_combout\,
	datab => \Mux4|S[8]~23_combout\,
	datac => \ULAUnit|UlaInstance|Result[8]~83_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~84_combout\);

-- Location: LCCOMB_X21_Y22_N22
\ULAUnit|UlaInstance|Result[8]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[8]~137_combout\ = (\ULAUnit|UlaInstance|Result[8]~84_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[8]~84_combout\,
	combout => \ULAUnit|UlaInstance|Result[8]~137_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y24_N27
\RegB|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt2~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegB|q\(9));

-- Location: LCCOMB_X22_Y24_N26
\Mux5|S[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5|S[9]~30_combout\ = (\Mux5|S[9]~29_combout\) # ((!\Control|ULAFonteA~0_combout\ & (\RegB|q\(9) & !\Control|ULAFonteB[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[9]~29_combout\,
	datab => \Control|ULAFonteA~0_combout\,
	datac => \RegB|q\(9),
	datad => \Control|ULAFonteB[1]~0_combout\,
	combout => \Mux5|S[9]~30_combout\);

-- Location: LCCOMB_X22_Y22_N4
\ULAUnit|UlaInstance|Result[9]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~85_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[9]~30_combout\ & ((\Mux4|S[9]~22_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux5|S[9]~30_combout\ & (\Mux4|S[9]~22_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[9]~30_combout\,
	datac => \Mux4|S[9]~22_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~85_combout\);

-- Location: LCCOMB_X22_Y22_N14
\ULAUnit|UlaInstance|Result[9]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~86_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[9]~85_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~18_combout\))) # (!\ULAUnit|UlaInstance|Result[9]~85_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~18_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[9]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~18_combout\,
	datac => \ULAUnit|UlaInstance|Result[9]~85_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~18_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~86_combout\);

-- Location: LCCOMB_X21_Y22_N0
\ULAUnit|UlaInstance|Result[9]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[9]~138_combout\ = (\ULAUnit|UlaInstance|Result[9]~86_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datab => \ULAUnit|UlaInstance|Result[9]~86_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	combout => \ULAUnit|UlaInstance|Result[9]~138_combout\);

-- Location: LCCOMB_X22_Y22_N6
\ULAUnit|UlaInstance|Result[12]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~91_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~24_combout\)) # (!\ULAUnit|UlaInstance|Result[1]~66_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~24_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add1~24_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add0~24_combout\,
	datac => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~91_combout\);

-- Location: LCCOMB_X21_Y22_N10
\ULAUnit|UlaInstance|Result[12]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~92_combout\ = (\Mux4|S[12]~19_combout\ & ((\ULAUnit|UlaInstance|Result[12]~91_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux5|S[12]~24_combout\)))) # (!\Mux4|S[12]~19_combout\ & 
-- (\ULAUnit|UlaInstance|Result[12]~91_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux5|S[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4|S[12]~19_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux5|S[12]~24_combout\,
	datad => \ULAUnit|UlaInstance|Result[12]~91_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~92_combout\);

-- Location: LCCOMB_X21_Y22_N16
\ULAUnit|UlaInstance|Result[12]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[12]~141_combout\ = (\ULAUnit|UlaInstance|Result[12]~92_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[12]~92_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	combout => \ULAUnit|UlaInstance|Result[12]~141_combout\);

-- Location: LCCOMB_X22_Y19_N6
\ULAUnit|UlaInstance|Result[13]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[13]~142_combout\ = (\ULAUnit|UlaInstance|Result[13]~94_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \ULAUnit|UlaInstance|Result[13]~94_combout\,
	datad => \Control|ULAOp[1]~1_combout\,
	combout => \ULAUnit|UlaInstance|Result[13]~142_combout\);

-- Location: LCCOMB_X20_Y21_N20
\ULAUnit|UlaInstance|Result[14]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[14]~143_combout\ = (\ULAUnit|UlaInstance|Result[14]~96_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[14]~96_combout\,
	combout => \ULAUnit|UlaInstance|Result[14]~143_combout\);

-- Location: LCCOMB_X18_Y20_N20
\ULAUnit|UlaInstance|Result[19]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~105_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[1]~66_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\Mux5|S[19]~12_combout\ & ((\Mux4|S[19]~12_combout\) # 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\))) # (!\Mux5|S[19]~12_combout\ & (\Mux4|S[19]~12_combout\ & \ULAUnit|UlaInstance|Result[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \Mux5|S[19]~12_combout\,
	datac => \Mux4|S[19]~12_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~105_combout\);

-- Location: LCCOMB_X18_Y20_N2
\ULAUnit|UlaInstance|Result[19]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~106_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[19]~105_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~38_combout\))) # (!\ULAUnit|UlaInstance|Result[19]~105_combout\ & 
-- (\ULAUnit|UlaInstance|Somador|Add0~38_combout\)))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (((\ULAUnit|UlaInstance|Result[19]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Somador|Add0~38_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \ULAUnit|UlaInstance|Result[19]~105_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add1~38_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~106_combout\);

-- Location: LCCOMB_X18_Y20_N12
\ULAUnit|UlaInstance|Result[19]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[19]~148_combout\ = (\ULAUnit|UlaInstance|Result[19]~106_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[19]~106_combout\,
	combout => \ULAUnit|UlaInstance|Result[19]~148_combout\);

-- Location: LCCOMB_X18_Y20_N26
\ULAUnit|UlaInstance|Result[20]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[20]~149_combout\ = (\ULAUnit|UlaInstance|Result[20]~108_combout\ & ((\ULAUnit|UlaInstance|Result[1]~69_combout\) # (\Control|ULAOp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datac => \Control|ULAOp[1]~1_combout\,
	datad => \ULAUnit|UlaInstance|Result[20]~108_combout\,
	combout => \ULAUnit|UlaInstance|Result[20]~149_combout\);

-- Location: LCCOMB_X20_Y22_N2
\ULAUnit|UlaInstance|Result[21]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~110_combout\ = (\ULAUnit|UlaInstance|Result[21]~109_combout\ & ((\ULAUnit|UlaInstance|Somador|Add1~42_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\)))) # (!\ULAUnit|UlaInstance|Result[21]~109_combout\ & 
-- (((\ULAUnit|UlaInstance|Somador|Add0~42_combout\ & \ULAUnit|UlaControlInstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaInstance|Result[21]~109_combout\,
	datab => \ULAUnit|UlaInstance|Somador|Add1~42_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add0~42_combout\,
	datad => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~110_combout\);

-- Location: LCCOMB_X19_Y22_N6
\ULAUnit|UlaInstance|Result[21]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[21]~150_combout\ = (\ULAUnit|UlaInstance|Result[21]~110_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[21]~110_combout\,
	combout => \ULAUnit|UlaInstance|Result[21]~150_combout\);

-- Location: LCCOMB_X27_Y20_N20
\RegIns|addr_Output3[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(4) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(4)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(20),
	datac => \RegIns|addr_Output3\(4),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(4));

-- Location: LCFF_X25_Y20_N21
\RegULASaida|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[22]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(22));

-- Location: LCCOMB_X25_Y20_N16
\Mux6|S[22]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[22]~43_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(22)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output3\(4),
	datad => \RegULASaida|q\(22),
	combout => \Mux6|S[22]~43_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Mux6|S[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[22]~44_combout\ = (\Mux6|S[22]~43_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[22]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[22]~43_combout\,
	datad => \ULAUnit|UlaInstance|Result[22]~112_combout\,
	combout => \Mux6|S[22]~44_combout\);

-- Location: LCCOMB_X25_Y20_N30
\PC1|addr_Output[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(22) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[22]~44_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(22),
	datac => \Mux6|S[22]~44_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(22));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y20_N5
\RegA|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \i_dt1~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegA|q\(22));

-- Location: LCCOMB_X25_Y20_N4
\Mux4|S[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4|S[22]~9_combout\ = (\Control|ULAFonteA~0_combout\ & (\PC1|addr_Output\(22))) # (!\Control|ULAFonteA~0_combout\ & ((\RegA|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(22),
	datac => \RegA|q\(22),
	datad => \Control|ULAFonteA~0_combout\,
	combout => \Mux4|S[22]~9_combout\);

-- Location: LCCOMB_X25_Y20_N12
\ULAUnit|UlaInstance|Result[22]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~111_combout\ = (\Mux5|S[22]~9_combout\ & ((\ULAUnit|UlaInstance|Result[1]~66_combout\) # ((!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & \Mux4|S[22]~9_combout\)))) # (!\Mux5|S[22]~9_combout\ & 
-- (\ULAUnit|UlaInstance|Result[1]~66_combout\ & ((\ULAUnit|UlaControlInstance|Mux4~2_combout\) # (\Mux4|S[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5|S[22]~9_combout\,
	datab => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datac => \Mux4|S[22]~9_combout\,
	datad => \ULAUnit|UlaInstance|Result[1]~66_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~111_combout\);

-- Location: LCCOMB_X24_Y20_N10
\ULAUnit|UlaInstance|Result[22]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~112_combout\ = (\ULAUnit|UlaControlInstance|Mux4~2_combout\ & ((\ULAUnit|UlaInstance|Result[22]~111_combout\ & (\ULAUnit|UlaInstance|Somador|Add1~44_combout\)) # (!\ULAUnit|UlaInstance|Result[22]~111_combout\ & 
-- ((\ULAUnit|UlaInstance|Somador|Add0~44_combout\))))) # (!\ULAUnit|UlaControlInstance|Mux4~2_combout\ & (\ULAUnit|UlaInstance|Result[22]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAUnit|UlaControlInstance|Mux4~2_combout\,
	datab => \ULAUnit|UlaInstance|Result[22]~111_combout\,
	datac => \ULAUnit|UlaInstance|Somador|Add1~44_combout\,
	datad => \ULAUnit|UlaInstance|Somador|Add0~44_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~112_combout\);

-- Location: LCCOMB_X25_Y20_N20
\ULAUnit|UlaInstance|Result[22]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[22]~151_combout\ = (\ULAUnit|UlaInstance|Result[22]~112_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[22]~112_combout\,
	combout => \ULAUnit|UlaInstance|Result[22]~151_combout\);

-- Location: LCCOMB_X20_Y20_N6
\ULAUnit|UlaInstance|Result[25]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[25]~154_combout\ = (\ULAUnit|UlaInstance|Result[25]~118_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[25]~118_combout\,
	combout => \ULAUnit|UlaInstance|Result[25]~154_combout\);

-- Location: LCCOMB_X20_Y20_N0
\ULAUnit|UlaInstance|Result[27]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[27]~156_combout\ = (\ULAUnit|UlaInstance|Result[27]~122_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[27]~122_combout\,
	combout => \ULAUnit|UlaInstance|Result[27]~156_combout\);

-- Location: LCCOMB_X20_Y22_N8
\ULAUnit|UlaInstance|Result[30]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAUnit|UlaInstance|Result[30]~159_combout\ = (\ULAUnit|UlaInstance|Result[30]~128_combout\ & ((\Control|ULAOp[1]~1_combout\) # (\ULAUnit|UlaInstance|Result[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ULAOp[1]~1_combout\,
	datac => \ULAUnit|UlaInstance|Result[1]~69_combout\,
	datad => \ULAUnit|UlaInstance|Result[30]~128_combout\,
	combout => \ULAUnit|UlaInstance|Result[30]~159_combout\);

-- Location: LCFF_X21_Y23_N29
\RegDados|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(0));

-- Location: LCCOMB_X21_Y23_N28
\Mux3|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[0]~0_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(0))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(0),
	datad => \RegULASaida|q\(0),
	combout => \Mux3|S[0]~0_combout\);

-- Location: LCFF_X25_Y21_N11
\RegULASaida|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[1]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(1));

-- Location: LCFF_X25_Y22_N29
\RegDados|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(1));

-- Location: LCCOMB_X25_Y22_N28
\Mux3|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[1]~1_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(1)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(1),
	datac => \RegDados|q\(1),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[1]~1_combout\);

-- Location: LCFF_X25_Y21_N1
\RegDados|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(2));

-- Location: LCFF_X24_Y21_N7
\RegULASaida|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[2]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(2));

-- Location: LCCOMB_X25_Y21_N0
\Mux3|S[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[2]~2_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(2))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(2),
	datad => \RegULASaida|q\(2),
	combout => \Mux3|S[2]~2_combout\);

-- Location: LCFF_X21_Y23_N7
\RegDados|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(3));

-- Location: LCFF_X25_Y21_N31
\RegULASaida|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[3]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(3));

-- Location: LCCOMB_X21_Y23_N6
\Mux3|S[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[3]~3_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(3))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(3),
	datad => \RegULASaida|q\(3),
	combout => \Mux3|S[3]~3_combout\);

-- Location: LCFF_X24_Y21_N13
\RegULASaida|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[4]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(4));

-- Location: LCFF_X25_Y21_N23
\RegDados|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(4));

-- Location: LCCOMB_X25_Y21_N22
\Mux3|S[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[4]~4_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(4)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(4),
	datac => \RegDados|q\(4),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[4]~4_combout\);

-- Location: LCFF_X23_Y23_N19
\RegDados|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(5));

-- Location: LCCOMB_X24_Y23_N22
\Mux3|S[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[5]~5_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(5)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegULASaida|q\(5),
	datad => \RegDados|q\(5),
	combout => \Mux3|S[5]~5_combout\);

-- Location: LCFF_X24_Y23_N1
\RegDados|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(6));

-- Location: LCCOMB_X24_Y23_N0
\Mux3|S[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[6]~6_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(6))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(6),
	datad => \RegULASaida|q\(6),
	combout => \Mux3|S[6]~6_combout\);

-- Location: LCFF_X22_Y25_N17
\RegULASaida|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(7));

-- Location: LCFF_X22_Y25_N3
\RegDados|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(7));

-- Location: LCCOMB_X22_Y25_N2
\Mux3|S[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[7]~7_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(7)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(7),
	datac => \RegDados|q\(7),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[7]~7_combout\);

-- Location: LCFF_X23_Y23_N31
\RegDados|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(8));

-- Location: LCCOMB_X22_Y24_N30
\Mux3|S[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[8]~8_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(8)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(8),
	datab => \Control|currentState.S4~regout\,
	datad => \RegDados|q\(8),
	combout => \Mux3|S[8]~8_combout\);

-- Location: LCFF_X21_Y23_N1
\RegDados|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(9));

-- Location: LCFF_X21_Y22_N1
\RegULASaida|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[9]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(9));

-- Location: LCCOMB_X21_Y23_N0
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

-- Location: LCFF_X21_Y22_N29
\RegULASaida|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[10]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(10));

-- Location: LCFF_X21_Y23_N19
\RegDados|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(10));

-- Location: LCCOMB_X21_Y23_N18
\Mux3|S[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[10]~10_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(10)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(10),
	datac => \RegDados|q\(10),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[10]~10_combout\);

-- Location: LCFF_X22_Y25_N11
\RegDados|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(11));

-- Location: LCCOMB_X22_Y25_N10
\Mux3|S[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[11]~11_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(11)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(11),
	datac => \RegDados|q\(11),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[11]~11_combout\);

-- Location: LCFF_X21_Y22_N17
\RegULASaida|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[12]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(12));

-- Location: LCFF_X20_Y21_N29
\RegDados|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(12));

-- Location: LCCOMB_X20_Y21_N28
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

-- Location: LCFF_X22_Y19_N7
\RegULASaida|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[13]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(13));

-- Location: LCFF_X20_Y23_N29
\RegDados|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(13));

-- Location: LCCOMB_X20_Y23_N28
\Mux3|S[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[13]~13_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(13)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(13),
	datac => \RegDados|q\(13),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[13]~13_combout\);

-- Location: LCFF_X20_Y21_N27
\RegDados|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(14));

-- Location: LCFF_X20_Y21_N21
\RegULASaida|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[14]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(14));

-- Location: LCCOMB_X20_Y21_N26
\Mux3|S[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[14]~14_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(14))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(14),
	datad => \RegULASaida|q\(14),
	combout => \Mux3|S[14]~14_combout\);

-- Location: LCFF_X21_Y23_N9
\RegDados|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(15));

-- Location: LCCOMB_X21_Y23_N8
\Mux3|S[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[15]~15_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(15))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(15),
	datad => \RegULASaida|q\(15),
	combout => \Mux3|S[15]~15_combout\);

-- Location: LCFF_X20_Y22_N19
\RegULASaida|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[16]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(16));

-- Location: LCFF_X19_Y22_N25
\RegDados|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(16));

-- Location: LCCOMB_X19_Y22_N24
\Mux3|S[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[16]~16_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(16)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(16),
	datac => \RegDados|q\(16),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[16]~16_combout\);

-- Location: LCFF_X19_Y20_N1
\RegDados|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(17));

-- Location: LCFF_X20_Y20_N11
\RegULASaida|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[17]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(17));

-- Location: LCCOMB_X19_Y20_N0
\Mux3|S[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[17]~17_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(17))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(17),
	datad => \RegULASaida|q\(17),
	combout => \Mux3|S[17]~17_combout\);

-- Location: LCFF_X22_Y19_N11
\RegULASaida|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[18]~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(18));

-- Location: LCFF_X21_Y23_N31
\RegDados|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(18));

-- Location: LCCOMB_X21_Y23_N30
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

-- Location: LCFF_X18_Y20_N13
\RegULASaida|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[19]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(19));

-- Location: LCFF_X18_Y20_N7
\RegDados|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(19));

-- Location: LCCOMB_X18_Y20_N6
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

-- Location: LCFF_X18_Y20_N23
\RegDados|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(20));

-- Location: LCFF_X18_Y20_N27
\RegULASaida|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[20]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(20));

-- Location: LCCOMB_X18_Y20_N22
\Mux3|S[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[20]~20_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(20))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(20),
	datad => \RegULASaida|q\(20),
	combout => \Mux3|S[20]~20_combout\);

-- Location: LCFF_X19_Y22_N7
\RegULASaida|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[21]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(21));

-- Location: LCFF_X19_Y22_N23
\RegDados|q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(21));

-- Location: LCCOMB_X19_Y22_N22
\Mux3|S[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[21]~21_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(21)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(21),
	datac => \RegDados|q\(21),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[21]~21_combout\);

-- Location: LCFF_X25_Y20_N27
\RegDados|q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(22));

-- Location: LCCOMB_X25_Y20_N26
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

-- Location: LCFF_X19_Y20_N3
\RegDados|q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(23));

-- Location: LCCOMB_X19_Y20_N2
\Mux3|S[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[23]~23_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(23))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(23),
	datad => \RegULASaida|q\(23),
	combout => \Mux3|S[23]~23_combout\);

-- Location: LCFF_X20_Y19_N21
\RegDados|q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(24));

-- Location: LCCOMB_X20_Y19_N20
\Mux3|S[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[24]~24_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(24))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(24),
	datad => \RegULASaida|q\(24),
	combout => \Mux3|S[24]~24_combout\);

-- Location: LCFF_X19_Y20_N29
\RegDados|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(25));

-- Location: LCFF_X20_Y20_N7
\RegULASaida|q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[25]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(25));

-- Location: LCCOMB_X19_Y20_N28
\Mux3|S[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[25]~25_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(25))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(25),
	datad => \RegULASaida|q\(25),
	combout => \Mux3|S[25]~25_combout\);

-- Location: LCFF_X20_Y19_N29
\RegDados|q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(26));

-- Location: LCCOMB_X20_Y19_N28
\Mux3|S[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[26]~26_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(26)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(26),
	datac => \RegDados|q\(26),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[26]~26_combout\);

-- Location: LCFF_X19_Y20_N19
\RegDados|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(27));

-- Location: LCFF_X20_Y20_N1
\RegULASaida|q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[27]~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(27));

-- Location: LCCOMB_X19_Y20_N18
\Mux3|S[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[27]~27_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(27))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(27),
	datad => \RegULASaida|q\(27),
	combout => \Mux3|S[27]~27_combout\);

-- Location: LCFF_X21_Y23_N13
\RegDados|q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(28));

-- Location: LCCOMB_X21_Y23_N12
\Mux3|S[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[28]~28_combout\ = (\Control|currentState.S4~regout\ & (\RegDados|q\(28))) # (!\Control|currentState.S4~regout\ & ((\RegULASaida|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S4~regout\,
	datac => \RegDados|q\(28),
	datad => \RegULASaida|q\(28),
	combout => \Mux3|S[28]~28_combout\);

-- Location: LCFF_X24_Y23_N5
\RegDados|q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(29));

-- Location: LCCOMB_X24_Y23_N4
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

-- Location: LCFF_X20_Y22_N9
\RegULASaida|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ULAUnit|UlaInstance|Result[30]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegULASaida|q\(30));

-- Location: LCFF_X19_Y22_N19
\RegDados|q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(30));

-- Location: LCCOMB_X19_Y22_N18
\Mux3|S[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[30]~30_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(30)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(30),
	datac => \RegDados|q\(30),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[30]~30_combout\);

-- Location: LCFF_X21_Y23_N23
\RegDados|q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \i_in~combout\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegDados|q\(31));

-- Location: LCCOMB_X21_Y23_N22
\Mux3|S[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3|S[31]~31_combout\ = (\Control|currentState.S4~regout\ & ((\RegDados|q\(31)))) # (!\Control|currentState.S4~regout\ & (\RegULASaida|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegULASaida|q\(31),
	datac => \RegDados|q\(31),
	datad => \Control|currentState.S4~regout\,
	combout => \Mux3|S[31]~31_combout\);

-- Location: LCCOMB_X20_Y19_N22
\RegIns|addr_Output3[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(0) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output3\(0))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output3\(0),
	datac => \i_in~combout\(16),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(0));

-- Location: LCCOMB_X22_Y24_N12
\RegIns|addr_Output5[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(11) = (\Control|currentState.S0~regout\ & (\RegIns|addr_Output5\(11))) # (!\Control|currentState.S0~regout\ & ((\i_in~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(11),
	datab => \i_in~combout\(11),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(11));

-- Location: LCCOMB_X21_Y19_N6
\Mux2|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[0]~0_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(11)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output3\(0),
	datab => \RegIns|addr_Output5\(11),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[0]~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\RegIns|addr_Output3[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(1) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output3\(1))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output3\(1),
	datac => \i_in~combout\(17),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(1));

-- Location: LCCOMB_X21_Y19_N16
\Mux2|S[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[1]~1_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(12)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S7~regout\,
	datac => \RegIns|addr_Output3\(1),
	datad => \RegIns|addr_Output5\(12),
	combout => \Mux2|S[1]~1_combout\);

-- Location: LCCOMB_X21_Y23_N2
\RegIns|addr_Output3[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(2) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\RegIns|addr_Output3\(2))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\i_in~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output3\(2),
	datac => \i_in~combout\(18),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(2));

-- Location: LCCOMB_X21_Y23_N24
\Mux2|S[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[2]~2_combout\ = (\Control|currentState.S7~regout\ & ((\RegIns|addr_Output5\(13)))) # (!\Control|currentState.S7~regout\ & (\RegIns|addr_Output3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output3\(2),
	datac => \RegIns|addr_Output5\(13),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[2]~2_combout\);

-- Location: LCCOMB_X20_Y21_N16
\RegIns|addr_Output5[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(14) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(14)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(14),
	datac => \RegIns|addr_Output5\(14),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(14));

-- Location: LCCOMB_X18_Y23_N16
\RegIns|addr_Output3[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output3\(3) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output3\(3)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_in~combout\(19),
	datac => \RegIns|addr_Output3\(3),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output3\(3));

-- Location: LCCOMB_X19_Y22_N28
\Mux2|S[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[3]~3_combout\ = (\Control|currentState.S7~regout\ & (\RegIns|addr_Output5\(14))) # (!\Control|currentState.S7~regout\ & ((\RegIns|addr_Output3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(14),
	datac => \Control|currentState.S7~regout\,
	datad => \RegIns|addr_Output3\(3),
	combout => \Mux2|S[3]~3_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Mux2|S[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2|S[4]~4_combout\ = (\Control|currentState.S7~regout\ & (\RegIns|addr_Output5\(15))) # (!\Control|currentState.S7~regout\ & ((\RegIns|addr_Output3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegIns|addr_Output5\(15),
	datac => \RegIns|addr_Output3\(4),
	datad => \Control|currentState.S7~regout\,
	combout => \Mux2|S[4]~4_combout\);

-- Location: LCCOMB_X25_Y21_N14
\Mux6|S[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[1]~2_combout\ = (\RegULASaida|q\(1) & ((\Control|currentState.S8~regout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[1]~68_combout\)))) # (!\RegULASaida|q\(1) & (!\Control|currentState.S0~regout\ & 
-- ((\ULAUnit|UlaInstance|Result[1]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(1),
	datab => \Control|currentState.S0~regout\,
	datac => \Control|currentState.S8~regout\,
	datad => \ULAUnit|UlaInstance|Result[1]~68_combout\,
	combout => \Mux6|S[1]~2_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Mux6|S[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[7]~13_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(7))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output7\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(7),
	datab => \RegIns|addr_Output7\(5),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[7]~13_combout\);

-- Location: LCCOMB_X22_Y25_N24
\Mux6|S[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[7]~14_combout\ = (\Mux6|S[7]~13_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[7]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[7]~13_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[7]~82_combout\,
	combout => \Mux6|S[7]~14_combout\);

-- Location: LCCOMB_X22_Y24_N24
\RegIns|addr_Output5[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output5\(7) = (\Control|currentState.S0~regout\ & ((\RegIns|addr_Output5\(7)))) # (!\Control|currentState.S0~regout\ & (\i_in~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(7),
	datac => \RegIns|addr_Output5\(7),
	datad => \Control|currentState.S0~regout\,
	combout => \RegIns|addr_Output5\(7));

-- Location: LCCOMB_X21_Y23_N10
\Mux6|S[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[9]~17_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(9)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegIns|addr_Output5\(7),
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(9),
	combout => \Mux6|S[9]~17_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Mux6|S[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[9]~18_combout\ = (\Mux6|S[9]~17_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[9]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \ULAUnit|UlaInstance|Result[9]~86_combout\,
	datad => \Mux6|S[9]~17_combout\,
	combout => \Mux6|S[9]~18_combout\);

-- Location: LCCOMB_X21_Y22_N6
\Mux6|S[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[12]~23_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(12)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegIns|addr_Output5\(10),
	datab => \Control|currentState.S8~regout\,
	datac => \Control|currentState.S0~regout\,
	datad => \RegULASaida|q\(12),
	combout => \Mux6|S[12]~23_combout\);

-- Location: LCCOMB_X21_Y22_N20
\Mux6|S[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[12]~24_combout\ = (\Mux6|S[12]~23_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[12]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[12]~23_combout\,
	datab => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[12]~92_combout\,
	combout => \Mux6|S[12]~24_combout\);

-- Location: LCCOMB_X19_Y22_N2
\Mux6|S[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[16]~31_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(16)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output5\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \RegIns|addr_Output5\(14),
	datac => \RegULASaida|q\(16),
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[16]~31_combout\);

-- Location: LCCOMB_X19_Y22_N16
\Mux6|S[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[16]~32_combout\ = (\Mux6|S[16]~31_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[16]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[16]~31_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[16]~100_combout\,
	combout => \Mux6|S[16]~32_combout\);

-- Location: LCCOMB_X19_Y20_N16
\Mux6|S[17]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[17]~33_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(17))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output5\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(17),
	datab => \RegIns|addr_Output5\(15),
	datac => \Control|currentState.S8~regout\,
	datad => \Control|currentState.S0~regout\,
	combout => \Mux6|S[17]~33_combout\);

-- Location: LCCOMB_X19_Y20_N14
\Mux6|S[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[17]~34_combout\ = (\Mux6|S[17]~33_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[17]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Mux6|S[17]~33_combout\,
	datad => \ULAUnit|UlaInstance|Result[17]~102_combout\,
	combout => \Mux6|S[17]~34_combout\);

-- Location: LCCOMB_X18_Y20_N24
\Mux6|S[19]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[19]~37_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(19))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegULASaida|q\(19),
	datab => \RegIns|addr_Output3\(1),
	datac => \Control|currentState.S0~regout\,
	datad => \Control|currentState.S8~regout\,
	combout => \Mux6|S[19]~37_combout\);

-- Location: LCCOMB_X18_Y20_N10
\Mux6|S[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[19]~38_combout\ = (\Mux6|S[19]~37_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[19]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[19]~37_combout\,
	datad => \ULAUnit|UlaInstance|Result[19]~106_combout\,
	combout => \Mux6|S[19]~38_combout\);

-- Location: LCCOMB_X19_Y22_N8
\Mux6|S[21]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[21]~41_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(21)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output3\(3)))))

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
	combout => \Mux6|S[21]~41_combout\);

-- Location: LCCOMB_X19_Y22_N4
\Mux6|S[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[21]~42_combout\ = (\Mux6|S[21]~41_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[21]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|currentState.S0~regout\,
	datac => \Mux6|S[21]~41_combout\,
	datad => \ULAUnit|UlaInstance|Result[21]~110_combout\,
	combout => \Mux6|S[21]~42_combout\);

-- Location: LCCOMB_X19_Y20_N4
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

-- Location: LCCOMB_X19_Y20_N26
\Mux6|S[25]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[25]~49_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & ((\RegULASaida|q\(25)))) # (!\Control|currentState.S8~regout\ & (\RegIns|addr_Output6\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegIns|addr_Output6\(23),
	datad => \RegULASaida|q\(25),
	combout => \Mux6|S[25]~49_combout\);

-- Location: LCCOMB_X19_Y20_N22
\Mux6|S[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[25]~50_combout\ = (\Mux6|S[25]~49_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[25]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[25]~49_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[25]~118_combout\,
	combout => \Mux6|S[25]~50_combout\);

-- Location: LCCOMB_X19_Y20_N30
\RegIns|addr_Output6[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegIns|addr_Output6\(25) = (GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & ((\RegIns|addr_Output6\(25)))) # (!GLOBAL(\Control|currentState.S0~clkctrl_outclk\) & (\i_in~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_in~combout\(25),
	datab => \RegIns|addr_Output6\(25),
	datad => \Control|currentState.S0~clkctrl_outclk\,
	combout => \RegIns|addr_Output6\(25));

-- Location: LCCOMB_X19_Y20_N6
\Mux6|S[27]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[27]~53_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(27))) # (!\Control|currentState.S8~regout\ & ((\RegIns|addr_Output6\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datab => \Control|currentState.S8~regout\,
	datac => \RegULASaida|q\(27),
	datad => \RegIns|addr_Output6\(25),
	combout => \Mux6|S[27]~53_combout\);

-- Location: LCCOMB_X19_Y20_N20
\Mux6|S[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[27]~54_combout\ = (\Mux6|S[27]~53_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[27]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6|S[27]~53_combout\,
	datac => \Control|currentState.S0~regout\,
	datad => \ULAUnit|UlaInstance|Result[27]~122_combout\,
	combout => \Mux6|S[27]~54_combout\);

-- Location: LCCOMB_X20_Y22_N26
\PC1|addr_Output[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(30) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[30]~60_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(30),
	datac => \Mux6|S[30]~60_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(30));

-- Location: LCCOMB_X19_Y22_N30
\Mux6|S[30]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[30]~59_combout\ = (\Control|currentState.S0~regout\ & ((\Control|currentState.S8~regout\ & (\RegULASaida|q\(30))) # (!\Control|currentState.S8~regout\ & ((\PC1|addr_Output\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S8~regout\,
	datab => \RegULASaida|q\(30),
	datac => \Control|currentState.S0~regout\,
	datad => \PC1|addr_Output\(30),
	combout => \Mux6|S[30]~59_combout\);

-- Location: LCCOMB_X20_Y22_N24
\Mux6|S[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6|S[30]~60_combout\ = (\Mux6|S[30]~59_combout\) # ((!\Control|currentState.S0~regout\ & \ULAUnit|UlaInstance|Result[30]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|currentState.S0~regout\,
	datac => \Mux6|S[30]~59_combout\,
	datad => \ULAUnit|UlaInstance|Result[30]~128_combout\,
	combout => \Mux6|S[30]~60_combout\);

-- Location: LCCOMB_X25_Y21_N26
\PC1|addr_Output[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(1) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[1]~2_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(1),
	datac => \Mux6|S[1]~2_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(1));

-- Location: LCCOMB_X22_Y25_N22
\PC1|addr_Output[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(7) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[7]~14_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(7),
	datac => \Mux6|S[7]~14_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(7));

-- Location: LCCOMB_X21_Y22_N14
\PC1|addr_Output[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(12) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[12]~24_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC1|addr_Output\(12),
	datac => \Mux6|S[12]~24_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(12));

-- Location: LCCOMB_X19_Y22_N12
\PC1|addr_Output[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(16) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[16]~32_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(16),
	datac => \Mux6|S[16]~32_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(16));

-- Location: LCCOMB_X19_Y20_N10
\PC1|addr_Output[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(17) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[17]~34_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(17),
	datac => \Mux6|S[17]~34_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(17));

-- Location: LCCOMB_X19_Y22_N20
\PC1|addr_Output[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(21) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[21]~42_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(21),
	datac => \Mux6|S[21]~42_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(21));

-- Location: LCCOMB_X19_Y20_N8
\PC1|addr_Output[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(25) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\Mux6|S[25]~50_combout\)) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\PC1|addr_Output\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6|S[25]~50_combout\,
	datac => \PC1|addr_Output\(25),
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(25));

-- Location: LCCOMB_X19_Y20_N12
\PC1|addr_Output[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC1|addr_Output\(27) = (GLOBAL(\writeEnablePC~clkctrl_outclk\) & ((\Mux6|S[27]~54_combout\))) # (!GLOBAL(\writeEnablePC~clkctrl_outclk\) & (\PC1|addr_Output\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC1|addr_Output\(27),
	datac => \Mux6|S[27]~54_combout\,
	datad => \writeEnablePC~clkctrl_outclk\,
	combout => \PC1|addr_Output\(27));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(0));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[1]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[2]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(2));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[3]~132_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(3));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[4]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(4));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[5]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[6]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(6));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[7]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(7));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[8]~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(8));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[9]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(9));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[10]~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(10));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[11]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(11));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[12]~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(12));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[13]~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(13));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[14]~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(14));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[15]~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(15));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[16]~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(16));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[17]~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(17));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[18]~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(18));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[19]~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(19));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[20]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(20));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[21]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(21));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[22]~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(22));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[23]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(23));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[24]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(24));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[25]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(25));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[26]~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(26));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[27]~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(27));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[28]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(28));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[29]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(29));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[30]~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(30));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ULAUnit|UlaInstance|Result[31]~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_dt_saida(31));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(1));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(4));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(6));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(8));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(9));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(10));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(11));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(12));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(13));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(14));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(15));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[16]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(16));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[17]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(17));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(18));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[19]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(19));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[20]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(20));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[21]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(21));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[22]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(22));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[23]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(23));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[24]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(24));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[25]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(25));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[26]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(26));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[27]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(27));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[29]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(29));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux6|S[31]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_entradaPC(31));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(0));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(2));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(3));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(4));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(7));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(8));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(9));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(10));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(11));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(12));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(14));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(15));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(16));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(17));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(18));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(19));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(20));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(21));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(22));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(23));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(24));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(25));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(26));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(27));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(28));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(29));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(30));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \PC1|addr_Output\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_control_saidaPC(31));
END structure;


