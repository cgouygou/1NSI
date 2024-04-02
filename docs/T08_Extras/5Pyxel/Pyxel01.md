# Installation et prise en main de Pyxel

![](images/pyxel_logo_152x64.png){: .center}


Pyxel est un  [moteur de jeu vidéo rétro pour Python](https://github.com/kitao/pyxel/blob/main/docs/README.fr.md){:target="_blank"}.

## Comment utiliser/coder avec Pyxel

- En créant une activité Pyxel Studio sur Capytale;
- En ligne également sur le [site de la nuit du c0de](https://www.nuitducode.net/pyxel){:target="_blank"};
- En installant le module Pyxel sur votre ordinateur (ou sur votre VM au lycée). Par exemple avec Thonny: menu Outils > Gérer les paquets > chercher et installer pyxel.


## Apprendre à utiliser Pyxel

Vous pouvez suivre les tutoriels disponibles sur le [site de la nuit du c0de](https://nuit-du-code.forge.apps.education.fr/DOCUMENTATION/PYTHON/01-presentation/){:target="_blank"}.

Ou ici :smiley: .

**Documentation de Pyxel en pdf:** [:arrow_down:](documentation-pyxel-2023.pdf)

## Principe de base

Voici un modèle de base de programme utilisant Pyxel:


=== "Initialisation"
    On initialise une fenêtre de 160 pixels de large sur 120 pixels de haut, avec un titre pour la fenêtre.

    ```python linenums='1' hl_lines='3'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    def update():
        if pyxel.btnp(pyxel.KEY_Q):
            pyxel.quit()

    def draw():
        pyxel.cls(0)
        pyxel.rect(10, 10, 20, 20, 11)

    pyxel.run(update, draw)
    ```
=== "Fonction `#!py run`"
    La fonction `#!py run` lance à chaque frame (30 fois par seconde par défaut) les fonctions `#!py update` et `#!py draw`.

    ```python linenums='1' hl_lines='13'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    def update():
        if pyxel.btnp(pyxel.KEY_Q):
            pyxel.quit()

    def draw():
        pyxel.cls(0)
        pyxel.rect(10, 10, 20, 20, 11)

    pyxel.run(update, draw)
    ```

=== "Fonction `#!py update`"
    Dans la fonction `#!py update`, on actualise pour chaque *frame* toutes les variables du programme. On gère également les événements (clavier, souris).

    Ici, la fonction `#!py btn` (button pressed) détecte si la touche Q est pressée et on associe une action à effectuer si c'est le cas.

    ```python linenums='1' hl_lines='5-7'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    def update():
        if pyxel.btn(pyxel.KEY_Q):
            pyxel.quit()

    def draw():
        pyxel.cls(0)
        pyxel.rect(10, 10, 20, 20, 11)

    pyxel.run(update, draw)
    ```

=== "Fonction `#!py draw`"
    Dans la fonction `#!py draw`, on s'occupe de dessiner tous les éléments du programme dans la fenêtre, pour chaque *frame*, après avoir tout effacé (c'est le rôle de la fonction `#!py cls`) qui prend une couleur en paramètre, ici 0 pour noir (voir couleurs de Pyxel ci-après).

    La fonction `#!py rect` (button pressed) dessine une rectangle, dont les coordonnées du **coin haut-gauche** sont `10, 10`, de largeur 20, de hauteur 20 (tout ça en pixels) et de couleur de code 11.
    
    ```python linenums='1' hl_lines='9-11'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    def update():
        if pyxel.btn(pyxel.KEY_Q):
            pyxel.quit()

    def draw():
        pyxel.cls(0)
        pyxel.rect(10, 10, 20, 20, 11)

    pyxel.run(update, draw)
    ```


## Les couleurs de Pyxel

![](images/pyxel_palette.png){: .center width=510}

![](images/05_color_palette.png){: .center}

Pour changer la palette de couleurs, on modifie la liste `colors` en spécifiant la couleur au format hexadécimal. Par exemple pour réaffecter au code 8 la couleur rouge (pur) :

```python
pyxel.colors[8] = 0xff0000
```
Ou plus rapidement en donnant une liste de couleurs:

```python
pyxel.colors.from_list([0xff0000, 0xc4b203, ...])
```

## Déplacer un objet en utilisant les flèches directionnelles

Pour déplacer un objet (par exemple le rectangle de l'exemple précédent), il faut:

- définir des variables pour le coin haut-gauche (en début de programme);
- déterminer la modification de ces variables lors de l'appui sur une touche dans la fonction `#!py update`;

!!! warning "Variables globales"
    **Toutes** les variables qu'on actualise dans la fonction `#!py update` doivent être déclarées de façon **globale** (cf. ligne 9 du code suivant).

=== "Basique"
    ```python linenums='1' title='Déplacement vers la droite'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    x = 10
    y = 10

    def update():
        global x, y
        if pyxel.btn(pyxel.KEY_Q):
            pyxel.quit()
        if pyxel.btn(pyxel.KEY_RIGHT):
            x = x + 5 # on déplace de 5 pixels à chaque appui sur la flèche droite

    def draw():
        pyxel.cls(0)
        pyxel.rect(x, y, 20, 20, 11)

    pyxel.run(update, draw)
    ```

=== "Avec gestion des bords"
    Si on appuie trop, le carré sort de la fenêtre à droite... Il faut contrôler cela (ligne 13)
    ```python linenums='1' title='Déplacement vers la droite'
    import pyxel

    pyxel.init(160, 120, title="Mon premier programme")

    x = 10
    y = 10

    def update():
        global x, y
        if pyxel.btn(pyxel.KEY_Q):
            pyxel.quit()
        if pyxel.btn(pyxel.KEY_RIGHT):
            if x < 160 - 20: # largeur écran - largeur carré
                x = x + 5

    def draw():
        pyxel.cls(0)
        pyxel.rect(x, y, 20, 20, 11)

    pyxel.run(update, draw)
    ```

À vous d'ajouter les autre déplacements... et d'imaginer la suite...
