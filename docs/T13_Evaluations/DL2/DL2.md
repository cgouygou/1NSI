# DL 2
{{ initexo(0) }}


<!-- Lien Capytale : [https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/e525-202039](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/e525-202039){:target="_blank"}  -->

!!! example "{{ exercice() }} : maximum d'un tableau"
    === "Énoncé"
        Écrire une fonction `max_tableau` qui prend un tableau `tab` (de type `list`) d'entiers strictement positifs et qui renvoie le plus grand de ces entiers.

        Si le tableau est vide, la fonction renvoie `0`.

        Une fonction de tests est fournie.

        ```python linenums='1'
        def test_max_tableau():
            assert max_tableau([4, 1, 5, 12, 8]) == 12
            assert max_tableau([1]) == 1
            assert max_tableau([]) == 0

        test_max_tableau()
        ```
    
    === "Correction"
        Idée de l'algorithme:

        - définir une variable donnant le maximum, initialisée à 0 (si le tableau est vide);
        - parcourir le tableau (si vide, rien à faire);
        - pour chaque valeur, la comparer au maximum. Si elle est supérieure au maximum, remplacer ce maximum par la valeur;
        - renvoyer le maximum

        ```python linenums='1'
        def max_tableau(tab: list) -> int:
            '''
            Renvoie la valeur maximale du tableau d'entiers strictement positifs tab.
            Si tab est vide, la fonction renvoie 0.
            '''

            maxi = 0
            for valeur in tab:
                if valeur > tab:
                    maxi = valeur
            return maxi
        ```

!!! example "{{ exercice() }} : les pouvoirs psychiques de Psystigri"
    === "Énoncé" 
        [Lien vers l'énoncé](https://pydefis.callicode.fr/defis/PsystigriPsy/txt){:target="_blank"} 

    === "Solution"
        Il s'agit de renvoyer l'indice de l'objet qui fera tomber l'énergie de Psystigri.

        On peut donc (au choix):

        - parcourir la liste d'objets sur les éléments, et gérer l'indice en parallèle (solution 1);
        - parcourir la liste d'objets sur les indices, et utiliser une variable pour stocker la valeur souhaitée (solution 2);
        - utiliser une boucle while, peut-être plus adaptée ici, (solution 3);
        - écrire une fonction pour stopper (proprement) le parcours de la liste lorsque l'énergie est tombée à 0 (solution 4).

        === "Solution 1"
            ```python linenums='1'
            objets =  [-98, -66, 74, -85, ...,  99, -58, 42, 14]
            energie = 78
            indice_zero = 0

            for objet in objets:
                if energie > 0:
                    indice_zero += 1
                if energie >= abs(objet):
                    energie -= 1
            
            print(energie)
            ```
        === "Solution 2"
            ```python linenums='1'
            objets =  [-98, -66, 74, -85, ...,  99, -58, 42, 14]
            energie = 78
            indice_zero = 0
            
            for i in range(len(objets)):
                if energie >= abs(objets[i]):
                    energie -= 1
                    if energie == 0:
                        indice_zero = i + 1

            print(indice_zero)
            ```

        === "Solution 3"
            ```python linenums='1'
            objets =  [-98, -66, 74, -85, ...,  99, -58, 42, 14]
            energie = 78
            indice_zero = 1

            while energie > 0:
                if energie >= abs(objets[indice_zero]):
                    energie -= 1
                indice_zero += 1
                
            print(indice_zero)
            ```

        === "Solution 4"
            ```python linenums='1'
            objets =  [-98, -66, 74, -85, ...,  99, -58, 42, 14]
            energie = 78

            def indice_zero(tab, e):
                for i in range(len(tab)):
                    if e >= abs(tab[i]):
                        e -= 1
                    if e == 0:
                        return i + 1

            print(indice_zero(objets, energie))
            ```


        
        
        