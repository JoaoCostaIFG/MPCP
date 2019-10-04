.text
.global DBL9
.type DBL9, "function"

DBL9:	MOV X2, #0
LOOP:	CBZ X1, END
				SUB X1, X1, #1
				LDR S2, [X0], #4
				FCMP S2, S0
				B.LT LOOP
				FCMP S2, S1
				B.GT LOOP
				ADD X2, X2, #1
				B LOOP
END:		MOV X0, X2
				ret
