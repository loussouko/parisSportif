-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 02 août 2019 à 17:49
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `paris`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add paris', 7, 'add_paris'),
(26, 'Can change paris', 7, 'change_paris'),
(27, 'Can delete paris', 7, 'delete_paris'),
(28, 'Can view paris', 7, 'view_paris'),
(29, 'Can add discipline', 8, 'add_discipline'),
(30, 'Can change discipline', 8, 'change_discipline'),
(31, 'Can delete discipline', 8, 'delete_discipline'),
(32, 'Can view discipline', 8, 'view_discipline'),
(33, 'Can add match', 9, 'add_match'),
(34, 'Can change match', 9, 'change_match'),
(35, 'Can delete match', 9, 'delete_match'),
(36, 'Can view match', 9, 'view_match'),
(37, 'Can add equipes', 10, 'add_equipes'),
(38, 'Can change equipes', 10, 'change_equipes'),
(39, 'Can delete equipes', 10, 'delete_equipes'),
(40, 'Can view equipes', 10, 'view_equipes'),
(41, 'Can add equipe', 10, 'add_equipe'),
(42, 'Can change equipe', 10, 'change_equipe'),
(43, 'Can delete equipe', 10, 'delete_equipe'),
(44, 'Can view equipe', 10, 'view_equipe'),
(45, 'Can add user profile', 11, 'add_userprofile'),
(46, 'Can change user profile', 11, 'change_userprofile'),
(47, 'Can delete user profile', 11, 'delete_userprofile'),
(48, 'Can view user profile', 11, 'view_userprofile');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$D3GDET61gGvg$WIH5sjSEqOtfO3D6PGOmgU+Iyx3gfcPJDBPgvLkjYNI=', '2019-08-02 13:57:30.705871', 1, 'Light', '', '', 'anassejean@gmail.com', 1, 1, '2019-07-28 18:19:43.973845'),
(2, 'pbkdf2_sha256$150000$P4iqjckxRtRw$JucA0oY9YiQYr6DvnwhFKJxr8I6sTJouyVLP2bYa/n0=', '2019-07-29 09:25:00.579901', 0, 'Michael', 'Michael', 'koffi', 'doudou@gmail.com', 0, 1, '2019-07-28 19:29:24.000000'),
(3, 'pbkdf2_sha256$150000$fAisPLZXRBRY$NKtLx9iicXp7C887+VqlU5ETLcTVnCxqEVizpc8MyUw=', '2019-07-29 13:37:09.401571', 0, 'koudou', 'Koudou', 'junior', 'junior@gmail.com', 0, 1, '2019-07-29 13:33:53.841635'),
(9, 'pbkdf2_sha256$150000$m4SCmWU0hegY$6BlVRR9jj9Xzsfa6f8G13+sOHfge/wHD/xZuiknWqFI=', '2019-08-02 13:46:57.839569', 0, 'koffi', 'Koffi', 'eliezer', 'zara@gmail.com', 0, 1, '2019-08-01 16:52:39.110285'),
(10, 'pbkdf2_sha256$150000$kxv3x6uzTqVU$l+cI/W95OrpM33UEBbSI+sL0z1B4oeYRSW/naCAF91E=', '2019-08-02 13:41:26.623694', 0, 'digbeu', 'digbeu', 'serie', 'sery@gmail.com', 0, 1, '2019-08-02 13:41:14.819785'),
(11, 'pbkdf2_sha256$150000$V6L9NhdvNi13$mX0pm/lIvg6RgwwYB6iqaN5a/zs6wDGBSSeBQ7+8Q9k=', '2019-08-02 13:55:25.519127', 0, 'junior', 'junior', 'koffi', 'hp24@gmail.com', 0, 1, '2019-08-02 13:55:15.093222');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-07-28 19:29:24.770168', '2', 'Michael', 1, '[{\"added\": {}}]', 4, 1),
(2, '2019-07-28 19:30:14.295601', '2', 'Michael', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(3, '2019-07-28 19:30:29.675097', '2', 'Michael', 2, '[]', 4, 1),
(4, '2019-07-28 19:30:33.787110', '2', 'Michael', 2, '[]', 4, 1),
(5, '2019-07-28 19:30:37.811422', '2', 'Michael', 2, '[]', 4, 1),
(6, '2019-07-29 16:20:12.169906', '1', 'Discipline object (1)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2019-07-29 16:20:16.420945', '1', 'Discipline object (1)', 2, '[]', 8, 1),
(8, '2019-07-29 16:22:44.281828', '2', 'Basketball', 1, '[{\"added\": {}}]', 8, 1),
(9, '2019-07-29 16:35:10.126603', '1', 'Equipes object (1)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2019-07-29 16:35:29.402264', '2', 'Equipes object (2)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2019-07-29 20:35:08.458042', '3', 'Liverpool', 1, '[{\"added\": {}}]', 10, 1),
(12, '2019-07-29 20:35:29.981318', '4', 'Manchester United', 1, '[{\"added\": {}}]', 10, 1),
(13, '2019-07-29 22:16:13.149163', '6', 'Match object (6)', 1, '[{\"added\": {}}]', 9, 1),
(14, '2019-07-29 23:14:37.835509', '6', 'Match object (6)', 2, '[]', 9, 1),
(15, '2019-07-29 23:15:10.006309', '7', 'Match object (7)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2019-07-31 09:12:51.365441', '8', 'Match object (8)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2019-07-31 09:13:23.470208', '9', 'Match object (9)', 1, '[{\"added\": {}}]', 9, 1),
(18, '2019-08-01 09:14:36.566694', '1', 'UserProfile object (1)', 1, '[{\"added\": {}}]', 11, 1),
(19, '2019-08-01 16:37:07.784336', '2', 'koudou', 1, '[{\"added\": {}}]', 11, 1),
(20, '2019-08-02 12:16:59.658887', '9', 'Match object (9)', 3, '', 9, 1),
(21, '2019-08-02 12:17:27.913121', '10', 'Match object (10)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'page', 'discipline'),
(10, 'page', 'equipe'),
(9, 'page', 'match'),
(7, 'page', 'paris'),
(11, 'page', 'userprofile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-28 18:16:16.734575'),
(2, 'auth', '0001_initial', '2019-07-28 18:16:18.308495'),
(3, 'admin', '0001_initial', '2019-07-28 18:16:23.747564'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-28 18:16:24.645251'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-28 18:16:24.706346'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-28 18:16:25.921186'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-28 18:16:26.581713'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-07-28 18:16:27.371488'),
(9, 'auth', '0004_alter_user_username_opts', '2019-07-28 18:16:27.468119'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-07-28 18:16:27.897236'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-07-28 18:16:27.927899'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-28 18:16:27.997848'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-07-28 18:16:28.660119'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-28 18:16:29.304925'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-07-28 18:16:29.961777'),
(16, 'auth', '0011_update_proxy_permissions', '2019-07-28 18:16:30.042028'),
(17, 'sessions', '0001_initial', '2019-07-28 18:16:30.476424'),
(18, 'page', '0001_initial', '2019-07-29 15:45:36.184645'),
(19, 'page', '0002_auto_20190729_1922', '2019-07-29 19:22:39.796017'),
(20, 'page', '0003_auto_20190729_2059', '2019-07-29 20:59:19.137389'),
(21, 'page', '0004_auto_20190731_0909', '2019-07-31 09:09:48.426406'),
(22, 'page', '0005_userprofile', '2019-08-01 09:13:02.174739'),
(23, 'page', '0006_auto_20190801_1657', '2019-08-01 16:58:10.683844'),
(24, 'page', '0007_auto_20190801_1812', '2019-08-01 18:12:26.116693');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1l1ik79yxqlirw1lcelgciz9twm7223z', 'ZWI3N2U1NDIyYTA0OTEwMjhhNDAwYzBhN2IwNjY5ZWNmMjQ3MTJmYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWM1NDE0N2EwY2QwNmNjYzk0ZDA5NzhiMmE3NDk2NDkxYjZiOTBjIn0=', '2019-08-16 12:17:53.030829'),
('6a0dvkzpwq15mzoaq7alkjtxcgqm7flb', 'Y2ZjMmMwZWNlMzM1NGVmOTA3ODg4MzdlYzJjYWQ1ZGFkZTc4NGJmYTp7fQ==', '2019-08-16 09:49:49.517731'),
('a7p1d6uhcr2045ueij6zwmf9l8qvqy14', 'Y2ZjMmMwZWNlMzM1NGVmOTA3ODg4MzdlYzJjYWQ1ZGFkZTc4NGJmYTp7fQ==', '2019-08-15 18:52:57.995029'),
('cmde6djpdwetsq4tocjxi5xj5v7wbd3r', 'Y2ZjMmMwZWNlMzM1NGVmOTA3ODg4MzdlYzJjYWQ1ZGFkZTc4NGJmYTp7fQ==', '2019-08-15 18:50:07.331027'),
('k11kakhbgwuapo6fqa6dbp4ejh9k6y3g', 'ZWI3N2U1NDIyYTA0OTEwMjhhNDAwYzBhN2IwNjY5ZWNmMjQ3MTJmYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWM1NDE0N2EwY2QwNmNjYzk0ZDA5NzhiMmE3NDk2NDkxYjZiOTBjIn0=', '2019-08-15 22:27:07.940904'),
('z924ohkugbpct3uf2sk9k7ovne7ts0ft', 'Y2ZjMmMwZWNlMzM1NGVmOTA3ODg4MzdlYzJjYWQ1ZGFkZTc4NGJmYTp7fQ==', '2019-08-15 18:53:13.669752');

-- --------------------------------------------------------

--
-- Structure de la table `page_discipline`
--

CREATE TABLE `page_discipline` (
  `id` int(11) NOT NULL,
  `nomDiscipline` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `page_discipline`
--

INSERT INTO `page_discipline` (`id`, `nomDiscipline`) VALUES
(1, 'Football'),
(2, 'Basketball');

-- --------------------------------------------------------

--
-- Structure de la table `page_equipe`
--

CREATE TABLE `page_equipe` (
  `id` int(11) NOT NULL,
  `nomEquipe` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `discipline_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `page_equipe`
--

INSERT INTO `page_equipe` (`id`, `nomEquipe`, `image`, `discipline_id`) VALUES
(1, 'Arsenal', 'equipeimg/arsenal.jpg', 1),
(2, 'chelsea', 'equipeimg/chelsea.jpg', 1),
(3, 'Liverpool', 'equipeimg/liverpool.jpg', 1),
(4, 'Manchester United', 'equipeimg/manchesterU.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `page_match`
--

CREATE TABLE `page_match` (
  `id` int(11) NOT NULL,
  `equipeP_id` int(11) NOT NULL,
  `scoreP` int(11) NOT NULL,
  `equipeA_id` int(11) NOT NULL,
  `scoreA` int(11) NOT NULL,
  `jouer` int(11) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  `heure` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `page_match`
--

INSERT INTO `page_match` (`id`, `equipeP_id`, `scoreP`, `equipeA_id`, `scoreA`, `jouer`, `discipline_id`, `heure`) VALUES
(8, 1, 0, 2, 0, 0, 1, '2019-07-31 16:12:00.000000'),
(10, 3, 0, 4, 0, 0, 1, '2019-08-02 15:17:04.000000');

-- --------------------------------------------------------

--
-- Structure de la table `page_paris`
--

CREATE TABLE `page_paris` (
  `id` int(11) NOT NULL,
  `equipeP` varchar(100) COLLATE utf8_bin NOT NULL,
  `scoreP` int(11) NOT NULL,
  `equipeA` varchar(100) COLLATE utf8_bin NOT NULL,
  `scoreA` int(11) NOT NULL,
  `gagner` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `utilisateur` int(11) NOT NULL,
  `mise` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `page_paris`
--

INSERT INTO `page_paris` (`id`, `equipeP`, `scoreP`, `equipeA`, `scoreA`, `gagner`, `match_id`, `utilisateur`, `mise`) VALUES
(1, 'Arsenal', 1, 'chelsea', 2, 0, 8, 9, 200),
(7, 'Liverpool', 2, 'Manchester United', 5, 0, 10, 9, 200);

-- --------------------------------------------------------

--
-- Structure de la table `page_userprofile`
--

CREATE TABLE `page_userprofile` (
  `id` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `solde` double NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `page_userprofile`
--

INSERT INTO `page_userprofile` (`id`, `contact`, `solde`, `user_id`) VALUES
(1, 47859612, 50000, 2),
(2, 23456874, 50000, 3),
(3, 2145894, 48250, 9),
(4, 2134569, 50000, 10),
(5, 23456874, 50000, 11);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `page_discipline`
--
ALTER TABLE `page_discipline`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_equipe`
--
ALTER TABLE `page_equipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_equipes_discipline_id_3ef1c80e_fk_page_discipline_id` (`discipline_id`);

--
-- Index pour la table `page_match`
--
ALTER TABLE `page_match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_match_discipline_id_70a7d67d_fk_page_discipline_id` (`discipline_id`),
  ADD KEY `page_match_equipeP_id_7064d505` (`equipeP_id`),
  ADD KEY `page_match_equipeA_id_d66e606a` (`equipeA_id`);

--
-- Index pour la table `page_paris`
--
ALTER TABLE `page_paris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_paris_match_id_7901745c_fk_page_match_id` (`match_id`);

--
-- Index pour la table `page_userprofile`
--
ALTER TABLE `page_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `page_discipline`
--
ALTER TABLE `page_discipline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `page_equipe`
--
ALTER TABLE `page_equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `page_match`
--
ALTER TABLE `page_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `page_paris`
--
ALTER TABLE `page_paris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `page_userprofile`
--
ALTER TABLE `page_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `page_equipe`
--
ALTER TABLE `page_equipe`
  ADD CONSTRAINT `page_equipes_discipline_id_3ef1c80e_fk_page_discipline_id` FOREIGN KEY (`discipline_id`) REFERENCES `page_discipline` (`id`);

--
-- Contraintes pour la table `page_match`
--
ALTER TABLE `page_match`
  ADD CONSTRAINT `page_match_discipline_id_70a7d67d_fk_page_discipline_id` FOREIGN KEY (`discipline_id`) REFERENCES `page_discipline` (`id`),
  ADD CONSTRAINT `page_match_equipeA_id_d66e606a_fk_page_equipe_id` FOREIGN KEY (`equipeA_id`) REFERENCES `page_equipe` (`id`),
  ADD CONSTRAINT `page_match_equipeP_id_7064d505_fk_page_equipe_id` FOREIGN KEY (`equipeP_id`) REFERENCES `page_equipe` (`id`);

--
-- Contraintes pour la table `page_paris`
--
ALTER TABLE `page_paris`
  ADD CONSTRAINT `page_paris_match_id_7901745c_fk_page_match_id` FOREIGN KEY (`match_id`) REFERENCES `page_match` (`id`);

--
-- Contraintes pour la table `page_userprofile`
--
ALTER TABLE `page_userprofile`
  ADD CONSTRAINT `page_userprofile_user_id_15ee3672_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
