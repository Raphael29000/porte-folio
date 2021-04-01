<html>
<head>
<meta charset='UTF-8'>
</head>
<body>
<?php
session_start();
if (empty($_SESSION['identifiant'])&& empty($_SESSION['mdp'])){
	echo header ("location:page-connexion.php");
	exit();
}
?>
<?php
echo $_SESSION['codeClient'];


?>
</body>
</html>