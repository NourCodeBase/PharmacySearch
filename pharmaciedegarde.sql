-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 juil. 2024 à 23:54
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pharmaciedegarde`
--

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `locations`
--

INSERT INTO `locations` (`id`, `image`, `name`, `address`, `lat`, `lng`, `ville`) VALUES
(1, 'img/pharmacy/pharmacy_1.jpg', 'Pharmacie Bab Boujloud', '30 Rue Boujloud, Ville Nouvelle, Fès', '34.06420000', '-5.00230000', 'Fes'),
(2, 'img/pharmacy/pharmacy_2.jpg', 'Pharmacie Asmaa', '25 Avenue Mohammed V, Fès-el-Bali, Fès', '34.06180000', '-4.99810000', 'Fes'),
(3, 'img/pharmacy/pharmacy_3.jpg', 'Pharmacie du Centre', 'Borj Fez Mall, Avenue Hassan II, Fès', '34.05420000', '-4.98970000', 'Fes'),
(4, 'img/pharmacy/pharmacy_4.jpg', 'Pharmacie Atlas', '1 Derb el Maghaz, Fès-el-Bali, Fès', '34.06030000', '-4.99520000', 'Fes'),
(5, 'img/pharmacy/pharmacy_5.jpg', 'Pharmacie Al Wifaq', '115 Avenue des Forces Armées Royales, Ziat, Fès', '34.10280000', '-5.02140000', 'Fes'),
(6, 'img/pharmacy/pharmacy_6.jpg', 'Pharmacie Fès Tannerie', '1 Rue Horna, Fès-el-Bali, Fès', '34.06250000', '-4.99470000', 'Fes'),
(7, 'img/pharmacy/pharmacy_7.jpg', 'Pharmacie Ain Nokbi', 'Ain Nokbi Mall, Route d\'Imouzzer, Fès', '34.03870000', '-5.00780000', 'Fes'),
(8, 'img/pharmacy/pharmacy_8.jpg', 'Pharmacie Saâdane', 'Rue Bab Jdid, Fès Jdid, Fès', '34.07210000', '-4.98320000', 'Fes'),
(9, 'img/pharmacy/pharmacy_9.jpg', 'Pharmacie Ibn Sina', '12 Rue des Mérinides, Fès-el-Bali, Fès', '34.06380000', '-4.99290000', 'Fes'),
(10, 'img/pharmacy/pharmacy_10.jpg', 'Pharmacie Atlas II', '7 Derb el Maghaz, Fès-el-Bali, Fès', '34.06000000', '-4.99580000', 'Fes'),
(11, 'img/pharmacy/pharmacy_11.jpg', 'Pharmacie Ziat', '12 Rue Hassan II, Ziat, Fès', '34.10310000', '-5.02100000', 'Fes'),
(12, 'img/pharmacy/pharmacy_12.jpg', 'Pharmacie Ibn Khaldoun', '3 Rue Mohammed V,  Beni Makada, Fès', '34.02170000', '-4.96780000', 'Fes'),
(13, 'img/pharmacy/pharmacy_13.jpg', 'Pharmacie Al Amal', '9 Boulevard Zerktouni, Hay Nahda, Fès', '34.01540000', '-4.99210000', 'Fes'),
(14, 'img/pharmacy/pharmacy_14.jpg', 'Pharmacie Souani', '5 Rue Al Moquadim, Souani, Fès', '34.04820000', '-5.01350000', 'Fes'),
(15, 'img/pharmacy/pharmacy_15.jpg', 'Pharmacie Lisieux', '2 Rue d\'Angleterre, Cartier Européen, Fès', '34.08120000', '-4.97480000', 'Fes'),
(16, 'img/pharmacy/pharmacy_1.jpg', 'Pharmacie Boulevard Mohammed Diouri', '18 Rue Hassan II, Casablanca', '33.57270000', '-7.60310000', 'Casablanca'),
(17, 'img/pharmacy/pharmacy_2.jpg', 'Pharmacie Boulevard Anfa', '5 Rue Prince Moulay Abdallah, Casablanca', '33.56840000', '-7.61270000', 'Casablanca'),
(18, 'img/pharmacy/pharmacy_3.jpg', 'Pharmacie Boulevard Zerktouni', '2 Rue Mohammed Diouri, Casablanca', '33.57320000', '-7.60280000', 'Casablanca'),
(19, 'img/pharmacy/pharmacy_4.jpg', 'Pharmacie Boulevard Oued Eddahab', '11 Rue Hassan II, Casablanca', '33.54870000', '-7.59140000', 'Casablanca'),
(20, 'img/pharmacy/pharmacy_5.jpg', 'Pharmacie Boulevard Al Massira', '9 Rue Ibn Battuta, Casablanca', '33.53920000', '-7.58470000', 'Casablanca'),
(21, 'img/pharmacy/pharmacy_6.jpg', 'Pharmacie Anfa Place', 'Anfa Place Shopping Center, Quartier Gauthier, Casablanca', '33.58240000', '-7.62170000', 'Casablanca'),
(22, 'img/pharmacy/pharmacy_7.jpg', 'Pharmacie Morocco Mall', 'Morocco Mall, Ain Chock, Casablanca', '33.59780000', '-7.63420000', 'Casablanca'),
(23, 'img/pharmacy/pharmacy_8.jpg', 'Pharmacie Marina Shopping Center', 'Marina Shopping Center, Ain Diab, Casablanca', '33.57890000', '-7.65240000', 'Casablanca'),
(24, 'img/pharmacy/pharmacy_9.jpg', 'Pharmacie Casablanca Mall', 'Casablanca Mall, Gauthier, Casablanca', '33.58470000', '-7.61820000', 'Casablanca'),
(25, 'img/pharmacy/pharmacy_10.jpg', 'Pharmacie Twin Center', 'Twin Center Shopping Center, Oasis, Casablanca', '33.55280000', '-7.62410000', 'Casablanca'),
(26, 'img/pharmacy/pharmacy_11.jpg', 'Pharmacie Ech-Chems', '17 Rue Ibn Rochd, Quartier des Habbous, Casablanca', '33.56120000', '-7.61740000', 'Casablanca'),
(27, 'img/pharmacy/pharmacy_12.jpg', 'Pharmacie Al Wifaq', '5 Rue Prince Moulay Abdallah, Gauthier, Casablanca', '33.58020000', '-7.61410000', 'Casablanca'),
(28, 'img/pharmacy/pharmacy_13.jpg', 'Pharmacie Ibn Sina', '22 Rue Hassan II, Oasis, Casablanca', '33.55140000', '-7.62570000', 'Casablanca'),
(29, 'img/pharmacy/pharmacy_14.jpg', 'Pharmacie Riad', '9 Boulevard Zerktouni, Maarif, Casablanca', '33.57480000', '-7.60020000', 'Casablanca'),
(30, 'img/pharmacy/pharmacy_15.jpg', 'Pharmacie Atlas', '14 Rue Mohammed Diouri, Roches Noires, Casablanca', '33.54270000', '-7.57980000', 'Casablanca'),
(31, 'img/pharmacy/pharmacy_1.jpg', 'Pharmacie de la Corniche', '2 Rue Ibn Battuta, Corniche', '33.58720000', '-7.64170000', 'Casablanca'),
(32, 'img/pharmacy/pharmacy_2.jpg', 'Pharmacie du Parc Yasmina', '1 Avenue Hassan II, Yasmina', '33.59420000', '-7.66210000', 'Casablanca'),
(33, 'img/pharmacy/pharmacy_3.jpg', 'Pharmacie de l\'Ancienne Médina', '8 Derb el Maghaz, Ancienne Médina', '33.56780000', '-7.59820000', 'Casablanca'),
(34, 'img/pharmacy/pharmacy_4.jpg', 'Pharmacie Al Amal', '12 Rue Moulay Youssef, Californie', '33.53280000', '-7.56470000', 'Casablanca'),
(35, 'img/pharmacy/pharmacy_5.jpg', 'Pharmacie Souani', '7 Rue Al Quawiyin, Quartier des Arts', '33.57040000', '-7.60520000', 'Casablanca');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
