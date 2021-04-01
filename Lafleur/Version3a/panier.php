<?php
	session_start();
		if ($_GET['action']=="Vider le panier"){
		$_SESSION['reference']=array();
		$_SESSION['quantite']=array();
		}

$flag=false;		
	for($i=0;$i<count($_SESSION["reference"]);$i++)
	{
		if ($_SESSION['reference'][$i]==$_GET['refPdt']){
			$_SESSION['quantite'][$i]=$_GET['quantite']+$_SESSION['quantite'][$i];
				$flag=true;
		}
	}
	if ($flag==false)
	{
		$i=count($_SESSION["reference"]);
		$_SESSION['reference'][$i]=$_GET['refPdt'];
		$_SESSION['quantite'][$i]=$_GET['quantite'];
	}
		
			
	// else {
		// $_SESSION['reference']=array();
		// $_SESSION['quantite']=array();	
		// $_SESSION['reference'][0]=$_GET['refPdt'];
		// $_SESSION['quantite'][0]=$_GET['quantite'];	
		// }
		header ('location:menu.php');
		exit;
?>