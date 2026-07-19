-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2026 at 07:40 PM
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
(1280, 1, 'Logged out', NULL, NULL, '::1', '2026-03-17 02:06:14'),
(1281, NULL, 'Guest pre-order #66 for reservation RSV-54849 by admin', 'orders', 66, '::1', '2026-03-17 02:07:01'),
(1282, NULL, 'Guest reservation RSV-54849 booked by admin', 'guest_reservations', 59, '::1', '2026-03-17 02:07:01'),
(1283, NULL, 'Guest pre-order #67 for reservation RSV-82829 by admin', 'orders', 67, '::1', '2026-03-17 02:29:18'),
(1284, NULL, 'Guest reservation RSV-82829 booked by admin', 'guest_reservations', 60, '::1', '2026-03-17 02:29:19'),
(1285, 5, 'Reservation #160 created', 'reservations', 160, '::1', '2026-03-17 02:30:19'),
(1286, 5, 'Logged out', NULL, NULL, '::1', '2026-03-17 02:30:24'),
(1287, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 02:30:54'),
(1288, 3, 'Staff updated reservation #160 to Approved', 'reservations', 160, '::1', '2026-03-17 02:31:00'),
(1289, 3, 'Staff updated reservation #160 to Check-in', 'reservations', 160, '::1', '2026-03-17 02:31:07'),
(1290, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 03:11:58'),
(1291, 3, 'Logged out', NULL, NULL, '::1', '2026-03-17 03:26:42'),
(1292, NULL, 'Guest pre-order #68 for reservation RSV-59920 by admin', 'orders', 68, '::1', '2026-03-17 03:27:11'),
(1293, NULL, 'Guest reservation RSV-59920 booked by admin', 'guest_reservations', 61, '::1', '2026-03-17 03:27:11'),
(1294, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 03:27:55'),
(1295, 3, 'Staff updated guest reservation #61 to Approved', 'guest_reservations', 61, '::1', '2026-03-17 03:34:17'),
(1296, 3, 'Staff updated guest reservation #61 to Check-in', 'guest_reservations', 61, '::1', '2026-03-17 03:34:22'),
(1297, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 03:50:17'),
(1298, NULL, 'Guest pre-order #69 for reservation RSV-83161 by Kian', 'orders', 69, '::1', '2026-03-17 03:53:48'),
(1299, NULL, 'Guest reservation RSV-83161 booked by Kian', 'guest_reservations', 62, '::1', '2026-03-17 03:53:48'),
(1300, 3, 'Staff updated reservation #160 to Completed', 'reservations', 160, '::1', '2026-03-17 04:08:28'),
(1301, 3, 'Staff updated guest reservation #61 to Completed', 'guest_reservations', 61, '::1', '2026-03-17 04:08:52'),
(1302, 3, 'Guest payment verified for reservation #60', 'guest_reservations', 60, '::1', '2026-03-17 04:09:05'),
(1303, 3, 'Logged out', NULL, NULL, '::1', '2026-03-17 04:09:42'),
(1304, 1, 'Login successful', 'users', 1, '::1', '2026-03-17 04:10:37'),
(1305, 1, 'Order #69 set to Preparing', 'orders', 69, '::1', '2026-03-17 04:10:54'),
(1306, 1, 'Order #69 set to Ready', 'orders', 69, '::1', '2026-03-17 04:10:55'),
(1307, 1, 'Order #69 set to Served', 'orders', 69, '::1', '2026-03-17 04:10:56'),
(1308, 1, 'Order #69 set to Completed', 'orders', 69, '::1', '2026-03-17 04:10:57'),
(1309, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 04:25:31'),
(1310, 1, 'Staff updated guest reservation #59 to Approved', 'guest_reservations', 59, '::1', '2026-03-17 04:42:09'),
(1311, 1, 'Staff updated guest reservation #62 to Approved', 'guest_reservations', 62, '::1', '2026-03-17 04:42:13'),
(1312, 1, 'Staff updated guest reservation #60 to Approved', 'guest_reservations', 60, '::1', '2026-03-17 04:42:18'),
(1313, 1, 'Staff updated guest reservation #60 to Check-in', 'guest_reservations', 60, '::1', '2026-03-17 04:45:08'),
(1314, 1, 'Staff updated guest reservation #60 to Completed', 'guest_reservations', 60, '::1', '2026-03-17 04:45:19'),
(1315, 3, 'Logged out', NULL, NULL, '::1', '2026-03-17 11:43:34'),
(1316, 1, 'Login successful', 'users', 1, '::1', '2026-03-17 11:43:54'),
(1317, 1, 'Admin inactive user: Kian Lacdao', 'users', 22, '::1', '2026-03-17 11:44:00'),
(1318, 1, 'Staff updated guest reservation #59 to Check-in', 'guest_reservations', 59, '::1', '2026-03-17 11:44:10'),
(1319, 1, 'Table #1 set to available', 'restaurant_tables', 1, '::1', '2026-03-17 11:44:36'),
(1320, 1, 'Table #2 set to available', 'restaurant_tables', 2, '::1', '2026-03-17 11:44:36'),
(1321, 1, 'Table #3 set to available', 'restaurant_tables', 3, '::1', '2026-03-17 11:44:36'),
(1322, 1, 'Table #4 set to available', 'restaurant_tables', 4, '::1', '2026-03-17 11:44:36'),
(1323, 1, 'Table #5 set to available', 'restaurant_tables', 5, '::1', '2026-03-17 11:44:36'),
(1324, 1, 'Table #6 set to available', 'restaurant_tables', 6, '::1', '2026-03-17 11:44:36'),
(1325, 1, 'Table #7 set to available', 'restaurant_tables', 7, '::1', '2026-03-17 11:44:36'),
(1326, 1, 'Table #8 set to available', 'restaurant_tables', 8, '::1', '2026-03-17 11:44:36'),
(1327, 1, 'Table #9 set to available', 'restaurant_tables', 9, '::1', '2026-03-17 11:44:36'),
(1328, 1, 'Table #10 set to available', 'restaurant_tables', 10, '::1', '2026-03-17 11:44:36'),
(1329, 1, 'Table #11 set to available', 'restaurant_tables', 11, '::1', '2026-03-17 11:44:37'),
(1330, 1, 'Table #12 set to available', 'restaurant_tables', 12, '::1', '2026-03-17 11:44:37'),
(1331, 1, 'Table #13 set to available', 'restaurant_tables', 13, '::1', '2026-03-17 11:44:37'),
(1332, 1, 'Table #14 set to available', 'restaurant_tables', 14, '::1', '2026-03-17 11:44:37'),
(1333, 1, 'Table #15 set to available', 'restaurant_tables', 15, '::1', '2026-03-17 11:44:37'),
(1334, 1, 'Logged out', NULL, NULL, '::1', '2026-03-17 11:47:16'),
(1335, NULL, 'Guest pre-order #70 for reservation RSV-40926 by Kian', 'orders', 70, '::1', '2026-03-17 11:48:12'),
(1336, NULL, 'Guest reservation RSV-40926 booked by Kian', 'guest_reservations', 63, '::1', '2026-03-17 11:48:12'),
(1337, 1, 'Login successful', 'users', 1, '::1', '2026-03-17 11:54:48'),
(1338, 1, 'Admin verified guest payment for reservation #63', 'guest_reservations', 63, '::1', '2026-03-17 12:06:57'),
(1339, 3, 'Login successful', 'users', 3, '::1', '2026-03-17 12:11:44'),
(1340, 3, 'Logged out', NULL, NULL, '::1', '2026-03-17 22:22:28'),
(1341, NULL, 'Logged out', NULL, NULL, '::1', '2026-03-17 22:32:09'),
(1342, 5, 'Login successful', 'users', 5, '::1', '2026-03-17 22:32:26'),
(1343, 5, 'Logged out', NULL, NULL, '::1', '2026-03-17 22:33:08'),
(1344, 1, 'Login successful', 'users', 1, '::1', '2026-03-17 23:49:47'),
(1345, 1, 'Admin active user: Kian Lacdao', 'users', 22, '::1', '2026-03-17 23:50:06'),
(1346, 1, 'Staff updated guest reservation #59 to Completed', 'guest_reservations', 59, '::1', '2026-03-17 23:50:14'),
(1347, 1, 'Staff updated guest reservation #62 to Check-in', 'guest_reservations', 62, '::1', '2026-03-17 23:50:16'),
(1348, 1, 'Staff updated guest reservation #63 to Cancelled', 'guest_reservations', 63, '::1', '2026-03-17 23:57:58'),
(1349, 1, 'Staff updated guest reservation #62 to Completed', 'guest_reservations', 62, '::1', '2026-03-17 23:58:04'),
(1350, 1, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:12:27'),
(1351, 5, 'Login successful', 'users', 5, '::1', '2026-03-18 00:12:49'),
(1352, 5, 'Reservation #161 created', 'reservations', 161, '::1', '2026-03-18 00:14:14'),
(1353, 5, 'Cancelled reservation', 'reservations', 161, '::1', '2026-03-18 00:21:59'),
(1354, 5, 'Customer cancelled order #70', 'orders', 70, '::1', '2026-03-18 00:22:19'),
(1355, 5, 'Reservation #162 created', 'reservations', 162, '::1', '2026-03-18 00:32:32'),
(1356, 5, 'Placed order #71 via Cash', 'orders', 71, '::1', '2026-03-18 00:32:48'),
(1357, 5, 'Cancelled reservation', 'reservations', 162, '::1', '2026-03-18 00:33:04'),
(1358, 5, 'Login successful', 'users', 5, '::1', '2026-03-18 00:49:19'),
(1359, 5, 'Reservation #163 created', 'reservations', 163, '::1', '2026-03-18 00:49:32'),
(1360, 5, 'Placed order #72 via GCash', 'orders', 72, '::1', '2026-03-18 00:50:15'),
(1361, 5, 'Payment proof uploaded for order #72', 'order', 72, '::1', '2026-03-18 00:50:16'),
(1362, 5, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:50:20'),
(1363, 3, 'Login successful', 'users', 3, '::1', '2026-03-18 00:50:38'),
(1364, 3, 'Staff updated reservation #163 to Approved', 'reservations', 163, '::1', '2026-03-18 00:50:46'),
(1365, 3, 'Staff updated reservation #163 to Check-in', 'reservations', 163, '::1', '2026-03-18 00:50:54'),
(1366, 3, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:53:16'),
(1367, 1, 'Login successful', 'users', 1, '::1', '2026-03-18 00:53:36'),
(1368, 1, 'Reservation #163 updated to Completed', 'reservations', 163, '::1', '2026-03-18 00:54:07'),
(1369, 1, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:54:11'),
(1370, 5, 'Login successful', 'users', 5, '::1', '2026-03-18 00:54:35'),
(1371, 5, 'Reservation #164 created', 'reservations', 164, '::1', '2026-03-18 00:54:58'),
(1372, 5, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:55:57'),
(1373, 3, 'Login successful', 'users', 3, '::1', '2026-03-18 00:56:20'),
(1374, 3, 'Logged out', NULL, NULL, '::1', '2026-03-18 00:56:35'),
(1375, 1, 'Login successful', 'users', 1, '::1', '2026-03-18 00:56:49'),
(1376, 1, 'Reservation #164 updated to Approved', 'reservations', 164, '::1', '2026-03-18 01:10:28'),
(1377, 1, 'Reservation #164 updated to Approved', 'reservations', 164, '::1', '2026-03-18 01:10:33'),
(1378, 1, 'Logged out', NULL, NULL, '::1', '2026-03-18 01:18:40'),
(1379, 3, 'Login successful', 'users', 3, '::1', '2026-03-18 01:19:29'),
(1380, 3, 'Staff updated reservation #164 to Check-in', 'reservations', 164, '::1', '2026-03-18 01:19:35'),
(1381, 3, 'Logged out', NULL, NULL, '::1', '2026-03-18 01:19:47'),
(1382, 3, 'Login successful', 'users', 3, '::1', '2026-03-18 01:20:21'),
(1383, 3, 'Logged out', NULL, NULL, '::1', '2026-03-18 01:21:43'),
(1384, 5, 'Login successful', 'users', 5, '::1', '2026-03-18 01:22:05'),
(1385, 5, 'Login successful', 'users', 5, '::1', '2026-03-18 01:22:47'),
(1386, 5, 'Logged out', NULL, NULL, '::1', '2026-03-18 01:24:13');

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
(9, 'order', 'Pre-order #69 has been completed', 0, '2026-03-17 04:10:57'),
(10, 'payment', 'Guest payment verified for reservation #63', 0, '2026-03-17 12:06:57'),
(11, 'reservation', 'Reservation #163 marked as completed', 0, '2026-03-18 00:54:07'),
(12, 'reservation', 'Reservation #164 has been approved', 0, '2026-03-18 01:10:28'),
(13, 'reservation', 'Reservation #164 has been approved', 0, '2026-03-18 01:10:33');

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
(27, 59, 17, 3, 25.00),
(28, 60, 8, 5, 200.00),
(29, 61, 8, 1, 200.00),
(30, 62, 8, 4, 200.00),
(31, 63, 8, 4, 200.00);

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
  `payment_status` varchar(30) NOT NULL DEFAULT 'unpaid',
  `checkin_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_reservations`
--

INSERT INTO `guest_reservations` (`id`, `reservation_code`, `guest_name`, `guest_phone`, `guest_email`, `table_id`, `reservation_date`, `reservation_time`, `guests`, `notes`, `status`, `created_at`, `payment_method`, `payment_status`, `checkin_at`) VALUES
(59, 'RSV-54849', 'admin', '31213123', 'lacdaokiancarlo1@gmail.com', 1, '2026-03-16', '11:00:00', 2, '', 'Completed', '2026-03-16 18:07:01', 'GCash', 'pending_verification', NULL),
(60, 'RSV-82829', 'admin', '31213123', 'abogartbalitug@gmail.com', 1, '2026-03-17', '11:00:00', 2, '', 'Completed', '2026-03-16 18:29:18', 'GCash', 'verified', NULL),
(61, 'RSV-59920', 'admin', '31213123', 'abogartbalitug@gmail.com', 1, '2026-03-17', '13:00:00', 2, '', 'Completed', '2026-03-16 19:27:11', 'GCash', 'pending_verification', NULL),
(62, 'RSV-83161', 'Kian', '09851739370', 'fsfs@gmail.com', 2, '2026-03-16', '12:00:00', 2, '', 'Completed', '2026-03-16 19:53:48', 'GCash', 'pending_verification', NULL),
(63, 'RSV-40926', 'Kian', '09851739370', 'abogartbalitug@gmail.com', 5, '2026-03-18', '11:00:00', 4, '', 'Cancelled', '2026-03-17 03:48:12', 'GCash', 'verified', NULL);

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
(66, 5, NULL, 'GCash', 'unpaid', 86.25, 75.00, 3.75, 7.50, 'Pending', '2026-03-17 02:07:01', '2026-03-17 02:07:01'),
(67, 5, NULL, 'GCash', 'unpaid', 1150.00, 1000.00, 50.00, 100.00, 'Pending', '2026-03-17 02:29:18', '2026-03-17 02:29:18'),
(68, 5, NULL, 'GCash', 'unpaid', 230.00, 200.00, 10.00, 20.00, 'Pending', '2026-03-17 03:27:11', '2026-03-17 03:27:11'),
(69, 5, NULL, 'GCash', 'unpaid', 920.00, 800.00, 40.00, 80.00, 'Completed', '2026-03-17 03:53:48', '2026-03-17 04:10:57'),
(70, 5, NULL, 'GCash', 'unpaid', 920.00, 800.00, 40.00, 80.00, 'Cancelled', '2026-03-17 11:48:12', '2026-03-18 00:22:19'),
(71, 5, 162, 'Cash', 'unpaid', 672.75, 585.00, 29.25, 58.50, 'Pending', '2026-03-18 00:32:47', '2026-03-18 00:32:47'),
(72, 5, 163, 'GCash', '', 603.75, 525.00, 26.25, 52.50, 'Pending', '2026-03-18 00:50:15', '2026-03-18 00:50:16');

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
(105, 66, 17, 3, 25.00),
(106, 67, 8, 5, 200.00),
(107, 68, 8, 1, 200.00),
(108, 69, 8, 4, 200.00),
(109, 70, 8, 4, 200.00),
(110, 71, 8, 1, 200.00),
(111, 71, 9, 1, 385.00),
(112, 72, 9, 1, 385.00),
(113, 72, 22, 4, 35.00);

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
(5, 'guest_reservation', 52, 'Assets/uploads/payment_proofs/guest_reservation_52_1773594694.jfif', '2026-03-16 01:11:34', 'pending'),
(6, 'guest_reservation', 54, 'Assets/uploads/payment_proofs/guest_reservation_54_1773667427.png', '2026-03-16 21:23:47', 'verified'),
(7, 'guest_reservation', 55, 'Assets/uploads/payment_proofs/guest_reservation_55_1773679565.png', '2026-03-17 00:46:05', 'verified'),
(8, 'guest_reservation', 56, 'Assets/uploads/payment_proofs/guest_reservation_56_1773679879.png', '2026-03-17 00:51:19', 'pending'),
(9, 'guest_reservation', 57, 'Assets/uploads/payment_proofs/guest_reservation_57_1773680142.png', '2026-03-17 00:55:42', 'pending'),
(10, 'guest_reservation', 58, 'uploads/payment_proofs/guest_reservation_58_1773681085.png', '2026-03-17 01:11:25', 'verified'),
(11, 'guest_reservation', 59, 'uploads/payment_proofs/guest_reservation_59_1773684426.png', '2026-03-17 02:07:06', 'pending'),
(12, 'guest_reservation', 60, 'uploads/payment_proofs/guest_reservation_60_1773685774.png', '2026-03-17 02:29:34', 'verified'),
(13, 'guest_reservation', 61, 'uploads/payment_proofs/guest_reservation_61_1773689235.png', '2026-03-17 03:27:15', 'pending'),
(14, 'guest_reservation', 62, 'uploads/payment_proofs/guest_reservation_62_1773690833.png', '2026-03-17 03:53:53', 'pending'),
(15, 'guest_reservation', 63, 'uploads/payment_proofs/guest_reservation_63_1773719297.png', '2026-03-17 11:48:17', 'verified'),
(16, 'order', 72, 'uploads/payment_proofs/order_72_1773766216.png', '2026-03-18 00:50:16', 'pending');

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
  `checkin_time` datetime DEFAULT NULL,
  `checkin_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `table_id`, `reservation_date`, `reservation_time`, `guests`, `notes`, `status`, `assigned_staff`, `created_at`, `updated_at`, `approved_by_id`, `checkin_time`, `checkin_at`) VALUES
(160, 5, 2, '2026-03-17', '12:00:00', 2, '', 'Completed', NULL, '2026-03-17 02:30:19', '2026-03-17 04:08:28', 3, NULL, NULL),
(161, 5, 1, '2026-03-18', '11:00:00', 2, '', 'Cancelled', NULL, '2026-03-18 00:14:13', '2026-03-18 00:21:59', NULL, NULL, NULL),
(162, 5, 2, '2026-03-18', '11:00:00', 2, '', 'Cancelled', NULL, '2026-03-18 00:32:32', '2026-03-18 00:33:04', NULL, NULL, NULL),
(163, 5, 1, '2026-03-18', '11:00:00', 2, '', 'Completed', NULL, '2026-03-18 00:49:32', '2026-03-18 00:54:07', 3, NULL, '2026-03-18 00:50:54'),
(164, 5, 1, '2026-03-18', '12:00:00', 2, '', 'Check-in', NULL, '2026-03-18 00:54:58', '2026-03-18 01:19:35', 3, NULL, '2026-03-18 01:19:35');

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
(1, 'T1', 2, 'window', 'occupied'),
(2, 'T2', 2, 'window', 'available'),
(3, 'T3', 3, 'window', 'available'),
(4, 'T4', 3, 'window', 'available'),
(5, 'T5', 4, 'interior', 'available'),
(6, 'T6', 4, 'interior', 'available'),
(7, 'T7', 4, 'interior', 'available'),
(8, 'T8', 6, 'interior', 'available'),
(9, 'T9', 6, 'interior', 'available'),
(10, 'T10', 8, 'interior', 'available'),
(11, 'T11', 8, 'interior', 'available'),
(12, 'T12', 5, 'interior', 'available'),
(13, 'T13', 4, 'window', 'available'),
(14, 'T14', 7, 'window', 'available'),
(15, 'T15', 10, 'interior', 'available');

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
(22, 'amzi123', 'Kian Lacdao', 'lacdaokiancarlo1@gmail.com', '09487420360', NULL, '$2y$10$lvf6Kne4GIkc98XyAP4fk.CeY3IZ6MXSG2PmM9kuR8QDg69SYii5i', 'customer', 'active', NULL, '2026-03-14 23:01:04', '2026-03-17 23:50:06');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1387;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest_order_items`
--
ALTER TABLE `guest_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `guest_reservations`
--
ALTER TABLE `guest_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_proofs`
--
ALTER TABLE `payment_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

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
