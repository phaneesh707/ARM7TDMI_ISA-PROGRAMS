
.DATA 
    A: .WORD 10,20,30,40,50,60,70,80,90,100 ;WORD 
    B: .WORD 0,0,0,0,0,0,0,0,0,0 
.TEXT 
    LDR R1, =A 
    LDR R2, =B 
    MOV R4, #0 ;COUNT REGISTER 
    LOOP: LDR R3, [R1] 
        STR R3, [R2] 
        ADD R1, R1, #4 
        ADD R2, R2, #4 
        ADD R4, R4, #1 
        CMP R4, #10 
        BNE LOOP 
        SWI 0X011 
.END 




