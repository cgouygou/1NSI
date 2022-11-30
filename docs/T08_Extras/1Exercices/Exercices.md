# Exercices supplémentaires

!!! capytale "Fiches d'exercices sur Capytale"
    - [Fiche d'exercices 1](https://capytale2.ac-paris.fr/web/c/b154-1046119){:target="_blank"} ou code de partage : `b154-1046119`.

    
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

    === "Correction" 
        {{ correction(False, 
        "
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
        "
        ) }}