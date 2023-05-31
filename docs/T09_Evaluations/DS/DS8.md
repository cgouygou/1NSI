# DS 1000 - Corrigé
Devoir du 24/05/2023

## Partie 1: voir T5.2.5

## Partie 2:

1. `cd ../../Hack/Reponses`
2. `mendeleiev[1][6]`
3. `m` est de type `#!py int` car c'est une clé du dictionnaire `annee2019`.
4. `#!py [eleve["prenom"] for eleve in table_eleves if eleve["age"] > = 18]` 
5. le `#!py return True` doit être après la boucle `#!py for` (si aucun test n'a donné `True`, c'est-à-dire si on n'a trouvé aucune dame dans les colonnes précédentes), donc il devrait être indenté au **même** niveau que le `#!py for`.


## Partie 3:

!!! example "Exercice 1: maximum et indice"

    Écrire une fonction `max_et_indice` qui prend en paramètre une liste non vide de nombres entiers positifs et qui renvoie un tuple composé du plus grand élément de cette liste et de l'indice de sa première apparition dans la liste.

    **Remarques:* exercice classique où l'on fait une recherche de maximum en parcourant la liste et en comparant l'élément courant de la liste avec la valeur maximale en mémoire. La «nouveauté» consiste à mémoriser également l'indice de cette valeur maximale, qu'on actualise à chaque fois qu'on en trouve une nouvelle.

    ```python linenums='1'
    def max_et_indice(tab:list):
        assert len(tab) > 0, "Liste vide"
        valeur_max = tab[0]
        indice = 0
        for i in range(len(tab)):
            if tab[i] > valeur_max:
                valeur_max = tab[i]
                indice  = i
        return valeur_max, indice
    
    assert max_et_indice([1, 5, 6, 9, 1, 2, 3, 9, 7]) == (9, 3)
    assert max_et_indice([2]) == (2, 0)
    assert max_et_indice([1, 1, 1, 1]) == (1, 0)
    ```


!!! example "Exercice 2: liste des puissances"

    On rappelle que le nombre $a^n$ est le nombre $a\times a\times \dots \times a$ où le nombre $a$ apparaît $n$ fois.

    Dans cet exercice l'opérateur `**` et la fonction `pow` ne sont pas autorisés.

    Compléter la fonction `dico_puissances` qui prend en paramètre deux entiers `a` et `n` (avec $n>0$) et qui renvoie un dictionnaire dont les clés sont les exposants (de `1` à `n`) et les valeurs associées les puissances de `a.

    ```python linenums='1'
    def dico_puissances(a, n):
        d = {} # ou d= dict()
        p = 1
        for k in range(1, n+1):
            p = p * a
            d[k] = p
        return d

    assert dico_puissances(2, 5) == {1: 2, 2: 4, 3: 8, 4: 16, 5: 32}
    assert dico_puissances(-3, 1) == {1: -3}
    ```

!!! example "Exercice 3: comparaison de listes"

    Dans cet exercice, on utilise le mode de comparaison de deux listes (de même longueur) suivant:

    - on compare les valeurs des deux listes **de même indice**;
    - la liste «la plus grande» est celle qui possède le plus de valeurs supérieures;
    - en cas d'égalité, la comparaison renvoie `None`.


    **Exemple:**
    Avec les listes `lst1 = [3, 2, 7, 12, 1, 6, 9]` et `lst2 = [2, 0, 8, 5, 10, 23, 4]`, la comparaison donne `lst1` supérieure à `lst2` car elle possède 4 valeurs (3, 2, 12 et 9) qui sont supérieures à celles de `lst2` aux mêmes indices (2, 0, 5 et 4) contre 3 pour `lst2`.


    Compléter le code ci-dessous pour écrire une fonction `comparaison` qui prend en paramètre deux listes (qu'on suppose de même longueur) et qui renvoie soit la plus grande, soit `None` (si les comparaisons indice par indice donnent le même nombre de valeurs supérieures dans les deux listes).

    ```python linenums='1'
    def comparaison(lst1, lst2):
        n = len(lst1)
        c1 = 0
        c2 = 0
        for i in range(n):
            if lst1[i] > lst2[i] :
                c1 += 1
            else:
                c2 += 1
        if c1 > c2:
            return lst1
        elif c1 < c2:
            return lst2
        else:
            return None

    assert comparaison([3, 2, 7, 12, 1, 6, 9], [2, 0, 8, 5, 10, 23, 4]) == [3, 2, 7, 12, 1, 6, 9]
    assert comparaison([2, 1], [1, 2]) == None
    ```


!!! example "Exercice 4: vérifier qu'une liste est triée"

    Pour vérifier qu'une liste (d'entiers) est triée dans l'ordre croissant, il suffit de la parcourir et de vérifier qu'un élèment est inférieur au suivant. Dès que ce n'est pas le cas, on peut s'arrêter et savoir que la liste n'est pas triée. Si on arrive au dernier élément, alors on sait que la liste est triée.

    Écrire une fonction `ordre` qui prend en paramètre une liste et qui renvoie un booléen (`True` / `False`) qui indique si la liste est triée dans l'ordre croissant ou non.

    ```python linenums='1'
    def ordre(tab:list) -> bool:
        for i in range(len(tab)-1):
            if tab[i] > tab[i+1]:
                return False
        return True
        
    assert ordre([6, 23, 32, 33, 42, 91]) == True
    assert ordre([3, 1, 2]) == False

    ```
