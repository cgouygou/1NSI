# Convertisseur binaire ⟷ décimal

!!! abstract "Objectif"
    L'objectif de ce TP est de programmer un convertisseur d'écritures:

    - d'un nombre décimal en binaire;
    - d'un nombre binaire en décimal.

    **On n'utilisera bien entendu pas les fonctions natives de Python pour effectuer ces conversions**.

    Il faudra écrire des **fonctions** qui effectuent ces conversions.

    === "Décimal → Binaire"
        - la fonction prendra en paramètre un nombre entier (type `int`);
        - la fonction renverra sa conversion en binaire sous forme d'une chaîne de caractères (type `str`).

        Pour cela:

        - utiliser l'algorithme des divisions successives;
        - stocker les restes dans une chaîne de caractères (attention à l'ordre)

    === "Binaire → Décimal"
        - la fonction prendra en entrée un nombre binaire sous forme d'une chaîne de caractères (type `str`);
        - la fonction renverra sa conversion en décimal sous forme d'un nombre entier (type `int`).

        Pour cela:

        - parcourir les caractères du nombre binaire;
        - incrémenter de la bonne puissance de deux un `int` selon les valeurs des caractères (convertis en `int`).

!!! note "Ouverture"
    Réaliser de même un convertisseur hexadécimal ⟷ décimal.


!!! check "Proposition de correction"

    === "Décimal → Binaire"

        ```python linenums='1'
        def decimal_vers_binaire(n: int) -> str:
            '''
            Renvoie la conversion de l'entier n en mot binaire,
            en utilisant l'algorithme des divisions successives.
            - précondition: n doit être un entier positif.
            '''
            assert n >= 0
            mot = ''
            while n != 0:
                mot = str(n%2) + mot
                n = n // 2
            return mot 
        ```
    
    === "Binaire → Décimal"

        ```python linenums='1'
        def binaire_vers_decimal(b: str) -> int:
            '''
            Renvoie l'écriture décimale d'un nombre donné par son mot binaire,
            en utilisant la définition de la base 2.
            '''
            exposant = len(b) - 1 
            decimal = 0
            for bit in b:
                decimal = decimal + int(bit)*2**exposant
                exposant -= 1
            return decimal
        ```
        