# DL 0010
{{ initexo(0) }}

À rendre sur [Capytale](https://capytale2.ac-paris.fr/web/c/17a7-1064333){:target="_blank"} avant le 23 décembre 2022.


!!! example "{{ exercice() }} : maximum d'un tableau"
    === "Énoncé"
        L'objectif est d'écrire une fonction `max_tableau` qui prend un tableau `tab` (de type `list`) d'entiers strictement positifs et qui renvoie le plus grand de ces entiers.

        Si le tableau est vide, la fonction doit renvoyer `0`.

        1. Écrire un jeu de trois tests pour cette fonction.
        2. Implémenter la fonction (c'est-à-dire écrire le code de la fonction). Cette fonction doit être **spécifiée**.

    
    === "Correction"
        

!!! example "{{ exercice() }} : les pouvoirs psychiques de Psystigri"
    === "Énoncé" 
        [Lien vers l'énoncé](https://pydefis.callicode.fr/defis/PsystigriPsy/txt){:target="_blank"} 

    === "Indications"
        Il s'agit de renvoyer l'indice de l'objet qui fera tomber l'énergie de Psystigri.

        On peut donc (au choix):

        - parcourir la liste d'objets sur les éléments, et gérer l'indice en parallèle (solution 1);
        - parcourir la liste d'objets sur les indices, et utiliser une variable pour stocker la valeur souhaitée (solution 2);
        - utiliser une boucle while, peut-être plus adaptée ici, (solution 3);
        - écrire une fonction pour stopper (proprement) le parcours de la liste lorsque l'énergie est tombée à 0 (solution 4).

        **Remarque:** les nombres négatifs n'ont pas d'importance. En effet si un objet a pour valeur -46 et que Psystigri possède une énergie de 52, alors il fait valser l'objet (et donc perdra un point d'énergie) car 52 est supérieur à 46, **la valeur absolue** de -46.

        Il faut donc comparer l'énergie de Psystigri à la valeur absolue de l'objet de la liste.

        En Python, la valeur absolue est obtenue à l'aide de la fonction `#!py abs` :

        ```python
        >>> abs(12)
        12
        >>> abs(-46)
        46
        ```
        
    
        
        