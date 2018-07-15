-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 01:59 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryDescription`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'This is a best electronics', 1, '2018-07-01 04:28:28', '2018-07-01 04:28:28'),
(2, 'Nature', 'Nature is beautiful', 1, '2018-07-01 04:31:08', '2018-07-01 04:31:08'),
(5, 'Fruits', 'Apple, Banana, Mango. Pineapple.', 1, '2018-07-01 09:08:21', '2018-07-02 04:42:37'),
(6, 'Dress', 'Pant, Shirt, T-shirt. Jeans', 1, '2018-07-01 09:08:55', '2018-07-01 09:08:55'),
(7, 'Shoes', 'Bata, Nike, Addidas', 1, '2018-07-01 09:09:33', '2018-07-01 09:09:33'),
(8, 'Travel', 'Dubai, Los-angels, Singapore, Kualampur', 1, '2018-07-01 09:11:08', '2018-07-01 09:11:08'),
(9, 'City', 'Dhaka, Seoul, Budapest, London, New York', 1, '2018-07-01 09:12:06', '2018-07-01 09:12:06'),
(10, 'Technology', 'Google, Microsoft, Facebook, Github, Twitter.', 1, '2018-07-01 09:13:01', '2018-07-01 09:13:01'),
(11, 'Country', 'Bangladesh, India, Switzerland, Australia', 1, '2018-07-01 09:24:39', '2018-07-01 09:24:39'),
(12, 'Football', 'Argentian, Spain, Brazil, Uruguay, Garmany', 1, '2018-07-01 09:25:19', '2018-07-01 09:25:19'),
(13, 'Cricket', 'India, Pakistan, Bangladesh, SriLanka, Australia, New Zealand', 1, '2018-07-01 09:25:58', '2018-07-01 09:25:58'),
(14, 'Mobile', 'Samsung, Apple, Oppo, Huwai.', 1, '2018-07-01 09:26:56', '2018-07-01 09:26:56'),
(15, 'Religion', 'Islam, Christianity, Buddhism, Hinduism.', 1, '2018-07-01 09:27:50', '2018-07-01 09:27:50'),
(16, 'Europe', 'England, Netherland, Switzerland, Ireland, France, Germany, Itali', 1, '2018-07-01 09:28:36', '2018-07-01 09:28:36'),
(17, 'Football Player', 'Messi, Neymar, Ronaldo, Salah, Ibrahimovich.', 1, '2018-07-01 09:29:33', '2018-07-01 09:29:33'),
(18, 'Economics', 'Money, Trade, Business,', 1, '2018-07-01 09:30:29', '2018-07-01 09:30:29'),
(19, 'Flower', 'Rose, Peruvian LIly, Lady\'s Mantle, Gazania', 1, '2018-07-01 09:33:00', '2018-07-01 09:33:00'),
(20, 'Trees', 'Acacia, Bamboo, Banyan, Cactus', 1, '2018-07-01 09:34:21', '2018-07-01 09:34:21'),
(21, 'Food', 'jdjdkd', 1, '2018-07-05 05:55:43', '2018-07-05 05:55:43'),
(22, 'History', 'This is our history.', 1, '2018-07-05 06:12:43', '2018-07-05 06:12:43'),
(23, 'aut', 'Est aut qui quis enim. Maiores eveniet ab aperiam et. Nesciunt neque aut laboriosam odio non et nam.', 1, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(24, 'aliquid', 'Unde cupiditate eos qui pariatur. Necessitatibus pariatur explicabo recusandae velit est est ut. Magni est libero aut. Et est facere minus et ea.', 0, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(25, 'voluptas', 'Dolor assumenda nulla doloribus sunt. Voluptate rerum enim itaque ipsum numquam eveniet. In soluta vel quaerat reiciendis cupiditate sunt. Quam voluptatem harum corrupti soluta.', 1, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(26, 'fugiat', 'Vel dolor maiores voluptas animi saepe. Qui officia dolorum omnis sunt et. Sed pariatur quisquam fugit eligendi temporibus assumenda magni. Optio ullam nesciunt occaecati id.', 0, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(27, 'cum', 'Nulla ut atque est quis. Non sit nobis consequuntur et est. Placeat doloribus voluptas labore labore dolores minima ullam.', 0, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(28, 'est', 'Alias quasi velit harum voluptate ducimus quas corporis. Totam et similique consequatur asperiores animi ut et.', 1, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(29, 'ducimus', 'Provident similique error animi quasi quasi doloremque. Sit consequatur autem illo et quo. Saepe sed similique ab consequatur. Impedit quia voluptas distinctio deserunt ut officia quis accusantium.', 0, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(30, 'distinctio', 'Eos nihil facere impedit odio fuga quam modi sed. Molestias qui recusandae non aut hic qui natus dolorem. Sapiente tenetur suscipit sit eaque. Quaerat at tempore minima sit eos corporis fuga.', 0, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(31, 'nam', 'Magnam enim ducimus quisquam accusamus sit nihil in. Doloribus sint suscipit nulla quisquam aut. Fugit et distinctio consequuntur. Velit iusto ut quia consequatur consequatur modi est.', 1, '2018-07-05 07:45:46', '2018-07-05 07:45:46'),
(32, 'mollitia', 'Est nulla rerum ab. Fuga tempore inventore quia est ea dolores consequuntur. Incidunt in sit eaque veniam. Minus amet qui nostrum.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(33, 'neque', 'Eum doloremque eius dolorem hic rem laudantium sunt. Soluta laboriosam velit suscipit impedit delectus repellendus pariatur.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(34, 'facere', 'Laudantium voluptas perspiciatis maiores et reprehenderit eum consequatur. Ea error consequatur eos molestiae quae. Voluptatem dolor similique cum unde hic nam magnam.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(35, 'voluptatem', 'Qui eos omnis impedit voluptates. Sed quae adipisci omnis cumque facilis quibusdam. Atque nihil debitis quasi autem excepturi cupiditate inventore. Sit ad mollitia et sed animi.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(36, 'sit', 'Animi temporibus suscipit quis. Aperiam facilis voluptatibus sed ut reiciendis tempora ea. Et sed consequatur quam saepe fuga dolore officia.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(37, 'et', 'Perspiciatis sapiente temporibus totam quidem cum nihil fuga. Dolores ut aliquam odit doloribus qui eum. Aut quia et tenetur et facilis assumenda ut.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(38, 'quas', 'Id quia dolore dolore corporis. Ex aperiam dolorem hic dolor sint qui repudiandae. Ipsa velit modi modi saepe vel quibusdam. Recusandae magnam nostrum iste quaerat molestiae consequuntur amet.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(39, 'dicta', 'Autem harum velit et blanditiis aspernatur quia. Perferendis quia atque ea quam corporis beatae. Qui quia et consequatur animi est repellat possimus minus.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(40, 'nisi', 'Illum minima accusantium repellat atque et qui in. Ut dolorem dolorem impedit et. Dolor nulla quod temporibus sint.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(41, 'qui', 'Non non aut animi sunt vero. Praesentium voluptatem distinctio et sit eos aut quia totam. Minima eveniet officiis voluptatibus ex aperiam quia.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(42, 'expedita', 'Labore eum dicta repudiandae labore vel qui. Et fuga a officiis et sequi aut. Eos soluta et eligendi quidem tenetur velit.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(43, 'occaecati', 'Voluptatem deleniti quo magni aut. Sed magnam blanditiis et quo occaecati laboriosam est. Aut vero voluptatem excepturi nulla dolorum vel beatae.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(44, 'unde', 'Dolor animi aperiam cupiditate delectus neque cumque. Quisquam quis atque ut. Laudantium aut a perferendis unde sequi. Architecto a rem assumenda.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(45, 'et', 'Blanditiis delectus blanditiis rerum. Sit quo impedit molestiae mollitia nulla aut. Minus enim consequuntur laborum quo. Est qui dicta voluptatibus non.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(46, 'labore', 'Et in reprehenderit quos modi officia eos. Aut repellendus sint consectetur et quod delectus earum. Distinctio tempora repellendus non temporibus asperiores. Et voluptatem et sit cum numquam et.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(47, 'cum', 'Deserunt modi corporis laborum laborum a et cumque. Consequuntur ex iusto quos quae sapiente est. Omnis similique dolores dolore consectetur ut.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(48, 'sed', 'Nihil omnis molestias beatae corrupti aliquam vel deleniti. Magnam saepe ad sed itaque voluptate.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(49, 'sapiente', 'Aut error animi qui sunt perspiciatis. Quod ut nam accusamus dolor vitae eaque. Vel dolor aut minus veritatis exercitationem.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(50, 'dolores', 'Totam necessitatibus provident aliquam dignissimos et. Quae similique sit id voluptas beatae fuga voluptas. Est rerum iusto voluptatem earum assumenda ex quibusdam.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(51, 'quia', 'Facere esse expedita nobis est illum sed alias. Sapiente quo sit qui nam. Quasi officiis ut provident doloremque et aspernatur et sed.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(52, 'illum', 'Dolor nobis et dolore vel. Corporis voluptatum doloribus illum et animi ut consectetur. Dolores sit aspernatur minus doloremque animi eius optio.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(53, 'sequi', 'Tenetur qui laboriosam blanditiis reprehenderit nam ea nam rerum. Illo dolores occaecati reprehenderit ex ullam. Dolorem qui explicabo rem in et nisi. Ut vitae minus qui nihil.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(54, 'earum', 'Quia totam aut et voluptatem pariatur. Quis aut asperiores a non. Voluptate aut consequatur ut mollitia odit eligendi. Dolorem error praesentium dolor harum eius consequatur blanditiis ut.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(55, 'consequatur', 'Aut molestias tempore fugiat quasi quis totam minima. Et omnis voluptas ut enim iusto dolores dolores. Quis laborum quae asperiores omnis cumque atque officiis.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(56, 'explicabo', 'Corporis alias non quis cupiditate enim. Ut vel maxime voluptas dolor pariatur. Assumenda qui voluptas ullam non tempore reiciendis impedit consequatur.', 0, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(57, 'rerum', 'Voluptatibus optio deleniti molestias porro. Voluptate quos minima et. Nihil exercitationem qui sit quaerat. Quisquam earum et est.', 1, '2018-07-05 07:45:47', '2018-07-05 07:45:47'),
(58, 'dolorum', 'Ut error unde quo. In sed quae autem cumque iste commodi dolorem corporis. Ducimus consequatur ratione ut dicta neque.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(59, 'quo', 'Nemo quos et aut fuga vitae qui. Voluptatem in incidunt ut dicta ipsa soluta voluptas reprehenderit.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(60, 'quia', 'Earum illo enim reiciendis. Quam et quis tenetur et. Accusamus architecto autem minus accusantium suscipit illum. Consequuntur molestias deserunt eum natus.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(61, 'quaerat', 'Omnis necessitatibus dolor iste ut. Accusantium est perferendis veritatis sit eum aliquam ut. Necessitatibus ab vero consequatur minus repudiandae aut expedita.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(62, 'et', 'Quia consectetur dolorem debitis tempore. Cupiditate voluptatem quis error illo veniam est. Provident beatae harum ipsam soluta animi.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(63, 'quos', 'Nisi sint harum possimus quidem tempore. Odit non quia nesciunt omnis et. Libero sunt omnis et vitae odio.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(64, 'temporibus', 'Quod commodi et id qui. Similique aperiam ab aliquam quibusdam laboriosam possimus. Omnis nesciunt molestiae temporibus dolore.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(65, 'ut', 'Maiores qui hic doloremque molestiae corrupti tenetur. Eius earum occaecati dolores vero. Qui minus et facilis aut tenetur incidunt inventore. Explicabo autem et aut aliquam.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(66, 'incidunt', 'Neque dolorum et illum dolor eveniet veritatis. Animi nihil minus id voluptas. Sed molestiae ipsum nihil ipsum quos similique quia dolore.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(67, 'quasi', 'Iste et eum dolore ea. Non sed soluta cupiditate libero ea cumque blanditiis. Ducimus accusamus possimus ipsam placeat dolor et sapiente amet.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(68, 'dolores', 'Saepe animi corrupti exercitationem. Eos voluptas ad voluptatum aut at voluptas. Minima doloribus dolores soluta qui. Aut ratione aliquid laborum qui. Animi nisi sint et culpa earum ad eos.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(69, 'voluptates', 'Est eligendi non mollitia adipisci architecto. Aspernatur tempore vitae sed. Est dolorem totam voluptatem iste provident.', 0, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(70, 'ratione', 'Deleniti ullam excepturi ratione occaecati eum. Rerum provident sit sed quisquam maxime cumque accusamus. Error recusandae ut quasi ut. Tempora sunt veniam excepturi eum nisi in dolore.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(71, 'mollitia', 'Enim maiores exercitationem facilis iusto dolore sunt. Accusantium animi molestiae sunt voluptatem molestias et quae. Et deserunt qui veniam quis est odio et.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48'),
(72, 'sequi', 'Eaque sequi velit corrupti pariatur. Facilis at aliquid voluptates eos voluptatum maxime et.', 1, '2018-07-05 07:45:48', '2018-07-05 07:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_30_193920_create_categories_table', 2),
(4, '2018_07_02_121256_create_products_table', 3),
(5, '2018_07_02_213232_create_products_table', 4),
(6, '2018_07_02_214803_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` tinyint(4) NOT NULL,
  `productPrice` double(8,2) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `productPicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publicationStatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `categoryId`, `productPrice`, `productQuantity`, `productDescription`, `productPicture`, `publicationStatus`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 5, 300.00, 2, '2 kg apple.', 'public/uploadPic/1apple.png', 1, '2018-07-02 18:48:38', '2018-07-07 11:34:14'),
(3, 'Apple', 5, 110.00, 5, 'This is a red apple.', 'public/uploadPic/3apple.png', 1, '2018-07-03 02:17:13', '2018-07-04 16:10:31'),
(4, 'apple2', 5, 100.00, 10, 'An apple', 'public/uploadPic/4apple.png', 1, '2018-07-03 03:23:54', '2018-07-05 04:30:08'),
(6, 'apple4', 5, 100.00, 10, 'Appleeeeee', 'public/uploadPic/6apple.png', 1, '2018-07-03 03:38:38', '2018-07-03 03:38:38'),
(7, 'apple7', 5, 500.00, 50, '50 apples.', 'public/uploadPic/7apple.png', 1, '2018-07-03 03:39:54', '2018-07-05 04:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahade', 'mahade@gmail.com', '$2y$10$XGDqAu9OLGI22p45djMbkO6S4T3fjWZOIpIT0YVv/Shd0T.ojtbPK', 'dUzFQiqcm9xKk0FNu2htaRwBCCiZeg3sX9DqCerDHFGgwZeXrtM0wQ6p7YkE', '2018-06-29 13:21:56', '2018-06-29 13:21:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
