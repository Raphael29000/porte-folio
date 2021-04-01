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
	$dbh = new PDO('mysql:host=localhost;dbname=baselafleur1',$user, $pass);
	$requete="select * from produit where pdt_categorie = '".$_GET['categ']."'";
	echo "<table border='1'>";
	foreach($dbh->query($requete) as $row){
	echo "<tr><td><img src=../Images/".$row['pdt_image'].".jpg>"."</td><td>".$row['pdt_ref']."<td>".$row['pdt_designation']."</td><td>".$row['pdt_prix']."</td></tr>";
	}
	$dbh =null;
	echo "</table>";
}
catch (PDOException $e){
	print "erreur!:".$e->getMessage()."<br>";
	die();
}
?>

</body>
</html>