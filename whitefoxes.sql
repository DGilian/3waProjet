-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 01 Février 2018 à 21:15
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `whitefoxes`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Adress` varchar(150) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `Firstname`, `Lastname`, `Mail`, `Adress`, `City`, `Total_amount`) VALUES
(20, 'fqsdf', 'fqdsf', 'fsdqfq@gsdqg', 'fqsdmkljfq', 'fqsdljfqsf', 545),
(21, 'fqsdf', 'fqdsf', 'fsdqfq@gsdqg', 'fqsdmkljfq', 'fqsdljfqsf', 545),
(22, 'fklmqsjfm', 'fqsmkdlfj', 'fqsf@fkmljqsjdf', 'fmqsldjfqm', 'fmdqlskjfq', 710),
(23, 'qff', 'fdqsf', 'fdsqfqf@fqf', 'fqdsf', 'fqdsfq', 710),
(24, 'qfd', 'fsqfd', 'fqdsfaf@fqf', 'FQFLMJ', 'DQFQDSF', 710),
(25, 'qfdqf', 'fqsf', 'fqdsfdq@xn--qf-hea', 'fqsfqf', 'fqdsfqsd', 710),
(26, 'qsfdsdf', 'dqsf', 'sfqfdqsf@qdsfd', 'fqsdfsfd', 'fdsqfqsf', 710),
(27, 'dqfd', 'dqsfq', 'fdsqfqf@xn--qfdd-fpa', 'fqsfdqfs', 'fdqfqs', 710),
(28, 'qdsfqsfs', 'fqfdsqf', 'fqsfqdsf@fqsdfqf', 'zfqsdfqsfs', 'fdqsfqsf', 710),
(29, 'qf', 'fqf', 'fqf@afqf', 'fqfd', 'sfsqsdf', 710),
(30, 'dqsdff', 'fsqdf', 'qjlshdfq@fklqdsfh', 'fkqsdf', 'fqdskjlmf', 920),
(31, 'qklmjdlsf', 'flmqkdsjlfj', 'fqdsmlkjf@fqjkmsdfh', 'ffdqssf', 'fqdsfq', 315),
(32, 'arthuit', 'houg', 'houg@ghpou', 'houg', 'gouh', 1595),
(33, 'sqdf', 'fqdsf', 'fqsfd@fqjksldf', 'fdqff', 'fqsdf', 1595),
(34, 'dqsfq', 'fqsdfs', 'fqsffqsdf@qsfd', 'fdqsf', 'fasfdadf', 1595),
(35, 'qsdf', 'fqdf', 'fqsfdf@qsfd', 'sfqsdf', 'sfdqsfd', 1595),
(36, 'gsl', 'gsdjlmgkag', 'fqsdf@dqsf', 'fqdf', 'fqsdfq', 550),
(37, 'jklf', 'FDSQF', 'FQSDF@FDQSF', 'FQDSFS', 'FQSDF', 550),
(38, 'fqfd', 'fsqfdf', 'fqsdf@qfd', 'fdqsf', 'fdqsfdqf', 550),
(39, 'fdqdf', 'fqdsf', 'sfqdfsq@fdqfd', 'fqdfsq', 'sfdsqf', 390),
(40, 'fdqsf', 'fdsqff', 'fdqsfs@dqsf', 'fdqsfq', 'fdsqf', 1195),
(41, 'qsdlkfj', 'fqsdlmjf', 'fdsqfq@qkjlsdf', 'fqdlf', 'dfqsf', 545),
(42, 'dqf', 'fdqsf', 'qsdfq@qsd', 'fd', 'fsq', 545),
(43, 'fqdsf', 'fdsqf', 'fdsqf@fqsdfds', 'fdsqf', 'fdsqf', 545),
(44, 'qsdf', 'fdqsf', 'fqdsf@qsdf', 'fdsqdsqf', 'dfqsfsqf', 545),
(45, 'sqdfsq', 'fqsdf', 'fqsdf@qdsfqs', 'fdqsf', 'fqdsf', 545),
(46, 'sfdqs', 'fqsdf', 'fqsdf@dqsf', 'sfqsdfs', 'fqsdf', 545),
(47, 'dqsfsdqf', 'fqsfdq', 'fdqsf@fqsdf', 'fqsdfs', 'fsqdfqs', 545),
(48, 'dsqfqsdq', 'fqsdf', 'fqdsfqs@dsqf', 'fqsdfq', 'fsqdfqsf', 545),
(49, 'dqsfdqsf', 'fqsdfqs', 'fqsdf@sdqfqsf', 'fsqdfqsf', 'fsqdfdqs', 545),
(50, 'qsdfqdsf', 'fdsqfdqs', 'fdsqfqsd@sdqffqfs', 'fqsdfqsf', 'fqdsfqsd', 545),
(51, 'dqsfqdsf', 'fdqsf', 'fdsqfqdsf@fdqjsdfd', 'fqdfsqdf', 'fqdsfqsf', 545),
(52, 'fqsdfqs', 'fqsdfqs', 'fqsdfq@qsdfsqdf', 'fsqdfqsdf', 'fsqdfqsdf', 1745),
(53, 'fqsfd', 'fqfd', 'fqfdqsf@qfdqffdq', 'fqdfqf', 'fsqfqdsf', 780),
(54, 'kjlsdqfjmlqf', 'fldqskmfj', 'fqdsfdjqsf@jklqmlkfdjq', 'fqfkqf', 'fqdfqf', 2273),
(55, 'fdqfd', 'fqdsfq', 'fqsdf@qdfqsf', 'fqsdfsqsf', 'fqsdfq', 2273),
(56, 'qsdfsqdf', 'fqdsfq', 'fdqsfqsd@fdqsf', 'fqdsfqd', 'fqdsfdq', 2273);

-- --------------------------------------------------------

--
-- Structure de la table `commandeLine`
--

CREATE TABLE `commandeLine` (
  `id` int(11) NOT NULL,
  `QuantityOrderer` tinyint(4) NOT NULL,
  `TshirtId` int(11) NOT NULL,
  `CommandeId` int(4) NOT NULL,
  `PriceEach` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `mail`) VALUES
(1, 'denis.gilian@laposte.net'),
(2, 'test@yahoo.com'),
(3, 'youpi@test.com'),
(4, 'modeles@2.com'),
(5, 'panier@1.com'),
(8, 'lkhglkhgj@lkj'),
(9, 'kjfkh@lkjhglh222'),
(10, 'test@1234'),
(11, 'TEST@456');

-- --------------------------------------------------------

--
-- Structure de la table `Tshirt`
--

CREATE TABLE `Tshirt` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Tshirt`
--

