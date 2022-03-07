.DATA 
    A: .WORD 100,200,300,400,500,600,700,800,900,1000 
    SUM: .WORD 0 
.TEXT 
    LDR R1, =A 
    LDR R2, =SUM 
    MOV R5, #0 
    MOV R4, #0 ; COUNT REGISTER 
    
    LOOP: LDR R3, [R1] 
    ADD R5, R5, R3 
    ADD R1, R1, #4 
    ADD R4, R4, #1 
    CMP R4, #10 
    BNE LOOP 
    STR R5, [R2] 
    SWI 0X011 
.END 