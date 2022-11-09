# DL 0001

<!-- À consulter et rendre sur [Capytale](https://capytale2.ac-paris.fr/web/c/1a0d-851672){:target="_blank"}  -->

## Exercice 1

Le Mölkky est un jeu de quilles finlandais dont l'objectif est de marquer **exactement** 50 points en renversant des quilles numérotées de 1 à 12.

Sans rentrer dans les détails, à chaque tour un joueur peut marquer entre 1 et 12 points.

Si son score dépasse 50 points, alors il retombe à 25.

**Exemples:**

- un joueur a un score de 14 points (total de ses coups précédents) et marque au prochain coup 8 points, son score devient 22 points;
- un joueur a un score de 42 points et marque 4 points: son nouveau score est 46;
- un joueur a un score de 42 points et marque 8 points: son nouveau score est 50, il a gagné;
- un joueur a un score de 42 points et marque 10 points: son nouveau score est 25.

Écrire un programme qui demande le score du joueur puis le nombre de points qu'il vient de faire, et qui ensuite calcule puis affiche son score actualisé.

!!! check "Proposition de correction"
    ```python linenums='1'
    score = int(input("Donnez votre score actuel: "))
    points = int(input("Donnez votre nombre de points: "))
    score = score + points
    if score > 50:
        score = 25
    print(f"Votre nouveau score est {score}.")
    ```

## Exercice 1 bis (bonus, facultatif)

Écrire un programme qui répète les instructions précédentes tant que le joueur n'a pas gagné.

!!! check "Proposition de correction"
    ```python linenums='1'
    score = 0
    while score != 50:
        points = int(input("Donnez votre nombre de points: "))
        score = score + points
        if score > 50:
            score = 25
        print(f"Votre nouveau score est {score}.")
    print("Bravo, vous avez gagné")
    ```

## Exercice 2 (Désamorçage à la Tony Stark)

[Énoncé du pydéfi](https://pydefis.callicode.fr/defis/SpymasterBomb/txt){:target="_blank"}

**Indications:**

- Penser à utiliser une variable accumulateur.
- Utiliser la division euclidienne pour tester la divisibilité par un nombre.

!!! check "Proposition de correction"
    ```python linenums='1'
    n = 1435
    code = 0
    for k in range(1, n):
        if k%3 == 0 or k%5 == 0:
            code = code + k
    print(f"Le code est {code}.")
    ```