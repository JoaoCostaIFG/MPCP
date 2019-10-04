.text
.global MIN_V
.type MIN_V, "function"

MIN_V:		LDR X6, [X0]
					SUB X1, X1, #1
					CBZ X1, END
LOOP:		ADD X0, X0, #8
					LDR X2, [X0]
					CMP X6, X2
					BLE PROX
					MOV X6, X2
PROX:		SUB X1, X1, #1
					CBZ X1, END
					B LOOP
END:			MOV X0, X6
					ret
