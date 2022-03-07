.DATA
   A:    .WORD  0

.TEXT
 
 LDR    R4, =A
         MOV  R1, #20                               ; parameter1 
         MOV  R2, #25                               ; parameter2
         STMFA R13!, { R1, R2}                 ; parameters are PUSHed on stack.
	   BL  LINK
	   STR R0, [R4]                                   ; return value in Reg. R0.
         SWI 0x11

LINK:  LDMFA R13!, { R4, R5}            ; parameters are POPed from the  stack              
           ADD R0, R4, R5                         ;  Result is in register R0.
           MOV PC, LR                               


.END 
