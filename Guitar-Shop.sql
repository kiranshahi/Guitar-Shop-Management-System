-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2017 at 08:55 PM
-- Server version: 5.7.11-0ubuntu6
-- PHP Version: 7.0.4-7ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Guitar-Shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(2, 'Kiran', 'Kiran', 'Pokhara', 984032, '2016-04-29 04:38:17', '2016-04-29 04:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `dealer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guitars`
--

CREATE TABLE `guitars` (
  `id` int(11) NOT NULL,
  `guitar_name` varchar(255) DEFAULT NULL,
  `guitar_make` varchar(255) DEFAULT NULL,
  `guitar_model` varchar(255) DEFAULT NULL,
  `guitar_color` varchar(255) DEFAULT NULL,
  `purposed_selling_price` int(11) DEFAULT NULL,
  `damaged_status` varchar(255) DEFAULT NULL,
  `rack_no` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guitars`
--

INSERT INTO `guitars` (`id`, `guitar_name`, `guitar_make`, `guitar_model`, `guitar_color`, `purposed_selling_price`, `damaged_status`, `rack_no`, `created_at`, `updated_at`, `quantity`, `user_id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(4, 'fdasdfa', 'fdsafasf', 'fasdfasf', 'fsdfasfsa', 1233, 'Ok', 23412, '2016-04-28 06:42:46', '2016-04-29 06:00:14', 23412, NULL, 'loginbg.jpg', 'image/jpeg', 62912, '2016-04-29 06:00:14'),
(7, 'dsfsagsd', 'gdsagas', 'gdsag', 'dsagas', 2135, 'Ok', 52315, '2016-04-28 12:13:55', '2016-04-29 05:59:54', 235125, NULL, 'loginbg.jpg', 'image/jpeg', 62912, '2016-04-29 05:59:54'),
(8, '32512352', '23531252', '52351235', '23512352', 51235123, 'Ok', 51235123, '2016-04-28 12:14:13', '2016-04-29 06:00:36', 325125, NULL, 'loginbg.jpg', 'image/jpeg', 62912, '2016-04-29 06:00:36'),
(9, 'ds', 'fdsfds', 'fsdfads', 'fsdfsda', 14123, 'Ok', 14231, '2016-04-29 05:59:23', '2016-04-29 05:59:23', 423423, 1, 'loginbg.jpg', 'image/jpeg', 62912, '2016-04-29 05:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `purchaseDate` date DEFAULT NULL,
  `delivaryDate` date DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `SupplierName` varchar(255) DEFAULT NULL,
  `GuitarName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `purchaseDate`, `delivaryDate`, `make`, `quantity`, `price`, `created_at`, `updated_at`, `SupplierName`, `GuitarName`) VALUES
(4, '2016-04-29', '2016-05-29', 'Aluminium', 12, 50000, '2016-04-29 07:34:40', '2016-04-29 07:34:40', 'Trideb International Guitar', 'Kiran\'s Guitar');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160427182559'),
('20160427182843'),
('20160427183151'),
('20160427183437'),
('20160428034529'),
('20160428151215'),
('20160428160346'),
('20160428174352'),
('20160428181657'),
('20160429021503');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'kiran.admin@admin.com', '$2a$10$Xe2X61qjerf26PX0l49p7uwtNWKT9TIltiuw5YuJ3SUwEoc0lse26', NULL, NULL, NULL, 44, '2017-01-17 15:07:29', '2017-01-17 14:32:07', '127.0.0.1', '127.0.0.1', '2016-04-28 15:20:53', '2017-01-17 15:07:29', 1),
(2, 'madan@admin.com', '$2a$10$kQnhTqcacdEiSkeTiLH1lePW6N.GcyFoJvuMzIFvyjnR6t7O9MEcW', NULL, NULL, NULL, 8, '2016-04-29 06:30:20', '2016-04-29 06:27:42', '127.0.0.1', '127.0.0.1', '2016-04-28 15:52:29', '2016-04-29 06:30:20', 0),
(3, 'kiran@admin.com', '$2a$10$mipQF2V1PFadWJ1W2io/KOrd3vpSPWpz6KlkuEU4NZdSpv2gQNSt2', NULL, NULL, NULL, 9, '2016-04-29 12:36:32', '2016-04-29 12:30:21', '127.0.0.1', '127.0.0.1', '2016-04-29 06:31:40', '2016-04-29 12:36:32', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guitars`
--
ALTER TABLE `guitars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guitars`
--
ALTER TABLE `guitars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
