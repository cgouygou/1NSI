# DS 0001 - Corrigé
<!-- # Première NSI - Groupe 1 - DS 0001 - Corrigé -->

## Partie 1 - Bases de numération 


#### Exercice 1

1. Convertir 1100011$_2$ en décimal.

    1100011$_2$ = 64 + 32 + 2 + 1 = 99

2. Convertir 179 en binaire

    179 = 128 + 32 + 16 + 2 + 1 = 10110011$_2$

3. Convertir 172$_8$ en décimal.

    $172_8=1\times 8^2 + 7\times 8^1+2\times 8^0 = 64+56+2=122$.

4. Convertir 68 en base 5.

    $68 = 2\times5^2 + 3\times 5^1 + 3\times 5^0 = 233_5$.

3. Convertir AC$_{16}$ en décimal.

    AC$_{16}=10\times 16^1 + 12\times 16^0 = 160+12=172$


## Partie 2 - Programmation : Variables et boucle `for`

#### Exercice 2

1. Écrire ci-dessous les intructions pour échanger les variables `x` et `y`:
```python
>>> x = 5
>>> y = 2
>>> z = x # on stocke la valeur de x dans une variable tampon
>>> x = y 
>>> y = z
```

2. Écrire ci-dessous les intructions pour:

    - initialiser une variable `score` à 0;
    - augmenter cette variable de 100.

    ```python 
    score = 0
    score = score + 100
    ```


3. Je souhaite coder un jeu. Je vais stocker dans une variable la largeur de l'écran (qui vaudra 640 pixels par
défaut) et dans une autre variable la hauteur de l'écran (qui vaudra 400 pixels par défaut).

    Nommer et initialiser ces deux variables:

    ```python 
    largeur_ecran = 640
    hauteur_ecran = 400
    ```

#### Exercice 3

On considère le programme suivant:

```python linenums="1"
for lettre in "HOMER":
    print(lettre)
```
Écrire ci-dessous ce qui s'affiche en console lors de l'exécution de ce programme.

```python 
H
O
M
E
R
```

#### Exercice 4

Donner la séquence d'entiers correspondant à `range(2, 10)`:

```python 
>>> list(range(2, 10))
[2, 3, 4, 5, 6, 7, 8, 9]
```

#### Exercice 5

Écrire en deux lignes un programme qui donnera la sortie suivante:
```python 
Vendredi 1
Vendredi 2
Vendredi 3
Vendredi 4
Vendredi 5
Vendredi 6
Vendredi 7
Vendredi 8
Vendredi 9
Vendredi 10
Vendredi 11
Vendredi 12
Vendredi 13
```

```python 
for day in range(1, 14):
    print("Vendredi", day)
```

#### Exercice 6

```python
liste_langages = ['Python', 'C++', 'SmallTalk']
for langage in liste_langages:
    print(langage, "est un langage orienté-objet")
```

Écrire ci-dessous ce qui s'affiche en console lors de l'exécution de ce programme:

```python
Python est un langage orienté-objet
C++ est un langage orienté-objet
SmallTalk est un langage orienté-objet
```

#### Exercice 7

Proposer un programme pour écrire *intelligemment* les lignes suivantes:

```python 
Voici le verdict du Choixpeau Magique :
Harry sera à Griffondor
Hermione sera à Griffondor
Ron sera à Griffondor
Neuville sera à Griffondor
```

```python 
print("Voici le verdict du Choixpeau Magique :")
for name in ["Harry", "Hermione", "Ron", "Neuville"]:
    print(name, "sera à Griffondor")
```

**Remarque:** on peut également stocker au préalable la liste des noms dans une variable:

```python 
names_list = ["Harry", "Hermione", "Ron", "Neuville"]
print("Voici le verdict du Choixpeau Magique :")
for name in names_list:
    print(name, "sera à Griffondor")
```

#### Exercice 8

Proposer un programme pour écrire *intelligemment* les lignes suivantes:

```python 
Mes films préférés:
Retour vers le futur 1
Retour vers le futur 2
Retour vers le futur 3
Le Parrain 1
Le Parrain 2
Le Parrain 3
Iron-Man 1
Iron-Man 2
Iron-Man 3
Rambo 1
Rambo 2
Rambo 3
```
Il faut remarquer que non seulement il faut boucler sur les numéros des films, mais également sur les titres. Il faut donc imbriquer deux boucles `for`:

```python 
print("Mes films préférés:")
for movie in ["Retour vers le futur", "Le Parrain", "Iron-Man", "Rambo"]:
    for num in range(1, 4):
        print(movie, num)
```
