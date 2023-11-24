-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 21 nov. 2023 à 16:32
-- Version du serveur : 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `motoPista`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `Id_article` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `prix_HT` varchar(50) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `Id_fournisseur` int(50) DEFAULT NULL,
  `Id_sous_rubrique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`Id_article`, `libelle`, `prix_HT`, `description`, `img`, `Id_fournisseur`, `Id_sous_rubrique`) VALUES
(1, 'Replica Pedrosa', '1040.00', 'LE RX-7V EVO est l\'évolution du RX-7V. En plus de son changement d\'homologation, il présente plusieurs nouvelles\r\ncaractéristiques et modifications. Il est certifié conforme à la nouvelle réglementation ECE R22-06 tout on restant\r\nfidèle aux valeurs d\'Arai; plus rond, plus lisse, plus fort pour une gestion optimale de l\'effet ricochet. Le RX-7V EVO\r\nreprésente le summum de la connaissance, de l\'expérience et du savoir-faire Arai en technologie de casque. Système\r\n\r\nde visière révolutionnaire VAS (systéme à axe variable) Zone plus grande et plus lisse autour des tempes Nouvelle Arai\r\ndoublure Eco Pure Coussinets de joue effeuillables : maintien ajustable Nouveaux diffuseur et canaux d\'air intégrés Marque Ar )\r\nConcept Ricochet : forme optimisée pour glisser sur les obstacles, dévier l\'impact du choc pour ne pas la transmettre\r\nau pilote, Système VAS : ouverture de visière à axe variable, visière plus compacte pour un champ de vision\r\nidentique, protection faciale plus efficace. Lentille Pinlock incluse Homologation : SNELL - Européenne ECE R22.06 pére mp\r\nFabriqué à la main Garantie 5 ans Résultats aux tests d\'impact de la norme Snell largement surpassés : le premier\r\nobjectif d\'Arai est de concevoir les casques les plus sûrs au monde ! Attention ; La taille de la coque extérieure du XL\r\nest supérieure d\'une taille (86 -> 88). Guide des tailes : XS 53-54 cm S 55-56 cm M 57-58 cm L 59 cm XL 60-61 cm ee =\r\nCouleur or\r\nMatériau Fibre de verre\r\nEcran solaire rétractable Non\r\nIntérieur démontable oui\r\nJugulaire Double D\r\nType de peinture Mate\r\nStyle de Peinture Replica\r\nSystème de protection boîte cranienne Non\r\nCollection 2022\r\nCompatible Bluetooth ou\r\nEcran anti-buée inclus', 'arai_pedrosa.jpg', 1, 1),
(2, ' Ixon Zenith', '1886.19', 'Combinaison Kangourou 100% made by Ixon, aboutissement de notre implication au plus haut niveau de la\r\n\r\ncompéttion, Développés dans labjectf du GP, standardisée pour tous les piotes Eiche technique\r\nProtections coudes et épaules crées CE selon ja nomme 1621-1 + Poche dorsaie pour Dorsle certifiée CE\r\nvas Dear\r\nProtections genoux cerifiées CE selon ja nomme 16211\r\nATERIAI Référence\r\n\r\n10096 cuir de kangourou\r\nTratement icone exclu sur le cuir\r\nMousses « absorption d\'impact» à lnérieur\r\nStretch hyper extensible dans les 4 sens (43% d\'élasticté)\r\nCuir flex doublé de jersey renforcé aux emmanchures et au bas du dos\r\nCONFORT\r\nCoutures sécurisées\r\nEntièrement préformée\r\nCARACTERISTIQUES\r\nLvrée avec housse Suécover, sers et cache\r\n\r\nNOS RECOMMANDATIONS\r\n90 SLIDERS BOIS\r\n\r\nSliders PK Sliders bois. Sliders plui.', 'combinaison-ixon-zenith.jpg', 2, 2),
(3, 'Béquilles de stand av/ar', '185.70', 'fixation pour prise sous pied de fourche ( pin ) réglable de 185 a 210 mm ( voir photos )\n\nLa béquille avant rentre dans la béquille arrière ce qui rends le rangement plus facile avec un gain de place\n\nle kit qui prends sous la fixation d\'étriers avant, ne conviens pas aux motos ayant un capteur ABS sous\n\nl\'étrier ( ex R12015..2021 , R6 2017... )', 'pack_bequilles_av-ar.jpg', 2, 3),
(4, 'Béquille sous T', '157.52', 'Béquille sous T Extrem Racing Factory\r\nFiche technique\r\nNos béquilles sous T de fourche sont très stables et robustes, destinées aux motos sportives et roadsters fabriquées\r\n\r\nen tubes acier de 32 mm et démontable pour faciliter le transport et la livraison chez nos clients, elles sont livrées en =\r\nKit a monter co aŒRF\r\nune fois correctement assemblées ces béquilles présentent la même rigidité que les béquilles mono pièces de\r\nfabrication concurrentes Référence ERF3020\r\nle prix très bas les placent en tête des ventes de béquilles\r\njuile fournie avec son système de prise sous le T de fourche ( 5 broches pour différentes moto\r\n\r\npa vs Le « pour ) Couleur Noir\r\n« Elle est livré avec ses piges de diamètre 13mm - 16.5mm - 18mm - 20mm - 24mm - 27mm afin de correspondre au\r\n\r\nplus grands nombres de machine du marché. Marque Pkracingparts\r\nvérifiez bien avant commande\r\n\r\nCharge maximale (kg) 220\r\n\r\n= qu\'au moins une des piges fournies avec la béquille corresponde bien au diamêtre du trou de votre T de fourche\r\n\r\nsi ce n\'est pas le cas , prendre une pige supplémentaire en accessoire , si la pige n\'est pas du bon diamêtre\r\nl\'utilisation de la béquille est impossible\r\n\r\n= que le trou du T de fourche est dégagé de tout accessoire, ( avertisseur , répartiteur de frein … etc )\r\n\r\nATTENTION : la pige doit être du diamètre exact du trou sous le T ( a 1mm prés maximum) de fourche faute\r\nde quoi la béquille ne fonctionnera pas correctement sera instable et le bras risque de toucher le dessous\r\ndu carénage\r\n\r\nmerci donc de prendre le diamètre du trou du T de fourche de votre moto avant de commander\r\nsi le trou ne correspond pas , prendre une pige supplémentaire vendue au détail ici', 'bequille-sous-t-de-fourche .jpg', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `bon_livraison`
--

CREATE TABLE `bon_livraison` (
  `Id_bon_livraison` int(11) NOT NULL,
  `adresse_livraison` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `Id_commande` int(11) NOT NULL,
  `qte` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `date_com` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `Id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail_bon_livraison`
--

CREATE TABLE `detail_bon_livraison` (
  `Id_article` int(11) NOT NULL,
  `Id_bon_livraison` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `Id_commande` int(11) NOT NULL,
  `Id_Article` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `Id_Facture` int(11) NOT NULL,
  `adresse_facturation` varchar(50) DEFAULT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `date_paiement` varchar(50) DEFAULT NULL,
  `Id_commande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `Id_fournisseur` int(11) NOT NULL,
  `four_nom` varchar(50) DEFAULT NULL,
  `four_adresse` varchar(50) DEFAULT NULL,
  `four_mail` varchar(50) DEFAULT NULL,
  `four_ent` varchar(50) DEFAULT NULL,
  `four_tel` varchar(50) DEFAULT NULL,
  `four_prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`Id_fournisseur`, `four_nom`, `four_adresse`, `four_mail`, `four_ent`, `four_tel`, `four_prenom`) VALUES
(1, 'Durand', '28 rue des peupliers', 'vente@bihr.com', 'Bihr', '0377145684', 'Julien'),
(2, 'Desjardins', '232 route de l\'impasse', 'vente@breizh_stunt.com', 'Beizh_stunt', '0377986356', 'Lucien');

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `Id_rubrique` int(11) NOT NULL,
  `nom_rubrique` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`Id_rubrique`, `nom_rubrique`) VALUES
(1, 'equipement_pilote'),
(2, 'equipement_stand');

-- --------------------------------------------------------

--
-- Structure de la table `sous_rubrique`
--

CREATE TABLE `sous_rubrique` (
  `Id_sous_rubrique` int(11) NOT NULL,
  `nom_sous_rubrique` varchar(50) DEFAULT NULL,
  `Id_rubrique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_rubrique`
--

INSERT INTO `sous_rubrique` (`Id_sous_rubrique`, `nom_sous_rubrique`, `Id_rubrique`) VALUES
(1, 'casque', 1),
(2, 'combinaisons', 1),
(3, 'bequille_atelier', 2),
(4, 'nettoyant', 2),
(5, 'sous-combinaison', 1),
(6, 'tente/stand', 2),
(7, 'Bottes', 1),
(8, 'Gants', 1),
(9, 'accessoires', 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Id_utilisateur` int(11) NOT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `cli_ref` varchar(50) DEFAULT NULL,
  `coeff` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `ent` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `adresse1` varchar(50) DEFAULT NULL,
  `adresse2` varchar(50) DEFAULT NULL,
  `Id_utilisateur_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_utilisateur`, `prenom`, `nom`, `tel`, `cli_ref`, `coeff`, `role`, `mail`, `ent`, `password`, `adresse1`, `adresse2`, `Id_utilisateur_1`) VALUES
