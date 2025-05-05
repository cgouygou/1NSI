<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Le mot de passe? Quel mot de passe?</title>
    </head>
    <body>
        <p>
            <?php
                if (isset($_GET['pass'])) {
                    $mdp = $_GET['pass'];
                }
                if (isset($_POST['pass'])) {
                    $mdp = $_POST['pass'];
                }
                if ($mdp == 'penguin') {
                    echo "Bien vu !";
                    <img src="hackerman.png" alt="">;
                }
                else {
                    echo "Mot de passe erroné. Essaie encore";
                }
            ?>
        </p>
    </body>
</html>