-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2022 at 09:07 AM
-- Server version: 8.0.28-0ubuntu0.21.10.3
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disneyDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add movie', 7, 'add_movie'),
(26, 'Can change movie', 7, 'change_movie'),
(27, 'Can delete movie', 7, 'delete_movie'),
(28, 'Can view movie', 7, 'view_movie');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$tLWpqOgIxQstLVucCFRGRL$qlK/ZYFuXBtNJuTeZ5vXVPlPGA37jtIpjkfJ7Ir/+xw=', '2022-02-28 10:02:01.338775', 1, 'admin', '', '', '', 1, 1, '2022-02-27 07:22:10.505883');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DisneyApp_movie`
--

CREATE TABLE `DisneyApp_movie` (
  `id` bigint NOT NULL,
  `backgrdImg` varchar(600) NOT NULL,
  `cardImg` varchar(600) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `subtitle` varchar(600) NOT NULL,
  `title` varchar(600) NOT NULL,
  `type` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DisneyApp_movie`
--

INSERT INTO `DisneyApp_movie` (`id`, `backgrdImg`, `cardImg`, `description`, `subtitle`, `title`, `type`) VALUES
(1, 'dsmom-bg.jpg', 'dsmom-poster.jpg', 'Dr. Stephen Strange casts a forbidden spell that opens the door to the multiverse, including an alternate version of himself, whose threat to humanity is too great for the combined forces of Strange, Wong, and Wanda Maximoff.', '2022 • 2m 30sec Trailer • Superher, Action, Adventure, Fantasy • U/A', 'Dr. Strange Multiverse of Madness', 'Marvel'),
(2, 'batb.jpg', 'batb.jpg', 'A selfish Prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', '2017 • 2h 9m • Adventure, Family, Fantasy • U/A', 'Beauty And The Beast', 'Disney'),
(3, 'cosmos.jpg', 'cosmos.jpg', 'An exploration of our discovery of the laws of nature and coordinates in space and time.', '2014 • 9h 17m • Documentary • TV-PG', 'Cosmos: A Spacetime Odyssey', 'Nat-Geo'),
(4, 'genious.jpg', 'genious.jpg', 'The life stories of history\'s greatest minds. From their days as young adults to their final years we see their discoveries, loves, relationships, causes, flaws and genius.', '2017 • 43m • Biography, Drama, History • TV-14', 'Genius', 'Nat-Geo'),
(5, 'loki.jpg', 'loki.jpg', 'The mercurial villain Loki resumes his role as the God of Mischief in a new series that takes place after the events of “Avengers: Endgame.', '2021 • 45m • Superhero, Action, Adventure, Fantasy • TV-14', 'Loki', 'Marvel'),
(6, 'mandalorian.jpg', 'mandalorian.jpg', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', '2019 • 40m • Action, Adventure, Fantasy • TV-14', 'The Mandalorian', 'Star-Wars'),
(7, 'storyofgod.jpg', 'sotg.jpg', 'Morgan Freeman presents his quest in order to find how most religions perceive life after death, what different civilizations thought about the act of creation and other big questions that mankind has continuously asked.', '2016 • 1h • Documentary, Drama, History • TV-14', 'The Story of God with Morgan Freeman', 'Nat-Geo'),
(8, 'wandavission.jpg', 'wandavision.jpg', 'Blends the style of classic sitcoms with the MCU, in which Wanda Maximoff and Vision - two super-powered beings living their ideal suburban lives - begin to suspect that everything is not as it seems.', '2021 • 5h 50m • Superhero, Action, Adventure, Fantasy • TV-PG', 'Wanda Vision', 'Marvel');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-27 07:59:26.001098', '1', 'Dr. Strange Multiverse of Madness', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-02-27 08:06:58.534123', '2', 'Beauty And The Beast', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-02-27 08:07:57.978996', '3', 'Cosmos: A Spacetime Odyssey', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-02-27 08:08:57.525140', '4', 'Genius', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-02-27 08:09:58.857503', '5', 'Loki', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-02-27 08:11:00.917087', '6', 'The Mandalorian', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-02-27 08:12:06.602971', '7', 'The Story of God with Morgan Freeman', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-02-27 08:13:00.000441', '8', 'WandaVision', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-02-28 03:15:06.655959', '8', 'wandavision.jpg', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(10, '2022-02-28 03:15:24.009327', '7', 'The Story of God with Morgan Freeman', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(11, '2022-02-28 03:15:41.503061', '6', 'The Mandalorian', 2, '[]', 7, 1),
(12, '2022-02-28 03:16:09.586761', '6', 'The Mandalorian', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(13, '2022-02-28 03:16:26.437269', '5', 'Loki', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(14, '2022-02-28 03:16:40.682477', '4', 'Genius', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(15, '2022-02-28 03:16:58.394990', '3', 'Cosmos: A Spacetime Odyssey', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(16, '2022-02-28 03:17:17.863400', '2', 'Beauty And The Beast', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(17, '2022-02-28 03:17:35.677793', '1', 'Dr. Strange Multiverse of Madness', 2, '[{\"changed\": {\"fields\": [\"CardImg\"]}}]', 7, 1),
(18, '2022-02-28 04:02:16.329703', '8', 'Wanda Vision', 2, '[{\"changed\": {\"fields\": [\"CardImg\", \"Title\"]}}]', 7, 1),
(19, '2022-02-28 04:21:09.854291', '8', 'Wanda Vision', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(20, '2022-02-28 04:21:43.715730', '7', 'The Story of God with Morgan Freeman', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(21, '2022-02-28 04:22:24.139571', '6', 'The Mandalorian', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(22, '2022-02-28 04:23:39.811379', '5', 'Loki', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(23, '2022-02-28 04:24:59.044434', '4', 'Genius', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(24, '2022-02-28 04:26:23.931225', '3', 'Cosmos: A Spacetime Odyssey', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(25, '2022-02-28 04:27:12.621628', '2', 'Beauty And The Beast', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(26, '2022-02-28 04:27:57.126585', '1', 'Dr. Strange Multiverse of Madness', 2, '[{\"changed\": {\"fields\": [\"BackgrdImg\", \"TitleImg\"]}}]', 7, 1),
(27, '2022-02-28 10:00:39.753685', '2', 'Beauty And The Beast', 2, '[{\"changed\": {\"fields\": [\"TitleImg\"]}}]', 7, 1),
(28, '2022-02-28 10:03:06.380482', '2', 'Beauty And The Beast', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'DisneyApp', 'movie'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'DisneyApp', '0001_initial', '2022-02-27 07:12:11.698077'),
(2, 'DisneyApp', '0002_alter_movie_id', '2022-02-27 07:12:14.811165'),
(3, 'DisneyApp', '0003_alter_movie_id', '2022-02-27 07:12:18.044050'),
(4, 'DisneyApp', '0004_alter_movie_id', '2022-02-27 07:12:20.500088'),
(5, 'DisneyApp', '0005_delete_movie', '2022-02-27 07:12:21.474218'),
(6, 'contenttypes', '0001_initial', '2022-02-27 07:12:23.553920'),
(7, 'auth', '0001_initial', '2022-02-27 07:12:55.695320'),
(8, 'admin', '0001_initial', '2022-02-27 07:13:02.703638'),
(9, 'admin', '0002_logentry_remove_auto_add', '2022-02-27 07:13:02.869860'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-27 07:13:03.050553'),
(11, 'contenttypes', '0002_remove_content_type_name', '2022-02-27 07:13:07.239709'),
(12, 'auth', '0002_alter_permission_name_max_length', '2022-02-27 07:13:09.869914'),
(13, 'auth', '0003_alter_user_email_max_length', '2022-02-27 07:13:10.377556'),
(14, 'auth', '0004_alter_user_username_opts', '2022-02-27 07:13:10.636344'),
(15, 'auth', '0005_alter_user_last_login_null', '2022-02-27 07:13:12.845111'),
(16, 'auth', '0006_require_contenttypes_0002', '2022-02-27 07:13:13.034450'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2022-02-27 07:13:13.257613'),
(18, 'auth', '0008_alter_user_username_max_length', '2022-02-27 07:13:16.180263'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2022-02-27 07:13:19.478249'),
(20, 'auth', '0010_alter_group_name_max_length', '2022-02-27 07:13:20.149891'),
(21, 'auth', '0011_update_proxy_permissions', '2022-02-27 07:13:20.365378'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2022-02-27 07:13:22.952904'),
(23, 'sessions', '0001_initial', '2022-02-27 07:13:24.895909'),
(24, 'DisneyApp', '0006_initial', '2022-02-27 07:50:28.855176'),
(25, 'DisneyApp', '0007_remove_movie_titleimg', '2022-02-28 10:08:48.305923');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('718dtfwyymdt0y539v9r9lrb1ogh3s4r', '.eJxVjEsOwjAMBe-SNYoCcdyYJfueIbJjQwuolfpZIe4OlbqA7ZuZ93KF16Ur62xT6dWd3dEdfjfh-rBhA3rn4Tb6Og7L1IvfFL_T2bej2vOyu38HHc_dtzYi4CQgeg1Wgwk2gRBAIQvnSpSaEBERMCowJUucI0oiCaHJdnLvD-RON1w:1nOcqv:aRSzIs7WY9SfKig6cbf8B0K4sjCELwvRwNTjfjJ7deI', '2022-03-14 10:02:01.940192'),
('nkn5afk28tn2a9z1p3eoxx2foict6bzc', '.eJxVjEsOwjAMBe-SNYoCcdyYJfueIbJjQwuolfpZIe4OlbqA7ZuZ93KF16Ur62xT6dWd3dEdfjfh-rBhA3rn4Tb6Og7L1IvfFL_T2bej2vOyu38HHc_dtzYi4CQgeg1Wgwk2gRBAIQvnSpSaEBERMCowJUucI0oiCaHJdnLvD-RON1w:1nOWUT:OWfpEw1MJIAUP5MzptMTnOPsb8AokRikAC24Th0eePs', '2022-03-14 03:14:25.408981'),
('zl8ymlgyst629j473bp7xdzpn15kyhuh', '.eJxVjEsOwjAMBe-SNYoCcdyYJfueIbJjQwuolfpZIe4OlbqA7ZuZ93KF16Ur62xT6dWd3dEdfjfh-rBhA3rn4Tb6Og7L1IvfFL_T2bej2vOyu38HHc_dtzYi4CQgeg1Wgwk2gRBAIQvnSpSaEBERMCowJUucI0oiCaHJdnLvD-RON1w:1nOI0O:8XLj3DXacj7jNkpiUC1k_L5qlPuWN0s026pFOnSE_FQ', '2022-03-13 11:46:24.748681');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `DisneyApp_movie`
--
ALTER TABLE `DisneyApp_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DisneyApp_movie`
--
ALTER TABLE `DisneyApp_movie`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
