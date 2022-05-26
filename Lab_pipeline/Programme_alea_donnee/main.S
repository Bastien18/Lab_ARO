@ Test des aléas de controle
begin:
mov r0, #4
mov r1, #3
mov r2, #1
mov r4, #2
lsl r2, r2, #1 
lsl r2, r2, #1
lsl r3, r4, #1
bl part2
mov r0, #0

.org 0xa0
part2:
lsr r4, r3, #1
add r1, r4
sub r0 , r1, r4
strb r0 ,[r4,#0]
ldrb r2 ,[r4,#0]
sub r0, r2, r2
bne begin
b part2

