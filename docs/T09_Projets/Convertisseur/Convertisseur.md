# Convertisseur binaire / décimal

!!! abstract "Objectif"
    L'objectif de ce projet est de programmer un convertisseur d'écritures:

    - d'un nombre décimal en binaire;
    - d'un nombre binaire en décimal.

    **On n'utilisera bien entendu pas les fonctions natives de Python pour effectuer ces conversions**.

    Il faudra écrire des fonctions qui effectuent ces conversions.

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
    Réaliser de même un convertisseur hexadécimal / décimal.