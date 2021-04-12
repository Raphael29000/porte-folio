-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2021 at 02:13 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestehpad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `idPersonnel`) VALUES
(1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `allergie`
--

CREATE TABLE `allergie` (
  `idAllergie` int(10) UNSIGNED NOT NULL,
  `nomAllergie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allergie`
--

INSERT INTO `allergie` (`idAllergie`, `nomAllergie`) VALUES
(1, 'Noix'),
(2, 'Crustacés'),
(3, 'Lactose');

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `idChef` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`idChef`, `idPersonnel`) VALUES
(3, 1),
(4, 3),
(2, 7),
(1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `contacturgence`
--

CREATE TABLE `contacturgence` (
  `idContactUrgence` int(10) UNSIGNED NOT NULL,
  `nomContact` varchar(45) DEFAULT NULL,
  `numContact` varchar(45) DEFAULT NULL,
  `relationUrgence` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacturgence`
--

INSERT INTO `contacturgence` (`idContactUrgence`, `nomContact`, `numContact`, `relationUrgence`) VALUES
(1, 'Hammett Barry', '06 45 81 06 62', 'Fraterie'),
(2, 'Lilah Whitehead', '06 85 27 92 12', 'Fraterie'),
(3, 'Yetta Woods', '06 97 87 46 19', 'Petit-Enfant'),
(4, 'Raya Whitney', '06 34 84 55 01', 'Petit-Enfant'),
(5, 'Athena Holden', '06 81 46 37 65', 'Fraterie'),
(6, 'Hermione Alford', '06 43 61 52 24', 'Enfant'),
(7, 'Austin Strong', '06 92 12 52 24', 'Petit-Enfant'),
(8, 'Sage Wilder', '06 97 48 50 50', 'Enfant'),
(9, 'Colton Arnold', '06 36 14 97 44', 'Fraterie'),
(10, 'Raja Holland', '06 07 71 94 23', 'Petit-Enfant'),
(11, 'Hu Elliott', '06 62 19 40 65', 'Enfant'),
(12, 'Fatima Abbott', '06 43 49 75 42', 'Enfant'),
(13, 'Claire Hogan', '06 43 93 73 71', 'Fraterie'),
(14, 'Ashely Orr', '06 30 89 33 82', 'Fraterie'),
(15, 'Buckminster Molina', '06 84 64 72 68', 'Enfant'),
(16, 'Lawrence Morgan', '06 44 58 82 28', 'Fraterie'),
(17, 'Kimberly Estrada', '06 86 43 49 93', 'Enfant'),
(18, 'Iris Maynard', '06 10 26 52 17', 'Enfant'),
(19, 'Yvette Howell', '06 29 57 66 30', 'Enfant'),
(20, 'Belle Williamson', '06 52 94 97 91', 'Petit-Enfant'),
(21, 'Chaney Watts', '06 29 99 19 45', 'Fraterie'),
(22, 'Kelly Poole', '06 74 08 59 97', 'Petit-Enfant'),
(23, 'Eleanor Shields', '06 11 06 76 87', 'Fraterie'),
(24, 'Thor Hull', '06 44 70 26 65', 'Fraterie'),
(25, 'Scarlet Henry', '06 00 08 59 42', 'Petit-Enfant'),
(26, 'Fuller Simon', '06 84 03 54 47', 'Enfant'),
(27, 'Brynn Pitts', '06 23 70 81 18', 'Petit-Enfant'),
(28, 'Hillary Lyons', '06 58 26 40 81', 'Petit-Enfant'),
(29, 'Barbara Daugherty', '06 38 68 04 52', 'Petit-Enfant'),
(30, 'Brent Newton', '06 93 38 27 61', 'Petit-Enfant'),
(31, 'Stacey Guerrero', '06 45 58 38 90', 'Petit-Enfant'),
(32, 'Kenyon Lindsey', '06 83 62 71 53', 'Petit-Enfant'),
(33, 'Mechelle Pierce', '06 79 19 09 30', 'Enfant'),
(34, 'Maya Perez', '06 09 70 92 43', 'Petit-Enfant'),
(35, 'Ciaran Cochran', '06 69 31 48 74', 'Enfant'),
(36, 'Vance Galloway', '06 90 10 59 74', 'Fraterie'),
(37, 'Rose Castro', '06 42 12 71 92', 'Enfant'),
(38, 'Stewart Bridges', '06 64 14 27 13', 'Enfant'),
(39, 'Kuame Acosta', '06 24 35 77 86', 'Enfant'),
(40, 'Hayden Vaughan', '06 56 38 39 40', 'Enfant'),
(41, 'Garrison Hutchinson', '06 51 25 94 44', 'Enfant'),
(42, 'Amery Irwin', '06 20 94 48 82', 'Fraterie'),
(43, 'Briar Finley', '06 91 98 70 77', 'Enfant'),
(44, 'Prescott Dotson', '06 86 86 94 71', 'Enfant'),
(45, 'Shellie Wilkins', '06 30 75 65 46', 'Fraterie'),
(46, 'Ronan Fields', '06 89 13 24 91', 'Fraterie'),
(47, 'Harper Pope', '06 12 76 05 64', 'Petit-Enfant'),
(48, 'Maia Booth', '06 04 31 27 81', 'Enfant'),
(49, 'Felix Kinney', '06 49 59 88 72', 'Enfant'),
(50, 'Murphy Carpenter', '06 31 49 50 84', 'Fraterie'),
(51, 'BBBB', '0676767676', 'BBBB'),
(52, 'BBBB', '0676767676', 'BBBB'),
(53, 'AA', 'AA', 'AA'),
(54, 'AA', 'AA', 'AA'),
(55, 'gegeg', '0202020202', 'QFF'),
(56, 'gegeg', '0202020202', 'QFF'),
(57, 'gegeg', '0202020202', 'QFF'),
(58, 'gegeg', '0202020202', 'QFF'),
(59, 'zzfd', '1234567890', 'zdd'),
(60, 'ZZ', '12121212', 'ZZ'),
(61, 'AZE', '1212121212', 'TATA'),
(62, 'TITI', '1234567890', 'TITI'),
(63, 'TITI', '1234567890', 'TITI'),
(64, 'SFSFSF', '42424', 'FZZF'),
(65, 'FVSF', '2113213', 'FF'),
(66, 'DFF', '131313', 'FFZF'),
(67, 'DDEDG', '42424', 'GEGEGEG'),
(68, 'tefce', '43313', 'tote'),
(69, 'GVGEGE', '313', 'ZFZF'),
(70, 'ddad', '1313', 'dad'),
(71, 'dad', '222', 'adad'),
(72, 'CFEF', '21', 'FEF'),
(73, 'dada', '113131', 'adad'),
(74, 'dada', '113131', 'adad'),
(75, 'dada', '113131', 'adad'),
(76, 'frere', '1234567890', 'toto'),
(77, 'EGEG', '24', 'DVDG'),
(78, 'EGEG', '24', 'DVDG'),
(79, 'EGEG', '24', 'DVDG'),
(80, 'EGEG', '24', 'DVDG'),
(81, 'EGEG', '24', 'DVDG'),
(82, 'EGEG', '24', 'DVDG'),
(83, 'EGEG', '24', 'DVDG');

-- --------------------------------------------------------

--
-- Table structure for table `directeur`
--

CREATE TABLE `directeur` (
  `idDirecteur` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directeur`
--

INSERT INTO `directeur` (`idDirecteur`, `idPersonnel`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `dossiermedical`
--

CREATE TABLE `dossiermedical` (
  `idDossierMedical` int(10) UNSIGNED NOT NULL,
  `idRegime` int(10) UNSIGNED NOT NULL,
  `idResident` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dossiermedical`
--

INSERT INTO `dossiermedical` (`idDossierMedical`, `idRegime`, `idResident`) VALUES
(1, 1, 4),
(2, 2, 5),
(3, 3, 6),
(4, 2, 1),
(5, 1, 2),
(28, 1, 69),
(29, 2, 70),
(32, 1, 71),
(36, 1, 75),
(37, 2, 76);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `idEmploye` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL,
  `idEquipe` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`idEmploye`, `idPersonnel`, `idEquipe`) VALUES
(1, 2, 4),
(2, 6, 4),
(4, 15, 5),
(5, 17, 5),
(7, 4, 6),
(8, 19, 6),
(9, 11, 6),
(10, 13, 6),
(11, 14, 6),
(12, 5, 7),
(13, 16, 7),
(14, 9, 8),
(15, 12, 8),
(3, 8, 9),
(6, 20, 9);

-- --------------------------------------------------------

--
-- Table structure for table `equipe`
--

CREATE TABLE `equipe` (
  `idEquipe` int(10) UNSIGNED NOT NULL,
  `horaireEquipe` varchar(45) NOT NULL,
  `idChef` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipe`
--

INSERT INTO `equipe` (`idEquipe`, `horaireEquipe`, `idChef`, `idPersonnel`) VALUES
(4, 'Jour', 1, 18),
(5, 'Jour', 3, 1),
(6, 'Matin', 2, 7),
(7, 'Soir', 2, 7),
(8, 'Nuit', 2, 7),
(9, 'Jour', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `etablissement`
--

CREATE TABLE `etablissement` (
  `idEtablissement` int(10) UNSIGNED NOT NULL,
  `nomEtablissement` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etablissement`
--

INSERT INTO `etablissement` (`idEtablissement`, `nomEtablissement`) VALUES
(1, 'Les Jardins des Acacias'),
(2, 'Les Tulipes Bleus');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `idEvenement` int(10) UNSIGNED NOT NULL,
  `graviteEvent` varchar(45) NOT NULL,
  `dateEmission` datetime NOT NULL,
  `titreEvent` varchar(45) NOT NULL,
  `descriptionEvent` varchar(500) NOT NULL,
  `idRegistre` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`idEvenement`, `graviteEvent`, `dateEmission`, `titreEvent`, `descriptionEvent`, `idRegistre`, `idPersonnel`) VALUES
(1, '3', '2021-03-17 14:48:32', 'robinet 2eme étage ou 3eme', 'Bah le robinet quoi!', 5, 2),
(2, '2', '2021-02-12 00:00:00', 'Chute résident', 'Chute Os cassé', 1, 4),
(3, '1', '1992-12-26 00:00:00', 'coucou', 'toto va à la plage', 6, 4),
(4, '1', '2021-03-16 08:57:46', 'toto', 'toto va faire caca', 7, 21),
(5, '1', '2021-03-16 08:57:46', 'toto', 'toto va faire caca', 7, 21),
(6, '1', '2021-03-16 08:59:02', 'coucou', 'couocou', 7, 21),
(7, '2', '2021-03-16 08:59:43', 'coucou', 'dgsgedz<hsqf', 7, 21),
(8, '1', '2021-03-16 09:03:20', 'coucou', 'mignon', 1, 21),
(9, '1', '2021-03-16 09:03:41', 'tomate', 'tomate pourrie', 2, 21),
(10, '2', '2021-03-16 09:04:06', 'ecran', 'ecran cassé à changer', 3, 21),
(11, '1', '2021-03-16 09:04:42', 'linge', 'laver le linge', 4, 21),
(12, '1', '2021-03-16 09:09:11', 'toto', 'toto me fais chier', 7, 21),
(13, '1', '2021-03-16 09:09:11', 'lard', 'est du lard ou du cochon', 2, 21),
(14, '1', '2021-03-16 09:19:18', 'hrgtzeg', 'écrivez votre texte ..', 7, 21),
(15, '1', '2021-03-16 09:19:30', 'rdgehryehy', 'ryr-ztezt', 7, 21),
(16, '3', '2021-03-16 09:32:44', 'jambe cassé', 'écrivez votre texte ..', 1, 21),
(17, '1', '2021-03-17 14:49:08', 'toto tp', 'écrivez votre texte ..', 5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `listeallergie`
--

CREATE TABLE `listeallergie` (
  `idDossierMedical` int(10) UNSIGNED NOT NULL,
  `idAllergie` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listeallergie`
--

INSERT INTO `listeallergie` (`idDossierMedical`, `idAllergie`) VALUES
(3, 3),
(4, 2),
(4, 3),
(5, 1),
(28, 2),
(28, 3),
(29, 3),
(32, 3),
(36, 1),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listepathologie`
--

CREATE TABLE `listepathologie` (
  `idPathologie` int(10) UNSIGNED NOT NULL,
  `idDossierMedical` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listepathologie`
--

INSERT INTO `listepathologie` (`idPathologie`, `idDossierMedical`) VALUES
(3, 1),
(2, 3),
(3, 3),
(4, 3),
(2, 4),
(4, 4),
(2, 5),
(4, 5),
(2, 29),
(4, 29),
(2, 32),
(2, 36),
(2, 37);

-- --------------------------------------------------------

--
-- Table structure for table `listereunionchef`
--

CREATE TABLE `listereunionchef` (
  `idReunion` int(10) UNSIGNED NOT NULL,
  `idChef` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listereunionchef`
--

INSERT INTO `listereunionchef` (`idReunion`, `idChef`, `idPersonnel`) VALUES
(1, 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `listereuniondirecteur`
--

CREATE TABLE `listereuniondirecteur` (
  `idReunion` int(10) UNSIGNED NOT NULL,
  `idDirecteur` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

--
-- Dumping data for table `listereuniondirecteur`
--

INSERT INTO `listereuniondirecteur` (`idReunion`, `idDirecteur`, `idPersonnel`) VALUES
(1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `listresidentevent`
--

CREATE TABLE `listresidentevent` (
  `idResident` int(10) UNSIGNED NOT NULL,
  `idEvent` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listresidentevent`
--

INSERT INTO `listresidentevent` (`idResident`, `idEvent`) VALUES
(5, 2),
(3, 4),
(7, 4),
(3, 5),
(7, 5),
(3, 7),
(6, 8),
(8, 9),
(1, 12),
(1, 13),
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `pathologie`
--

CREATE TABLE `pathologie` (
  `idPathologie` int(10) UNSIGNED NOT NULL,
  `nomPathologie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathologie`
--

INSERT INTO `pathologie` (`idPathologie`, `nomPathologie`) VALUES
(2, 'Alzheimer'),
(3, 'Diabète'),
(4, 'Colestérol');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `idPersonnel` int(10) UNSIGNED NOT NULL,
  `nomPersonnel` varchar(45) NOT NULL,
  `prenomPersonnel` varchar(45) NOT NULL,
  `identifiant` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `intitulePoste` varchar(45) NOT NULL,
  `idEtablissement` int(10) UNSIGNED NOT NULL,
  `numTelPoste` int(10) UNSIGNED NOT NULL,
  `idService` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`idPersonnel`, `nomPersonnel`, `prenomPersonnel`, `identifiant`, `password`, `intitulePoste`, `idEtablissement`, `numTelPoste`, `idService`) VALUES
(1, 'Torres', 'Maya', 'TorresM', 'Torres', 'Technicien', 1, 1000, 3),
(2, 'Jordan', 'Alvin', 'JordanA', 'Jordan', 'Cuisinier', 1, 1001, 2),
(3, 'Ratliff', 'Xander', 'RatliffX', 'Ratliff', 'Chef Lingère', 1, 1002, 4),
(4, 'Baird', 'Adam', 'BairdA', 'Baird', 'ASH', 1, 1003, 1),
(5, 'Branch', 'Melyssa', 'BranchM', 'Branch', 'ASH', 1, 1004, 1),
(6, 'Hatfield', 'MacKensie', 'HatfieldM', 'Hatfield', 'Cuisinier', 1, 1005, 2),
(7, 'Ball', 'Pearl', 'BallP', 'Ball', 'Medecin', 1, 1006, 1),
(8, 'Tran', 'Abraham', 'TranA', 'Tran', 'Lingère', 1, 1007, 4),
(9, 'Frank', 'Christian', 'FrankC', 'Frank', 'AS', 1, 1008, 1),
(10, 'Atkinson', 'Zelda', 'AtkinsonZ', 'Atkinson', 'Directeur', 1, 1009, 7),
(11, 'Mckay', 'Neil', 'MckayN', 'Mckay', 'AVS', 1, 1010, 1),
(12, 'Elliott', 'Aquila', 'ElliottA', 'Elliott', 'AS', 1, 1011, 1),
(13, 'Maxwell', 'Nash', 'MaxwellN', 'Maxwell', 'AS', 1, 1012, 1),
(14, 'Gay', 'Faith', 'GayF', 'Gay', 'AS', 1, 1013, 1),
(15, 'Barber', 'Haley', 'BarberH', 'Barber', 'Technicien', 1, 1014, 3),
(16, 'Foreman', 'Whilemina', 'ForemanW', 'Foreman', 'AVS', 1, 1015, 1),
(17, 'Roach', 'Miranda', 'RoachM', 'Roach', 'Technicien', 1, 1016, 3),
(18, 'Stanley', 'Courtney', 'StanleyC', 'Stanley', 'Chef Cuisinier', 1, 1017, 2),
(19, 'Ramos', 'Aimee', 'RamosA', 'Ramos', 'ASH', 1, 1018, 1),
(20, 'Chen', 'Camden', 'ChenC', 'Chen', 'Lingère', 1, 1019, 4),
(21, 'Torres', 'Maya', 'Admin', '1234', 'ADMIN', 1, 1000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `regime`
--

CREATE TABLE `regime` (
  `idRegime` int(10) UNSIGNED NOT NULL,
  `nomRegime` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regime`
--

INSERT INTO `regime` (`idRegime`, `nomRegime`) VALUES
(1, 'Normal'),
(2, 'Mixé'),
(3, 'Haché');

-- --------------------------------------------------------

--
-- Table structure for table `registre`
--

CREATE TABLE `registre` (
  `idRegistre` int(10) UNSIGNED NOT NULL,
  `idService` int(10) UNSIGNED NOT NULL,
  `idEtablissement` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registre`
--

INSERT INTO `registre` (`idRegistre`, `idService`, `idEtablissement`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `idResident` int(10) UNSIGNED NOT NULL,
  `nomResident` varchar(45) NOT NULL,
  `prenomResident` varchar(45) NOT NULL,
  `naissanceResident` date DEFAULT NULL,
  `idEtablissement` int(10) UNSIGNED NOT NULL,
  `numSecuResident` varchar(15) NOT NULL,
  `numChambreResident` int(11) NOT NULL,
  `idContactUrgence` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`idResident`, `nomResident`, `prenomResident`, `naissanceResident`, `idEtablissement`, `numSecuResident`, `numChambreResident`, `idContactUrgence`) VALUES
(1, 'Copeland', 'Seth', '1944-12-28', 1, '3 82 05 64 062 ', 100, 1),
(2, 'Suarez', 'Eve', '1924-11-14', 1, '4 57 94 29 511 ', 101, 2),
(3, 'Frederick', 'Leo', '1921-02-02', 1, '4 87 05 45 979 ', 102, 3),
(4, 'Moran', 'Lani', '1933-07-17', 1, '5 91 22 21 315 ', 103, 4),
(5, 'Mccarty', 'Iola', '1932-10-28', 1, '8 56 03 59 395 ', 104, 5),
(6, 'Chase', 'Penelope', '1925-07-15', 1, '4 01 06 82 589 ', 105, 6),
(7, 'Harrison', 'Candice', '1939-03-28', 1, '5 83 15 84 057 ', 106, 7),
(8, 'Benson', 'Rogan', '1927-06-20', 1, '9 25 31 28 782 ', 107, 8),
(9, 'Sutton', 'Yetta', '1942-01-12', 1, '1 10 74 07 952 ', 108, 9),
(10, 'Mueller', 'Wynter', '1937-11-02', 1, '6 01 78 37 408 ', 109, 10),
(11, 'Weaver', 'Beau', '1928-11-17', 1, '7 91 45 38 710 ', 110, 11),
(12, 'Decker', 'Sylvester', '1941-02-07', 1, '8 34 15 83 923 ', 111, 12),
(13, 'Gaines', 'Leilani', '1936-12-20', 1, '1 76 77 42 066 ', 112, 13),
(14, 'Rosales', 'Denton', '1941-06-14', 1, '9 49 28 00 118 ', 113, 14),
(15, 'Maynard', 'Erich', '1924-09-25', 1, '4 16 07 84 337 ', 114, 15),
(16, 'Huff', 'Quynn', '1931-07-18', 1, '3 56 15 21 823 ', 115, 16),
(17, 'Coleman', 'Cleo', '1947-07-07', 1, '6 54 63 20 464 ', 116, 17),
(18, 'Hewitt', 'Giselle', '1938-02-05', 1, '7 91 43 70 935 ', 117, 18),
(19, 'Glenn', 'Wylie', '1928-07-31', 1, '8 11 33 92 243 ', 118, 19),
(20, 'Crane', 'April', '1944-03-27', 1, '6 02 78 50 729 ', 119, 20),
(21, 'Huber', 'Illana', '1944-09-28', 1, '8 55 75 34 570 ', 120, 21),
(22, 'Patrick', 'Jasper', '1944-11-09', 1, '4 15 87 85 877 ', 121, 22),
(23, 'Gamble', 'Maggie', '1925-09-22', 1, '6 97 71 23 522 ', 122, 23),
(24, 'Wade', 'Daquan', '1919-09-30', 1, '2 67 30 07 651 ', 123, 24),
(25, 'Terry', 'Calvin', '1919-04-18', 1, '7 91 66 47 347 ', 124, 25),
(26, 'Sutton', 'Janna', '1933-01-10', 1, '3 51 11 09 990 ', 125, 26),
(27, 'Douglas', 'Lance', '1949-10-27', 1, '9 26 55 40 858 ', 126, 27),
(28, 'Blackwell', 'Brent', '1928-07-07', 1, '7 35 77 25 824 ', 127, 28),
(29, 'Park', 'Hop', '1949-03-06', 1, '4 35 50 81 655 ', 128, 29),
(30, 'Mathis', 'Tamara', '1937-11-24', 1, '0 49 60 65 319 ', 129, 30),
(31, 'Frye', 'Lara', '1937-06-06', 1, '9 57 17 24 985 ', 130, 31),
(32, 'Terrell', 'Ronan', '1944-07-24', 1, '5 75 20 02 754 ', 131, 32),
(33, 'Barrett', 'India', '1943-02-14', 1, '6 41 81 77 381 ', 132, 33),
(34, 'Hoffman', 'Mechelle', '1938-02-28', 1, '9 68 26 61 689 ', 133, 34),
(35, 'Curtis', 'Lanise', '1930-12-27', 1, '1 71 68 32 093 ', 134, 35),
(36, 'Jensen', 'Jerrys', '1920-10-29', 1, '8 38 83 60 434 ', 135, 36),
(69, 'zozette', 'zz', '2020-12-08', 1, '1313', 1313, 70),
(70, 'toto', 'toto', '2020-10-12', 1, '42424', 22, 71),
(71, 'az', 'az', '2021-03-01', 1, '133', 122, 72),
(75, 'albert', 'alberto', '2020-12-15', 1, '12345543212123', 234, 76),
(76, 'dfzf', 'zfz', '2021-03-30', 1, '342412', 42, 83);

-- --------------------------------------------------------

--
-- Table structure for table `reunion`
--

CREATE TABLE `reunion` (
  `idReunion` int(10) UNSIGNED NOT NULL,
  `dateReunion` datetime NOT NULL,
  `titreReunion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reunion`
--

INSERT INTO `reunion` (`idReunion`, `dateReunion`, `titreReunion`) VALUES
(1, '2021-02-23 13:47:00', 'rutrum'),
(2, '2021-12-02 15:25:00', 'Vivamus nibh dolor,'),
(3, '2021-03-30 07:11:00', 'sollicitudin orci'),
(4, '2021-11-02 04:08:00', 'urna suscipit nonummy.'),
(5, '2021-03-20 07:27:00', 'a felis ullamcorper viverra.'),
(6, '2021-10-15 04:25:00', 'ante bibendum'),
(7, '2021-01-03 10:59:00', 'eget'),
(8, '2021-04-19 02:00:00', 'et, rutrum eu, ultrices'),
(9, '2021-09-03 14:53:00', 'iaculis odio.'),
(10, '2021-12-08 15:47:00', 'Nulla tincidunt,'),
(11, '2021-06-20 14:44:00', 'sem ut cursus'),
(12, '2021-12-18 18:47:00', 'quam a felis'),
(13, '2020-12-18 10:59:00', 'quis diam luctus'),
(14, '2021-09-06 07:00:00', 'interdum. Nunc sollicitudin commodo ipsum.'),
(15, '2020-11-23 17:44:00', 'sit amet ante. Vivamus'),
(16, '2021-10-08 20:11:00', 'non, cursus non, egestas'),
(17, '2020-11-07 22:31:00', 'natoque penatibus et'),
(18, '2021-09-26 06:22:00', 'vulputate'),
(19, '2021-12-05 18:53:00', 'sem. Pellentesque ut'),
(20, '2022-01-23 02:44:00', 'vulputate dui, nec');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `idService` int(10) UNSIGNED NOT NULL,
  `nomService` varchar(45) NOT NULL,
  `idEtablissement` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`idService`, `nomService`, `idEtablissement`) VALUES
(1, 'Medical', 1),
(2, 'Cuisine', 1),
(3, 'Tech', 1),
(4, 'Lingerie', 1),
(5, 'Global', 1),
(6, 'Admin', 1),
(7, 'Direction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visite`
--

CREATE TABLE `visite` (
  `idVisite` int(10) UNSIGNED NOT NULL,
  `dateVisite` datetime NOT NULL,
  `idDirecteur` int(10) UNSIGNED NOT NULL,
  `idPersonnel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visite`
--

INSERT INTO `visite` (`idVisite`, `dateVisite`, `idDirecteur`, `idPersonnel`) VALUES
(1, '2021-12-30 06:32:00', 1, 10),
(2, '2021-05-26 05:37:00', 1, 10),
(3, '2021-09-07 03:53:00', 1, 10),
(4, '2021-06-30 14:04:00', 1, 10),
(5, '2021-02-04 10:56:00', 1, 10),
(6, '2021-01-19 08:49:00', 1, 10),
(7, '2021-02-23 22:28:00', 1, 10),
(8, '2021-11-06 10:20:00', 1, 10),
(9, '2021-06-22 14:00:00', 1, 10),
(10, '2020-11-24 11:46:00', 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`,`idPersonnel`),
  ADD KEY `fk_Admin_Personnel1_idx` (`idPersonnel`);

--
-- Indexes for table `allergie`
--
ALTER TABLE `allergie`
  ADD PRIMARY KEY (`idAllergie`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`idChef`,`idPersonnel`),
  ADD KEY `fk_Chef_Personnel1_idx` (`idPersonnel`);

--
-- Indexes for table `contacturgence`
--
ALTER TABLE `contacturgence`
  ADD PRIMARY KEY (`idContactUrgence`);

--
-- Indexes for table `directeur`
--
ALTER TABLE `directeur`
  ADD PRIMARY KEY (`idDirecteur`,`idPersonnel`),
  ADD KEY `fk_Directeur_Personnel1_idx` (`idPersonnel`);

--
-- Indexes for table `dossiermedical`
--
ALTER TABLE `dossiermedical`
  ADD PRIMARY KEY (`idDossierMedical`),
  ADD KEY `fk_DossierMedical_Resident1_idx` (`idResident`),
  ADD KEY `fk_regime_idx` (`idRegime`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`idEmploye`,`idPersonnel`),
  ADD KEY `fk_Employe_Personnel1_idx` (`idPersonnel`),
  ADD KEY `fk_Employe_Equipe1_idx` (`idEquipe`);

--
-- Indexes for table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`idEquipe`),
  ADD KEY `fk_Chef1_idx` (`idChef`,`idPersonnel`);

--
-- Indexes for table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`idEtablissement`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`idEvenement`),
  ADD KEY `fk_Evenement_Registre1_idx` (`idRegistre`),
  ADD KEY `fk_Evenement_Personnel1_idx` (`idPersonnel`);

--
-- Indexes for table `listeallergie`
--
ALTER TABLE `listeallergie`
  ADD PRIMARY KEY (`idDossierMedical`,`idAllergie`),
  ADD KEY `fk_DossierMedical_has_Allergie_DossierMedical1_idx` (`idDossierMedical`),
  ADD KEY `fk_allergie_idx` (`idAllergie`);

--
-- Indexes for table `listepathologie`
--
ALTER TABLE `listepathologie`
  ADD PRIMARY KEY (`idPathologie`,`idDossierMedical`),
  ADD KEY `fk_Pathologie_has_DossierMedical_DossierMedical1_idx` (`idDossierMedical`),
  ADD KEY `fk_Pathologie_has_DossierMedical_Pathologie1_idx` (`idPathologie`);

--
-- Indexes for table `listereunionchef`
--
ALTER TABLE `listereunionchef`
  ADD PRIMARY KEY (`idReunion`,`idChef`,`idPersonnel`),
  ADD KEY `fk_Reunion_has_Chef_Chef1_idx` (`idChef`,`idPersonnel`),
  ADD KEY `fk_Reunion_has_Chef_Reunion1_idx` (`idReunion`);

--
-- Indexes for table `listereuniondirecteur`
--
ALTER TABLE `listereuniondirecteur`
  ADD PRIMARY KEY (`idDirecteur`,`idPersonnel`,`idReunion`),
  ADD KEY `fk_Reunion_has_Directeur_Directeur1_idx` (`idDirecteur`,`idPersonnel`),
  ADD KEY `fk_Reunion_has_Directeur_Reunion1_idx` (`idReunion`);

--
-- Indexes for table `listresidentevent`
--
ALTER TABLE `listresidentevent`
  ADD PRIMARY KEY (`idResident`,`idEvent`),
  ADD KEY `fk_event_idx` (`idEvent`);

--
-- Indexes for table `pathologie`
--
ALTER TABLE `pathologie`
  ADD PRIMARY KEY (`idPathologie`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`idPersonnel`),
  ADD KEY `fk_idEtab_idx` (`idEtablissement`),
  ADD KEY `fk_service_idx` (`idService`);

--
-- Indexes for table `regime`
--
ALTER TABLE `regime`
  ADD PRIMARY KEY (`idRegime`);

--
-- Indexes for table `registre`
--
ALTER TABLE `registre`
  ADD PRIMARY KEY (`idRegistre`),
  ADD KEY `fk_Registre_Service1_idx` (`idService`),
  ADD KEY `fk_idEtabReg_idx` (`idEtablissement`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD PRIMARY KEY (`idResident`),
  ADD KEY `fk_Resident_Etablissement1_idx` (`idEtablissement`),
  ADD KEY `fk_Resident_ContactUrgence1_idx` (`idContactUrgence`);

--
-- Indexes for table `reunion`
--
ALTER TABLE `reunion`
  ADD PRIMARY KEY (`idReunion`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idService`),
  ADD KEY `fk_Service_Etablissement1_idx` (`idEtablissement`);

--
-- Indexes for table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`idVisite`),
  ADD KEY `fk_Visite_Directeur1_idx` (`idDirecteur`,`idPersonnel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allergie`
--
ALTER TABLE `allergie`
  MODIFY `idAllergie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `idChef` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacturgence`
--
ALTER TABLE `contacturgence`
  MODIFY `idContactUrgence` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `directeur`
--
ALTER TABLE `directeur`
  MODIFY `idDirecteur` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dossiermedical`
--
ALTER TABLE `dossiermedical`
  MODIFY `idDossierMedical` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `idEmploye` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `idEquipe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `etablissement`
--
ALTER TABLE `etablissement`
  MODIFY `idEtablissement` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `idEvenement` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pathologie`
--
ALTER TABLE `pathologie`
  MODIFY `idPathologie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `idPersonnel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `regime`
--
ALTER TABLE `regime`
  MODIFY `idRegime` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registre`
--
ALTER TABLE `registre`
  MODIFY `idRegistre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resident`
--
ALTER TABLE `resident`
  MODIFY `idResident` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `reunion`
--
ALTER TABLE `reunion`
  MODIFY `idReunion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `idService` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visite`
--
ALTER TABLE `visite`
  MODIFY `idVisite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_Admin_Personnel1` FOREIGN KEY (`idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `fk_Chef_Personnel1` FOREIGN KEY (`idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `directeur`
--
ALTER TABLE `directeur`
  ADD CONSTRAINT `fk_Directeur_Personnel1` FOREIGN KEY (`idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dossiermedical`
--
ALTER TABLE `dossiermedical`
  ADD CONSTRAINT `fk_DossierMedical_Resident1` FOREIGN KEY (`idResident`) REFERENCES `resident` (`idResident`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_regime` FOREIGN KEY (`idRegime`) REFERENCES `regime` (`idRegime`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `fk_Employe_Equipe1` FOREIGN KEY (`idEquipe`) REFERENCES `equipe` (`idEquipe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Employe_Personnel1` FOREIGN KEY (`idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `equipe`
--
ALTER TABLE `equipe`
  ADD CONSTRAINT `fk_Chef1` FOREIGN KEY (`idChef`,`idPersonnel`) REFERENCES `chef` (`idChef`, `idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `fk_Evenement_Personnel1` FOREIGN KEY (`idPersonnel`) REFERENCES `personnel` (`idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Evenement_Registre1` FOREIGN KEY (`idRegistre`) REFERENCES `registre` (`idRegistre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listeallergie`
--
ALTER TABLE `listeallergie`
  ADD CONSTRAINT `fk_DossierMedical_has_Allergie_DossierMedical1` FOREIGN KEY (`idDossierMedical`) REFERENCES `dossiermedical` (`idDossierMedical`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_allergie` FOREIGN KEY (`idAllergie`) REFERENCES `allergie` (`idAllergie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listepathologie`
--
ALTER TABLE `listepathologie`
  ADD CONSTRAINT `fk_Pathologie_has_DossierMedical_DossierMedical1` FOREIGN KEY (`idDossierMedical`) REFERENCES `dossiermedical` (`idDossierMedical`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pathologie_has_DossierMedical_Pathologie1` FOREIGN KEY (`idPathologie`) REFERENCES `pathologie` (`idPathologie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listereunionchef`
--
ALTER TABLE `listereunionchef`
  ADD CONSTRAINT `fk_Reunion_has_Chef_Chef1` FOREIGN KEY (`idChef`,`idPersonnel`) REFERENCES `chef` (`idChef`, `idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reunion_has_Chef_Reunion1` FOREIGN KEY (`idReunion`) REFERENCES `reunion` (`idReunion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listereuniondirecteur`
--
ALTER TABLE `listereuniondirecteur`
  ADD CONSTRAINT `fk_Reunion_has_Directeur_Directeur1` FOREIGN KEY (`idDirecteur`,`idPersonnel`) REFERENCES `directeur` (`idDirecteur`, `idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reunion_has_Directeur_Reunion1` FOREIGN KEY (`idReunion`) REFERENCES `reunion` (`idReunion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listresidentevent`
--
ALTER TABLE `listresidentevent`
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`idEvent`) REFERENCES `evenement` (`idEvenement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resident` FOREIGN KEY (`idResident`) REFERENCES `resident` (`idResident`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `fk_idEtab` FOREIGN KEY (`idEtablissement`) REFERENCES `etablissement` (`idEtablissement`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_service` FOREIGN KEY (`idService`) REFERENCES `service` (`idService`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `registre`
--
ALTER TABLE `registre`
  ADD CONSTRAINT `fk_Registre_Service1` FOREIGN KEY (`idService`) REFERENCES `service` (`idService`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idEtabReg` FOREIGN KEY (`idEtablissement`) REFERENCES `etablissement` (`idEtablissement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resident`
--
ALTER TABLE `resident`
  ADD CONSTRAINT `fk_Resident_ContactUrgence1` FOREIGN KEY (`idContactUrgence`) REFERENCES `contacturgence` (`idContactUrgence`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Resident_Etablissement1` FOREIGN KEY (`idEtablissement`) REFERENCES `etablissement` (`idEtablissement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_Service_Etablissement1` FOREIGN KEY (`idEtablissement`) REFERENCES `etablissement` (`idEtablissement`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `fk_Visite_Directeur1` FOREIGN KEY (`idDirecteur`,`idPersonnel`) REFERENCES `directeur` (`idDirecteur`, `idPersonnel`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
