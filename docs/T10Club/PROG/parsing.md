# Parsing

En informatique le **parsing** désigne le parcours d'un texte pour l'analyser ou en extraire des informations.

Dans de nombreux défis/challenges, l'entrée du problème consiste en un texte dans lequel il faut extraire des données sur lesquelles exécuter un programme pour obtenir le flag/la solution.

Dans certains cas, il est utile de télécharger les données dans un simple fichier texte (au format `.txt`) puis de l'ouvrir avec Python. Dans d'autre cas, comme dans des défis réseau, on travaille avec une variable de type `#!py str` .

## Lecture d'un fichier texte

!!! info "Lecture d'un fichier texte"
    Voici deux principales méthodes pour lire un fichier texte à l'aide de la fonction `#!py open` (aucun module requis, elle fait partie des [fonctions natives de Python](https://docs.python.org/fr/3/library/functions.html){:target="_blank"}) :

    === "Méthode 1: sans traitement"
        Si on n'a pas besoin de traiter les données sur chaque ligne du fichier texte, on peut récupérer le fichier sous forme d'une liste (`data` ici), où chaque élément sera une ligne du fichier (`input.txt` ici), de type `#!py str` bien entendu, avec:

        ```python 
        data = open('input.txt').read().splitlines()
        ```
    === "Méthode 2: avec traitement"
        On peut également parcourir ligne par ligne le fichier ainsi:

        ```python 
        data = []
        with open('input.txt') as f:
            for line in f.readlines():
                data.append(line.strip())
        ```

        Ce code est identique à la méthode 1, mais la boucle `#!py for` permet de faire un traitement de la chaîne de caractéres `line` avant ajout à la liste `data`.

        **Remarque:** la méthode `#!py strip` permet de «nettoyer» la chaîne de caractères, c'est-à-dire ici d'enlever le caractère `\n` de retour à la ligne.

    

## Découper/extraire des données

Une fois le texte récupéré, il faut bien souvent en extraire des informations.

!!! note "Exemples"
    === "Advent of Code 2022 - Day 2"
        **Données d'entrée:**
        ```
        B Y
        A X
        C Z
        A Z
        B Y
        B Y
        A X
        C Z
        B Y
        B Y
        ```

        Ici les données représentent des combats de «Papier-Feuille-Ciseaux» avec A, B, C pour un joueur et X, Y, Z pour l'autre.

        On veut récupérer dans chaque ligne les coups de chaque joueur pour pouvoir les comparer et compter le nombre de victoires de chacun.


    === "c0d1ngUP  202 - Code Konami"
        **Données d'entrée:**

        ```
        ←← -> h
        ←↑ -> !
        ←→ -> m
        ←↓ -> l
        ←A -> s
        ←B -> ,
        ↑← -> r
        ↑↑ -> p
        ↑→ -> x
        ↑↓ -> b
        ↑A -> j
        ↑B -> v
        →← -> a
        →↑ -> i
        ```
        
        Ici on souhaite récupérer d'une part les deux premiers caractères, d'autre part le dernier. Voir défi plus bas. 


Si on peut toujours raisonner sur les indices des caractères à récupérer dans la chaîne, c'est souvent pénible et long. Il est alors préférable de *découper* la chaîne de caractères et de récupérer chaque morceau dans une **liste** de `#!py str` .



!!! tip "`split`"
    On peut *découper* une chaîne de caractères avec la méthode `split`:
    
    - sans paramètre, elle découpe sur le caractère espace;
    - avec un paramètre de type `#!py str`, elle découpe selon cette chaîne de caractères.
    
    Dans les deux cas, **le caractère de découpe est supprimé**. La méthode `#!py split`  retourne une liste.
    
    **Exemples:**
    ```python
    >>> p = "Un ordinateur, c'est complètement con."
    >>> p.split()
    ['Un', 'ordinateur,', "c'est", 'complètement', 'con.']
    >>> m = 'Abracadabra'
    >>> m.split('a')
    ['Abr', 'c', 'd', 'br', '']
    >>> line = "↑B -> v"
    >>> line.split(' -> ')
    ['↑B', 'v']
    ```


**Pour s'entraîner:**

[c0d1ngUP 2018 : SW VII Les noms des Ewoks I](https://pydefis.callicode.fr/defis/EwoksSansA/txt){:target="_blank"} 

[c0d1ngUP 2018 : SW VII Les noms des Ewoks II](https://pydefis.callicode.fr/defis/EwoksVoyelle/txt){:target="_blank"} 

[c0d1ngUP 2022 : Code Konami](https://pydefis.callicode.fr/defis/C22_KonamiCode/txt){:target="_blank"}

[AoC 2022 : Day 2](https://adventofcode.com/2022/day/2){:target="_blank"}


## Fusionner des chaînes de caractères/renvoyer une réponse

Parfois il est nécessaire de fusionner/concaténer des chaînes de caractères pour obtenir une réponse. Si ces chaînes de caractères sont les éléments d'une liste, on peut utiliser la méthode `#!py join`:

!!! tip "`join`"
    On peut fusionner avec la méthode `join` les élements d'une liste dont tous les éléments sont de type `str`, avec un caractère d'insertion entre les éléments.

    ```python
    >>> l = ['P', 'y', 't', 'h', 'o', 'n']
    >>> "".join(l)
    'Python'
    >>> " ".join(["NSI", "c'est", "de", "l'eau"])
    "NSI, c'est de l'eau"
    >>> liste_alphabet = [chr(k) for k in range(65, 91)]
    >>> liste_alphabet
    ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    >>> "".join(liste_alphabet)
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    >>> 
    ```
