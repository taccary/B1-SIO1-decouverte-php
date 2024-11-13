<?php
        $_ENV["username"] = "retrogamein-web"; // utilisateur de la base de données
        $_ENV["password"] = "p@ssw0rd"; // mot de passe de l'utilisateur de la base de données
        $_ENV["host"] = "db"; // hôte de la base de données
        $_ENV["port"] = "3306"; // port de la base de données
        $_ENV["dbname"] = "retrogamein"; // nom de la base de données
        $_ENV["dsn"] = "mysql:host=".$_ENV["host"].";dbname=".$_ENV["dbname"].";port=".$_ENV["port"]; // data source name
        $_ENV["options"] = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''); // option pour le driver PDO : UTF8 pour gérer les accents

        try {
                $connexion = new PDO($_ENV["dsn"], $_ENV["username"], $_ENV["password"], $_ENV["options"]);
                $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $connexion->exec('SET NAMES utf8');
        } catch(Exception $e) {
                die('Erreur : '.$e->getMessage());
        }
?>

