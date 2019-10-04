.text
.global dbl2b
.type dbl2b, "function"

.data
pi: .double 3.141592653
dbl2b:	LDR X1, =pi
				LDR D1, [X1]
				FMUL D0, D0, D0
				FMUL D0, D0, D1
				ret
