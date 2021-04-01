<?php
session_start();
if (!isset($_SESSION['identifiant'])&& !isset($_SESSION['password'])){
	echo header ("location:page-connexion.php");
	exit;
}
?>
<html>
<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="produit.css">
</head>
<body>

<?php
$user='root';
$pass='';
try {
	$dbh = new PDO('mysql:host=localhost;dbname=baselafleur2',$user, $pass);
	$requete="select * from produit where pdt_categorie = '".$_GET['categ']."'";
	echo "<table border='1'>";
	foreach($dbh->query($requete) as $row){
		echo "<tr><td><img src=../Images/".$row['pdt_image'].".jpg>"."</td><td>".$row['pdt_ref']."<td>".$row['pdt_designation']."</td><td>".$row['pdt_prix']."</td></tr>";
		}
	
	echo "</table>";
	echo '<form action="panier.php" target="menu" method="get">';
       	echo '<select name="refPdt" size="1">';
		// Remplissage de la liste déroulante à partir de la base de données.
			foreach($dbh->query($requete) as $row) {
				echo "<option>".$row['pdt_designation']."</option>";
			}
	$dbh =null;
       	echo '</select>';
        		echo '&nbsp&nbsp&nbsp';
        	echo 'Quantité : ';
        		echo '<input type="text" name="quantite" size="5" value="1" />';
        	echo '<p><input type="submit" name="action" value="Ajouter au panier" />';
        	echo '</form>';
	}
catch (PDOException $e){
	print "erreur!:".$e->getMessage()."<br>";
	die();
}
?>

</body>
</html>