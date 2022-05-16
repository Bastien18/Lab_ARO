MAIN_START:
MOV r0, #1 
MOV r1, #2
MOV r2, #6
@ en attente de r1
nop
nop
STRH r0, [r1, #4]
ADD r4, r2, #1
ADD r3, r2, #4
SUB r4, r1, r0
ADD r0, r0, #5
LSL r2, r2, #1
@ en attente de r2
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
ADD r0, r1, r2

.org 0x60
SAUTZERO:	
MOV r0, #255
@ attente du CPSR pour BNE
nop
nop
nop	
BNE SAUTC
MOV r1, #5

.org 0x80
SAUTC:
MOV r0, #0
@ attente du CPSR pour BNE
nop
nop
nop
BNE NOT_TAKEN
MOV r1, #0
@ attente du CPSR pour BEQ
nop
nop
nop
BEQ MAIN_START

.org 0xA0
NOT_TAKEN:
B MAIN_START
MOV r4, #6