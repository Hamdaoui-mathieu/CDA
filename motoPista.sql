-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 22 déc. 2023 à 10:44
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
  `prix_ht` decimal(10,0) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `sous_rubrique_id` int(11) DEFAULT NULL,
  `detail_commande_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `id` int(11) NOT NULL,
  `qte` int(11) DEFAULT NULL,
  `commande_id` int(11) DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Structure de la table `sous_rubrique`
--

CREATE TABLE `sous_rubrique` (
  `id` int(11) NOT NULL,
  `nom_sous_categorie` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `rubrique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `mail` varchar(255) NOT NULL,
  `ent` varchar(255) NOT NULL,
  `adresse1` varchar(255) NOT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `siret` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL
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
  ADD KEY `IDX_23A0E667BEAFB00` (`sous_rubrique_id`),
  ADD KEY `IDX_23A0E66EDE14305` (`detail_commande_id`);

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
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98344FA682EA2E54` (`commande_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rubrique`
--
ALTER TABLE `rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_23A0E667BEAFB00` FOREIGN KEY (`sous_rubrique_id`) REFERENCES `sous_rubrique` (`id`),
  ADD CONSTRAINT `FK_23A0E66EDE14305` FOREIGN KEY (`detail_commande_id`) REFERENCES `detail_commande` (`id`);

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
