!!! example "TP noté"
    === "Énoncé"
        Commencer par télécharger [ce fichier](../data/foo.txt) dans votre répertoire `/home/nsi/Téléchargements/`.

        Les instructions suivantes doivent **toutes** être réalisées à l'aide d'une commande (ou plusieurs si besoin)  dans le terminal, qu'il faut donc ouvrir maintenant... Moins vous utiliserez de commandes, mieux ce sera.

        1. Consultez le répertoire courant (dans lequel vous vous situez). Si ce n'est pas votre répertoire personnel (`/home/nsi/`), revenez-y.
        2. Supprimez le fichier `.bash_history` (ne pas oublier le point).
        2. Créez un répertoire `Terminal/` dans le répertoire `Documents/`, puis un répertoire `TP/` dans ce répertoire `Terminal/`.
        3. Déplacez le fichier `foo.txt` que vous avez téléchargé vers le répertoire `TP/` que vous venez de créer .
        4. Renommez ce fichier en `queneau1014poemes.txt`.
        5. Si le répertoire courant n'est pas `/home/nsi/Documents/Terminal/TP/`, s'y rendre. Sans quitter ce répertoire, créez un répertoire `Sauvegarde/` dans le répertoire `Terminal/`.
        6. Créez une copie du fichier `queneau1014poemes.txt` dans le répertoire `Sauvegarde/` sous le nom `queneau_save.txt`.
        5. Dans le répertoire `TP/`, consultez les 14 premières lignes du `queneau1014poemes.txt`.
        6. Parmi les 3 mots suivants, lequel(s) n'y figure(nt) pas (peu importe la casse)? Malabar, Bretzel, Cacahuète?
        7. Donnez le nombre d'occurences du mot «frère».
        8. En quelle ligne trouve-t-on le mot «illustre»?
        9. On peut écrire du texte (par exemple «Bonjour») dans un fichier (par exemple «toto.txt») grâce à la commande `echo Bonjour > toto.txt`. Pour ajouter du texte, on remplace `>` par `>>`. Créez un fichier `reponses.txt` dans lequel vous écrirez les réponses aux questions 8, 9 et 10.
        10. Vérifiez en affichant le contenu du fichier `reponses.txt`.
        11. Consultez le contenu du répertoire `TP/`, en affichant les détails sur les droits.
        12. Modifiez les droits sur le fichier `reponses.txt` pour que les utilisateurs du groupe n'aient que la permission «lecture» et que les autres utilisateurs n'aient aucun droit d'accès.
        13. Supprimez le répertoire `Terminal/` et tout son contenu.
        14. Fermez le terminal.

        Vous pouvez maintenant aller sur Moodle. Dans le dépôt «TP shell» de la section «Évaluations», déposez le fichier `.bash_history` situé dans `/home/nsi/`. Si vous ne le voyez pas, affichez les fichiers cachés (Ctrl + H).

    === "Correction" 
        Le corrigé en vidéo:

        <p align="center">
        <iframe title="TP_shell" src="https://peertube.lyceeconnecte.fr/videos/embed/28632436-3f84-47ee-b19c-a30da991b18b" allowfullscreen="" sandbox="allow-same-origin allow-scripts allow-popups" width="560" height="315" frameborder="0"></iframe>
        </p>

        Les commandes (a minima):
        ```console
        pwd
        cd~
        rm .bash_history
        mkdir Documents/Terminal/ Documents/Terminal/TP/
        mv Téléchargements/foo.txt Documents/Terminal/TP/
        cd Documents/Terminal/TP/
        mv foo.txt queneau1014poemes.txt
        mkdir ../Sauvegarde/
        cp queneau1014poemes.txt ../Sauvegarde/queneau_save.txt
        head -n 14 queneau1014poemes.txt 
        grep -i Malabar queneau1014poemes.txt 
        grep -i Bretzel queneau1014poemes.txt 
        grep -i Cacahuète queneau1014poemes.txt 
        grep -c frère queneau1014poemes.txt 
        grep -n illustre queneau1014poemes.txt 
        touch reponses.txt
        echo 8. Cacahuète > reponses.txt
        echo 9. 2 fois >> reponses.txt
        echo 10. ligne 113 >> reponses.txt 
        cat reponses.txt 
        ls -l
        chmod g-w,o-r reponses.txt 
        cd ../..
        rm -r Terminal/
        exit
        ```

<!-- 
!!! example "TP bis"
    === "Énoncé"
        {{ correction(False, 
        "
        Commencer par télécharger [ce fichier](../data/pg6318.txt) dans votre répertoire `/home/nsi/Téléchargements/`.

        Les instructions suivantes doivent **toutes** être réalisées à l'aide d'une (ou plusieurs si besoin) commande dans le terminal, qu'il faut donc ouvrir maintenant... Moins vous utiliserez de commandes, mieux ce sera.

        1. Dans votre répertoire personnel, créez un répertoire `Shell/` puis un répertoire `TP/` dans ce répertoire `Shell/`.
        2. Déplacez le fichier `pg6318.txt` dans le répertoire `TP/` que vous venez de créer.
        3. Créez une copie de sauvegarde de ce fichier dans le répertoire `Shell/`.
        4. Consultez les 25 premières lignes de ce fichier, puis renommez-le *judicieusement*.
        5. Créez un fichier nommé `reponses.txt`.
        6. Écrivez votre nom dans ce fichier à l'aide de la commande `echo`.
        7. Cherchez les mots `rouge`, `bleu` et `jaune` dans le fichier texte et ajoutez au fichier `reponses.txt` celui qui n'y apparaît pas.
        9. Vérifier en affichant le contenu du fichier `reponses.txt`.
        8. Cherchez en quelle ligne apparaît pour la première fois le mot `traître`.
        10. Consultez le contenu du répertoire `Shell/`, en affichant les détails sur les droits.
        11. Ajoutez un droit d'écriture aux «autres utilisateurs» sur le répertoire `TP/`. 
        12. Supprimez le droit d'écriture sur le fichier `reponses.txt` pour les utilisateurs du groupe.
        13. Supprimez le répertoire `Shell/` et tout son contenu.
        14. Consultez le manuel de la commande `top`.
        15. Vérifiez que Thonny est bien lancé sur votre VM. Sinon, lancez-le. Puis Tapez la commande `top` et notez le PID de Thonny. Appuyez sur `q` pour quitter.
        16. Tapez la commande `kill -9 [PID]` où vous remplacerez `[PID]` par le PID de Thonny.
        17. Fermez le terminal.

        Vous pouvez maintenant aller sur Moodle. Dans le dépôt «TP shell» de la section «Évaluations», déposez le fichier `.bash_history` situé dans `/home/nsi/`. Si vous ne le voyez pas, affichez les fichiers cachés (Ctrl + H).
        "
        ) }}
    
    === "Correction"

        Les commandes (a minima):
        ```console
        mkdir Shell/
        mkdir Shell/TP/
        cd Téléchargements/
        mv pg6318.txt ../Shell/TP/
        cd ../Shell/TP/
        cp pg6318.txt ../pg6318_save.txt
        head -n 25 pg6318.txt
        mv pg6318.txt avare.txt
        touch reponses.txt
        echo votre_nom > reponses.txt
        grep rouge avare.txt
        grep bleu avare.txt
        grep jaune avare.txt
        echo jaune >> reponses.txt
        cat reponses.txt
        grep -n traître avare.txt
        cd ..
        ls -l 
        chmod o+w TP/
        chmod g-w TP/reponses.txt
        cd ..
        rm -r Shell/
        man top
        top
        kill -9 pid
        exit
        ``` -->
