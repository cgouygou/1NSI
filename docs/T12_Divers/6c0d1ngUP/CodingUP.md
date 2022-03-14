# Préparation à c0d1ng UP

![](../images/codingup_banner.webp){: .center} 

Le [blog](https://codingup.fr/){:target="_blank"} pour s'inscrire et avoir toutes les infos.

!!! info "Lecture d'un fichier texte"
    Voici deux principales méthodes pour lire un fichier texte à l'aide de la fonction `open` (aucun module requis, elle fait partie des [fonctions natives de Python](https://docs.python.org/fr/3/library/functions.html){:target="_blank"} :

    === "Méthode 1: sans traitement"
        Si on n'a pas besoin de traiter les données sur chaque ligne du fichier texte, on peut récupérer le fichier sous forme d'une liste (`data` ici), où chaque élément sera une ligne du fichier (`input.txt` ici), de type `str` bien entendu, avec:

        ```python 
        data = open('input.txt').read().splitlines()
        ```
    === "Méthode 2: avec traitement"
        On peut donc également parcourir ligne par ligne le fichier ainsi:

        ```python 
        data = []
        with open('input.txt') as f:
            for line in f.readlines():
                data.append(line.strip())
        ```
        
        Ce code est identique à la méthode 1, mais la boucle `for` permet de faire un traitement de la chaîne de caractéres `line` avant ajout à la liste `data`.

        **Remarque:** la méthode `strip` permet de «nettoyer» la chaîne de caractères, c'est-à-dire ici d'enlever le caractère `\n` de retour à la ligne.
        
    **Pour s'entraîner:**

    [https://pydefis.callicode.fr/defis/EwoksSansA/txt](https://pydefis.callicode.fr/defis/EwoksSansA/txt){:target="_blank"} 

    [https://pydefis.callicode.fr/defis/EwoksVoyelle/txt](https://pydefis.callicode.fr/defis/EwoksVoyelle/txt){:target="_blank"} 


!!! info "Défi par requête web"
    Ce genre de défi donne deux url: l'une pour récupérer les données (méthode get), l'autre pour envoyer votre réponse (méthode POST). On va effectuer des requêtes à ces url via le module `requests`.

    ![](../images/urls.png){: .center width=35%} 

    ```python linenums='1'
    import requests

    # On fait une requête (GET) à la première adresse (copiez-collez l'adresse):
    r = requests.get("http...")
    
    # On récupère le texte contenu dans la page récupérée:
    data = r.text.split("\n") 

    # On résout le défi !
    # On stocke par exemple la réponse dans une variable nommée... reponse


    # On répond avec une requête (POST) à la deuxième adresse (copiez-collez l'adresse).
    # On renvoie en fait un dictionnaire, où "sig" est la signature contenue dans la première
    # ligne du texte (c-a-d data[0]), et où "rep" est la valeur de la réponse...
    ans = requests.post("http...", {"sig": data[0], "rep": reponse})

    # On affiche le résultat de la requête pour contrôler
    print(ans.text) 
    ```

    **Pour s'entraîner:**

    [https://pydefis.callicode.fr/defis/ExempleURL/txt](https://pydefis.callicode.fr/defis/ExempleURL/txt){:target="_blank"} 

    [https://pydefis.callicode.fr/defis/BaladeEchiquier/txt](https://pydefis.callicode.fr/defis/BaladeEchiquier/txt){:target="_blank"} 

!!! info "Les sets"
    Un objet *set* est une collection d'éléments comme les listes ou les tuples, à la différence qu'ils ne sont pas triés ni ordonnées, et donc on ne peut avoir accès à leurs éléments par indexation.

    De plus, un set ne peut pas contenir plusieurs éléments identiques. Il ressemble ainsi à un «ensemble d'éléments» en mathématiques, et se note comme lui entre accolades.

    On peut néanmoins lui ajouter/supprimer des éléments, tester l'appartenance, le parcourir, créer l'intersection ou la réunion de plusieurs sets, etc.

    **Exemples:**

    ```python
    >>> s1 = {'a', 'e', 'i', 'o', 'u', 'y'}
    >>> s2 = set('jack sparrow')
    >>> s2
    {'c', ' ', 'p', 's', 'a', 'k', 'j', 'r', 'w', 'o'}
    >>> set('124512453252514')
    {'5', '4', '3', '1', '2'}
    >>> len(s2)
    10
    >>> 'e' in s1
    True
    >>> 'e' in s2
    False
    >>> s2.remove(' ')
    >>> s2
    {'c', 'p', 's', 'a', 'k', 'j', 'r', 'w', 'o'}
    >>> s1 & s2
    {'o', 'a'}
    >>> s1 | s2
    {'u', 'c', 'j', 'r', 'y', 'e', 's', 'a', 'p', 'k', 'i', 'w', 'o'}
    >>> {'u', 'y'} <= s1
    True
    ```
    
    Pour plus de détails, voir [ici](https://docs.python.org/fr/3/library/stdtypes.html#set-types-set-frozenset){:target="_blank"} 

    **Pour s'entraîner:**
    
    [https://pydefis.callicode.fr/defis/CodeCabine/txt](https://pydefis.callicode.fr/defis/CodeCabine/txt)

!!! info "Lire et travailler sur une image"
    Ça se passe [là](https://cgouygou.github.io/1NSI/T09_Projets/Image/Image/){:target="_blank"} 

    **Pour s'entraîner:**

    [https://pydefis.callicode.fr/defis/Herculito09Ceinture/txt](https://pydefis.callicode.fr/defis/Herculito09Ceinture/txt){:target="_blank"} 