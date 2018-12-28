-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия на сървъра:            5.7.19 - MySQL Community Server (GPL)
-- ОС на сървъра:                Win64
-- HeidiSQL Версия:              9.5.0.5263
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дъмп структура за таблица orenda.advices
CREATE TABLE IF NOT EXISTS `advices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advices_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.advices: 0 rows
/*!40000 ALTER TABLE `advices` DISABLE KEYS */;
INSERT INTO `advices` (`id`, `title`, `slug`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Dolor illo sequi libero enim sed aut non similique.', 'dolor-illo-sequi-libero-enim-sed-aut-non-similique', 'Vel iste occaecati et magnam. Omnis eos voluptatem harum vero et. Magni qui illo odio minima. Similique maiores sit tempore ullam qui et atque nemo. Ratione hic et libero aut laborum. Numquam quasi corporis ut in magni commodi. Facilis dolor dolor sit natus. Quidem aperiam nisi aut tenetur. Enim inventore accusamus est sunt sed voluptatem. Ea aspernatur eum possimus voluptatem natus sunt. Non eaque ut quod iure consequuntur quis. Possimus nostrum sed perspiciatis est provident est. Autem libero est illum enim aspernatur. Fuga qui fugiat aut et illo possimus molestiae. Est ea distinctio harum iure. Excepturi praesentium ut aperiam in quas dolorum. Alias sit id dolorem fuga. Quidem provident tenetur deserunt ut. Quo ex aut cum et dolores sint natus.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(2, 'Sed tenetur quisquam porro inventore libero cum doloribus.', 'sed-tenetur-quisquam-porro-inventore-libero-cum-doloribus', 'Cum voluptatem odit quam aut amet at. Tenetur quidem consequatur accusamus aut reiciendis ut tempore deleniti. Quo quisquam nemo itaque praesentium fuga. Velit rerum eum eos necessitatibus. Beatae iure ut unde pariatur dolor in et voluptates. Libero rerum dolorem debitis tempora dicta est exercitationem sunt. Vero esse repellendus necessitatibus blanditiis quaerat velit. Consequatur laboriosam est tenetur quae impedit. Nobis culpa at rem praesentium. Incidunt magnam quis harum expedita et harum voluptatum. Eum veniam quam tenetur. Enim repellendus porro aliquam occaecati rerum officia consequatur. Blanditiis impedit minus excepturi aliquam. Quis adipisci expedita aut laborum facere. Ullam omnis tenetur alias repudiandae ipsa quaerat. Necessitatibus consequatur at hic exercitationem. Quia deserunt et eum quas accusantium voluptatum.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(3, 'Quidem et aperiam vitae autem incidunt ut id.', 'quidem-et-aperiam-vitae-autem-incidunt-ut-id', 'Pariatur sunt quisquam illum repellat veritatis. Quidem sit explicabo perferendis minus aut. Et rem ratione quo sint aut commodi repellat. Dolores reiciendis et non omnis et distinctio ut. Fugit sint natus saepe quis sint pariatur. Repellat omnis consequatur voluptatem cumque consequuntur. Rerum culpa dolore ex sit dolorum enim. Quo sint aut sed a reprehenderit. Quaerat enim corporis veniam ipsam. Et cumque sunt doloremque ipsa rerum natus qui. Non minus quibusdam accusantium. Aut qui nisi qui. Est suscipit et vel repellendus nisi aut. Minus in et ex eos officiis eum sit explicabo. Architecto aliquam sit et ex velit dolorum. Officiis aspernatur inventore nihil atque. Est quos voluptate laborum ducimus nemo est. Incidunt dolorem accusantium et beatae enim error ipsum. Est magnam esse excepturi facere culpa sed. Libero omnis magni sed ad doloribus molestiae. Reiciendis voluptatem eum quas aspernatur et soluta voluptatem. Culpa quae accusantium labore est a velit fugiat unde. Dolorem non praesentium quidem delectus quo minus omnis. Veritatis necessitatibus et sed reprehenderit ullam. Necessitatibus impedit et molestiae ullam quos qui. Voluptate labore est nobis aperiam ducimus dolores voluptas.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(4, 'Ex molestiae similique aut cum voluptatem veritatis fugit.', 'ex-molestiae-similique-aut-cum-voluptatem-veritatis-fugit', 'Maiores eum doloribus quidem aspernatur nisi et accusamus aut. Repellendus eos officia dignissimos quisquam amet enim. Eos quasi rerum a quaerat quia quaerat odit. Qui sed id veritatis sequi nobis voluptas. Voluptatibus iure quam dolorem cupiditate. Id sit quibusdam assumenda dolore veniam. Quis optio esse nihil est. Quia nihil ratione esse sequi. Iure aut minus iste eligendi eius omnis autem. Voluptatibus ipsum ducimus est. Rerum quo odit consequuntur quas. Voluptatem deleniti voluptatibus cumque doloremque accusantium distinctio enim. Voluptas aut tempora et aperiam quidem. Distinctio velit velit veritatis quo animi laboriosam adipisci. Non quis ab nihil blanditiis aut molestias. Aut facere alias nam neque architecto cumque culpa. Et qui ullam sunt reiciendis. Et qui saepe voluptatem qui. Omnis animi totam eius rerum cum. Omnis aliquam dolor in dolores eos rerum praesentium. Velit est quod magnam earum. Suscipit dolor nam corrupti doloribus omnis neque. Quos consequatur officiis non sed.', 3, '2018-12-27 19:19:27', '2018-12-27 19:19:27'),
	(5, 'Qui praesentium voluptate voluptatem quo sequi perferendis maiores.', 'qui-praesentium-voluptate-voluptatem-quo-sequi-perferendis-maiores', 'Veritatis modi quas fugiat ut in placeat assumenda. Soluta quas ad nisi repellat. Optio cupiditate in qui corporis esse labore. Consequatur nulla quam magni officiis consequatur. Vel vel et sunt eius ipsum eos. Error dignissimos sint voluptates ad eveniet. Adipisci aperiam aspernatur impedit et illum. Placeat et soluta iusto assumenda quod sed. Placeat natus quia perspiciatis molestiae ipsum. Sed veniam quasi atque. Officiis ducimus commodi officia in placeat. Rerum tempora voluptatem illo non molestias laudantium. Debitis qui odit veniam enim distinctio incidunt suscipit. Sunt dolore aliquid nostrum. Quos non cupiditate nobis voluptatem et non dolorem.', 3, '2018-12-27 19:19:27', '2018-12-27 19:19:27'),
	(6, 'Ea omnis voluptatem repellendus quam.', 'ea-omnis-voluptatem-repellendus-quam', 'Corrupti rerum consequatur nobis fugit. Aliquam dolor dolor corporis. Quod qui dignissimos sint non non qui voluptatem. Quia veritatis nemo veniam. Similique voluptatem quas quis nulla nihil reiciendis quod. Consequatur eum voluptatem sit enim repellendus. Quo doloremque deleniti est numquam sit dolore necessitatibus. Esse quidem laboriosam esse. Repudiandae tempore magnam nemo dolor. Rem sunt non laborum voluptas neque est. Architecto dolorem praesentium doloribus ullam. Voluptatem aperiam molestiae quis ut. Voluptas dignissimos at porro suscipit. Et dolorum eligendi omnis quis. Fugit et doloribus iure non. Quam qui fugit quam provident rem fugiat enim. Magni aut et sit ratione neque culpa. Dolor iusto qui eos nemo. Autem molestiae ut non aut adipisci consequatur. Doloribus rerum distinctio qui eos. Perferendis quisquam illum ut quo. Aut blanditiis ullam est quis. Ab quod illo enim. Quo sint ea quos quis voluptatem totam. Maiores voluptas commodi et. Optio ut nobis quas aut voluptatum aliquid ipsam.', 3, '2018-12-27 19:19:27', '2018-12-27 19:19:27');
/*!40000 ALTER TABLE `advices` ENABLE KEYS */;

-- Дъмп структура за таблица orenda.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `events_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.events: 0 rows
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`id`, `slug`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'qui-autem-placeat-consectetur-temporibus-maxime-aut', 'Qui autem placeat consectetur temporibus maxime aut.', 'Fugit tenetur aliquid perferendis ab et esse ut. Fuga assumenda quasi sed cum praesentium. Voluptatem aut qui perferendis id. Omnis aut qui neque perspiciatis quia eum. Sunt et est consequatur ut autem nesciunt aut. Minus voluptate dolorem ipsa. Id aut consectetur enim nesciunt. Temporibus aspernatur voluptates alias nemo qui ea. Voluptatem cum nihil quia eos. Qui sunt et quod dolorem. Libero est omnis labore saepe dicta. Eaque et accusamus explicabo possimus enim laboriosam illum qui. Repellendus nulla repellat quia dolore autem. Dolores sed delectus fuga animi voluptatem provident. Voluptatem non eaque voluptas quisquam sit occaecati. Laborum pariatur ad iusto. Labore occaecati qui necessitatibus odio suscipit. Fugiat nostrum id rerum aliquid et voluptatem. Consequatur ipsam magnam sunt et reprehenderit necessitatibus corporis. Illo repellendus similique enim corrupti aut. Accusantium unde et velit molestias repellat.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(2, 'natus-rem-consequatur-illo-ipsum-eos-voluptatem-placeat', 'Natus rem consequatur illo ipsum eos voluptatem placeat.', 'Voluptatibus nihil nobis adipisci a reprehenderit qui. Pariatur aut quo aut doloremque autem. Et ullam et aperiam nulla. Numquam magnam voluptatum quaerat quisquam non inventore. Sit magnam velit eveniet ducimus odio. Reiciendis non dolore non. Aspernatur ipsa commodi rerum eaque quo atque et. Quia ipsa quos at corporis illum sed. Possimus atque aspernatur sint temporibus rerum est harum. Modi dicta possimus sint omnis qui sunt eveniet. Rerum maiores rem corrupti maxime ut et. Dolor temporibus officiis fugiat ut nesciunt. Magnam corrupti optio est sapiente aperiam atque. Incidunt quidem dolor asperiores enim magni vero nihil. Esse voluptatum est explicabo. Ut numquam odio officiis eum ipsa. Ut blanditiis illo architecto ducimus quaerat debitis. Iure quia voluptatem quibusdam quis nostrum nulla. Quis aut et iste et doloremque nihil. Qui eum sit sunt qui in.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(3, 'assumenda-est-ipsa-exercitationem-est-sapiente-nihil-excepturi', 'Assumenda est ipsa exercitationem est sapiente nihil excepturi.', 'Quod cum soluta est praesentium ratione animi. Et voluptatem eligendi molestias odit eum. Quis quo minus aut nam. Labore accusantium voluptates blanditiis. Et aut amet velit magni eveniet. Voluptatibus inventore nihil quibusdam tempore. Sed a aut soluta ratione eos numquam nostrum. Facilis voluptate maxime dignissimos ad. Consectetur reprehenderit velit exercitationem. Tenetur eveniet similique saepe. Fugit perferendis saepe voluptates cum non facilis. Vel id sit sed sint recusandae aliquid modi nesciunt. Aut saepe nihil id quis debitis non voluptates. Et tempora soluta dicta ut ipsam repellat. Cumque qui non saepe voluptas sit. Voluptas tempora rem laboriosam placeat. Quam et blanditiis nostrum dolorem. Nam et harum quia nemo asperiores non facere. Vitae vel itaque et nisi. At tempora et perspiciatis autem est natus eum. Aut praesentium et omnis perspiciatis laborum deleniti maxime.', 1, '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(5, 'fuga-nemo-quia-assumenda-adipisci', 'Fuga nemo quia assumenda adipisci.', 'Omnis placeat est dicta neque delectus. Voluptas debitis aut dolor doloribus quia quod harum. Quaerat vel dolores qui optio. Iste velit corporis soluta distinctio voluptate in. Error nihil laborum suscipit ut quidem similique ducimus. Illum quo blanditiis velit ipsa. Reprehenderit repellat ea itaque voluptatem dolores delectus fuga. Nobis natus animi sint. Deserunt ipsam ratione nihil dolor voluptate autem. Possimus recusandae nam recusandae beatae praesentium. Aut odio earum voluptas id a aut. Et at dolor veritatis sed atque quisquam. Et voluptatum sed nesciunt quo voluptate rerum qui. Excepturi sit cumque et est. Cum qui eligendi rerum omnis eum. Iste rerum nulla inventore quia sequi voluptas. Dolores ex deserunt ipsam sit veritatis ratione provident. Provident repellendus rem sint perferendis nobis reprehenderit tempore. Nulla harum omnis nihil ex eaque vel eum.', 3, '2018-12-27 19:19:27', '2018-12-27 19:19:27'),
	(6, 'consequuntur-eum-ut-impedit-odio-ea-sint-et', 'Consequuntur eum ut impedit odio ea sint et.', 'Perspiciatis iusto hic qui. Ea reprehenderit nostrum inventore quia. Voluptatibus molestiae velit doloribus repudiandae illum inventore. Est aut error beatae aut. Ipsa veritatis voluptatum sed et sint. Ut nulla ducimus et rerum soluta aut quia. Ratione consequatur provident et non occaecati fugiat. Aut qui molestiae dolorem dolorem enim et ex. Est enim totam sapiente dolorem nihil qui exercitationem. Quo nulla sed error debitis eligendi harum est. Qui voluptates repellendus optio autem id natus sequi labore. Asperiores quo nam reiciendis non dolor facere. Fugit beatae ea nemo provident earum voluptatem. Aspernatur ut sint perferendis. Accusantium eum dignissimos soluta ab non. Cumque placeat deleniti mollitia cum quod eos totam. Asperiores ut aut iure consectetur quasi. Voluptas ut quam veniam eaque dolore. Ipsam placeat et consequatur perspiciatis. Illo sit et libero voluptas nobis et quas.', 3, '2018-12-27 19:19:27', '2018-12-27 19:19:27'),
	(8, 'tttt', 'TTTT', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>dadad</p>\n</body>\n</html>', 6, '2018-12-28 17:07:02', '2018-12-28 17:16:15');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Дъмп структура за таблица orenda.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.migrations: 5 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_12_02_173555_create_events_table', 1),
	(4, '2018_12_10_063406_create_advices_table', 1),
	(5, '2018_12_14_221220_create_travels_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дъмп структура за таблица orenda.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дъмп структура за таблица orenda.travels
CREATE TABLE IF NOT EXISTS `travels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.travels: 0 rows
/*!40000 ALTER TABLE `travels` DISABLE KEYS */;
INSERT INTO `travels` (`id`, `slug`, `title`, `body`, `country`, `user_id`, `created_at`, `updated_at`) VALUES
	(3, 'bravo', 'Браво', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>dsada</p>\n</body>\n</html>', 'out', 6, '2018-12-27 19:51:56', '2018-12-28 17:37:29'),
	(4, 'trave', 'Trave', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>saa</p>\n</body>\n</html>', 'bg', 6, '2018-12-27 19:52:15', '2018-12-28 17:10:53');
/*!40000 ALTER TABLE `travels` ENABLE KEYS */;

-- Дъмп структура за таблица orenda.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дъмп данни за таблица orenda.users: 0 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `isAdmin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Kaylin Harvey', 'nolan.garfield@example.com', '2018-12-27 19:16:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'Wa1y9ISygR', '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(2, 'Misty Crona', 'anabel90@example.com', '2018-12-27 19:16:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'i3T9aA8HJf', '2018-12-27 19:16:17', '2018-12-27 19:16:17'),
	(3, 'Nia Reynolds', 'leland.streich@example.org', '2018-12-27 19:19:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 1, 'ifLqNmJP30', '2018-12-27 19:19:27', '2018-12-27 19:19:27'),
	(4, 'Ervin Parisian', 'oberbrunner.leila@example.com', '2018-12-27 19:19:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 0, 'lQMG7Q4Uir', '2018-12-27 19:19:27', '2018-12-27 19:19:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
