.text
.global DBL5
.type DBL5, "function"

DBL5:	MOV X3, #0
				SCVTF D0, X3
LOOP:	CBZ X2, END
				SUB X2, X2, #1
				LDR S1, [X0], #4
				LDR S2, [X1], #4
				FCVT D1, S1
				FCVT D2, S2
				FMADD D0, D1, D2, D0
				B LOOP
END:		ret
