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
	<link rel="stylesheet" href="presentation.css">
</head>
<body align="center">
<h2>"Dites-le avec Lafleur"</h2>
<img src=../Images/accueil.jpg alt="photo de fleur">
<p>Appelez notre service commercial au 03.22.84.65.74</p>
<p>Pour recevoir un bon de commande</p>
</body>


</html>