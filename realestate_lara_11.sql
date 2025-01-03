-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2025 at 08:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate_lara_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9LcFc9mXxq5yAQ5nChq6zFEeFzY4nHIWsqiEu94N', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWxEcEdRTFBIY1hrb0dia044QVVzRG9NZWlUNVlhRGpSeXY5WlVZMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1735888035);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `website`, `address`, `about`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin 2', 'admin', 'admin@gmail.com', NULL, '$2y$12$WbHJ9h5iLtZ.Ta1T3GlQIudfDkmIiC2IncBbprrw1zOjTmSdraziC', 'VLTTZPIqb3K1UGHii8LVE4LtufCrpH.png', '987', 'www.yuri-indonesia.co.id', 'Kawasan Industri Pulogadung', 'loprem ipsum dolar sit amet edit', 'admin', 'active', NULL, '2025-01-02 07:36:36', '2025-01-02 00:56:08'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$12$K6NLkkVYivTYucXfcZQZDeyPz8Ms3xrIKH.4yZ3SkwDCedgU5sdNu', NULL, '654', NULL, NULL, NULL, 'agent', 'active', NULL, '2025-01-15 03:55:18', NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$12$6Udtgq59pOqTJ/2ckbzrHuvx8zUb60xoHqab74OYtdkoENDvV0Xp.', NULL, '321', NULL, NULL, NULL, 'user', 'active', NULL, '2025-01-06 03:55:22', NULL),
(4, 'Eve Parker', NULL, 'darius26@example.com', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1 (747) 237-8068', NULL, '4175 Oscar Circles\nEldonshire, SD 41164', NULL, 'user', 'inactive', 'J9WNfxHVCJ', '2024-12-31 20:17:37', '2024-12-30 20:17:37'),
(5, 'Emmie Littel Jr.', NULL, 'ashlee.davis@example.net', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '1-347-422-7523', NULL, '493 Funk Corners Apt. 554\nLehnerburgh, ME 03190-6003', NULL, 'agent', 'active', 'B72UVd16Tz', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(6, 'Prof. Noemy Bednar IV', NULL, 'scummerata@example.net', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '1-719-814-7316', NULL, '4846 Tremblay Forest Suite 771\nNorth Julien, LA 96607-6728', NULL, 'user', 'active', 'iNew0zM3O5', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(7, 'Jovani Stehr', NULL, 'ibreitenberg@example.net', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '608.580.3377', NULL, '3126 Orn Plain Apt. 102\nPort Abdielshire, PA 20352-5503', NULL, 'agent', 'inactive', '0vosprNOQn', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(8, 'Dante Renner', NULL, 'ian89@example.com', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1-206-972-8601', NULL, '19187 Feest Junctions\nJodiehaven, NE 47339', NULL, 'agent', 'active', 'OxY7Fnpy6m', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(9, 'Christy Rutherford', NULL, 'psimonis@example.net', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1.551.444.3896', NULL, '4915 Kuphal Fork\nLabadieburgh, KY 26647-4182', NULL, 'agent', 'active', 'cyuzEWZhPK', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(10, 'Maegan Lebsack V', NULL, 'iwunsch@example.org', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1-272-777-8175', NULL, '540 Darrin View Apt. 036\nWest Anyaside, MI 01296', NULL, 'admin', 'active', 'OfGqGdEYXJ', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(11, 'Miss Leilani Funk IV', NULL, 'abagail.emmerich@example.org', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '1-279-356-1777', NULL, '5043 Kaylah Points Suite 246\nNorth Aniyaberg, DE 15970-7059', NULL, 'user', 'inactive', '2nxG5GYEnR', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(12, 'Prof. Walton Rice', NULL, 'jess.ankunding@example.org', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1-838-877-7103', NULL, '263 Casandra Shoals Suite 145\nNew Ryanbury, OH 62475', NULL, 'agent', 'inactive', 'tnNhbssRq2', '2024-12-30 20:17:37', '2024-12-30 20:17:37'),
(13, 'Jack Schneider', NULL, 'azemlak@example.com', '2024-12-30 20:17:36', '$2y$12$NW8Pp6Suato28HJbHtmVouX.I4lNI/oRLbCqVhG6cm5IIgGi5z1YO', NULL, '+1-586-342-3926', NULL, '788 Maegan Shores\nEast Oceane, MO 51691-2391', NULL, 'user', 'active', 'D3b7CehrUz', '2024-12-30 20:17:37', '2024-12-30 20:17:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
