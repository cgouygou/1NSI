# DL0011


!!! pydefi "Les pouvoirs psychiques de Psystigri "
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/PsystigriPsy/txt](https://pydefis.callicode.fr/defis/PsystigriPsy/txt){:target="_blank"} 


        À faire pour le 23/11/2023 sur [Capytale](https://capytale2.ac-paris.fr/web/c/f206-2231962){:target="_blank"} 
    === "Indications"
        Il s'agit de renvoyer l'indice de l'objet qui fera tomber à 0 l'énergie de Psystigri.

        On peut donc (au choix):

        - parcourir la liste d'objets sur les éléments, et gérer l'indice en parallèle (solution 1);
        - parcourir la liste d'objets sur les indices, et utiliser une variable pour stocker la valeur souhaitée (solution 2);
        - utiliser une boucle while, peut-être plus adaptée ici, (solution 3);
        - écrire une fonction pour stopper (proprement) le parcours de la liste lorsque l'énergie est tombée à 0 (solution 4).

        En Python , pour obtenir la valeur absolue d'un nombre, on utilise la fonction `!#py abs`:

        ```python
        >>> abs(-5)
        5
        >>> abs(12)
        12
        ```
    === "Correction" 
        {{ correction(False, 
        "
        ```python linenums='1'
        objets = [-98, -66, 74, -85, 97, 38, 34, -14, 29, -58, 21, 2, 1, 35, 32, 50, -52, 3, -73, -13, -99, 86, -71, -86, 50, 8, -78, 89, -41, 77, 34, -59, -57, 49, 43, 100, 25, 14, -80, -17, 42, -73, -81, 19, -77, -85, -100, 3, 17, 72, 9, 34, 11, 1, 60, 96, 40, 54, 76, -77, -52, 19, -54, -92, -92, 27, 48, -43, 59, 94, 72, -17, -88, 18, 2, -77, 86, 66, -67, 51, 14, 79, -58, -1, -21, 76, 60, 51, -26, -91, 32, 79, 36, 11, -9, 34, -95, -92, -89, -76, 55, 69, -21, -1, 51, 85, 28, 15, -70, 15, 4, -72, 70, -86, 57, -22, -53, -64, 9, 63, 26, 30, -71, -67, -94, 9, 53, -80, 55, -52, -30, 55, 11, 99, 51, -48, 46, -56, -64, 50, -38, 34, 64, 71, -92, 79, -53, -2, 88, -8, 96, 14, 14, -89, -90, -19, -26, 17, 97, 70, 62, 83, 28, 96, -55, -72, -37, 20, -12, -49, 65, 28, -11, -40, 61, -67, 7, -32, 13, -81, -53, -92, 43, -92, -3, 1, -15, -72, 64, -53, -16, 90, -47, -91, 68, 78, -67, 15, -68, -92, -97, -18, -6, 10, -37, -47, 60, -17, -2, -51, -46, 65, 81, 46, 33, -15, 82, 96, 28, -21, -41, -87, -52, -68, 55, -75, 57, -94, -16, -1, -28, 67, 35, 81, 78, -47, 93, -1, 52, -53, 14, 2, -15, 14, -82, 43, -48, -53, 52, -7, -27, -89, 80, 22, 90, -29, -53, -22, -42, 35, -9, 36, 29, -85, 19, -20, 33, -93, 50, 36, -37, -28, -94, -61, -32, -53, -30, -97, -4, -100, -88, -44, 68, 29, -2, 53, -62, -81, -89, 74, 80, 80, 88, -13, -90, 15, 1, -45, 3, 4, 81, 55, -94, -91, -62, -60, -52, 45, -52, 77, 10, -63, 43, -36, -90, 58, 26, -76, -2, -76, -51, 60, 64, 5, 32, 14, 22, 1, -80, -52, -33, 39, 74, -60, 32, 42, -83, -62, 0, -43, -61, 77, -96, -63, -60, 92, 68, -53, -53, 5, 39, -4, 51, 72, -23, 86, 31, 70, 77, 38, -51, 25, -51, 33, -94, -17, 20, -47, 93, 60, 61, 80, -54, -54, -88, -75, 34, 11, 53, 7, -2, 2, -55, -78, 23, -78, -31, -7, 10, 85, 41, 20, -93, -7, -31, 55, -62, -54, -35, -66, -70, -98, -13, 98, -15, 70, 78, 21, -87, -79, -67, 22, 89, 84, -49, 96, 63, 94, 74, 46, 82, -34, 73, 42, 70, 26, -2, 68, -48, -63, -86, 55, 42, 16, -32, -98, 14, 70, -68, -88, -21, 75, 45, 18, 10, 71, 93, 99, -58, 42, 14]
        energie = 78
        indice_zero = 0


        ## Solution 1

        for objet in objets:
            if energie > 0:
                indice_zero += 1
            if energie >= abs(objet):
                energie -= 1

        print(indice_zero)

        ## Solution 2

        for i in range(len(objets)):
            if energie >= abs(objets[i]):
                energie -= 1
                if energie == 0:
                    indice_zero = i + 1

        print(indice_zero)

        ## Solution 3

        i = 1
        while energie > 0:
            if energie >= abs(objets[i]):
                energie -= 1
            i += 1
        print(i)


        ## Solution 4

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