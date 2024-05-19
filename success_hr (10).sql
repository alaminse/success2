-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 02:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `success_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(14, 'MenuLogs', 'Administrator has been created', 'App\\Models\\Department', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"menu_group\":null,\"menu_icon\":null,\"menu_name\":null,\"menu_path\":null,\"menu_perent\":null,\"menu_status\":null,\"menu_short\":null,\"exception\":null}}', NULL, '2024-02-21 00:52:04', '2024-02-21 00:52:04'),
(15, 'MenuLogs', 'Administrator has been created', 'App\\Models\\Department', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"menu_group\":null,\"menu_icon\":null,\"menu_name\":null,\"menu_path\":null,\"menu_perent\":null,\"menu_status\":null,\"menu_short\":null,\"exception\":null}}', NULL, '2024-02-21 00:52:46', '2024-02-21 00:52:46'),
(16, 'MenuLogs', 'Administrator has been deleted', 'App\\Models\\Department', 'deleted', 14, 'App\\Models\\User', 1, '{\"old\":{\"menu_group\":null,\"menu_icon\":null,\"menu_name\":null,\"menu_path\":null,\"menu_perent\":null,\"menu_status\":null,\"menu_short\":null,\"exception\":null}}', NULL, '2024-02-21 01:57:13', '2024-02-21 01:57:13'),
(17, 'MenuLogs', 'Administrator has been deleted', 'App\\Models\\Department', 'deleted', 15, 'App\\Models\\User', 1, '{\"old\":{\"menu_group\":null,\"menu_icon\":null,\"menu_name\":null,\"menu_path\":null,\"menu_perent\":null,\"menu_status\":null,\"menu_short\":null,\"exception\":null}}', NULL, '2024-02-21 01:57:16', '2024-02-21 01:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `teamleader_id` int(11) DEFAULT NULL,
  `consultent_id` int(11) DEFAULT NULL,
  `remark_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Previous Flowup Id',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `assign_to` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigns`
--

