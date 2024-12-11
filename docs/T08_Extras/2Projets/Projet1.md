# Projet n°1 - Jeu de tableau

!!! note "Sujets"
    Dans ce premier projet, je vous propose de programmer un jeu «simple».

    === "Tic-Tac-Toe (morpion)"
        Est-il vraiment nécessaire de présenter ce jeu?

        ![](images/tictactoe.png){: .center width=320} 

        **Options du programme:**

        2. Le programme doit afficher quel joueur doit jouer, puis le joueur doit saisir dans quelle case il joue
        3. la saisie du joueur devra être vérifiée
        4. Le programme s'arrête dès qu'un joueur parvient à aligner 3 symboles, ou en cas de match nul
        5. En fin de partie, le choix "r ou R" relance une nouvelle partie, le choix "q ou Q" permet de quitter le jeu

    === "Puissance 4"
        Est-il vraiment nécessaire de présenter ce jeu?

        ![](images/puissance4.png){: .center width=320} 

        **Options du programme:**

        2. Le programme doit afficher quel joueur doit jouer, puis le joueur doit saisir dans quelle colonne il place un pion
        3. la saisie du joueur devra être vérifiée
        4. Le programme s'arrête dès qu'un joueur parvient à aligner 4 pions, ou en cas de match nul
        5. En fin de partie, le choix "r ou R" relance une nouvelle partie, le choix "q ou Q" permet de quitter le jeu

        
    === "Memory"

        Le memory des nombres est un jeu pour enfants où des paires de cartes sont mélangées et retournées. Il s'agit de retrouver ces paires en retournant deux cartes. Si c'est une paire, on la supprime. Sinon on retourne les cartes et on recommence.

        ![](images/memory.png){: .center width=320} 

        On mettra au point une version «solo» avec un décompte du nombre de tentatives avant éventuellement de mettre au point une version «duo».

        **Options du programme:**

        2. le joueur devra saisir les cases à dévoiler
        3. la saisie du joueur devra être vérifiée
        4. Le programme indiquera le nombre de coups joués à chaque tour
        5. Le choix "r ou R" réinitialise le jeu (et le compteur)
        6. Le choix "q ou Q" permet de quitter le jeu

    === "GASP"
        Le Gasp est un casse-tête apparu dans la revue Jeux & Stratégie n°38 (avril/mai 1986).
        Sur un damier, on place des pions bicolores. Au départ, tous les pions sont noirs. Le but est de retourner ces
        pions pour qu'ils deviennent tous blancs.

        Pour retourner des pions, on désigne une case. Ses voisines changent de couleur (mais pas la case désignée).

        Le schéma ci-dessous, tiré de Jeux & Stratégie, montre un début de partie.

        ![](images/gasp.png){: .center width=640} 

        **Options du programme:**

        1. le programme demandera tout d'abord de choisir la taille de l'aire de jeu entre 2 et 12 (valeurs paires
        uniquement)
        2. le joueur devra saisir la case à modifier
        3. la saisie du joueur devra être vérifiée
        4. Le programme indiquera le nombre de coups joués à chaque tour
        5. Le choix "r ou R" réinitialise le jeu (et le compteur)
        6. Le choix "q ou Q" permet de quitter le jeu

    === "Lights Out"
        Issu de [Wikipedia](https://fr.wikipedia.org/wiki/Lights_Out_(jeu)){:target="_blank"} :

        Lights Out est un jeu électronique commercialisé par Tiger Electronics en 1995. Le jeu est composé d’une grille de cinq par cinq lumières. Quand le jeu commence, un nombre aléatoire ou un motif enregistré de ces lumières s’allument. Appuyer sur l’une des lumières basculera la position des lumières adjacentes à celle-ci (haut, bas, gauche, droite, mais pas en diagonale). Le but du jeu est d’éteindre toutes les lumières, de préférence avec le moins de coups possible.

        ![](images/Lights_Out.png){: .center width=640} 

        **Options du programme:**

        2. le joueur devra saisir la case à modifier
        3. la saisie du joueur devra être vérifiée
        4. Le programme indiquera le nombre de coups joués à chaque tour
        5. Le choix "r ou R" réinitialise le jeu (et le compteur)
        6. Le choix "q ou Q" permet de quitter le jeu

!!! warning "Contraintes"
    - Nombre de participant·e·s : 2 ou 3;
    - Nombre de séances: 5;
    - Programmation fonctionnelle: le programme doit être structuré à partir de fonctions (spécifiées complètement);
    - Affichage en console.


!!! history "Déroulé du projet"
    - **Séance 1 (11/12/2024)** : conception du projet (:no_entry: programmation :no_entry:)
        - choix du sujet;
        - réflexion autour des variables nécessaires, du choix des structures de données pour représenter les différentes composantes du jeu;
        - découpage du programme en fonctions (raisonner par verbes d'action, ne pas se préoccuper du code à cette étape);
        - attribution des fonctions aux membres du groupe.
    - **Séances 2 (16/12/2024) et 3 (18/12/2024)**
        - écriture des fonctions;
        - tests des fonctions;
    - **Séance 4 (06/01/2025)**
        - assemblage des fonctions dans le fichier principal;
        - débuggage.
    - **Séance 5 (08/01/2025)**
        - finalisation/améliorations du programme;
        - rendu du travail.


!!! code "Apports techniques"
    === "Affichages"
        Votre projet comportera au moins une fonction qui se chargera de l'affichage du jeu en console. Cette fonction, ou plutôt *procédure* ne renverra aucune valeur, elle contiendra uniquement des instructions `#!py print()`.

        Pensez à utiliser les espaces, et les caractères `#!py - _ |` . Utilisez également des *f-string* pour construire vos affichages en fonction du contenu de vos variables.

        La méthode `#!py join` permet de fusionner les éléments d'une liste contenant des chaînes de caractères avec un (ou plusieurs) caractère(s) séparateur(s):

        ```python
        >>> " | ".join(['.', 'X', '.', '.'])
        '. | X | . | .'
        ```
        
        Enfin, le caractère `#!py "\n"` provoque un retour à la ligne.

        ```python
        >>> print("La NSI, \n c'est de l'eau.")
        La NSI, 
         c'est de l'eau.
        ```

        Pour aller plus loin, sur les caractères spéciaux permettant de faire de beaux affichages de tableaux : [https://en.wikipedia.org/wiki/Box-drawing_characters](https://en.wikipedia.org/wiki/Box-drawing_characters){:target="_blank"}.
        

    === "Utilisation de la console"
        Pour lancer le programme, ouvrir un terminal dans le dossier contenant votre fichier (ou vos fichiers), puis taper :

        ```bash
        python3 nom_fichier.py
        ```

        Pour effacer la console (au début du jeu, entre deux coups, après une nouvelle partie...), importer le module `#!py os` et utiliser l'instruction:

        ```python
        os.system('clear')
        ```
        

    === "Structure d'un programme"
        Un programme bien structuré doit comporter les parties suivantes:

        - Une *docstring* de présentation/signature
        - Une zone d'import des modules (si besoin)
        - Une zone d'initialisation des variables globales
        - Une zone des fonctions
        - Le programme principal

        Utilisez les `#!py #` pour bien délimiter les différentes zones. Par exemple:

        ```python linenums='1'
        # *********************************
        # Projet NSI : JEU DU PUISSANCE 4
        # Date: ...........
        # Auteurs: .............
        # *********************************


        # ====================
        #   INITIALISATION
        # ====================


        ```
        

    === "Utilisation d'une fonction `#!py main()`"
        Dans un fichier Python, le code qui suit l'instruction:

        ```python linenums='1'
        if __name__ == '__main__':
            
        ```
        
        ne sera exécuté que si le fichier est lancé comme fichier principal (dans l'éditeur ou en console), **mais pas en tant que module**.

        On peut donc:

        - dans un module, écrire les tests du module
        - dans le fichier principal, lancer une fonction `#!py main()` qui contiendra le programme principal.

        Par exemple, tester le code suivant en l'exécutant en tant que programme principal, puis en l'important dans une autre fichier.

        ```python linenums='1'
        def main():
            print("Hello from", __name__)

        if __name__ == '__main__':
            print("Je s'appelle", __name__)
            main()
        ```
        

!!! note "Grille d'évaluation"
    |Item |Contenu|Points|
    |-----|-------|:----:|
    |Conception|Les variables et leurs types sont clairement identifiés. Le découpage en fonction est pertinent et efficace. |6|
    |Travail de groupe|Les tâches sont clairement définies et réparties au sein du groupe.|4|
    |Respect du cahier des charges|Le programme répond aux consignes.|3|
    |Projet abouti|Le projet tourne sans erreur.|3|
    |Qualité du code|Code aéré, spécifié, lisible, noms de variables pertinents...|4|
    ||||
    |Total||20|
    ||||
    |Bonus|Code en :gb: |2|
    |Malus|Code récupéré sur le web (ChatGPT, forums, github, etc) |-50, Game Over|
