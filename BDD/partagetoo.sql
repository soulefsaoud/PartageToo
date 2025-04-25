-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 avr. 2025 à 16:21
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `partagetoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
                           `id` int(11) NOT NULL,
                           `title` varchar(50) NOT NULL,
                           `description` varchar(255) NOT NULL,
                           `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
                           `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
                           `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
                                                                                                   (111, 'T4 spacieux de 70 m² proche gare', 'Découvrez ce T4 spacieux situé proche gare. D\'une superficie de 70 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Voluptatem deserunt et qui consequatur officia. Quasi sequi id omnis doloremque debitis vel. Porro nobis et rerum dolor', '2025-04-16 15:45:43', '2025-04-19 14:02:07', NULL),
(112, 'T2 spacieux de 75 m² proche gare', 'Découvrez ce T2 spacieux situé proche gare. D\'une superficie de 75 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Aut eos qui perspiciatis nihil. Provident cupiditate facere est esse ratione qui consectetur. Rem quas excepturi maxim', '2025-04-16 06:54:47', '2025-04-22 09:49:42', NULL),
                                                                                                   (113, 'Maison moderne de 103 m² proche commerces', 'Découvrez ce Maison moderne situé proche commerces. D\'une superficie de 103 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Eligendi libero repudiandae sit aspernatur non deserunt. Minus sunt deserunt at quo. Nihil est sed ducimus.', '2025-04-03 07:57:05', '2025-04-06 18:26:47', NULL),
(114, 'T4 meublé de 117 m² quartier résidentiel', 'Découvrez ce T4 meublé situé quartier résidentiel. D\'une superficie de 117 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Consequatur et dignissimos exercitationem mollitia ipsa voluptas expedita. Consequatur cupiditate consequatur ', '2025-03-29 13:31:29', '2025-04-08 12:40:28', NULL),
                                                                                                   (115, 'Loft lumineux de 106 m² centre-ville', 'Découvrez ce Loft lumineux situé centre-ville. D\'une superficie de 106 m², ce bien offre un cadre de vie agréable. Doloribus et laboriosam pariatur quo vero et et cumque. Illum at rerum vitae rerum. Aut repellat numquam eum sit ea et excepturi. Vitae duci', '2025-04-03 18:51:42', '2025-04-14 13:45:04', NULL),
(116, 'T2 meublé de 139 m² centre-ville', 'Découvrez ce T2 meublé situé centre-ville. D\'une superficie de 139 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Voluptatem ipsam aperiam atque et nostrum magnam. Autem molestiae fugit quibusdam reiciendis. Est a dolor sed et.', '2025-04-07 11:04:13', '2025-04-08 22:10:21', NULL),
                                                                                                   (117, 'Loft moderne de 116 m² centre-ville', 'Découvrez ce Loft moderne situé centre-ville. D\'une superficie de 116 m², ce bien offre un cadre de vie agréable. Enim aut ut voluptatem est aut blanditiis. In voluptatem est et et voluptas vel eum. Libero debitis ut saepe quaerat rerum sunt. Ipsum volupt', '2025-03-29 21:28:36', '2025-04-16 04:21:52', NULL),
(118, 'Maison meublé de 35 m² proche commerces', 'Découvrez ce Maison meublé situé proche commerces. D\'une superficie de 35 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Aut amet eum quod sint magnam. Recusandae fugiat qui accusantium mollitia. Autem eos est eaque repudiandae aspe', '2025-03-18 13:31:44', '2025-04-12 04:10:35', NULL),
                                                                                                   (119, 'Appartement meublé de 47 m² centre-ville', 'Découvrez ce Appartement meublé situé centre-ville. D\'une superficie de 47 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Eum sit quisquam nemo. Deserunt omnis nam ducimus fugit odit voluptatum. Omnis beatae enim odit dolorem. Iusto', '2025-01-11 13:02:26', '2025-01-18 10:05:11', NULL),
