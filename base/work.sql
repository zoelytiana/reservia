-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2021 at 02:52 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `idExperience` int(11) NOT NULL,
  `levelExperience` int(11) NOT NULL,
  `nameExperience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`idExperience`, `levelExperience`, `nameExperience`) VALUES
(1, 1, 'Débutant'),
(2, 2, '2 ans d\'expériences'),
(3, 3, '2 à 5 ans d\'éxpériences'),
(4, 5, 'plus de 5 ans d\'expériences');

-- --------------------------------------------------------

--
-- Table structure for table `jobber`
--

CREATE TABLE `jobber` (
  `IdJobber` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Pic` varchar(25) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `Telephone` varchar(30) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Presentation` text,
  `StudyLevel` varchar(10) DEFAULT NULL,
  `Experience` int(11) DEFAULT NULL,
  `SecuNumber` int(11) DEFAULT NULL,
  `Price` mediumint(9) DEFAULT NULL,
  `IdService` int(11) DEFAULT NULL,
  `TownShip` varchar(30) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `LastConnect` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobber`
--

INSERT INTO `jobber` (`IdJobber`, `Email`, `UserName`, `Name`, `Pic`, `Password`, `Telephone`, `Address`, `Presentation`, `StudyLevel`, `Experience`, `SecuNumber`, `Price`, `IdService`, `TownShip`, `CreationDate`, `Status`, `LastConnect`, `Score`) VALUES
(1, 'zralamboarisoa@gmail.com', 'Zoely', 'Ralamboarisoa', 'img/zoely.png', 'zz', '0628661280', '189 rue du Faubourg des postes', 'Développeur web, avec plus de 2 ans d’expérience. Mordu d’informatique, j’ai appris à coder dès mon plus jeune âge dans divers langages informatiques (Javascript, PHP, AngularJS…) et ai créé des projets personnels, dont un site référençant les vidéos les plus vues sur la plateforme Twitch (+ 5000 visites/mois). Polyvalent, je maîtrise les différentes étapes techniques de la création d’un site ou d’une application web ; de la compréhension des besoins utilisateurs, au développement frontend et backend en passant par la maintenance. ', '2', 1, 1244, 12, 3, 'Lille', '2021-03-26 09:50:34', '1', '2021-03-26 09:50:34', 0),
(2, 'christophe@gmail.com', 'Christophe', 'Christophe', 'img/christophe.png', 'cc', '033333333', '23 rue Mozart', 'Suite à une reconversion professionnelle, j\'ai souhaité me diriger vers le domaine qui me passionne depuis longtemps: le développement web. J\'ai donc suivi une formation débouchant sur le titre RNCP de niveau 3 de concepteur/développeur web.\r\n\r\nJ\'ai aujourd\'hui plus de 3 ans d\'expérience dans le développement web.\r\n\r\nN\'hésitez pas à me contacter.', '2', 2, 1254, 20, 1, 'Toulouse', '2021-03-26 09:56:59', '1', '2021-03-26 09:56:59', 5),
(3, 'jeanne@gmail.com', 'Jeanne', 'Dark', 'img/jeanne.jfif', 'cc', '033333333', '23 rue Mozart', 'Suite à une reconversion professionnelle, j\'ai souhaité me diriger vers le domaine qui me passionne depuis longtemps: le développement web. J\'ai donc suivi une formation débouchant sur le titre RNCP de niveau 3 de concepteur/développeur web.\r\n\r\nJ\'ai aujourd\'hui plus de 3 ans d\'expérience dans le développement web.\r\n\r\nN\'hésitez pas à me contacter.', '2', 2, 1254, 20, 1, 'Toulouse', '2021-03-26 09:58:04', '1', '2021-03-26 09:58:04', 3),
(4, 'stephen@gmail.com', 'Stephen', 'Stephen Tae', 'img/stephen.png', 'ss', '063388888', 'rue Jeans Bas Maubège', 'Développeur web curieux, autonome, rigoureux, j\'aime les applications simples, rapides et efficaces.\r\n\r\nUn sens de l\'écoute et du service renforcé par 8 ans d\'expérience à travailler sur des projets variés, une expertise technique en constante progression grâce à une formation perpétuelle. Motivé par le besoin de faire toujours mieux et appuyé par de solides bases acquises lors de mon parcours, je prends plaisir à relever de nouveaux challenges.\r\n\r\nActuellement en poste, je m\'épanouis avec l\'équipe de Cocolyze sur une solution SEO atypique afin de rendre le référencement simple et agréable!', '3', 3, 129863, 50, 1, 'Maubège', '2021-03-26 13:36:16', '1', '2021-03-26 13:36:16', 0),
(5, 'herve@gmail.com', 'Hervé', 'Hervé Gerard', 'img/herve.jfif', 'hh', '06598741', 'Rue Paullette biacard', 'Mettez le calque “clichés” en invisible. Vous n’êtes pas tous habillés en noir. sur Mac et asociaux. Votre style artistique, votre parcours, vos spécialités… Tout est unique. Le meilleur moyen de le prouver, c’est de faire un CV de graphiste qui en jette.', '4', 3, 659874, 30, 2, 'Marseille', '2021-03-26 13:56:30', '1', '2021-03-26 13:56:30', 0),
(6, 'delphine@gmail.com', 'Delphine', 'Delphine Belle', 'img/delphine.png', 'dd', '063598741', 'boulevard des beau maitin', 'Développeuse web junior, je recherche un emploi après avoir passé 6 mois en télétravail dans une agence web. Cette expérience m’a permis d’acquérir autonomie et confiance en moi, malgré le fait que je sortais à peine de l’école. J’ai ainsi pu renforcer ce que j’ai appris lors de ma formation professionnelle, et étoffer mon panel de compétences.\r\n\r\nJe profite aujourd’hui du temps dont je dispose pour continuer d’apprendre de nouvelles technologies et notamment enrichir mes connaissances en développement mobile avec Angular et Ionic.', '5', 1, 26354, 25, 4, 'La réunion', '2021-03-26 13:59:35', '1', '2021-03-26 13:59:35', 0),
(7, 'is@gmail.com', 'IS', 'IS ', 'img/images (2).jfif', 'ii', '062254', 'ssss', 'Suite à une reconversion professionnelle, j\'ai souhaité me diriger vers le domaine qui me passionne depuis longtemps: le développement web. J\'ai donc suivi une formation débouchant sur le titre RNCP de niveau 3 de concepteur/développeur web.\r\n\r\nJ\'ai aujourd\'hui plus de 3 ans d\'expérien', '4', 1, 1254, 12, 3, 'Lille', '2021-03-26 14:53:06', '1', '2021-03-26 14:53:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savoir`
--

CREATE TABLE `savoir` (
  `idSavoir` int(11) NOT NULL,
  `nameSavoir` varchar(50) NOT NULL,
  `descSavoir` text,
  `idService` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savoir`
--

INSERT INTO `savoir` (`idSavoir`, `nameSavoir`, `descSavoir`, `idService`) VALUES
(1, 'MySQL', NULL, 1),
(2, 'PHP', NULL, 1),
(3, 'C++', NULL, 1),
(4, 'Python', NULL, 1),
(5, 'Angular JS', NULL, 4),
(6, 'CSS', NULL, 4),
(7, 'Photoshop', NULL, 2),
(8, 'Marvel APP', NULL, 2),
(9, 'Suite Adobe', NULL, 2),
(10, 'CSS', NULL, 2),
(11, 'Photoshop', NULL, 3),
(12, 'WordPress', NULL, 3),
(13, 'Symphony', NULL, 3),
(14, 'Joomla', NULL, 3),
(15, 'CSS', NULL, 3),
(16, 'PHP', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `idService` int(11) NOT NULL,
  `nameService` varchar(50) NOT NULL,
  `descService` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`idService`, `nameService`, `descService`) VALUES
(1, 'Développeur Back-End', NULL),
(2, 'Designer', NULL),
(3, 'Webmaster', NULL),
(4, 'Développeur Front', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studylevel`
--

CREATE TABLE `studylevel` (
  `idStudyLevel` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `nameStudyLevel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studylevel`
--

INSERT INTO `studylevel` (`idStudyLevel`, `level`, `nameStudyLevel`) VALUES
(1, 1, 'Bac'),
(2, 2, 'Technicien'),
(3, 4, 'Maitrise'),
(4, 5, 'Ingénieur'),
(5, 3, 'Licence');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD UNIQUE KEY `idExperience` (`idExperience`);

--
-- Indexes for table `jobber`
--
ALTER TABLE `jobber`
  ADD PRIMARY KEY (`IdJobber`);

--
-- Indexes for table `savoir`
--
ALTER TABLE `savoir`
  ADD PRIMARY KEY (`idSavoir`),
  ADD KEY `isService` (`idService`) USING BTREE;

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idService`);

--
-- Indexes for table `studylevel`
--
ALTER TABLE `studylevel`
  ADD PRIMARY KEY (`idStudyLevel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `idExperience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobber`
--
ALTER TABLE `jobber`
  MODIFY `IdJobber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `savoir`
--
ALTER TABLE `savoir`
  MODIFY `idSavoir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `idService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studylevel`
--
ALTER TABLE `studylevel`
  MODIFY `idStudyLevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
