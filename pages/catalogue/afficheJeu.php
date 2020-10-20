<?php 
	include 'BDD/connectBdd.php'; //on se connecte à la base de donnée
	if (isset($_GET['id'])) {
		$SQL = "SELECT * FROM jeu WHERE idJeu = ? ";
		$stmt = $connexion->prepare($SQL);
		$stmt->execute(array($_GET['id'])); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
		$jeu = $stmt->fetch(); // on met le resultat de la requete dans un tableau
		//var_dump($jeu); // on affiche le contenu de la variable $jeu (ici un tableau php array())
		$stmt->closeCursor(); // on ferme le curseur des résultats*/
	}


?>



<a href="index.php?page=catalogue">Retourner au catalogue</a>
<H3>Fiche du jeu <?= $jeu['nom'] ?></H3>

<table id="affiche_resultat">
	<!-- Corps du tableau -->
	<tbody> 
		<tr>
			<td rowspan="2" class="photo"><img src="photo/<?= $jeu['photo'] ?>" alt="image du jeu <?= $jeu['nom'] ?>"/></td>
			<td colspan="2"><?= $jeu['console'] ?></td>
		</tr>
		<tr>
			<td><?= $jeu['prixMoyen'] ?> euros</td>
			<td>nb joueurs max : <?= $jeu['nbJoueursMax'] ?></td>
		</tr>       
	</tbody>
</table>

<h4>Commentaires de ce jeu (<!-- ajouter le code pour afficher le nombre de commentaires pour ce jeu -->)	</h4>

<!-- ajouter le code pour afficher les commentaires pour ce jeu sous forme de blocs -->	