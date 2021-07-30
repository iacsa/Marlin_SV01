M220 S100	;Reset Feedrate
M221 S100	;Reset Flowrate
G90		;Set Absolute Positioning

M190 S{material_bed_temperature_layer_0}	;Pre-heat bed
M104 S{material_print_temperature_layer_0, 0}	;Start pre-heating hotend
G28						;Home
G0 X0 Y20 F12000				;Move to prime position
G0 Z0.28  F300					;Move Z axis down
M420 S1 					;Load Bed Mesh Level
M109 S{material_print_temperature_layer_0, 0}	;Wait for hotend to finish pre-heating

;Set K-Factor for Linear Advance
M900 K0.07	;PLA
;M900 K0.88	;TPU

;Prime the nozzle
G92 E0               ;Reset Extruder
G1 Y200   F3600  E15 ;Draw the first line
G0 X0.3              ;Move to side a little
G1 Y20           E30 ;Draw the second line
G92 E0               ;Reset Extruder
