.DATA 
    A: .BYTE 1,2,3,4,5,6,7,8,9,10
    B: .BYTE 0,0,0,0,0,0,0,0,0,0 
.TEXT 
    LDR R1, =A 
    LDR R2, =B 
    MOV R4, #0 ;COUNT REGISTER 
    LOOP: LDRB R3, [R1] 
        STRB R3, [R2] 
        ADD R1, R1, #2 
        ADD R2, R2, #2 
        ADD R4, R4, #1 
        CMP R4, #10 
        BNE LOOP 
        SWI 0X011 
.END 