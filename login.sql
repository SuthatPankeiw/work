-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2019 at 03:57 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

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
(3, '2019_09_24_065905_add_socialite_fields_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider_name`, `provider_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'google', '110532968612906160719', 'เจษฎา ประมวลทรัพย์', 'jetsada.pramualsap@gmail.com', '2019-09-24 00:18:19', NULL, '9aq5UUUeUHLGugzDiwmWhsSbJHyEpKMz2Zq43EmJWP0le0F9cVgZOvjQcqQX', '2019-09-24 00:18:19', '2019-09-24 00:18:19', 'https://lh3.googleusercontent.com/-tsmEM5zdiz4/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rc9sPV74MNUGPZFeDJ-EYzAL043Dg/photo.jpg'),
(2, 'google', '116032281735726811416', 'เจษฎา ประมวลทรัพย์', 'gamenice12345678@gmail.com', '2019-09-24 00:18:37', NULL, 'Yb9VRV85S43HsMlQhEEAVW1tKM5S8yefejeESFcTiysZ9OuwOo99co0Mj0Q1', '2019-09-24 00:18:37', '2019-09-24 00:18:37', 'https://lh4.googleusercontent.com/--MeBGEanbUQ/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfJyQFXVgoSTPisqGjp0IFrVr7cVQ/photo.jpg'),
(3, 'google', '112960858275599247155', 'Jetsada PRAMUALSAP', 'jetsada.pra@ku.th', '2019-09-24 00:26:09', NULL, 'fQkAqi2ofMyqqeJTUMFLoAARaHajU9JpswfyFNHQQ6PBDGJwBn4QLz9fJjor', '2019-09-24 00:26:09', '2019-09-24 00:26:09', 'https://lh3.googleusercontent.com/-RB6PV1xk1WI/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rdVRX8QiKiimtrfAAQ-8PXda9Rhuw/photo.jpg'),
(4, 'google', '108934375600266048618', 'เจษฎา ประมวลทรัพย์', 'gamenice22345678@gmail.com', '2019-09-25 10:59:33', NULL, 'jGqZ7PTIuN7uBJh4fKCckPnJZZZh9qiAgqWcCfHFw2G8XRc6pGcSSQG1gv4C', '2019-09-25 10:59:33', '2019-09-25 10:59:33', 'https://lh6.googleusercontent.com/-ZfXLSuL6hZo/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rfKeXFEmeGly05mF05QJKzdQoFhBw/photo.jpg');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
