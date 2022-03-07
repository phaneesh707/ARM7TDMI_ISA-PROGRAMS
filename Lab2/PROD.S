.DATA
    A: .WORD 0X00000111
    B: .WORD 0X00000111

.TEXT
    @ LDR R1,=A
    @ LDR R2,[R1]
    @ LDR R4,=B

    @ RSB R3,R2,R2,LSL#5
    @ SUB R3,R3,R2

    @ STR R3,[R4]
    LDR R1,=A
    LDR R2,=B

    LDR R3,[R1]
    LDR R4,[R2]
    `
