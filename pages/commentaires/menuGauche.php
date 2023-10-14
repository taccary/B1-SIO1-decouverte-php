<?php
	/* Détermination du nom de la page à charger après vérification de sa validité */
	if (isset($_GET['menu'])) {
		$menu = $_GET['menu'];
	}
	else {
		$menu = "membre";
	}
	/* modifier pour que le choix par défaut soit l'affichage par jeu */
	

	
	if ($menu == "jeu") {
		// Définir la requête SQL pour récupérer tous les jeux dans la table jeu par ordre alphabétique
		$SQL = "SELECT * FROM jeu ORDER BY 2 ASC"; 
		// Préparer la requête en utilisant la connexion à la base de données
		$stmt = $connexion->prepare($SQL);
		// Exécuter la requête
		$stmt->execute();
		// Récupérer tous les résultats de la requête sous forme d'un tableau d'objets (donc plusieurs objets)
		$lesJeux = $stmt->fetchAll(PDO::FETCH_OBJ); 
		// Fermer le curseur des résultats pour libérer les ressources
		$stmt->closeCursor();
		
		// tant qu'on arrive pas à la fin du tableau $lesJeux, on charge l'objet courant dans $unJeu
		foreach($lesJeux as $unJeu) 
		{
			echo '<a href="?page=commentaires&menu='.$menu.'&jeu='.$unJeu->idJeu.'" >'.$unJeu->nom.'</a><br/>'; // on affiche les jeux sous forme de liens en passant l'identifiant du jeu et le nom du jeu dans l'URL
		}
	}
	else {
		// Définir la requête SQL pour récupérer tous les membres dans la table membre par ordre alphabétique
		$SQL = "SELECT * FROM membre ORDER BY 2 ASC"; 
		// Préparer la requête en utilisant la connexion à la base de données
		$stmt = $connexion->prepare($SQL);
		// Exécuter la requête
		$stmt->execute();
		// Récupérer tous les résultats de la requête sous forme d'un tableau d'objets (donc plusieurs objets)
		$lesMembres = $stmt->fetchAll(PDO::FETCH_OBJ); 
		// Fermer le curseur des résultats pour libérer les ressources
		$stmt->closeCursor();

		// tant qu'on arrive pas à la fin du tableau $lesMembres, on charge l'objet courant dans $unMembre
		foreach($lesMembres as $unMembre) 
		{
			echo '<a href="?page=commentaires&menu='.$menu.'&membre='.$unMembre->idMembre.'" >'.$unMembre->nomMembre.'</a><br/>'; // on affiche les membres sous forme de liens
		}
	}
	
	
	
?>