## 1.1 ##   
Q1: l'incrément de l'offset est réduit de 1 car il faut un cycle de plus pour que le decode puisse lire le pc (offset +2) + PC = (offset + 1) + (PC + 1)  
Q2: Pour suivre le pipline et évité que le link soient changé entre le moment ou on prend l'adresse et le moment ou il est necessaire  
Q3: pour que le registre d'addresse suive le pipelin et arrive en meme temps que le résultat de l'execute  
Q4: Pour le mettre facilement à 0 en cas de besoin   
Q5: on devrai rajouter 3 etage de pipline dans l'execute  
## 1.2
Q1: Non, il semble que certaine instruction ne ce font pas correctement.  
Q2: 17 cycles
## 1.3  
Q1: les dépendeance RAW de :   
- STRH r0, [r1, #4]    
- SUB r4, r1, r0    
- LSL r2, r2, #1  

Q2: Entre 1 et 4 cycles  entre les instructions
Q3:   
- IPC = 1/(0.75 + 0.25*2.5) = 0.769 instuction par cycles
- Débit = 4000 * IPC = 3076 instruction par secondes 
- Latence = 10 / Debit = 3.25 ms  

## 1.4  
Q1: 3 * 3 cycles  
Q2:
- 60 cylces pour 22 instruction donc IPC 0.37
- Débit = 4000 * IPC = 1466 instruction par secondes 
- Latence = 25 / Debit = 17.05 ms

## 2.1
Q1: 4 cycles 
Q2: pour éviter de fetch et executer des instructions en attendant le saut 
Q3: Faire un Branch quel qu'il soit.
Q4: il faut attendre le temps de de l'alea de donné puis effectuer l'instuction et attendre qu'elle termine
