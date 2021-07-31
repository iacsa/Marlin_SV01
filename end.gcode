;Retract and remove the nozzle from the print
G91						;Relative positioning
G1	F600				E-4	;Retract
G0 	F300			Z10 		;Raise Z

G90						;Absolute positioning
G0	F3600	X0	Y{machine_depth}	;Present print
M84	X Y E					;Disable all steppers but Z

M400		;Wait for all moves to finish before beginning shutdown
M107		;Turn-off fan
M104	S0	;Turn-off hotend
M140	S0	;Turn-off bed

M109	R50	;Wait for the hotend to cool down
