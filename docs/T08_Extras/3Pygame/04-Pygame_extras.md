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

## 3. Gérer plusieurs fenêtres

*En terminale...*