# Trucs et astuces

*Page en construction...*

![texte alternatif](../../images/ampoule.png){: .center width=300px} 


## 1. Récupérer une entrée clavier dans un programme

!!! info "Entrée clavier"
    En Python, la fonction `input` permet de faire une pause dans l'exécution du programme et attend que l'utilisateur fasse une entrée au clavier (terminée bien entendu par la touche `ENTER`).

    Cette fonction renvoie cette entrée systématiquement sous le type `str`. Il faudra penser à la convertir en `int` ou `float` si la saisie attendue est numérique.

    On peut, de façon facultative, préciser en argument une chaîne de caractère qui sera affichée au préalable (pratique pour poser une question).

!!! example "Exemples"
    Ces exemples sont à tester dans un IDE.

    === "Saisie d'un texte (sans argument)"
        ```python
        >>> r = input()
        salut
        >>> r
        'salut'
        >>> type(r)
        <class 'str'>
        >>> 
        ```
    
    === "Saisie d'un texte (avec argument)"
        ```python
        >>> r = input("Quel âge avez-vous? ")
        Quel âge avez-vous? 15
        >>> r
        '15'
        >>> type(r)
        <class 'str'>
        >>> 
        ```
    
    === "Conversion de la saisie en `int`"
        ```python
        >>> r = int(input("Quel âge avez-vous?"))
        Quel âge avez-vous? 15
        >>> r
        15
        >>> type(r)
        <class 'int'>
        >>> 
        ```

## 2. Utilisation du module `PIL`

Le module `PIL` permet la création et la manipulation d'images.

Voir [ici](https://cgouygou.github.io/2SNT/Activites/04-Image_numerique/01-image/#3-en-couleur-avec-python){:target="_blank"} .

