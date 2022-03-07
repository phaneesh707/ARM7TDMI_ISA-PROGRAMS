.DATA
    A: .WORD  5,4,2,-1,-6
    B: .WORD 0


.TEXT
    LDR R0,=A
    MOV R1,#0 ;MAX ELE
    MOV R2,#0 ; COUNT

LOOP: 
    @ ADD R2,R2,#1
    @ CMP R2,#6
    @ BEQ OUT
    LDR R3,[R0]
    ADD R0,R0,#4

    CMP R3,R1
    BGT BL SETMAX
    B LOOP


    SETMAX: MOV R1,R3

    OUT:
    ;STORING THE MAX IN B
    LDR R5,=B
    STR R1,[R5]
    SWI 0X011
    

