<?php
session_start();
if (empty($_SESSION['identifiant'])&& empty($_SESSION['mdp'])){
	echo header ("location:page-connexion.php");
	exit();
}
?>
<!DOCTYPE HTML>
<html>
	<head></head>
	<frameset cols="20%,*"> <!-- Séparation en 2 partie de la page web --> 
		<frame name="menu" src="menu.php">
		<frame name="page" src="logo.php">
	</frameset>
</html>