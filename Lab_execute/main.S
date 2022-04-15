Begin:
	BL fonction1
	mov r5, #0
	B fin_de_programme

fonction1:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction2
	
	add r5, #-2
	ldrb r7, [r5, #2]

fonction2:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction3
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fonction3:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction4
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fonction4:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction5
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fonction5:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction6
	
	add r5, #-2
	ldrb r7, [r5, #2]

fonction6:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction7
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fonction7:
	strb r6, [r5, #0]
	add r5, #2
	
	BL fonction8
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fonction8:
	strb r6, [r5, #0]
	
	add r5, #-2
	ldrb r7, [r5, #2]
	
fin_de_programme:
	mov r1, #5
	sub r2, r1, #5
	
	BEQ cond_zero

.org 0x80
cond_zero:
	mov r0, #0
	B Begin
