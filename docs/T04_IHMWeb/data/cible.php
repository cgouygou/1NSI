<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Le mot de passe? Quel mot de passe?</title>
    </head>
    <body>
        <p>
            <?php
                $mdp = $_GET['pass'];
                if ($mdp == 'toto') {
                    echo "Bien vu !";
                }
                else {
                    echo "Mot de passe erroné. Essaie encore";
                }
            ?>
        </p>
    </body>
</html>