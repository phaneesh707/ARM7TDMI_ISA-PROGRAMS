.TEXT

LDR R1,=A
LDR R2,=B
LDR R3,=C

LDR R4,[R1]
LDR R5,[R2]
LDR R6,[R3]

ADD R6,R4,R5

STR R6,[R3]

SWI 0X011 ;SOFTWARE INTERUPT



.DATA

A: .WORD 0X12345678
B: .WORD 0X11111111
C: .WORD 0X00000000