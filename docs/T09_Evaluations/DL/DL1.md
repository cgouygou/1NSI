# DL0001

{{ initexo(0) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        Écrire un programme qui demande un nombre `n` puis qui affiche tous les carrés des nombres inférieurs ou égaux à ce nombre `n`.

        Par exemple, si on donne 5, le programme doit afficher:
        ```python
        0
        1
        4
        9
        16
        25
        ```

    === "Correction" 
        {{ correction(True, 
        "
        Ici on veut faire une boucle sur des entiers: les entiers compris entre 0 et `#!py n` dont on veut afficher la valeur des carrés. Il faut donc écrire une boucle `#!py for` sur un `#!py range`. Mais attention, pour aller jusqu'à l'entier `#!py n` compris, il faudra s'arrêter à l'entier suivant, c'est-à-dire `#!py n+1`.

        ```python linenums='1'
        n = int(input(\"Donnez moi un nombre: \"))
        for k in range(n+1):
            print(k**2) # ou print(k*k)
        ```
        
        "
        ) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        Écrire un programme qui produit l'affichage suivant:
        ```python
        1 est impair
        2 est pair
        3 est impair
        4 est pair
        5 est impair
        6 est pair
        7 est impair
        8 est pair
        9 est impair
        10 est pair
        11 est impair
        12 est pair
        13 est impair
        ```
    === "Correction" 
        {{ correction(True, 
        "
        À nouveau on fait une boucle `#!py for` sur un `#!py range` car ce qui varie à chaque ligne est l'entier, en commençant à 1 et non à 0.
        
        Pour tester la parité, on calcule le reste de l'entier dans la division euclidienne par 2 (on dit qu'on calcule «n modulo 2».

        ```python linenums='1'
        for n in range(1, 14):
            if n%2 == 0:
                print(n, \"est pair\")
            else:
                print(n, \"est impair\")
        ```
        
        "
        ) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        **Pydéfi :** [https://pydefis.callicode.fr/defis/SpymasterBomb/txt](https://pydefis.callicode.fr/defis/SpymasterBomb/txt)

        - Penser à utiliser une variable accumulateur.
        - Utiliser la division euclidienne pour tester la divisibilité par un nombre.
    === "Correction" 
        {{ correction(True, 
        "
        La stratégie est la suivante:

        - parcourir tous les nombres strictement inférieurs au seuil donné (20 dans l'exemple, 1435 dans le problème) avec une boucle `#!py for` ;
        - pour chaque nombre on teste sa divisibilité (modulo) par 3 **ou** par 5
        - si le résultat de ce test est `#!py True` alors on ajoute le nombre à la somme précédente (variable accumulatrice, initialisée à 0 en début de programme.

        Ce qui donne:

        ```python linenums='1'
        somme = 0
        n = 20
        for k in range(n):
            if k%3 == 0 or k%5 == 0:
                somme = somme + k # ou somme += k
        print(somme) 
        ```
        
        
        "
        ) }}