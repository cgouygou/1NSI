# Devoir en temps libre (DL) 1

{{ initexo(0) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        Le Mölkky est un jeu de quilles finlandais dont l'objectif est de marquer **exactement** 50 points en renversant des quilles numérotées de 1 à 12.

        Sans rentrer dans les détails, à chaque tour un joueur peut marquer entre 1 et 12 points.

        Si son score dépasse 50 points, alors il retombe à 25.

        **Exemples:**

        - un joueur a 14 points (total de ses coups précédents) et marque au prochain coup 8 points, son score devient 22 points;
        - un joueur a 42 points et marque 4 points: son nouveau score est 46;
        - un joueur a 42 points et marque 8 points: son nouveau score est 50, il a gagné;
        - un joueur a 42 points et marque 10 points: son nouveau score est 25.
        
        Écrire un programme qui calcule le prochain score d'un joueur à partir de son ancien score et du nombre de points obtenu lors d'un tour. 
    === "Solution" 
        {{ correction(True, 
        "
        ```python linenums='1'
        score = int(input(\"Donnez votre score: \"))
        points = int(input(\"Donnez le nombre de points du dernier coup: \"))
        score = score + points
        if score > 50:
            score = 25
        ```

        "
        ) }}

!!! example "{{ exercice() }}"
    === "Énoncé" 
        Pydéfi : [https://pydefis.callicode.fr/defis/SpymasterBomb/txt](https://pydefis.callicode.fr/defis/SpymasterBomb/txt){:target="_blank"} 

        - Penser à utiliser une variable accumulateur.
        - Utiliser la division euclidienne pour tester la divisibilité par un nombre.
    === "Solution" 
        {{ correction(True, 
        "
        ```python linenums='1'
        entree = 1435
        code = 0
        for nombre in range(entree):
            if nombre % 3 == 0 or nombre % 5 == 0:
                code = code + nombre  # ou code += nombre
        print(\"Le code de désamorçage est\", code)
        ```
        
        "
        ) }}


!!! example "{{ exercice() }}"
    === "Énoncé" 
        Pydéfi : [https://pydefis.callicode.fr/defis/Herculito02Hydre/txt](https://pydefis.callicode.fr/defis/Herculito02Hydre/txt){:target="_blank"} 
    === "Solution" 
        {{ correction(True, 
        "
        ```python linenums='1'
        tetes = 8188
        coups_epee = 0
        while tetes > 0:
            if tetes == 1:
                coups_epee += 1
                tetes = 0
            elif tetes % 2 == 0:
                coups_epee += 1
                tetes = tetes // 2
            else:
                tetes = 3*tetes + 1
        print(\"Il a fallu {} coups d'épée à Hercule pour terrasser l'hydre de Lerne.\".format(coups_epee))
        ```

        "
        ) }}


