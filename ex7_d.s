.text
.global INDOTV
.type INDOTV, "function"

INDOTV:	MOV X5, #0
LOOP:		SUB X0, X0, #1
					LDR X3, [X1]
					ADD X1, X1, #8
					LDR X4, [X2]
					ADD X2, X2, #8
					MUL X3, X3, X4
					ADDS X5, X5, X3
					BVS	ENDV
					CBNZ X0, LOOP
END:			MOV X0, X5
					ret
ENDV:		MOV X0, 0x7fffffffffffffff
					RET
