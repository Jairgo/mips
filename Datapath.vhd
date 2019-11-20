LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
      
ENTITY Datapath IS
	PORT(
		clock, reset : IN std_logic;
		i_in : IN std_logic_vector(31 DOWNTO 0);
		i_dt1, i_dt2 : IN std_logic_vector(31 DOWNTO 0);
		control_ULAFonteA, control_EscReg, control_RegDst, control_PCEscCond, control_PCEsc, control_IouD, control_LerMem, control_EscMem, control_MemParaReg, control_IREsc : OUT std_logic;
		control_FontePC, control_ULAOp, control_ULAFonteB : OUT std_logic_vector(1 DOWNTO 0);
		control_instruction : OUT std_logic_vector(31 DOWNTO 0);
		control_dt_saida : OUT std_logic_vector(31 DOWNTO 0);
		control_data_3_EntradaMemDados : OUT std_logic_vector(31 DOWNTO 0);
		control_regRd_Mux : OUT std_logic_vector(4 DOWNTO 0);
		control_entradaPC, control_saidaPC : OUT std_logic_vector(31 DOWNTO 0)
	);
END Datapath;
  
ARCHITECTURE Behavior OF Datapath IS

	COMPONENT ULA_Wrapper IS
		GENERIC (DATA : integer := 32);
			PORT 
			(
				A: IN std_logic_vector  (DATA-1 DOWNTO 0);
				B: IN std_logic_vector  (DATA-1 DOWNTO 0);
				ULAOp: IN std_logic_vector  (1 DOWNTO 0);
				Funct: IN std_logic_vector  (5 DOWNTO 0);
				Result: OUT std_logic_vector (DATA-1 DOWNTO 0);
				Zero: OUT std_logic
			);
	END COMPONENT;
	
	COMPONENT regInstrucao IS 
    PORT(
        IRWrite: IN std_logic;
        instrucInput: IN std_logic_vector(31 DOWNTO 0);
		opCode: OUT std_logic_vector(5 DOWNTO 0);
		regRs: OUT std_logic_vector(4 DOWNTO 0);
		regRt: OUT std_logic_vector(4 DOWNTO 0);
		regRd: OUT std_logic_vector(4 DOWNTO 0);
		imm: OUT std_logic_vector(15 DOWNTO 0);
		jumpAddr: OUT std_logic_vector(25 DOWNTO 0);
		funcCode: OUT std_logic_vector(5 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT memInstrucao IS GENERIC ( DATA_WIDTH :integer := 32; ADDR_WIDTH :integer := 10 );
		PORT(
			addressIn: IN std_logic_vector(31 DOWNTO 0); --address Input 
			data1: OUT std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Output rs
			data3: IN std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Input 
			MemRead: IN std_logic;
			MemWrite: IN std_logic
		); 
	END COMPONENT;
	
	COMPONENT memDados IS GENERIC ( DATA_WIDTH :integer := 32; ADDR_WIDTH :integer := 5 );
		PORT(
			address1: IN std_logic_vector(ADDR_WIDTH-1 DOWNTO 0); --address Input read register rs
			address2: IN std_logic_vector(ADDR_WIDTH-1 DOWNTO 0); --address Input read register rt
			address3: IN std_logic_vector(ADDR_WIDTH-1 DOWNTO 0); --address Input write resister rd
			data1: OUT std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Output rs
			data2: OUT std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data output rt
			data3: IN std_logic_vector(DATA_WIDTH-1 DOWNTO 0); --data Input 
			RegWrite: IN std_logic
        ); 
	END COMPONENT;
	
	COMPONENT Mux2x1 IS
		GENERIC (N : integer := 32);
		PORT(
			A: IN std_logic_vector (N-1 DOWNTO 0);
			B: IN std_logic_vector (N-1 DOWNTO 0);
			sel: IN std_logic;
			S: OUT std_logic_vector (N-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT Mux4x1 IS
		GENERIC (N : integer := 32);
		PORT(
			A: IN std_logic_vector  (N-1 DOWNTO 0);
			B: IN std_logic_vector  (N-1 DOWNTO 0);
			C: IN std_logic_vector  (N-1 DOWNTO 0);
			D: IN std_logic_vector  (N-1 DOWNTO 0);
			sel: IN std_logic_vector (1 DOWNTO 0);
			S: OUT std_logic_vector (N-1 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT bitsReg IS 
		PORT (
			data: IN std_logic_vector(31 DOWNTO 0);
			clk: IN std_logic;
			q: OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT ProgramCounter IS
		PORT(
			writeEnable: IN  std_logic;
			addrInput: IN  std_logic_vector(31 DOWNTO 0);
			addrOutput: OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT SignalExtender IS 
		PORT(
			dataIn: IN  std_logic_vector(15 DOWNTO 0);
			dataOut: OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT shiftLeft2 IS
		PORT(
			dataIn: IN  std_logic_vector(31 DOWNTO 0);
			dataOut: OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT shiftleft22 IS
		PORT(
			dataIn: IN std_logic_vector(25 DOWNTO 0);
			dataOut: OUT std_logic_vector(27 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT Controle IS
		PORT(
			clock, reset: IN std_logic;
			Op: IN std_logic_vector(5 DOWNTO 0);
			FontePC: OUT std_logic_vector(1 DOWNTO 0);
			ULAOp: OUT std_logic_vector(1 DOWNTO 0);
			ULAFonteB: OUT std_logic_vector(1 DOWNTO 0);
			ULAFonteA: OUT std_logic;
			EscReg: OUT std_logic;
			RegDst: OUT std_logic;
			PCEscCond: OUT std_logic;
			PCEsc: OUT std_logic;
			IouD: OUT std_logic;
			LerMem: OUT std_logic;
			EscMem: OUT std_logic;
			MemParaReg: OUT std_logic;
			IREsc: OUT std_logic
		);
	END COMPONENT;
	
	SIGNAL ULAFonteA, EscReg, RegDst, PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc : std_logic;
	SIGNAL FontePC, ULAOp, ULAFonteB : std_logic_vector(1 DOWNTO 0);
	
	SIGNAL Zero: std_logic;
	SIGNAL RegAULA, RegBULA, Result, addressIn, dataEntradaMemInstrucao, dataSaidaMemInstrucao : std_logic_vector (31 DOWNTO 0);
	
	--RegInstrucao
	SIGNAL opCode, funcCode : std_logic_vector(5 DOWNTO 0);
	SIGNAL regRs, regRt, regRd, regRd_Mux : std_logic_vector(4 DOWNTO 0);
	SIGNAL imm : std_logic_vector(15 DOWNTO 0);
	SIGNAL jumpAddr : std_logic_vector(25 DOWNTO 0);

	--PC
	SIGNAL entradaPC : std_logic_vector(31 DOWNTO 0);
	SIGNAL writeEnablePC : std_logic;
	SIGNAL saidaPC : std_logic_vector(31 DOWNTO 0);
	
	--Mem dados
	SIGNAL data_1_SaidaMemDados, data_2_SaidaMemDados, data_3_EntradaMemDados : std_logic_vector(31 DOWNTO 0);
	
	--Regs genericos
	SIGNAL saidaRegDadosGenerico, saidaRegA, saidaRegB, saidaRegULA : std_logic_vector(31 DOWNTO 0);
	
	--Extender
	SIGNAL saidaExtender : std_logic_vector(31 DOWNTO 0);
	
	--Deslocador
	SIGNAL saidaDeslocador1 : std_logic_vector(31 DOWNTO 0);
	SIGNAL saidaDeslocador2 : std_logic_vector(27 DOWNTO 0);
	
	--Sinal desvio incondicional
	SIGNAL desvioJ : std_logic_vector(31 DOWNTO 0);
	SIGNAL temp, temp_dt1, temp_dt2 : std_logic_vector (31 DOWNTO 0);
	
	begin
	
		control_ULAFonteA <= ULAFonteA;
		control_EscReg <= EscReg;
		control_RegDst <= RegDst;
		control_PCEscCond <= PCEscCond;
		control_PCEsc <= PCEsc;
		control_IouD <= IouD;
		control_LerMem <= LerMem;
		control_EscMem <= EscMem;
		control_MemParaReg <= MemParaReg;
		control_IREsc <= IREsc;
		control_FontePC <= FontePC;
		control_ULAOp <= ULAOp;
		control_ULAFonteB <= ULAFonteB;
		control_instruction <= dataSaidaMemInstrucao;
		control_dt_saida <= Result;
		control_data_3_EntradaMemDados <= data_3_EntradaMemDados;
		control_regRd_Mux <= regRd_Mux;
		control_entradaPC <= entradaPC;
		control_saidaPC <= saidaPC;
	
		writeEnablePC <= (PCEscCond and Zero) or PCEsc;
		desvioJ(27 DOWNTO 0) <= saidaDeslocador2;
		desvioJ(31 DOWNTO 28) <= saidaPC(31 DOWNTO 28);
		
		dataSaidaMemInstrucao <= i_in;
		data_1_SaidaMemDados <= i_dt1;
		data_2_SaidaMemDados <= i_dt2;
			
		Control: Controle port map (clock, reset, opCode, FontePC, ULAOp, ULAFonteB, ULAFonteA, EscReg, RegDst, PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc);
	
		ULAUnit: ULA_Wrapper generic map (DATA => 32) port map (RegAULA, RegBULA, ULAOp, funcCode, Result, Zero);
		RegIns: regInstrucao port map (IREsc, dataSaidaMemInstrucao, opCode, regRs, regRt, regRd, imm, jumpAddr, funcCode);
		MemIns: memInstrucao generic map (DATA_WIDTH => 32, ADDR_WIDTH => 10 ) port map (addressIn, temp, saidaRegB, LerMem, EscMem);
		MemDad: memDados generic map (DATA_WIDTH => 32, ADDR_WIDTH => 5) port map (regRs, regRt, regRd_Mux, temp_dt1, temp_dt2, data_3_EntradaMemDados, EscReg);
		
		--Regs genericos
		RegA: bitsReg port map (data_1_SaidaMemDados, clock, saidaRegA);
		RegB: bitsReg port map (data_2_SaidaMemDados, clock, saidaRegB);
		RegDados: bitsReg port map(dataSaidaMemInstrucao, clock, saidaRegDadosGenerico);
		RegULASaida: bitsReg port map (Result, clock, saidaRegULA);
		
		--Mux
		Mux1: Mux2x1 generic map (N => 32) port map (saidaPC, saidaRegULA, IouD, addressIn); -- Mux PC MemInstrucao
		Mux2: Mux2x1 generic map (N => 5) port map (regRt, regRd, RegDst, regRd_Mux); -- Mux Reg Instrucao Mem Dados
		Mux3: Mux2x1 generic map (N => 32) port map (saidaRegULA, saidaRegDadosGenerico, MemParaReg, data_3_EntradaMemDados); -- Mux regDadosGenericos Mem Dados
		Mux4: Mux2x1 generic map (N => 32) port map (saidaPC, saidaRegA, ULAFonteA, RegAULA); -- Mux entrada A ULA
		Mux5: Mux4x1 generic map (N => 32) port map (saidaRegB, "00000000000000000000000000000100", saidaExtender, saidaDeslocador1, ULAFonteB, regBULA); -- Mux entrada B ULA
		Mux6: Mux4x1 generic map (N => 32) port map (Result, saidaRegULA, desvioJ, "00000000000000000000000000000000", FontePC, entradaPC);
		
		--Deslocamento e extenção de sinal
		Extender1: SignalExtender port map (imm, saidaExtender);
		Desloca1: shiftLeft2 port map (saidaExtender, saidaDeslocador1);
		Desloca2: shiftleft22 port map (jumpAddr, saidaDeslocador2);
		
		PC1: ProgramCounter port map (writeEnablePC, entradaPC, saidaPC);
  
END Behavior;