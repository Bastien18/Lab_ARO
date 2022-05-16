# 1 Analyse et test du processeur
## 1.1  Analyse du processeur  
Q1: l'incrément de l'offset est réduit de 1 car il faut un cycle de plus pour que le decode puisse lire le pc (offset +2) + PC = (offset + 1) + (PC + 1)  
Q2: Pour suivre le pipline et évité que le link soient changé entre le moment ou on prend l'adresse et le moment ou il est necessaire  
Q3: pour que le registre d'addresse suive le pipelin et arrive en meme temps que le résultat de l'execute  
Q4: Pour le mettre facilement à 0 en cas de besoin   
Q5: on devrai rajouter 3 etage de pipline dans l'execute  

## 1.2 Test du processeur  
Q1: Non, il semble que certaines instructions ne se font pas correctement.  
Q2: 17 cycles

## 1.3 Assembleur : dépendances de données  
Q1: les dépendeance RAW de :   
- STRH r0, [r1, #4]    
- SUB r4, r1, r0    
- LSL r2, r2, #1  

Q2: Entre 1 et 4 cycles  entre les instructions  
Q3:   
- IPC = 1/(0.75 + 0.25*2.5) = 0.769 instuction par cycles
- Débit = 4000 * IPC = 3076 instruction par secondes 
- Latence = 10 / Debit = 3.25 ms  

## 1.4 Assembleur : aléas de contrôle   
Q1: 4 cycles après les branchs.  
Q2:
- 60 cylces pour 22 instruction donc IPC 0.37
- Débit = 4000 * IPC = 1466 instruction par secondes 
- Latence = 25 / Debit = 17.05 ms

# 2 Aléas de contrôle   
## 2.1  Circuit control_hazard  
Q1: 4 cycles   
Q2: pour éviter de fetch et executer des instructions en attendant le saut.   
Q3: Faire un Branch quel qu'il soit.  
Q4: il faut attendre le temps de de l'alea de donné puis effectuer l'instuction et attendre le temps de l'aléa de contrôle.  

## 2.2 Circuit hazard_detection
Q1: Les instructions Branch quel qu'elle soit.  
Q2: ils empechent les différentes étape du traitement des instructions suivantes via un pipline interne.  
Q3: le temps que l'on effectue le saut, les instructions après le branch sont traitées malgés elles.  
Q4: pour ne éviter de considérer un branch conditionnel non-validé comme un aléas de contrôle.  
Q5: car il faut d'abord gérer l'aléa de donnée avant de pouvoir traiter l'aléa de controle.  

## 2.3 Test aléas de contrôle
Q1: Pas du premier coup, j'ai du ajuster mon circuit il y avait un cycle de pause en trop.  
Q2: 31 cycles pour 9 instructions donc IPC = 0.29.  
Q3: Car un BL doit d'abord écrire dans le LR pour ensuite branch.  
