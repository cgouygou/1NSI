# DS 0010 - Corrigé

<!-- # Première NSI - Groupe 1 - DS 0010 - Corrigé -->

<!-- **Nom Prénom:** -->

---


Ce test comporte 12 questions. Vous pouvez n'en traiter que 10. Une seule réponse par question est correcte.


**Question 1**

Combien de bits sont nécessaires pour écrire en binaire le nombre 33 ?


|[ ] 5 |  [ ] 2 | [ x ] 6 | [ ] 4 |
|:-:|:-:|:-:|:-:|


**Question 2**

Parmi les propositions suivantes, laquelle est la représentation binaire de 163 ?

|[ ] 11000101 | [ ] 10100110 | [ x ] 10100011 | [ ] 00111011 |
|:-:|:-:|:-:|:-:|


**Question 3**

En ajoutant trois chiffres 0 à droite de l'écriture binaire d'un entier strictement positif N, on obtient l'écriture binaire de:

| [ ] 1000 x N | [ x ] 8 x N  | [ ] 4 x N | [ ] 16 x N |
|:-:|:-:|:-:|:-:|

**Question 4**

Quelle est l'écriture hexadécimale (en base 16) du nombre entier 157 ?

| [ x ] 9D | [ ] 9C | [ ] 8F | [ ] AD | 
|:-:|:-:|:-:|:-:|

**Question 5**

Quelle est l’écriture hexadécimale de l’entier dont la représentation en binaire est 1100 0011 ?

| [ ] B3 | [ ] BB | [ ] CB | [ x ] C3 | 
|:-:|:-:|:-:|:-:|

**Question 6**

`a` et `b` sont des variables de type `int`. Parmi les expressions suivantes, laquelle ne renvoie pas un booléen?

| [ ] `a > b` | [ ] `a == b` | [ x ] `a = b` | [ ] `a != b` | 
|:-:|:-:|:-:|:-:|

**Question 7**

La variable `x` contient la valeur `3`, la variable `y` contient la valeur `4`. Quelle expression s'évalue en `True` parmi les quatre propositions suivantes ?

| [ ] `x == 3 and y == 5` | [ x ] `x == 3 or y == 5` | [ ] `x != 3 or y == 5` | [ ] `y < 4` | 
|:-:|:-:|:-:|:-:|

**Question 8**

Sachant que l'expression `not(a or b)` a la valeur True, quelles peuvent être les valeurs des variables booléennes `a` et `b` ?

| [ ] `a=True` et `b=True` | [ ] `a=False` et `b=True` | [ ] `a=True` et `b=False` | [ x ] `a=False` et `b=False` | 
|:-:|:-:|:-:|:-:|

<br>
<br>

**Question 9**

Quelle est la valeur de `x` à la fin de l'exécution du script Python suivant ?

```python linenums='1'
x = 1
for i in range(10):
    x = x * 2
```

| [ ] 2 | [ ] 20 | [ x ] 1024 | [ ] 2048 | 
|:-:|:-:|:-:|:-:|

**Question 10**

Que peut-on dire à la fin de l'exécution de ce programme?

```python linenums='1'
a = 4
b = 4
c = 4
while a < 5:
    a = a - 1
    b = b + 1
    c = c * b
```

|[ ] la variable `a` vaut 5 | [ ] la variable `b` vaut 34 | [ ] la variable `c` vaut 42 | [ x ] ce programme ne se termine pas | 
|:-:|:-:|:-:|:-:|

**Question 11**

Quelle est la valeur de la variable `b` à la fin de l'exécution du script suivant ?

```python linenums='1'
a = 3
b = 6
if a > 5 or b != 3:
    b = 4
else:
    b = 2
```

| [ x ] 4 | [ ] 2 | [ ] 6 | [ ] on ne peut pas savoir | 
|:-:|:-:|:-:|:-:|

**Question 12**

```python linenums='1'
somme_carres_pairs = 0
for i in range(100):
    if i%2 == 0:
    somme_carres_pairs += i**2
print(somme_carres_pairs)
```

À l'exécution de ce programme, on obtient:

| [ ] Une erreur `NameError` | [ x ] Une erreur `IndentationError` | [ ] Une erreur `SyntaxError` | [ ] aucune erreur | 
|:-:|:-:|:-:|:-:|


