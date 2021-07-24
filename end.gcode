;Retract and remove the nozzle from the print
G91         ;Relative positioning
G1 E-4 F600 ;Retract
G0 Z10 F300 ;Raise Z

G90     			;Absolute positioning
G0 X0 Y{machine_depth} F3600 	;Present print


M400 				;Wait for all moves to finish
M107				;Turn-off fan
M104 S0 			;Turn-off hotend
M140 S0 			;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M109 R50  ;Wait for the hotend to cool down
