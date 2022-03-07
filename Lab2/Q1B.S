.DATA 
    A: .HWORD 10,20,30,40,50,60,70,80,90,100 ;HALF WORD - 16 BIT 
    B: .HWORD 0,0,0,0,0,0,0,0,0,0 
.TEXT 
    LDR R1,=A 
    LDR R2,=B 
    MOV R4,#0 ;COUNT REGISTER 
    LOOP: LDRH R3, [R1] 
        STRH R3, [R2] 
        ADD R1, R1, #2 
        ADD R2, R2, #2 
        ADD R4, R4, #1 
        CMP R4, #10 
        BNE LOOP 
        SWI 0X011 
.END 