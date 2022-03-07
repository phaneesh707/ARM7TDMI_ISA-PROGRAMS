;CHECK PARITY OF 32 BIT NUMBER USING A FUNCITON "PARITY_CHECK"
;DISPLAY APPROPIRATE MESSAGE AS ODD PARITY OR EFEN PARITY NUMBER 

.TEXT 

    LDR R9,=A
    LDR R1,[R9]
    MOV R4,#0 ; ONE COUNT

    LOOP: 
        AND R2,R1,#1
        CMP R2,#1
        BLEQ COUNTONE
        MOV R1,R1,LSR #1
        CMP R1,#0
        BNE LOOP
        B DISP


    COUNTONE:
        ADD R4,R4,#1
        MOV PC,LR 

    DISP: 
        AND R8,R4,#1
        CMP R8,#1   
        BEQ ODDI
        LDR R0,=EVEN
        SWI 0X02
        SWI 0X11
        
    ODDI:
        LDR R0,=ODD
        SWI 0X02
        SWI 0X11

        

.DATA 
    ODD: .ASCIZ "ODD PARITY"
    EVEN: .ASCIZ "EVEN APRITY"
    A: .WORD 1

