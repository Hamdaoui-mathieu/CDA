-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 16 jan. 2024 à 17:00
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
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `prix_ht` decimal(10,2) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `sous_rubrique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `libelle`, `prix_ht`, `description`, `img`, `fournisseur_id`, `sous_rubrique_id`) VALUES
(7, 'Casque ARAI RX-7V EVO Pedrosa Spirit Gold', '999.96', 'LE RX-7V EVO est l\'évolution du RX-7V. En plus de son changement d\'homologation, il présente plusieurs nouvelles caractéristiques et modifications. Il est certifié conforme à la nouvelle réglementation ECE R22-06 tout en restant fidèle aux valeurs d\'Arai: plus rond, plus lisse, plus fort pour une gestion optimale de l\'effet ricochet. Le RX-7V EVO représente le summum de la connaissance, de l\'expérience et du savoir-faire Arai en technologie de casque. Système de visière révolutionnaire VAS (système à axe variable) Zone plus grande et plus lisse autour des tempes Nouvelle doublure Eco Pure Coussinets de joue effeuillables: maintien ajustable Nouveaux diffuseur et canaux d\'air intégrés Concept Ricochet: forme optimisée pour glisser sur les obstacles, dévier l\'impact du choc pour ne pas la transmettre au pilote. Système VAS: ouverture de visiè à axe variable, visière plus compacte pour un champ e vision identique, protection faciale plus efficace. Lentille Pinlock incluse Homologation: SNELL - Européenne ECE R22.06 Fabriqué à la main Garantie 5 ans Résultats aux tests d\'impact de la norme Snell largement surpassés : le premier objectif d\'Arai est de concevoir les casques les plus sûrs au monde ! Attention: La taille de la coque extérieure du XL est supérieure d\'une taille (86 -> 88). Guide des tailles: XS 53-54 cm S 55-56 cm M 57-58 cm L 59 cm XL 60-61 cm', 'casque_pedrosa_2.jpg', 21, 76),
(8, 'Combinaison Ixon Zenith', '1890.99', 'Combinaison Kangourou 100% made by Ixon, aboutissement de notre implication au plus haut niveau de la compétition. Développée dans l\'objectif du GP, standardisée pour tous les pilotes.\n           Fiche technique\n           Protections coudes et épaules certifiées CE selon la norme 1621-1 + Poche dorsale pour Dorsale certifiée CE\n           Marque\n           DXON\n           Protections genoux certifiées CE selon la norme 1621-1\n           Référence\n           MATERIAUX\n           100% cuir de kangourou\n           Traitement silicone exclusif sur le cuir\n           Mousses << absorption d\'impact >> à l\'intérieur\n           Stretch hyper extensible dans les 4 sens (43% d\'élasticité)\n           Cuir flex doublé de jersey renforcé aux emmanchures et au bas du dos\n           CONFORT\n           Coutures sécurisées\n           Entièrement préformée\n           CARACTERISTIQUES\n           Livrée avec housse Suitcover, sliders et cache', 'combinaison-ixon-zenith.jpg', 22, 79);

-- --------------------------------------------------------

--
-- Structure de la table `bon_livraison`
--

CREATE TABLE `bon_livraison` (
  `id` int(11) NOT NULL,
  `adresse_livraison` varchar(255) NOT NULL,
  `commande_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `date_com` date NOT NULL,
  `cli_nom` varchar(255) NOT NULL,
  `cli_prenom` varchar(255) NOT NULL,
  `cli_adresse` varchar(255) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `utilisateur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `id` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL,
  `commande_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(11) NOT NULL,
  `adresse_facturation` varchar(255) NOT NULL,
  `date_paiement` date NOT NULL,
  `regler` tinyint(1) NOT NULL,
  `taux_tva` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `date_limite` date NOT NULL,
  `commande_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `four_nom` varchar(255) NOT NULL,
  `four_adresse` varchar(255) NOT NULL,
  `four_mail` varchar(255) NOT NULL,
  `four_ent` varchar(255) NOT NULL,
  `four_tel` int(11) NOT NULL,
  `four_prenom` varchar(255) NOT NULL,
  `four_ref` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `four_nom`, `four_adresse`, `four_mail`, `four_ent`, `four_tel`, `four_prenom`, `four_ref`) VALUES
(21, 'Dupont', '972 rue de la vitesse 93290 Tremblay en France', 'Dupont.julien@Bihr.com', 'Bihr', 322896475, 'julien', 'f1'),
(22, 'Maxime', '289 boulevard du bord de piste 83000 Toulon', 'Lacaze.max@yamahafrance.fr', 'Yamaha France', 322914586, 'Lacaze', 'f2');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `id` int(11) NOT NULL,
  `nom_rubrique` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`id`, `nom_rubrique`, `img`) VALUES
(34, 'Equipement machine et stand', 'Daytona67R.jpg'),
(35, 'Equipement du pilote', 'cat_pilote2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sous_rubrique`
--

CREATE TABLE `sous_rubrique` (
  `id` int(11) NOT NULL,
  `nom_sous_rubrique` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `rubrique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sous_rubrique`
--

INSERT INTO `sous_rubrique` (`id`, `nom_sous_rubrique`, `img`, `rubrique_id`) VALUES
(76, 'Casque', 'arai_pedrosa.jpg', 35),
(77, 'Gants', 'gant_cat.jpg', 35),
(78, 'Bottes', 'botte_cat.jpg', 35),
(79, 'Combinaisons', 'combi_cat.jpg', 35),
(80, 'tente', '.jpg', 34);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `cli_ref` varchar(255) NOT NULL,
  `coeff` decimal(10,0) NOT NULL,
  `ent` varchar(255) NOT NULL,
  `adresse1` varchar(255) NOT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `siret` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66670C757F` (`fournisseur_id`),
  ADD KEY `IDX_23A0E667BEAFB00` (`sous_rubrique_id`);

--
-- Index pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31A531A482EA2E54` (`commande_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DFB88E14F` (`utilisateur_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98344FA682EA2E54` (`commande_id`),
  ADD KEY `IDX_98344FA67294869C` (`article_id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FE86641082EA2E54` (`commande_id`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_87EA3D293BD38833` (`rubrique_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_23A0E667BEAFB00` FOREIGN KEY (`sous_rubrique_id`) REFERENCES `sous_rubrique` (`id`);

--
-- Contraintes pour la table `bon_livraison`
--
ALTER TABLE `bon_livraison`
  ADD CONSTRAINT `FK_31A531A482EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD CONSTRAINT `FK_98344FA67294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_98344FA682EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK_FE86641082EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`);

--
-- Contraintes pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  ADD CONSTRAINT `FK_87EA3D293BD38833` FOREIGN KEY (`rubrique_id`) REFERENCES `rubrique` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
