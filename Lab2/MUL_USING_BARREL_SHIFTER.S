.DATA
    A: .WORD 65
    B: .WORD 12
    C: .WORD 0

.TEXT
    LDR R1,=A
    LDR R2,[R1]
    LDR R3,=B
    LDR R4,[R3]
    LDR R5,=C
    
    ADD R6,R4,R4,LSL#6;R6=(R4+(R4*64))=65*12
    STR R6,[R5]
    
