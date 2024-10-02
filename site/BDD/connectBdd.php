<?php
include 'infoBDD.inc.php'; // inclusion du fichier de paramètres de connexion à la BDD
try
        {
                $connexion = new PDO($_ENV["dsn"], $_ENV["username"], $_ENV["password"], $_ENV["options"]);
                $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $connexion->exec('SET NAMES utf8');
        }
catch(Exception $e)
        {
                echo 'Une erreur de connexion à la BDD est survenue !';
                die();
        }
?>
