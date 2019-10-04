.text
.global SOMAV
.type SOMAV, "function"

SOMAV:	LSR W3, W3, #2

LOOP:		CBZ W3, END
					LDR Q0, [X0], #16
					LDR Q1, [X1], #16
					FADD V2.4S, V0.4S, V1.4S
					STR Q2, [X2], #16
					SUB W3, W3, #1
					B LOOP

END: 			ret
