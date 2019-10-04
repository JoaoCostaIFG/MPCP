.text
.global ITOLI
.type ITOLI, "function"

ITOLI:
LOOP:	MOV X3, #0
				SUB X0, X0, #1
				LDR W3, [X1]
				ADD X1, X1, #4
				STR X3, [X2]
				ADD X2, X2, #8
				CBNZ X0, LOOP
END:		MOV X0, #0
				ret
