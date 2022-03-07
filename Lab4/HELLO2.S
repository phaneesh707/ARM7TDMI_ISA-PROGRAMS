;WAP TO PREFORM THE ADDITINO OF MATRICES OF ORDER OF MATRICES 3
.DATA 
    A: .WORD 1,2,3,4,5,6,7,8,9
    B: .WORD 0,1,2,3,4,5,6,7,8
    C: .WORD 0,0,0,0,0,0,0,0,0

.TEXT 
    LDR R0,=A
    LDR R1,=B
    LDR R2,=C
    MOV R10,#0;COUNT

    LOOP:
        LDR R3,[R0]
        LDR R4,[R1]
        ADD R5,R3,R4
        STR R5,[R2]
        ADD R0,R0,#4
        ADD R1,R1,#4
        ADD R2,R2,#4
        ADD R10,R10,#1
        CMP R10,#9
        BNE LOOP
        SWI 0X011   