INSERT INTO `Tshirt` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'onespace', 'OneSpace pour l\'aventure !', 70, '1.jpg'),
(2, 'dragon', 'Le dragon vous tient au chaud!', 75, '2.jpg'),
(3, 'white', 'simple et cosy', 80, '3.jpg'),
(4, 'rayman', 'Pour les âmes sportives!', 92, '4.jpg'),
(5, 'black', 'lorem ipsum', 25, '5.jpg'),
(6, 'fence', 'top', 42, '6.jpg'),
(7, 'black marin', 'lorem ipsum', 75, '7.jpg'),
(8, 'child', 'lorem ipsum', 102, '8.jpg'),
(9, 'coq', 'lorem ipsum', 75, '9.jpg'),
(10, 'blue marin', 'lorem ipsum', 75, '10.jpg'),
(11, 'hypnose', 'lorem ipsum', 75, '11.jpg'),
(12, 'blue', 'lorem ipsum', 75, '12.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandeLine`
--
ALTER TABLE `commandeLine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tshirt_Id` (`TshirtId`),
  ADD KEY `Commande_Id` (`CommandeId`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Tshirt`
--
ALTER TABLE `Tshirt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `commandeLine`
--
ALTER TABLE `commandeLine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `Tshirt`
--
ALTER TABLE `Tshirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandeLine`
--
ALTER TABLE `commandeLine`
  ADD CONSTRAINT `commandeLine_ibfk_1` FOREIGN KEY (`TshirtId`) REFERENCES `Tshirt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandeLine_ibfk_2` FOREIGN KEY (`CommandeId`) REFERENCES `commande` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
