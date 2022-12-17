# Gestion des événements

Lorsqu'un programme ```pygame``` est lancé, la variable interne ```pygame.event.get()``` reçoit en continu les évènements des périphériques gérés par le système d'exploitation.  

Dans les exemples précédents, on a uniquement récupéré l'événement de type `QUIT` (clic sur la croix de fermeture de la fenêtre) pour stopper la boucle et terminer le programme:

```python 
for evenement in pygame.event.get():  
    if evenement.type == QUIT:
        continuer = False
```

Nous allons maintenant nous intéresser aux évènements de type ```KEYDOWN``` (touche de clavier appuyée) ou de type ```MOUSEBUTTONDOWN``` (boutons de souris appuyé).

## 1. Événements clavier

!!! code "Structure de code"
    On contrôle si l'événement est de type `KEYDOWN`, puis on détermine l'instruction à exécuter en fonction de l'attribut `key` de l'événement (c'est-à-dire le code de la touche):

    ```python linenums='1'
    for evenement in pygame.event.get():   
        if evenement.type == KEYDOWN:
            if evenement.key == K_RIGHT:
                print("flèche droite appuyée")

    ```

**Remarques:**

- la liste des codes des touches se retrouve ici : [https://www.pygame.org/docs/ref/key.html](https://www.pygame.org/docs/ref/key.html){:target="_blank"} 
- rémanence des touches : si on veut que l'action associée à l'appui d'une touche se répète (par ex. toutes les 50 millisecondes) tant que la touche reste enfoncée, on utilise: 
```python
pygame.key.set_repeat(50)
```



!!! example "À vous de jouer"
    Écrire un programme qui déplace un personnage dans la fenêtre, piloté pour les quatre touches directionnelles du clavier.



## 2. Événements souris

!!! code "Structure de code"
    On contrôle cette fois que l'évènement est de type `MOUSEBUTTONDOWN`, puis on détermine l'instruction à exécuter en fonction de l'attribut `button` de l'événement (`1` pour bouton gauche, `2` pour bouton droit, `3` à `5` pour la molette).

    ```python linenums='1'
    for evenement in pygame.event.get():   
        if evenement.type == MOUSEBUTTONDOWN:
            if evenement.button == 1:
                print("clic gauche détecté")
    ```

**Remarque:**  on récupère le tuple des coordonnées de la souris par l'instruction `pygame.mouse.get_pos()`.

!!! example "Exemple d'utilisation"
    Exécuter et analyser le code suivant:

    ```python linenums='1'
    import pygame
    from pygame.locals import *
    import random

    ## Fonctions
    def affiche():
        couleur = (random.randint(0, 255),
                   random.randint(0, 255),
                   random.randint(0, 255))
        screen.fill(couleur)
        pygame.draw.rect(screen, (0, 0, 0), [width//2 - 50, height//2 - 50, 100, 100], 10)

    ## Constantes
    width, height = 640, 480
    size = (width, height)


    ## Initialisation de Pygame
    pygame.init()

    ## Écran
    screen = pygame.display.set_mode(size)
    pygame.display.set_caption("Cliquez dans le carré")

    ## Boucle des événements
    affiche()
    continuer = True

    while continuer:
        for evenement in pygame.event.get():
            if evenement.type == pygame.QUIT:
                continuer = False
            if evenement.type == MOUSEBUTTONDOWN:
                if evenement.button == 1:
                    x, y = pygame.mouse.get_pos()
                    if abs(x - width//2) < 50 and abs(y - height//2) < 50:
                        affiche()

        pygame.display.flip()

    ## Fermeture de la fenêtre
    pygame.quit()
    ```
    