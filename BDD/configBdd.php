<?php
/**
 * Fichier de configuration de la base de données
 */
    $_ENV["username"] = "retrogaming-web"; // utilisateur de la base de données
    $_ENV["password"] = "p@ssw0rd"; // mot de passe de l'utilisateur de la base de données
    $_ENV["dsn"] = "mysql:host=localhost;dbname=retrogaming;port=3306"; // data source name
    $_ENV["options"] = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\'') // option pour le driver PDO : UTF8 pour gérer les accents
?>