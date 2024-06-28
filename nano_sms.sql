-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 08:46 AM
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
-- Database: `nano_sms`
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
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active,1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not, 1: yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ABCD', 0, 0, 1, '2024-06-04 15:34:39', '2024-06-04 15:34:39'),
(2, 'ABCD', 0, 0, 1, '2024-06-04 15:36:39', '2024-06-04 15:36:39'),
(3, 'bcda', 1, 0, 1, '2024-06-04 15:36:54', '2024-06-04 15:36:54'),
(4, 'ererere', 0, 0, 1, '2024-06-04 15:41:03', '2024-06-04 15:41:03'),
(5, 'xyz', 0, 1, 1, '2024-06-04 16:50:33', '2024-06-04 18:53:20'),
(6, 'zyx', 0, 1, 1, '2024-06-04 16:50:44', '2024-06-04 18:53:12'),
(7, 'zyx', 0, 0, 1, '2024-06-04 18:53:44', '2024-06-04 18:53:44'),
(8, 'Islamic', 0, 0, NULL, '2024-06-24 06:05:33', '2024-06-24 06:05:33'),
(9, 'Bioligy', 0, 0, NULL, '2024-06-24 06:06:19', '2024-06-24 06:06:19'),
(10, 'physic', 0, 0, 17, '2024-06-24 06:19:30', '2024-06-24 06:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not, 1: yes',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: activited, 1: inactived',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(13, 0, 1, 1, 0, 0, '2024-06-06 20:11:15', '2024-06-06 20:11:15'),
(14, 0, 2, 1, 0, 0, '2024-06-06 20:11:15', '2024-06-06 20:11:15'),
(15, 0, 6, 1, 0, 0, '2024-06-06 20:11:15', '2024-06-06 20:11:15'),
(16, 0, 4, 1, 0, 1, '2024-06-06 20:11:43', '2024-06-06 20:11:43'),
(17, 0, 3, 1, 0, 0, '2024-06-07 15:33:23', '2024-06-07 15:33:23'),
(22, 7, 6, 1, 0, 0, '2024-06-07 20:02:54', '2024-06-07 21:03:17'),
(23, 7, 2, 1, 0, 0, '2024-06-07 20:02:54', '2024-06-07 20:02:54'),
(26, 1, 1, 1, 0, 1, '2024-06-07 20:04:41', '2024-06-07 20:04:41'),
(27, 1, 6, 1, 0, 1, '2024-06-07 20:04:42', '2024-06-07 20:04:42'),
(30, 2, 1, 1, 0, 0, '2024-06-07 20:05:19', '2024-06-07 20:05:19'),
(31, 2, 2, 1, 0, 0, '2024-06-07 20:05:19', '2024-06-07 20:05:19'),
(34, 4, 4, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:48'),
(35, 4, 6, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:34'),
(36, 4, 1, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:25');

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
('c9Snl3Oq5QhyUUaP1z3uRS8PYxVwo080nLmqTadO', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMlhaZ2F1b0RiQldJbHhlM2NzT1JYbGtuUUVIMnl0aFZMS3JDbm5FNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTc7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wYXJlbnQvbXlfc3R1ZGVudC8zMyI7fX0=', 1719557006);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:activite,1:inactivite',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 'Theory', 1, 0, 0, '2024-06-05 11:52:38', '2024-06-05 13:16:44'),
(2, 'Bangla', 'Practical', 1, 0, 0, '2024-06-05 11:52:57', '2024-06-05 11:52:57'),
(3, 'Bangla 1st Part', 'Theory', 1, 0, 0, '2024-06-05 11:53:24', '2024-06-05 11:53:24'),
(4, 'Bangla 2nd Part', 'Theory', 1, 0, 0, '2024-06-05 11:58:22', '2024-06-05 11:58:22'),
(5, 'English 1st Part', 'Practical', 1, 0, 1, '2024-06-05 11:59:47', '2024-06-05 13:23:12'),
(6, 'English', 'Theory', 1, 0, 0, '2024-06-05 14:27:51', '2024-06-05 14:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1:Admin,2:Teacher,\r\n3:Student, 4: Parent',
  `admission_number` varchar(50) DEFAULT NULL,
  `roll_number` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted,1:deleted',
  `status` tinyint(4) DEFAULT 0 COMMENT '0: active, 1: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `caste`, `religion`, `mobile_number`, `admission_date`, `profile_pic`, `blood_group`, `height`, `weight`, `occupation`, `address`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', NULL, 'admin1@gmail.com', NULL, '$2y$12$yVQ1hb.iFttW3DxxoPdtA.XRgCrotQSMNLhatSqipRUKq8ag1qwSC', '4XOU6UiSyqbouMzvSGFUi29NvpMKYzsIXA7GKLEOoioZePggBn7DO3qjhvnS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-05-26 19:39:49', '2024-06-01 04:12:09'),
(2, NULL, 'Teacher', NULL, 'teacher@gmail.com', NULL, '$2y$12$FO5L6o7/j/Y9z19WLlsJx.s6iev5xTk8g9MowH9ERGxMt60dK.1oa', 'PXXXOAQhjDfZOyTzWUIYZOyRB0WAqBJpi2lwaWITEKHRfyNpLDWDXhz3hmUc', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-05-26 20:08:57', '2024-05-31 13:53:04'),
(4, NULL, 'Student', NULL, 'student@gmail.com', NULL, '$2y$12$s75BBAfKJlWglO9ZhLPa7.TGLNqZMjgsH2BPaeRRoRwdj3OveXdB2', 'Gr4QIKC6htai8s4MJe28L3mOJuq5QnzwSVhm2CrYyHNHRKq7VuwryID412Ih', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-26 19:39:49', '2024-06-24 01:45:34'),
(5, NULL, 'Parent', NULL, 'parent@gmail.com', NULL, '$2y$12$iWTSrMTtw8hRQfpHzghhoOd9jW5jitZG4TwDPQ.xJzUylisHFUwFa', 'RytzijcDZvJ8N1MmzK6c57LukPZN3f', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-26 19:39:49', '2024-06-26 11:18:01'),
(6, NULL, 'umair', NULL, 'umair@gmail.com', NULL, '$2y$12$MxYldJnKKZAkEyiD.Seuf.cXIG2sBna4qSTJa69JygBlnPEYlZ866', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:38:17', '2024-06-24 01:45:28'),
(9, NULL, 'Hasin', NULL, 'Hasin@gmail.com', NULL, '$2y$12$pzqikNLntPXRwZeeY.nVLuFL7RDiSfCSaE.cL1J.rtrN2aM2CqSkm', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:40:17', '2024-06-24 01:45:21'),
(10, NULL, 'Kadija', NULL, 'kadina@gmail.com', NULL, '$2y$12$CsRVOmMWS68L7skdVfLJHuojCJ11Nr/Y5j350aIfq21.CI9jOWVqO', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:41:02', '2024-06-24 01:45:11'),
(11, NULL, 'Shahed', NULL, 'shahed@gmail.com', NULL, '$2y$12$NAeVW2YMP5gUM/BIElYJEebdFMtwEzWbjld8iyfkGXolo5NleBM2.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-05-30 15:45:21', '2024-05-30 15:45:21'),
(12, NULL, 'kazi', NULL, 'kazi@gmail.com', NULL, '$2y$12$bg9giD/9At1sQVnjzj/8pe1DT0JrPcVGmUBWcq2hek/r0MD/SPAHO', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-31 03:12:26', '2024-06-01 02:42:45'),
(16, NULL, 'KAZI1', NULL, 'kazi1@gmail.com', NULL, '$2y$12$0VDmx/p5pc63MtjhQkkrv.yyfBWeBAn4E/BW.BZRYLYXtjh9/lZy.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-06-01 03:32:21', '2024-06-01 03:32:40'),
(17, NULL, 'Admin1', NULL, 'admin@gmail.com', NULL, '$2y$12$/ijSGTBxV05HCZvfYqLD1e1K/Fbt/gh0VDxdO2plNhnZZvBJOIuj2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-01 04:12:37', '2024-06-12 02:46:35'),
(25, 33, 'Shahed', 'tee', 'dfdn@gmail.com', NULL, '$2y$12$nBPZ19elyP5RYx7yPyJ00ebBA1isBs8es8lkTTRwvdSmD2LQPXIZS', NULL, 3, 'fdfdsfsd', 'rerer', 1, 'Male', '2024-06-13', '', '', '12345676', '2024-06-13', 'tx5kkkijhas4ssrsdze7.jpg', '', '4', '34', NULL, NULL, 0, 0, '2024-06-13 03:52:00', '2024-06-28 00:30:29'),
(26, NULL, 'sha', 'test', 'hjhghg@gmail.com', NULL, '$2y$12$KVpocQKvgZ0KMiJR4cxt5.Pipc/o6qEZB3gND9SCBYP0kFCOjlCAy', NULL, 3, 'fdfdsfsd', 'fdfdfsd', 1, 'male', '2024-06-20', 'dfd', 'fdfd', '65645634', '2024-06-20', 'v38jwk1qdsvm5yqafa5r.jpg', 'a', '4', '5', NULL, NULL, 0, 0, '2024-06-13 04:00:34', '2024-06-13 04:00:34'),
(27, NULL, 'zyx', 'test', 'ghgh@gmail.com', NULL, '$2y$12$LrYUO.LrFzbm/ISc77sVpet2dlTTK1jap1sAXSxTjCn0IUml2k7CK', NULL, 3, '333', 'rerer', 1, 'male', '2024-06-13', 'fdf', 'fdfsd', '65645634', '2024-06-13', 'dojdmsntozwggxwuio2r.jpg', 's', '4', '5', NULL, NULL, 1, 0, '2024-06-13 04:22:30', '2024-06-24 01:45:47'),
(28, NULL, 'hasin', 'abrar', 'hasinnn@gmail.com', NULL, '$2y$12$nPyZckZAPIfoSQmmWfXWUOgtKmlsS2LvS5OSfPuOucpEpc7p7xL92', NULL, 3, '5555', '66565', 1, 'Male', '2024-06-13', 'dfd', 'islam', '65645634', '2024-06-14', 'e4ittpbkj9flq79vwhng.png', '', '4', '5', NULL, NULL, 0, 1, '2024-06-13 10:07:53', '2024-06-24 15:39:59'),
(30, NULL, 'Shahed', 'fsdfsdfsdf', 'dfdn1@gmail.com', NULL, '$2y$12$9CFZsNf4XJ1HRSay9Sy5eOnjLfuanBD7VJYDKDeCmDREymCrUmKae', NULL, 3, 'fdfdsfsd', 'rerer', 1, 'male', '2024-06-13', '', '', '65645634', '2024-06-13', 'vlj6fd70ghpvg5ddgdvh.png', '', '', '', NULL, NULL, 0, 0, '2024-06-13 10:22:39', '2024-06-28 00:31:04'),
(31, NULL, 'Ruma456', 'Sultana123', 'final@gmail.com', NULL, '$2y$12$jVgEQx/9eWXlHt0neURQ.e2HHSl6.CRo0G0K0PAnorM0V88kHw5OO', NULL, 3, '434', '54545', 1, 'Female', '2024-06-12', 'Sunne', 'islam', '45454576', '2024-06-13', '20240623095929hxfqiqhcqvpalopym5v9.jpg', 'O+', '4', '5', NULL, NULL, 0, 0, '2024-06-13 10:32:12', '2024-06-23 03:59:29'),
(32, NULL, 'RSA', 'MSA', 'rsamsa@gmail.com', NULL, '$2y$12$CLNjsajhGcvnOp.uk.8QJuK0Z6YKqds.aL.EfbUJNR4sqw84FRKbG', NULL, 3, '11111111', '22222', 10, 'Female', '2024-06-24', 'Sunne', 'islam', '12312233', '2024-06-24', '20240624092810ychex6odqoe3p126jqz9.jpeg', 'O+', '6', '70', NULL, NULL, 0, 0, '2024-06-24 03:28:10', '2024-06-24 03:28:10'),
(33, NULL, 'Ayesa', 'sultana', 'ayesa1@gmail.com', NULL, '$2y$12$FTiDLw0ROwjpa3dn40W0W.zUthFCY7/b2aHrpcFsNPL7sxiYMHiXC', NULL, 4, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '987665444', NULL, '20240625081755rwox6xbndjtmvmgsjdaw.jpeg', NULL, NULL, NULL, 'House Wife1', 'Hathazari', 0, 0, '2024-06-25 14:17:55', '2024-06-26 11:09:54'),
(34, NULL, 'Rokgeya', 'Begum', 'rokeya@gmail.com', NULL, '$2y$12$1k5O0EoAttHXaerg0EUhUum6SD6bHn/Ef/.GhS/yfiX6R33U4qlP6', NULL, 4, NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '123321232323', NULL, '20240626060900kq4vznmsvo47hmlaqikw.jpeg', NULL, NULL, NULL, 'House Wife1', 'USA', 0, 0, '2024-06-26 12:09:00', '2024-06-26 12:09:19');

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
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
