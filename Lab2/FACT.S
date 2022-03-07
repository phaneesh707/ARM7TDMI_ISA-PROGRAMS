.DATA
    A: .WORD 0

.TEXT
    MOV R5,#5 ; NUMBER WHOSE FACTORAIL TO BE BE FOUND
    LDR R1,=A
    MOV R3,#1 ;COUNT 
    MOV R4,#1
    LOOP:MUL R4,R3,R4
        CMP R3,R5
        ADD R3,R3,#1
        BNE LOOP
        STR R4,[R1]
        SWI 0X011
