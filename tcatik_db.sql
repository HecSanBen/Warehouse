-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 03:56 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcatik_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `product_id`, `product_category`, `created_at`, `updated_at`) VALUES
(1, 1, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(2, 2, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(3, 3, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(4, 4, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(5, 5, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(6, 6, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(7, 7, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(8, 8, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(9, 9, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(10, 10, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(11, 11, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(12, 12, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(13, 13, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(14, 14, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(15, 15, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(16, 16, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(17, 17, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(18, 18, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(19, 19, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(20, 20, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(21, 21, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(22, 22, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(23, 23, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(24, 24, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(25, 25, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(26, 26, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(27, 27, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(28, 28, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(29, 29, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(30, 30, 'Clothes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(33, 1, 'Clothes', '2021-08-07 13:56:29', '2021-08-07 13:56:29'),
(34, 1, 'Clothes', '2021-08-07 14:03:32', '2021-08-07 14:03:32'),
(35, 1, 'Clothes', '2021-08-07 14:03:41', '2021-08-07 14:03:41'),
(40, 1, 'Kitchen', '2021-08-07 15:40:28', '2021-08-07 15:40:28'),
(41, 1, 'Furnitures', '2021-08-07 17:19:54', '2021-08-07 17:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(58, '2014_10_12_000000_create_products_table', 1),
(59, '2021_08_03_161850_create_warehouses_table', 1),
(60, '2021_08_03_161937_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_warehouses_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_warehouses_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_warehouses_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_category`, `product_warehouses_1`, `product_warehouses_2`, `product_warehouses_3`, `product_notes`, `created_at`, `updated_at`) VALUES
(1, 'Seeder hola', 21, 'Furnitures', 'N-0', NULL, NULL, 'Probando notas.', '2021-08-07 09:45:07', '2021-08-07 17:19:54'),
(2, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(3, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(4, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(5, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(6, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(7, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(8, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(9, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(10, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(11, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(12, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(13, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(14, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(15, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(16, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(17, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(18, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(19, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(20, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(21, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(22, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(23, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(24, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(25, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(26, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(27, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(28, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(29, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(30, 'Seeder name', 69, 'Clothes', 'N-0', '', '', 'Seeder notes', '2021-08-07 09:45:07', '2021-08-07 09:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_warehouses_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_warehouses_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_warehouses_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `product_id`, `product_warehouses_1`, `product_warehouses_2`, `product_warehouses_3`, `created_at`, `updated_at`) VALUES
(1, 1, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(2, 2, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(3, 3, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(4, 4, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(5, 5, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(6, 6, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(7, 7, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(8, 8, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(9, 9, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(10, 10, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(11, 11, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(12, 12, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(13, 13, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(14, 14, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(15, 15, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(16, 16, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(17, 17, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(18, 18, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(19, 19, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(20, 20, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(21, 21, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(22, 22, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(23, 23, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(24, 24, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(25, 25, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(26, 26, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(27, 27, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(28, 28, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(29, 29, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(30, 30, 'N-0', '', '', '2021-08-07 09:45:07', '2021-08-07 09:45:07'),
(33, 1, 'N-0', 'N-1', 'NE-0', '2021-08-07 13:56:29', '2021-08-07 13:56:29'),
(34, 1, 'N-0', NULL, NULL, '2021-08-07 14:03:32', '2021-08-07 14:03:32'),
(35, 1, 'N-0', NULL, NULL, '2021-08-07 14:03:41', '2021-08-07 14:03:41'),
(40, 1, 'N-0', 'NW-0', 'N-1', '2021-08-07 15:40:28', '2021-08-07 15:40:28'),
(41, 1, 'N-0', NULL, NULL, '2021-08-07 17:19:54', '2021-08-07 17:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
