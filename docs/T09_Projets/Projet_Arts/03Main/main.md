# Programme principal

Il s'agit maintenant d'articuler toutes les «briques» de notre programme.

**Étapes-clés**

1. Chaque groupe doit disposer:
    * d'une image de base;
    * d'un enregistrement sonore;
    * d'une vidéo.

2. On commencera par créer 3 variables contenant **les noms de ces fichiers**.

3. Le protocole de création du GIF comporte 25 itérations du même procédé:
    - extraire une image de la vidéo, puis sa couleur dominante;
    - extraire les données du son de l'enregistrement et du son de la vidéo;
    - extraire la zone de l'image de base;
    - lui appliquer le filtre

4. Une fois les 25 images créées, lancer la création du GIF:
    - redimensionner les 25 images à la bonne taille 500x500;
    - créer le GIF !


!!! tip "Redimensionnement des images"
    Le logiciel (Open-source) ImageMagick permet de faire à peu près tout ce qu'on veut comme retouche d'images... en ligne de commande dans un terminal.

    Par exemple, pour redimensionner une image `monimage.png`:
    ```bash
    convert -resize 500x500 monimage.png monimageredimensionnee.png
    ```
    
    En Python, on peut exécuter une ligne de commande du shell depuis un programme. Pour cela il faut utiliser le module `os` et la fonction `system`:
    ```python linenums='1'
    import os
    os.system('la commande en chaine de caractères')
    ```
    

