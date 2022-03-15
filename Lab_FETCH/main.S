begin:
mov r0, #5
mov r1, #2
add r2, r1, r0
add r3, r2, #4

B addr1
.org 0x40
addr1:
mov r2, #6
sub r3, r2, #1

BEQ addr2
.org 0x60
addr2:
mov r0, #4
mov r1, #128

B begin
