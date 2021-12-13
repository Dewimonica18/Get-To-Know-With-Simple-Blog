-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 13 Des 2021 pada 16.06
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(2, 'Web Design', 'web-design', '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(3, 'Personal', 'personal', '2021-12-13 08:02:51', '2021-12-13 08:02:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact__us`
--

CREATE TABLE `contact__us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact__us`
--

INSERT INTO `contact__us` (`id`, `email`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'asd@gmail.com', 'Keep it going, such a great work', '2021-12-13 08:05:38', '2021-12-13 08:05:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2021_12_12_133706_create_contact_us_table', 1),
(34, '2014_10_12_000000_create_users_table', 2),
(35, '2014_10_12_100000_create_password_resets_table', 2),
(36, '2019_08_19_000000_create_failed_jobs_table', 2),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(38, '2021_11_20_050025_create_posts_table', 2),
(39, '2021_11_20_105220_create_categories_table', 2),
(40, '2021_12_12_081157_add_is_admin_to_users_table', 2),
(41, '2021_12_12_152829_create_contact__us_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Cumque iure.', 'enim-non-dicta-consequatur-occaecati-rerum-illum', NULL, 'Necessitatibus qui rerum quo doloribus illo eum. Debitis architecto adipisci porro. Reiciendis blanditiis enim vel voluptas. Tempora voluptates dolorum ex tenetur non.', '<p>Adipisci qui ducimus et repudiandae. Tempora nemo blanditiis laborum non ipsa at enim. Ipsa ad itaque aut assumenda assumenda nam. Ab perferendis nihil sed debitis nihil rem repellat. Expedita et et nihil quisquam repellendus et.</p><p>Illo tempora debitis consequatur unde impedit voluptas. Aut nulla ex quas sint. Ea ad est qui ea.</p><p>Vitae numquam ratione deleniti facilis. Veritatis aliquid nulla hic enim incidunt tenetur consectetur. Ut quia eos maiores.</p><p>Aut doloribus et nobis vel. Voluptates iste natus quas odio saepe doloremque. Quidem voluptatem corrupti consectetur sequi ratione sit adipisci at. Rerum repudiandae sint veniam illum molestiae nostrum quo consequatur.</p><p>Non laudantium repellendus recusandae. Sed explicabo voluptas tenetur quibusdam ea dolorum quia amet. Rerum veritatis labore beatae fuga laboriosam omnis. Odio reprehenderit quidem velit.</p><p>Deleniti voluptatibus nihil est soluta consequatur. Explicabo molestiae hic aut inventore. Et error nisi illo.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(2, 3, 3, 'Labore quidem debitis ut exercitationem ad non.', 'aut-explicabo-soluta-aliquid-aut', NULL, 'Voluptatem dicta vel similique ipsum aut eos quisquam. Ipsum quidem optio nesciunt dolore. Ipsa rem libero nihil quasi illo sit modi. Quia ut quo iusto.', '<p>Qui commodi non voluptas quaerat. Tempora recusandae et quia dolore et. Iure ullam aperiam accusantium aperiam dolores doloremque tempora aliquid.</p><p>Dolorem sed totam voluptatum possimus. Ut rem et ut doloremque occaecati. Tempore quia est id cumque accusantium.</p><p>Corrupti quos ut maiores praesentium unde hic architecto. Eius id aut est deserunt molestias assumenda. Aperiam minus quis animi et tenetur aliquam. Itaque minus alias accusantium facere nemo.</p><p>Tenetur qui qui consectetur iure maxime libero laborum eum. Eos non tempora rerum quibusdam. Necessitatibus consequuntur necessitatibus maiores non quo aliquam ullam. Repudiandae recusandae commodi velit ipsa sunt ea et sit.</p><p>Inventore voluptatem ut commodi placeat. Et modi odit aperiam aut illo. Perspiciatis possimus voluptatibus repellendus omnis et. Est aut et repellat hic perspiciatis qui tenetur.</p><p>Cumque consequuntur dolor aspernatur laborum. Nobis ut libero sequi recusandae facere.</p><p>Eum aliquam minus repellendus assumenda dolor et. Eum maxime voluptate unde error similique. Numquam fugit aspernatur et necessitatibus eum labore tenetur. Ipsum non quia quidem mollitia earum laborum.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(3, 2, 2, 'Et necessitatibus culpa id error nisi quibusdam.', 'amet-dolorem-assumenda-autem-et-magni', NULL, 'Nobis aspernatur minus enim accusantium distinctio dolores dolore aliquam. Fugiat perferendis expedita similique illum. Quam vel repellendus pariatur praesentium pariatur.', '<p>Omnis in pariatur non. Omnis voluptatibus aut officia voluptatem. Quis occaecati fuga sit repellendus ratione.</p><p>Et doloremque pariatur quae optio. Fugit eos voluptatum qui voluptatibus. Earum voluptatibus totam qui consectetur. Sapiente facilis cumque vero.</p><p>Aut quod quaerat dolor suscipit delectus. Omnis odit totam suscipit voluptatem sint culpa qui. Itaque est tempora alias eius. Non ea delectus delectus magni non et. Amet consequuntur ut error deleniti iusto velit dolores.</p><p>Ratione maxime hic maxime. Est repellat nihil aut nam.</p><p>Quaerat fugit omnis cumque quidem enim itaque. Ipsa aut similique minus. Veritatis enim molestiae molestiae quas beatae labore voluptatum. Ut consequatur perferendis facilis et dolorum.</p><p>Non distinctio facere fugiat ducimus. Eos quo libero eius provident incidunt voluptates et. Odit ex quasi nam dolores in illum aut. Rerum asperiores accusamus maxime blanditiis ratione.</p><p>Facilis ut sed et voluptatem eaque. Eum incidunt dolorem facilis beatae magnam dignissimos perspiciatis. Enim doloribus porro necessitatibus ut et. Nemo tempore nulla nostrum incidunt aliquam sunt eveniet.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(4, 2, 1, 'Sapiente nesciunt est.', 'velit-laudantium-quia-at-hic-rerum-consequatur-voluptate', NULL, 'Quod et enim odio ipsa. Dolor odit optio saepe libero iste incidunt. Ut delectus quis soluta ea unde adipisci. Necessitatibus ullam sequi pariatur unde voluptas.', '<p>Cumque et aut consequatur nostrum at labore. Ipsum pariatur qui explicabo et. Modi ut consequatur atque labore laudantium veniam non.</p><p>Minima laborum consectetur dolores sunt recusandae et cumque. Voluptatem dicta quaerat consequatur dignissimos corporis aliquid. Rerum eos dolorem voluptates velit.</p><p>Repudiandae voluptatem error dolores dolorem sunt. Earum autem quasi et omnis eius ex quo alias. Reiciendis architecto voluptatem repudiandae vel aut hic. Alias sed ea autem tempore dolor.</p><p>Totam qui nesciunt vel. In facere cumque illo qui culpa atque. Omnis aut id quasi velit eum aperiam non. Asperiores explicabo animi a illum cumque autem beatae.</p><p>Tenetur reiciendis magnam iusto et dolore eligendi eveniet. Ex eaque iure pariatur voluptatibus voluptatem nostrum. Corporis optio et nostrum quas dolore natus voluptatem eos. Eligendi nam aut molestias sed.</p><p>Omnis reiciendis alias incidunt enim voluptates. Eaque et nobis qui deleniti dolor quod et sed. Esse dolor autem perspiciatis enim.</p><p>Enim pariatur explicabo qui necessitatibus quasi. A quia voluptates quia aut illum esse aut. Est temporibus repellendus officiis sint voluptates numquam. Qui quibusdam et doloremque neque eos illum.</p><p>Eum quos dolores eveniet deserunt delectus. Numquam nulla nesciunt quos voluptatibus dignissimos. Quidem quae nulla iusto molestiae suscipit omnis.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(5, 1, 2, 'Dolor ut quibusdam similique distinctio.', 'neque-ut-rerum-omnis-placeat', NULL, 'Voluptates aspernatur accusantium ut quis fugiat. Eos ipsum delectus voluptate totam. Natus inventore velit minima nesciunt fugit fugit ea aperiam.', '<p>Tempore quia laborum optio omnis amet id architecto. Quia animi beatae dolore.</p><p>Numquam earum sed commodi corrupti aut tenetur. Sit eum ad cupiditate qui consequatur corporis ducimus. Dignissimos illum in dolorem velit et.</p><p>Laboriosam quia qui aut eligendi. Labore delectus tempora ea architecto nulla aut totam. Omnis necessitatibus aut dolor aut. Corporis odit magnam nostrum reprehenderit assumenda iure nulla.</p><p>Dolor in itaque qui laudantium maiores est qui. Natus consequatur consequuntur facilis laborum doloribus. Voluptatem nesciunt ab aspernatur accusamus et repellat omnis ipsum.</p><p>Non quia non quia officiis aut velit. Laudantium non consequatur sit ratione voluptatem. Omnis distinctio ipsam autem ut quis sapiente. Debitis cumque magni quidem consequatur rerum.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(6, 1, 2, 'Voluptatem velit earum rerum quia laborum.', 'sequi-ea-nam-aliquam-impedit', NULL, 'Ea aut error aliquid nulla enim aut. Ea non nam vero id aut autem sint. Necessitatibus minima et vero ut nobis exercitationem totam. Voluptatibus molestiae dolorem autem ullam reprehenderit.', '<p>Neque eaque non inventore rerum iste. Sequi eligendi cupiditate aperiam similique assumenda. Reprehenderit vel omnis eos quae accusamus quisquam voluptatem. Ut perspiciatis reiciendis quo accusamus.</p><p>Aut voluptatem laboriosam eaque dolore. Est fugit aut voluptatem maiores. Quidem neque qui quod.</p><p>Beatae distinctio dolorem vitae voluptate suscipit est fugit libero. Minus id perspiciatis iusto ducimus sequi sequi illum cumque. Voluptatem omnis debitis laudantium dignissimos nisi consequatur enim. Ullam sequi voluptatem et. Dolores non voluptatum quia ut eum.</p><p>Impedit quam numquam voluptas aut. Rerum accusamus repellendus enim nihil maxime. Dolorum quaerat praesentium aut maiores. Soluta inventore et nihil sit quo magni et sed.</p><p>Ut qui similique tempore eos sit. Mollitia ipsa vero quas dolore nulla eum. Dolore facere occaecati voluptatibus delectus atque sint.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(7, 3, 2, 'Voluptate et doloribus velit repudiandae.', 'aliquid-quibusdam-earum-eum-illum-et-aliquam-nisi-quae', NULL, 'Sint inventore quis sapiente nobis. Ea in non qui quod et. Quia quia impedit rerum fugit maxime. Et enim sed quis.', '<p>Nostrum molestiae sit dolore et soluta voluptatem reprehenderit. Dolor optio culpa corporis distinctio qui. Non in quisquam quo non sit atque sed. Voluptas dolor eaque deserunt cum. Ut unde totam exercitationem reprehenderit.</p><p>Quae officiis non ad. Voluptas ipsam sit explicabo dolorem voluptas quam dolore id. Corrupti molestiae aut repudiandae esse. Est consequatur unde numquam.</p><p>Qui at quia fuga id est. Est dicta distinctio fuga aut temporibus. Iste quam aut velit vel expedita iusto similique facilis.</p><p>Quia cumque occaecati itaque omnis dolorem optio. Enim nihil qui autem ratione quo saepe perspiciatis occaecati. Doloribus in aspernatur culpa.</p><p>Expedita dolores dolore iste et veritatis. Velit autem sed nostrum tenetur non. Dolor ad laudantium et vitae ea iure magni. Accusantium aspernatur non quia sit.</p><p>Expedita officia et porro voluptatum voluptatem adipisci deserunt. Est enim aut rerum laborum et molestiae velit quia. Cumque ipsum deserunt officia molestias. Ut placeat quia quo labore exercitationem excepturi quam.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(8, 2, 2, 'Dolorem assumenda harum modi corporis est aut non dignissimos qui quos.', 'voluptatem-laborum-culpa-voluptas-odit-aliquid-nisi-occaecati', NULL, 'Possimus fuga et eaque beatae porro. Ex quaerat autem corrupti a unde. Voluptatum quia sit id libero nulla.', '<p>Laborum alias modi aut numquam aspernatur quaerat. Tenetur delectus culpa minima consequatur dignissimos id ab. Modi est ipsam autem nobis cumque sit similique.</p><p>Cumque velit veritatis aut odit in rerum. Eum aut rerum perspiciatis blanditiis voluptatem et. Ea et exercitationem ea laboriosam et quo et.</p><p>Repellat omnis autem minima et. Magnam provident nobis et sapiente esse repellat. Et numquam eaque non quibusdam sit suscipit impedit.</p><p>Veritatis quis sed velit laboriosam aliquam eos sed. Nostrum velit deleniti omnis molestiae consequatur rem quam.</p><p>Dicta et magnam reiciendis libero deserunt natus. Est non corrupti molestias voluptas aliquid voluptatem itaque odio. Dolores ut libero ut vero dolore animi rem. Repudiandae tempora facilis ex optio quo quo et necessitatibus.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(9, 1, 1, 'Reiciendis facere et nostrum qui.', 'commodi-rerum-corrupti-quia-vel-cupiditate-et', NULL, 'Cupiditate optio saepe omnis qui. Quae voluptatibus nulla ratione reiciendis dolores voluptatibus nihil. Dolorum optio modi nobis. Eos occaecati ad doloribus explicabo dolorum vitae occaecati. Sunt incidunt suscipit numquam molestias.', '<p>Corrupti eos autem possimus quaerat a. A quod aut neque at officiis ut. Commodi ducimus voluptate accusamus quis voluptatem repudiandae. Optio accusantium aspernatur tenetur soluta quibusdam.</p><p>Ratione totam dolor et odit nihil officia quia. Ullam sunt ullam ut eos quisquam eius. Rerum id ad dolores omnis doloremque.</p><p>Excepturi commodi aut repellat non magni commodi autem. Assumenda vero ratione eum at. A necessitatibus aut dolorem iusto minima sed quos.</p><p>Maxime earum consequatur in dicta consequatur rerum sed. Officia voluptas nobis amet dolores rerum nulla. Praesentium et earum minima velit nesciunt minima eos.</p><p>Voluptatem ab dolorum omnis dolore et. Reprehenderit ut placeat incidunt eum est. Vitae dolores est laboriosam.</p><p>Officia earum et odit rem rerum distinctio. Et quasi harum ut non accusamus aliquam. Velit quidem dolor facere soluta harum omnis tempora.</p><p>Est asperiores vero qui perspiciatis accusantium nihil. Numquam in aspernatur sint dolor esse. Dolore ut provident ad.</p><p>Laudantium et blanditiis dolorem sit deleniti et molestias. Tempore sit rerum iste adipisci quis. Atque tempora maiores reiciendis rerum.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(10, 2, 2, 'Iure maiores ipsum beatae iste ducimus.', 'autem-maiores-perferendis-magnam-fugit-laboriosam-eum', NULL, 'Accusamus explicabo dolorem accusantium minus fugiat. Sequi libero tenetur dolore voluptates est architecto rerum.', '<p>Velit qui qui quo voluptatem ratione labore aliquam placeat. Explicabo cupiditate saepe magni distinctio vero explicabo harum quo. Et nesciunt laudantium et eius. Et qui ut illum omnis dolor corrupti fugit.</p><p>Et eveniet dolorum culpa. Explicabo laborum ea quod et nisi. Qui nesciunt possimus nihil quo eligendi quos et. Tenetur dolorem optio consectetur maiores sapiente beatae omnis.</p><p>Sunt doloribus quidem cumque ullam ut ea. Omnis consequuntur qui quod inventore. Quam in rerum eligendi. Voluptas laborum qui voluptas.</p><p>Magni praesentium iure quis itaque ut. Maxime reiciendis reiciendis pariatur dolorem rerum est. Unde sunt quod assumenda rem eos. Qui iste porro sapiente et dolor commodi repellendus.</p><p>Pariatur provident aut quia temporibus. Id est adipisci beatae voluptatibus vero temporibus aspernatur. Eum molestias veritatis alias aut cupiditate sed aliquid.</p><p>Veritatis dolorem est impedit qui. Consequuntur architecto qui velit cupiditate. Voluptatum dolore molestiae ipsa sapiente ratione quos quas. Labore eum mollitia error similique architecto.</p><p>Quae dolores perferendis excepturi quae tempora ipsam mollitia. Facere doloremque mollitia necessitatibus labore. Non odio quisquam sed. Placeat fugit sed excepturi aliquid. Quia rem aspernatur aut aliquam deserunt voluptates.</p><p>Aut eos vitae tempora neque sint rerum. Tempora modi voluptatibus cupiditate nesciunt omnis. Et tenetur et assumenda hic cupiditate dolor repudiandae.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(11, 1, 2, 'Mollitia et ad deleniti expedita aut delectus.', 'error-veniam-sunt-optio-et-odio-atque', NULL, 'Repellat deserunt omnis est consequatur iure dolorum. Tempora quisquam ratione commodi aspernatur eum qui atque. Iusto incidunt ut delectus eveniet in. Eos ut optio rerum quas ut eius necessitatibus odio.', '<p>Blanditiis labore molestias impedit. Omnis enim similique deleniti qui voluptatem beatae dolor. Est asperiores qui error reiciendis iste quidem quia eos. Veniam quasi blanditiis enim alias autem vero aut.</p><p>Quia quia aut ea ex explicabo. Deleniti quo beatae ut. Sunt similique minima suscipit consequatur quos.</p><p>Dicta deleniti omnis maxime. Tenetur et repellat laudantium officiis et rerum. Illo aut quis neque qui perferendis mollitia qui. Architecto eum consectetur dolor accusamus dignissimos.</p><p>Qui qui itaque reiciendis quis et. Ab est dolorem eveniet eum commodi totam magnam suscipit. Dolore culpa soluta aliquam facilis aut est sed.</p><p>Tempore id rerum consequatur est itaque cupiditate. Eius fugiat ut vero totam. Soluta assumenda ut fugiat consequatur illum assumenda.</p><p>Aut at tempora voluptatibus commodi totam autem voluptas. Cupiditate eius debitis necessitatibus porro assumenda. Asperiores pariatur repellat aut corporis.</p><p>Quibusdam quae impedit voluptas beatae ut ea reprehenderit. Distinctio velit quis et aut. Quis voluptatibus culpa error.</p><p>Doloribus occaecati explicabo quae doloribus autem voluptates et. Id et fugit consequatur sapiente eum nihil. Quia corporis distinctio doloremque sunt fugiat.</p><p>Ab iste qui aut facere maiores dolorem maiores. Aperiam asperiores occaecati molestiae quod itaque eveniet dolore. Sed fugit omnis fugiat repellendus a.</p><p>Impedit nostrum ab non quos eius. Error et illo et quaerat iure dolores. Et ipsam mollitia ea aut dolorem.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(12, 3, 2, 'Mollitia expedita.', 'aut-inventore-similique-quia-alias', NULL, 'Repellat ex dolore et aliquid vitae. Omnis non qui sed qui repellat atque est placeat. Possimus quia aut laborum repudiandae est nihil. Quibusdam qui ipsam cupiditate adipisci sit consectetur et. Sint temporibus cum qui.', '<p>Ad voluptas animi quos ipsum culpa. Qui ea recusandae vel sequi magnam voluptatum. Et iste veniam voluptatum impedit aut omnis odit. Recusandae sint id veniam deleniti qui atque necessitatibus qui. Ut est eos odit ut.</p><p>Ad minus voluptate voluptatibus totam sint. Quo neque error nihil fuga ut. Repudiandae voluptatem aliquid non rerum eos libero cum. Beatae ex sunt quia adipisci vel molestias.</p><p>Amet illo voluptas molestias beatae enim sed. Ea qui qui ea quibusdam eveniet quia. Omnis cum ea voluptatem inventore neque impedit nulla. Alias rerum repellat accusantium.</p><p>Libero totam exercitationem nam minima non. Et occaecati explicabo qui tempora. Quaerat labore aut quisquam rerum architecto facilis consectetur. Ullam et magnam asperiores est qui.</p><p>Adipisci dolore nihil officia et eum. Ratione quis debitis molestias. Laboriosam et maiores omnis natus neque rerum. Temporibus alias voluptatem labore dolore quo delectus nesciunt. Sunt aut minus non sequi ut vel consequatur.</p><p>Et cupiditate assumenda cum. Et tempora similique exercitationem rerum sed. Debitis dolore sint perspiciatis ea sit excepturi.</p><p>Non esse ab suscipit perspiciatis doloribus similique sed. Natus ut vel voluptatibus. Eos vel ea veniam est est optio aut. Nobis repellat amet vel quae consequatur id ad qui.</p><p>Ipsa ullam exercitationem earum non debitis ut. A nesciunt molestiae hic ducimus delectus voluptatem. Asperiores doloribus dolore consequatur.</p><p>Laborum accusamus quibusdam ab omnis repellendus nam ipsum. Quas eveniet qui magnam omnis mollitia tenetur molestiae. Voluptas corrupti autem corporis autem maiores voluptatum fugiat nulla.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(13, 1, 2, 'Perferendis qui veniam praesentium est.', 'dolor-ut-et-ut-et-veniam-itaque-rerum', NULL, 'Error et qui iste in nostrum. Delectus itaque occaecati et qui. Sit earum omnis praesentium et ipsam itaque.', '<p>Eligendi dolor eius eum quia et molestias. Incidunt quo accusantium et distinctio ut. Mollitia nulla aut aut ea dolor iure molestiae.</p><p>Quia sed accusantium voluptatum nemo fugit veniam consequatur et. Fugit sit enim harum et quasi. Et quisquam facere quas dolores consequatur aut.</p><p>Iure quia ea assumenda. Fuga vero voluptatem sit sint ea occaecati. Cupiditate cupiditate sint molestias veritatis molestiae quia architecto.</p><p>Ea dolor dolor eveniet et officiis soluta. Aut ut vitae enim provident. Et omnis quia sed saepe. Cupiditate ut consequuntur nulla itaque excepturi.</p><p>Doloribus ex voluptatem et est aut. Ut ut cum dolore est fugiat perferendis recusandae. In in voluptatem voluptatem dolorum voluptate et.</p><p>Et assumenda rerum earum cum asperiores suscipit. Aut nemo illo repudiandae perferendis. Aspernatur enim occaecati consequatur ut sit sed voluptates in.</p><p>Fuga dicta incidunt accusantium ipsa dolorem. Earum voluptatem quis eveniet sequi quis cupiditate.</p><p>In quia sint saepe consequatur officia. Illum pariatur repellendus et ad sunt. Non beatae et eligendi enim et.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(14, 3, 1, 'Saepe et est sint est illum dolor.', 'incidunt-aut-inventore-nesciunt-aspernatur-quaerat-aspernatur', NULL, 'Labore error repudiandae inventore odio et. Architecto sed fugit ex iure consequuntur consequatur unde. Dolor voluptatem sed delectus saepe. Sit minus ut dolore error.', '<p>Deserunt porro enim eum aut. Veritatis repellendus dignissimos vel delectus amet facilis rerum.</p><p>Explicabo soluta iusto architecto. Eveniet qui velit cupiditate blanditiis eum. Sint voluptatum a nihil ad quod. Dignissimos enim consequatur quia dignissimos rerum corrupti reprehenderit.</p><p>Vitae delectus numquam fuga libero. Officia officia dolore rerum dolor hic et. Laborum veniam eum hic repudiandae et perferendis.</p><p>Eos esse iusto omnis modi dolorem quae. Qui repudiandae aut delectus omnis. Vel error sapiente perspiciatis blanditiis at.</p><p>Ratione quia atque eos necessitatibus. Suscipit facilis non quas et quibusdam sed et. Quod voluptatem quidem inventore voluptatibus.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(15, 3, 2, 'Nam quia maiores.', 'id-voluptas-et-ut-libero-labore', NULL, 'Perferendis corporis numquam et inventore est facilis. Distinctio odio et perferendis rerum.', '<p>Eligendi dolores vitae labore veritatis asperiores et. Architecto vel similique omnis ut. Atque sed ut eos qui modi asperiores. Hic est reiciendis nostrum aperiam quia consequatur.</p><p>At sed nostrum sit tempore nulla sunt. In eos ipsam quis.</p><p>Hic ducimus exercitationem et dicta quo sequi ipsa quos. Laudantium repudiandae libero explicabo impedit sed quia adipisci. Officia magni temporibus dignissimos voluptatum. Recusandae est commodi velit culpa eligendi.</p><p>Harum id voluptates reprehenderit nihil deleniti. Ducimus temporibus voluptatum explicabo earum ea eum. Ipsam excepturi nostrum repudiandae omnis veritatis et autem.</p><p>Tempora quam et quia rem corporis dolores illo nobis. Dolores laudantium nihil a qui nisi. Veniam odit sed et qui.</p><p>Ullam maxime doloribus nemo consequatur ut facilis nulla. Beatae ullam est aut non qui. Enim qui et vitae qui enim molestias et enim. Qui quos itaque est laudantium.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(16, 3, 2, 'Quis ut voluptas.', 'officia-mollitia-similique-enim-provident-provident-maiores', NULL, 'Optio cupiditate fugiat sint illo molestias. Reiciendis aut eum vel occaecati exercitationem officiis. Saepe et ut enim dolor occaecati explicabo quaerat.', '<p>Dolores voluptatem aut unde rerum. Et temporibus aperiam odit dolor minima. Dignissimos quisquam cumque cum fugit nam. Molestias tenetur incidunt quia et tenetur. Vel cupiditate velit placeat.</p><p>Quis consectetur est architecto et. Voluptatem quis nam repellat et eaque cumque ducimus. Neque eaque rerum magnam. Quisquam et voluptatem beatae amet provident facere aut voluptas. Aperiam animi fugiat necessitatibus accusantium.</p><p>Libero eius eligendi amet. Maiores explicabo ipsum sit exercitationem in. Est consequatur illum minus veniam est.</p><p>Eaque pariatur accusantium ipsam. Nostrum aut soluta quidem et id et. Est optio ab hic et cumque occaecati ducimus. Illo totam saepe culpa explicabo aperiam tenetur. Vel fugiat eius totam magni et est omnis voluptas.</p><p>Aliquid vel qui ipsam. Vel sequi voluptatem quaerat dolor enim aliquid sed. Quia accusamus maxime doloribus distinctio ut. Non et dicta corrupti id sunt consectetur inventore est.</p><p>Hic dolor autem voluptas aliquam culpa ut et omnis. Accusantium ut et quis reiciendis est ipsa temporibus. Quas nobis assumenda iste quibusdam officia qui cumque non.</p><p>Ex occaecati fugiat dolore sunt dolores quam. Fugit nam in ut facilis magnam cum. Fugiat molestias voluptates quod impedit velit. Ipsum quibusdam in itaque in quia vitae.</p><p>Minima cupiditate est praesentium sunt cumque provident veniam. Temporibus quia quidem culpa et. Occaecati sit laboriosam et incidunt et et commodi ipsam.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(17, 1, 2, 'Distinctio rerum amet voluptatem possimus.', 'ullam-a-id-molestiae-id-non-quis', NULL, 'Doloremque ullam omnis nihil deleniti odio. Qui aliquam sit sed dolorem. Debitis eum quibusdam ratione enim velit.', '<p>Et qui sed voluptatem eveniet ducimus perspiciatis. Sequi eveniet et quis et itaque ut aut. Iusto aut error mollitia in consequatur.</p><p>Et quo explicabo repudiandae quisquam laborum fugiat. Magni molestiae error quasi est commodi illum. Inventore blanditiis aliquid reprehenderit totam quidem id quo.</p><p>Aut recusandae qui labore delectus voluptatibus libero. Eaque molestiae est quibusdam fuga nam facilis. Possimus soluta eos et velit.</p><p>Repellat neque at aut cum. Et sed earum dolor vel nisi adipisci voluptatum. Tempore consequatur soluta minus incidunt dolore ipsa.</p><p>Accusamus eaque consequatur molestiae sunt aut expedita sed. A placeat illo vero atque nam id sed saepe. Impedit voluptas quia non doloremque et.</p><p>Alias sint dolor rerum odit et qui illum. Perferendis corrupti sequi aut doloribus quis. Rerum cupiditate dicta ut.</p><p>Aspernatur velit et minima et at. Animi magni nihil aut labore qui magni. Et temporibus dolorem voluptatem eos et.</p><p>Aperiam nihil nobis amet suscipit magni minus est quasi. Excepturi aspernatur perspiciatis voluptate autem voluptatem similique fugiat dolorem. Quisquam sequi error tempore ipsum aperiam quia.</p><p>Consectetur beatae voluptatibus nesciunt veniam. Atque reprehenderit quia sunt quos non dolor. Debitis deleniti suscipit velit alias. Magnam nesciunt expedita cum ut earum.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(18, 3, 1, 'Provident optio aliquid necessitatibus sed.', 'minima-veritatis-libero-ipsa-debitis', NULL, 'Accusantium quia occaecati suscipit. Vel repellat eum reiciendis voluptatem aut. Animi placeat fuga fugit cumque. Necessitatibus sint iusto perspiciatis laudantium dolores molestiae nam.', '<p>Perspiciatis quia distinctio et et perspiciatis. Omnis cumque quia natus quia quis dolore in. Quasi facilis et velit distinctio laudantium sit. Enim quis consequatur officiis itaque labore nesciunt.</p><p>Quia nihil exercitationem ea officia porro impedit. Sit sit quisquam eum. Nihil nostrum sit dolor possimus aut repellat necessitatibus. Molestias quibusdam eligendi ut dicta nulla quia voluptas.</p><p>Et explicabo velit cumque pariatur non. Maxime fugiat minus nesciunt et ea. Omnis molestiae possimus corrupti aut sequi illum.</p><p>Corporis magnam nobis sed est et fugit. Alias voluptatibus impedit dignissimos voluptate. Iure quam voluptas doloremque.</p><p>Beatae molestiae optio omnis. Vel omnis reiciendis quibusdam voluptates vel. Voluptatem aspernatur accusantium laborum quia et odio.</p><p>Perspiciatis quae odio accusantium libero dignissimos architecto minima. Rem quaerat distinctio enim omnis aspernatur. Non aut unde officiis ullam possimus. Esse est consectetur libero quae voluptatem quaerat.</p><p>Harum dignissimos suscipit consequatur aut. Voluptate in quibusdam iusto laboriosam modi ut ex. Dicta et est recusandae qui dolores debitis. Sint magnam soluta cupiditate.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(19, 3, 1, 'Saepe et optio autem libero voluptatem perferendis voluptate ut atque.', 'eius-ab-quibusdam-non-nesciunt-unde-et', NULL, 'Ut nihil omnis ut doloribus. Et consequuntur nemo ut harum natus. Consectetur aut saepe officiis veritatis.', '<p>Dolores aspernatur voluptatem omnis sint et explicabo. Et aperiam tempora est eum libero et.</p><p>Rerum est sit ea eos tempora. Labore voluptatem in voluptates modi. Nam doloribus et quibusdam vitae. Eos alias eius rerum aperiam.</p><p>Enim deleniti ducimus assumenda magni reprehenderit. Quo sit quam fugiat aliquid laborum. Ut laborum laudantium est beatae suscipit eos. Ut pariatur cupiditate quisquam voluptas illum dolorum eius. Optio dicta necessitatibus possimus officia.</p><p>Dolores velit hic et dolorem ut nam pariatur. Nesciunt exercitationem sit quae et. Optio qui ut dignissimos ipsa aliquam. Quis tenetur adipisci nihil libero qui. Nemo consequatur et harum voluptatem hic dolor.</p><p>Suscipit et esse mollitia ut omnis sed ex. In dignissimos laboriosam incidunt laborum possimus. Non quod quia consequatur et porro reiciendis omnis.</p><p>Omnis aliquam sint qui veniam. Accusamus ratione aliquam magnam aut ut alias. Optio aliquam quia exercitationem ut reiciendis.</p><p>Necessitatibus ea nemo excepturi. Quo recusandae ratione et labore unde qui nulla. Dignissimos ipsa vel qui pariatur. Sit sunt et quae explicabo.</p><p>Sint qui dolore rem omnis. Ut dolor molestiae error sed voluptas quo impedit. Ut optio qui incidunt.</p><p>Ad et architecto quis quia quod. Doloremque repudiandae vel vero soluta aspernatur ullam assumenda et. Esse voluptatem nisi iusto et.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(20, 2, 1, 'Delectus tempore sequi animi non.', 'tempore-quo-et-doloribus', NULL, 'Dicta et provident voluptatibus consequatur. Rerum molestiae in est velit possimus nemo consectetur. Porro omnis neque saepe laboriosam illum illo. Voluptas expedita aliquid iste. Tenetur omnis voluptatum dolorum et qui voluptas.', '<p>Nobis rerum esse officia nesciunt. Placeat laboriosam animi blanditiis a ut nesciunt. Quasi voluptas aliquam ut. Voluptate maxime aliquam praesentium dicta qui.</p><p>Repellendus suscipit aspernatur autem sunt illum veritatis. Ex optio ipsam at incidunt. Eveniet molestiae hic accusantium. Suscipit laudantium pariatur pariatur cumque blanditiis magnam. Asperiores nobis et voluptatem consectetur aut autem id et.</p><p>Porro aut est praesentium excepturi placeat voluptas. Et temporibus dicta laboriosam sit.</p><p>Eveniet eveniet recusandae fuga et numquam et et. Ipsa reiciendis enim ea rem amet excepturi accusamus labore. Voluptates aut omnis provident in. Et cumque iure velit esse officiis ut aut.</p><p>Nihil quia officia laboriosam fuga iusto maiores commodi. Nam autem vel repudiandae consequatur quaerat minus laboriosam magni. Explicabo fugiat et qui. Veritatis eum unde officia deleniti odio.</p><p>Cupiditate est laboriosam fugiat voluptatem voluptatibus. Explicabo aperiam corrupti minima non adipisci est. Sed itaque et dolores qui quam tempore velit.</p><p>Qui ab voluptates aperiam eum architecto dicta quae. Dolor et iste alias dignissimos reprehenderit nobis. Qui quas nihil voluptas in. Inventore repellendus qui asperiores reiciendis et.</p>', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51'),
(21, 3, 1, 'Bread with an Amazing Taste', 'bread-with-an-amazing-taste', 'post-images/aFpoZ9XqsmcBDuBbRcyZYYBncqjyh93rPV6Rp5HU.jpg', 'Food Is GoodLorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit rem soluta saepe laudantium aperiam aut tenetur quo explicabo nemo eaque, quos vitae praesentium. Harum, aspernatur c...', '<pre><strong>Food Is Good</strong></pre><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit rem soluta saepe laudantium aperiam aut tenetur quo explicabo nemo eaque, quos vitae praesentium. Harum, aspernatur corrupti architecto quo alias sed soluta voluptatum praesentium id placeat perferendis sit repellat ullam eum, ipsa dolorum natus magnam eius? Sequi impedit nemo facilis sit ex non ipsa eligendi illum veniam deserunt! Sunt sapiente cum suscipit assumenda. Facere quae ipsa laborum corrupti? Dicta, necessitatibus? Est, explicabo.&nbsp;<br>Possimus consectetur, culpa quia laboriosam a facilis cumque ea aut sequi. Consectetur explicabo deserunt ipsam alias. Ipsa esse sint incidunt dolorum. Natus beatae quo quaerat ipsum at eos iste cupiditate illo, nostrum eveniet consequuntur voluptate, fugiat inventore facere? Architecto eos eveniet voluptatem nihil deserunt itaque porro iure dolorem veritatis necessitatibus praesentium aliquam, dolorum saepe! Minima perspiciatis, animi dicta a soluta delectus dignissimos deserunt quaerat similique at amet blanditiis enim sapiente culpa consequatur.&nbsp;<br>Perspiciatis, repudiandae sed neque ab ex a, itaque, minima quae debitis pariatur quam molestiae quis modi quaerat vitae facilis natus magnam velit ipsum? Omnis, non fuga corporis perspiciatis nisi numquam sapiente ad obcaecati animi temporibus, cumque eius ipsa alias facilis vitae.&nbsp;<br>Dolore quaerat nobis officiis est ratione aut necessitatibus ipsa, corporis alias accusamus fugit nostrum eos aliquam dolores! Magni illo quos, aperiam corrupti vero iure, nihil eius saepe nulla earum explicabo mollitia? Officia, cupiditate? Libero magni, tempora est autem tenetur natus reiciendis. Fugit, sapiente. Aut, optio quaerat! Vel assumenda debitis alias ipsam esse placeat molestias quaerat ut ab quis provident, omnis similique dolorum sapiente aperiam iusto inventore voluptate odit soluta quidem consequuntur fugiat.&nbsp;<br>Maiores et, adipisci cumque, necessitatibus distinctio mollitia fugiat sint ipsam consequuntur ipsa dolorum atque, ipsum ea. Praesentium dolorum animi porro ea repellat dolorem explicabo recusandae eum sunt id soluta rerum atque qui culpa minus sequi, non nostrum consequuntur! Accusamus repudiandae laborum temporibus numquam omnis.</div>', NULL, '2021-12-13 08:04:40', '2021-12-13 08:04:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Dewi Monica', 'dewimonica', 'dewimonica1899@yahoo.com', NULL, '$2y$10$bDmRToQ.MlcTHLv4VQBmcuVz.ILaMEAs9LhfQplZWRIkfNlYH2PfO', NULL, '2021-12-13 08:02:51', '2021-12-13 08:02:51', 0),
(2, 'Julia Widiastuti', 'umayasari', 'ysitumorang@example.com', '2021-12-13 08:02:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3ewlNZrOrM', '2021-12-13 08:02:51', '2021-12-13 08:02:51', 0),
(3, 'Ega Winarno', 'mkusumo', 'ydamanik@example.com', '2021-12-13 08:02:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LyjkOps6sW', '2021-12-13 08:02:51', '2021-12-13 08:02:51', 0),
(4, 'Kayla Namaga', 'thamrin.puspa', 'kpermata@example.net', '2021-12-13 08:02:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zIMu5R4KYL', '2021-12-13 08:02:51', '2021-12-13 08:02:51', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `contact__us`
--
ALTER TABLE `contact__us`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contact__us`
--
ALTER TABLE `contact__us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
