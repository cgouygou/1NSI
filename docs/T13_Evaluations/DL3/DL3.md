# DL 3

{{ initexo(0) }}

Lien vers Capytale : [https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/4135-317335](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/4135-317335){:target="_blank"} 

!!! example "{{ exercice() }} : Piège numérique à Pokémons"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/PokeNombresCommuns/txt](https://pydefis.callicode.fr/defis/PokeNombresCommuns/txt){:target="_blank"} 
    === "Correction" 
        {{ correction(True, 
        "
        Déterminer si un nombre est un muliple de 7 n'est pas un problème, il suffit d'utiliser la division euclidienne.
        
        La difficulté consiste à effectuer la somme des chiffres d'un nombre. Pour cela on dipose de deux méthodes:

        1. La **division euclidienne par 10**: le reste donne le chiffre des unités, le quotient ce qui «reste»
        2. La **conversion** du nombre en chaîne de caractères pour parcourir facilement le nombre.


        ```python
        ## Méthode 1
        
        def somme(n: int) -> int:
            '''
            Renvoie la somme des chiffres de l'entier n, en utilisant
            la méthode de la division euclidienne
            '''
            s = 0
            while n != 0:
                s += n % 10
                n = n // 10
            return s 
        
        ## Méthode 2

        def somme(n: int) -> int:
            '''
            Renvoie la somme des chiffres de l'entier n, en utilisant
            la méthode de la conversion en string
            '''
            s = 0
            for chiffre in str(n):
                s += int(chiffre)
            return s 
        ```
        
        Maintenant qu'on dispose d'une fonction `somme`, il ne reste plus qu'à déterminer les nombres demandés en parcourant tous les nombres positifs inférieurs à 1000. Avec une liste en compréhension c'est très rapide:

        ```python linenums='1'
        preferes = [k for k in range(1000) if k%7 == 0 and somme(k) == 11]
        ```
        
        "
        ) }}

!!! example "{{ exercice() }} : Bombe à désamorcer"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Desamorcage03/txt](https://pydefis.callicode.fr/defis/Desamorcage03/txt){:target="_blank"} 
    === "Correction" 
        {{ correction(True, 
        "
        Pour chaque permutation, qui est donnée sous forme d'un entier, il faut d'abord récupérer les deux chiffres  - à l'aide de la division euclidienne par 10 (encore elle...) - qui donnent les positions des valeurs à échanger.

        Ensuite, on échange les deux valeurs dans la liste des fils, en faisant attention au décalage entre indices (de 0 à 4) et positions (de 1 à 5).

        ```python linenums='1'
        permutations = [25, 31, 43, 12, 12, 43, 31, 35, 54, 23, 12, 23, 12, 21, 45, 43, 41, 45, 43, 45, 35, 15, 53, 41, 51, 45, 12, 31, 14, 45, 12, 24, 32, 24, 21, 21, 51, 31, 53, 25, 12, 43, 35, 13, 23, 54, 34, 32, 23, 15, 23, 42, 41, 43, 13, 14, 52, 14, 53, 41, 14, 43, 35, 42, 32, 21, 51, 52, 24, 51, 12, 12, 52, 34, 35, 54, 21, 41, 32, 32, 34, 12, 41, 34, 43, 41, 35, 12, 32, 51, 34, 15, 25, 43, 45, 45, 45, 52, 31, 43]

        fils = [3, 4, 1, 2, 5]

        for p in permutations:
            pos1 = p // 10
            pos2 = p % 10
            t = fils[pos2 - 1]
            fils[pos1 - 1] = fils[pos2 - 1]
            fils[pos2 - 1] = t
        
        ```
        
        On peut faire plus court sur l'échange, comme expliqué dernièrement en classe:

        ```python linenums='1'
        for p in permutations:
            pos1 = p // 10
            pos2 = p % 10
            fils[pos1 - 1], fils[pos2 - 1] = fils[pos2 - 1], fils[pos1 - 1]
        ```
        
        "
        ) }}

!!! example "{{ exercice() }} - Image 1: Les oiseaux du lac de Stymphale"
    === "Énoncé" 
        [https://pydefis.callicode.fr/defis/Herculito06Oiseaux/txt](https://pydefis.callicode.fr/defis/Herculito06Oiseaux/txt){:target="_blank"} 
    === "Correction" 
        {{ correction(TRue, 
        "
        L'image fournie est en niveaux de gris, c'est-à-dire que chaque pixel est codé sur un seul octet: c'est un entier et non une liste de 3 entiers. On peut le voir ainsi:

        ```python linenums='1'
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
        {{ correction(True, 
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