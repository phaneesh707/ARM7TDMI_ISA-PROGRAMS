; SUM OF N ELEMENTS OF AN ARRAY 

.DATA
    A: .WORD 100,200,300,400
    SUM: .WORD 0 

.TEXT 
    LDR R1,=A
    LDR R2,=SUM 

    MOV R3,#0 ; COUNT 
    MOV R4,#0 ; SUM 
    MOV R5,#0

    LOOP: LDR R6,[R1,R5] ;FETCHING THE NUMS
        ADD R4,R4,R6 ; SUM 
        ADD R5,R5,#4;INCR ADDR
        ADD R3,R3,#1
        CMP R3,#4
        BNE LOOP
    
    STR R4,[R2]
    SWI 0X011