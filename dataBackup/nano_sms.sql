-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 07:07 PM
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
-- Table structure for table `assign_class_teacher`
--

CREATE TABLE `assign_class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_class_teacher`
--

INSERT INTO `assign_class_teacher` (`id`, `class_id`, `teacher_id`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(17, 11, 35, 0, 0, 17, '2024-07-02 09:25:42', '2024-07-02 09:25:42'),
(18, 7, 36, 0, 0, 17, '2024-07-02 12:00:19', '2024-07-02 12:00:19'),
(19, 7, 37, 0, 0, 17, '2024-07-02 12:00:19', '2024-07-02 12:00:26'),
(20, 10, 37, 1, 0, 17, '2024-07-02 19:27:15', '2024-07-02 19:27:15'),
(21, 10, 35, 0, 0, 17, '2024-08-12 20:02:30', '2024-08-12 20:02:30'),
(22, 11, 37, 0, 0, 17, '2024-08-21 17:50:20', '2024-08-21 17:50:20');

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
(2, 'ABCD', 0, 1, 1, '2024-06-04 15:36:39', '2024-07-01 19:27:44'),
(3, 'bcda', 1, 0, 1, '2024-06-04 15:36:54', '2024-06-04 15:36:54'),
(4, 'ererere', 0, 0, 1, '2024-06-04 15:41:03', '2024-06-04 15:41:03'),
(5, 'xyz', 0, 1, 1, '2024-06-04 16:50:33', '2024-06-04 18:53:20'),
(6, 'zyx', 0, 1, 1, '2024-06-04 16:50:44', '2024-06-04 18:53:12'),
(7, 'zyx', 0, 0, 1, '2024-06-04 18:53:44', '2024-06-04 18:53:44'),
(8, 'Islamic', 0, 0, NULL, '2024-06-24 06:05:33', '2024-06-24 06:05:33'),
(9, 'Bioligy', 0, 0, NULL, '2024-06-24 06:06:19', '2024-06-24 06:06:19'),
(10, 'physic', 0, 0, 17, '2024-06-24 06:19:30', '2024-06-24 06:19:30'),
(11, 'KG', 0, 0, 17, '2024-07-02 06:59:17', '2024-07-02 06:59:17');

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
(22, 7, 6, 1, 0, 0, '2024-06-07 20:02:54', '2024-06-07 21:03:17'),
(23, 7, 2, 1, 0, 0, '2024-06-07 20:02:54', '2024-06-07 20:02:54'),
(27, 1, 6, 1, 0, 0, '2024-06-07 20:04:42', '2024-06-07 20:04:42'),
(31, 2, 2, 1, 0, 0, '2024-06-07 20:05:19', '2024-06-07 20:05:19'),
(34, 4, 4, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:48'),
(35, 4, 6, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:34'),
(36, 4, 1, 1, 0, 0, '2024-06-08 11:30:12', '2024-06-08 11:30:25'),
(37, 1, 3, 17, 0, 0, '2024-07-01 19:30:30', '2024-07-01 19:30:30'),
(38, 1, 4, 17, 0, 0, '2024-07-01 19:30:55', '2024-07-01 19:30:55'),
(39, 11, 9, 17, 0, 0, '2024-07-02 07:03:09', '2024-07-02 07:03:09'),
(40, 11, 7, 17, 0, 0, '2024-07-02 07:03:09', '2024-07-02 07:03:09'),
(41, 10, 9, 17, 0, 0, '2024-08-04 09:13:47', '2024-08-04 09:13:47'),
(42, 10, 8, 17, 0, 0, '2024-08-12 18:29:08', '2024-08-12 18:29:08'),
(43, 10, 7, 17, 0, 0, '2024-08-12 18:29:08', '2024-08-12 18:29:08'),
(44, 10, 4, 17, 0, 0, '2024-08-12 18:31:29', '2024-08-12 18:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_timetable`
--

CREATE TABLE `class_subject_timetable` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `week_id` int(11) DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject_timetable`
--

INSERT INTO `class_subject_timetable` (`id`, `class_id`, `subject_id`, `week_id`, `start_time`, `end_time`, `room_number`, `created_at`, `updated_at`) VALUES
(3, 1, 4, 3, '12:23', '12:23', '43', '2024-08-11 17:23:47', '2024-08-11 17:23:47'),
(4, 1, 4, 4, '17:23', '18:23', '32', '2024-08-11 17:23:47', '2024-08-11 17:23:47'),
(7, 10, 9, 1, '01:59', '02:01', '101', '2024-08-11 18:59:11', '2024-08-11 18:59:11'),
(8, 10, 9, 2, '02:01', '03:02', '102', '2024-08-11 18:59:11', '2024-08-11 18:59:11'),
(33, 1, 3, 1, '07:50', '08:50', '101', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(34, 1, 3, 2, '03:52', '04:53', '102', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(35, 1, 3, 3, '07:50', '08:50', '45', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(36, 1, 3, 4, '06:32', '07:32', '32', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(37, 1, 3, 5, '06:32', '07:32', '10', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(38, 1, 3, 6, '07:55', '08:55', '12', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(39, 1, 3, 7, '05:51', '05:51', '102', '2024-08-11 19:56:05', '2024-08-11 19:56:05'),
(42, 10, 4, 1, '08:06', '09:50', '100', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(43, 10, 4, 2, '09:00', '10:00', '101', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(44, 10, 4, 3, '10:00', '11:00', '102', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(45, 10, 4, 4, '11:00', '00:00', '103', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(46, 10, 4, 5, '14:00', '15:00', '102', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(47, 10, 4, 6, '15:00', '16:00', '103', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(48, 10, 4, 7, '16:00', '17:00', '104', '2024-08-12 19:30:58', '2024-08-12 19:30:58'),
(51, 10, 7, 1, '10:00', '11:00', '102', '2024-08-13 21:23:41', '2024-08-13 21:23:41'),
(52, 10, 7, 2, '11:00', '00:00', '101', '2024-08-13 21:23:41', '2024-08-13 21:23:41'),
(53, 10, 7, 3, '05:25', '06:23', '45', '2024-08-13 21:23:41', '2024-08-13 21:23:41'),
(54, 10, 7, 4, '06:26', '06:26', '32', '2024-08-13 21:23:41', '2024-08-13 21:23:41'),
(55, 10, 7, 5, '07:27', '08:28', '10', '2024-08-13 21:23:41', '2024-08-13 21:23:41'),
(56, 10, 8, 1, '03:58', '03:59', '101', '2024-08-15 20:59:04', '2024-08-15 20:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `note`, `created_by`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'MID TERM2024', 'Hello this time for exam .enjoy this events....', 17, 0, '2024-08-15 20:51:10', '2024-08-15 20:51:10'),
(2, 'MID TERM2024-2025', 'Hello this time for exam .enjoy this events....', 17, 0, '2024-08-15 20:52:15', '2024-08-15 20:52:15'),
(3, 'Final Exam -2024-2026', 'Final Exam start next 20/09/2014 to 30/09/2025,Final Exam start next 20/09/2014 to 30/09/2025', 17, 0, '2024-08-15 20:53:17', '2024-08-15 21:37:35'),
(4, 'Semister Final 2024', 'Session 2024-25', 17, 0, '2024-08-16 18:33:47', '2024-08-16 18:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(25) DEFAULT NULL,
  `full_marks` varchar(25) DEFAULT NULL,
  `passing_marks` varchar(25) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `exam_id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `room_number`, `full_marks`, `passing_marks`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 4, '2024-08-20', '01:36', '00:37', '121', '100', '50', 17, '2024-08-19 20:07:37', '2024-08-19 20:07:37'),
(11, 1, 1, 3, '2024-08-28', '05:40', '06:41', '112', '100', '50', 17, '2024-08-19 20:07:37', '2024-08-19 20:07:37'),
(12, 1, 1, 6, '2024-08-27', '05:40', '06:41', '113', '100', '50', 17, '2024-08-19 20:07:37', '2024-08-19 20:07:37'),
(13, 2, 4, 1, '2024-08-28', '02:35', '03:36', '302', '100', '50', 17, '2024-08-19 20:08:47', '2024-08-19 20:08:47'),
(14, 2, 4, 6, '2024-09-25', '05:36', '06:36', '401', '100', '50', 17, '2024-08-19 20:08:47', '2024-08-19 20:08:47'),
(15, 2, 4, 4, '2024-08-21', '05:41', '05:41', '503', '100', '50', 17, '2024-08-19 20:08:47', '2024-08-19 20:08:47'),
(16, 2, 11, 7, '2024-08-26', '08:16', '07:15', '102', '100', '50', 17, '2024-08-19 20:10:19', '2024-08-19 20:10:19'),
(22, 1, 11, 7, '2024-08-20', '06:14', '08:14', '102', '90', '50', 17, '2024-08-19 20:18:27', '2024-08-19 20:18:27'),
(23, 4, 1, 4, '2024-08-21', '05:47', '06:47', '102', '100', '50', 17, '2024-08-20 21:48:36', '2024-08-20 21:48:36'),
(24, 4, 1, 3, '2024-08-22', '09:48', '10:48', '101', '100', '50', 17, '2024-08-20 21:48:36', '2024-08-20 21:48:36'),
(25, 4, 1, 6, '2024-08-27', '07:48', '08:48', '113', '100', '50', 17, '2024-08-20 21:48:36', '2024-08-20 21:48:36'),
(26, 1, 10, 4, '2024-08-21', '04:57', '05:57', '102', '100', '50', 17, '2024-08-20 21:58:16', '2024-08-20 21:58:16'),
(27, 1, 10, 7, '2024-08-22', '05:58', '06:58', '101', '100', '50', 17, '2024-08-20 21:58:16', '2024-08-20 21:58:16'),
(28, 4, 10, 4, '2024-08-23', '06:59', '07:59', '121', '100', '50', 17, '2024-08-20 21:59:27', '2024-08-20 21:59:27'),
(29, 4, 10, 7, '2024-08-23', '04:59', '05:59', '101', '100', '50', 17, '2024-08-20 21:59:27', '2024-08-20 21:59:27'),
(30, 4, 10, 8, '2024-08-20', '09:58', '10:58', '103', '100', '50', 17, '2024-08-20 21:59:27', '2024-08-20 21:59:27'),
(31, 3, 11, 7, '2024-08-22', '07:15', '08:15', '102', '100', '50', 17, '2024-08-21 20:15:32', '2024-08-21 20:15:32'),
(32, 3, 11, 9, '2024-08-28', '07:15', '08:15', '112', '100', '50', 17, '2024-08-21 20:15:32', '2024-08-21 20:15:32'),
(33, 3, 7, 2, '2024-08-20', '07:20', '08:20', '102', '80', '50', 17, '2024-08-21 20:20:35', '2024-08-21 20:20:35'),
(34, 3, 7, 6, '2024-08-30', '08:20', '10:20', '112', '100', '50', 17, '2024-08-21 20:20:35', '2024-08-21 20:20:35'),
(35, 4, 7, 2, '2024-08-21', '08:28', '09:22', '102', '100', '50', 17, '2024-08-21 20:22:27', '2024-08-21 20:22:27'),
(36, 4, 7, 6, '2024-09-03', '06:22', '07:22', '101', '100', '50', 17, '2024-08-21 20:22:27', '2024-08-21 20:22:27');

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
-- Table structure for table `marks_register`
--

CREATE TABLE `marks_register` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_work` int(11) NOT NULL DEFAULT 0,
  `home_work` int(11) NOT NULL DEFAULT 0,
  `test_work` int(11) NOT NULL DEFAULT 0,
  `attendance_mark` int(11) NOT NULL DEFAULT 0,
  `exam_mark` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_register`
--

INSERT INTO `marks_register` (`id`, `student_id`, `exam_id`, `class_id`, `subject_id`, `class_work`, `home_work`, `test_work`, `attendance_mark`, `exam_mark`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 43, 1, 11, 7, 14, 15, 20, 10, 46, 17, '2024-12-15 17:01:12', '2024-12-15 17:06:02'),
(2, 30, 1, 1, 4, 50, 30, 0, 5, 0, 17, '2024-12-15 17:06:48', '2024-12-15 17:06:48'),
(3, 30, 1, 1, 3, 0, 0, 0, 0, 0, 17, '2024-12-15 17:06:48', '2024-12-15 17:06:48'),
(4, 30, 1, 1, 6, 0, 0, 0, 0, 0, 17, '2024-12-15 17:06:48', '2024-12-15 17:06:48'),
(5, 28, 1, 1, 4, 10, 4, 7, 5, 25, 17, '2024-12-15 17:12:39', '2024-12-15 17:12:39'),
(6, 28, 1, 1, 3, 0, 0, 0, 0, 0, 17, '2024-12-15 17:12:39', '2024-12-15 17:12:39'),
(7, 28, 1, 1, 6, 0, 0, 0, 0, 0, 17, '2024-12-15 17:12:39', '2024-12-15 17:12:39'),
(8, 31, 1, 1, 4, 23, 0, 0, 0, 0, 17, '2024-12-15 17:13:11', '2024-12-15 17:13:48'),
(9, 31, 1, 1, 3, 8, 0, 0, 0, 0, 17, '2024-12-15 17:13:11', '2024-12-15 17:13:48'),
(10, 31, 1, 1, 6, 9, 0, 0, 0, 0, 17, '2024-12-15 17:13:11', '2024-12-15 17:13:48'),
(11, 26, 1, 1, 4, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:11', '2024-12-15 17:50:11'),
(12, 26, 1, 1, 3, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:11', '2024-12-15 17:50:11'),
(13, 26, 1, 1, 6, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:11', '2024-12-15 17:50:11'),
(14, 25, 1, 1, 4, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:17', '2024-12-15 17:50:17'),
(15, 25, 1, 1, 3, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:17', '2024-12-15 17:50:17'),
(16, 25, 1, 1, 6, 0, 0, 0, 0, 0, 17, '2024-12-15 17:50:17', '2024-12-15 17:50:17');

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
('EZTHoymWwpDZnaC4hs6F58HLiX0JrduzTns3fpt3', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGYyT2UwVWhMSzlWdG1PZ2ZkVjhaNlRoUUQ1REFSU0NoZmNCdmE1NyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTc7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9leGFtaW5hdGlvbnMvbWFya3NfcmVnaXN0ZXI/Y2xhc3NfaWQ9MSZleGFtX2lkPTEiO319', 1734285210);

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
(6, 'English', 'Theory', 1, 0, 0, '2024-06-05 14:27:51', '2024-06-05 14:27:51'),
(7, 'Math', 'Theory', 17, 0, 0, '2024-07-02 06:59:45', '2024-07-02 06:59:45'),
(8, 'Higher Math', 'Theory', 17, 0, 0, '2024-07-02 06:59:59', '2024-07-02 06:59:59'),
(9, 'Higher Math', 'Practical', 17, 0, 0, '2024-07-02 07:00:07', '2024-07-02 07:00:07');

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
  `marital_status` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `work_experience` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted,1:deleted',
  `status` tinyint(4) DEFAULT 0 COMMENT '0: active, 1: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `caste`, `religion`, `mobile_number`, `admission_date`, `profile_pic`, `blood_group`, `height`, `weight`, `occupation`, `marital_status`, `address`, `permanent_address`, `qualification`, `work_experience`, `note`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', NULL, 'admin1@gmail.com', NULL, '$2y$12$yVQ1hb.iFttW3DxxoPdtA.XRgCrotQSMNLhatSqipRUKq8ag1qwSC', '4XOU6UiSyqbouMzvSGFUi29NvpMKYzsIXA7GKLEOoioZePggBn7DO3qjhvnS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-05-26 19:39:49', '2024-06-01 04:12:09'),
(2, NULL, 'Teacher', 'Hosssen', 'teacher@gmail.com', NULL, '$2y$12$FO5L6o7/j/Y9z19WLlsJx.s6iev5xTk8g9MowH9ERGxMt60dK.1oa', 'PXXXOAQhjDfZOyTzWUIYZOyRB0WAqBJpi2lwaWITEKHRfyNpLDWDXhz3hmUc', 2, NULL, NULL, NULL, 'Male', '2024-06-05', NULL, NULL, '0970978978', '2024-06-27', '20240629084837xfnuxhnx8ldzsajhh7kr.jpeg', NULL, NULL, NULL, NULL, 'Marid', 'fdfdfdfd', 'fdfdfdf', 'hhjjj', 'gvhu', 'vbh', 1, 0, '2024-05-26 20:08:57', '2024-06-29 14:51:57'),
(4, NULL, 'Student', NULL, 'student@gmail.com', NULL, '$2y$12$s75BBAfKJlWglO9ZhLPa7.TGLNqZMjgsH2BPaeRRoRwdj3OveXdB2', 'Gr4QIKC6htai8s4MJe28L3mOJuq5QnzwSVhm2CrYyHNHRKq7VuwryID412Ih', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-26 19:39:49', '2024-06-24 01:45:34'),
(5, NULL, 'Parent', NULL, 'parent@gmail.com', NULL, '$2y$12$iWTSrMTtw8hRQfpHzghhoOd9jW5jitZG4TwDPQ.xJzUylisHFUwFa', 'RytzijcDZvJ8N1MmzK6c57LukPZN3f', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-26 19:39:49', '2024-06-26 11:18:01'),
(6, NULL, 'umair', NULL, 'umair@gmail.com', NULL, '$2y$12$MxYldJnKKZAkEyiD.Seuf.cXIG2sBna4qSTJa69JygBlnPEYlZ866', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:38:17', '2024-06-24 01:45:28'),
(9, NULL, 'Hasin', 'Abrar', 'Hasin@gmail.com', NULL, '$2y$12$pzqikNLntPXRwZeeY.nVLuFL7RDiSfCSaE.cL1J.rtrN2aM2CqSkm', NULL, 3, NULL, NULL, NULL, 'Male', '2024-07-03', 'Sunne', 'islam', '543344334', NULL, NULL, 'O+', '5', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:40:17', '2024-07-01 12:24:42'),
(10, NULL, 'Kadija', NULL, 'kadina@gmail.com', NULL, '$2y$12$CsRVOmMWS68L7skdVfLJHuojCJ11Nr/Y5j350aIfq21.CI9jOWVqO', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-30 15:41:02', '2024-06-24 01:45:11'),
(11, NULL, 'Shahed', NULL, 'shahed@gmail.com', NULL, '$2y$12$NAeVW2YMP5gUM/BIElYJEebdFMtwEzWbjld8iyfkGXolo5NleBM2.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-05-30 15:45:21', '2024-05-30 15:45:21'),
(12, NULL, 'kazi', NULL, 'kazi@gmail.com', NULL, '$2y$12$bg9giD/9At1sQVnjzj/8pe1DT0JrPcVGmUBWcq2hek/r0MD/SPAHO', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-31 03:12:26', '2024-06-01 02:42:45'),
(16, NULL, 'KAZI1', NULL, 'kazi1@gmail.com', NULL, '$2y$12$0VDmx/p5pc63MtjhQkkrv.yyfBWeBAn4E/BW.BZRYLYXtjh9/lZy.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-06-01 03:32:21', '2024-06-01 03:32:40'),
(17, NULL, 'Admin2', NULL, 'admin@gmail.com', NULL, '$2y$12$/ijSGTBxV05HCZvfYqLD1e1K/Fbt/gh0VDxdO2plNhnZZvBJOIuj2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-01 04:12:37', '2024-06-30 12:26:38'),
(25, 33, 'Shahedrume', 'tee', 'dfdn@gmail.com', NULL, '$2y$12$FzQ/Gso6aVSpdJ40eS5XC.5ruIAEABaDx1OaurNvuHgQx5WXia3bq', NULL, 3, 'fdfdsfsd', 'rerer', 1, 'Male', '2024-06-13', '', '', '12345676', '2024-06-13', 'tx5kkkijhas4ssrsdze7.jpg', 'O+', '4', '34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-13 03:52:00', '2024-06-30 12:37:53'),
(26, NULL, 'sha', 'test', 'hjhghg@gmail.com', NULL, '$2y$12$KVpocQKvgZ0KMiJR4cxt5.Pipc/o6qEZB3gND9SCBYP0kFCOjlCAy', NULL, 3, 'fdfdsfsd', 'fdfdfsd', 1, 'male', '2024-06-20', 'dfd', 'fdfd', '65645634', '2024-06-20', 'v38jwk1qdsvm5yqafa5r.jpg', 'a', '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-13 04:00:34', '2024-06-13 04:00:34'),
(27, NULL, 'zyx', 'test', 'ghgh@gmail.com', NULL, '$2y$12$LrYUO.LrFzbm/ISc77sVpet2dlTTK1jap1sAXSxTjCn0IUml2k7CK', NULL, 3, '333', 'rerer', 1, 'male', '2024-06-13', 'fdf', 'fdfsd', '65645634', '2024-06-13', 'dojdmsntozwggxwuio2r.jpg', 's', '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-06-13 04:22:30', '2024-06-24 01:45:47'),
(28, 33, 'hasin', 'abrar', 'hasinnn@gmail.com', NULL, '$2y$12$nPyZckZAPIfoSQmmWfXWUOgtKmlsS2LvS5OSfPuOucpEpc7p7xL92', NULL, 3, '5555', '66565', 1, 'Male', '2024-06-13', 'dfd', 'islam', '65645634', '2024-06-14', 'e4ittpbkj9flq79vwhng.png', '', '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '2024-06-13 10:07:53', '2024-06-30 13:17:10'),
(30, 34, 'Shahed-test', 'fsdfsdfsdf', 'dfdn1@gmail.com', NULL, '$2y$12$RFDHHbaBBEgLDR.540YXHe0DanHKty8cVrwA.QX4m3PWPZOw/YZXa', NULL, 3, 'fdfdsfsd', 'rerer', 1, 'Male', '2024-06-13', 'Sunne', 'islam', '65645634', '2024-06-13', 'vlj6fd70ghpvg5ddgdvh.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-13 10:22:39', '2024-07-01 13:57:14'),
(31, 34, 'Ruma456', 'Sultana123', 'final@gmail.com', NULL, '$2y$12$jVgEQx/9eWXlHt0neURQ.e2HHSl6.CRo0G0K0PAnorM0V88kHw5OO', NULL, 3, '434', '54545', 1, 'Female', '2024-06-12', 'Sunne', 'islam', '45454576', '2024-06-13', '20240623095929hxfqiqhcqvpalopym5v9.jpg', 'O+', '4', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-13 10:32:12', '2024-07-01 13:57:28'),
(32, 34, 'RSA123', 'MSA123', 'rsamsa@gmail.com', NULL, '$2y$12$ayhL5xHdIydZJngiUrawau1XcV/rv0/dnYM/cEZQdCuCaN3/qTx9y', NULL, 3, '11111111', '22222', 10, 'Female', '2024-06-24', 'Sunne', 'islam', '12312233', '2024-06-24', '20240630035502mafrx24nukxhiczpdilf.jpeg', 'O+', '6', '70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-24 03:28:10', '2024-07-01 13:57:39'),
(33, NULL, 'Ayesa', 'sultana', 'ayesa1@gmail.com', NULL, '$2y$12$yqkfwiPncaNoj9SheVNJcO4l6j/oejHHV1UVcvqAHrNsauCaT46Tm', NULL, 4, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, '987665444', NULL, '20240625081755rwox6xbndjtmvmgsjdaw.jpeg', NULL, NULL, NULL, 'House Wife1', NULL, 'Hathazari', NULL, NULL, NULL, NULL, 0, 0, '2024-06-25 14:17:55', '2024-08-14 14:06:04'),
(34, NULL, 'Rokgeya12', 'Begum12', 'rokeya@gmail.com', NULL, '$2y$12$BqNTPWCEEAvJ3eLER6U57OYtuUwEegNzvvENgmqtmcNzlUJn8oAkW', NULL, 4, NULL, NULL, NULL, 'Female', NULL, NULL, NULL, '12332145', NULL, '20240630045501xqta5uu9mfkyhcaadmm7.jpeg', NULL, NULL, NULL, 'House Wife1', NULL, 'USA', NULL, NULL, NULL, NULL, 0, 0, '2024-06-26 12:09:00', '2024-06-30 10:55:30'),
(35, NULL, 'Forkan21', 'Hossen21', 'forkan@gmail.com', NULL, '$2y$12$5MzAgGRuqioPursce72Sw.z6Ol/xRG/IcCRfjSLkjyZ7iavBgJaly', NULL, 2, NULL, NULL, NULL, 'Male', '2002-02-18', NULL, NULL, '012334455', '2024-06-27', '20240629122137aambbetqdsnuqcurbdnm.jpeg', NULL, NULL, NULL, NULL, 'Marid', 'fgfgdfgdfgdf', 'gfgdfgdfgdf', 'bsc', 'dfgdfgdfgdf', 'gfdgdfgdfgdf', 0, 0, '2024-06-29 06:21:37', '2024-08-12 13:58:49'),
(36, NULL, 'Shadyt', 'Hosssen', 'sadiyat@gmail.com', NULL, '$2y$12$ZyS9kvRRUl.HaVYd9j.rTeaVYte.dHa8Y1N6O8AhLxVKqvHixfH/C', NULL, 2, NULL, NULL, NULL, 'Female', '1998-01-29', NULL, NULL, '970978978', '2024-06-27', '20240629122636uuhwndweutzzufgds1ri.jpeg', NULL, NULL, NULL, NULL, 'Marid', 'fdfdfdfd', '', 'fdfdfdfdf', 'fdfdfdfdfd', 'dfdfdfsdfsdfsdf', 0, 1, '2024-06-29 06:26:36', '2024-06-30 00:16:17'),
(37, NULL, 'tesst1233', 'tessss1234', 'test1@gmail.com', NULL, '$2y$12$C/F7rwwmH/O2qGmfFyELi.xYaVDcauoWf6L0TRHUQkRBAMYDIVhh2', NULL, 2, NULL, NULL, NULL, 'Male', '2024-05-29', NULL, NULL, 'fdfdfddf', '2024-06-24', '20240629123012kx0qpoxas7kssieci1uk.jpeg', NULL, NULL, NULL, NULL, 'Marid', 'fgfgf', 'jhgg', 'fdfdfdf', 'fdfdfdfdd', 'ffdfdfdfd', 0, 0, '2024-06-29 06:30:12', '2024-08-13 13:48:57'),
(38, NULL, 'test1', 'tessss', 'test2@gmail.com', NULL, '$2y$12$kBYzr/BQ2xhl/u3Q5r0GaeLLHcBHhkzJKnILK9i0fUOgq8oIIjyJ6', NULL, 2, NULL, NULL, NULL, 'Female', '2024-05-26', NULL, NULL, 'dfdfdfdfdf', '2024-06-24', '20240629123620x1vypqgusis81flnuwzt.jpeg', NULL, NULL, NULL, NULL, 'Marid', 'dfdfdf', 'fdfdf', 'dfdfdf', 'fffdf', 'fdfdf', 1, 0, '2024-06-29 06:36:20', '2024-06-29 14:51:47'),
(41, NULL, 'Forkan', 'Hossen', 'for1kan@gmail.com', NULL, '$2y$12$cIg0sImsXSFoNhinIR.vWuegMFRqX4xJMaFh1Ctiw8N6NkEVx8EqS', NULL, 3, NULL, NULL, NULL, 'Male', '2002-02-18', NULL, NULL, '012334455', '2002-02-18', NULL, NULL, NULL, NULL, NULL, 'Marid', 'fgfgdfgdfgdf', 'gfgdfgdfgdf', 'hhhhhh', 'dfgdfgdfgdf', 'gfdgdfgdfgdf', 0, 0, '2024-06-29 14:29:55', '2024-06-29 14:29:55'),
(43, NULL, 'Karim', 'Chowdhoury', 'student123@gmail.com', NULL, '$2y$12$RGFZTVdeMhe.gOkorZbv6.RzqSXZQexUgClYQ56oOAadZ05dzVXt6', NULL, 3, '121212', '43342', 11, 'Male', '2024-08-20', 'Sunne', 'Islam', '676767576', '2024-08-21', '20240821055604c8dwkrrird55svh8glhm.jpg', '0', '6', '80KG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-08-21 11:56:05', '2024-08-29 15:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullcalendar_day` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `uptated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `name`, `fullcalendar_day`, `created_at`, `uptated_at`) VALUES
(1, 'Sunday', 1, NULL, NULL),
(2, 'Monday', 2, NULL, NULL),
(3, 'Tuesday\r\n', 3, NULL, NULL),
(4, 'Wednesday\r\n', 4, NULL, NULL),
(5, 'Thursday\r\n', 5, NULL, NULL),
(6, 'Friday\r\n', 0, NULL, NULL),
(7, 'Saturday\r\n', 6, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
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
-- Indexes for table `marks_register`
--
ALTER TABLE `marks_register`
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
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
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
-- AUTO_INCREMENT for table `marks_register`
--
ALTER TABLE `marks_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
