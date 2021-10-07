# Convertisseur binaire / décimal

!!! abstract "Objectif"
    L'objectif de ce projet est de programmer un convertisseur d'écritures:

    - d'un nombre décimal en binaire;
    - d'un nombre binaire en décimal.

    **On n'utilisera bien entendu pas les fonctions natives de Python pour effectuer ces conversions**.

    === "Décimal → Binaire"
        - le programme prendra en entrée un nombre entier (type `int`) donné par l'utilisateur;
        - le programme donnera sa conversion en binaire sous forme d'une chaîne de caractères (type `str`).

        Pour cela:

        - on utilisera l'algorithme des divisions successives;
        - on stockera les restes dans une chaîne de caractères (attention à l'ordre)

    === "Binaire → Décimal"
        - le programme prendra en entrée un nombre binaire sous forme d'une chaîne de caractères (type `str`) donné par l'utilisateur;
        - le programme donnera sa conversion en décimal sous forme d'un nombre entier (type `int`)

        Pour cela:

        - on parcourra les caractères du nombre binaire;
        - on incrémentera de la bonne puissance de deux un `int` selon les valeurs des caractères (convertis en `int`).

!!! note "Ouverture"
    Réaliser de même un convertisseur hexadécimal / décimal.