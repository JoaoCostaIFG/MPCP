.text
.global NORMAVECTOR
.type NORMAVECTOR, "function"

NORMAVECTOR:	MOV X2, #0
									SCVTF D2, X2
									LSR X1, X1, #1

LOOP:						CBZ X1, END
									SUB X1, X1, #1
									LDR Q0, [X0], #16
									FMUL V0.2D, V0.2D, V0.2D
									FADDP D1, V0.2D
									B LOOP

END: 							FSQRT D0, D2
									ret
