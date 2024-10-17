# DS0010 (Corrigé)

!!! example "Exercice 1"
    **Question 1:** 6

    **Question 2:** `10100011`

    **Question 3:** `9D`

    **Question 4:** `C3`

    **Question 5:** `a = b`

    **Question 6:** `x == 3 or y == 5`

    **Question 7:** 4

    **Question 8:** `IndentationError`




!!! example "Exercice 2"
    ```python linenums='1'
     # Question 1
    score = 0
    score = score + 100
    # ou
    score == 100

     # Question 2
    largeur_ecran = 640
    hauteur_ecran = 400

     # Question 3
     z = x
     x = y
     y = z

     # ou
     z = y
     y = x
     x = z
    ```

!!! example "Exercice 3"
    ```python 
    H
    O
    M
    E
    R
    D'oh!
    ```

    puis 
    ```python 
    19 9 1
    ```
    


!!! example "Exercice 4"
    1. `#!py range(5)` donne la séquence d'entiers `0, 1, 2, 3, 4`.
    1. `#!py range(2, 10)` donne la séquence d'entiers `2, 3, 4, 5, 6, 7, 8, 9`.
    1. `#!py range(0, 20, 3)` donne la séquence d'entiers `0, 3, 6, 9, 12, 15, 18`.

!!! example "Exercice 5"

    ```python linenums='1'
    for k in range(1, 14):
        print(f"Vendredi {f}")
    ```

!!! example "Exercice 6"

    ```python linenums='1'
    print("Voici le verdict du Choixpeau Magique :")
    for prenom in ["Harry", "Hermione", "Ron", "Neuville"]:
        print(f"{prenom}, maison Griffondor")
    ```
    
!!! example "Exercice 7"

    ```python linenums='1'
    films = [’Retour vers le futur’, ’Le Parrain’, ’Iron-Man’, ’Rambo’]
    print("Mes films favoris:")
    for film in films:
        for i in range(1, 4):
            print(film, i)
    ```
    
