# DL0011

{{ initexo(0) }}

!!! pydefi "Objectif"
    L'objectif de ce DL est de résoudre les deux pydéfis :

    1. [Piège numérique à Pokemons](https://pydefis.callicode.fr/defis/PokeNombresCommuns/txt){:target="_blank"} 
    2. [Bombe à désamorcer](https://pydefis.callicode.fr/defis/Desamorcage03/txt){:target="_blank"} 


!!! example "{{ exercice() }}"
    === "Énoncé" 
        Écrire une fonction `#!py somme_chiffres` qui prend un entier `#!py n` en paramètre et renvoie la somme de ses chiffres. La spécifier et écrire des tests.

        Pour cela deux stratégies sont possibles...

        === "Stratégie 1: la matheuse"
            Comme on l'a déjà vu plus tôt dans l'année, on peut utiliser la division euclidienne par 10 pour «découper» un nombre entier:

            - le reste (`#!py % 10`) renvoie le chiffre des unités;
            - le quotient (`#!py // 10`) renvoie le nombre sans son chiffre des unités;

            ```python
            >>> 2025 % 10
            5
            >>> 2025 // 10
            202
            ```

            Il ne reste plus qu'à créer une boucle et ajouter à une variable accumulatrice...
            

        === "Stratégie 2: la non-matheuse"
            Comme on le sait, un nombre entier n'est pas un *iterable*: on ne peut pas parcourir ses chiffres.

            Mais une chaîne de caractère l'est... l'astuce consiste donc à convertir l'entier en chaîne de caractère avec la fonction `#!py str`, de la parcourir et de reconvertir chacun des caractères en entier avec la fonction `#!py int` avant de les ajouter à  une variable accumulatrice.
       
        
    === "Correction" 
        {{ correction(False, 
        "
        "
        ) }}

!!! question "Bonus 1 :sunglasses:"
    À l'aide de la fonction `#!py sum` , qui renvoie la somme des éléments d'une liste donnée en paramètre, et d'une liste en compréhension, sauriez-vous écrire la fonction précédente en une seule ligne?


!!! example "{{ exercice() }}"
    === "Énoncé" 
        Résoudre le premier pydéfi.
    === "Correction" 
        {{ correction(False, 
        "
        "
        ) }}

!!! question "Bonus 2 :sunglasses:"
    Résoudre ce pydéfi à l'aide d'une liste en compréhension.


!!! example "{{ exercice() }}"
    === "Énoncé" 
        Résoudre le deuxième pydéfi.

        Si vous n'avez pas de compte ou ne souhaitez pas en créer un, voici la liste des permutations à utiliser:

        ```python
        lst = [25, 31, 43, 12, 12, 43, 31, 35, 54, 23, 12, 23, 12, 21, 45, 43, 41, 45, 43, 45, 35, 15, 53, 41, 51, 45, 12, 31, 14, 45, 12, 24, 32, 24, 21, 21, 51, 31, 53, 25, 12, 43, 35, 13, 23, 54, 34, 32, 23, 15, 23, 42, 41, 43, 13, 14, 52, 14, 53, 41, 14, 43, 35, 42, 32, 21, 51, 52, 24, 51, 12, 12, 52, 34, 35, 54, 21, 41, 32, 32, 34, 12, 41, 34, 43, 41, 35, 12, 32, 51, 34, 15, 25, 43, 45, 45, 45, 52, 31, 43]
        ```
        
        **Remarques/conseils:**

        - Manipuler les chiffres dans une liste. Au départ, `#!py [3, 4, 1, 2, 5]`.
        - Parcourir la liste des permutations, séparer les deux chiffres en utilisant l'une des deux stratégies de l'exercice 1.
        - Il est peut-être judicieux d'écrire une fonction qui effectue une seule permutation (donnée en paramètre).
        - Ne pas confondre le numéro de la permutation qui indique **la position dans la liste** et non **l'indice** (il faut décaler de 1).
        - Vérifier le code sur l'exemple (`#!py [14, 25, 13]`)  avant de l'exécuter sur la liste des permutations du problème.

    === "Correction" 
        {{ correction(False, 
        "
        "
        ) }}