(1, 'Alexandre', 'Garnier', '0624589874', NULL, '', 'com_particulier', 'alexGarnier@gmail.com', NULL, NULL, NULL, NULL, NULL),
(2, 'Poag', 'Doroteya', '8895753082', 'dpoagc@barnesandnoble.com', NULL, 'com_pro', 'dpoagc@yandex.ru', NULL, NULL, 'Room 1329', 'Room 253', NULL),
(3, 'Holberry', 'Gretel', '3232665063', 'gholberryg@baidu.com', NULL, NULL, 'gholberryg@phoca.cz', NULL, NULL, 'PO Box 37303', 'Suite 70', 1),
(5, 'Coxall', 'Lisha', '6775958551', 'lcoxall4@craigslist.org', NULL, NULL, 'lcoxall4@nps.gov', NULL, NULL, 'PO Box 3467', 'Apt 775', NULL),
(6, 'Gravenor', 'Verine', '3815870382', 'vgravenor5@forbes.com', NULL, NULL, 'vgravenor5@thetimes.co.uk', NULL, NULL, 'Apt 187', '10th Floor', NULL),
(7, 'Cassely', 'Karlie', '4638581763', 'kcassely9@vinaora.com', NULL, NULL, 'kcassely9@usa.gov', NULL, NULL, 'Apt 244', 'Apt 1169', NULL),
(8, 'Moehler', 'Grethel', '5575131477', 'gmoehlerd@imageshack.us', NULL, NULL, 'gmoehlerd@goo.ne.jp', NULL, NULL, 'Room 998', 'Suite 29', NULL),
(9, 'Wellbeloved', 'Willette', '6318855236', 'wwellbelovedb@vimeo.com', NULL, NULL, 'wwellbelovedb@sphinn.com', NULL, NULL, 'Apt 861', 'Suite 64', NULL),
(10, 'Bunton', 'Caroline', '9467844701', 'cbuntoni@netlog.com', NULL, NULL, 'cbuntoni@senate.gov', NULL, NULL, 'Suite 21', 'Suite 77', NULL),
(11, 'Studeart', 'Earle', '5758652456', 'estudearta@shutterfly.com', NULL, NULL, 'estudearta@chicagotribune.com', NULL, NULL, 'Room 1874', 'PO Box 89923', NULL),
(12, 'Tregien', 'Beatriz', '2437852019', 'btregien1@a8.net', NULL, NULL, 'btregien1@nymag.com', NULL, NULL, 'PO Box 47733', 'PO Box 7368', NULL),
(13, 'Cianni', 'Arielle', '2922096224', 'acianni2@illinois.edu', NULL, NULL, 'acianni2@a8.net', NULL, NULL, 'Suite 44', 'Room 383', NULL),
(14, 'Dronsfield', 'Lonni', '2173035528', 'ldronsfield3@privacy.gov.au', NULL, NULL, 'ldronsfield3@jalbum.net', NULL, NULL, 'Suite 36', 'Room 1463', NULL),
(15, 'Zamora', 'Marinna', '4226502130', 'mzamorae@hibu.com', NULL, NULL, 'mzamorae@dot.gov', NULL, NULL, 'PO Box 75224', '4th Floor', NULL),
(16, 'Gouldsmith', 'Carine', '1636959181', 'cgouldsmith7@istockphoto.com', NULL, NULL, 'cgouldsmith7@prnewswire.com', NULL, NULL, '14th Floor', 'PO Box 49247', NULL),
(17, 'Headley', 'Oates', '5318685871', 'oheadley8@blogger.com', NULL, NULL, 'oheadley8@goo.ne.jp', NULL, NULL, 'PO Box 83624', 'Apt 1010', NULL),
(18, 'Bignall', 'Glad', '5082868086', 'gbignallj@bandcamp.com', NULL, NULL, 'gbignallj@stanford.edu', NULL, NULL, 'Room 1068', 'Apt 750', NULL),
(19, 'Sillitoe', 'Cirstoforo', '7612685929', 'csillitoeh@youku.com', NULL, NULL, 'csillitoeh@bravesites.com', NULL, NULL, 'Apt 567', 'Suite 68', NULL),
(20, 'Suffe', 'Rebeca', '4884887390', 'rsuffef@plala.or.jp', NULL, NULL, 'rsuffef@phpbb.com', NULL, NULL, 'Room 810', 'Apt 1411', NULL),
(21, 'Blankman', 'Nicole', '9087339420', 'nblankman6@zdnet.com', NULL, NULL, 'nblankman6@zimbio.com', NULL, NULL, 'Suite 44', '14th Floor', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`Id_article`),
  ADD KEY `Id_Sous_rubrique` (`Id_sous_rubrique`),
  ADD KEY `Id_Fournisseur` (`Id_fournisseur`);