(120, 'T3 meublé de 30 m² centre-ville', 'Découvrez ce T3 meublé situé centre-ville. D\'une superficie de 30 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Pariatur doloremque non et at quos et asperiores. Quia quis non dignissimos dolor et neque labore. Adipisci sed nemo et ', '2025-01-25 04:12:28', '2025-01-30 05:06:35', '2025-04-22 09:37:21'),
                                                                                                   (121, 'Maison rénové de 59 m² proche commerces', 'Découvrez ce Maison rénové situé proche commerces. D\'une superficie de 59 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Officia ea nostrum nihil neque et enim veniam. Voluptas tempora tempora voluptas vel aspernatur sit est. Aperia', '2024-11-16 20:51:36', '2025-03-11 07:30:59', '2025-03-30 00:34:53'),
(122, 'Studio moderne de 53 m² proche gare', 'Découvrez ce Studio moderne situé proche gare. D\'une superficie de 53 m², ce bien offre un cadre de vie agréable. Assumenda id unde vero adipisci et non aspernatur. Fuga nemo voluptas ut officia hic et omnis. Rem reprehenderit voluptatem quibusdam volupta', '2024-11-01 12:09:51', '2025-02-03 07:45:01', NULL),
                                                                                                   (123, 'Studio rénové de 50 m² proche gare', 'Découvrez ce Studio rénové situé proche gare. D\'une superficie de 50 m², ce bien offre un cadre de vie agréable. Cum et ipsum fugit facere vel molestiae. Commodi illum rerum rem amet. Vel vero voluptatem libero ut cumque adipisci adipisci. Cupiditate repu', '2024-12-07 04:13:55', '2025-01-23 10:22:55', '2025-03-09 16:02:15'),
(124, 'T4 meublé de 109 m² proche gare', 'Découvrez ce T4 meublé situé proche gare. D\'une superficie de 109 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Reiciendis eius corporis voluptas nihil illum delectus. Omnis mollitia optio explicabo qui rem nihil minus. Vel est et ', '2025-01-24 01:23:32', '2025-04-01 01:47:36', NULL),
                                                                                                   (125, 'Maison moderne de 59 m² quartier résidentiel', 'Découvrez ce Maison moderne situé quartier résidentiel. D\'une superficie de 59 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Error sequi qui iure minima culpa voluptas aliquam rem. Quia illo consectetur in voluptatem dolorum odit d', '2023-11-19 21:04:16', '2023-12-10 19:42:11', NULL),
(126, 'T3 moderne de 58 m² proche gare', 'Découvrez ce T3 moderne situé proche gare. D\'une superficie de 58 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Libero vitae aliquid et occaecati fugit reprehenderit velit. Sit illum quo suscipit atque aliquid eos. Et commodi nihil ', '2024-01-04 21:45:57', '2024-11-09 11:12:18', NULL),
                                                                                                   (127, 'T3 lumineux de 55 m² proche gare', 'Découvrez ce T3 lumineux situé proche gare. D\'une superficie de 55 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Repellendus hic quod repudiandae animi in aperiam. Facilis itaque esse quaerat est accusantium quibusdam.', '2023-05-19 14:05:14', '2024-04-20 09:09:21', NULL),
(128, 'Appartement spacieux de 99 m² proche commerces', 'Découvrez ce Appartement spacieux situé proche commerces. D\'une superficie de 99 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Facere sapiente aut aut ut ut at saepe. Omnis rerum reiciendis tempore. Natus aliquid nobis voluptatum i', '2024-06-13 04:20:27', '2024-09-13 07:08:46', NULL),
                                                                                                   (129, 'Loft moderne de 81 m² quartier résidentiel', 'Découvrez ce Loft moderne situé quartier résidentiel. D\'une superficie de 81 m², ce bien offre un cadre de vie agréable. Illo iusto laudantium tenetur voluptatem. Laboriosam rerum porro qui ut saepe et. Consequatur et placeat non deserunt.', '2024-04-04 13:00:41', '2024-08-05 04:05:36', NULL),
(130, 'T4 spacieux de 115 m² proche commerces', 'Découvrez ce T4 spacieux situé proche commerces. D\'une superficie de 115 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Modi officiis dolore rerum omnis. Cum quod consequuntur possimus laudantium occaecati et. Voluptatum in omnis vo', '2023-09-13 12:31:50', '2024-01-19 23:55:08', NULL),
                                                                                                   (131, 'Studio lumineux de 124 m² proche commerces', 'Découvrez ce Studio lumineux situé proche commerces. D\'une superficie de 124 m², ce bien offre un cadre de vie agréable. Expedita dolores quidem sint optio. Exercitationem ea distinctio voluptatem nobis minima omnis aut. Illum dolores dolorum quibusdam si', '2023-10-21 01:32:49', '2025-02-22 20:23:18', NULL),
