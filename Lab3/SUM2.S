; SUM OF ELEMENTS OF AN ARRAY USING POST-INDEXING

.DATA
    A: .WORD 100,200,300,400,500,600
    SUM: .WORD 0 

.TEXT 
    LDR R1,=A
    LDR R2,=SUM 

    MOV R3,#0 ; COUNT 
    MOV R4,#0 ; SUM 
    MOV R5,#4

    LOOP: LDR R6,[R1],R5;FETCHING THE NUMS
        ADD R4,R4,R6 ; SUM 
        ADD R3,R3,#1
        CMP R3,#6
        BNE LOOP
    
    STR R4,[R2]
    SWI 0X011