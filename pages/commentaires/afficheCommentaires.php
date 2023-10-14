<?php
if (isset($_GET['membre'])) {
	$idMembre = $_GET['membre'];
	$SQL = "SELECT nomMembre FROM membre where idMembre = :unMembre";
	// Préparer la requête en utilisant la connexion à la base de données
	$stmt = $connexion->prepare($SQL);
	// Définir le paramètre de la requête SQL avec l'identifiant du membre
	$stmt->bindValue(":unMembre", $idMembre, PDO::PARAM_INT);
	// Exécuter la requête
	$stmt->execute();
	// Comme la requête ne renvoie qu'une seule ligne/colonne, on peut utiliser fetchColumn() pour recuperer sa valeur
	$nomMembre = $stmt->fetchColumn(); 
	$stmt->closeCursor();
	}
else {
	$idMembre = "%";
}	

if (isset($_GET['jeu'])) {
	$idJeu = $_GET['jeu'];
	$SQL = "SELECT nom FROM jeu where idJeu = :unJeu";
	// Préparer la requête en utilisant la connexion à la base de données
	$stmt = $connexion->prepare($SQL);
	// Définir le paramètre de la requête SQL avec l'identifiant du jeu
	$stmt->bindValue(":unJeu", $idJeu, PDO::PARAM_INT);
	// Exécuter la requête
	$stmt->execute();
	// Comme la requête ne renvoie qu'une seule ligne/colonne, on peut utiliser fetchColumn() pour recuperer sa valeur
	$nomJeu = $stmt->fetchColumn(); 
	$stmt->closeCursor();
	}
else {
	$idJeu = "%";
}	

// Définir la requête SQL pour récupérer tous les avis pour un jeu et un membre donné
$SQL = "SELECT * FROM avis NATURAL JOIN jeu NATURAL JOIN membre where idJeu like :unIdJeu and idMembre like :unIdMembre ORDER BY date";
$stmt = $connexion->prepare($SQL);
$stmt->bindValue(":unIdJeu", $idJeu, PDO::PARAM_STR);
$stmt->bindValue(":unIdMembre", $idMembre, PDO::PARAM_STR);

$stmt->execute();
// Récupérer tous les résultats de la requête dans un tableau associatif $lesAvis
$lesAvis = $stmt->fetchAll(PDO::FETCH_ASSOC);
$stmt->closeCursor(); 

if (($menu == "jeu") && ($idJeu != "%")) {
	echo '<h1 class="entry-title">les commentaires du jeu '.$nomJeu.'</h1>'; 
}
else if ($menu == "membre" && $idMembre != "%") {
	echo '<h1 class="entry-title">les commentaires de '.$nomMembre.'</h1>'; 
}
else {
	echo '<h1 class="entry-title">tous les commentaires</h1>';
}


var_dump($lesAvis); // à remplacer par les affichages demandés

/* Ajouter l'affichage du nombre d'avis dans le <h1> */

/* Afficher les avis sous forme (jeux/membre/date/avis) */



?>


