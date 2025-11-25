-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table reviewli.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'бан',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='админы';

-- Dumping data for table reviewli.admins: ~15 rows (approximately)
INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `ban`, `created_at`, `updated_at`) VALUES
	(1, 'Admin Mrs. Estel Ledner', 'brown.lelah@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'Xyn4Y9qagc', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(2, 'Admin Abagail Schiller', 'fahey.ida@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', '6qyvot8MS3', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(3, 'Admin Jeanette Kessler', 'fmraz@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'h6SdC8GxZ4', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(4, 'Admin Cristopher Greenholt', 'serena.swift@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'mRVPnQLVre', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(5, 'Admin Sadie Roberts', 'felicia.harris@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'QspyTdfwuF', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(6, 'Admin Cayla Paucek', 'nmedhurst@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'mqtf9UB3vY', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(7, 'Admin Jaydon Baumbach IV', 'yasmine.will@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'PBDGVjuxbo', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'Admin Tania Gaylord', 'qhartmann@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'nysy9ZbawF', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(9, 'Admin Dr. Christiana Harris', 'stamm.kiera@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'Hr2k5Xx7h8', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'Admin Leopoldo Hoeger', 'ruecker.bethel@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'mIrcvUsr3t', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'Admin Mr. Jordy Spencer III', 'bergstrom.coty@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'GmihtQZUUs', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'Admin Edwina Larson', 'brown34@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'H99WediUti', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'Admin Dr. Nikolas Hegmann', 'qweber@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'TA2li4khCw', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'Admin Prof. Clifford Windler', 'bartoletti.warren@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'cHZ0pkGPBo', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'Admin Dr. Herman Sanford', 'barrett96@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'oB79LA0Zlh', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT 'описание',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'урл',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'файл',
  `footer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'футер',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='бренды';

-- Dumping data for table reviewli.brands: ~14 rows (approximately)
INSERT INTO `brands` (`id`, `name`, `desc`, `url`, `file`, `footer`, `created_at`, `updated_at`) VALUES
	(1, 'brand "Sipes, Toy and Zieme"', 'brand Velit repellat nostrum quasi perferendis accusantium cumque quo odit. Minima veritatis in at. Odit nulla consequatur non cupiditate nam provident sint. Quia exercitationem et doloremque consequuntur omnis et culpa.', 'https://witting.com/repellat-et-asperiores-dignissimos-quia.html', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(2, 'brand "Graham, Conroy and Rosenbaum"', 'brand Non dolores eos suscipit sed excepturi. Similique ipsa dolore hic aspernatur inventore eos aliquam. Labore perspiciatis sit nesciunt sed corrupti voluptatem sunt.', 'https://www.mosciski.net/a-in-velit-corrupti-ipsa-ipsum-omnis-voluptatem', NULL, 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(3, 'brand "Koelpin, Wolff and Harvey"', 'brand Fugit minima vel qui fugit. Veritatis sit vel incidunt ipsum dolores quisquam amet provident. Ipsum architecto quasi ullam labore a nostrum distinctio mollitia.', 'http://hagenes.com/', NULL, 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(4, 'brand "Marks-Larkin"', 'brand Maiores consequatur eum suscipit magni tempora. Autem suscipit voluptates voluptas consequatur et laudantium. Culpa eius ea delectus sint.', 'http://hoeger.com/', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(5, 'brand "Jerde, Nikolaus and Zemlak" add new text', 'brand Error perferendis voluptas amet aliquam eligendi deserunt. Veritatis labore aut harum deserunt. Numquam beatae nam ratione. Amet maxime et ex. more text', 'http://kunde.info/voluptatem-sit-impedit-excepturi-ut-ex-ea.html', NULL, 1, '2021-02-25 12:00:35', '2021-04-02 11:35:39'),
	(6, 'brand "Little, Jakubowski and Wolff"', 'brand Voluptatum nesciunt tempora unde rerum necessitatibus rerum aut. Qui nam id temporibus voluptas reprehenderit laboriosam et. Eius voluptatem et facere. Consectetur porro dolore nobis aut possimus sunt dolorem. Voluptatem unde odio non officia dolor earum.', 'http://skiles.com/maiores-dolor-inventore-fugit-ratione-sit.html', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'brand "Spencer, Stamm and Kris"', 'brand Incidunt veritatis dolore aut et aperiam. Sapiente rerum iure molestiae sint. Et molestiae excepturi sit distinctio autem eveniet. Recusandae laborum pariatur veritatis sequi.', 'http://www.ebert.com/deserunt-repudiandae-accusantium-commodi-nihil-iure', NULL, 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'brand "Dibbert, O\'Kon and Rowe"', 'brand Delectus ut adipisci eius et dolorem saepe. Harum numquam quam vel possimus tempore minus eius nihil.', 'http://www.mcglynn.info/', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'brand "Stanton, Pagac and Cole"', 'brand Possimus iste nemo eum consectetur. Assumenda aut hic molestias mollitia est repellat totam. Labore explicabo quam quia.', 'http://www.rath.com/in-nihil-magni-beatae-distinctio.html', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'brand "Schneider Ltd"', 'brand Et sit quaerat itaque in voluptas. Omnis quis omnis laboriosam qui animi quia quia. Omnis et omnis et aliquid ipsum illo architecto. Error omnis incidunt adipisci non temporibus doloremque ab.', 'http://www.herman.biz/sequi-vero-quas-accusamus-id-ea-soluta.html', NULL, 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'brand "Balistreri Group"', 'brand Repellendus expedita sapiente sint maxime quisquam. Officiis et quod distinctio id praesentium ea aspernatur. Incidunt minima ea animi et. Et distinctio iusto veniam libero et officia.', 'https://www.fisher.com/repellat-nulla-sunt-id-animi-voluptatibus-placeat', NULL, 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'brand "Kassulke, Larkin and Treutel"', 'brand Sit eum corrupti quia in. Facilis vero ducimus ad quia eum. Non tenetur iure minima sunt vel provident. Praesentium omnis omnis deleniti quo sit nesciunt perspiciatis.', 'http://bergstrom.com/qui-et-incidunt-eos', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'brand "Bosco Inc"', 'brand Dolor omnis exercitationem distinctio minima deleniti omnis minus vero. Aut aliquid dolorem quod dolores cum est deleniti. Est non adipisci ullam eaque quae et numquam. Deleniti aut vel voluptatem in ipsa et assumenda.', 'http://rodriguez.net/doloremque-officia-ipsum-esse-non-illum-magnam-qui.html', NULL, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(16, 'имя бренда', 'описание бренда', 'https://brand.com', NULL, 0, '2021-04-02 11:35:13', '2021-04-02 11:35:13');

-- Dumping structure for table reviewli.brand_site
CREATE TABLE IF NOT EXISTS `brand_site` (
  `brand_id` bigint unsigned NOT NULL,
  `site_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`,`site_id`),
  KEY `brand_site_site_id_foreign` (`site_id`),
  CONSTRAINT `brand_site_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `brand_site_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='бренды-сайты';

-- Dumping data for table reviewli.brand_site: ~3 rows (approximately)
INSERT INTO `brand_site` (`brand_id`, `site_id`, `created_at`, `updated_at`) VALUES
	(1, 73, '2021-02-26 12:46:21', '2021-02-26 12:46:21'),
	(1, 74, '2021-02-26 12:46:30', '2021-02-26 12:46:30'),
	(2, 75, '2021-02-26 12:46:38', '2021-02-26 12:46:38');

-- Dumping structure for table reviewli.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.cache: ~0 rows (approximately)

-- Dumping structure for table reviewli.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT 'описание',
  `footer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'футер',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='категории';

-- Dumping data for table reviewli.categories: ~15 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `desc`, `footer`, `created_at`, `updated_at`) VALUES
	(1, 'category "Bogisich, Kemmer and Thiel"', 'category Et repellat dolorum dolores omnis. Nisi reiciendis dolores qui porro iusto. Sit qui consectetur inventore inventore nihil.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(2, 'category "Tromp Inc"', 'category Necessitatibus vitae hic ullam et voluptatem. Numquam voluptas sapiente quidem porro. Consequatur perspiciatis saepe atque dolores ut accusamus neque. Et et est magni aut.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(3, 'category "Emard Ltd"', 'category Similique omnis eveniet vel ipsa maiores. Excepturi sint aut praesentium id at. Labore ea quis voluptate odio eos. Libero est ut suscipit voluptatem qui sapiente id. Sint accusantium accusamus non iure.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(4, 'category "Zemlak, Hansen and Hermann"', 'category Voluptatum autem est non id est dolor enim. Saepe vero quam sapiente aut autem magnam iusto sequi. Illo quam aut ut aut et adipisci vel. Facere amet ad ut molestiae. Molestiae dolores enim vel modi rerum voluptatem exercitationem.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(5, 'category "Bode LLC"', 'category Corrupti ipsam eum distinctio consequuntur eaque eligendi suscipit. Amet alias iure et. Sint error qui voluptatem aspernatur delectus consectetur. Ipsum aut occaecati qui debitis voluptatem accusantium. Nihil non culpa quo est autem officia repudiandae.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(6, 'category "Bogisich-Bernhard"', 'category Omnis aut ratione ut commodi est. Repudiandae corporis quidem ut. Sed nihil recusandae hic et. Quas in ipsum cupiditate omnis veniam.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(7, 'category "O\'Conner PLC"', 'category Rerum illo quas quibusdam nobis illum distinctio. Accusantium dignissimos quia in porro accusamus quo voluptatibus iure. Sint dolor ut earum nihil adipisci quibusdam. Sit eum commodi maxime.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'category "Bernier, Goyette and Gleichner"', 'category Dolorum aperiam libero dolorem unde placeat quia. Est sit et ut ipsum enim. Vero nemo amet dolores quia ullam praesentium ea.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(9, 'category "Kirlin, Erdman and Herman"', 'category Reiciendis qui aut odio fugiat natus. Illo quod omnis laboriosam reiciendis voluptatem quas unde cupiditate. Sit vero molestiae dolorem aut assumenda et incidunt aliquid.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'category "Nader, Schneider and Kassulke"', 'category Quod impedit laboriosam et inventore consectetur. Et aut laudantium vel porro perferendis ipsa nesciunt. Consequatur amet consequatur repudiandae voluptates illo fugit.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'category "Medhurst Inc"', 'category At rerum sequi sint commodi provident asperiores inventore dolore. Esse numquam sit quasi perspiciatis. Enim optio soluta velit numquam tempore eos. Fuga et nulla qui.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'category "Rice PLC"', 'category Rerum alias mollitia sunt repellendus rerum eum amet eligendi. Est quaerat perspiciatis deleniti assumenda nisi qui non.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'category "Rempel and Sons"', 'category At mollitia molestiae quis aut. Possimus rerum deserunt sequi sapiente quibusdam praesentium. Praesentium vel adipisci possimus consequatur modi voluptas ipsam. Temporibus molestiae incidunt dignissimos tenetur facere est.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'category "Sauer-Kessler"', 'category Qui dolor voluptatem veniam ex eveniet et beatae. Deleniti excepturi eum minus autem dignissimos totam quidem. Quae hic explicabo dolorem nulla eos. Similique laboriosam soluta quia quos.', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'category "Schultz, Schmeler and Crooks"', 'category Aspernatur consequatur cum sed dicta. Ad non dolor dolore numquam veritatis ipsa rerum.', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table reviewli.features
CREATE TABLE IF NOT EXISTS `features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `footer` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'футер',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='особенности';

-- Dumping data for table reviewli.features: ~15 rows (approximately)
INSERT INTO `features` (`id`, `name`, `footer`, `created_at`, `updated_at`) VALUES
	(1, 'feature "Schimmel, Skiles and Casper"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(2, 'feature "Wyman-Senger"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(3, 'feature "Casper, Dicki and Bergstrom"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(4, 'feature "Bergnaum Inc"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(5, 'feature "Turcotte-Stanton"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(6, 'feature "Fisher, Herzog and Lueilwitz"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(7, 'feature "McGlynn-Jacobs"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'feature "Smitham-Macejkovic"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(9, 'feature "Deckow Inc"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'feature "Stehr-Huels"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'feature "Schroeder-Kuhlman"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'feature "Ward-Johnson"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'feature "Bradtke-Kessler"', 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'feature "Little Inc"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'feature "Stiedemann, Gulgowski and Boyer"', 1, '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.feature_site
CREATE TABLE IF NOT EXISTS `feature_site` (
  `site_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`site_id`,`feature_id`),
  KEY `feature_site_feature_id_foreign` (`feature_id`),
  CONSTRAINT `feature_site_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feature_site_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='сайты-особенности';

-- Dumping data for table reviewli.feature_site: ~6 rows (approximately)
INSERT INTO `feature_site` (`site_id`, `feature_id`, `created_at`, `updated_at`) VALUES
	(73, 1, '2021-02-26 12:50:27', '2021-02-26 12:50:27'),
	(73, 10, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(74, 2, '2021-02-26 12:50:37', '2021-02-26 12:50:37'),
	(74, 10, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(75, 2, '2021-02-26 12:50:43', '2021-02-26 12:50:43'),
	(75, 10, '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.jobs: ~6 rows (approximately)
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
	(1, 'chatevent', '{"uuid":"86430b02-a777-4235-b8c8-b0a2e20f9393","displayName":"App\\\\Events\\\\ChatEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:20:\\"App\\\\Events\\\\ChatEvent\\":4:{s:5:\\"queue\\";s:9:\\"chatevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:132:\\"<li class=\\"list-group-item\\">\\n\\n          Admin Mrs. Estel Ledner,\\n    \\n    27.04.2021 \\u0432 17:30\\n\\n    <p>\\n      \\u0444\\u0432\\n    <\\/p>\\n\\n  <\\/li>\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544609, 1619544609),
	(2, 'unreadmessagestouserevent', '{"uuid":"3c2e5417-a035-4b69-a006-8e552640b6e6","displayName":"App\\\\Events\\\\UnreadMessagesToUserEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:36:\\"App\\\\Events\\\\UnreadMessagesToUserEvent\\":4:{s:5:\\"queue\\";s:25:\\"unreadmessagestouserevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:544:\\"<div class=\\"toast\\" role=\\"alert\\" aria-live=\\"assertive\\" aria-atomic=\\"true\\" data-bs-delay=1000>\\n\\n    <div class=\\"toast-header\\">\\n\\n      <img src=\\"\\/favicon.png\\" class=\\"rounded me-2\\" style=\'height: 20px; width: 20px;\'>\\n\\n      <strong class=\\"me-auto\\">\\n                  Admin Mrs. Estel Ledner\\n              <\\/strong>\\n\\n      <small>\\n        27.04.2021 \\u0432 17:30\\n      <\\/small>\\n\\n      <button type=\\"button\\" class=\\"btn-close\\" data-bs-dismiss=\\"toast\\" aria-label=\\"Close\\"><\\/button>\\n\\n    <\\/div>\\n\\n    <div class=\\"toast-body\\">\\n      \\u0444\\u0432\\n    <\\/div>\\n\\n  <\\/div>\\n\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544609, 1619544609),
	(3, 'chatevent', '{"uuid":"77fef0b4-4599-4fd2-82b2-7da5aa9626b2","displayName":"App\\\\Events\\\\ChatEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:20:\\"App\\\\Events\\\\ChatEvent\\":4:{s:5:\\"queue\\";s:9:\\"chatevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:134:\\"<li class=\\"list-group-item\\">\\n\\n          Admin Mrs. Estel Ledner,\\n    \\n    27.04.2021 \\u0432 17:30\\n\\n    <p>\\n      \\u0444\\u044b\\u0432\\n    <\\/p>\\n\\n  <\\/li>\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544609, 1619544609),
	(4, 'unreadmessagestouserevent', '{"uuid":"416c8e4e-04b6-4a84-b2ca-8a89dbc1e060","displayName":"App\\\\Events\\\\UnreadMessagesToUserEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:36:\\"App\\\\Events\\\\UnreadMessagesToUserEvent\\":4:{s:5:\\"queue\\";s:25:\\"unreadmessagestouserevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:546:\\"<div class=\\"toast\\" role=\\"alert\\" aria-live=\\"assertive\\" aria-atomic=\\"true\\" data-bs-delay=1000>\\n\\n    <div class=\\"toast-header\\">\\n\\n      <img src=\\"\\/favicon.png\\" class=\\"rounded me-2\\" style=\'height: 20px; width: 20px;\'>\\n\\n      <strong class=\\"me-auto\\">\\n                  Admin Mrs. Estel Ledner\\n              <\\/strong>\\n\\n      <small>\\n        27.04.2021 \\u0432 17:30\\n      <\\/small>\\n\\n      <button type=\\"button\\" class=\\"btn-close\\" data-bs-dismiss=\\"toast\\" aria-label=\\"Close\\"><\\/button>\\n\\n    <\\/div>\\n\\n    <div class=\\"toast-body\\">\\n      \\u0444\\u044b\\u0432\\n    <\\/div>\\n\\n  <\\/div>\\n\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544609, 1619544609),
	(5, 'chatevent', '{"uuid":"801f12df-db90-4b6e-8741-df297775608b","displayName":"App\\\\Events\\\\ChatEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:20:\\"App\\\\Events\\\\ChatEvent\\":4:{s:5:\\"queue\\";s:9:\\"chatevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:132:\\"<li class=\\"list-group-item\\">\\n\\n          Admin Mrs. Estel Ledner,\\n    \\n    27.04.2021 \\u0432 17:30\\n\\n    <p>\\n      sddd\\n    <\\/p>\\n\\n  <\\/li>\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544610, 1619544610),
	(6, 'unreadmessagestouserevent', '{"uuid":"b8cf6bb8-a053-43c8-b5b6-6891d95d9d47","displayName":"App\\\\Events\\\\UnreadMessagesToUserEvent","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"Illuminate\\\\Broadcasting\\\\BroadcastEvent","command":"O:38:\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\":12:{s:5:\\"event\\";O:36:\\"App\\\\Events\\\\UnreadMessagesToUserEvent\\":4:{s:5:\\"queue\\";s:25:\\"unreadmessagestouserevent\\";s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:7:\\"message\\";s:544:\\"<div class=\\"toast\\" role=\\"alert\\" aria-live=\\"assertive\\" aria-atomic=\\"true\\" data-bs-delay=1000>\\n\\n    <div class=\\"toast-header\\">\\n\\n      <img src=\\"\\/favicon.png\\" class=\\"rounded me-2\\" style=\'height: 20px; width: 20px;\'>\\n\\n      <strong class=\\"me-auto\\">\\n                  Admin Mrs. Estel Ledner\\n              <\\/strong>\\n\\n      <small>\\n        27.04.2021 \\u0432 17:30\\n      <\\/small>\\n\\n      <button type=\\"button\\" class=\\"btn-close\\" data-bs-dismiss=\\"toast\\" aria-label=\\"Close\\"><\\/button>\\n\\n    <\\/div>\\n\\n    <div class=\\"toast-body\\">\\n      sddd\\n    <\\/div>\\n\\n  <\\/div>\\n\\n\\";s:6:\\"socket\\";N;}s:5:\\"tries\\";N;s:7:\\"timeout\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:19:\\"chainCatchCallbacks\\";N;s:5:\\"delay\\";N;s:11:\\"afterCommit\\";N;s:10:\\"middleware\\";a:0:{}s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1619544610, 1619544610);

-- Dumping structure for table reviewli.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci COMMENT 'сообщение',
  `direction` tinyint(1) DEFAULT NULL COMMENT '-1-юзеру, 1-админу',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`),
  KEY `messages_admin_id_foreign` (`admin_id`),
  CONSTRAINT `messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='сообщения';

-- Dumping data for table reviewli.messages: ~3 rows (approximately)
INSERT INTO `messages` (`id`, `user_id`, `admin_id`, `message`, `direction`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'фв', -1, '2021-04-27 14:30:08', '2021-04-27 14:30:08'),
	(2, 1, 1, 'фыв', -1, '2021-04-27 14:30:09', '2021-04-27 14:30:09'),
	(3, 1, 1, 'sddd', -1, '2021-04-27 14:30:10', '2021-04-27 14:30:10');

-- Dumping structure for table reviewli.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.migrations: ~18 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2021_01_14_062811_cache', 1),
	(4, '2021_01_14_062812_category', 1),
	(5, '2021_01_14_062813_brand', 1),
	(6, '2021_01_14_062814_feature', 1),
	(7, '2021_01_14_062815_user', 1),
	(8, '2021_01_14_062816_site', 1),
	(9, '2021_01_14_062816_sitephoto', 1),
	(10, '2021_01_14_062817_admin', 1),
	(11, '2021_01_14_062818_brand_site', 1),
	(12, '2021_01_14_062819_feature_site', 1),
	(13, '2021_01_14_062820_review', 1),
	(14, '2021_01_20_064932_create_notifications_table', 1),
	(15, '2021_01_22_054011_create_jobs_table', 1),
	(16, '2021_01_22_094307_create_failed_jobs_table', 1),
	(17, '2021_02_10_094434_create_messages_table', 1),
	(18, '2021_02_24_133612_create_tokens_table', 1);

-- Dumping structure for table reviewli.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.notifications: ~0 rows (approximately)

-- Dumping structure for table reviewli.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.password_resets: ~0 rows (approximately)

-- Dumping structure for table reviewli.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci COMMENT 'отзыв',
  `rating` tinyint NOT NULL DEFAULT '0' COMMENT 'рейтинг',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_site_id_foreign` (`site_id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  CONSTRAINT `reviews_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='отзывы';

-- Dumping data for table reviewli.reviews: ~4 rows (approximately)
INSERT INTO `reviews` (`id`, `site_id`, `user_id`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
	(8, 75, 3, 'Review Aspernatur pariatur suscipit sit quas perferendis et. Omnis iusto rerum laboriosam rerum doloribus. Dolores expedita quaerat adipisci. Tempora eveniet porro odio quo aut.', -1, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(46, 73, 1, 'review 1', 1, '2021-04-27 14:18:58', '2021-04-27 14:18:58'),
	(47, 74, 1, 'review 2', -1, '2021-04-27 14:19:04', '2021-04-27 14:19:04'),
	(48, 75, 1, 'review 3', 0, '2021-04-27 14:19:13', '2021-04-27 14:19:13');

-- Dumping structure for table reviewli.sitephotos
CREATE TABLE IF NOT EXISTS `sitephotos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'файл',
  `site_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sitephotos_site_id_foreign` (`site_id`),
  CONSTRAINT `sitephotos_site_id_foreign` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='фотки сайтов';

-- Dumping data for table reviewli.sitephotos: ~3 rows (approximately)
INSERT INTO `sitephotos` (`id`, `file`, `site_id`, `created_at`, `updated_at`) VALUES
	(30, 'sites/y9teLMq1qXjlC4FXgche66AYLkaU1JAYMZ6cWEs8.png', 74, '2021-02-25 18:35:42', '2021-02-25 18:35:42'),
	(31, 'sites/Tcqe03na0m9O6UNteuDUSGIo5AGi6kQtLZOyVPT7.png', 74, '2021-02-25 18:35:42', '2021-02-25 18:35:42'),
	(32, 'sites/MRvJjURMSY0jl2tC4cEnnBwHTXZ7Fd4Mr4UI47Pd.png', 74, '2021-02-25 18:35:42', '2021-02-25 18:35:42');

-- Dumping structure for table reviewli.sites
CREATE TABLE IF NOT EXISTS `sites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `desc` text COLLATE utf8mb4_unicode_ci COMMENT 'описание',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'урл',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'файл',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'meta_title',
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'meta_description',
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'meta_keywords',
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sites_category_id_foreign` (`category_id`),
  CONSTRAINT `sites_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='сайты';

-- Dumping data for table reviewli.sites: ~3 rows (approximately)
INSERT INTO `sites` (`id`, `name`, `desc`, `url`, `file`, `meta_title`, `meta_description`, `meta_keywords`, `category_id`, `created_at`, `updated_at`) VALUES
	(73, 'site "Gaylord, Klein and Ondricka"', 'site Et quia aut voluptatem molestiae reprehenderit non rerum. Excepturi provident autem neque libero iure. Soluta quos quo id accusantium.', 'http://www.mills.com/et-sint-ea-ut-consectetur-fugit-saepe-repellat-laudantium', 'sites/jYPfyax9eWMiW2ZHObOkowPfvwOxJDaUhbrMy58M.png', NULL, NULL, NULL, 1, '2021-02-25 12:00:35', '2021-02-26 06:37:51'),
	(74, 'site "Kautzer Inc"', 'site Et qui rerum consequatur. Error nesciunt sint quas asperiores qui eum eaque modi. Quod modi ut distinctio expedita delectus sed. Non expedita accusantium itaque doloremque ut ut.', 'https://legros.com/architecto-accusamus-rerum-voluptatibus-maiores-est.html', 'sites/XK9o0desgHqrw6OOsxAZFVcgnLIDjgtTVpEFkOXC.png', NULL, NULL, NULL, 1, '2021-02-25 12:00:35', '2021-02-25 18:35:42'),
	(75, 'site "Marvin Ltd"', 'site Tempore tempora facere id ea rerum ullam iusto. Esse numquam repudiandae quia aperiam. Fugiat sed tempora aut delectus.', 'http://gerhold.info/voluptatibus-sit-reprehenderit-quia-eligendi', NULL, NULL, NULL, NULL, 2, '2021-02-25 12:00:35', '2021-02-26 06:38:15');

-- Dumping structure for table reviewli.tokens
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'токен',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='токены для Api';

-- Dumping data for table reviewli.tokens: ~15 rows (approximately)
INSERT INTO `tokens` (`id`, `api_token`, `created_at`, `updated_at`) VALUES
	(1, 'MVUF4FEyzG', '2021-02-25 12:00:34', '2021-02-25 12:00:34'),
	(2, 'myOp8Gjmtb', '2021-02-25 12:00:34', '2021-02-25 12:00:34'),
	(3, 'EJ67OmZoEd', '2021-02-25 12:00:34', '2021-02-25 12:00:34'),
	(4, 'lj8tYpJ4Rl', '2021-02-25 12:00:34', '2021-02-25 12:00:34'),
	(5, 'jUEsht6rrp', '2021-02-25 12:00:34', '2021-02-25 12:00:34'),
	(6, 'Y1refKcTOM', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(7, 'EaYGQx6L13', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'AlsXXkXcW3', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(9, 'LJ9ZWhLnYk', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'rHp01FODs7', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'TQoi4WJxia', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'my4g3vJiUb', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'DirK3qKhes', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'yd8v29KWlS', '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'PkZ492iMJS', '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'название',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'бан',
  `disablereviews` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'запретить оставлять отзывы',
  `cautions` int NOT NULL DEFAULT '0' COMMENT 'предупреждения перед баном',
  `unreadmessages_touser` int NOT NULL DEFAULT '0' COMMENT 'колво непрочитанных сообщений у юзера',
  `unreadmessages_toadmin` int NOT NULL DEFAULT '0' COMMENT 'колво непрочитанных сообщений у админа',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='юзеры';

-- Dumping data for table reviewli.users: ~15 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `ban`, `disablereviews`, `cautions`, `unreadmessages_touser`, `unreadmessages_toadmin`, `created_at`, `updated_at`) VALUES
	(1, 'User Viola Quitzon', 'lowell91@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'qkPBSzd7Fg', 0, 0, 0, 3, 0, '2021-02-25 12:00:35', '2021-04-27 14:30:10'),
	(2, 'User Chaim Gutmann V', 'ysipes@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', '8hD0FFXDPX', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(3, 'User Sidney Donnelly', 'witting.maiya@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'u2SfzJYJdO', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(4, 'User Darrell Lehner II', 'sven.kuhic@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'o8mHqTtuLC', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(5, 'User Prof. Rosetta Wintheiser II', 'dorothy.bruen@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'jB8WmmoPr9', 0, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(6, 'User Irwin Senger', 'jwelch@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'TMXooyApLc', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(7, 'User Mitchell Farrell', 'zkozey@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'BNevmShIKl', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(8, 'User Rafaela Satterfield Jr.', 'sdoyle@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'KTQpFwxuVg', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(9, 'User Kenna Jacobi', 'otto.kemmer@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'CKJpl8Zj5N', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(10, 'User Dangelo Wiegand', 'keebler.darren@example.net', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'TRlTtkIYH8', 0, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(11, 'User Demond Ruecker', 'larissa.marvin@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'vEy2OFTMuf', 0, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(12, 'User Alayna Conn', 'crist.adolfo@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'vUzmRP2wfN', 0, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(13, 'User Lucinda Bartoletti', 'arno.shields@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'vbufdHPs61', 0, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(14, 'User Brooks Casper DVM', 'hermiston.meda@example.com', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'iJh8YGFogF', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35'),
	(15, 'User Caden Little', 'zlindgren@example.org', '2021-02-25 12:00:35', '$2y$10$.0Qgnl64EBZgfUDurrWvfOJ0AfxPa/6R/04B9vmes22gXWyeQubua', 'NgsnQOLO9q', 1, 0, 0, 0, 0, '2021-02-25 12:00:35', '2021-02-25 12:00:35');

-- Dumping structure for table reviewli.websockets_statistics_entries
CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reviewli.websockets_statistics_entries: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
