.text
.global STR_LEN
.type STR_LEN, "function"

STR_LEN: MOV X2, #-1
LOOP:		ADD X2, X2, #1
					LDRB W1, [X0]
					ADD X0, X0, #1
					CMP W1, #0
					BNE LOOP
					MOV X0, X2
					ret
