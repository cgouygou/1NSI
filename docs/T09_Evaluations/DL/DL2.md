# DL0010

{{ initexo(0) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        Dans la fonction suivante, beaucoup de choses ont disparu (l'indentation, une instruction, mais pas seulement...).

        Rectifier le code, puis faire un appel à la fonction dans la cellule d'après, en passant en arguments les valeurs que vous choisirez.

        ```python linenums='1'
        def multiplication(a,b)
        for k in range(b)
        m = m + a
        return m
        ```
        
    === "Correction" 
        {{ correction(True, 
        "
        ```python linenums='1'
        def multiplication(a,b): # il manque les : en fin de ligne (SyntaxError)
            m = 0                # initialisation manquante de la variable accumulatrice (NameError plus tard)
            for k in range(b):    # il manque les : en fin de ligne (SyntaxError) et indentation manquante (IndentationError)
                m = m + a        # indentation manquante (IndentationError)
            return m
        ```
        On fait un appel en console pour vérifier, par exemple:

        ```python
        >>> multiplication(4, 5)
        20
        ```
        
        "
        ) }}


!!! example "{{ exercice() }}"
    === "Énoncé" 
        Écrire une fonction `maximum` qui prend une liste en paramètre et qui renvoie sa plus grande valeur.

        Tester la fonction sur une liste au choix.

        **Principe de l'algorithme:**

        - on définit une valeur `maxi` (initialisée à 0) qui stockera au fur et mesure la plus grande valeur rencontrée jusque là.
        - on parcourt la liste, et pour chaque valeur de la liste, on la compare à `maxi` : si elle est plus grande, alors on actualise `maxi` par cette valeur.
    === "Correction (à connaître par :heart:)" 
        {{ correction(True, 
        "
        **Parcours par élément:**
        ```python linenums='1'
        def maximum(tab:list) -> int:
            maxi = tab[0]
            for element in tab:
                if element > maxi:
                    maxi = element
            return element
        ```
        
        **Parcours par indice:**
        ```python linenums='1'
        def maximum(tab:list) -> int:
            maxi = tab[0]
            for i in range(len(tab)):
                if tab[i] > maxi:
                    maxi = tab[i]
            return element
        ```
        "
        ) }}


!!! example "{{ exercice() }} : Le jeu du + ou -"
    === "Énoncé" 
        Alice: « Je pense à un nombre entre 1 et 100. Bob, essaie de le deviner ! » 
        
        Bob: « Ok. 50 ? »

        Alice: « C'est moins! »

        Bob: « 20 ? »

        Alice: « C'est plus! »

        Bob: « 40 ? »

        Alice: « C'est plus! »

        Bob: « 45? »

        Alice: « C'est moins! »

        Bob: « 42? »

        Alice: « Bravo! Tu as deviné! »
 

        Programmer ce jeu (pas nécessairement de fonctions ici).

        **Indications (version de base):**
        - Dans un premier temps, le nombre à deviner est fixé. 
        - On saisira les propositions de l'utilisateur (Bob) avec la fonction `input`.
        - Le programme s'arrête quand l'utilisateur donne la bonne réponse, et sinon affiche « C'est plus! » ou « C'est moins! » selon les cas.

        **Améliorations possibles**
        - Le nombre à deviner est choisi de façon aléatoire. Voir [T6.2 Bibliothèques](https://cgouygou.github.io/1NSI/T06_Python/T6.2_Bibliotheques/T6.2_Bibliotheques/)  pour la fonction `randint` du module `random`.
        - Le programme affiche le nombre de tentatives pour trouver.
        - Le programme joue seul, de façon *intelligente*.

    === "Correction" 
        {{ correction(True, 
        "
        ```python
        import random

        nbr_essais = 1
        nbr_alea =random.randint(0, 100) # nombre choisi par l'ordinateur
        mon_nombre = 0 # nombre proposé par BOB
        
        while mon_nombre != nbr_alea :
            print(f\"Essai numeros {nbr_essais}\")
            mon_nombre = int(input(\"Entrez un nombre entier : \"))
            if mon_nombre < nbr_alea:
                print(\"C'est plus!\")
            elif mon_nombre > nbr_alea:
                print(\"C'est moins!\")
            else:
                print(f\"Bravo BOB ! Tu as trouvé en {nbr_essais} essai(s)\")
            nbr_essais += 1
        ```
        "
        ) }}