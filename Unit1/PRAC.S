@ .DATA
@     A: .WORD  5,4,2,-1,-6
@     B: .WORD 0


@ .TEXT
@     LDR R0,=A
@     MOV R1,#0 ;MAX ELE
@     MOV R2,#0 ; COUNT

@ LOOP: 
@     LDR R3,[R0],#4 ; POST INDEXING WITH WRITE BACK
@     CMP R3,R1
@     BLGT SETMAX ; BRANCH LINK IF LESS THAN 
@     ADD R2,R2,#1
@     CMP R2,#5
@     BEQ OUT
@     BNE LOOP
    

@     SETMAX: MOV R1,R3
@         MOV R15,R14

@     OUT:
@     ;STORING THE MAX IN B
@     LDR R5,=B
@     STR R1,[R5]
@     SWI 0X011
    

@ .text
@ MOV r0, #4 
@ MOV r1, #2 
@ SUBS r3,r0,r1 
@ SBC r2, r0, r1 


@ .TEXT
@  MOV R0, #1
@  MOV R1, #2
@  MOV R2, #3
@ @  STMEA R13!, {R0, R1, R2}
@ @  LDMEA R13!, {R3, R4, R5}

@  SWI 0X11

@ .TEXT
@     LDR R1,=A
@     LDR R2,=B

@     LDMIA R1,{R3-R5}
@     STMIA R2,{R3-R5}

@ .DATA
@     A: .WORD 10,20,30
@     B: .WORD 0,0,0


@ .TEXT
@  MOV R0, #1
@  MOV R1, #2
@  MOV R2, #3
@  STMFD R13!, {R0, R1, R2}
@  LDMFD R13!, {R3, R4, R5}
@  SWI 0X11


@ .TEXT
@     LDR R1,=A
@     LDR R2,=B

@    LDMIA R1,{R3,R4}
@    STMFA R13!,{R3,R4}
@    BL SUM
@    STR R5,[R2]
@    SWI 0X011

@    SUM: LDMFA R13!,{R6,R7}
@     ADD R5,R6,R7
@     MOV PC,LR
@ .DATA
@     A: .WORD 20,30
@     B: .WORD 0


.TEXT
 MOV R0, #1
 MOV R1, #2
 MOV R2, #3
 STMFD R13!, {R0, R1, R2}
 BL MULTIP
 SWI 0X011


 MULTIP: LDMFD R13!,{R3,R4,R5}
    STMFD R13!,{R3,R4,LR}
    BL ADDI
    LDMFD R13!,{LR} 
    MUL R5,R3,R5
    MOV PC,LR

ADDI: LDMFD R13!,{R3,R4}
    ADD R3,R3,R4
    MOV PC,LR

 .DATA
 A: .WORD 0