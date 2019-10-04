.text
.global COSS
.type COSS, "function"
.extern fat

//bl inv_fat // vai em x0 e da return em x0 x0=fact(x0)

COSS:	STP X29, X30, [SP, #-16]
				MOV	X1, #0 //ZERO SOURCE
				SCVTF D1, X1
				SCVTF D2, X1
				//SCVTF D3, X1
				FADD D1, D1, D0
				FMUL D1, D1, D1

				//CALC
				MOV X0, #10
				//BL inv_fat
				FADD D2, D2, D0
				FMUL D2, D2, D1

				MOV X0, #8
				//BL inv_fat
				FSUB D2, D0, D2

				FMUL D2, D1, D1
				MOV X0, #6
				//BL inv_fat
				FSUB D2, D0, D2

				FMUL D2, D1, D1
				MOV X0, #4
				//BL inv_fat
				FSUB D2, D0, D2

				FMUL D2, D1, D1
				MOV X0, #2
				//BL inv_fat
				FSUB D2, D0, D2

				FMUL D2, D1, D1
				MOV X0, #1
				SCVTF D0, X0
				FSUB D2, D0, D2

END:		MOV X1, #0
				SCVTF D0, X1
				FADD D0, D0, D2
				LDP X29, X30, [SP], #16
				ret
