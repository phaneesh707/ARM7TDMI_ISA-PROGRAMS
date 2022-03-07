;POSITIVE SUM IN AN ARRAY

.DATA 
    A: .WORD -1,3,5,-4,7
    B: .WORD 0


.TEXT 
    LDR R0,=A
    LDR R1,=B
    MOV R2,#0 ;COUNT
    MOV R3,#0 ;SUM

    LOOP: LDR R4,[R0]
        ADD R0,R0,#4
        CMP R4,#0
        BLGT SUM
        ADD R2,R2,#1
        CMP R2,#5
        BNE LOOP
        SWI 0X011


    


    SUM:ADD R3,R3,R4
        MOV PC,LR