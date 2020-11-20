<?php
	$idJeu = $_GET['idjeu']; // on stocke l'ientifiant du jeu transmis dans la barre d'adresse
	
	$SQL = "SELECT * FROM jeu JOIN console ON jeu.console = console.idConsole WHERE idJeu = ? ";
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array($idJeu)); // on passe dans le tableaux les paramètres si il y en a à fournir (ici l'identifiant du jeu)
	$jeu = $stmt->fetch(); // on met le resultat de la requete dans un tableau
	//var_dump($jeu); // on affiche le contenu de la variable $jeu (ici un tableau php array())
	$stmt->closeCursor(); // on ferme le curseur des résultats*/

	//$SQL = "SELECT * FROM avis JOIN membre ON avis.idMembre = membre.idMembre WHERE idJeu = ? ";
	$SQL = "SELECT * FROM avis NATURAL JOIN membre WHERE idJeu = ? "; // ecrire la requete qui va chercher les commentaires du jeu affiché
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array($idJeu)); // on passe dans le tableaux les paramètres si il y en a à fournir (ici l'identifiant du jeu)
	$commentaires = $stmt->fetchall(PDO::FETCH_ASSOC); // on met le resultat de la requete dans un tableau
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
				<?php if($jeu['photo'] == null){
					echo "Aucune image disponible pour ce jeu";
				} else {
					?>
					<img src="pages/jeux/photos/<?= $jeu['photo'] ?>" alt="image du jeu <?= $jeu['nom'] ?>"/>
				<?php
				}
				?>
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

<?php if(count($commentaires) != 0){
	?>
	<h4>Commentaires de ce jeu (<?php echo count($commentaires)?>)<!-- ajouter le code pour afficher le nombre de commentaires pour ce jeu en utilisant la fonction count() du langage php sur le tableau $commentaires (voir sa documentation sur internet) -->)	</h4>

	<!-- ajouter le code pour afficher les commentaires pour ce jeu sous forme d'une liste à puces alimentées par une boucle -->	
	<ul>
	<?php
	foreach ($commentaires as $unCommentaire){
		echo "<li><strong>".$unCommentaire['nomMembre']."</strong>(".$unCommentaire['date'].") : ".$unCommentaire['commentaire']."</li>";
	}
	?>

	<?php
	/*version alternative
	foreach ($commentaires as $commentaire){
		?>
		<li><strong><?=$commentaire['nomMembre']?></strong>(<?=$commentaire['date']?>) : <?=$commentaire['commentaire']?></li>"
	<?php
	}*/
	?>
	</ul>
<?php
} else {
	echo "aucun avis pour l’instant ";
}
?>











