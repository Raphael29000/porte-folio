<html>
<head>
<title>commande</title>
<meta charset='UTF-8'>
</head>
<body>
<table border='1'>

<?php
	session_start();
	echo "<tr><b><td>Ref</td><td>Désignation</td><td>Px Unit.</td><td>Qté</td><td>Montant</td></b></tr>";
	$prixfinal=0;
	for ($i=0; $i<count($_SESSION['reference']); $i++){
		$user='root';
		$pass='';	
	
		$dbh = new PDO('mysql:host=localhost;dbname=baselafleur1',$user, $pass);
		$requete="select * from produit where pdt_designation='".$_SESSION['reference'][$i]."'";
	
			foreach($dbh->query($requete) as $row){
				echo "<tr><td>".$row['pdt_ref']."</td>";
				echo "<td>".$_SESSION['reference'][$i]."</td>";
				echo "<td>".$row['pdt_prix']."</td>";
				echo "<td>".$_SESSION['quantite'][$i]."</td>";
				echo "<td>".$row['pdt_prix']*$_SESSION['quantite'][$i]."</td></tr>";
				$prixfinal=$prixfinal+$row['pdt_prix']*$_SESSION['quantite'][$i];
			}
	}
	echo "<tr><td colspan='4'>total</td><td>".$prixfinal."</td></tr>";
?>
</table>
<br>
<form method='GET' action='commande.php'>
	<table>
		<tr>
			<td>code client : </td>
			<td><input type='text' name='codeClient'></input></td>
			<td>Mots de passe : </td>
			<td><input type='password' name='password'></input></td>
		</tr>
		<tr><td><input type='submit' value='envoyer la commande'></input></td></tr>
	</table>
</form>
<?php
	$user='root';
	$pass='';
	if (isset($_GET['codeClient'])&& isset($_GET['password']))
	{
		session_start();
			$_SESSION['codeClient']=$_GET['codeClient'];
			$_SESSION['mdp']=$_GET['password'];
		$dbh = new PDO('mysql:host=localhost;dbname=baselafleur2',$user, $pass);
		$requete="select * from clientconnu where clt_code='".$_GET['codeClient']."'";
		foreach($dbh->query($requete) as $idclient)
		{
			if ($idclient['clt_code']==$_GET['codeClient'])
			{
				if ($idclient['clt_motPasse']==$_GET['password'])
				{
					echo header("location:envoyer.php");
					exit;
				}
			}
			else
			{
			echo "votre identifiant ou mot de passe n";
			}
		}
	}		
?>
</body>
</html>	