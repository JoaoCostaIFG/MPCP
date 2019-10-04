.text
.global DBL1B
.type DBL1B, "function"

DBL1B:			FSQRT D0, D0
						SCVTF D1, W0
						FADD D0, D0, D1
						ret
