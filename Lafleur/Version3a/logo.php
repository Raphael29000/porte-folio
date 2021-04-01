<?php
session_start();
if (empty($_SESSION['identifiant'])&& empty($_SESSION['mdp'])){
	echo header ("location:page-connexion.php");
	exit();
}
?>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="presentation2.css">
</head>
<body align="center">
<h2>"Dites-le avec Lafleur"</h2>
<img src=../Images/accueil.jpg alt="photo de fleur">
<p>Consituez votre panier en naviguant, puis cliquez sur "Commander"...</p>
<hr>
<p>Vous devez être recensé comme client pour pouvoir commander.</p>
<p>Envoyez un mail en laissant vos coordonnées pour être contacté par notre service commercial</p>
<a href="mailto:commercial@lafleur.com">commercial@lafleur.com.</a>
<hr>
</body>


</html>