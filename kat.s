.data
nome:
				.string, "ABC"


.text
.global FLUFFY
.type FLUFFY, "function"

FLUFFY:	MOV X1, #0
					MOV X2, #33
LOOP:		SUB X2, X2, #1
					CBZ X2, END
					AND X3, X0, #1
					CMP X2, #29
					BEQ BIT
CONT:		LSL X1, X1, #1
					ADD X1, X1, X3
					LSR X0, X0, #1
					B LOOP
END:			ret

BIT:			CMP X3, #0
					//CSEL X3, #1, #0, EQ
					B CONT

