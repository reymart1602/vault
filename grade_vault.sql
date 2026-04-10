-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2026 at 12:26 PM
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
-- Database: `grade_vault`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `student_lrn` varchar(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `details`, `student_lrn`, `ip`, `created_at`) VALUES
(1, 2, 'add_student', 'Added student id=1 lrn=20-1-0001', NULL, '::1', '2025-10-31 11:13:48'),
(2, 2, 'add_teacher', 'Added teacher id=3 username=teacher1', NULL, '::1', '2025-10-31 15:20:05'),
(3, 3, 'update_grade', 'Updated grade for student_id=1, subject_id=35, assignment_id=1', NULL, '::1', '2025-10-31 16:06:18'),
(4, 3, 'add_student', 'Added student id=2 lrn=20-1-0002', NULL, '::1', '2025-10-31 16:13:03'),
(5, 2, 'add_teacher', 'Added teacher id=4 username=teacher2', NULL, '::1', '2025-10-31 17:50:21'),
(6, 2, 'assign_subject', 'Assigned subject_id=6 to teacher_id=4, is_primary=0', NULL, '::1', '2025-10-31 17:59:04'),
(7, 2, 'assign_subject', 'Assigned subject_id=7 to teacher_id=4, is_primary=0', NULL, '::1', '2025-10-31 17:59:37'),
(8, 3, 'add_student', 'Added student id=3 lrn=20-1-0003', NULL, '::1', '2025-10-31 18:11:57'),
(9, 3, 'upload_grades', 'Uploaded grades, rows processed: 0', NULL, '::1', '2025-10-31 19:43:49'),
(10, 3, 'upload_grades', 'Uploaded grades, rows processed: 0', NULL, '::1', '2025-10-31 19:44:34'),
(11, 3, 'upload_grades', 'Uploaded grades, rows processed: 0', NULL, '::1', '2025-10-31 19:44:39'),
(12, 3, 'request_late_grade', 'Submitted late grade request for student_id=1', NULL, '::1', '2025-11-02 05:54:15'),
(13, 3, 'request_late_grade', 'Submitted late grade request for student_id=1', NULL, '::1', '2025-11-02 05:55:47'),
(14, 3, 'request_late_grade', 'Submitted late grade request for student_id=1', NULL, '::1', '2025-11-02 05:56:54'),
(15, 3, 'add_student', 'Added student id=4 lrn=20-1-0004', NULL, '::1', '2025-11-02 06:12:15'),
(16, 3, 'Input Transferee Historical Grade', 'LRN: 20-1-0004, Name: Palku, Juan | Historical Grade: Level Grade 1, SY 2020-2021, Subject: Araling Panlipunan', NULL, '::1', '2025-11-02 07:04:33'),
(17, 3, 'Bulk Input Transferee Grades', 'Student ID: 3', NULL, '::1', '2025-11-02 07:09:23'),
(18, 3, 'Upload Multi-Level Transferee Grades', 'Student ID: 2, File: transferee_grades_single_sheet - Copy.xlsx', NULL, '::1', '2025-11-02 09:26:23'),
(19, 3, 'Upload Multi-Level Transferee Grades', 'Student ID: 1, File: transferee_grades_template.xlsx', NULL, '::1', '2025-11-02 10:03:41'),
(20, 3, 'Upload Multi-Level Transferee Grades', 'Student ID: 1, File: sample.csv', NULL, '::1', '2025-11-02 10:05:52'),
(21, 3, 'Upload Multi-Level Transferee Grades', 'Student ID: 1, File: sample.csv', NULL, '::1', '2025-11-02 10:16:18'),
(22, 3, 'Upload Multi-Level Transferee Grades', 'Student ID: 1, File: sample.csv', NULL, '::1', '2025-11-02 10:42:37'),
(23, 2, 'assign_subject_class', 'Assigned subject_id=6 to teacher_id=4 for class_id=1', NULL, '::1', '2025-11-04 21:14:41'),
(24, 2, 'assign_subject_class', 'Assigned subject_id=3 to teacher_id=3 for class_id=1', NULL, '::1', '2025-11-04 21:15:03'),
(25, 2, 'add_student', 'Added student id=5 lrn=20-1-0005', NULL, '::1', '2025-11-04 21:47:48'),
(26, 2, 'add_student', 'Added student id=6 lrn=20-1-0006', NULL, '::1', '2025-11-04 22:17:38'),
(27, 2, 'assign_subject_class', 'Assigned subject_id=3 to teacher_id=4 for class_id=7', NULL, '::1', '2025-11-05 13:52:23'),
(28, 4, 'add_student', 'Added student id=7 lrn=20-1-0007', NULL, '::1', '2025-11-05 13:56:06'),
(29, 4, 'upload_grades', 'Uploaded grades, rows processed: 1', NULL, '::1', '2025-11-05 13:58:24'),
(30, 2, 'reject_late_grade', 'Rejected request id=1', NULL, '::1', '2025-11-06 04:36:03'),
(31, 3, 'upload_grades', 'Uploaded grades, rows processed: 0', NULL, '::1', '2025-11-07 06:38:01'),
(32, 3, 'upload_grades', 'Uploaded grades, rows processed: 1', NULL, '::1', '2025-11-07 06:39:12'),
(33, 3, 'upload_grades', 'Uploaded grades, rows processed: 1', NULL, '::1', '2025-11-07 08:44:32'),
(34, 3, 'upload_grades', 'Uploaded grades, rows processed: 1', NULL, '::1', '2025-11-07 08:52:49'),
(35, 3, 'upload_grades', 'Uploaded grades, rows processed: 1', NULL, '::1', '2025-11-07 09:01:15'),
(36, 3, 'upload_grades', 'Uploaded grades, rows processed: 2', NULL, '::1', '2025-11-07 09:02:06'),
(37, 3, 'upload_grades', 'Uploaded grades, rows processed: 2', NULL, '::1', '2025-11-07 09:21:06'),
(38, 3, 'upload_grades', 'Uploaded grades, rows processed: 2', NULL, '::1', '2025-11-07 13:06:26'),
(39, 2, 'inactivate_teacher', 'Admin inactivated teacher (ID: 4)', NULL, '::1', '2025-11-08 04:13:37'),
(40, 2, 'activate_teacher', 'Admin activated teacher (ID: 4)', NULL, '::1', '2025-11-08 04:14:27'),
(41, 2, 'inactivate_teacher', 'Admin inactivated teacher (ID: 4)', NULL, '::1', '2025-11-08 04:18:31'),
(42, 2, 'activate_teacher', 'Admin activated teacher (ID: 4)', NULL, '::1', '2025-11-08 04:19:28'),
(43, 2, 'assign_subjects', 'Assigned 1 subjects to teacher ID 4', NULL, '::1', '2025-11-08 08:06:59'),
(44, 2, 'assign_subjects', 'Assigned 1 subjects to teacher ID 3', NULL, '::1', '2025-11-08 08:07:22'),
(45, 2, 'add_teacher', 'Added teacher id=6 username=morgan', NULL, '::1', '2025-11-08 08:27:22'),
(46, 2, 'edit_teacher', 'Updated teacher profile (ID: 6)', NULL, '::1', '2025-11-08 08:41:32'),
(47, 2, 'edit_teacher', 'Updated teacher profile (ID: 4)', NULL, '::1', '2025-11-08 08:41:45'),
(48, 2, 'assign_subjects', 'Assigned 1 subjects to teacher ID 6', NULL, '::1', '2025-11-09 04:50:14'),
(49, 2, 'assign_adviser', 'Assigned teacher ID 6 as adviser for class ID 5', NULL, '::1', '2025-11-09 04:51:12'),
(50, 2, 'assign_adviser', 'Assigned teacher ID 3 as adviser for class ID 7', NULL, '::1', '2025-11-09 04:51:37'),
(51, 2, 'assign_adviser', 'Removed teacher ID 3 as adviser from all classes', NULL, '::1', '2025-11-09 04:52:07'),
(52, 3, 'Bulk Student Upload', 'For Class ID 8. File: \'student_enrollment_template (2).xlsx\'. Success: 3, Failed: 0', NULL, '::1', '2025-11-09 16:27:29'),
(53, 3, 'Bulk Student Upload', 'For Class ID 8. File: \'enroll.csv\'. Success: 32, Failed: 8', NULL, '::1', '2025-11-09 16:57:27'),
(54, 2, 'assign_adviser', 'Assigned teacher ID 3 as adviser for class ID 7', NULL, '::1', '2025-11-10 07:21:11'),
(55, 2, 'assign_adviser', 'Assigned teacher ID 4 as adviser for class ID 11', NULL, '::1', '2025-11-10 07:21:21'),
(56, 5, 'assign_subjects', 'Assigned 1 subjects to teacher ID 3', NULL, '::1', '2025-11-10 07:24:27'),
(57, 5, 'assign_subject_class', 'Assigned subject_id=8 to teacher_id=4 for class_id=7', NULL, '::1', '2025-11-10 07:51:06'),
(58, 5, 'assign_subject_class', 'Assigned subject_id=8 to teacher_id=4 for class_id=11', NULL, '::1', '2025-11-10 07:51:57'),
(59, 2, 'assign_subject_class', 'Assigned subject_id=3 to teacher_id=3 for class_id=8', NULL, '::1', '2025-11-10 07:56:01'),
(60, 5, 'inactivate_teacher', 'Admin inactivated teacher (ID: 4)', NULL, '::1', '2025-11-12 01:21:28'),
(61, 5, 'activate_teacher', 'Admin activated teacher (ID: 4)', NULL, '::1', '2025-11-12 01:22:09'),
(62, 5, 'inactivate_teacher', 'Admin inactivated teacher (ID: 4)', NULL, '::1', '2025-11-12 01:22:13'),
(63, 2, 'activate_teacher', 'Admin activated teacher (ID: 4)', NULL, '::1', '2025-11-12 01:22:42'),
(64, 3, 'update_grade', 'Updated grade for student_id=28, subject_id=3', NULL, '::1', '2025-11-12 01:48:16'),
(65, 3, 'update_grade', 'Updated grade for student_id=28, subject_id=3', NULL, '::1', '2025-11-12 01:48:31'),
(66, 3, 'update_grade', 'Updated grade for student_id=28, subject_id=3', NULL, '::1', '2025-11-12 02:24:49'),
(67, 3, 'update_grade', 'Updated grade for student_id=28, subject_id=3', NULL, '::1', '2025-11-12 02:25:43'),
(68, 3, 'update_grade', 'Updated grade for student_id=28, subject_id=3', NULL, '::1', '2025-11-12 02:27:17'),
(69, 2, 'inactivate_teacher', 'Admin inactivated teacher (ID: 6)', NULL, '::1', '2025-11-12 04:37:09'),
(70, 2, 'activate_teacher', 'Admin activated teacher (ID: 6)', NULL, '::1', '2025-11-13 00:59:48'),
(71, 2, 'assign_adviser', 'Assigned teacher ID 6 as adviser for class ID 10', NULL, '::1', '2025-11-13 00:59:57'),
(72, 2, 'assign_adviser', 'Assigned teacher ID 4 as adviser for class ID 9', NULL, '::1', '2025-11-13 01:25:54'),
(73, 6, 'add_student', 'Added student id=43 lrn=25-1-0035 and enrolled in class 10', NULL, '::1', '2025-11-13 02:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `grade_level_id` int(11) DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `section_name` varchar(100) NOT NULL COMMENT 'e.g., A, B, Rose, Jupiter',
  `max_capacity` int(11) NOT NULL DEFAULT 35,
  `adviser_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `grade_level_id`, `school_year_id`, `section_name`, `max_capacity`, `adviser_id`) VALUES
(1, 7, 1, 'A', 35, NULL),
(2, 7, 1, 'B', 35, NULL),
(3, 7, 1, 'C', 35, NULL),
(4, 7, 5, 'A', 35, NULL),
(5, 8, 6, 'A', 35, NULL),
(6, 8, 6, 'A', 35, NULL),
(7, 7, 6, 'A', 35, 3),
(8, 7, 5, 'B', 35, 3),
(9, 7, 5, 'C', 35, 4),
(10, 7, 5, 'D', 35, 6),
(11, 7, 6, 'B', 35, NULL),
(12, 7, 6, 'C', 35, NULL),
(13, 9, 5, 'AVOCADO', 35, NULL),
(14, 9, 7, 'BOMBAY', 35, NULL),
(15, 7, 5, 'CALAMANSI', 35, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `class_id`) VALUES
(3, 2, 4),
(1, 5, 4),
(2, 5, 5),
(4, 8, 8),
(5, 9, 8),
(6, 10, 8),
(7, 11, 8),
(8, 12, 8),
(9, 13, 8),
(10, 14, 8),
(11, 15, 8),
(12, 16, 8),
(13, 17, 8),
(14, 18, 8),
(15, 19, 8),
(16, 20, 8),
(17, 21, 8),
(18, 22, 8),
(19, 23, 8),
(20, 24, 8),
(21, 25, 8),
(22, 26, 8),
(23, 27, 8),
(24, 28, 8),
(25, 29, 8),
(26, 30, 8),
(27, 31, 8),
(28, 32, 8),
(29, 33, 8),
(30, 34, 8),
(31, 35, 8),
(32, 36, 8),
(33, 37, 8),
(34, 38, 8),
(35, 39, 8),
(36, 40, 8),
(37, 41, 8),
(38, 42, 8),
(39, 43, 10);

-- --------------------------------------------------------

--
-- Table structure for table `form_requests`
--

CREATE TABLE `form_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `requester_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `id_upload_path` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approved','Sent','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_requests`
--

INSERT INTO `form_requests` (`id`, `student_id`, `requester_name`, `relationship`, `id_upload_path`, `email`, `purpose`, `status`, `created_at`, `updated_at`, `admin_notes`) VALUES
(1, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-10-31 11:42:55', '2025-10-31 11:43:39', NULL),
(2, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Rejected', '2025-10-31 18:31:46', '2025-11-02 11:08:25', NULL),
(3, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Rejected', '2025-10-31 18:32:18', '2025-10-31 19:15:05', NULL),
(4, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-10-31 18:46:53', '2025-10-31 18:48:21', NULL),
(5, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-10-31 19:15:52', '2025-10-31 19:20:32', NULL),
(6, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'enrollment', 'Sent', '2025-11-02 09:49:17', '2025-11-02 09:50:18', NULL),
(7, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-02 10:44:07', '2025-11-02 10:44:31', NULL),
(8, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-02 11:00:57', '2025-11-02 11:01:11', NULL),
(9, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-02 11:08:51', '2025-11-02 11:09:07', NULL),
(10, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-02 11:42:08', '2025-11-02 11:42:59', NULL),
(11, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-05 00:17:37', '2025-11-05 00:18:02', NULL),
(12, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-05 00:30:43', '2025-11-05 00:31:07', NULL),
(13, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-05 00:39:34', '2025-11-05 00:39:50', NULL),
(14, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-05 00:47:42', '2025-11-05 00:48:01', NULL),
(15, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-07 02:05:36', '2025-11-07 02:06:51', NULL),
(16, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Rejected', '2025-11-07 07:06:02', '2025-11-07 07:09:49', NULL),
(17, 1, NULL, NULL, NULL, 'jasonmaglinte23@gmail.com', 'transfer', 'Pending', '2025-11-07 07:33:50', NULL, NULL),
(18, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'enrollment', 'Sent', '2025-11-09 06:18:21', '2025-11-09 06:18:42', NULL),
(19, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Pending', '2025-11-12 01:18:44', NULL, NULL),
(20, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'enrollment', 'Sent', '2025-11-12 03:45:28', '2025-11-12 04:22:30', NULL),
(21, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'transfer', 'Sent', '2025-11-13 02:25:50', '2025-11-13 02:26:21', NULL),
(22, 1, NULL, NULL, NULL, 'reymartmorilla16@gmail.com', 'enrollment', 'Pending', '2025-11-13 02:52:21', NULL, NULL),
(23, 1, NULL, NULL, NULL, 'reymartmorilla16@gmai.com', 'enrollment', 'Pending', '2025-11-17 07:51:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `grade_level_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `is_transferee_grade` tinyint(1) NOT NULL DEFAULT 0,
  `period1` decimal(5,2) DEFAULT NULL,
  `period2` decimal(5,2) DEFAULT NULL,
  `period3` decimal(5,2) DEFAULT NULL,
  `period4` decimal(5,2) DEFAULT NULL,
  `final_rating` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `original_teacher_name` varchar(255) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_draft` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `class_id`, `school_year_id`, `grade_level_id`, `subject_id`, `grade_id`, `is_transferee_grade`, `period1`, `period2`, `period3`, `period4`, `final_rating`, `remarks`, `original_teacher_name`, `uploaded_by`, `uploaded_at`, `is_draft`) VALUES
(9, 4, NULL, NULL, NULL, 45, NULL, 1, 98.00, 98.00, 98.00, 98.00, 98.00, NULL, NULL, 3, '2025-11-02 07:04:33', 0),
(10, 3, NULL, NULL, NULL, 45, NULL, 1, 98.00, 98.00, 89.00, 98.00, 98.00, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(11, 3, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(12, 3, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(13, 3, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(14, 3, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(15, 3, NULL, NULL, NULL, 37, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(16, 3, NULL, NULL, NULL, 7, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(17, 3, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(18, 3, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(19, 3, NULL, NULL, NULL, 38, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(20, 3, NULL, NULL, NULL, 23, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(21, 3, NULL, NULL, NULL, 46, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(22, 3, NULL, NULL, NULL, 40, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(23, 3, NULL, NULL, NULL, 48, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(24, 3, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(25, 3, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(26, 3, NULL, NULL, NULL, 26, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(27, 3, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(28, 3, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(29, 3, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(30, 3, NULL, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(31, 3, NULL, NULL, NULL, 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(32, 3, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(33, 3, NULL, NULL, NULL, 25, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(34, 3, NULL, NULL, NULL, 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(35, 3, NULL, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(36, 3, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(37, 3, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(38, 3, NULL, NULL, NULL, 27, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(39, 3, NULL, NULL, NULL, 20, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(40, 3, NULL, NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(41, 3, NULL, NULL, NULL, 35, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(42, 3, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(43, 3, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(44, 3, NULL, NULL, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(45, 3, NULL, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(46, 3, NULL, NULL, NULL, 47, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(47, 3, NULL, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(48, 3, NULL, NULL, NULL, 39, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(49, 3, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(50, 3, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(51, 3, NULL, NULL, NULL, 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(52, 3, NULL, NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(53, 3, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(54, 3, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(55, 3, NULL, NULL, NULL, 28, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(56, 3, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(57, 3, NULL, NULL, NULL, 36, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 07:09:23', 0),
(58, 2, NULL, NULL, NULL, 42, NULL, 1, 98.00, 98.00, 98.00, 98.00, 98.00, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(59, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(60, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(61, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(62, 2, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(63, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(64, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(65, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(66, 2, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(67, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(68, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(69, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(70, 2, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(71, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(72, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(73, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(74, 2, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(75, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(76, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(77, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(78, 2, NULL, NULL, NULL, 42, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(79, 2, NULL, NULL, NULL, 43, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(80, 2, NULL, NULL, NULL, 44, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(81, 2, NULL, NULL, NULL, 41, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-02 09:26:23', 0),
(184, 1, NULL, 1, 7, 1, NULL, 1, 80.00, 82.00, 81.00, 83.00, 82.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(185, 1, NULL, 1, 7, 2, NULL, 1, 85.00, 86.00, 85.00, 86.00, 86.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(186, 1, NULL, 1, 7, 3, NULL, 1, 88.00, 87.00, 88.00, 87.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(187, 1, NULL, 1, 7, 4, NULL, 1, 86.00, 85.00, 86.00, 85.00, 86.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(188, 1, NULL, 1, 7, 5, NULL, 1, 87.00, 88.00, 87.00, 88.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(189, 1, NULL, 1, 7, 6, NULL, 1, 85.00, 85.00, 86.00, 86.00, 86.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(190, 1, NULL, 1, 7, 7, NULL, 1, 90.00, 90.00, 91.00, 91.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(191, 1, NULL, 1, 7, 8, NULL, 1, 88.00, 89.00, 88.00, 89.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(192, 1, NULL, 2, 8, 9, NULL, 1, 81.00, 83.00, 82.00, 84.00, 83.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(193, 1, NULL, 2, 8, 10, NULL, 1, 86.00, 87.00, 86.00, 87.00, 87.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(194, 1, NULL, 2, 8, 11, NULL, 1, 89.00, 88.00, 89.00, 88.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(195, 1, NULL, 2, 8, 12, NULL, 1, 87.00, 86.00, 87.00, 86.00, 87.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(196, 1, NULL, 2, 8, 13, NULL, 1, 88.00, 87.00, 88.00, 87.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(197, 1, NULL, 2, 8, 14, NULL, 1, 86.00, 86.00, 87.00, 87.00, 87.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(198, 1, NULL, 2, 8, 15, NULL, 1, 91.00, 90.00, 91.00, 90.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(199, 1, NULL, 2, 8, 16, NULL, 1, 89.00, 89.00, 90.00, 90.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(200, 1, NULL, 3, 9, 17, NULL, 1, 82.00, 84.00, 83.00, 85.00, 84.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(201, 1, NULL, 3, 9, 18, NULL, 1, 87.00, 88.00, 87.00, 88.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(202, 1, NULL, 3, 9, 19, NULL, 1, 90.00, 89.00, 90.00, 89.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(203, 1, NULL, 3, 9, 20, NULL, 1, 88.00, 87.00, 88.00, 87.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(204, 1, NULL, 3, 9, 21, NULL, 1, 89.00, 88.00, 89.00, 88.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(205, 1, NULL, 3, 9, 22, NULL, 1, 87.00, 87.00, 88.00, 88.00, 88.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(206, 1, NULL, 3, 9, 23, NULL, 1, 92.00, 91.00, 92.00, 91.00, 92.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(207, 1, NULL, 3, 9, 24, NULL, 1, 90.00, 90.00, 91.00, 91.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(208, 1, NULL, 4, 10, 25, NULL, 1, 83.00, 85.00, 84.00, 86.00, 85.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(209, 1, NULL, 4, 10, 26, NULL, 1, 88.00, 89.00, 88.00, 89.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(210, 1, NULL, 4, 10, 27, NULL, 1, 91.00, 90.00, 91.00, 90.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(211, 1, NULL, 4, 10, 28, NULL, 1, 89.00, 88.00, 89.00, 88.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(212, 1, NULL, 4, 10, 29, NULL, 1, 88.00, 88.00, 89.00, 89.00, 89.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(213, 1, NULL, 4, 10, 30, NULL, 1, 93.00, 92.00, 93.00, 92.00, 93.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(214, 1, NULL, 4, 10, 31, NULL, 1, 91.00, 91.00, 92.00, 92.00, 92.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(215, 1, NULL, 4, 10, 32, NULL, 1, 90.00, 90.00, 90.00, 90.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(216, 1, NULL, 5, 11, 33, NULL, 1, 84.00, 86.00, 85.00, 87.00, 86.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(217, 1, NULL, 5, 11, 34, NULL, 1, 89.00, 90.00, 89.00, 90.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(218, 1, NULL, 5, 11, 35, NULL, 1, 92.00, 91.00, 92.00, 91.00, 92.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(219, 1, NULL, 5, 11, 36, NULL, 1, 90.00, 89.00, 90.00, 89.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(220, 1, NULL, 5, 11, 37, NULL, 1, 89.00, 89.00, 90.00, 90.00, 90.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(221, 1, NULL, 5, 11, 38, NULL, 1, 94.00, 93.00, 94.00, 93.00, 94.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(222, 1, NULL, 5, 11, 39, NULL, 1, 92.00, 92.00, 93.00, 93.00, 93.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(223, 1, NULL, 5, 11, 40, NULL, 1, 91.00, 91.00, 91.00, 91.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(224, 1, NULL, 6, 12, 41, NULL, 1, 85.00, 87.00, 86.00, 88.00, 87.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(225, 1, NULL, 6, 12, 42, NULL, 1, 90.00, 91.00, 90.00, 91.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(226, 1, NULL, 6, 12, 43, NULL, 1, 93.00, 92.00, 93.00, 92.00, 93.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(227, 1, NULL, 6, 12, 44, NULL, 1, 91.00, 90.00, 91.00, 90.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(228, 1, NULL, 6, 12, 45, NULL, 1, 90.00, 90.00, 91.00, 91.00, 91.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(229, 1, NULL, 6, 12, 46, NULL, 1, 95.00, 94.00, 95.00, 94.00, 95.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(230, 1, NULL, 6, 12, 47, NULL, 1, 93.00, 93.00, 94.00, 94.00, 94.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(231, 1, NULL, 6, 12, 48, NULL, 1, 92.00, 92.00, 92.00, 92.00, 92.00, 'PASSED', NULL, NULL, '2025-11-05 00:47:15', 0),
(232, 7, NULL, 6, NULL, 3, NULL, 0, 89.00, 89.00, 89.00, 89.00, 89.00, 'passed', NULL, 4, '2025-11-05 13:58:24', 0),
(233, 4, NULL, 6, NULL, 3, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 06:39:12', 0),
(234, 5, NULL, 6, NULL, 3, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 08:44:32', 0),
(235, 5, NULL, 6, NULL, 1, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 08:51:30', 0),
(236, 5, NULL, 6, NULL, 1, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 08:52:49', 0),
(237, 3, NULL, 6, NULL, 2, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 09:01:15', 0),
(238, 3, NULL, 6, NULL, 2, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 09:02:06', 0),
(239, 4, NULL, 6, NULL, 2, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 09:02:06', 0),
(240, 3, NULL, 6, NULL, 6, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 09:21:06', 0),
(241, 4, NULL, 6, NULL, 6, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 09:21:06', 0),
(242, 3, NULL, 6, NULL, 6, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 13:06:26', 0),
(243, 4, NULL, 6, NULL, 6, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-07 13:06:26', 0),
(244, 3, NULL, 6, NULL, 3, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-08 03:31:02', 0),
(245, 4, NULL, 6, NULL, 3, 1, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, 3, '2025-11-08 03:31:02', 0),
(246, 28, 8, 5, 7, 3, NULL, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'PASSED', NULL, 3, '2025-11-12 01:48:16', 0),
(247, 28, 8, 5, 7, 3, NULL, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'PASSED', NULL, 3, '2025-11-12 01:48:31', 0),
(248, 28, 8, 5, 7, 3, NULL, 0, 98.00, 98.00, 98.00, 98.00, 98.00, 'PASSED', NULL, 3, '2025-11-12 02:24:49', 0),
(249, 28, 8, 5, 7, 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-12 02:25:43', 0),
(250, 28, 8, 5, 7, 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-12 02:27:17', 0),
(251, 28, 8, 5, 7, 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2025-11-12 02:29:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `grade_audit`
--

CREATE TABLE `grade_audit` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_of_record_name` varchar(255) DEFAULT NULL,
  `uploaded_by_id` int(11) DEFAULT NULL,
  `batch_id` varchar(255) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `final_rating` decimal(5,2) DEFAULT NULL,
  `period1` decimal(5,2) DEFAULT NULL,
  `period2` decimal(5,2) DEFAULT NULL,
  `period3` decimal(5,2) DEFAULT NULL,
  `period4` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `subject_code` varchar(10) DEFAULT NULL,
  `grade` decimal(5,2) DEFAULT NULL,
  `action_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_audit`
--

INSERT INTO `grade_audit` (`id`, `teacher_id`, `teacher_of_record_name`, `uploaded_by_id`, `batch_id`, `student_id`, `subject_id`, `final_rating`, `period1`, `period2`, `period3`, `period4`, `remarks`, `subject_code`, `grade`, `action_time`) VALUES
(1, 3, NULL, NULL, 'batch_690db361e41f60.55118458', 5, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 16:52:49'),
(2, 3, NULL, NULL, 'batch_690db55b236e85.05269125', 3, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 17:01:15'),
(3, 3, NULL, NULL, 'batch_690db58ee496c0.58937209', 3, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 17:02:06'),
(4, 3, NULL, NULL, 'batch_690db58ee496c0.58937209', 4, NULL, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 17:02:06'),
(5, 3, NULL, NULL, 'batch_690dba02e801d4.29931512', 3, 6, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 17:21:06'),
(6, 3, NULL, NULL, 'batch_690dba02e801d4.29931512', 4, 6, 98.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 17:21:06'),
(7, 3, NULL, NULL, 'batch_690deed27ab724.79840893', 3, 6, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, NULL, '2025-11-07 21:06:26'),
(8, 3, NULL, NULL, 'batch_690deed27ab724.79840893', 4, 6, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, NULL, '2025-11-07 21:06:26'),
(9, 4, NULL, 3, 'batch_690eb9760be224.49352321', 3, 3, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, NULL, '2025-11-08 11:31:02'),
(10, 4, NULL, 3, 'batch_690eb9760be224.49352321', 4, 3, 98.00, 98.00, 98.00, 98.00, 98.00, 'passed', NULL, NULL, '2025-11-08 11:31:02'),
(11, 3, NULL, 3, 'batch_save_6913f11b5e81a8.73034906', 28, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-12 10:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `grade_levels`
--

CREATE TABLE `grade_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade_levels`
--

INSERT INTO `grade_levels` (`id`, `level`) VALUES
(7, 'Grade 1'),
(8, 'Grade 2'),
(9, 'Grade 3'),
(10, 'Grade 4'),
(11, 'Grade 5'),
(12, 'Grade 6');

-- --------------------------------------------------------

--
-- Table structure for table `late_grade_requests`
--

CREATE TABLE `late_grade_requests` (
  `id` int(11) NOT NULL,
  `requesting_teacher_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `period1` decimal(5,2) DEFAULT NULL,
  `period2` decimal(5,2) DEFAULT NULL,
  `period3` decimal(5,2) DEFAULT NULL,
  `period4` decimal(5,2) DEFAULT NULL,
  `final_rating` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `reason` text DEFAULT NULL COMMENT 'Reason for the late request (e.g., transferee)',
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `admin_notes` text DEFAULT NULL COMMENT 'Admin notes on rejection/approval',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `late_grade_requests`
--

INSERT INTO `late_grade_requests` (`id`, `requesting_teacher_id`, `student_id`, `subject_id`, `school_year_id`, `period1`, `period2`, `period3`, `period4`, `final_rating`, `remarks`, `reason`, `status`, `admin_notes`, `created_at`, `reviewed_at`, `reviewed_by`) VALUES
(1, 3, NULL, 35, 5, 85.00, 88.50, 90.00, 89.00, 88.13, 'PASSED', 'late mani siya', 'rejected', NULL, '2025-11-02 05:54:15', '2025-11-06 04:36:03', 2),
(2, 3, NULL, 35, 5, 85.00, 88.50, 90.00, 89.00, 88.13, 'PASSED', 'sad', 'pending', NULL, '2025-11-02 05:55:47', NULL, NULL),
(3, 3, NULL, 35, 5, 85.00, 88.50, 90.00, 89.00, 88.13, 'PASSED', 's', 'pending', NULL, '2025-11-02 05:56:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_years`
--

CREATE TABLE `school_years` (
  `id` int(11) NOT NULL,
  `year_label` varchar(20) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `submission_start` date DEFAULT NULL COMMENT 'Start date for grade submissions',
  `submission_end` date DEFAULT NULL COMMENT 'End date for grade submissions',
  `submission_override` enum('Use Dates','Open','Closed') NOT NULL DEFAULT 'Use Dates' COMMENT 'Admin override for submission window'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_years`
--

INSERT INTO `school_years` (`id`, `year_label`, `status`, `submission_start`, `submission_end`, `submission_override`) VALUES
(1, '2020-2021', 'Inactive', NULL, NULL, 'Use Dates'),
(2, '2021-2022', 'Inactive', NULL, NULL, 'Use Dates'),
(3, '2022-2023', 'Inactive', NULL, NULL, 'Use Dates'),
(4, '2023-2024', 'Inactive', NULL, NULL, 'Use Dates'),
(5, '2024-2025', 'Active', '2025-04-01', '2025-05-31', 'Open'),
(6, '2025-2026', 'Inactive', NULL, NULL, 'Open'),
(7, '2026-2027', 'Inactive', NULL, NULL, 'Use Dates');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `lrn` varchar(20) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `given_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `sex` enum('M','F','Other') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `year_enrolled` year(4) DEFAULT NULL,
  `year_stopped` year(4) DEFAULT NULL,
  `status` enum('Enrolled','Graduated','Transferred','Stopped') NOT NULL DEFAULT 'Enrolled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `lrn`, `surname`, `given_name`, `middle_name`, `suffix`, `sex`, `birthdate`, `year_enrolled`, `year_stopped`, `status`, `created_at`) VALUES
(1, '20-1-0001', 'SON', 'REYMART', 'AGA', '', 'M', '2015-02-16', '2020', '2025', 'Graduated', '2025-10-31 11:13:48'),
(2, '20-1-0002', 'DELACRUZ', 'MARIE', 'SY', 'II', 'F', '2020-02-28', '2025', NULL, 'Enrolled', '2025-10-31 16:13:03'),
(3, '20-1-0003', 'Kups', 'Dexter', 'Da', 'II', 'M', '2015-02-27', '2025', NULL, 'Enrolled', '2025-10-31 18:11:57'),
(4, '20-1-0004', 'Palku', 'Juan', 'D', '', 'M', '2015-02-16', '2025', NULL, 'Enrolled', '2025-11-02 06:12:15'),
(5, '20-1-0005', 'Border', 'Alice', 'D', '', 'M', '2018-02-16', '2024', NULL, 'Enrolled', '2025-11-04 21:47:48'),
(6, '20-1-0006', 'D', 'Joan', 'Lacruz', '', 'F', '2019-08-22', '2025', NULL, 'Enrolled', '2025-11-04 22:17:38'),
(7, '20-1-0007', 'Di', 'Denjie', 'K', 'JR.', 'M', '2019-02-02', '2025', NULL, 'Enrolled', '2025-11-05 13:56:06'),
(8, '24-1-0001', 'Reyes', 'Althea', 'A', 'II', 'F', '2019-03-15', '2025', NULL, 'Enrolled', '2025-11-09 16:27:29'),
(9, '24-1-0002', 'Santos', 'James', 'D', NULL, 'M', '2019-04-04', '2025', NULL, 'Enrolled', '2025-11-09 16:27:29'),
(10, '24-1-0003', 'Mercado', 'Sofia', 'A', NULL, 'F', '2019-04-04', '2025', NULL, 'Enrolled', '2025-11-09 16:27:29'),
(11, '25-1-0001', 'Reyes', 'Athena', 'A', 'II', 'F', '2019-03-15', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(12, '25-1-0002', 'Santos', 'John', 'D', NULL, 'M', '2019-04-04', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(13, '25-1-0003', 'Mercado', 'Riya', 'A', NULL, 'F', '2019-04-04', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(14, '25-1-0004', 'Dela Cruz', 'Luis', 'M', NULL, 'M', '2019-01-15', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(15, '25-1-0005', 'Garcia', 'Maria', 'L', NULL, 'F', '2019-02-20', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(16, '25-1-0006', 'Santos', 'Leo', 'R', NULL, 'M', '2019-03-11', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(17, '25-1-0007', 'Lim', 'Sofia', 'T', NULL, 'F', '2019-01-28', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(18, '25-1-0008', 'Gomez', 'Mateo', 'P', NULL, 'M', '2019-02-14', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(19, '25-1-0009', 'Tan', 'Isabella', 'G', NULL, 'F', '2019-03-05', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(20, '25-1-0010', 'Cruz', 'Gabriel', 'F', NULL, 'M', '2019-04-01', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(21, '25-1-0011', 'Lee', 'Chloe', 'D', NULL, 'F', '2019-04-18', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(22, '25-1-0012', 'Fernandez', 'Elijah', 'P', NULL, 'M', '2019-05-02', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(23, '25-1-0013', 'Lopez', 'Mia', 'S', NULL, 'F', '2019-05-14', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(24, '25-1-0014', 'Castillo', 'Noah', 'B', NULL, 'M', '2019-04-25', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(25, '25-1-0015', 'Diaz', 'Olivia', 'M', NULL, 'F', '2019-06-03', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(26, '25-1-0016', 'Rivera', 'James', 'A', NULL, 'M', '2019-05-20', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(27, '25-1-0017', 'Perez', 'Amelia', 'C', NULL, 'F', '2019-06-11', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(28, '25-1-0018', 'Aquino', 'Benjamin', 'V', NULL, 'M', '2019-07-07', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(29, '25-1-0019', 'Ramos', 'Ava', 'G', NULL, 'F', '2019-06-19', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(30, '25-1-0020', 'Torres', 'William', 'S', NULL, 'M', '2019-07-15', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(31, '25-1-0021', 'Mendoza', 'Sophia', 'T', NULL, 'F', '2019-08-01', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(32, '25-1-0022', 'Ocampo', 'Liam', 'D', NULL, 'M', '2019-07-22', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(33, '25-1-0023', 'Flores', 'Charlotte', 'R', NULL, 'F', '2019-08-10', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(34, '25-1-0024', 'Dizon', 'Alexander', 'L', NULL, 'M', '2019-09-05', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(35, '25-1-0025', 'Bautista', 'Abigail', 'P', NULL, 'F', '2019-08-23', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(36, '25-1-0026', 'David', 'Michael', 'M', NULL, 'M', '2019-09-17', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(37, '25-1-0027', 'Soriano', 'Emily', 'F', NULL, 'F', '2019-10-01', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(38, '25-1-0028', 'Sy', 'Jacob', 'B', NULL, 'M', '2019-09-28', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(39, '25-1-0029', 'Mercado', 'Ella', 'S', NULL, 'F', '2019-10-10', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(40, '25-1-0030', 'Villanueva', 'Ethan', 'C', NULL, 'M', '2019-10-22', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(41, '25-1-0031', 'Castro', 'Madison', 'G', NULL, 'F', '2019-11-05', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(42, '25-1-0032', 'Chua', 'Daniel', 'T', NULL, 'M', '2019-10-30', '2025', NULL, 'Enrolled', '2025-11-09 16:57:27'),
(43, '25-1-0035', 'Pacquiao', 'Emman', 'B', 'Jr', 'M', '2020-02-02', '2025', NULL, 'Enrolled', '2025-11-13 02:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_requests`
--

CREATE TABLE `student_edit_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `requested_by_teacher_id` int(11) NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Approved','Denied') NOT NULL DEFAULT 'Pending',
  `new_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `processed_by_admin_id` int(11) DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `admin_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_edit_requests`
--

INSERT INTO `student_edit_requests` (`id`, `student_id`, `requested_by_teacher_id`, `requested_at`, `status`, `new_data`, `processed_by_admin_id`, `processed_at`, `admin_notes`) VALUES
(1, 6, 3, '2025-11-08 10:11:40', 'Pending', '{\"lrn\":\"20-1-0006\",\"surname\":\"D\",\"given_name\":\"Joana\",\"middle_name\":\"Lacruz\",\"suffix\":\"\",\"sex\":\"F\",\"birthdate\":\"2019-08-22\",\"year_enrolled\":\"2025\",\"status\":\"Enrolled\"}', NULL, NULL, NULL),
(2, 36, 3, '2025-11-12 01:13:04', 'Pending', '{\"lrn\":\"25-1-0026\",\"surname\":\"Davids\",\"given_name\":\"Michael\",\"middle_name\":\"M\",\"suffix\":\"\",\"sex\":\"M\",\"birthdate\":\"2019-09-17\",\"year_enrolled\":\"2025\",\"status\":\"Enrolled\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_code` varchar(50) DEFAULT NULL,
  `subject_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `grade_id`, `subject_code`, `subject_name`) VALUES
(1, 1, 'MT1', 'Mother Tongue'),
(2, 1, 'FIL1', 'Filipino'),
(3, 1, 'ENG1', 'English'),
(4, 1, 'MATH1', 'Mathematics'),
(5, 1, 'SCI1', 'Science'),
(6, 1, 'AP1', 'Araling Panlipunan'),
(7, 1, 'EsP1', 'Edukasyon sa Pagpapakatao'),
(8, 1, 'MAPEH1', 'Music, Arts, Physical Education, and Health'),
(9, 2, 'MT2', 'Mother Tongue'),
(10, 2, 'FIL2', 'Filipino'),
(11, 2, 'ENG2', 'English'),
(12, 2, 'MATH2', 'Mathematics'),
(13, 2, 'SCI2', 'Science'),
(14, 2, 'AP2', 'Araling Panlipunan'),
(15, 2, 'EsP2', 'Edukasyon sa Pagpapakatao'),
(16, 2, 'MAPEH2', 'Music, Arts, Physical Education, and Health'),
(17, 3, 'MT3', 'Mother Tongue'),
(18, 3, 'FIL3', 'Filipino'),
(19, 3, 'ENG3', 'English'),
(20, 3, 'MATH3', 'Mathematics'),
(21, 3, 'SCI3', 'Science'),
(22, 3, 'AP3', 'Araling Panlipunan'),
(23, 3, 'EsP3', 'Edukasyon sa Pagpapakatao'),
(24, 3, 'MAPEH3', 'Music, Arts, Physical Education, and Health'),
(25, 4, 'FIL4', 'Filipino'),
(26, 4, 'ENG4', 'English'),
(27, 4, 'MATH4', 'Mathematics'),
(28, 4, 'SCI4', 'Science'),
(29, 4, 'AP4', 'Araling Panlipunan'),
(30, 4, 'EsP4', 'Edukasyon sa Pagpapakatao'),
(31, 4, 'MAPEH4', 'Music, Arts, Physical Education, and Health'),
(32, 4, 'EPP4', 'Edukasyong Pantahanan at Pangkabuhayan'),
(33, 5, 'FIL5', 'Filipino'),
(34, 5, 'ENG5', 'English'),
(35, 5, 'MATH5', 'Mathematics'),
(36, 5, 'SCI5', 'Science'),
(37, 5, 'AP5', 'Araling Panlipunan'),
(38, 5, 'EsP5', 'Edukasyon sa Pagpapakatao'),
(39, 5, 'MAPEH5', 'Music, Arts, Physical Education, and Health'),
(40, 5, 'EPP5', 'Edukasyong Pantahanan at Pangkabuhayan'),
(41, 6, 'FIL6', 'Filipino'),
(42, 6, 'ENG6', 'English'),
(43, 6, 'MATH6', 'Mathematics'),
(44, 6, 'SCI6', 'Science'),
(45, 6, 'AP6', 'Araling Panlipunan'),
(46, 6, 'EsP6', 'Edukasyon sa Pagpapakatao'),
(47, 6, 'MAPEH6', 'Music, Arts, Physical Education, and Health'),
(48, 6, 'EPP6', 'Edukasyong Pantahanan at Pangkabuhayan');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assignments`
--

CREATE TABLE `teacher_assignments` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_adviser` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_assignments`
--

INSERT INTO `teacher_assignments` (`id`, `teacher_id`, `class_id`, `subject_id`, `is_primary`, `is_adviser`) VALUES
(1, 3, NULL, 35, 0, 0),
(2, 4, NULL, 6, 0, 0),
(3, 4, NULL, 7, 0, 0),
(4, 4, 1, 6, 0, 0),
(6, 4, 7, 3, 0, 0),
(7, 4, 7, 8, 0, 0),
(8, 4, 11, 8, 0, 0),
(9, 3, 8, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `teacher_id`, `subject_id`, `class_id`, `assigned_at`) VALUES
(1, 4, 1, NULL, '2025-11-08 08:06:59'),
(3, 6, 2, NULL, '2025-11-09 04:50:14'),
(4, 3, 8, NULL, '2025-11-10 07:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `role` enum('admin','teacher') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`, `is_active`, `first_name`, `middle_name`, `last_name`, `suffix`, `designation`, `email`, `created_at`) VALUES
(2, 'admin', '$2y$10$cJhJUfh.7ze5bF/JW.vo3eeljd2tV8A464xmhK6i4wxZ30FQSxva.', 'admin', 1, 'System', NULL, 'Administrator', NULL, NULL, 'admin@example.com', '2025-10-31 11:00:30'),
(3, 'teacher1', '$2y$10$KbvUajxDsXtQt69AuIDZFOoxMUJbsrCS1GrGl07ElE1pUnU3umisS', 'teacher', 1, 'Maria', NULL, 'MORIZ', NULL, NULL, 'maria@gmail.com', '2025-10-31 15:20:05'),
(4, 'teacher2', '$2y$10$1JIrNdE4NmLE7BOFT3vIN.u4/rFm/fRibApg9jHk/8HnHK92W2U5a', 'teacher', 1, 'alucarding', '', 'alu', '', 'Master Teacher II', 'wqw@gmail.com', '2025-10-31 17:50:21'),
(5, 'admin1', '$2y$10$qCmz0RIIoj8t5FuzG2UvSu9LatSABXHgh5lo9XO8sh5mSIBUOHqZy', 'admin', 1, 'New', NULL, 'Administrator', NULL, NULL, 'new@example.com', '2025-11-05 13:02:08'),
(6, 'morgan', '$2y$10$Ylqojryfv0tmyv9HUbLe4.pR4tOdZcjwxShQ3/Xlt9wrptxqTWLf.', 'teacher', 1, 'Arthur', 'Y', 'Morgan', 'Sr.', 'Master Teacher I', 'arthurmorgan@gmail.com', '2025-11-08 08:27:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grade_level_id` (`grade_level_id`),
  ADD KEY `school_year_id` (`school_year_id`),
  ADD KEY `fk_classes_adviser` (`adviser_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_in_class` (`student_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `form_requests`
--
ALTER TABLE `form_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_form_requests_student` (`student_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `uploaded_by` (`uploaded_by`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `idx_grades_school_year` (`school_year_id`),
  ADD KEY `idx_grades_grade_level` (`grade_level_id`);

--
-- Indexes for table `grade_audit`
--
ALTER TABLE `grade_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploaded_by_id` (`uploaded_by_id`);

--
-- Indexes for table `grade_levels`
--
ALTER TABLE `grade_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `late_grade_requests`
--
ALTER TABLE `late_grade_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_teacher` (`requesting_teacher_id`),
  ADD KEY `idx_student` (`student_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `school_year_id` (`school_year_id`),
  ADD KEY `reviewed_by` (`reviewed_by`);

--
-- Indexes for table `school_years`
--
ALTER TABLE `school_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lrn` (`lrn`);

--
-- Indexes for table `student_edit_requests`
--
ALTER TABLE `student_edit_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `requested_by_teacher_id` (`requested_by_teacher_id`),
  ADD KEY `processed_by_admin_id` (`processed_by_admin_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_teacher_assign_class` (`teacher_id`,`subject_id`,`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_role_idx` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `form_requests`
--
ALTER TABLE `form_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `grade_audit`
--
ALTER TABLE `grade_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade_levels`
--
ALTER TABLE `grade_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `late_grade_requests`
--
ALTER TABLE `late_grade_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school_years`
--
ALTER TABLE `school_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `student_edit_requests`
--
ALTER TABLE `student_edit_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_classes_adviser` FOREIGN KEY (`adviser_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_classes_grade_level` FOREIGN KEY (`grade_level_id`) REFERENCES `grade_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_classes_school_year` FOREIGN KEY (`school_year_id`) REFERENCES `school_years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `fk_enrollments_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_enrollments_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_requests`
--
ALTER TABLE `form_requests`
  ADD CONSTRAINT `fk_form_requests_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `fk_grades_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_grades_transferee_gl` FOREIGN KEY (`grade_level_id`) REFERENCES `grade_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_grades_transferee_sy` FOREIGN KEY (`school_year_id`) REFERENCES `school_years` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `grade_audit`
--
ALTER TABLE `grade_audit`
  ADD CONSTRAINT `grade_audit_ibfk_1` FOREIGN KEY (`uploaded_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `late_grade_requests`
--
ALTER TABLE `late_grade_requests`
  ADD CONSTRAINT `late_grade_requests_ibfk_1` FOREIGN KEY (`requesting_teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `late_grade_requests_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `late_grade_requests_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `late_grade_requests_ibfk_4` FOREIGN KEY (`school_year_id`) REFERENCES `school_years` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `late_grade_requests_ibfk_5` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `student_edit_requests`
--
ALTER TABLE `student_edit_requests`
  ADD CONSTRAINT `student_edit_requests_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_edit_requests_ibfk_2` FOREIGN KEY (`requested_by_teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_edit_requests_ibfk_3` FOREIGN KEY (`processed_by_admin_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `teacher_assignments`
--
ALTER TABLE `teacher_assignments`
  ADD CONSTRAINT `fk_assignments_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_assignments_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_assignments_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `teacher_subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_subjects_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
