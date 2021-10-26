# FKLIIUH#GH#FHVDU

!!! abstract "Objectif"
    L'objectif de ce projet est de décrypter la phrase suivante:

    `PRZRFFNTRARPBAGVRAGEVRAQVAGRERFFNAGZNVFVYRFGFHSSVFNZZRAGYBATCBHEARCNFYRQRPELCGRENYNZNVA`

    Le principe est simple: chaque lettre de la phrase d'origine (le message *clair*) a été décalé d'un certain nombre de rangs dans l'alphabet, toujours le même. Ce nombre est la *clé* de chiffrement.

    Comme il n'y a que 25 décalages possibles, il vous faudra tous les tester un par un (méthode par bruteforce) pour réussir le déchiffrement.


!!! info "Pré-requis"
    En cryptographie, les méthodes sont très souvent numériques. Plutôt que de manipuler les caractères eux-mêmes, on préfère manipuler leurs représentations dans un encodage (on étudiera cette question un peu plus tard dans l'année).

    Avec Python, on peut récupérer le [code Unicode](https://fr.wikipedia.org/wiki/Table_des_caract%C3%A8res_Unicode_(0000-0FFF)){:target="_blank"} d'un caractère avec la fonction `ord`:

    ```python 
    >>> ord('A')
    65
    ```

    et le caractère correspondant à un code Unicode avec la fonction `chr`:

    ```python 
    >>> chr(65)
    'A'
    ```

!!! example "Pour vous guider"
    === "1"
        Définissez une fonction `decale(lettre)` qui décale de 3 rangs dans l'alphabet la lettre majuscule `lettre` passée en argument (après Z, on recommencera à A...)
    
    === "2"
        Rajoutez un paramètre `n` à la fonction précédente pour pouvoir décaler la lettre de `n` rangs.

    === "3"
        Utilisez la fonction précédente pour créer la fonction `decale_phrase(p, n)` qui décale toutes les lettres d'une phrase `p` de `n` rangs.


!!! note "Ouverture"
    Écrire une fonction qui crypte une chaine de caractères avec au choix:
    
    - le chiffre de Vigenère;
    - la méthode du masque jetable;


