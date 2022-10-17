# DS 0010 - Corrigé


#### Exercice 1 : Variables 

1. Écrire ci-dessous les intructions pour:

    - initialiser une variable `score` à 0;
    - augmenter cette variable de 100.

    ```python 
    score = 0
    score = score + 100
    ```


3. Je souhaite coder un jeu. Je vais stocker dans une variable la largeur de l'écran (qui vaudra 640 pixels par défaut) et dans une autre variable la hauteur de l'écran (qui vaudra 400 pixels par défaut).

    Nommer et initialiser ces deux variables:

    ```python 
    largeur_ecran = 640
    hauteur_ecran = 400
    ```

3. Écrire ci-dessous les intructions pour échanger les variables `x` et `y`:
    ```python
    >>> x = 5
    >>> y = 2
    >>> z = x # on stocke la valeur de x dans une variable tampon
    >>> x = y 
    >>> y = z
    ```


#### Exercice 2

```python
for lettre in "HOMER":
    print(lettre, end=" ")
    print("D'oh!")
```
Écrire ci-dessous ce qui s'affiche en console lors de l'exécution de ce programme.

```python 
H D'oh!
O D'oh!
M D'oh!
E D'oh!
R D'oh!
```

#### Exercice 3

```python
liste_langages = ['Python', 'C++', 'JavaScript']
for langage in liste_langages:
    print(langage, "est un langage orienté-objet")
print("Mais pas le langage C.")
```

Écrire ci-dessous ce qui s'affiche en console lors de l'exécution de ce programme:

```python
Python est un langage orienté-objet
C++ est un langage orienté-objet
SmallTalk est un langage orienté-objet
Mais pas le langage C.
```

#### Exercice 4

Donner la valeur contenue dans la variable `x` après exécution du programme suivant:
```python
x = 0
for nombre in [2, 5, 12]:
    x = x + nombre
x = x % 2
```

En sortie de boucle, on a ajouté successivement tous les nombres de la liste à `x`, qui contient donc $0+2+5+12=19$. 
Ensuite, on remplace `x` par son reste dans la division euclidienne par 2, qui vaut 1 puisque 19 est impair.

`x` contient donc la valeur 1 en fin de programme.

#### Exercice 5

1. Donner la séquence d'entiers correspondant à `range(2, 10)`:

```python 
2, 3, 4, 5, 6, 7, 8, 9
```

2. Donner la séquence d'entiers correspondant à `range(0, 20, 3)`:

```python 
0, 3, 6, 9, 12, 15, 18
```

#### Exercice 6

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
for numero_jour in range(1, 14):
    print("Vendredi", numero_jour)
```

#### Exercice 7

Proposer un programme faisant intervenir une boucle `for` pour écrire les lignes suivantes:

```python 
Voici le verdict du Choixpeau Magique :
Harry sera à Griffondor
Hermione sera à Griffondor
Ron sera à Griffondor
Neuville sera à Griffondor
```

```python 
print("Voici le verdict du Choixpeau Magique :")
for nom in ["Harry", "Hermione", "Ron", "Neuville"]:
    print(nom, "sera à Griffondor")
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

```python 
print("Mes films préférés:")
for film in ["Retour vers le futur", "Le Parrain", "Iron-Man", "Rambo"]:
    for num in range(1, 4):
        print(film, num)
```

#### Exercice 9

Le programme ci-dessous comporte deux erreurs. Lesquelles? Quels sont leurs types (`NameError`, `SyntaxError`, `IndentationError`, `TypeError`)?

```python linenums='1'
somme = 0
for i in range(12)
    somme = somme + i
  print(somme)
```

En fin de ligne 2, il manque les `:` , ce qui est une `SyntaxError`.

La ligne 4 n'est pas correctement indentée, elle doit soit être au même niveau que l'instruction précédente pour être répétée à chaque passage dans la boucle, soit à la marge au niveau du `for` pour n'être exécutée qu'une seule fois en sortie de boucle. C'est bien entendu une `IndentationError`.