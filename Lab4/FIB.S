.DATA
    A: .WORD 0,0,0,0,0,0,0,0,0,0,0


.TEXT
    LDR R4,=A

    MOV R0,#0
    MOV R1,#1
    MOV R2,#0 ;SUM
    MOV R3,#2 ;COUNT

    STR R0,[R4];
    ADD R4,R4,#4 
    STR R1,[R4];
    ADD R4,R4,#4 

   LOOP:
    ADD R2,R1,R0
    MOV R0,R1
    MOV R1,R2
    STR R2,[R4];
    ADD R4,R4,#4
    ADD R3,R3,#1
    CMP R3,#10 
    BNE LOOP
    SWI 0X011

