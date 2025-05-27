-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 08:38 AM
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
-- Database: `garagewebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL,
  `appointment_date` datetime NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `vehicle_id`, `booking_date`, `appointment_date`, `service_type`, `notes`, `status`) VALUES
(1, 1, '2025-05-13 03:38:40', '2025-05-21 08:00:00', 'Bảo trì,Gầm máy', '', 'cancelled'),
(2, 2, '2025-05-13 04:40:44', '2025-05-14 15:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(3, 3, '2025-05-13 05:55:55', '2025-05-13 13:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(4, 4, '2025-05-13 06:36:41', '2025-05-13 14:00:00', 'Bảo trì,Gầm máy', '1213', 'pending'),
(5, 5, '2025-05-13 08:39:13', '2025-05-14 08:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(6, 6, '2025-05-13 08:46:31', '2025-05-14 13:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(7, 7, '2025-05-13 08:47:32', '2025-05-14 10:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(8, 8, '2025-05-13 08:52:23', '2025-05-22 15:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(9, 9, '2025-05-13 08:53:09', '2025-05-22 15:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(10, 10, '2025-05-13 09:01:14', '2025-05-22 15:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(11, 11, '2025-05-13 09:49:50', '2025-05-14 09:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(12, 12, '2025-05-13 10:47:30', '2025-05-14 11:00:00', 'Bảo trì,Gầm máy', '', 'pending'),
(13, 13, '2025-05-15 14:16:13', '2025-05-22 09:00:00', 'Bảo trì', 'oke', 'cancelled'),
(14, 13, '2025-05-15 14:17:40', '2025-05-23 11:00:00', 'Bảo trì', 'oke', 'pending'),
(15, 13, '2025-05-15 14:21:29', '2025-05-16 10:00:00', 'Bảo trì', 'oke', 'pending'),
(16, 14, '2025-05-15 14:32:16', '2025-05-21 09:00:00', 'Gầm máy', 'oke', 'cancelled'),
(17, 14, '2025-05-16 04:21:24', '2025-05-21 11:00:00', 'Bảo trì,Gầm máy', 'oke', 'pending'),
(18, 14, '2025-05-26 10:24:59', '2025-05-31 11:00:00', 'Gầm máy', 'oke', 'completed'),
(19, 14, '2025-05-26 10:25:35', '2025-06-01 17:00:00', 'Gầm máy', 'khong co', 'pending'),
(20, 14, '2025-05-26 22:58:39', '2025-05-28 14:00:00', 'Gầm máy', 'oke', 'pending'),
(21, 15, '2025-05-26 23:22:25', '2025-05-28 15:00:00', 'Bảo trì', 'oke', 'pending'),
(22, 16, '2025-05-26 23:32:35', '2025-05-27 15:00:00', 'Bảo trì', 'oke', 'pending');

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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `phone`, `email`) VALUES
(1, 'Đặng Minh Khôi', '0945330694', 'dminhkhoi9@gmail.com'),
(2, 'Đặng Minh Khôi', '0945330694', 'dminhkhoi9@gmail.com');

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
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_15_095728_add_status_to_appointment_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng Minh Khôi', 'dminhkhoi9@gmail.com', '$2y$12$PDOyE3y5P/rRey8SnQgdxO9WJkJGKbyR1WKd/a0cVAqJNSR/6xVuW', 'user', '4IrERvmeyMyruqPk1qEvzgI2aR03ohz3J81Bfd2pPr9pFFGZW72cDgSCHvNg', '2025-05-12 19:51:37', '2025-05-12 19:51:37'),
(2, 'Đặng Minh Khôi', 'po4life04@gmail.com', '$2y$12$MtaIzpUt/3doT61JKSUAouQUv8UINt1bVZrLtjRjGWdskdKpMxiCG', 'user', NULL, '2025-05-12 19:52:59', '2025-05-12 19:52:59'),
(4, 'Admin User', 'admin@example.com', '$2y$12$.Brq4p2JXDjnvj7i170XJebFMfXYCyzz9cMrNYNb9l3odTScQymSy', 'admin', 'Czhmj2LklcdlRVe49wxwQiDB3pWh69Y9k7aNkmNQO3Rz4dcifFmpXRwxmdcC', '2025-05-26 02:26:23', '2025-05-26 02:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_traveled` int(11) NOT NULL,
  `vehicle_plate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `customer_id`, `vehicle_type`, `vehicle_traveled`, `vehicle_plate`) VALUES
(1, 1, 'Santafe', 10000, '29D10101'),
(2, 2, 'Santafe', 10000, '29D10101'),
(3, 1, 'Santafe', 10000, '29D-10100'),
(4, 1, 'Santafe', 10000, '29D-10100'),
(5, 1, 'CX5', 10000, '29D-10100'),
(6, 1, 'CX5', 10000, '29D-10100'),
(7, 1, 'CX5', 10000, '29D-10100'),
(8, 1, 'Civic', 10000, '29D-10100'),
(9, 1, 'Civic', 10000, '29D-10100'),
(10, 1, 'Civic', 10000, '29D-10100'),
(11, 1, 'Everest', 10000, '29D-10100'),
(12, 1, 'CX5', 10000, '29D-10100'),
(13, 1, 'Everest', 22231, '29D-10121'),
(14, 1, 'CX5', 22231, '29D-10123'),
(15, 1, 'Toyota', 12031, '29D-10196'),
(16, 1, 'Honda', 1234455, '29D-10311');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

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
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
