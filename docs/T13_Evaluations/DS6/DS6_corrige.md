# DS 0110 - Corrigé

## Exercice 1

On donne le dictionnaire `simpsons` suivant, dont les clés sont des noms et les valeurs leur âge.

```python linenums='1'
simpsons = {'Homer': 39, 'Marge': 34, 'Bart': 10, 'Lisa': 8, 'Maggie': 1, 'Abraham': 85, 'Selma': 34, 'Patty': 34, 'Ned':60, 'Rod': 10, 'Todd': 8, 'Milhouse': 10, 'Moe': 45, 'Tahiti Bob': 28, 'Martin': 10}
```

**Consigne:**

En parcourant le dictionnaire `simpsons`, créer une liste contenant les noms des personnages mineurs (au sens de l'âge bien entendu). 1,5 point pour une liste créée à partir d'une liste vide (en extension) , 2 points pour une liste créée en compréhension. 

!!! done "Correction"
    === "Avec parcours du dictionnaire sur les clés uniquement"
        {{ correction(False, 
        "
        ```python linenums='1'
        # Création de la liste en extension
        mineurs = []
        for perso in simpsons:
            if simpsons[perso] < 18:
                mineurs.append(perso)
        
        # Création de la liste en compréhension
        mineurs = [perso for perso in simpsons if simpsons[perso] < 18]
        ```
        "
        ) }}
    === "Avec parcours du dictionnaire sur les clés **et** les valeurs"
        {{ correction(False, 
        "
        ```python linenums='1'
        # Création de la liste en extension
        mineurs = []
        for perso, age in simpsons.items():
            if age < 18:
                mineurs.append(perso)
        
        # Création de la liste en compréhension
        mineurs = [perso for perso, age in simpsons.items() if age < 18]
        ```
        "
        ) }}
## Exercice 2

Chaque soir, les auditeurs d’une radio votent en ligne pour leur artiste favori. Ces votes sont
stockés dans un tableau.

**Exemple :**

```python
urne = ['A', 'A', 'A', 'B', 'C', 'B', 'C', 'B', 'C', 'B']
```

La fonction `depouille` doit permettre de compter le nombre de votes exprimés pour chaque artiste. Elle prend en paramètre un tableau et renvoie le résultat dans un dictionnaire dont les clés sont les noms des artistes et les valeurs le nombre de votes en leur faveur.

La fonction `vainqueur` doit désigner le nom du ou des gagnants. Elle prend en paramètre un dictionnaire dont la structure est celle du dictionnaire renvoyé par la fonction `depouille` et renvoie un tableau. Ce tableau peut donc contenir plusieurs éléments s’il y a des artistes ex-aequo.


**Consigne:**

Compléter (là où il y a des ...) les fonctions `depouille` et `vainqueur` ci-après pour qu’elles renvoient les résultats attendus.

**Exemples d'utilisation:**
```python
>>> election = depouille(urne)
>>> election
{'A': 3, 'B': 4, 'C': 3}
>>> vainqueur(election)
['B']
```

!!! done "Correction"
    === "Code à compléter"
        ```python linenums='1'
        urne = ['A', 'A', 'A','B', 'C', 'B', 'C','B', 'C', 'B']

        def depouille(urne: list) -> dict:
            resultat = ...
            for bulletin in urne:
                if ... in ...:
                    resultat[bulletin] = resultat[bulletin] + 1
                else:
                    ...
            return resultat

        def vainqueur(election: dict) -> list:
            nmax = 0
            for candidat in election:
                if ... > ... :
                    nmax = ...
            liste_finale = [nom for nom in election if election[nom] == ...]
            return ...
        ```

    === "Code complété"
        {{ correction(False, 
        "
        ```python linenums='1'
        urne = ['A', 'A', 'A','B', 'C', 'B', 'C','B', 'C', 'B']

        def depouille(urne: list) -> dict:
            resultat = {}
            for bulletin in urne:
                if bulletin in resultat:
                    resultat[bulletin] = resultat[bulletin] + 1
                else:
                    resultat[bulletin] = 1
            return resultat

        def vainqueur(election: dict) -> list:
            nmax = 0
            for candidat in election:
                if election[candidat] > nmax :
                    nmax = election[candidat]
            liste_finale = [nom for nom in election if election[nom] == nmax]
            return liste_finale
        ```
        "
        ) }}


## Exercice 3

**Consigne:** Écrire une fonction `rechercheMinMax` qui prend en paramètre un tableau de nombres
non triés `tab`, et qui renvoie la plus petite et la plus grande valeur du tableau sous la
forme d’un dictionnaire à deux clés `'min'` et `'max'`. Si le tableau est vide, les valeurs des clés seront `None`.

**Exemples :**
```python
>>> tableau = [0, 1, 4, 2, -2, 9, 3, 1, 7, 1]
>>> resultat = rechercheMinMax(tableau)
>>> resultat
{'min': -2, 'max': 9}
>>> tableau = []
>>> resultat = rechercheMinMax(tableau)
>>> resultat
{'min': None, 'max': None}
```

**Tout code, même incomplet, sera valorisé.**

!!! done "Correction"
    {{ correction(False, 
    "
    ```python linenums='1'
    def rechercheMinMax(tab: list) -> dict:
        resultat = {'min': None, 'max': None}
        if tab != []:
            resultat['min'] = tab[0]
            resultat['max'] = tab[0]
            for elt in tab:
                if elt < resultat['min']:
                    resultat['min'] = elt
                if elt > resultat['max']:
                    resultat['max'] = elt
        return resultat
    "       
    ) }}