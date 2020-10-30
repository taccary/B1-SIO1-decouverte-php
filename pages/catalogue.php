<div id="contenu_catalogue">

	<?php 		
		if (isset($_GET['idjeu'])) {
			$SQL = "SELECT * FROM jeu WHERE idJeu = ? ";
			$stmt = $connexion->prepare($SQL);
			$stmt->execute(array($_GET['idjeu'])); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
			$jeu = $stmt->fetch(); // on met le resultat de la requete dans un tableau
			//var_dump($jeu); // on affiche le contenu de la variable $jeu (ici un tableau php array())
			$stmt->closeCursor(); // on ferme le curseur des résultats*/

			include('catalogue/afficheJeu.php'); // à commenter
		} 
		else {
			include('catalogue/affiche.php'); // à commenter
		}


	?>

	<?php  ?>
</div>
