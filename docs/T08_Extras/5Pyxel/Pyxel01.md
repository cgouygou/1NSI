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


## Principe de base

Voici un modèle de base de programme utilisant Pyxel:

```python
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
