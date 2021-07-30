M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

G90 		;Set Absolute Positioning
G28 		;Home
M420 S1     	;Load Bed Mesh Level

;Set K-Factor for Linear Advance
M900 K0.07 	;PLA
;M900 K0.88 	;TPU

;Prime the nozzle
G92 E0               ;Reset Extruder
G0 Z0.28  F300       ;Move Z Axis up
G0 X0 Y20 F12000     ;Move to start position
G1 Y200   F3600  E15 ;Draw the first line
G0 X0.3              ;Move to side a little
G1 Y20           E30 ;Draw the second line
G92 E0               ;Reset Extruder
