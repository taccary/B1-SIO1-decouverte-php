<H3>Affichage de tous les jeux</H3>

<?php
include 'BDD/connectBdd.php'; //on se connecte à la base de donnée


echo '<h4 id="liste">Liste des consoles</h4>';

$SQL = "SELECT idConsole, nomConsole FROM console ORDER BY 2 ASC";
$stmt = $connexion->prepare($SQL);
$stmt->execute(array()); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
$consoles = $stmt->fetchAll(); // on met le resultat de la requete dans un tableau
//var_dump($consoles); // on affiche le contenu de la variable $consoles (ici un tableau php array())

echo '<ul>';
foreach ($consoles as $console) {
	echo 	'<a href="#'.$console['idConsole'].'"><li>'.$console['nomConsole'].'</li><a>';
}
echo '</ul>';

echo '<h4>Liste des jeux</h4>';
foreach ($consoles as $console) {
	
	$SQL = "SELECT * FROM jeu WHERE console = ? ORDER BY 1 ASC ";
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array($console['idConsole'])); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
	$jeux = $stmt->fetchAll(); // on met le resultat de la requete dans un tableau
	//var_dump($jeux); // on affiche le contenu de la variable $jeux (ici un tableau php array())
	
	if (count($jeux) == 0){
		$nbJeux = "pas de jeux" ; // inutile, on peut remplacer le test pas une initialisation
	}
	else {
		$nbJeux = count($jeux)." jeux";
		if (count($jeux) == 1){
			$nbJeux = "1 jeu";
		}
	}


	echo '<span id="'.$console['idConsole'].'"><b>'.$console['nomConsole'].' ('.$nbJeux.') :</b><a href="#liste">up</a>';
	echo '<ul>';
	echo '';

	foreach ($jeux as $jeu) {
		echo 	'<li><a href="index.php?page=jeu&id='.$jeu['idJeu'].'">'.$jeu['nom'].' ('.$jeu['prixMoyen'].' euros)</a></li>';
	}
	echo '</ul>';
}


$stmt->closeCursor(); // on ferme le curseur des résultats
?>

