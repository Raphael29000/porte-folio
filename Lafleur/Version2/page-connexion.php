<html>
<head>
	<title>page de connexion</title>
	<meta charset='UTF-8'>
	<link rel='stylesheet' href='page-connexion.css'>
<head>
<?php
echo "<body>
<h1 align= center>Connexion</h1>
<form method='GET' action='page-connexion.php'>
	<table align='center' width='500px'>
	<tr><td>Identifiant : </td><td><input type='text' name='identifiant'></input></td></tr>
	<tr><td>Mots de passe : </td><td><input type='password' name='password'></input><td></td></tr>
	</table>
	<p align='center' id='submit'><input type='submit' value='valider'></input></p>
	</form>
</body>
</html>";
	if (isset($_GET['identifiant'])&& isset($_GET['password'])){
		if (!empty($_GET['identifiant'])&& !empty($_GET['password'])){
			session_start();
			$_SESSION['identifiant']=$_GET['identifiant'];
			$_SESSION['mdp']=$_GET['password'];
			$user='root';
			$pass='';
		try {
			$dbh = new PDO('mysql:host=localhost;dbname=baselafleur1',$user, $pass);
			$requete="select * from identifiant where identifiant='".$_GET['identifiant']."'";
			foreach($dbh->query($requete) as $id){
		
				if ($id['identifiant']==$_GET['identifiant']){
					if ($id['mdp']==$_GET['password']){
					echo header("location:Accueil.php");
					exit;
					}
				}
				else{
				echo "votre identifiant ou mot de passe n'existe pas";	
				} 		
			}
		}
		catch (PDOException $e){
		print "erreur!:".$e->getMessage()."<br>";
		die();
}
	$dbh =null;
	}
}	
?>
</html>