(132, 'Appartement meublé de 104 m² proche commerces', 'Découvrez ce Appartement meublé situé proche commerces. D\'une superficie de 104 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Dolores necessitatibus debitis nihil ducimus. Sed ab incidunt eum accusantium aliquam ut et. Quia labore ', '2023-06-16 13:48:22', '2024-06-08 00:31:12', '2024-11-22 12:23:04'),
                                                                                                   (133, 'T4 meublé de 31 m² centre-ville', 'Découvrez ce T4 meublé situé centre-ville. D\'une superficie de 31 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Facere sed ut natus illo. Dolores non in reiciendis nesciunt error autem ullam tenetur. Quia hic dicta sunt similique. I', '2024-05-18 05:52:52', '2024-06-17 23:46:54', NULL),
(134, 'Studio spacieux de 103 m² quartier résidentiel', 'Découvrez ce Studio spacieux situé quartier résidentiel. D\'une superficie de 103 m², ce bien offre un cadre de vie agréable. Sunt facere similique rerum soluta. Culpa odio enim repellendus eum. Architecto et laboriosam atque consequuntur aperiam recusanda', '2023-10-23 22:03:49', '2024-01-03 23:10:43', NULL),
                                                                                                   (135, 'Loft rénové de 89 m² quartier résidentiel', 'Découvrez ce Loft rénové situé quartier résidentiel. D\'une superficie de 89 m², ce bien offre un cadre de vie agréable. Aut et cum cumque saepe ut. Sint ut et est similique. Totam voluptatem sed laboriosam.', '2024-08-02 17:20:42', '2024-11-19 06:48:57', NULL),
(136, 'Appartement lumineux de 24 m² centre-ville', 'Découvrez ce Appartement lumineux situé centre-ville. D\'une superficie de 24 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Sit beatae sunt necessitatibus ab facere ut. Impedit dicta sequi voluptatibus ab. Voluptatem quo aut totam bl', '2023-06-25 03:16:46', '2023-10-10 16:09:28', NULL),
                                                                                                   (137, 'T3 moderne de 121 m² proche gare', 'Découvrez ce T3 moderne situé proche gare. D\'une superficie de 121 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Corrupti nisi eos dolores vel sequi iste. Sit voluptatem aspernatur aspernatur sed error provident minima. Omnis vero ', '2023-09-08 03:49:44', '2025-03-09 16:53:53', NULL),
(138, 'T4 rénové de 129 m² proche gare', 'Découvrez ce T4 rénové situé proche gare. D\'une superficie de 129 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Minus cumque dolorem vitae ut esse. Voluptatem voluptatum commodi minima rem distinctio praesentium sit. Saepe aspernat', '2023-08-21 23:09:43', '2024-10-15 20:04:59', NULL),
                                                                                                   (139, 'T4 moderne de 116 m² proche commerces', 'Découvrez ce T4 moderne situé proche commerces. D\'une superficie de 116 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Necessitatibus voluptatem consequatur quia saepe aperiam illo. Non aliquid nihil dolor voluptate et laborum odit.', '2023-07-11 16:30:40', '2024-10-23 06:48:22', NULL),
(140, 'Maison lumineux de 110 m² quartier résidentiel', 'Découvrez ce Maison lumineux situé quartier résidentiel. D\'une superficie de 110 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Magnam sunt quidem perferendis quas animi. Rerum maxime aut in illum nemo fugit. Fugiat fugiat earum qui.', '2023-07-06 07:44:01', '2024-01-27 03:55:59', '2025-02-27 16:41:21'),
                                                                                                   (141, 'T2 moderne de 80 m² centre-ville', 'Découvrez ce T2 moderne situé centre-ville. D\'une superficie de 80 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Voluptatum accusamus beatae ipsum architecto. Temporibus voluptatem aut omnis vitae tempore. Est sed eius eum commodi ', '2024-09-06 16:38:01', '2024-09-22 13:03:19', '2025-01-23 10:30:16'),
