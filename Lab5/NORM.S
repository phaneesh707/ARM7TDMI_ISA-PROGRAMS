.DATA
A: .WORD 1,-2,3,4,-5,6,-7,8,-9

.TEXT
LDR R0,=A 
MOV R2,#0 ;ITERATOR FOR THE OUTER LOOP
MOV R3,#-1 ;MAX NORM 
	OUTER:
	MOV R4,#0 ;INNER LOOP
	MOV R6,#0 ;TEMP NORM
		INNER:
		LDR R5,[R0] 
		CMP R5,#0
		RSBLT R5,R5,#0 ;FINDING ABSOLUTE VALUE OF R5 REG
		ADD R6,R6,R5  
		ADD R0,R0,#4 
		ADD R4,R4,#1 
		CMP R4,#3
		BNE INNER  
	CMP R6,R3
	MOVGT R3,R6 ;STORING THE MAXIMUM OF NORM AND MAX NORM IN R3
	ADD R2,R2,#1
	CMP R2,#3
	BNE OUTER
.END