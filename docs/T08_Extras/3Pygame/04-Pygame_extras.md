# Texte, dessins, fenêtres

## 1. Écrire du texte

Pour écrire du texte avec Pygame, il faut:

- définir une police de caractères (*font* en anglais), en précisant la taille;
- créer un objet de type `Surface` dans lequel le texte est dessiné, en précisant la couleur et le fond;
- attacher cet objet à la fenêtre avec `blit`.

```python linenums='1' title='Exemple de code'
mapolice = pygame.font.SysFont("Deja Vu Sans MS", 80)
label_victoire = mapolice.render("Gagné !", True, (255, 0, 0), None)
fenetre.blit(label_victoire, (50, 100))
```

## 2. Dessiner avec Pygame

On peut dessiner des formes simples (lignes, rectangles, polygones, cercles, etc) avec le module `pygame.draw`. Le mieux est de consulter [la documentation](https://www.pygame.org/docs/ref/draw.html){:target="_blank"}.

**Some examples:**

```python linenums='1'
# Define the colors we will use in RGB format
BLACK = (  0,   0,   0)
WHITE = (255, 255, 255)
BLUE =  (  0,   0, 255)
GREEN = (  0, 255,   0)
RED =   (255,   0,   0)

# Draw on the screen a GREEN line from (0,0) to (50.75) 
# 5 pixels wide.
pygame.draw.line(screen, GREEN, [0, 0], [50,30], 5)

# Draw on the screen a GREEN line from (0,0) to (50.75) 
# 5 pixels wide.
pygame.draw.lines(screen, BLACK, False, [[0, 80], [50, 90], [200, 80], [220, 30]], 5)

# Draw on the screen a GREEN line from (0,0) to (50.75) 
# 5 pixels wide.
pygame.draw.aaline(screen, GREEN, [0, 50],[50, 80], True)

# Draw a rectangle outline
pygame.draw.rect(screen, BLACK, [75, 10, 50, 20], 2)

# Draw a solid rectangle
pygame.draw.rect(screen, BLACK, [150, 10, 50, 20])

# Draw an ellipse outline, using a rectangle as the outside boundaries
pygame.draw.ellipse(screen, RED, [225, 10, 50, 20], 2) 

# Draw an solid ellipse, using a rectangle as the outside boundaries
pygame.draw.ellipse(screen, RED, [300, 10, 50, 20]) 

# This draws a triangle using the polygon command
pygame.draw.polygon(screen, BLACK, [[100, 100], [0, 200], [200, 200]], 5)

# Draw an arc as part of an ellipse. 
# Use radians to determine what angle to draw.
pygame.draw.arc(screen, BLACK,[210, 75, 150, 125], 0, pi/2, 2)
pygame.draw.arc(screen, GREEN,[210, 75, 150, 125], pi/2, pi, 2)
pygame.draw.arc(screen, BLUE, [210, 75, 150, 125], pi,3*pi/2, 2)
pygame.draw.arc(screen, RED,  [210, 75, 150, 125], 3*pi/2, 2*pi, 2)

# Draw a circle
pygame.draw.circle(screen, BLUE, [60, 250], 40)
```

!!! note "Balle rebondissante"
    Par exemple, pour représenter la balle qui rebondit sur les bords de la fenêtre, on peut dessiner un cercle plutôt que d'importer une image.
    Il faut alors gérer les coordonnées du centre du cercle qui représente la balle.

    Le code devient alors:

    ```python linenums='1'
    import pygame
    from pygame.locals import *

    pygame.init()

    width, height = 320, 240
    screen = pygame.display.set_mode((width, height))

    # Caractéristiques de la balle
    rayon = 8
    x = width // 2 
    y = height // 2
    dx, dy = 1, 0
    couleur = (255, 110, 66)
    # Dessin du cercle
    pygame.draw.circle(screen, couleur, (x, y), rayon)

    continuer = True
    while continuer:
        for evenement in pygame.event.get():
            if evenement.type == QUIT:
                continuer = False
        
        x = x + dx
        y = y + dy

        if x < rayon or x > width-rayon:
            dx = - dx

        screen.fill([0, 0, 0])
        pygame.draw.circle(screen, couleur, (x, y), rayon)
        pygame.display.flip()

    pygame.quit()

    ```
    
## 3. Gérer plusieurs fenêtres

*En terminale...*