-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 12:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faketube`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `subscribersCount` int(11) NOT NULL DEFAULT 0,
  `URL` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `description`, `subscribersCount`, `URL`, `created_at`, `updated_at`) VALUES
(2, 'doloribus', 'Quos dolore repudiandae dolore incidunt.', 3104, 'http://wilkinson.info/', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(3, 'laudantium', 'Maiores magni temporibus recusandae occaecati dolor qui.', 6014, 'https://www.runolfsdottir.biz/placeat-cum-facere-laboriosam', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(7, 'facilis', 'Aut distinctio mollitia eum esse.', 5528, 'http://mueller.com/enim-est-minus-aut-consequatur-eveniet-quisquam-molestiae-libero', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(8, 'asperiores', 'Consequuntur quia ea aut quo.', 465, 'http://www.heidenreich.com/', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(9, 'iusto', 'Aperiam dolor aut mollitia alias dolor.', 9956, 'http://www.eichmann.org/aut-at-porro-et-corrupti-ipsam', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(10, 'ad', 'Quas ut quibusdam sed.', 8266, 'http://kilback.com/ea-labore-pariatur-aut-neque-et-amet', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(19, 'magni', 'Nihil ipsa est ducimus animi.', 7784, 'http://okuneva.com/voluptas-tempora-vitae-est-assumenda-corporis-debitis-consequuntur-minus.html', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(20, 'id', 'Qui quo blanditiis aliquid odio.', 1600, 'http://beatty.biz/quas-doloribus-numquam-et', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(21, 'modi', 'Vel perferendis suscipit non adipisci sint repellat culpa iste.', 6463, 'http://www.jast.com/', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(22, 'quasi', 'Animi quia adipisci iure explicabo sapiente rerum.', 5166, 'http://www.ziemann.org/blanditiis-quisquam-et-at-dignissimos', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(23, 'et', 'Deserunt non aspernatur occaecati officiis.', 7110, 'https://www.little.com/doloremque-ut-tenetur-facere-ea', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(24, 'maiores', 'Assumenda id provident ut repudiandae ullam.', 7778, 'http://www.pfeffer.org/officiis-et-dolore-optio-expedita', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(25, 'rem', 'Ullam voluptates animi sit ut maiores dolorum fugiat.', 4234, 'http://raynor.com/dicta-aut-facilis-velit-blanditiis-impedit-libero', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(26, 'facere', 'Saepe temporibus maxime et autem.', 4155, 'http://www.ondricka.com/laudantium-dolores-consequatur-animi-quas-magni-et-unde', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(27, 'eos', 'Soluta nihil vero iste itaque.', 5103, 'http://www.dicki.biz/nemo-libero-consequuntur-quia', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(28, 'corrupti', 'Repellendus debitis aperiam eos blanditiis facilis.', 2772, 'https://www.schiller.com/ut-quasi-praesentium-rem-neque', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(29, 'quaerat', 'Necessitatibus in rem consequatur.', 8467, 'https://www.considine.org/eaque-qui-est-a-a-repellat-enim-eos', '2023-08-18 01:58:28', '2023-08-18 01:58:28'),
(30, 'omnis', 'Voluptatum cum quia molestiae libero dolores consequatur.', 3936, 'http://fay.com/ipsam-quia-voluptas-aut-nihil-ipsam-sunt', '2023-08-18 01:58:28', '2023-08-18 01:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_18_085255_create_channels_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permission` enum('User','Admin') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
