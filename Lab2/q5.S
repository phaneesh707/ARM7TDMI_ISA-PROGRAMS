.DATA
    A: .WORD 100
    B: .WORD 200
    C: .WORD 300
    D: .WORD 0
    E: .WORD 0

.TEXT 
    LDR R1,=A
    LDR R2,=B
    LDR R3,=C
    LDR R4,=D
    LDR R5,=E

    LDR R6,[R1]
    LDR R7,[R2]
    LDR R8,[R3]
    LDR R9,[R4]
    LDR R10,[R5]

    CMP R6,R7
    BEQ LOOP1
    CMP R7,R8
    BEQ LOOP2
    MUL R10,R6,R7
    STR R10,[R5]
    SWI 0X011

    LOOP1: ADD R8,R7,R6
        STR R8,[R3]
        SWI 0X011

    LOOP2: SUB R9,R6,R7
        STR R9,[R4]
        SWI 0X011
    
    