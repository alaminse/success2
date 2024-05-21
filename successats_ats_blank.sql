-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2024 at 01:13 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `successats_ats`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id` bigint UNSIGNED NOT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `teamleader_id` int DEFAULT NULL,
  `consultent_id` int DEFAULT NULL,
  `remark_id` int NOT NULL DEFAULT '0' COMMENT 'Previous Flowup Id',
  `status` tinyint NOT NULL DEFAULT '0',
  `assign_to` int DEFAULT NULL,
  `update_by` int DEFAULT NULL,
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
(293, 174, 120, 122, 126, 519, 0, NULL, NULL, '2024-05-18 09:20:58', '2024-05-18 09:20:58'),
(294, 175, 120, 122, 125, 520, 0, NULL, NULL, '2024-05-19 06:53:33', '2024-05-19 06:53:33'),
(295, 175, 120, 122, 125, 521, 0, NULL, NULL, '2024-05-19 07:54:19', '2024-05-19 07:54:19'),
(296, 174, 120, 122, 126, 522, 0, NULL, NULL, '2024-05-19 07:58:03', '2024-05-19 07:58:03'),
(297, 174, 120, 122, 126, 523, 0, NULL, NULL, '2024-05-19 08:17:55', '2024-05-19 08:17:55'),
(298, 174, 120, 122, 126, 524, 0, NULL, NULL, '2024-05-19 08:39:30', '2024-05-19 08:39:30'),
(299, 175, 120, 122, 125, 525, 0, NULL, NULL, '2024-05-19 08:39:44', '2024-05-19 08:39:44'),
(300, 174, 120, 122, 126, 526, 0, NULL, NULL, '2024-05-19 10:53:16', '2024-05-19 10:53:16'),
(301, 174, 120, 122, 126, 527, 0, NULL, NULL, '2024-05-19 11:00:11', '2024-05-19 11:00:11'),
(302, 177, 120, 122, 125, 528, 0, NULL, NULL, '2024-05-19 11:00:56', '2024-05-19 11:00:56'),
(303, 174, 120, 122, 126, 532, 0, NULL, NULL, '2024-05-19 13:54:42', '2024-05-19 13:54:42'),
(304, 171, 120, NULL, 134, 533, 0, NULL, NULL, '2024-05-20 07:54:56', '2024-05-20 07:54:56'),
(305, 171, 120, NULL, 134, 534, 0, NULL, NULL, '2024-05-20 08:43:10', '2024-05-20 08:43:10'),
(306, 171, 120, NULL, 134, 537, 0, NULL, NULL, '2024-05-20 10:37:59', '2024-05-20 10:37:59'),
(307, 171, 120, NULL, 134, 538, 0, NULL, NULL, '2024-05-20 10:47:21', '2024-05-20 10:47:21'),
(308, 174, 120, 122, 126, 539, 0, NULL, NULL, '2024-05-20 11:21:45', '2024-05-20 11:21:45'),
(309, 171, 120, NULL, 134, 540, 0, NULL, NULL, '2024-05-20 11:23:58', '2024-05-20 11:23:58'),
(310, 174, 120, 122, 126, 541, 0, NULL, NULL, '2024-05-20 11:30:27', '2024-05-20 11:30:27'),
(311, 174, 120, 122, 126, 542, 0, NULL, NULL, '2024-05-20 11:33:37', '2024-05-20 11:33:37'),
(312, 171, 120, NULL, 134, 543, 0, NULL, NULL, '2024-05-20 12:22:17', '2024-05-20 12:22:17'),
(313, 174, 120, 122, 126, 544, 0, NULL, NULL, '2024-05-20 14:43:50', '2024-05-20 14:43:50'),
(314, 175, 120, 122, 125, 546, 0, NULL, NULL, '2024-05-21 06:30:48', '2024-05-21 06:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `assign_clients`
--

CREATE TABLE `assign_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `candidate_remark_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_to_rcs`
--

CREATE TABLE `assign_to_rcs` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `rc_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` int NOT NULL,
  `date` date NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lunch_hour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_hour_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `normal_hour_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ot_hour_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ot_calculation` tinyint NOT NULL DEFAULT '0',
  `ot_edit` tinyint NOT NULL DEFAULT '0',
  `work` tinyint NOT NULL DEFAULT '0',
  `ph` tinyint NOT NULL DEFAULT '0',
  `ph_pay` tinyint NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8mb4_unicode_ci,
  `type_of_leave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claim_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_reimbursement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_of_reimbursement` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_parents`
--

CREATE TABLE `attendence_parents` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int NOT NULL,
  `company_id` int NOT NULL,
  `month_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isApproved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_no` int NOT NULL,
  `bank_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq_no` int NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calanders`
--

