MAIN_START:
MOV r0, #1 
MOV r1, #2
MOV r2, #6
nop
nop
STRH r0, [r1, #4]
ADD r4, r2, #1
ADD r3, r2, #4
SUB r4, r1, r0
ADD r0, r0, #5
LSL r2, r2, #1
nop
nop
nop
LSL r2, r2, #1
B PART_2

.org 0x40
PART_2:
MOV r0, #3
MOV r1, #4
MOV r2, #8
b SAUTZERO
nop
nop
nop
nop
ADD r0, r1, r2

.org 0x60
SAUTZERO:	
MOV r0, #255
nop
nop
nop	
BNE SAUTC
nop
nop	
nop
nop
MOV r1, #5

.org 0x80
SAUTC:
MOV r0, #0
nop
nop
nop
BNE NOT_TAKEN
nop
nop
nop
nop
MOV r1, #0
nop
nop
nop
BEQ MAIN_START

.org 0xB0
NOT_TAKEN:
B MAIN_START
nop
nop
nop
nop
MOV r4, #6