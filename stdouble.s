.text
.global STDOUBLE
.type STDOUBLE, "function"

STDOUBLE:	FADD D0, D0, D2
						FNEG D1, D1
						FMUL D0, D0, D1
						ret
