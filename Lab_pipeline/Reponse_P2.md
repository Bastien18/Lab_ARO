# 1 Aléas de donnée  
## 1.1 Circuit data_hazard
Q1: si le registre que l'on demande comme opéande m ou n à été le registre de destination de l'une des trois instructions précédentes.  
Q2: Oui car la valeur lu sera sera la valeur  précédent le write_back.  
Q3: Les registre de déstination.  
Q4: le signal reg_bank_write_en_s 

## 1.2 Circuit hazard_detection  
Q1: Les signaux reg_xxx_en_s.   

## 1.3 Test aléas de donnée  
Q1: Oui un alea de donnée permet au flux d'instruction se passer correctement.  
Q2: Car il faut d'abord noter la valeur du PC dans le LR (aléa de donnée) et esuite faire le branch (aléa de contrôle).  
Q3: il faut 7 cylces en tout.  
Q4: 18 instruction pour 48 cylce donc 0.375

# 2 Pipeline Forwarding  
## 2.1 Circuit data_hazard  
Q1: A savoir si l'instruction est une instruction memoire (str, ldr).  
Q2: Non, je pense qu'il est plus simple d'attendre un cycle que l'instruction arrive dans le registre correspondant.    
Q3: Il faut qu'il y ait un aléa de donnée et que l'on puisse utilisé le résultat d'un des blocs (execute ou mem_acces).  
Q4: Cela permet d'éliminer les aléas de données.  

## 2.2 Circuit execute
Q1: Pour pouvoir forwarder correctement les valeurs.  
Q2: Car il peut aussi générer un alea de donnée, il peut donc aussi etre forwarder.  
Q3: Attendre un cycle.  

## 2.3 Test : pipeline forwarding
Q1: Oui une fois que tous à été implementé correctement  
Q2: IPC = 18/32 = 0.5625 et Throughtput = 4'000 * IPC = 2250  
Q3: Il en faut 4.  
Q4: Peut-etre essaié de changé la minére dont les branch sont calculer pour reduire voir éliminer les aléas de contrôle.  
