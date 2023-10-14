﻿<!-- bloc de requete pour recupérer les informations du jeu et de la console associée depuis la base de données dans un tableau associatif $jeu -->
<?php
	// Récupérer l'identifiant du jeu transmis dans la barre d'adresse
	$idJeu = $_GET['idjeu'];

	// Définir la requête SQL pour récupérer les informations du jeu et de la console associée à partir de son identifiant (idJeu)
	$SQL = "SELECT * FROM jeu JOIN console ON jeu.console = console.idConsole WHERE idJeu = :unIdJeu";

	// Préparer la requête en utilisant la connexion à la base de données
	$stmt = $connexion->prepare($SQL);

	// Définir le paramètre de la requête SQL avec l'identifiant du jeu
	$stmt->bindValue(":unIdJeu", $idJeu, PDO::PARAM_INT);

	// Exécuter la requête
	$stmt->execute();

	// Récupérer les résultats de la requête dans un tableau associatif
	$jeu = $stmt->fetch(PDO::FETCH_ASSOC);

	// Fermer le curseur des résultats pour libérer les ressources
	$stmt->closeCursor();
?>	

<!-- bloc de requete pour recupérer les commentaires du jeu depuis la base de données dans un tableau associatif $commentaires -->
<?php	
	// Définir la requête SQL pour récupérer les commentaires du jeu
	$SQL = "SELECT * FROM avis WHERE idJeu = :unIdJeu";

	// Préparer la requête en utilisant la connexion à la base de données
	$stmt = $connexion->prepare($SQL);

	// Définir le paramètre de la requête SQL avec l'identifiant du jeu
	$stmt->bindValue(":unIdJeu", $idJeu, PDO::PARAM_INT);

	// Exécuter la requête en passant l'identifiant du jeu comme paramètre
	$stmt->execute();

	// Récupérer tous les résultats de la requête dans un tableau associatif
	$commentaires = $stmt->fetchAll(PDO::FETCH_ASSOC);

	// Fermer le curseur des résultats pour libérer les ressources
	$stmt->closeCursor();
?>
<!-- bloc d'affichage en mode console des variables contenant les informations du jeu et de la console associée -->
<?php
	//var_dump($jeu);
	//var_dump($commentaires);
?>

<a href="index.php?page=jeux">Retourner au catalogue</a>

<h1 class="entry-title">Fiche du jeu <?= $jeu['nom'] ?></H3>

<table id="affiche_resultat">
	<!-- Corps du tableau -->
	<tbody> 
		<tr>
			<td rowspan="2" class="photo">
				<!-- si le jeu n'a pas d'image, afficher "Aucune image disponible pour ce jeu" -->
				<img src="pages/jeux/photos/<?= $jeu['photo'] ?>" alt="image du jeu <?= $jeu['nom'] ?>"/>
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

<h4>Commentaires de ce jeu (xx<!-- ajouter le code pour afficher le nombre de commentaires pour ce jeu en utilisant la fonction count() du langage php sur le tableau $commentaires (voir sa documentation sur internet) -->)	</h4>

<!-- ajouter le code pour afficher les commentaires pour ce jeu sous forme d'une liste à puces alimentées par une boucle -->	