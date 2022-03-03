-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bookstore
CREATE DATABASE IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `bookstore`;

-- Dumping structure for table bookstore.book
DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isbn` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `price` float unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bookstore.book: ~100 rows (approximately)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `isbn`, `title`, `author`, `stock`, `price`) VALUES
	(1, '9965726779', 'Blanditiis non qui officiis et quasi.', 'Geoffrey Reilly Jr.', 45, 33.16),
	(2, '2455665224', 'Vitae consectetur odit sunt quia.', 'Mr. Wilson Zboncak Sr.', 32, 46.45),
	(3, '7175936656', 'Vel et deleniti rem sint impedit architecto.', 'Dr. Allan Rice I', 8, 91.59),
	(4, '0675448409', 'Ipsam est magni atque vero.', 'Eva Altenwerth', 6, 21.64),
	(5, '1641522992', 'Necessitatibus est dignissimos fugit error nobis modi.', 'Bernita Lehner', 95, 74.12),
	(6, '0368123952', 'Sequi autem aut cupiditate corrupti dolorum.', 'Mrs. Susie Schumm IV', 54, 28.4),
	(7, '5124336994', 'Non ut tempore laudantium itaque quia eveniet.', 'Mollie Bartell', 80, 25.52),
	(8, '3474668056', 'Fuga aut aut ipsum pariatur provident labore.', 'Dr. Frida Hartmann', 60, 94.39),
	(9, '5700210770', 'Velit dicta eveniet totam rem veniam rerum.', 'Dr. Celestino Herman I', 13, 33.18),
	(10, '6855213723', 'Reiciendis iure quasi consectetur perferendis vel beatae neque.', 'Mrs. Leanne McKenzie Jr.', 62, 41.76),
	(11, '5494601412', 'Vel sequi corporis modi explicabo beatae nihil.', 'Mr. Hunter Turcotte Sr.', 26, 39.5),
	(12, '2180141203', 'Explicabo ipsum autem amet et.', 'Tanner Kertzmann', 58, 77.12),
	(13, '1317024273', 'Repellat consequatur nobis ea earum eos ut aut.', 'Miss Lacy Turcotte', 30, 69.53),
	(14, '6409050801', 'Quia ea in aperiam fugiat nihil nostrum et.', 'Kirk Crooks', 80, 38.44),
	(15, '8371378742', 'Numquam et sit ut qui consectetur aut.', 'Dr. Madge Dickinson Jr.', 19, 96.26),
	(16, '1477167013', 'Cupiditate sequi tempora ea ea amet suscipit.', 'Graham Hauck', 81, 15.58),
	(17, '724803715X', 'Impedit ut rerum cum.', 'Ebba Frami', 27, 59.05),
	(18, '3248131799', 'Quo quia possimus incidunt vitae quos sed reprehenderit.', 'Prof. Jazmin Ryan DVM', 33, 10.21),
	(19, '8937387115', 'Rerum dolorem explicabo voluptatibus vitae rerum totam.', 'Adrien Lindgren III', 56, 28.37),
	(20, '225986614X', 'Laboriosam occaecati maiores incidunt sint aperiam.', 'Summer Konopelski', 57, 25.4),
	(21, '0505641313', 'Aut qui sequi eos accusamus aut quas.', 'Prof. Kennith Lemke', 19, 53.22),
	(22, '3626827771', 'Ducimus et ut deserunt tempora at similique.', 'Julio Emard', 6, 67.37),
	(23, '0770569390', 'Cum natus voluptatem repudiandae et ea labore architecto ea.', 'Marlon Hirthe I', 82, 34.86),
	(24, '013740168X', 'Rerum ducimus iure voluptatum fugiat qui natus sint.', 'Krystel Wilderman', 9, 98.58),
	(25, '4986041010', 'Est et sunt aut numquam libero necessitatibus dolorem architecto.', 'Dr. Estel Hane Sr.', 90, 41.61),
	(26, '1480477729', 'Nulla minima quis temporibus laborum qui.', 'Dr. Nicholaus Emard', 44, 24.22),
	(27, '5537150735', 'Numquam qui modi dignissimos reprehenderit voluptatem ea quos.', 'Dr. Art Buckridge', 30, 89.26),
	(28, '9154154308', 'Et qui et suscipit sed.', 'Prof. Dusty Kovacek', 97, 48.14),
	(29, '2229371991', 'Cum qui et dignissimos fugiat sint quia.', 'Cayla Dickinson', 76, 21.72),
	(30, '4293425306', 'Ullam sed sit maxime soluta et excepturi debitis.', 'Dr. Maye Hane IV', 94, 97.19),
	(31, '4983538399', 'Libero ut illum ratione consequuntur dolore reprehenderit necessitatibus.', 'Delmer Schmitt I', 80, 30.64),
	(32, '5738159047', 'Unde velit et rerum consequatur.', 'Geoffrey Renner', 62, 67.81),
	(33, '4157014251', 'Non et magni maiores id voluptatem qui perspiciatis sequi.', 'Delphine Paucek II', 20, 16.48),
	(34, '9098709966', 'Occaecati quas voluptatem temporibus explicabo quas.', 'Mrs. Vivianne Keebler', 75, 13.25),
	(35, '7997940715', 'Aspernatur maiores possimus labore nemo nihil quis ea.', 'Shanon Schmitt', 28, 41.57),
	(36, '5489710969', 'Sapiente at nisi libero vitae neque vel.', 'Enrico Connelly', 51, 85.72),
	(37, '9530805306', 'Vel corporis laudantium sit dolor.', 'Dean Kerluke', 29, 40.78),
	(38, '0762284269', 'In id mollitia nam tempore rerum.', 'Lawrence Goyette Jr.', 21, 40.35),
	(39, '3072998515', 'Magnam laboriosam praesentium debitis illo doloribus voluptatem ea.', 'Prof. Jean Ernser', 67, 83.92),
	(40, '7518704838', 'Aut sequi velit saepe ex.', 'Westley Grady DDS', 98, 42.83),
	(41, '7151198833', 'Temporibus cumque voluptatem autem ea.', 'Deron Hackett', 33, 54.42),
	(42, '3439802590', 'Voluptatem provident natus natus pariatur.', 'Alvah Funk', 86, 37.64),
	(43, '920691037X', 'Aspernatur architecto libero blanditiis est omnis tenetur.', 'Zetta Konopelski', 35, 88.93),
	(44, '4703562138', 'Quod dolores voluptas amet earum dolores qui quo.', 'Cheyanne Hills', 50, 70.64),
	(45, '4030470823', 'Voluptas similique et ducimus et occaecati.', 'Jamison Hickle', 23, 36.88),
	(46, '7945186769', 'Iure laborum sequi maiores ipsum inventore.', 'Raleigh Reinger DVM', 8, 77.02),
	(47, '0882626167', 'Et nihil minus quod.', 'Misty Goldner III', 4, 19.76),
	(48, '4123309682', 'Cupiditate voluptatem aut repellat aut.', 'Wilmer Breitenberg', 13, 88.56),
	(49, '8488412444', 'In quod est et asperiores.', 'Rex Paucek', 54, 32.95),
	(50, '629271716X', 'Iusto aut nostrum facere consequatur nisi.', 'Dr. Antone Walsh', 14, 36.18),
	(51, '4181609499', 'Doloribus sint ut et vel.', 'Moses Metz MD', 97, 23.39),
	(52, '2950894801', 'Et ut rerum nulla qui at sit.', 'Philip Shanahan', 98, 45.68),
	(53, '2355420947', 'Omnis commodi saepe dolores voluptatibus rerum ratione corrupti.', 'Mrs. Haylee Tillman DVM', 47, 70.06),
	(54, '8566791045', 'A numquam architecto nobis debitis aut.', 'Nigel Wiza', 39, 25.88),
	(55, '2566774250', 'Praesentium dignissimos sit explicabo cupiditate.', 'Mr. Tremaine Bosco I', 94, 45.95),
	(56, '2612048154', 'Commodi qui hic ut rerum excepturi qui quaerat atque.', 'Blanche Murray', 3, 29.42),
	(57, '7721067839', 'Et eum aspernatur mollitia quis consectetur aut enim.', 'Dr. Selmer Keebler I', 49, 77.27),
	(58, '8392584066', 'Similique praesentium dicta ducimus nulla et asperiores.', 'Shania Kris', 83, 63.11),
	(59, '3074287411', 'Ut quia enim ullam voluptatem quia ad libero.', 'Prof. Lilyan Kertzmann DDS', 3, 45.59),
	(60, '577301176X', 'Est distinctio adipisci magni reiciendis excepturi neque et.', 'Felipa Greenholt', 50, 94.62),
	(61, '8164607037', 'Omnis qui ut a qui tenetur nulla.', 'Everett Schmeler', 30, 35.09),
	(62, '4656679348', 'Vel ipsa et eum facere.', 'Prof. Leslie Block Jr.', 47, 44.39),
	(63, '9350434121', 'Ut porro cumque sequi mollitia.', 'Westley Cole PhD', 59, 37.69),
	(64, '5535304263', 'Molestiae et voluptas tempora officia praesentium provident sit.', 'Myra Gerhold', 31, 25.15),
	(65, '0667634991', 'Earum quae eos suscipit nesciunt quos ullam consequatur.', 'Itzel Bayer', 28, 16.98),
	(66, '6605229916', 'Aliquid esse deserunt corrupti quia voluptas itaque.', 'Clark Eichmann', 84, 94.08),
	(67, '4446816896', 'Sint beatae eaque ea.', 'Delfina Price', 38, 34.82),
	(68, '9573778955', 'Eos beatae veniam suscipit et tenetur dignissimos totam.', 'Dr. Lauriane Brown Sr.', 95, 74.75),
	(69, '7908498191', 'Iste ea nobis esse aliquam quod voluptas.', 'Rosalinda Botsford', 95, 69.32),
	(70, '231423846X', 'Sed tempora natus laboriosam quia.', 'Dr. Mittie Boyer', 64, 93.09),
	(71, '1528620844', 'Porro facilis quia ut nobis.', 'Eve Rowe', 2, 66.39),
	(72, '8995302410', 'Voluptatem aut quia dignissimos qui.', 'Pierre Bashirian Jr.', 83, 53.32),
	(73, '2025151683', 'Sint vero doloremque non maxime voluptas doloremque.', 'Susan Dooley', 90, 45.99),
	(74, '6994567184', 'Adipisci earum quia perspiciatis rerum hic.', 'Dr. Jose Herzog', 95, 97.17),
	(75, '8634874559', 'Sit occaecati deserunt sed pariatur.', 'Prof. Arthur Moen', 10, 82.46),
	(76, '4441675119', 'Non ullam voluptatum necessitatibus est odit fugit dicta.', 'Natalia Klein', 3, 31.85),
	(77, '9076451850', 'Voluptatem quia nam quis aut.', 'Maxwell Brakus', 91, 22.47),
	(78, '3881918493', 'Rerum maxime esse non voluptate veniam.', 'Tristin Waters', 28, 41.1),
	(79, '2657238564', 'Illum deserunt laborum est corporis voluptas velit.', 'Prof. Dustin Carter DDS', 11, 48.25),
	(80, '1188104349', 'Voluptas nemo placeat et harum ducimus.', 'Elsa Sporer Sr.', 21, 15.75),
	(81, '2891839714', 'Recusandae est rerum distinctio non.', 'Prof. Esteban Huel', 44, 23.01),
	(82, '0628213298', 'Sint sit impedit beatae.', 'Dolores Schuppe', 45, 51.53),
	(83, '5772991337', 'Non ut voluptates ea nihil fuga repellendus quod.', 'Prof. Ethan Harvey DVM', 40, 50.76),
	(84, '511474769X', 'Et omnis illo tempore inventore laudantium.', 'Rosina Boyer I', 91, 99.81),
	(85, '2671235437', 'Reprehenderit qui quaerat itaque minus vitae at.', 'Lilla Hudson', 43, 79.98),
	(86, '9839064134', 'Quo assumenda odio accusamus odit est.', 'Norwood Hessel DVM', 49, 89.85),
	(87, '1208966359', 'Sunt quis laborum pariatur officiis fugit.', 'Miss Myra Gutkowski I', 96, 63.58),
	(88, '7968054303', 'Sed libero iure fugit qui officiis.', 'Chanelle Torp', 53, 32.2),
	(89, '3913600450', 'Quaerat enim eos molestias commodi nostrum et omnis.', 'Dr. Reta Bosco', 88, 31.41),
	(90, '220606944X', 'Aut rem sunt cum doloribus rerum alias dolor.', 'Daniela Muller II', 90, 50.52),
	(91, '3564268782', 'Doloribus voluptas illum excepturi modi dolores quia.', 'Dr. Maximus Heaney', 91, 23.7),
	(92, '393626239X', 'Ut adipisci ducimus nihil inventore.', 'Lucy Hayes', 96, 28.3),
	(93, '1147471614', 'Veritatis et et corporis facilis.', 'Janick Hamill', 70, 49.31),
	(94, '4954678641', 'Fuga sit corporis aperiam eligendi in nulla id aut.', 'Richmond D\'Amore', 59, 82.88),
	(95, '7133046385', 'Odio sit tempora maiores nostrum quo cum error unde.', 'Kaley Jerde', 54, 78.82),
	(96, '2871063036', 'Aspernatur praesentium laudantium asperiores quam modi cupiditate molestiae.', 'Emie O\'Keefe', 81, 46.57),
	(97, '1853476587', 'Rerum iste excepturi et.', 'Prof. Ewell Harvey DVM', 30, 58.49),
	(98, '6973154018', 'Ratione dolores quaerat aliquam.', 'Lora Morar', 5, 29.71),
	(99, '6700371414', 'Vero sed consequatur eum in et.', 'Prof. Donnie Connelly', 36, 47.71),
	(100, '9164615022', 'Et porro et optio.', 'Autumn Witting', 52, 65.31);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
