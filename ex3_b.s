.text
.global STR_FOCR
.type STR_FOCR, "function"

STR_FOCR:	MOV X3, #0
LOOP:			LDRB W2, [X0]
						CBZ W2, END
						ADD X0, X0, #1
						CMP W1, W2
						BNE NOTOCR
						ADD X3, X3, #1
NOTOCR:		B LOOP
END:				MOV X0, X3
						ret
