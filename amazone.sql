SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stocks` int NOT NULL,
  `trader_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFDD31681273968F` (`trader_id`),
  KEY `IDX_BFDD316812469DE2` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price`, `image`, `stocks`, `trader_id`, `category_id`) VALUES
(151, 'Article 1', 'Description for article 1', 42, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 12, 38, 37),
(152, 'Article 2', 'Description for article 2', 27, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 40, 35, 36),
(153, 'Article 3', 'Description for article 3', 69, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 30, 39, 39),
(154, 'Article 4', 'Description for article 4', 60, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 30, 39, 32),
(155, 'Article 5', 'Description for article 5', 76, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 42, 33, 33),
(156, 'Article 6', 'Description for article 6', 64, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 40, 40, 38),
(157, 'Article 7', 'Description for article 7', 79, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 32, 38, 31),
(158, 'Article 8', 'Description for article 8', 11, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 36, 35, 31),
(159, 'Article 9', 'Description for article 9', 85, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 41, 37, 31),
(160, 'Article 10', 'Description for article 10', 67, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 28, 34, 38),
(161, 'Article 11', 'Description for article 11', 51, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 40, 34, 37),
(162, 'Article 12', 'Description for article 12', 74, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 37, 34, 40),
(163, 'Article 13', 'Description for article 13', 94, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 50, 38, 38),
(164, 'Article 14', 'Description for article 14', 27, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 2, 37, 38),
(165, 'Article 15', 'Description for article 15', 41, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 46, 31, 37),
(166, 'Article 16', 'Description for article 16', 66, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 27, 32, 39),
(167, 'Article 17', 'Description for article 17', 86, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 39, 36, 38),
(168, 'Article 18', 'Description for article 18', 61, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 47, 37, 34),
(169, 'Article 19', 'Description for article 19', 25, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 43, 37, 34),
(170, 'Article 20', 'Description for article 20', 56, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 12, 40, 37),
(171, 'Article 21', 'Description for article 21', 60, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 12, 33, 31),
(172, 'Article 22', 'Description for article 22', 32, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 18, 33, 31),
(173, 'Article 23', 'Description for article 23', 76, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 43, 36, 36),
(174, 'Article 24', 'Description for article 24', 44, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 3, 32, 38),
(175, 'Article 25', 'Description for article 25', 18, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 7, 39, 38),
(176, 'Article 26', 'Description for article 26', 50, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 14, 31, 35),
(177, 'Article 27', 'Description for article 27', 74, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 13, 36, 37),
(178, 'Article 28', 'Description for article 28', 12, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 14, 39, 40),
(179, 'Article 29', 'Description for article 29', 47, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 19, 36, 31),
(180, 'Article 30', 'Description for article 30', 22, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 27, 40, 31),
(181, 'Article 31', 'Description for article 31', 86, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 37, 34, 31),
(182, 'Article 32', 'Description for article 32', 50, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 12, 39, 33),
(183, 'Article 33', 'Description for article 33', 34, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 2, 33, 32),
(184, 'Article 34', 'Description for article 34', 98, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 19, 39, 40),
(185, 'Article 35', 'Description for article 35', 82, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 38, 38, 38),
(186, 'Article 36', 'Description for article 36', 79, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 37, 40, 32),
(187, 'Article 37', 'Description for article 37', 22, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 11, 32, 32),
(188, 'Article 38', 'Description for article 38', 90, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 32, 36, 36),
(189, 'Article 39', 'Description for article 39', 42, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 34, 37, 37),
(190, 'Article 40', 'Description for article 40', 26, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 41, 32, 31),
(191, 'Article 41', 'Description for article 41', 48, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 25, 36, 39),
(192, 'Article 42', 'Description for article 42', 78, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 1, 36, 33),
(193, 'Article 43', 'Description for article 43', 99, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 43, 40, 37),
(194, 'Article 44', 'Description for article 44', 95, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 6, 31, 38),
(195, 'Article 45', 'Description for article 45', 24, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 43, 37, 40),
(196, 'Article 46', 'Description for article 46', 69, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 38, 39, 39),
(197, 'Article 47', 'Description for article 47', 13, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 22, 32, 35),
(198, 'Article 48', 'Description for article 48', 25, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 14, 33, 38),
(199, 'Article 49', 'Description for article 49', 68, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 20, 35, 37),
(200, 'Article 50', 'Description for article 50', 72, 'https://images.pexels.com/photos/4588428/pexels-photo-4588428.jpeg?auto=compress&cs=tinysrgb&w=400', 35, 40, 36),
(1, 'bouteille', 'trnaslucide ', 4, 'https://images.pexels.com/photos/19486511/pexels-photo-19486511/free-photo-of-fleurs-table-plantes-centrales.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 5, 33, 31);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(31, 'Category 1'),
(32, 'Category 2'),
(33, 'Category 3'),
(34, 'Category 4'),
(35, 'Category 5'),
(36, 'Category 6'),
(37, 'Category 7'),
(38, 'Category 8'),
(39, 'Category 9'),
(40, 'Category 10');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240704144134', '2024-07-04 14:41:40', 222);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `status` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEEA76ED395` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `title`, `status`, `date`, `user_id`) VALUES
(9, '[value-2]', '[value-3]', '0000-00-00', 0),
(1, 'order 1', 'Pending', '2024-07-01', 65),
(3, 'Order 3', 'Cancelled', '2024-04-24', 70),
(10, '[value-2]', '[value-3]', '0000-00-00', 0),
(2, 'Order 2', 'Shipped', '2024-06-28', 2),
(4, 'Order 4', 'Pending', '2024-07-02', 4),
(5, 'Order 5', 'Cancelled', '2024-06-30', 5),
(6, 'Order 6', 'Pending', '2024-07-03', 6),
(7, 'Order 7', 'Shipped', '2024-06-29', 7),
(8, 'Order 8', 'Delivered', '2024-06-26', 8);

-- --------------------------------------------------------

--
-- Structure de la table `orders_articles`
--

DROP TABLE IF EXISTS `orders_articles`;
CREATE TABLE IF NOT EXISTS `orders_articles` (
  `orders_id` int NOT NULL,
  `articles_id` int NOT NULL,
  PRIMARY KEY (`orders_id`,`articles_id`),
  KEY `IDX_78FBECAECFFE9AD6` (`orders_id`),
  KEY `IDX_78FBECAE1EBAF6CC` (`articles_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `orders_articles`
--

INSERT INTO `orders_articles` (`orders_id`, `articles_id`) VALUES
(1, 151),
(1, 152),
(2, 150),
(2, 160),
(2, 163),
(3, 164);

-- --------------------------------------------------------

--
-- Structure de la table `order_invoice`
--

DROP TABLE IF EXISTS `order_invoice`;
CREATE TABLE IF NOT EXISTS `order_invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  `orders_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_661FBE0FCFFE9AD6` (`orders_id`),
  KEY `IDX_661FBE0FA76ED395` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `order_invoice`
--

INSERT INTO `order_invoice` (`id`, `price`, `date`, `user_id`, `orders_id`) VALUES
(1, 1050, '2024-07-01', 1, 1),
(2, 750, '2024-06-28', 2, 2),
(3, 155, '2024-06-25', 3, 3),
(4, 425, '2024-07-02', 4, 4),
(5, 125, '2024-06-30', 5, 5),
(6, 120, '2024-07-03', 6, 6),
(7, 820, '2024-06-29', 7, 7),
(8, 220, '2024-06-26', 8, 8),
(9, 420, '2024-07-04', 9, 9),
(10, 150, '2024-07-01', 10, 10),
(11, 1050, '2024-07-01', 11, 11),
(12, 750, '2024-06-28', 12, 12),
(13, 155, '2024-06-25', 13, 13),
(14, 425, '2024-07-02', 14, 14),
(15, 125, '2024-06-30', 15, 15),
(16, 120, '2024-07-03', 16, 16),
(17, 820, '2024-06-29', 17, 17),
(18, 220, '2024-06-26', 18, 18),
(19, 420, '2024-07-04', 19, 19),
(20, 150, '2024-07-01', 20, 20);

-- --------------------------------------------------------

--
-- Structure de la table `trader`
--

DROP TABLE IF EXISTS `trader`;
CREATE TABLE IF NOT EXISTS `trader` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `trader`
--

INSERT INTO `trader` (`id`, `name`, `lastname`, `phone`, `password`) VALUES
(31, 'TraderName 1', 'TraderLastname 1','1234567891', '$2y$10$LGNBbcRHdmuktG3RByhdBepw/MGh9yHEe0PLrWAbk9lEKJ6F12XfS'),
(32, 'TraderName 2', 'TraderLastname 2','1234567892', '$2y$10$irLHWSOGkEb3qGs7MczUD.8Z4WhlL.uEMlN1m3fMftLJFMHJw5M.W'),
(33, 'TraderName 3', 'TraderLastname 3','1234567893', '$2y$10$cz692.qPGqVZPRPPLNTL3e8gfH2BstDmuOl2onyQ09SqoNW5kTCgC'),
(34, 'TraderName 4', 'TraderLastname 4','1234567894', '$2y$10$owhWihxAXkUAgfSJ/fG.x.IDKNWn6LB7P1FRPw5MZh4yixnitdjFO'),
(35, 'TraderName 5', 'TraderLastname 5','1234567895', '$2y$10$wAFp/Vr0qA8JyfH7g5zIW.A6QPJkxnwyVSNbgyB9j.HZTYc90VQY.'),
(36, 'TraderName 6', 'TraderLastname 6','1234567896', '$2y$10$LzXl8iKOUSs.M0YbDdygVudp3g..HBdYi49VBmlfBtuA5rs7pJf3S'),
(37, 'TraderName 7', 'TraderLastname 7','1234567897', '$2y$10$oJ6xdpRb7j./tWh9fagrNegvvPuzZXJjsEOjExS4PBAI36GjUODsy'),
(38, 'TraderName 8', 'TraderLastname 8','1234567898', '$2y$10$m0ESY38gyUc/mqlbhPn/3.5Sn5FVYwZbmYnW0QDYhoX//pXqWqX3S'),
(39, 'TraderName 9', 'TraderLastname 9','1234567899', '$2y$10$iy5iFFlMdLzUBixJDf.c/u23vUNRqdVqf3vgYCgeFVnbg9/NApZBS'),
(40, 'TraderName 10', 'TraderLastname 10','12345678910', '$2y$10$EDsleTc8bOP7vtxiY32Y2ugNOV3ZUrsTgEIH0ZuAU3k8jV9dOxBtm');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) NOT NULL,
  `trader_id` int DEFAULT NULL,
  `visitor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`),
  UNIQUE KEY `UNIQ_8D93D6491273968F` (`trader_id`),
  UNIQUE KEY `UNIQ_8D93D64970BEE6D` (`visitor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `trader_id`, `visitor_id`) VALUES
(61, 'user1@example.com', '[\"ROLE_TRADER\"]', '$2y$10$xhJ67qc5dJ7ZCmzaB4dq.OokszLQfjEZIUCs2XNzJwEn.Q.nr69jy', 31, NULL),
(62, 'user2@example.com', '[\"ROLE_TRADER\"]', '$2y$10$/RNtwRd56E5aWWlInTYac.BwokoaeSvKsd6ElTVSZPFx97olypBTe', 32, NULL),
(63, 'user3@example.com', '[\"ROLE_TRADER\"]', '$2y$10$BcbCEqsT0uyNSrfb3bRGY.HbyeU6Ul2S53TVcFovjCT7mfTVm9tka', 33, NULL),
(64, 'user4@example.com', '[\"ROLE_TRADER\"]', '$2y$10$cTttY60u9blsDfsKcuWTQOmWMNt4V8o7EzpIoSv21KQYSYMFM5Dwm', 34, NULL),
(65, 'user5@example.com', '[\"ROLE_TRADER\"]', '$2y$10$ML33hYRaMJ4Gpc41MuS4wu.C0j.cJmKCyf1lkF5CB3kspDzAjbYeK', 35, NULL),
(66, 'user6@example.com', '[\"ROLE_TRADER\"]', '$2y$10$UHvw3nv0.QbejVRROPd9UO3UKQlwh0Z9HYvyU/biQyjkSa0Xt2JZu', 36, NULL),
(67, 'user7@example.com', '[\"ROLE_TRADER\"]', '$2y$10$9TKNC7rOnlVDvKI2KtPqoe2KJZkKZLuj6C8urmIO24B7LlQ4NB4GC', 37, NULL),
(68, 'user8@example.com', '[\"ROLE_TRADER\"]', '$2y$10$V3WYGiLEpGz6jF4GFpMfMuvRCi3MXgIJKlLIOBfwAvWdsbuWTymVG', 38, NULL),
(69, 'user9@example.com', '[\"ROLE_TRADER\"]', '$2y$10$/NqCKhOeEaHfDEeQJYLAUOUbOLfWfEAjnRfnY5GgGLs5ba5Ia/9AO', 39, NULL),
(70, 'user10@example.com', '[\"ROLE_TRADER\"]', '$2y$10$exVpFY7gqcv5SWcWzWAyEuXpaNAouIx2BIRyr/Vbi.mJqmM2TKsgq', 40, NULL),
(71, 'user11@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$KinUb0h3fMLJloG10RpR7eld5yj5lyCepXmZL7ADZKIA0uAMjcN/C', NULL, 31),
(72, 'user12@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$.K9NOeY9pO6gQ3ynwgxc7.4O4Oba.lHxpqvyAnAELUSMbNOe4uDm2', NULL, 32),
(73, 'user13@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$Kru2HxMlyNw3TgjFvfuF5ODlBzqYD9pdlVYa8c5yICCW3ECWlRT9S', NULL, 33),
(74, 'user14@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$CW/s0lHcMs2t76Yb5mVcdeTBzfV97E0AHxe7x/TzfV3kgmx5LaPT6', NULL, 34),
(75, 'user15@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$QthuPJ4CIi87p6XAJHvcWOdAypsx95tEoAQqNB4tzC60DldJVssJK', NULL, 35),
(76, 'user16@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$MqtsIPbG212th80BCTyt/eaxULVh9VdZJ9/AuPT.d7u9sg4sQsMXO', NULL, 36),
(77, 'user17@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$eDEzHuIAae.p31WBE39ko.1k0yURm3MXu9GFCbIHm8Bm0T9yTWBs2', NULL, 37),
(78, 'user18@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$MoVhE5a8PD9PPqVQRjCtIOA6Lc/YX8/BLOyUeKV944NGeNwVRrKUq', NULL, 38),
(79, 'user19@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$cKxwJXm.gJ.T.4TOrpj4ueXaXwiRTZGVwX.Lo2A6BqwLqqKelNTZ.', NULL, 39),
(80, 'user20@example.com', '[\"ROLE_VISITOR\"]', '$2y$10$xkgvViU6to7uCDQp52vFJO6.RBGNuu5MAQwfLmXvcmwWozEAeII/i', NULL, 40);

-- --------------------------------------------------------

--
-- Structure de la table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `visitor`
--

INSERT INTO `visitor` (`id`, `name`, `adress`, `phone`) VALUES
(31, 'VisitorName 1', 'Visitor Address 1', 1234567891),
(32, 'VisitorName 2', 'Visitor Address 2', 1234567892),
(33, 'VisitorName 3', 'Visitor Address 3', 1234567893),
(34, 'VisitorName 4', 'Visitor Address 4', 1234567894),
(35, 'VisitorName 5', 'Visitor Address 5', 1234567895),
(36, 'VisitorName 6', 'Visitor Address 6', 1234567896),
(37, 'VisitorName 7', 'Visitor Address 7', 1234567897),
(38, 'VisitorName 8', 'Visitor Address 8', 1234567898),
(39, 'VisitorName 9', 'Visitor Address 9', 1234567899),
(40, 'VisitorName 10', 'Visitor Address 10', 1234567900);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
