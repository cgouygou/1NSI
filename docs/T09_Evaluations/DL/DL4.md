# DL 0100

{{ initexo(0) }}

À rendre sur [Capytale](https://capytale2.ac-paris.fr/web/c/59e6-1071667){:target="_blank"}  avant le 1er février 2023.



!!! example "{{ exercice() }} - Image 1: Les oiseaux du lac de Stymphale"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Herculito06Oiseaux/txt](https://pydefis.callicode.fr/defis/Herculito06Oiseaux/txt){:target="_blank"} 
    
    === "Indication"
        L'image fournie est en niveaux de gris, c'est-à-dire que chaque pixel est codé sur un seul octet: c'est un entier et non une liste de 3 entiers. On peut le voir ainsi:

        ```python 
        >>> import imageio
        >>> img = imageio.imread('lake.png')
        >>> img[0][0]
        0
        ```

    === "Correction" 
        {{ correction(False, 
        "
        L'image fournie est en niveaux de gris, c'est-à-dire que chaque pixel est codé sur un seul octet: c'est un entier et non une liste de 3 entiers. On peut le voir ainsi:

        ```python 
        >>> import imageio
        >>> img = imageio.imread('lake.png')
        >>> img[0][0]
        0
        ```

        Le défi consiste donc simplement à faire la somme de tous les pixels...

        ```python linenums='1'
        import imageio
        img = imageio.imread('lake.png')

        hauteur, largeur = img.shape

        oiseaux = 0
        
        for l in range(hauteur):
            for c in range(largeur):
                oiseaux += img[l][c]

        print(oiseaux)
        ```
        
        "
        ) }}


!!! example "{{ exercice() }} - Image 2: Portrait coloré"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/LePortraitColore/txt](https://pydefis.callicode.fr/defis/LePortraitColore/txt){:target="_blank"} 
        
    === "Correction" 
        {{ correction(False, 
        "
        Il s'agit ici de :

        1. lire chaque pixel de l'image (un tableau de 3 entiers)
        2. convertir chacun de ces entiers en binaire **sur 8 bits**
        3. «renverser» l'écriture binaire **sur 8 bits**
        4. remplacer le pixel par les valeurs obtenues, converties en entier.

        La difficulté réside sur les étapes 2 et 3. Écrivons donc une fonction pour chacune de ces étapes.

        Pour la première, on peut s'inspirer de ce qu'on a fait sur le projet «Convertisseur»:

        ```python linenums='1'
        def decimal_vers_binaire(n: int) -> str:
            '''
            Renvoie la conversion de l'entier n en mot binaire,
            en utilisant l'algorithme des divisions successives.
            - précondition: n doit être un entier positif.
            '''
            assert n >= 0
            mot = ''
            while n != 0:
                mot = str(n%2) + mot
                n = n // 2
            return mot 

        ```
        Le problème, c'est que l'écriture du mot binaire ne comporte pas nécessairement 8 bits. Il faut donc ajouter autant de `'0'` que nécessaire, c'est-à-dire 8 - le nombre de bits du mot. On modifie donc la fonction en conséquence (ligne 13):

        ```python linenums='1'
        def decimal_vers_binaire(n: int) -> str:
            '''
            Renvoie la conversion de l'entier n en mot binaire,
            en utilisant l'algorithme des divisions successives.
            - précondition: n doit être un entier positif.
            - postcondition: le mot binaire doit contenir 8 bits
            '''
            assert n >= 0
            mot = ''
            while n != 0:
                mot = str(n%2) + mot
                n = n // 2
            mot  = (8-len(mot))*'0' + mot
            return mot 

        ```
        
        Maintenant, l'étape 2 : on renverse l'écriture en la parcourant et en ajoutant chaque chiffre à une variable accumulatrice **par la gauche**. 

        ```python linenums='1'
        def inversion(mot: str) -> str:
            '''
            Renvoie l'écriture renversée du mot binaire
            '''
            renversee = ''
            for c in mot:
                renversee = c + renversee
            return renversee
        ```
        
        On peut donc écrire maintenant le programme principal:

        ```python linenums='1'
        import imageio

        def decimal_vers_binaire(n: int) -> str:
            '''
            Renvoie la conversion de l'entier n en mot binaire,
            en utilisant l'algorithme des divisions successives.
            - précondition: n doit être un entier positif.
            - postcondition: le mot binaire doit contenir 8 bits
            '''
            assert n >= 0
            mot = ''
            while n != 0:
                mot = str(n%2) + mot
                n = n // 2
            mot  = (8-len(mot))*'0' + mot
            return mot 

        def inversion(mot: str) -> str:
            '''
            Renvoie l'écriture renversée du mot binaire
            '''
            renversee = ''
            for c in mot:
                renversee = c + renversee
            return renversee

        img = imageio.imread('portrait.png')

        for l in range(img.shape[0]):
            for c in range(img.shape[1]):
                # on récupère les 3 composantes du pixel img[l][c] qu'on convertit en binaire sur 8 bits
                r = decimal_vers_binaire(img[l][c][0])
                g = decimal_vers_binaire(img[l][c][1])
                b = decimal_vers_binaire(img[l][c][2])
                # on remplace le pixel par les conversions en décimal des écriture binaires inversées des 3 composantes
                img[l][c]=[int(inversion(r), 2), int(inversion(g), 2), int(inversion(b), 2)]

        imageio.imsave('portrait_decrypte.png', img)

        ```
        
        "
        ) }}