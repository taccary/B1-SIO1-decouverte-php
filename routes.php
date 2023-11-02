<?php
	/* Détermination des chemins d'accès aux fichiers de configuration et d'affichage des pages */
	$cheminPagesAffiche = "pages/"; 
    $cheminPagesConfig = "config/"; 
    
	/* Initialisation des variables $affiche et $config */
	$config = "config-default.php"; // nom du fichier de configuration par défaut

    /* choix de la valeur de la variable $affiche en fonction de parametre page transmis */
	if (!isset($_GET['page']) || $_GET['page'] == "" || $_GET['page'] == "home"){
		/* commentez le code */
		$affiche = "presentation.php";
		$config = "config-presentation.php";
	} 
	else {
		switch ($_GET['page']) {
			case ("events"):
				/* commentez le code */
				$affiche = "calendrier.php";
				$config = "config-calendrier.php";
				break;
			case ("games"):
				/* commentez le code */
				$affiche = "catalogue.php";
				break;
			case ("comments"):
				/* commentez le code */
				$affiche = "commentaires.php";
				break;

			default:
				/* commentez le code */
				$affiche = "lostinspace.php";
				$config = "config-lostinspace.php";
		}			
	}

	/* concaténation du chemin du dossier contenant les fichiers de configuration avec le contenu de $config */
	$config = $cheminPagesConfig . $config;
    /* concatenation du chemin du dossier contenant les pages avec le contenu de $affiche */
    $affiche = $cheminPagesAffiche . $affiche;     

	/* inclusion du fichier de configuration */
	include($config);
?>