CREATE TABLE `calanders` (
  `id` bigint UNSIGNED NOT NULL,
  `manager_id` int DEFAULT NULL,
  `teamleader_id` int DEFAULT NULL,
  `consultant_id` int DEFAULT NULL,
  `candidate_remark_id` int DEFAULT NULL,
  `candidate_remark_shortlist_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `callbacks`
--

CREATE TABLE `callbacks` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `teamleader_id` int DEFAULT NULL,
  `consultant_id` int DEFAULT NULL,
  `candidate_remark_id` int DEFAULT NULL,
  `candidate_remark_shortlist_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `new_date` date NOT NULL,
  `time` time NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_outlet_id` int NOT NULL DEFAULT '0' COMMENT 'Link with outlet table',
  `candidate_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_home_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passtypes_id` int DEFAULT NULL COMMENT 'link to pass type table',
  `candidate_nric` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_birthdate` date DEFAULT NULL,
  `candidate_joindate` date DEFAULT NULL,
  `candidate_confirmationdate` date DEFAULT NULL,
  `candidate_tc_date` date DEFAULT NULL,
  `children_no` int DEFAULT NULL COMMENT 'general info end',
  `candidate_height` double(8,2) DEFAULT '0.00',
  `avatar` longtext COLLATE utf8mb4_unicode_ci,
  `candidate_weight` double(8,2) DEFAULT '0.00' COMMENT 'general info end',
  `candidate_type` int NOT NULL DEFAULT '0' COMMENT '0=Candidate, 1=Walk in candidate',
  `users_id` int DEFAULT NULL COMMENT 'link to user table',
  `leave_aprv1_users_id` int DEFAULT NULL,
  `leave_aprv2_users_id` int DEFAULT NULL,
  `leave_aprv3_users_id` int DEFAULT NULL,
  `claims_aprv1_users_id` int DEFAULT NULL,
  `claims_aprv2_id` int DEFAULT NULL,
  `claims_aprv3_users_id` int DEFAULT NULL,
  `candidate_n_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Skill info start',
  `candidate_o_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_a_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_diploma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_written` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_spocken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Skill info end',
  `paymodes_id` int DEFAULT NULL COMMENT 'link to paymode table',
  `candidate_bank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_bank_acc_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_bank_acc_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'candidate address start',
  `candidate_unit_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_street2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_unit_number2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_postal_code2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'candidate address end',
  `candidate_emr_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Emergency contact info start',
  `candidate_emr_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_emr_phone1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_emr_phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_emr_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_emr_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Emergency contact info end',
  `candidate_referee_name1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'referee info start',
  `candidate_referee_occupation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_year_know1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_contact1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_name2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_occupation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_year_know2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_contact2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_referee_present_employer` int NOT NULL DEFAULT '0',
  `candidate_referee_previous_employer` int NOT NULL DEFAULT '0' COMMENT 'referee info end',
  `candidate_dec_bankrupt` int NOT NULL DEFAULT '0' COMMENT 'declaration info start',
  `candidate_dec_bankrupt_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dec_physical` int NOT NULL DEFAULT '0',
  `candidate_dec_physical_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dec_lt_medical` int NOT NULL DEFAULT '0',
  `candidate_dec_lt_medical_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dec_law` int NOT NULL DEFAULT '0',
  `candidate_dec_law_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dec_warning` int NOT NULL DEFAULT '0',
  `candidate_dec_warning_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dec_applied` int NOT NULL DEFAULT '0',
  `candidate_dec_applied_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'declaration info end',
  `nationality_id` int DEFAULT NULL,
  `nationality_date_of_issue` date DEFAULT NULL,
  `races_id` int DEFAULT NULL COMMENT 'link to race table',
  `religions_id` int DEFAULT NULL COMMENT 'link to religion table',
  `dbsexes_id` int DEFAULT NULL COMMENT 'link to dbsex table',
  `marital_statuses_id` int DEFAULT NULL COMMENT 'link to marital status table',
  `clients_id` int DEFAULT NULL COMMENT 'link to client table',
  `jobs_id` int DEFAULT NULL COMMENT 'link to jobs table',
  `candidate_status` int NOT NULL DEFAULT '1',
  `candidate_isBlocked` int DEFAULT NULL,
  `candidate_isDeleted` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint UNSIGNED DEFAULT NULL,
  `consultant_id` bigint UNSIGNED DEFAULT NULL,
  `manager_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_families`
--

CREATE TABLE `candidate_families` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_file_imports`
--

CREATE TABLE `candidate_file_imports` (
  `id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_payrolls`
--

CREATE TABLE `candidate_payrolls` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int NOT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_fee_monthly` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_company` int NOT NULL,
  `invoice_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wica` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_center` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `sales_period` date DEFAULT NULL,
  `invoice_no` int DEFAULT NULL,
  `charge` int DEFAULT NULL,
  `close_by1` int DEFAULT NULL,
  `close_by2` int DEFAULT NULL,
  `close_by3` int DEFAULT NULL,
  `cut_off` tinyint(1) DEFAULT NULL,
  `recruitment_fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_fee_daily` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_no` int DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily_rate_night_shift` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_lead` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probation_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `guarantee_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contribute_cpf` tinyint(1) DEFAULT NULL,
  `close_rate1` int DEFAULT NULL,
  `close_rate2` int DEFAULT NULL,
  `close_rate3` int DEFAULT NULL,
  `payroll_remark` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remarks`
--

CREATE TABLE `candidate_remarks` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int NOT NULL,
  `remarkstype_id` int NOT NULL,
  `isNotice` tinyint(1) DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_notice_date` date DEFAULT NULL,
  `ar_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` int DEFAULT NULL,
  `client_company` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remark_interviews`
--

CREATE TABLE `candidate_remark_interviews` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_remark_id` int DEFAULT NULL,
  `interview_date` date DEFAULT NULL,
  `interview_time` time DEFAULT NULL,
  `interview_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_offer_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attend_interview` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `receive_job_offer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_remark_shortlists`
--

CREATE TABLE `candidate_remark_shortlists` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_remark_id` int DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `depertment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_rate` double DEFAULT NULL,
  `placement_recruitment_fee` double DEFAULT NULL,
  `admin_fee` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reminder_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` int DEFAULT NULL,
  `contact_signing_time` time DEFAULT NULL,
  `contact_signing_date` date DEFAULT NULL,
  `probition_period` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_day` date DEFAULT NULL,
  `email_notice_date` date DEFAULT NULL,
  `email_notice_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int DEFAULT '0',
  `resume_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_details` longtext COLLATE utf8mb4_unicode_ci,
  `isMain` int NOT NULL DEFAULT '0' COMMENT '1=main,0=onlist',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resume_text` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_working_hours`
--

CREATE TABLE `candidate_working_hours` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int NOT NULL,
  `timesheet_id` int NOT NULL,
  `schedul_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedul_day` int NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `claims_types`
--

CREATE TABLE `claims_types` (
  `id` bigint UNSIGNED NOT NULL,
  `claimstype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimstype_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimstype_maxamt` double(8,2) NOT NULL DEFAULT '0.00',
  `claimstype_seqno` int DEFAULT NULL,
  `claimstype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'company name',
  `industry_types_id` int DEFAULT NULL COMMENT 'link to industry_types table',
  `client_attention_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_attention_designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_attention_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_unit_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees_id` int DEFAULT NULL COMMENT 'sales person employee id, link to employee table',
  `users_id` int DEFAULT NULL COMMENT 'sales person user id, link to user table',
  `payroll_employees_id` int DEFAULT NULL COMMENT 'payroll manager/incharge employee id, link to employee table',
  `payroll_users_id` int DEFAULT NULL COMMENT 'payroll manager/incharge user id, link to user table',
  `tnc_templates_id` int DEFAULT NULL COMMENT 'link to tnc_templates table',
  `tnc_renewal_date` date DEFAULT NULL,
  `client_terms_id` int DEFAULT NULL COMMENT 'link to client_terms table',
  `client_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clients_seqno` int DEFAULT NULL,
  `clients_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manager_id` bigint UNSIGNED DEFAULT NULL,
  `team_leader_id` bigint UNSIGNED DEFAULT NULL,
  `consultant_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_departments`
--

CREATE TABLE `client_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_follow_ups`
--

CREATE TABLE `client_follow_ups` (
  `id` bigint UNSIGNED NOT NULL,
  `clients_id` int DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_supervisors`
--

CREATE TABLE `client_supervisors` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `defination` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_terms`
--

CREATE TABLE `client_terms` (
  `id` bigint UNSIGNED NOT NULL,
  `client_term_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_term_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_term_seqno` int DEFAULT NULL,
  `client_term_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `client_id` int NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type_id` int NOT NULL,
  `file_type_for` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` int NOT NULL COMMENT 'from nationality table',
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_percent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark_time` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_code` int NOT NULL,
  `alpha_2_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha_3_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_status` int NOT NULL DEFAULT '1',
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
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `teamleader_id` int DEFAULT NULL,
  `consultent_id` int DEFAULT NULL,
  `remark_id` int NOT NULL DEFAULT '0' COMMENT 'Previous Flowup Id',
  `move_time` datetime DEFAULT NULL,
  `follow_day` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `insert_by` int DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `insert_date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `callback` int NOT NULL DEFAULT '0',
  `client_company` int DEFAULT NULL,
  `candidate_remark_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dbsexes`
--

CREATE TABLE `dbsexes` (
  `id` bigint UNSIGNED NOT NULL,
  `dbsexes_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dbsexes_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dbsexes_seqno` int DEFAULT NULL,
  `dbsexes_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `department_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_seqno` int DEFAULT NULL,
  `department_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `menu_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_perent` int DEFAULT NULL,
  `menu_short` int DEFAULT NULL,
  `userRole_id` int DEFAULT NULL,
  `menu_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `exception` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `designation_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_seqno` int DEFAULT NULL,
  `designation_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `employee_outlet_id` int NOT NULL DEFAULT '1' COMMENT 'Link with outlet table',
  `employee_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passtypes_id` int DEFAULT NULL COMMENT 'link to pass type table',
  `employee_nric` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_birthdate` date DEFAULT NULL,
  `employee_joindate` date DEFAULT NULL,
  `employee_confirmationdate` date DEFAULT NULL,
  `employee_prdate` date DEFAULT NULL,
  `employee_resigndate` date DEFAULT NULL,
  `employee_resignreason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_numberofchildren` int DEFAULT NULL,
  `users_id` int DEFAULT NULL COMMENT 'link to user table',
  `roles_id` int DEFAULT '1',
  `manager_users_id` int DEFAULT NULL,
  `team_leader_users_id` int DEFAULT NULL,
  `employee_shrc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'only for payroll user-roll',
  `employee_defination` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_aprv1_users_id` int DEFAULT NULL,
  `leave_aprv2_users_id` int DEFAULT NULL,
  `leave_aprv3_users_id` int DEFAULT NULL,
  `claims_aprv1_users_id` int DEFAULT NULL,
  `claims_aprv2_id` int DEFAULT NULL,
  `claims_aprv3_users_id` int DEFAULT NULL,
  `is_payroll_enable` int NOT NULL DEFAULT '0' COMMENT '1=salary entry enable, 0=salary entry disable',
  `is_cpf_enable` int NOT NULL DEFAULT '0',
  `employee_isovertime` int NOT NULL DEFAULT '0',
  `paymodes_id` int DEFAULT NULL COMMENT 'link to paymode table',
  `employee_bank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_bank_acc_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_bank_acc_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'employee address start',
  `employee_unit_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_street2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_unit_number2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_postal_code2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'employee address end',
  `employee_emr_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Emergency contact info start',
  `employee_emr_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_emr_phone1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_emr_phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_emr_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_emr_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Emergency contact info end',
  `departments_id` int DEFAULT NULL COMMENT 'link to depertment table',
  `designations_id` int DEFAULT NULL COMMENT 'link to designation table',
  `employee_work_time_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_work_time_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_probation` int DEFAULT NULL,
  `employee_extentionprobation` int DEFAULT NULL,
  `employee_fw_permit_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Foreign Worker info Start',
  `employee_fw_application_date` date DEFAULT NULL,
  `employee_fw_issue_date` date DEFAULT NULL,
  `employee_fw_arrival_date` date DEFAULT NULL,
  `employee_fw_renewal_date` date DEFAULT NULL,
  `employee_fw_levy_amount` double(8,2) DEFAULT '0.00' COMMENT 'Foreign Worker info end',
  `races_id` int DEFAULT NULL COMMENT 'link to race table',
  `religions_id` int DEFAULT NULL COMMENT 'link to religion table',
  `dbsexes_id` int DEFAULT NULL COMMENT 'link to dbsex table',
  `marital_statuses_id` int DEFAULT NULL COMMENT 'link to marital status table',
  `clients_id` int DEFAULT NULL COMMENT 'link to client table',
  `employee_status` int NOT NULL DEFAULT '1',
  `employee_isDeleted` int NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_avater` longtext COLLATE utf8mb4_unicode_ci,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_table_id` int NOT NULL DEFAULT '0',
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_outlet_id`, `employee_code`, `employee_name`, `employee_phone`, `employee_email`, `passtypes_id`, `employee_nric`, `employee_mobile`, `employee_tel`, `employee_birthdate`, `employee_joindate`, `employee_confirmationdate`, `employee_prdate`, `employee_resigndate`, `employee_resignreason`, `employee_numberofchildren`, `users_id`, `roles_id`, `manager_users_id`, `team_leader_users_id`, `employee_shrc`, `employee_defination`, `leave_aprv1_users_id`, `leave_aprv2_users_id`, `leave_aprv3_users_id`, `claims_aprv1_users_id`, `claims_aprv2_id`, `claims_aprv3_users_id`, `is_payroll_enable`, `is_cpf_enable`, `employee_isovertime`, `paymodes_id`, `employee_bank`, `employee_bank_acc_no`, `employee_bank_acc_title`, `employee_street`, `employee_unit_number`, `employee_postal_code`, `employee_street2`, `employee_unit_number2`, `employee_postal_code2`, `employee_emr_contact`, `employee_emr_relation`, `employee_emr_phone1`, `employee_emr_phone2`, `employee_emr_address`, `employee_emr_remarks`, `departments_id`, `designations_id`, `employee_work_time_start`, `employee_work_time_end`, `employee_probation`, `employee_extentionprobation`, `employee_fw_permit_number`, `employee_fw_application_date`, `employee_fw_issue_date`, `employee_fw_arrival_date`, `employee_fw_renewal_date`, `employee_fw_levy_amount`, `races_id`, `religions_id`, `dbsexes_id`, `marital_statuses_id`, `clients_id`, `employee_status`, `employee_isDeleted`, `created_by`, `modify_by`, `created_at`, `updated_at`, `employee_avater`, `active_status`, `user_table_id`, `reg_no`) VALUES
(1, 2, 'AD', 'Digipixel Development', '+6512345678', 'admin@digipixel.sg', 2, 'G3289769Q', NULL, NULL, '2024-01-28', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, 1, 3, NULL, 1, 0, 1, 1, '2024-01-28 06:37:55', '2024-02-01 00:26:57', NULL, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_infos`
--

CREATE TABLE `employee_salary_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `employees_id` int NOT NULL,
  `date` date NOT NULL,
  `salary_amount` double(8,2) NOT NULL,
  `no_of_working_day` int DEFAULT NULL,
  `hourly_salary_rate` double(8,2) DEFAULT NULL,
  `hourly_overtime_rate` double(8,2) DEFAULT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giros`
--

CREATE TABLE `giros` (
  `id` bigint UNSIGNED NOT NULL,
  `giro_no` int NOT NULL,
  `bank_id` int NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_candidate_data`
--

CREATE TABLE `import_candidate_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `resume_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industry_types`
--

CREATE TABLE `industry_types` (
  `id` bigint UNSIGNED NOT NULL,
  `industry_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry_seqno` int DEFAULT NULL,
  `industry_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `jobcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobcategory_parent` int DEFAULT NULL,
  `jobcategory_seqno` int DEFAULT NULL,
  `jobcategory_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_id` int DEFAULT NULL COMMENT 'get id from job category table',
  `job_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `job_status` tinyint(1) NOT NULL DEFAULT '1',
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_owner_id` int DEFAULT NULL COMMENT 'get id from user table',
  `client_id` int NOT NULL COMMENT 'get id from client table',
  `person_incharge` int DEFAULT NULL COMMENT 'get id from user table',
  `job_type_id` int DEFAULT NULL COMMENT 'get id from job type table',
  `short_desc` longtext COLLATE utf8mb4_unicode_ci,
  `job_added_date` date DEFAULT NULL,
  `unit_no` int DEFAULT NULL,
  `display_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint UNSIGNED DEFAULT NULL,
  `manager_id` bigint UNSIGNED DEFAULT NULL,
  `consultant_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobtypes`
--

CREATE TABLE `jobtypes` (
  `id` bigint UNSIGNED NOT NULL,
  `jobtype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobtype_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobtype_seqno` int DEFAULT NULL,
  `jobtype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` int DEFAULT NULL,
  `capta_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_leader_id` bigint UNSIGNED DEFAULT NULL,
  `jobcreator_id` bigint UNSIGNED DEFAULT NULL,
  `job_ids` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint UNSIGNED NOT NULL,
  `leave_approveds_id` int DEFAULT NULL COMMENT 'link to leave_approveds table',
  `employees_id` int DEFAULT NULL COMMENT 'link to Employee/Candidate table',
  `leave_types_id` int DEFAULT NULL,
  `leave_duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_datefrom` date DEFAULT NULL,
  `leave_dateto` date DEFAULT NULL,
  `leave_total_day` double(8,2) NOT NULL DEFAULT '0.00',
  `leave_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_status` int DEFAULT '0',
  `leave_empl_type` int DEFAULT NULL COMMENT '0-Candidate,1-employee',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `leave_file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `id` bigint UNSIGNED NOT NULL,
  `leaves_id` int NOT NULL,
  `level_approve_date` timestamp NULL DEFAULT NULL,
  `leave_approveds_Status` int DEFAULT NULL COMMENT '0-Rejected,1-Approved',
  `supervisor_employees_id` int DEFAULT NULL,
  `extraNote` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_controls`
--

CREATE TABLE `leave_controls` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint UNSIGNED NOT NULL,
  `leavetype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leavetype_block` int DEFAULT NULL,
  `leavetype_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leavetype_default` int DEFAULT NULL,
  `leavetype_bringover` int DEFAULT NULL,
  `leavetype_custom_field` int DEFAULT NULL,
  `leavetype_seqno` int DEFAULT NULL,
  `leavetype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `marital_statuses_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_statuses_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_statuses_seqno` int DEFAULT NULL,
  `marital_statuses_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(270, '2024_05_18_140912_create_notifications_table', 43),
(272, '2024_05_18_140911_create_callbacks_table', 44),
(279, '2024_05_19_191208_add_time_date_to_calanders', 45),
(281, '2024_05_20_144042_create_notifications_table', 46),
(282, '2024_05_20_164236_add_candidate_remark_id_to_dashboareds', 47);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 100),
(4, 'App\\Models\\User', 101),
(4, 'App\\Models\\User', 102),
(11, 'App\\Models\\User', 103),
(11, 'App\\Models\\User', 104),
(11, 'App\\Models\\User', 105),
(11, 'App\\Models\\User', 106),
(8, 'App\\Models\\User', 107),
(8, 'App\\Models\\User', 108),
(7, 'App\\Models\\User', 109),
(8, 'App\\Models\\User', 110),
(11, 'App\\Models\\User', 112),
(8, 'App\\Models\\User', 113),
(8, 'App\\Models\\User', 114),
(8, 'App\\Models\\User', 115),
(1, 'App\\Models\\User', 116);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint UNSIGNED NOT NULL,
  `nationality_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seq_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint UNSIGNED NOT NULL,
  `outlet_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outlet_tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_gstno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_gstpercent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_license` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlet_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countries_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `passtype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passtype_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passtype_seqno` int DEFAULT NULL,
  `passtype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paybanks`
--

CREATE TABLE `paybanks` (
  `id` bigint UNSIGNED NOT NULL,
  `paybank_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paybank_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paybank_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paybank_swift` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paybank_seqno` int DEFAULT NULL,
  `paybank_status` int NOT NULL DEFAULT '1',
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
  `id` bigint UNSIGNED NOT NULL,
  `paymode_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymode_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymode_seqno` int DEFAULT NULL,
  `paymode_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE `races` (
  `id` bigint UNSIGNED NOT NULL,
  `race_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_seqno` int DEFAULT NULL,
  `race_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `religion_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion_seqno` int DEFAULT NULL,
  `religion_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `remarkstype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarkstype_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarkstype_seqno` int DEFAULT NULL,
  `remarkstype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` int NOT NULL DEFAULT '0'
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
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(67, 4),
(68, 4),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(122, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4),
(131, 4),
(132, 4),
(133, 4),
(134, 4),
(135, 4),
(136, 4),
(137, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(145, 4),
(146, 4),
(147, 4),
(148, 4),
(149, 4),
(150, 4),
(151, 4),
(152, 4),
(153, 4),
(154, 4),
(155, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(163, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 4),
(173, 4),
(174, 4),
(175, 4),
(176, 4),
(177, 4),
(178, 4),
(179, 4),
(180, 4),
(181, 4),
(182, 4),
(183, 4),
(184, 4),
(185, 4),
(186, 4),
(187, 4),
(188, 4),
(189, 4),
(190, 4),
(191, 4),
(192, 4),
(193, 4),
(194, 4),
(195, 4),
(196, 4),
(197, 4),
(198, 4),
(199, 4),
(200, 4),
(201, 4),
(202, 4),
(203, 4),
(204, 4),
(205, 4),
(206, 4),
(207, 4),
(208, 4),
(209, 4),
(210, 4),
(211, 4),
(212, 4),
(213, 4),
(214, 4),
(215, 4),
(216, 4),
(217, 4),
(218, 4),
(219, 4),
(220, 4),
(221, 4),
(222, 4),
(223, 4),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(14, 8),
(15, 8),
(16, 8),
(17, 8),
(18, 8),
(19, 8),
(20, 8),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(51, 8),
(52, 8),
(53, 8),
(54, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 8),
(66, 8),
(67, 8),
(68, 8),
(69, 8),
(70, 8),
(71, 8),
(72, 8),
(73, 8),
(74, 8),
(75, 8),
(76, 8),
(77, 8),
(78, 8),
(79, 8),
(80, 8),
(81, 8),
(82, 8),
(83, 8),
(84, 8),
(85, 8),
(86, 8),
(87, 8),
(88, 8),
(89, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(94, 8),
(95, 8),
(96, 8),
(97, 8),
(98, 8),
(99, 8),
(100, 8),
(101, 8),
(102, 8),
(103, 8),
(104, 8),
(105, 8),
(106, 8),
(107, 8),
(108, 8),
(109, 8),
(110, 8),
(111, 8),
(112, 8),
(113, 8),
(114, 8),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 8),
(121, 8),
(122, 8),
(123, 8),
(124, 8),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 8),
(130, 8),
(131, 8),
(132, 8),
(133, 8),
(134, 8),
(135, 8),
(136, 8),
(137, 8),
(138, 8),
(139, 8),
(140, 8),
(141, 8),
(142, 8),
(143, 8),
(144, 8),
(145, 8),
(146, 8),
(147, 8),
(148, 8),
(149, 8),
(150, 8),
(151, 8),
(152, 8),
(153, 8),
(154, 8),
(155, 8),
(156, 8),
(157, 8),
(158, 8),
(159, 8),
(160, 8),
(161, 8),
(162, 8),
(163, 8),
(164, 8),
(165, 8),
(166, 8),
(167, 8),
(168, 8),
(169, 8),
(170, 8),
(171, 8),
(172, 8),
(173, 8),
(174, 8),
(175, 8),
(176, 8),
(177, 8),
(178, 8),
(179, 8),
(180, 8),
(181, 8),
(182, 8),
(183, 8),
(184, 8),
(185, 8),
(186, 8),
(187, 8),
(188, 8),
(189, 8),
(190, 8),
(191, 8),
(192, 8),
(193, 8),
(194, 8),
(195, 8),
(196, 8),
(197, 8),
(198, 8),
(199, 8),
(200, 8),
(201, 8),
(202, 8),
(203, 8),
(204, 8),
(205, 8),
(206, 8),
(207, 8),
(208, 8),
(209, 8),
(210, 8),
(211, 8),
(212, 8),
(213, 8),
(214, 8),
(215, 8),
(216, 8),
(217, 8),
(218, 8),
(219, 8),
(220, 8),
(221, 8),
(222, 8),
(223, 8),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(16, 11),
(17, 11),
(18, 11),
(19, 11),
(20, 11),
(21, 11),
(22, 11),
(23, 11),
(24, 11),
(25, 11),
(26, 11),
(27, 11),
(28, 11),
(29, 11),
(30, 11),
(31, 11),
(32, 11),
(33, 11),
(34, 11),
(35, 11),
(36, 11),
(37, 11),
(38, 11),
(39, 11),
(40, 11),
(41, 11),
(42, 11),
(43, 11),
(44, 11),
(45, 11),
(46, 11),
(47, 11),
(48, 11),
(49, 11),
(50, 11),
(51, 11),
(52, 11),
(53, 11),
(54, 11),
(55, 11),
(56, 11),
(57, 11),
(58, 11),
(59, 11),
(60, 11),
(61, 11),
(62, 11),
(63, 11),
(64, 11),
(65, 11),
(66, 11),
(67, 11),
(68, 11),
(69, 11),
(70, 11),
(71, 11),
(72, 11),
(73, 11),
(74, 11),
(75, 11),
(76, 11),
(77, 11),
(78, 11),
(79, 11),
(80, 11),
(81, 11),
(82, 11),
(83, 11),
(84, 11),
(85, 11),
(86, 11),
(87, 11),
(88, 11),
(89, 11),
(90, 11),
(91, 11),
(92, 11),
(93, 11),
(94, 11),
(95, 11),
(96, 11),
(97, 11),
(98, 11),
(99, 11),
(100, 11),
(101, 11),
(102, 11),
(103, 11),
(104, 11),
(105, 11),
(106, 11),
(107, 11),
(108, 11),
(109, 11),
(110, 11),
(111, 11),
(112, 11),
(113, 11),
(114, 11),
(115, 11),
(116, 11),
(117, 11),
(118, 11),
(119, 11),
(120, 11),
(121, 11),
(122, 11),
(123, 11),
(124, 11),
(125, 11),
(126, 11),
(127, 11),
(128, 11),
(129, 11),
(130, 11),
(131, 11),
(132, 11),
(133, 11),
(134, 11),
(135, 11),
(136, 11),
(137, 11),
(138, 11),
(139, 11),
(140, 11),
(141, 11),
(142, 11),
(143, 11),
(144, 11),
(145, 11),
(146, 11),
(147, 11),
(148, 11),
(149, 11),
(150, 11),
(151, 11),
(152, 11),
(153, 11),
(154, 11),
(155, 11),
(156, 11),
(157, 11),
(158, 11),
(159, 11),
(160, 11),
(161, 11),
(162, 11),
(163, 11),
(164, 11),
(165, 11),
(166, 11),
(167, 11),
(168, 11),
(169, 11),
(170, 11),
(171, 11),
(172, 11),
(173, 11),
(174, 11),
(175, 11),
(176, 11),
(177, 11),
(178, 11),
(179, 11),
(180, 11),
(181, 11),
(182, 11),
(183, 11),
(184, 11),
(185, 11),
(186, 11),
(187, 11),
(188, 11),
(189, 11),
(190, 11),
(191, 11),
(192, 11),
(193, 11),
(194, 11),
(195, 11),
(196, 11),
(197, 11),
(198, 11),
(199, 11),
(200, 11),
(201, 11),
(202, 11),
(203, 11),
(204, 11),
(205, 11),
(206, 11),
(207, 11),
(208, 11),
(209, 11),
(210, 11),
(211, 11),
(212, 11),
(213, 11),
(214, 11),
(215, 11),
(216, 11),
(217, 11),
(218, 11),
(219, 11),
(220, 11),
(221, 11),
(222, 11),
(223, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(5, 12),
(6, 12),
(7, 12),
(8, 12),
(9, 12),
(10, 12),
(11, 12),
(12, 12),
(13, 12),
(14, 12),
(15, 12),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(21, 12),
(22, 12),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 12),
(29, 12),
(30, 12),
(31, 12),
(32, 12),
(33, 12),
(34, 12),
(35, 12),
(36, 12),
(37, 12),
(38, 12),
(39, 12),
(40, 12),
(41, 12),
(42, 12),
(43, 12),
(44, 12),
(45, 12),
(46, 12),
(47, 12),
(48, 12),
(49, 12),
(50, 12),
(51, 12),
(52, 12),
(53, 12),
(54, 12),
(55, 12),
(56, 12),
(57, 12),
(58, 12),
(59, 12),
(60, 12),
(61, 12),
(62, 12),
(63, 12),
(64, 12),
(65, 12),
(66, 12),
(67, 12),
(68, 12),
(69, 12),
(70, 12),
(71, 12),
(72, 12),
(73, 12),
(74, 12),
(75, 12),
(76, 12),
(77, 12),
(78, 12),
(79, 12),
(80, 12),
(81, 12),
(82, 12),
(83, 12),
(84, 12),
(85, 12),
(86, 12),
(87, 12),
(88, 12),
(89, 12),
(90, 12),
(91, 12),
(92, 12),
(93, 12),
(94, 12),
(95, 12),
(96, 12),
(97, 12),
(98, 12),
(99, 12),
(100, 12),
(101, 12),
(102, 12),
(103, 12),
(104, 12),
(105, 12),
(106, 12),
(107, 12),
(108, 12),
(109, 12),
(110, 12),
(111, 12),
(112, 12),
(113, 12),
(114, 12),
(115, 12),
(116, 12),
(117, 12),
(118, 12),
(119, 12),
(120, 12),
(121, 12),
(122, 12),
(123, 12),
(124, 12),
(125, 12),
(126, 12),
(127, 12),
(128, 12),
(129, 12),
(130, 12),
(131, 12),
(132, 12),
(133, 12),
(134, 12),
(135, 12),
(136, 12),
(137, 12),
(138, 12),
(139, 12),
(140, 12),
(141, 12),
(142, 12),
(143, 12),
(144, 12),
(145, 12),
(146, 12),
(147, 12),
(148, 12),
(149, 12),
(150, 12),
(151, 12),
(152, 12),
(153, 12),
(154, 12),
(155, 12),
(156, 12),
(157, 12),
(158, 12),
(159, 12),
(160, 12),
(161, 12),
(162, 12),
(163, 12),
(164, 12),
(165, 12),
(166, 12),
(167, 12),
(168, 12),
(169, 12),
(170, 12),
(171, 12),
(172, 12),
(173, 12),
(174, 12),
(175, 12),
(176, 12),
(177, 12),
(178, 12),
(179, 12),
(180, 12),
(181, 12),
(182, 12),
(183, 12),
(184, 12),
(185, 12),
(186, 12),
(187, 12),
(188, 12),
(189, 12),
(190, 12),
(191, 12),
(192, 12),
(193, 12),
(194, 12),
(195, 12),
(196, 12),
(197, 12),
(198, 12),
(199, 12),
(200, 12),
(201, 12),
(202, 12),
(203, 12),
(204, 12),
(205, 12),
(206, 12),
(207, 12),
(208, 12),
(209, 12),
(210, 12),
(211, 12),
(212, 12),
(213, 12),
(214, 12),
(215, 12),
(216, 12),
(217, 12),
(218, 12),
(219, 12),
(220, 12),
(221, 12),
(222, 12),
(223, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(5, 13),
(6, 13),
(7, 13),
(8, 13),
(9, 13),
(10, 13),
(11, 13),
(12, 13),
(13, 13),
(14, 13),
(15, 13),
(16, 13),
(17, 13),
(18, 13),
(19, 13),
(20, 13),
(21, 13),
(22, 13),
(23, 13),
(24, 13),
(25, 13),
(26, 13),
(27, 13),
(28, 13),
(29, 13),
(30, 13),
(31, 13),
(32, 13),
(33, 13),
(34, 13),
(35, 13),
(36, 13),
(37, 13),
(38, 13),
(39, 13),
(40, 13),
(41, 13),
(42, 13),
(43, 13),
(44, 13),
(45, 13),
(46, 13),
(47, 13),
(48, 13),
(49, 13),
(50, 13),
(51, 13),
(52, 13),
(53, 13),
(54, 13),
(55, 13),
(56, 13),
(57, 13),
(58, 13),
(59, 13),
(60, 13),
(61, 13),
(62, 13),
(63, 13),
(64, 13),
(65, 13),
(66, 13),
(67, 13),
(68, 13),
(69, 13),
(70, 13),
(71, 13),
(72, 13),
(73, 13),
(74, 13),
(75, 13),
(76, 13),
(77, 13),
(78, 13),
(79, 13),
(80, 13),
(81, 13),
(82, 13),
(83, 13),
(84, 13),
(85, 13),
(86, 13),
(87, 13),
(88, 13),
(89, 13),
(90, 13),
(91, 13),
(92, 13),
(93, 13),
(94, 13),
(95, 13),
(96, 13),
(97, 13),
(98, 13),
(99, 13),
(100, 13),
(101, 13),
(102, 13),
(103, 13),
(104, 13),
(105, 13),
(106, 13),
(107, 13),
(108, 13),
(109, 13),
(110, 13),
(111, 13),
(112, 13),
(113, 13),
(114, 13),
(115, 13),
(116, 13),
(117, 13),
(118, 13),
(119, 13),
(120, 13),
(121, 13),
(122, 13),
(123, 13),
(124, 13),
(125, 13),
(126, 13),
(127, 13),
(128, 13),
(129, 13),
(130, 13),
(131, 13),
(132, 13),
(133, 13),
(134, 13),
(135, 13),
(136, 13),
(137, 13),
(138, 13),
(139, 13),
(140, 13),
(141, 13),
(142, 13),
(143, 13),
(144, 13),
(145, 13),
(146, 13),
(147, 13),
(148, 13),
(149, 13),
(150, 13),
(151, 13),
(152, 13),
(153, 13),
(154, 13),
(155, 13),
(156, 13),
(157, 13),
(158, 13),
(159, 13),
(160, 13),
(161, 13),
(162, 13),
(163, 13),
(164, 13),
(165, 13),
(166, 13),
(167, 13),
(168, 13),
(169, 13),
(170, 13),
(171, 13),
(172, 13),
(173, 13),
(174, 13),
(175, 13),
(176, 13),
(177, 13),
(178, 13),
(179, 13),
(180, 13),
(181, 13),
(182, 13),
(183, 13),
(184, 13),
(185, 13),
(186, 13),
(187, 13),
(188, 13),
(189, 13),
(190, 13),
(191, 13),
(192, 13),
(193, 13),
(194, 13),
(195, 13),
(196, 13),
(197, 13),
(198, 13),
(199, 13),
(200, 13),
(201, 13),
(202, 13),
(203, 13),
(204, 13),
(205, 13),
(206, 13),
(207, 13),
(208, 13),
(209, 13),
(210, 13),
(211, 13),
(212, 13),
(213, 13),
(214, 13),
(215, 13),
(216, 13),
(217, 13),
(218, 13),
(219, 13),
(220, 13),
(221, 13),
(222, 13),
(223, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(5, 14),
(6, 14),
(7, 14),
(8, 14),
(9, 14),
(10, 14),
(11, 14),
(12, 14),
(13, 14),
(14, 14),
(15, 14),
(16, 14),
(17, 14),
(18, 14),
(19, 14),
(20, 14),
(21, 14),
(22, 14),
(23, 14),
(24, 14),
(25, 14),
(26, 14),
(27, 14),
(28, 14),
(29, 14),
(30, 14),
(31, 14),
(32, 14),
(33, 14),
(34, 14),
(35, 14),
(36, 14),
(37, 14),
(38, 14),
(39, 14),
(40, 14),
(41, 14),
(42, 14),
(43, 14),
(44, 14),
(45, 14),
(46, 14),
(47, 14),
(48, 14),
(49, 14),
(50, 14),
(51, 14),
(52, 14),
(53, 14),
(54, 14),
(55, 14),
(56, 14),
(57, 14),
(58, 14),
(59, 14),
(60, 14),
(61, 14),
(62, 14),
(63, 14),
(64, 14),
(65, 14),
(66, 14),
(67, 14),
(68, 14),
(69, 14),
(70, 14),
(71, 14),
(72, 14),
(73, 14),
(74, 14),
(75, 14),
(76, 14),
(77, 14),
(78, 14),
(79, 14),
(80, 14),
(81, 14),
(82, 14),
(83, 14),
(84, 14),
(85, 14),
(86, 14),
(87, 14),
(88, 14),
(89, 14),
(90, 14),
(91, 14),
(92, 14),
(93, 14),
(94, 14),
(95, 14),
(96, 14),
(97, 14),
(98, 14),
(99, 14),
(100, 14),
(101, 14),
(102, 14),
(103, 14),
(104, 14),
(105, 14),
(106, 14),
(107, 14),
(108, 14),
(109, 14),
(110, 14),
(111, 14),
(112, 14),
(113, 14),
(114, 14),
(115, 14),
(116, 14),
(117, 14),
(118, 14),
(119, 14),
(120, 14),
(121, 14),
(122, 14),
(123, 14),
(124, 14),
(125, 14),
(126, 14),
(127, 14),
(128, 14),
(129, 14),
(130, 14),
(131, 14),
(132, 14),
(133, 14),
(134, 14),
(135, 14),
(136, 14),
(137, 14),
(138, 14),
(139, 14),
(140, 14),
(141, 14),
(142, 14),
(143, 14),
(144, 14),
(145, 14),
(146, 14),
(147, 14),
(148, 14),
(149, 14),
(150, 14),
(151, 14),
(152, 14),
(153, 14),
(154, 14),
(155, 14),
(156, 14),
(157, 14),
(158, 14),
(159, 14),
(160, 14),
(161, 14),
(162, 14),
(163, 14),
(164, 14),
(165, 14),
(166, 14),
(167, 14),
(168, 14),
(169, 14),
(170, 14),
(171, 14),
(172, 14),
(173, 14),
(174, 14),
(175, 14),
(176, 14),
(177, 14),
(178, 14),
(179, 14),
(180, 14),
(181, 14),
(182, 14),
(183, 14),
(184, 14),
(185, 14),
(186, 14),
(187, 14),
(188, 14),
(189, 14),
(190, 14),
(191, 14),
(192, 14),
(193, 14),
(194, 14),
(195, 14),
(196, 14),
(197, 14),
(198, 14),
(199, 14),
(200, 14),
(201, 14),
(202, 14),
(203, 14),
(204, 14),
(205, 14),
(206, 14),
(207, 14),
(208, 14),
(209, 14),
(210, 14),
(211, 14),
(212, 14),
(213, 14),
(214, 14),
(215, 14),
(216, 14),
(217, 14),
(218, 14),
(219, 14),
(220, 14),
(221, 14),
(222, 14),
(223, 14);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_imported_data`
--

CREATE TABLE `temporary_imported_data` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `candidate_id` int DEFAULT NULL,
  `resume_text` text COLLATE utf8mb4_unicode_ci,
  `assign_to` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_sheets`
--

CREATE TABLE `time_sheets` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `print` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `entities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
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
  `id` bigint UNSIGNED NOT NULL,
  `time_sheet_id` bigint UNSIGNED NOT NULL,
  `day` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `lunch_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isWork` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ot_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `allowance` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isNextDay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tnc_templates`
--

CREATE TABLE `tnc_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `tnc_template_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tnc_template_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tnc_template_isDefault` int NOT NULL DEFAULT '0',
  `tnc_template_file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tnc_template_seqno` int DEFAULT NULL,
  `tnc_template_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploadfiletypes`
--

CREATE TABLE `uploadfiletypes` (
  `id` bigint UNSIGNED NOT NULL,
  `uploadfiletype_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfiletype_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfiletype_seqno` int DEFAULT NULL,
  `uploadfiletype_for` int NOT NULL DEFAULT '0',
  `uploadfiletype_status` int NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `modify_by` int DEFAULT NULL,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `parent_id` int NOT NULL DEFAULT '0',
  `photo_link` text COLLATE utf8mb4_unicode_ci,
  `google2fa_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `parent_id`, `photo_link`, `google2fa_secret`, `remember_token`, `created_at`, `updated_at`, `active_status`) VALUES
(1, 'Administrator', 'admin@digipixel.sg', NULL, '$2y$10$8kgfYyrCuAD9QPKLuCKuMOorPVCAWROHXkJ8gBJMU2ZjM.REdz7ey', 1, 0, NULL, 'IINEDPRGEQJQBABB', NULL, '2023-12-27 03:15:10', '2024-01-30 23:59:56', 1);

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
-- Indexes for table `callbacks`
--
ALTER TABLE `callbacks`
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
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `assign_clients`
--
ALTER TABLE `assign_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_to_rcs`
--
ALTER TABLE `assign_to_rcs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_parents`
--
ALTER TABLE `attendence_parents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calanders`
--
ALTER TABLE `calanders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callbacks`
--
ALTER TABLE `callbacks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_families`
--
ALTER TABLE `candidate_families`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_file_imports`
--
ALTER TABLE `candidate_file_imports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_payrolls`
--
ALTER TABLE `candidate_payrolls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_remarks`
--
ALTER TABLE `candidate_remarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_remark_interviews`
--
ALTER TABLE `candidate_remark_interviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_remark_shortlists`
--
ALTER TABLE `candidate_remark_shortlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_working_hours`
--
ALTER TABLE `candidate_working_hours`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claims_types`
--
ALTER TABLE `claims_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `client_departments`
--
ALTER TABLE `client_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_follow_ups`
--
ALTER TABLE `client_follow_ups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_supervisors`
--
ALTER TABLE `client_supervisors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_terms`
--
ALTER TABLE `client_terms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_upload_files`
--
ALTER TABLE `client_upload_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `dashboards`
--
ALTER TABLE `dashboards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dbsexes`
--
ALTER TABLE `dbsexes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deshboard_menus`
--
ALTER TABLE `deshboard_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `employee_salary_infos`
--
ALTER TABLE `employee_salary_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giros`
--
ALTER TABLE `giros`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `import_candidate_data`
--
ALTER TABLE `import_candidate_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industry_types`
--
ALTER TABLE `industry_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobcategories`
--
ALTER TABLE `jobcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobtypes`
--
ALTER TABLE `jobtypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_statuses`
--
ALTER TABLE `job_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `leave_approveds`
--
ALTER TABLE `leave_approveds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_controls`
--
ALTER TABLE `leave_controls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passtypes`
--
ALTER TABLE `passtypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paybanks`
--
ALTER TABLE `paybanks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paymodes`
--
ALTER TABLE `paymodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_folders`
--
ALTER TABLE `personal_folders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `races`
--
ALTER TABLE `races`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `remarkstypes`
--
ALTER TABLE `remarkstypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `temporary_imported_data`
--
ALTER TABLE `temporary_imported_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_sheets`
--
ALTER TABLE `time_sheets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_sheet_entries`
--
ALTER TABLE `time_sheet_entries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tnc_templates`
--
ALTER TABLE `tnc_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploadfiletypes`
--
ALTER TABLE `uploadfiletypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

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
