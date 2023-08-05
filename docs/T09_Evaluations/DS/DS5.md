# DS 0101 - Corrigé

Devoir du 11/01/2023

## Tableaux/listes (à une dimension)

1. Écrire l'instruction pour initialiser une variable `tab_vide` contenant une liste vide:
    ```python 
    tab_vide = []
    ```

2. Écrire l'instruction pour initialiser une variable `tab_un` contenant une liste de 10 entiers tous égaux à 1:
    ```python
    tab_un = 10 * [1]
    ```

3. On définit la variable de type `list` suivante:
    ```python
    tab = [7, 2, 4, 10, -1, 0, 8]
    ```
    **a.** Quel est l'élément d'indice 3? 10

    **b.** Quel est l'indice de l'élément `0`? 5

    **c.** Que renvoie `len(tab)`? c'est le nombre d'éléments, pas l'indice maximum. Donc 7.

    **d.** Que renvoie `tab[-1]`? le dernier élément, c'est-à-dire 8

    **e.** Que renvoie `tab[8]`? Une erreur (`IndexError`)


4. On considère la même variable `tab` qu'à l'exercice précédent. Écrire le contenu de la variable `tab` après l'exécution de chacune des instructions suivantes:
    ```python
    tab[0] = 1                      [1, 2, 4, 10, -1, 0, 8]
    ```
    ```python
    tab[5] += 1                     [1, 2, 4, 10, -1, 1, 8]
    ```
    ```python
    tab[1] = tab[0] + tab[6]        [1, 9, 4, 10, -1, 1, 8]
    ```
    ```python
    tab.append(42)                  [1, 9, 4, 10, -1, 1, 8, 42]
    ```
    ```python
    tab.remove(4)                   [1, 9, 10, -1, 1, 8, 42]
    ```

3. On considère la fonction suivante:

    ```python linenums='1'
    def mystere(tab:list) -> int:
        '''
        La fonction mystere calcule et renvoie la somme des éléments de tab.
        '''
        s = 0
        for elt in tab:
            s = s + elt
        return s
    ```

    **a.** Compléter la docstring de la fonction `mystere`.

    **b.** Réécrire ci-dessous cette fonction en faisant un parcours de liste **sur les indices**:

    ```python linenums='1'
    def mystere(tab:list) -> int:
        '''
        La fonction mystere calcule et renvoie la somme des éléments de tab.
        '''
        s = 0
        for i in range(len(tab)):
            s = s + tab[i]
        return s
    ```
    

## Tableaux/listes de listes (à deux dimensions)

1. On considère le tableau suivant: 
    ```python
    tab = [['c', 0, 'd', 'e', 'r'], [4, 'e', 'v', 'e', 'r']] 
    ```
    
    **a.** Que renvoie `len(tab)`? 2

    **b.** Que renvoie `tab[0][3]`? `'e'`

    **c.** Quelle instruction permet d'accéder à l'élément `'v'`?    `tab[ 1 ][ 2 ]`

2. On considère le tableau suivant:
    ```python linenums='1'
    m = [[1, 9, 4], [4, 1, 8], [7, 10, 1]]
    ```

    Compléter le programme suivant pour qu'il compte le nombre d'entiers pairs contenus dans ce tableau.

    **Parcours par éléments:**
    ```python linenums='1'
    nb = 0
    for ligne in m:
        for elt in ligne:
            if elt%2 == 0:
                nb = nb + 1
    
    print(f"Il y a {nb} entiers pairs dans ce tableau.")
    ```

    **Parcours par indices:**
    ```python linenums='1'
    nb = 0
    for i in range(len(m)):
        for j in range(len(m[i])):
            if m[i][j]%2 == 0:
                nb = nb + 1

    print(f"Il y a {nb} entiers pairs dans ce tableau.")
    ```
        