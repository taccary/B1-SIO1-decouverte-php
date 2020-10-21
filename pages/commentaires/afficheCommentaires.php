<?php
include 'BDD/connectBdd.php'; //on se connecte à la base de donnée

if (isset($_GET['membre'])) {
	$membre = $_GET['membre'];
	$SQL = "SELECT nomMembre FROM membre where idMembre = ".$membre;
	$resultats = $connexion->query($SQL); // on execute notre requête
	$resultats->setFetchMode(PDO::FETCH_OBJ);
	$nomMembre = $resultats->fetchColumn(); //une seule ligne/colonne renvoyée, on peut utiliser fetchColumn() pour recuperer sa valeur
	$resultats->closeCursor();
	}
else {
	$membre = "%";
}	

if (isset($_GET['jeu'])) {
	$jeu = $_GET['jeu'];
	$SQL = "SELECT nom FROM jeu where idJeu = ".$jeu;
	$resultats=$connexion->query($SQL); // on execute notre requête
	$resultats->setFetchMode(PDO::FETCH_OBJ);
	$nomJeu = $resultats->fetchColumn();
	$resultats->closeCursor();  
	}
else {
	$jeu = "%";
}	


$SQL = "SELECT * FROM avis NATURAL JOIN jeu NATURAL JOIN membre where idJeu like ? and idMembre like ? ORDER BY date";
$stmt = $connexion->prepare($SQL);
$stmt->execute(array($jeu, $membre)); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
$avis = $stmt->fetchAll(); // on met le resultat de la requete dans un tableau à 2 dimensions

$resultats->closeCursor(); // on ferme le curseur des résultats*/


if (($menu == "jeu") && ($jeu != "%")) {
	echo '<h1 class="entry-title">les commentaires du jeu '.$nomJeu.'</h1>'; 
}
else if ($menu == "membre" && $membre != "%") {
	echo '<h1 class="entry-title">les commentaires de '.$nomMembre.'</h1>'; 
}
else {
	echo '<h1 class="entry-title">tous les commentaires</h1>';
}

/* Ajouter l'affichage du nombre d'avis dans le <H3> */




//var_dump($avis); // on affiche le contenu de la variable $consoles (ici un tableau php array())
?>

<p>travail à faire : afficher les avis sous forme (jeux/membre/date/avis) et si on est dans le sous menu membre ou le sous menu jeu, ne pas afficher cette partie d'info) 
si pas d'avis, ecrire pas d'avis</p>





