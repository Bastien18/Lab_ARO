# 1 Aléas de donnée  
## 1.1 Circuit data_hazard
Q1: si le registre que l'on demande comme opéande m ou n à été le registre de destination de l'une des trois instructions précédentes.  
Q2: Oui car la valeur lu sera sera la valeur  précédent le write_back.  
Q3: Les registre de déstination.  
Q4: l'opcode de l'instruction actuelle.  

## 1.2 Circuit hazard_detection  
Q1: Les signaux reg_xxx_en_s.   

## 1.3 Test aléas de donnée  
Q1: Oui un alea de donnée permet au flux d'instruction se passer correctement.  
Q2: Car il faut d'abord noter la valeur du PC dans le LR (aléa de donnée) et esuite faire le branch (aléa de donnée).  
Q3: Il faudra 
Q4: 

# 2 Pipeline Forwarding  
## 2.1 Circuit data_hazard  
Q1: A savoir si l'instruction est un strx.  
Q2: Non, car dans tous les cas le résultat est déjà disponible à l'endroit ciblé.  
Q3: Il faut qu'il y ait un aléa de donnée et que l'on puisse utilisé le résultat d'un des blocs (pas possible pour strx).  
Q4: Cela permet de reduire la durée voir éliminer les aléas de données.  

## 2.2 Circuit execute
Q1: Pour pouvoir forwarder correctement les valeurs.  
Q2: Car il peut aussi générer un alea de donnée, il peut donc aussi etre forwarder.  
Q3: Rien car les valeurs sont déjà disponible à l'emplacement prévu.  

## 2.3 Test : pipeline forwarding
