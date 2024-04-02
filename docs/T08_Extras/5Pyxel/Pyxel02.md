# Quelques techniques

## Utilisation du `frame_count`

`frame_count` est une variable qui compte le nombre de *frames* passées depuis le lancement du programme. Elle est particulièrement utile pour gérer le temps, par exemple pour l'apparition de personnages.

!!! info "Modulo"
    Comme par défaut il y a 30 frames par seconde, pour gérer l'apparition d'un «personnage» toutes les secondes, on doit déterminer si  `frame_count` est un multiple de 30. 

    On utilise donc l'opération «modulo», c'est-à-dire le reste dans la division euclidienne, ou bien encore `#!py %` en Python.

    Tester:

    ```python
    import pyxel
    from random import randint

    pyxel.init(128, 128, title="Mon premier programme")

    width = 8

    def update():
        global x, y, width
        if pyxel.btn(pyxel.KEY_Q):
            pyxel.quit()
        if pyxel.frame_count % 30 == 0:
            x = randint(0, 128-width)
            y = randint(0, 128-width)

    def draw():
        pyxel.cls(0)
        pyxel.rect(x, y, width, width, 10)

    pyxel.run(update, draw)
    ```

    Pour une apparition toutes les 2 secondes, on utilisera bien entendu `#!py pyxel.frame_count % 60 == 0`...