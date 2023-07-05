-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 28 juin 2023 à 13:30
-- Version du serveur : 10.5.19-MariaDB-0+deb11u2
-- Version de PHP : 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Base de données : `mdesign_queries`
--


-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`id`, `city`, `name`, `number`, `postal_code`, `street`, `type`) VALUES
(3, 'Metz', NULL, '7', '57000', 'bla', 1),
(12, 'Metz', 'Mjc Bon Pasteur Metz/Borny', '10', '57000', 'Rue du bon pasteur ', 0),
(13, 'Metz ', 'Fablab MDesign Metz/Blida ', '7', '57000', 'Avenue de Blida ', 0),
(14, 'Metz', 'Centre social Kairos Metz/Bellecroix', '13', '57000', 'De Toulouse ', 0),
(15, 'Metz', 'Le Quai Centre social Metz/Sablon', '1 ', '57000', 'Castelnau', 0),
(16, 'Woippy ', 'MPT Woippy Atrium/Woippy ', '39', '57140', 'De Bretagne ', 0),
(17, 'Villerupt', 'Arche CCPHVA/Villerupt ', '1', '54190', 'Esplanade Nino Rota', 0),
(18, 'Woippy ', 'Boileau Pré-Génie /Woippy-Metz', '9', '57140', 'Des écoles ', 0),
(19, 'Metz', 'Centre Pioche Metz/Sablon', '13', '57000', 'Pioche', 0),
(20, 'Réhon', 'Communauté d\'agglomération de Longwy', '2', '54430 ', 'Rue de Lexy', 0),
(21, 'Maizières-lès-Metz', 'MDesign Tiers Lieux  / Maizières-lès-Metz ', '1', '57280', 'Pl. Place de la Gare', 0),
(22, 'Metz', 'Cojep Metz/ Hauts de Vallières/Metz ', '30', '57070', 'Rue des Marronniers', 0),
(23, 'Metz', 'Borny Buzz  Metz/Borny', '1D', '57070', 'Béarn', 0),
(24, 'Metz', 'CPN les coquelicots / Metz Hauts de Vallières ', '30', '57070', 'Des Marronniers ', 0),
(25, 'Metz', 'Espace Corchade Metz/Vallières ', '37 ', '57070', 'Rue du Saulnois', 0),
(26, 'Metz', 'C.A.S.S.I.S Metz /Borny', '11', '57070', 'De champagne ', 0),
(27, 'Hauconcourt ', 'LEROY MERLIN / Maizières-lès-Metz ', '0', '57280', 'Zone industrielle d\'hauconcourt Zi Talange', 0),
(28, 'Metz ', NULL, '7', '57000', 'Avenue de Blida ', 1),
(30, 'Metz', NULL, '1', '57000', 'Du pôle Nord ', 1),
(31, 'Metz ', NULL, '1', '57000', 'Du pôle Nord ', 1),
(32, 'Guénange', NULL, 'Paix', '57310', '1', 1),
(33, 'METZ', NULL, '2G', '57000', 'Rue du Tombois', 1),
(34, 'Metz', NULL, 'Paix', '57000', '2', 1),
(36, 'Metz', NULL, 'Test', '57000', '1', 1),
(37, 'Metz', NULL, '4', '57000', 'rue des chats', 1),
(38, 'Metz', NULL, '8T', '57000', 'test', 1),
(39, 'Strasbourg', NULL, '8T', '67000', 'test', 1),
(40, 'Metz', NULL, '8T', '57000', 'test', 1),
(41, 'Metz', NULL, '8T', '57000', 'test', 1),
(42, 'Metz', NULL, '8T', '57000', 'Test', 1),
(44, 'Longlaville', 'Grand longwy', '6', '54810', 'Jean jaures', 0),
(45, 'Verneville', NULL, '6', '57130', 'Dame Habe', 1),
(46, 'Ugny', NULL, '22', '54870', 'Rue de la source', 1),
(47, 'Longlaville', NULL, '18', '54810', 'Avenue de Logwy', 1),
(48, 'Herserange', NULL, '79 ', '54440', 'av du luxembourg', 1),
(49, '54810', NULL, 'Edouard dreux', 'Longlaville', '17', 1),
(50, 'Messancy', NULL, '50', '6780', 'D\'Athus', 1),
(51, 'Longuyon', NULL, '15', '54260', 'Jacques duclos', 1),
(52, 'Fresnois la montagne', NULL, '13', '54260', 'Rue de parfondrupt', 1),
(53, 'Metz ', NULL, '10 ', '57050', 'Rue de la schmoutz ', 1),
(54, 'Metz', NULL, '10 ', '57070', 'Du Bon Pasteur ', 1),
(55, 'Metz', NULL, '51', '57070', 'Rue des socheirs', 1),
(56, 'Plappeville', NULL, '71', '57050 ', 'Du General de Gaulle', 1),
(57, 'Metz', NULL, '35', '57000', 'Des roses', 1),
(58, 'Le ban saint martin', NULL, '60', '57050', 'De la pepiniere', 1),
(60, 'VIGY', NULL, '12', '57640', 'Chateau d\'eau', 1),
(61, 'Vigy', NULL, '21', '57640', 'Rue de la reine', 1),
(62, 'Villers sous prény', NULL, '60', '54700', 'Rue de la libération', 1),
(64, 'Metz', NULL, '12', '57000', 'Quai Paul Wiltzer', 1),
(65, 'Metz', NULL, '12', '57070', 'Rue felix savart', 1),
(67, 'Metz', NULL, '4 bis', '57070', 'Rue de la cheneau', 1),
(68, 'Metz', NULL, '14', '57070', 'Rue de doliche', 1),
(69, 'Metz', NULL, '24', '57000', 'Avenue de Nancy', 1),
(70, 'Ars-sur-Moselle', NULL, '1', '57130', 'Rue du sculpteur bussiere', 1),
(71, 'Metz', NULL, '12 ', '57070', 'Rue felix Savart', 1),
(72, 'Metz', NULL, '4', '57070', 'Maitre echevin', 1),
(73, 'Metz', NULL, '66', '57000', 'Pins', 1),
(74, 'Metz', NULL, '66', '57070', 'Rue des pins', 1),
(79, 'Metz', NULL, '4 ', '57070', 'Des pins ', 1),
(80, 'Metz', NULL, '40', '57070', 'Merroniers', 1),
(81, 'Metz', NULL, '40 ', '57000', 'Rue des marronniers ', 1),
(82, 'Metz ', NULL, '1', '57050', 'Rue dupré de geneste', 1),
(83, 'Metz', NULL, '66', '57070', 'Rue des pins', 1),
(84, 'Metz', NULL, '13', '5707]', 'Dominique barbier', 1),
(85, 'Metz', NULL, '6rue des pins ', '57070', 'Pins', 1),
(89, 'Metz ', NULL, '66 ', '57000', 'Rue st Bernard ', 1),
(90, 'Metz', NULL, '66', '57000', 'Rue St Bernard ', 1),
(91, 'Metz', NULL, '21', '57000', 'Rue des marronniers ', 1),
(92, 'Metz', NULL, '21', '57000', 'Rue des marronniers ', 1),
(93, 'Metz', NULL, '17', '57070', 'dominique Barbier', 1),
(94, 'Metz', NULL, '66', '57070', 'Rue des pins', 1),
(96, 'Metz', NULL, '20  ', '57070', 'rue des pins', 1),
(97, 'Metz', NULL, '1', '57000', 'Rochambeau', 1),
(98, 'Metz', NULL, '13', '57070', 'Rue de toulouse', 1),
(99, 'Metz', NULL, '12', '57070', 'Rue Annecy', 1),
(100, 'Metz', NULL, '5', '57070', 'Rue de Riom', 1),
(102, 'Metz', NULL, '50', '57000', 'Rue des trois rois', 1),
(103, 'Metz', NULL, '3', '57070', 'Avenue Lyon', 1),
(104, 'Peltre', NULL, '6', '57245', 'Rue de peltre', 1),
(105, 'Metz', NULL, '13 ', '57050', 'rue de Toulouse', 1),
(106, 'Amnéville ', NULL, '14', '57360', 'Rue Marchal Leclerc ', 1),
(107, 'Woippy', NULL, '7', '57140', 'Cour des écoles ', 1),
(108, 'Woippy', NULL, '16', '57140', 'Rue du fort gambetta', 1),
(109, 'Woippy ', NULL, '6', '57140', 'Pierre et mari curry', 1),
(110, 'Woippy', NULL, '6', '57140', 'Cours des ecoles ', 1),
(111, 'Metz', NULL, '8', '57140', 'Rynck', 1),
(112, 'Woippy ', NULL, '12', '51400', 'Charle Rucher ', 1),
(113, 'Woippy ', NULL, '105', '57140', 'Fontaine', 1),
(114, 'Metz', NULL, '12', '57050', 'Charle Richet', 1),
(115, 'Woippy ', NULL, '17', '57140', 'Rue jean laurain', 1),
(116, 'Woippy', NULL, '5', '57140', 'Lucie Aubrac ', 1),
(117, 'Woippy ', NULL, '48', '57140', 'Patrick  thull', 1),
(118, 'Woippy ', NULL, '107', '57140', 'Pierre et marie cury', 1),
(119, 'Woippy ', NULL, '4', '57140', 'Pierre et marie curie', 1),
(120, 'Woippy', NULL, '12', '57140', 'Charle richet', 1),
(121, 'Woippy ', NULL, '6', '57140', 'Cour des écoles ', 1),
(122, 'Woippy ', NULL, '6', '57140', 'Cour des écoles ', 1),
(123, 'Pouilly', NULL, '28', '57240', 'Sur les vignes ', 1),
(124, 'Woippy ', NULL, '83', '57140', 'Pierre et marie curie', 1),
(125, ' Metz', NULL, '2', '57000', 'Rue de riom', 1),
(126, 'Metz', NULL, '35', '57000', 'Alfred kriguere', 1),
(128, 'Woippy ', NULL, '16', '57140', 'Rue charle richet', 1),
(129, 'Woippy', NULL, '14', '57140', 'Rue du fort Gambetta ', 1),
(130, 'Woippy ', NULL, '10', '57140', 'Rue des Écoles ', 1),
(131, 'Woippy ', NULL, 'Inconnu', '57140', 'Inconnu ', 1),
(132, 'Metz', NULL, '10', '57050', 'Emile roux', 1),
(133, 'Metz', NULL, '12', '57050', 'Émile roux', 1),
(134, 'Woippy', NULL, 'Inconnu ', '57140', 'Jean pierre pecheur', 1),
(135, 'Woippy', NULL, '9', '57140', 'rue des écoles', 1),
(136, 'Woippy', NULL, '9', '57140', 'Rue des écoles ', 1),
(147, 'Metz ', NULL, '2 ', '57000', 'Des rois', 1),
(148, 'Woippy ', NULL, 'Inconnu', '57140', 'Inconnu', 1),
(153, 'Metz', NULL, '10', '57000', 'du test', 1),
(154, 'Metz', NULL, '10', '57000', 'rue du test', 1),
(156, 'Metz', NULL, '10', '57000', 'rue du Test', 1),
(158, 'Metz', NULL, '9', '57000', 'Essai ', 1),
(159, 'Metz ', NULL, '8', '57000', 'Inconnu ', 1),
(161, 'Woippy ', NULL, '3', '57140', 'Alsace ', 1),
(162, 'Woippy ', NULL, '8', '57140', 'Champagne ', 1),
(163, 'Woippy ', NULL, '33', '57140', 'Lucien mangenot', 1),
(164, 'Woippy ', NULL, '2', '57140', 'Des ardennes', 1),
(165, 'Metz', NULL, '16', '57050', 'Émile roux', 1),
(166, 'Woippy ', NULL, '2', '57140', 'Franche comté', 1),
(167, 'Woippy ', NULL, '46', '57140', 'Paquis', 1),
(182, 'Metz', NULL, '1', '57000', 'Du tedt', 1),
(183, 'Metz', NULL, 'Des', '57000', 'Test', 1),
(184, 'Woippy ', NULL, '12 ', '57140', 'Robert Schuman ', 1),
(185, 'Metz', NULL, '1 ', '57050', 'Intendant jobas', 1),
(186, 'Maizières-lès-Metz', NULL, '0', '57280', 'Zone industrielle d\'hauconcourt Zi talange', 1),
(188, 'Woippy ', NULL, '50', '57140', 'Rue de Bretagne ', 1),
(193, 'Metz', NULL, 'Test', '57000', 'Test2', 1),
(194, 'Woippy', NULL, '12', '57140', 'Robert schuman', 1),
(195, 'Woippy', NULL, '6', '57140', 'Rue des champagnes', 1),
(196, 'Woippy', NULL, '3', '57140', 'Rue Alsace', 1),
(197, 'Woippy', NULL, '3', '57140', 'Rue Alsace', 1),
(198, 'Woippy', NULL, '15', '57140', 'Jean Bourger', 1),
(199, 'Woippy', NULL, '50', '57140', 'D\'Alsace', 1),
(201, 'Woippy', NULL, '50', '57140', 'Rue d\'Alsace', 1),
(202, 'Woippy', NULL, '50', '57140', 'Rue D\'Alsace', 1),
(203, 'Woipppy', NULL, '50', '57140', 'D\'Alasce', 1),
(204, 'Woippy', NULL, '50', '57140', 'D\'Alsace', 1),
(205, 'Woippy', NULL, '50', '57140', 'D\'alsace', 1),
(206, 'Woippy', NULL, '50', '57140', 'd\'Alsace', 1),
(207, 'Woippy', NULL, '50', '57140', 'Rue d\'Alsace', 1),
(208, 'Woippy', NULL, '50', '57140', 'Rue d\'alsace', 1),
(209, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(210, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(211, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(212, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(213, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(214, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(215, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(216, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(217, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(218, 'Woippy', NULL, '9', '57140', 'Rue des ecoles ', 1),
(219, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(220, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(221, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(222, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(223, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(224, 'Woippy', NULL, '9', '57140', 'Rue des ecoles', 1),
(225, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(226, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(227, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(228, 'Metz', NULL, '26', '57070', 'Au crampa', 1),
(229, 'Metz', NULL, '12', '57000', 'Metz', 1),
(230, 'Metz', NULL, '2', '57000', 'Inconnu', 1),
(231, 'Metz', NULL, '104', '57070', 'Rue de Queuleu', 1),
(232, 'Fameck', NULL, '56', '57290', 'Rue de la centrale', 1),
(233, 'Fameck', NULL, '56', '57290', 'Rue de la centrale', 1),
(234, 'Fameck', NULL, '56', '57290', 'Rue de la centrale', 1),
(235, 'Bellecroix', NULL, '10 ', '57070', 'Allee des artilleurs', 1),
(236, 'Bellecroix', NULL, '10 ', '57070', 'Allee de l\'artilleurs', 1),
(237, 'Bellecroix', NULL, '10 ', '57070', 'Allee de l\'artilleurs', 1),
(238, 'Metz', NULL, '1', '57000', 'Inconnu ', 1),
(239, 'Metz', NULL, '60', '57000', 'Sente à My', 1),
(240, 'Peltre', NULL, '1', '57000', 'Chemin à peltre', 1),
(241, 'Metz', NULL, '9', '57000', 'Rue des écoles', 1),
(242, 'Metz', NULL, '9', '57070', 'Louis forest', 1),
(243, 'Metz ', NULL, '64', '57000 ', 'rue Kellermann ', 1),
(244, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(245, 'Woippy', NULL, '9 ', '57140', 'Rue des écoles', 1),
(246, 'Woippy', NULL, '9', '57140', 'Rue des écoles ', 1),
(247, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(248, 'Woippy', NULL, '9', '57140', 'Rue des écoles', 1),
(249, 'Metz', NULL, '35 ', '57000', 'rue des roses', 1),
(250, 'Montigny les metz', NULL, '34', '57950', 'De la petite moselle', 1),
(251, 'Metz', NULL, '3', '57000', ' place valladier', 1),
(252, 'Vigy', NULL, '21', '57640', 'Rue de la Reine', 1),
(253, 'Woippy', NULL, '1', '57140', 'Cour des ecoles', 1),
(254, 'Metz', NULL, '57', '57070', 'Henri Dunant', 1),
(255, 'Metz', NULL, '4', '57050', 'Rue de Fleurus', 1),
(256, 'Walweistroff', NULL, '21', '57320', 'Rue du stade', 1),
(257, 'Ars sur Moselle', NULL, '30', '57130', 'Rue Louis Blériot', 1),
(258, 'Vantoux', NULL, '6', '57070', 'Rue de la Croix de la Louve', 1),
(259, 'Metz', NULL, '63 ', '57070', 'Claude Bernard', 1),
(260, 'Magny', NULL, '1', '57000', 'Rue des Lauriers', 1),
(261, 'Marly', NULL, '23', '57155', 'Rue des Paquerettes', 1),
(262, 'Metz', NULL, '57', '57000', 'De lardeche', 1),
(263, 'Metz', NULL, '12', '57070', 'Félix Savart', 1),
(264, 'Mete', NULL, '1', '57050', 'Rue des intendants joba', 1),
(265, 'Ay sur moselle', NULL, '11 ', '57300', 'De la joie', 1),
(266, 'METZ', NULL, '1', '57000', 'Gardeur Lebrun', 1),
(267, 'Woippy', NULL, '30', '57140', 'Paquis', 1),
(268, 'Hagondange ', NULL, 'Hagondange ', '57000', 'Rue ', 1),
(269, 'Plapeville ', NULL, '12', '57000', 'Rue de plapeville', 1),
(270, 'Fameck', NULL, '56', '57290', 'De la centrale', 1),
(271, 'Fameck', NULL, '54', '57290', 'Rue de la centrale', 1),
(272, 'Metz', NULL, '4', '57000', 'Rue des pins', 1),
(273, 'Woippy', NULL, '15 ', '57140', 'Des ecoles', 1),
(274, 'Metz', NULL, '58', '57070', 'Pins', 1),
(275, 'Metz', NULL, '13', '57070', 'Dominique barbier', 1),
(276, 'Metz', NULL, '56', '57070', 'Rue des pins', 1),
(277, 'Metz', NULL, '30', '57070', 'Rue des maronniers', 1),
(278, 'METZ', NULL, '68', '57000', 'Rue des Pins', 1),
(279, 'METZ', NULL, '4', '57000', 'Rue des marronier', 1),
(280, 'Woippy', NULL, '39', '57140', 'Bretagne', 1),
(281, 'Woippy', NULL, '12', '57140', 'Robert shuman', 1),
(282, 'Metz', NULL, '14', '57070', 'De la doliche', 1),
(283, 'Metz', NULL, '11 ', '57070', 'rue de la commanderie', 1),
(284, 'Woippy', NULL, '8', '57140', 'Rue du four', 1),
(285, 'Metz', NULL, '3', '57050', 'Theodore de gargant', 1),
(286, 'Metz', NULL, '53', '57070', 'Des bleuets', 1),
(287, 'Plappeville', NULL, '13', '57050', 'Rue des mirabelles', 1),
(288, 'Metz', NULL, '5', '57050', 'Rue emile roux', 1),
(289, 'Woippy', NULL, '66', '57140', 'Rue de ryneck', 1),
(290, 'Woippy', NULL, '35', '57140', 'Rue de bretagne', 1),
(291, 'Woippy', NULL, '39', '57140', 'rue de Bretagne ', 1),
(292, 'woippy', NULL, '39', '57140', 'rue de Bretagne ', 1),
(293, 'Metz', NULL, '39', '57140', 'rue de Bretagne', 1),
(294, 'Woippy', NULL, '39', '57140', 'Rue de Bretagne ', 1),
(295, 'Maizière -les- Metz', NULL, 'inconnu', 'inconnu', 'inconnu', 1),
(296, 'RICHEMONT', NULL, '51', '57270', 'route nationale', 1),
(297, 'Metz', NULL, '111', '57000', 'Saint-Pierre', 1),
(298, 'Metz', NULL, '111', '57000', 'Saint-Pierre', 1),
(299, 'Metz', NULL, '9', '57000', 'Rue des robert', 1),
(300, 'Metz', NULL, '58', '57000', 'Rue de la chapelle', 1),
(301, 'Metz', NULL, '23', '57000', 'Rue aux arènes', 1),
(302, 'Metz', NULL, '23', '57000', 'Rue Paul Diacre', 1),
(303, 'Metz', NULL, '12 ', '57 000', 'De La Croix', 1),
(304, 'Woippy', NULL, '17', '57140', 'Charles Richet ', 1),
(305, 'Woippy ', NULL, '1 ', '57140', 'Ruisseau ', 1),
(306, 'Metz', NULL, '14', '57070', 'Rue de normandie', 1),
(307, 'Metz', NULL, '3', '57070', 'Henri Bergson', 1),
(308, 'Metz', NULL, '25', '57070', 'Boulevard de provence', 1),
(309, 'Metz', NULL, '7 ', '57070', 'Fort des borde', 1),
(310, 'Metz', NULL, '19', '57070', 'Boulevard de provence', 1),
(311, 'Metz', NULL, '10', '57070', 'Boulevard de provence', 1),
(312, 'Metz', NULL, '30', '57140', 'Rue des marroniers', 1),
(313, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(314, 'METZ', NULL, '12', '57000', 'rue pioche', 1),
(315, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(316, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(317, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(318, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(319, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(320, 'METZ', NULL, '13', '57000', 'Rue Pioche', 1),
(321, 'METZ', NULL, '13', '57000', 'Rue Pioche', 1),
(322, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(323, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(324, 'METZ', NULL, '15', '57000', 'Rue Pioche', 1),
(325, 'METZ', NULL, '13', '57000', 'Rue Pioche', 1),
(326, 'METZ', NULL, '13', '57000', 'rue pioche', 1),
(327, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(328, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(329, 'METZ', NULL, '13', '57000', 'Rue pioche', 1),
(330, 'METZ', NULL, '13 ', '57000', 'Rue pioche', 1),
(331, 'METZ', NULL, '13', '57070', 'rue de toulouse', 1),
(332, 'METZ', NULL, '13', '57070', 'rue de Toulouse', 1),
(333, 'Metz', NULL, '13', '57070', 'Eue de Toulouse', 1),
(334, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(335, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(336, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(337, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(338, 'Metz', NULL, '13 ', '57070', 'Rue de toulouse', 1),
(339, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(340, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(341, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(342, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(343, 'Metz', NULL, '13', '57070', 'Rue de Toulouse ', 1),
(344, 'Metz ', NULL, '13', '57070', 'Rue de Toulouse ', 1),
(345, 'Metz', NULL, '13', '57070', ' rue de Toulouse ', 1),
(346, 'Metz', NULL, '13', '57070', 'Rue de Toulouse', 1),
(347, 'METZ', NULL, '10', '57070', 'Rue du Bon Pasteur', 1),
(348, 'METZ', NULL, '10', '57070', 'Rue Bon Pasteur', 1),
(349, 'Metz', NULL, '34', '57070', 'Rue de Normandie', 1),
(350, 'Metz', NULL, '10', '57050', 'Rue Emile Roux', 1),
(351, 'Metz', NULL, '11', '57070', 'rue Henri Bergson', 1),
(352, 'METZ ', NULL, '27 RUE JULES MICHELET ', '57070', '27', 1),
(353, 'Metz', NULL, '10', '57000', 'Boulevard de provence', 1),
(354, 'Fameck', NULL, '56', '57290', 'Rue de la centrale', 1),
(355, 'FAMECK', NULL, '56', '57100', 'CENTRALE', 1),
(356, 'FAMECK', NULL, '56', '57100', 'RUE DE LA CENTRALE', 1),
(357, 'FAMECK', NULL, '56', '57100', 'Rue de la centrale', 1),
(358, 'Fameck', NULL, '56', '57100', 'Rue de la centrale', 1),
(359, 'Metz', NULL, '15', '57070', 'rue du ruisseau', 1),
(360, 'METZ', NULL, '12', '57000', 'BOULVARD DE PROVENCE', 1),
(361, 'Metz', NULL, '5', '57000', 'Rue du graouilly', 1),
(362, 'Metz', NULL, '13', '57000', 'Rue de toulouse', 1),
(363, 'Metz', NULL, '13', '57000', 'Rue de toulouse', 1),
(364, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(365, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(366, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(367, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(368, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(369, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(370, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(371, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(372, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(373, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(374, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(375, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1),
(376, 'Metz', NULL, '13', 'Metz', 'Rue de toulouse', 1);

-- --------------------------------------------------------


--
-- Structure de la table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
    `id` bigint(20) NOT NULL,
    `date_of_birth` date NOT NULL,
    `email` varchar(255) DEFAULT NULL,
    `first_name` varchar(255) NOT NULL,
    `gender` varchar(255) NOT NULL,
    `last_name` varchar(255) NOT NULL,
    `phone` varchar(255) DEFAULT NULL,
    `address_id` bigint(20) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `persons`
--

INSERT INTO `persons` (`id`, `date_of_birth`, `email`, `first_name`, `gender`, `last_name`, `phone`, `address_id`) VALUES
   (2, '1977-12-07', 'fawzikach@hotmail.com ', 'Kachouri', 'HOMME', 'Fawzi ', '0769913800', 28),
   (6, '1985-12-07', 'Philippecarter@wanadoo.fr', 'Philippe ', 'HOMME', 'Hubert ', '0643734337', 32),
   (7, '1993-12-01', 'milejeansy@gmail.com', 'Jean sylvestre', 'HOMME', 'ZOUANDA NDORO', '0758503040 ', 33),
   (8, '1987-12-01', 'nadinelatif57@gmail.com', 'Nadine', 'FEMME', 'LATIF', '+33695613948', 34),
   (10, '1992-12-01', 'Joaquim.ferreira899@orange.fr', 'Joaquim ', 'HOMME', 'Ferrerira', '0643860082', 36),
   (17, '1980-02-27', 'fab57fr@hotmail.com', 'Fabrice', 'HOMME', 'GRUNEWALD', '0663041572', 45),
   (18, '2022-12-10', 'antoine.criscitelli@orange.fr', 'Antoine', 'HOMME', 'CRISCITELLI', '0772322660', 46),
   (19, '2022-11-12', 'j-c.cugnet@laposte.net', 'Jean-Claude', 'HOMME', 'CUGNET', '0628087578', 47),
   (20, '2022-12-22', 'charhi.k@gmail.com', 'Charhi', 'HOMME', 'KAMAL', '0642463527', 48),
   (21, '2022-12-14', 'k.men54@yahoo.fr', 'Kamen', 'HOMME', 'KEMMOUN', '0652035044', 49),
   (22, '2022-12-14', 'on5at.thierry@gmail.com', 'Thierry', 'HOMME', 'GALERIN', '0032496987536', 50),
   (23, '2022-12-21', 'dupont.jerome@gmai.com', 'Jerôme', 'HOMME', 'DUPONT ', '0682979470', 51),
   (24, '2022-12-13', 'f4iuc@orang.fr', 'Mustapha', 'HOMME', 'BIUCHEMLA', '0683831550', 52),
   (25, '2001-12-10', 'elias@hotmail.fr', 'Elias', 'HOMME', 'JONATHAN ', '0600000000', 53),
   (26, '1987-05-11', 'leila@mjc-borny', 'Leilq', 'FEMME', 'SLIMANI', '0677648227', 54),
   (27, '1981-01-16', 'nialnawel27@gmike.com', 'Nawel', 'FEMME', 'KHELIFA', '0784572304', 55),
   (28, '1950-11-05', 'pierre.heiss@neuf.fr', 'Pierre', 'HOMME', 'HEISS', '0661579435', 56),
   (29, '1955-04-28', 'odileulrich@live.fr', 'Marie Odile ', 'FEMME', 'ULRICH ', '0652848018', 57),
   (30, '1958-05-11', 'pascale.gaudard57@gmail.com', 'Pascale', 'FEMME', 'GAUDARD', '0635491196', 58),
   (32, '1950-07-21', 'stanislas.pelech@neuf.fr', 'Michele', 'FEMME', 'PELECH', 'O620434232', 60),
   (33, '1953-12-11', 'cpfb57000@gmail.com', 'Catherine', 'FEMME', 'PERNET FRENTZEL', '0682377516', 61),
   (34, '1984-12-22', 'virgile.frentzel@gmail.com', 'Virgile', 'HOMME', 'FRENTZEL', '0637682742', 62),
   (36, '1950-12-29', 'isabelle.miredurand@gmail.com', 'Isabelle', 'FEMME', 'MIRE', '0671750848', 64),
   (37, '2001-02-04', 'rochberthollet@gmail com', 'hcoR', 'HOMME', 'TELLOHTREB', '0627950512', 65),
   (39, '1950-02-03', 'jacqueswirth@hotmail.com', 'Jacques', 'HOMME', 'WIRTH', '0652814987', 67),
   (40, '1948-12-22', 'puissegur.jf@gmail.com', 'Yolande', 'FEMME', 'PUISSEGUR', '0664418094', 68),
   (41, '1999-03-16', 'chretiennot.leopold@gmail.com', 'Léopold', 'HOMME', 'CHRÉTIENNOT', '0783671090', 69),
   (42, '1993-11-06', 'cas.rigolot@gmail.com', 'Cassandra', 'FEMME', 'RIGOLOT', '0699293454', 70),
   (43, '2002-01-11', 'aveevad7@gmail.com', 'Eva', 'FEMME', 'GUILBERT', '0627876343', 71),
   (44, '1959-05-08', 'jean-pierre.goudot@orange.fr', 'Jean pierre', 'HOMME', 'GOUDOT', '0672326503', 72),
   (45, '2010-03-09', 'aureproc57070@gmail.com', 'Lohane', 'FEMME', 'CACOILO', '0753120227', 73),
   (46, '2010-11-26', 'rizuana.rexhepi@gmail.com', 'Rizuana', 'FEMME', 'REXHEPI', '0766472842', 74),
   (51, '2004-12-21', 'antonypeltre5757@gmail.com', 'Antony', 'HOMME', 'PELTRE', '0783135030', 79),
   (52, '2007-05-13', 'charpentier.melissa88@gmail.com', 'Mélissa', 'FEMME', 'CHARPENTIER', '0640 87 83 39', 80),
   (53, '2010-04-20', 'charpentier.deborah8857@gmail.com', 'Deborah ', 'FEMME', 'CHARPENTIER ', '0786 94 40 80 ', 81),
   (54, '1999-10-28', 'andymichalak.mdesign@gmail.com', 'Andy', 'HOMME', 'MICHALAK', '0638485096', 82),
   (55, '2011-05-29', 'etmatekakese@gmail.com', 'Etmate', 'HOMME', 'KAKESE ', '0775216877', 83),
   (56, '2010-03-13', 'sonia.chebah9@icloud.com', 'Sonia', 'FEMME', 'CHEBAH', '0749969882', 84),
   (57, '2022-08-29', 'saraaafal@icloud.com', 'Sara', 'FEMME', 'FAL', '0636370952', 85),
   (61, '2008-02-01', 'naelkachou@gmail.com', 'Nael', 'HOMME', 'KACHOURI ', '0651502920', 89),
   (62, '2011-11-29', 'maiakach@gmail.com', 'Maïa', 'FEMME', 'KACHOURI ', '0610648418', 90),
   (63, '2006-02-20', 'hanaaaldughaim5@gmail.com', 'Youssef ', 'HOMME', 'AL DUGHAIM', '0677300006', 91),
   (64, '2008-01-01', 'www@gmail.com', 'Mohamed Nur ', 'HOMME', 'AL DUGHAIM ', '0606070809', 92),
   (65, '2010-06-16', 'camillianfz26gmail.com', 'Camillia', 'FEMME', 'NEFZI', '0780277363', 93),
   (66, '2015-12-10', 'dff@hotmail.com', 'Alea', 'FEMME', 'REXHEPI', '0781837997', 94),
   (67, '2006-07-20', 'farsesfakeemail@gmail.com', 'Farès ', 'HOMME', 'DOUADI', '0620507997', 96),
   (68, '1988-10-16', 'asma.baouendi@outlook.fr', 'Asma', 'FEMME', 'BAOUENDI', '0659589177', 97),
   (69, '2011-05-09', 'lianamovsesyan1982@gmail.com', 'Hasmik', 'FEMME', 'MOVSESYAN', '0767267881', 98),
   (70, '2011-01-16', 'henry92i@hotmail.com', 'Shamila', 'FEMME', 'RENAULT', '0661787114', 99),
   (71, '2011-05-09', 'senaid.cirak@laposte.net', 'Naida', 'FEMME', 'CIRAK', '0758293827', 100),
   (73, '2011-06-27', 'familles@contact-kairos.fr', 'Dario', 'HOMME', 'DI TULLIO', '0614284207', 102),
   (74, '1953-08-03', 'asscuncao-joaquim@yahoo.fr', 'Maria', 'FEMME', 'ASSCUNCAO', '0663149340', 103),
   (75, '1966-01-11', 'amelasma57@gmail.com', 'Amel', 'FEMME', 'BEN FRADJ', '0651427060', 104),
   (76, '1975-04-28', 'fauxmail@fauxmail.com', 'Kadouja ', 'FEMME', 'OLMI', '0707080608', 105),
   (77, '1954-07-23', 'patrickfournillon10@gmail.com', 'Patrick', 'HOMME', 'FOURNILLON', '0636151666', 106),
   (78, '2004-10-06', 'fsteloy@gmail.com', 'Fares', 'HOMME', 'BENMEDDAH', '0646854373', 107),
   (79, '2009-12-01', 'ziadrayane57@icloud.com', 'Rayane', 'HOMME', 'ZIAD', '0612823569', 108),
   (80, '2009-09-04', 'lahyaoui.moussa@gmail.com', 'Moussa', 'HOMME', 'LAHYAOUI', '0666554580', 109),
   (81, '2008-07-13', 'h.taharia@laposte.net', 'Farah', 'FEMME', 'TAHARIA', '0646652516', 110),
   (82, '2023-01-08', 'nazimhedli57@icloud.com', 'Nazim', 'HOMME', 'HEDLI', '0782054077', 111),
   (83, '2010-10-02', 'ineszaoud@gmail.com', 'Abdelkader', 'HOMME', 'BELKHEDIM', '0000000000000', 112),
   (84, '2008-02-06', 'hhjjjjjjj@gmail.com', 'Tibyan', 'FEMME', 'YASSIR BUSHRA', '000000000000000', 113),
   (85, '2011-08-14', 's@gmail.com', 'Serena', 'FEMME', 'BELKHEDIM', '060000000000', 114),
   (86, '2008-10-01', 'm@yahoo.com', 'Mohamed', 'HOMME', 'BAH', '0749831707', 115),
   (87, '2009-12-23', '00000', 'Meyssa', 'FEMME', 'YAHOUI', '000000', 116),
   (88, '2009-10-20', 'jena573@icloud.com', 'Jena', 'FEMME', 'MSIRDI', '0782931374', 117),
   (89, '2011-02-12', 'lyna.fellag@icloud.com', 'Lyna', 'FEMME', 'LEGRAND', '0769587411', 118),
   (90, '2011-03-07', 'rahimikrame2@gmail.com', 'Ikrame', 'FEMME', 'RAHIM', '0782186244', 119),
   (91, '2004-07-13', 'ines.zouiad@gmail.com', 'Ines', 'FEMME', 'ZOUAID', '0658444759', 120),
   (92, '2005-02-08', 'kouicilydia@icloud.com', 'Lydia', 'FEMME', 'KOUICI', '0651144280', 121),
   (93, '2005-12-16', 'leina.16@icloud.com', 'Leina ', 'FEMME', 'KARAOUET', '0695182451', 122),
   (94, '2008-09-18', 'adembrahma@gmail.com', 'Adem', 'HOMME', 'YILDIRIM', '0629527333', 123),
   (95, '2011-02-20', 'sidifyzi@gmail.com', 'Housni', 'HOMME', 'BENSAHLA', '0387 76 17 14 00', 124),
   (96, '2010-07-05', 'abdoulcires2010@gmail.com', 'Abdoulaye', 'HOMME', 'SYLLA', '0753122373', 125),
   (97, '2011-10-19', 'pas.de.mail', 'Nina', 'FEMME', 'LALLEMENT', 'Pasde téléphone ', 126),
   (99, '2010-06-19', 'tnzk.57@gmail.com', 'Soufiane', 'HOMME', 'ZERYOUH', '00000000000', 128),
   (100, '2009-10-10', 'mazari.wael@icloud.com', 'Wael', 'HOMME', 'MAZARI', '0749264830', 129),
   (101, '2011-11-03', 'rayanbat.213@gmail.com', 'Rayane ', 'HOMME', 'BATOUCHE', '0750031878', 130),
   (102, '2006-08-28', 'vvdanes3@gmail.com', 'Buchra', 'HOMME', 'YASSIR', '0773204882', 131),
   (103, '2009-12-27', 'syrine.bslma57@gmail.com', 'Syrine', 'FEMME', 'BEN SLIMA', '0778075946', 132),
   (104, '2009-04-28', 'inconnus', 'Yousra', 'FEMME', 'AMDA ', '0749406276', 133),
   (105, '2009-09-15', 'inconnue', 'Luciano', 'HOMME', 'INCANNELLA', '0633613203', 134),
   (106, '1970-01-01', 'pas de mail', 'Belkacem', 'HOMME', 'BEN CHABANE', '0683993118', 135),
   (107, '1970-01-01', 'inconnu', 'Nordine', 'HOMME', 'BEN CHABANE', 'Inconnu', 136),
   (118, '2000-01-01', 'degrandfidele@gmail.com', 'Fidèle ', 'HOMME', 'DEGRAND ', '123456789', 147),
   (119, '2011-09-07', 'thalina.salimier@icloud.com', 'Thalina', 'FEMME', 'SALIMIER', '0612992676', 148),
   (129, '2000-01-01', 'essai@gmail.com', 'Essai', 'HOMME', 'ESSAI ', '0908888888', 158),
   (130, '2000-02-10', 'inconnu@essai.fr', 'Essai 2', 'HOMME', 'ESSAI 2', '0922222222', 159),
   (132, '2007-02-11', 'louannsurawe@gmail.com', 'Lou-ann', 'FEMME', 'SURAWE', '0618650945', 161),
   (133, '2007-04-22', 'shaunaweiss.23@icloud.com', 'Shauna', 'FEMME', 'JOLY WEISS', '0624792279', 162),
   (134, '2007-01-13', 'guirfabio1301@gmail.com', 'Fabio', 'HOMME', 'GUIR', '0650804032', 163),
   (135, '2007-04-18', 'clarisssabieth@gmail.com', 'Clarissa', 'FEMME', 'BIETH', '0767243336', 164),
   (136, '2006-12-05', 'amylasapologue@gmail.com', 'Amy', 'FEMME', 'BAMBA', '0615389090', 165),
   (137, '2005-10-27', 'elodiebouhl@gmail.com', 'Elodie', 'FEMME', 'BOUHL', '0623755489', 166),
   (138, '2005-01-06', 'qleguen7@gmail.com', 'Quentin', 'HOMME', 'LE GUEN', '0629481345', 167),
   (153, '2000-02-01', 'inconnug@essai.fr', 'Taski', 'HOMME', 'TESKI', '0778878899', 182),
   (155, '2010-02-16', 'lyak1971@gmail.com', 'Sœur ', 'FEMME', 'PETITE ', '00009999900', 184),
   (156, '1951-10-10', 'anravon@orange.fr', 'Claude', 'HOMME', 'RAVON ', '062444446043', 185),
   (157, '1960-01-01', 'conrad.th@orange.fr', 'Thierry ', 'HOMME', 'CONRAD ', '0000000000', 186),
   (159, '2009-04-10', 'mail@inconnu.com', 'David', 'HOMME', 'MARSAL', '9991939596', 188),
   (165, '2010-05-12', 'lyak1971@gmail.com', 'Lycia', 'FEMME', 'AKEB', 'Inconnu', 194),
   (166, '2010-06-11', 'inconnu', 'Sofiane', 'HOMME', 'KLECZEWSKI', 'Inconnu', 195),
   (167, '2010-11-30', 'inconnu', 'Ilana', 'FEMME', 'SHULER', 'Inconnu', 196),
   (168, '2010-10-27', 'inconnu', 'Elisa', 'FEMME', 'NERSESIJAN', 'Inconnu', 197),
   (169, '2010-07-02', 'inconnu', 'Adam', 'HOMME', 'EL MZOURI', 'Inconnu', 198),
   (170, '2011-07-05', 'inconnu', 'Diana', 'FEMME', 'NURISLAMOV', 'Inconnu', 199),
   (172, '2009-04-09', 'inconnu', 'Harmony', 'HOMME', 'BOUHL', 'Inconnu', 201),
   (173, '2009-07-23', 'inconnu', 'Ziad', 'HOMME', 'BENDEKKICHE', 'Inconnu', 202),
   (174, '2009-06-09', 'inconnu', 'Acelya', 'FEMME', 'BRUNAUD', 'Inconnu', 203),
   (175, '2009-12-31', 'durovicalmin25gmail.com', 'Almin', 'HOMME', 'DUROVIC', 'Inconnu', 204),
   (176, '2009-04-26', 'inconnu', 'Younes', 'HOMME', 'MERIKHI', 'Inconnu', 205),
   (177, '2010-01-01', 'inconnu', 'Tania', 'FEMME', 'AKEB', 'Inconnu', 206),
   (178, '2010-01-01', 'inconnu', 'Amar', 'HOMME', 'KRSIC', 'Inconnu', 207),
   (179, '2010-01-01', 'inconnu', 'Kendji', 'FEMME', 'VELER', 'Inconnu', 208),
   (180, '2023-02-07', 'mylo57@hotmail.fr', 'Laurence', 'FEMME', 'STEFNER ', 'Inconnu', 209),
   (181, '2023-02-07', 'malek57@live.fr', 'Zayia', 'FEMME', 'BOUADDAH', 'Inconnu', 210),
   (182, '2023-02-07', 'hamzakouakoua@gmail.com', 'Hamza', 'HOMME', 'KOUAKOUA', 'Inconnu', 211),
   (183, '2023-02-07', 'boufarha@riv54.fr', 'Farah', 'FEMME', 'BOUCEFAR', 'Inconnu', 212),
   (184, '2023-02-07', 'inconnu', 'Lucas', 'HOMME', 'BOUCEFAR', 'Inconnu', 213),
   (185, '2023-02-07', 'ademfergane@gmail.com', 'Djillali', 'HOMME', 'FERGANE', 'Inconnu', 214),
   (186, '2023-02-07', 'f.awal85@laposte.net', 'Franck', 'HOMME', 'AWAL', 'Inconnu', 215),
   (187, '2023-02-07', 'rumeysa0529@gmail.com', 'Rumeysa', 'FEMME', 'ANSLAN', 'Inconnu', 216),
   (188, '2023-02-07', 'aysenurarslan57140@gmail.com', 'Ayse', 'FEMME', 'ARLAN', 'Inconnu', 217),
   (189, '2023-02-07', 'inconnu', 'Marie louise', 'FEMME', 'DOS SANTOS', '0387305647', 218),
   (190, '2023-02-07', 'inconnu', 'Nordine', 'HOMME', 'BEN CHABANE', 'Inconnu', 219),
   (191, '2023-02-07', 'inconnu', 'Belkacem', 'HOMME', 'BEN CHABANE', '0683993118', 220),
   (192, '2023-02-07', 'inconnu', 'Jennyfer', 'FEMME', 'NGORES ', 'Inconnu', 221),
   (193, '2023-02-07', 'inconnu', 'Jennyfer', 'FEMME', 'NGOMES', 'Inconnu', 222),
   (194, '2023-02-07', 'inconnu', 'Zohra', 'FEMME', 'NACHFEN', 'Inconnu', 223),
   (195, '2023-02-07', 'inconnu', 'Chakila', 'FEMME', 'CHAKILA', 'Inconnu', 224),
   (196, '2023-02-07', 'inconnu', 'Suzanne', 'FEMME', 'ARSLAN', 'Inconnu', 225),
   (197, '2023-02-07', 'inconnu', 'fabrice', 'HOMME', 'WILLON ', 'Inconnu', 226),
   (198, '2023-02-07', 'inconnu', 'Valerie', 'FEMME', 'WILLON', 'Inconnu', 227),
   (199, '1980-09-27', 'gaetan.roelens@gmail.com', 'Gaetan', 'HOMME', 'ROELENS', '0667985414', 228),
   (200, '2015-07-25', 'inconnu', 'Flora', 'FEMME', 'ROELENS', 'Inconnu', 229),
   (201, '2008-10-31', 'inconnu', 'Roelens', 'FEMME', 'ZIA', 'Inconnu', 230),
   (202, '2008-08-18', 'raoulvanvlemmeren@gmail.com', 'Raoul', 'HOMME', 'VAN VLEMMEREN', '0685756718', 231),
   (203, '2007-04-26', 'kyllianpoullain723@gmail.com', 'Kyllian', 'HOMME', 'POULLAIN', '0382596610', 232),
   (204, '1988-02-10', 'fajo.educateurs@gmail.com', 'Will', 'HOMME', 'WILL', '0382596610', 233),
   (205, '2008-08-24', 'fajo.educateurs@gmail.com', 'Kylian', 'HOMME', 'ROCH', '0382596610', 234),
   (206, '1998-01-20', 'jeancelina.m@outlook.fr', 'Jeancelina', 'FEMME', 'MIGUEL', '0783899896', 235),
   (207, '2009-06-22', 'inconnu', 'Salim', 'HOMME', 'NORALGALIL', 'Inconnu', 236),
   (208, '2005-05-25', 'inconnu', 'Nolan', 'HOMME', 'TINTINGER', 'Inconnu', 237),
   (209, '1973-01-01', 'inconnu', 'Frédéric ', 'FEMME', 'SHNUR', '+336 75 25 64 66', 238),
   (210, '1977-01-27', 'marxjul@gmail.com', 'Julien ', 'HOMME', 'MARX', '0678762718', 239),
   (211, '1987-01-01', 'inconnu', 'Nicolas ', 'HOMME', 'AMBRY', '+336 81 20 52 03', 240),
   (212, '2010-03-01', 'inconnu', 'HISHAM', 'HOMME', 'TAWIL', 'Inconnu', 241),
   (213, '2011-07-16', 'inconnu', 'Moustafa', 'HOMME', 'TABET', '0787422137', 242),
   (214, '2011-03-10', 'inconnu', 'Alicia', 'FEMME', 'MYGARDON FAORO ', '0679088841', 243),
   (215, '2010-01-01', 'inconnu', 'Kaila', 'FEMME', 'LAMOR', '0000000000000000', 244),
   (216, '2010-01-01', 'inconnu', 'Adam', 'HOMME', 'SEDDIKI', '0000000000', 245),
   (217, '2006-01-01', 'inconnu', 'Nessim', 'HOMME', 'ARROUS', '0000000000', 246),
   (218, '2007-01-01', 'inconnu', 'Khaled', 'HOMME', 'ADDA', '0000000000', 247),
   (219, '2006-01-01', 'inconnu', 'Rayan', 'HOMME', 'GNOUL', '00000000000000000', 248),
   (220, '1956-12-27', 'danieljonvaux@live.fr', 'DANIEL', 'HOMME', 'JONVAUX', '0652848018', 249),
   (221, '1959-05-24', 'marie6.saccol@gmail.com', 'Marie', 'FEMME', 'SACCOL', '0681382548', 250),
   (222, '2023-03-14', 'jardin1130@gmail.com', 'Danielle', 'FEMME', 'LARRIERE', '0686592805', 251),
   (223, '1953-12-11', 'cpfb57000@gmail.com', 'Catherine', 'FEMME', 'PERNET', '0682377516', 252),
   (224, '1950-02-05', 'inconnu', 'Belkacem', 'HOMME', 'BENCHABANE', '0683993118', 253),
   (225, '1954-12-25', 'njm57.castagnetto@gmail.com', 'Noelle', 'FEMME', 'CASTAGNETTO', '0623502476', 254),
   (226, '1954-12-07', 'haliltahar437@gmail.com', 'Tahar', 'HOMME', 'HALIL', '0782434130', 255),
   (227, '1965-11-11', 'aubertgilles56@gmail.com', 'GILLES', 'HOMME', 'AUBERT', '0651892496', 256),
   (228, '1958-06-06', 'm.tornicelli@wanadoo.fr', 'Maurice', 'HOMME', 'TORNICELLI', '0633515443', 257),
   (229, '1966-04-25', 'm-p.brisse@orange.fr', 'Marie Pierre', 'FEMME', 'BRISSE', '0668662799', 258),
   (230, '1966-05-22', 'dambrine@free.fr', 'MARIE ODILE', 'FEMME', 'DAMBRINE', '0646464784', 259),
   (231, '1969-06-04', 'frederic.chudeau@gmail.com', 'Frederic', 'HOMME', 'CHUDEAU', '0652101959', 260),
   (232, '2023-03-02', 'mickael.meri@neuf.fr', 'Mickael', 'HOMME', 'MERI', '0602233531', 261),
   (233, '2007-02-27', 'inconnu', 'VASVIÉ', 'FEMME', 'IBRAHIMI', '0699732728', 262),
   (234, '2001-04-14', 'fabien.mdesign.com', 'Fabien', 'HOMME', 'ARIANO', '0688561427', 263),
   (235, '1945-07-23', 'anravon@orange.fr', 'Andre', 'HOMME', 'RAVON', '0614259098', 264),
   (236, '1981-03-16', 'babz57000@gmail.com', 'Nabil', 'HOMME', 'GUYLIZ', '0623502476', 265),
   (237, '1975-12-21', 'florence.ligouzat@orange.fr', 'Florence', 'FEMME', 'LIGOUZAT', '0662453428', 266),
   (238, '2006-05-03', 'aurelien.hoffmann57@gmail.com', 'Aurélien', 'HOMME', 'HOFFMANN', '0633821821', 267),
   (239, '2012-07-18', 'inconnu', 'Louise', 'HOMME', 'VIVARELLI ', 'Inconnu', 268),
   (240, '2013-03-19', 'inconnu', 'Mathieu ', 'HOMME', 'GRUN', 'Inconnu', 269),
   (241, '2009-04-17', 'fajo.educateurs@gmail.com', 'Cristiano', 'HOMME', 'MARCINIAK', '0382596610', 270),
   (242, '2007-06-25', 'fajo.educateurs@gmail.com', 'Julien', 'HOMME', 'MARTZ', '0382596610', 271),
   (243, '2001-04-17', 'adrienpeltre28@gmail.com', 'Adrien', 'HOMME', 'PELTRE ', '0614549035', 272),
   (244, '1999-06-11', 'kimberleylagal99@gmail.com', 'Kimberley', 'FEMME', 'LAGAL', 'Inconnu', 273),
   (245, '2011-11-06', 'noellyarnould642@gmail.com', 'NOELLY', 'FEMME', 'ARNOULD', '0753820655', 274),
   (246, '2023-10-19', 'sonia.chebah@gmail.com', 'Sirine', 'FEMME', 'CHEBAH', '0605729169', 275),
   (247, '2010-05-25', 'inconnu', 'Emma', 'FEMME', 'GEHL', 'Inconnu', 276),
   (248, '2011-05-06', 'inconnu', 'Lea', 'FEMME', 'HARTNAGEL', 'Inconnu', 277),
   (249, '2008-04-17', 'crosswegan@gmail.com', 'Samy', 'HOMME', 'BENAISSA', '+337 50 70 73 76', 278),
   (250, '2009-01-25', 'benamarnoureddine0@gmail.com', 'Zakaria', 'HOMME', 'BENAMAR', 'Inconnu', 279),
   (251, '2014-03-07', 'inconnu', 'Nelya', 'FEMME', 'BOUZIDI', '0768015351', 280),
   (252, '2010-05-12', 'inconnu', 'Tania', 'FEMME', 'AKEB', '0603394161', 281),
   (253, '1947-07-09', 'papyjeff2384@gmail.com', 'Jean Françoiss', 'HOMME', 'PUISSEGUR', '0664418094', 282),
   (254, '1983-09-28', 'sindyfahmyhanna@yahoo.fr', 'Sindy', 'FEMME', 'FAHMY HANNA ', '0618741263', 283),
   (255, '1956-04-14', 'astridlozach@me.com', 'Astrid', 'FEMME', 'LOZACH', '0610162202', 284),
   (256, '1947-01-20', 'fbboussedira@gmail.com', 'Ferhat', 'HOMME', 'BOUSSEDIRA', '0666576210', 285),
   (257, '1961-02-18', 'dominique.jobard57@gmail.com', 'Dominique', 'HOMME', 'JOBARD', '0688714530', 286),
   (258, '1952-12-08', 'edefeyter57@gmail.com', 'Etienne', 'HOMME', 'DE FEYTER', '0672069147', 287),
   (259, '1976-02-03', 'malek57@live.fr', 'ZAYIA', 'FEMME', 'BOUHADDA', '0766236293', 288),
   (260, '1966-01-18', 'nourikh@hotmail.fr', 'Kheira', 'FEMME', 'NOURI', '0624342704', 289),
   (261, '1973-03-28', 'eliz73feuga@gmail.com', 'elizabeth', 'FEMME', 'FEUGA', '0769904823', 290),
   (262, '2000-01-01', 'remy.paquet@orange.fr', 'Remy', 'HOMME', 'PAQUET', 'inconnu', 291),
   (263, '2000-01-01', 'chouikhahejer@yahoo.fr', 'Hejer', 'FEMME', 'CHOUIKHA', '000000000', 292),
   (264, '2000-01-01', 'inconnu', 'Abdellah', 'HOMME', 'BOUKEDIL', '000000000', 293),
   (265, '2000-01-01', 'kayla.steel.folliot@gmail.com', 'Steel', 'FEMME', 'KAYLA FOLLIOT', '00000000', 294),
   (266, '2000-01-01', 'verolaufer@gmail.com', 'Veronique', 'FEMME', 'LAUFER', '0000000000', 295),
   (267, '1976-06-20', 'inconnu', 'Vincent', 'HOMME', 'MARCHETTI', '0675100062', 296),
   (268, '2007-10-28', 'rmanguan@gmail.com', 'Raychi Bless', 'HOMME', 'MANGUANA', '0766 73 10 64', 297),
   (269, '2011-06-16', 'tulelamanguana@gmail.com', 'Joychi Tulela', 'FEMME', 'MANGUANA', '00000', 298),
   (270, '2012-04-01', 'inconnu', 'Adèle', 'FEMME', 'METZINGER', 'Inconnu', 299),
   (271, '2012-03-31', 'inconnu', 'Louis', 'HOMME', 'SIX', 'Inconnu', 300),
   (272, '2010-08-01', 'inconnu', 'Nour', 'FEMME', 'TEKKOUK', '0766102407', 301),
   (273, '2013-12-26', 'inconnu', 'Basile', 'HOMME', 'SORE', 'Inconnu', 302),
   (274, '2012-01-17', 'elina.massenet@gmail.com', 'Elina', 'FEMME', 'MASSENET', 'Inconnu', 303),
   (275, '2005-04-01', 'rayanghoul11@gmail.com', 'Rayan', 'HOMME', 'GHOUL', '0668565068', 304),
   (276, '2009-08-26', 'rayanaguachour66@gmail.com', 'Rayan', 'HOMME', 'AGUACHOUR', '0744185104', 305),
   (277, '2005-03-30', 'anasmoghni@gmail.com', 'Anas', 'HOMME', 'ALLOU', '0783897946', 306),
   (278, '2006-11-16', 'salimjoestar@gmail.com', 'Salim', 'HOMME', 'TIOUTI', '0658690422', 307),
   (279, '2005-09-20', 'jonathanmbuku198@gmail.com', 'Jonathan', 'HOMME', 'MBUKU', '0644733947', 308),
   (280, '2009-05-30', 'khordjmellina@icloud.com', 'Mellina', 'FEMME', 'KHORDJ', '0623502476', 309),
   (281, '2006-03-04', 'lamisse029@gmail.com', 'Lamisse', 'FEMME', 'AROUCI', '0602416461', 310),
   (282, '2007-11-22', 'yamsss84@gmail.com', 'Yamina', 'FEMME', 'BELARBI ', '0784.62.85.77', 311),
   (283, '2011-01-29', 'inconnu', 'LOUANE', 'FEMME', 'FRANÇOIS', '0678078650', 312),
   (284, '2000-01-01', 'inconnu', 'Claudine', 'FEMME', 'WAGNER', '0000000000', 313),
   (285, '2000-01-01', 'inconnu', 'Benjamin', 'HOMME', 'BONERE ', '00000000000', 314),
   (286, '2000-01-01', 'michel.mercier@425orange.fr', 'Michel', 'FEMME', 'MERCIER', '0000000000', 315),
   (287, '2000-01-01', 'inconnu', 'Josiane', 'FEMME', 'TAESCH', '000000000', 316),
   (288, '2000-01-01', 'inconnu', 'Dominique', 'HOMME', 'DOTTOR', '00000000000', 317),
   (289, '2000-01-01', 'jean.grayo@modulonet.fr', 'jean', 'HOMME', 'GRAYO', '0777910858', 318),
   (290, '2000-01-01', 'inconnu', 'Claire', 'FEMME', 'GREBIL', '00000000000', 319),
   (291, '2000-01-01', 'georgeslapeyre@yahoo.fr', 'Georges', 'HOMME', 'LAPEYRE', '0387581910', 320),
   (292, '2000-01-01', 'rockberthollet@gmail.com', ' Rock', 'HOMME', 'BERTHOLLET', '0627950512', 321),
   (293, '2000-01-01', 'inconnu', '(amie de jean)', 'FEMME', 'ANDRÉE (AMIE DE JEAN)', '0387517832', 322),
   (294, '2000-01-01', 'inconnu', 'Franck', 'HOMME', 'ARNAL', '0000000000', 323),
   (295, '2000-01-01', 'inconnu', 'Jean Marie', 'HOMME', 'MIRE', '0000000000', 324),
   (296, '2000-01-01', 'inconnu', 'Jean Claude', 'HOMME', 'AUER', '000000000', 325),
   (297, '2000-01-01', 'judith.henrion@gmail.com', 'Judith', 'FEMME', 'HENRION', '000000000', 326),
   (298, '2000-01-01', 'inconnu', 'Morgane', 'FEMME', 'ARTOIS', '0674914683', 327),
   (299, '2000-01-01', 'inconnu', 'Monique', 'FEMME', 'THUILLER', '0649856030', 328),
   (300, '2000-01-01', 'jose.napoli@gmail.com', 'Joseph', 'HOMME', 'NAPOLI', '0669439099', 329),
   (301, '2000-01-01', 'inconnu', 'Fabienne', 'FEMME', 'BREIT', '0000000000', 330),
   (302, '2000-01-01', 'inconnu', 'Daniel', 'HOMME', 'BOUSSEDIRA', '0000000000', 331),
   (303, '2000-01-01', 'jacqueswirth@hotmail.com', 'Jacques', 'HOMME', 'WIRTH ', '0000000000', 332),
   (304, '2000-01-01', 'a.arendt@hotmail.fr', 'Annick', 'FEMME', 'ARENDT ', '0000000000', 333),
   (305, '2000-01-01', 'inconnu', 'Hamid', 'HOMME', 'OULMI', '000000000', 334),
   (306, '2000-01-01', 'inconnu', 'Pascale', 'FEMME', 'GODARD', '0000000000', 335),
   (307, '2000-01-01', 'michele.rousselot@orange.fr', 'Michele ', 'FEMME', 'ROUSSELOT', '0387631677', 336),
   (308, '2000-01-01', 'juliegey64@gmail.com', 'Julie', 'FEMME', 'GEY', '0000000000', 337),
   (309, '2000-01-01', 'inconnu', 'KADUOUDJA', 'FEMME', 'OULMI', '0000000000', 338),
   (310, '2000-01-01', 'abdelazizwac@hotmail.fr', 'abdelaziz', 'HOMME', 'KHALDOUNE', '0000000000', 339),
   (311, '2000-01-01', 'chouikanarjes@yahoo.fr', 'Abdelkader', 'HOMME', 'CHOUIKA', '0000000000', 340),
   (312, '2000-01-01', 'louvre.malroute@gmail.com', 'Louvre', 'FEMME', 'MALROUTE', '0000000000', 341),
   (313, '2000-01-01', 'clodriant@hotmail.com', 'Claudine', 'FEMME', 'DRIANT', '000000000', 342),
   (314, '2000-01-01', 'chouetteages57@yahoo.fr', 'Agès', 'FEMME', 'PERREN', '0661159489', 343),
   (315, '2000-01-01', 'inconnu', 'Albant', 'HOMME', 'GREGOLF', '0000000000', 344),
   (316, '2000-01-01', 'inconnu', 'LASZ', 'FEMME', 'NMOMA', '0000000000', 345),
   (317, '2000-01-01', 'myriam.alliot@numericable.fr', 'Myriam', 'FEMME', 'ALLIOT', '0000000000', 346),
   (318, '2000-01-01', 'hongtg@hotmail.com', 'Hong', 'HOMME', 'TANG ', '0770119094', 347),
   (319, '2022-01-01', 'cosmos.rose@hotmail.fr', ' Andrée ', 'FEMME', 'HOCQUEL', '0387517832', 348),
   (320, '2007-04-11', 'meryem.k5740@gmail.com', 'Meryem', 'FEMME', 'KOMBE', '0783963371', 349),
   (321, '2007-01-17', 'inconnu', 'NADJET', 'FEMME', 'BELMADANI', '0780686969', 350),
   (322, '2004-02-05', 'imranerezaig@gmail.com', 'Imrane', 'HOMME', 'REZAIG', '0646923450', 351),
   (323, '2007-04-09', 'ayoubenfrid57@gmail.com', 'GHITA', 'FEMME', 'BOUDABYA ', '0784970691', 352),
   (324, '2010-06-09', 'belarbimous57@gmail.com', 'Moustafa', 'HOMME', 'BELARBI', '0751223318', 353),
   (325, '2008-04-10', 'inconnu', 'Enzo', 'HOMME', 'NIMSGERN', 'Inconnu', 354),
   (326, '2008-10-27', 'inconnu', 'BELMIN', 'HOMME', 'MUJANOVIC', 'INCONNU', 355),
   (327, '2009-10-29', 'inconnu', 'RYAN', 'HOMME', 'RENAUDIN', 'INCONNU', 356),
   (328, '2007-08-05', 'samuelsohier57@gmail.com', 'Samuel', 'HOMME', 'SOHIER', '0604008741', 357),
   (329, '2005-12-30', 'inconnu', 'Amine', 'HOMME', 'LHIOUI', 'inconnu', 358),
   (330, '2005-01-07', 'khey57.ayoub@gmail.com', 'ayoub', 'HOMME', 'KHEY', '0767206635', 359),
   (331, '2009-08-18', 'inconnu', 'Jawid', 'HOMME', 'AFZALI', '0766150198', 360),
   (332, '2001-06-27', 'leabmdesign@gmail.com', 'Lea', 'FEMME', 'BLOCH', 'Inconnue', 361),
   (333, '1968-01-24', 'inconnue', 'Fatima', 'FEMME', 'BENAHMED', '0767840553', 362),
   (334, '1985-08-27', 'nicolas-pierson@outlook.com', 'Nicolas', 'HOMME', 'PIERSON', '0688266152', 363),
   (335, '1985-09-13', 'inconnue', 'Odile', 'FEMME', 'ABRIAL', 'Inconnue', 364),
   (336, '1965-04-13', 'inconnue', 'Marie', 'FEMME', 'GREVELDINGER', 'Inconnue', 365),
   (337, '1963-05-28', 'inconnue', 'Hohnet', 'HOMME', 'SARITAS', 'Inconnue', 366),
   (338, '1968-02-15', 'inconnue', 'Monique', 'FEMME', 'DEFFEZ', 'Inconnue', 367),
   (339, '1998-04-15', 'inconnue', 'Rihab', 'FEMME', 'ABDALBAGE', 'Inconnue', 368),
   (340, '1979-11-24', 'inconnue', 'Mathild', 'FEMME', 'ALRAHID', 'Inconnue', 369),
   (341, '1976-10-23', 'inconnue', 'Nedie', 'FEMME', 'LOUIZ', 'Inconnue', 370),
   (342, '1985-02-25', 'inconnu', 'Lionel', 'HOMME', 'DURIEZ', 'Inconnu', 371),
   (343, '2023-11-14', 'inconnue', 'Daniele', 'FEMME', 'VINCENT', 'Inconnu', 372),
   (344, '2023-12-30', 'inconnue', 'Philipe', 'HOMME', 'PEZZOTTA', 'Inconnue', 373),
   (345, '1986-06-09', 'inconnu', 'Boileau', 'HOMME', 'MJC', 'Inconnu', 374),
   (346, '1979-09-19', 'inconnu', 'Christophe', 'HOMME', 'ZYDKO', 'Inconnu', 375),
   (347, '2010-08-19', 'inconnu', 'Souad', 'FEMME', 'ABDALBAGE', 'Inconnu', 376);

-- --------------------------------------------------------


CREATE TABLE IF NOT EXISTS `event_types` (
    `id` bigint(20) NOT NULL,
    `name` varchar(255) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `event_types`
--

--
-- Structure de la table `event_types`
--

INSERT INTO `event_types` (`id`, `name`) VALUES
                                             (74, 'Atelier de découverte des outils de fabrication numériques '),
                                             (72, 'Atelier qpv 2023 Bellecroix'),
                                             (67, 'Atelier qpv Boileau 2023'),
                                             (69, 'Atelier qpv Borny 2023'),
                                             (68, 'Atelier qpv hd Vallières 2023'),
                                             (70, 'Atelier qpv quartier du Roy 2023'),
                                             (54, 'Ateliers numériques FabLab MDesign '),
                                             (29, 'Ateliers numériques qpv'),
                                             (60, 'Décembre ateliers numériques qpv'),
                                             (56, 'Démonstration publique '),
                                             (55, 'Repair Café Fablab MDesign '),
                                             (59, 'Repair café jeunes Département 110h'),
                                             (33, 'Repaire café qpv'),
                                             (57, 'Travaux de mise en place Tiers lieu MDESIGN ');

--
-- Structure de la table `events`
--

--
-- Déchargement des données de la table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `end_time` time DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sold_hours` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `address_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------



INSERT INTO `events` (`id`, `date`, `end_time`, `name`, `sold_hours`, `start_time`, `url`, `address_id`, `type_id`) VALUES
(8, '2022-12-13', '22:00:00', 'Repair-Café Bon Pasteur Metz/ Borny ', 25, '19:00:00', '', 12, 33),
(10, '2023-01-17', '22:30:00', 'Repair Café ', 3, '19:30:00', '', 14, 33),
(17, '2022-12-10', '12:30:00', 'Repair Cafe longwy / longlaville', 3, '09:30:00', '', 20, 55),
(18, '2022-12-12', '18:00:00', 'Tiers lieu MDesign échafaudage mobile ', 4, '14:00:00', 'https://youtu.be/jcAMAa7tlVA', 21, 57),
(19, '2022-12-09', '16:00:00', 'Première journée tiers lieu MDesign ', 6, '10:00:00', '', 21, 57),
(20, '2022-12-13', '17:00:00', 'Plafonds enlèvement des plaques de polystyrène ', 4, '13:00:00', '', 21, 57),
(21, '2022-12-15', '19:00:00', 'Leroy merlin', 3, '04:00:00', '', 27, 55),
(22, '2022-12-19', '18:00:00', 'Atelier Numérique Marronniers HDV', 4, '14:00:00', '', 22, 60),
(23, '2022-12-20', '18:00:00', 'Atelier Numérique Marronniers HDV-3D Cura', 4, '14:00:00', '', 22, 60),
(24, '2022-12-21', '18:00:00', 'Atelier Numérique Marronniers HDV-IA', 4, '14:00:00', '', 22, 60),
(25, '2022-12-22', '18:20:00', 'Atelier Numérique Marronniers HDV-PIVOT', 4, '14:00:00', '', 22, 60),
(28, '2022-12-23', '19:30:00', 'Atelier Numérique Marronniers HDV', 4, '14:00:00', '', 22, 60),
(29, '2022-12-24', '18:00:00', 'Atelier Numérique Marronniers HDV', 4, '14:00:00', '', 22, 60),
(30, '2023-01-17', '22:30:00', 'Repair - café Centre Kairos', 3, '19:30:00', '', 14, 33),
(31, '2023-01-11', '18:00:00', 'Atelier modélisation et sublimation ', 4, '13:30:00', '', 13, 72),
(32, '2023-01-19', '19:00:00', 'Repair café Leroy Merlin ', 3, '16:00:00', '', 27, 55),
(33, '2023-01-20', '20:00:00', 'Boileau 2023 teqball', 4, '16:00:00', '', 18, 67),
(34, '2023-01-25', '18:00:00', 'Atelier kairos design et videomapping ', 4, '14:00:00', '', 13, 72),
(35, '2023-01-26', '20:30:00', 'Repair Café Arche', 3, '17:30:00', '', 17, 55),
(36, '2023-01-27', '20:00:00', 'Atelier numerique tekball', 4, '16:00:00', '', 18, 67),
(37, '2023-02-04', '14:00:00', 'Atelier Tekball ', 4, '10:00:00', '', 13, 67),
(38, '2023-02-07', '22:30:00', 'Repair café - Boileau Pré-Génie Woippy ', 3, '19:30:00', '', 18, 33),
(39, '2023-02-08', '20:00:00', 'Atelier mpt Woippy atrium 10h', 6, '14:00:00', '', 16, 60),
(40, '2023-02-10', '22:00:00', 'Atelier mpt Woippy atrium 10h', 4, '18:00:00', '', 16, 60),
(41, '2023-02-15', '17:00:00', 'Atelier Super Idée ', 6, '09:30:00', '', 13, 74),
(42, '2023-02-16', '19:00:00', 'Repair café février 2023 Leroy Merlin ', 3, '16:00:00', '', 27, 55),
(44, '2023-02-20', '17:00:00', 'Atelier découpe fraisage sur machine à commande numerique', 3, '14:00:00', '', 13, 72),
(45, '2023-02-22', '12:00:00', 'Atelier code jeux vidéos jeunes', 2, '10:00:00', 'https://youtu.be/ZUwBQHWfVNs', 13, 54),
(46, '2023-02-22', '18:20:00', 'Atelier Borne Arcade', 4, '14:00:00', 'https://youtu.be/ZkukexUWrBI', 13, 54),
(47, '2023-02-25', '18:30:00', 'Atelier AI , une amie qui vous veut du bien ', 5, '13:30:00', '', 21, 56),
(48, '2023-03-01', '17:00:00', 'Atelier numérique impression 3D  ', 3, '14:00:00', '', 13, 72),
(49, '2023-03-05', '12:10:00', 'Atelier rpg maker 2', 3, '09:10:00', '', 13, 54),
(50, '2023-03-08', '18:00:00', 'Atelier numériques réalisation Mug ', 4, '14:00:00', '', 13, 54),
(51, '2023-03-11', '13:20:00', 'Atelier Mug jeune Boileau', 3, '10:00:00', '', 13, 67),
(52, '2023-03-14', '22:30:00', 'Repair café Bon Pasteur Borny', 3, '19:30:00', '', 12, 33),
(53, '2023-03-15', '18:00:00', 'Atelier 3D tinkercad jeune Kairos', 4, '14:00:00', '', 14, 72),
(54, '2023-03-16', '19:00:00', 'Repair Café leroy Merlin', 3, '16:00:00', '', 27, 55),
(55, '2023-03-17', '21:00:00', 'Atelier Mug jeune', 3, '18:00:00', '', 16, 70),
(56, '2023-03-19', '00:28:00', 'Atelier création de jeu vidéo rpg maker ', 3, '09:28:00', '', 13, 54),
(57, '2023-03-22', '18:00:00', 'Atelier Borne Arcade Fajo', 4, '14:00:00', '', 13, 54),
(58, '2023-03-24', '21:00:00', 'Atelier numérique  découpe et gravure laser ', 4, '17:00:00', '', 24, 68),
(59, '2023-03-31', '21:00:00', 'Atelier numérique gravure sur clavier pc', 4, '17:00:00', '', 24, 68),
(60, '2023-04-05', '20:00:00', 'Atelier IA Jeune Atrium', 6, '14:00:00', '', 16, 70),
(61, '2023-04-11', '22:30:00', 'Repair-cafe', 3, '19:30:00', '', 16, 33),
(62, '2023-04-17', '17:00:00', 'Impression 3D', 3, '14:00:00', '', 13, 72),
(63, '2023-04-18', '18:00:00', 'Atelier Clavier tablette', 4, '14:00:00', '', 13, 68),
(64, '2023-04-19', '20:30:00', 'Atelier Mug 2', 3, '17:30:00', '', 16, 70),
(65, '2023-04-20', '19:00:00', 'Repair Cafe Leroy Merlin', 3, '16:00:00', '', 27, 55),
(66, '2023-04-24', '18:00:00', 'Atelier Borne arcade le quai', 4, '14:00:00', '', 15, 29),
(67, '2023-04-25', '18:00:00', 'Atelier Borne arcade le quai', 4, '14:00:00', '', 15, 29),
(68, '2023-04-26', '18:00:00', 'Atelier Borne arcade le quai ', 4, '14:00:00', '', 15, 29),
(69, '2023-04-27', '18:00:00', 'Atelier Borne arcade le quai', 4, '14:00:00', '', 15, 29),
(70, '2023-04-28', '18:00:00', 'Atelier Borne arcade quai', 4, '14:00:00', '', 15, 29),
(71, '2023-05-03', '18:00:00', 'Atelier teckball', 4, '14:00:00', '', 13, 67),
(72, '2023-05-05', '21:00:00', 'Atelier numérique ', 4, '17:00:00', '', 26, 69),
(73, '2023-05-07', '12:00:00', 'Atelier jeux vidéo ', 2, '10:00:00', '', 13, 54),
(74, '2023-05-16', '22:00:00', 'Repair café Sablon pioche 2023', 3, '19:00:00', '', 19, 33),
(75, '2023-05-17', '18:00:00', 'Atelier Numérique ', 4, '14:00:00', '', 13, 68),
(76, '2023-01-17', '22:30:00', 'Repair café - Centre social Kairos', 3, '19:30:00', '', 14, 33),
(77, '2023-05-26', '21:00:00', 'Atelier IA - Marque de vêtement ', 3, '17:00:00', '', 26, 69),
(78, '2023-05-31', '18:00:00', 'Atelier fraisage support tablette et clavier', 4, '14:00:00', '', 13, 68),
(79, '2023-06-02', '21:00:00', 'Atelier imprimante 3D Logo Ton ZINK', 4, '17:00:00', '', 26, 69),
(80, '2023-06-07', '17:30:00', 'Atelier Fajo restitution Borne Arcade', 4, '13:30:00', '', 13, 54),
(81, '2023-06-12', '19:00:00', 'Atelier Borne arcade finition', 3, '17:00:00', '', 13, 54),
(82, '2023-06-14', '18:00:00', 'Atelier numérique tablette', 4, '14:00:00', '', 13, 68),
(83, '2023-06-16', '21:00:00', 'Atelier IA/ChatGPT', 4, '17:00:00', '', 26, 69),
(84, '2023-06-20', '22:30:00', 'Repair café - Kairos ', 3, '19:30:00', '', 14, 72);

--
-- Déchargement des données de la table `events_contacts`
--
--
-- Structure de la table `events_contacts`
--

CREATE TABLE IF NOT EXISTS `events_contacts` (
  `event_id` bigint(20) NOT NULL,
  `contacts_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------


INSERT INTO `events_contacts` (`event_id`, `contacts_id`) VALUES
(19, 2),
(17, 18),
(17, 19),
(24, 65),
(64, 172),
(64, 19),
(64, 134),
(64, 132),
(64, 137),
(64, 136),
(64, 179),
(64, 133),
(64, 138),
(66, 268),
(66, 269),
(66, 270),
(66, 271),
(66, 272),
(67, 268),
(67, 269),
(67, 271),
(67, 270),
(67, 272),
(71, 79),
(71, 87),
(71, 88),
(71, 216),
(71, 275),
(71, 105),
(71, 276);

--
-- Déchargement des données de la table `events_hosts`
--
--
-- Structure de la table `events_hosts`
--

CREATE TABLE IF NOT EXISTS `events_hosts` (
  `event_id` bigint(20) NOT NULL,
  `hosts_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------



INSERT INTO `events_hosts` (`event_id`, `hosts_id`) VALUES
(17, 7),
(17, 2),
(17, 17),
(20, 2),
(20, 7),
(8, 7),
(8, 8),
(8, 2),
(8, 44),
(21, 7),
(21, 2),
(21, 44),
(24, 2),
(24, 7),
(24, 54),
(25, 7),
(25, 2),
(25, 54),
(29, 2),
(30, 7),
(30, 2),
(31, 2),
(31, 7),
(31, 54),
(32, 7),
(32, 2),
(34, 7),
(34, 2),
(36, 2),
(36, 7),
(37, 7),
(37, 2),
(38, 2),
(38, 7),
(39, 2),
(39, 7),
(40, 7),
(40, 2),
(42, 2),
(42, 7),
(42, 61),
(44, 2),
(44, 7),
(45, 199),
(45, 2),
(45, 7),
(46, 2),
(46, 7),
(48, 7),
(48, 2),
(49, 2),
(49, 199),
(50, 2),
(50, 7),
(51, 7),
(51, 2),
(53, 2),
(53, 7),
(53, 234),
(54, 2),
(54, 7),
(54, 234),
(55, 2),
(55, 7),
(56, 2),
(56, 199),
(57, 7),
(57, 2),
(57, 234),
(58, 7),
(58, 2),
(58, 234),
(59, 7),
(59, 234),
(59, 2),
(60, 2),
(60, 234),
(60, 7),
(61, 7),
(61, 2),
(62, 2),
(62, 7),
(63, 7),
(63, 2),
(63, 234),
(64, 2),
(64, 7),
(64, 234),
(65, 7),
(65, 234),
(65, 2),
(66, 2),
(66, 61),
(66, 7),
(67, 7),
(67, 2),
(68, 7),
(68, 2),
(69, 2),
(69, 7),
(70, 2),
(70, 7),
(71, 7),
(71, 2),
(71, 234),
(72, 7),
(72, 2),
(72, 234),
(73, 2),
(73, 199),
(75, 2),
(75, 7),
(74, 7),
(74, 2),
(74, 234),
(76, 7),
(76, 2),
(52, 7),
(52, 2),
(77, 7),
(77, 2),
(77, 234),
(78, 7),
(78, 2),
(78, 234),
(79, 7),
(79, 2),
(79, 234),
(80, 2),
(80, 7),
(82, 2),
(82, 7),
(82, 234),
(83, 2),
(83, 7),
(83, 234),
(84, 7),
(84, 234),
(84, 332);

--
-- Déchargement des données de la table `events_participants`
--
--
-- Structure de la table `events_participants`
--

CREATE TABLE IF NOT EXISTS `events_participants` (
  `event_id` bigint(20) NOT NULL,
  `participants_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------


INSERT INTO `events_participants` (`event_id`, `participants_id`) VALUES
(18, 2),
(18, 17),
(19, 7),
(20, 17),
(20, 7),
(8, 6),
(8, 10),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 30),
(8, 32),
(8, 33),
(8, 34),
(8, 36),
(8, 37),
(8, 39),
(8, 40),
(8, 41),
(8, 41),
(8, 42),
(8, 43),
(22, 45),
(22, 46),
(17, 20),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(23, 51),
(23, 52),
(23, 53),
(23, 46),
(25, 55),
(25, 61),
(25, 62),
(25, 46),
(25, 63),
(25, 64),
(25, 65),
(25, 57),
(25, 56),
(25, 66),
(24, 46),
(24, 45),
(24, 55),
(24, 56),
(24, 57),
(24, 65),
(28, 56),
(28, 57),
(28, 46),
(28, 65),
(28, 55),
(28, 66),
(28, 52),
(28, 51),
(28, 45),
(28, 64),
(28, 63),
(28, 53),
(29, 45),
(29, 65),
(29, 57),
(29, 55),
(29, 52),
(29, 64),
(29, 63),
(29, 67),
(31, 68),
(31, 69),
(31, 70),
(31, 71),
(31, 73),
(10, 6),
(10, 7),
(10, 8),
(10, 74),
(10, 75),
(30, 76),
(32, 44),
(32, 77),
(33, 78),
(33, 79),
(33, 80),
(33, 81),
(33, 82),
(33, 83),
(33, 84),
(33, 85),
(33, 86),
(33, 87),
(33, 88),
(33, 89),
(33, 90),
(33, 91),
(33, 92),
(33, 93),
(33, 94),
(33, 95),
(34, 69),
(34, 71),
(34, 70),
(34, 68),
(34, 96),
(34, 73),
(34, 97),
(36, 79),
(36, 99),
(36, 95),
(36, 87),
(36, 85),
(36, 89),
(36, 90),
(36, 88),
(36, 100),
(36, 101),
(36, 94),
(36, 102),
(36, 103),
(36, 104),
(36, 105),
(37, 79),
(37, 88),
(37, 87),
(37, 100),
(42, 77),
(42, 156),
(42, 157),
(40, 132),
(40, 133),
(40, 134),
(40, 135),
(40, 136),
(40, 137),
(40, 138),
(40, 159),
(40, 165),
(40, 166),
(40, 167),
(40, 168),
(40, 169),
(40, 170),
(40, 172),
(40, 173),
(40, 174),
(40, 175),
(40, 176),
(40, 119),
(40, 177),
(40, 178),
(40, 134),
(40, 133),
(40, 179),
(39, 119),
(39, 165),
(39, 167),
(39, 166),
(39, 168),
(39, 169),
(39, 170),
(39, 159),
(39, 172),
(39, 173),
(39, 174),
(39, 175),
(39, 176),
(44, 96),
(44, 73),
(44, 68),
(44, 71),
(38, 6),
(38, 10),
(38, 44),
(38, 8),
(38, 106),
(38, 107),
(38, 62),
(38, 61),
(38, 180),
(38, 181),
(38, 182),
(38, 183),
(38, 184),
(38, 185),
(38, 186),
(38, 187),
(38, 188),
(38, 189),
(38, 190),
(38, 191),
(38, 193),
(38, 194),
(38, 195),
(38, 196),
(38, 197),
(38, 198),
(45, 61),
(45, 62),
(45, 200),
(45, 201),
(45, 202),
(46, 203),
(46, 204),
(46, 205),
(46, 206),
(46, 207),
(46, 208),
(47, 209),
(47, 210),
(47, 211),
(48, 73),
(48, 68),
(48, 71),
(48, 96),
(48, 212),
(48, 213),
(48, 70),
(48, 69),
(49, 200),
(49, 201),
(49, 62),
(49, 61),
(49, 202),
(49, 214),
(50, 208),
(50, 205),
(53, 68),
(53, 73),
(53, 96),
(53, 212),
(53, 70),
(53, 71),
(53, 233),
(53, 69),
(54, 156),
(54, 235),
(54, 232),
(54, 236),
(54, 237),
(55, 138),
(55, 136),
(55, 238),
(55, 133),
(55, 134),
(55, 135),
(55, 137),
(56, 62),
(56, 61),
(56, 200),
(56, 201),
(56, 202),
(56, 239),
(56, 240),
(57, 205),
(57, 241),
(57, 207),
(57, 208),
(57, 206),
(57, 242),
(58, 46),
(58, 243),
(58, 244),
(58, 51),
(58, 245),
(58, 52),
(58, 45),
(58, 57),
(58, 56),
(58, 246),
(58, 247),
(58, 248),
(59, 132),
(59, 52),
(59, 244),
(59, 51),
(59, 249),
(59, 250),
(59, 246),
(60, 165),
(60, 251),
(60, 252),
(60, 166),
(60, 169),
(60, 167),
(60, 172),
(60, 176),
(60, 173),
(62, 96),
(62, 69),
(62, 233),
(62, 70),
(63, 53),
(63, 56),
(63, 246),
(63, 45),
(65, 44),
(65, 266),
(65, 267),
(68, 269),
(68, 268),
(68, 270),
(68, 272),
(68, 273),
(68, 274),
(69, 271),
(69, 274),
(69, 269),
(69, 268),
(69, 270),
(69, 273),
(69, 272),
(70, 270),
(70, 272),
(70, 269),
(70, 268),
(70, 271),
(70, 273),
(70, 274),
(73, 240),
(73, 61),
(73, 62),
(73, 201),
(73, 202),
(73, 200),
(72, 282),
(72, 281),
(72, 280),
(72, 279),
(72, 278),
(72, 277),
(71, 276),
(71, 105),
(71, 275),
(71, 216),
(71, 88),
(71, 87),
(71, 79),
(75, 45),
(75, 283),
(74, 284),
(74, 285),
(74, 286),
(74, 287),
(74, 288),
(74, 44),
(74, 257),
(74, 6),
(74, 258),
(74, 8),
(74, 10),
(74, 289),
(74, 290),
(74, 291),
(74, 292),
(74, 293),
(74, 294),
(74, 295),
(74, 296),
(74, 297),
(74, 298),
(74, 299),
(74, 300),
(74, 301),
(76, 225),
(76, 302),
(76, 303),
(76, 304),
(76, 305),
(76, 306),
(76, 307),
(76, 75),
(76, 308),
(76, 309),
(76, 310),
(76, 311),
(76, 312),
(76, 313),
(76, 314),
(76, 315),
(76, 316),
(76, 257),
(76, 291),
(76, 289),
(76, 44),
(76, 10),
(76, 6),
(76, 8),
(76, 317),
(51, 79),
(51, 100),
(51, 87),
(51, 88),
(51, 215),
(51, 216),
(51, 217),
(51, 218),
(51, 219),
(52, 220),
(52, 221),
(52, 8),
(52, 222),
(52, 223),
(52, 224),
(52, 227),
(52, 232),
(52, 231),
(52, 230),
(52, 229),
(52, 228),
(52, 226),
(52, 225),
(52, 318),
(52, 10),
(52, 6),
(52, 257),
(52, 319),
(52, 256),
(52, 307),
(52, 317),
(61, 265),
(61, 264),
(61, 263),
(61, 262),
(61, 261),
(61, 260),
(61, 259),
(61, 173),
(61, 258),
(61, 257),
(61, 44),
(61, 8),
(61, 10),
(61, 6),
(61, 256),
(61, 255),
(61, 254),
(61, 172),
(61, 253),
(61, 30),
(77, 277),
(77, 281),
(77, 280),
(77, 279),
(77, 278),
(77, 282),
(77, 320),
(77, 321),
(78, 45),
(78, 53),
(78, 56),
(78, 246),
(78, 283),
(79, 322),
(79, 278),
(79, 323),
(79, 282),
(79, 281),
(79, 277),
(79, 279),
(79, 324),
(80, 208),
(80, 210),
(80, 205),
(80, 241),
(80, 325),
(81, 205),
(81, 241),
(81, 326),
(81, 325),
(81, 327),
(81, 242),
(81, 328),
(81, 329),
(82, 56),
(82, 246),
(82, 53),
(82, 283),
(83, 279),
(83, 330),
(83, 278),
(83, 331),
(83, 282),
(83, 281),
(84, 8),
(84, 333),
(84, 334),
(84, 335),
(84, 29),
(84, 336),
(84, 284),
(84, 337),
(84, 338),
(84, 231),
(84, 339),
(84, 340),
(84, 341),
(84, 342),
(84, 289),
(84, 343),
(84, 344),
(84, 291),
(84, 334),
(84, 345),
(84, 346),
(84, 347);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `password`, `username`) VALUES
(2, '$2a$10$4PrSYyc.LIJbXRHa4BHVseuxLLCVARWSA6lgXX4toys6GtiPQU6ge', 'admin'),
(3, '$2a$10$A1xEFJAz1.efU0Nt4/kzgOJ9fOaSWGu1jYetotDZLB5OeaBkgs24a', 'user'),
(4, '$2a$10$sSBHb2AkCYpluDlvm.JNkOe5cY2qqT12iEoE.J.ANlq4XiH0iOmpu', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--


-- THE COMMENTED LINES ARE THE ONES THAT ARE CONFLICTING WITH AUTO-GENERATED SQL

-- ALTER TABLE `addresses`
--   ADD PRIMARY KEY (`id`);

--
-- Index pour la table `events`
--
-- ALTER TABLE `events`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `UniqueEvent` (`name`,`date`),
--   ADD KEY `FKquc7xx27bo60lupj2rf7e0hn2` (`address_id`),
--   ADD KEY `FKmp98picpga4uk631rvnn7t895` (`type_id`);

--
-- Index pour la table `events_contacts`
--
ALTER TABLE `events_contacts`
  ADD KEY `FK7ra0h2oj4rgp6i9tygd5vtusg` (`contacts_id`),
  ADD KEY `FKdjusp6ppj34vohc87c5aeai5l` (`event_id`);

--
-- Index pour la table `events_hosts`
--
ALTER TABLE `events_hosts`
  ADD KEY `FK1i43uj42tjixa8tms37safwbf` (`hosts_id`),
  ADD KEY `FK7ss1rg4ech5st67hognbnf6bp` (`event_id`);

--
-- Index pour la table `events_participants`
--
ALTER TABLE `events_participants`
  ADD KEY `FKqpm7g99wm1vl4bhnlcwwkjxo4` (`participants_id`),
  ADD KEY `FK35vivi0eufexku60chhfhw5ol` (`event_id`);

--
-- Index pour la table `event_types`
--
-- ALTER TABLE `event_types`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `UK_60hr93n9u4csw3jstw87kwvyb` (`name`);

--
-- Index pour la table `persons`
--
-- ALTER TABLE `persons`
--   ADD PRIMARY KEY (`id`),
--   ADD UNIQUE KEY `UniquePerson` (`first_name`,`last_name`,`date_of_birth`),
--   ADD KEY `FKhpk0ck378u9nar5y4b4cwb8sd` (`address_id`);

--
-- Index pour la table `roles`
--
-- ALTER TABLE `roles`
--   ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_roles`
--
-- ALTER TABLE `user_roles`
--   ADD PRIMARY KEY (`user_id`,`role_id`),
--   ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `events`
--
-- ALTER TABLE `events`
--   ADD CONSTRAINT `FKmp98picpga4uk631rvnn7t895` FOREIGN KEY (`type_id`) REFERENCES `event_types` (`id`),
--   ADD CONSTRAINT `FKquc7xx27bo60lupj2rf7e0hn2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Contraintes pour la table `events_contacts`
--
-- ALTER TABLE `events_contacts`
--   ADD CONSTRAINT `FK7ra0h2oj4rgp6i9tygd5vtusg` FOREIGN KEY (`contacts_id`) REFERENCES `persons` (`id`),
--   ADD CONSTRAINT `FKdjusp6ppj34vohc87c5aeai5l` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Contraintes pour la table `events_hosts`
--
-- ALTER TABLE `events_hosts`
--   ADD CONSTRAINT `FK1i43uj42tjixa8tms37safwbf` FOREIGN KEY (`hosts_id`) REFERENCES `persons` (`id`),
--   ADD CONSTRAINT `FK7ss1rg4ech5st67hognbnf6bp` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Contraintes pour la table `events_participants`
--
-- ALTER TABLE `events_participants`
--   ADD CONSTRAINT `FK35vivi0eufexku60chhfhw5ol` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
--   ADD CONSTRAINT `FKqpm7g99wm1vl4bhnlcwwkjxo4` FOREIGN KEY (`participants_id`) REFERENCES `persons` (`id`);

--
-- Contraintes pour la table `persons`
--
-- ALTER TABLE `persons`
--   ADD CONSTRAINT `FKhpk0ck378u9nar5y4b4cwb8sd` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`);

--
-- Contraintes pour la table `user_roles`
--
-- ALTER TABLE `user_roles`
--   ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
--   ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
-- COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- DELIMITER $$
-- --
-- -- Procédures
-- --
-- CREATE DEFINER=`web`@`%` PROCEDURE `SP_getParticipants` (IN `startDt` DATE, IN `endDt` DATE)   BEGIN
-- SELECT et.name as type, GROUP_CONCAT(DISTINCT events.name) as evenements,
--        events.date, p.last_name as nom, p.first_name as prenom,
--        TIMESTAMPDIFF(YEAR, MIN(p.date_of_birth), SYSDATE()) as age,
--        a.number as numero, a.street as rue, a.postal_code as code_postal, a.city as ville
-- FROM events
--          INNER JOIN event_types et on events.type_id = et.id
--          INNER JOIN events_participants ep on events.id = ep.event_id
--          INNER JOIN persons p on ep.participants_id = p.id
--          INNER JOIN addresses a on p.address_id = a.id
-- WHERE events.date BETWEEN `startDt` AND `endDt`
-- GROUP BY events.name, p.first_name, p.last_name
-- ORDER BY type, evenements, p.last_name, p.first_name;
-- END$$
--
-- DELIMITER ;