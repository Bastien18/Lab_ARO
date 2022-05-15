** 1.1 **  
Q1: l'incrément de l'offset est réduit de 1 car il faut un cycle de plus pour que le decode puisse lire le pc (offset +2) + PC = (offset + 1) + (PC + 1)  
Q2: Pour suivre le pipline et évité que le link soient changé entre le moment ou on prend l'adresse et le moment ou il est necessaire  
Q3: pour que le registre d'addresse suive le pipelin et arrive en meme temps que le résultat de l'execute  
Q4: Pour le mettre facilement à 0 en cas de besoin   
Q5: on devrai r'ajouter 3 etage de pipline dans l'execute  
** 1.2 **
Q1: Oui il me semble que c'est correct.
Q2: 17 cycles
** 1.3 **
Q1: les dépendeance RAW de :
- STRH r0, [r1, #4]
- SUB r4, r1, r0
- LSL r2, r2, #1
Q2: Entre 1 et 3 cycles
Q3: IPC = 1/(0.7 + 0.3*3) = 0.625 instuction par cycles
    Débit = 4000 * IPC = 2500 instruction par secondes
    Latence = 10 / Debit = 4 ms
    
