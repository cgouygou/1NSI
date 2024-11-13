# La conjecture de Syracuse

Prenons un entier naturel $n$. On construit la suite de Syracuse de $n$ en appliquant le procédé suivant:

- si $n$ est pair, on le divise par 2;
- sinon on le multiplie par 3 et on ajoute 1;
- on recommence avec le nombre obtenu.

On arrête le procédé lorsqu'on finit par obtenir 1. 

Par exemple, si on choisit 13 comme nombre de départ, on obtient la suite : 13, 40, 20, 10, 5, 16, 8, 4, 2, 1.

La [conjecture de Syracuse](https://fr.wikipedia.org/wiki/Conjecture_de_Syracuse){:target="_blank"} postule qu'on atteindra toujours 1 quel que soit le nombre $n$ de départ.

Pour chaque suite de Syracuse, de terme de départ $n$, on définit:

- **le temps de vol**: c'est le nombre d'itérations pour obtenir 1;
- **le temps de vol en altitude**: c'est le nombre d'itérations avant de passer en dessous de $n$ (pour la première fois);
- **l'altitude maximale**: c'est la valeur maximale de la suite.

Par exemple, pour la suite de Syracuse de 13, le temps de vol est 9, le temps de vol en altitude est 3 et l'altitude maximale est 40.

!!! abstract "Objectif"
    L'objectif de ce TP est de construire un *module* contenant différentes fonctions permettant d'étudier ce suites.

    En particulier, le module contiendra *a minima* les fonctions suivantes:

    - `suivant` : renvoie le successeur d'un nombre entier dans le procédé de Syracuse;
    - `syracuse` : renvoie la suite de Syracuse;
    - `temps_de_vol`, `altitude_max`, et `temps_vol_altitude` dont les noms sont j'espère assez parlants...
    - `affiche_syracuse`: qui doit afficher le graphique de la suite (utiliser pour cela le module `matplotlib.pyplot`).

!!! example "Partie I"
    **À la main**, écrire les suites de Syracuse de 15, 64, et 42. Déterminer pour chacune les temps de vol, temps de vol en altitude et altitude maximale.

    Ces exemples serviront plus tard de jeu de tests pour les fonctions à écrire.

!!! example "Partie II"
    1. Spécifier chacune des fonctions demandées.
    2. Écrire les jeux de tests pour chaque fonction (exceptée `affiche_syracuse`).

!!! example "Partie III"
    Écrire les fonctions.


!!! check "Proposition de correction"
    {{ correction(False, 
    "
    ```python linenums='1'
    import doctest
    import matplotlib.pyplot as plt

    def suivant(n: int) -> int:
        '''
        Fonction renvoyant le successeur de n dans la suite
        de Syracuse
        Précondition: n est un nombre entier strictement positif
        >>> suivant(5)
        16
        >>> suivant(16)
        8
        '''
        assert type(n) == int and n > 0
        if n % 2  == 0:
            return n // 2
        else:
            return 3*n + 1

    def syracuse(n: int) -> list:
        '''
        Fonction renvoyant tous les termes de la suite de Syracuse
        de premier terme n dans une liste.
        Précondition: n est un nombre entier strictement positif
        >>> syracuse(1)
        [1]
        >>> syracuse(3)
        [3, 10, 5, 16, 8, 4, 2, 1]
        '''
        assert type(n) == int and n > 0
        lst = [n]
        while n != 1:
            n = suivant(n)
            lst.append(n)
        return lst
            
    def temps_vol(n: int) -> int:
        '''
        Renvoie le temps de vol dans la suite de Syracuse de premier terme
        n, c'est-à-dire le nombre de termes
        >>> temps_vol(1)
        1
        >>> temps_vol(3)
        8
        '''
        return len(syracuse(n))

    def altitude_max(n: int) -> int:
        '''
        Renvoie l'altitude maximale du vol de la suite de Syracuse de premier terme n.
        >>> altitude_max(1)
        1
        >>> altitude_max(3)
        16
        '''
        alti_max = 0
        for k in syracuse(n):
            if k > alti_max:
                alti_max = k
        return alti_max

    def temps_vol_altitude(n: int) -> int:
        '''
        Renvoie le temps de vol en altitude de la suite de Syracuse de premier terme n,
        c'est-à-dire le nombre d'étapes avant de passer pour la première fois en dessous
        du nombre de départ n.
        >>> temps_vol_altitude(1)
        1
        >>> temps_vol_altitude(3)
        6
        '''
        temps_alti = 0
        suite = syracuse(n)
        while temps_alti < len(suite) and suite[temps_alti] >= n:
            temps_alti += 1
        return temps_alti

    def affiche_syracuse(n:int) -> None:
        '''
        Procédure construisant un graphique représentant les termes de la suite de
        Syracuse de premier terme n.
        Les termes sont représentés avec un carré rouge ((s)quare (r)ed) et
        reliés en pointillés (--).
        '''
        ordonnees = syracuse(n)
        abscisses = range(len(ordonnees))
        plt.plot(abscisses, ordonnees, '--sr')
        plt.show()
    
    if __name__ == '__main__':
        doctest.testmod(verbose=True)
    
    ```
    "
    ) }}
