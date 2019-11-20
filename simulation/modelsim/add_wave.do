onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath/clock
add wave -noupdate /datapath/reset
add wave -noupdate /datapath/i_in
add wave -noupdate /datapath/i_dt1
add wave -noupdate /datapath/i_dt2
add wave -noupdate /datapath/dbg_ULAFonteA
add wave -noupdate /datapath/dbg_EscReg
add wave -noupdate /datapath/dbg_RegDst
add wave -noupdate /datapath/dbg_PCEscCond
add wave -noupdate /datapath/dbg_PCEsc
add wave -noupdate /datapath/dbg_IouD
add wave -noupdate -radix binary /datapath/dbg_LerMem
add wave -noupdate /datapath/dbg_EscMem
add wave -noupdate /datapath/dbg_MemParaReg
add wave -noupdate /datapath/dbg_IREsc
add wave -noupdate /datapath/dbg_FontePC
add wave -noupdate /datapath/dbg_ULAOp
add wave -noupdate /datapath/dbg_ULAFonteB
add wave -noupdate /datapath/dbg_instruction
add wave -noupdate -radix symbolic /datapath/dbg_dt_saida
add wave -noupdate /datapath/dbg_data_3_EntradaMemDados
add wave -noupdate /datapath/dbg_regRd_Mux
add wave -noupdate /datapath/dbg_entradaPC
add wave -noupdate /datapath/dbg_saidaPC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {913922 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 200
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {565868 ps}
