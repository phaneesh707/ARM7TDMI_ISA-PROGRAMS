.DATA
    A: .WORD  5,4,2,1,6
    B: .WORD 0


.TEXT
    LDR R0,=A
    MOV R1,#9 ;MIN ELE
    MOV R2,#0 ; COUNT

LOOP: 
    
    LDR R3,[R0]
    ADD R0,R0,#4

    CMP R1,R3
    BGT SETMIN

    ADD R2,R2,#1
    CMP R2,#4
    BNE LOOP
    ;STORING THE MIN IN B
    LDR R5,=B
    STR R1,[R5]
    SWI 0X011



    SETMIN: MOV R1,R3
        B LOOP
    

