LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MIPS is
	port 
	(
		clock, reset :in  std_logic
	);
end MIPS;

ARCHITECTURE Behavior of MIPS is

	signal ULAFonteA, EscReg, RegDst, PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc: std_logic;
	signal FontePC, ULAOp, ULAFonteB: std_logic_vector(1 DOWNTO 0);
	signal Op: std_logic_vector(5 DOWNTO 0);

	component Controle is
		port(
			clock, reset: in std_logic;
			Op: in std_logic_vector(5 DOWNTO 0);
			FontePC, ULAOp, ULAFonteB: out std_logic_vector(1 DOWNTO 0);
			ULAFonteA, EscReg, RegDst, PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc: out std_logic
		);
	end component;

	component Datapath is
		port (
			clock : in std_logic;
			FontePC, ULAOp, ULAFonteB: in std_logic_vector(1 DOWNTO 0);
			ULAFonteA, EscReg, RegDst, PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc: in std_logic;
			opcode : out std_logic_vector(5 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	
	BlocoControle : Controle port map (
		clock => clock, 
		reset => reset,
		Op => Op,
		FontePC => FontePC,
		ULAOp => ULAOp,
		ULAFonteB => ULAFonteB,
		ULAFonteA => ULAFonteA,
		EscReg => EscReg,
		RegDst => RegDst,
		PCEscCond => PCEscCond,
		PCEsc => PCEsc,
		IouD => IouD,
		LerMem => LerMem,
		EscMem => EscMem,
		MemParaReg => MemParaReg,
		IREsc => IREsc
	);

	BlocoOperativo : Datapath port map (
		FontePC => FontePC,
		ULAOp => ULAOp,
		ULAFonteB => ULAFonteB,
		ULAFonteA => ULAFonteA,
		EscReg => EscReg,
		RegDst => RegDst,
		PCEscCond => PCEscCond,
		PCEsc => PCEsc,
		IouD => IouD,
		LerMem => LerMem,
		EscMem => EscMem,
		MemParaReg => MemParaReg,
		IREsc => IREsc,
		clock => clock,
		OpCode => Op
	);
			
END Behavior;
