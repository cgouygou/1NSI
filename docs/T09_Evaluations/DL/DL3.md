# DL 0011

{{ initexo(0) }}

À rendre sur [Capytale](https://capytale2.ac-paris.fr/web/c/448d-1071587){:target="_blank"}  avant le 12 janvier 2023.


!!! example "{{ exercice() }} : Piège numérique à Pokémons"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/PokeNombresCommuns/txt](https://pydefis.callicode.fr/defis/PokeNombresCommuns/txt){:target="_blank"} 

    === "Indications"
        Déterminer si un nombre est un multiple de 7 n'est pas un problème, il suffit d'utiliser la division euclidienne.

        La difficulté consiste à effectuer la somme des chiffres d'un nombre. Pour cela il faut écrire une fonction qui le fait, et on dispose de deux façons de faire:

        1. La **division euclidienne par 10**: le reste donne le chiffre des unités, le quotient ce qui «reste»;
        2. La **conversion** du nombre en chaîne de caractères pour parcourir facilement le nombre.

        **Edit:** on a construit (et corrigé) une telle fonction dans la fiche d'exercices n°2...


    === "Correction" 
        {{ correction(False, 
        "
        Déterminer si un nombre est un multiple de 7 n'est pas un problème, il suffit d'utiliser la division euclidienne.
        
        La difficulté consiste à effectuer la somme des chiffres d'un nombre. Pour cela il faut écrire une fonction qui le fait, et on dispose de deux façons de faire:

        1. La **division euclidienne par 10**: le reste donne le chiffre des unités, le quotient ce qui «reste»
        2. La **conversion** du nombre en chaîne de caractères pour parcourir facilement le nombre.


        ```python
        ## Méthode 1
        
        def somme(n: int) -> int:
            '''
            Renvoie la somme des chiffres de l'entier n, en utilisant
            la méthode de la division euclidienne
            '''
            s = 0
            while n != 0:
                s += n % 10
                n = n // 10
            return s 
        
        ## Méthode 2

        def somme(n: int) -> int:
            '''
            Renvoie la somme des chiffres de l'entier n, en utilisant
            la méthode de la conversion en string
            '''
            s = 0
            for chiffre in str(n):
                s += int(chiffre)
            return s 
        ```
        
        Maintenant qu'on dispose d'une fonction `somme`, il ne reste plus qu'à déterminer les nombres demandés en parcourant tous les nombres positifs inférieurs à 1000. Avec une liste en compréhension c'est très rapide:

        ```python 
        preferes = [k for k in range(1000) if k%7 == 0 and somme(k) == 11]
        ```
        
        "
        ) }}

!!! example "{{ exercice() }} : Bombe à désamorcer"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Desamorcage03/txt](https://pydefis.callicode.fr/defis/Desamorcage03/txt){:target="_blank"} 

    === "Indications"
        - Pour chaque permutation, qui est donnée sous forme d'un entier, il faut d'abord récupérer les deux chiffres  - à l'aide de la division euclidienne par 10 (encore elle...) - qui donnent les positions des valeurs à échanger.

        - Attention au décalage entre indices (de 0 à 4) et positions (de 1 à 5)

    === "Correction" 
        {{ correction(False, 
        "
        Pour chaque permutation, qui est donnée sous forme d'un entier, il faut d'abord récupérer les deux chiffres  - à l'aide de la division euclidienne par 10 (encore elle...) - qui donnent les positions des valeurs à échanger.

        Ensuite, on échange les deux valeurs dans la liste des fils, en faisant attention au décalage entre indices (de 0 à 4) et positions (de 1 à 5).

        ```python linenums='1'
        permutations = [25, 31, 43, 12, 12, 43, 31, 35, 54, 23, 12, 23, 12, 21, 45, 43, 41, 45, 43, 45, 35, 15, 53, 41, 51, 45, 12, 31, 14, 45, 12, 24, 32, 24, 21, 21, 51, 31, 53, 25, 12, 43, 35, 13, 23, 54, 34, 32, 23, 15, 23, 42, 41, 43, 13, 14, 52, 14, 53, 41, 14, 43, 35, 42, 32, 21, 51, 52, 24, 51, 12, 12, 52, 34, 35, 54, 21, 41, 32, 32, 34, 12, 41, 34, 43, 41, 35, 12, 32, 51, 34, 15, 25, 43, 45, 45, 45, 52, 31, 43]

        fils = [3, 4, 1, 2, 5]

        for p in permutations:
            pos1 = p // 10
            pos2 = p % 10
            t = fils[pos2 - 1]
            fils[pos1 - 1] = fils[pos2 - 1]
            fils[pos2 - 1] = t
        
        ```
        
        On peut faire plus court sur l'échange, comme expliqué dernièrement en classe:

        ```python linenums='1'
        for p in permutations:
            pos1 = p // 10
            pos2 = p % 10
            fils[pos1 - 1], fils[pos2 - 1] = fils[pos2 - 1], fils[pos1 - 1]
        ```
        
        "
        ) }}
