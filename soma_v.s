.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V:	LDR W2, [X0]
					MOV X6, #0
LOOP:		ADD W6, W6, W2
					SUB X1, X1, #1
					CBZ X1, END
					ADD X0, X0, #4
					LDR W2, [X0]
					B LOOP
END:			MOV X0, X6
					ret
