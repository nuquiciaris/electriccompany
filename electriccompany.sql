-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2026 at 07:33 AM
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
-- Database: `electriccompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `meter_number` varchar(50) NOT NULL,
  `connection_type` enum('residential','commercial','industrial') NOT NULL DEFAULT 'residential',
  `status` enum('active','inactive','suspended') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `account_number`, `customer_name`, `address`, `email`, `phone`, `meter_number`, `connection_type`, `status`, `created_at`, `updated_at`) VALUES
(2, '12345', 'asdasd', 'asdasd', 'asdasd@gmail.com', '09123456789', '32', 'residential', 'active', '2026-10-05 13:36:41', '2026-10-05 13:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `customer_accounts`
--

CREATE TABLE `customer_accounts` (
  `id` int(11) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `meter_number` varchar(50) DEFAULT NULL,
  `connection_type` enum('residential','commercial','industrial') DEFAULT 'residential',
  `status` enum('active','inactive','suspended') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_accounts`
--

INSERT INTO `customer_accounts` (`id`, `account_number`, `customer_name`, `address`, `phone`, `email`, `meter_number`, `connection_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EC-2024-0001', 'Juan Dela Cruz', '123 Mabini Street, Quezon City', '0917-555-0101', 'juan.delacruz@email.com', 'MTR-001', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(2, 'EC-2024-0002', 'Maria Santos', '456 Rizal Avenue, Manila', '0917-555-0102', 'maria.santos@email.com', 'MTR-002', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(3, 'EC-2024-0003', 'Santos Trading Corporation', '789 Roxas Boulevard, Makati City', '0917-555-0103', 'contact@santostrading.com', 'MTR-003', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(4, 'EC-2024-0004', 'Carlos Reyes', '321 Bonifacio Street, Pasig City', '0917-555-0104', 'carlos.reyes@email.com', 'MTR-004', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(5, 'EC-2024-0005', 'Reyes Industrial Supply', '555 Industrial Road, Valenzuela City', '0917-555-0105', 'info@reyesindustrial.com', 'MTR-005', 'industrial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(6, 'EC-2024-0006', 'Angela Garcia', '678 Quezon Avenue, Quezon City', '0917-555-0106', 'angela.garcia@email.com', 'MTR-006', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(7, 'EC-2024-0007', 'Garcia General Store', '890 Commonwealth Avenue, Quezon City', '0917-555-0107', 'garciastore@email.com', 'MTR-007', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(8, 'EC-2024-0008', 'Roberto Mendoza', '234 Sampaguita Street, Marikina City', '0917-555-0108', 'roberto.mendoza@email.com', 'MTR-008', 'residential', 'inactive', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(9, 'EC-2024-0009', 'Mendoza Manufacturing Corporation', '432 Factory Road, Caloocan City', '0917-555-0109', 'info@mendozamfg.com', 'MTR-009', 'industrial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(10, 'EC-2024-0010', 'Liza Anderson', '567 Narra Street, Pasay City', '0917-555-0110', 'liza.anderson@email.com', 'MTR-010', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(11, 'EC-2024-0011', 'David Martinez', '890 Acacia Avenue, Manila', '0917-555-0111', 'david.martinez@email.com', 'MTR-011', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(12, 'EC-2024-0012', 'Martinez Shopping Center', '123 Mall Road, Mandaluyong City', '0917-555-0112', 'contact@martinezcenter.com', 'MTR-012', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(13, 'EC-2024-0013', 'Jennifer Bautista', '456 Sampaguita Road, Antipolo City', '0917-555-0113', 'jennifer.bautista@email.com', 'MTR-013', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(14, 'EC-2024-0014', 'Bautista Heavy Industries', '789 Manufacturing Avenue, Taguig City', '0917-555-0114', 'info@bautistaindustries.com', 'MTR-014', 'industrial', 'suspended', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(15, 'EC-2024-0015', 'Thomas Navarro', '321 Willow Street, Pasig City', '0917-555-0115', 'thomas.navarro@email.com', 'MTR-015', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(16, 'EC-2024-0016', 'Navarro Business Center', '654 Corporate Drive, Makati City', '0917-555-0116', 'admin@navarrocenter.com', 'MTR-016', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(17, 'EC-2024-0017', 'Patricia Flores', '987 Acacia Street, Pasig City', '0917-555-0117', 'patricia.flores@email.com', 'MTR-017', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(18, 'EC-2024-0018', 'Flores Automotive Manufacturing', '246 Assembly Road, Valenzuela City', '0917-555-0118', 'contact@floresauto.com', 'MTR-018', 'industrial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(19, 'EC-2024-0019', 'Christopher Lim', '135 Narra Avenue, San Juan City', '0917-555-0119', 'christopher.lim@email.com', 'MTR-019', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(20, 'EC-2024-0020', 'Lim Retail Center', '468 Commerce Boulevard, Manila', '0917-555-0120', 'info@limretail.com', 'MTR-020', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(21, 'EC-2024-0021', 'Nancy Cruz', '579 Acacia Drive, Pasig City', '0917-555-0121', 'nancy.cruz@email.com', 'MTR-021', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(22, 'EC-2024-0022', 'Cruz Steel Works', '802 Foundry Road, Caloocan City', '0917-555-0122', 'contact@cruzsteelworks.com', 'MTR-022', 'industrial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(23, 'EC-2024-0023', 'Daniel Aquino', '913 Narra Lane, Antipolo City', '0917-555-0123', 'daniel.aquino@email.com', 'MTR-023', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(24, 'EC-2024-0024', 'Aquino Restaurant Group', '246 Dining Street, Quezon City', '0917-555-0124', 'info@aquinorestaurant.com', 'MTR-024', 'commercial', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(25, 'EC-2024-0025', 'Karen Villanueva', '357 Magnolia Road, Parañaque City', '0917-555-0125', 'karen.villanueva@email.com', 'MTR-025', 'residential', 'active', '2025-10-21 17:01:51', '2025-10-21 17:01:51'),
(26, '999999', 'Sample Lang', 'asdasd', '09123456789', 'asdasd@gmail.com', '32', 'residential', 'active', '2026-10-06 20:51:29', '2026-10-06 20:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2026-10-05-000001', 'App\\Database\\Migrations\\CreateCustomersTable', 'default', 'App', 1791205780, 1),
(2, '2026-10-05-000002', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1791206533, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('customer','admin') DEFAULT 'customer',
  `is_active` tinyint(1) DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `state`, `zip_code`, `password`, `user_type`, `is_active`, `email_verified`, `created_at`, `updated_at`) VALUES
(1, 'Rex', 'Lapis', 'RexLapis@gmail.com', '(091) 234-56789', 'Liyue Harbor', 'Liyue', 'FL', '12344', '$2y$10$GZ8CuRSgEBlCkKqzA6AfKuPLIDRfiq9n2RZ0hioOOsnja1WsxqO0K', 'customer', 1, 0, '2026-09-28 12:18:17', '2026-09-28 12:18:17'),
(2, 'zhongliiiiiii', 'nkqj', 'jbnuqui@fit.edu.ph', '(091) 234-56789', '123sdfwefw3r324', 'qweq', 'AK', '12345', '$2y$10$3xvSFohmX/s76/v86mDJU.wN9/RYB9QKcM.tJPrbOHomfKQGTRXse', 'customer', 1, 0, '2026-10-06 22:55:45', '2026-10-06 22:55:45'),
(3, 'Elinah', 'DSTalas', 'hannah@fit.edu.ph', '(091) 941-60974', 'Liyue Harbor', 'Liyue', 'AL', '12344', '$2y$10$28lFZDvZoGLsmQf9zmzTS.9HBkoBqJjppVnp8pZNp5Nq1TtmdSakK', 'customer', 1, 0, '2026-10-07 04:48:35', '2026-10-07 04:48:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`);

--
-- Indexes for table `customer_accounts`
--
ALTER TABLE `customer_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_account_number` (`account_number`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_connection_type` (`connection_type`),
  ADD KEY `idx_customer_name` (`customer_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_accounts`
--
ALTER TABLE `customer_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
