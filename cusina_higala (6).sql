-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2026 at 04:10 AM
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
-- Database: `cusina_higala`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `entity` varchar(60) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `action`, `entity`, `entity_id`, `ip_address`, `created_at`) VALUES
(1, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 02:46:07'),
(2, 1, 'Logged in', 'users', 1, '::1', '2026-02-24 02:50:08'),
(3, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 02:50:42'),
(4, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 02:57:22'),
(5, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 03:03:35'),
(6, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 03:09:27'),
(7, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 21:30:38'),
(8, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 21:36:16'),
(9, 5, 'Created reservation for 2026-02-24 7:00 PM at table T1', 'reservations', 1, '::1', '2026-02-24 21:36:32'),
(10, 5, 'Placed order #1 via GCash', 'orders', 1, '::1', '2026-02-24 21:37:04'),
(11, 5, 'Created reservation for 2026-02-24 7:00 PM at table T5', 'reservations', 2, '::1', '2026-02-24 21:37:32'),
(12, 5, 'Cancelled reservation', 'reservations', 1, '::1', '2026-02-24 21:38:35'),
(13, 5, 'Cancelled reservation', 'reservations', 2, '::1', '2026-02-24 21:38:36'),
(14, 5, 'Created reservation for 2026-02-24 7:00 PM at table T2', 'reservations', 3, '::1', '2026-02-24 21:39:28'),
(15, 5, 'Cancelled reservation', 'reservations', 3, '::1', '2026-02-24 21:45:37'),
(16, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 21:52:02'),
(17, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 21:52:43'),
(18, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 21:52:48'),
(19, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 21:53:38'),
(20, 5, 'Created reservation for 2026-02-24 7:00 PM at table T1', 'reservations', 4, '::1', '2026-02-24 21:57:36'),
(21, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 21:58:24'),
(22, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:00:15'),
(23, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 22:00:20'),
(24, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:00:36'),
(25, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 22:02:06'),
(26, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:02:15'),
(27, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:03:13'),
(28, 5, 'Created reservation for 2026-02-24 7:00 PM at table T2', 'reservations', 5, '::1', '2026-02-24 22:05:48'),
(29, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 22:06:56'),
(30, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:08:18'),
(31, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:13:41'),
(32, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:16:10'),
(33, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 6, '::1', '2026-02-24 22:16:35'),
(34, 5, 'Cancelled reservation', 'reservations', 4, '::1', '2026-02-24 22:16:49'),
(35, 5, 'Created reservation for 2026-02-24 7:00 PM at table T1', 'reservations', 7, '::1', '2026-02-24 22:16:56'),
(36, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:22:15'),
(37, 3, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-02-24 22:22:29'),
(38, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:28:41'),
(39, 3, 'Payment verified for order #1', 'orders', 1, '::1', '2026-02-24 22:30:38'),
(40, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:31:06'),
(41, 5, 'Logged out', NULL, NULL, '::1', '2026-02-24 22:31:59'),
(42, 1, 'Logged in', 'users', 1, '::1', '2026-02-24 22:32:21'),
(43, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 22:37:26'),
(44, 3, 'Logged in', 'users', 3, '::1', '2026-02-24 22:40:56'),
(45, 3, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-02-24 22:50:42'),
(46, 3, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-02-24 22:50:44'),
(47, 3, 'Table #3 set to cleaning', 'restaurant_tables', 3, '::1', '2026-02-24 22:50:48'),
(48, 3, 'Created reservation for 2026-02-24 7:00 PM at table T3', 'reservations', 8, '::1', '2026-02-24 22:51:05'),
(49, 3, 'Table #7 set to available', 'restaurant_tables', 7, '::1', '2026-02-24 22:51:31'),
(50, 3, 'Table #10 set to available', 'restaurant_tables', 10, '::1', '2026-02-24 22:51:34'),
(51, 3, 'Cancelled reservation', 'reservations', 8, '::1', '2026-02-24 22:52:24'),
(52, 3, 'Created reservation for 2026-02-24 7:00 PM at table T3', 'reservations', 9, '::1', '2026-02-24 22:54:22'),
(53, 3, 'Cancelled reservation', 'reservations', 9, '::1', '2026-02-24 22:54:35'),
(54, 3, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-02-24 22:59:11'),
(55, 3, 'Table #5 set to available', 'restaurant_tables', 5, '::1', '2026-02-24 22:59:15'),
(56, 3, 'Table #3 set to cleaning', 'restaurant_tables', 3, '::1', '2026-02-24 22:59:43'),
(57, 3, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-02-24 23:00:32'),
(58, 3, 'Created reservation for 2026-02-25 7:00 PM at table T3', 'reservations', 10, '::1', '2026-02-24 23:01:01'),
(59, 3, 'Order #1 set to Ready', 'orders', 1, '::1', '2026-02-24 23:01:16'),
(60, 3, 'Order #1 set to Ready', 'orders', 1, '::1', '2026-02-24 23:01:21'),
(61, 3, 'Order #1 set to Ready', 'orders', 1, '::1', '2026-02-24 23:01:27'),
(62, 3, 'Placed order #2 via GCash', 'orders', 2, '::1', '2026-02-24 23:01:54'),
(63, 3, 'Payment verified for order #2', 'orders', 2, '::1', '2026-02-24 23:02:14'),
(64, 3, 'Order #2 set to Preparing', 'orders', 2, '::1', '2026-02-24 23:02:19'),
(65, 3, 'Order #2 set to Ready', 'orders', 2, '::1', '2026-02-24 23:02:32'),
(66, 3, 'Order #2 set to Served', 'orders', 2, '::1', '2026-02-24 23:02:40'),
(67, 3, 'Order #1 set to Served', 'orders', 1, '::1', '2026-02-24 23:03:37'),
(68, 3, 'Created reservation for 2026-02-24 7:00 PM at table T5', 'reservations', 11, '::1', '2026-02-24 23:22:36'),
(69, 3, 'Reservation #11 updated to Approved', 'reservations', 11, '::1', '2026-02-24 23:23:16'),
(70, 3, 'Reservation #11 updated to Check-in', 'reservations', 11, '::1', '2026-02-24 23:24:28'),
(71, 3, 'Logged out', NULL, NULL, '::1', '2026-02-24 23:24:49'),
(72, NULL, 'Logged out', NULL, NULL, '::1', '2026-02-24 23:25:05'),
(73, 1, 'Logged in', 'users', 1, '::1', '2026-02-24 23:25:36'),
(74, 1, 'Logged in', 'users', 1, '::1', '2026-02-24 23:36:40'),
(75, 5, 'Logged in', 'users', 5, '::1', '2026-02-24 23:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(500) NOT NULL DEFAULT '',
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `description`, `entity`, `entity_id`, `ip_address`, `created_at`) VALUES
(1, 1, 'Logged out', NULL, NULL, '::1', '2026-02-25 00:50:58'),
(2, 3, 'Logged in', 'users', 3, '::1', '2026-02-25 00:51:16'),
(3, 3, 'Logged out', NULL, NULL, '::1', '2026-02-25 00:52:28'),
(4, 5, 'Logged in', 'users', 5, '::1', '2026-02-25 23:10:45'),
(5, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 18, '::1', '2026-02-25 23:10:51'),
(6, 5, 'Cancelled reservation', 'reservations', 18, '::1', '2026-02-25 23:10:59'),
(7, 5, 'Cancelled reservation', 'reservations', 17, '::1', '2026-02-25 23:11:01'),
(8, 5, 'Logged out', NULL, NULL, '::1', '2026-02-25 23:11:09'),
(9, 1, 'Logged in', 'users', 1, '::1', '2026-02-25 23:11:18'),
(10, 1, 'Logged out', NULL, NULL, '::1', '2026-02-25 23:51:07'),
(11, 3, 'Logged in', 'users', 3, '::1', '2026-02-25 23:51:20'),
(12, 3, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-02-26 00:28:04'),
(13, 3, 'Reservation #15 updated to Approved', 'reservations', 15, '::1', '2026-02-26 00:28:13'),
(14, 3, 'Reservation #15 updated to Check-in', 'reservations', 15, '::1', '2026-02-26 00:28:15'),
(15, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:28:58'),
(16, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 00:29:12'),
(17, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 19, '::1', '2026-02-26 00:29:24'),
(18, 5, 'Placed order #7 via GCash', 'orders', 7, '::1', '2026-02-26 00:29:39'),
(19, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:29:45'),
(20, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 00:31:01'),
(21, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 00:32:14'),
(22, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 00:33:02'),
(23, 5, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 20, '::1', '2026-02-26 00:33:13'),
(24, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:34:01'),
(25, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 00:34:38'),
(26, 8, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 21, '::1', '2026-02-26 00:34:52'),
(27, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:36:08'),
(28, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 00:36:27'),
(29, 5, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 22, '::1', '2026-02-26 00:36:36'),
(30, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:36:52'),
(31, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 00:37:02'),
(32, 8, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 23, '::1', '2026-02-26 00:37:13'),
(33, 8, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 24, '::1', '2026-02-26 00:46:55'),
(34, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:46:59'),
(35, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 00:47:16'),
(36, 5, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 25, '::1', '2026-02-26 00:47:25'),
(37, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 00:47:32'),
(38, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 00:47:48'),
(39, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 01:11:37'),
(40, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 01:11:50'),
(41, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 26, '::1', '2026-02-26 01:11:55'),
(42, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 01:11:58'),
(43, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 01:12:06'),
(44, 8, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 27, '::1', '2026-02-26 01:12:10'),
(45, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 01:12:36'),
(46, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 01:31:31'),
(47, 5, 'Created reservation for 2026-02-25 5:00 PM at table T1', 'reservations', 28, '::1', '2026-02-26 01:31:43'),
(48, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 01:31:47'),
(49, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 01:31:59'),
(50, 8, 'Cancelled reservation', 'reservations', 27, '::1', '2026-02-26 01:32:23'),
(51, 8, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 29, '::1', '2026-02-26 01:32:26'),
(52, 8, 'Created reservation for 2026-02-25 1:00 PM at table T1', 'reservations', 30, '::1', '2026-02-26 01:32:39'),
(53, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 01:48:42'),
(54, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 01:48:53'),
(55, 5, 'Placed order #8 via GCash', 'orders', 8, '::1', '2026-02-26 02:16:03'),
(56, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 02:16:19'),
(57, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 02:16:45'),
(58, 3, 'Payment verified for order #8', 'orders', 8, '::1', '2026-02-26 02:16:56'),
(59, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 02:17:02'),
(60, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 02:17:14'),
(61, 5, 'Placed order #9 via Credit Card', 'orders', 9, '::1', '2026-02-26 02:17:36'),
(62, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 31, '::1', '2026-02-26 02:18:18'),
(63, 5, 'Created reservation for 2026-02-25 12:00 PM at table T2', 'reservations', 32, '::1', '2026-02-26 02:18:26'),
(64, 5, 'Created reservation for 2026-02-25 7:00 PM at table T1', 'reservations', 33, '::1', '2026-02-26 02:32:24'),
(65, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 02:33:34'),
(66, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 02:33:48'),
(67, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 12:21:52'),
(68, 5, 'Created reservation for 2026-02-26 7:00 PM at table T1', 'reservations', 34, '::1', '2026-02-26 12:25:45'),
(69, 5, 'Placed order #10 via GCash', 'orders', 10, '::1', '2026-02-26 12:26:03'),
(70, 5, 'Created reservation for 2026-02-26 12:00 PM at table T1', 'reservations', 35, '::1', '2026-02-26 12:28:58'),
(71, 5, 'Cancelled reservation', 'reservations', 35, '::1', '2026-02-26 12:29:04'),
(72, 5, 'Cancelled reservation', 'reservations', 34, '::1', '2026-02-26 12:29:06'),
(73, 5, 'Placed order #11 via Credit Card', 'orders', 11, '::1', '2026-02-26 12:38:57'),
(74, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 12:39:42'),
(75, 5, 'Placed order #12 via GCash', 'orders', 12, '::1', '2026-02-26 12:40:05'),
(76, 5, 'Placed order #13 via GCash', 'orders', 13, '::1', '2026-02-26 12:40:18'),
(77, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 12:43:42'),
(78, 5, 'Placed order #14 via GCash', 'orders', 14, '::1', '2026-02-26 13:14:11'),
(79, 5, 'Placed order #15 via GCash', 'orders', 15, '::1', '2026-02-26 13:14:17'),
(80, 5, 'Placed order #16 via Credit Card', 'orders', 16, '::1', '2026-02-26 13:20:55'),
(81, 5, 'Placed order #17 via GCash', 'orders', 17, '::1', '2026-02-26 13:23:08'),
(82, 5, 'Placed order #18 via Credit Card', 'orders', 18, '::1', '2026-02-26 13:23:57'),
(83, 5, 'Placed order #19 via GCash', 'orders', 19, '::1', '2026-02-26 13:24:45'),
(84, 5, 'Placed order #20 via GCash', 'orders', 20, '::1', '2026-02-26 13:25:44'),
(85, 5, 'Created reservation for 2026-02-26 7:00 PM at table T1', 'reservations', 36, '::1', '2026-02-26 13:27:08'),
(86, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 13:27:42'),
(87, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 13:27:53'),
(88, 8, 'Placed order #21 via GCash', 'orders', 21, '::1', '2026-02-26 13:28:33'),
(89, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 19:33:28'),
(90, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 19:43:26'),
(91, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 19:43:36'),
(92, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 19:45:01'),
(93, 5, 'Cancelled reservation', 'reservations', 36, '::1', '2026-02-26 19:45:10'),
(94, 5, 'Created reservation for 2026-02-26 12:00 PM at table T1', 'reservations', 37, '::1', '2026-02-26 19:45:39'),
(95, 5, 'Created reservation for 2026-02-26 12:00 PM at table T1', 'reservations', 38, '::1', '2026-02-26 19:46:16'),
(96, 5, 'Created reservation for 2026-02-26 1:00 PM at table T1', 'reservations', 39, '::1', '2026-02-26 19:46:40'),
(97, 5, 'Placed order #22 via Credit Card', 'orders', 22, '::1', '2026-02-26 19:46:47'),
(98, 5, 'Created reservation for 2026-02-26 12:00 PM at table T1', 'reservations', 40, '::1', '2026-02-26 19:47:07'),
(99, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 19:47:10'),
(100, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 19:47:34'),
(101, 5, 'Created reservation for 2026-02-26 1:00 PM at table T1', 'reservations', 41, '::1', '2026-02-26 19:47:46'),
(102, 5, 'Created reservation for 2026-02-26 5:00 PM at table T1', 'reservations', 42, '::1', '2026-02-26 19:48:00'),
(103, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 19:48:30'),
(104, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 19:49:00'),
(105, 8, 'Created reservation for 2026-02-26 11:00 AM at table T1', 'reservations', 43, '::1', '2026-02-26 19:49:13'),
(106, 1, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:00:37'),
(107, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 20:00:50'),
(108, 8, 'Reservation #44 created', 'reservations', 44, '::1', '2026-02-26 20:01:42'),
(109, 8, 'Placed order #23 via GCash', 'orders', 23, '::1', '2026-02-26 20:02:20'),
(110, 8, 'Reservation #45 created', 'reservations', 45, '::1', '2026-02-26 20:03:47'),
(111, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:08:05'),
(112, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 20:08:14'),
(113, 5, 'Reservation #46 created', 'reservations', 46, '::1', '2026-02-26 20:08:30'),
(114, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:10:04'),
(115, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 20:10:16'),
(116, 1, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:17:57'),
(117, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 20:18:07'),
(118, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:18:35'),
(119, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 20:18:48'),
(120, 5, 'Reservation #47 created', 'reservations', 47, '::1', '2026-02-26 20:19:20'),
(121, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 20:20:00'),
(122, 5, 'Reservation #48 created', 'reservations', 48, '::1', '2026-02-26 20:20:29'),
(123, 5, 'Reservation #49 created', 'reservations', 49, '::1', '2026-02-26 20:20:58'),
(124, 5, 'Reservation #50 created', 'reservations', 50, '::1', '2026-02-26 20:21:55'),
(125, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:24:01'),
(126, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 20:24:36'),
(127, 8, 'Reservation #51 created', 'reservations', 51, '::1', '2026-02-26 20:24:49'),
(128, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:30:58'),
(129, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 20:31:15'),
(130, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:32:31'),
(131, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 20:32:43'),
(132, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:33:16'),
(133, NULL, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:33:22'),
(134, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 20:33:34'),
(135, 1, 'Logged out', NULL, NULL, '::1', '2026-02-26 20:38:07'),
(136, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 20:38:26'),
(137, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 20:46:58'),
(138, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:32:27'),
(139, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 21:32:36'),
(140, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 21:33:51'),
(141, 5, 'Reservation #52 created', 'reservations', 52, '::1', '2026-02-26 21:34:11'),
(142, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:34:29'),
(143, 1, 'Logged in', 'users', 1, '::1', '2026-02-26 21:34:58'),
(144, 1, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:36:09'),
(145, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 21:36:36'),
(146, 8, 'Reservation #53 created', 'reservations', 53, '::1', '2026-02-26 21:38:49'),
(147, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:38:52'),
(148, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 21:39:06'),
(149, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:39:12'),
(150, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 21:39:24'),
(151, 5, 'Reservation #54 created', 'reservations', 54, '::1', '2026-02-26 21:39:31'),
(152, 5, 'Reservation #55 created', 'reservations', 55, '::1', '2026-02-26 21:39:42'),
(153, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:39:46'),
(154, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 21:39:57'),
(155, 8, 'Reservation #56 created', 'reservations', 56, '::1', '2026-02-26 21:40:03'),
(156, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:40:22'),
(157, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 21:40:39'),
(158, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:42:03'),
(159, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 21:42:16'),
(160, 5, 'Reservation #57 created', 'reservations', 57, '::1', '2026-02-26 21:42:22'),
(161, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:42:30'),
(162, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 21:42:39'),
(163, 8, 'Reservation #58 created', 'reservations', 58, '::1', '2026-02-26 21:42:45'),
(164, 8, 'Created reservation for 2026-02-26 7:00 PM at table T1', 'reservations', 59, '::1', '2026-02-26 21:45:55'),
(165, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:45:58'),
(166, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 21:46:14'),
(167, 5, 'Created reservation for 2026-02-26 7:00 PM at table T1', 'reservations', 60, '::1', '2026-02-26 21:46:20'),
(168, 5, 'Created reservation for 2026-02-26 11:00 AM at table T1', 'reservations', 61, '::1', '2026-02-26 21:46:28'),
(169, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:46:33'),
(170, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 21:46:42'),
(171, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:58:45'),
(172, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 21:58:59'),
(173, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:59:04'),
(174, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 21:59:23'),
(175, 8, 'Reservation #62 created', 'reservations', 62, '::1', '2026-02-26 21:59:31'),
(176, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:59:35'),
(177, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 21:59:48'),
(178, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 21:59:57'),
(179, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 22:00:07'),
(180, 8, 'Reservation #63 created', 'reservations', 63, '::1', '2026-02-26 22:09:07'),
(181, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:09:10'),
(182, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:09:21'),
(183, 5, 'Reservation #64 created', 'reservations', 64, '::1', '2026-02-26 22:09:28'),
(184, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:09:38'),
(185, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 22:09:57'),
(186, 8, 'Reservation #65 created', 'reservations', 65, '::1', '2026-02-26 22:10:04'),
(187, 8, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:10:12'),
(188, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:10:22'),
(189, 5, 'Reservation #66 created', 'reservations', 66, '::1', '2026-02-26 22:10:27'),
(190, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:12:12'),
(191, 3, 'Logged in', 'users', 3, '::1', '2026-02-26 22:12:24'),
(192, 3, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:13:54'),
(193, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:14:07'),
(194, 5, 'Placed order #24 via GCash', 'orders', 24, '::1', '2026-02-26 22:14:16'),
(195, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:15:10'),
(196, 5, 'Reservation #67 created', 'reservations', 67, '::1', '2026-02-26 22:15:17'),
(197, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:15:22'),
(198, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 22:15:31'),
(199, 8, 'Reservation #68 created', 'reservations', 68, '::1', '2026-02-26 22:15:37'),
(200, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:20:48'),
(201, 8, 'Reservation #69 created', 'reservations', 69, '::1', '2026-02-26 22:20:55'),
(202, 5, 'Reservation #70 created', 'reservations', 70, '::1', '2026-02-26 22:21:17'),
(203, 8, 'Reservation #71 created', 'reservations', 71, '::1', '2026-02-26 22:21:32'),
(204, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 22:25:09'),
(205, 5, 'Reservation #72 created', 'reservations', 72, '::1', '2026-02-26 22:25:13'),
(206, 5, 'Logged out', NULL, NULL, '::1', '2026-02-26 22:25:51'),
(207, 8, 'Logged in', 'users', 8, '::1', '2026-02-26 22:26:00'),
(208, 8, 'Reservation #73 created', 'reservations', 73, '::1', '2026-02-26 22:26:05'),
(209, 8, 'Reservation #74 created', 'reservations', 74, '::1', '2026-02-26 22:26:20'),
(210, 5, 'Reservation #75 created', 'reservations', 75, '::1', '2026-02-26 22:26:40'),
(211, 8, 'Reservation #76 created', 'reservations', 76, '::1', '2026-02-26 22:27:09'),
(212, 8, 'Reservation #77 created', 'reservations', 77, '::1', '2026-02-26 22:27:27'),
(213, 5, 'Reservation #78 created', 'reservations', 78, '::1', '2026-02-26 22:27:41'),
(214, 5, 'Reservation #79 created', 'reservations', 79, '::1', '2026-02-26 23:12:49'),
(215, 8, 'Reservation #80 created', 'reservations', 80, '::1', '2026-02-26 23:12:58'),
(216, 5, 'Reservation #81 created', 'reservations', 81, '::1', '2026-02-26 23:13:29'),
(217, 8, 'Reservation #82 created', 'reservations', 82, '::1', '2026-02-26 23:14:05'),
(218, 5, 'Reservation #83 created', 'reservations', 83, '::1', '2026-02-26 23:14:31'),
(219, 8, 'Reservation #84 created', 'reservations', 84, '::1', '2026-02-26 23:15:03'),
(220, 8, 'Reservation #85 created', 'reservations', 85, '::1', '2026-02-26 23:15:11'),
(221, 8, 'Reservation #86 created', 'reservations', 86, '::1', '2026-02-26 23:16:13'),
(222, 8, 'Reservation #87 created', 'reservations', 87, '::1', '2026-02-26 23:28:03'),
(223, 8, 'Reservation #88 created', 'reservations', 88, '::1', '2026-02-26 23:28:10'),
(224, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 23:35:21'),
(225, 5, 'Reservation #89 created', 'reservations', 89, '::1', '2026-02-26 23:35:33'),
(226, 5, 'Reservation #90 created', 'reservations', 90, '::1', '2026-02-26 23:35:46'),
(227, 5, 'Reservation #91 created', 'reservations', 91, '::1', '2026-02-26 23:36:02'),
(228, 5, 'Reservation #92 created', 'reservations', 92, '::1', '2026-02-26 23:36:13'),
(229, 5, 'Reservation #93 created', 'reservations', 93, '::1', '2026-02-26 23:36:38'),
(230, 5, 'Logged in', 'users', 5, '::1', '2026-02-26 23:58:32'),
(231, 5, 'Reservation #94 created', 'reservations', 94, '::1', '2026-02-26 23:58:57'),
(232, 5, 'Reservation #95 created', 'reservations', 95, '::1', '2026-02-26 23:59:12'),
(233, 5, 'Logged in', 'users', 5, '::1', '2026-02-27 00:16:15'),
(234, 5, 'Reservation #96 created', 'reservations', 96, '::1', '2026-02-27 00:16:28'),
(235, 5, 'Reservation #97 created', 'reservations', 97, '::1', '2026-02-27 00:16:35'),
(236, 5, 'Reservation #98 created', 'reservations', 98, '::1', '2026-02-27 00:16:57'),
(237, 5, 'Reservation #99 created', 'reservations', 99, '::1', '2026-02-27 00:17:03'),
(238, 5, 'Reservation #100 created', 'reservations', 100, '::1', '2026-02-27 00:17:14'),
(239, 5, 'Placed order #25 via PayPal', 'orders', 25, '::1', '2026-02-27 00:17:46'),
(240, 5, 'Logged in', 'users', 5, '::1', '2026-02-27 00:40:02'),
(241, 5, 'Placed order #26 via GCash', 'orders', 26, '::1', '2026-02-27 00:40:58'),
(242, 5, 'Logged out', NULL, NULL, '::1', '2026-02-27 00:44:29'),
(243, NULL, 'Registered new account: Jhay Paul Camannong Yamson', 'users', 9, '::1', '2026-02-27 00:45:43'),
(244, 9, 'Logged in', 'users', 9, '::1', '2026-02-27 00:45:49'),
(245, 9, 'Reservation #101 created', 'reservations', 101, '::1', '2026-02-27 00:46:00'),
(246, 9, 'Reservation #102 created', 'reservations', 102, '::1', '2026-02-27 00:46:17'),
(247, 9, 'Logged in', 'users', 9, '::1', '2026-02-27 00:52:57'),
(248, 9, 'Reservation #103 created', 'reservations', 103, '::1', '2026-02-27 00:53:20'),
(249, 9, 'Logged in', 'users', 9, '::1', '2026-02-27 19:06:27'),
(250, 9, 'Auto-cancelled 2 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-02-27 19:06:28'),
(251, 1, 'Logged in', 'users', 1, '::1', '2026-02-27 22:18:20'),
(252, 1, 'Logged out', NULL, NULL, '::1', '2026-02-27 22:18:50'),
(253, 9, 'Logged in', 'users', 9, '::1', '2026-02-27 22:19:03'),
(254, 9, 'Reservation #104 created', 'reservations', 104, '::1', '2026-02-27 22:19:23'),
(255, 9, 'Logged out', NULL, NULL, '::1', '2026-02-27 22:19:39'),
(256, 1, 'Logged in', 'users', 1, '::1', '2026-02-27 22:19:47'),
(257, 1, 'Logged out', NULL, NULL, '::1', '2026-02-27 22:22:30'),
(258, 3, 'Logged in', 'users', 3, '::1', '2026-02-27 22:22:40'),
(259, 3, 'Logged out', NULL, NULL, '::1', '2026-02-27 22:28:06'),
(260, 1, 'Logged in', 'users', 1, '::1', '2026-02-27 22:28:17'),
(261, 1, 'Reservation #101 updated to Approved', 'reservations', 101, '::1', '2026-02-27 22:32:27'),
(262, 1, 'Reservation #97 updated to Approved', 'reservations', 97, '::1', '2026-02-27 22:32:31'),
(263, 1, 'Reservation #98 updated to Approved', 'reservations', 98, '::1', '2026-02-27 22:32:34'),
(264, 1, 'Reservation #103 updated to Approved', 'reservations', 103, '::1', '2026-02-27 22:32:36'),
(265, 1, 'Reservation #104 updated to Cancelled', 'reservations', 104, '::1', '2026-02-27 22:32:46'),
(266, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 00:39:05'),
(267, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 00:41:16'),
(268, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 00:49:44'),
(269, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 00:50:54'),
(270, 1, 'Table #11 set to maintenance', 'restaurant_tables', 11, '::1', '2026-03-01 01:34:07'),
(271, 1, 'Table #11 set to maintenance', 'restaurant_tables', 11, '::1', '2026-03-01 01:34:09'),
(272, 1, 'Table #12 set to maintenance', 'restaurant_tables', 12, '::1', '2026-03-01 01:34:11'),
(273, 1, 'Table #12 set to maintenance', 'restaurant_tables', 12, '::1', '2026-03-01 01:34:15'),
(274, 1, 'Table #12 set to maintenance', 'restaurant_tables', 12, '::1', '2026-03-01 01:34:29'),
(275, 1, 'Table #12 set to maintenance', 'restaurant_tables', 12, '::1', '2026-03-01 01:35:32'),
(276, 1, 'Table #4 set to maintenance', 'restaurant_tables', 4, '::1', '2026-03-01 01:47:20'),
(277, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:35'),
(278, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:39'),
(279, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:40'),
(280, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:42'),
(281, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:43'),
(282, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:47:44'),
(283, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 01:55:50'),
(284, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 01:55:53'),
(285, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 02:04:26'),
(286, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 02:04:28'),
(287, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 02:04:35'),
(288, 3, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 02:04:45'),
(289, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 02:04:50'),
(290, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 02:05:01'),
(291, 5, 'Auto-cancelled 4 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-01 02:05:02'),
(292, 5, 'Reservation #105 created', 'reservations', 105, '::1', '2026-03-01 02:05:23'),
(293, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 02:06:42'),
(294, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 02:06:53'),
(295, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 02:07:06'),
(296, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 02:07:10'),
(297, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 18:28:10'),
(298, 8, 'Logged in', 'users', 8, '::1', '2026-03-01 18:28:18'),
(299, 8, 'Auto-cancelled 1 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-01 18:28:19'),
(300, 8, 'Reservation #106 created', 'reservations', 106, '::1', '2026-03-01 18:28:25'),
(301, 8, 'Reservation #107 created', 'reservations', 107, '::1', '2026-03-01 18:52:49'),
(302, 8, 'Logged out', NULL, NULL, '::1', '2026-03-01 18:52:54'),
(303, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 18:53:11'),
(304, 3, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 18:53:25'),
(305, 3, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 19:18:18'),
(306, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:18:21'),
(307, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 19:18:43'),
(308, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:19:00'),
(309, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 19:19:12'),
(310, 3, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 19:19:17'),
(311, 3, 'Table #11 set to available', 'restaurant_tables', 11, '::1', '2026-03-01 19:19:24'),
(312, 3, 'Table #12 set to available', 'restaurant_tables', 12, '::1', '2026-03-01 19:19:26'),
(313, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:19:29'),
(314, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 19:19:39'),
(315, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 19:19:52'),
(316, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:19:54'),
(317, 8, 'Logged in', 'users', 8, '::1', '2026-03-01 19:20:07'),
(318, 8, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:20:20'),
(319, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 19:20:26'),
(320, 1, 'Admin added table: T13 (4 seats, Window)', 'restaurant_tables', 13, '::1', '2026-03-01 19:41:31'),
(321, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:41:39'),
(322, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 19:41:55'),
(323, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:42:01'),
(324, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 19:42:22'),
(325, 5, 'Auto-cancelled 1 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-01 19:42:23'),
(326, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:42:37'),
(327, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 19:42:47'),
(328, 3, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 19:42:54'),
(329, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 19:50:26'),
(330, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:50:35'),
(331, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 19:50:45'),
(332, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:50:51'),
(333, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 19:51:04'),
(334, 5, 'Placed order #27 via PayMaya', 'orders', 27, '::1', '2026-03-01 19:52:04'),
(335, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 19:52:19'),
(336, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 23:08:50'),
(337, 5, 'Reservation #108 created', 'reservations', 108, '::1', '2026-03-01 23:12:36'),
(338, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:12:43'),
(339, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:12:57'),
(340, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:17:38'),
(341, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:17:45'),
(342, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 23:18:02'),
(343, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:18:13'),
(344, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:18:30'),
(345, 1, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-03-01 23:18:40'),
(346, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 23:18:42'),
(347, 1, 'Table #1 set to maintenance', 'restaurant_tables', 1, '::1', '2026-03-01 23:18:43'),
(348, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:18:47'),
(349, 8, 'Logged in', 'users', 8, '::1', '2026-03-01 23:19:01'),
(350, 8, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:19:32'),
(351, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:19:40'),
(352, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:20:06'),
(353, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:20:49'),
(354, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-01 23:21:12'),
(355, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:23:37'),
(356, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:23:42'),
(357, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:23:48'),
(358, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 23:24:00'),
(359, 5, 'Reservation #109 created', 'reservations', 109, '::1', '2026-03-01 23:24:09'),
(360, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:24:16'),
(361, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:24:32'),
(362, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:25:20'),
(363, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:25:27'),
(364, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:27:52'),
(365, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 23:28:45'),
(366, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:32:35'),
(367, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:32:47'),
(368, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:33:50'),
(369, 5, 'Logged in', 'users', 5, '::1', '2026-03-01 23:34:05'),
(370, 5, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:39:52'),
(371, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:40:02'),
(372, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:40:07'),
(373, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:40:35'),
(374, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:57:23'),
(375, 3, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:58:04'),
(376, 1, 'Logged in', 'users', 1, '::1', '2026-03-01 23:58:13'),
(377, 1, 'Admin added table: T14 (10 seats, Windows)', 'restaurant_tables', 14, '::1', '2026-03-01 23:58:51'),
(378, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-01 23:59:23'),
(379, 1, 'Logged out', NULL, NULL, '::1', '2026-03-01 23:59:26'),
(380, 3, 'Logged in', 'users', 3, '::1', '2026-03-01 23:59:43'),
(381, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:00:16'),
(382, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 00:00:33'),
(383, 1, 'Order #11 set to Preparing', 'orders', 11, '::1', '2026-03-02 00:01:19'),
(384, 1, 'Order #27 set to Preparing', 'orders', 27, '::1', '2026-03-02 00:01:20'),
(385, 1, 'Order #26 set to Preparing', 'orders', 26, '::1', '2026-03-02 00:01:21'),
(386, 1, 'Order #25 set to Preparing', 'orders', 25, '::1', '2026-03-02 00:01:22'),
(387, 1, 'Order #25 set to Preparing', 'orders', 25, '::1', '2026-03-02 00:01:22'),
(388, 1, 'Order #25 set to Preparing', 'orders', 25, '::1', '2026-03-02 00:01:22'),
(389, 1, 'Order #24 set to Preparing', 'orders', 24, '::1', '2026-03-02 00:01:22'),
(390, 1, 'Order #23 set to Preparing', 'orders', 23, '::1', '2026-03-02 00:01:22'),
(391, 1, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:06:08'),
(392, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:06:25'),
(393, 9, 'Logged in', 'users', 9, '::1', '2026-03-02 00:06:40'),
(394, 9, 'Reservation #110 created for 2026-03-02 19:00:00 at table T9', 'reservations', 110, '::1', '2026-03-02 00:07:08'),
(395, 9, 'Logged in', 'users', 9, '::1', '2026-03-02 00:08:29'),
(396, 9, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:08:37'),
(397, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:08:48'),
(398, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:08:59'),
(399, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 00:09:15'),
(400, 1, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:11:09'),
(401, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:11:20'),
(402, 3, 'Staff set table #14 to occupied', 'restaurant_tables', 14, '::1', '2026-03-02 00:11:36'),
(403, 3, 'Staff set table #14 to cleaning', 'restaurant_tables', 14, '::1', '2026-03-02 00:11:40'),
(404, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:15:49'),
(405, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:15:54'),
(406, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:17:27'),
(407, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:17:33'),
(408, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:18:09'),
(409, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 00:18:23'),
(410, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-02 00:18:29'),
(411, 1, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:19:21'),
(412, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 00:19:28'),
(413, 1, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:19:37'),
(414, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:19:44'),
(415, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:31:34'),
(416, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:31:41'),
(417, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:36:35'),
(418, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:37:36'),
(419, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:38:19'),
(420, 9, 'Logged in', 'users', 9, '::1', '2026-03-02 00:38:34'),
(421, 9, 'Reservation #111 created for 2026-03-02 19:00:00 at table T13', 'reservations', 111, '::1', '2026-03-02 00:38:51'),
(422, 9, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:39:17'),
(423, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 00:39:37'),
(424, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-02 00:40:06'),
(425, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-02 00:40:08'),
(426, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-02 00:40:09'),
(427, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-02 00:40:12'),
(428, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-02 00:40:14'),
(429, 1, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:40:27'),
(430, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:40:38'),
(431, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:50:34'),
(432, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:50:39'),
(433, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:50:57'),
(434, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:52:40'),
(435, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:52:45'),
(436, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:53:00'),
(437, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:56:37'),
(438, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 00:56:44'),
(439, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 00:59:57'),
(440, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 01:00:04'),
(441, 3, 'Staff updated reservation #110 to Cancelled', 'reservations', 110, '::1', '2026-03-02 01:01:00'),
(442, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:04:30'),
(443, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 01:04:35'),
(444, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:09:50'),
(445, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 01:09:55'),
(446, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:14:54'),
(447, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 01:15:00'),
(448, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:22:38'),
(449, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 01:22:44'),
(450, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:23:31'),
(451, 9, 'Logged in', 'users', 9, '::1', '2026-03-02 01:23:49'),
(452, 9, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:24:08'),
(453, 5, 'Logged in', 'users', 5, '::1', '2026-03-02 01:24:16'),
(454, 5, 'Reservation #112 created for 2026-03-02 21:00:00 at table T13', 'reservations', 112, '::1', '2026-03-02 01:24:38'),
(455, 5, 'Placed order #28 via GCash', 'orders', 28, '::1', '2026-03-02 01:25:09'),
(456, 5, 'Logged out', NULL, NULL, '::1', '2026-03-02 01:25:28'),
(457, 1, 'Logged in', 'users', 1, '::1', '2026-03-02 01:25:36'),
(458, 3, 'Logged in', 'users', 3, '::1', '2026-03-02 02:04:37'),
(459, 3, 'Logged out', NULL, NULL, '::1', '2026-03-02 02:04:51'),
(460, NULL, 'Registered new account: Amzi', 'users', 10, '::1', '2026-03-02 03:12:17'),
(461, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 01:34:33'),
(462, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 01:36:24'),
(463, 8, 'Logged in', 'users', 8, '::1', '2026-03-04 01:36:53'),
(464, 8, 'Auto-cancelled 5 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-04 01:36:55'),
(465, 8, 'Logged out', NULL, NULL, '::1', '2026-03-04 01:38:23'),
(466, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 01:38:52'),
(467, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 01:39:02'),
(468, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-04 01:47:24'),
(469, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 01:47:35'),
(470, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-04 01:47:43'),
(471, 1, 'Logged out', NULL, NULL, '::1', '2026-03-04 01:48:55'),
(472, 8, 'Logged in', 'users', 8, '::1', '2026-03-04 01:49:09'),
(473, 8, 'Logged out', NULL, NULL, '::1', '2026-03-04 01:51:42'),
(474, 8, 'Logged in', 'users', 8, '::1', '2026-03-04 01:52:25'),
(475, 8, 'Reservation #113 created for 2026-03-04 11:00:00 at table T1', 'reservations', 113, '::1', '2026-03-04 02:00:56'),
(476, 8, 'Cancelled reservation', 'reservations', 113, '::1', '2026-03-04 02:27:04'),
(477, 8, 'Reservation #114 created for 2026-03-04 19:00:00 at table T1', 'reservations', 114, '::1', '2026-03-04 02:27:10'),
(478, 8, 'Cancelled reservation', 'reservations', 114, '::1', '2026-03-04 02:27:24'),
(479, 8, 'Reservation #115 created for 2026-03-04 12:00:00 at table T1', 'reservations', 115, '::1', '2026-03-04 02:27:32'),
(480, 8, 'Cancelled reservation', 'reservations', 115, '::1', '2026-03-04 02:31:41'),
(481, 8, 'Reservation #116 created for 2026-03-04 12:00:00 at table T1', 'reservations', 116, '::1', '2026-03-04 02:31:50'),
(482, 8, 'Cancelled reservation', 'reservations', 116, '::1', '2026-03-04 02:35:21'),
(483, 8, 'Reservation #117 created for 2026-03-04 12:00:00 at table T1', 'reservations', 117, '::1', '2026-03-04 02:35:30'),
(484, 8, 'Logged out', NULL, NULL, '::1', '2026-03-04 02:36:00'),
(485, 5, 'Logged in', 'users', 5, '::1', '2026-03-04 02:36:10'),
(486, 5, 'Reservation #118 created for 2026-03-04 19:00:00 at table T1', 'reservations', 118, '::1', '2026-03-04 02:40:45'),
(487, 5, 'Cancelled reservation', 'reservations', 118, '::1', '2026-03-04 02:41:10'),
(488, 5, 'Logged out', NULL, NULL, '::1', '2026-03-04 02:41:14'),
(489, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 19:46:05'),
(490, 1, 'Table #13 set to maintenance', 'restaurant_tables', 13, '::1', '2026-03-04 20:01:03'),
(491, 1, 'Table #13 set to available', 'restaurant_tables', 13, '::1', '2026-03-04 20:01:07'),
(492, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 20:01:08'),
(493, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 20:13:15'),
(494, 1, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:16:43'),
(495, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 20:16:54'),
(496, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 20:17:51'),
(497, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-04 20:17:53'),
(498, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 20:17:57'),
(499, 1, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:19:06'),
(500, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:30:31'),
(501, NULL, 'Registered new account: Amzi', 'users', 11, '::1', '2026-03-04 20:31:20'),
(502, 11, 'Logged in', 'users', 11, '::1', '2026-03-04 20:31:28'),
(503, 11, 'Auto-cancelled 1 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-04 20:31:29'),
(504, 11, 'Reservation #119 created for 2026-03-05 19:00:00 at table T1', 'reservations', 119, '::1', '2026-03-04 20:31:38'),
(505, 11, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:31:46'),
(506, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 20:31:58'),
(507, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 20:40:15'),
(508, 3, 'Staff updated reservation #119 to Approved', 'reservations', 119, '::1', '2026-03-04 20:40:26'),
(509, 3, 'Staff updated reservation #119 to Cancelled', 'reservations', 119, '::1', '2026-03-04 20:44:39'),
(510, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:44:45'),
(511, 11, 'Logged in', 'users', 11, '::1', '2026-03-04 20:44:51'),
(512, 11, 'Reservation #120 created for 2026-03-05 19:00:00 at table T1', 'reservations', 120, '::1', '2026-03-04 20:45:01'),
(513, 11, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:45:05'),
(514, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 20:45:20'),
(515, 3, 'Staff updated reservation #120 to Approved', 'reservations', 120, '::1', '2026-03-04 20:45:28'),
(516, 3, 'Staff updated reservation #120 to Check-in', 'reservations', 120, '::1', '2026-03-04 20:45:56'),
(517, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:46:08'),
(518, NULL, 'Registered new account: Amzi', 'users', 12, '::1', '2026-03-04 20:46:52'),
(519, 12, 'Logged in', 'users', 12, '::1', '2026-03-04 20:46:58'),
(520, 12, 'Reservation #121 created for 2026-03-05 19:00:00 at table T1', 'reservations', 121, '::1', '2026-03-04 20:47:13'),
(521, 12, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:47:16'),
(522, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 20:47:24'),
(523, 3, 'Staff updated reservation #121 to Approved', 'reservations', 121, '::1', '2026-03-04 20:47:32'),
(524, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:49:20'),
(525, 12, 'Logged in', 'users', 12, '::1', '2026-03-04 20:50:06'),
(526, 12, 'Cancelled reservation', 'reservations', 121, '::1', '2026-03-04 20:50:11'),
(527, 12, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:50:23'),
(528, 12, 'Logged in', 'users', 12, '::1', '2026-03-04 20:50:25'),
(529, 12, 'Reservation #122 created for 2026-03-05 19:00:00 at table T1', 'reservations', 122, '::1', '2026-03-04 20:50:34'),
(530, 12, 'Logged out', NULL, NULL, '::1', '2026-03-04 20:50:36'),
(531, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 20:50:49'),
(532, 3, 'Staff updated reservation #122 to Approved', 'reservations', 122, '::1', '2026-03-04 20:50:57'),
(533, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 21:44:54'),
(534, 12, 'Logged in', 'users', 12, '::1', '2026-03-04 21:49:36'),
(535, 12, 'Logged out', NULL, NULL, '::1', '2026-03-04 21:49:40'),
(536, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 21:49:46'),
(537, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 21:57:37'),
(538, 12, 'Logged in', 'users', 12, '::1', '2026-03-04 21:57:50'),
(539, 12, 'Logged out', NULL, NULL, '::1', '2026-03-04 22:15:05'),
(540, 13, 'Registered new account: Amzi', 'users', 13, '::1', '2026-03-04 22:15:54'),
(541, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 22:15:59'),
(542, 13, 'Reservation #123 created for 2026-03-05 19:00:00 at table T1', 'reservations', 123, '::1', '2026-03-04 22:16:15'),
(543, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 22:16:51'),
(544, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 22:16:59'),
(545, 3, 'Staff updated reservation #123 to Approved', 'reservations', 123, '::1', '2026-03-04 22:17:10'),
(546, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 22:27:28'),
(547, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 22:27:41'),
(548, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 22:27:49'),
(549, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 22:27:58'),
(550, 14, 'Registered new account: Amzi', 'users', 14, '::1', '2026-03-04 22:46:05'),
(551, 15, 'Registered new account: amzi123', 'users', 15, '::1', '2026-03-04 22:49:23'),
(552, 15, 'Logged in', 'users', 15, '::1', '2026-03-04 22:49:33'),
(553, 15, 'Reservation #124 created for 2026-03-05 12:00:00 at table T1', 'reservations', 124, '::1', '2026-03-04 22:49:48'),
(554, 15, 'Logged out', NULL, NULL, '::1', '2026-03-04 22:50:00'),
(555, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 22:50:14'),
(556, 3, 'Staff updated reservation #124 to Approved', 'reservations', 124, '::1', '2026-03-04 22:50:30'),
(557, 3, 'Staff updated reservation #124 to Cancelled', 'reservations', 124, '::1', '2026-03-04 23:00:10'),
(558, 3, 'Staff updated reservation #123 to Cancelled', 'reservations', 123, '::1', '2026-03-04 23:00:14'),
(559, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:00:18'),
(560, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 23:00:25'),
(561, 13, 'Reservation #125 created for 2026-03-05 19:00:00 at table T1', 'reservations', 125, '::1', '2026-03-04 23:00:33'),
(562, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:00:36'),
(563, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:00:50'),
(564, 3, 'Staff updated reservation #125 to Approved', 'reservations', 125, '::1', '2026-03-04 23:00:57'),
(565, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:15:12'),
(566, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 23:15:24'),
(567, 13, 'Placed order #29 via GCash', 'orders', 29, '::1', '2026-03-04 23:15:33'),
(568, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:15:38'),
(569, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:15:43'),
(570, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:16:24'),
(571, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 23:16:37'),
(572, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:16:58'),
(573, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:17:04'),
(574, 3, 'Staff verified payment for order #29', 'orders', 29, '::1', '2026-03-04 23:17:18'),
(575, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:18:33'),
(576, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 23:18:45'),
(577, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 23:19:27'),
(578, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-04 23:19:29'),
(579, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-04 23:19:42'),
(580, 1, 'Order #29 set to Preparing', 'orders', 29, '::1', '2026-03-04 23:19:53'),
(581, 1, 'Order #29 set to Ready', 'orders', 29, '::1', '2026-03-04 23:19:57'),
(582, 1, 'Order #29 set to Served', 'orders', 29, '::1', '2026-03-04 23:19:58'),
(583, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-04 23:20:25'),
(584, 1, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:20:27'),
(585, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:20:46'),
(586, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:20:53'),
(587, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 23:21:05'),
(588, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:21:15'),
(589, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:21:41'),
(590, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:21:48'),
(591, 3, 'Staff updated reservation #12 to Completed', 'reservations', 12, '::1', '2026-03-04 23:38:25'),
(592, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:46:18'),
(593, 13, 'Logged in', 'users', 13, '::1', '2026-03-04 23:47:03'),
(594, 13, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:47:07'),
(595, 16, 'Registered new account: darwin', 'users', 16, '::1', '2026-03-04 23:48:18'),
(596, 16, 'Logged in', 'users', 16, '::1', '2026-03-04 23:48:23'),
(597, 16, 'Reservation #126 created for 2026-03-06 11:00:00 at table T1', 'reservations', 126, '::1', '2026-03-04 23:48:33'),
(598, 16, 'Placed order #30 via PayMaya', 'orders', 30, '::1', '2026-03-04 23:48:41'),
(599, 16, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:48:44'),
(600, 3, 'Logged in', 'users', 3, '::1', '2026-03-04 23:48:58'),
(601, 3, 'Staff updated reservation #126 to Approved', 'reservations', 126, '::1', '2026-03-04 23:49:05'),
(602, 3, 'Staff verified payment for order #30', 'orders', 30, '::1', '2026-03-04 23:49:28'),
(603, 3, 'Staff set table #4 to available', 'restaurant_tables', 4, '::1', '2026-03-04 23:51:50'),
(604, 3, 'Logged out', NULL, NULL, '::1', '2026-03-04 23:52:26'),
(605, 1, 'Logged in', 'users', 1, '::1', '2026-03-04 23:52:40'),
(606, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 00:08:34'),
(607, 1, 'Admin added new customer: amzi xijle', 'users', 17, '::1', '2026-03-05 00:09:07'),
(608, 1, 'Admin deleted user: amzi xijle', 'users', 17, '::1', '2026-03-05 00:09:12'),
(609, 1, 'Admin added new staff: dada dada', 'users', 18, '::1', '2026-03-05 00:09:30'),
(610, 1, 'Admin inactive user: dada dada', 'users', 18, '::1', '2026-03-05 00:09:35'),
(611, 1, 'Admin deleted user: dada dada', 'users', 18, '::1', '2026-03-05 00:09:39'),
(612, 1, 'Logged out', NULL, NULL, '::1', '2026-03-05 00:09:56'),
(613, 3, 'Logged in', 'users', 3, '::1', '2026-03-05 00:10:11'),
(614, 3, 'Logged out', NULL, NULL, '::1', '2026-03-05 00:48:48'),
(615, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 00:48:55'),
(616, 1, 'Logged out', NULL, NULL, '::1', '2026-03-05 00:49:12'),
(617, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-05 00:51:29'),
(618, 19, 'Registered new account: kiancarlo', 'users', 19, '::1', '2026-03-05 00:58:08'),
(619, 19, 'Logged in', 'users', 19, '::1', '2026-03-05 00:58:25'),
(620, 19, 'Reservation #127 created for 2026-03-06 19:00:00 at table T1', 'reservations', 127, '::1', '2026-03-05 00:58:38'),
(621, 19, 'Placed order #31 via GCash', 'orders', 31, '::1', '2026-03-05 00:58:51'),
(622, 19, 'Logged out', NULL, NULL, '::1', '2026-03-05 00:58:57'),
(623, 3, 'Logged in', 'users', 3, '::1', '2026-03-05 00:59:10'),
(624, 3, 'Staff updated reservation #127 to Approved', 'reservations', 127, '::1', '2026-03-05 00:59:22'),
(625, 3, 'Staff verified payment for order #31', 'orders', 31, '::1', '2026-03-05 00:59:53'),
(626, 3, 'Staff set order #31 to Preparing', 'orders', 31, '::1', '2026-03-05 01:00:38'),
(627, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-05 01:00:43'),
(628, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-05 01:00:45'),
(629, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-05 01:00:46'),
(630, 3, 'Staff set order #31 to Preparing', 'orders', 31, '::1', '2026-03-05 01:00:46'),
(631, 3, 'Staff set order #31 to Ready', 'orders', 31, '::1', '2026-03-05 01:00:47'),
(632, 3, 'Staff set order #31 to Preparing', 'orders', 31, '::1', '2026-03-05 01:00:48'),
(633, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-05 01:00:49'),
(634, 3, 'Logged out', NULL, NULL, '::1', '2026-03-05 01:00:54'),
(635, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 01:01:03'),
(636, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-05 01:01:24'),
(637, 1, 'Logged out', NULL, NULL, '::1', '2026-03-05 01:02:38'),
(638, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-05 01:02:42'),
(639, 3, 'Logged in', 'users', 3, '::1', '2026-03-05 01:05:04'),
(640, 3, 'Logged out', NULL, NULL, '::1', '2026-03-05 01:06:37'),
(641, 12, 'Logged out', NULL, NULL, '::1', '2026-03-05 12:59:00'),
(642, 19, 'Logged in', 'users', 19, '::1', '2026-03-05 13:01:39'),
(643, 19, 'Logged out', NULL, NULL, '::1', '2026-03-05 13:01:53'),
(644, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 13:45:49'),
(645, 1, 'Logged out', NULL, NULL, '::1', '2026-03-05 14:10:17'),
(646, 5, 'Logged in', 'users', 5, '::1', '2026-03-05 14:10:45'),
(647, 5, 'Logged out', NULL, NULL, '::1', '2026-03-05 14:11:34'),
(648, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 14:11:44'),
(649, 5, 'Logged in', 'users', 5, '::1', '2026-03-05 14:29:25');
INSERT INTO `activity_logs` (`id`, `user_id`, `description`, `entity`, `entity_id`, `ip_address`, `created_at`) VALUES
(650, NULL, 'Registered new account: JHAY PAUL YAMSON', 'users', 20, '192.168.1.6', '2026-03-05 14:36:13'),
(651, 20, 'Logged in', 'users', 20, '192.168.1.6', '2026-03-05 14:36:48'),
(652, 5, 'Logged out', NULL, NULL, '::1', '2026-03-05 14:41:52'),
(653, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 14:41:59'),
(654, 1, 'Logged out', NULL, NULL, '::1', '2026-03-05 15:00:01'),
(655, 5, 'Logged in', 'users', 5, '::1', '2026-03-05 15:00:09'),
(656, 21, 'Registered new account: John gaubtan', 'users', 21, '::1', '2026-03-05 15:32:12'),
(657, 21, 'Logged in', 'users', 21, '::1', '2026-03-05 15:32:20'),
(658, 21, 'Reservation #128 created for 2026-03-08 13:00:00 at table T1', 'reservations', 128, '::1', '2026-03-05 15:33:12'),
(659, 21, 'Placed order #32 via GCash', 'orders', 32, '::1', '2026-03-05 15:33:27'),
(660, 21, 'Logged out', NULL, NULL, '::1', '2026-03-05 15:33:36'),
(661, 3, 'Logged in', 'users', 3, '::1', '2026-03-05 15:34:06'),
(662, 3, 'Staff updated reservation #128 to Approved', 'reservations', 128, '::1', '2026-03-05 15:34:28'),
(663, 3, 'Staff verified payment for order #32', 'orders', 32, '::1', '2026-03-05 15:35:01'),
(664, 3, 'Staff set order #32 to Preparing', 'orders', 32, '::1', '2026-03-05 15:35:56'),
(665, 3, 'Staff set order #32 to Ready', 'orders', 32, '::1', '2026-03-05 15:36:02'),
(666, 3, 'Staff set order #32 to Served', 'orders', 32, '::1', '2026-03-05 15:36:04'),
(667, 3, 'Logged out', NULL, NULL, '::1', '2026-03-05 15:36:19'),
(668, 1, 'Logged in', 'users', 1, '::1', '2026-03-05 15:37:16'),
(669, 5, 'Logged in', 'users', 5, '::1', '2026-03-05 17:22:56'),
(670, 5, 'Logged out', NULL, NULL, '::1', '2026-03-05 17:24:42'),
(671, 20, 'Logged in', 'users', 20, '::1', '2026-03-05 17:50:58'),
(672, 5, 'Logged in', 'users', 5, '192.168.1.32', '2026-03-06 18:40:19'),
(673, 1, 'Logged in', 'users', 1, '::1', '2026-03-06 19:05:41'),
(674, 1, 'Menu item added: epoy (₱1000)', 'menu_items', 24, '::1', '2026-03-06 19:08:44'),
(675, 1, 'Table #14 set to maintenance', 'restaurant_tables', 14, '::1', '2026-03-06 19:12:42'),
(676, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-06 19:12:43'),
(677, 1, 'Order #32 set to Completed', 'orders', 32, '::1', '2026-03-06 19:12:50'),
(678, 1, 'Order #31 set to Completed', 'orders', 31, '::1', '2026-03-06 19:12:51'),
(679, 1, 'Menu item updated: epoy', 'menu_items', 24, '::1', '2026-03-06 19:15:52'),
(680, 1, 'Menu item updated: epoy', 'menu_items', 24, '::1', '2026-03-06 19:18:56'),
(681, 1, 'Logged out', NULL, NULL, '::1', '2026-03-06 19:21:14'),
(682, 5, 'Logged in', 'users', 5, '::1', '2026-03-06 19:21:34'),
(683, 5, 'Logged out', NULL, NULL, '::1', '2026-03-06 19:22:41'),
(684, 1, 'Logged in', 'users', 1, '::1', '2026-03-06 19:22:57'),
(685, 1, 'Menu item updated: epoy', 'menu_items', 24, '::1', '2026-03-06 19:23:17'),
(686, 1, 'Reservation #127 updated to Check-in', 'reservations', 127, '::1', '2026-03-06 19:28:02'),
(687, 1, 'Reservation #128 updated to Check-in', 'reservations', 128, '::1', '2026-03-06 19:28:06'),
(688, 1, 'Reservation #127 updated to Completed', 'reservations', 127, '::1', '2026-03-06 19:28:10'),
(689, 1, 'Reservation #128 updated to Completed', 'reservations', 128, '::1', '2026-03-06 19:28:14'),
(690, 1, 'Menu item updated: epoy', 'menu_items', 24, '::1', '2026-03-06 19:43:27'),
(691, 1, 'Menu item updated: Pancit Itum', 'menu_items', 15, '::1', '2026-03-06 19:44:21'),
(692, 1, 'Menu item updated: Bottle Water', 'menu_items', 17, '::1', '2026-03-06 19:44:42'),
(693, 1, 'Menu item updated: Coke', 'menu_items', 20, '::1', '2026-03-06 19:44:48'),
(694, 1, 'Menu item updated: Magic potion', 'menu_items', 21, '::1', '2026-03-06 19:44:54'),
(695, 1, 'Menu item updated: Nestea', 'menu_items', 23, '::1', '2026-03-06 19:45:00'),
(696, 1, 'Menu item updated: Passion cooler', 'menu_items', 18, '::1', '2026-03-06 19:45:16'),
(697, 1, 'Menu item updated: Pineapple', 'menu_items', 22, '::1', '2026-03-06 19:45:31'),
(698, 1, 'Menu item updated: Chicken Pastil', 'menu_items', 2, '::1', '2026-03-06 19:45:47'),
(699, 1, 'Menu item updated: Chicken Relleno', 'menu_items', 1, '::1', '2026-03-06 19:46:03'),
(700, 1, 'Menu item updated: Dinulutan A Seda', 'menu_items', 3, '::1', '2026-03-06 19:46:41'),
(701, 1, 'Menu item updated: Gising Gising', 'menu_items', 16, '::1', '2026-03-06 19:47:19'),
(702, 1, 'Menu item updated: Humba De Oro', 'menu_items', 4, '::1', '2026-03-06 19:47:27'),
(703, 1, 'Menu item updated: Lamb Kulma', 'menu_items', 5, '::1', '2026-03-06 19:48:14'),
(704, 1, 'Menu item updated: Tiyula Itum', 'menu_items', 13, '::1', '2026-03-06 19:48:33'),
(705, 1, 'Logged out', NULL, NULL, '::1', '2026-03-06 20:14:48'),
(706, 5, 'Logged in', 'users', 5, '::1', '2026-03-06 20:15:06'),
(707, 5, 'Logged out', NULL, NULL, '::1', '2026-03-06 20:15:43'),
(708, 1, 'Logged in', 'users', 1, '::1', '2026-03-06 20:15:56'),
(709, 1, 'Menu item updated: epoy', 'menu_items', 24, '::1', '2026-03-06 20:16:27'),
(710, 1, 'Logged out', NULL, NULL, '::1', '2026-03-06 20:16:34'),
(711, 5, 'Logged in', 'users', 5, '::1', '2026-03-06 20:16:44'),
(712, 5, 'Logged out', NULL, NULL, '::1', '2026-03-06 20:41:28'),
(713, 1, 'Logged in', 'users', 1, '::1', '2026-03-06 20:41:41'),
(714, 1, 'Logged out', NULL, NULL, '::1', '2026-03-06 21:17:06'),
(715, 5, 'Logged in', 'users', 5, '::1', '2026-03-06 21:17:16'),
(716, 5, 'Logged out', NULL, NULL, '::1', '2026-03-06 21:17:54'),
(717, 1, 'Logged in', 'users', 1, '::1', '2026-03-06 21:18:00'),
(718, 1, 'Menu item updated: Surol Chicken', 'menu_items', 6, '::1', '2026-03-06 21:18:21'),
(719, 1, 'Menu item updated: Bamboo Rice', 'menu_items', 14, '::1', '2026-03-06 21:18:31'),
(720, 1, 'Logged out', NULL, NULL, '::1', '2026-03-06 21:18:38'),
(721, 5, 'Logged in', 'users', 5, '::1', '2026-03-06 21:18:48'),
(722, 5, 'Placed order #33 via GCash', 'orders', 33, '::1', '2026-03-06 21:51:27'),
(723, 5, 'Reservation #129 created for 2026-03-17 12:00:00 at table T3', 'reservations', 129, '::1', '2026-03-06 22:27:53'),
(724, 5, 'Reservation #130 created for 2026-03-17 14:00:00 at table T4', 'reservations', 130, '::1', '2026-03-06 22:28:08'),
(725, 5, 'Placed order #34 via GCash', 'orders', 34, '::1', '2026-03-06 22:28:49'),
(726, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 01:01:06'),
(727, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 01:19:27'),
(728, 1, 'Menu item added: KIAN (₱6969)', 'menu_items', 25, '::1', '2026-03-07 01:20:24'),
(729, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 01:20:43'),
(730, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 01:20:51'),
(731, 5, 'Placed order #35 via GCash', 'orders', 35, '::1', '2026-03-07 01:21:44'),
(732, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 01:34:46'),
(733, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 01:35:09'),
(734, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 01:39:41'),
(735, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 01:39:54'),
(736, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 01:40:30'),
(737, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 01:40:39'),
(738, 1, 'Menu item updated: KIAN', 'menu_items', 25, '::1', '2026-03-07 01:50:06'),
(739, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:01:14'),
(740, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 02:01:25'),
(741, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:02:01'),
(742, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 02:02:13'),
(743, 1, 'Menu item disabled: Chicken Barbeque Salad', 'menu_items', 7, '::1', '2026-03-07 02:06:10'),
(744, 1, 'Menu item enabled: Chicken Barbeque Salad', 'menu_items', 7, '::1', '2026-03-07 02:06:13'),
(745, 1, 'Menu item disabled: Chicken Barbeque Salad', 'menu_items', 7, '::1', '2026-03-07 02:06:14'),
(746, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:06:37'),
(747, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 02:06:48'),
(748, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:07:18'),
(749, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 02:07:26'),
(750, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:07:41'),
(751, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 02:07:52'),
(752, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:10:23'),
(753, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 02:10:30'),
(754, 1, 'Menu item enabled: Chicken Barbeque Salad', 'menu_items', 7, '::1', '2026-03-07 02:10:34'),
(755, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:10:36'),
(756, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 02:10:44'),
(757, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:11:59'),
(758, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 02:12:27'),
(759, 1, 'Menu item disabled: Chicken Barbeque Salad', 'menu_items', 7, '::1', '2026-03-07 02:12:35'),
(760, 1, 'Menu item disabled: KIAN', 'menu_items', 25, '::1', '2026-03-07 02:12:36'),
(761, 1, 'Logged out', NULL, NULL, '::1', '2026-03-07 02:12:38'),
(762, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 02:12:49'),
(763, 5, 'Reservation #131 created for 2026-03-10 13:00:00 at table T13', 'reservations', 131, '::1', '2026-03-07 02:33:54'),
(764, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 04:00:19'),
(765, 5, 'Placed order #36 via GCash', 'orders', 36, '::1', '2026-03-07 04:00:32'),
(766, 5, 'Updated profile', 'users', 5, '::1', '2026-03-07 04:01:00'),
(767, 5, 'Reservation #129 updated to 2026-03-17 at 2:00 PM', 'reservations', 129, '::1', '2026-03-07 04:07:44'),
(768, 5, 'Reservation #129 updated to 2026-03-17 at 12:00 PM', 'reservations', 129, '::1', '2026-03-07 04:09:59'),
(769, 5, 'Reservation #130 updated to 2026-03-17 at 12:00 PM', 'reservations', 130, '::1', '2026-03-07 04:10:09'),
(770, 5, 'Reservation #130 updated to 2026-03-17 at 2:00 PM', 'reservations', 130, '::1', '2026-03-07 04:10:23'),
(771, 5, 'Reservation #130 updated to 2026-03-17 at 12:00:00', 'reservations', 130, '::1', '2026-03-07 04:13:19'),
(772, 5, 'Reservation #130 updated to 2026-03-17 at 14:00:00', 'reservations', 130, '::1', '2026-03-07 04:13:33'),
(773, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 11:15:56'),
(774, 5, 'Reservation #132 created', 'reservations', 132, '::1', '2026-03-07 11:17:40'),
(775, 5, 'Placed order #37 via GCash', 'orders', 37, '::1', '2026-03-07 11:22:43'),
(776, 5, 'Placed order #38 via GCash', 'orders', 38, '::1', '2026-03-07 11:29:47'),
(777, 5, 'Updated profile', 'users', 5, '::1', '2026-03-07 11:34:59'),
(778, 5, 'Logged out', NULL, NULL, '::1', '2026-03-07 11:35:03'),
(779, 5, 'Logged in', 'users', 5, '::1', '2026-03-07 11:35:13'),
(780, 5, 'Placed order #39 via GCash', 'orders', 39, '::1', '2026-03-07 11:55:50'),
(781, 5, 'Placed order #40 via PayMaya', 'orders', 40, '::1', '2026-03-07 11:58:31'),
(782, 5, 'Placed order #41 via PayMaya', 'orders', 41, '::1', '2026-03-07 12:00:54'),
(783, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 22:07:24'),
(784, 1, 'Menu item disabled: epoy', 'menu_items', 24, '::1', '2026-03-07 22:07:41'),
(785, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 22:56:36'),
(786, 1, 'Menu item #25 → available', 'menu_items', 25, '::1', '2026-03-07 23:15:38'),
(787, 1, 'Menu item #25 → unavailable', 'menu_items', 25, '::1', '2026-03-07 23:15:39'),
(788, 1, 'Menu item #11 → unavailable', 'menu_items', 11, '::1', '2026-03-07 23:19:03'),
(789, 1, 'Menu item #11 → available', 'menu_items', 11, '::1', '2026-03-07 23:19:03'),
(790, 1, 'Edited menu item: epoy', 'menu_items', 24, '::1', '2026-03-07 23:30:15'),
(791, 1, 'Logged in', 'users', 1, '::1', '2026-03-07 23:37:44'),
(792, 1, 'Logged out', NULL, NULL, '::1', '2026-03-08 00:13:59'),
(793, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 00:14:07'),
(794, 5, 'Logged out', NULL, NULL, '::1', '2026-03-08 00:14:51'),
(795, 1, 'Logged in', 'users', 1, '::1', '2026-03-08 00:15:01'),
(796, 1, 'Menu item disabled: Pako Salad', 'menu_items', 8, '::1', '2026-03-08 00:18:52'),
(797, 1, 'Menu item enabled: Pako Salad', 'menu_items', 8, '::1', '2026-03-08 00:18:53'),
(798, 1, 'Bundle added: NIGGERS (P6969, 2 pax)', 'menu_bundles', 1, '::1', '2026-03-08 00:20:11'),
(799, 1, 'Menu item disabled: Pako Salad', 'menu_items', 8, '::1', '2026-03-08 00:20:39'),
(800, 1, 'Menu item enabled: Pako Salad', 'menu_items', 8, '::1', '2026-03-08 00:20:39'),
(801, 1, 'Menu item disabled: Lamb Kulma', 'menu_items', 5, '::1', '2026-03-08 00:21:29'),
(802, 1, 'Menu item enabled: Lamb Kulma', 'menu_items', 5, '::1', '2026-03-08 00:21:29'),
(803, 1, 'Bundle #1 set to unavailable', 'menu_bundles', 1, '::1', '2026-03-08 00:29:16'),
(804, 1, 'Bundle #1 set to available', 'menu_bundles', 1, '::1', '2026-03-08 00:29:17'),
(805, 1, 'Bundle #1 set to unavailable', 'menu_bundles', 1, '::1', '2026-03-08 00:29:17'),
(806, 1, 'Bundle #1 set to available', 'menu_bundles', 1, '::1', '2026-03-08 00:29:18'),
(807, 1, 'Bundle #1 set to unavailable', 'menu_bundles', 1, '::1', '2026-03-08 00:29:18'),
(808, 1, 'Bundle #1 set to available', 'menu_bundles', 1, '::1', '2026-03-08 00:29:19'),
(809, 1, 'Bundle updated: NIGGERS', 'menu_bundles', 1, '::1', '2026-03-08 00:34:22'),
(810, 1, 'Bundle #1 set to unavailable', 'menu_bundles', 1, '::1', '2026-03-08 00:37:16'),
(811, 1, 'Bundle #1 set to available', 'menu_bundles', 1, '::1', '2026-03-08 00:37:17'),
(812, 1, 'Table #2 set to occupied', 'restaurant_tables', 2, '::1', '2026-03-08 00:43:00'),
(813, 1, 'Table #14 set to occupied', 'restaurant_tables', 14, '::1', '2026-03-08 00:43:22'),
(814, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:46:50'),
(815, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:49:02'),
(816, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:49:12'),
(817, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:53:04'),
(818, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:53:13'),
(819, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-08 00:53:24'),
(820, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-08 00:53:25'),
(821, 1, 'Walk-in: Guest seated at table #1 (11:00)', 'walk_ins', 1, '::1', '2026-03-08 00:57:18'),
(822, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:57:18'),
(823, 1, 'Walk-in: nigger seated at table #1 (13:00)', 'walk_ins', 2, '::1', '2026-03-08 00:57:29'),
(824, 1, 'Table #1 set to occupied', 'restaurant_tables', 1, '::1', '2026-03-08 00:57:29'),
(825, 1, 'Logged out', NULL, NULL, '::1', '2026-03-08 00:59:06'),
(826, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 00:59:14'),
(827, 5, 'Reservation #133 created', 'reservations', 133, '::1', '2026-03-08 00:59:35'),
(828, 5, 'Logged out', NULL, NULL, '::1', '2026-03-08 01:03:01'),
(829, 1, 'Logged in', 'users', 1, '::1', '2026-03-08 01:03:11'),
(830, 1, 'Reservation #133 updated to Cancelled', 'reservations', 133, '::1', '2026-03-08 01:03:28'),
(831, 1, 'Walk-in #2 (nigger) set to Cancelled', 'walk_ins', 2, '::1', '2026-03-08 01:03:34'),
(832, 1, 'Walk-in #1 (Guest) set to Cancelled', 'walk_ins', 1, '::1', '2026-03-08 01:03:34'),
(833, 1, 'Logged out', NULL, NULL, '::1', '2026-03-08 01:03:54'),
(834, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 01:04:01'),
(835, 5, 'Reservation #134 created', 'reservations', 134, '::1', '2026-03-08 01:04:15'),
(836, 5, 'Logged out', NULL, NULL, '::1', '2026-03-08 01:04:18'),
(837, 1, 'Logged in', 'users', 1, '::1', '2026-03-08 01:04:27'),
(838, 1, 'Walk-in: Guest seated at table #1 (11:00)', 'walk_ins', 3, '::1', '2026-03-08 01:04:35'),
(839, 1, 'Walk-in #3 (Guest) set to Cancelled', 'walk_ins', 3, '::1', '2026-03-08 01:05:42'),
(840, 1, 'Walk-in: Guest seated at table #1 (11:00)', 'walk_ins', 4, '::1', '2026-03-08 01:09:34'),
(841, 1, 'Walk-in #4 (Guest) set to Cancelled', 'walk_ins', 4, '::1', '2026-03-08 01:09:38'),
(842, 1, 'Logged out', NULL, NULL, '::1', '2026-03-08 01:09:44'),
(843, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 22:54:05'),
(844, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 22:54:15'),
(845, 5, 'Auto-cancelled 1 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-08 22:54:16'),
(846, 5, 'Logged out', NULL, NULL, '::1', '2026-03-08 22:55:16'),
(847, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 22:55:29'),
(848, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 22:58:28'),
(849, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 22:58:37'),
(850, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 22:58:58'),
(851, 5, 'Cancelled reservation', 'reservations', 132, '::1', '2026-03-08 22:59:18'),
(852, 5, 'Cancelled reservation', 'reservations', 131, '::1', '2026-03-08 22:59:19'),
(853, 5, 'Cancelled reservation', 'reservations', 129, '::1', '2026-03-08 22:59:20'),
(854, 5, 'Cancelled reservation', 'reservations', 130, '::1', '2026-03-08 22:59:22'),
(855, 5, 'Reservation #135 created', 'reservations', 135, '::1', '2026-03-08 22:59:32'),
(856, 5, 'Cancelled reservation', 'reservations', 135, '::1', '2026-03-08 23:21:48'),
(857, 5, 'Reservation #136 created', 'reservations', 136, '::1', '2026-03-08 23:22:09'),
(858, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 23:23:21'),
(859, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 23:23:28'),
(860, 5, 'Logged out', NULL, NULL, '::1', '2026-03-08 23:31:55'),
(861, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 23:32:07'),
(862, 3, 'Staff verified payment for order #34', 'orders', 34, '::1', '2026-03-08 23:32:29'),
(863, 3, 'Staff set order #32 to Served', 'orders', 32, '::1', '2026-03-08 23:32:50'),
(864, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-08 23:32:53'),
(865, 3, 'Staff verified payment for order #33', 'orders', 33, '::1', '2026-03-08 23:32:55'),
(866, 3, 'Staff set order #33 to Served', 'orders', 33, '::1', '2026-03-08 23:33:01'),
(867, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 23:34:40'),
(868, 5, 'Reservation #137 created', 'reservations', 137, '::1', '2026-03-08 23:34:51'),
(869, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 23:40:15'),
(870, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 23:40:27'),
(871, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 23:43:49'),
(872, 5, 'Cancelled reservation', 'reservations', 136, '::1', '2026-03-08 23:43:55'),
(873, 5, 'Cancelled reservation', 'reservations', 137, '::1', '2026-03-08 23:43:59'),
(874, 5, 'Reservation #138 created', 'reservations', 138, '::1', '2026-03-08 23:44:20'),
(875, 3, 'Logged in', 'users', 3, '::1', '2026-03-08 23:44:43'),
(876, 5, 'Cancelled reservation', 'reservations', 138, '::1', '2026-03-08 23:49:46'),
(877, 5, 'Reservation #139 created', 'reservations', 139, '::1', '2026-03-08 23:50:02'),
(878, 3, 'Logged out', NULL, NULL, '::1', '2026-03-08 23:53:19'),
(879, 5, 'Logged in', 'users', 5, '::1', '2026-03-08 23:53:36'),
(880, 5, 'Logged out', NULL, NULL, '::1', '2026-03-09 00:03:41'),
(881, 1, 'Logged in', 'users', 1, '::1', '2026-03-09 00:03:54'),
(882, 1, 'Logged in', 'users', 1, '::1', '2026-03-09 00:38:26'),
(883, 1, 'Logged in', 'users', 1, '::1', '2026-03-09 00:51:08'),
(884, 1, 'Logged out', NULL, NULL, '::1', '2026-03-09 00:55:43'),
(885, 1, 'Logged in', 'users', 1, '::1', '2026-03-09 00:56:35'),
(886, 1, 'Logged out', NULL, NULL, '::1', '2026-03-09 01:08:31'),
(887, 3, 'Logged in', 'users', 3, '::1', '2026-03-09 01:08:43'),
(888, 3, 'Staff set order #31 to Ready', 'orders', 31, '::1', '2026-03-09 01:09:09'),
(889, 3, 'Staff set order #31 to Ready', 'orders', 31, '::1', '2026-03-09 01:09:24'),
(890, 3, 'Staff set order #32 to Ready', 'orders', 32, '::1', '2026-03-09 01:09:26'),
(891, 3, 'Staff set order #32 to Ready', 'orders', 32, '::1', '2026-03-09 01:09:29'),
(892, 3, 'Staff set order #31 to Ready', 'orders', 31, '::1', '2026-03-09 01:09:31'),
(893, 3, 'Staff set order #34 to Ready', 'orders', 34, '::1', '2026-03-09 01:09:32'),
(894, 3, 'Staff set order #35 to Ready', 'orders', 35, '::1', '2026-03-09 01:09:34'),
(895, 3, 'Staff set order #36 to Ready', 'orders', 36, '::1', '2026-03-09 01:09:35'),
(896, 3, 'Staff set order #38 to Ready', 'orders', 38, '::1', '2026-03-09 01:09:37'),
(897, 3, 'Staff set order #39 to Ready', 'orders', 39, '::1', '2026-03-09 01:09:38'),
(898, 3, 'Staff set order #39 to Served', 'orders', 39, '::1', '2026-03-09 01:09:40'),
(899, 3, 'Staff set order #32 to Served', 'orders', 32, '::1', '2026-03-09 01:09:54'),
(900, NULL, 'Guest pre-order #42 for reservation RSV-59667 by Abogart', 'orders', 42, '::1', '2026-03-13 19:31:09'),
(901, NULL, 'Guest reservation RSV-59667 booked by Abogart', 'guest_reservations', 12, '::1', '2026-03-13 19:31:09'),
(902, 3, 'Login successful', 'users', 3, '::1', '2026-03-13 19:31:50'),
(903, 3, 'Staff updated guest reservation #12 to Approved', 'guest_reservations', 12, '::1', '2026-03-13 19:32:16'),
(904, 3, 'Staff updated guest reservation #11 to Approved', 'guest_reservations', 11, '::1', '2026-03-13 19:34:39'),
(905, 3, 'Staff updated guest reservation #12 to Check-in', 'guest_reservations', 12, '::1', '2026-03-13 19:34:43'),
(906, 3, 'Staff updated guest reservation #11 to Approved', 'guest_reservations', 11, '::1', '2026-03-13 19:34:46'),
(907, NULL, 'Guest reservation RSV-65422 booked by Abogart', 'guest_reservations', 13, '::1', '2026-03-13 19:35:11'),
(908, 3, 'Staff updated guest reservation #13 to Approved', 'guest_reservations', 13, '::1', '2026-03-13 19:35:33'),
(909, 3, 'Staff updated guest reservation #9 to Approved', 'guest_reservations', 9, '::1', '2026-03-13 19:38:02'),
(910, 3, 'Staff updated guest reservation #10 to Approved', 'guest_reservations', 10, '::1', '2026-03-13 19:40:54'),
(911, 3, 'Logged out', NULL, NULL, '::1', '2026-03-13 20:24:50'),
(912, 3, 'Login successful', 'users', 3, '::1', '2026-03-13 20:25:08'),
(913, NULL, 'Guest reservation RSV-47437 booked by Abogart', 'guest_reservations', 14, '::1', '2026-03-13 20:26:00'),
(914, 3, 'Staff updated guest reservation #14 to Approved', 'guest_reservations', 14, '::1', '2026-03-13 20:26:08'),
(915, 3, 'Staff updated guest reservation #7 to Approved', 'guest_reservations', 7, '::1', '2026-03-13 20:30:14'),
(916, NULL, 'Guest reservation RSV-90222 booked by Abogart', 'guest_reservations', 15, '::1', '2026-03-13 20:30:34'),
(917, 3, 'Staff updated guest reservation #15 to Approved', 'guest_reservations', 15, '::1', '2026-03-13 20:30:41'),
(918, NULL, 'Guest reservation RSV-62700 booked by Abogart', 'guest_reservations', 16, '::1', '2026-03-13 20:35:37'),
(919, 3, 'Staff updated guest reservation #16 to Approved', 'guest_reservations', 16, '::1', '2026-03-13 20:35:54'),
(920, 5, 'Login successful', 'users', 5, '::1', '2026-03-13 20:36:51'),
(921, 5, 'Auto-cancelled 1 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-13 20:36:53'),
(922, 5, 'Reservation #140 created', 'reservations', 140, '::1', '2026-03-13 20:37:18'),
(923, 3, 'Staff updated reservation #140 to Approved', 'reservations', 140, '::1', '2026-03-13 20:37:39'),
(924, 3, 'Logged out', NULL, NULL, '::1', '2026-03-13 20:37:58'),
(925, 19, 'Login successful', 'users', 19, '::1', '2026-03-13 20:38:23'),
(926, 19, 'Reservation #141 created', 'reservations', 141, '::1', '2026-03-13 20:38:43'),
(927, 5, 'Logged out', NULL, NULL, '::1', '2026-03-13 20:38:56'),
(928, 5, 'Login successful', 'users', 5, '::1', '2026-03-13 20:39:13'),
(929, 5, 'Logged out', NULL, NULL, '::1', '2026-03-13 20:39:18'),
(930, 3, 'Login successful', 'users', 3, '::1', '2026-03-13 20:39:32'),
(931, 3, 'Staff updated reservation #141 to Approved', 'reservations', 141, '::1', '2026-03-13 20:39:42'),
(932, NULL, 'Guest reservation RSV-17048 booked by Abogart', 'guest_reservations', 17, '::1', '2026-03-13 20:41:05'),
(933, 3, 'Staff updated guest reservation #17 to Approved', 'guest_reservations', 17, '::1', '2026-03-13 20:41:14'),
(934, NULL, 'Guest reservation RSV-19476 booked by Abogart', 'guest_reservations', 18, '::1', '2026-03-13 20:42:51'),
(935, 3, 'Staff updated guest reservation #18 to Approved', 'guest_reservations', 18, '::1', '2026-03-13 20:42:58'),
(936, 19, 'Reservation #142 created', 'reservations', 142, '::1', '2026-03-13 20:46:41'),
(937, 3, 'Staff updated reservation #142 to Approved', 'reservations', 142, '::1', '2026-03-13 20:46:51'),
(938, NULL, 'Guest reservation RSV-31570 booked by Abogart', 'guest_reservations', 19, '::1', '2026-03-13 20:47:16'),
(939, 3, 'Staff updated guest reservation #19 to Approved', 'guest_reservations', 19, '::1', '2026-03-13 20:48:53'),
(940, 3, 'Staff updated guest reservation #19 to Approved', 'guest_reservations', 19, '::1', '2026-03-13 20:49:00'),
(941, NULL, 'Guest reservation RSV-10223 booked by Abogart', 'guest_reservations', 20, '::1', '2026-03-13 20:52:37'),
(942, 3, 'Staff updated guest reservation #20 to Approved', 'guest_reservations', 20, '::1', '2026-03-13 20:52:42'),
(943, NULL, 'Guest reservation RSV-71274 booked by Abogart', 'guest_reservations', 21, '::1', '2026-03-13 20:56:50'),
(944, NULL, 'Guest reservation RSV-74831 booked by Abogart', 'guest_reservations', 22, '::1', '2026-03-13 21:01:43'),
(945, 3, 'Staff updated guest reservation #22 to Approved', 'guest_reservations', 22, '::1', '2026-03-13 21:02:02'),
(946, NULL, 'Guest reservation RSV-15250 booked by Abogart', 'guest_reservations', 23, '::1', '2026-03-13 21:08:44'),
(947, 3, 'Staff updated guest reservation #23 to Approved', 'guest_reservations', 23, '::1', '2026-03-13 21:09:00'),
(948, 3, 'Staff updated guest reservation #21 to Approved', 'guest_reservations', 21, '::1', '2026-03-13 22:00:21'),
(949, 3, 'Staff updated guest reservation #21 to Check-in', 'guest_reservations', 21, '::1', '2026-03-13 22:00:29'),
(950, 3, 'Staff updated guest reservation #21 to Completed', 'guest_reservations', 21, '::1', '2026-03-13 22:00:41'),
(951, 3, 'Staff updated guest reservation #22 to Check-in', 'guest_reservations', 22, '::1', '2026-03-13 22:29:44'),
(952, 3, 'Staff updated guest reservation #22 to Completed', 'guest_reservations', 22, '::1', '2026-03-13 22:29:45'),
(953, 3, 'Staff updated guest reservation #23 to Check-in', 'guest_reservations', 23, '::1', '2026-03-13 22:29:46'),
(954, 3, 'Staff updated guest reservation #20 to Check-in', 'guest_reservations', 20, '::1', '2026-03-13 22:29:52'),
(955, 3, 'Staff updated guest reservation #19 to Check-in', 'guest_reservations', 19, '::1', '2026-03-13 22:29:54'),
(956, 3, 'Staff updated guest reservation #18 to Check-in', 'guest_reservations', 18, '::1', '2026-03-13 22:29:55'),
(957, 3, 'Staff updated guest reservation #17 to Check-in', 'guest_reservations', 17, '::1', '2026-03-13 22:29:55'),
(958, 3, 'Staff updated guest reservation #16 to Check-in', 'guest_reservations', 16, '::1', '2026-03-13 22:29:56'),
(959, 3, 'Staff updated guest reservation #15 to Check-in', 'guest_reservations', 15, '::1', '2026-03-13 22:29:57'),
(960, 3, 'Staff updated guest reservation #14 to Check-in', 'guest_reservations', 14, '::1', '2026-03-13 22:29:58'),
(961, 3, 'Staff updated guest reservation #13 to Check-in', 'guest_reservations', 13, '::1', '2026-03-13 22:29:58'),
(962, 3, 'Staff updated guest reservation #11 to Check-in', 'guest_reservations', 11, '::1', '2026-03-13 22:30:01'),
(963, 3, 'Staff updated guest reservation #10 to Check-in', 'guest_reservations', 10, '::1', '2026-03-13 22:30:01'),
(964, 3, 'Staff updated guest reservation #9 to Check-in', 'guest_reservations', 9, '::1', '2026-03-13 22:30:02'),
(965, 3, 'Staff updated guest reservation #8 to Check-in', 'guest_reservations', 8, '::1', '2026-03-13 22:30:03'),
(966, 3, 'Staff updated guest reservation #7 to Check-in', 'guest_reservations', 7, '::1', '2026-03-13 22:30:04'),
(967, 3, 'Staff set order #36 to Served', 'orders', 36, '::1', '2026-03-13 22:30:19'),
(968, 3, 'Staff verified payment for order #36', 'orders', 36, '::1', '2026-03-13 22:30:22'),
(969, 3, 'Staff set order #42 to Preparing', 'orders', 42, '::1', '2026-03-13 22:30:32'),
(970, 3, 'Staff set order #31 to Served', 'orders', 31, '::1', '2026-03-13 22:30:39'),
(971, 3, 'Staff set order #34 to Served', 'orders', 34, '::1', '2026-03-13 22:37:12'),
(972, 3, 'Staff set order #35 to Served', 'orders', 35, '::1', '2026-03-13 22:37:14'),
(973, 3, 'Staff verified payment for order #35', 'orders', 35, '::1', '2026-03-13 22:37:17'),
(974, 3, 'Staff set order #42 to Ready', 'orders', 42, '::1', '2026-03-13 22:37:28'),
(975, 3, 'Staff set order #42 to Served', 'orders', 42, '::1', '2026-03-13 22:37:29'),
(976, 3, 'Logged out', NULL, NULL, '::1', '2026-03-13 22:37:41'),
(977, 1, 'Login successful', 'users', 1, '::1', '2026-03-13 22:38:00'),
(978, 3, 'Login successful', 'users', 3, '::1', '2026-03-13 22:38:35'),
(979, 1, 'Staff updated guest reservation #7 to Completed', 'guest_reservations', 7, '::1', '2026-03-13 22:53:16'),
(980, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-13 23:36:40'),
(981, 1, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-03-13 23:36:40'),
(982, 1, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-03-13 23:36:40'),
(983, 1, 'Table #4 set to available', 'restaurant_tables', 4, '::1', '2026-03-13 23:36:40'),
(984, 1, 'Table #5 set to available', 'restaurant_tables', 5, '::1', '2026-03-13 23:36:40'),
(985, 1, 'Table #6 set to available', 'restaurant_tables', 6, '::1', '2026-03-13 23:36:40'),
(986, 1, 'Table #7 set to available', 'restaurant_tables', 7, '::1', '2026-03-13 23:36:40'),
(987, 1, 'Table #8 set to available', 'restaurant_tables', 8, '::1', '2026-03-13 23:36:40'),
(988, 1, 'Table #9 set to available', 'restaurant_tables', 9, '::1', '2026-03-13 23:36:40'),
(989, 1, 'Table #10 set to available', 'restaurant_tables', 10, '::1', '2026-03-13 23:36:40'),
(990, 1, 'Table #11 set to available', 'restaurant_tables', 11, '::1', '2026-03-13 23:36:40'),
(991, 1, 'Table #12 set to available', 'restaurant_tables', 12, '::1', '2026-03-13 23:36:40'),
(992, 1, 'Table #13 set to available', 'restaurant_tables', 13, '::1', '2026-03-13 23:36:41'),
(993, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-13 23:36:41'),
(994, 1, 'Admin added table: T15 (4 seats, Indoor)', 'restaurant_tables', 15, '::1', '2026-03-13 23:37:59'),
(995, 1, 'Guest reservation RSV-47157 booked by Kian Carlo Lacdao', 'guest_reservations', 24, '::1', '2026-03-13 23:51:03'),
(996, 3, 'Login successful', 'users', 3, '::1', '2026-03-13 23:52:38'),
(997, 3, 'Staff updated guest reservation #24 to Approved', 'guest_reservations', 24, '::1', '2026-03-13 23:53:22'),
(998, 3, 'Logged out', NULL, NULL, '::1', '2026-03-13 23:55:00'),
(999, 1, 'Login successful', 'users', 1, '::1', '2026-03-13 23:55:18'),
(1000, 1, 'Logged out', NULL, NULL, '::1', '2026-03-14 02:07:28'),
(1001, 1, 'Login successful', 'users', 1, '::1', '2026-03-14 02:07:42'),
(1002, 5, 'Login successful', 'users', 5, '::1', '2026-03-14 02:08:46'),
(1003, 5, 'Guest pre-order #43 for reservation RSV-43932 by Kian Carlo Lacdao', 'orders', 43, '::1', '2026-03-14 02:09:55'),
(1004, 5, 'Guest reservation RSV-43932 booked by Kian Carlo Lacdao', 'guest_reservations', 25, '::1', '2026-03-14 02:09:55'),
(1005, 1, 'Logged out', NULL, NULL, '::1', '2026-03-14 02:12:16'),
(1006, 3, 'Login successful', 'users', 3, '::1', '2026-03-14 02:12:36'),
(1007, 3, 'Staff updated guest reservation #25 to Approved', 'guest_reservations', 25, '::1', '2026-03-14 02:12:43'),
(1008, 3, 'Guest reservation RSV-82929 booked by Kian Carlo Lacdao', 'guest_reservations', 26, '::1', '2026-03-14 02:17:40'),
(1009, 3, 'Login successful', 'users', 3, '::1', '2026-03-14 21:10:22'),
(1010, 3, 'Staff set table #1 to available', 'restaurant_tables', 1, '::1', '2026-03-14 21:12:58'),
(1011, 3, 'Staff set table #1 to occupied', 'restaurant_tables', 1, '::1', '2026-03-14 21:13:01'),
(1012, 3, 'Staff updated guest reservation #26 to Approved', 'guest_reservations', 26, '::1', '2026-03-14 21:20:26'),
(1013, 3, 'Staff set table #1 to available', 'restaurant_tables', 1, '::1', '2026-03-14 21:20:57'),
(1014, NULL, 'Guest reservation RSV-89048 booked by Kian Carlo A Lacdao', 'guest_reservations', 27, '::1', '2026-03-14 21:22:07'),
(1015, 3, 'Staff updated guest reservation #27 to Approved', 'guest_reservations', 27, '::1', '2026-03-14 21:22:41'),
(1016, NULL, 'Guest pre-order #44 for reservation RSV-81251 by Kian Carlo A Lacdao', 'orders', 44, '::1', '2026-03-14 21:41:14'),
(1017, NULL, 'Guest reservation RSV-81251 booked by Kian Carlo A Lacdao', 'guest_reservations', 28, '::1', '2026-03-14 21:41:14'),
(1018, NULL, 'Guest reservation RSV-31678 booked by Kian Carlo A Lacdao', 'guest_reservations', 29, '::1', '2026-03-14 21:48:57'),
(1019, NULL, 'Guest reservation RSV-18162 booked by Kian Carlo A Lacdao', 'guest_reservations', 30, '::1', '2026-03-14 21:53:10'),
(1020, NULL, 'Guest reservation RSV-97405 booked by Lacdao', 'guest_reservations', 31, '::1', '2026-03-14 21:58:18'),
(1021, NULL, 'Guest reservation RSV-36752 booked by Lacdao', 'guest_reservations', 32, '::1', '2026-03-14 21:59:47'),
(1022, NULL, 'Guest reservation RSV-29036 booked by Lacdao', 'guest_reservations', 33, '::1', '2026-03-14 22:14:19'),
(1023, NULL, 'Guest pre-order #45 for reservation RSV-99490 by Lacdao', 'orders', 45, '::1', '2026-03-14 22:19:58'),
(1024, NULL, 'Guest reservation RSV-99490 booked by Lacdao', 'guest_reservations', 34, '::1', '2026-03-14 22:19:58'),
(1025, NULL, 'Guest pre-order #46 for reservation RSV-64876 by Amzi', 'orders', 46, '::1', '2026-03-14 22:37:04'),
(1026, NULL, 'Guest reservation RSV-64876 booked by Amzi', 'guest_reservations', 35, '::1', '2026-03-14 22:37:04'),
(1027, 3, 'Guest payment verified for reservation #35', 'guest_reservations', 35, '::1', '2026-03-14 22:43:26'),
(1028, 3, 'Guest payment verified for reservation #34', 'guest_reservations', 34, '::1', '2026-03-14 22:43:38'),
(1029, 3, 'Logged out', NULL, NULL, '::1', '2026-03-14 22:44:12'),
(1030, 1, 'Login successful', 'users', 1, '::1', '2026-03-14 22:44:38'),
(1031, 1, 'Admin added new customer: Kian Lacdao', 'users', 22, '::1', '2026-03-14 23:01:04'),
(1032, 1, 'Logged out', NULL, NULL, '::1', '2026-03-14 23:01:17'),
(1033, 22, 'Login successful', 'users', 22, '::1', '2026-03-14 23:01:32'),
(1034, 22, 'Auto-cancelled 3 expired reservation(s) (No-Show after 30-min grace)', 'reservations', NULL, '::1', '2026-03-14 23:01:33'),
(1035, 22, 'Logged out', NULL, NULL, '::1', '2026-03-14 23:01:36'),
(1036, 1, 'Login successful', 'users', 1, '::1', '2026-03-14 23:01:53'),
(1037, 5, 'Login successful', 'users', 5, '::1', '2026-03-14 23:23:57'),
(1038, 5, 'Logged out', NULL, NULL, '::1', '2026-03-14 23:31:46'),
(1039, 1, 'Bundle #1 set to unavailable', 'menu_bundles', 1, '::1', '2026-03-15 00:15:08'),
(1040, 1, 'Bundle #1 set to available', 'menu_bundles', 1, '::1', '2026-03-15 00:15:09'),
(1041, 1, 'Menu item added: dada (₱10.1)', 'menu_items', 26, '::1', '2026-03-15 00:34:36'),
(1042, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 00:34:59'),
(1043, 1, 'Bundle added: many (P123124, 2 pax)', 'menu_bundles', 2, '::1', '2026-03-15 01:09:12'),
(1044, 1, 'Reservation #28 updated to Approved', 'reservations', 28, '::1', '2026-03-15 02:14:10'),
(1045, 1, 'Reservation #27 updated to Check-in', 'reservations', 27, '::1', '2026-03-15 02:14:12'),
(1046, 1, 'Reservation #27 updated to Check-in', 'reservations', 27, '::1', '2026-03-15 02:14:13'),
(1047, 1, 'Reservation #27 updated to Check-in', 'reservations', 27, '::1', '2026-03-15 02:14:15'),
(1048, 1, 'Reservation #28 updated to Approved', 'reservations', 28, '::1', '2026-03-15 02:14:16'),
(1049, 1, 'Reservation #27 updated to Check-in', 'reservations', 27, '::1', '2026-03-15 02:14:18'),
(1050, 1, 'Reservation #28 updated to Approved', 'reservations', 28, '::1', '2026-03-15 02:14:19'),
(1051, 1, 'Reservation #28 updated to Cancelled', 'reservations', 28, '::1', '2026-03-15 02:14:20'),
(1052, 1, 'Reservation #27 updated to Check-in', 'reservations', 27, '::1', '2026-03-15 02:14:21'),
(1053, 1, 'Staff updated guest reservation #27 to Check-in', 'guest_reservations', 27, '::1', '2026-03-15 02:21:11'),
(1054, 1, 'Staff updated guest reservation #28 to Approved', 'guest_reservations', 28, '::1', '2026-03-15 02:21:12'),
(1055, 1, 'Staff updated guest reservation #28 to Approved', 'guest_reservations', 28, '::1', '2026-03-15 02:21:16'),
(1056, 1, 'Staff updated guest reservation #27 to Completed', 'guest_reservations', 27, '::1', '2026-03-15 02:21:21'),
(1057, 1, 'Staff updated guest reservation #27 to Completed', 'guest_reservations', 27, '::1', '2026-03-15 02:21:21'),
(1058, 1, 'Staff updated guest reservation #27 to Completed', 'guest_reservations', 27, '::1', '2026-03-15 02:21:21'),
(1059, 1, 'Staff updated guest reservation #28 to Approved', 'guest_reservations', 28, '::1', '2026-03-15 02:21:21'),
(1060, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 02:22:24'),
(1061, NULL, 'Guest reservation RSV-97322 booked by Kian Carlo Lacdao', 'guest_reservations', 36, '::1', '2026-03-15 02:33:30'),
(1062, 5, 'Reservation #143 created', 'reservations', 143, '::1', '2026-03-15 03:06:32'),
(1063, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 03:23:38'),
(1064, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 03:39:29'),
(1065, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 03:39:51'),
(1066, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 03:40:14'),
(1067, NULL, 'Guest pre-order #47 for reservation RSV-86088 by Kian', 'orders', 47, '::1', '2026-03-15 03:41:08'),
(1068, NULL, 'Guest reservation RSV-86088 booked by Kian', 'guest_reservations', 37, '::1', '2026-03-15 03:41:08'),
(1069, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 03:44:26'),
(1070, 5, 'Reservation #144 created', 'reservations', 144, '::1', '2026-03-15 03:46:18'),
(1071, 5, 'Placed order #48 via GCash', 'orders', 48, '::1', '2026-03-15 03:46:39'),
(1072, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 03:46:50'),
(1073, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 03:47:09'),
(1074, 3, 'Staff updated reservation #144 to Approved', 'reservations', 144, '::1', '2026-03-15 03:47:21'),
(1075, 3, 'Staff updated guest reservation #37 to Approved', 'guest_reservations', 37, '::1', '2026-03-15 03:47:48'),
(1076, 3, 'Guest payment verified for reservation #37', 'guest_reservations', 37, '::1', '2026-03-15 03:48:32'),
(1077, 3, 'Staff verified payment for order #48', 'orders', 48, '::1', '2026-03-15 03:48:40'),
(1078, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 03:50:00'),
(1079, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 03:50:20'),
(1080, 1, 'Reservation #144 updated to Check-in', 'reservations', 144, '::1', '2026-03-15 03:50:32'),
(1081, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-15 03:50:43'),
(1082, 1, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-03-15 03:50:43'),
(1083, 1, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-03-15 03:50:43'),
(1084, 1, 'Table #4 set to available', 'restaurant_tables', 4, '::1', '2026-03-15 03:50:43'),
(1085, 1, 'Table #5 set to available', 'restaurant_tables', 5, '::1', '2026-03-15 03:50:43'),
(1086, 1, 'Table #6 set to available', 'restaurant_tables', 6, '::1', '2026-03-15 03:50:43'),
(1087, 1, 'Table #7 set to available', 'restaurant_tables', 7, '::1', '2026-03-15 03:50:43'),
(1088, 1, 'Table #8 set to available', 'restaurant_tables', 8, '::1', '2026-03-15 03:50:43'),
(1089, 1, 'Table #9 set to available', 'restaurant_tables', 9, '::1', '2026-03-15 03:50:43'),
(1090, 1, 'Table #10 set to available', 'restaurant_tables', 10, '::1', '2026-03-15 03:50:43'),
(1091, 1, 'Table #11 set to available', 'restaurant_tables', 11, '::1', '2026-03-15 03:50:43'),
(1092, 1, 'Table #12 set to available', 'restaurant_tables', 12, '::1', '2026-03-15 03:50:43'),
(1093, 1, 'Table #13 set to available', 'restaurant_tables', 13, '::1', '2026-03-15 03:50:43'),
(1094, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-15 03:50:43'),
(1095, 1, 'Table #15 set to available', 'restaurant_tables', 15, '::1', '2026-03-15 03:50:43'),
(1096, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 03:55:34'),
(1097, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 03:55:59'),
(1098, 5, 'Guest reservation RSV-66369 booked by Kian', 'guest_reservations', 38, '::1', '2026-03-15 03:56:56'),
(1099, 5, 'Guest pre-order #49 for reservation RSV-14505 by amzi', 'orders', 49, '::1', '2026-03-15 03:57:42'),
(1100, 5, 'Guest reservation RSV-14505 booked by amzi', 'guest_reservations', 39, '::1', '2026-03-15 03:57:42'),
(1101, 5, 'Guest reservation RSV-21180 booked by amzi', 'guest_reservations', 40, '::1', '2026-03-15 03:58:30'),
(1102, 5, 'Guest pre-order #50 for reservation RSV-65754 by amzi', 'orders', 50, '::1', '2026-03-15 03:59:25'),
(1103, 5, 'Guest reservation RSV-65754 booked by amzi', 'guest_reservations', 41, '::1', '2026-03-15 03:59:25'),
(1104, 3, 'Guest payment verified for reservation #41', 'guest_reservations', 41, '::1', '2026-03-15 03:59:45'),
(1105, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 04:00:00'),
(1106, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 04:00:17'),
(1107, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 11:56:59'),
(1108, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 11:58:23'),
(1109, 5, 'Reservation #145 created', 'reservations', 145, '::1', '2026-03-15 11:58:39'),
(1110, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 11:58:52'),
(1111, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 11:59:14'),
(1112, 3, 'Staff updated reservation #145 to Approved', 'reservations', 145, '::1', '2026-03-15 11:59:27'),
(1113, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 12:05:38'),
(1114, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 12:05:54'),
(1115, 1, 'Staff updated guest reservation #41 to Approved', 'guest_reservations', 41, '::1', '2026-03-15 12:08:33'),
(1116, 3, 'Staff updated reservation #144 to Completed', 'reservations', 144, '::1', '2026-03-15 12:20:54'),
(1117, 3, 'Staff updated reservation #145 to Check-in', 'reservations', 145, '::1', '2026-03-15 12:21:02'),
(1118, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 12:33:19'),
(1119, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-15 12:38:59'),
(1120, 1, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-03-15 12:38:59'),
(1121, 1, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-03-15 12:38:59'),
(1122, 1, 'Table #4 set to available', 'restaurant_tables', 4, '::1', '2026-03-15 12:38:59'),
(1123, 1, 'Table #5 set to available', 'restaurant_tables', 5, '::1', '2026-03-15 12:38:59'),
(1124, 1, 'Table #6 set to available', 'restaurant_tables', 6, '::1', '2026-03-15 12:38:59'),
(1125, 1, 'Table #7 set to available', 'restaurant_tables', 7, '::1', '2026-03-15 12:38:59'),
(1126, 1, 'Table #8 set to available', 'restaurant_tables', 8, '::1', '2026-03-15 12:38:59'),
(1127, 1, 'Table #9 set to available', 'restaurant_tables', 9, '::1', '2026-03-15 12:38:59'),
(1128, 1, 'Table #10 set to available', 'restaurant_tables', 10, '::1', '2026-03-15 12:38:59'),
(1129, 1, 'Table #11 set to available', 'restaurant_tables', 11, '::1', '2026-03-15 12:38:59'),
(1130, 1, 'Table #12 set to available', 'restaurant_tables', 12, '::1', '2026-03-15 12:38:59'),
(1131, 1, 'Table #13 set to available', 'restaurant_tables', 13, '::1', '2026-03-15 12:38:59'),
(1132, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-15 12:38:59'),
(1133, 1, 'Table #15 set to available', 'restaurant_tables', 15, '::1', '2026-03-15 12:38:59'),
(1134, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 12:50:39'),
(1135, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 13:10:50'),
(1136, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 13:12:57'),
(1137, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 13:25:43'),
(1138, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 13:33:12'),
(1139, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 17:12:18'),
(1140, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 17:12:44'),
(1141, 5, 'Reservation #146 created', 'reservations', 146, '::1', '2026-03-15 17:13:06'),
(1142, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 17:15:23'),
(1143, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 17:15:39'),
(1144, 1, 'Guest pre-order #51 for reservation RSV-38759 by Kian', 'orders', 51, '::1', '2026-03-15 17:31:18'),
(1145, 1, 'Guest reservation RSV-38759 booked by Kian', 'guest_reservations', 42, '::1', '2026-03-15 17:31:18'),
(1146, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 17:31:41'),
(1147, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 17:32:01'),
(1148, 1, 'Guest pre-order #52 for reservation RSV-40832 by Kian', 'orders', 52, '::1', '2026-03-15 17:38:43'),
(1149, 1, 'Guest reservation RSV-40832 booked by Kian', 'guest_reservations', 43, '::1', '2026-03-15 17:38:43'),
(1150, 1, 'Guest pre-order #53 for reservation RSV-40847 by carlo', 'orders', 53, '::1', '2026-03-15 17:54:04'),
(1151, 1, 'Guest reservation RSV-40847 booked by carlo', 'guest_reservations', 44, '::1', '2026-03-15 17:54:04'),
(1152, 3, 'Guest payment verified for reservation #44', 'guest_reservations', 44, '::1', '2026-03-15 17:54:50'),
(1153, 1, 'Guest reservation RSV-74797 booked by carlo', 'guest_reservations', 45, '::1', '2026-03-15 17:55:32'),
(1154, 1, 'Guest pre-order #54 for reservation RSV-58795 by art', 'orders', 54, '::1', '2026-03-15 18:13:10'),
(1155, 1, 'Guest reservation RSV-58795 booked by art', 'guest_reservations', 46, '::1', '2026-03-15 18:13:11'),
(1156, 1, 'Guest pre-order #55 for reservation RSV-51952 by amzi123', 'orders', 55, '::1', '2026-03-15 18:44:51'),
(1157, 1, 'Guest reservation RSV-51952 booked by amzi123', 'guest_reservations', 47, '::1', '2026-03-15 18:44:51'),
(1158, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 18:48:22'),
(1159, 5, 'Reservation #147 created', 'reservations', 147, '::1', '2026-03-15 18:48:39'),
(1160, 5, 'Placed order #56 via GCash', 'orders', 56, '::1', '2026-03-15 18:49:01'),
(1161, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 18:52:41'),
(1162, NULL, 'Guest pre-order #57 for reservation RSV-86059 by amzi12345', 'orders', 57, '::1', '2026-03-15 18:53:30'),
(1163, NULL, 'Guest reservation RSV-86059 booked by amzi12345', 'guest_reservations', 48, '::1', '2026-03-15 18:53:30'),
(1164, 3, 'Guest payment verified for reservation #48', 'guest_reservations', 48, '::1', '2026-03-15 18:54:09'),
(1165, NULL, 'Guest pre-order #58 for reservation RSV-61635 by amiz123', 'orders', 58, '::1', '2026-03-15 19:21:03'),
(1166, NULL, 'Guest reservation RSV-61635 booked by amiz123', 'guest_reservations', 49, '::1', '2026-03-15 19:21:03'),
(1167, 3, 'Guest payment verified for reservation #49', 'guest_reservations', 49, '::1', '2026-03-15 19:27:43'),
(1168, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 19:27:58'),
(1169, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 19:30:57'),
(1170, 1, 'Login successful', 'users', 1, '::1', '2026-03-15 19:41:57'),
(1171, 5, 'Guest pre-order #59 for reservation RSV-27286 by Kian', 'orders', 59, '::1', '2026-03-15 20:04:01'),
(1172, 5, 'Guest reservation RSV-27286 booked by Kian', 'guest_reservations', 50, '::1', '2026-03-15 20:04:01'),
(1173, 1, 'Logged out', NULL, NULL, '::1', '2026-03-15 20:53:43'),
(1174, 5, 'Guest reservation RSV-78921 booked by Kian', 'guest_reservations', 51, '::1', '2026-03-15 21:38:00'),
(1175, 5, 'Login successful', 'users', 5, '::1', '2026-03-15 21:45:46'),
(1176, 5, 'Reservation #148 created', 'reservations', 148, '::1', '2026-03-15 22:45:35'),
(1177, 5, 'Reservation #149 created', 'reservations', 149, '::1', '2026-03-15 22:48:17'),
(1178, 5, 'Reservation #150 created', 'reservations', 150, '::1', '2026-03-15 22:48:42'),
(1179, 3, 'Login successful', 'users', 3, '::1', '2026-03-15 22:49:24'),
(1180, 5, 'Reservation #151 created', 'reservations', 151, '::1', '2026-03-15 23:21:49'),
(1181, 5, 'Reservation #152 created', 'reservations', 152, '::1', '2026-03-15 23:53:50'),
(1182, 5, 'Reservation #153 created', 'reservations', 153, '::1', '2026-03-15 23:55:33'),
(1183, 3, 'Logged out', NULL, NULL, '::1', '2026-03-15 23:57:01'),
(1184, 19, 'Login successful', 'users', 19, '::1', '2026-03-15 23:57:32'),
(1185, 5, 'Logged out', NULL, NULL, '::1', '2026-03-15 23:59:51'),
(1186, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 00:00:33'),
(1187, 19, 'Logged out', NULL, NULL, '::1', '2026-03-16 00:13:51'),
(1188, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 00:14:06'),
(1189, 19, 'Login successful', 'users', 19, '::1', '2026-03-16 00:26:42'),
(1190, 5, 'Reservation #154 created', 'reservations', 154, '::1', '2026-03-16 00:42:37'),
(1191, 3, 'Logged out', NULL, NULL, '::1', '2026-03-16 00:42:50'),
(1192, 19, 'Login successful', 'users', 19, '::1', '2026-03-16 00:43:15'),
(1193, 5, 'Logged out', NULL, NULL, '::1', '2026-03-16 00:53:27'),
(1194, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 00:53:52'),
(1195, 3, 'Guest pre-order #60 for reservation RSV-60669 by amiz123', 'orders', 60, '::1', '2026-03-16 01:11:29'),
(1196, 3, 'Guest reservation RSV-60669 booked by amiz123', 'guest_reservations', 52, '::1', '2026-03-16 01:11:29'),
(1197, 19, 'Reservation #155 created', 'reservations', 155, '::1', '2026-03-16 01:18:46'),
(1198, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 01:19:14'),
(1199, 3, 'Staff updated guest reservation #52 to Approved', 'guest_reservations', 52, '::1', '2026-03-16 01:19:41'),
(1200, 3, 'Logged out', NULL, NULL, '::1', '2026-03-16 01:25:55'),
(1201, 1, 'Login successful', 'users', 1, '::1', '2026-03-16 01:26:16'),
(1202, 1, 'Logged out', NULL, NULL, '::1', '2026-03-16 01:33:57'),
(1203, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 01:53:10'),
(1204, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 01:56:20'),
(1205, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 02:01:50'),
(1206, 5, 'Logged out', NULL, NULL, '::1', '2026-03-16 02:03:33'),
(1207, NULL, 'Guest reservation RSV-69485 booked by amiz123', 'guest_reservations', 53, '::1', '2026-03-16 02:06:53'),
(1208, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 02:07:27'),
(1209, 5, 'Reservation #156 created', 'reservations', 156, '::1', '2026-03-16 02:07:46'),
(1210, 5, 'Logged out', NULL, NULL, '::1', '2026-03-16 02:44:23'),
(1211, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 02:44:41'),
(1212, 3, 'Staff updated reservation #156 to Approved', 'reservations', 156, '::1', '2026-03-16 02:44:45'),
(1213, 3, 'Staff updated reservation #156 to Check-in', 'reservations', 156, '::1', '2026-03-16 02:44:52'),
(1214, 3, 'Staff updated reservation #156 to Completed', 'reservations', 156, '::1', '2026-03-16 02:44:55'),
(1215, 3, 'Logged out', NULL, NULL, '::1', '2026-03-16 03:09:17'),
(1216, 5, 'Login successful', 'users', 5, '::1', '2026-03-16 03:09:43'),
(1217, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 11:00:16'),
(1218, 3, 'Staff updated guest reservation #53 to Approved', 'guest_reservations', 53, '::1', '2026-03-16 11:00:30');
INSERT INTO `activity_logs` (`id`, `user_id`, `description`, `entity`, `entity_id`, `ip_address`, `created_at`) VALUES
(1219, 3, 'Staff updated guest reservation #53 to Check-in', 'guest_reservations', 53, '::1', '2026-03-16 11:01:13'),
(1220, 3, 'Staff updated guest reservation #53 to Completed', 'guest_reservations', 53, '::1', '2026-03-16 11:01:17'),
(1221, 3, 'Logged out', NULL, NULL, '::1', '2026-03-16 11:01:47'),
(1222, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-16 11:04:35'),
(1223, 3, 'Login successful', 'users', 3, '::1', '2026-03-16 11:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'system',
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `type`, `message`, `is_read`, `created_at`) VALUES
(1, 'reservation', 'Guest for reservation #27 has checked in', 0, '2026-03-15 02:14:12'),
(2, 'reservation', 'Guest for reservation #27 has checked in', 0, '2026-03-15 02:14:13'),
(3, 'reservation', 'Guest for reservation #27 has checked in', 0, '2026-03-15 02:14:15'),
(4, 'reservation', 'Guest for reservation #27 has checked in', 0, '2026-03-15 02:14:18'),
(5, 'reservation', 'Reservation #28 was cancelled by customer', 0, '2026-03-15 02:14:20'),
(6, 'reservation', 'Guest for reservation #27 has checked in', 0, '2026-03-15 02:14:21'),
(7, 'reservation', 'Guest for reservation #144 has checked in', 0, '2026-03-15 03:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_id`, `token`, `expires_at`, `created_at`) VALUES
(1, 20, '612d86f77411899d8b91909f9aa8a6ad05920298df73859eb01ddba937dd5c2b', '2026-04-04 07:36:48', '2026-03-05 06:36:48'),
(2, 5, 'cb5b730ad00b0856c9aa24fb4e64c1562f082138872700014cb9b9210afc6747', '2026-04-05 11:40:19', '2026-03-06 10:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `guest_order_items`
--

CREATE TABLE `guest_order_items` (
  `id` int(11) NOT NULL,
  `guest_reservation_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_order_items`
--

INSERT INTO `guest_order_items` (`id`, `guest_reservation_id`, `menu_item_id`, `quantity`, `unit_price`) VALUES
(1, 12, 8, 1, 200.00),
(2, 25, 11, 1, 710.00),
(3, 28, 20, 1, 25.00),
(4, 34, 20, 1, 25.00),
(5, 35, 3, 1, 300.00),
(6, 37, 9, 1, 385.00),
(7, 37, 17, 1, 25.00),
(8, 37, 20, 1, 25.00),
(9, 37, 21, 1, 55.00),
(10, 39, 8, 1, 200.00),
(11, 41, 8, 3, 200.00),
(12, 42, 8, 1, 200.00),
(13, 43, 17, 3, 25.00),
(14, 44, 8, 3, 200.00),
(15, 46, 8, 8, 200.00),
(16, 47, 17, 1, 25.00),
(17, 47, 9, 1, 385.00),
(18, 48, 1, 1, 375.00),
(19, 49, 1, 1, 375.00),
(20, 50, 8, 1, 200.00),
(21, 52, 8, 1, 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `guest_reservations`
--

CREATE TABLE `guest_reservations` (
  `id` int(11) NOT NULL,
  `reservation_code` varchar(20) NOT NULL,
  `guest_name` varchar(150) NOT NULL,
  `guest_phone` varchar(30) DEFAULT NULL,
  `guest_email` varchar(150) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date NOT NULL,
  `reservation_time` time NOT NULL,
  `guests` int(11) NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) NOT NULL DEFAULT 'Cash',
  `payment_status` varchar(30) NOT NULL DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_reservations`
--

INSERT INTO `guest_reservations` (`id`, `reservation_code`, `guest_name`, `guest_phone`, `guest_email`, `table_id`, `reservation_date`, `reservation_time`, `guests`, `notes`, `status`, `created_at`, `payment_method`, `payment_status`) VALUES
(53, 'RSV-69485', 'amiz123', '31213123', 'lacdaokiancarlo1@gmail.com', 3, '2026-03-16', '11:00:00', 2, '', 'Completed', '2026-03-15 18:06:53', 'Cash', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `menu_bundles`
--

CREATE TABLE `menu_bundles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pax` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_bundles`
--

INSERT INTO `menu_bundles` (`id`, `name`, `pax`, `description`, `price`, `is_available`, `image_url`, `created_at`) VALUES
(1, 'NIGGERS', 2, 'FOR NIGGERS ONLY', 6969.00, 1, 'menu_69ac538ecf4902.31230008.jpg', '2026-03-08 00:20:11'),
(2, 'many', 2, 'dadada', 123124.00, 1, 'menu_69b596384d0c23.72018162.jpg', '2026-03-15 01:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_bundle_items`
--

CREATE TABLE `menu_bundle_items` (
  `id` int(11) NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_bundle_items`
--

INSERT INTO `menu_bundle_items` (`id`, `bundle_id`, `item_id`, `qty`) VALUES
(7, 1, 12, 1),
(8, 1, 18, 1),
(9, 1, 20, 1),
(10, 1, 14, 1),
(11, 1, 1, 1),
(12, 1, 2, 1),
(13, 1, 9, 1),
(14, 2, 26, 1),
(15, 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `category` varchar(60) NOT NULL DEFAULT 'Main Dish',
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `is_bundle` tinyint(1) NOT NULL DEFAULT 0,
  `bundle_pax` tinyint(4) DEFAULT NULL,
  `bundle_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bundle_items`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `category`, `price`, `description`, `is_available`, `is_bundle`, `bundle_pax`, `bundle_items`, `created_at`, `updated_at`, `image_url`) VALUES
(1, 'Chicken Relleno', 'Main Dish', 375.00, 'Savory stuffed chicken with flavorful filling.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:46:03', 'menu_69aabe7b4091d0.55086646.png'),
(2, 'Chicken Pastil', 'Main Dish', 150.00, 'Flavorful shredded chicken over steamed rice', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:45:47', 'menu_69aabe6b1c12e7.95849719.png'),
(3, 'Dinulutan A Seda', 'Main Dish', 300.00, 'Assorted Filipino grilled dishes served on a platter.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:46:41', 'menu_69aabea1a0ecf0.88803657.png'),
(4, 'Humba De Oro', 'Main Dish', 135.00, 'Rich braised pork in sweet savory sauce.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:47:27', 'menu_69aabecfa47f05.38692238.png'),
(5, 'Lamb Kulma', 'Main Dish', 560.00, 'Tender lamb simmered in rich curry spice', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-08 00:21:29', 'menu_69aabefe4d4c95.97643595.png'),
(6, 'Surol Chicken', 'Main Dish', 580.00, 'Chicken cooked in creamy coconut ginger sauce', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 21:18:20', 'menu_69aad41cf2d737.03870801.png'),
(7, 'Chicken Barbeque Salad', 'Appetizers', 450.00, 'Grilled barbecue chicken with fresh garden salad', 0, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-07 02:12:35', '7.jpg'),
(8, 'Pako Salad', 'Appetizers', 200.00, 'Fresh fern salad with tomatoes and onions.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-08 00:20:39', '8.jpg'),
(9, 'Tuna Flakes Salad', 'Appetizers', 385.00, 'Light salad with seasoned tuna and fresh vegetables.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:22:22', '9.jpg'),
(10, 'Sinigang Na Baboy', 'Soups', 299.00, 'Savory pork soup with tamarind and vegetable', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:22:22', '10.jpg'),
(11, 'Tiger Prawns Sinigang', 'Soups', 710.00, 'Tangy tamarind soup with succulent tiger prawns', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-07 23:19:03', '11.jpg'),
(12, 'Tinalong Manok', 'Soups', 330.00, 'Tender chicken stewed with eggplant and savory spices.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 19:22:22', '12.jpg'),
(13, 'Tiyula Itum', 'Soups', 350.00, 'Blackened beef or chicken stew with smoky spices.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 22:26:13', 'menu_69aabf119c6b72.72730422.png'),
(14, 'Bamboo Rice', 'Main Dish', 150.00, 'Fragrant rice cooked inside fresh bamboo for smoky flavo', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 22:25:18', 'menu_69aad4270124f1.17502944.png'),
(15, 'Pancit Itum', 'Main Dish', 315.00, 'Stir-fried noodles with squid ink and savory toppings.', 1, 0, NULL, NULL, '2026-02-24 02:22:01', '2026-03-06 22:25:18', 'menu_69aabe1581d429.31166338.png'),
(16, 'Gising Gising', 'Main Dish', 140.00, 'Spicy sautéed vegetables with ground meat in coconut sauce', 1, 0, NULL, NULL, '2026-03-05 13:49:05', '2026-03-06 19:47:19', 'menu_69aabec7e2ca29.35455247.png'),
(17, 'Bottled Water', 'Beverages', 25.00, '', 1, 0, NULL, NULL, '2026-03-05 13:51:03', '2026-03-07 12:01:30', 'menu_69aabe2a4e8695.99506458.jpg'),
(18, 'Passion cooler', 'Beverages', 239.00, 'Refreshing drink with sweet passion fruit and ice.', 1, 0, NULL, NULL, '2026-03-05 13:55:06', '2026-03-06 22:25:18', 'menu_69aabe4cd85ce3.89862160.jpg'),
(20, 'Coke', 'Beverages', 25.00, 'Classic carbonated cola, crisp and refreshing.', 1, 0, NULL, NULL, '2026-03-05 13:59:53', '2026-03-06 22:25:18', 'menu_69aabe30e08588.58469862.jpg'),
(21, 'Magic potion', 'Beverages', 55.00, 'Vibrant fruity drink with a sparkling, refreshing twist.', 1, 0, NULL, NULL, '2026-03-05 14:01:30', '2026-03-06 22:25:18', 'menu_69aabe36563e27.34605262.jpg'),
(22, 'Pineapple', 'Beverages', 35.00, 'Freshly squeezed pineapple, sweet and tangy.', 1, 0, NULL, NULL, '2026-03-05 14:02:37', '2026-03-06 22:25:18', 'menu_69aabe5b1c0cc0.00871215.jpg'),
(23, 'Nestea', 'Beverages', 45.00, 'Chilled iced tea with a light, refreshing flavor', 1, 0, NULL, NULL, '2026-03-05 14:04:43', '2026-03-06 22:25:18', 'menu_69aabe3c2bae93.53796577.jpg'),
(24, 'epoy', 'Main Dish', 1000.00, '', 0, 0, NULL, NULL, '2026-03-06 19:08:44', '2026-03-07 22:07:41', 'menu_69aac59bb5c973.94319285.jpg'),
(25, 'KIAN', 'Appetizers', 6969.00, 'LAMI SI KIAN', 0, 0, NULL, NULL, '2026-03-07 01:20:24', '2026-03-07 23:15:39', 'menu_69ab0cd8e008f1.37890267.jpg'),
(26, 'dada', 'Appetizers', 10.10, 'its delison', 1, 0, NULL, NULL, '2026-03-15 00:34:36', '2026-03-15 00:34:36', 'menu_69b58e1cce10a0.21739578.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT 'Cash',
  `payment_status` enum('unpaid','paid','verified') NOT NULL DEFAULT 'unpaid',
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `service_fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('Pending','Preparing','Ready','Served','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `reservation_id`, `payment_method`, `payment_status`, `total`, `subtotal`, `service_fee`, `vat`, `status`, `created_at`, `updated_at`) VALUES
(51, 5, NULL, 'GCash', 'unpaid', 230.00, 200.00, 10.00, 20.00, 'Pending', '2026-03-15 17:31:18', '2026-03-15 17:31:18'),
(52, 5, NULL, 'Cash', 'unpaid', 86.25, 75.00, 3.75, 7.50, 'Pending', '2026-03-15 17:38:43', '2026-03-15 17:38:43'),
(53, 5, NULL, 'GCash', 'unpaid', 690.00, 600.00, 30.00, 60.00, 'Pending', '2026-03-15 17:54:04', '2026-03-15 17:54:04'),
(54, 5, NULL, 'GCash', 'unpaid', 1840.00, 1600.00, 80.00, 160.00, 'Pending', '2026-03-15 18:13:10', '2026-03-15 18:13:10'),
(55, 5, NULL, 'GCash', 'unpaid', 471.50, 410.00, 20.50, 41.00, 'Pending', '2026-03-15 18:44:51', '2026-03-15 18:44:51'),
(56, 5, NULL, 'GCash', 'unpaid', 672.75, 585.00, 29.25, 58.50, 'Pending', '2026-03-15 18:49:01', '2026-03-15 18:49:01'),
(57, 5, NULL, 'GCash', 'unpaid', 431.25, 375.00, 18.75, 37.50, 'Pending', '2026-03-15 18:53:30', '2026-03-15 18:53:30'),
(58, 5, NULL, 'GCash', 'unpaid', 431.25, 375.00, 18.75, 37.50, 'Pending', '2026-03-15 19:21:03', '2026-03-15 19:21:03'),
(59, 5, NULL, 'GCash', 'unpaid', 230.00, 200.00, 10.00, 20.00, 'Pending', '2026-03-15 20:04:00', '2026-03-15 20:04:00'),
(60, 5, NULL, 'GCash', 'unpaid', 230.00, 200.00, 10.00, 20.00, 'Pending', '2026-03-16 01:11:29', '2026-03-16 01:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `menu_item_id`, `quantity`, `unit_price`) VALUES
(88, 51, 8, 1, 200.00),
(89, 52, 17, 3, 25.00),
(90, 53, 8, 3, 200.00),
(91, 54, 8, 8, 200.00),
(92, 55, 17, 1, 25.00),
(93, 55, 9, 1, 385.00),
(94, 56, 8, 1, 200.00),
(95, 56, 9, 1, 385.00),
(96, 57, 1, 1, 375.00),
(97, 58, 1, 1, 375.00),
(98, 59, 8, 1, 200.00),
(99, 60, 8, 1, 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_proofs`
--

CREATE TABLE `payment_proofs` (
  `id` int(11) NOT NULL,
  `source_type` enum('order','guest_reservation') NOT NULL,
  `source_id` int(11) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','verified','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_proofs`
--

INSERT INTO `payment_proofs` (`id`, `source_type`, `source_id`, `file_path`, `uploaded_at`, `status`) VALUES
(1, 'guest_reservation', 48, 'Assets/uploads/payment_proofs/guest_reservation_48_1773572015.png', '2026-03-15 18:53:35', 'pending'),
(2, 'guest_reservation', 49, 'Assets/uploads/payment_proofs/guest_reservation_49_1773573667.png', '2026-03-15 19:21:07', 'verified'),
(3, 'guest_reservation', 50, 'Assets/uploads/payment_proofs/guest_reservation_50_1773576246.png', '2026-03-15 20:04:06', 'pending'),
(4, 'guest_reservation', 51, 'Assets/uploads/payment_proofs/guest_reservation_51_1773581885.jfif', '2026-03-15 21:38:05', 'pending'),
(5, 'guest_reservation', 52, 'Assets/uploads/payment_proofs/guest_reservation_52_1773594694.jfif', '2026-03-16 01:11:34', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_time` varchar(20) NOT NULL,
  `guests` int(11) NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `status` enum('Pending','Approved','Confirmed','Check-in','Completed','Cancelled','No-Show') NOT NULL DEFAULT 'Pending',
  `assigned_staff` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `approved_by_id` int(11) DEFAULT NULL,
  `checkin_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `table_id`, `reservation_date`, `reservation_time`, `guests`, `notes`, `status`, `assigned_staff`, `created_at`, `updated_at`, `approved_by_id`, `checkin_time`) VALUES
(156, 5, 3, '2026-03-16', '12:00:00', 2, '', 'Completed', NULL, '2026-03-16 02:07:46', '2026-03-16 02:44:55', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `label` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 4,
  `zone` enum('window','interior') NOT NULL DEFAULT 'interior',
  `status` enum('available','reserved','occupied','cleaning','maintenance') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `label`, `capacity`, `zone`, `status`) VALUES
(1, 'T1', 4, 'window', 'available'),
(2, 'T2', 6, 'window', 'available'),
(3, 'T3', 2, 'window', 'available'),
(4, 'T4', 7, 'window', 'available'),
(5, 'T5', 4, 'interior', 'available'),
(6, 'T6', 6, 'interior', 'available'),
(7, 'T7', 4, 'interior', 'available'),
(8, 'T8', 6, 'interior', 'available'),
(9, 'T9', 7, 'interior', 'available'),
(10, 'T10', 4, 'interior', 'available'),
(11, 'T11', 4, 'interior', 'available'),
(12, 'T12', 4, 'interior', 'available'),
(13, 'T13', 4, 'window', 'available'),
(14, 'T14', 10, '', 'available'),
(15, 'T15', 4, '', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','staff','customer') NOT NULL DEFAULT 'customer',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `contact_number`, `address`, `password_hash`, `role`, `status`, `profile_photo`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Kian Carlo', 'lala@gmail.com', '09170000001', 'Cagayan de Oro', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'admin', 'active', NULL, '2026-02-24 02:22:01', '2026-02-25 00:17:24'),
(2, 'juan_cruz', 'Juan Cruz', 'juan@higala.com', '09191234567', 'Cagayan de Oro', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'staff', 'active', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(3, 'ana_lim', 'Ana Lim', 'ana@higala.com', '09201234567', 'Cagayan de Oro', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'staff', 'active', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(4, 'mark_torres', 'Mark Torres', 'mark@higala.com', '09211234567', 'Cagayan de Oro', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'staff', 'active', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(5, 'maria_s', 'Maria Santos GWAPA', 'kielcyruslacdao6@gmail.com', '09171234567', 'Iligan City', '$2y$12$EwYTdJLMB5.ZlSRlUeGbbeFiE5J8xf13LNTVqEGhnDOQylYW/rD3i', 'customer', 'active', NULL, '2026-02-24 02:22:01', '2026-03-15 11:58:08'),
(6, 'pedro_r', 'Pedro Reyes', 'pedro@email.com', '09181234567', 'CDO City', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'customer', 'active', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(7, 'elena_g', 'Elena Gomez', 'elena@email.com', '09221234567', 'Misamis', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'customer', 'inactive', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(8, 'carlos_b', 'Carlos Bautista', 'carlos@email.com', '09231234567', 'CDO City', '$2y$12$tDduB6CokxAf/VwD7AFHb.eIIMSwxmT9jgfJPDUrnU0EIi5fpwwk.', 'customer', 'active', NULL, '2026-02-24 02:22:01', '2026-02-24 02:45:46'),
(19, 'kian_1234', 'kiancarlo', 'abogartbalitug@gmail.com', '09487420360', 'Macabalan, Cagayan De Oro City', '$2y$10$xebJcBsfwgAKW5KhooEZiuGPwQaflfbk.acvq9No4WVOrUj5obOsK', 'customer', 'active', NULL, '2026-03-05 00:58:08', '2026-03-05 13:01:13'),
(20, 'japol1234', 'JHAY PAUL YAMSON', 'jhca.yamson.coc@phinamed.con', '09365554712', 'bonbkn', '$2y$10$3MCDAUOqLHkwA2BB3DlQ/erhpEurKz63nsxSBWauOv8jFvFnx5qn.', 'customer', 'active', NULL, '2026-03-05 14:36:12', '2026-03-05 14:36:12'),
(21, 'john02', 'John gaubtan', 'dexterjohngabutan@gmail.com', '093450234', 'opol', '$2y$12$WRyjzkiKLqru9KQsg8EzIeZH1TEDb4sBZlPATGCxDH16TboiBf8zi', 'customer', 'active', NULL, '2026-03-05 15:32:12', '2026-03-05 15:32:12'),
(22, 'amzi123', 'Kian Lacdao', 'lacdaokiancarlo1@gmail.com', '09487420360', NULL, '$2y$10$lvf6Kne4GIkc98XyAP4fk.CeY3IZ6MXSG2PmM9kuR8QDg69SYii5i', 'customer', 'active', NULL, '2026-03-14 23:01:04', '2026-03-14 23:01:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `guest_order_items`
--
ALTER TABLE `guest_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_goi_reservation` (`guest_reservation_id`),
  ADD KEY `fk_goi_menu_item` (`menu_item_id`);

--
-- Indexes for table `guest_reservations`
--
ALTER TABLE `guest_reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_code` (`reservation_code`),
  ADD UNIQUE KEY `uq_reservation_code` (`reservation_code`);

--
-- Indexes for table `menu_bundles`
--
ALTER TABLE `menu_bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_bundle_items`
--
ALTER TABLE `menu_bundle_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_id` (`bundle_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `menu_item_id` (`menu_item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `email_idx` (`email`);

--
-- Indexes for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_source` (`source_type`,`source_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `assigned_staff` (`assigned_staff`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1224;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest_order_items`
--
ALTER TABLE `guest_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `guest_reservations`
--
ALTER TABLE `guest_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `menu_bundles`
--
ALTER TABLE `menu_bundles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_bundle_items`
--
ALTER TABLE `menu_bundle_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_bundle_items`
--
ALTER TABLE `menu_bundle_items`
  ADD CONSTRAINT `menu_bundle_items_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `menu_bundles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`id`),
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`assigned_staff`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
