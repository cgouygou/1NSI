# DL 4

Ce DL est en deux parties.

!!! example "Partie 1 : Le jeu du + ou -"
    === "Énoncé" 
        Le lien vers l'activité Capytale : [https://capytale2.ac-paris.fr/web/c/644e-519026](https://capytale2.ac-paris.fr/web/c/644e-519026){:target="_blank"} 
    === "Indications en vidéo"
        <p align="center">
        <iframe title="DL4_P1" src="https://peertube.lyceeconnecte.fr/videos/embed/08f59444-79e6-4acb-80b6-22bf1f1e8522" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups" width="560" height="315" frameborder="0"></iframe>
        </p>
    === "Correction" 
        {{ correction(True, 
        "
        ```python linenums='1'
        import random

        n = random.randint(0, 100)
        print('Je pense à un nombre entre 1 et 100. Bob, essaie de le deviner !')
        reponse = int(input())
        essais = 1

        while reponse != n:
            if n < reponse:
                print('Moins!')
            else:
                print('Plus')
            essais += 1
            reponse = int(input())
        
        print(f'Bravo, tu as trouvé en {essais} propositions!')
        ```
        
        "
        ) }}

    === "Stratégie I.A."
        Comme on est en train de l'étudier, la meilleure stratégie est de proposer un nombre au milieu de l'intervalle qui reste à étudier.

        Certains - je ne citerai pas de noms - ont plutôt pensé à chercher aléatoirement (en réduisant tout de même l'intervalle d'étude) et ont obtenus de meilleurs résultats... C'est faux en général:

        ```python linenums='1'
        import random

        def recherche_dicho(n: int, taille: int):
            debut = 0
            fin = taille
            milieu = (debut+fin) // 2
            nb_iter = 1
            while milieu != n:
                if milieu > n:
                    fin = milieu - 1
                else:
                    debut = milieu + 1
                milieu = (debut+fin) // 2
                nb_iter += 1

            return nb_iter

        def recherche_alea(n: int, taille: int):
            debut = 0
            fin = taille
            milieu = random.randint(debut, fin)
            nb_iter = 1
            while milieu != n:
                if milieu > n:
                    fin = milieu - 1
                else:
                    debut = milieu + 1
                milieu = random.randint(debut, fin)
                nb_iter += 1

            return nb_iter

        moyenne_dicho = 0
        moyenne_alea = 0

        for k in range(1000):
            t = 100000
            n = random.randint(0, t)
            moyenne_dicho += recherche_dicho(n, t)
            moyenne_alea += recherche_alea(n, t)

        print(f'Moyenne par recherche dichotomique: {moyenne_dicho/1000}')
        print(f'Moyenne par recherche aléatoire: {moyenne_alea/1000}')
        ```
        


!!! example "Partie 2 : Pydéfi «Le message caché»"
    === "Énoncé" 
        Le lien vers l'activité Capytale : [https://capytale2.ac-paris.fr/web/c/9a58-519121](https://capytale2.ac-paris.fr/web/c/9a58-519121){:target="_blank"} 
    === "Indications en vidéo"
        <p align="center">  
        <iframe title="DL4_P2" src="https://peertube.lyceeconnecte.fr/videos/embed/6642b612-179f-44ee-b54e-27332d8e9599" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups" width="560" height="315" frameborder="0"></iframe>
        </p>
    === "Correction" 
        
        ```python linenums='1'
        --8<--- "DL4_partie2.py"
        ```
        


