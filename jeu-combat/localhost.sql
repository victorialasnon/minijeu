-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 28 mai 2020 à 14:50
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `minijeu`
--
CREATE DATABASE IF NOT EXISTS `minijeu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `minijeu`;

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `degats` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `strength` int(11) NOT NULL DEFAULT '0',
  `Type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `degats`, `xp`, `level`, `strength`, `Type`) VALUES
(34, 'Apollon', 0, 0, 0, 0, 'guerrier'),
(32, 'Ulule', 0, 0, 0, 0, 'guerrier'),
(31, 'Sparta', 0, 0, 0, 0, 'magicien'),
(33, 'Achille', 76, 0, 0, 0, 'guerrier'),
(29, 'Fairavec', 0, 0, 0, 0, 'guerrier'),
(28, 'Zonzibulle', 0, 0, 4, 4, 'magicien'),
(27, 'Bark', 20, 0, 0, 0, 'archer'),
(35, 'ArÃ¨s', 5, 0, 0, 0, 'guerrier'),
(36, 'Caspar', 7, 0, 0, 0, 'magicien'),
(37, 'Balthasar', 20, 0, 0, 0, 'magicien'),
(38, 'Melchior ', 7, 0, 0, 0, 'magicien'),
(39, 'Merlin', 0, 0, 0, 0, 'magicien'),
(40, 'Legolas', 5, 0, 0, 0, 'archer'),
(41, 'Link', 7, 0, 0, 0, 'archer'),
(42, 'MÃ©rida', 0, 0, 0, 0, 'archer'),
(43, 'Pit', 0, 0, 0, 0, 'archer'),
(44, 'Bellerophon', 12, 0, 0, 0, 'guerrier'),
(45, 'Turok', 0, 75, 2, 2, 'archer');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
