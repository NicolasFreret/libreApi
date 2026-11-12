-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 oct. 2026 à 10:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `books`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`, `prenom`) VALUES
(1, 'Camus', 'Albert'),
(2, 'Asimov', 'Isaac'),
(3, 'Eco', 'Umberto'),
(4, 'Christie', 'Agatha'),
(5, 'Hugo', 'Victor'),
(6, 'Orwell', 'George'),
(7, 'Tolkien', 'J.R.R.'),
(8, 'Dumas', 'Alexandre'),
(9, 'Verne', 'Jules'),
(10, 'Zola', 'Émile');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs_livres`
--

CREATE TABLE `auteurs_livres` (
  `id_auteur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteurs_livres`
--

INSERT INTO `auteurs_livres` (`id_auteur`, `id_livre`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20),
(1, 21),
(2, 22),
(3, 23),
(4, 24),
(5, 25),
(6, 26),
(7, 27),
(8, 28),
(9, 29),
(10, 30);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `telephone`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont1@gmaikjkjl.com', 610000001),
(2, 'Martin', 'Sophie', 'sophie.martin2@example.com', 610000002),
(3, 'Bernard', 'Lucas', 'lucas.bernard3@example.com', 610000003),
(4, 'Petit', 'Camille', 'camille.petit4@example.com', 610000004),
(5, 'Robert', 'Thomas', 'thomas.robert5@example.com', 610000005),
(6, 'Richard', 'Emma', 'emma.richard6@example.com', 610000006),
(7, 'Durand', 'Hugo', 'hugo.durand7@example.com', 610000007),
(8, 'Dubois', 'Chloé', 'chloe.dubois8@example.com', 610000008),
(9, 'Moreau', 'Léo', 'leo.moreau9@example.com', 610000009),
(10, 'Laurent', 'Lea', 'lea.laurent10@example.com', 610000010),
(11, 'Simon', 'Gabriel', 'gabriel.simon11@example.com', 610000011),
(12, 'Michel', 'Manon', 'manon.michel12@example.com', 610000012),
(13, 'Lefebvre', 'Jules', 'jules.lefebvre13@example.com', 610000013),
(14, 'Leroy', 'Inès', 'ines.leroy14@example.com', 610000014),
(15, 'Roux', 'Louis', 'louis.roux15@example.com', 610000015),
(16, 'David', 'Jade', 'jade.david16@example.com', 610000016),
(17, 'Bertrand', 'Arthur', 'arthur.bertrand17@example.com', 610000017),
(18, 'Morel', 'Lola', 'lola.morel18@example.com', 610000018),
(19, 'Fournier', 'Maël', 'mael.fournier19@example.com', 610000019),
(20, 'Girard', 'Anaïs', 'anais.girard20@example.com', 610000020),
(21, 'Bonnet', 'Paul', 'paul.bonnet21@example.com', 610000021),
(22, 'Lambert', 'Océane', 'oceane.lambert22@example.com', 610000022),
(23, 'Fontaine', 'Clément', 'clement.fontaine23@example.com', 610000023),
(24, 'Rousseau', 'Lucie', 'lucie.rousseau24@example.com', 610000024),
(25, 'Vincent', 'Enzo', 'enzo.vincent25@example.com', 610000025),
(26, 'Muller', 'Clara', 'clara.muller26@example.com', 610000026),
(27, 'Lefevre', 'Nathan', 'nathan.lefevre27@example.com', 610000027),
(28, 'Faure', 'Sarah', 'sarah.faure28@example.com', 610000028),
(29, 'Andre', 'Valentin', 'valentin.andre29@example.com', 610000029),
(30, 'Mercier', 'Eva', 'eva.mercier30@example.com', 610000030),
(31, 'Blanc', 'Mathis', 'mathis.blanc31@example.com', 610000031),
(32, 'Guerin', 'Louna', 'louna.guerin32@example.com', 610000032),
(33, 'Boyer', 'Tom', 'tom.boyer33@example.com', 610000033),
(34, 'Garnier', 'Romane', 'romane.garnier34@example.com', 610000034),
(35, 'Chevalier', 'Théo', 'theo.chevalier35@example.com', 610000035),
(36, 'Francois', 'Julie', 'julie.francois36@example.com', 610000036),
(37, 'Legrand', 'Rayan', 'rayan.legrand37@example.com', 610000037),
(38, 'Gauthier', 'Margaux', 'margaux.gauthier38@example.com', 610000038),
(39, 'Garcia', 'Maxence', 'maxence.garcia39@example.com', 610000039),
(40, 'Perrin', 'Alicia', 'alicia.perrin40@example.com', 610000040),
(41, 'Robin', 'Evan', 'evan.robin41@example.com', 610000041),
(42, 'Clement', 'Jeanne', 'jeanne.clement42@example.com', 610000042),
(43, 'Morvan', 'Sacha', 'sacha.morvan43@example.com', 610000043),
(44, 'Nicolas', 'Elisa', 'elisa.nicolas44@example.com', 610000044),
(45, 'Henry', 'Alexandre', 'alexandre.henry45@example.com', 610000045),
(46, 'Roussel', 'Noémie', 'noemie.roussel46@example.com', 610000046),
(47, 'Mathieu', 'Gabin', 'gabin.mathieu47@example.com', 610000047),
(48, 'Gautier', 'Lia', 'lia.gautier48@example.com', 610000048),
(49, 'Masson', 'Yanis', 'yanis.masson49@example.com', 610000049),
(50, 'Marchand', 'Lisa', 'lisa.marchand50@example.com', 610000050);

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE `emprunts` (
  `id` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emprunts`
--

INSERT INTO `emprunts` (`id`, `reference`, `date_debut`, `date_fin`) VALUES
(1, 'EMP-2026-001', '2026-09-01 10:00:00', '2026-09-15 11:30:00'),
(2, 'EMP-2026-002', '2026-09-10 14:15:00', '2026-09-24 16:00:00'),
(3, 'EMP-2026-003', '2026-09-20 09:30:00', NULL),
(4, 'EMP-2026-004', '2026-10-01 11:00:00', NULL),
(5, 'EMP-2026-005', '2026-10-05 16:45:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `formats`
--

CREATE TABLE `formats` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formats`
--

INSERT INTO `formats` (`id`, `nom`) VALUES
(6, 'Audio'),
(2, 'Broché'),
(5, 'Ebook'),
(3, 'Grand Format'),
(1, 'Poche'),
(4, 'Relié');

-- --------------------------------------------------------

--
-- Structure de la table `formats_livres`
--

CREATE TABLE `formats_livres` (
  `id_format` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formats_livres`
--

INSERT INTO `formats_livres` (`id_format`, `id_livre`) VALUES
(1, 1),
(5, 1),
(3, 2),
(5, 2),
(2, 3),
(1, 4),
(4, 5),
(1, 6),
(5, 6),
(3, 7),
(4, 7),
(2, 8),
(1, 9),
(1, 10),
(1, 11),
(2, 12),
(1, 13),
(1, 14),
(4, 15),
(5, 16),
(3, 17),
(2, 18),
(1, 19),
(1, 20),
(2, 21),
(1, 22),
(5, 23),
(2, 24),
(1, 25),
(1, 26),
(3, 27),
(2, 28),
(1, 29),
(1, 30);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(7, 'Aventure'),
(6, 'Classique'),
(8, 'Dystopie'),
(5, 'Fantasy'),
(3, 'Histoire'),
(10, 'Jeunesse'),
(9, 'Philosophie'),
(4, 'Policier'),
(1, 'Roman'),
(2, 'Science-Fiction');

-- --------------------------------------------------------

--
-- Structure de la table `genres_livres`
--

CREATE TABLE `genres_livres` (
  `id_genre` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genres_livres`
--

INSERT INTO `genres_livres` (`id_genre`, `id_livre`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 10),
(2, 2),
(2, 6),
(2, 9),
(4, 3),
(4, 4),
(5, 7),
(6, 5),
(6, 8),
(6, 10),
(7, 7),
(7, 8),
(7, 9),
(8, 6),
(9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `id_edition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `isbn`, `stock`, `id_edition`) VALUES
(1, 'L\'Étranger', '978-2-07-036002-4', 10, 1),
(2, 'Fondation', '978-2-07-036055-0', 8, 1),
(3, 'Le Nom de la Rose', '978-2-08-123456-7', 5, 3),
(4, 'Dix Petits Nègres', '978-2-01-000111-2', 12, 2),
(5, 'Les Misérables', '978-2-253-00899-7', 7, 5),
(6, '1984', '978-2-07-036822-8', 15, 10),
(7, 'Le Seigneur des Anneaux', '978-2-267-01696-3', 6, 7),
(8, 'Le Comte de Monte-Cristo', '978-2-07-040850-4', 9, 10),
(9, 'Vingt Mille Lieues sous les mers', '978-2-01-322310-2', 11, 2),
(10, 'Germinal', '978-2-253-00422-7', 4, 5),
(11, 'La Peste', '978-2-07-036042-0', 8, 1),
(12, 'Les Cavernes d\'acier', '978-2-290-31722-8', 3, 5),
(13, 'Le Pendule de Foucault', '978-2-253-05922-7', 5, 5),
(14, 'Le Crime de l\'Orient-Express', '978-2-7024-3631-8', 10, 6),
(15, 'Notre-Dame de Paris', '978-2-07-040922-8', 6, 10),
(16, 'La Ferme des animaux', '978-2-07-037516-5', 14, 10),
(17, 'Le Hobbit', '978-2-267-01825-7', 9, 7),
(18, 'Les Trois Mousquetaires', '978-2-07-041822-0', 7, 10),
(19, 'Le Tour du monde en 80 jours', '978-2-01-322311-9', 10, 2),
(20, 'L\'Assommoir', '978-2-253-00522-4', 5, 5),
(21, 'Le Mythe de Sisyphe', '978-2-07-032288-6', 6, 1),
(22, 'Le Second Cycle de Fondation', '978-2-07-041555-7', 4, 1),
(23, 'Baudolino', '978-2-246-61881-2', 3, 9),
(24, 'Ils étaient dix', '978-2-7024-4922-6', 8, 6),
(25, 'Quatrevingt-Treize', '978-2-08-070122-8', 4, 3),
(26, 'Hommage à la Catalogne', '978-2-07-032422-4', 5, 10),
(27, 'Silmarillion', '978-2-267-01922-3', 6, 7),
(28, 'La Reine Margot', '978-2-07-042822-9', 4, 10),
(29, 'De la Terre à la Lune', '978-2-01-322312-6', 7, 2),
(30, 'Nana', '978-2-253-00622-1', 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `livres_emprunts_clients`
--

CREATE TABLE `livres_emprunts_clients` (
  `id_livre` int(11) NOT NULL,
  `id_emprunts` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres_emprunts_clients`
--

INSERT INTO `livres_emprunts_clients` (`id_livre`, `id_emprunts`, `id_client`) VALUES
(1, 1, 1),
(2, 4, 12),
(3, 1, 1),
(6, 2, 2),
(7, 3, 3),
(14, 5, 25);

-- --------------------------------------------------------

--
-- Structure de la table `maisonsedition`
--

CREATE TABLE `maisonsedition` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `maisonsedition`
--

INSERT INTO `maisonsedition` (`id`, `nom`, `email`, `telephone`) VALUES
(1, 'Gallimard', 'contact@gallimard.fr', 149544200),
(2, 'Hachette Livre', 'contact@hachette.fr', 143923000),
(3, 'Flammarion', 'contact@flammarion.fr', 140513100),
(4, 'Seuil', 'contact@seuil.com', 140464321),
(5, 'Pocket', 'contact@pocket.fr', 144160500),
(6, 'Albin Michel', 'contact@albin-michel.fr', 142791000),
(7, 'Actes Sud', 'contact@actes-sud.fr', 490498689),
(8, 'Robert Laffont', 'contact@laffont.fr', 153671400),
(9, 'Grasset', 'contact@grasset.fr', 144392000),
(10, 'Folio', 'contact@folio.fr', 149544210);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `auteurs_livres`
--
ALTER TABLE `auteurs_livres`
  ADD PRIMARY KEY (`id_livre`,`id_auteur`),
  ADD KEY `id_auteur` (`id_auteur`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`);

--
-- Index pour la table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `formats_livres`
--
ALTER TABLE `formats_livres`
  ADD PRIMARY KEY (`id_livre`,`id_format`),
  ADD KEY `id_format` (`id_format`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `genres_livres`
--
ALTER TABLE `genres_livres`
  ADD PRIMARY KEY (`id_genre`,`id_livre`),
  ADD KEY `id_livre` (`id_livre`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `id_edition` (`id_edition`);

--
-- Index pour la table `livres_emprunts_clients`
--
ALTER TABLE `livres_emprunts_clients`
  ADD PRIMARY KEY (`id_livre`,`id_emprunts`,`id_client`),
  ADD KEY `id_emprunts` (`id_emprunts`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `maisonsedition`
--
ALTER TABLE `maisonsedition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteurs_livres`
--
ALTER TABLE `auteurs_livres`
  ADD CONSTRAINT `auteurs_livres_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteurs` (`id`),
  ADD CONSTRAINT `auteurs_livres_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`);

--
-- Contraintes pour la table `formats_livres`
--
ALTER TABLE `formats_livres`
  ADD CONSTRAINT `formats_livres_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`),
  ADD CONSTRAINT `formats_livres_ibfk_2` FOREIGN KEY (`id_format`) REFERENCES `formats` (`id`);

--
-- Contraintes pour la table `genres_livres`
--
ALTER TABLE `genres_livres`
  ADD CONSTRAINT `genres_livres_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `genres_livres_ibfk_2` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`id_edition`) REFERENCES `maisonsedition` (`id`);

--
-- Contraintes pour la table `livres_emprunts_clients`
--
ALTER TABLE `livres_emprunts_clients`
  ADD CONSTRAINT `livres_emprunts_clients_ibfk_1` FOREIGN KEY (`id_emprunts`) REFERENCES `emprunts` (`id`),
  ADD CONSTRAINT `livres_emprunts_clients_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `livres_emprunts_clients_ibfk_3` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
