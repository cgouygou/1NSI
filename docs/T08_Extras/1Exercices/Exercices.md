# Exercices supplémentaires

La majorité des exercices proposés sont issus du site [https://pydefis.callicode.fr](https://pydefis.callicode.fr/){target="_blank"} qui recense tous les défis des différentes éditions du concours [`c0d1ng UP`](https://codingup.fr){target="_blank"}.

Vous pouvez vous y créer un compte, pour valider les défis et progresser au Hall of Fame... mais ce n'est absolument pas obligé.

## Désamorçage d'un explosif (I)
!!! lien "Lien Capytale : [0ee2-74101](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/0ee2-74101){target="_blank"}"

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

    ??? check "Correction"
        ```python linenums="1"
        entree = 797114
        U = entree // 1000
        N = entree % 1000
        for k in range(N):
            U = (U*13) % 1000
        print(U)
        ```
        


## SW IV : Il a mis son mot de passe sur un post-it ! 

!!! lien "Lien Capytale : [4f1a-74191](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/4f1a-74191){target="_blank"}"
    Encore la division euclidienne...

    ??? check "Correction"
        ```python linenums="1"
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
        
## Toc Boum

!!! lien "Lien Capytale : [69bf-74184](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/69bf-74184){target="_blank"}"
    Utiliser la «brute-force» !


    ??? check "Correction"
        
        === "Version basique"
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
        === "Version évoluée"
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

## Le message pour Queulorior

!!! lien "Lien Capytale : [2549-94446](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/2549-94446){:target="_blank"}"
    En utilisant Processing.
    
    Ou bien le module `turtle`.

## Cerbère

!!! lien "Lien Capytale : [0d75-95569](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/0d75-95569){:target="_blank"}"
    Brute-forcez: tester toutes les longueurs entières possibles...

## SW I: à l'assaut de Gunray
!!! lien "Lien Capytale : [a5b7-101013](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/a5b7-101013){:target="_blank"} "
    Utilisez des accumulateurs.

    ??? check "Correction"

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
    