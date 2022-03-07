.DATA
    A: .WORD 1,2,3,400,500,600,700,800,900,1000
    B: .WORD 0,0,0,0,0,0,0,0,0,0 ;HWORD - 16 BITS BYTE - BITS

.TEXT
    LDR R0,=A
    LDR R1,=B

    MOV R3,#0

    LOOP:
        LDR R2,[R0]
        STR R2,[R1]
        ADD R0,R0,#4
        ADD R1,R1,#4
        ADD R3,R3,#1
        CMP R3,#10
        BNE LOOP
        SWI 0X11
    .END
    