(142, 'T2 rénové de 62 m² quartier résidentiel', 'Découvrez ce T2 rénové situé quartier résidentiel. D\'une superficie de 62 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Qui repudiandae architecto alias reiciendis. Temporibus animi alias quia aut blanditiis. Ducimus repellendus vo', '2024-04-27 07:55:36', '2024-06-24 19:49:33', NULL),
                                                                                                   (143, 'T3 lumineux de 45 m² proche gare', 'Découvrez ce T3 lumineux situé proche gare. D\'une superficie de 45 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Fugiat nam dicta sit veniam molestias id quia. Ut asperiores impedit est culpa est libero. Nihil fugit facere ut ipsum ', '2023-06-09 12:09:20', '2024-06-13 19:08:18', NULL),
(144, 'T3 calme de 96 m² proche gare', 'Découvrez ce T3 calme situé proche gare. D\'une superficie de 96 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Esse sit aliquid unde velit accusantium nisi quasi. Consequatur et voluptatem assumenda consequatur molestiae asperiores ', '2024-10-17 21:29:35', '2025-02-22 08:17:51', NULL),
                                                                                                   (145, 'Studio moderne de 63 m² proche commerces', 'Découvrez ce Studio moderne situé proche commerces. D\'une superficie de 63 m², ce bien offre un cadre de vie agréable. Perspiciatis quia sunt ipsum nobis. Temporibus deserunt voluptas rem hic deserunt non. Aperiam molestiae quasi ipsum nihil et autem dolo', '2024-05-21 14:24:37', '2025-01-02 09:53:58', NULL),
(146, 'Maison spacieux de 51 m² proche commerces', 'Découvrez ce Maison spacieux situé proche commerces. D\'une superficie de 51 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Asperiores qui tempore ipsum qui corporis ab cumque. Necessitatibus magni eum porro voluptates sequi. Et vel f', '2024-04-03 13:18:19', '2024-12-19 04:49:23', NULL),
                                                                                                   (147, 'T2 moderne de 66 m² proche commerces', 'Découvrez ce T2 moderne situé proche commerces. D\'une superficie de 66 m², ce bien offre un cadre de vie agréable. Il dispose de 3 chambres. Et aut eaque omnis nemo consectetur. Quod voluptas repudiandae minus assumenda. Quia nulla sit exercitationem comm', '2023-10-30 19:49:32', '2025-04-08 15:16:52', NULL),
(148, 'T4 calme de 97 m² proche gare', 'Découvrez ce T4 calme situé proche gare. D\'une superficie de 97 m², ce bien offre un cadre de vie agréable. Il dispose de 1 chambre. Eaque in repellendus quasi officia. Iusto fugit autem quia doloremque excepturi accusamus cumque. Ut dolorem iusto deserun', '2024-09-26 13:55:47', '2025-01-02 09:46:36', NULL),
                                                                                                   (149, 'T3 calme de 20 m² centre-ville', 'Découvrez ce T3 calme situé centre-ville. D\'une superficie de 20 m², ce bien offre un cadre de vie agréable. Il dispose de 2 chambres. Rerum incidunt omnis assumenda asperiores. Eius eos dolores rerum sed. Sed eum nihil recusandae eum.', '2023-09-15 04:47:09', '2023-10-29 01:07:38', NULL),
(150, 'Studio lumineux de 55 m² quartier résidentiel', 'Découvrez ce Studio lumineux situé quartier résidentiel. D\'une superficie de 55 m², ce bien offre un cadre de vie agréable. Quis et est et est. Inventore libero porro cupiditate ea. Iure necessitatibus id qui nihil. Sequi nemo quidem aut voluptate molesti', '2024-07-27 10:13:54', '2024-09-20 13:22:34', '2024-11-20 07:47:03');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
                                               `version` varchar(191) NOT NULL,
                                               `executed_at` datetime DEFAULT NULL,
                                               `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
                                      `id` bigint(20) NOT NULL,
                                      `body` longtext NOT NULL,
                                      `headers` longtext NOT NULL,
                                      `queue_name` varchar(190) NOT NULL,
                                      `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
                                      `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
                                      `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
    ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
    ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
    ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
