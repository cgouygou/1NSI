# Exercices supplémentaires

!!! capytale "Fiches d'exercices sur Capytale"
    - [Fiche d'exercices 1](https://capytale2.ac-paris.fr/web/c/b154-1046119){:target="_blank"} ou code de partage : `b154-1046119`.

    - [Fiche d'exercices 2](https://capytale2.ac-paris.fr/web/c/5d12-1084132){:target="_blank"} ou code de partage : `5d12-1084132`.

    - [Fiche d'exercices 3](https://capytale2.ac-paris.fr/web/c/a8b4-1629612){:target="_blank"} ou code de partage : `a8b4-1629612`.

<!-- ??? check "Correction fiche n°2"
        === "Exercice 1"
            ```python linenums='1'
            #1. parcours par indice
            def somme(tab:list) -> int:
                s = 0
                for k in range(len(tab)):
                    s += tab[k]
                return s

            #1. parcours par élément
            def somme(tab:list) -> int:
                s = 0
                for elt in tab:
                    s += elt
                return s

            #2. parcours par indice
            def somme_carres(tab:list) -> int:
                s = 0
                for k in range(len(tab)):
                    s += tab[k]**2
                return s

            #2. parcours par élément
            def somme_carres(tab:list) -> int:
                s = 0
                for elt in tab:
                    s += elt**2
                return s

            #3. parcours par indice obligatoire!
            def somme_indices_pairs(tab:list) -> int:
                s = 0
                for k in range(len(tab)):
                    if k%2 == 0:
                        s += tab[k]
                return s

            #4. parcours par élément
            def somme_elements_pairs(tab:list) -> int:
                s = 0
                for element in tab:
                    if element%2 == 0:
                        s += element
                return s
            ```
        === "Exercice 2"
            ```python linenums='1'
            # En utilisant la division euclidienne par 10 et en ajoutant des listes à gauche
            def chiffres_math(n:int) -> list:
                c = []
                while n != 0:
                    c = [n%10] + c
                    n = n // 10
                return c

            # En utilisant des conversions int ⟷ str
            def chiffres_str(n:int) -> list:
                c = []
                for car in str(n):
                    c.append(int(car))
                return c
            ```
        
        === "Exercice 3"
            ```python linenums='1'
            import marvel 

            c = 0
            for nom in marvel.persos_marvel:
                if 'black' in nom or 'Black' in nom:
                    c += 1
            print(c)

            # ou, en utilisant la méthode lower():
            import marvel 

            c = 0
            for nom in marvel.persos_marvel:
                if 'black' in nom.lower():
                    c += 1
            print(c)
            ```
            
    ??? check "Correction fiche n°3"
        === "Exercice 1"
            ```python linenums='1'
            def maximum(lst:list) -> int:
                '''
                Renvoie l'entier le plus grand dans une liste lst d'entiers positifs.
                '''
                maxi = 0
                for nombre in lst:
                    if nombre > maxi:
                        maxi = nombre
                return maxi
            ```
        
        === "Exercice 2"
            ```python linenums='1'
            def champ_max(table:list, champ:str) -> dict:
                '''
                Renvoie l'enregistrement de table qui possède la valeur la plus grande dans champ.
                '''
                valeur_max = 0
                for enregistrement in table:
                    if enregistrement[champ] > valeur_max:
                        valeur_max = enregistrement[champ]
                        e_max = enregistrement
                return e_max
            ```

        === "Exercice 3"
            ```python linenums='1'
            def separe(tab:list) -> list:
                '''
                Prend en paramètre un tableau tab dont les éléments sont des 0 et des 1 et qui sépare les 0 des 1 en plaçant les 0 en début de tableau et les 1 à la suite.
                '''
                indice_gauche = 0
                indice_droite = len(tab) - 1
                while indice_gauche < indice_droite:
                    if tab[indice_gauche] == 0 :
                        indice_gauche = indice_gauche + 1
                    else :
                        tab[indice_gauche], tab[indice_droite] = tab[indice_droite], tab[indice_gauche]
                        indice_droite = indice_droite - 1
                return tab
            ```
        
        === "Exercice 4"
            ```python linenums='1'
            def ajoute_dictionnaires(d1:dict, d2:dict) -> dict:
                d = {}
                for cle, valeur in d1.items():
                    d[cle] = valeur
                for cle, valeur in d2.items():
                    if cle in d:
                        d[cle] += valeur
                    else:
                        d[cle] = valeur
                return d
            ```
-->
            
            
            
    

    
La majorité des exercices proposés sont issus du site [https://pydefis.callicode.fr](https://pydefis.callicode.fr/){target="_blank"} qui recense tous les défis des différentes éditions du concours [`c0d1ng UP`](https://codingup.fr){target="_blank"}.

![](../images/c0d1ngUP_affiche_2023.png){: .center width=480} 

L'[affiche au format PDF](../images/affiche_2023.pdf){:target="_blank"} , plus pratique pour déchiffrer [le message caché](https://capytale2.ac-paris.fr/web/c/36c3-873002){:target="_blank"} ...

Vous pouvez vous y créer un compte, pour valider les défis et progresser au Hall of Fame... mais ce n'est absolument pas obligé.

!!! pydefi "Désamorçage d'un explosif (I)"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Desamorcage01/txt](https://pydefis.callicode.fr/defis/Desamorcage01/txt){:target="_blank"} 
    
    === "Indication"
        Le découpage de nombres selon un certain nombre de chiffres est quelque chose de courant en programmation.

        Pour cela, l'astuce réside en l'utilisation de la division euclidienne, par la bonne puissance de 10.

        Par exemple, si on veut récupérer le chiffre des unités d'un nombre, il suffit de prendre le reste de la division euclidienne (opérateur `%` en Python) du nombre par 10. Les autres chiffres seront donnés par le quotient (opérateur `//` en Python).

        ```python
        >>> 3748 % 10
        8
        >>> 3748 // 10
        374
        ```

        Pour les deux derniers chiffres, on effectuera une division euclidienne par 100, pour les trois derniers par 1000, etc.

        ```python
        >>> entree = 317010
        >>> entree % 1000
        10
        >>> entree // 1000
        317
        ```
        
            
    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        entree = 797114
        U = entree // 1000
        N = entree % 1000
        for k in range(N):
            U = (U*13) % 1000
        print(U)
        ```
        "
        ) }}

!!! pydefi "SW IV : Il a mis son mot de passe sur un post-it !"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/LunetteAstro/txt](https://pydefis.callicode.fr/defis/LunetteAstro/txt){:target="_blank"} 

    === "Indication"
        Encore la division euclidienne...

    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        x = 1694
            y = 1546
            for k in range(50):
                z = x  # il est impératif de mettre x en tampon pour faire le 2e calcul avec la bonne valeur de x
                x = (z + 2*y) % 2018
                y = (-3*z + y) % 2018
            
            declinaison = (x - 900) / 10
            ascension_droite = (y / 150) * 2

            print(declinaison, ascension_droite)
        ```
        "
        ) }}


!!! pydefi "Toc Boum"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/TocBoum/txt](https://pydefis.callicode.fr/defis/TocBoum/txt){:target="_blank"} 
    === "Indication" 
        Utiliser la «brute-force» (il s'agit de tester, une à une, toutes les combinaisons possibles...) !

    === "Correction : version basique"
        Où l'on affiche tous les couples possibles, et on trouve le bon en les passant en revue «à la main».
        {{ correction(False,
        "
        ```python linenums='1'
        n = 3188
        for a in range(n//13):
            for b in range(n//7):
                if 13*a + 7*b == n:
                    print(a, b)
        ```
        "
        ) }}
    
    
    
    === "Correction : version évoluée"
        On va mémoriser le meilleur couple, c'est-à-dire celui dont la différence est la plus petite. J'appelle `best_a` et `best_b` ces deux valeurs, que j'initialise à des valeurs volontairement éloignées.

        Puis à chaque couple trouvé (comme dans la version basique), je compare la différence des deux nombres à celle des meilleurs. Si elle est plus petite, je remplace par les nouvelles valeurs de `a` et de `b`

        Pour faire la différence entre deux valeurs, peu importe le signe: on utilisera la valeur absolue, `abs` en Python.
        {{ correction(False,
        "
        ```python linenums='1'
        n = 3188
        best_a = n
        best_b = 0
        for a in range(n//13):
            for b in range(n//7):
                if 13*a + 7*b == n:
                    if abs(a - b) <= abs(best_a - best_b):
                        best_a = a
                        best_b = b
        print(best_a, best_b)
        ```
        "
        ) }}

!!! pydefi "Le message pour Queulorior"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Queulorior/txt](https://pydefis.callicode.fr/defis/Queulorior/txt){:target="_blank"} 

        En utilisant `pygame`.

    === "Indications"
        ```python linenums='1' title="Rappel du code minimal pour Pygame"
        import pygame
        from pygame.locals import *

        pygame.init()

        fenetre = pygame.display.set_mode((640, 480)) # taille de la fenêtre à éventuellement modifier...
        fenetre.fill([255, 255, 255]) # on peut choisir une autre couleur de fond que du blanc...

        # Début des instructions
        message = '''NNEESOOESEENNEEOOSEOSEEENNESENSSENNEESSOOEEENNEEOOSEOSEEENEENOOEESOOSEEEEEEENONSESENNSSENNEESSOOEEENNSSEENNSSEEENOONEEOOSEESEEEENNEESSOOEEENNEESOOEESENNESENSSEEENOONEEOOSEESEEEENNSSEEENNEESOOEESEEEENNEEOOSEOSEEENNEESSOOEEENNEESOOESEENNEEOOSEOSEEEENNOEEOSSEEEEENNEESOOEESOOEEENNEESOOESEENNSSEENNSSENNESNESSENNEEOOSEOSEEENNSSEENNSSEEENOONEEOOSEESENNEEOOSEOSEEEEEENNEESSOOEEENNEEOOSEOSEEENNESNESSENNEESOOEESENNSSENNESENSS'''




        # Fin des instructions

        pygame.display.flip()

        # Boucle des événements
        continuer = True
        while continuer:
            for evenement in pygame.event.get():    #Attente des événements
                if evenement.type == QUIT:
                    continuer = False

        # Sortie
        pygame.quit()
        ```
        
        Pour résoudre ce pydéfi, il va valloir tracer un segment pour chaque pas en direction de N, S, O, E. Commençons par choisir une taille pour chaque pas, par exemple 10 pixels:
        ```python 
        pas = 10
        ```
        
        Ensuite il faut savoir [tracer un segment](https://cgouygou.github.io/1NSI/T08_Extras/3Pygame/04-Pygame_extras/#2-dessiner-avec-pygame){:target="_blank"} 

        ```python
        pygame.draw.line(fenetre, [0, 0, 0], [0, 0], [50, 30], 2)
        ```
        
        L'instruction précédente trace un segment (*a line*) d'épaisseur `2` pixels, en noir (`#!py [0, 0, 0]`) entre les points de coordonnées `#!py [0, 0]` et `#!py [50, 30]`.

        Enfin il faut modéliser correctement le problème, c'est-à-dire identifier les grandeurs dont on va avoir besoin et avec quels types de variables on va les représenter...

        On a besoin à chaque étape:

        - d'un point de départ et d'un point d'arrivée (se rappeler de l'exercice 2.2 de la série 3 avec pygame [ici](https://cgouygou.github.io/1NSI/T06_Python/T6.1_Python/T6.1_2_For/#serie-3-avec-pygame){:target="_blank"}) dont il faut calculer les coordonnées en fonction de la lettre lue (N, S, E, O);
        - d'un déplacement entre les deux, c'est-à-dire tracer une ligne.




    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        import pygame
        from pygame.locals import *

        pygame.init()

        fenetre = pygame.display.set_mode((1400, 80)) # taille de la fenêtre à éventuellement modifier...
        fenetre.fill([255, 255, 255]) # on peut choisir une autre couleur de fond que du blanc...

        # Début des instructions
        message = '''NNEESOOESEENNEEOOSEOSEEENNESENSSENNEESSOOEEENNEEOOSEOSEEENEENOOEESOOSEEEEEEENONSESENNSSENNEESSOOEEENNSSEENNSSEEENOONEEOOSEESEEEENNEESSOOEEENNEESOOEESENNESENSSEEENOONEEOOSEESEEEENNSSEEENNEESOOEESEEEENNEEOOSEOSEEENNEESSOOEEENNEESOOESEENNEEOOSEOSEEEENNOEEOSSEEEEENNEESOOEESOOEEENNEESOOESEENNSSEENNSSENNESNESSENNEEOOSEOSEEENNSSEENNSSEEENOONEEOOSEESENNEEOOSEOSEEEEEENNEESSOOEEENNEEOOSEOSEEENNESNESSENNEESOOEESENNSSENNESENSS'''

        pas = 10
        directions = {'N':(0, -pas), 'S':(0, pas), 'E':(pas, 0), 'O':(-pas, 0)}

        pos_depart = [60, 60]

        for d in message:
            pos_arrivee = [pos_depart[0] + directions[d][0], pos_depart[1] + directions[d][1]]
            pygame.draw.line(fenetre, [0, 0, 0], pos_depart, pos_arrivee, 2)
            pos_depart = pos_arrivee

        # Fin des instructions

        pygame.display.flip()

        # Boucle des événements
        continuer = True
        while continuer:
            for evenement in pygame.event.get():    #Attente des événements
                if evenement.type == QUIT:
                    continuer = False

        # Sortie
        pygame.quit()
        ```
        
        "
        ) }}


!!! pydefi "Cerbère"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Herculito12Cerbere/txt](https://pydefis.callicode.fr/defis/Herculito12Cerbere/txt){:target="_blank"} 

    === "Indication"
        Brute-forcez: tester toutes les longueurs entières possibles...
    === "Correction" 
        {{ correction(False, 
        "
        "
        ) }}
    

!!! pydefi "SW I: à l'assaut de Gunray"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/PorteBlindeeSabre/txt](https://pydefis.callicode.fr/defis/PorteBlindeeSabre/txt){:target="_blank"} 
    === "Indication"
        Utilisez des accumulateurs.
    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        epaisseur_totale = 0
        volume = 0
        temps = 0
        moitie = 0
        while epaisseur_totale < 70:
            epaisseur = 3 - 0.005*volume
            volume += 8*epaisseur
            epaisseur_totale += epaisseur
            temps += 1
            if epaisseur_totale > 35 and moitie == 0:
                moitie = temps
        print(moitie, temps)

        ```
        "
        ) }}

    

!!! pydefi "Les pouvoirs psychiques de Psystigri "
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/PsystigriPsy/txt](https://pydefis.callicode.fr/defis/PsystigriPsy/txt){:target="_blank"} 

    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        objets = [-98, -66, 74, -85, 97, 38, 34, -14, 29, -58, 21, 2, 1, 35, 32, 50, -52, 3, -73, -13, -99, 86, -71, -86, 50, 8, -78, 89, -41, 77, 34, -59, -57, 49, 43, 100, 25, 14, -80, -17, 42, -73, -81, 19, -77, -85, -100, 3, 17, 72, 9, 34, 11, 1, 60, 96, 40, 54, 76, -77, -52, 19, -54, -92, -92, 27, 48, -43, 59, 94, 72, -17, -88, 18, 2, -77, 86, 66, -67, 51, 14, 79, -58, -1, -21, 76, 60, 51, -26, -91, 32, 79, 36, 11, -9, 34, -95, -92, -89, -76, 55, 69, -21, -1, 51, 85, 28, 15, -70, 15, 4, -72, 70, -86, 57, -22, -53, -64, 9, 63, 26, 30, -71, -67, -94, 9, 53, -80, 55, -52, -30, 55, 11, 99, 51, -48, 46, -56, -64, 50, -38, 34, 64, 71, -92, 79, -53, -2, 88, -8, 96, 14, 14, -89, -90, -19, -26, 17, 97, 70, 62, 83, 28, 96, -55, -72, -37, 20, -12, -49, 65, 28, -11, -40, 61, -67, 7, -32, 13, -81, -53, -92, 43, -92, -3, 1, -15, -72, 64, -53, -16, 90, -47, -91, 68, 78, -67, 15, -68, -92, -97, -18, -6, 10, -37, -47, 60, -17, -2, -51, -46, 65, 81, 46, 33, -15, 82, 96, 28, -21, -41, -87, -52, -68, 55, -75, 57, -94, -16, -1, -28, 67, 35, 81, 78, -47, 93, -1, 52, -53, 14, 2, -15, 14, -82, 43, -48, -53, 52, -7, -27, -89, 80, 22, 90, -29, -53, -22, -42, 35, -9, 36, 29, -85, 19, -20, 33, -93, 50, 36, -37, -28, -94, -61, -32, -53, -30, -97, -4, -100, -88, -44, 68, 29, -2, 53, -62, -81, -89, 74, 80, 80, 88, -13, -90, 15, 1, -45, 3, 4, 81, 55, -94, -91, -62, -60, -52, 45, -52, 77, 10, -63, 43, -36, -90, 58, 26, -76, -2, -76, -51, 60, 64, 5, 32, 14, 22, 1, -80, -52, -33, 39, 74, -60, 32, 42, -83, -62, 0, -43, -61, 77, -96, -63, -60, 92, 68, -53, -53, 5, 39, -4, 51, 72, -23, 86, 31, 70, 77, 38, -51, 25, -51, 33, -94, -17, 20, -47, 93, 60, 61, 80, -54, -54, -88, -75, 34, 11, 53, 7, -2, 2, -55, -78, 23, -78, -31, -7, 10, 85, 41, 20, -93, -7, -31, 55, -62, -54, -35, -66, -70, -98, -13, 98, -15, 70, 78, 21, -87, -79, -67, 22, 89, 84, -49, 96, 63, 94, 74, 46, 82, -34, 73, 42, 70, 26, -2, 68, -48, -63, -86, 55, 42, 16, -32, -98, 14, 70, -68, -88, -21, 75, 45, 18, 10, 71, 93, 99, -58, 42, 14]
        energie = 78
        indice_zero = 0


        ## Sol 1

        for objet in objets:
            if energie > 0:
                indice_zero += 1
            if energie >= abs(objet):
                energie -= 1

        print(indice_zero)

        ## Sol 2

        for i in range(len(objets)):
            if energie >= abs(objets[i]):
                energie -= 1
                if energie == 0:
                    indice_zero = i + 1

        print(indice_zero)

        ## Sol 3

        i = 1
        while energie > 0:
            if energie >= abs(objets[i]):
                energie -= 1
            i += 1
        print(i)


        ## SOl 4

        def indice_zero(tab, e):
            for i in range(len(tab)):
                if e >= abs(tab[i]):
                    e -= 1
                    if e == 0:
                        return i + 1

        print(indice_zero(objets, energie))


        ```
        
        "
        ) }}