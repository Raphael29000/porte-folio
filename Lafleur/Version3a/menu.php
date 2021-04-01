<?php
session_start();
if (empty($_SESSION['identifiant'])&& empty($_SESSION['mdp'])){
	echo header ("location:page-connexion.php");
	exit();
}
?>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="menu1.css">
</head>
<body>
<h1><b>Sté LaFleur</b></h1>
	<br>
	<a href="logo.php" target="page"><i>Accueil</i></a>
	<hr>
	<p><u>Nos produits</u></p>
</body>
<?php
$user='root';
$pass='';
try {
	$dbh = new PDO('mysql:host=localhost;dbname=baselafleur1',$user, $pass);
	$requete="select * from categorie";
	echo "<table>";
	foreach($dbh->query($requete) as $row){
	echo "<tr><td><a href='listePdt.php?categ=".$row['cat_code']."' target='page'>".$row['cat_libelle']."</a></td></tr>";
	      
	}
	$dbh =null;
	echo "</table>";
}
catch (PDOException $e){
	print "erreur!:".$e->getMessage()."<br>";
	die();
}
if (!isset($_SESSION["reference"]))
{
	$_SESSION["reference"]=array();
    $_SESSION["quantite"]=array();
}

?>
<hr>
<form action="panier.php" target="menu" method="get" align="center">
<input type="submit" name="action" value="Vider le panier" />
</form>

<form action="commande.php" target="page" method="get">
<p align="center"><input type="submit" value="Commander" />
</form>

</html>