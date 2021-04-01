<?php


session_start();
echo 'Votre login est '.$_SESSION['identifiant'].' et votre mot de passe est '.$_SESSION['mdp'].'.';

?>