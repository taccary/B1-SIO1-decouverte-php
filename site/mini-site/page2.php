<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page 1</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.php">Mini-Site</a>
        <div id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="page1.php">Les jeux (Requête simple)</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="page2.php">Les avis (Requête avec jointure)</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <h1 class="mt-5">Affichage des avis avec les infos des jeux et membres (requete avec jointure)</h1>
        <p class="lead">Cette page affiche des informations sur les avis des membres. Pour chaque avis, on affiche le nom du jeu, la date et le commentaire.<br>
        On filtre les avis par membre en utilisant une liste déroulante alimentée par une requête SQL.<br>
        On utilise une requête SQL avec jointure pour récupérer les informations des jeux et des membres liées aux avis.</p>

        <!-- liste des membres sous forme de liste déroulante -->
        <form method="post" action="page2.php">
            <div class="form-group
            <label for="membre">Membre :</label>
            <select class="form-control" id="membre" name="membre">
                <?php
                    $requete= "SELECT idMembre, nomMembre FROM membre ORDER BY nomMembre";
                    $query = $connexion->prepare($requete);
                    $query->execute();
                    $lesMembres = $query->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($lesMembres as $unMembre) {
                        echo '<option value="' . $unMembre['idMembre'] . '">' . $unMembre['nomMembre'] . '</option>';
                    }
                ?>
            </select>
            <button type="submit" class="btn btn-primary mt-2">Afficher les avis du membre</button>
        </form>


        <!-- Récupération des avis dans la base de données -->
        <?php
        if (isset($_POST['membre'])) {
            $idMembre = $_POST['membre'];
            $requete= "SELECT * FROM avis INNER JOIN membre ON avis.idMembre=membre.idMembre INNER JOIN jeu ON avis.idJeu=jeu.idJeu WHERE avis.idMembre = :id ORDER BY avis.date DESC";
            $query = $connexion->prepare($requete);
            $query->bindParam(':id', $idMembre);
            $query->execute();
            $lesAvis = $query->fetchAll(PDO::FETCH_ASSOC);
        }
        else {
            $requete= "SELECT * FROM avis INNER JOIN membre ON avis.idMembre=membre.idMembre INNER JOIN jeu ON avis.idJeu=jeu.idJeu ORDER BY avis.date DESC";
            $query = $connexion->prepare($requete);
            $query->execute();
            $lesAvis = $query->fetchAll(PDO::FETCH_ASSOC);
        }
        ?>
        <!-- Affichage des avis sous forme d'une liste à puce -->
        <ul class="list-group mt-5">
            <?php
            foreach ($lesAvis as $unAvis) {
                echo '<li class="list-group-item">';
                echo '<h5>' . $unAvis['date'] . '('.$unAvis['nomMembre'].')</h5>';
                echo '<p>' . $unAvis['nom'] . '</p>';
                echo '<p><strong>date : </strong>' . $unAvis['commentaire'] . '</p>';
            }
            ?> 
        </ul>  
        
        <!-- morceau de code pour afficher les explications -->
        <?php include 'explications/explainPage2.php'; ?>

    </div>

</body>
</html>