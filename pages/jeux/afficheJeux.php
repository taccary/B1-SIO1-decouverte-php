<header>
	<h1>Redécouvrez Votre Enfance dans Notre Catalogue Rétro !</h1>
	<h2>Bienvenue dans le catalogue de RetroGame'In, où chaque clic vous ramène à une époque révolue.</h2>
	<p>Parcourez notre collection soigneusement sélectionnée de jeux classiques, de consoles légendaires, et d'accessoires iconiques. Que vous soyez à la recherche de trésors rétro pour compléter votre collection ou de jeux cultes à revivre, notre catalogue est un voyage dans le temps que tout amateur de rétro se doit d'explorer. 
	<br/>
	Plongez dans la nostalgie, dénichez des perles du passé, et redécouvrez votre enfance à travers les pixels et les saveurs du jeu vidéo d'antan. Votre quête commence ici, dans notre catalogue rétro.</p>
</header>


<?php
	echo '<h1 class="entry-title">Liste des jeux en fonction des consoles</h1>';
	

	$SQL = "SELECT idConsole, nomConsole FROM console ORDER BY 2 ASC";
	$stmt = $connexion->prepare($SQL);
	$stmt->execute(array()); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
	$lesConsoles = $stmt->fetchAll(PDO::FETCH_ASSOC); // on met le resultat de la requete dans un tableau à 2 dimensions
	//var_dump($lesConsoles); // on affiche le contenu de la variable $lesConsoles (ici un tableau php array())
	$stmt->closeCursor(); // on ferme le curseur des résultats
?>

<form method="post" action="index.php?page=games" class="row g-3">
	<div class="col-md-8">
		<select name="console" class="form-select">
			<option value="">--sélectionner une console--</option>
				<?php
				foreach ($lesConsoles as $uneConsole) {
					$selected = "";
					if ((isset($_POST['console'])) && ($_POST['console']==$uneConsole['idConsole'])) {
						$selected = "selected";
					}
					echo '<option value="'.$uneConsole['idConsole'].'" '.$selected.'>'.$uneConsole['nomConsole'].'</option>';
				}
				?>
		</select>
	</div>
	<div class="col-md-4">
		<button class="btn btn-primary" type="submit">Charger les jeux</button>
	</div>
</form>



<?php
	if ((isset($_POST['console'])) && ($_POST['console'] != "")) {
		$idConsole = $_POST['console'];
		$SQL = "SELECT nomConsole FROM console WHERE idConsole = :id ";
		$stmt = $connexion->prepare($SQL);
		$stmt->bindValue(":id", $idConsole, PDO::PARAM_INT); // on passe dans le tableaux les paramètres si il y en a à fournir (ici le numero de console)
		$stmt->execute(); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun ici)
		$uneConsole = $stmt->fetch(); // on met le resultat de la requete dans un tableau 
		$stmt->closeCursor(); // on ferme le curseur des résultats

		$SQL = "SELECT * FROM jeu WHERE console = :id ORDER BY 1 ASC ";
		$stmt = $connexion->prepare($SQL);
		$stmt->bindValue(":id", $idConsole, PDO::PARAM_INT); // on passe dans le tableaux les paramètres si il y en a à fournir (ici le numero de console)
		$stmt->execute(); // on passe dans le tableaux les paramètres si il y en a à fournir (aucun le numero de console)
		$jeux = $stmt->fetchAll(PDO::FETCH_ASSOC); // on met le resultat de la requete dans un tableau
		// var_dump($jeux); // on affiche le contenu de la variable $jeux (ici un tableau php array())
		$stmt->closeCursor(); // on ferme le curseur des résultats

		if (count($jeux) == 0){
			$nbJeux = "pas de jeux" ; // inutile, on peut remplacer le test pas une initialisation
		}
		else {
			$nbJeux = count($jeux)." jeux";
			if (count($jeux) == 1){
				$nbJeux = "1 jeu";
			}
		}

		echo '<h4>Liste des jeux '.$uneConsole['nomConsole'].' ('.$nbJeux.')</h4>';

		echo '<ul>';
		foreach ($jeux as $jeu) {
			//var_dump($jeu);
			echo '<li><a href="index.php?page=games&idjeu='.$jeu['idJeu'].'">'.$jeu['nom'].' ('.$jeu['prixMoyen'].' euros)</a></li>';
		}
		echo '</ul>';



		// echo '<div class="row row-cols-1 row-cols-md-3 g-4">';
		// foreach ($jeux as $jeu) {
		// 	echo '<div class="col">';
		// 	echo '<div class="card h-100" style="width: 18rem;">';
		// 	echo '<img src="pages/jeux/photos/'.$jeu['photo'].'" alt="image du jeu '. $jeu['nom'] .'" class="card-img-top" />';
		// 	echo '<div class="card-body"><a href="index.php?page=jeux&idjeu='.$jeu['idJeu'].'">';
		// 	echo '<h5 class="card-title">'.$jeu['nom'].'</h5>';
		// 	echo '<p class="card-text">'.$jeu['nom'].' ('.$jeu['prixMoyen'].' euros)</a></p>';
		// 	echo '</a></div>';
		// 	echo '</div>';
		// 	echo '</div>';
		// }
		// echo '</div>';

	} else {
		echo '<h4>veuillez selectionner une console</h4>';
	}
?>

