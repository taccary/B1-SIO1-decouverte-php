<?php
	$idJeu = $_GET['idjeu']; // on stocke l'ientifiant du jeu transmis dans la barre d'adresse
	
	$SQL = "SELECT * FROM jeu JOIN console ON jeu.console = console.idConsole WHERE idJeu = ? ";
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array($idJeu)); // on passe dans le tableaux les paramètres si il y en a à fournir (ici l'identifiant du jeu)
	$jeu = $stmt->fetch(); // on met le resultat de la requete dans un tableau
	//var_dump($jeu); // on affiche le contenu de la variable $jeu (ici un tableau php array())
	$stmt->closeCursor(); // on ferme le curseur des résultats*/

	
	$SQL = ""; // ecrire la requete qui va chercher les commentaires du jeu affiché
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array($idJeu)); // on passe dans le tableaux les paramètres si il y en a à fournir (ici l'identifiant du jeu)
	$commentaires = $stmt->fetchall(); // on met le resultat de la requete dans un tableau
	//var_dump($commentaires); // on affiche le contenu de la variable $jeu (ici un tableau php array())
	$stmt->closeCursor(); // on ferme le curseur des résultats*/

?>

<a href="index.php?page=jeux">Retourner au catalogue</a>

<h1 class="entry-title">Fiche du jeu <?= $jeu['nom'] ?></H3>

<table id="affiche_resultat">
	<!-- Corps du tableau -->
	<tbody> 
		<tr>
			<td rowspan="2" class="photo">
				<!-- si le jeu n'a pas d'image, afficher "Aucune image disponible pour ce jeu" -->
				<img src="pages/jeuxs/photos/<?= $jeu['photo'] ?>" alt="image du jeu <?= $jeu['nom'] ?>"/>
			</td>
			<td colspan="2">
				<?= $jeu['console'] ?> <!-- afficher le nom de la console et pas son numéro -->
			</td>
		</tr>
		<tr>
			<td><?= $jeu['prixMoyen'] ?> euros</td>
			<td>nb joueurs max : <?= $jeu['nbJoueursMax'] ?></td>
		</tr>       
	</tbody>
</table>

<h4>Commentaires de ce jeu (xx<!-- ajouter le code pour afficher le nombre de commentaires pour ce jeu en utilisaant la fonction count() du langage php sur le tableau $commentaires (voir sa documentation sur internet)-->)	</h4>

<!-- ajouter le code pour afficher les commentaires pour ce jeu sous forme de blocs -->	