INSERT INTO `assigns` (`id`, `candidate_id`, `manager_id`, `teamleader_id`, `consultent_id`, `remark_id`, `status`, `assign_to`, `update_by`, `created_at`, `updated_at`) VALUES
(178, 147, 120, 122, 126, 0, 0, 1, NULL, '2024-03-04 11:56:00', '2024-03-04 11:56:00'),
(179, 148, 120, 123, NULL, 0, 0, 1, NULL, '2024-03-04 11:56:41', '2024-03-04 11:56:41'),
(180, 149, 120, 122, 125, 0, 0, 1, NULL, '2024-03-04 11:57:09', '2024-03-04 11:57:09'),
(181, 150, 120, 122, 125, 0, 0, 1, NULL, '2024-03-04 12:02:20', '2024-03-04 12:02:20'),
(182, 151, 120, 122, 126, 0, 0, 1, NULL, '2024-03-04 12:02:20', '2024-03-04 12:02:20'),
(183, 152, 120, 122, 125, 0, 0, 1, NULL, '2024-03-04 12:02:20', '2024-03-04 12:02:20'),
(184, 147, 120, 122, 126, 22, 0, 1, NULL, '2024-03-04 12:06:23', '2024-03-04 12:06:23'),
(185, 153, 119, 124, NULL, 0, 0, 101, NULL, '2024-03-04 12:08:40', '2024-03-04 12:08:40'),
(186, 153, 119, 124, NULL, 0, 0, 101, NULL, '2024-03-04 12:10:53', '2024-03-04 12:10:53'),
(187, 153, 119, 124, 128, 22, 0, 101, NULL, '2024-03-04 12:13:05', '2024-03-04 12:13:05'),
(188, 148, 120, 123, NULL, 0, 0, 102, NULL, '2024-03-04 12:14:33', '2024-03-04 12:14:33'),
(189, 147, 120, 122, 126, 22, 0, 1, NULL, '2024-03-04 12:44:39', '2024-03-04 12:44:39'),
(190, 148, 120, 123, NULL, 22, 0, 1, NULL, '2024-03-04 12:48:13', '2024-03-04 12:48:13'),
(191, 154, 119, 124, NULL, 0, 0, 101, NULL, '2024-03-04 12:49:25', '2024-03-04 12:49:25'),
(192, 154, 119, 124, NULL, 22, 0, 101, NULL, '2024-03-04 12:49:37', '2024-03-04 12:49:37'),
(193, 154, 119, 124, 128, 0, 0, 101, NULL, '2024-03-04 12:49:46', '2024-03-04 12:49:46'),
(194, 152, 119, NULL, NULL, 0, 0, 102, NULL, '2024-03-04 12:51:02', '2024-03-04 12:51:02'),
(195, 148, 120, 122, NULL, 0, 0, 102, NULL, '2024-03-04 12:52:02', '2024-03-04 12:52:02'),
(196, 148, 119, 124, 128, 0, 0, 102, NULL, '2024-03-04 12:52:41', '2024-03-04 12:52:41'),
(197, 148, 119, 124, NULL, 0, 0, 102, NULL, '2024-03-04 12:54:43', '2024-03-04 12:54:43'),
(198, 154, 119, 124, 128, 0, 0, 101, NULL, '2024-03-04 12:56:48', '2024-03-04 12:56:48'),
(199, 153, 119, 124, 128, 22, 0, 101, NULL, '2024-03-04 12:57:23', '2024-03-04 12:57:23'),
(200, 153, 119, 124, 128, 99, 0, 101, NULL, '2024-03-04 12:59:29', '2024-03-04 12:59:29'),
(201, 153, 119, 124, 128, 4, 0, 101, NULL, '2024-03-04 13:00:59', '2024-03-04 13:00:59'),
(202, 149, 120, 122, 125, 5, 0, 1, NULL, '2024-03-04 13:07:24', '2024-03-04 13:07:24'),
(203, 151, 120, 122, 126, 0, 0, 108, NULL, '2024-03-07 08:58:44', '2024-03-07 08:58:44'),
(204, 151, 120, 122, 126, 6, 0, 108, NULL, '2024-03-07 08:59:03', '2024-03-07 08:59:03'),
(205, 151, 120, 122, 126, 4, 0, 108, NULL, '2024-03-07 09:08:10', '2024-03-07 09:08:10'),
(206, 151, 120, 122, 126, 5, 0, 108, NULL, '2024-03-07 09:20:53', '2024-03-07 09:20:53'),
(207, 151, 120, 122, 126, 99, 0, 108, NULL, '2024-03-07 09:37:37', '2024-03-07 09:37:37'),
(208, 151, 120, 122, 126, 22, 0, 108, NULL, '2024-03-07 09:39:05', '2024-03-07 09:39:05'),
(209, 149, 120, 122, NULL, 0, 0, 104, NULL, '2024-04-25 05:09:52', '2024-04-25 05:09:52'),
(210, 155, 120, 122, 126, 0, 0, 1, NULL, '2024-04-25 05:12:08', '2024-04-25 05:12:08'),
(211, 155, 120, 122, 126, 5, 0, 104, NULL, '2024-04-25 05:41:01', '2024-04-25 05:41:01'),
(212, 147, 120, 122, 126, 0, 0, 104, NULL, '2024-04-25 05:59:38', '2024-04-25 05:59:38'),
(213, 150, 120, 122, 126, 0, 0, 104, NULL, '2024-04-25 06:00:15', '2024-04-25 06:00:15'),
(214, 156, 120, 122, 126, 0, 0, 104, NULL, '2024-05-02 08:50:14', '2024-05-02 08:50:14'),
(215, 156, 119, NULL, NULL, 0, 0, 1, NULL, '2024-05-02 08:58:27', '2024-05-02 08:58:27'),
(216, 156, 119, NULL, NULL, 0, 0, 1, NULL, '2024-05-02 09:23:45', '2024-05-02 09:23:45'),
(217, 156, 120, NULL, NULL, 0, 0, 1, NULL, '2024-05-02 09:24:00', '2024-05-02 09:24:00'),
(218, 156, 118, NULL, NULL, 4, 0, 1, NULL, '2024-05-02 12:06:45', '2024-05-02 12:06:45'),
(219, 156, 118, NULL, NULL, 4, 0, 1, NULL, '2024-05-02 12:35:34', '2024-05-02 12:35:34'),
(220, 155, NULL, NULL, NULL, 0, 0, 104, NULL, '2024-05-04 06:45:59', '2024-05-04 06:45:59'),
(221, 157, 120, 122, 125, 0, 0, 104, NULL, '2024-05-04 07:28:47', '2024-05-04 07:28:47'),
(222, 158, 120, 122, 125, 0, 0, 104, NULL, '2024-05-04 09:19:22', '2024-05-04 09:19:22'),
(223, 158, 119, 122, 125, 0, 0, 1, NULL, '2024-05-04 11:31:19', '2024-05-04 11:31:19'),
(224, 158, NULL, NULL, NULL, 0, 0, 1, NULL, '2024-05-04 11:44:53', '2024-05-04 11:44:53'),
(225, 158, NULL, NULL, NULL, 0, 0, 1, NULL, '2024-05-04 11:51:48', '2024-05-04 11:51:48'),
(226, 158, NULL, NULL, NULL, 0, 0, 118, NULL, '2024-05-04 12:00:22', '2024-05-04 12:00:22'),
(227, 158, NULL, NULL, NULL, 418, 0, 118, NULL, '2024-05-04 12:13:48', '2024-05-04 12:13:48'),
(228, 158, NULL, NULL, NULL, 419, 0, 118, NULL, '2024-05-04 12:18:43', '2024-05-04 12:18:43'),
(229, 158, NULL, NULL, NULL, 425, 0, 118, NULL, '2024-05-04 13:34:17', '2024-05-04 13:34:17'),
(230, 158, NULL, NULL, NULL, 426, 0, 118, NULL, '2024-05-04 13:34:49', '2024-05-04 13:34:49'),
(231, 158, NULL, NULL, NULL, 427, 0, NULL, NULL, '2024-05-04 13:35:25', '2024-05-04 13:35:25'),
(232, 158, NULL, NULL, NULL, 432, 0, 118, NULL, '2024-05-04 13:38:27', '2024-05-04 13:38:27'),
(235, 159, 120, 122, 125, 0, 0, 104, NULL, '2024-05-04 13:47:10', '2024-05-04 13:47:10'),
(237, 160, 120, 122, 125, 0, 0, 125, NULL, '2024-05-04 13:57:12', '2024-05-04 13:57:12'),
(239, 160, NULL, NULL, NULL, 442, 0, NULL, NULL, '2024-05-04 14:02:23', '2024-05-04 14:02:23'),
(240, 160, NULL, NULL, NULL, 443, 0, NULL, NULL, '2024-05-04 14:04:10', '2024-05-04 14:04:10'),
(241, 160, 120, NULL, NULL, 444, 0, NULL, NULL, '2024-05-04 14:08:55', '2024-05-04 14:08:55'),
(242, 160, 119, NULL, NULL, 445, 0, NULL, NULL, '2024-05-04 14:09:52', '2024-05-04 14:09:52'),
(243, 160, 120, NULL, NULL, 446, 0, NULL, NULL, '2024-05-04 14:11:33', '2024-05-04 14:11:33'),
(244, 160, 119, NULL, NULL, 447, 0, NULL, NULL, '2024-05-04 14:19:09', '2024-05-04 14:19:09'),
(245, 158, 120, NULL, NULL, 0, 0, NULL, 1, '2024-05-04 14:20:18', '2024-05-04 14:30:57'),
(246, 160, 119, NULL, NULL, 449, 0, NULL, NULL, '2024-05-04 14:52:08', '2024-05-04 14:52:08'),
(247, 160, 119, NULL, NULL, 450, 0, NULL, NULL, '2024-05-04 14:53:33', '2024-05-04 14:53:33'),
(248, 160, 119, NULL, NULL, 453, 0, NULL, NULL, '2024-05-04 14:59:38', '2024-05-04 14:59:38'),
(249, 160, 119, NULL, NULL, 459, 0, NULL, NULL, '2024-05-04 15:05:24', '2024-05-04 15:05:24'),
(250, 160, 119, NULL, NULL, 460, 0, NULL, NULL, '2024-05-04 15:21:44', '2024-05-04 15:21:44'),
(251, 161, 120, 131, 134, 0, 0, 134, NULL, '2024-05-05 06:27:23', '2024-05-05 06:27:23'),
(252, 161, 120, NULL, NULL, 473, 0, NULL, NULL, '2024-05-05 06:37:26', '2024-05-05 06:37:26'),
(253, 161, 120, 131, NULL, 474, 0, NULL, NULL, '2024-05-05 06:41:59', '2024-05-05 06:41:59'),
(254, 161, 119, NULL, NULL, 476, 0, NULL, NULL, '2024-05-05 07:06:33', '2024-05-05 07:06:33'),
(255, 161, 120, NULL, NULL, 477, 0, NULL, NULL, '2024-05-05 07:07:51', '2024-05-05 07:07:51'),
(256, 161, 120, 131, NULL, 478, 0, NULL, NULL, '2024-05-05 07:13:23', '2024-05-05 07:13:23'),
(257, 161, 120, 131, NULL, 479, 0, NULL, NULL, '2024-05-05 07:14:48', '2024-05-05 07:14:48'),
(258, 161, 120, 131, NULL, 480, 0, NULL, NULL, '2024-05-05 07:19:10', '2024-05-05 07:19:10'),
(259, 161, 120, 131, NULL, 482, 0, NULL, NULL, '2024-05-05 07:23:30', '2024-05-05 07:23:30'),
(260, 161, 120, 131, NULL, 483, 0, NULL, NULL, '2024-05-05 07:23:47', '2024-05-05 07:23:47'),
(261, 161, 120, 131, NULL, 484, 0, NULL, NULL, '2024-05-05 07:28:25', '2024-05-05 07:28:25'),
(262, 161, 120, 131, NULL, 485, 0, NULL, 1, '2024-05-05 07:29:32', '2024-05-05 07:45:34'),
(263, 161, 120, 131, 134, 486, 0, NULL, NULL, '2024-05-05 08:28:36', '2024-05-05 08:28:36'),
(264, 161, 120, 131, 134, 487, 0, NULL, NULL, '2024-05-05 08:34:34', '2024-05-05 08:34:34'),
(265, 161, 120, 131, 134, 488, 0, NULL, NULL, '2024-05-05 09:08:29', '2024-05-05 09:08:29'),
(266, 161, 120, 131, 134, 489, 0, NULL, NULL, '2024-05-05 09:29:58', '2024-05-05 09:29:58'),
(267, 161, 120, 131, 134, 491, 0, NULL, NULL, '2024-05-05 10:35:26', '2024-05-05 10:35:26'),
(268, 162, 120, 122, 125, 0, 0, 125, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(269, 163, 120, 122, 126, 0, 0, 126, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(270, 164, 120, 122, 125, 0, 0, 125, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(271, 165, 120, 122, 126, 0, 0, 126, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(272, 166, 120, 122, 125, 0, 0, 125, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(273, 167, 120, 122, 125, 0, 0, 125, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(274, 168, 120, 122, 126, 0, 0, 126, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(275, 169, 119, 124, 128, 0, 0, 128, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04'),
(276, 169, 119, 124, 128, 500, 0, NULL, NULL, '2024-05-05 12:17:31', '2024-05-05 12:17:31'),
(277, 169, 119, 124, 128, 501, 0, NULL, NULL, '2024-05-05 12:17:51', '2024-05-05 12:17:51'),
(278, 169, 120, NULL, NULL, 502, 0, NULL, NULL, '2024-05-05 12:20:18', '2024-05-05 12:20:18'),
(279, 170, 120, NULL, 134, 0, 0, 134, NULL, '2024-05-06 08:55:26', '2024-05-06 08:55:26'),
(280, 171, 120, NULL, 134, 0, 0, 134, NULL, '2024-05-06 08:59:38', '2024-05-06 08:59:38'),
(281, 172, 120, 122, 126, 0, 0, 126, NULL, '2024-05-06 09:02:30', '2024-05-06 09:02:30'),
(282, 172, 120, 123, 133, 506, 0, NULL, NULL, '2024-05-06 10:56:58', '2024-05-06 10:56:58'),
(283, 173, 120, 122, 125, 0, 0, 125, NULL, '2024-05-06 11:48:34', '2024-05-06 11:48:34'),
(284, 174, 120, 122, 126, 0, 0, 126, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00'),
(285, 175, 120, 122, 125, 0, 0, 125, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00'),
(286, 176, 120, 122, 126, 0, 0, 126, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00'),
(287, 177, 120, 123, 133, 0, 0, 133, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00'),
(288, 177, 120, 122, 125, 512, 0, NULL, NULL, '2024-05-06 13:59:37', '2024-05-06 13:59:37'),
(289, 174, 120, 122, 126, 513, 0, NULL, NULL, '2024-05-07 09:11:57', '2024-05-07 09:11:57'),
(290, 174, 120, 122, 126, 514, 0, NULL, NULL, '2024-05-18 07:47:31', '2024-05-18 07:47:31'),
(291, 174, 120, 122, 126, 516, 0, NULL, NULL, '2024-05-18 07:57:39', '2024-05-18 07:57:39'),
(292, 174, 120, 122, 126, 517, 0, NULL, NULL, '2024-05-18 08:49:38', '2024-05-18 08:49:38'),
(293, 174, 120, 122, 126, 519, 0, NULL, NULL, '2024-05-18 09:20:58', '2024-05-18 09:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `assign_clients`
--

CREATE TABLE `assign_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_remark_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_clients`
--

INSERT INTO `assign_clients` (`id`, `client_id`, `candidate_remark_id`, `created_at`, `updated_at`) VALUES
(57, 58, 378, '2024-03-04 13:07:24', '2024-03-04 13:07:24'),
(58, 59, 382, '2024-03-07 09:20:53', '2024-03-07 09:20:53'),
(60, 58, 388, '2024-04-25 05:41:01', '2024-04-25 05:41:01'),
(65, 59, 459, '2024-05-04 15:05:24', '2024-05-04 15:05:24'),
(66, 59, 483, '2024-05-05 07:23:47', '2024-05-05 07:23:47'),
(67, 62, 513, '2024-05-07 09:11:57', '2024-05-07 09:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `assign_to_rcs`
--

CREATE TABLE `assign_to_rcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `rc_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_to_rcs`
--

INSERT INTO `assign_to_rcs` (`id`, `candidate_id`, `rc_id`, `created_at`, `updated_at`) VALUES
(10, 153, 128, '2024-03-04 12:10:53', '2024-03-04 12:10:53'),
(11, 148, 126, '2024-03-04 12:14:33', '2024-03-04 12:14:33'),
(12, 154, 128, '2024-03-04 12:49:46', '2024-03-04 12:49:46'),
(13, 154, 128, '2024-03-04 12:56:48', '2024-03-04 12:56:48'),
(14, 147, 126, '2024-04-25 05:59:38', '2024-04-25 05:59:38'),
(15, 150, 126, '2024-04-25 06:00:15', '2024-04-25 06:00:15'),
(16, 161, 134, '2024-05-05 08:28:36', '2024-05-05 08:28:36'),
(17, 161, 134, '2024-05-05 08:34:34', '2024-05-05 08:34:34'),
(18, 172, 133, '2024-05-06 10:56:58', '2024-05-06 10:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(191) NOT NULL,
  `in_time` varchar(191) DEFAULT NULL,
  `out_time` varchar(191) DEFAULT NULL,
  `next_day` varchar(191) NOT NULL DEFAULT '0',
  `lunch_hour` varchar(191) NOT NULL DEFAULT '0',
  `total_hour_min` varchar(191) NOT NULL DEFAULT '0',
  `normal_hour_min` varchar(191) NOT NULL DEFAULT '0',
  `ot_hour_min` varchar(191) NOT NULL DEFAULT '0',
  `ot_calculation` tinyint(4) NOT NULL DEFAULT 0,
  `ot_edit` tinyint(4) NOT NULL DEFAULT 0,
  `work` tinyint(4) NOT NULL DEFAULT 0,
  `ph` tinyint(4) NOT NULL DEFAULT 0,
  `ph_pay` tinyint(4) NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `type_of_leave` varchar(191) DEFAULT NULL,
  `leave_day` varchar(191) DEFAULT NULL,
  `leave_attachment` varchar(191) DEFAULT NULL,
  `claim_attachment` varchar(191) DEFAULT NULL,
  `type_of_reimbursement` varchar(191) DEFAULT NULL,
  `amount_of_reimbursement` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `parent_id`, `date`, `day`, `in_time`, `out_time`, `next_day`, `lunch_hour`, `total_hour_min`, `normal_hour_min`, `ot_hour_min`, `ot_calculation`, `ot_edit`, `work`, `ph`, `ph_pay`, `remark`, `type_of_leave`, `leave_day`, `leave_attachment`, `claim_attachment`, `type_of_reimbursement`, `amount_of_reimbursement`, `created_at`, `updated_at`) VALUES
(1255, 62, '2024-03-01', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1256, 62, '2024-03-02', 'Saturday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1257, 62, '2024-03-03', 'Sunday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1258, 62, '2024-03-04', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1259, 62, '2024-03-05', 'Tuesday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, 'Full Day Leave', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1260, 62, '2024-03-06', 'Wednesday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, 'Full Day Leave', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1261, 62, '2024-03-07', 'Thursday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, 'Full Day Leave', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1262, 62, '2024-03-08', 'Friday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, 'Full Day Leave', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf', '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1263, 62, '2024-03-09', 'Saturday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1264, 62, '2024-03-10', 'Sunday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1265, 62, '2024-03-11', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1266, 62, '2024-03-12', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1267, 62, '2024-03-13', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1268, 62, '2024-03-14', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1269, 62, '2024-03-15', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1270, 62, '2024-03-16', 'Saturday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1271, 62, '2024-03-17', 'Sunday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1272, 62, '2024-03-18', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1273, 62, '2024-03-19', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1274, 62, '2024-03-20', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1275, 62, '2024-03-21', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1276, 62, '2024-03-22', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1277, 62, '2024-03-23', 'Saturday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1278, 62, '2024-03-24', 'Sunday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1279, 62, '2024-03-25', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1280, 62, '2024-03-26', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1281, 62, '2024-03-27', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1282, 62, '2024-03-28', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1283, 62, '2024-03-29', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1284, 62, '2024-03-30', 'Saturday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1285, 62, '2024-03-31', 'Sunday', NULL, NULL, '0', '', '0', '0', '0', 0, 0, 0, 0, 0, NULL, NULL, '', NULL, NULL, '', 0.00, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(1286, 63, '2024-05-01', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1287, 63, '2024-05-02', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1288, 63, '2024-05-03', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1289, 63, '2024-05-04', 'Saturday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1290, 63, '2024-05-05', 'Sunday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1291, 63, '2024-05-06', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1292, 63, '2024-05-07', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1293, 63, '2024-05-08', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1294, 63, '2024-05-09', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1295, 63, '2024-05-10', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1296, 63, '2024-05-11', 'Saturday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1297, 63, '2024-05-12', 'Sunday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1298, 63, '2024-05-13', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1299, 63, '2024-05-14', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1300, 63, '2024-05-15', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1301, 63, '2024-05-16', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1302, 63, '2024-05-17', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1303, 63, '2024-05-18', 'Saturday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1304, 63, '2024-05-19', 'Sunday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1305, 63, '2024-05-20', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1306, 63, '2024-05-21', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1307, 63, '2024-05-22', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1308, 63, '2024-05-23', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1309, 63, '2024-05-24', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1310, 63, '2024-05-25', 'Saturday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1311, 63, '2024-05-26', 'Sunday', NULL, NULL, '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1312, 63, '2024-05-27', 'Monday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1313, 63, '2024-05-28', 'Tuesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1314, 63, '2024-05-29', 'Wednesday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1315, 63, '2024-05-30', 'Thursday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19'),
(1316, 63, '2024-05-31', 'Friday', '10:00', '18:00', '0', '1 hour', '7 h 0 m', '7 h 0 m', '0', 0, 0, 1, 0, 0, NULL, '0', '0', NULL, NULL, '', 0.00, '2024-05-07 09:12:07', '2024-05-07 09:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_parents`
--

CREATE TABLE `attendence_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `month_year` varchar(191) NOT NULL,
  `invoice_no` varchar(191) DEFAULT NULL,
  `isApproved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendence_parents`
--

INSERT INTO `attendence_parents` (`id`, `candidate_id`, `company_id`, `month_year`, `invoice_no`, `isApproved`, `created_at`, `updated_at`) VALUES
(62, 149, 58, '2024-03-05', '0', 0, '2024-03-05 08:39:20', '2024-03-05 08:39:20'),
(63, 174, 62, '2024-05-07', '0', 0, '2024-05-07 09:12:07', '2024-05-07 09:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_no` int(11) NOT NULL,
  `bank_code` varchar(191) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `description` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calanders`
--

CREATE TABLE `calanders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `teamleader_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `candidate_remark_id` int(11) DEFAULT NULL,
  `candidate_remark_shortlist_id` int(11) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calanders`
--

INSERT INTO `calanders` (`id`, `manager_id`, `teamleader_id`, `consultant_id`, `candidate_remark_id`, `candidate_remark_shortlist_id`, `title`, `status`, `date`, `created_at`, `updated_at`) VALUES
(77, 120, 122, 126, 355, NULL, '09:00 AM -C2 - Call Back -Baker Blake', 1, '2024-03-06', '2024-03-04 12:06:23', '2024-03-04 12:06:23'),
(78, 119, 124, 128, 362, NULL, '09:00 AM -C6 - Call Back -df', 1, '2024-03-06', '2024-03-04 12:13:05', '2024-03-04 12:13:05'),
(79, 120, 122, 126, 364, NULL, '09:00 AM -C2 - Call Back -Baker Blake', 1, '2024-03-06', '2024-03-04 12:44:39', '2024-03-04 12:44:39'),
(80, 120, 123, NULL, 366, NULL, '09:00 AM - - Call Back -Steel Beach', 1, '2024-03-06', '2024-03-04 12:48:13', '2024-03-04 12:48:13'),
(81, 119, 124, NULL, 368, NULL, '09:00 AM - - Call Back -bdfhdjkl', 1, '2024-03-06', '2024-03-04 12:49:37', '2024-03-04 12:49:37'),
(82, 119, 124, 128, 375, NULL, '09:00 AM -C6 - Call Back -df', 1, '2024-03-06', '2024-03-04 12:57:23', '2024-03-04 12:57:23'),
(83, 119, 124, 128, 376, 38, 'C6 - Contract Ending - Client 2 - df', 4, '2024-03-25', '2024-03-04 12:59:29', '2024-03-04 12:59:29'),
(84, 119, 124, 128, 376, 38, 'C6 - Shortlisted -Client 2 - df', 2, '2024-03-04', '2024-03-04 12:59:29', '2024-03-04 12:59:29'),
(85, 119, 124, 128, 376, 38, '08:59 PM-C6 - Contact Signing -Client 2 - df', 3, '2024-03-01', '2024-03-04 12:59:29', '2024-03-04 12:59:29'),
(86, 119, 124, 128, 377, 13, '02:34 AM-C6 - Interview -Client 2 - df', 1, '2024-03-07', '2024-03-04 13:00:59', '2024-03-04 13:00:59'),
(87, 120, 122, 125, 378, NULL, '09:00 AM -C1 - 2 Business Days Follow Up with Client -Client 2 - Mariam Hogan', 1, '2024-03-06', '2024-03-04 13:07:24', '2024-03-04 13:07:24'),
(88, 120, 122, 126, 381, 14, '06:00 PM-C2 - Interview -Ezra Malone - FAYSAL HOSSAIN', 1, '2024-03-07', '2024-03-07 09:08:10', '2024-03-07 09:08:10'),
(89, 120, 122, 126, 382, NULL, '09:00 AM -C2 - 2 Business Days Follow Up with Client -Ezra Malone - FAYSAL HOSSAIN', 1, '2024-03-10', '2024-03-07 09:20:53', '2024-03-07 09:20:53'),
(90, 120, 122, 126, 383, 39, 'C2 - Shortlisted -Ezra Malone - FAYSAL HOSSAIN', 2, '2024-03-08', '2024-03-07 09:37:37', '2024-03-07 09:37:37'),
(91, 120, 122, 126, 384, NULL, '09:00 AM -C2 - Call Back -FAYSAL HOSSAIN', 1, '2024-03-10', '2024-03-07 09:39:05', '2024-03-07 09:39:05'),
(92, 120, 122, 126, 388, NULL, '09:00 AM -C2 - 2 Business Days Follow Up with Client -Client 2 - Test', 1, '2024-04-28', '2024-04-25 05:41:01', '2024-04-25 05:41:01'),
(93, 120, NULL, NULL, 410, 25, '04:06 PM- - Interview -Ezra Malone - Test', 1, '2024-05-01', '2024-05-02 12:06:45', '2024-05-02 12:06:45'),
(94, 120, NULL, NULL, 411, 26, '02:22 PM- - Interview -Client 2 - Test', 1, '2024-02-02', '2024-05-02 12:35:33', '2024-05-02 12:35:33'),
(95, 119, NULL, NULL, 449, 27, '06:51 PM- - Interview -Client 2 - Test3', 1, '2024-05-10', '2024-05-04 14:52:08', '2024-05-04 14:52:08'),
(96, 119, NULL, NULL, 450, 28, '06:53 PM- - Interview -Ezra Malone - Test3', 1, '2024-05-03', '2024-05-04 14:53:33', '2024-05-04 14:53:33'),
(97, 119, NULL, NULL, 453, 29, '07:57 PM- - Interview -Ezra Malone - Test3', 1, '2024-05-02', '2024-05-04 14:59:38', '2024-05-04 14:59:38'),
(98, 119, NULL, NULL, 459, NULL, '09:00 AM - - 2 Business Days Follow Up with Client -Ezra Malone - Test3', 1, '2024-05-08', '2024-05-04 15:05:24', '2024-05-04 15:05:24'),
(99, 119, NULL, NULL, 460, 40, ' - Contract Ending - Ezra Malone - Test3', 4, '2024-05-01', '2024-05-04 15:21:44', '2024-05-04 15:21:44'),
(100, 119, NULL, NULL, 460, 40, ' - Shortlisted -Ezra Malone - Test3', 2, '2024-05-21', '2024-05-04 15:21:44', '2024-05-04 15:21:44'),
(101, 119, NULL, NULL, 460, 40, '09:21 PM- - Contact Signing -Ezra Malone - Test3', 3, '2024-05-22', '2024-05-04 15:21:44', '2024-05-04 15:21:44'),
(102, 120, 131, NULL, 479, 30, '12:14 AM- - Interview -Ezra Malone - New Candidate 1', 1, '2024-05-04', '2024-05-05 07:14:48', '2024-05-05 07:14:48'),
(103, 120, 131, NULL, 480, 31, '12:18 AM- - Interview -Client 2 - New Candidate 1', 1, '2024-05-03', '2024-05-05 07:19:09', '2024-05-05 07:19:09'),
(104, 120, 131, NULL, 482, 32, '12:21 AM- - Interview -Ezra Malone - New Candidate 1', 1, '2024-05-04', '2024-05-05 07:23:30', '2024-05-05 07:23:30'),
(105, 120, 131, NULL, 483, NULL, '09:00 AM - - 2 Business Days Follow Up with Client -Ezra Malone - New Candidate 1', 1, '2024-05-07', '2024-05-05 07:23:47', '2024-05-05 07:23:47'),
(106, 120, 131, NULL, 484, 33, '04:53 AM- - Interview -Client 1 - New Candidate 1', 1, '2024-05-06', '2024-05-05 07:28:25', '2024-05-05 07:28:25'),
(107, 120, 131, NULL, 485, 41, ' - Contract Ending - Client 1 - New Candidate 1', 4, '2024-05-01', '2024-05-05 07:29:32', '2024-05-05 07:29:32'),
(108, 120, 131, NULL, 485, 41, ' - Shortlisted -Client 1 - New Candidate 1', 2, '2024-05-06', '2024-05-05 07:29:32', '2024-05-05 07:29:32'),
(109, 120, 131, NULL, 485, 41, '01:29 PM- - Contact Signing -Client 1 - New Candidate 1', 3, '2024-05-06', '2024-05-05 07:29:32', '2024-05-05 07:29:32'),
(110, 120, 131, 134, 488, 42, 'AT - Contract Ending - Client 1 - New Candidate 1', 4, '2024-05-01', '2024-05-05 09:08:29', '2024-05-05 09:08:29'),
(111, 120, 131, 134, 488, 42, 'AT - Shortlisted -Client 1 - New Candidate 1', 2, '2024-05-11', '2024-05-05 09:08:29', '2024-05-05 09:08:29'),
(112, 120, 131, 134, 488, 42, '03:08 PM-AT - Contact Signing -Client 1 - New Candidate 1', 3, '2024-05-07', '2024-05-05 09:08:29', '2024-05-05 09:08:29'),
(113, 120, 131, 134, 489, 43, 'AT - Contract Ending - Ezra Malone - New Candidate 1', 4, '2024-04-24', '2024-05-05 09:29:58', '2024-05-05 09:29:58'),
(114, 120, 131, 134, 489, 43, 'AT - Shortlisted -Ezra Malone - New Candidate 1', 2, '2024-05-14', '2024-05-05 09:29:58', '2024-05-05 09:29:58'),
(115, 120, 131, 134, 491, 44, 'AT - Contract Ending - Client 2 - New Candidate 1', 4, '2024-04-25', '2024-05-05 10:35:26', '2024-05-05 10:35:26'),
(116, 120, 131, 134, 491, 44, 'AT - Shortlisted -Client 2 - New Candidate 1', 2, '2024-05-01', '2024-05-05 10:35:26', '2024-05-05 10:35:26'),
(117, 120, 131, 134, 491, 44, '04:35 PM-AT - Contact Signing -Client 2 - New Candidate 1', 3, '2024-05-06', '2024-05-05 10:35:26', '2024-05-05 10:35:26'),
(118, 119, 124, 128, 500, 34, '04:17 PM-C6 - Interview -Ezra Malone - EXPERIENCE', 1, '2024-05-06', '2024-05-05 12:17:31', '2024-05-05 12:17:31'),
(119, 120, 122, 126, 513, NULL, '09:00 AM -C2 - 2 Business Days Follow Up with Client -Noman Client988 - Imported Candidate', 1, '2024-05-09', '2024-05-07 09:11:57', '2024-05-07 09:11:57'),
(120, 120, 122, 126, 514, NULL, '09:00 AM -C2 - Call Back -Imported Candidate', 5, '2024-05-22', '2024-05-18 07:47:31', '2024-05-18 07:47:31'),
(121, 120, 122, 126, 516, NULL, '09:00 AM -C2 - Call Back -Imported Candidate', 5, '2024-05-22', '2024-05-18 07:57:39', '2024-05-18 07:57:39'),
(122, 120, 122, 126, 517, NULL, '09:00 AM -C2 - Call Back -Imported Candidate', 5, '2024-05-22', '2024-05-18 08:49:38', '2024-05-18 08:49:38'),
(124, 120, 122, 126, 519, NULL, '09:00 AM -C2 - Call Back -Imported Candidate', 5, '2024-05-22', '2024-05-18 09:20:58', '2024-05-18 09:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_outlet_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Link with outlet table',
  `candidate_code` varchar(191) DEFAULT NULL,
  `candidate_name` varchar(191) DEFAULT NULL,
  `candidate_home_phone` varchar(191) DEFAULT NULL,
  `candidate_email` varchar(191) DEFAULT NULL,
  `passtypes_id` int(11) DEFAULT NULL COMMENT 'link to pass type table',
  `candidate_nric` varchar(191) DEFAULT NULL,
  `candidate_mobile` varchar(191) DEFAULT NULL,
  `candidate_tel` varchar(191) DEFAULT NULL,
  `candidate_birthdate` date DEFAULT NULL,
  `candidate_joindate` date DEFAULT NULL,
  `candidate_confirmationdate` date DEFAULT NULL,
  `candidate_tc_date` date DEFAULT NULL,
  `children_no` int(11) DEFAULT NULL COMMENT 'general info end',
  `candidate_height` double(8,2) DEFAULT 0.00,
  `avatar` longtext DEFAULT NULL,
  `candidate_weight` double(8,2) DEFAULT 0.00 COMMENT 'general info end',
  `candidate_type` int(11) NOT NULL DEFAULT 0 COMMENT '0=Candidate, 1=Walk in candidate',
  `users_id` int(11) DEFAULT NULL COMMENT 'link to user table',
  `leave_aprv1_users_id` int(11) DEFAULT NULL,
  `leave_aprv2_users_id` int(11) DEFAULT NULL,
  `leave_aprv3_users_id` int(11) DEFAULT NULL,
  `claims_aprv1_users_id` int(11) DEFAULT NULL,
  `claims_aprv2_id` int(11) DEFAULT NULL,
  `claims_aprv3_users_id` int(11) DEFAULT NULL,
  `candidate_n_level` varchar(191) DEFAULT NULL COMMENT 'Skill info start',
  `candidate_o_level` varchar(191) DEFAULT NULL,
  `candidate_a_level` varchar(191) DEFAULT NULL,
  `candidate_diploma` varchar(191) DEFAULT NULL,
  `candidate_degree` varchar(191) DEFAULT NULL,
  `candidate_other` varchar(191) DEFAULT NULL,
  `candidate_written` varchar(191) DEFAULT NULL,
  `candidate_spocken` varchar(191) DEFAULT NULL COMMENT 'Skill info end',
  `paymodes_id` int(11) DEFAULT NULL COMMENT 'link to paymode table',
  `candidate_bank` varchar(191) DEFAULT NULL,
  `candidate_bank_acc_no` varchar(191) DEFAULT NULL,
  `candidate_bank_acc_title` varchar(191) DEFAULT NULL,
  `candidate_street` varchar(191) DEFAULT NULL COMMENT 'candidate address start',
  `candidate_unit_number` varchar(191) DEFAULT NULL,
  `candidate_postal_code` varchar(191) DEFAULT NULL,
  `candidate_street2` varchar(191) DEFAULT NULL,
  `candidate_unit_number2` varchar(191) DEFAULT NULL,
  `candidate_postal_code2` varchar(191) DEFAULT NULL COMMENT 'candidate address end',
  `candidate_emr_contact` varchar(191) DEFAULT NULL COMMENT 'Emergency contact info start',
  `candidate_emr_relation` varchar(191) DEFAULT NULL,
  `candidate_emr_phone1` varchar(191) DEFAULT NULL,
  `candidate_emr_phone2` varchar(191) DEFAULT NULL,
  `candidate_emr_address` varchar(191) DEFAULT NULL,
  `candidate_emr_remarks` varchar(191) DEFAULT NULL COMMENT 'Emergency contact info end',
  `candidate_referee_name1` varchar(191) DEFAULT NULL COMMENT 'referee info start',
  `candidate_referee_occupation1` varchar(191) DEFAULT NULL,
  `candidate_referee_year_know1` varchar(191) DEFAULT NULL,
  `candidate_referee_contact1` varchar(191) DEFAULT NULL,
  `candidate_referee_name2` varchar(191) DEFAULT NULL,
  `candidate_referee_occupation2` varchar(191) DEFAULT NULL,
  `candidate_referee_year_know2` varchar(191) DEFAULT NULL,
  `candidate_referee_contact2` varchar(191) DEFAULT NULL,
  `candidate_referee_present_employer` int(11) NOT NULL DEFAULT 0,
  `candidate_referee_previous_employer` int(11) NOT NULL DEFAULT 0 COMMENT 'referee info end',
  `candidate_dec_bankrupt` int(11) NOT NULL DEFAULT 0 COMMENT 'declaration info start',
  `candidate_dec_bankrupt_details` varchar(191) DEFAULT NULL,
  `candidate_dec_physical` int(11) NOT NULL DEFAULT 0,
  `candidate_dec_physical_details` varchar(191) DEFAULT NULL,
  `candidate_dec_lt_medical` int(11) NOT NULL DEFAULT 0,
  `candidate_dec_lt_medical_details` varchar(191) DEFAULT NULL,
  `candidate_dec_law` int(11) NOT NULL DEFAULT 0,
  `candidate_dec_law_details` varchar(191) DEFAULT NULL,
  `candidate_dec_warning` int(11) NOT NULL DEFAULT 0,
  `candidate_dec_warning_details` varchar(191) DEFAULT NULL,
  `candidate_dec_applied` int(11) NOT NULL DEFAULT 0,
  `candidate_dec_applied_details` varchar(191) DEFAULT NULL COMMENT 'declaration info end',
  `nationality_id` int(11) DEFAULT NULL,
  `nationality_date_of_issue` date DEFAULT NULL,
  `races_id` int(11) DEFAULT NULL COMMENT 'link to race table',
  `religions_id` int(11) DEFAULT NULL COMMENT 'link to religion table',
  `dbsexes_id` int(11) DEFAULT NULL COMMENT 'link to dbsex table',
  `marital_statuses_id` int(11) DEFAULT NULL COMMENT 'link to marital status table',
  `clients_id` int(11) DEFAULT NULL COMMENT 'link to client table',
  `jobs_id` int(11) DEFAULT NULL COMMENT 'link to jobs table',
  `candidate_status` int(11) NOT NULL DEFAULT 1,
  `candidate_isBlocked` int(11) DEFAULT NULL,
  `candidate_isDeleted` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `candidate_outlet_id`, `candidate_code`, `candidate_name`, `candidate_home_phone`, `candidate_email`, `passtypes_id`, `candidate_nric`, `candidate_mobile`, `candidate_tel`, `candidate_birthdate`, `candidate_joindate`, `candidate_confirmationdate`, `candidate_tc_date`, `children_no`, `candidate_height`, `avatar`, `candidate_weight`, `candidate_type`, `users_id`, `leave_aprv1_users_id`, `leave_aprv2_users_id`, `leave_aprv3_users_id`, `claims_aprv1_users_id`, `claims_aprv2_id`, `claims_aprv3_users_id`, `candidate_n_level`, `candidate_o_level`, `candidate_a_level`, `candidate_diploma`, `candidate_degree`, `candidate_other`, `candidate_written`, `candidate_spocken`, `paymodes_id`, `candidate_bank`, `candidate_bank_acc_no`, `candidate_bank_acc_title`, `candidate_street`, `candidate_unit_number`, `candidate_postal_code`, `candidate_street2`, `candidate_unit_number2`, `candidate_postal_code2`, `candidate_emr_contact`, `candidate_emr_relation`, `candidate_emr_phone1`, `candidate_emr_phone2`, `candidate_emr_address`, `candidate_emr_remarks`, `candidate_referee_name1`, `candidate_referee_occupation1`, `candidate_referee_year_know1`, `candidate_referee_contact1`, `candidate_referee_name2`, `candidate_referee_occupation2`, `candidate_referee_year_know2`, `candidate_referee_contact2`, `candidate_referee_present_employer`, `candidate_referee_previous_employer`, `candidate_dec_bankrupt`, `candidate_dec_bankrupt_details`, `candidate_dec_physical`, `candidate_dec_physical_details`, `candidate_dec_lt_medical`, `candidate_dec_lt_medical_details`, `candidate_dec_law`, `candidate_dec_law_details`, `candidate_dec_warning`, `candidate_dec_warning_details`, `candidate_dec_applied`, `candidate_dec_applied_details`, `nationality_id`, `nationality_date_of_issue`, `races_id`, `religions_id`, `dbsexes_id`, `marital_statuses_id`, `clients_id`, `jobs_id`, `candidate_status`, `candidate_isBlocked`, `candidate_isDeleted`, `created_by`, `modify_by`, `created_at`, `updated_at`, `team_leader_id`, `consultant_id`, `manager_id`) VALUES
(147, 2, 'Cand-147', 'Baker Blake uu', '+1 (193) 734-4923', 'keho@mailinator.com', 2, '07-Sep-1977', '05-Oct-1986', NULL, '1997-06-18', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 1, 3, 1, NULL, NULL, NULL, 1, 0, 0, 1, 104, '2024-03-04 11:56:00', '2024-04-25 05:45:44', 122, 126, 120),
(148, 2, 'Cand-148', 'Steel Beach', '+1 (595) 454-3442', 'kazidadix@mailinator.com', NULL, '09-Dec-2010', '12-Apr-1973', NULL, '2022-11-22', NULL, NULL, NULL, NULL, 0.00, 'uploads//65e5b6f90394c_pexels-lara-jameson-9623670.jpg', 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 5, NULL, 3, 2, 1, 3, NULL, NULL, 1, 0, 0, 1, 102, '2024-03-04 11:56:41', '2024-03-04 12:54:43', 124, NULL, 119),
(149, 1, 'Cand-149', 'Mariam Hogan', '+1 (284) 278-1377', 'mofyl@mailinator.com', NULL, '01-Jun-1979', '01-Sep-1994', NULL, '2009-07-31', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 2, 2, 1, 4, NULL, NULL, 1, 0, 0, 1, 104, '2024-03-04 11:57:09', '2024-04-25 05:09:52', 122, NULL, 120),
(150, 0, 'Cand-150', 'INNOVATIVE SKILLS BD', NULL, 'salmanwaqar0077@gmail.com', NULL, NULL, '+8891785969827', NULL, NULL, '2024-03-04', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 104, '2024-03-04 12:02:20', '2024-04-25 06:00:15', 122, 126, 120),
(151, 0, 'Cand-151', 'FAYSAL HOSSAIN', NULL, 'devfaysalbd@gmail.com', NULL, NULL, '1639828754', NULL, NULL, '2024-03-04', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', 122, 126, 120),
(152, 0, 'Cand-152', 'FAYSAL HOSSAIN', NULL, 'devfaysalbd@gmail.com', NULL, NULL, '1639828754', NULL, NULL, '2024-03-04', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 102, '2024-03-04 12:02:20', '2024-03-04 12:51:02', NULL, NULL, 119),
(153, 2, 'Cand-153', 'df', NULL, 't@gmail.com', 1, NULL, '01893845546', NULL, '2024-03-19', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 3, 1, NULL, 4, NULL, NULL, 1, 1, 0, 101, 101, '2024-03-04 12:08:40', '2024-03-04 12:12:52', 124, 128, 119),
(154, 1, 'Cand-154', 'Test Candidate', NULL, 'can@kslf.com', 1, NULL, '01893845546', NULL, '2024-03-12', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 5, NULL, 2, 2, 1, 2, NULL, NULL, 1, 0, 0, 101, 110, '2024-03-04 12:49:25', '2024-03-05 08:19:24', 124, 128, 119),
(155, 1, 'Cand-155', 'Test', '+1 (596) 342-6654', 'lilimonady@mailinator.com', 1, NULL, '019999999999', NULL, '2024-04-24', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 1, 3, 1, 1, NULL, NULL, 1, 1, 0, 1, 104, '2024-04-25 05:12:08', '2024-05-04 06:45:59', NULL, NULL, NULL),
(156, 2, 'Cand-156', 'Test', '+1 (695) 351-5964', 'wudyloh@mailinator.com', 2, '453432', '019999993', NULL, '2024-05-02', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 74, NULL, 2, 2, 1, 4, NULL, NULL, 1, 0, 0, 104, 1, '2024-05-02 08:50:13', '2024-05-02 09:24:00', NULL, NULL, 120),
(157, 0, 'Cand-157', 'new candidate', '+1 (245) 471-', 'nc@gmail.com', 2, '43545', '+65 4365674876', NULL, '2024-05-04', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 74, NULL, 2, 1, 1, 3, NULL, NULL, 1, 0, 0, 104, 104, '2024-05-04 07:28:47', '2024-05-04 07:28:47', 122, 125, 120),
(158, 0, 'Cand-158', 'Test Candidate', '3465688054645', 'tc@gmail.com', 2, '32667', '+65 5659789089', NULL, '2024-05-02', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 4, 4, 1, 2, NULL, NULL, 1, 0, 0, 104, 1, '2024-05-04 09:19:22', '2024-05-04 14:20:18', NULL, NULL, 119),
(159, 0, 'Cand-159', 'Test', '3447657868', 'test@gmail.com', 1, '123', '+65 657578', NULL, '2024-05-03', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 5, NULL, 2, 2, 1, 4, NULL, NULL, 1, 0, 0, 104, 104, '2024-05-04 13:47:10', '2024-05-04 13:47:10', 122, 125, 120),
(160, 0, 'Cand-160', 'Test3', '+1 (695) 351-', 'test3@gmail.com', 3, '545', '+65 4536476576', NULL, '2024-05-08', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 74, NULL, 3, 4, 2, 4, NULL, NULL, 1, 0, 0, 104, 1, '2024-05-04 13:57:12', '2024-05-04 14:19:09', NULL, NULL, 119),
(161, 0, 'Cand-161', 'New Candidate 1', '+1 (695) 351-', 'nc1@gmail.com', 2, NULL, '+65 5578978089', NULL, NULL, '2024-05-07', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 5, NULL, 2, 4, 1, 2, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 06:27:23', '2024-05-05 08:28:36', 131, 134, 120),
(162, 0, 'Cand-162', 'Jon King', NULL, 'jk@gmail.com', NULL, NULL, '+65 16398287', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 125, 120),
(163, 0, 'Cand-163', 'Tarn stagan', NULL, 'st@gmail.com', NULL, NULL, '+65 84053474', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 126, 120),
(164, 0, 'Cand-164', 'Arugo', NULL, 'arj@gmail.com', NULL, NULL, '+65 09842876', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 125, 120),
(165, 0, 'Cand-165', 'sdfs', NULL, 's@gmail.com', NULL, NULL, '+65 34839233', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 126, 120),
(166, 0, 'Cand-166', 'CS', NULL, 'cs@gmail.com', NULL, NULL, '+65 4565865', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 125, 120),
(167, 0, 'Cand-167', 'EXPERIENCE', NULL, 'no_reply@example.com', NULL, NULL, '+65 45645656', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 125, 120),
(168, 0, 'Cand-168', 'FAYSAL HOSSAIN', NULL, 'devfaysalbd@gmail.com', NULL, NULL, '+65 1639828754', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 122, 126, 120),
(169, 0, 'Cand-169', 'EXPERIENCE', NULL, 'no_reply@example.com', NULL, NULL, '+65 234355675', NULL, NULL, '2024-05-05', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 112, 1, '2024-05-05 11:50:04', '2024-05-05 12:20:18', NULL, NULL, 120),
(170, 0, 'Cand-170', 'Test 34', '2345435345454', 't34@gmail.com', 2, '43545', '+65 6456546', NULL, '2024-05-02', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 3, 2, 1, 4, NULL, NULL, 1, 0, 0, 102, 102, '2024-05-06 08:55:26', '2024-05-06 08:55:26', NULL, 134, 120),
(171, 0, 'Cand-171', 'Test 434', '34457587', 'sdfsd@sdf.com', 2, '4358', '+60 464576867', NULL, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 3, 2, 1, 2, NULL, NULL, 1, 1, 0, 102, 102, '2024-05-06 08:59:38', '2024-05-06 08:59:38', NULL, 134, 120),
(172, 0, 'Cand-172', 'Last', '+1 (143) 432-', 'tert@ytry.com', 2, '3646', '+65 5664565465', NULL, '2024-05-04', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 5, NULL, 4, 4, 1, 2, NULL, NULL, 1, NULL, 0, 102, 102, '2024-05-06 09:02:29', '2024-05-06 10:56:58', 123, 133, 120),
(173, 0, 'Cand-173', 'New Test', '65478697', 'newt@gmail.com', 2, '654', '+65 6546578678', NULL, '2024-05-08', NULL, NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 4, NULL, 2, 4, 1, 3, NULL, NULL, 1, 0, 0, 104, 104, '2024-05-06 11:48:34', '2024-05-06 11:48:58', 122, 126, 120),
(174, 0, 'Cand-174', 'Imported Candidate', NULL, 'ic@gmail.com', NULL, NULL, '+8891785969827', NULL, NULL, '2024-05-06', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 122, 126, 120),
(175, 0, 'Cand-175', 'Import second', NULL, 'ics@gmail.com', NULL, NULL, '+8891785969826', NULL, NULL, '2024-05-06', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 122, 125, 120),
(176, 0, 'Cand-176', 'Import third', NULL, 'ict@gmail.com', NULL, NULL, '01997015981', NULL, NULL, '2024-05-06', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 122, 126, 120),
(177, 0, 'Cand-177', 'New candidate', NULL, 'nc44@gmail.com', NULL, NULL, '+65 45687874', NULL, NULL, '2024-05-06', NULL, NULL, NULL, 0.00, NULL, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 102, 114, '2024-05-06 12:12:00', '2024-05-06 13:59:37', 122, 125, 120);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_families`
--

CREATE TABLE `candidate_families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `age` int(11) NOT NULL,
  `relationship` varchar(191) NOT NULL,
  `occupation` varchar(191) NOT NULL,
  `contact_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_file_imports`
--

CREATE TABLE `candidate_file_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_type` varchar(191) DEFAULT NULL,
  `file_email` varchar(191) DEFAULT NULL,
  `file_text` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_payrolls`
--

CREATE TABLE `candidate_payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_type` varchar(191) NOT NULL,
  `admin_fee_monthly` varchar(191) DEFAULT NULL,
  `client_company` int(11) NOT NULL,
  `invoice_rate` varchar(191) DEFAULT NULL,
  `daily_rate` varchar(191) DEFAULT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `department` varchar(191) DEFAULT NULL,
  `wica` varchar(191) DEFAULT NULL,
  `university` varchar(191) DEFAULT NULL,
  `cost_center` varchar(191) DEFAULT NULL,
  `working_hour` varchar(191) DEFAULT NULL,
  `start_date` date NOT NULL,
  `sales_period` date DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `charge` int(11) DEFAULT NULL,
  `close_by1` int(11) DEFAULT NULL,
  `close_by2` int(11) DEFAULT NULL,
  `close_by3` int(11) DEFAULT NULL,
  `cut_off` tinyint(1) DEFAULT NULL,
  `recruitment_fee` varchar(191) DEFAULT NULL,
  `admin_fee_daily` varchar(191) DEFAULT NULL,
  `ar_no` int(11) DEFAULT NULL,
  `salary` varchar(191) DEFAULT NULL,
  `daily_rate_night_shift` varchar(191) DEFAULT NULL,
  `programme` varchar(191) DEFAULT NULL,
  `hourly_rate` varchar(191) DEFAULT NULL,
  `insurance_fee` varchar(191) DEFAULT NULL,
  `team_lead` varchar(191) DEFAULT NULL,
  `allowance` varchar(191) DEFAULT NULL,
  `probation_period` varchar(191) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `guarantee_period` varchar(191) DEFAULT NULL,
  `po_no` varchar(191) DEFAULT NULL,
  `contribute_cpf` tinyint(1) DEFAULT NULL,
  `close_rate1` int(11) DEFAULT NULL,
  `close_rate2` int(11) DEFAULT NULL,
  `close_rate3` int(11) DEFAULT NULL,
  `payroll_remark` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remarks`
--

CREATE TABLE `candidate_remarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `remarkstype_id` int(11) NOT NULL,
  `isNotice` tinyint(1) DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_notice_date` date DEFAULT NULL,
  `ar_no` varchar(191) DEFAULT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `client_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_remarks`
--

INSERT INTO `candidate_remarks` (`id`, `candidate_id`, `remarkstype_id`, `isNotice`, `remarks`, `created_by`, `modify_by`, `created_at`, `updated_at`, `email_notice_date`, `ar_no`, `assign_to`, `client_company`) VALUES
(349, 147, 1, 0, 'Candidate created', 1, 1, '2024-03-04 11:56:00', '2024-03-04 11:56:00', NULL, NULL, NULL, NULL),
(350, 148, 1, 0, 'Candidate created', 1, 1, '2024-03-04 11:56:41', '2024-03-04 11:56:41', NULL, NULL, NULL, NULL),
(351, 149, 1, 0, 'Candidate created', 1, 1, '2024-03-04 11:57:09', '2024-03-04 11:57:09', NULL, NULL, NULL, NULL),
(352, 150, 11, 0, 'Candidate generate from Import', 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', NULL, NULL, NULL, NULL),
(353, 151, 11, 0, 'Candidate generate from Import', 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', NULL, NULL, NULL, NULL),
(354, 152, 11, 0, 'Candidate generate from Import', 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', NULL, NULL, NULL, NULL),
(355, 147, 22, 0, '<p>Assign callback</p>', 1, 1, '2024-03-04 12:06:23', '2024-03-04 12:06:23', NULL, '0', NULL, NULL),
(359, 153, 1, 0, 'Candidate created', 101, 101, '2024-03-04 12:08:40', '2024-03-04 12:08:40', NULL, NULL, NULL, NULL),
(361, 153, 3, 0, '<p>assign to rc</p>', 101, 101, '2024-03-04 12:10:53', '2024-03-04 12:10:53', NULL, '0', NULL, NULL),
(362, 153, 22, 0, '<p>callback</p>', 101, 101, '2024-03-04 12:13:05', '2024-03-04 12:13:05', NULL, '0', NULL, NULL),
(363, 148, 3, 0, '<p>Assign to rc</p>', 102, 102, '2024-03-04 12:14:33', '2024-03-04 12:14:33', NULL, '0', NULL, NULL),
(364, 147, 22, 0, '<p>test callbakc</p>', 1, 1, '2024-03-04 12:44:39', '2024-03-04 12:44:39', NULL, '0', NULL, NULL),
(366, 148, 22, 0, '<p>Assign to callback</p>', 1, 1, '2024-03-04 12:48:13', '2024-03-04 12:48:13', NULL, '0', NULL, NULL),
(367, 154, 1, 0, 'Candidate created', 101, 101, '2024-03-04 12:49:25', '2024-03-04 12:49:25', NULL, NULL, NULL, NULL),
(368, 154, 22, 0, '<p>sfd</p>', 101, 101, '2024-03-04 12:49:37', '2024-03-04 12:49:37', NULL, '0', NULL, NULL),
(369, 154, 3, 0, '<p>dsfdsf</p>', 101, 101, '2024-03-04 12:49:46', '2024-03-04 12:49:46', NULL, '0', NULL, NULL),
(370, 152, 12, 0, '<p>Assign</p>', 102, 102, '2024-03-04 12:51:02', '2024-03-04 12:51:02', NULL, '0', 119, NULL),
(371, 148, 2, 0, '<p>Assign to team leadere 2</p>', 102, 102, '2024-03-04 12:52:02', '2024-03-04 12:52:02', NULL, '0', NULL, NULL),
(372, 148, 9, 0, '<p>Re assign&nbsp;</p>', 102, 102, '2024-03-04 12:52:41', '2024-03-04 12:52:41', NULL, '0', 128, NULL),
(373, 148, 9, 0, '<p>re assign</p>', 102, 102, '2024-03-04 12:54:43', '2024-03-04 12:54:43', NULL, '0', 124, NULL),
(374, 154, 3, 0, '<p>dfghh</p>', 101, 101, '2024-03-04 12:56:48', '2024-03-04 12:56:48', NULL, '0', NULL, NULL),
(375, 153, 22, 0, '<p>callback 2</p>', 101, 101, '2024-03-04 12:57:23', '2024-03-04 12:57:23', NULL, '0', NULL, NULL),
(376, 153, 7, 0, '<p>Shortlisted</p>', 101, 101, '2024-03-04 12:59:29', '2024-03-04 12:59:29', NULL, '0', NULL, 58),
(377, 153, 5, 1, '<p>Assign Interview</p>', 101, 101, '2024-03-04 13:00:59', '2024-03-04 13:00:59', NULL, '0', NULL, NULL),
(378, 149, 6, 0, '<p>Assign to client</p>', 1, 1, '2024-03-04 13:07:24', '2024-03-04 13:07:24', NULL, '0', NULL, NULL),
(379, 151, 11, 0, '<p>TESTING 1123</p>', 108, 108, '2024-03-07 08:58:44', '2024-03-07 08:58:44', NULL, '0', NULL, NULL),
(380, 151, 4, 0, '<p>JUST TO TEST</p>', 108, 108, '2024-03-07 08:59:03', '2024-03-07 08:59:03', NULL, '0', NULL, NULL),
(381, 151, 5, 0, '<p>TEST TEST</p>', 108, 108, '2024-03-07 09:08:10', '2024-03-07 09:08:10', NULL, '0', NULL, NULL),
(382, 151, 6, 0, '<p>TEST 222333</p>', 108, 108, '2024-03-07 09:20:53', '2024-03-07 09:20:53', NULL, '0', NULL, NULL),
(383, 151, 7, 0, '<p>TEST</p>', 108, 108, '2024-03-07 09:37:37', '2024-03-07 09:37:37', NULL, '0', NULL, 59),
(384, 151, 22, 0, '<p>TESTING TEST&nbsp;</p>', 108, 108, '2024-03-07 09:39:05', '2024-03-07 09:39:05', NULL, '0', NULL, NULL),
(385, 149, 9, 0, '<p>dfd</p>', 104, 104, '2024-04-25 05:09:52', '2024-04-25 05:09:52', NULL, '0', 122, NULL),
(386, 155, 1, 0, 'Candidate created', 1, 1, '2024-04-25 05:12:08', '2024-04-25 05:12:08', NULL, NULL, NULL, NULL),
(388, 155, 6, 0, '<p>test</p>', 104, 104, '2024-04-25 05:41:01', '2024-04-25 05:41:01', NULL, '0', NULL, NULL),
(389, 147, 3, 0, '<p>trtert</p>', 104, 104, '2024-04-25 05:59:38', '2024-04-25 05:59:38', NULL, '0', NULL, NULL),
(390, 150, 3, 0, '<p>sdfd</p>', 104, 104, '2024-04-25 06:00:15', '2024-04-25 06:00:15', NULL, '0', NULL, NULL),
(391, 156, 1, 0, 'Candidate created', 104, 104, '2024-05-02 08:50:14', '2024-05-02 08:50:14', NULL, NULL, NULL, NULL),
(392, 156, 12, 0, '<p>fyt</p>', 1, 1, '2024-05-02 08:58:27', '2024-05-02 08:58:27', NULL, '0', 119, NULL),
(393, 156, 1, 0, '<p>fgh</p>', 1, 1, '2024-05-02 09:23:45', '2024-05-02 09:23:45', NULL, '0', 119, NULL),
(394, 156, 12, 0, '<p>tyt</p>', 1, 1, '2024-05-02 09:24:00', '2024-05-02 09:24:00', NULL, '0', 120, NULL),
(410, 156, 5, 0, '<p>test</p>', 1, 1, '2024-05-02 12:06:45', '2024-05-02 12:06:45', NULL, '0', 118, NULL),
(411, 156, 5, 1, '<p>Test 222</p>', 1, 1, '2024-05-02 12:35:33', '2024-05-02 12:35:33', NULL, '0', 118, NULL),
(412, 155, 9, 0, '<p>test</p>', 104, 104, '2024-05-04 06:45:59', '2024-05-04 06:45:59', NULL, '0', 118, NULL),
(413, 157, 1, 0, 'Candidate created', 104, 104, '2024-05-04 07:28:47', '2024-05-04 07:28:47', NULL, NULL, NULL, NULL),
(414, 158, 1, 0, '<p>Candidate created up</p>', 104, 1, '2024-05-04 09:19:22', '2024-05-04 11:31:19', NULL, '0', 119, NULL),
(415, 158, 12, 0, '<p>test</p>', 1, 1, '2024-05-04 11:44:53', '2024-05-04 11:44:53', NULL, '0', 118, NULL),
(416, 158, 1, 0, '<p>hjg</p>', 1, 1, '2024-05-04 11:51:48', '2024-05-04 11:51:48', NULL, '0', 118, NULL),
(417, 158, 12, 0, '<p>assign</p>', 1, 1, '2024-05-04 12:00:22', '2024-05-04 12:00:22', NULL, '0', 118, NULL),
(418, 158, 12, 0, '<p>sdfsdf</p>', 1, 1, '2024-05-04 12:13:48', '2024-05-04 12:13:48', NULL, '0', 118, NULL),
(419, 158, 12, 0, '<p>fgjh</p>', 1, 1, '2024-05-04 12:18:43', '2024-05-04 12:18:43', NULL, '0', 118, NULL),
(425, 158, 12, 0, '<p>dgjhfg</p>', 1, 1, '2024-05-04 13:34:17', '2024-05-04 13:34:17', NULL, '0', 118, NULL),
(426, 158, 1, 0, '<p>test</p>', 1, 1, '2024-05-04 13:34:49', '2024-05-04 13:34:49', NULL, '0', 118, NULL),
(427, 158, 12, 0, '<p>sdf</p>', 1, 1, '2024-05-04 13:35:25', '2024-05-04 13:35:25', NULL, '0', 118, NULL),
(432, 158, 12, 0, '<p>tui</p>', 1, 1, '2024-05-04 13:38:27', '2024-05-04 13:38:27', NULL, '0', 118, NULL),
(436, 159, 1, 0, 'Candidate created', 104, 104, '2024-05-04 13:47:10', '2024-05-04 13:47:10', NULL, NULL, 125, NULL),
(438, 160, 1, 0, 'Candidate created', 104, 104, '2024-05-04 13:57:12', '2024-05-04 13:57:12', NULL, NULL, 125, NULL),
(442, 160, 1, 0, '<p>test</p>', 1, 1, '2024-05-04 14:02:23', '2024-05-04 14:02:23', NULL, '0', 118, NULL),
(443, 160, 1, 0, '<p>sdfds</p>', 1, 1, '2024-05-04 14:04:10', '2024-05-04 14:04:10', NULL, '0', 118, NULL),
(444, 160, 1, 0, '<p>hj</p>', 1, 1, '2024-05-04 14:08:55', '2024-05-04 14:08:55', NULL, '0', 120, NULL),
(445, 160, 1, 0, '<p>assign to man 1</p>', 1, 1, '2024-05-04 14:09:52', '2024-05-04 14:09:52', NULL, '0', 119, NULL),
(446, 160, 12, 0, '<p>huioi</p>', 1, 1, '2024-05-04 14:11:33', '2024-05-04 14:11:33', NULL, '0', 120, NULL),
(447, 160, 12, 0, '<p>assign one</p>', 1, 1, '2024-05-04 14:19:09', '2024-05-04 14:19:09', NULL, '0', 119, NULL),
(448, 158, 12, 0, '<p>one upda</p>', 1, 1, '2024-05-04 14:20:18', '2024-05-04 14:33:40', NULL, '0', 120, NULL),
(449, 160, 5, 0, '<p>test interview</p>', 1, 1, '2024-05-04 14:52:08', '2024-05-04 14:52:08', NULL, '0', 118, NULL),
(450, 160, 5, 0, '<p>tesdf</p>', 1, 1, '2024-05-04 14:53:33', '2024-05-04 14:53:33', NULL, '0', 118, NULL),
(453, 160, 5, 0, '<p>tyt</p>', 1, 1, '2024-05-04 14:59:38', '2024-05-04 14:59:38', NULL, '0', 0, NULL),
(459, 160, 6, 0, '<p>fgjhf</p>', 1, 1, '2024-05-04 15:05:24', '2024-05-04 15:05:24', NULL, '0', 0, NULL),
(460, 160, 7, 1, '<p>Test remark</p>', 1, 1, '2024-05-04 15:21:44', '2024-05-04 15:21:44', NULL, '0', 0, 59),
(461, 161, 1, 0, 'Candidate created', 112, 112, '2024-05-05 06:27:23', '2024-05-05 06:27:23', NULL, NULL, 134, NULL),
(473, 161, 9, 0, '<p>dfds</p>', 112, 112, '2024-05-05 06:37:26', '2024-05-05 06:37:26', NULL, '0', 120, NULL),
(474, 161, 2, 0, '<p>Assign to team lead 3</p>', 102, 102, '2024-05-05 06:41:59', '2024-05-05 06:41:59', NULL, '0', 0, NULL),
(476, 161, 9, 0, '<p>fgdf</p>', 112, 112, '2024-05-05 07:06:33', '2024-05-05 07:06:33', NULL, '0', 119, NULL),
(477, 161, 1, 0, '<p>assaign manager</p>', 1, 1, '2024-05-05 07:07:51', '2024-05-05 07:07:51', NULL, '0', 120, NULL),
(478, 161, 2, 0, '<p>assign tl 3</p>', 102, 102, '2024-05-05 07:13:23', '2024-05-05 07:13:23', NULL, '0', 131, NULL),
(479, 161, 5, 0, '<p>Hr junior</p>', 112, 112, '2024-05-05 07:14:48', '2024-05-05 07:14:48', NULL, '0', 0, NULL),
(480, 161, 5, 1, '<p>sdfd</p>', 112, 112, '2024-05-05 07:19:09', '2024-05-05 07:19:09', NULL, '0', 0, NULL),
(482, 161, 5, 0, '<p>dfsd</p>', 112, 112, '2024-05-05 07:23:30', '2024-05-05 07:23:30', NULL, '0', 0, 59),
(483, 161, 6, 1, '<p>sdf</p>', 112, 112, '2024-05-05 07:23:47', '2024-05-05 07:23:47', NULL, '0', 0, NULL),
(484, 161, 5, 0, '<p>sdf</p>', 102, 102, '2024-05-05 07:28:25', '2024-05-05 07:28:25', NULL, '0', 0, 57),
(485, 161, 7, 0, '<p>e5tyf</p>', 102, 1, '2024-05-05 07:29:32', '2024-05-05 07:45:34', NULL, '0', 120, 57),
(486, 161, 3, 0, '<p>fjfg</p>', 112, 112, '2024-05-05 08:28:36', '2024-05-05 08:28:36', NULL, '0', 0, NULL),
(487, 161, 3, 0, '<p>dfs</p>', 112, 112, '2024-05-05 08:34:34', '2024-05-05 08:34:34', NULL, '0', 134, NULL),
(488, 161, 7, 0, '<p>ts</p>', 115, 115, '2024-05-05 09:08:29', '2024-05-05 09:08:29', NULL, '0', 0, 57),
(489, 161, 7, 1, '<p>dfsd</p>', 112, 112, '2024-05-05 09:29:58', '2024-05-05 09:29:58', NULL, '0', 0, 59),
(491, 161, 7, 1, '<p>gfgdfg</p>', 115, 115, '2024-05-05 10:35:26', '2024-05-05 10:35:26', NULL, '0', 0, 58),
(492, 162, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(493, 163, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(494, 164, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(495, 165, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(496, 166, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(497, 167, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(498, 168, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(499, 169, 11, 0, 'Candidate generate from Import', 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', NULL, NULL, NULL, NULL),
(500, 169, 5, 0, '<p>ertre</p>', 1, 1, '2024-05-05 12:17:31', '2024-05-05 12:17:31', NULL, '0', 0, 59),
(501, 169, 4, 0, '<p>follow up</p>', 1, 1, '2024-05-05 12:17:51', '2024-05-05 12:17:51', NULL, '0', 0, NULL),
(502, 169, 1, 0, '<p>Manager assign&nbsp;</p>', 1, 1, '2024-05-05 12:20:18', '2024-05-05 12:20:18', NULL, '0', 120, NULL),
(503, 170, 1, 0, 'Candidate created', 102, 102, '2024-05-06 08:55:26', '2024-05-06 08:55:26', NULL, NULL, 134, NULL),
(504, 171, 1, 0, 'Candidate created', 102, 102, '2024-05-06 08:59:38', '2024-05-06 08:59:38', NULL, NULL, 134, NULL),
(505, 172, 1, 0, 'Candidate created', 102, 102, '2024-05-06 09:02:30', '2024-05-06 09:02:30', NULL, NULL, 126, NULL),
(506, 172, 3, NULL, '<p>assign rc check notice</p>', 102, 102, '2024-05-06 10:56:58', '2024-05-06 10:56:58', NULL, '0', 133, NULL),
(507, 173, 1, 0, 'Candidate created', 104, 104, '2024-05-06 11:48:34', '2024-05-06 11:48:34', NULL, NULL, 125, NULL),
(508, 174, 11, 0, 'Candidate generate from Import', 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', NULL, NULL, NULL, NULL),
(509, 175, 11, 0, 'Candidate generate from Import', 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', NULL, NULL, NULL, NULL),
(510, 176, 11, 0, 'Candidate generate from Import', 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', NULL, NULL, NULL, NULL),
(511, 177, 11, 0, 'Candidate generate from Import', 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', NULL, NULL, NULL, NULL),
(512, 177, 9, NULL, '<p>test</p>', 114, 114, '2024-05-06 13:59:37', '2024-05-06 13:59:37', NULL, '0', 125, NULL),
(513, 174, 6, 1, '<p>assign to client</p>', 1, 1, '2024-05-07 09:11:57', '2024-05-07 09:11:57', NULL, '0', 0, NULL),
(514, 174, 22, NULL, '<p>callback</p>', 1, 1, '2024-05-18 07:47:31', '2024-05-18 07:47:31', NULL, '0', 0, NULL),
(516, 174, 22, 1, '<p>test</p>', 1, 1, '2024-05-18 07:57:39', '2024-05-18 07:57:39', NULL, '0', 0, NULL),
(517, 174, 22, NULL, '<p>test back</p><p>&nbsp;</p>', 1, 1, '2024-05-18 08:49:38', '2024-05-18 08:49:38', NULL, '0', 0, NULL),
(519, 174, 22, NULL, '<p>gfhfdfg</p>', 1, 1, '2024-05-18 09:20:58', '2024-05-18 09:20:58', NULL, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remark_interviews`
--

CREATE TABLE `candidate_remark_interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_remark_id` int(11) DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `interview_by` varchar(191) DEFAULT NULL,
  `interview_position` varchar(191) DEFAULT NULL,
  `interview_company` varchar(191) DEFAULT NULL,
  `expected_salary` varchar(191) DEFAULT NULL,
  `job_offer_salary` varchar(191) DEFAULT NULL,
  `attend_interview` varchar(100) DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `receive_job_offer` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_remark_interviews`
--

INSERT INTO `candidate_remark_interviews` (`id`, `candidate_remark_id`, `interview_date`, `interview_time`, `interview_by`, `interview_position`, `interview_company`, `expected_salary`, `job_offer_salary`, `attend_interview`, `available_date`, `receive_job_offer`, `created_at`, `updated_at`) VALUES
(13, 377, '2024-03-07', '02:34:00', 'Hr', 'GGG', '58', '900', '100', '1', '2024-03-04', 'yes', '2024-03-04 13:00:59', '2024-03-04 13:00:59'),
(14, 381, '2024-03-07', '18:00:00', NULL, 'AAA', '59', NULL, NULL, 'pending', NULL, 'pending', '2024-03-07 09:08:10', '2024-03-07 09:08:10'),
(25, 410, '2024-05-01', '16:06:00', 'HR', 'Hr', '59', '70', '66', 'pending', '2024-05-02', 'pending', '2024-05-02 12:06:45', '2024-05-02 12:06:45'),
(26, 411, '2024-02-02', '14:22:00', 'HR 2', '222', '58', '222', '220', 'pending', '2024-05-04', 'yes', '2024-05-02 12:35:33', '2024-05-02 12:35:33'),
(27, 449, '2024-05-10', '18:51:00', 'HR', 'Hr', '58', NULL, '66', 'pending', '2024-05-03', 'no', '2024-05-04 14:52:08', '2024-05-04 14:52:08'),
(28, 450, '2024-05-03', '18:53:00', 'HR 2', 'Hr', '59', '70', '66', 'pending', '2024-05-22', 'pending', '2024-05-04 14:53:33', '2024-05-04 14:53:33'),
(29, 453, '2024-05-02', '19:57:00', 'HR', 'Hr', '59', '222', '66', 'pending', '2024-05-04', 'pending', '2024-05-04 14:59:38', '2024-05-04 14:59:38'),
(30, 479, '2024-05-04', '00:14:00', 'HR', 'Hr j', '59', '70', '66', 'pending', '2024-05-06', 'pending', '2024-05-05 07:14:48', '2024-05-05 07:14:48'),
(31, 480, '2024-05-03', '00:18:00', NULL, 'Hr', '58', '70', '66', 'pending', '2024-05-04', 'pending', '2024-05-05 07:19:09', '2024-05-05 07:19:09'),
(32, 482, '2024-05-04', '00:21:00', 'HR', 'Hr', '59', '70', '66', 'pending', '2024-05-02', 'pending', '2024-05-05 07:23:30', '2024-05-05 07:23:30'),
(33, 484, '2024-05-06', '04:53:00', 'gfsd', 'sdf', '57', '56', '343', 'pending', '2024-05-07', 'yes', '2024-05-05 07:28:25', '2024-05-05 07:28:25'),
(34, 500, '2024-05-06', '16:17:00', 'HR', 'Hr', '59', '70', '44', 'pending', '2024-04-29', 'yes', '2024-05-05 12:17:31', '2024-05-05 12:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remark_shortlists`
--

CREATE TABLE `candidate_remark_shortlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_remark_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `depertment` varchar(191) DEFAULT NULL,
  `hourly_rate` double DEFAULT NULL,
  `placement_recruitment_fee` double DEFAULT NULL,
  `admin_fee` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `reminder_period` varchar(191) DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  `contact_signing_time` time DEFAULT NULL,
  `contact_signing_date` date DEFAULT NULL,
  `probition_period` varchar(100) DEFAULT NULL,
  `last_day` date DEFAULT NULL,
  `email_notice_date` date DEFAULT NULL,
  `email_notice_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_remark_shortlists`
--

INSERT INTO `candidate_remark_shortlists` (`id`, `candidate_remark_id`, `salary`, `depertment`, `hourly_rate`, `placement_recruitment_fee`, `admin_fee`, `start_date`, `end_date`, `job_title`, `reminder_period`, `job_type`, `contact_signing_time`, `contact_signing_date`, `probition_period`, `last_day`, `email_notice_date`, `email_notice_time`, `created_at`, `updated_at`) VALUES
(38, 376, 100, 'Hr', 1, 12, 1, '2024-03-04', '2024-03-31', 'New Job', '1 Week Before', 2, '02:03:00', '2024-03-01', '4', '2024-03-31', '2024-03-04', '03:04:00', '2024-03-04 12:59:29', '2024-03-04 12:59:29'),
(39, 383, 123, NULL, NULL, NULL, NULL, '2024-03-08', NULL, 'AAA', '1 Week Before', 3, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-07 09:37:37', '2024-03-07 09:37:37'),
(40, 460, 4534, 'sdf', 10, 3, 2, '2024-05-21', '2024-05-07', 'test job', '1 Week Before', 1, '19:24:00', '2024-05-22', '3', '2024-05-20', '2024-05-21', '19:25:00', '2024-05-04 15:21:44', '2024-05-04 15:21:44'),
(41, 485, 43, 'fh', 3, 43, 3, '2024-05-06', '2024-05-07', 'dfsdf', '1 Week Before', 1, '03:03:00', '2024-05-06', '0', '2024-05-01', '2024-05-06', '03:33:00', '2024-05-05 07:29:32', '2024-05-05 07:29:32'),
(42, 488, 3, 'test', 3, 3, 3, '2024-05-11', '2024-05-07', 'test', '1 Week Before', 1, '03:03:00', '2024-05-07', '3', '2024-05-16', '2024-05-14', '22:03:00', '2024-05-05 09:08:29', '2024-05-05 09:08:29'),
(43, 489, 102, 'HR', NULL, 3, NULL, '2024-05-14', '2024-04-30', 'test job test', '1 Week Before', 2, '14:22:00', NULL, NULL, NULL, NULL, NULL, '2024-05-05 09:29:58', '2024-05-05 09:29:58'),
(44, 491, 34, 'tress', 3, 33, 33, '2024-05-01', '2024-05-01', 'test', '1 Week Before', 2, '03:03:00', '2024-05-06', '2', '2024-05-10', '2024-05-16', '03:03:00', '2024-05-05 10:35:26', '2024-05-05 10:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) DEFAULT 0,
  `resume_name` varchar(191) DEFAULT NULL,
  `resume_type` varchar(191) DEFAULT NULL,
  `resume_file_path` varchar(191) DEFAULT NULL,
  `resume_details` longtext DEFAULT NULL,
  `isMain` int(11) NOT NULL DEFAULT 0 COMMENT '1=main,0=onlist',
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resume_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `resume_name`, `resume_type`, `resume_file_path`, `resume_details`, `isMain`, `created_by`, `modify_by`, `created_at`, `updated_at`, `resume_text`) VALUES
(93, 150, NULL, NULL, 'uploads//65e5b82f85e18_salman_cv.pdf', NULL, 1, 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', 'CONTACT INFO_ \r\nPHONE : \r\n +8891785969827 \r\nEMAIL: \r\nsalmanwaqar0077@gmail.com \r\nAREA: \r\nRoad8,House196,BlockB, \r\nChandgaonR/A,Chattogram. \r\n \r\nABOUT ME_ \r\nAs a highly motivated results \r\ndriven web developer,Ihave a \r\nstrong technical skill set in \r\nMySQL, \r\nPHP,Laravel,WordPress,and \r\nHTML. My passion for web \r\ndevelopment & my ability to work \r\nwell in a team environment have \r\nenabled me to consistently \r\ndeliver high-quality projects.I am \r\nalways eager to learn & stay up-\r\nto-date with the latest industry \r\ntrends, & I am committed to \r\nusing my skills to create engaging \r\n& user-friendly websites & \r\napplications \r\nWeb Developer (WordPress) \r\nFebruary 2022-MARCH 2023 \r\nMOVING IMAGE,Malaysia \r\nLARAVEL DEVELOPER (INTERN) \r\n4months  \r\nINNOVATIVE SKILLS BD \r\nPROJECTS_ \r\nWEBSITES USING  ELEMENTOR  \r\nhttps://yawsingaporejournal.com \r\n https://yawmalaystories.com  \r\nhttps://daretoyawn.com \r\n https://wifereviewsonline.com  \r\n http://yawbookreleased.com \r\n https://darrensmalaysiaku.com/ \r\n https://www.dreamandyawn.com \r\nSKILLS_ \r\nPHP-LARAVEL-BOOTSTRAP-CSS-HTML-JAVASCRIPT-jQuery-\r\nMYSQL-WordPress \r\n GIT LINK OF RECENT LARAVEL PROJECT \r\nhttps://github.com/Salman-Waqar-\r\nKhan/Random_questions.git \r\nEXPERIECE_\r\n\r\nEDUCATION_ \r\nGED \r\nPEARSON VUE \r\n2019- 2020 \r\nREFERENCES_ \r\nTANVIR MAHMUD CHOWDHURY  \r\nTechnical Consultant at The Moving Image \r\nPHONE: +601156400016  \r\nE-MAIL:tanvir@movingimage.my \r\nCOURSES_ \r\n1.WEB DEVELOPMENT \r\nEShikhon \r\n2.LARAVEL \r\nEuropean IT'),
(94, 151, NULL, NULL, 'uploads//65e5b82f879ea_content.pdf', NULL, 1, 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', 'This Will Be Downloaded\r\nStare at the wall, play with food and get confused by dust eat and than sleep on your face.\r\nAsdflkjaertvlkjasntvkjn (sits on keyboard) play time scamper human give me attention meow.\r\nVommit food and eat it again meowwww so i am the best but sun bathe, yet white cat sleeps on a\r\nblack shirt. Kick up litter flop over, or give attitude. Make meme, make cute face stare at the'),
(95, 152, NULL, NULL, 'uploads//65e5b82f87502_65ab4d093e26c_faysal-hossain-CV-.pdf', NULL, 1, 1, 1, '2024-03-04 12:02:20', '2024-03-04 12:02:20', 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nTraining Summary \r\nAchievements\r\nTo prove myself as a highly energetic person\r\nface and Wiling to develop a creative career in\r\nthe dynamic field of web design &\r\ndevelopment.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nResult: Appearing\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nWeb Design \r\nCreative It Institute, Bangladesh Training\r\nDuration: 3 Months \r\nLanguage\r\nBangla\r\nEnglish\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nWordPress (Theme & Plugin\r\nCustomization) \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/Tailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/'),
(96, 155, 'uuuuu', NULL, 'uploads/candidate/6629e6d35fce6_Blue Simple Professional CV Resume.pdf', NULL, 0, 104, 108, '2024-04-25 05:14:59', '2024-04-25 06:28:04', 'HTTP/1.0 500 Internal Server Error\r\nCache-Control: no-cache, private\r\nDate:          Thu, 25 Apr 2024 05:14:59 GMT\r\n\r\nError reading PDF: file_get_contents(/home/successats/public_html/public/storage/uploads/candidate/6629e6d35fce6_Blue Simple Professional CV Resume.pdf): Failed to open stream: No such file or directory'),
(97, 155, 'yyy', NULL, 'uploads/candidate/6629f7f481ca6_65c70488ef568_65ab4d093e26c_faysal-hossain-CV-.pdf', NULL, 1, 108, 108, '2024-04-25 06:28:04', '2024-04-25 06:28:04', 'HTTP/1.0 500 Internal Server Error\r\nCache-Control: no-cache, private\r\nDate:          Thu, 25 Apr 2024 06:28:04 GMT\r\n\r\nError reading PDF: file_get_contents(/home/successats/public_html/public/storage/uploads/candidate/6629f7f481ca6_65c70488ef568_65ab4d093e26c_faysal-hossain-CV-.pdf): Failed to open stream: No such file or directory'),
(98, 162, NULL, NULL, 'uploads//663746782c6b7_faysal-hossain-new.pdf', NULL, 0, 112, 102, '2024-05-05 11:50:04', '2024-05-06 06:51:04', 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nExperience\r\nAchievements\r\nAs an experienced front-end web developer\r\nwith expertise in React, I’m passionate about\r\ncreating responsive and user-friendly web\r\napplications. I have a strong foundation in\r\nHTML, CSS, JavaScript and related web\r\ntechnologies, and I am constantly striving to\r\nimprove my skills and stay up-to-date with the\r\nlatest web development trends.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nCGPA - 3.46 out of 4.00\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nFront-end developer Internship\r\nFuture Innovation LTD\r\nDuration:  August  2023 - Running\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/\r\nTailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/\r\nRedux'),
(99, 163, NULL, NULL, 'uploads//66374638e6071_sample-file.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'Hello, this is a H3 tag\r\na pararaph'),
(100, 164, NULL, NULL, 'uploads//663754355aa44_Edit Candidate _ Success HR.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'Terms & Conditions\r\n1. Temporary Placement\r\nA. Temporary candidates are required to serve 1 week notice to SUCCESS HUMAN RESOURCE CENTRE PTE\r\nLTD / SUCCESS RESOURCE CENTRE PTE LTD upon resignation, failing which salary in lieu of notice will be\r\ndeducted (include OT claims).\r\nB. All candidates shall not accept any employment offer directly from the client of SUCCESS HUMAN RESOURCE\r\nCENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD within 1 year from the last working day of the\r\nassignment.\r\n2. Permanent / Contract Placement\r\nThe candidates shall agree to commit themselves for a period of 2 months (excluding notice period) upon\r\naccepting the job offered by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\r\nCENTRE PTE LTD whether by writing or verbally, expressed or implied, failing which the candidates will have to\r\ncompensate 30% of their offered salary to SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS\r\nRESOURCE CENTRE PTE LTD. This 30% compensation clause also applies to candidates who are terminated by\r\nour clients due to misconduct, poor performance or attendance, frequent medical leave, absence without calling or\r\nhabitual late coming.\r\nAll candidates shall not have any direct contact with the clients for a period of 1 year after an interview arranged by\r\nSUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD unless\r\napproval is granted by the Agency.\r\nI agree to all the Terms & Conditions of this employment and hereby declare that all the particulars given in this\r\napplication is true, complete and accurate to the best of my knowledge and if this declaration is in any part false or\r\nincorrect, the Agency / Company will reserve the right to terminate my services instantly.\r\nI hereby authorize/consent SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\r\nCENTRE PTE LTD to obtain and share all the information given in this application form/resume to any clients for\r\njob search purposes only. I understand and agree that all modes of communication (Call, SMS, Email and Fax)\r\nmay be necessary to execute the job search. In order to opt out in the future, an email has to be submitted and\r\nacknowledged by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE\r\nLTD, who will duly comply with the request, failing which, I will have no claim or recourse against the above-\r\nmentioned companies.\r\nJoin Date	05/07/2024\r\n5/5/24, 12:27 PM	Edit Candidate | Success HR\r\n127.0.0.1:8000/ATS/candidate/161/edit	1/1'),
(101, 165, NULL, NULL, 'uploads//66375476b6dfc_sample-file.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'Hello, this is a H3 tag\r\na pararaph'),
(102, 166, NULL, NULL, 'uploads//663754a5cdade_7 (1).pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period'),
(103, 167, NULL, NULL, 'uploads//663754dd8c23f_Resume.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n(123)456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer'),
(104, 168, NULL, NULL, 'uploads//6637550a7b5e1_faysal-hossain-new.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nExperience\r\nAchievements\r\nAs an experienced front-end web developer\r\nwith expertise in React, I’m passionate about\r\ncreating responsive and user-friendly web\r\napplications. I have a strong foundation in\r\nHTML, CSS, JavaScript and related web\r\ntechnologies, and I am constantly striving to\r\nimprove my skills and stay up-to-date with the\r\nlatest web development trends.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nCGPA - 3.46 out of 4.00\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nFront-end developer Internship\r\nFuture Innovation LTD\r\nDuration:  August  2023 - Running\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/\r\nTailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/\r\nRedux'),
(105, 169, NULL, NULL, 'uploads//663755fab2ee0_Resume.pdf', NULL, 1, 112, 112, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n(123)456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer'),
(106, 162, 'resume_1714971052036', NULL, 'uploads/candidate/663861b812eed_Edit Candidate _ Success HR.pdf', NULL, 1, 102, 102, '2024-05-06 06:51:04', '2024-05-06 06:51:04', 'Terms & Conditions\n1. Temporary Placement\nA. Temporary candidates are required to serve 1 week notice to SUCCESS HUMAN RESOURCE CENTRE PTE\nLTD / SUCCESS RESOURCE CENTRE PTE LTD upon resignation, failing which salary in lieu of notice will be\ndeducted (include OT claims).\nB. All candidates shall not accept any employment offer directly from the client of SUCCESS HUMAN RESOURCE\nCENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD within 1 year from the last working day of the\nassignment.\n2. Permanent / Contract Placement\nThe candidates shall agree to commit themselves for a period of 2 months (excluding notice period) upon\naccepting the job offered by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\nCENTRE PTE LTD whether by writing or verbally, expressed or implied, failing which the candidates will have to\ncompensate 30% of their offered salary to SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS\nRESOURCE CENTRE PTE LTD. This 30% compensation clause also applies to candidates who are terminated by\nour clients due to misconduct, poor performance or attendance, frequent medical leave, absence without calling or\nhabitual late coming.\nAll candidates shall not have any direct contact with the clients for a period of 1 year after an interview arranged by\nSUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD unless\napproval is granted by the Agency.\nI agree to all the Terms & Conditions of this employment and hereby declare that all the particulars given in this\napplication is true, complete and accurate to the best of my knowledge and if this declaration is in any part false or\nincorrect, the Agency / Company will reserve the right to terminate my services instantly.\nI hereby authorize/consent SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\nCENTRE PTE LTD to obtain and share all the information given in this application form/resume to any clients for\njob search purposes only. I understand and agree that all modes of communication (Call, SMS, Email and Fax)\nmay be necessary to execute the job search. In order to opt out in the future, an email has to be submitted and\nacknowledged by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE\nLTD, who will duly comply with the request, failing which, I will have no claim or recourse against the above-\nmentioned companies.\nJoin Date	05/07/2024\n5/5/24, 12:27 PM	Edit Candidate | Success HR\n127.0.0.1:8000/ATS/candidate/161/edit	1/1'),
(107, 172, 'resume_1714980025207', NULL, 'uploads/candidate/6638850e52c6a_ePortal Feedback - Apr 2024[2195].pdf', NULL, 0, 102, 102, '2024-05-06 09:21:50', '2024-05-06 10:38:35', 'FOR INTERNAL USE ONLY\nHome screen\n•After selecting centre, course title, data \nrange and clicking “Search”, highlighted \npop-up dialog appears.\n• In the table, Start Date and End Date are \nstill sorted by numeric sequence and \nnot by date.\n\nFOR INTERNAL USE ONLY\nCompany Login/Verification Notice Dialog\n•Revise the text:\n“As a recent step up of our portal’s security, we will require \nyou to verify your identity. A one-time verification code will \nbe sent to the email account associated with your portal \naccount during the log in process.”\n•What do you mean when you mention “one-time \nverification code”?\n•Revise the text:\n“Kindly check your email account’s inbox and use the \nprovided verification code to proceed with log in.”\n•Revise the text:\n“Please check your spam folder if you are unable to find the \nverification code email message in your inbox.”\nChange to button \nfor better CTA?\n\nFOR INTERNAL USE ONLY\nCompany Login\n•As it has already been stated in \nthe footer, it is redundant to \nrepeat the highlighted text. \nPlease remove.\n\nFOR INTERNAL USE ONLY\nCompany Login/Verification Code Email Message\n•Greeting text (“Dear ..”) - use normal font size and not in bold\n•Remove grey background , set all text to black colour.\n•Make verification code larger and in bold.\n•Email Subject: change to “St John Singapore – 2 Step Verification Code”.\n•For the last line, please revise to a more appropriate text.\n\nFOR INTERNAL USE ONLY\nCompany Login/Course Information\n•After selecting centre, course title, \ndata range and clicking “Search”, \nhighlighted pop-up dialog appears.\n\nFOR INTERNAL USE ONLY\nCompany Login / Trainee Signup\n•Clicking “Cancel” button at this stage \nwill log off the company login user\n•User needs to go through the login \nand verification code process again \nto go back in\n•This is not good for user experience.\n•Please ensure that this Cancel CTA \ndoes not log off the user\n\nFOR INTERNAL USE ONLY\nCompany Login / Trainee Signup\n•Error after entering data and \nclicking “Confirm Reservation”\n\nFOR INTERNAL USE ONLY\nCompany Login / Trainee Signup\n•While in Company Login, clicking \n“Home” and “View Schedules” will \nlog off the user\n•User needs to go through the login \nand verification code process again to \ngo back in.\n•This is not good for user experience.\n•Please ensure that these CTAs do not \nlog off the user'),
(108, 172, 'resume_1714984478989', NULL, 'uploads/candidate/6638970b0cd76_Resume.docx', NULL, 1, 102, 102, '2024-05-06 10:38:35', '2024-05-06 10:38:35', ''),
(109, 174, NULL, NULL, 'uploads//65e5b746dc560_65e440b7b39a5_65dae26382a5f_7 (1).pdf', NULL, 1, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period'),
(110, 175, NULL, NULL, 'uploads//65e5b77a73741_8.pdf', NULL, 1, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at no \r\ncost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount will be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at \r\nno cost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at \r\nno cost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee will be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacements and upon receiving timesheets for Contract & Temporary \r\nPlacements. Payment should be settled within 14 days from the invoiced \r\ndate. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Human Resource Centre Pte Ltd a sum \r\nequivalent to the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Human Resource Centre Pte Ltd within a period of six (6) \r\nmonths. \r\n The Client employs our candidates introduced by Success Human \r\nResource Centre Pte Ltd within a period of six (6) months from the \r\ncompletion of any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Human Resource Centre Pte Ltd will take every \r\nreasonable precautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Human Resource Centre Pte Ltd \r\nwill not accept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Human Resource \r\nCentre Pte Ltd will not be liable for any losses, damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period'),
(111, 176, NULL, NULL, 'uploads//65e5b7822e5df_6.pdf', NULL, 1, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', '1 \r\n \r\n \r\n \r\nTERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee shall be \r\ncalculated as follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; a 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2 \r\n \r\n \r\n \r\n \r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Company converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; a 50% of the invoice amount shall be refunded \r\naccordingly.\r\n\r\n3 \r\n \r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; a 50% of the recruitment fee shall be refunded \r\naccordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\n4 \r\n \r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work to be done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest day, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n       salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Overseas Recruitment / Foreign Student Internship \r\n \r\nIn order to assist our clients to save cost and to avoid a high rate of attrition, \r\nSuccess Resource Centre Pte Ltd is actively in partnership with Agencies in \r\nChina, Philippines, Myanmar, India etc for recruitment of Work Permit, S \r\nPass and EP Pass applicants. \r\n \r\nSuccess Resource Centre Pte Ltd is also actively involved in placements of \r\nforeign students for internship in the F&B, Retail and Hotel Industry for a \r\nduration of six months. \r\n \r\n6. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n7. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement.\r\n\r\n5 \r\n \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement. \r\n \r\n8. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client shall provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances shall the Client requires the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n9. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd shall take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liability for any acts of dishonesty, negligence, misconduct or misdeeds \r\non the part of the selected candidates.  Success Resource Centre Pte Ltd will \r\nnot be liable for any loss or damages, or any other costs irrespective of how \r\nthey are caused which the Client may suffer during the employment of the \r\ncandidates.  \r\n \r\n10. Validity Period');
INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `resume_name`, `resume_type`, `resume_file_path`, `resume_details`, `isMain`, `created_by`, `modify_by`, `created_at`, `updated_at`, `resume_text`) VALUES
(112, 177, NULL, NULL, 'uploads//66370e92cae72_65e440b7b39a5_65dae26382a5f.pdf', NULL, 1, 102, 102, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period'),
(113, 167, NULL, NULL, 'uploads//66331c0b41ce5_Resume (1).pdf', NULL, 1, 1, 1, '2024-05-07 07:13:18', '2024-05-07 07:13:18', 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n+6568175600‎\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer'),
(114, 151, NULL, NULL, 'uploads//66331f32cf764_65ab4d093e26c_faysal-hossain-CV-.pdf', NULL, 1, 1, 1, '2024-05-07 07:13:18', '2024-05-07 07:13:18', 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nTraining Summary \r\nAchievements\r\nTo prove myself as a highly energetic person\r\nface and Wiling to develop a creative career in\r\nthe dynamic field of web design &\r\ndevelopment.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nResult: Appearing\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nWeb Design \r\nCreative It Institute, Bangladesh Training\r\nDuration: 3 Months \r\nLanguage\r\nBangla\r\nEnglish\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nWordPress (Theme & Plugin\r\nCustomization) \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/Tailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/'),
(115, 167, NULL, NULL, 'uploads//6639b4ca207d8_Resume.pdf', NULL, 1, 1, 1, '2024-05-07 07:13:18', '2024-05-07 07:13:18', 'Your Name\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit\r\n123 Your Street\r\nYour City, ST 12345\r\n(123) 456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - PRESENT\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nEDUCATION\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh euismod tincidunt ut laoreet dolore.\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.\r\nPROJECTS\r\nProject Name 	— 	Detail\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\nSKILLS\r\nLorem ipsum dolor sit amet.\r\nConsectetuer adipiscing elit.\r\nSed diam nonummy nibh euismod tincidunt.\r\nL?????aoreet dolore magna aliquam erat volutpat.\r\nAWARDS\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLANGUAGES\r\nLorem ipsum, Dolor sit amet, Consectetuer'),
(116, 167, NULL, NULL, 'uploads//6639b4fe6ce32_6638970b0cd76_Resume.pdf', NULL, 1, 1, 1, '2024-05-07 07:13:18', '2024-05-07 07:13:18', 'Your Name\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit\r\n123 Your Street\r\nYour City, ST 12345\r\n(123) 456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - PRESENT\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nEDUCATION\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh euismod tincidunt ut laoreet dolore.\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.\r\nPROJECTS\r\nProject Name 	— 	Detail\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\nSKILLS\r\nLorem ipsum dolor sit amet.\r\nConsectetuer adipiscing elit.\r\nSed diam nonummy nibh euismod tincidunt.\r\nL?????aoreet dolore magna aliquam erat volutpat.\r\nAWARDS\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLANGUAGES\r\nLorem ipsum, Dolor sit amet, Consectetuer');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_working_hours`
--

CREATE TABLE `candidate_working_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `timesheet_id` int(11) NOT NULL,
  `schedul_type` varchar(191) NOT NULL,
  `schedul_day` int(11) NOT NULL,
  `remarks` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_working_hours`
--

INSERT INTO `candidate_working_hours` (`id`, `candidate_id`, `timesheet_id`, `schedul_type`, `schedul_day`, `remarks`, `created_at`, `updated_at`) VALUES
(20, 149, 12, 'Month End', 0, NULL, '2024-03-04 13:05:55', '2024-03-04 13:05:55'),
(21, 154, 12, 'Month End', 0, NULL, '2024-03-05 08:20:16', '2024-03-05 08:20:16'),
(22, 174, 12, 'Month End', 31, NULL, '2024-05-07 09:09:55', '2024-05-07 09:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `claims_types`
--

CREATE TABLE `claims_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `claimstype_code` varchar(191) NOT NULL,
  `claimstype_desc` varchar(191) NOT NULL,
  `claimstype_maxamt` double(8,2) NOT NULL DEFAULT 0.00,
  `claimstype_seqno` int(11) DEFAULT NULL,
  `claimstype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_code` varchar(191) DEFAULT NULL,
  `client_name` varchar(191) DEFAULT NULL COMMENT 'company name',
  `industry_types_id` int(11) DEFAULT NULL COMMENT 'link to industry_types table',
  `client_attention_person` varchar(191) DEFAULT NULL,
  `client_attention_designation` varchar(191) DEFAULT NULL,
  `client_attention_phone` varchar(191) DEFAULT NULL,
  `client_contact_person` varchar(191) DEFAULT NULL,
  `client_contact_number` varchar(191) DEFAULT NULL,
  `client_phone` varchar(191) DEFAULT NULL,
  `client_fax` varchar(191) DEFAULT NULL,
  `client_email` varchar(191) DEFAULT NULL,
  `client_street` varchar(191) DEFAULT NULL,
  `client_unit_number` varchar(191) DEFAULT NULL,
  `client_postal_code` varchar(191) DEFAULT NULL,
  `client_website` varchar(191) DEFAULT NULL,
  `employees_id` int(11) DEFAULT NULL COMMENT 'sales person employee id, link to employee table',
  `users_id` int(11) DEFAULT NULL COMMENT 'sales person user id, link to user table',
  `payroll_employees_id` int(11) DEFAULT NULL COMMENT 'payroll manager/incharge employee id, link to employee table',
  `payroll_users_id` int(11) DEFAULT NULL COMMENT 'payroll manager/incharge user id, link to user table',
  `tnc_templates_id` int(11) DEFAULT NULL COMMENT 'link to tnc_templates table',
  `tnc_renewal_date` date DEFAULT NULL,
  `client_terms_id` int(11) DEFAULT NULL COMMENT 'link to client_terms table',
  `client_remarks` varchar(191) DEFAULT NULL,
  `clients_seqno` int(11) DEFAULT NULL,
  `clients_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_code`, `client_name`, `industry_types_id`, `client_attention_person`, `client_attention_designation`, `client_attention_phone`, `client_contact_person`, `client_contact_number`, `client_phone`, `client_fax`, `client_email`, `client_street`, `client_unit_number`, `client_postal_code`, `client_website`, `employees_id`, `users_id`, `payroll_employees_id`, `payroll_users_id`, `tnc_templates_id`, `tnc_renewal_date`, `client_terms_id`, `client_remarks`, `clients_seqno`, `clients_status`, `created_by`, `modify_by`, `created_at`, `updated_at`, `manager_id`, `team_leader_id`, `consultant_id`) VALUES
(57, 'cl-001', 'Client 1', 3, NULL, NULL, NULL, 'client con', '01789012345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, NULL, 127, NULL, 15, '2024-03-04', 2, 'remark', NULL, 1, 102, 102, '2024-03-04 11:34:51', '2024-03-04 11:34:51', 120, 122, 125),
(58, 'cl-002', 'Client 2', 3, NULL, NULL, NULL, 'test', '01789012340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, 127, NULL, 15, '2024-03-05', 2, NULL, NULL, 1, 1, 1, '2024-03-04 11:36:14', '2024-03-04 11:36:14', NULL, NULL, NULL),
(59, 'Quo sit laborum Des', 'Ezra Malone', 23, 'Excepturi et sunt ra', 'Maxime in quos offic', NULL, 'Ut qui adipisci dolo', '01789012640', '+1 (965) 843-7512', '+1 (855) 142-8915', 'doliniv@gmail.com', 'Dolor consectetur q', '406', '1200', 'https://www.rozagomily.cm', 125, NULL, 127, NULL, 15, '1970-05-07', 6, 'Odit eiusmod corrupt', NULL, 1, 1, 1, '2024-03-04 11:55:24', '2024-03-04 11:55:24', 120, 122, 125),
(60, 'cl-002444', 'Noman Client', 1, NULL, NULL, NULL, '45453434', '34534543', NULL, NULL, 'cl@mailinator.com', NULL, NULL, NULL, NULL, 125, NULL, 127, NULL, 16, '2024-05-08', 4, 'sdf', NULL, 1, 112, 112, '2024-05-05 13:49:34', '2024-05-05 13:49:34', 120, 122, 125),
(61, 'cl-00233', 'Noman Client4', 1, NULL, NULL, NULL, '345563', '34543543', NULL, NULL, 'retre@mailinator.com', NULL, NULL, '4454', NULL, 130, NULL, 127, NULL, 16, NULL, 5, NULL, NULL, 1, 112, 112, '2024-05-05 13:50:21', '2024-05-05 13:50:21', NULL, 130, NULL),
(62, 'cl-002790', 'Noman Client988', 1, NULL, NULL, NULL, '78978', '8979', NULL, NULL, 'tre@mailinator.com', NULL, NULL, NULL, NULL, 131, NULL, 127, NULL, 15, NULL, NULL, NULL, NULL, 1, 112, 112, '2024-05-05 13:52:02', '2024-05-05 13:52:02', 120, 131, NULL),
(63, NULL, 'New Client', 9, 'Test Person', 'HR', NULL, 'test pereson', '+65 5446467', '+65 45346456', '45645', 'tp@sdfds.com', 'sdfs', '343', '434', 'https://www.sdf.net', 125, NULL, 127, NULL, 17, '2024-05-07', 4, 'test', NULL, 1, 102, 102, '2024-05-06 08:25:07', '2024-05-06 08:42:38', 120, 122, 125);

-- --------------------------------------------------------

--
-- Table structure for table `client_departments`
--

CREATE TABLE `client_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_follow_ups`
--

CREATE TABLE `client_follow_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clients_id` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_follow_ups`
--

INSERT INTO `client_follow_ups` (`id`, `clients_id`, `description`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(66, 57, 'Client created', 102, 102, '2024-03-04 11:34:51', '2024-03-04 11:34:51'),
(67, 58, 'Client created', 1, 1, '2024-03-04 11:36:14', '2024-03-04 11:36:14'),
(68, 59, 'Client created', 1, 1, '2024-03-04 11:55:24', '2024-03-04 11:55:24'),
(69, 57, 'New Job Opening', 1, 1, '2024-04-25 06:43:18', '2024-04-25 06:43:18'),
(70, 60, 'Client created', 112, 112, '2024-05-05 13:49:34', '2024-05-05 13:49:34'),
(71, 61, 'Client created', 112, 112, '2024-05-05 13:50:21', '2024-05-05 13:50:21'),
(72, 62, 'Client created', 112, 112, '2024-05-05 13:52:02', '2024-05-05 13:52:02'),
(73, 63, 'Client created', 102, 102, '2024-05-06 08:25:07', '2024-05-06 08:25:07'),
(74, 61, 'New Job Opening', 1, 1, '2024-05-07 07:27:45', '2024-05-07 07:27:45'),
(75, 59, 'New Job Opening', 1, 1, '2024-05-07 08:12:38', '2024-05-07 08:12:38'),
(76, 57, 'New Job Opening', 1, 1, '2024-05-07 08:13:04', '2024-05-07 08:13:04'),
(77, 59, 'New Job Opening', 1, 1, '2024-05-07 08:35:59', '2024-05-07 08:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `client_supervisors`
--

CREATE TABLE `client_supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `direct_number` varchar(191) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `department` varchar(555) DEFAULT NULL,
  `remark` text NOT NULL,
  `defination` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_terms`
--

CREATE TABLE `client_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_term_code` varchar(191) NOT NULL,
  `client_term_desc` varchar(191) NOT NULL,
  `client_term_seqno` int(11) DEFAULT NULL,
  `client_term_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_terms`
--

INSERT INTO `client_terms` (`id`, `client_term_code`, `client_term_desc`, `client_term_seqno`, `client_term_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Immediate', 'Immediate', 1, 1, NULL, NULL, '2023-12-18 02:13:06', '2023-12-18 02:13:06'),
(2, '7 days', '7 days', 20, 1, NULL, NULL, '2023-12-18 02:13:24', '2023-12-18 02:13:24'),
(3, '14 days', '14 days', 30, 1, NULL, NULL, '2023-12-18 02:13:36', '2023-12-18 02:13:36'),
(4, '30 days', '30 days', 40, 1, NULL, NULL, '2023-12-18 02:13:51', '2023-12-18 02:13:51'),
(5, '45 days', '45 days', 50, 1, NULL, NULL, '2023-12-18 02:14:05', '2023-12-18 02:14:05'),
(6, '60 days', '60 days', 60, 1, NULL, NULL, '2023-12-18 02:14:18', '2023-12-18 02:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `client_upload_files`
--

CREATE TABLE `client_upload_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `file_type_for` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_upload_files`
--

INSERT INTO `client_upload_files` (`id`, `client_id`, `file_path`, `file_type_id`, `file_type_for`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(40, 172, 'uploads//6638971e49ac0_ePortal Feedback - Apr 2024[2195].pdf', 9, 1, 102, NULL, '2024-05-06 10:38:54', '2024-05-06 10:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `tel` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `nationality_id` int(11) NOT NULL COMMENT 'from nationality table',
  `website` varchar(191) DEFAULT NULL,
  `gst_no` varchar(191) DEFAULT NULL,
  `gst_percent` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `remark` varchar(191) DEFAULT NULL,
  `remark_time` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` int(11) NOT NULL,
  `alpha_2_code` varchar(191) NOT NULL,
  `alpha_3_code` varchar(191) NOT NULL,
  `en_country_name` varchar(191) NOT NULL,
  `en_nationality` varchar(191) NOT NULL,
  `country_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `alpha_2_code`, `alpha_3_code`, `en_country_name`, `en_nationality`, `country_status`, `created_at`, `updated_at`) VALUES
(1, 4, 'AF', 'AFG', 'Afghanistan', 'Afghan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 8, 'AL', 'ALB', 'Albania', 'Albanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 10, 'AQ', 'ATA', 'Antarctica', 'Antarctic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 12, 'DZ', 'DZA', 'Algeria', 'Algerian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 16, 'AS', 'ASM', 'American Samoa', 'American Samoan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 20, 'AD', 'AND', 'Andorra', 'Andorran', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 24, 'AO', 'AGO', 'Angola', 'Angolan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antiguan or Barbudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaijani, Azeri', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 32, 'AR', 'ARG', 'Argentina', 'Argentine', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 36, 'AU', 'AUS', 'Australia', 'Australian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 40, 'AT', 'AUT', 'Austria', 'Austrian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 44, 'BS', 'BHS', 'Bahamas', 'Bahamian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 48, 'BH', 'BHR', 'Bahrain', 'Bahraini', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 50, 'BD', 'BGD', 'Bangladesh', 'Bangladeshi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 51, 'AM', 'ARM', 'Armenia', 'Armenian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 52, 'BB', 'BRB', 'Barbados', 'Barbadian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 56, 'BE', 'BEL', 'Belgium', 'Belgian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 60, 'BM', 'BMU', 'Bermuda', 'Bermudian, Bermudan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 64, 'BT', 'BTN', 'Bhutan', 'Bhutanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 68, 'BO', 'BOL', 'Bolivia (Plurinational State of)', 'Bolivian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnian or Herzegovinian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 72, 'BW', 'BWA', 'Botswana', 'Motswana, Botswanan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 74, 'BV', 'BVT', 'Bouvet Island', 'Bouvet Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 76, 'BR', 'BRA', 'Brazil', 'Brazilian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 84, 'BZ', 'BLZ', 'Belize', 'Belizean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 86, 'IO', 'IOT', 'British Indian Ocean Territory', 'BIOT', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 90, 'SB', 'SLB', 'Solomon Islands', 'Solomon Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 92, 'VG', 'VGB', 'Virgin Islands (British)', 'British Virgin Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 96, 'BN', 'BRN', 'Brunei Darussalam', 'Bruneian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 100, 'BG', 'BGR', 'Bulgaria', 'Bulgarian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 104, 'MM', 'MMR', 'Myanmar', 'Burmese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 108, 'BI', 'BDI', 'Burundi', 'Burundian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 112, 'BY', 'BLR', 'Belarus', 'Belarusian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 116, 'KH', 'KHM', 'Cambodia', 'Cambodian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 120, 'CM', 'CMR', 'Cameroon', 'Cameroonian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 124, 'CA', 'CAN', 'Canada', 'Canadian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 132, 'CV', 'CPV', 'Cabo Verde', 'Cabo Verdean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 136, 'KY', 'CYM', 'Cayman Islands', 'Caymanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 140, 'CF', 'CAF', 'Central African Republic', 'Central African', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lankan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 148, 'TD', 'TCD', 'Chad', 'Chadian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 152, 'CL', 'CHL', 'Chile', 'Chilean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 156, 'CN', 'CHN', 'China', 'Chinese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 158, 'TW', 'TWN', 'Taiwan, Province of China', 'Chinese, Taiwanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 162, 'CX', 'CXR', 'Christmas Island', 'Christmas Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Cocos Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 170, 'CO', 'COL', 'Colombia', 'Colombian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 174, 'KM', 'COM', 'Comoros', 'Comoran, Comorian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 175, 'YT', 'MYT', 'Mayotte', 'Mahoran', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 178, 'CG', 'COG', 'Congo (Republic of the)', 'Congolese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 180, 'CD', 'COD', 'Congo (Democratic Republic of the)', 'Congolese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 184, 'CK', 'COK', 'Cook Islands', 'Cook Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 188, 'CR', 'CRI', 'Costa Rica', 'Costa Rican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 191, 'HR', 'HRV', 'Croatia', 'Croatian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 192, 'CU', 'CUB', 'Cuba', 'Cuban', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 196, 'CY', 'CYP', 'Cyprus', 'Cypriot', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 203, 'CZ', 'CZE', 'Czech Republic', 'Czech', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 204, 'BJ', 'BEN', 'Benin', 'Beninese, Beninois', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 208, 'DK', 'DNK', 'Denmark', 'Danish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 212, 'DM', 'DMA', 'Dominica', 'Dominican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 214, 'DO', 'DOM', 'Dominican Republic', 'Dominican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 218, 'EC', 'ECU', 'Ecuador', 'Ecuadorian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 'SV', 'SLV', 'El Salvador', 'Salvadoran', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Equatorial Guinean, Equatoguinean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 231, 'ET', 'ETH', 'Ethiopia', 'Ethiopian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 232, 'ER', 'ERI', 'Eritrea', 'Eritrean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 233, 'EE', 'EST', 'Estonia', 'Estonian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 234, 'FO', 'FRO', 'Faroe Islands', 'Faroese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 238, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'Falkland Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'South Georgia or South Sandwich Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 242, 'FJ', 'FJI', 'Fiji', 'Fijian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 246, 'FI', 'FIN', 'Finland', 'Finnish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 248, 'AX', 'ALA', 'Åland Islands', 'Åland Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 250, 'FR', 'FRA', 'France', 'French', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 254, 'GF', 'GUF', 'French Guiana', 'French Guianese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 258, 'PF', 'PYF', 'French Polynesia', 'French Polynesian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 260, 'TF', 'ATF', 'French Southern Territories', 'French Southern Territories', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 262, 'DJ', 'DJI', 'Djibouti', 'Djiboutian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 266, 'GA', 'GAB', 'Gabon', 'Gabonese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 268, 'GE', 'GEO', 'Georgia', 'Georgian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 270, 'GM', 'GMB', 'Gambia', 'Gambian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 275, 'PS', 'PSE', 'Palestine, State of', 'Palestinian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 276, 'DE', 'DEU', 'Germany', 'German', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 288, 'GH', 'GHA', 'Ghana', 'Ghanaian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 296, 'KI', 'KIR', 'Kiribati', 'I-Kiribati', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 300, 'GR', 'GRC', 'Greece', 'Greek, Hellenic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 304, 'GL', 'GRL', 'Greenland', 'Greenlandic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 308, 'GD', 'GRD', 'Grenada', 'Grenadian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 316, 'GU', 'GUM', 'Guam', 'Guamanian, Guambat', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 320, 'GT', 'GTM', 'Guatemala', 'Guatemalan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 324, 'GN', 'GIN', 'Guinea', 'Guinean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 328, 'GY', 'GUY', 'Guyana', 'Guyanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 332, 'HT', 'HTI', 'Haiti', 'Haitian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Heard Island or McDonald Islands', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 336, 'VA', 'VAT', 'Vatican City State', 'Vatican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 340, 'HN', 'HND', 'Honduras', 'Honduran', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 344, 'HK', 'HKG', 'Hong Kong', 'Hong Kong, Hong Kongese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 348, 'HU', 'HUN', 'Hungary', 'Hungarian, Magyar', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 352, 'IS', 'ISL', 'Iceland', 'Icelandic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 356, 'IN', 'IND', 'India', 'Indian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 360, 'ID', 'IDN', 'Indonesia', 'Indonesian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 364, 'IR', 'IRN', 'Iran', 'Iranian, Persian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 368, 'IQ', 'IRQ', 'Iraq', 'Iraqi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 372, 'IE', 'IRL', 'Ireland', 'Irish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 376, 'IL', 'ISR', 'Israel', 'Israeli', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 380, 'IT', 'ITA', 'Italy', 'Italian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 384, 'CI', 'CIV', 'Côte d\'Ivoire', 'Ivorian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 388, 'JM', 'JAM', 'Jamaica', 'Jamaican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 392, 'JP', 'JPN', 'Japan', 'Japanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstani, Kazakh', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 400, 'JO', 'JOR', 'Jordan', 'Jordanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 404, 'KE', 'KEN', 'Kenya', 'Kenyan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 408, 'KP', 'PRK', 'Korea (Democratic People\'s Republic of)', 'North Korean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 410, 'KR', 'KOR', 'Korea (Republic of)', 'South Korean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 414, 'KW', 'KWT', 'Kuwait', 'Kuwaiti', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kyrgyzstani, Kyrgyz, Kirgiz, Kirghiz', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 418, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'Lao, Laotian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 422, 'LB', 'LBN', 'Lebanon', 'Lebanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 426, 'LS', 'LSO', 'Lesotho', 'Basotho', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 428, 'LV', 'LVA', 'Latvia', 'Latvian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 430, 'LR', 'LBR', 'Liberia', 'Liberian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 434, 'LY', 'LBY', 'Libya', 'Libyan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 440, 'LT', 'LTU', 'Lithuania', 'Lithuanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg, Luxembourgish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 446, 'MO', 'MAC', 'Macao', 'Macanese, Chinese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 450, 'MG', 'MDG', 'Madagascar', 'Malagasy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 454, 'MW', 'MWI', 'Malawi', 'Malawian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 458, 'MY', 'MYS', 'Malaysia', 'Malaysian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 462, 'MV', 'MDV', 'Maldives', 'Maldivian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 466, 'ML', 'MLI', 'Mali', 'Malian, Malinese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 470, 'MT', 'MLT', 'Malta', 'Maltese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 474, 'MQ', 'MTQ', 'Martinique', 'Martiniquais, Martinican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 478, 'MR', 'MRT', 'Mauritania', 'Mauritanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 480, 'MU', 'MUS', 'Mauritius', 'Mauritian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 484, 'MX', 'MEX', 'Mexico', 'Mexican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 492, 'MC', 'MCO', 'Monaco', 'Monégasque, Monacan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 496, 'MN', 'MNG', 'Mongolia', 'Mongolian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 498, 'MD', 'MDA', 'Moldova (Republic of)', 'Moldovan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 499, 'ME', 'MNE', 'Montenegro', 'Montenegrin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 500, 'MS', 'MSR', 'Montserrat', 'Montserratian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 504, 'MA', 'MAR', 'Morocco', 'Moroccan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 508, 'MZ', 'MOZ', 'Mozambique', 'Mozambican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 512, 'OM', 'OMN', 'Oman', 'Omani', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 516, 'NA', 'NAM', 'Namibia', 'Namibian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 520, 'NR', 'NRU', 'Nauru', 'Nauruan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 524, 'NP', 'NPL', 'Nepal', 'Nepali, Nepalese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 528, 'NL', 'NLD', 'Netherlands', 'Dutch, Netherlandic', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 531, 'CW', 'CUW', 'Curaçao', 'Curaçaoan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 533, 'AW', 'ABW', 'Aruba', 'Aruban', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 534, 'SX', 'SXM', 'Sint Maarten (Dutch part)', 'Sint Maarten', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 535, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 540, 'NC', 'NCL', 'New Caledonia', 'New Caledonian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 548, 'VU', 'VUT', 'Vanuatu', 'Ni-Vanuatu, Vanuatuan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 554, 'NZ', 'NZL', 'New Zealand', 'New Zealand, NZ', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 558, 'NI', 'NIC', 'Nicaragua', 'Nicaraguan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 562, 'NE', 'NER', 'Niger', 'Nigerien', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 566, 'NG', 'NGA', 'Nigeria', 'Nigerian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 570, 'NU', 'NIU', 'Niue', 'Niuean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 574, 'NF', 'NFK', 'Norfolk Island', 'Norfolk Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 578, 'NO', 'NOR', 'Norway', 'Norwegian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 580, 'MP', 'MNP', 'Northern Mariana Islands', 'Northern Marianan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'American', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 583, 'FM', 'FSM', 'Micronesia (Federated States of)', 'Micronesian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 584, 'MH', 'MHL', 'Marshall Islands', 'Marshallese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 585, 'PW', 'PLW', 'Palau', 'Palauan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 586, 'PK', 'PAK', 'Pakistan', 'Pakistani', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 591, 'PA', 'PAN', 'Panama', 'Panamanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 598, 'PG', 'PNG', 'Papua New Guinea', 'Papua New Guinean, Papuan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 600, 'PY', 'PRY', 'Paraguay', 'Paraguayan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 604, 'PE', 'PER', 'Peru', 'Peruvian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 608, 'PH', 'PHL', 'Philippines', 'Philippine, Filipino', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 616, 'PL', 'POL', 'Poland', 'Polish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 620, 'PT', 'PRT', 'Portugal', 'Portuguese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 624, 'GW', 'GNB', 'Guinea-Bissau', 'Bissau-Guinean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 626, 'TL', 'TLS', 'Timor-Leste', 'Timorese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 630, 'PR', 'PRI', 'Puerto Rico', 'Puerto Rican', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 634, 'QA', 'QAT', 'Qatar', 'Qatari', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 638, 'RE', 'REU', 'Réunion', 'Réunionese, Réunionnais', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 642, 'RO', 'ROU', 'Romania', 'Romanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 643, 'RU', 'RUS', 'Russian Federation', 'Russian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 646, 'RW', 'RWA', 'Rwanda', 'Rwandan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 652, 'BL', 'BLM', 'Saint Barthélemy', 'Barthélemois', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 654, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helenian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Kittitian or Nevisian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 660, 'AI', 'AIA', 'Anguilla', 'Anguillan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 662, 'LC', 'LCA', 'Saint Lucia', 'Saint Lucian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 663, 'MF', 'MAF', 'Saint Martin (French part)', 'Saint-Martinoise', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 666, 'PM', 'SPM', 'Saint Pierre and Miquelon', 'Saint-Pierrais or Miquelonnais', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincentian, Vincentian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 674, 'SM', 'SMR', 'San Marino', 'Sammarinese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 678, 'ST', 'STP', 'Sao Tome and Principe', 'São Toméan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 682, 'SA', 'SAU', 'Saudi Arabia', 'Saudi, Saudi Arabian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 686, 'SN', 'SEN', 'Senegal', 'Senegalese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 688, 'RS', 'SRB', 'Serbia', 'Serbian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 690, 'SC', 'SYC', 'Seychelles', 'Seychellois', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leonean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 702, 'SG', 'SGP', 'Singapore', 'Singaporean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 703, 'SK', 'SVK', 'Slovakia', 'Slovak', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 704, 'VN', 'VNM', 'Vietnam', 'Vietnamese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 705, 'SI', 'SVN', 'Slovenia', 'Slovenian, Slovene', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 706, 'SO', 'SOM', 'Somalia', 'Somali, Somalian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 710, 'ZA', 'ZAF', 'South Africa', 'South African', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwean', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 724, 'ES', 'ESP', 'Spain', 'Spanish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 728, 'SS', 'SSD', 'South Sudan', 'South Sudanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 729, 'SD', 'SDN', 'Sudan', 'Sudanese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 732, 'EH', 'ESH', 'Western Sahara', 'Sahrawi, Sahrawian, Sahraouian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 740, 'SR', 'SUR', 'Suriname', 'Surinamese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 748, 'SZ', 'SWZ', 'Swaziland', 'Swazi', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 752, 'SE', 'SWE', 'Sweden', 'Swedish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 756, 'CH', 'CHE', 'Switzerland', 'Swiss', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 760, 'SY', 'SYR', 'Syrian Arab Republic', 'Syrian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 762, 'TJ', 'TJK', 'Tajikistan', 'Tajikistani', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 764, 'TH', 'THA', 'Thailand', 'Thai', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 768, 'TG', 'TGO', 'Togo', 'Togolese', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 772, 'TK', 'TKL', 'Tokelau', 'Tokelauan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 776, 'TO', 'TON', 'Tonga', 'Tongan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinidadian or Tobagonian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 784, 'AE', 'ARE', 'United Arab Emirates', 'Emirati, Emirian, Emiri', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 788, 'TN', 'TUN', 'Tunisia', 'Tunisian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 792, 'TR', 'TUR', 'Turkey', 'Turkish', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 795, 'TM', 'TKM', 'Turkmenistan', 'Turkmen', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks and Caicos Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 798, 'TV', 'TUV', 'Tuvalu', 'Tuvaluan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 800, 'UG', 'UGA', 'Uganda', 'Ugandan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 804, 'UA', 'UKR', 'Ukraine', 'Ukrainian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 807, 'MK', 'MKD', 'Macedonia (the former Yugoslav Republic of)', 'Macedonian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 818, 'EG', 'EGY', 'Egypt', 'Egyptian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 826, 'GB', 'GBR', 'United Kingdom of Great Britain and Northern Ireland', 'British, UK', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 831, 'GG', 'GGY', 'Guernsey', 'Channel Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 832, 'JE', 'JEY', 'Jersey', 'Channel Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 833, 'IM', 'IMN', 'Isle of Man', 'Manx', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 834, 'TZ', 'TZA', 'Tanzania, United Republic of', 'Tanzanian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 840, 'US', 'USA', 'United States of America', 'American', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 850, 'VI', 'VIR', 'Virgin Islands (U.S.)', 'U.S. Virgin Island', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 854, 'BF', 'BFA', 'Burkina Faso', 'Burkinabé', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 858, 'UY', 'URY', 'Uruguay', 'Uruguayan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 860, 'UZ', 'UZB', 'Uzbekistan', 'Uzbekistani, Uzbek', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 862, 'VE', 'VEN', 'Venezuela (Bolivarian Republic of)', 'Venezuelan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis and Futuna, Wallisian or Futunan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 882, 'WS', 'WSM', 'Samoa', 'Samoan', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 887, 'YE', 'YEM', 'Yemen', 'Yemeni', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 894, 'ZM', 'ZMB', 'Zambia', 'Zambian', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

CREATE TABLE `dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `teamleader_id` int(11) DEFAULT NULL,
  `consultent_id` int(11) DEFAULT NULL,
  `remark_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Previous Flowup Id',
  `move_time` datetime DEFAULT NULL,
  `follow_day` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `insert_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `insert_date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `callback` int(11) NOT NULL DEFAULT 0,
  `client_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboards`
--

INSERT INTO `dashboards` (`id`, `candidate_id`, `manager_id`, `teamleader_id`, `consultent_id`, `remark_id`, `move_time`, `follow_day`, `status`, `insert_by`, `update_by`, `insert_date_time`, `created_at`, `updated_at`, `callback`, `client_company`) VALUES
(40, 147, 120, 122, 126, 0, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 11:56:00', '2024-04-25 05:59:38', 0, NULL),
(41, 148, 119, 124, NULL, 0, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 11:56:41', '2024-03-04 12:54:43', 0, NULL),
(42, 149, 120, 122, NULL, 0, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 11:57:09', '2024-04-25 05:09:52', 0, NULL),
(43, 150, 120, 122, 126, 0, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 12:02:20', '2024-04-25 06:00:15', 0, NULL),
(44, 151, 120, 122, 126, 22, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 12:02:20', '2024-03-07 09:39:05', 1, NULL),
(45, 152, 119, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, '2024-03-04 12:02:20', '2024-03-04 12:51:02', 0, NULL),
(46, 153, 119, 124, 128, 4, NULL, 0, 0, 101, NULL, NULL, '2024-03-04 12:08:40', '2024-03-04 13:00:59', 0, NULL),
(47, 154, 119, 124, 128, 11, NULL, 0, 0, 101, NULL, NULL, '2024-03-04 12:49:25', '2024-03-04 12:56:48', 0, NULL),
(48, 155, NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, '2024-04-25 05:12:08', '2024-05-04 06:45:59', 0, NULL),
(49, 156, 120, NULL, NULL, 4, NULL, 0, 0, 104, NULL, NULL, '2024-05-02 08:50:14', '2024-05-02 12:06:45', 0, NULL),
(50, 157, 120, 122, 125, 3, NULL, 0, 0, 104, NULL, NULL, '2024-05-04 07:28:47', '2024-05-05 12:29:55', 0, NULL),
(51, 158, 119, NULL, NULL, 0, NULL, 0, 0, 104, NULL, NULL, '2024-05-04 09:19:22', '2024-05-04 14:20:18', 0, NULL),
(52, 159, 120, 122, 125, 0, NULL, 0, 0, 104, NULL, NULL, '2024-05-04 13:47:10', '2024-05-04 13:47:10', 0, NULL),
(53, 160, 119, NULL, NULL, 99, NULL, 0, 0, 104, NULL, NULL, '2024-05-04 13:57:12', '2024-05-04 15:21:44', 0, NULL),
(54, 161, 120, 131, 134, 99, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 06:27:23', '2024-05-05 10:35:26', 0, 58),
(55, 162, 120, 122, 125, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(56, 163, 120, 122, 126, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(57, 164, 120, 122, 125, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(58, 165, 120, 122, 126, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(59, 166, 120, 122, 125, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(60, 167, 120, 122, 125, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(61, 168, 120, 122, 126, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 11:50:04', 0, NULL),
(62, 169, 120, NULL, NULL, 0, NULL, 0, 0, 112, NULL, NULL, '2024-05-05 11:50:04', '2024-05-05 12:20:18', 0, NULL),
(63, 170, 120, NULL, 134, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 08:55:26', '2024-05-06 08:55:26', 0, NULL),
(64, 171, 120, NULL, 134, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 08:59:38', '2024-05-06 08:59:38', 0, NULL),
(65, 172, 120, 123, 133, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 09:02:30', '2024-05-06 10:56:58', 0, NULL),
(66, 173, 120, 122, 126, 0, NULL, 0, 0, 104, NULL, NULL, '2024-05-06 11:48:34', '2024-05-06 11:48:58', 0, NULL),
(67, 174, 120, 122, 126, 22, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 12:12:00', '2024-05-18 09:20:58', 4, NULL),
(68, 175, 120, 122, 125, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 0, NULL),
(69, 176, 120, 122, 126, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 12:12:00', '2024-05-06 12:12:00', 0, NULL),
(70, 177, 120, 122, 125, 0, NULL, 0, 0, 102, NULL, NULL, '2024-05-06 12:12:00', '2024-05-06 13:59:37', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dbsexes`
--

CREATE TABLE `dbsexes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dbsexes_code` varchar(191) NOT NULL,
  `dbsexes_desc` varchar(191) NOT NULL,
  `dbsexes_seqno` int(11) DEFAULT NULL,
  `dbsexes_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dbsexes`
--

INSERT INTO `dbsexes` (`id`, `dbsexes_code`, `dbsexes_desc`, `dbsexes_seqno`, `dbsexes_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Male', 'Male', 10, 1, 1, 1, '2023-12-19 00:16:27', '2023-12-19 00:16:27'),
(2, 'Female', 'Female', 20, 1, 1, 1, '2023-12-19 00:16:27', '2023-12-19 00:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_code` varchar(191) NOT NULL,
  `department_desc` varchar(191) NOT NULL,
  `department_seqno` int(11) DEFAULT NULL,
  `department_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `department_desc`, `department_seqno`, `department_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(5, 'Business Development Manager', 'Business Development Manager', 10, 1, NULL, NULL, '2023-12-18 02:25:10', '2023-12-18 02:25:10'),
(6, 'Director', 'Director', 20, 1, NULL, NULL, '2023-12-18 02:25:21', '2023-12-18 03:10:43'),
(7, 'Interior Designer', 'Interior Designer', 30, 1, NULL, NULL, '2023-12-18 02:25:40', '2023-12-18 02:25:40'),
(8, 'Project Supervisor', 'Project Supervisor', 40, 1, NULL, NULL, '2023-12-18 02:25:50', '2023-12-18 02:25:50'),
(9, 'Consultant', 'Consultant', 50, 1, NULL, NULL, '2023-12-18 02:26:00', '2023-12-18 02:26:00'),
(10, 'Accounts Admin', 'Accounts Admin', 60, 1, NULL, NULL, '2023-12-18 02:26:11', '2023-12-18 02:26:11'),
(11, 'Programmer', 'Programmer', 70, 1, NULL, NULL, '2023-12-18 02:26:20', '2023-12-18 02:26:20'),
(13, 'Quis nostrum modi qu', 'Adipisicing omnis de', 54, 1, NULL, NULL, '2024-01-20 00:03:56', '2024-01-20 00:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `deshboard_menus`
--

CREATE TABLE `deshboard_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_group` varchar(191) DEFAULT NULL,
  `menu_icon` varchar(191) DEFAULT NULL,
  `menu_name` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `menu_path` varchar(191) DEFAULT NULL,
  `menu_perent` int(11) DEFAULT NULL,
  `menu_short` int(11) DEFAULT NULL,
  `userRole_id` int(11) DEFAULT NULL,
  `menu_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `exception` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deshboard_menus`
--

INSERT INTO `deshboard_menus` (`id`, `menu_group`, `menu_icon`, `menu_name`, `slug`, `menu_path`, `menu_perent`, `menu_short`, `userRole_id`, `menu_status`, `created_by`, `modify_by`, `exception`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'fa fa-home', 'Dashboard', 'dashboard', '/admin', 0, 10, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Setting', 'fa-solid fa-gear', 'Setting', 'setting', '/admin/setting', 0, 90, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Setting', NULL, 'Menu', 'menu', '/admin/dashboard/menu', 2, 2, 1, 1, NULL, 1, NULL, NULL, '2023-12-12 09:42:59'),
(6, 'Employee', 'fa fa-user', 'Employee', 'employee', '#', 0, 30, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 23:25:00'),
(7, 'Leave', 'fa fa-envelope', 'Leave', 'leave', NULL, 0, 60, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 04:24:17'),
(8, 'Report', 'fas fa-clock', 'Report', 'report', NULL, 0, 80, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 23:23:21'),
(9, 'Attendance', 'fa fa-calendar-check-o', 'Attendance', 'attendance', NULL, 0, 70, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 23:18:52'),
(10, 'Candidate', 'fa-regular fa-folder-open', 'Candidate', 'candidate', '#', 0, 40, 1, 1, NULL, 1, NULL, NULL, '2023-12-20 01:04:06'),
(12, 'Personal Folder', 'fa-regular fa-folder', 'Personal Folder', 'personal-folder', '/personal-folder', 0, 69, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 23:36:52'),
(13, 'Jobs Opening', 'fa-solid fa-business-time', 'Jobs Opening', 'job-opening', NULL, 0, 50, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 21:31:09'),
(14, 'Payroll', 'fa-solid fa-hand-holding-dollar', 'Payroll', 'payroll', NULL, 0, 75, 1, 1, NULL, 1, NULL, NULL, '2023-12-26 23:16:59'),
(16, 'Setting', NULL, 'Department', 'department', '/admin/department', 70, 3, 0, 1, 1, 1, NULL, '2023-12-12 09:24:12', '2023-12-26 23:56:55'),
(18, 'Setting', NULL, 'Leave Type', 'leave-type', '/admin/leave-type', 74, 4, 0, 1, 1, 1, NULL, '2023-12-12 09:44:15', '2023-12-27 00:05:46'),
(21, 'Setting', NULL, 'TNC Template', 'tnc-template', '/admin/tnc', 75, 5, 0, 1, 1, 1, NULL, '2023-12-12 15:43:08', '2023-12-27 00:07:45'),
(22, 'Setting', NULL, 'Religion', 'religion', '/admin/religion', 70, 6, 0, 1, 1, 1, NULL, '2023-12-13 04:15:58', '2023-12-27 00:03:40'),
(23, 'Setting', NULL, 'Client Terms', 'client-terms', '/admin/client-term', 75, 7, 0, 1, 1, 1, NULL, '2023-12-13 05:44:32', '2023-12-27 00:08:09'),
(24, 'Setting', NULL, 'Marital Status', 'marital-status', '/admin/marital-status', 70, 8, 0, 1, 1, 1, NULL, '2023-12-13 06:26:19', '2023-12-27 00:00:12'),
(25, 'Setting', NULL, 'Industry Type', 'industry-type', '/admin/industry-type', 75, 9, 0, 1, 1, 1, NULL, '2023-12-13 08:29:12', '2023-12-27 00:07:54'),
(33, 'Clients', 'fa fa-users', 'Client', 'clients', '#', 0, 20, 0, 1, 1, 1, NULL, '2023-12-14 10:30:22', '2023-12-26 23:27:07'),
(35, 'Jobs Opening', 'fab fa fa-users', 'Job Category', 'job-category', '/admin/job-category', 66, 50, 0, 1, 1, 1, NULL, '2023-12-15 03:49:37', '2023-12-26 23:53:04'),
(36, 'Jobs Opening', 'fab fa fa-users', 'Job Type', 'job-type', '/admin/job-type', 66, 15, 0, 1, 1, 1, NULL, '2023-12-15 03:55:56', '2023-12-26 23:53:21'),
(37, 'Jobs Opening', 'fab fa fa-users', 'Job Posting', 'job-posting', '/admin/job', 13, 12, 0, 1, 1, 1, NULL, '2023-12-15 04:29:18', '2023-12-26 21:30:57'),
(38, 'Setting', 'fa-ambulance', 'Designation', 'designation', '/admin/designation', 70, 13, 0, 1, 1, 1, NULL, '2023-12-18 02:29:10', '2023-12-26 23:57:08'),
(43, 'Candidate', 'fa fa-female', 'Candidates', 'candidates', '/admin/candidate', 10, NULL, 0, 1, 1, 1, NULL, '2023-12-20 01:03:47', '2023-12-20 01:04:39'),
(44, 'Candidate', 'fa fa-ambulance', 'Import Multiple Candidate', 'import-multiple-candidate', '/admin/import', 10, NULL, 0, 1, 1, 1, NULL, '2023-12-20 01:06:23', '2023-12-25 02:09:17'),
(46, 'Leave', 'fa fa-500px', 'Leaves', 'leaves', '/admin/leave', 7, NULL, 0, 1, 1, 1, NULL, '2023-12-26 04:24:36', '2023-12-26 04:24:36'),
(47, 'Payroll Setting', 'fa fa-dollar', 'Payroll Setting', 'payroll-setting', NULL, 0, 76, 0, 1, 1, 1, NULL, '2023-12-26 23:14:49', '2023-12-26 23:14:49'),
(48, 'Payroll Setting', 'fa fa-500px', 'Additional Type', 'additional-type', '#', 47, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:15:18', '2023-12-26 23:15:18'),
(49, 'Payroll Setting', 'fa fa-500px', 'Additional (Candidate)', 'additional-candidate', '#', 47, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:15:46', '2023-12-26 23:15:46'),
(50, 'Payroll Setting', 'fa fa-500px', 'Deductions (Candidate)', 'deductions-candidate', '#', 47, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:16:12', '2023-12-26 23:16:12'),
(51, 'Payroll Setting', 'fa fa-500px', 'GIRO No', 'giro-no', '#', 47, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:16:31', '2023-12-26 23:16:31'),
(52, 'Payroll', 'fa fa-500px', 'Candidate Payroll', 'candidate-payroll', '/candidate/payroll', 14, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:17:19', '2023-12-26 23:46:00'),
(53, 'Leave', 'fa fa-500px', 'Leave Balance', 'leave-balance', '#', 7, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:18:28', '2023-12-26 23:18:28'),
(54, 'Attendance', 'fa fa-500px', 'Attendance List', 'attendance-list', '#', 9, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:19:21', '2023-12-26 23:19:21'),
(55, 'Attendance', 'fa fa-500px', 'Attendance (Candidate)', 'attendance-candidate', '/admin/attendence/create', 9, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:20:26', '2024-01-05 16:43:06'),
(56, 'Payroll', 'fa fa-500px', 'Invoice', 'invoice', '/invoice', 14, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:22:59', '2023-12-26 23:38:18'),
(57, 'Report', 'fa fa-500px', 'Activity Log', 'activity-log', '/activity', 8, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:23:47', '2023-12-26 23:49:00'),
(58, 'Employee', 'fa fa-500px', 'Employees', 'employees', '/admin/employee', 6, 10, 0, 1, 1, 1, NULL, '2023-12-26 23:25:26', '2023-12-26 23:25:26'),
(59, 'Employee', 'fa fa-500px', 'Login Control', 'login-control', '#', 6, 11, 0, 1, 1, 1, NULL, '2023-12-26 23:25:52', '2023-12-26 23:25:52'),
(60, 'Clients', 'fa fa-500px', 'Client Login', 'client-login-control', '#', 33, 11, 0, 1, 1, 1, NULL, '2023-12-26 23:26:48', '2023-12-26 23:28:45'),
(61, 'Client', 'fa fa-500px', 'Clients', NULL, '/admin/clients', 33, 10, 0, 1, 1, 1, NULL, '2023-12-26 23:27:40', '2023-12-26 23:27:40'),
(62, 'Attendance', 'fa fa-500px', 'Time Sheet', 'time-sheet', '/admin/time-sheet', 9, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:42:34', '2024-01-04 05:00:47'),
(63, 'Setting', 'fa fa-500px', 'Company Profile', 'company-profile', '/admin/company', 2, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:44:31', '2024-01-04 02:40:14'),
(64, 'Employee', 'fa fa-500px', 'Role Permission', 'role-permission', '/user-control', 70, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:48:28', '2023-12-26 23:58:38'),
(65, 'Employee', 'fa fa-500px', 'Role Permission List', 'role-permission-list', '/employee-group', 70, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:50:07', '2023-12-26 23:58:50'),
(66, 'Job Setting', 'fa fa-sun-o', 'Job Setting', 'job-setting', NULL, 0, 55, 0, 1, 1, 1, NULL, '2023-12-26 23:51:26', '2023-12-26 23:51:26'),
(67, 'Job Setting', 'fa fa-500px', 'Job Status', 'job-status', '/job-status', 66, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:52:00', '2023-12-26 23:52:00'),
(68, 'Jobs Opening', 'fa fa-500px', 'Job Applications', 'job-applications', '/admin/job-application', 13, NULL, 0, 1, 1, 1, NULL, '2023-12-26 23:53:54', '2023-12-28 22:15:11'),
(70, 'Employee Setting', 'fa fa-won', 'Employee Setting', 'employee-setting', NULL, 0, 35, 0, 1, 1, 1, NULL, '2023-12-26 23:56:18', '2023-12-26 23:56:18'),
(71, 'Candidate Setting', 'fa fa-stack-exchange', 'Candidate Setting', 'candidate-setting', '#', 0, 45, 0, 1, 1, 1, NULL, '2023-12-27 00:01:28', '2023-12-27 00:01:28'),
(72, 'Candidate Setting', 'fa fa-500px', 'Marital Status (C)', 'marital-status-c', '/admin/marital-status', 71, NULL, 0, 1, 1, 1, NULL, '2023-12-27 00:02:20', '2023-12-27 00:02:30'),
(73, 'Candidate Setting', 'fa fa-500px', 'Religion (C)', 'religion-c', '/admin/religion', 71, NULL, 0, 1, 1, 1, NULL, '2023-12-27 00:03:11', '2023-12-27 00:03:11'),
(74, 'Leave Setting', 'fa fa-user-times', 'Leave Setting', 'leave-setting', '#', 0, 65, 0, 1, 1, 1, NULL, '2023-12-27 00:04:40', '2023-12-27 00:04:40'),
(75, 'Client Setting', 'fa fa-bitbucket', 'Client Setting', 'client-setting', '#', 0, 25, 0, 1, 1, 1, NULL, '2023-12-27 00:07:08', '2023-12-27 00:07:08'),
(76, 'Employee Setting', 'fa fa-500px', 'Pass Type', 'pass-type', '/admin/pass-type', 70, NULL, 0, 1, 1, 10, NULL, '2023-12-27 00:09:37', '2023-12-28 00:12:02'),
(77, 'Candidate Setting', 'fa fa-500px', 'Remark Type', 'remark-type', '/admin/remarks-type', 71, NULL, 0, 1, 1, 1, NULL, '2023-12-27 00:11:53', '2023-12-28 03:14:41'),
(78, 'Role Management', 'fa fa-asl-interpreting', 'Create Role', 'create-role', '/admin/roles', 2, 91, 0, 1, 5, 1, NULL, '2023-12-27 02:20:17', '2023-12-28 04:45:48'),
(79, NULL, 'fa fa-500px', 'All User', 'all-user', '/admin/users', 2, NULL, 0, 1, 10, 1, NULL, '2023-12-27 22:13:03', '2023-12-28 04:46:50'),
(81, NULL, 'fa fa-500px', 'Bank', 'bank', '/admin/bank', 2, NULL, NULL, 1, 1, 1, NULL, '2024-01-03 23:06:16', '2024-01-03 23:06:35'),
(82, NULL, 'fa fa-500px', 'Giro', 'giro', '/admin/giro', 2, NULL, NULL, 1, 1, 1, NULL, '2024-01-03 23:52:22', '2024-01-03 23:52:22'),
(83, NULL, 'fa fa-500px', 'Nationality', 'nationality', '/admin/nationality', 2, NULL, NULL, 1, 1, 1, NULL, '2024-01-04 01:17:41', '2024-01-04 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation_code` varchar(191) NOT NULL,
  `designation_desc` varchar(191) NOT NULL,
  `designation_seqno` int(11) DEFAULT NULL,
  `designation_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation_code`, `designation_desc`, `designation_seqno`, `designation_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'PROJECT CO-ORDINATOR', 'PROJECT CO-ORDINATOR', 10, 1, NULL, NULL, '2023-12-18 02:42:19', '2023-12-18 02:42:19'),
(2, 'PROJECT EXECUTIVE', 'PROJECT EXECUTIVE', 10, 1, NULL, NULL, '2023-12-18 02:43:00', '2023-12-18 02:43:00'),
(3, 'WEB DESIGNER', 'WEB DESIGNER', 10, 1, NULL, NULL, '2023-12-18 02:43:10', '2023-12-18 02:43:10'),
(4, 'WEB PROGRAMMER', 'WEB PROGRAMMER', 10, 1, NULL, NULL, '2023-12-18 02:43:20', '2023-12-18 02:43:20'),
(5, 'OPERATIONS MANAGER', 'OPERATIONS MANAGER', 10, 1, NULL, NULL, '2023-12-18 02:43:31', '2023-12-18 02:43:31'),
(6, 'HOD (PROJECT DELIVERY)', 'HOD (PROJECT DELIVERY)', 10, 1, NULL, NULL, '2023-12-18 02:43:40', '2023-12-18 02:43:40'),
(7, 'ART DIRECTOR', 'ART DIRECTOR', 10, 1, NULL, NULL, '2023-12-18 02:43:49', '2023-12-18 02:43:49'),
(8, 'PROGRAMMING MANAGER', 'PROGRAMMING MANAGER', 10, 1, NULL, NULL, '2023-12-18 02:44:00', '2023-12-18 02:44:00'),
(9, 'ACCOUNTS MANAGER', 'ACCOUNTS MANAGER', 10, 1, NULL, NULL, '2023-12-18 02:44:08', '2023-12-18 02:44:08'),
(10, 'ADMINISTRATIVE EXECUTIVE', 'ADMINISTRATIVE EXECUTIVE', 10, 1, NULL, NULL, '2023-12-18 02:44:16', '2023-12-18 02:44:16'),
(11, 'HR EXECUTIVE', 'HR EXECUTIVE', 10, 1, NULL, NULL, '2023-12-18 02:44:26', '2023-12-18 02:44:26'),
(12, 'SALES MANAGER', 'SALES MANAGER', 10, 1, NULL, NULL, '2023-12-18 02:45:32', '2023-12-18 02:45:32'),
(13, 'BUSINESS DEVELOPMENT EXECUTIVE', 'BUSINESS DEVELOPMENT EXECUTIVE', 10, 1, NULL, NULL, '2023-12-18 02:45:39', '2023-12-18 02:45:39'),
(14, 'DIRECTOR', 'DIRECTOR', 10, 1, NULL, NULL, '2023-12-18 02:45:48', '2023-12-18 02:45:48'),
(15, 'ACCOUNTANT', 'ACCOUNTANT', 10, 1, NULL, NULL, '2023-12-18 02:45:58', '2023-12-18 02:45:58'),
(16, 'PROJECT MANAGER', 'PROJECT MANAGER', 10, 1, NULL, NULL, '2023-12-18 02:46:05', '2023-12-18 02:46:05'),
(17, 'SENIOR WEB PROGRAMMER', 'SENIOR WEB PROGRAMMER', 10, 1, NULL, NULL, '2023-12-18 02:46:14', '2023-12-18 02:46:14'),
(18, 'ACCOUNTS EXECUTIVE', 'ACCOUNTS EXECUTIVE', 10, 1, NULL, NULL, '2023-12-18 02:46:23', '2023-12-18 02:46:23'),
(20, 'RECEPTIONIST', 'RECEPTIONIST', 1, 1, NULL, NULL, '2024-01-06 14:54:39', '2024-01-06 14:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_outlet_id` int(11) NOT NULL DEFAULT 1 COMMENT 'Link with outlet table',
  `employee_code` varchar(191) DEFAULT NULL,
  `employee_name` varchar(191) DEFAULT NULL,
  `employee_phone` varchar(191) DEFAULT NULL,
  `employee_email` varchar(191) DEFAULT NULL,
  `passtypes_id` int(11) DEFAULT NULL COMMENT 'link to pass type table',
  `employee_nric` varchar(191) DEFAULT NULL,
  `employee_mobile` varchar(191) DEFAULT NULL,
  `employee_tel` varchar(191) DEFAULT NULL,
  `employee_birthdate` date DEFAULT NULL,
  `employee_joindate` date DEFAULT NULL,
  `employee_confirmationdate` date DEFAULT NULL,
  `employee_prdate` date DEFAULT NULL,
  `employee_resigndate` date DEFAULT NULL,
  `employee_resignreason` varchar(191) DEFAULT NULL,
  `employee_numberofchildren` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL COMMENT 'link to user table',
  `roles_id` int(11) DEFAULT 1,
  `manager_users_id` int(11) DEFAULT NULL,
  `team_leader_users_id` int(11) DEFAULT NULL,
  `employee_shrc` varchar(191) DEFAULT NULL COMMENT 'only for payroll user-roll',
  `employee_defination` varchar(191) DEFAULT NULL,
  `leave_aprv1_users_id` int(11) DEFAULT NULL,
  `leave_aprv2_users_id` int(11) DEFAULT NULL,
  `leave_aprv3_users_id` int(11) DEFAULT NULL,
  `claims_aprv1_users_id` int(11) DEFAULT NULL,
  `claims_aprv2_id` int(11) DEFAULT NULL,
  `claims_aprv3_users_id` int(11) DEFAULT NULL,
  `is_payroll_enable` int(11) NOT NULL DEFAULT 0 COMMENT '1=salary entry enable, 0=salary entry disable',
  `is_cpf_enable` int(11) NOT NULL DEFAULT 0,
  `employee_isovertime` int(11) NOT NULL DEFAULT 0,
  `paymodes_id` int(11) DEFAULT NULL COMMENT 'link to paymode table',
  `employee_bank` varchar(191) DEFAULT NULL,
  `employee_bank_acc_no` varchar(191) DEFAULT NULL,
  `employee_bank_acc_title` varchar(191) DEFAULT NULL,
  `employee_street` varchar(191) DEFAULT NULL COMMENT 'employee address start',
  `employee_unit_number` varchar(191) DEFAULT NULL,
  `employee_postal_code` varchar(191) DEFAULT NULL,
  `employee_street2` varchar(191) DEFAULT NULL,
  `employee_unit_number2` varchar(191) DEFAULT NULL,
  `employee_postal_code2` varchar(191) DEFAULT NULL COMMENT 'employee address end',
  `employee_emr_contact` varchar(191) DEFAULT NULL COMMENT 'Emergency contact info start',
  `employee_emr_relation` varchar(191) DEFAULT NULL,
  `employee_emr_phone1` varchar(191) DEFAULT NULL,
  `employee_emr_phone2` varchar(191) DEFAULT NULL,
  `employee_emr_address` varchar(191) DEFAULT NULL,
  `employee_emr_remarks` varchar(191) DEFAULT NULL COMMENT 'Emergency contact info end',
  `departments_id` int(11) DEFAULT NULL COMMENT 'link to depertment table',
  `designations_id` int(11) DEFAULT NULL COMMENT 'link to designation table',
  `employee_work_time_start` varchar(191) DEFAULT NULL,
  `employee_work_time_end` varchar(191) DEFAULT NULL,
  `employee_probation` int(11) DEFAULT NULL,
  `employee_extentionprobation` int(11) DEFAULT NULL,
  `employee_fw_permit_number` varchar(191) DEFAULT NULL COMMENT 'Foreign Worker info Start',
  `employee_fw_application_date` date DEFAULT NULL,
  `employee_fw_issue_date` date DEFAULT NULL,
  `employee_fw_arrival_date` date DEFAULT NULL,
  `employee_fw_renewal_date` date DEFAULT NULL,
  `employee_fw_levy_amount` double(8,2) DEFAULT 0.00 COMMENT 'Foreign Worker info end',
  `races_id` int(11) DEFAULT NULL COMMENT 'link to race table',
  `religions_id` int(11) DEFAULT NULL COMMENT 'link to religion table',
  `dbsexes_id` int(11) DEFAULT NULL COMMENT 'link to dbsex table',
  `marital_statuses_id` int(11) DEFAULT NULL COMMENT 'link to marital status table',
  `clients_id` int(11) DEFAULT NULL COMMENT 'link to client table',
  `employee_status` int(11) NOT NULL DEFAULT 1,
  `employee_isDeleted` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_avater` longtext DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `user_table_id` int(11) NOT NULL DEFAULT 0,
  `reg_no` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_outlet_id`, `employee_code`, `employee_name`, `employee_phone`, `employee_email`, `passtypes_id`, `employee_nric`, `employee_mobile`, `employee_tel`, `employee_birthdate`, `employee_joindate`, `employee_confirmationdate`, `employee_prdate`, `employee_resigndate`, `employee_resignreason`, `employee_numberofchildren`, `users_id`, `roles_id`, `manager_users_id`, `team_leader_users_id`, `employee_shrc`, `employee_defination`, `leave_aprv1_users_id`, `leave_aprv2_users_id`, `leave_aprv3_users_id`, `claims_aprv1_users_id`, `claims_aprv2_id`, `claims_aprv3_users_id`, `is_payroll_enable`, `is_cpf_enable`, `employee_isovertime`, `paymodes_id`, `employee_bank`, `employee_bank_acc_no`, `employee_bank_acc_title`, `employee_street`, `employee_unit_number`, `employee_postal_code`, `employee_street2`, `employee_unit_number2`, `employee_postal_code2`, `employee_emr_contact`, `employee_emr_relation`, `employee_emr_phone1`, `employee_emr_phone2`, `employee_emr_address`, `employee_emr_remarks`, `departments_id`, `designations_id`, `employee_work_time_start`, `employee_work_time_end`, `employee_probation`, `employee_extentionprobation`, `employee_fw_permit_number`, `employee_fw_application_date`, `employee_fw_issue_date`, `employee_fw_arrival_date`, `employee_fw_renewal_date`, `employee_fw_levy_amount`, `races_id`, `religions_id`, `dbsexes_id`, `marital_statuses_id`, `clients_id`, `employee_status`, `employee_isDeleted`, `created_by`, `modify_by`, `created_at`, `updated_at`, `employee_avater`, `active_status`, `user_table_id`, `reg_no`) VALUES
(1, 2, 'AD', 'Digipixel Development', '+6512345678', 'admin@digipixel.sg', 2, 'G3289769Q', NULL, NULL, '2024-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 3, NULL, 1, 0, 1, 1, '2024-01-28 06:37:55', '2024-02-01 00:26:57', NULL, 1, 1, '0'),
(118, 2, 'Quisquam perferendis', 'Morgan Frye', '+1 (876) 903-9468', 'xoqype@mailinator.com', 3, 'Enim repudiandae fac', NULL, NULL, '2007-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 2, 1, NULL, 1, 0, 1, 1, '2024-03-04 10:44:58', '2024-03-04 10:44:58', 'uploads//65e5a62ac980a_pexels-dinielle-de-veyra-4195345 (1).jpg', 1, 100, 'Quia repudiandae dol'),
(119, 2, 'M1', 'Manager 1', '+1 (376) 457-5122', 'man1@gmail.com', 2, '12', NULL, NULL, '2000-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, 4, NULL, 1, 0, 1, 1, '2024-03-04 10:46:56', '2024-03-04 10:46:56', NULL, 1, 101, 'em-0001'),
(120, 2, 'M3', 'Manager 3', '+1 (366) 254-1073', 'man3@gmail.com', 2, NULL, NULL, NULL, '1996-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 1, 3, NULL, 1, 0, 1, 1, '2024-03-04 11:17:49', '2024-03-04 11:17:49', NULL, 1, 102, 'em-0003'),
(121, 2, 'TL1', 'Team Leader 1', '+1 (255) 676-3852', 'tl1@gmail.com', 3, NULL, NULL, NULL, '2000-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 1, 3, NULL, 1, 0, 1, 1, '2024-03-04 11:19:23', '2024-03-04 11:19:23', NULL, 1, 103, 'etl-0001'),
(122, 2, 'TL2', 'Team Leader 2', '+1 (255) 676-3851', 'tl2@gmail.com', 1, NULL, NULL, NULL, '1998-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 120, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, 1, 2, NULL, 1, 0, 1, 102, '2024-03-04 11:21:13', '2024-03-04 11:23:18', 'uploads//65e5aea9c64a1_pexels-dinielle-de-veyra-4195345 (1).jpg', 1, 104, 'etl-0002'),
(123, 2, 'TL3', 'Team Leader 3', '+1 (237) 278-9372', 'tl3@gmail.com', 2, NULL, NULL, NULL, '1999-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 1, 3, NULL, 1, 0, 102, 102, '2024-03-04 11:24:54', '2024-03-04 11:24:54', NULL, 1, 105, 'etl-0003'),
(124, 1, 'TL4', 'Team Lead 4', '+1 (376) 457-5111', 'tl4@gmail.com', 1, NULL, NULL, NULL, '1997-03-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 2, 3, NULL, 1, 0, 1, 1, '2024-03-04 11:28:09', '2024-03-04 11:28:09', NULL, 1, 106, 'etl-0004'),
(125, 2, 'C1', 'Consultant 1', '+1 (691) 279-1050', 'con1@gmail.com', 2, NULL, NULL, NULL, '1998-03-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 120, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, 1, 3, NULL, 1, 0, 102, 102, '2024-03-04 11:30:22', '2024-03-04 11:30:22', NULL, 1, 107, 'ec-0001'),
(126, 2, 'C2', 'Consultant 2', '+1 (366) 254-1076', 'con2@gmail.com', 2, NULL, NULL, NULL, '1999-03-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 120, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 3, NULL, 1, 0, 102, 102, '2024-03-04 11:31:54', '2024-03-04 11:31:54', NULL, 1, 108, 'ec-0002'),
(127, 2, 'P1', 'Payroll', '+1 (255) 676-3853', 'pr1@gmail.com', 1, NULL, NULL, NULL, '1998-03-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 2, 2, NULL, 1, 0, 102, 102, '2024-03-04 11:33:13', '2024-03-04 11:33:13', NULL, 1, 109, 'ep-0001'),
(128, 2, 'C6', 'Consultant 6', '0178922645', 'con6@gmail.com', 2, NULL, NULL, NULL, '1998-03-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 119, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 3, NULL, 1, 0, 101, 101, '2024-03-04 12:10:26', '2024-03-04 12:10:26', NULL, 1, 110, 'con-006'),
(129, 0, 'TL3', 'Test Leader 3', '6567567', 'tl3@gmail.com', 3, NULL, NULL, NULL, '2024-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 1, 3, NULL, 1, 0, 1, 1, '2024-05-04 14:15:09', '2024-05-04 14:15:09', NULL, 1, 0, '678688'),
(130, 0, 'TL3', 'Team Lead 3', '57587678', 'tl3@gmail.com', 3, NULL, NULL, NULL, '2024-05-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 3, NULL, 1, 0, 1, 1, '2024-05-04 14:15:55', '2024-05-04 14:15:55', NULL, 1, 0, '455345'),
(131, 0, 'TL3', 'Team Lead 3', '57587678', 'tl33@gmail.com', 2, NULL, NULL, NULL, '2024-05-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 120, NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, 2, 2, NULL, 1, 0, 1, 1, '2024-05-04 14:16:51', '2024-05-05 06:19:57', NULL, 1, 112, '455345'),
(132, 0, 'NT', 'New test', '67658876', 'nt@gmail.com', 2, 'dgdf4', NULL, NULL, '1999-05-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 120, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 1, 3, NULL, 1, 0, 112, 112, '2024-05-05 06:12:50', '2024-05-05 06:12:52', NULL, 1, 113, '4565'),
(133, 0, 'C3', 'Con 3', '46567123', 'c3@gmail.com', 1, 'opio', NULL, NULL, '2024-05-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 120, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 2, NULL, 1, 0, 112, 112, '2024-05-05 06:15:37', '2024-05-05 06:15:39', NULL, 1, 114, '54'),
(134, 0, 'AT', 'Again Test', '64765786', 'at@gmail.com', 2, '5464', NULL, NULL, '2024-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 120, 131, NULL, NULL, 1, 1, 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, 1, 5, NULL, 1, 0, 112, 112, '2024-05-05 06:25:39', '2024-05-05 14:22:13', NULL, 1, 115, NULL),
(135, 0, 'M1', 'sdfdsf', '654678', 'sfd@gmail.com', 2, 'ghf', NULL, NULL, '2024-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, 3, NULL, 1, 0, 102, 102, '2024-05-06 12:33:28', '2024-05-06 12:33:31', NULL, 1, 116, 'em-0003'),
(136, 0, 'M1', 'Noamn emp', '567568', 'sfd@gmail.com', 2, 'opio', NULL, NULL, '2024-05-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 120, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 1, 3, NULL, 1, 0, 102, 102, '2024-05-06 12:34:18', '2024-05-06 12:34:18', NULL, 1, 0, 'em-0003'),
(137, 0, 'M1', 'Noamn emp', '567568', 'sfd@gmail.com', 2, 'opio', NULL, NULL, '2024-05-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 120, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 1, 3, NULL, 1, 0, 102, 102, '2024-05-06 12:35:23', '2024-05-06 12:35:23', NULL, 1, 0, 'em-0003');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_infos`
--

CREATE TABLE `employee_salary_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employees_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `salary_amount` double(8,2) NOT NULL,
  `no_of_working_day` int(11) DEFAULT NULL,
  `hourly_salary_rate` double(8,2) DEFAULT NULL,
  `hourly_overtime_rate` double(8,2) DEFAULT NULL,
  `remark` varchar(191) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giros`
--

CREATE TABLE `giros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `giro_no` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `description` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_candidate_data`
--

CREATE TABLE `import_candidate_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `resume_path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_candidate_data`
--

INSERT INTO `import_candidate_data` (`id`, `user_id`, `resume_path`, `created_at`, `updated_at`) VALUES
(190, 104, 'uploads//6629e34a8f21f_Blue Simple Professional CV Resume.pdf', '2024-04-25 04:59:54', '2024-04-25 04:59:54'),
(191, 104, 'uploads//6629e376180e2_65ab4d093e26c_faysal-hossain-CV-.pdf', '2024-04-25 05:00:38', '2024-04-25 05:00:38'),
(193, 103, 'uploads//6630dd624750b_Resume.pdf', '2024-04-30 14:00:34', '2024-04-30 14:00:34'),
(194, 103, 'uploads//6630de37d6e6d_65dae26382a5f_7 (1).pdf', '2024-04-30 14:04:07', '2024-04-30 14:04:07'),
(205, 112, 'uploads//6637550fb2b4b_sample-file (2).pdf', '2024-05-05 11:44:47', '2024-05-05 11:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `industry_types`
--

CREATE TABLE `industry_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `industry_code` varchar(191) NOT NULL,
  `industry_desc` varchar(191) NOT NULL,
  `industry_seqno` int(11) DEFAULT NULL,
  `industry_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industry_types`
--

INSERT INTO `industry_types` (`id`, `industry_code`, `industry_desc`, `industry_seqno`, `industry_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Construction', 'CONSTRUCTION', 10, 1, NULL, NULL, '2023-12-18 02:09:50', '2023-12-18 02:09:50'),
(2, 'Marine', 'MARINE', 20, 1, NULL, NULL, '2023-12-18 02:10:01', '2023-12-18 02:10:01'),
(3, 'Manufacturing', 'MANUFACTURING', 30, 1, NULL, NULL, '2023-12-18 02:10:12', '2023-12-18 02:10:12'),
(4, 'Service', 'SERVICE', 40, 1, NULL, NULL, '2023-12-18 02:10:23', '2023-12-18 02:10:23'),
(5, 'Process', 'PROCESS', 50, 1, NULL, NULL, '2023-12-18 02:10:34', '2023-12-18 02:10:34'),
(6, 'Others', 'OTHERS', 60, 1, NULL, NULL, '2023-12-18 02:10:34', '2023-12-18 02:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobcategories`
--

CREATE TABLE `jobcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobcategory_name` varchar(191) NOT NULL,
  `jobcategory_parent` int(11) DEFAULT NULL,
  `jobcategory_seqno` int(11) DEFAULT NULL,
  `jobcategory_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobcategories`
--

INSERT INTO `jobcategories` (`id`, `jobcategory_name`, `jobcategory_parent`, `jobcategory_seqno`, `jobcategory_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounting / Auditing / Finance', NULL, 1, 1, NULL, NULL, '2023-12-18 05:55:56', '2023-12-18 21:06:57'),
(3, 'Sales', NULL, 0, 1, NULL, NULL, '2023-12-18 21:06:49', '2023-12-18 21:06:49'),
(4, 'Admin / Human Resources', NULL, 0, 1, NULL, NULL, '2023-12-18 21:07:35', '2023-12-18 21:07:35'),
(5, 'Human Resources', NULL, 0, 1, NULL, NULL, '2023-12-18 21:07:49', '2023-12-18 21:07:49'),
(6, 'Secretarial', NULL, 0, 1, NULL, NULL, '2023-12-18 21:08:01', '2023-12-18 21:08:01'),
(7, 'Computer / Information Technology', NULL, 0, 1, NULL, NULL, '2023-12-18 21:08:11', '2023-12-18 21:08:11'),
(8, 'Banking / Financial Service / Insurance', NULL, 0, 1, NULL, NULL, '2023-12-18 21:08:21', '2023-12-18 21:08:21'),
(9, 'Call Centers / Customer Service', NULL, 0, 1, NULL, NULL, '2023-12-18 21:08:32', '2023-12-18 21:08:32'),
(10, 'Education / Training', NULL, NULL, 1, NULL, NULL, '2023-12-18 21:08:45', '2023-12-18 21:08:45'),
(11, 'Engineering', NULL, 0, 1, NULL, NULL, '2023-12-18 21:09:02', '2023-12-18 21:09:02'),
(12, 'Hospital / Healthcare', NULL, 0, 1, NULL, NULL, '2023-12-18 21:09:14', '2023-12-18 21:09:14'),
(13, 'Hospitality / Tourism', NULL, 0, 1, NULL, NULL, '2023-12-18 21:09:28', '2023-12-18 21:09:28'),
(14, 'Information Technology', NULL, 0, 1, NULL, NULL, '2023-12-18 21:09:45', '2023-12-18 21:09:45'),
(15, 'Logistics / Freight / Shipping / Transportation', NULL, 0, 1, NULL, NULL, '2023-12-18 21:09:57', '2023-12-18 21:09:57'),
(16, 'Pharmaceuticals', NULL, 0, 1, NULL, NULL, '2023-12-18 21:10:07', '2023-12-18 21:10:07'),
(17, 'Real Estate / Property Development', NULL, 0, 1, NULL, NULL, '2023-12-18 21:10:17', '2023-12-18 21:10:17'),
(18, 'IT - Software', 7, 0, 1, NULL, NULL, '2023-12-18 21:11:12', '2023-12-18 21:11:12'),
(19, 'IT - Hardware', 7, 1, 1, NULL, NULL, '2023-12-18 21:11:51', '2023-12-18 21:11:51'),
(20, 'Aerospace / Aviation / Airline', 11, 0, 1, NULL, NULL, '2023-12-18 21:12:20', '2023-12-18 21:12:20'),
(21, 'Facility Management', 11, 1, 1, NULL, NULL, '2023-12-18 21:12:40', '2023-12-18 21:12:40'),
(22, 'Manufacturing / Production', 11, 2, 1, NULL, NULL, '2023-12-18 21:13:00', '2023-12-18 21:13:00'),
(23, 'Petrochemical', 11, 3, 1, NULL, NULL, '2023-12-18 21:13:18', '2023-12-18 21:13:18'),
(24, 'e-Commerce update', 3, 0, 1, NULL, NULL, '2023-12-18 21:13:43', '2024-01-23 18:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(191) NOT NULL,
  `job_category_id` int(11) DEFAULT NULL COMMENT 'get id from job category table',
  `job_salary` varchar(191) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `job_status` tinyint(1) NOT NULL DEFAULT 1,
  `postal_code` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `co_owner_id` int(11) DEFAULT NULL COMMENT 'get id from user table',
  `client_id` int(11) NOT NULL COMMENT 'get id from client table',
  `person_incharge` int(11) DEFAULT NULL COMMENT 'get id from user table',
  `job_type_id` int(11) DEFAULT NULL COMMENT 'get id from job type table',
  `short_desc` longtext DEFAULT NULL,
  `job_added_date` date DEFAULT NULL,
  `unit_no` int(11) DEFAULT NULL,
  `display_address` varchar(191) DEFAULT NULL,
  `job_link` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_tag` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_category_id`, `job_salary`, `remark`, `job_status`, `postal_code`, `address`, `co_owner_id`, `client_id`, `person_incharge`, `job_type_id`, `short_desc`, `job_added_date`, `unit_no`, `display_address`, `job_link`, `description`, `meta_title`, `meta_tag`, `meta_description`, `created_by`, `modify_by`, `created_at`, `updated_at`, `team_leader_id`, `manager_id`, `consultant_id`) VALUES
(22, 'Molestiae vitae dign', 19, '567', '<p>ghjhgj</p>', 1, '656', 'Ex doloremque eum pr', NULL, 57, 126, 2, '<p>jgj</p>', '1970-06-12', 5, 'Non dolores consequu', 'molestiae-vitae-dign', NULL, 'Laboriosam ipsam se', 'Illum reiciendis al', NULL, 1, 1, '2024-04-25 06:43:18', '2024-04-25 06:43:18', 122, 120, 126),
(23, 'New Job 4', 22, '34', NULL, 1, NULL, NULL, NULL, 61, 133, 1, NULL, NULL, NULL, NULL, 'new-job-4', NULL, NULL, NULL, NULL, 1, 1, '2024-05-07 07:27:45', '2024-05-07 07:27:45', 123, 120, 133),
(24, 'Sed non nihil conseq', 14, '45', NULL, 0, '65', 'Aspernatur eum venia', 133, 59, 127, 4, NULL, '1996-08-17', 565, 'Veritatis in nulla q', 'Minim provident ut', NULL, 'Et sint officia odi', 'Est iure non et enim', NULL, 1, 1, '2024-05-07 08:12:38', '2024-05-07 08:12:38', NULL, NULL, NULL),
(25, 'Aliquid dolor dolore', 5, '500', NULL, 0, '1234', 'Proident temporibus', 123, 57, 123, 1, NULL, '1974-04-09', 12, 'Voluptatum maxime ea', 'Earum aut est deser', NULL, 'Lorem quis ad minus', 'Neque nihil et incid', NULL, 1, 1, '2024-05-07 08:13:04', '2024-05-07 08:33:49', 123, 120, NULL),
(26, 'Intern for HR', 19, '100', '<p>test</p>', 1, '1234', 'test', 133, 59, 134, 3, '<p>test</p>', '2024-05-01', 1, 'test', 'google.com', '<p>test</p>', 'test', 'test', '<p>test</p>', 1, 1, '2024-05-07 08:35:59', '2024-05-07 08:43:08', 131, 120, 134);

-- --------------------------------------------------------

--
-- Table structure for table `jobtypes`
--

CREATE TABLE `jobtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobtype_code` varchar(191) NOT NULL,
  `jobtype_desc` varchar(191) NOT NULL,
  `jobtype_seqno` int(11) DEFAULT NULL,
  `jobtype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobtypes`
--

INSERT INTO `jobtypes` (`id`, `jobtype_code`, `jobtype_desc`, `jobtype_seqno`, `jobtype_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Temporary (Hourly)', 'Temporary (Hourly)', 1, 1, NULL, NULL, '2023-12-18 06:19:55', '2023-12-18 06:20:02'),
(2, 'Temporary (Daily)', 'Temporary (Daily)', 2, 1, NULL, NULL, '2023-12-18 06:20:22', '2023-12-18 06:20:22'),
(3, 'Permanent (Full Time)', 'Permanent (Full Time)', 3, 1, NULL, NULL, '2023-12-18 06:20:40', '2023-12-18 06:20:40'),
(4, 'Contract', 'Contract', 4, 1, NULL, NULL, '2023-12-18 06:20:53', '2023-12-18 06:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `capta_code` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone_no` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `resume` varchar(191) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `jobcreator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_ids` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_approveds_id` int(11) DEFAULT NULL COMMENT 'link to leave_approveds table',
  `employees_id` int(11) DEFAULT NULL COMMENT 'link to Employee/Candidate table',
  `leave_types_id` int(11) DEFAULT NULL,
  `leave_duration` varchar(191) DEFAULT NULL,
  `leave_datefrom` date DEFAULT NULL,
  `leave_dateto` date DEFAULT NULL,
  `leave_total_day` double(8,2) NOT NULL DEFAULT 0.00,
  `leave_reason` varchar(191) DEFAULT NULL,
  `leave_status` int(11) DEFAULT 0,
  `leave_empl_type` int(11) DEFAULT NULL COMMENT '0-Candidate,1-employee',
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `leave_file_path` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `leave_approveds_id`, `employees_id`, `leave_types_id`, `leave_duration`, `leave_datefrom`, `leave_dateto`, `leave_total_day`, `leave_reason`, `leave_status`, `leave_empl_type`, `created_by`, `modify_by`, `created_at`, `updated_at`, `candidate_id`, `leave_file_path`) VALUES
(17, NULL, NULL, 6, 'Full Day Leave', '2024-03-05', '2024-03-08', 4.00, 'Full day leave', 0, 0, 110, 110, '2024-03-05 08:18:42', '2024-03-05 08:18:42', 149, 'uploads//65e6d5629e436_65e440b7b39a5_65dae26382a5f_7 (1).pdf'),
(18, NULL, NULL, 7, 'Full Day Leave', '2024-03-05', '2024-03-08', 4.00, 'Test candidate leave', 0, 0, 110, 110, '2024-03-05 08:19:58', '2024-03-05 08:19:58', 154, 'uploads//65e6d5ae5e76b_65e440b7b39a5_65dae26382a5f_7 (1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `leave_approveds`
--

CREATE TABLE `leave_approveds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leaves_id` int(11) NOT NULL,
  `level_approve_date` timestamp NULL DEFAULT NULL,
  `leave_approveds_Status` int(11) DEFAULT NULL COMMENT '0-Rejected,1-Approved',
  `supervisor_employees_id` int(11) DEFAULT NULL,
  `extraNote` varchar(191) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_controls`
--

CREATE TABLE `leave_controls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leavetype_code` varchar(191) NOT NULL,
  `leavetype_block` int(11) DEFAULT NULL,
  `leavetype_desc` varchar(191) DEFAULT NULL,
  `leavetype_default` int(11) DEFAULT NULL,
  `leavetype_bringover` int(11) DEFAULT NULL,
  `leavetype_custom_field` int(11) DEFAULT NULL,
  `leavetype_seqno` int(11) DEFAULT NULL,
  `leavetype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `leavetype_code`, `leavetype_block`, `leavetype_desc`, `leavetype_default`, `leavetype_bringover`, `leavetype_custom_field`, `leavetype_seqno`, `leavetype_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Childcare Leave', 1, 'Childcare Leave', 0, NULL, NULL, 50, 1, NULL, NULL, '2023-12-13 01:42:07', '2023-12-18 02:22:49'),
(2, 'Annual Leave', 0, 'Annual Leave', 14, NULL, NULL, 10, 1, NULL, NULL, '2023-12-18 02:18:39', '2023-12-18 02:22:43'),
(3, 'Compassionate Leave', 1, 'Compassionate Leave', 0, NULL, NULL, 80, 1, NULL, NULL, '2023-12-18 02:20:02', '2023-12-18 02:22:27'),
(4, 'Hospitalisation Leave', 0, 'Hospitalisation Leave', 46, NULL, NULL, 30, 1, NULL, NULL, '2023-12-18 02:20:34', '2023-12-18 02:22:00'),
(5, 'Marriage Leave', 1, 'Marriage Leave', 90, NULL, NULL, 90, 1, NULL, NULL, '2023-12-18 02:21:06', '2023-12-18 02:21:53'),
(6, 'Maternity/Paternity Leave', 1, 'Maternity/Paternity Leave', 0, NULL, NULL, 60, 1, NULL, NULL, '2023-12-18 02:21:37', '2023-12-18 02:21:45'),
(7, 'Medical Leave', 0, 'Medical Leave', 14, NULL, NULL, 20, 1, NULL, NULL, '2023-12-18 02:23:14', '2023-12-18 02:23:14'),
(8, 'Medical Reimbursement', 1, 'Medical Reimbursement', 0, NULL, NULL, 7, 1, NULL, NULL, '2023-12-18 02:23:39', '2023-12-18 02:23:39'),
(9, 'Off In Lieu', 1, 'Off In Lieu', 0, NULL, NULL, 40, 1, NULL, NULL, '2023-12-18 02:24:00', '2023-12-18 02:24:00'),
(10, 'Reservist', 1, 'Reservist', 0, NULL, NULL, 70, 1, NULL, NULL, '2023-12-18 02:24:28', '2023-12-18 02:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marital_statuses_code` varchar(191) NOT NULL,
  `marital_statuses_desc` varchar(191) NOT NULL,
  `marital_statuses_seqno` int(11) DEFAULT NULL,
  `marital_statuses_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `marital_statuses_code`, `marital_statuses_desc`, `marital_statuses_seqno`, `marital_statuses_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'Single', 1, 1, NULL, NULL, '2023-12-15 07:54:46', '2023-12-15 07:54:46'),
(2, 'Separated', 'Separated', 2, 1, NULL, NULL, '2023-12-15 07:55:12', '2023-12-15 07:55:12'),
(3, 'Married', 'Married', 3, 1, NULL, NULL, '2023-12-15 07:55:41', '2023-12-15 07:55:56'),
(4, 'Divorced', 'Divorced', 4, 1, NULL, NULL, '2023-12-15 07:56:29', '2023-12-15 07:56:29'),
(5, 'Widower', 'Widower', 5, 1, NULL, NULL, '2023-12-15 07:56:49', '2023-12-15 07:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(114, '2014_10_12_000000_create_users_table', 1),
(115, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(116, '2014_10_12_100000_create_password_resets_table', 1),
(117, '2019_08_19_000000_create_failed_jobs_table', 1),
(118, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(119, '2023_11_26_000227_create_deshboard_menus_table', 1),
(120, '2023_11_27_123107_create_activity_log_table', 1),
(121, '2023_11_27_123108_add_event_column_to_activity_log_table', 1),
(122, '2023_11_27_123109_add_batch_uuid_column_to_activity_log_table', 1),
(124, '2023_12_03_192104_create_admins_table', 1),
(125, '2023_12_05_000220_create_employees_table', 1),
(126, '2023_12_05_135603_create_clients_table', 1),
(129, '2023_12_05_135952_create_departments_table', 1),
(130, '2023_12_05_140005_create_leave_types_table', 1),
(131, '2023_12_05_140029_create_leaves_table', 1),
(132, '2023_12_05_140327_create_industry_types_table', 1),
(133, '2023_12_05_140609_create_religions_table', 1),
(134, '2023_12_05_140628_create_races_table', 1),
(135, '2023_12_05_140736_create_designations_table', 1),
(136, '2023_12_05_140812_create_claims_types_table', 1),
(137, '2023_12_05_232807_create_leave_approveds_table', 1),
(138, '2023_12_05_232819_create_leave_controls_table', 1),
(139, '2023_12_10_000006_create_jobtypes_table', 1),
(140, '2023_12_10_000028_create_passtypes_table', 1),
(141, '2023_12_10_000041_create_paymodes_table', 1),
(142, '2023_12_10_000118_create_uploadfiletypes_table', 1),
(143, '2023_12_10_000131_create_remarkstypes_table', 1),
(144, '2023_12_10_000825_create_countries_table', 1),
(145, '2023_12_10_004038_create_jobcategories_table', 1),
(146, '2023_12_10_013716_create_dbsexes_table', 1),
(147, '2023_12_10_013900_create_marital_statuses_table', 1),
(148, '2023_12_10_033139_create_tnc_templates_table', 1),
(149, '2023_12_10_033359_create_client_terms_table', 1),
(158, '2023_12_18_053121_create_client_upload_files_table', 3),
(159, '2023_12_18_084607_create_client_follow_ups_table', 3),
(161, '2023_12_13_012612_create_outlets_table', 5),
(162, '2023_12_05_135829_create_jobs_table', 6),
(163, '2023_12_19_044644_create_candidate_resumes_table', 7),
(165, '2023_12_19_233155_create_paybanks_table', 8),
(166, '2023_12_20_003701_add_column_to_employee', 9),
(167, '2023_12_20_084309_create_employee_salary_infos_table', 10),
(168, '2023_12_21_104753_create_candidate_remarks_table', 10),
(169, '2023_12_21_130403_create_candidate_payrolls_table', 10),
(170, '2023_12_22_034530_create_candidate_working_hours_table', 10),
(171, '2023_12_22_045041_create_candidate_families_table', 10),
(173, '2023_12_23_124940_add_field_to_candidates', 10),
(174, '2023_12_25_020047_create_candidate_file_imports_table', 11),
(176, '2023_12_25_023803_add_newfield_to_nationality_table', 12),
(177, '2023_12_28_095616_create_personal_folders_table', 13),
(179, '2023_12_29_035507_create_job_applications_table', 14),
(181, '2024_01_02_035301_create_temporary_imported_data_table', 15),
(182, '2024_01_02_122317_create_import_candidate_data_table', 16),
(183, '2023_12_05_135632_create_candidates_table', 17),
(186, '2024_01_04_013257_create_giros_table', 18),
(187, '2024_01_04_013446_create_banks_table', 18),
(188, '2023_12_23_081756_create_nationalities_table', 19),
(190, '2024_01_04_063923_create_companies_table', 20),
(195, '2024_01_04_094954_create_time_sheets_table', 21),
(196, '2024_01_05_190851_create_time_sheet_entries_table', 21),
(197, '2023_11_28_013404_create_permission_tables', 22),
(198, '2024_01_10_195102_create_job_statuses_table', 23),
(199, '2024_01_11_123654_create_client_departments_table', 24),
(200, '2024_01_12_013456_create_client_supervisors_table', 25),
(203, '2024_01_17_122933_create_attendence_parents_table', 26),
(206, '2024_01_17_122934_create_attendances_table', 27),
(207, '2024_01_18_132155_create_attendence_parents_table', 28),
(210, '2024_01_23_053855_add_status_field_to_temporary_imported_data', 29),
(211, '2024_01_24_005228_add_column_to_roletable', 30),
(212, '2024_01_24_021511_add_column_to_usertable', 31),
(213, '2024_01_24_100906_add_field_to_employees', 32),
(214, '2024_01_25_043656_add_resume_text_to_temporary_imported_data', 33),
(215, '2024_01_25_044714_add_resume_text_to_candidate_resumes', 33),
(216, '2024_01_28_095044_add_team_leader_to_candidates_table', 34),
(217, '2024_01_28_134931_add_team_leader_to_jobs_table', 34),
(218, '2024_01_29_125144_add_consultant_to_candidates', 35),
(219, '2024_01_30_101056_add_new_entities_to_time_sheets', 35),
(220, '2024_02_01_233208_add_application_job_userid_in_job_application_table', 36),
(245, '2024_02_06_094040_add_new_column_to_candidate_remarks', 37),
(246, '2024_02_06_094638_create_candidate_remark_interviews_table', 37),
(247, '2024_02_06_094650_create_candidate_remark_shortlists_table', 37),
(248, '2024_02_06_114238_create_calanders_table', 37),
(249, '2024_02_07_091821_add_manager_id_to_candidates', 37),
(250, '2024_02_07_112209_create_dashboards_table', 37),
(251, '2024_02_07_112216_create_assigns_table', 37),
(252, '2024_02_13_083506_add_team_to_jobs', 38),
(253, '2024_02_14_071047_add_column_to_temporary_imported_data', 39),
(254, '2024_02_14_101851_create_assign_clients_table', 39),
(255, '2024_02_25_143028_create_assign_to_rcs_table', 40),
(256, '2024_02_27_161613_add_reg_to_employees', 41),
(257, '2024_03_03_044128_add_callback_to_dashboards_table', 42),
(260, '2024_05_18_140912_create_notifications_table', 43);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 116),
(2, 'App\\Models\\User', 100),
(4, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 102),
(7, 'App\\Models\\User', 109),
(8, 'App\\Models\\User', 107),
(8, 'App\\Models\\User', 108),
(8, 'App\\Models\\User', 110),
(8, 'App\\Models\\User', 113),
(8, 'App\\Models\\User', 114),
(8, 'App\\Models\\User', 115),
(11, 'App\\Models\\User', 103),
(11, 'App\\Models\\User', 104),
(11, 'App\\Models\\User', 105),
(11, 'App\\Models\\User', 106),
(11, 'App\\Models\\User', 112);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nationality_code` varchar(191) NOT NULL,
  `seq_no` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `teamleader_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `candidate_remark_id` int(11) DEFAULT NULL,
  `candidate_remark_shortlist_id` int(11) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `day` int(11) NOT NULL DEFAULT 1,
  `date` date DEFAULT NULL,
  `new_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` text DEFAULT NULL,
  `read_at` int(11) DEFAULT NULL,
  `notifiable_type` varchar(555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notifiable_id`, `type`, `manager_id`, `teamleader_id`, `consultant_id`, `candidate_remark_id`, `candidate_remark_shortlist_id`, `title`, `day`, `date`, `new_date`, `status`, `created_at`, `updated_at`, `data`, `read_at`, `notifiable_type`) VALUES
(1, NULL, NULL, 120, 122, 126, 519, NULL, '09:00 AM -C2 - Call Back -Imported Candidate', 3, '2024-05-15', '2024-05-17', 5, '2024-05-18 09:20:58', '2024-05-17 13:47:21', NULL, NULL, NULL),
(3, 120, 'App\\Notifications\\DateUpdatedNotification', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-05-18 14:34:15', '2024-05-18 14:34:15', '{\"id\":1,\"notifiable_id\":null,\"type\":null,\"manager_id\":120,\"teamleader_id\":122,\"consultant_id\":126,\"candidate_remark_id\":519,\"candidate_remark_shortlist_id\":null,\"title\":\"09:00 AM -C2 - Call Back -Imported Candidate\",\"day\":3,\"date\":\"2024-05-15\",\"new_date\":\"2024-05-17\",\"status\":5,\"created_at\":\"2024-05-18 15:20:58\",\"updated_at\":\"2024-05-17 19:47:21\",\"data\":null,\"read_at\":null,\"notifiable_type\":null}', NULL, 'App\\Models\\Employee'),
(4, 122, 'App\\Notifications\\DateUpdatedNotification', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-05-18 14:34:15', '2024-05-18 14:34:15', '{\"id\":1,\"notifiable_id\":null,\"type\":null,\"manager_id\":120,\"teamleader_id\":122,\"consultant_id\":126,\"candidate_remark_id\":519,\"candidate_remark_shortlist_id\":null,\"title\":\"09:00 AM -C2 - Call Back -Imported Candidate\",\"day\":3,\"date\":\"2024-05-15\",\"new_date\":\"2024-05-17\",\"status\":5,\"created_at\":\"2024-05-18 15:20:58\",\"updated_at\":\"2024-05-17 19:47:21\",\"data\":null,\"read_at\":null,\"notifiable_type\":null}', NULL, 'App\\Models\\Employee'),
(5, 126, 'App\\Notifications\\DateUpdatedNotification', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-05-18 14:34:15', '2024-05-18 14:34:15', '{\"id\":1,\"notifiable_id\":null,\"type\":null,\"manager_id\":120,\"teamleader_id\":122,\"consultant_id\":126,\"candidate_remark_id\":519,\"candidate_remark_shortlist_id\":null,\"title\":\"09:00 AM -C2 - Call Back -Imported Candidate\",\"day\":3,\"date\":\"2024-05-15\",\"new_date\":\"2024-05-17\",\"status\":5,\"created_at\":\"2024-05-18 15:20:58\",\"updated_at\":\"2024-05-17 19:47:21\",\"data\":null,\"read_at\":null,\"notifiable_type\":null}', NULL, 'App\\Models\\Employee');

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_name` varchar(191) NOT NULL,
  `outlet_tel` varchar(191) DEFAULT NULL,
  `outlet_fax` varchar(191) DEFAULT NULL,
  `outlet_email` varchar(191) DEFAULT NULL,
  `outlet_website` varchar(191) DEFAULT NULL,
  `outlet_gstno` varchar(191) DEFAULT NULL,
  `outlet_gstpercent` varchar(191) DEFAULT NULL,
  `outlet_license` varchar(191) DEFAULT NULL,
  `outlet_description` varchar(191) DEFAULT NULL,
  `outlet_address` varchar(191) DEFAULT NULL,
  `countries_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `outlet_name`, `outlet_tel`, `outlet_fax`, `outlet_email`, `outlet_website`, `outlet_gstno`, `outlet_gstpercent`, `outlet_license`, `outlet_description`, `outlet_address`, `countries_id`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'SUCCESS RESOURCE CENTRE PTE LTD', '63373183', '63370329 / 63370425', 'jansen@successhrc.com.sg', 'https://successhrc.com.sg', '200606258W', '9', 'EA License Number: 04C3201', 'UEN 200606258W', '3 Shenton Way, #19-01 Shenton House, Singapore 068805', 202, 1, 1, '2023-12-19 00:16:27', '2024-01-23 18:00:06'),
(2, 'SUCCESS HUMAN RESOURCE CENTRE PTE LTD', '63373183', '63370329 / 63370425', 'jansen@successhrc.com.sg', 'https://successhrc.com.sg', '200516727R', '9', 'EA License Number: 97C4832', 'UEN 200516727R', '3 Shenton Way, #19-01 Shenton House, Singapore 068805', 202, NULL, NULL, '2024-01-23 17:59:20', '2024-01-23 17:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `passtypes`
--

CREATE TABLE `passtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passtype_code` varchar(191) NOT NULL,
  `passtype_desc` varchar(191) NOT NULL,
  `passtype_seqno` int(11) DEFAULT NULL,
  `passtype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passtypes`
--

INSERT INTO `passtypes` (`id`, `passtype_code`, `passtype_desc`, `passtype_seqno`, `passtype_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'NRIC', 'Singapore NRIC', 10, 1, 1, 1, '2023-12-19 02:17:33', '2024-02-27 15:51:04'),
(2, 'FIN', 'Foreign Identification Number', 20, 1, 1, 1, '2023-12-19 02:17:33', '2023-12-19 02:17:33'),
(3, 'PR', 'Permanent Resident', 30, 1, 1, 1, '2023-12-19 02:17:33', '2023-12-19 02:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paybanks`
--

CREATE TABLE `paybanks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paybank_code` varchar(191) NOT NULL,
  `paybank_no` varchar(191) NOT NULL,
  `paybank_desc` varchar(191) NOT NULL,
  `paybank_swift` varchar(191) NOT NULL,
  `paybank_seqno` int(11) DEFAULT NULL,
  `paybank_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paybanks`
--

INSERT INTO `paybanks` (`id`, `paybank_code`, `paybank_no`, `paybank_desc`, `paybank_swift`, `paybank_seqno`, `paybank_status`, `created_at`, `updated_at`) VALUES
(1, 'OCBC', '7339', 'Oversea Chinese Banking Corporation', 'OCBCSGSGXXX', 12, 1, '2023-12-19 00:16:27', '2023-12-19 00:16:27'),
(2, 'UOB', '7375/7199', 'United Overseas Bank', 'UOVBSGSGXXX', 10, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19'),
(3, 'MAYBANK', '7302', 'Maybank Singapore Limited', 'MBBESGS2XXX', 14, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19'),
(4, 'DBS/POSB', '7171', 'DBS Bank Ltd', 'DBSSSGSGXXX', 40, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19'),
(5, 'HSBC', '7232', 'The Hongkong and Shanghai Banking Corporation Limited', 'The Hongkong and Shanghai Banking Corporation Limited', 50, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19'),
(6, 'Standard Chartered', '9496', 'Standard Chartered Bank (Singapore) Limited', 'SCBLSG22XXX', 60, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19'),
(7, 'CITYBANK', '9201\r\n', 'Citibank Singapore Limited', 'CITISGSLXXX', 70, 1, '2023-12-19 23:35:19', '2023-12-19 23:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `paymodes`
--

CREATE TABLE `paymodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymode_code` varchar(191) NOT NULL,
  `paymode_desc` varchar(191) NOT NULL,
  `paymode_seqno` int(11) DEFAULT NULL,
  `paymode_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymodes`
--

INSERT INTO `paymodes` (`id`, `paymode_code`, `paymode_desc`, `paymode_seqno`, `paymode_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'Cash', 10, 1, 1, 1, '2023-12-19 02:29:34', '2023-12-19 02:29:34'),
(2, 'Cheque', 'Cheque', 20, 1, 1, 1, '2023-12-19 02:29:34', '2023-12-19 02:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `group_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.dashboard', 'web', 'dashboard', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(2, 'attendence.index', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(3, 'attendence.store', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(4, 'attendence.create', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(5, 'attendence.show', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(6, 'attendence.update', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(7, 'attendence.destroy', 'web', 'attendence', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(8, 'bank.index', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(9, 'bank.store', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(10, 'bank.create', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(11, 'bank.show', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(12, 'bank.update', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(13, 'bank.destroy', 'web', 'bank', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(14, 'candidate.index', 'web', 'candidate', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(15, 'candidate.store', 'web', 'candidate', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(16, 'candidate.create', 'web', 'candidate', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(17, 'candidate.family', 'web', 'candidate', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(18, 'candidate.family.delete', 'web', 'candidate', '2024-01-10 03:14:47', '2024-01-10 03:14:47'),
(19, 'candidate.file.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(20, 'candidate.file.upload', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(21, 'candidate.followup', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(22, 'candidate.followup.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(23, 'candidate.payroll', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(24, 'candidate.remark', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(25, 'candidate.remark.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(26, 'candidate.resume', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(27, 'candidate.resume.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(28, 'candidate.working.hour', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(29, 'candidate.show', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(30, 'candidate.update', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(31, 'candidate.destroy', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(32, 'candidate.edit', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(33, 'temporary.data.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(34, 'extract.info', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(35, 'upload.files', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(36, 'delete.uploaded.data', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(37, 'candidate.payroll.delete', 'web', 'candidate', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(38, 'client-term.index', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(39, 'client-term.store', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(40, 'client-term.create', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(41, 'client-term.show', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(42, 'client-term.update', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(43, 'client-term.destroy', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(44, 'client-term.edit', 'web', 'client-term', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(45, 'clients.index', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(46, 'clients.store', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(47, 'clients.show', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(48, 'clients.create', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(49, 'clients.update', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(50, 'clients.destroy', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(51, 'clients.edit', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(52, 'client.file.delete', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(53, 'client.file.upload', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(54, 'client.followup', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(55, 'client.followup.delete', 'web', 'clients', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(56, 'company.index', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(57, 'company.store', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(58, 'company.show', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(59, 'company.create', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(60, 'company.update', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(61, 'company.destroy', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(62, 'company.edit', 'web', 'company', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(63, 'pass-type.index', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(64, 'pass-type.store', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(65, 'pass-type.show', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(66, 'pass-type.create', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(67, 'pass-type.update', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(68, 'pass-type.destroy', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(69, 'pass-type.edit', 'web', 'pass-type', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(70, 'menu.index', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(71, 'menu.store', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(72, 'menu.create', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(73, 'menu.show', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(74, 'menu.update', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(75, 'menu.destroy', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(76, 'menu.edit', 'web', 'menu', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(77, 'department.index', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(78, 'department.store', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(79, 'department.create', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(80, 'department.show', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(81, 'department.update', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(82, 'department.destroy', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(83, 'department.edit', 'web', 'department', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(84, 'designation.index', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(85, 'designation.store', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(86, 'designation.create', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(87, 'designation.show', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(88, 'designation.update', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(89, 'designation.destroy', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(90, 'designation.edit', 'web', 'designation', '2024-01-10 03:14:48', '2024-01-10 03:14:48'),
(91, 'employee.index', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(92, 'employee.store', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(93, 'employee.create', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(94, 'employee.show', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(95, 'employee.update', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(96, 'employee.destroy', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(97, 'employee.edit', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(98, 'employee.salary.info.post', 'web', 'employee', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(99, 'file-type.index', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(100, 'file-type.store', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(101, 'file-type.create', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(102, 'file-type.show', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(103, 'file-type.update', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(104, 'file-type.destroy', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(105, 'file-type.edit', 'web', 'file-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(106, 'giro.index', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(107, 'giro.store', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(108, 'giro.create', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(109, 'giro.show', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(110, 'giro.update', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(111, 'giro.destroy', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(112, 'giro.edit', 'web', 'giro', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(113, 'import.index', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(114, 'import.store', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(115, 'import.create', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(116, 'import.update', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(117, 'import.show', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(118, 'import.edit', 'web', 'import', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(119, 'industry-type.index', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(120, 'industry-type.store', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(121, 'industry-type.create', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(122, 'industry-type.show', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(123, 'industry-type.update', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(124, 'industry-type.destroy', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(125, 'industry-type.edit', 'web', 'industry-type', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(126, 'job.index', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(127, 'job.store', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(128, 'job.create', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(129, 'job.show', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(130, 'job.update', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(131, 'job.destroy', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(132, 'job.edit', 'web', 'job', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(133, 'job-category.index', 'web', 'job-category', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(134, 'job-category.store', 'web', 'job-category', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(135, 'job-category.create', 'web', 'job-category', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(136, 'job-category.show', 'web', 'job-category', '2024-01-10 03:14:49', '2024-01-10 03:14:49'),
(137, 'job-category.update', 'web', 'job-category', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(138, 'job-category.destroy', 'web', 'job-category', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(139, 'job-category.edit', 'web', 'job-category', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(140, 'job-application.index', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(141, 'job-application.store', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(142, 'job-application.create', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(143, 'job-application.show', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(144, 'job-application.update', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(145, 'job-application.destroy', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(146, 'job-application.edit', 'web', 'job-application', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(147, 'job-type.index', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(148, 'job-type.store', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(149, 'job-type.create', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(150, 'job-type.show', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(151, 'job-type.update', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(152, 'job-type.destroy', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(153, 'job-type.edit', 'web', 'job-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(154, 'leave.index', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(155, 'leave.store', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(156, 'leave.create', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(157, 'leave.show', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(158, 'leave.update', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(159, 'leave.destroy', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(160, 'leave.edit', 'web', 'leave', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(161, 'leave-type.index', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(162, 'leave-type.store', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(163, 'leave-type.create', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(164, 'leave-type.show', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(165, 'leave-type.update', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(166, 'leave-type.destroy', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(167, 'leave-type.edit', 'web', 'leave-type', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(168, 'marital-status.index', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(169, 'marital-status.store', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(170, 'marital-status.create', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(171, 'marital-status.show', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(172, 'marital-status.update', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(173, 'marital-status.destroy', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(174, 'marital-status.edit', 'web', 'marital-status', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(175, 'nationality.index', 'web', 'nationality', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(176, 'nationality.store', 'web', 'nationality', '2024-01-10 03:14:50', '2024-01-10 03:14:50'),
(177, 'nationality.create', 'web', 'nationality', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(178, 'nationality.show', 'web', 'nationality', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(179, 'nationality.update', 'web', 'nationality', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(180, 'nationality.destroy', 'web', 'nationality', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(181, 'nationality.edit', 'web', 'nationality', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(182, 'religion.index', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(183, 'religion.store', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(184, 'religion.create', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(185, 'religion.show', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(186, 'religion.update', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(187, 'religion.destroy', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(188, 'religion.edit', 'web', 'religion', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(189, 'remarks-type.index', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(190, 'remarks-type.store', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(191, 'remarks-type.create', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(192, 'remarks-type.show', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(193, 'remarks-type.update', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(194, 'remarks-type.destroy', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(195, 'remarks-type.edit', 'web', 'remarks-type', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(196, 'roles.index', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(197, 'roles.store', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(198, 'roles.create', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(199, 'roles.show', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(200, 'roles.update', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(201, 'roles.destroy', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(202, 'roles.edit', 'web', 'roles', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(203, 'tnc.index', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(204, 'tnc.store', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(205, 'tnc.create', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(206, 'tnc.show', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(207, 'tnc.update', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(208, 'tnc.destroy', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(209, 'tnc.edit', 'web', 'tnc', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(210, 'users.index', 'web', 'users', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(211, 'users.store', 'web', 'users', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(212, 'users.create', 'web', 'users', '2024-01-10 03:14:51', '2024-01-10 03:14:51'),
(213, 'users.show', 'web', 'users', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(214, 'users.update', 'web', 'users', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(215, 'users.destroy', 'web', 'users', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(216, 'users.edit', 'web', 'users', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(217, 'time-sheet.index', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(218, 'time-sheet.store', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(219, 'time-sheet.create', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(220, 'time-sheet.show', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(221, 'time-sheet.update', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(222, 'time-sheet.destroy', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52'),
(223, 'time-sheet.edit', 'web', 'time-sheet', '2024-01-10 03:14:52', '2024-01-10 03:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_folders`
--

CREATE TABLE `personal_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `remark` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE `races` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `race_code` varchar(191) NOT NULL,
  `race_desc` varchar(191) NOT NULL,
  `race_seqno` int(11) DEFAULT NULL,
  `race_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `races`
--

INSERT INTO `races` (`id`, `race_code`, `race_desc`, `race_seqno`, `race_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', 'CHINESE', 10, 1, 1, 1, '2023-12-19 02:10:18', '2023-12-19 02:10:18'),
(2, 'Indian', 'INDIAN', 20, 1, 1, 1, '2023-12-19 02:10:18', '2023-12-19 02:10:18'),
(3, 'Malay', 'MALAY', 30, 1, 1, 1, '2023-12-19 02:10:18', '2023-12-19 02:10:18'),
(4, 'Eurasian', 'EURASIAN', 40, 1, 1, 1, '2023-12-19 02:10:18', '2023-12-19 02:10:18'),
(5, 'Others', 'OTHERS', 50, 1, 1, 1, '2023-12-19 02:10:18', '2023-12-19 02:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_code` varchar(191) NOT NULL,
  `religion_desc` varchar(191) NOT NULL,
  `religion_seqno` int(11) DEFAULT NULL,
  `religion_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion_code`, `religion_desc`, `religion_seqno`, `religion_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Buddhist', 'Buddhist', 10, 1, NULL, NULL, '2023-12-18 02:14:59', '2023-12-18 02:14:59'),
(2, 'Christian', 'Christian', 20, 1, NULL, NULL, '2023-12-18 02:15:07', '2023-12-18 02:15:07'),
(3, 'Hindu', 'Hindu', 30, 1, NULL, NULL, '2023-12-18 02:15:20', '2023-12-18 02:15:20'),
(4, 'Muslim', 'Muslim', 40, 1, NULL, NULL, '2023-12-18 02:15:30', '2023-12-18 02:15:30'),
(5, 'Others', 'Others', 50, 1, NULL, NULL, '2023-12-18 02:15:40', '2023-12-18 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `remarkstypes`
--

CREATE TABLE `remarkstypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `remarkstype_code` varchar(191) NOT NULL,
  `remarkstype_desc` varchar(191) NOT NULL,
  `remarkstype_seqno` int(11) DEFAULT NULL,
  `remarkstype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remarkstypes`
--

INSERT INTO `remarkstypes` (`id`, `remarkstype_code`, `remarkstype_desc`, `remarkstype_seqno`, `remarkstype_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Assign To Manager', 'Assign To Manager', 0, 1, NULL, NULL, NULL, '2023-12-28 03:36:45'),
(2, 'Assign To Team Leader', 'Assign To Team Leader', 1, 1, NULL, NULL, NULL, NULL),
(3, 'Assign To RC', 'Assign To RC', 1, 1, NULL, NULL, NULL, NULL),
(4, 'Candidate Follow Up', 'Candidate Follow Up', 1, 1, NULL, NULL, NULL, NULL),
(5, 'Assign Interview', 'Assign Interview', 1, 1, NULL, NULL, NULL, NULL),
(6, 'Assign To Client', 'Assign To Client', 1, 1, NULL, NULL, NULL, NULL),
(7, 'Shortlisted', 'Shortlisted', 1, 1, NULL, NULL, NULL, NULL),
(9, 'Reassign', 'Reassign', 1, 1, NULL, NULL, NULL, NULL),
(10, 'Share to Manager', 'share to manager', 1, 1, NULL, NULL, '2024-02-12 22:32:26', '2024-02-12 22:32:26'),
(11, 'Assign To Own', 'Assign To Own', 3, 1, NULL, NULL, '2024-02-12 22:32:55', '2024-02-12 22:32:55'),
(12, 'Share to Other Managers (Admin / Manager use only) ', 'Share to other manager', 1, 1, NULL, NULL, '2024-02-12 22:32:26', '2024-02-12 22:32:26'),
(22, 'Call Back', 'Call Back', 12, 1, NULL, NULL, '2024-03-02 22:32:17', '2024-03-02 22:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `active_status`) VALUES
(1, 'Aministrator', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(2, 'HR', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(3, 'Staff', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(4, 'Manager', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(5, 'Candidate', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 1),
(6, 'WalkInApplicant', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 1),
(7, 'Payroll', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(8, 'Consultant', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(9, 'Client Employee', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 2),
(10, 'Remark In-charge Person', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(11, 'Team Leader', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(12, 'Internship', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(13, 'Payroll Manager', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0),
(14, 'Payroll Supervisor', 'web', '2024-01-06 04:52:57', '2024-01-06 04:52:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(1, 8),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 4),
(2, 8),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 4),
(3, 8),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 4),
(4, 8),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(5, 4),
(5, 8),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(6, 1),
(6, 4),
(6, 8),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(7, 1),
(7, 4),
(7, 8),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(8, 1),
(8, 4),
(8, 8),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(9, 1),
(9, 4),
(9, 8),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(10, 1),
(10, 4),
(10, 8),
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(11, 1),
(11, 4),
(11, 8),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(12, 1),
(12, 4),
(12, 8),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(13, 1),
(13, 4),
(13, 8),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(14, 1),
(14, 2),
(14, 4),
(14, 8),
(14, 11),
(14, 12),
(14, 13),
(14, 14),
(15, 1),
(15, 2),
(15, 4),
(15, 8),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(16, 1),
(16, 2),
(16, 4),
(16, 8),
(16, 11),
(16, 12),
(16, 13),
(16, 14),
(17, 1),
(17, 2),
(17, 4),
(17, 8),
(17, 11),
(17, 12),
(17, 13),
(17, 14),
(18, 1),
(18, 2),
(18, 4),
(18, 8),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(19, 1),
(19, 2),
(19, 4),
(19, 8),
(19, 11),
(19, 12),
(19, 13),
(19, 14),
(20, 1),
(20, 2),
(20, 4),
(20, 8),
(20, 11),
(20, 12),
(20, 13),
(20, 14),
(21, 1),
(21, 2),
(21, 4),
(21, 8),
(21, 11),
(21, 12),
(21, 13),
(21, 14),
(22, 1),
(22, 2),
(22, 4),
(22, 8),
(22, 11),
(22, 12),
(22, 13),
(22, 14),
(23, 1),
(23, 2),
(23, 4),
(23, 8),
(23, 11),
(23, 12),
(23, 13),
(23, 14),
(24, 1),
(24, 2),
(24, 4),
(24, 8),
(24, 11),
(24, 12),
(24, 13),
(24, 14),
(25, 1),
(25, 2),
(25, 4),
(25, 8),
(25, 11),
(25, 12),
(25, 13),
(25, 14),
(26, 1),
(26, 2),
(26, 4),
(26, 8),
(26, 11),
(26, 12),
(26, 13),
(26, 14),
(27, 1),
(27, 2),
(27, 4),
(27, 8),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(28, 1),
(28, 2),
(28, 4),
(28, 8),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(29, 1),
(29, 2),
(29, 4),
(29, 8),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(30, 1),
(30, 2),
(30, 4),
(30, 8),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(31, 1),
(31, 2),
(31, 4),
(31, 8),
(31, 11),
(31, 12),
(31, 13),
(31, 14),
(32, 1),
(32, 2),
(32, 4),
(32, 8),
(32, 11),
(32, 12),
(32, 13),
(32, 14),
(33, 1),
(33, 2),
(33, 4),
(33, 8),
(33, 11),
(33, 12),
(33, 13),
(33, 14),
(34, 1),
(34, 2),
(34, 4),
(34, 8),
(34, 11),
(34, 12),
(34, 13),
(34, 14),
(35, 1),
(35, 2),
(35, 4),
(35, 8),
(35, 11),
(35, 12),
(35, 13),
(35, 14),
(36, 1),
(36, 2),
(36, 4),
(36, 8),
(36, 11),
(36, 12),
(36, 13),
(36, 14),
(37, 1),
(37, 2),
(37, 4),
(37, 8),
(37, 11),
(37, 12),
(37, 13),
(37, 14),
(38, 1),
(38, 4),
(38, 8),
(38, 11),
(38, 12),
(38, 13),
(38, 14),
(39, 1),
(39, 4),
(39, 8),
(39, 11),
(39, 12),
(39, 13),
(39, 14),
(40, 1),
(40, 4),
(40, 8),
(40, 11),
(40, 12),
(40, 13),
(40, 14),
(41, 1),
(41, 4),
(41, 8),
(41, 11),
(41, 12),
(41, 13),
(41, 14),
(42, 1),
(42, 4),
(42, 8),
(42, 11),
(42, 12),
(42, 13),
(42, 14),
(43, 1),
(43, 4),
(43, 8),
(43, 11),
(43, 12),
(43, 13),
(43, 14),
(44, 1),
(44, 4),
(44, 8),
(44, 11),
(44, 12),
(44, 13),
(44, 14),
(45, 1),
(45, 4),
(45, 8),
(45, 11),
(45, 12),
(45, 13),
(45, 14),
(46, 1),
(46, 4),
(46, 8),
(46, 11),
(46, 12),
(46, 13),
(46, 14),
(47, 1),
(47, 4),
(47, 8),
(47, 11),
(47, 12),
(47, 13),
(47, 14),
(48, 1),
(48, 4),
(48, 8),
(48, 11),
(48, 12),
(48, 13),
(48, 14),
(49, 1),
(49, 4),
(49, 8),
(49, 11),
(49, 12),
(49, 13),
(49, 14),
(50, 1),
(50, 4),
(50, 8),
(50, 11),
(50, 12),
(50, 13),
(50, 14),
(51, 1),
(51, 4),
(51, 8),
(51, 11),
(51, 12),
(51, 13),
(51, 14),
(52, 1),
(52, 4),
(52, 8),
(52, 11),
(52, 12),
(52, 13),
(52, 14),
(53, 1),
(53, 4),
(53, 8),
(53, 11),
(53, 12),
(53, 13),
(53, 14),
(54, 1),
(54, 4),
(54, 8),
(54, 11),
(54, 12),
(54, 13),
(54, 14),
(55, 1),
(55, 4),
(55, 8),
(55, 11),
(55, 12),
(55, 13),
(55, 14),
(56, 1),
(56, 4),
(56, 8),
(56, 11),
(56, 12),
(56, 13),
(56, 14),
(57, 1),
(57, 4),
(57, 8),
(57, 11),
(57, 12),
(57, 13),
(57, 14),
(58, 1),
(58, 4),
(58, 8),
(58, 11),
(58, 12),
(58, 13),
(58, 14),
(59, 1),
(59, 4),
(59, 8),
(59, 11),
(59, 12),
(59, 13),
(59, 14),
(60, 1),
(60, 4),
(60, 8),
(60, 11),
(60, 12),
(60, 13),
(60, 14),
(61, 1),
(61, 4),
(61, 8),
(61, 11),
(61, 12),
(61, 13),
(61, 14),
(62, 1),
(62, 4),
(62, 8),
(62, 11),
(62, 12),
(62, 13),
(62, 14),
(63, 1),
(63, 4),
(63, 8),
(63, 11),
(63, 12),
(63, 13),
(63, 14),
(64, 1),
(64, 4),
(64, 8),
(64, 11),
(64, 12),
(64, 13),
(64, 14),
(65, 1),
(65, 4),
(65, 8),
(65, 11),
(65, 12),
(65, 13),
(65, 14),
(66, 1),
(66, 4),
(66, 8),
(66, 11),
(66, 12),
(66, 13),
(66, 14),
(67, 1),
(67, 4),
(67, 8),
(67, 11),
(67, 12),
(67, 13),
(67, 14),
(68, 1),
(68, 4),
(68, 8),
(68, 11),
(68, 12),
(68, 13),
(68, 14),
(69, 1),
(69, 4),
(69, 8),
(69, 11),
(69, 12),
(69, 13),
(69, 14),
(70, 1),
(70, 4),
(70, 8),
(70, 11),
(70, 12),
(70, 13),
(70, 14),
(71, 1),
(71, 4),
(71, 8),
(71, 11),
(71, 12),
(71, 13),
(71, 14),
(72, 1),
(72, 4),
(72, 8),
(72, 11),
(72, 12),
(72, 13),
(72, 14),
(73, 1),
(73, 4),
(73, 8),
(73, 11),
(73, 12),
(73, 13),
(73, 14),
(74, 1),
(74, 4),
(74, 8),
(74, 11),
(74, 12),
(74, 13),
(74, 14),
(75, 1),
(75, 4),
(75, 8),
(75, 11),
(75, 12),
(75, 13),
(75, 14),
(76, 1),
(76, 4),
(76, 8),
(76, 11),
(76, 12),
(76, 13),
(76, 14),
(77, 1),
(77, 4),
(77, 8),
(77, 11),
(77, 12),
(77, 13),
(77, 14),
(78, 1),
(78, 4),
(78, 8),
(78, 11),
(78, 12),
(78, 13),
(78, 14),
(79, 1),
(79, 4),
(79, 8),
(79, 11),
(79, 12),
(79, 13),
(79, 14),
(80, 1),
(80, 4),
(80, 8),
(80, 11),
(80, 12),
(80, 13),
(80, 14),
(81, 1),
(81, 4),
(81, 8),
(81, 11),
(81, 12),
(81, 13),
(81, 14),
(82, 1),
(82, 4),
(82, 8),
(82, 11),
(82, 12),
(82, 13),
(82, 14),
(83, 1),
(83, 4),
(83, 8),
(83, 11),
(83, 12),
(83, 13),
(83, 14),
(84, 1),
(84, 4),
(84, 8),
(84, 11),
(84, 12),
(84, 13),
(84, 14),
(85, 1),
(85, 4),
(85, 8),
(85, 11),
(85, 12),
(85, 13),
(85, 14),
(86, 1),
(86, 4),
(86, 8),
(86, 11),
(86, 12),
(86, 13),
(86, 14),
(87, 1),
(87, 4),
(87, 8),
(87, 11),
(87, 12),
(87, 13),
(87, 14),
(88, 1),
(88, 4),
(88, 8),
(88, 11),
(88, 12),
(88, 13),
(88, 14),
(89, 1),
(89, 4),
(89, 8),
(89, 11),
(89, 12),
(89, 13),
(89, 14),
(90, 1),
(90, 4),
(90, 8),
(90, 11),
(90, 12),
(90, 13),
(90, 14),
(91, 1),
(91, 4),
(91, 8),
(91, 11),
(91, 12),
(91, 13),
(91, 14),
(92, 1),
(92, 4),
(92, 8),
(92, 11),
(92, 12),
(92, 13),
(92, 14),
(93, 1),
(93, 4),
(93, 8),
(93, 11),
(93, 12),
(93, 13),
(93, 14),
(94, 1),
(94, 4),
(94, 8),
(94, 11),
(94, 12),
(94, 13),
(94, 14),
(95, 1),
(95, 4),
(95, 8),
(95, 11),
(95, 12),
(95, 13),
(95, 14),
(96, 1),
(96, 4),
(96, 8),
(96, 11),
(96, 12),
(96, 13),
(96, 14),
(97, 1),
(97, 4),
(97, 8),
(97, 11),
(97, 12),
(97, 13),
(97, 14),
(98, 1),
(98, 4),
(98, 8),
(98, 11),
(98, 12),
(98, 13),
(98, 14),
(99, 1),
(99, 4),
(99, 8),
(99, 11),
(99, 12),
(99, 13),
(99, 14),
(100, 1),
(100, 4),
(100, 8),
(100, 11),
(100, 12),
(100, 13),
(100, 14),
(101, 1),
(101, 4),
(101, 8),
(101, 11),
(101, 12),
(101, 13),
(101, 14),
(102, 1),
(102, 4),
(102, 8),
(102, 11),
(102, 12),
(102, 13),
(102, 14),
(103, 1),
(103, 4),
(103, 8),
(103, 11),
(103, 12),
(103, 13),
(103, 14),
(104, 1),
(104, 4),
(104, 8),
(104, 11),
(104, 12),
(104, 13),
(104, 14),
(105, 1),
(105, 4),
(105, 8),
(105, 11),
(105, 12),
(105, 13),
(105, 14),
(106, 1),
(106, 4),
(106, 8),
(106, 11),
(106, 12),
(106, 13),
(106, 14),
(107, 1),
(107, 4),
(107, 8),
(107, 11),
(107, 12),
(107, 13),
(107, 14),
(108, 1),
(108, 4),
(108, 8),
(108, 11),
(108, 12),
(108, 13),
(108, 14),
(109, 1),
(109, 4),
(109, 8),
(109, 11),
(109, 12),
(109, 13),
(109, 14),
(110, 1),
(110, 4),
(110, 8),
(110, 11),
(110, 12),
(110, 13),
(110, 14),
(111, 1),
(111, 4),
(111, 8),
(111, 11),
(111, 12),
(111, 13),
(111, 14),
(112, 1),
(112, 4),
(112, 8),
(112, 11),
(112, 12),
(112, 13),
(112, 14),
(113, 1),
(113, 4),
(113, 8),
(113, 11),
(113, 12),
(113, 13),
(113, 14),
(114, 1),
(114, 4),
(114, 8),
(114, 11),
(114, 12),
(114, 13),
(114, 14),
(115, 1),
(115, 4),
(115, 8),
(115, 11),
(115, 12),
(115, 13),
(115, 14),
(116, 1),
(116, 4),
(116, 8),
(116, 11),
(116, 12),
(116, 13),
(116, 14),
(117, 1),
(117, 4),
(117, 8),
(117, 11),
(117, 12),
(117, 13),
(117, 14),
(118, 1),
(118, 4),
(118, 8),
(118, 11),
(118, 12),
(118, 13),
(118, 14),
(119, 1),
(119, 4),
(119, 8),
(119, 11),
(119, 12),
(119, 13),
(119, 14),
(120, 1),
(120, 4),
(120, 8),
(120, 11),
(120, 12),
(120, 13),
(120, 14),
(121, 1),
(121, 4),
(121, 8),
(121, 11),
(121, 12),
(121, 13),
(121, 14),
(122, 1),
(122, 4),
(122, 8),
(122, 11),
(122, 12),
(122, 13),
(122, 14),
(123, 1),
(123, 4),
(123, 8),
(123, 11),
(123, 12),
(123, 13),
(123, 14),
(124, 1),
(124, 4),
(124, 8),
(124, 11),
(124, 12),
(124, 13),
(124, 14),
(125, 1),
(125, 4),
(125, 8),
(125, 11),
(125, 12),
(125, 13),
(125, 14),
(126, 1),
(126, 4),
(126, 8),
(126, 11),
(126, 12),
(126, 13),
(126, 14),
(127, 1),
(127, 4),
(127, 8),
(127, 11),
(127, 12),
(127, 13),
(127, 14),
(128, 1),
(128, 4),
(128, 8),
(128, 11),
(128, 12),
(128, 13),
(128, 14),
(129, 1),
(129, 4),
(129, 8),
(129, 11),
(129, 12),
(129, 13),
(129, 14),
(130, 1),
(130, 4),
(130, 8),
(130, 11),
(130, 12),
(130, 13),
(130, 14),
(131, 1),
(131, 4),
(131, 8),
(131, 11),
(131, 12),
(131, 13),
(131, 14),
(132, 1),
(132, 4),
(132, 8),
(132, 11),
(132, 12),
(132, 13),
(132, 14),
(133, 1),
(133, 4),
(133, 8),
(133, 11),
(133, 12),
(133, 13),
(133, 14),
(134, 1),
(134, 4),
(134, 8),
(134, 11),
(134, 12),
(134, 13),
(134, 14),
(135, 1),
(135, 4),
(135, 8),
(135, 11),
(135, 12),
(135, 13),
(135, 14),
(136, 1),
(136, 4),
(136, 8),
(136, 11),
(136, 12),
(136, 13),
(136, 14),
(137, 1),
(137, 4),
(137, 8),
(137, 11),
(137, 12),
(137, 13),
(137, 14),
(138, 1),
(138, 4),
(138, 8),
(138, 11),
(138, 12),
(138, 13),
(138, 14),
(139, 1),
(139, 4),
(139, 8),
(139, 11),
(139, 12),
(139, 13),
(139, 14),
(140, 1),
(140, 4),
(140, 8),
(140, 11),
(140, 12),
(140, 13),
(140, 14),
(141, 1),
(141, 4),
(141, 8),
(141, 11),
(141, 12),
(141, 13),
(141, 14),
(142, 1),
(142, 4),
(142, 8),
(142, 11),
(142, 12),
(142, 13),
(142, 14),
(143, 1),
(143, 4),
(143, 8),
(143, 11),
(143, 12),
(143, 13),
(143, 14),
(144, 1),
(144, 4),
(144, 8),
(144, 11),
(144, 12),
(144, 13),
(144, 14),
(145, 1),
(145, 4),
(145, 8),
(145, 11),
(145, 12),
(145, 13),
(145, 14),
(146, 1),
(146, 4),
(146, 8),
(146, 11),
(146, 12),
(146, 13),
(146, 14),
(147, 1),
(147, 4),
(147, 8),
(147, 11),
(147, 12),
(147, 13),
(147, 14),
(148, 1),
(148, 4),
(148, 8),
(148, 11),
(148, 12),
(148, 13),
(148, 14),
(149, 1),
(149, 4),
(149, 8),
(149, 11),
(149, 12),
(149, 13),
(149, 14),
(150, 1),
(150, 4),
(150, 8),
(150, 11),
(150, 12),
(150, 13),
(150, 14),
(151, 1),
(151, 4),
(151, 8),
(151, 11),
(151, 12),
(151, 13),
(151, 14),
(152, 1),
(152, 4),
(152, 8),
(152, 11),
(152, 12),
(152, 13),
(152, 14),
(153, 1),
(153, 4),
(153, 8),
(153, 11),
(153, 12),
(153, 13),
(153, 14),
(154, 1),
(154, 4),
(154, 8),
(154, 11),
(154, 12),
(154, 13),
(154, 14),
(155, 1),
(155, 4),
(155, 8),
(155, 11),
(155, 12),
(155, 13),
(155, 14),
(156, 1),
(156, 4),
(156, 8),
(156, 11),
(156, 12),
(156, 13),
(156, 14),
(157, 1),
(157, 4),
(157, 8),
(157, 11),
(157, 12),
(157, 13),
(157, 14),
(158, 1),
(158, 4),
(158, 8),
(158, 11),
(158, 12),
(158, 13),
(158, 14),
(159, 1),
(159, 4),
(159, 8),
(159, 11),
(159, 12),
(159, 13),
(159, 14),
(160, 1),
(160, 4),
(160, 8),
(160, 11),
(160, 12),
(160, 13),
(160, 14),
(161, 1),
(161, 4),
(161, 8),
(161, 11),
(161, 12),
(161, 13),
(161, 14),
(162, 1),
(162, 4),
(162, 8),
(162, 11),
(162, 12),
(162, 13),
(162, 14),
(163, 1),
(163, 4),
(163, 8),
(163, 11),
(163, 12),
(163, 13),
(163, 14),
(164, 1),
(164, 4),
(164, 8),
(164, 11),
(164, 12),
(164, 13),
(164, 14),
(165, 1),
(165, 4),
(165, 8),
(165, 11),
(165, 12),
(165, 13),
(165, 14),
(166, 1),
(166, 4),
(166, 8),
(166, 11),
(166, 12),
(166, 13),
(166, 14),
(167, 1),
(167, 4),
(167, 8),
(167, 11),
(167, 12),
(167, 13),
(167, 14),
(168, 1),
(168, 4),
(168, 8),
(168, 11),
(168, 12),
(168, 13),
(168, 14),
(169, 1),
(169, 4),
(169, 8),
(169, 11),
(169, 12),
(169, 13),
(169, 14),
(170, 1),
(170, 4),
(170, 8),
(170, 11),
(170, 12),
(170, 13),
(170, 14),
(171, 1),
(171, 4),
(171, 8),
(171, 11),
(171, 12),
(171, 13),
(171, 14),
(172, 1),
(172, 4),
(172, 8),
(172, 11),
(172, 12),
(172, 13),
(172, 14),
(173, 1),
(173, 4),
(173, 8),
(173, 11),
(173, 12),
(173, 13),
(173, 14),
(174, 1),
(174, 4),
(174, 8),
(174, 11),
(174, 12),
(174, 13),
(174, 14),
(175, 1),
(175, 4),
(175, 8),
(175, 11),
(175, 12),
(175, 13),
(175, 14),
(176, 1),
(176, 4),
(176, 8),
(176, 11),
(176, 12),
(176, 13),
(176, 14),
(177, 1),
(177, 4),
(177, 8),
(177, 11),
(177, 12),
(177, 13),
(177, 14),
(178, 1),
(178, 4),
(178, 8),
(178, 11),
(178, 12),
(178, 13),
(178, 14),
(179, 1),
(179, 4),
(179, 8),
(179, 11),
(179, 12),
(179, 13),
(179, 14),
(180, 1),
(180, 4),
(180, 8),
(180, 11),
(180, 12),
(180, 13),
(180, 14),
(181, 1),
(181, 4),
(181, 8),
(181, 11),
(181, 12),
(181, 13),
(181, 14),
(182, 1),
(182, 4),
(182, 8),
(182, 11),
(182, 12),
(182, 13),
(182, 14),
(183, 1),
(183, 4),
(183, 8),
(183, 11),
(183, 12),
(183, 13),
(183, 14),
(184, 1),
(184, 4),
(184, 8),
(184, 11),
(184, 12),
(184, 13),
(184, 14),
(185, 1),
(185, 4),
(185, 8),
(185, 11),
(185, 12),
(185, 13),
(185, 14),
(186, 1),
(186, 4),
(186, 8),
(186, 11),
(186, 12),
(186, 13),
(186, 14),
(187, 1),
(187, 4),
(187, 8),
(187, 11),
(187, 12),
(187, 13),
(187, 14),
(188, 1),
(188, 4),
(188, 8),
(188, 11),
(188, 12),
(188, 13),
(188, 14),
(189, 1),
(189, 4),
(189, 8),
(189, 11),
(189, 12),
(189, 13),
(189, 14),
(190, 1),
(190, 4),
(190, 8),
(190, 11),
(190, 12),
(190, 13),
(190, 14),
(191, 1),
(191, 4),
(191, 8),
(191, 11),
(191, 12),
(191, 13),
(191, 14),
(192, 1),
(192, 4),
(192, 8),
(192, 11),
(192, 12),
(192, 13),
(192, 14),
(193, 4),
(193, 8),
(193, 11),
(193, 12),
(193, 13),
(193, 14),
(194, 4),
(194, 8),
(194, 11),
(194, 12),
(194, 13),
(194, 14),
(195, 4),
(195, 8),
(195, 11),
(195, 12),
(195, 13),
(195, 14),
(196, 1),
(196, 4),
(196, 8),
(196, 11),
(196, 12),
(196, 13),
(196, 14),
(197, 1),
(197, 4),
(197, 8),
(197, 11),
(197, 12),
(197, 13),
(197, 14),
(198, 1),
(198, 4),
(198, 8),
(198, 11),
(198, 12),
(198, 13),
(198, 14),
(199, 1),
(199, 4),
(199, 8),
(199, 11),
(199, 12),
(199, 13),
(199, 14),
(200, 1),
(200, 4),
(200, 8),
(200, 11),
(200, 12),
(200, 13),
(200, 14),
(201, 1),
(201, 4),
(201, 8),
(201, 11),
(201, 12),
(201, 13),
(201, 14),
(202, 1),
(202, 4),
(202, 8),
(202, 11),
(202, 12),
(202, 13),
(202, 14),
(203, 1),
(203, 4),
(203, 8),
(203, 11),
(203, 12),
(203, 13),
(203, 14),
(204, 1),
(204, 4),
(204, 8),
(204, 11),
(204, 12),
(204, 13),
(204, 14),
(205, 1),
(205, 4),
(205, 8),
(205, 11),
(205, 12),
(205, 13),
(205, 14),
(206, 1),
(206, 4),
(206, 8),
(206, 11),
(206, 12),
(206, 13),
(206, 14),
(207, 1),
(207, 4),
(207, 8),
(207, 11),
(207, 12),
(207, 13),
(207, 14),
(208, 1),
(208, 4),
(208, 8),
(208, 11),
(208, 12),
(208, 13),
(208, 14),
(209, 1),
(209, 4),
(209, 8),
(209, 11),
(209, 12),
(209, 13),
(209, 14),
(210, 1),
(210, 4),
(210, 8),
(210, 11),
(210, 12),
(210, 13),
(210, 14),
(211, 1),
(211, 4),
(211, 8),
(211, 11),
(211, 12),
(211, 13),
(211, 14),
(212, 1),
(212, 4),
(212, 8),
(212, 11),
(212, 12),
(212, 13),
(212, 14),
(213, 1),
(213, 4),
(213, 8),
(213, 11),
(213, 12),
(213, 13),
(213, 14),
(214, 1),
(214, 4),
(214, 8),
(214, 11),
(214, 12),
(214, 13),
(214, 14),
(215, 1),
(215, 4),
(215, 8),
(215, 11),
(215, 12),
(215, 13),
(215, 14),
(216, 1),
(216, 4),
(216, 8),
(216, 11),
(216, 12),
(216, 13),
(216, 14),
(217, 1),
(217, 4),
(217, 8),
(217, 11),
(217, 12),
(217, 13),
(217, 14),
(218, 1),
(218, 4),
(218, 8),
(218, 11),
(218, 12),
(218, 13),
(218, 14),
(219, 1),
(219, 4),
(219, 8),
(219, 11),
(219, 12),
(219, 13),
(219, 14),
(220, 1),
(220, 4),
(220, 8),
(220, 11),
(220, 12),
(220, 13),
(220, 14),
(221, 1),
(221, 4),
(221, 8),
(221, 11),
(221, 12),
(221, 13),
(221, 14),
(222, 1),
(222, 4),
(222, 8),
(222, 11),
(222, 12),
(222, 13),
(222, 14),
(223, 1),
(223, 4),
(223, 8),
(223, 11),
(223, 12),
(223, 13),
(223, 14);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_imported_data`
--

CREATE TABLE `temporary_imported_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_no` varchar(191) NOT NULL,
  `resume_path` varchar(191) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `candidate_id` int(11) DEFAULT NULL,
  `resume_text` text DEFAULT NULL,
  `assign_to` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temporary_imported_data`
--

INSERT INTO `temporary_imported_data` (`id`, `name`, `email`, `phone_no`, `resume_path`, `created_by`, `modify_by`, `created_at`, `updated_at`, `status`, `candidate_id`, `resume_text`, `assign_to`) VALUES
(88, 'Imported Candidate', 'ic@gmail.com', '+8891785969827', 'uploads//65e5b746dc560_65e440b7b39a5_65dae26382a5f_7 (1).pdf', 102, 102, '2024-03-04 11:58:41', '2024-05-06 12:12:00', 1, 174, 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period', 126),
(89, 'Import second', 'ics@gmail.com', '+8891785969826', 'uploads//65e5b77a73741_8.pdf', 102, 102, '2024-03-04 11:59:30', '2024-05-06 12:12:00', 1, 175, 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at no \r\ncost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount will be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at \r\nno cost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nHuman Resource Centre Pte Ltd will provide a one-time replacement at \r\nno cost.  Should there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee will be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacements and upon receiving timesheets for Contract & Temporary \r\nPlacements. Payment should be settled within 14 days from the invoiced \r\ndate. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Human Resource Centre Pte Ltd a sum \r\nequivalent to the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Human Resource Centre Pte Ltd within a period of six (6) \r\nmonths. \r\n The Client employs our candidates introduced by Success Human \r\nResource Centre Pte Ltd within a period of six (6) months from the \r\ncompletion of any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Human Resource Centre Pte Ltd will take every \r\nreasonable precautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Human Resource Centre Pte Ltd \r\nwill not accept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Human Resource \r\nCentre Pte Ltd will not be liable for any losses, damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period', 125),
(90, 'Import third', 'ict@gmail.com', '01997015981', 'uploads//65e5b7822e5df_6.pdf', 102, 102, '2024-03-04 12:00:01', '2024-05-06 12:12:00', 1, 176, '1 \r\n \r\n \r\n \r\nTERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee shall be \r\ncalculated as follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; a 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2 \r\n \r\n \r\n \r\n \r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Company converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; a 50% of the invoice amount shall be refunded \r\naccordingly.\r\n\r\n3 \r\n \r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; a 50% of the recruitment fee shall be refunded \r\naccordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\n4 \r\n \r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work to be done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest day, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n       salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Overseas Recruitment / Foreign Student Internship \r\n \r\nIn order to assist our clients to save cost and to avoid a high rate of attrition, \r\nSuccess Resource Centre Pte Ltd is actively in partnership with Agencies in \r\nChina, Philippines, Myanmar, India etc for recruitment of Work Permit, S \r\nPass and EP Pass applicants. \r\n \r\nSuccess Resource Centre Pte Ltd is also actively involved in placements of \r\nforeign students for internship in the F&B, Retail and Hotel Industry for a \r\nduration of six months. \r\n \r\n6. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n7. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement.\r\n\r\n5 \r\n \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement. \r\n \r\n8. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client shall provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances shall the Client requires the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n9. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd shall take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liability for any acts of dishonesty, negligence, misconduct or misdeeds \r\non the part of the selected candidates.  Success Resource Centre Pte Ltd will \r\nnot be liable for any loss or damages, or any other costs irrespective of how \r\nthey are caused which the Client may suffer during the employment of the \r\ncandidates.  \r\n \r\n10. Validity Period', 126),
(91, 'INNOVATIVE SKILLS BD', 'salmanwaqar0077@gmail.com', '+8891785969827', 'uploads//65e5b82f85e18_salman_cv.pdf', 1, 1, '2024-03-04 12:01:59', '2024-03-04 12:02:20', 1, 150, 'CONTACT INFO_ \r\nPHONE : \r\n +8891785969827 \r\nEMAIL: \r\nsalmanwaqar0077@gmail.com \r\nAREA: \r\nRoad8,House196,BlockB, \r\nChandgaonR/A,Chattogram. \r\n \r\nABOUT ME_ \r\nAs a highly motivated results \r\ndriven web developer,Ihave a \r\nstrong technical skill set in \r\nMySQL, \r\nPHP,Laravel,WordPress,and \r\nHTML. My passion for web \r\ndevelopment & my ability to work \r\nwell in a team environment have \r\nenabled me to consistently \r\ndeliver high-quality projects.I am \r\nalways eager to learn & stay up-\r\nto-date with the latest industry \r\ntrends, & I am committed to \r\nusing my skills to create engaging \r\n& user-friendly websites & \r\napplications \r\nWeb Developer (WordPress) \r\nFebruary 2022-MARCH 2023 \r\nMOVING IMAGE,Malaysia \r\nLARAVEL DEVELOPER (INTERN) \r\n4months  \r\nINNOVATIVE SKILLS BD \r\nPROJECTS_ \r\nWEBSITES USING  ELEMENTOR  \r\nhttps://yawsingaporejournal.com \r\n https://yawmalaystories.com  \r\nhttps://daretoyawn.com \r\n https://wifereviewsonline.com  \r\n http://yawbookreleased.com \r\n https://darrensmalaysiaku.com/ \r\n https://www.dreamandyawn.com \r\nSKILLS_ \r\nPHP-LARAVEL-BOOTSTRAP-CSS-HTML-JAVASCRIPT-jQuery-\r\nMYSQL-WordPress \r\n GIT LINK OF RECENT LARAVEL PROJECT \r\nhttps://github.com/Salman-Waqar-\r\nKhan/Random_questions.git \r\nEXPERIECE_\r\n\r\nEDUCATION_ \r\nGED \r\nPEARSON VUE \r\n2019- 2020 \r\nREFERENCES_ \r\nTANVIR MAHMUD CHOWDHURY  \r\nTechnical Consultant at The Moving Image \r\nPHONE: +601156400016  \r\nE-MAIL:tanvir@movingimage.my \r\nCOURSES_ \r\n1.WEB DEVELOPMENT \r\nEShikhon \r\n2.LARAVEL \r\nEuropean IT', 125),
(92, 'FAYSAL HOSSAIN', 'devfaysalbd@gmail.com', '1639828754', 'uploads//65e5b82f879ea_content.pdf', 1, 1, '2024-03-04 12:02:12', '2024-03-04 12:02:20', 1, 151, 'This Will Be Downloaded\r\nStare at the wall, play with food and get confused by dust eat and than sleep on your face.\r\nAsdflkjaertvlkjasntvkjn (sits on keyboard) play time scamper human give me attention meow.\r\nVommit food and eat it again meowwww so i am the best but sun bathe, yet white cat sleeps on a\r\nblack shirt. Kick up litter flop over, or give attitude. Make meme, make cute face stare at the', 126),
(93, 'FAYSAL HOSSAIN', 'devfaysalbd@gmail.com', '1639828754', 'uploads//65e5b82f87502_65ab4d093e26c_faysal-hossain-CV-.pdf', 1, 1, '2024-03-04 12:02:18', '2024-03-04 12:02:20', 1, 152, 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nTraining Summary \r\nAchievements\r\nTo prove myself as a highly energetic person\r\nface and Wiling to develop a creative career in\r\nthe dynamic field of web design &\r\ndevelopment.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nResult: Appearing\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nWeb Design \r\nCreative It Institute, Bangladesh Training\r\nDuration: 3 Months \r\nLanguage\r\nBangla\r\nEnglish\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nWordPress (Theme & Plugin\r\nCustomization) \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/Tailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/', 125),
(94, 'Jon King', 'jk@gmail.com', '+65 16398287', 'uploads//663746782c6b7_faysal-hossain-new.pdf', 112, 112, '2024-05-05 11:33:30', '2024-05-05 11:50:04', 1, 162, 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nExperience\r\nAchievements\r\nAs an experienced front-end web developer\r\nwith expertise in React, I’m passionate about\r\ncreating responsive and user-friendly web\r\napplications. I have a strong foundation in\r\nHTML, CSS, JavaScript and related web\r\ntechnologies, and I am constantly striving to\r\nimprove my skills and stay up-to-date with the\r\nlatest web development trends.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nCGPA - 3.46 out of 4.00\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nFront-end developer Internship\r\nFuture Innovation LTD\r\nDuration:  August  2023 - Running\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/\r\nTailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/\r\nRedux', 125),
(95, 'Tarn stagan', 'st@gmail.com', '+65 84053474', 'uploads//66374638e6071_sample-file.pdf', 112, 112, '2024-05-05 11:40:45', '2024-05-05 11:50:04', 1, 163, 'Hello, this is a H3 tag\r\na pararaph', 126),
(96, 'Arugo', 'arj@gmail.com', '+65 09842876', 'uploads//663754355aa44_Edit Candidate _ Success HR.pdf', 112, 112, '2024-05-05 11:41:50', '2024-05-05 11:50:04', 1, 164, 'Terms & Conditions\r\n1. Temporary Placement\r\nA. Temporary candidates are required to serve 1 week notice to SUCCESS HUMAN RESOURCE CENTRE PTE\r\nLTD / SUCCESS RESOURCE CENTRE PTE LTD upon resignation, failing which salary in lieu of notice will be\r\ndeducted (include OT claims).\r\nB. All candidates shall not accept any employment offer directly from the client of SUCCESS HUMAN RESOURCE\r\nCENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD within 1 year from the last working day of the\r\nassignment.\r\n2. Permanent / Contract Placement\r\nThe candidates shall agree to commit themselves for a period of 2 months (excluding notice period) upon\r\naccepting the job offered by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\r\nCENTRE PTE LTD whether by writing or verbally, expressed or implied, failing which the candidates will have to\r\ncompensate 30% of their offered salary to SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS\r\nRESOURCE CENTRE PTE LTD. This 30% compensation clause also applies to candidates who are terminated by\r\nour clients due to misconduct, poor performance or attendance, frequent medical leave, absence without calling or\r\nhabitual late coming.\r\nAll candidates shall not have any direct contact with the clients for a period of 1 year after an interview arranged by\r\nSUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE LTD unless\r\napproval is granted by the Agency.\r\nI agree to all the Terms & Conditions of this employment and hereby declare that all the particulars given in this\r\napplication is true, complete and accurate to the best of my knowledge and if this declaration is in any part false or\r\nincorrect, the Agency / Company will reserve the right to terminate my services instantly.\r\nI hereby authorize/consent SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE\r\nCENTRE PTE LTD to obtain and share all the information given in this application form/resume to any clients for\r\njob search purposes only. I understand and agree that all modes of communication (Call, SMS, Email and Fax)\r\nmay be necessary to execute the job search. In order to opt out in the future, an email has to be submitted and\r\nacknowledged by SUCCESS HUMAN RESOURCE CENTRE PTE LTD / SUCCESS RESOURCE CENTRE PTE\r\nLTD, who will duly comply with the request, failing which, I will have no claim or recourse against the above-\r\nmentioned companies.\r\nJoin Date	05/07/2024\r\n5/5/24, 12:27 PM	Edit Candidate | Success HR\r\n127.0.0.1:8000/ATS/candidate/161/edit	1/1', 125),
(97, 'sdfs', 's@gmail.com', '+65 34839233', 'uploads//66375476b6dfc_sample-file.pdf', 112, 112, '2024-05-05 11:42:41', '2024-05-05 11:50:04', 1, 165, 'Hello, this is a H3 tag\r\na pararaph', 126),
(98, 'CS', 'cs@gmail.com', '+65 4565865', 'uploads//663754a5cdade_7 (1).pdf', 112, 112, '2024-05-05 11:43:23', '2024-05-05 11:50:04', 1, 166, 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period', 125),
(99, 'EXPERIENCE', 'no_reply@example.com', '+65 45645656', 'uploads//663754dd8c23f_Resume.pdf', 112, 112, '2024-05-05 11:44:09', '2024-05-05 11:50:04', 1, 167, 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n(123)456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer', 125),
(100, 'FAYSAL HOSSAIN', 'devfaysalbd@gmail.com', '+65 1639828754', 'uploads//6637550a7b5e1_faysal-hossain-new.pdf', 112, 112, '2024-05-05 11:44:54', '2024-05-05 11:50:04', 1, 168, 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nExperience\r\nAchievements\r\nAs an experienced front-end web developer\r\nwith expertise in React, I’m passionate about\r\ncreating responsive and user-friendly web\r\napplications. I have a strong foundation in\r\nHTML, CSS, JavaScript and related web\r\ntechnologies, and I am constantly striving to\r\nimprove my skills and stay up-to-date with the\r\nlatest web development trends.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nCGPA - 3.46 out of 4.00\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nFront-end developer Internship\r\nFuture Innovation LTD\r\nDuration:  August  2023 - Running\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/\r\nTailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/\r\nRedux', 126),
(101, 'EXPERIENCE', 'no_reply@example.com', '+65 234355675', 'uploads//663755fab2ee0_Resume.pdf', 112, 112, '2024-05-05 11:48:56', '2024-05-05 11:50:04', 1, 169, 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n(123)456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer', 128),
(102, 'New candidate', 'nc44@gmail.com', '+65 45687874', 'uploads//66370e92cae72_65e440b7b39a5_65dae26382a5f.pdf', 102, 102, '2024-05-06 12:11:50', '2024-05-06 12:12:00', 1, 177, 'TERMS AND CONDITIONS FOR RECRUITMENT OF PERMANENT / \r\nCONTRACT STAFF \r\n \r\n1. Permanent Placement Fee \r\n \r\nWe charge clients only for successful placements.  The placement fee is calculated \r\nas follows: \r\n \r\nSalary Range 	Rates 	Guarantee Period \r\nS$2,500 & Below \r\n90% of offered monthly \r\nsalary *\r\n 	4 weeks \r\n60% of offered monthly \r\nsalary * \r\nNil \r\nS$2,501 to S$3,500 \r\n100% of offered monthly \r\nsalary *  \r\n4 weeks \r\n70% of offered monthly \r\nsalary *  \r\nNil \r\nS$3,501 to S$5,000 \r\n15% of Annual Package **  8 weeks \r\n12% of Annual Package ** Nil \r\nS$5,001 & Above \r\n18% of Annual Package ** 12 weeks \r\n15% of Annual Package ** Nil \r\n \r\n * Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the resignation \r\ndate; 50% of the invoice amount shall be refunded accordingly.\r\n\r\n2. Contract Placement Fee  \r\n \r\nA. Under Client’s Payroll: \r\n \r\ni. Salary:  S$3,500 and Below \r\n \r\nDuration of Contract Rates Guarantee Period \r\nLess than 6 months \r\n70% of offered monthly \r\nsalary * \r\n2 weeks \r\n6 months to less than 1 \r\nyear \r\n80% of offered monthly \r\nsalary *  \r\n3 weeks \r\n1 year & Above \r\n90% of offered monthly \r\nsalary * \r\n4 weeks \r\n \r\nii. Salary:  S$3,501 and Above \r\n \r\nDuration of Contract Rates Guarantee Period \r\nALL \r\n100% of offered monthly \r\nsalary** \r\n4 weeks \r\n \r\n* Monthly Salary includes all allowances, if any. \r\n \r\n ** Annual Package includes AWS, Fixed Bonuses and allowances, if any. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nThere will be no further charges if the Client converts the candidate to \r\npermanent employment at the end of the contract. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the invoice amount shall be refunded accordingly.\r\n\r\nB. Under Agency’s Payroll \r\n \r\nSalary Range Recruitment \r\nFee \r\n# \r\nMonthly \r\nAdmin Fee \r\nGuarantee \r\nPeriod \r\nS$1,500 & Below S$300 S$150 2 Weeks \r\nS$1,501 to S$2,500 S$400 S$180 2 Weeks \r\nS$2,501 to S$4,000 S$500 S$280 2 Weeks \r\nS$4,001 to S$5,000 S$700 S$350 2 Weeks \r\nS$5,001 to S$7,000 S$850 S$450 2 Weeks \r\nMore than S$7,000 S$950 S$550 2 Weeks \r\n \r\n# The above Recruitment Fees will strictly be a one-time charge to clients. \r\n \r\nWorkmen’s Compensation Insurance (WICA) will be charged based on the \r\ngross salary,  \r\nat the rate of 1% per month. \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\nIn the event that the candidate resigns within the guarantee period, Success \r\nResource Centre Pte Ltd will provide a one-time replacement at no cost.  \r\nShould there be no suitable replacement within 4 weeks from the \r\nresignation date; 50% of the recruitment fee shall be refunded accordingly. \r\n \r\n3.  Temporary Placement \r\n \r\n A. Under Agency’s Payroll – Hourly Rated  \r\n \r\nTemporary Placement 	Quoted Rate \r\nRecruitment Services + Payroll Candidate’s Rate x 1.51 \r\nPayroll Only (Parked) Candidate’s  Rate x 1.36 \r\n \r\ni. Rates \r\n \r\n Rates quoted are on an hourly basis and minimum charges are 4 hours \r\n Rates quoted are inclusive of Central Provident Fund contribution, Skills \r\nDevelopment Levy and Workmen’s Compensation Insurance (WICA). \r\n The amounts are calculated from the timesheets recorded by the \r\ncandidates and authenticated by the Client.\r\n\r\nii. Overtime Rates \r\n \r\n Overtime rates of one and a half (1.5) times the hourly rate will be \r\ncharged for work done beyond contractual hours of work \r\n Overtime rates of two (2) times the hourly rate will be charged for hours \r\nworked on rest days, weekends and gazetted Public Holidays \r\n \r\n4. Conversion of Candidate   Charges \r\n \r\n a.    Temporary to Contract / Permanent  50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\n b. Contract (Under Agency’s Payroll) to Permanent 50% of offered monthly  \r\n     salary \r\n     (With no guarantee) \r\n \r\nAll rates quoted are subjected to 7% GST. \r\n \r\n5. Terms of Payment \r\n \r\nInvoices will be raised on commencement of employment for Permanent \r\nPlacement and upon receiving timesheets for Contract & Temporary \r\nPlacement.  Payment should be settled within 14 days from the invoiced date. \r\n \r\n6. Binding Terms \r\n \r\n All introductions are on a confidential basis. \r\n The Client is deemed to accept the Terms and Conditions by virtue of a \r\nresume referral, interview or placement of the candidates. \r\n The Client shall pay Success Resource Centre Pte Ltd a sum equivalent \r\nto the Placement Fee as stipulated in Clause 1 in the event that:- \r\n The Client refers our candidates to other employers which results in an \r\nengagement. \r\n The Client employs our candidates who have been shortlisted from \r\nSuccess Resource Centre Pte Ltd within a period of six (6) months. \r\n The Client employs our candidates introduced by Success Resource \r\nCentre Pte Ltd within a period of six (6) months from the completion \r\nof any Temporary Placement.\r\n\r\n7. Client’s Responsibilities \r\n \r\nWhilst we endeavor to select suitable candidates for our Clients, it is accepted \r\nthat the Client will provide a safe and conducive working environment as well \r\nas ongoing supervision for every successful placement. Under no \r\ncircumstances should the Client require the candidates to perform any duties \r\nother than the terms of assignment.    \r\n \r\n8. Disclaimer  \r\n \r\nAlthough Success Resource Centre Pte Ltd will take every reasonable \r\nprecautionary measures to ensure the competence and satisfactory \r\nperformance of the candidates, Success Resource Centre Pte Ltd will not \r\naccept liabilities for any acts of dishonesty, negligence, misconduct or \r\nmisdeeds on the part of the selected candidates.  Success Resource Centre \r\nPte Ltd will not be liable for any losses or damages, or any other costs \r\nirrespective of how they are caused which the Client may suffer during the \r\nemployment of the candidates.  \r\n \r\n9. Validity Period', 133);
INSERT INTO `temporary_imported_data` (`id`, `name`, `email`, `phone_no`, `resume_path`, `created_by`, `modify_by`, `created_at`, `updated_at`, `status`, `candidate_id`, `resume_text`, `assign_to`) VALUES
(103, 'EXPERIENCE', 'no_reply@example.com', '+65 68175600', 'uploads//66331c0b41ce5_Resume (1).pdf', 1, 1, '2024-05-07 06:53:51', '2024-05-07 07:13:18', 1, 167, 'YourName\r\nLoremipsumdolorsitamet,consectetueradipiscingelit\r\n123YourStreet\r\nYourCity,ST12345\r\n+6568175600‎\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany,Location—JobTitle\r\nMONTH20XX-PRESENT\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nCompany,Location—JobTitle\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibh.\r\nEDUCATION\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam\r\nnonummynibheuismodtinciduntutlaoreetdolore.\r\nSchoolName,Location—Degree\r\nMONTH20XX-MONTH20XX\r\nLoremipsumdolorsitamet,consectetueradipiscingelit,seddiam.\r\nPROJECTS\r\nProjectName—Detail\r\nLoremipsumdolorsitamet,consectetueradipiscingelit.\r\nSKILLS\r\n​Loremipsumdolorsitamet.\r\n​Consectetueradipiscingelit.\r\n​Seddiamnonummynibh\r\neuismodtincidunt.\r\n​L​​​‌​aoreetdoloremagna\r\naliquameratvolutpat.\r\nAWARDS\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLoremipsumdolorsitamet\r\nConsectetueradipiscingelit,\r\nSeddiamnonummy\r\nNibheuismodtinciduntut\r\nlaoreetdoloremagnaaliquam\r\neratvolutpat.\r\nLANGUAGES\r\nLoremipsum,Dolorsitamet,\r\nConsectetuer', 128),
(104, 'FAYSAL HOSSAIN', 'devfaysalbd@gmail.com', '+65 1639828754', 'uploads//66331f32cf764_65ab4d093e26c_faysal-hossain-CV-.pdf', 1, 1, '2024-05-07 06:57:37', '2024-05-07 07:13:18', 1, 151, 'FAYSAL HOSSAIN\r\nFront-end Developer\r\nAbout Me\r\nTraining Summary \r\nAchievements\r\nTo prove myself as a highly energetic person\r\nface and Wiling to develop a creative career in\r\nthe dynamic field of web design &\r\ndevelopment.\r\nProfessional Skill \r\nHTML\r\nEducation Background\r\nMy Contact\r\ndevfaysalbd@gmail.com\r\nHouse#43&45,Lane#05,\r\nBlock#D, Section# Mirpur-12,\r\nPallabi, Dhaka, Bangladesh \r\n+880 1639828754\r\n<WEB/> CONTEST\r\nCSS\r\nBootstrap\r\nJavaScript\r\nJquery\r\nReact.js\r\nPSD TO HTML \r\nFigma TO HTML \r\nDiploma in Computer Technology \r\nSatkhira Polytechnic Institute \r\nDepartment: Computer Technology \r\nBoard:Bangladesh Technical\r\nEducation Board, Dhaka \r\nResult: Appearing\r\nS.S.C \r\nSatkhira Technical School & Collage,\r\nSatkhira Board: Bangladesh Technical\r\nEducation Board, Dhaka \r\nGPA - 4.71 out of 5.00\r\nProjects Live Link\r\nWeb Design \r\nCreative It Institute, Bangladesh Training\r\nDuration: 3 Months \r\nLanguage\r\nBangla\r\nEnglish\r\n1ST RUNNER-UP,  At Creative-it\r\n2022\r\nCreate by :- HTML, CSS, Bootstrap & JS\r\nCreate by :- HTML, CSS, Bootstrap & js\r\nhttps://faysal-hossain11.github.io/gym-\r\nwebsite/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nGit & github \r\nWordPress (Theme & Plugin\r\nCustomization) \r\nResume of  FAYSAL HOSSAIN\r\nGithub Profile\r\nhttps://github.com/faysal-hossain11/Tailwind css\r\nhttps://faysal-\r\nhossain11.github.io/Agency-website/\r\nCreate by :- HTML, CSS, Bootstrap  & JS\r\nhttps://faysal-\r\nhossain11.github.io/Education-website/\r\nhttps://faysal-\r\nhossain11.github.io/Construction-\r\nwebsite/', 128),
(105, 'EXPERIENCE', 'no_reply@example.com', '+65 6876878', 'uploads//6639b4ca207d8_Resume.pdf', 1, 1, '2024-05-07 06:58:20', '2024-05-07 07:13:18', 1, 167, 'Your Name\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit\r\n123 Your Street\r\nYour City, ST 12345\r\n(123) 456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - PRESENT\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nEDUCATION\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh euismod tincidunt ut laoreet dolore.\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.\r\nPROJECTS\r\nProject Name 	— 	Detail\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\nSKILLS\r\nLorem ipsum dolor sit amet.\r\nConsectetuer adipiscing elit.\r\nSed diam nonummy nibh euismod tincidunt.\r\nL?????aoreet dolore magna aliquam erat volutpat.\r\nAWARDS\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLANGUAGES\r\nLorem ipsum, Dolor sit amet, Consectetuer', 132),
(106, 'EXPERIENCE', 'no_reply@example.com', '+65 57876', 'uploads//6639b4fe6ce32_6638970b0cd76_Resume.pdf', 1, 1, '2024-05-07 06:58:47', '2024-05-07 07:13:18', 1, 167, 'Your Name\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit\r\n123 Your Street\r\nYour City, ST 12345\r\n(123) 456-7890\r\nno_reply@example.com\r\nEXPERIENCE\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - PRESENT\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nCompany, 	Location — 	Job Title\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh.\r\nEDUCATION\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy\r\nnibh euismod tincidunt ut laoreet dolore.\r\nSchool Name, 	Location — 	Degree\r\nMONTH 20XX - MONTH 20XX\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.\r\nPROJECTS\r\nProject Name 	— 	Detail\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\nSKILLS\r\nLorem ipsum dolor sit amet.\r\nConsectetuer adipiscing elit.\r\nSed diam nonummy nibh euismod tincidunt.\r\nL?????aoreet dolore magna aliquam erat volutpat.\r\nAWARDS\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLorem ipsum dolor sit amet Consectetuer adipiscing elit,\r\nSed diam nonummy\r\nNibh euismod tincidunt ut laoreet dolore magna aliquam\r\nerat volutpat.\r\nLANGUAGES\r\nLorem ipsum, Dolor sit amet, Consectetuer', 128);

-- --------------------------------------------------------

--
-- Table structure for table `time_sheets`
--

CREATE TABLE `time_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `print` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `entities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_sheets`
--

INSERT INTO `time_sheets` (`id`, `title`, `print`, `remark`, `created_at`, `updated_at`, `entities`) VALUES
(6, 'Time sheet One', 'One', 'Remarks', '2024-02-20 06:36:57', '2024-02-20 06:40:09', '{\"sunday\":{\"day\":\"Sunday\",\"in_time\":null,\"out_time\":null,\"lunch_time\":\"No Lunch\",\"minimum\":\"No Rate\",\"allowance\":null},\"monday\":{\"day\":\"Monday\",\"in_time\":\"09:00\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"tuesday\":{\"day\":\"Tuesday\",\"in_time\":\"09:00\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"wednesday\":{\"day\":\"Wednesday\",\"in_time\":\"09:00\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"thursday\":{\"day\":\"Thursday\",\"in_time\":\"09:00\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"friday\":{\"day\":\"Friday\",\"in_time\":\"09:00\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"saturday\":{\"day\":\"Saturday\",\"in_time\":\"09:06\",\"out_time\":\"18:00\",\"lunch_time\":\"30 minutes\",\"isWork\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null}}'),
(12, 'New Timesheet', 'sd', 'time sheet', '2024-03-04 13:04:41', '2024-03-04 13:04:41', '{\"sunday\":{\"day\":\"Sunday\",\"in_time\":null,\"out_time\":null,\"lunch_time\":\"No Lunch\",\"minimum\":\"No Rate\",\"allowance\":null},\"monday\":{\"day\":\"Monday\",\"in_time\":\"10:00\",\"out_time\":\"18:00\",\"lunch_time\":\"1 hour\",\"ot_rate\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"tuesday\":{\"day\":\"Tuesday\",\"in_time\":\"10:00\",\"out_time\":\"18:00\",\"lunch_time\":\"1 hour\",\"ot_rate\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"wednesday\":{\"day\":\"Wednesday\",\"in_time\":\"10:00\",\"out_time\":\"18:00\",\"lunch_time\":\"1 hour\",\"ot_rate\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"thursday\":{\"day\":\"Thursday\",\"in_time\":\"10:00\",\"out_time\":\"18:00\",\"lunch_time\":\"1 hour\",\"ot_rate\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"friday\":{\"day\":\"Friday\",\"in_time\":\"10:00\",\"out_time\":\"18:00\",\"lunch_time\":\"1 hour\",\"ot_rate\":\"on\",\"minimum\":\"No Rate\",\"allowance\":null},\"saturday\":{\"day\":\"Saturday\",\"in_time\":null,\"out_time\":null,\"lunch_time\":\"No Lunch\",\"minimum\":\"No Rate\",\"allowance\":null}}');

-- --------------------------------------------------------

--
-- Table structure for table `time_sheet_entries`
--

CREATE TABLE `time_sheet_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_sheet_id` bigint(20) UNSIGNED NOT NULL,
  `day` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `lunch_time` varchar(191) DEFAULT NULL,
  `isWork` varchar(191) DEFAULT NULL,
  `ot_rate` varchar(191) DEFAULT NULL,
  `minimum` int(11) DEFAULT NULL,
  `allowance` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isNextDay` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tnc_templates`
--

CREATE TABLE `tnc_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tnc_template_code` varchar(191) NOT NULL,
  `tnc_template_desc` varchar(191) NOT NULL,
  `tnc_template_isDefault` int(11) NOT NULL DEFAULT 0,
  `tnc_template_file_path` varchar(191) DEFAULT NULL,
  `tnc_template_seqno` int(11) DEFAULT NULL,
  `tnc_template_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tnc_templates`
--

INSERT INTO `tnc_templates` (`id`, `tnc_template_code`, `tnc_template_desc`, `tnc_template_isDefault`, `tnc_template_file_path`, `tnc_template_seqno`, `tnc_template_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(15, 'SHRC', 'SHRC', 0, 'uploads/tnc/663870994deee_65e440b7b39a5_65dae26382a5f.pdf', 1, 1, NULL, NULL, '2024-02-27 15:48:02', '2024-05-06 07:54:33'),
(17, 'SRC', 'src', 0, 'uploads/tnc/663871b97a99c_65d193e063b60_7 (1).pdf', 1, 1, NULL, NULL, '2024-05-06 07:59:21', '2024-05-06 07:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `uploadfiletypes`
--

CREATE TABLE `uploadfiletypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uploadfiletype_code` varchar(191) NOT NULL,
  `uploadfiletype_desc` varchar(191) NOT NULL,
  `uploadfiletype_seqno` int(11) DEFAULT NULL,
  `uploadfiletype_for` int(11) NOT NULL DEFAULT 0,
  `uploadfiletype_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modify_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploadfiletypes`
--

INSERT INTO `uploadfiletypes` (`id`, `uploadfiletype_code`, `uploadfiletype_desc`, `uploadfiletype_seqno`, `uploadfiletype_for`, `uploadfiletype_status`, `created_by`, `modify_by`, `created_at`, `updated_at`) VALUES
(1, 'Master Terms and Conditions', 'Master Terms and Conditions', 1, 0, 1, NULL, NULL, NULL, NULL),
(2, 'Signed Terms and Conditions', 'Signed Terms and Condition', 2, 0, 1, NULL, NULL, NULL, NULL),
(3, 'Interview Location Details', 'Interview Location Details', 3, 0, 1, NULL, NULL, NULL, NULL),
(4, 'Master Contract', 'Master Contract', 4, 0, 1, NULL, NULL, NULL, NULL),
(5, 'Client’s Application Form', 'Client’s Application Form', 5, 0, 1, NULL, NULL, NULL, NULL),
(6, 'Other', 'Other', 6, 0, 1, NULL, NULL, NULL, NULL),
(7, 'NRIC', 'NRIC', 50, 1, 1, NULL, NULL, NULL, NULL),
(8, 'Passport', 'Passport', 51, 1, 1, 1, 1, '2023-12-19 03:28:52', '2023-12-19 03:28:52'),
(9, 'Education Cert', 'Education Cert', 52, 1, 1, 1, 1, '2023-12-19 03:28:52', '2023-12-19 03:28:52'),
(11, 'Others', 'Others', 53, 1, 1, 1, 1, '2023-12-19 03:28:52', '2023-12-19 03:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `photo_link` text DEFAULT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `parent_id`, `photo_link`, `google2fa_secret`, `remember_token`, `created_at`, `updated_at`, `active_status`) VALUES
(1, 'Administrator', 'admin@digipixel.sg', NULL, '$2y$10$8kgfYyrCuAD9QPKLuCKuMOorPVCAWROHXkJ8gBJMU2ZjM.REdz7ey', 1, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2023-12-27 03:15:10', '2024-01-30 23:59:56', 1),
(100, 'Morgan Frye', 'xoqype@mailinator.com', NULL, '$2y$10$ycjtglMgkG9A/WvKlLyRR.DF1p1ehqj3WDNkv5SAJzeMOgbQg.w3K', 3, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 10:44:58', '2024-03-04 10:44:58', 1),
(101, 'Manager 1', 'man1@gmail.com', NULL, '$2y$10$aNMbVZBxkbp5JabHXTdo1.q3wCnCWJcPyX/cE.cKtimkCOY9nZaDi', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 10:46:56', '2024-03-04 10:46:56', 1),
(102, 'Manager 3', 'man3@gmail.com', NULL, '$2y$10$p8PEnF98RIJANajy6sPCU.PxJgXNLvlFmgzJPwDMTjrHWMg8dbE7.', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:17:49', '2024-03-04 11:17:49', 1),
(103, 'Team Leader 1', 'tl1@gmail.com', NULL, '$2y$10$Yu4fhnNJ0ozCYOAd9H5ATOcL3SC56.rlBRwYM7oramhx1NHe.c01K', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:19:23', '2024-03-04 11:19:23', 1),
(104, 'Team M2 2', 'tl2@gmail.com', NULL, '$2y$10$oYUz3QocoR15I4y5d86VJu6FzliEHJ045OKJns04dD6TeSAvXfl7u', 1, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:21:13', '2024-03-04 11:21:13', 1),
(105, 'Team Leader 3', 'tl3@gmail.com', NULL, '$2y$10$zJx2Z40iq0Afot3b2PrsMeVn/azpD8SUCNQNr365kDbuMU1vf6p6a', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:24:54', '2024-03-04 11:24:54', 1),
(106, 'Team Lead 4', 'tl4@gmail.com', NULL, '$2y$10$VK.NKQiGMbjKI4HlOjJVo.j8Dmrin/XiDwOpGxVeyPMbd7FoDEyKK', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:28:09', '2024-03-04 11:28:09', 1),
(107, 'Consultant 1', 'con1@gmail.com', NULL, '$2y$10$7UKSazBHVOm7i18KBPuU2uh/Nw5NZCmk95aCxRJScWjfP2Q6zrSY6', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:30:22', '2024-03-04 11:30:22', 1),
(108, 'Consultant 2', 'con2@gmail.com', NULL, '$2y$10$oOakCFaNN8VHa0rJIa8c/eoNbxegd5NXALAgI3IJejLgfZp84cD9m', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:31:54', '2024-03-04 11:31:54', 1),
(109, 'Payroll', 'pr1@gmail.com', NULL, '$2y$10$kR7dEujFNME4cPd0EN69L.MLsWWXb88I4mCzq.47nwkBZI4.BL1LK', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 11:33:13', '2024-03-04 11:33:13', 1),
(110, 'Consultant 6', 'con6@gmail.com', NULL, '$2y$10$DqEhCyyB25X1.EJ01EwcLOG8zKN.VlE4299mA8IzaHsUlEqNFoQwy', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-03-04 12:10:26', '2024-03-04 12:10:26', 1),
(112, 'Team Lead 3', 'tl33@gmail.com', NULL, '$2y$10$Lg5NMtoITAgP2bRRXBsnTOWIlOWc3ppIQ97FcUUHt3he5vTQecT0W', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-05-04 14:16:51', '2024-05-04 14:16:51', 1),
(113, 'New test', 'nt@gmail.com', NULL, '$2y$10$/Hu/7.mlGRba8bGN3c/ql.f0hlWkxsoYz9onF37EcWPsu6I57LEQ.', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-05-05 06:12:50', '2024-05-05 06:12:50', 1),
(114, 'Con 3', 'c3@gmail.com', NULL, '$2y$10$NZYRAqTBo0PpvqOosiV.YukpyYgktZ7NMJ3NL7JWGzXYGTLOeK1oW', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-05-05 06:15:37', '2024-05-05 06:15:37', 1),
(115, 'Again Test', 'at@gmail.com', NULL, '$2y$10$VGBWLA1qGhvbNcD35w6PPO/mSywGWGgvZjkwFJilhJzoz5oAZ3Sw.', 0, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2024-05-05 06:25:39', '2024-05-05 06:25:39', 1),
(116, 'sdfdsf', 'sfd@gmail.com', NULL, '$2y$10$4ZDjI1B0KdMTZ5FnTyQdhu53ci7jne5jOnMOpAazXBej3bki0ZZAO', 0, 0, NULL, 'UQ4HRLUPPVX6ZS7X', NULL, '2024-05-06 12:33:28', '2024-05-06 12:33:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_clients`
--
ALTER TABLE `assign_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_clients_client_id_foreign` (`client_id`);

--
-- Indexes for table `assign_to_rcs`
--
ALTER TABLE `assign_to_rcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_parents`
--
ALTER TABLE `attendence_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calanders`
--
ALTER TABLE `calanders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_team_leader_id_foreign` (`team_leader_id`),
  ADD KEY `candidates_consultant_id_foreign` (`consultant_id`);

--
-- Indexes for table `candidate_families`
--
ALTER TABLE `candidate_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_file_imports`
--
ALTER TABLE `candidate_file_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_payrolls`
--
ALTER TABLE `candidate_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_remarks`
--
ALTER TABLE `candidate_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_remark_interviews`
--
ALTER TABLE `candidate_remark_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_remark_shortlists`
--
ALTER TABLE `candidate_remark_shortlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_working_hours`
--
ALTER TABLE `candidate_working_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claims_types`
--
ALTER TABLE `claims_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `claims_types_claimstype_code_unique` (`claimstype_code`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_manager_id_foreign` (`manager_id`),
  ADD KEY `clients_team_leader_id_foreign` (`team_leader_id`),
  ADD KEY `clients_consultant_id_foreign` (`consultant_id`);

--
-- Indexes for table `client_departments`
--
ALTER TABLE `client_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_follow_ups`
--
ALTER TABLE `client_follow_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_supervisors`
--
ALTER TABLE `client_supervisors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_terms`
--
ALTER TABLE `client_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_terms_client_term_code_unique` (`client_term_code`);

--
-- Indexes for table `client_upload_files`
--
ALTER TABLE `client_upload_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`);

--
-- Indexes for table `dashboards`
--
ALTER TABLE `dashboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbsexes`
--
ALTER TABLE `dbsexes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dbsexes_dbsexes_code_unique` (`dbsexes_code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_code_unique` (`department_code`);

--
-- Indexes for table `deshboard_menus`
--
ALTER TABLE `deshboard_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deshboard_menus_menu_name_unique` (`menu_name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_designation_code_unique` (`designation_code`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_infos`
--
ALTER TABLE `employee_salary_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giros`
--
ALTER TABLE `giros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_candidate_data`
--
ALTER TABLE `import_candidate_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry_types`
--
ALTER TABLE `industry_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `industry_types_industry_code_unique` (`industry_code`);

--
-- Indexes for table `jobcategories`
--
ALTER TABLE `jobcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobs_job_title_unique` (`job_title`),
  ADD KEY `jobs_team_leader_id_foreign` (`team_leader_id`),
  ADD KEY `jobs_manager_id_foreign` (`manager_id`),
  ADD KEY `jobs_consultant_id_foreign` (`consultant_id`);

--
-- Indexes for table `jobtypes`
--
ALTER TABLE `jobtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobtypes_jobtype_code_unique` (`jobtype_code`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_team_leader_id_foreign` (`team_leader_id`),
  ADD KEY `job_applications_jobcreator_id_foreign` (`jobcreator_id`),
  ADD KEY `job_applications_job_ids_foreign` (`job_ids`);

--
-- Indexes for table `job_statuses`
--
ALTER TABLE `job_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_approveds`
--
ALTER TABLE `leave_approveds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_controls`
--
ALTER TABLE `leave_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_types_leavetype_code_unique` (`leavetype_code`);

--
-- Indexes for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marital_statuses_marital_statuses_code_unique` (`marital_statuses_code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passtypes`
--
ALTER TABLE `passtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passtypes_passtype_code_unique` (`passtype_code`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paybanks`
--
ALTER TABLE `paybanks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paybanks_paybank_code_unique` (`paybank_code`);

--
-- Indexes for table `paymodes`
--
ALTER TABLE `paymodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paymodes_paymode_code_unique` (`paymode_code`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personal_folders`
--
ALTER TABLE `personal_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `races_race_code_unique` (`race_code`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `religions_religion_code_unique` (`religion_code`);

--
-- Indexes for table `remarkstypes`
--
ALTER TABLE `remarkstypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remarkstypes_remarkstype_code_unique` (`remarkstype_code`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `temporary_imported_data`
--
ALTER TABLE `temporary_imported_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temporary_imported_data_assaign_to_foreign` (`assign_to`);

--
-- Indexes for table `time_sheets`
--
ALTER TABLE `time_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_sheet_entries`
--
ALTER TABLE `time_sheet_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_sheet_entries_time_sheet_id_foreign` (`time_sheet_id`);

--
-- Indexes for table `tnc_templates`
--
ALTER TABLE `tnc_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tnc_templates_tnc_template_code_unique` (`tnc_template_code`);

--
-- Indexes for table `uploadfiletypes`
--
ALTER TABLE `uploadfiletypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uploadfiletypes_uploadfiletype_code_unique` (`uploadfiletype_code`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `assign_clients`
--
ALTER TABLE `assign_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `assign_to_rcs`
--
ALTER TABLE `assign_to_rcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1317;

--
-- AUTO_INCREMENT for table `attendence_parents`
--
ALTER TABLE `attendence_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calanders`
--
ALTER TABLE `calanders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `candidate_families`
--
ALTER TABLE `candidate_families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate_file_imports`
--
ALTER TABLE `candidate_file_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_payrolls`
--
ALTER TABLE `candidate_payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidate_remarks`
--
ALTER TABLE `candidate_remarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `candidate_remark_interviews`
--
ALTER TABLE `candidate_remark_interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `candidate_remark_shortlists`
--
ALTER TABLE `candidate_remark_shortlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `candidate_working_hours`
--
ALTER TABLE `candidate_working_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `claims_types`
--
ALTER TABLE `claims_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `client_departments`
--
ALTER TABLE `client_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_follow_ups`
--
ALTER TABLE `client_follow_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `client_supervisors`
--
ALTER TABLE `client_supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_terms`
--
ALTER TABLE `client_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_upload_files`
--
ALTER TABLE `client_upload_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `dbsexes`
--
ALTER TABLE `dbsexes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deshboard_menus`
--
ALTER TABLE `deshboard_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `employee_salary_infos`
--
ALTER TABLE `employee_salary_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giros`
--
ALTER TABLE `giros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `import_candidate_data`
--
ALTER TABLE `import_candidate_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `industry_types`
--
ALTER TABLE `industry_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobcategories`
--
ALTER TABLE `jobcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobtypes`
--
ALTER TABLE `jobtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_statuses`
--
ALTER TABLE `job_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `leave_approveds`
--
ALTER TABLE `leave_approveds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_controls`
--
ALTER TABLE `leave_controls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passtypes`
--
ALTER TABLE `passtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paybanks`
--
ALTER TABLE `paybanks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paymodes`
--
ALTER TABLE `paymodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_folders`
--
ALTER TABLE `personal_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `races`
--
ALTER TABLE `races`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `remarkstypes`
--
ALTER TABLE `remarkstypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `temporary_imported_data`
--
ALTER TABLE `temporary_imported_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `time_sheets`
--
ALTER TABLE `time_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_sheet_entries`
--
ALTER TABLE `time_sheet_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tnc_templates`
--
ALTER TABLE `tnc_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `uploadfiletypes`
--
ALTER TABLE `uploadfiletypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_clients`
--
ALTER TABLE `assign_clients`
  ADD CONSTRAINT `assign_clients_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_consultant_id_foreign` FOREIGN KEY (`consultant_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `candidates_team_leader_id_foreign` FOREIGN KEY (`team_leader_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_consultant_id_foreign` FOREIGN KEY (`consultant_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `clients_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `clients_team_leader_id_foreign` FOREIGN KEY (`team_leader_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_consultant_id_foreign` FOREIGN KEY (`consultant_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `jobs_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `jobs_team_leader_id_foreign` FOREIGN KEY (`team_leader_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_job_ids_foreign` FOREIGN KEY (`job_ids`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `job_applications_jobcreator_id_foreign` FOREIGN KEY (`jobcreator_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `job_applications_team_leader_id_foreign` FOREIGN KEY (`team_leader_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temporary_imported_data`
--
ALTER TABLE `temporary_imported_data`
  ADD CONSTRAINT `temporary_imported_data_assaign_to_foreign` FOREIGN KEY (`assign_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `time_sheet_entries`
--
ALTER TABLE `time_sheet_entries`
  ADD CONSTRAINT `time_sheet_entries_time_sheet_id_foreign` FOREIGN KEY (`time_sheet_id`) REFERENCES `time_sheets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
