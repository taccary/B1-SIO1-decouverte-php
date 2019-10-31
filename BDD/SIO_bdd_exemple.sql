-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 31 Octobre 2019 à 23:26
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exemple`
--
CREATE DATABASE IF NOT EXISTS `exemple` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exemple`;

-- --------------------------------------------------------

--
-- Structure de la table `console`
--

CREATE TABLE `console` (
  `idConsole` int(11) NOT NULL,
  `nomConsole` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `console`
--

INSERT INTO `console` (`idConsole`, `nomConsole`) VALUES
(1, 'NES'),
(2, 'Megadrive'),
(3, 'Nintendo 64'),
(4, 'GameCube'),
(5, 'Xbox'),
(6, 'PC'),
(7, 'SuperNES'),
(8, 'PS2'),
(9, 'GBA'),
(10, 'PS'),
(11, 'Gameboy'),
(12, 'Dreamcast');

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

CREATE TABLE `jeux_video` (
  `ID` int(10) UNSIGNED NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `nom` varchar(100) NOT NULL DEFAULT '',
  `possesseur` int(11) NOT NULL,
  `console` int(11) NOT NULL,
  `prix` decimal(10,0) NOT NULL DEFAULT '0',
  `nbre_joueurs_max` tinyint(4) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `photo`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, NULL, 'Super Mario Bros', 1, 1, '4', 1, 'Un jeu d\'anthologie !'),
(2, NULL, 'Sonic', 2, 2, '2', 1, 'Pour moi, le meilleur jeu au monde !'),
(3, NULL, 'Zelda : ocarina of time', 1, 3, '15', 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, NULL, 'Mario Kart 64', 1, 3, '25', 4, 'Un excellent jeu de kart !'),
(5, NULL, 'Super Smash Bros Melee', 3, 4, '55', 4, 'Un jeu de baston délirant !'),
(6, 'dead_or_alive.jpg', 'Dead or Alive', 2, 5, '60', 4, 'Le plus beau jeu de baston jamais créé'),
(7, NULL, 'Dead or Alive Xtreme Beach Volley Ball', 2, 5, '60', 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, NULL, 'Enter the Matrix', 3, 6, '45', 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, NULL, 'Max Payne 2', 3, 6, '50', 1, 'Très réaliste, une sorte de film noir sur fond d\'histoire d\'amour. A essayer !'),
(10, NULL, 'Yoshi\'s Island', 1, 7, '6', 1, 'Le paradis des Yoshis :o)'),
(11, NULL, 'Commandos 3', 1, 6, '44', 12, 'Un bon jeux d\'action où on dirige un commando pendant la 2 ème guerre mondiale !!'),
(12, NULL, 'Final Fantasy X', 2, 8, '40', 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, NULL, 'Pokemon Rubis', 1, 9, '44', 4, 'Pika-Pika-chu !!!'),
(14, NULL, 'Starcraft', 3, 6, '19', 8, 'Le meilleur jeux pc de tout les temps !'),
(15, NULL, 'Grand Theft Auto 3', 3, 8, '30', 1, 'Comme dans les autres Gta on ecrsase tout le monde :) .'),
(16, NULL, 'Homeworld 2', 3, 6, '45', 6, 'Superbe ! o_O'),
(17, 'aladdin.jpg', 'Aladdin', 2, 7, '10', 1, 'Comme le dessin Animé !'),
(18, NULL, 'Super Mario Bros 3', 3, 7, '10', 2, 'Le meilleur Mario celon moi.'),
(19, NULL, 'SSX 3', 1, 5, '56', 2, 'Un très bon jeux de snow !'),
(20, NULL, 'Star Wars : Jedi outcast', 2, 5, '33', 1, 'Encore un jeux sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'actua_soccer.jpg', 'Actua Soccer 3', 2, 10, '30', 2, 'Un jeux de foot assez bof ...'),
(22, NULL, 'Time Crisis 3', 1, 8, '40', 1, 'un troisième volet efficace mais pas vraiment surprenant'),
(23, NULL, 'X-FILES', 2, 10, '25', 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, NULL, 'Soul Calibur 2', 2, 5, '54', 1, 'un jeu bien axé sur le combat'),
(25, NULL, 'Diablo', 1, 10, '20', 1, 'Comme sur PC mais la c\'est sur un ecran de télé :) !'),
(26, NULL, 'Street Fighter 2', 2, 2, '10', 2, 'Le célèbre jeu de combat !'),
(27, NULL, 'Gundam Battle Assault 2', 1, 10, '29', 1, 'jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, NULL, 'Spider-Man', 1, 2, '15', 1, 'Vivez l\'avanture de l\'homme araignée'),
(29, NULL, 'Midtown Madness 3', 3, 5, '59', 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, NULL, 'Tetris', 1, 11, '5', 1, 'Qui ne connait pas ? '),
(31, NULL, 'The Rocketeer', 3, 1, '2', 1, 'Un super un film et un jeu de m*rde ...'),
(32, NULL, 'Pro Evolution Soccer 3', 2, 8, '59', 2, 'Un petit jeu de foot sur PS2'),
(33, NULL, 'Ice Hockey', 3, 1, '7', 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, NULL, 'Sydney 2000', 1, 12, '15', 2, 'Les JO de sydneys dans votre salon !'),
(35, NULL, 'NBA 2k', 2, 12, '12', 2, 'A votre avis :p ?'),
(36, 'alien_vs_predator.jpg', 'Aliens Versus Predator : Extinction', 3, 8, '20', 2, 'un shut\'um up pour pc'),
(37, NULL, 'Crazy Taxi', 1, 12, '11', 1, 'Conduite de taxi en folie !'),
(38, NULL, 'Le Maillon Faible', 4, 8, '10', 1, 'le jeu de l\'émission'),
(39, NULL, 'FIFA 64', 3, 3, '25', 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, NULL, 'Qui Veut Gagner Des Millions', 1, 8, '10', 1, 'le jeu de l\'émission'),
(41, NULL, 'Monopoly', 5, 3, '21', 4, 'Bheuuu le monopoly sur N64 !'),
(42, NULL, 'Taxi 3', 6, 8, '19', 4, 'un jeu de voiture sur le film'),
(43, NULL, 'Indiana Jones Et Le Tombeau De L\'Empereur', 1, 8, '25', 1, 'Notre avanturier préféré est de retour !!!'),
(44, NULL, 'F-ZERO', 4, 9, '25', 4, 'Un super jeux de course futuriste !'),
(45, NULL, 'Harry Potter Et La Chambre Des Secrets', 4, 5, '30', 1, 'Abracadabra !! le célebre magicien est de retour !'),
(46, NULL, 'Half-Life', 6, 6, '15', 32, 'L\'autre meilleur jeux de tout les temps (surtout ses mods , cs, ns ,dod , etc ).'),
(47, NULL, 'Myst III Exile', 5, 5, '49', 1, 'Un jeu de réflexion'),
(48, NULL, 'Wario World', 5, 4, '40', 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, NULL, 'Rollercoaster Tycoon', 1, 5, '29', 1, 'Jeu de gestion d\'un parc d\'attraction'),
(50, NULL, 'Splinter Cell', 2, 5, '53', 1, 'Jeu magnifique !');

-- --------------------------------------------------------

--
-- Structure de la table `possesseur`
--

CREATE TABLE `possesseur` (
  `idPossesseur` int(11) NOT NULL,
  `nomPossesseur` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `possesseur`
--

INSERT INTO `possesseur` (`idPossesseur`, `nomPossesseur`) VALUES
(1, 'Florent'),
(2, 'Patrick'),
(3, 'Michel'),
(4, 'Mathieu'),
(5, 'Sebastien'),
(6, 'Corentin');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`idConsole`);

--
-- Index pour la table `jeux_video`
--
ALTER TABLE `jeux_video`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `possesseur` (`possesseur`),
  ADD KEY `console` (`console`);

--
-- Index pour la table `possesseur`
--
ALTER TABLE `possesseur`
  ADD PRIMARY KEY (`idPossesseur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `console`
--
ALTER TABLE `console`
  MODIFY `idConsole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `jeux_video`
--
ALTER TABLE `jeux_video`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `possesseur`
--
ALTER TABLE `possesseur`
  MODIFY `idPossesseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `jeux_video`
--
ALTER TABLE `jeux_video`
  ADD CONSTRAINT `jeux_video_ibfk_1` FOREIGN KEY (`console`) REFERENCES `console` (`idConsole`),
  ADD CONSTRAINT `jeux_video_ibfk_2` FOREIGN KEY (`possesseur`) REFERENCES `possesseur` (`idPossesseur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
