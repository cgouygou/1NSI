# Exercices

Exercices supplémentaires, pour s'exercer et progresser en programmation.

La majorité des exercices proposés sont issus du site [https://pydefis.callicode.fr](https://pydefis.callicode.fr/){target="_blank"} qui recense tous les défis des différentes éditions du concours [`c0d1ng UP`](https://codingup.fr){target="_blank"}.

Vous pouvez vous y créer un compte, pour valider les défis et progresser au Hall of Fame... mais ce n'est absolument pas obligé.

## Désamorçage d'un explosif (I)
!!! lien "Lien Capytale : [0ee2-74101](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/0ee2-74101){target="_blank"}"

    Le découpage de nombres selon un certain nombre de chiffres est quelque chose de courant en programmation.

    Pour cela, l'astuce réside en l'utilisation de la division euclidienne, par la bonne puissance de 10.

    Par exemple, si on veut récupérer le chiffre des unités d'un nombre, il suffit de prendre le reste de la division euclidienne (opérateur `%` en Python) du nombre par 10. Les autres chiffres seront donnés par le quotient (opérateur `//` en Python).

    ```python
    >>> 3748 % 10
    8
    >>> 3748 // 10
    374
    ```

    Pour les deux derniers chiffres, on effectuera une division euclidienne par 100, pour les trois derniers par 1000, etc.


## SW IV : Il a mis son mot de passe sur un post-it ! 

!!! lien "Lien Capytale : [4f1a-74191](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/4f1a-74191){target="_blank"}"
    Encore la division euclidienne...

## Toc Boum

!!! lien "Lien Capytale : [69bf-74184](https://capytale2.ac-paris.fr/web/c-auth/list?returnto=/web/code/69bf-74184){target="_blank"}"
    Utiliser la «brute-force» !