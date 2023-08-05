# Introduction à Pygame

!!! info "Ressources"

    La documentation officielle de Pygame : [https://www.pygame.org/docs/](https://www.pygame.org/docs/){:target="_blank"} 


**Lancement de Pygame et création de fenêtre**

```python linenums='1'
import pygame
from pygame.locals import *

pygame.init()

fenetre = pygame.display.set_mode((640, 480))
pygame.display.set_caption("Mon super programme")
fenetre.fill([10, 186, 181])
 
pygame.display.flip()

# Boucle des événements
continuer = True
while continuer:
    for evenement in pygame.event.get():    #Attente des événements
        if evenement.type == QUIT:
            continuer = False

# Sortie
pygame.quit()
```

!!! code "Explication du code"
    === "Lignes 1 et 2"
        On importe le module `pygame` ainsi que des variables locales bien utiles pour la suite...
    
    === "Ligne 4"
        `pygame.init()` effectue une initialisation globale de tous les modules `pygame` importés. À mettre au début du code.
    
    === "Lignes 6 à 8"
        On crée une fenêtre graphique en précisant sa taille en pixels (ici 640 pixels de largeur et 480 de hauteur), son titre et sa couleur de remplissage, ici un bleu turquoise codé en RGB `[10, 186, 181]` (on verra plus tard comment utiliser plutôt une image de fond).
    
    === "Ligne 9"
        `pygame.display.flip()` effectue un rafraîchissement total de tous les éléments graphiques de la fenêtre. À mettre donc plutôt vers la fin du code.

    === "Lignes 12 à 16"
        C'est la boucle «infinie» (de gestion) des événements, dont on ne sortira que par la bascule d'un booléen, appelé ici `continuer`.
        
    === "Ligne 19"
        On ferme tout proprement.
