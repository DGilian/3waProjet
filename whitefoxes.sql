-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 26 Janvier 2018 à 19:35
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
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
  `user_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `tax_rate` tinyint(4) NOT NULL,
  `tax_amount` double NOT NULL,
  `creationtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `user_id`, `total_amount`, `tax_rate`, `tax_amount`, `creationtime`) VALUES
(1, 1, 0, 20, 12.5, '2018-01-09 17:15:25'),
(6, 1, 150, 20, 12.5, '2018-01-09 17:20:47');

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

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `adresse` varchar(120) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `FirstName`, `LastName`, `Email`, `adresse`, `city`) VALUES
(1, 'jean', 'louis', 'david@laposte.net', 'rue du coiffeur', 'cherbourg'),
(2, 'paul', 'henry', 'dupont@laposte.net', 'rue du port', 'cherbourg'),
(3, 'fqdsfq', 'fsqdmlfkj', 'fdqsf@fqsdf', 'fqsdf', 'fdqsf'),
(4, 'gilian', 'denis', 'test@test', 'rue test', 'test'),
(5, 'gilian', 'denis', 'test@test', 'rue test', 'test'),
(6, 'fqdsf', 'fqsddfkj', 'fqdsf@test', 'tqsfdljqsf', 'fqsdfqsfqds'),
(7, 'hello', 'hello', 'est@test', 'hello', 'hello');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `commande_line`
--
ALTER TABLE `commande_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commande_line`
--
ALTER TABLE `commande_line`
  ADD CONSTRAINT `commande_line_ibfk_1` FOREIGN KEY (`Tshirt_Id`) REFERENCES `Tshirt` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commande_line_ibfk_2` FOREIGN KEY (`Commande_Id`) REFERENCES `commande` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
