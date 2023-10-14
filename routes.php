<?php
	/* Détermination des chemins d'accès aux fichiers de configuration et d'affichage des pages */
	$cheminPagesAffiche = "pages/"; 
    $cheminPagesConfig = "config/"; 
    
	/* Initialisation des variables $affiche et $config */
	$config = "config-default.php"; // nom du fichier de configuration par défaut

    /* choix de la valeur de la variable $affiche en fonction de parametre page transmis */
	if (!isset($_GET['page']) || $_GET['page'] == "" || $_GET['page'] == "accueil"){
		/* Si aucun paramètre page n'est passé dans l'URL ou si sa valeur est vide ou égale à accueil, on charge la page d'accueil et sa page de configuration */
		$affiche = "presentation.php";
		$config = "config-presentation.php";
	} 
	else {
		switch ($_GET['page']) {
			case ("agenda"):
				/* Si le paramètre page est égal à agenda, on charge la page agenda et sa page de configuration */
				$affiche = "calendrier.php";
				$config = "config-calendrier.php";
				break;
			case ("jeux"):
				/* Si le paramètre page est égal à jeux, on charge la page jeux */
				$affiche = "jeux.php";
				break;
			case ("commentaires"):
				/* Si le paramètre page est égal à commentaires, on charge la page commentaires */
				$affiche = "commentaires.php";
				break;
			default:
				/* Si un paramètre page est passé dans l'URL mais qu'il ne correspond à aucune valeur attendue dans ce switch, on charge la page d'erreur */
				$affiche = "lostinspace.php";
				$config = "config-lostinspace.php";
		}			
	}

	/* concaténation du chemin du dossier contenant les fichiers de configuration avec le contenu de $config */
	$config = $cheminPagesConfig . $config;
    /* concatenation du chemin du dossier contenant les pages avec le contenu de $affiche */
    $affiche = $cheminPagesAffiche . $affiche; 

	/* inclusion des fichiers de configuration de la page si ils existent (l'arobas permet de ne pas afficher d'erreur si le fichier de configuration de la page n'existe pas) */
	@include($config);
    

?>