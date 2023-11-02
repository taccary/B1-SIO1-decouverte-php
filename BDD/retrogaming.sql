-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 22 sep. 2023 à 14:41
-- Version du serveur : 5.7.33
-- Version de PHP : 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `retrogaming`
--
DROP DATABASE IF EXISTS retrogaming;
CREATE DATABASE IF NOT EXISTS retrogaming DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
DROP USER IF EXISTS "retrogaming-web"@"localhost";
CREATE USER "retrogaming-web"@"localhost" IDENTIFIED BY "p@ssw0rd";
GRANT SELECT ON retrogaming.* TO "retrogaming-web"@"localhost";

USE retrogaming;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `idJeu` int(10) UNSIGNED NOT NULL,
  `idMembre` int(11) NOT NULL,
  `commentaire` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`idJeu`, `idMembre`, `commentaire`, `date`) VALUES
(1, 1, 'Un jeu d\'anthologie !', '2020-08-20'),
(1, 3, 'Un jeu incroyablement addictif !', '2020-08-21'),
(2, 1, 'Un jeu qui m\'a fait passer des heures de plaisir', '2020-08-22'),
(2, 2, 'Pour moi, le meilleur jeu au monde !', '2020-08-20'),
(3, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours', '2020-08-20'),
(3, 2, 'Un jeu qui vaut vraiment le détour', '2020-08-23'),
(4, 1, 'Un excellent jeu de kart !', '2020-08-20'),
(4, 3, 'Un jeu qui m\'a fait passer des nuits blanches !', '2020-08-21'),
(4, 4, 'Un jeu qui m\'a déçu, je m\'attendais à mieux', '2020-08-24'),
(5, 3, 'Un jeu de baston délirant !', '2020-08-20'),
(5, 4, 'Un jeu qui m\'a déçu, je m\'attendais à mieux', '2020-08-22'),
(5, 5, 'Un jeu qui m\'a surpris, je ne m\'attendais pas à aimer autant', '2020-08-25'),
(6, 2, 'Le plus beau jeu de baston jamais créé', '2020-08-20'),
(6, 5, 'Un jeu qui m\'a surpris, je ne m\'attendais pas à aimer autant', '2020-08-23'),
(7, 1, 'Un jeu qui m\'a fait rire et pleurer en même temps', '2020-08-24'),
(7, 2, 'Un jeu de beach volley de toute beauté o_O', '2020-08-20'),
(8, 2, 'Un jeu qui m\'a donné des frissons, une expérience unique', '2020-08-25'),
(8, 3, 'Plutôt bof comme jeu, mais ça complète bien le film', '2020-08-20'),
(9, 3, 'Très réaliste, une sorte de film noir sur fond d\'histoire d\'amour. A essayer !', '2020-08-20'),
(10, 1, 'Le paradis des Yoshis :o)', '2020-08-20'),
(11, 1, 'Un bon jeux d\'action où on dirige un commando pendant la 2 ème guerre mondiale !!', '2020-08-20'),
(12, 2, 'Encore un Final Fantasy mais celui la est encore plus beau !', '2020-08-20'),
(13, 1, 'Pika-Pika-chu !!!', '2020-08-20'),
(15, 1, 'Un jeu beaucoup trop court', '2020-08-24'),
(15, 2, 'Un jeu tellement long...', '2020-08-21'),
(15, 3, 'Comme dans les autres Gta on ecrsase tout le monde :) .', '2020-08-20'),
(16, 2, 'Le meilleur jeu de mon enfance', '2020-08-22'),
(16, 3, 'Superbe ! o_O', '2020-08-20'),
(17, 2, 'Comme le dessin Animé !', '2020-08-20'),
(19, 1, 'Un très bon jeux de snow !', '2020-08-20'),
(20, 1, 'Super jeu pour toute la famille', '2020-08-23'),
(21, 2, 'Un jeux de foot assez bof ...', '2020-08-20'),
(23, 2, 'Un jeu censé ressembler a la série mais assez raté ...', '2020-08-20'),
(25, 1, 'Comme sur PC mais la c\'est sur un ecran de télé :) !', '2020-08-20'),
(25, 4, 'Un jeu unique', '2020-08-25'),
(26, 2, 'Le célèbre jeu de combat !', '2020-08-20'),
(27, 1, 'jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement', '2020-08-20'),
(28, 1, 'Vivez l\'avanture de l\'homme araignée', '2020-08-20'),
(29, 3, 'Dans la suite des autres versions de Midtown Madness', '2020-08-20'),
(30, 1, 'Qui ne connait pas ? ', '2020-08-20'),
(31, 3, 'Un super un film et un jeu de m*rde ...', '2020-08-20'),
(32, 2, 'Un petit jeu de foot sur PS2', '2020-08-20'),
(33, 3, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)', '2020-08-20'),
(34, 1, 'Les JO de sydneys dans votre salon !', '2020-08-20'),
(35, 2, 'A votre avis :p ?', '2020-08-20'),
(36, 3, 'un shut\'um up pour pc', '2020-08-20'),
(37, 1, 'Conduite de taxi en folie !', '2020-08-20'),
(38, 4, 'le jeu de l\'émission', '2020-08-20'),
(39, 3, 'Le premier jeu de foot sur la N64 =) !', '2020-08-20'),
(40, 1, 'le jeu de l\'émission', '2020-08-20'),
(41, 5, 'Bheuuu le monopoly sur N64 !', '2020-08-20'),
(42, 6, 'un jeu de voiture sur le film', '2020-08-20'),
(43, 1, 'Notre avanturier préféré est de retour !!!', '2020-08-20'),
(44, 4, 'Un super jeux de course futuriste !', '2020-08-20'),
(45, 4, 'Abracadabra !! le célebre magicien est de retour !', '2020-08-20'),
(46, 6, 'L\'autre meilleur jeux de tout les temps (surtout ses mods , cs, ns ,dod , etc ).', '2020-08-20'),
(47, 5, 'Un jeu de réflexion', '2020-08-20'),
(48, 5, 'Wario vs Mario ! Qui gagnera ! ?', '2020-08-20'),
(49, 1, 'Jeu de gestion d\'un parc d\'attraction', '2020-08-20'),
(50, 2, 'Jeu magnifique !', '2020-08-20');

-- --------------------------------------------------------

--
-- Structure de la table `console`
--

CREATE TABLE `console` (
  `idConsole` int(11) NOT NULL,
  `nomConsole` varchar(50) NOT NULL DEFAULT '',
  `photo` varchar(200) DEFAULT NULL,
  `dateSortie` year(4) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `console`
--

INSERT INTO `console` (`idConsole`, `nomConsole`, `photo`, `dateSortie`, `description`) VALUES
(1, 'NES (Nintendo Entertainment System)', 'NES.png', '1985', 'La NES, également connue sous le nom de Nintendo Entertainment System, est une console de jeu emblématique sortie en 1985. Elle a révolutionné l\'industrie du jeu vidéo avec des titres classiques tels que Super Mario Bros et The Legend of Zelda.'),
(2, 'Sega Megadrive', 'megaDrive.png', '1988', 'La Sega Megadrive, sortie en 1988, a marqué le début de la guerre des consoles entre Sega et Nintendo. Elle est célèbre pour des jeux tels que Sonic the Hedgehog et Streets of Rage.'),
(3, 'Nintendo 64 (N64)', 'N64.png', '1996', 'La Nintendo 64, sortie en 1996, est connue pour sa technologie révolutionnaire de 64 bits et pour avoir introduit des classiques comme Super Mario 64 et The Legend of Zelda: Ocarina of Time.'),
(4, 'GameCube', 'gamecube.png', '2001', 'La GameCube, sortie en 2001, est une console compacte de Nintendo offrant une grande bibliothèque de jeux, y compris Super Smash Bros. Melee et The Legend of Zelda: The Wind Waker.'),
(5, 'Xbox', 'Xbox.png', '2001', 'La Xbox de Microsoft, lancée en 2001, a marqué l\'entrée de Microsoft dans l\'industrie du jeu vidéo. Elle est connue pour des titres tels que Halo: Combat Evolved et Fable.'),
(6, 'PC (Personal Computer)', 'PC.png', NULL, 'Les jeux PC offrent une variété de genres, de l\'émulation rétro aux jeux modernes. Explorez des mondes virtuels, résolvez des énigmes et profitez de jeux multijoueurs en ligne.'),
(7, 'SuperNES (Super Nintendo Entertainment System)', 'SNES.png', '1990', 'La SuperNES, également connue sous le nom de Super Nintendo, est une console emblématique de Nintendo sortie en 1990. Elle propose des classiques comme Super Mario World et The Legend of Zelda: A Link to the Past.'),
(8, 'PS2 (PlayStation 2)', 'PS2.png', '2000', 'La PlayStation 2, sortie en 2000, est la console la plus vendue de tous les temps. Elle propose une vaste gamme de jeux, dont Grand Theft Auto: San Andreas et Final Fantasy X.'),
(9, 'GBA (Game Boy Advance) ', 'GBA.png', '2001', 'La Game Boy Advance est une console portable de Nintendo sortie en 2001. Elle offre des jeux tels que Pokémon Ruby et Fire Emblem.'),
(10, 'PS (PlayStation)', 'PS.png', '1994', 'La PlayStation originale, sortie en 1994, a révolutionné le jeu vidéo. Elle a introduit des titres mémorables comme Metal Gear Solid et Resident Evil.'),
(11, 'Gameboy', 'gameboy.png', '1989', ' La Gameboy est une console portable classique de Nintendo qui a vu le jour en 1989. Elle est célèbre pour des jeux comme Tetris et The Legend of Zelda: Link\'s Awakening.'),
(12, 'Dreamcast', 'dreamcast.png', '1999', 'La Sega Dreamcast, sortie en 1999, était en avance sur son temps. Elle a proposé des jeux innovants tels que Sonic Adventure et Shenmue.'),
(13, 'Wii U', 'WiiU.png', '2012', 'La Wii U de Nintendo, sortie en 2012, a introduit un gameplay unique avec son GamePad. Elle offre des titres comme Super Mario 3D World et The Legend of Zelda: The Wind Waker HD.'),
(14, 'Nintendo Switch', 'switch.png', '2017', 'La Nintendo Switch, sortie en 2017, est une console hybride qui peut être utilisée à la fois comme console de salon et console portable. Elle propose des jeux populaires tels que The Legend of Zelda: Breath of the Wild et Super Mario Odyssey.');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `idJeu` int(10) UNSIGNED NOT NULL,
  `photoJeu` varchar(50) DEFAULT NULL,
  `nom` varchar(100) NOT NULL DEFAULT '',
  `descriptionJeu` text,
  `console` int(11) DEFAULT NULL,
  `prixMoyen` decimal(10,0) NOT NULL DEFAULT '0',
  `nbJoueursMax` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`idJeu`, `photoJeu`, `nom`, `descriptionJeu`, `console`, `prixMoyen`, `nbJoueursMax`) VALUES
(1, NULL, 'Super Mario Bros', 'Un classique intemporel du jeu de plateforme qui met en scène le plombier le plus célèbre du monde, Mario. Affrontez des ennemis, collectez des power-ups et sauvez la princesse Peach.', 1, 25, 1),
(2, NULL, 'Sonic', 'Rejoignez Sonic the Hedgehog, le hérisson bleu le plus rapide du monde, dans sa quête pour stopper le maléfique Dr. Robotnik. Des niveaux palpitants, des loopings et des anneaux vous attendent.', 2, 20, 1),
(3, NULL, 'Zelda : ocarina of time', 'Partez à l\'aventure en incarnant Link dans sa quête pour sauver le royaume de Hyrule. Explorez des donjons, résolvez des énigmes et combattez des monstres dans ce jeu d\'action-aventure épique.', 3, 15, 1),
(4, NULL, 'Mario Kart 64', 'Une course effrénée avec les personnages emblématiques de l\'univers Mario. Utilisez des objets spéciaux pour prendre l\'avantage et franchir la ligne d\'arrivée en premier.', 3, 25, 4),
(5, NULL, 'Super Smash Bros Melee', 'Un jeu de combat épique mettant en scène des personnages de l\'univers Nintendo. Affrontez vos amis dans des combats multijoueurs endiablés.', 4, 55, 4),
(6, 'dead_or_alive.jpg', 'Dead or Alive', 'Un jeu de combat rapide et dynamique avec une liste de combattants variée. Testez vos compétences dans des duels palpitants.', 5, 60, 4),
(7, NULL, 'Dead or Alive Xtreme Beach Volley Ball', 'Détendez-vous sur la plage et jouez au beach-volley avec les héroïnes de Dead or Alive. Profitez du soleil, des mini-jeux et de l\'ambiance tropicale.', 5, 60, 4),
(8, NULL, 'Enter the Matrix', 'Explorez l\'univers de la matrice dans ce jeu d\'action. Incarnez Niobe ou Ghost et vivez des aventures inspirées des films Matrix.', 6, 45, 1),
(9, NULL, 'Max Payne 2', 'Suivez l\'histoire captivante de Max Payne, un flic hanté par son passé. Plongez dans une narration sombre et des fusillades intenses.', 6, 50, 1),
(10, NULL, 'Yoshi\'s Island', 'Aidez Yoshi à sauver Baby Mario dans ce jeu de plateforme coloré. Affrontez des ennemis, collectez des objets et découvrez un monde fantastique.', 7, 15, 1),
(11, NULL, 'Commandos 3', 'Commandos 3 est un jeu de stratégie en temps réel qui se déroule pendant la Seconde Guerre mondiale. Formez une équipe de commandos d\'élite et accomplissez des missions secrètes derrière les lignes ennemies.', 6, 44, 12),
(12, NULL, 'Final Fantasy X', 'Plongez dans l\'univers de Final Fantasy X, un jeu de rôle épique avec des personnages inoubliables, un système de combat stratégique et une histoire captivante. Explorez le monde de Spira et affrontez des ennemis redoutables.', 8, 40, 1),
(13, NULL, 'Pokemon Rubis', 'Partez à l\'aventure en tant que dresseur de Pokémon dans Pokemon Rubis. Capturez des créatures, combattez des champions d\'arène et explorez la région de Hoenn.', 9, 44, 4),
(14, NULL, 'Starcraft', 'Starcraft est un jeu de stratégie en temps réel qui se déroule dans un futur lointain. Choisissez parmi trois factions, les Terrans, les Zergs et les Protoss, et menez-les à la victoire dans des batailles épiques.', 6, 19, 8),
(15, NULL, 'Grand Theft Auto 3', 'Plongez dans l\'univers criminel de Liberty City dans Grand Theft Auto 3. Explorez la ville, accomplissez des missions pour des gangsters et créez le chaos dans les rues.', 8, 30, 1),
(16, NULL, 'Homeworld 2', 'Homeworld 2 est un jeu de stratégie spatial qui vous permet de commander une flotte de vaisseaux dans un combat intergalactique. Explorez des systèmes stellaires, construisez des navires et engagez-vous dans des batailles spatiales épiques.', 6, 45, 6),
(17, 'aladdin.jpg', 'Aladdin', 'Incarnez Aladdin dans cette aventure basée sur le film de Disney. Explorez Agrabah, combattez des ennemis et aidez le Génie à libérer la princesse Jasmine.', 7, 10, 1),
(18, NULL, 'Super Mario Bros 3', 'Super Mario Bros 3 est un autre classique de la série Mario. Voyagez à travers huit mondes différents, utilisez des costumes spéciaux et affrontez Bowser pour sauver la princesse Peach.', 7, 10, 2),
(19, NULL, 'SSX 3', 'Plongez dans l\'univers du snowboard extrême avec SSX 3. Descendez des pistes vertigineuses, réalisez des figures incroyables et devenez le roi de la montagne.', 5, 56, 2),
(20, NULL, 'Star Wars : Jedi outcast', 'Incarnez Kyle Katarn, un ancien Jedi, dans Star Wars : Jedi Outcast. Utilisez la Force, maniez un sabre laser et combattez les forces obscures de l\'Empire.', 5, 33, 1),
(21, 'actua_soccer.jpg', 'Actua Soccer 3', 'Actua Soccer 3 est un jeu de football réaliste qui offre des graphismes de haute qualité, un gameplay fluide et des modes de jeu variés. Affrontez d\'autres équipes dans des matchs passionnants.', 10, 30, 2),
(22, NULL, 'Time Crisis 3', 'Time Crisis 3 est un jeu de tir sur rail qui vous met dans la peau d\'agents spéciaux pour combattre le crime organisé. Utilisez un pistolet à lumière pour éliminer les criminels et sauver des otages.', 8, 40, 1),
(23, NULL, 'X-FILES', 'Plongez dans l\'univers mystérieux de la série X-Files avec ce jeu d\'aventure. Enquêtez sur des phénomènes paranormaux, résolvez des énigmes et découvrez la vérité.', 10, 25, 1),
(24, NULL, 'Soul Calibur 2', 'Soul Calibur 2 est un jeu de combat en 3D avec une variété de combattants, chacun maître de son propre style de combat. Affrontez vos adversaires dans des duels intenses.', 5, 54, 1),
(25, NULL, 'Diablo', 'Plongez dans les profondeurs de l\'enfer avec Diablo. Explorez des donjons sombres, combattez des démons et cherchez des trésors légendaires dans ce jeu de rôle d\'action.', 10, 20, 1),
(26, NULL, 'Street Fighter 2', 'Street Fighter 2 est un jeu de combat classique qui a défini le genre. Choisissez parmi une variété de combattants du monde entier et engagez-vous dans des duels acharnés.', 2, 10, 2),
(27, NULL, 'Gundam Battle Assault 2', 'Prenez le contrôle de puissants robots Gundam dans Gundam Battle Assault 2. Affrontez d\'autres méchas dans des combats rapides et intenses.', 10, 29, 1),
(28, NULL, 'Spider-Man', 'Incarnez Spider-Man et balancez-vous à travers les gratte-ciel de New York dans ce jeu d\'action. Affrontez des super-vilains, sauvez la ville et incarnez le célèbre héros arachnide.', 2, 15, 1),
(29, NULL, 'Midtown Madness 3', 'Midtown Madness 3 est un jeu de course en monde ouvert qui vous permet de conduire à travers les rues de Paris et de Washington, D.C. Choisissez parmi une variété de véhicules et défiez d\'autres conducteurs.', 5, 59, 6),
(30, NULL, 'Tetris', 'Tetris est un jeu de puzzle classique où vous devez faire correspondre des blocs de formes différentes pour créer des lignes complètes. Un jeu simple, mais incroyablement addictif.', 11, 5, 1),
(31, NULL, 'The Rocketeer', 'Incarnez le Rocketeer, un héros volant équipé d\'un jetpack, dans cette aventure basée sur le film. Défendez la justice et combattez les forces du mal dans les cieux.', 1, 5, 1),
(32, NULL, 'Pro Evolution Soccer 3', 'Pro Evolution Soccer 3 est un jeu de football qui met l\'accent sur la simulation réaliste du sport. Choisissez parmi de nombreuses équipes, maîtrisez le ballon et marquez des buts spectaculaires.', 8, 59, 2),
(33, NULL, 'Ice Hockey', 'Ice Hockey est un jeu de hockey sur glace rapide et compétitif. Formez votre équipe, affrontez vos adversaires sur la patinoire et visez le filet pour marquer des buts.', 1, 7, 2),
(34, NULL, 'Sydney 2000', 'Sydney 2000 est un jeu officiel des Jeux olympiques qui vous permet de participer à une variété d\'épreuves sportives. Courez, sautez, nagez et visez l\'or.', 12, 15, 2),
(35, NULL, 'NBA 2k', 'NBA 2k est une simulation de basket-ball de premier plan. Choisissez une équipe de la NBA, gérez votre effectif, et montrez vos compétences sur le terrain.', 12, 12, 2),
(36, 'alien_vs_predator.jpg', 'Aliens Versus Predator : Extinction', 'Aliens Versus Predator : Extinction est un jeu de stratégie en temps réel basé sur l\'univers des films Aliens et Predator. Commandez des escouades d\'extraterrestres ou de chasseurs de primes et engagez-vous dans des batailles mortelles.', 8, 20, 2),
(37, NULL, 'Crazy Taxi', 'Crazy Taxi est un jeu d\'arcade délirant où vous incarnez un chauffeur de taxi intrépide. Conduisez à toute vitesse dans la ville, prenez des clients, et tentez de les livrer à destination le plus rapidement possible pour gagner de l\'argent.', 12, 11, 1),
(38, NULL, 'Le Maillon Faible', 'Le Maillon Faible est un jeu de quiz basé sur l\'émission de télévision. Répondez à des questions difficiles, éliminez les maillons faibles, et tentez de remporter la cagnotte.', 8, 10, 1),
(39, NULL, 'FIFA 64', 'FIFA 64 est un jeu de football qui offre des graphismes 3D avancés et des contrôles fluides. Choisissez parmi de nombreuses équipes nationales et jouez des matchs passionnants.', 3, 25, 2),
(40, NULL, 'Qui Veut Gagner Des Millions', 'Qui Veut Gagner Des Millions est un jeu de quiz basé sur l\'émission télévisée populaire. Testez vos connaissances, répondez correctement aux questions et grimpez vers le million.', 8, 10, 1),
(41, NULL, 'Monopoly', 'Monopoly est le jeu de société classique de l\'achat, de la vente et de la négociation. Accumulez des propriétés, chargez des loyers et devenez le magnat de l\'immobilier.', 3, 21, 4),
(42, NULL, 'Taxi 3', 'Inspiré du film, Taxi 3 est un jeu d\'action et de course où vous prenez le volant de véhicules rapides pour accomplir diverses missions. Faites la course dans les rues de Marseille et vivez des aventures explosives.', 8, 19, 4),
(43, NULL, 'Indiana Jones Et Le Tombeau De L\'Empereur', 'Rejoignez Indiana Jones dans cette aventure palpitante pour explorer des tombeaux anciens, résoudre des énigmes et affronter des ennemis redoutables. Suivez les traces de l\'archéologue intrépide.', 8, 25, 1),
(44, NULL, 'F-ZERO', 'F-ZERO est une série de jeux de course futuristes qui se déroulent dans des vaisseaux antigravité à des vitesses incroyables. Pilotez à travers des circuits dangereux et affrontez des concurrents redoutables.', 9, 25, 4),
(45, NULL, 'Harry Potter Et La Chambre Des Secrets', 'Replongez dans l\'univers magique de Harry Potter dans ce jeu d\'aventure. Explorez Poudlard, résolvez des mystères et affrontez des créatures magiques pour dévoiler les secrets de la Chambre des Secrets.', 5, 30, 1),
(46, NULL, 'Half-Life', 'Half-Life est un jeu de tir à la première personne révolutionnaire qui mélange action, énigmes et une histoire captivante. Incarnez Gordon Freeman alors qu\'il lutte pour sa survie contre des créatures extraterrestres.', 6, 15, 32),
(47, NULL, 'Myst III Exile', 'Myst III Exile est un jeu d\'aventure à la première personne qui vous transporte dans un monde mystérieux et énigmatique. Explorez des îles étranges, résolvez des énigmes complexes et découvrez les secrets qui se cachent derrière chaque mystère.', 5, 49, 1),
(48, NULL, 'Wario World', 'Wario World est un jeu d\'action-aventure mettant en vedette le célèbre méchant Wario. Explorez des mondes mystérieux, affrontez des ennemis, résolvez des énigmes et collectez des trésors dans cette aventure extravagante.', 4, 40, 4),
(49, NULL, 'Rollercoaster Tycoon', 'Rollercoaster Tycoon est un jeu de simulation de parc d\'attractions où vous pouvez concevoir, construire et gérer votre propre parc. Créez des manèges passionnants, divertissez les visiteurs et visez la réussite.', 5, 29, 1),
(50, NULL, 'Splinter Cell', 'Splinter Cell est un jeu d\'infiltration où vous incarnez Sam Fisher, un agent secret d\'élite. Accomplissez des missions secrètes, utilisez la furtivité pour éviter les ennemis et révélez des complots internationaux.', 5, 53, 1),
(51, NULL, 'Minecraft', 'Minecraft est un jeu de construction et de survie sandbox où votre imagination est la seule limite. Rassemblez des ressources, construisez des structures, explorez des mondes infinis et affrontez des monstres.', NULL, 15, 8),
(52, NULL, 'Les Sims 4', 'Les Sims 4 vous permet de créer et de contrôler des vies virtuelles dans un monde ouvert. Concevez des personnages uniques, construisez des maisons de rêve et guidez vos Sims à travers leurs aventures.', NULL, 25, 1);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idMembre` int(11) NOT NULL,
  `nomMembre` varchar(50) NOT NULL DEFAULT '',
  `parrain` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`idMembre`, `nomMembre`, `parrain`) VALUES
(1, 'Florent', NULL),
(2, 'Patrick', 1),
(3, 'Margaux', NULL),
(4, 'Mathieu', 1),
(5, 'Aurore', 3),
(6, 'Corentin', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`idJeu`,`idMembre`),
  ADD KEY `idMembre` (`idMembre`);

--
-- Index pour la table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`idConsole`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`idJeu`),
  ADD KEY `console` (`console`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`idMembre`),
  ADD KEY `parrain` (`parrain`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`idJeu`) REFERENCES `jeu` (`idJeu`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`idMembre`) REFERENCES `membre` (`idMembre`);

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `jeu_ibfk_1` FOREIGN KEY (`console`) REFERENCES `console` (`idConsole`);

--
-- Contraintes pour la table `membre`
--
ALTER TABLE `membre`
  ADD CONSTRAINT `membre_ibfk_1` FOREIGN KEY (`parrain`) REFERENCES `membre` (`idMembre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
