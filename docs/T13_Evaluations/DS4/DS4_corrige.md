# DS 0100 - Corrigé

## Entiers signés

1. Donner la représentation binaire en complément à 2 sur 8 bits du nombre `-45`.

    - Valeur absolue en binaire : `00101101`

    - Complément à 2 : `11010010`

    - +1 : `11010011` est la représentation binaire en complément à 2 sur 8 bits du nombre `-45`.

2. Donner l'entier relatif dont la représentation binaire en complément à 2 sur 8 bits est `10110010` .

    - -1 : `10110001`
    - Complément à 2 : `01001110`
    - Conversion en décimal : `01001110` est l'écriture de 78. Donc `10110010` représente `-78`.

3. Quel est le terme anglais désignant «dépassement de capacité» ?

    C'est (integer) **overflow**.

## Tableaux/listes

1. Écrire les instructions pour initialiser une variable `tab_vide` contenant une liste vide, puis une variable `tab_un` contenant une liste de 10 entiers tous égaux à 1.

    ```python linenums='1'
    tab_vide = []
    tab_un = 10 * [1]
    tab_un = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] #accepté, mais très maladroit
    ```

2. On définit la variable de type `list` suivante:
    ```python
    tab = [7, 2, 4, 10, -1, 0, 8]
    ```

    - Quel est l'élément d'indice 3? C'est `10` .
    - Que renvoie `len(tab)`? Cela revoie la taille (ou longueur) du tableau, c'est-à-dire son nombre d'élément, soit 7 ici.
    - Écrire le contenu de la variable `tab` après avoir exécuté les instructions suivantes:
    ```python linenums='1'
    tab[0] = 1
    tab[5] += 1
    tab[1] = tab[0] + tab[6]
    tab.append(42)
    tab.remove(4)
    ```

        On obtient 
        
        ```python 
        >>> tab
        [1, 9, 10, -1, 1, 8, 42]
        ```
    

3. Écrire une fonction qui prend une liste (d'entiers) en paramètre et qui renvoie la somme de ses éléments.

    ```python linenums='1'
    def somme(tab: list) -> int:
        '''
        Renvoie la somme des éléments du tableau d'entiers tab.
        '''
        s = 0
        for entier in tab:
            s += entier
        return s
    ```


4. On considère la liste de listes suivantes:
    ```python
    tictactoe = [['X', ' ', 'O'], [' ', 'O', 'O'], ['X', ' ', ' ']]
    ```

    Quelle instruction fait gagner le joueur `'X'` ?
    ```python 
    tab[1][0] = 'X'
    ```
