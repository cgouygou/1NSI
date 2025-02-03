<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">  
	<title>interaction en PHP</title>
	<!--<link rel="stylesheet" href="style1.css">-->
</head>

<body>  
<?php   if (isset($_GET["name"])) {$nom=$_GET["name"];}
	else {$nom="Inconnu"} ?>

<h2> Bonjour, <?php echo $nom ?> </h2>

<?php  if ((isset($_GET["msg"])) {$text=$_GET["msg"];}
	else {$text="n'a rien voulu dire"}  ?>

<h2> vous nous avez envoyé le message : <?php echo $text ?> </h2>


<?php 	echo "<br/> Les informations sur votre navigateur et système sont : " .$_SERVER['HTTP_USER_AGENT'];
	echo "<br/> Votre adresse IP est : " .$_SERVER['REMOTE_ADDR'];   ?>


</body>
</html>

