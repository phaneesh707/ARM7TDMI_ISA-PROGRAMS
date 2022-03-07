.DATA
    A: .WORD  5,4,2,1,6
    B: .WORD 0


.TEXT
    LDR R1,=A
    MOV R2,#9 ;MIN ELE
    MOV R3,#0 ; COUNT

LOOP: 

    LDR R4,[R1],#4
    CMP R2,R4
    BLGT SETMIN
    ADD R3,R3,#1    
    CMP R3,#5
    BNE LOOP
    LDR R6,=B
    STR R2,[R6] 
    SWI 0X11   


SETMIN:
    MOV R2,R4
    MOV PC,LR