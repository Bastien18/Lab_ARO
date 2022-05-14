Q1: l'incrément de l'offset est réduit de 1 car il faut un cycle de plus pour que le decode puisse lire le pc (offset +2) + PC = (offset + 1) + (PC + 1)
Q2: Pour suivre le pipline et évité que le link soient changé entre le moment ou on prend l'adresse et le moment ou il est necessaire
Q3: pour que le registre d'addresse suive le pipelin et arrive en meme temps que le résultat de l'execute
Q4: Pour le mettre facilement à 0 en cas de besoin
Q5: on devrai r'ajouter 3 etage de pipline dans l'execute

