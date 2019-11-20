onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath/EscMem
add wave -noupdate /datapath/EscReg
add wave -noupdate /datapath/FontePC
add wave -noupdate /datapath/IREsc
add wave -noupdate /datapath/IouD
add wave -noupdate /datapath/LerMem
add wave -noupdate /datapath/MemParaReg
add wave -noupdate /datapath/PCEsc
add wave -noupdate /datapath/PCEscCond
add wave -noupdate /datapath/RegAULA
add wave -noupdate /datapath/RegBULA
add wave -noupdate /datapath/RegDst
add wave -noupdate /datapath/Result
add wave -noupdate /datapath/ULAFonteA
add wave -noupdate /datapath/ULAFonteB
add wave -noupdate /datapath/ULAOp
add wave -noupdate /datapath/Zero
add wave -noupdate /datapath/addressIn
add wave -noupdate /datapath/clock
add wave -noupdate /datapath/desvioJ
add wave -noupdate /datapath/entradaPC
add wave -noupdate /datapath/funcCode
add wave -noupdate /datapath/i_dt1
add wave -noupdate /datapath/i_dt2
add wave -noupdate /datapath/i_in
add wave -noupdate /datapath/saidaPC
add wave -noupdate /datapath/saidaRegA
add wave -noupdate /datapath/saidaRegB
add wave -noupdate /datapath/saidaRegULA
add wave -noupdate /datapath/writeEnablePC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 207
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
WaveRestoreZoom {0 ps} {1829851 ps}