--
-- Index pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  ADD PRIMARY KEY (`Id_bon_livraison`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`Id_commande`),
  ADD KEY `Id_utilisateur` (`Id_utilisateur`);

--
-- Index pour la table `detail_bon_livraison`
--
ALTER TABLE `detail_bon_livraison`
  ADD PRIMARY KEY (`Id_article`,`Id_bon_livraison`),
  ADD KEY `Id_bon_livraison` (`Id_bon_livraison`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`Id_commande`,`Id_Article`),
  ADD KEY `Id_Article` (`Id_Article`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`Id_Facture`),
  ADD UNIQUE KEY `Id_Commande` (`Id_commande`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`Id_fournisseur`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`Id_rubrique`);

--
-- Index pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  ADD PRIMARY KEY (`Id_sous_rubrique`),
  ADD KEY `Id_Rubrique` (`Id_rubrique`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Id_utilisateur`),
  ADD KEY `Id_utilisateur_1` (`Id_utilisateur_1`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `Id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  MODIFY `Id_bon_livraison` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `Id_commande` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `Id_Facture` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `Id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `Id_rubrique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  MODIFY `Id_sous_rubrique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`Id_sous_rubrique`) REFERENCES `sous_rubrique` (`Id_sous_rubrique`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`Id_fournisseur`) REFERENCES `fournisseur` (`Id_fournisseur`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`Id_utilisateur`) REFERENCES `utilisateur` (`Id_utilisateur`);

--
-- Contraintes pour la table `detail_bon_livraison`
--
ALTER TABLE `detail_bon_livraison`
  ADD CONSTRAINT `detail_bon_livraison_ibfk_1` FOREIGN KEY (`Id_article`) REFERENCES `article` (`Id_article`),
  ADD CONSTRAINT `detail_bon_livraison_ibfk_2` FOREIGN KEY (`Id_bon_livraison`) REFERENCES `bon_livraison` (`Id_bon_livraison`);

--
-- Contraintes pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD CONSTRAINT `detail_commande_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`),
  ADD CONSTRAINT `detail_commande_ibfk_2` FOREIGN KEY (`Id_Article`) REFERENCES `article` (`Id_article`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`Id_commande`) REFERENCES `commande` (`Id_commande`);

--
-- Contraintes pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  ADD CONSTRAINT `sous_rubrique_ibfk_1` FOREIGN KEY (`Id_rubrique`) REFERENCES `rubrique` (`Id_rubrique`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`Id_utilisateur_1`) REFERENCES `utilisateur` (`Id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
