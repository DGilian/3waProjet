-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 31 Janvier 2018 à 10:28
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
(1, 'gilian', 'denis', 'denis@mail', 'rue 16', 'courbevoie', 1500),
(2, 'fqsdfqf', 'fsqdff', 'fsdqf', 'fsdqf', 'fsdqfqdsf', 3),
(3, 'fqsfdf', 'qsfqfsdfqsfdq', 'fqsdfqdf', 'fqsdfq', 'fqdsfqf', 494),
(4, 'dqsf', 'fqsdf', 'fdsqff@test', 'fdswf', 'fdsf', 494),
(5, 'fqdsfklj', 'vdsfklj', 'fqdsfdqs@fdksqmjlfjlkqf', 'fsqdmklfjmqlsdkjfqsdmlkjfqsmlfj', 'fqsdlkjkfmqslkdjkfmsqdlfjsqdmlkfjsqd', 75),
(6, 'fqdsfklj', 'vdsfklj', 'fqdsfdqs@fdksqmjlfjlkqf', 'fsqdmklfjmqlsdkjfqsdmlkjfqsmlfj', 'fqsdlkjkfmqslkdjkfmsqdlfjsqdmlkfjsqd', 75),
(7, 'fqdsfklj', 'vdsfklj', 'fqdsfdqs@fdksqmjlfjlkqf', 'fsqdmklfjmqlsdkjfqsdmlkjfqsmlfj', 'fqsdlkjkfmqslkdjkfmsqdlfjsqdmlkfjsqd', 75),
(8, 'fdqsf', 'fqsdf', 'fqssf@xn--qf-hea', 'fqdsf', 'fqsdf', 545),
(9, 'fdqsf', 'fqsdf', 'fqssf@xn--qf-hea', 'fqdsf', 'fqsdf', 545),
(10, 'fdqsf', 'fqsdf', 'fqssf@xn--qf-hea', 'fqdsf', 'fqsdf', 545),
(11, 'fdqs', 'fqdsf', 'fdsqf@stest', 'lkfldqjs@1986', 'fqsdfq', 545),
(12, 'fqfd', 'fdqfd', 'fdqsf@19868686868', 'fqsfd', 'dfqfq', 545),
(13, 'fqsf', 'fsdqf', 'fdsqf@fqfd', 'fdqsfq@tsest', 'fqsfqfq', 545),
(14, 'fqfqsdf', 'fdsqf', 'fsqf@gwstgsq', 'fdsqfqf', 'fdqsfq', 545),
(15, 'fqsdf', 'fsqdf', 'fdsqf@xn--qf-dja', 'fdsqfd', 'fdsqfd', 545),
(16, 'fqfqsf', 'dfdsqsdfqf', 'fqsf@fqsf', 'fqsf', 'fqdsfq', 920);

-- --------------------------------------------------------

--
-- Structure de la table `commande_line`
--

CREATE TABLE `commande_line` (
  `id` int(11) NOT NULL,
  `QuantityOrderer` tinyint(4) NOT NULL,
  `Tshirt_Id` int(11) NOT NULL,
  `Commande_Id` int(4) NOT NULL,
  `Price_Each` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commande_line`
--

INSERT INTO `commande_line` (`id`, `QuantityOrderer`, `Tshirt_Id`, `Commande_Id`, `Price_Each`) VALUES
(1, 3, 2, 1, 75),
(2, 2, 2, 2, 75);

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
  `quantity_in_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Tshirt`
--

INSERT INTO `Tshirt` (`id`, `name`, `description`, `quantity_in_stock`, `price`, `image`) VALUES
(1, 'onespace', 'OneSpace pour l\'aventure !', 40, 70, '1.jpg'),
(2, 'dragon', 'Le dragon vous tient au chaud!', 2, 75, '2.jpg'),
(3, 'white', 'simple et cosy', 100, 80, '3.jpg'),
(4, 'rayman', 'Pour les âmes sportives!', 2, 92, '4.jpg'),
(5, 'black', 'lorem ipsum', 2, 25, '5.jpg'),
(6, 'fence', 'top', 2, 42, '6.jpg'),
(7, 'black marin', 'lorem ipsum', 2, 75, '7.jpg'),
(8, 'child', 'lorem ipsum', 2, 102, '8.jpg'),
(9, 'coq', 'lorem ipsum', 2, 75, '9.jpg'),
(10, 'blue marin', 'lorem ipsum', 2, 75, '10.jpg'),
(11, 'hypnose', 'lorem ipsum', 2, 75, '11.jpg'),
(12, 'blue', 'lorem ipsum', 2, 75, '12.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_line`
--
ALTER TABLE `commande_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tshirt_Id` (`Tshirt_Id`),
  ADD KEY `Commande_Id` (`Commande_Id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `commande_line`
--
ALTER TABLE `commande_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- Contraintes pour la table `commande_line`
--
ALTER TABLE `commande_line`
  ADD CONSTRAINT `commande_line_ibfk_1` FOREIGN KEY (`Tshirt_Id`) REFERENCES `Tshirt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_line_ibfk_2` FOREIGN KEY (`Commande_Id`) REFERENCES `commande` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
