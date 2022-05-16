@ Test des aléas de controle
mov r0, #4
mov r1, #3
mov r2, #1
mov r4, #5
b part2
mov r0, #1

.org 0x40
part2:
b part3
add r1, r0 , r1


.org 0x60
part3:
sub r4, r1,r1
beq fin
mov r0, #0
b fin

.org 0x80
fin:
mov r4, #6
