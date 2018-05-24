-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2018 at 08:44 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `logs_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `type` text NOT NULL,
  `remarks` text NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`, `patient_id`) VALUES
(1, 25, '2018-04-22 21:10:15', 'log', 'Logged in', NULL),
(2, 25, '2018-04-22 21:14:54', 'addUser', 'Added user: Alyssa Mendoza', NULL),
(3, 25, '2018-04-22 21:15:59', 'addUser', 'Added user: Dominique Valdez', NULL),
(4, 25, '2018-04-22 21:17:36', 'addUser', 'Added user: Jeffrey Maneclang', NULL),
(5, 25, '2018-04-22 21:18:34', 'addUser', 'Added user: Kyla Corpuz', NULL),
(6, 25, '2018-04-22 21:20:55', 'settingsProfileManagement', 'Edited personal info.', NULL),
(7, 25, '2018-04-22 21:20:55', 'log', 'Logged out', NULL),
(8, 25, '2018-04-22 21:20:59', 'log', 'Logged in', NULL),
(9, 25, '2018-04-22 21:21:52', 'urgentTodo', 'Added to do urgent: General Meeting at Lim Hall', NULL),
(10, 25, '2018-04-22 21:22:02', 'log', 'Logged out', NULL),
(11, 40, '2018-04-22 21:22:06', 'log', 'Logged in', NULL),
(12, 40, '2018-04-22 21:22:09', 'log', 'Logged out', NULL),
(13, 41, '2018-04-22 21:22:14', 'log', 'Logged in', NULL),
(14, 41, '2018-04-22 21:28:43', 'add', 'Added: Military Officer - Greg Chicoine', NULL),
(15, 41, '2018-04-22 21:39:41', 'add', 'Added: Military Dependent - Carla Chicoine', NULL),
(16, 41, '2018-04-22 21:41:42', 'add', 'Added: Civilian - Rose Miller', NULL),
(17, 41, '2018-04-22 21:45:36', 'add', 'Added: Authorized Civilian - Roberto Garcia', NULL),
(18, 41, '2018-04-22 21:54:05', 'add', 'Added: Cadet - David Estrella', NULL),
(19, 41, '2018-04-22 21:58:55', 'add', 'Added: Cadet - Tom Aldrin III', NULL),
(20, 41, '2018-04-22 22:00:18', 'add', 'Added: Cadet - Hailey Sanchez', NULL),
(21, 41, '2018-04-22 22:02:05', 'add', 'Added: Military Officer - Teo Boston', NULL),
(22, 41, '2018-04-22 22:03:33', 'add', 'Added: Military Officer - Rachelle Ortega', NULL),
(23, 41, '2018-04-22 22:04:44', 'patientInfoEdit', 'Edited patient Information of Rachelle Ortega', 96),
(24, 41, '2018-04-22 22:05:31', 'add', 'Added: Military Dependent - Mikhee Ortega', NULL),
(25, 41, '2018-04-22 22:06:57', 'add', 'Added: Civilian - Miguel Santos', NULL),
(26, 41, '2018-04-22 22:08:35', 'add', 'Added: Civilian - Joey Cortez', NULL),
(27, 41, '2018-04-22 22:09:57', 'add', 'Added: Authorized Civilian - Melissa Corpuz', NULL),
(28, 41, '2018-04-22 22:10:12', 'bed', 'allotted bed number 1 for ER patient Melissa Corpuz', 100),
(29, 41, '2018-04-22 22:10:12', 'er', 'Added ER patient Melissa Corpuz', 100),
(30, 41, '2018-04-22 22:10:38', 'generalTodo', 'Added to do general: Department Meeting', NULL),
(31, 41, '2018-04-22 22:11:27', 'initialAssessment', 'Outpatient Assessment for Rose Miller', 90),
(32, 41, '2018-04-22 22:11:54', 'initialAssessment', 'Outpatient Assessment for Carla Chicoine', 89),
(33, 41, '2018-04-22 22:12:28', 'initialAssessment', 'Outpatient Assessment for Miguel Santos', 98),
(34, 41, '2018-04-22 22:13:03', 'initialAssessment', 'Outpatient Assessment for Tom Aldrin III', 93),
(35, 41, '2018-04-22 22:13:38', 'initialAssessment', 'Outpatient Assessment for Greg Chicoine', 88),
(36, 41, '2018-04-22 22:14:08', 'initialAssessment', 'Outpatient Assessment for Mikhee Ortega', 97),
(37, 41, '2018-04-22 22:14:14', 'bed', 'allotted bed number 4 for ER patient Teo Boston', 95),
(38, 41, '2018-04-22 22:14:14', 'er', 'Added ER patient Teo Boston', 95),
(39, 41, '2018-04-22 22:14:36', 'bedDischarge', 'Discharged a patient from bed number : 4', NULL),
(40, 41, '2018-04-22 22:14:40', 'log', 'Logged out', NULL),
(41, 40, '2018-04-22 22:14:45', 'log', 'Logged in', NULL),
(42, 40, '2018-04-22 22:15:05', 'appointment', 'Set Appointment with Rose Miller on 2018-04-24 10:00:00', NULL),
(43, 40, '2018-04-22 22:15:35', 'urgentTodo', 'Added to do urgent: General Meeting at Lim Hall', NULL),
(44, 40, '2018-04-22 22:16:01', 'labRequest', 'Lab request for : Tom Aldrin III', NULL),
(45, 40, '2018-04-22 22:16:13', 'bed', 'Alloted bed number: 3 to patient:Miguel Santos', 98),
(46, 40, '2018-04-22 22:16:51', 'bedDischarge', 'Discharged a patient from bed number : 3', 98),
(47, 40, '2018-04-22 22:17:16', 'labRequest', 'Lab request for : Carla Chicoine', NULL),
(48, 40, '2018-04-22 22:17:49', 'prescription', 'Prescribed a medicine to : Rose Miller', NULL),
(49, 40, '2018-04-22 22:18:17', 'prescription', 'Prescribed a medicine to : Mikhee Ortega', NULL),
(50, 40, '2018-04-22 22:19:11', 'prescription', 'Prescribed a medicine to : Greg Chicoine', NULL),
(51, 40, '2018-04-22 22:19:29', 'log', 'Logged out', NULL),
(52, 38, '2018-04-22 22:19:33', 'log', 'Logged in', NULL),
(53, 38, '2018-04-22 22:19:48', 'approvedPrescription', 'Approved prescription for: Greg Chicoine', NULL),
(54, 38, '2018-04-22 22:20:22', 'settingsProfileManagement', 'Edited personal info.', NULL),
(55, 38, '2018-04-22 22:20:25', 'log', 'Logged out', NULL),
(56, 39, '2018-04-22 22:20:35', 'log', 'Logged in', NULL),
(57, 39, '2018-04-22 22:20:43', 'confirmedLabRequest', 'Confirmed lab request for: Tom Aldrin III', NULL),
(58, 39, '2018-04-22 22:20:55', 'settingsProfileManagement', 'Edited personal info.', NULL),
(59, 39, '2018-04-22 22:20:59', 'log', 'Logged out', NULL),
(60, 41, '2018-04-22 22:21:02', 'log', 'Logged in', NULL),
(61, 41, '2018-04-22 22:21:14', 'settingsProfileManagement', 'Edited personal info.', NULL),
(62, 41, '2018-04-22 22:21:16', 'log', 'Logged out', NULL),
(63, 40, '2018-04-22 22:21:20', 'log', 'Logged in', NULL),
(64, 40, '2018-04-22 22:21:27', 'confirmOPD', 'Confirmed patient on OPD, named: Greg Chicoine !', 6),
(65, 40, '2018-04-22 22:21:51', 'settingsProfileManagement', 'Edited personal info.', NULL),
(66, 40, '2018-04-22 22:21:54', 'log', 'Logged out', NULL),
(67, 40, '2018-04-23 09:05:13', 'log', 'Logged in', NULL),
(68, 40, '2018-04-23 09:21:13', 'log', 'Logged out', NULL),
(69, 41, '2018-04-23 09:21:28', 'log', 'Logged in', NULL),
(70, 40, '2018-04-23 09:23:07', 'log', 'Logged in', NULL),
(71, 40, '2018-04-23 09:23:38', 'log', 'Logged in', NULL),
(72, 41, '2018-04-23 09:29:13', 'log', 'Logged in', NULL),
(73, 41, '2018-04-23 09:50:45', 'log', 'Logged in', NULL),
(74, 41, '2018-04-23 09:53:48', 'log', 'Logged out', NULL),
(75, 40, '2018-04-23 09:53:52', 'log', 'Logged in', NULL),
(76, 41, '2018-04-23 10:04:23', 'log', 'Logged in', NULL),
(77, 41, '2018-04-23 10:05:04', 'initialAssessment', 'Outpatient Assessment for Roberto Garcia', 91),
(78, 40, '2018-04-23 10:07:56', 'labRequest', 'Lab request for : Roberto Garcia', NULL),
(79, 41, '2018-04-23 10:08:13', 'log', 'Logged out', NULL),
(80, 39, '2018-04-23 10:08:19', 'log', 'Logged in', NULL),
(81, 39, '2018-04-23 10:08:32', 'confirmedLabRequest', 'Confirmed lab request for: Roberto Garcia', NULL),
(82, 40, '2018-04-23 10:09:32', 'confirmOPD', 'Confirmed patient on OPD, named: Roberto Garcia !', 9),
(83, 39, '2018-04-23 10:25:05', 'log', 'Logged out', NULL),
(84, 38, '2018-04-23 10:25:18', 'log', 'Logged in', NULL),
(85, 40, '2018-04-23 10:25:39', 'prescription', 'Prescribed a medicine to : Rose Miller', NULL),
(86, 38, '2018-04-23 10:34:57', 'log', 'Logged out', NULL),
(87, 41, '2018-04-23 10:35:00', 'log', 'Logged in', NULL),
(88, 41, '2018-04-23 10:35:04', 'bed', 'allotted bed number 2 for ER patient Greg Chicoine', 88),
(89, 41, '2018-04-23 10:35:04', 'er', 'Added ER patient Greg Chicoine', 88),
(90, 40, '2018-04-23 10:41:03', 'bedDischarge', 'Discharged a patient from bed number : 1', 100),
(91, 40, '2018-04-23 10:41:03', 'confirmER', 'Confirmed patient on WARD/ER, named: Melissa Corpuz!', 100),
(92, 41, '2018-04-23 10:46:33', 'log', 'Logged out', NULL),
(93, 25, '2018-04-23 10:46:36', 'log', 'Logged in', NULL),
(94, 25, '2018-04-23 10:48:51', 'addUser', 'Added user: doctor2', NULL),
(95, 25, '2018-04-23 10:48:57', 'log', 'Logged out', NULL),
(96, 41, '2018-04-23 10:49:01', 'log', 'Logged in', NULL),
(97, 41, '2018-04-23 10:50:18', 'bed', 'allotted bed number 1 for ER patient Roberto Garcia', 91),
(98, 41, '2018-04-23 10:50:18', 'er', 'Added ER patient Roberto Garcia', 91),
(99, 40, '2018-04-23 10:50:31', 'log', 'Logged out', NULL),
(100, 42, '2018-04-23 10:50:35', 'log', 'Logged in', NULL),
(101, 42, '2018-04-23 10:54:23', 'bedDischarge', 'Discharged a patient from bed number : 1', 91),
(102, 42, '2018-04-23 10:54:23', 'confirmER', 'Confirmed patient on WARD/ER, named: Roberto Garcia!', 91),
(103, 41, '2018-04-23 10:54:54', 'bed', 'allotted bed number 1 for ER patient Roberto Garcia', 91),
(104, 41, '2018-04-23 10:54:54', 'er', 'Added ER patient Roberto Garcia', 91),
(105, 42, '2018-04-23 10:55:29', 'log', 'Logged out', NULL),
(106, 40, '2018-04-23 10:55:33', 'log', 'Logged in', NULL),
(107, 40, '2018-04-23 10:55:42', 'bedDischarge', 'Discharged a patient from bed number : 1', 91),
(108, 40, '2018-04-23 10:55:42', 'confirmER', 'Confirmed patient on WARD/ER, named: Roberto Garcia!', 91),
(109, 40, '2018-04-23 10:58:54', 'log', 'Logged out', NULL),
(110, 25, '2018-04-23 10:58:58', 'log', 'Logged in', NULL),
(111, 41, '2018-04-23 11:06:12', 'log', 'Logged out', NULL),
(112, 40, '2018-04-23 11:06:15', 'log', 'Logged in', NULL),
(113, 25, '2018-04-23 11:11:21', 'log', 'Logged out', NULL),
(114, 41, '2018-04-23 11:11:26', 'log', 'Logged in', NULL),
(115, 41, '2018-05-09 00:24:58', 'log', 'Logged in', NULL),
(116, 25, '2018-05-10 21:23:45', 'log', 'Logged in', NULL),
(117, 25, '2018-05-10 21:32:59', 'log', 'Logged out', NULL),
(118, 41, '2018-05-10 21:33:04', 'log', 'Logged in', NULL),
(119, 41, '2018-05-10 21:52:05', 'log', 'Logged in', NULL),
(120, 41, '2018-05-10 21:52:46', 'add', 'Added: Military Dependent - Joey Tribbiani', NULL),
(121, 41, '2018-05-10 21:55:14', 'add', 'Added: Military Officer - Phoebe Buffay', NULL),
(122, 41, '2018-05-11 00:25:55', 'log', 'Logged in', NULL),
(123, 41, '2018-05-11 00:29:45', 'log', 'Logged out', NULL),
(124, 40, '2018-05-11 00:29:49', 'log', 'Logged in', NULL),
(125, 40, '2018-05-11 00:30:24', 'log', 'Logged out', NULL),
(126, 25, '2018-05-11 00:30:28', 'log', 'Logged in', NULL),
(127, 25, '2018-05-11 00:30:49', 'log', 'Logged out', NULL),
(128, 41, '2018-05-11 01:11:31', 'log', 'Logged in', NULL),
(129, 41, '2018-05-11 01:13:29', 'patientInfoEdit', 'Edited patient Information of Melissa Corpuz', 100),
(130, 25, '2018-05-13 08:21:59', 'log', 'Logged in', NULL),
(131, 25, '2018-05-13 08:22:17', 'log', 'Logged out', NULL),
(132, 41, '2018-05-13 08:22:20', 'log', 'Logged in', NULL),
(133, 41, '2018-05-13 09:09:15', 'log', 'Logged out', NULL),
(134, 25, '2018-05-13 09:09:18', 'log', 'Logged in', NULL),
(135, 25, '2018-05-13 09:11:26', 'log', 'Logged out', NULL),
(136, 25, '2018-05-13 11:49:20', 'log', 'Logged in', NULL),
(137, 41, '2018-05-18 16:05:06', 'log', 'Logged in', NULL),
(138, 41, '2018-05-18 16:05:56', 'log', 'Logged in', NULL),
(139, 41, '2018-05-18 16:07:30', 'log', 'Logged in', NULL),
(140, 41, '2018-05-18 16:08:29', 'log', 'Logged in', NULL),
(141, 41, '2018-05-18 16:08:40', 'add', 'Added: Cadet - qwe', NULL),
(142, 41, '2018-05-18 16:09:18', 'log', 'Logged in', NULL),
(143, 41, '2018-05-18 16:09:50', 'log', 'Logged in', NULL),
(144, 41, '2018-05-18 16:10:12', 'add', 'Added: Military Officer - qwe', NULL),
(145, 41, '2018-05-18 16:11:07', 'log', 'Logged in', NULL),
(146, 41, '2018-05-18 16:11:22', 'add', 'Added: Military Officer - qwe', NULL),
(147, 41, '2018-05-18 16:21:33', 'log', 'Logged out', NULL),
(148, 40, '2018-05-18 16:21:36', 'log', 'Logged in', NULL),
(149, 40, '2018-05-18 16:55:03', 'log', 'Logged in', NULL),
(150, 40, '2018-05-18 17:20:00', 'requestConfirmationOPD', 'Request of Confirmation sent!', 5),
(151, 40, '2018-05-18 17:31:18', 'log', 'Logged in', NULL),
(152, 40, '2018-05-18 17:31:32', 'requestConfirmationOPD', 'Request of Confirmation sent!', 5),
(153, 40, '2018-05-18 17:33:02', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(154, 40, '2018-05-18 18:23:11', 'log', 'Logged in', NULL),
(155, 40, '2018-05-18 18:23:18', 'bedDischarge', 'Discharged a patient from bed number : 2', 88),
(156, 40, '2018-05-18 18:25:21', 'log', 'Logged in', NULL),
(157, 40, '2018-05-18 18:25:25', 'bedDischarge', 'Discharged a patient from bed number : ', 88),
(158, 40, '2018-05-18 18:25:25', 'requestConfirmationER', ' Request of Confirmation sent!', 10),
(159, 40, '2018-05-18 18:26:00', 'bedDischarge', 'Discharged a patient from bed number : ', 88),
(160, 40, '2018-05-18 18:26:00', 'requestConfirmationER', ' Request of Confirmation sent!', 10),
(161, 40, '2018-05-18 18:27:18', 'bedDischarge', 'Discharged a patient from bed number : ', 88),
(162, 40, '2018-05-18 18:27:18', 'requestConfirmationER', ' Request of Confirmation sent!', 10),
(163, 40, '2018-05-18 18:27:22', 'bedDischarge', 'Discharged a patient from bed number : ', 95),
(164, 40, '2018-05-18 18:27:22', 'requestConfirmationER', ' Request of Confirmation sent!', 8),
(165, 40, '2018-05-18 18:37:44', 'log', 'Logged in', NULL),
(166, 40, '2018-05-18 18:37:51', 'bedDischarge', 'Discharged a patient from bed number : ', 88),
(167, 40, '2018-05-18 18:37:51', 'requestConfirmationER', ' Request of Confirmation sent!', 88),
(168, 40, '2018-05-18 18:38:05', 'bedDischarge', 'Discharged a patient from bed number : ', 95),
(169, 40, '2018-05-18 18:38:05', 'requestConfirmationER', ' Request of Confirmation sent!', 95),
(170, 40, '2018-05-18 18:38:47', 'cancelPrescription', 'Canceled prescription for: Rose Miller', NULL),
(171, 40, '2018-05-18 18:38:48', 'cancelPrescription', 'Canceled prescription for: Rose Miller', NULL),
(172, 40, '2018-05-18 18:40:05', 'log', 'Logged in', NULL),
(173, 40, '2018-05-18 18:40:11', 'cancelLabRequest', 'Canceled lab request for: Carla Chicoine', NULL),
(174, 40, '2018-05-18 18:41:10', 'log', 'Logged in', NULL),
(175, 40, '2018-05-18 18:41:17', 'cancelPrescription', 'Canceled prescription for: Mikhee Ortega', NULL),
(176, 40, '2018-05-18 18:41:25', 'requestConfirmationOPD', 'Request of Confirmation sent!', 97),
(177, 40, '2018-05-18 18:44:51', 'log', 'Logged in', NULL),
(178, 25, '2018-05-18 18:45:13', 'log', 'Logged in', NULL),
(179, 25, '2018-05-18 18:45:43', 'log', 'Logged out', NULL),
(180, 42, '2018-05-18 18:45:46', 'log', 'Logged in', NULL),
(181, 42, '2018-05-18 18:46:00', 'labRequest', 'Lab request for : Tom Aldrin III', NULL),
(182, 40, '2018-05-18 18:47:11', 'prescription', 'Prescribed a medicine to : Tom Aldrin III', NULL),
(183, 40, '2018-05-18 19:03:23', 'log', 'Logged in', NULL),
(184, 40, '2018-05-18 19:03:30', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 93),
(185, 40, '2018-05-18 19:03:34', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 90),
(186, 40, '2018-05-18 19:03:58', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 95),
(187, 40, '2018-05-18 19:04:01', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 95),
(188, 40, '2018-05-18 19:05:17', 'log', 'Logged in', NULL),
(189, 40, '2018-05-18 19:05:21', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 95),
(190, 40, '2018-05-18 19:05:24', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(191, 40, '2018-05-18 19:05:24', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(192, 40, '2018-05-18 19:05:29', 'requestConfirmationOPD', 'Request of Confirmation sent!', 90),
(193, 40, '2018-05-18 19:05:31', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 90),
(194, 40, '2018-05-18 19:05:34', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 97),
(195, 40, '2018-05-18 19:05:37', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 95),
(196, 40, '2018-05-18 19:05:39', 'bedDischarge', 'Discharged a patient from bed number : ', 88),
(197, 40, '2018-05-18 19:05:39', 'requestConfirmationER', ' Request of Confirmation sent!', 88),
(198, 40, '2018-05-18 19:05:43', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(199, 40, '2018-05-18 19:05:43', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(200, 40, '2018-05-18 19:07:06', 'log', 'Logged in', NULL),
(201, 40, '2018-05-18 19:08:05', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 89),
(202, 40, '2018-05-18 19:08:08', 'requestConfirmationOPD', 'Request of Confirmation sent!', 90),
(203, 40, '2018-05-18 19:08:22', 'bed', 'Alloted bed number: 1 to patient:Miguel Santos', 98),
(204, 40, '2018-05-18 19:08:24', 'bedDischarge', 'Discharged a patient from bed number : 1', 98),
(205, 40, '2018-05-18 19:08:27', 'bed', 'Alloted bed number: 1 to patient:Miguel Santos', 98),
(206, 40, '2018-05-18 19:08:29', 'bedDischarge', 'Discharged a patient from bed number : 1', 98),
(207, 40, '2018-05-18 19:08:32', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(208, 40, '2018-05-18 19:08:32', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(209, 40, '2018-05-18 19:08:36', 'bedDischarge', 'Discharged a patient from bed number : ', 95),
(210, 40, '2018-05-18 19:08:36', 'requestConfirmationER', ' Request of Confirmation sent!', 95),
(211, 40, '2018-05-18 19:33:52', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(212, 40, '2018-05-18 19:33:52', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(213, 40, '2018-05-18 19:33:55', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 88),
(214, 40, '2018-05-18 19:33:58', 'requestConfirmationOPD', 'Request of Confirmation sent!', 89),
(215, 40, '2018-05-18 19:34:00', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 89),
(216, 40, '2018-05-18 19:34:05', 'bedDischarge', 'Discharged a patient from bed number : ', 98),
(217, 40, '2018-05-18 19:34:05', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(218, 40, '2018-05-18 19:36:51', 'bedDischarge', 'Discharged a patient from bed number : undefined', 89),
(219, 40, '2018-05-18 19:36:51', 'requestConfirmationER', ' Request of Confirmation sent!', 89),
(220, 40, '2018-05-18 19:37:25', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(221, 40, '2018-05-18 19:37:25', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(222, 40, '2018-05-18 19:40:12', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 90),
(223, 40, '2018-05-18 19:40:14', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(224, 40, '2018-05-18 19:40:14', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(225, 40, '2018-05-18 19:40:21', 'labRequest', 'Lab request for : Miguel Santos', NULL),
(226, 40, '2018-05-18 19:42:34', 'log', 'Logged in', NULL),
(227, 40, '2018-05-18 19:42:42', 'bedDischarge', 'Discharged a patient from bed number : undefined', 88),
(228, 40, '2018-05-18 19:42:42', 'requestConfirmationER', ' Request of Confirmation sent!', 88),
(229, 40, '2018-05-18 19:42:45', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 88),
(230, 40, '2018-05-18 19:42:52', 'cancelLabRequest', 'Canceled lab request for: Miguel Santos', NULL),
(231, 40, '2018-05-18 19:43:13', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(232, 40, '2018-05-18 19:43:13', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(233, 40, '2018-05-18 19:43:16', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 98),
(234, 40, '2018-05-18 19:43:25', 'bed', 'Alloted bed number: 1 to patient:Miguel Santos', 98),
(235, 40, '2018-05-18 19:51:09', 'log', 'Logged in', NULL),
(236, 40, '2018-05-18 19:51:18', 'log', 'Logged in', NULL),
(237, 40, '2018-05-18 19:51:23', 'bedDischarge', 'Discharged a patient from bed number : 1', 98),
(238, 40, '2018-05-18 19:51:26', 'bed', 'Alloted bed number: 1 to patient:Miguel Santos', 98),
(239, 40, '2018-05-18 19:51:28', 'bedDischarge', 'Discharged a patient from bed number : 1', 98),
(240, 40, '2018-05-18 19:51:34', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(241, 40, '2018-05-18 19:51:34', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(242, 40, '2018-05-18 19:51:37', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 98),
(243, 40, '2018-05-18 19:51:39', 'bedDischarge', 'Discharged a patient from bed number : undefined', 95),
(244, 40, '2018-05-18 19:51:39', 'requestConfirmationER', ' Request of Confirmation sent!', 95),
(245, 40, '2018-05-18 19:51:41', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 95),
(246, 40, '2018-05-18 19:53:10', 'labRequest', 'Lab request for : Rose Miller', NULL),
(247, 40, '2018-05-18 20:17:02', 'log', 'Logged in', NULL),
(248, 40, '2018-05-18 20:19:26', 'requestConfirmationOPD', 'Request of Confirmation sent!', 89),
(249, 41, '2018-05-18 20:34:23', 'log', 'Logged in', NULL),
(250, 41, '2018-05-18 20:34:27', 'bed', 'allotted bed number 1 for ER patient Roberto Garcia', 91),
(251, 41, '2018-05-18 20:34:27', 'er', 'Added ER patient Roberto Garcia', 91),
(252, 40, '2018-05-18 20:34:54', 'bedDischarge', 'Discharged a patient from bed number : 1', 91),
(253, 40, '2018-05-18 20:34:56', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(254, 40, '2018-05-18 20:34:56', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(255, 40, '2018-05-18 20:40:28', 'log', 'Logged in', NULL),
(256, 40, '2018-05-18 20:42:03', 'log', 'Logged in', NULL),
(257, 40, '2018-05-18 20:42:29', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 91),
(258, 40, '2018-05-18 20:42:34', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(259, 40, '2018-05-18 20:42:34', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(260, 40, '2018-05-18 20:43:13', 'requestConfirmationOPD', 'Request of Confirmation sent!', 97),
(261, 40, '2018-05-18 20:44:27', 'log', 'Logged in', NULL),
(262, 40, '2018-05-18 20:44:36', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(263, 40, '2018-05-18 20:44:36', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(264, 40, '2018-05-18 20:44:42', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 98),
(265, 40, '2018-05-18 20:44:46', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 91),
(266, 40, '2018-05-18 20:44:50', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 89),
(267, 40, '2018-05-18 20:44:53', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 97),
(268, 40, '2018-05-18 20:44:57', 'requestConfirmationOPD', 'Request of Confirmation sent!', 89),
(269, 40, '2018-05-18 20:45:01', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 89),
(270, 40, '2018-05-18 20:45:46', 'log', 'Logged out', NULL),
(271, 39, '2018-05-18 20:45:50', 'log', 'Logged in', NULL),
(272, 41, '2018-05-19 19:15:55', 'log', 'Logged in', NULL),
(273, 41, '2018-05-19 19:16:01', 'log', 'Logged out', NULL),
(274, 40, '2018-05-19 19:16:04', 'log', 'Logged in', NULL),
(275, 40, '2018-05-19 19:16:48', 'requestConfirmationOPD', 'Request of Confirmation sent!', 97),
(276, 40, '2018-05-19 19:17:11', 'log', 'Logged out', NULL),
(277, 39, '2018-05-19 19:17:16', 'log', 'Logged in', NULL),
(278, 39, '2018-05-19 19:20:12', 'log', 'Logged in', NULL),
(279, 39, '2018-05-19 19:28:11', 'log', 'Logged in', NULL),
(280, 39, '2018-05-19 19:30:11', 'log', 'Logged in', NULL),
(281, 39, '2018-05-19 19:34:00', 'log', 'Logged in', NULL),
(282, 39, '2018-05-19 19:34:02', 'confirmedLab', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(283, 38, '2018-05-19 19:35:40', 'log', 'Logged in', NULL),
(284, 38, '2018-05-19 19:35:59', 'log', 'Logged in', NULL),
(285, 38, '2018-05-19 19:36:14', 'confirmedLab', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(286, 38, '2018-05-19 19:36:43', 'confirmedLab', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(287, 38, '2018-05-19 19:36:59', 'log', 'Logged in', NULL),
(288, 38, '2018-05-19 19:37:00', 'confirmedLab', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(289, 38, '2018-05-19 19:37:24', 'log', 'Logged out', NULL),
(290, 40, '2018-05-19 19:37:27', 'log', 'Logged in', NULL),
(291, 40, '2018-05-19 19:41:54', 'log', 'Logged in', NULL),
(292, 40, '2018-05-19 19:43:34', 'log', 'Logged in', NULL),
(293, 40, '2018-05-19 19:51:47', 'log', 'Logged in', NULL),
(294, 40, '2018-05-19 19:53:28', 'log', 'Logged in', NULL),
(295, 40, '2018-05-19 19:57:24', 'log', 'Logged in', NULL),
(296, 40, '2018-05-19 19:58:09', 'log', 'Logged in', NULL),
(297, 40, '2018-05-19 19:58:15', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(298, 40, '2018-05-19 19:59:38', 'log', 'Logged in', NULL),
(299, 40, '2018-05-19 20:00:29', 'log', 'Logged in', NULL),
(300, 40, '2018-05-19 20:00:32', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(301, 40, '2018-05-19 20:00:35', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(302, 40, '2018-05-19 20:03:13', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(303, 40, '2018-05-19 20:03:16', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(304, 40, '2018-05-19 20:03:34', 'requestConfirmationOPD', 'Request of Confirmation sent!', 89),
(305, 40, '2018-05-19 20:08:03', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(306, 40, '2018-05-19 20:08:37', 'log', 'Logged in', NULL),
(307, 40, '2018-05-19 20:08:41', 'confirmedHisto', 'Confirmed Discharge Request for patient Mikhee Ortega', NULL),
(308, 40, '2018-05-19 20:09:15', 'log', 'Logged in', NULL),
(309, 40, '2018-05-19 20:10:41', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 89),
(310, 40, '2018-05-19 20:10:47', 'requestConfirmationOPD', 'Request of Confirmation sent!', 89),
(311, 40, '2018-05-19 20:13:20', 'log', 'Logged in', NULL),
(312, 40, '2018-05-19 20:13:25', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(313, 40, '2018-05-19 20:13:30', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(314, 40, '2018-05-19 20:14:04', 'log', 'Logged in', NULL),
(315, 40, '2018-05-19 20:14:08', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(316, 40, '2018-05-19 20:15:25', 'log', 'Logged in', NULL),
(317, 40, '2018-05-19 20:15:29', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(318, 40, '2018-05-19 20:15:42', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(319, 40, '2018-05-19 20:16:38', 'log', 'Logged in', NULL),
(320, 40, '2018-05-19 20:17:29', 'log', 'Logged in', NULL),
(321, 40, '2018-05-19 20:18:23', 'confirmedHisto', 'Confirmed Discharge Request for patient Carla Chicoine', NULL),
(322, 40, '2018-05-19 20:18:41', 'log', 'Logged in', NULL),
(323, 40, '2018-05-19 20:18:46', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(324, 40, '2018-05-19 20:18:46', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(325, 40, '2018-05-19 20:19:25', 'bedDischarge', 'Discharged a patient from bed number : undefined', 98),
(326, 40, '2018-05-19 20:19:25', 'requestConfirmationER', ' Request of Confirmation sent!', 98),
(327, 40, '2018-05-19 20:19:30', 'log', 'Logged out', NULL),
(328, 39, '2018-05-19 20:19:33', 'log', 'Logged in', NULL),
(329, 39, '2018-05-19 20:19:35', 'confirmedLab', 'Confirmed lab discharge Request for patient Miguel Santos', NULL),
(330, 39, '2018-05-19 20:19:36', 'confirmedLab', 'Confirmed lab discharge Request for patient Roberto Garcia', NULL),
(331, 39, '2018-05-19 20:47:09', 'log', 'Logged out', NULL),
(332, 40, '2018-05-19 20:50:07', 'log', 'Logged in', NULL),
(333, 40, '2018-05-19 20:53:16', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 91),
(334, 40, '2018-05-19 20:53:22', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 98),
(335, 40, '2018-05-19 20:53:28', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(336, 40, '2018-05-19 20:53:28', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(337, 40, '2018-05-19 20:59:22', 'log', 'Logged in', NULL),
(338, 40, '2018-05-19 21:00:13', 'log', 'Logged in', NULL),
(339, 40, '2018-05-19 21:01:35', 'log', 'Logged in', NULL),
(340, 40, '2018-05-19 21:02:10', 'log', 'Logged in', NULL),
(341, 40, '2018-05-19 21:15:34', 'log', 'Logged in', NULL),
(342, 40, '2018-05-19 21:20:17', 'log', 'Logged in', NULL),
(343, 40, '2018-05-19 21:21:54', 'log', 'Logged in', NULL),
(344, 40, '2018-05-19 21:23:06', 'log', 'Logged in', NULL),
(345, 40, '2018-05-19 21:23:32', 'patientInfoEdit', 'Edited patient Information of Roberto Garciaaaa', 91),
(346, 40, '2018-05-19 21:25:32', 'log', 'Logged in', NULL),
(347, 40, '2018-05-19 21:27:30', 'patientInfoEdit', 'Edited patient Information of Roberto Garciaaaashhh', 91),
(348, 40, '2018-05-19 21:29:38', 'patientInfoEdit', 'Edited patient Information of Tom Aldrin III tae', 93),
(349, 40, '2018-05-19 21:30:34', 'patientInfoEdit', 'Edited patient Information of Tom Aldrin III blah', 93),
(350, 40, '2018-05-19 21:31:58', 'log', 'Logged in', NULL),
(351, 40, '2018-05-19 21:32:07', 'patientInfoEdit', 'Edited patient Information of Tom Aldrin III blah blahs', 93),
(352, 40, '2018-05-19 21:32:21', 'patientInfoEdit', 'Edited patient Information of Tom Aldrin III blah blahsasdasda', 93),
(353, 40, '2018-05-19 21:32:45', 'log', 'Logged in', NULL),
(354, 40, '2018-05-19 21:32:52', 'patientInfoEdit', 'Edited patient Information of Roberto Garciaaaashhhqweqwe', 91),
(355, 40, '2018-05-19 21:32:59', 'patientInfoEdit', 'Edited patient Information of Tom Aldrin III blah blahsasdasdaasdasda', 93),
(356, 40, '2018-05-19 21:35:31', 'patientInfoEdit', 'Edited patient Information of Melissa Corpuzal', 100),
(357, 40, '2018-05-19 21:35:40', 'patientInfoEdit', 'Edited patient Information of Melissa Corpuzal', 100),
(358, 40, '2018-05-19 21:46:38', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 91),
(359, 40, '2018-05-19 21:50:19', 'cancelLabRequest', 'Canceled lab request for: Rose Miller', NULL),
(360, 40, '2018-05-19 21:50:26', 'requestConfirmationOPD', 'Request of Confirmation sent!', 90),
(361, 40, '2018-05-19 21:50:32', 'bed', 'Alloted bed number: 1 to patient:Roberto Garciaaaashhhqweqwe', 91),
(362, 40, '2018-05-19 21:50:35', 'bedDischarge', 'Discharged a patient from bed number : 1', 91),
(363, 40, '2018-05-19 21:52:41', 'calcelRequestConfirmationOPD', 'Request of Confirmation Cancelled!', 90),
(364, 40, '2018-05-19 21:59:48', 'log', 'Logged in', NULL),
(365, 40, '2018-05-19 22:01:01', 'log', 'Logged in', NULL),
(366, 40, '2018-05-19 22:01:57', 'log', 'Logged in', NULL),
(367, 40, '2018-05-19 22:02:51', 'log', 'Logged in', NULL),
(368, 40, '2018-05-19 22:04:26', 'log', 'Logged in', NULL),
(369, 40, '2018-05-19 22:04:30', 'log', 'Logged out', NULL),
(370, 41, '2018-05-19 22:04:33', 'log', 'Logged in', NULL),
(371, 41, '2018-05-19 23:27:10', 'log', 'Logged in', NULL),
(372, 41, '2018-05-19 23:27:41', 'log', 'Logged out', NULL),
(373, 40, '2018-05-19 23:27:44', 'log', 'Logged in', NULL),
(374, 40, '2018-05-20 00:04:29', 'log', 'Logged in', NULL),
(375, 40, '2018-05-20 00:05:14', 'log', 'Logged in', NULL),
(376, 40, '2018-05-20 00:05:45', 'log', 'Logged in', NULL),
(377, 40, '2018-05-20 00:20:48', 'log', 'Logged in', NULL),
(378, 40, '2018-05-20 00:21:18', 'log', 'Logged out', NULL),
(379, 40, '2018-05-20 00:22:01', 'log', 'Logged in', NULL),
(380, 40, '2018-05-20 00:22:09', 'log', 'Logged out', NULL),
(381, 40, '2018-05-20 00:23:31', 'log', 'Logged in', NULL),
(382, 40, '2018-05-20 00:23:44', 'log', 'Logged out', NULL),
(383, 40, '2018-05-20 00:23:44', 'log', 'Logged out', NULL),
(384, 40, '2018-05-20 00:23:44', 'log', 'Logged out', NULL),
(385, 40, '2018-05-20 00:23:56', 'log', 'Logged in', NULL),
(386, 40, '2018-05-20 00:24:03', 'log', 'Logged out', NULL),
(387, 40, '2018-05-20 00:26:02', 'log', 'Logged in', NULL),
(388, 40, '2018-05-20 00:35:23', 'log', 'Logged out', NULL),
(389, 40, '2018-05-20 01:08:02', 'log', 'Logged in', NULL),
(390, 40, '2018-05-20 01:08:23', 'log', 'Logged out', NULL),
(391, 40, '2018-05-20 01:08:23', 'log', 'Logged out', NULL),
(392, 40, '2018-05-20 01:08:23', 'log', 'Logged out', NULL),
(393, 40, '2018-05-20 01:09:16', 'log', 'Logged in', NULL),
(394, 40, '2018-05-20 01:09:51', 'log', 'Logged out', NULL),
(395, 40, '2018-05-20 01:09:51', 'log', 'Logged out', NULL),
(396, 40, '2018-05-20 01:09:51', 'log', 'Logged out', NULL),
(397, 40, '2018-05-20 01:10:06', 'log', 'Logged in', NULL),
(398, 40, '2018-05-20 01:10:59', 'log', 'Logged out', NULL),
(399, 40, '2018-05-20 01:11:06', 'log', 'Logged in', NULL),
(400, 40, '2018-05-20 01:11:45', 'log', 'Logged out', NULL),
(401, 40, '2018-05-20 01:13:13', 'log', 'Logged in', NULL),
(402, 40, '2018-05-20 01:13:27', 'log', 'Logged out', NULL),
(403, 40, '2018-05-20 01:13:59', 'log', 'Logged in', NULL),
(404, 40, '2018-05-20 01:14:06', 'log', 'Logged out', NULL),
(405, 40, '2018-05-20 01:14:11', 'log', 'Logged in', NULL),
(406, 40, '2018-05-20 01:14:18', 'log', 'Logged out', NULL),
(407, 40, '2018-05-20 01:16:37', 'log', 'Logged in', NULL),
(408, 40, '2018-05-20 01:19:38', 'log', 'Logged out', NULL),
(409, 40, '2018-05-20 01:20:47', 'log', 'Logged in', NULL),
(410, 40, '2018-05-20 01:25:48', 'log', 'Logged out', NULL),
(411, 40, '2018-05-20 01:30:22', 'log', 'Logged in', NULL),
(412, 41, '2018-05-20 01:55:18', 'log', 'Logged in', NULL),
(413, 41, '2018-05-20 01:56:02', 'log', 'Logged in', NULL),
(414, 41, '2018-05-20 01:57:09', 'log', 'Logged in', NULL),
(415, 41, '2018-05-20 02:08:30', 'log', 'Logged in', NULL),
(416, 41, '2018-05-20 02:08:42', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(417, 41, '2018-05-20 02:08:44', 'setBedUnavailable', 'Set to unavailable bed number: 1', NULL),
(418, 41, '2018-05-20 02:08:59', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(419, 41, '2018-05-20 02:10:33', 'log', 'Logged in', NULL),
(420, 41, '2018-05-20 02:10:38', 'setBedUnavailable', 'Set to unavailable bed number: 1', NULL),
(421, 41, '2018-05-20 02:10:40', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(422, 41, '2018-05-20 02:12:32', 'log', 'Logged out', NULL),
(423, 40, '2018-05-20 02:12:37', 'log', 'Logged in', NULL),
(424, 40, '2018-05-20 02:28:05', 'log', 'Logged out', NULL),
(425, 40, '2018-05-20 09:56:05', 'log', 'Logged in', NULL),
(426, 40, '2018-05-20 09:56:18', 'setBedUnavailable', 'Set to unavailable bed number: 1', NULL),
(427, 40, '2018-05-20 09:56:23', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(428, 40, '2018-05-20 10:52:54', 'log', 'Logged out', NULL),
(429, 39, '2018-05-20 11:35:44', 'log', 'Logged in', NULL),
(430, 39, '2018-05-20 11:56:33', 'log', 'Logged in', NULL),
(431, 39, '2018-05-20 12:03:04', 'log', 'Logged in', NULL),
(432, 39, '2018-05-20 12:03:33', 'log', 'Logged in', NULL),
(433, 39, '2018-05-20 12:16:38', 'log', 'Logged in', NULL),
(434, 39, '2018-05-20 12:51:26', 'log', 'Logged in', NULL),
(435, 39, '2018-05-20 12:52:56', 'log', 'Logged in', NULL),
(436, 39, '2018-05-20 12:55:42', 'log', 'Logged in', NULL),
(437, 39, '2018-05-20 13:13:28', 'log', 'Logged in', NULL),
(438, 39, '2018-05-20 13:13:54', 'log', 'Logged in', NULL),
(439, 39, '2018-05-20 13:14:30', 'log', 'Logged in', NULL),
(440, 39, '2018-05-20 13:15:44', 'log', 'Logged in', NULL),
(441, 39, '2018-05-20 13:16:02', 'log', 'Logged in', NULL),
(442, 39, '2018-05-20 13:16:54', 'log', 'Logged in', NULL),
(443, 39, '2018-05-20 13:17:21', 'log', 'Logged in', NULL),
(444, 39, '2018-05-20 13:19:46', 'log', 'Logged in', NULL),
(445, 39, '2018-05-20 13:20:13', 'log', 'Logged in', NULL),
(446, 39, '2018-05-20 13:21:22', 'log', 'Logged in', NULL),
(447, 39, '2018-05-20 13:21:43', 'log', 'Logged in', NULL),
(448, 39, '2018-05-20 13:22:09', 'log', 'Logged in', NULL),
(449, 39, '2018-05-20 13:22:16', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(450, 39, '2018-05-20 13:25:21', 'log', 'Logged out', NULL),
(451, 40, '2018-05-20 13:25:26', 'log', 'Logged in', NULL),
(452, 39, '2018-05-20 13:36:11', 'log', 'Logged in', NULL),
(453, 39, '2018-05-20 13:36:27', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(454, 39, '2018-05-20 13:36:30', 'log', 'Logged out', NULL),
(455, 40, '2018-05-20 13:36:33', 'log', 'Logged in', NULL),
(456, 40, '2018-05-20 13:38:21', 'log', 'Logged out', NULL),
(457, 39, '2018-05-20 22:58:56', 'log', 'Logged in', NULL),
(458, 39, '2018-05-20 22:59:21', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(459, 39, '2018-05-20 22:59:29', 'log', 'Logged out', NULL),
(460, 40, '2018-05-20 22:59:37', 'log', 'Logged in', NULL),
(461, 25, '2018-05-20 23:20:41', 'log', 'Logged in', NULL),
(462, 25, '2018-05-20 23:21:43', 'log', 'Logged in', NULL),
(463, 25, '2018-05-20 23:23:55', 'log', 'Logged in', NULL),
(464, 25, '2018-05-20 23:26:45', 'log', 'Logged in', NULL),
(465, 25, '2018-05-20 23:27:26', 'log', 'Logged in', NULL),
(466, 25, '2018-05-20 23:48:41', 'log', 'Logged in', NULL),
(467, 25, '2018-05-20 23:52:29', 'log', 'Logged in', NULL),
(468, 25, '2018-05-21 00:00:00', 'log', 'Logged in', NULL),
(469, 25, '2018-05-21 00:04:40', 'log', 'Logged in', NULL),
(470, 25, '2018-05-21 11:15:39', 'log', 'Logged in', NULL),
(471, 25, '2018-05-21 11:16:06', 'log', 'Logged in', NULL),
(472, 25, '2018-05-21 11:17:31', 'log', 'Logged in', NULL),
(473, 25, '2018-05-21 11:19:20', 'log', 'Logged in', NULL),
(474, 25, '2018-05-21 11:25:59', 'log', 'Logged in', NULL),
(475, 40, '2018-05-21 11:27:26', 'log', 'Logged in', NULL),
(476, 40, '2018-05-21 11:28:19', 'bed', 'Alloted bed number: 1 to patient:Roberto Garciaaaashhhqweqwe', 91),
(477, 40, '2018-05-21 11:33:01', 'log', 'Logged out', NULL),
(478, 25, '2018-05-21 11:34:44', 'log', 'Logged in', NULL),
(479, 40, '2018-05-21 11:35:08', 'log', 'Logged in', NULL),
(480, 40, '2018-05-21 11:36:27', 'setBedUnavailable', 'Set to unavailable bed number: 2', NULL),
(481, 40, '2018-05-21 11:36:34', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(482, 40, '2018-05-21 11:36:56', 'bed', 'Alloted bed number: 2 to patient:Miguel Santos', 98),
(483, 40, '2018-05-21 11:38:19', 'log', 'Logged out', NULL),
(484, 41, '2018-05-21 11:38:25', 'log', 'Logged in', NULL),
(485, 41, '2018-05-21 11:39:54', 'log', 'Logged out', NULL),
(486, 25, '2018-05-21 11:40:36', 'log', 'Logged in', NULL),
(487, 25, '2018-05-21 11:45:11', 'log', 'Logged in', NULL),
(488, 25, '2018-05-21 11:50:16', 'log', 'Logged out', NULL),
(489, 41, '2018-05-21 11:50:22', 'log', 'Logged in', NULL),
(490, 41, '2018-05-21 11:52:31', 'log', 'Logged out', NULL),
(491, 40, '2018-05-21 11:54:09', 'log', 'Logged in', NULL),
(492, 40, '2018-05-21 11:59:57', 'requestConfirmationOPD', 'Request of Confirmation sent!', 90),
(493, 40, '2018-05-21 12:04:54', 'log', 'Logged in', NULL),
(494, 40, '2018-05-21 12:07:04', 'log', 'Logged in', NULL),
(495, 40, '2018-05-21 12:40:17', 'log', 'Logged out', NULL),
(496, 41, '2018-05-21 12:40:22', 'log', 'Logged in', NULL),
(497, 41, '2018-05-21 12:45:00', 'log', 'Logged out', NULL),
(498, 25, '2018-05-21 12:45:04', 'log', 'Logged in', NULL),
(499, 25, '2018-05-21 12:48:57', 'log', 'Logged out', NULL),
(500, 39, '2018-05-21 13:44:25', 'log', 'Logged in', NULL),
(501, 39, '2018-05-21 13:47:36', 'log', 'Logged out', NULL),
(502, 38, '2018-05-21 13:47:43', 'log', 'Logged in', NULL),
(503, 38, '2018-05-21 13:49:03', 'log', 'Logged out', NULL),
(504, 25, '2018-05-21 13:52:30', 'log', 'Logged in', NULL),
(505, 41, '2018-05-21 14:14:21', 'log', 'Logged in', NULL),
(506, 41, '2018-05-21 14:19:26', 'log', 'Logged out', NULL),
(507, 41, '2018-05-21 14:19:27', 'log', 'Logged out', NULL),
(508, 40, '2018-05-21 14:22:52', 'log', 'Logged in', NULL),
(509, 40, '2018-05-21 14:23:04', 'bed', 'Alloted bed number: 3 to patient:Tom Aldrin III blah blahsasdasdaasdasda', 93),
(510, 40, '2018-05-21 14:38:13', 'log', 'Logged in', NULL),
(511, 40, '2018-05-21 14:38:27', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(512, 40, '2018-05-21 14:38:35', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(513, 40, '2018-05-21 14:38:42', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(514, 40, '2018-05-21 14:41:34', 'log', 'Logged in', NULL),
(515, 40, '2018-05-21 14:41:47', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(516, 40, '2018-05-21 14:43:51', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(517, 40, '2018-05-21 14:45:25', 'log', 'Logged in', NULL),
(518, 40, '2018-05-21 14:46:36', 'log', 'Logged in', NULL),
(519, 40, '2018-05-21 14:46:44', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(520, 40, '2018-05-21 14:48:18', 'log', 'Logged in', NULL),
(521, 40, '2018-05-21 14:48:27', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(522, 40, '2018-05-21 14:49:18', 'bed', 'Alloted bed number: 2 to patient:Miguel Santos', 98),
(523, 40, '2018-05-21 14:49:33', 'log', 'Logged out', NULL),
(524, 41, '2018-05-21 14:49:38', 'log', 'Logged in', NULL),
(525, 40, '2018-05-21 14:50:47', 'log', 'Logged in', NULL),
(526, 40, '2018-05-21 14:50:57', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(527, 40, '2018-05-21 14:51:26', 'log', 'Logged in', NULL),
(528, 40, '2018-05-21 15:00:31', 'log', 'Logged in', NULL),
(529, 40, '2018-05-21 15:03:47', 'log', 'Logged in', NULL),
(530, 40, '2018-05-21 15:06:14', 'log', 'Logged in', NULL),
(531, 40, '2018-05-21 15:07:34', 'log', 'Logged in', NULL),
(532, 40, '2018-05-21 15:08:44', 'log', 'Logged in', NULL),
(533, 40, '2018-05-21 15:08:52', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(534, 40, '2018-05-21 15:11:17', 'log', 'Logged in', NULL),
(535, 40, '2018-05-21 15:11:27', 'bed', 'Alloted bed number: 2 to patient:Miguel Santos', 98),
(536, 40, '2018-05-21 15:11:31', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(537, 40, '2018-05-21 15:11:50', 'bed', 'Alloted bed number: 2 to patient:Miguel Santos', 98),
(538, 40, '2018-05-21 15:12:54', 'log', 'Logged in', NULL),
(539, 40, '2018-05-21 15:13:05', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(540, 40, '2018-05-21 15:13:52', 'log', 'Logged in', NULL),
(541, 40, '2018-05-21 15:14:01', 'setBedAvailable', 'Set to available bed number: 2', NULL),
(542, 40, '2018-05-21 15:14:07', 'bed', 'Alloted bed number: 2 to patient:Miguel Santos', 98),
(543, 40, '2018-05-21 15:14:26', 'log', 'Logged out', NULL),
(544, 41, '2018-05-21 15:14:30', 'log', 'Logged in', NULL),
(545, 41, '2018-05-21 15:16:26', 'log', 'Logged in', NULL),
(546, 41, '2018-05-21 15:18:07', 'log', 'Logged in', NULL),
(547, 41, '2018-05-21 15:21:16', 'log', 'Logged out', NULL),
(548, 40, '2018-05-21 15:21:21', 'log', 'Logged in', NULL),
(549, 40, '2018-05-21 15:21:30', 'bed', 'Alloted bed number: 4 to patient:Rose Miller', 90),
(550, 40, '2018-05-21 15:21:38', 'bed', 'Alloted bed number: 5 to patient:Greg Chicoine', 88),
(551, 40, '2018-05-21 15:21:44', 'bed', 'Alloted bed number: 10 to patient:Teo Boston', 95),
(552, 40, '2018-05-21 15:21:48', 'log', 'Logged out', NULL),
(553, 41, '2018-05-21 15:21:52', 'log', 'Logged in', NULL),
(554, 41, '2018-05-21 15:26:10', 'log', 'Logged in', NULL),
(555, 41, '2018-05-21 15:26:22', 'bed', 'allotted bed number 6 for ER patient Carla Chicoine', 89),
(556, 41, '2018-05-21 15:26:22', 'er', 'Added ER patient Carla Chicoine', 89),
(557, 41, '2018-05-21 15:31:29', 'log', 'Logged out', NULL),
(558, 41, '2018-05-21 15:31:42', 'log', 'Logged in', NULL),
(559, 41, '2018-05-21 16:25:52', 'log', 'Logged in', NULL),
(560, 39, '2018-05-21 16:26:18', 'log', 'Logged in', NULL),
(561, 39, '2018-05-21 16:27:38', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(562, 41, '2018-05-21 16:34:42', 'log', 'Logged in', NULL),
(563, 41, '2018-05-21 16:37:17', 'log', 'Logged out', NULL),
(564, 39, '2018-05-21 16:37:20', 'log', 'Logged in', NULL),
(565, 39, '2018-05-21 16:37:27', 'confirmedLab', 'Confirmed lab discharge Request for patient Rose Miller', NULL),
(566, 39, '2018-05-21 16:39:29', 'log', 'Logged out', NULL),
(567, 38, '2018-05-21 16:39:33', 'log', 'Logged in', NULL),
(568, 38, '2018-05-21 16:39:46', 'confirmedPharm', 'Confirmed pharm discharge Request for patient Rose Miller', NULL),
(569, 38, '2018-05-21 16:40:11', 'approvedPrescription', 'Approved prescription for: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(570, 41, '2018-05-21 16:41:24', 'log', 'Logged in', NULL),
(571, 41, '2018-05-21 16:44:51', 'settingsProfileManagement', 'Edited personal info.', NULL),
(572, 41, '2018-05-21 16:45:02', 'log', 'Logged out', NULL),
(573, 40, '2018-05-21 16:45:06', 'log', 'Logged in', NULL),
(574, 40, '2018-05-21 16:50:52', 'confirmedHisto', 'Confirmed Discharge Request for patient undefined', NULL),
(575, 40, '2018-05-21 16:52:04', 'log', 'Logged in', NULL),
(576, 40, '2018-05-21 16:52:49', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(577, 40, '2018-05-21 16:53:41', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(578, 40, '2018-05-21 16:53:41', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(579, 39, '2018-05-21 16:54:10', 'log', 'Logged in', NULL),
(580, 39, '2018-05-21 16:54:13', 'confirmedLab', 'Confirmed lab discharge Request for patient Roberto Garciaaaashhhqweqwe', NULL),
(581, 40, '2018-05-21 16:55:49', 'prescription', 'Prescribed a medicine to : Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(582, 39, '2018-05-21 16:55:57', 'log', 'Logged out', NULL),
(583, 38, '2018-05-21 16:56:00', 'log', 'Logged in', NULL),
(584, 38, '2018-05-21 16:56:13', 'approvedPrescription', 'Approved prescription for: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(585, 38, '2018-05-21 16:56:35', 'confirmedPharm', 'Confirmed pharm discharge Request for patient Roberto Garciaaaashhhqweqwe', NULL),
(586, 40, '2018-05-21 16:56:47', 'confirmedHisto', 'Confirmed Discharge Request for patient undefined', NULL),
(587, 40, '2018-05-21 16:59:23', 'log', 'Logged in', NULL),
(588, 40, '2018-05-21 17:03:54', 'log', 'Logged in', NULL),
(589, 38, '2018-05-21 17:07:53', 'log', 'Logged in', NULL),
(590, 38, '2018-05-21 17:19:31', 'log', 'Logged in', NULL),
(591, 38, '2018-05-21 17:22:12', 'log', 'Logged in', NULL),
(592, 40, '2018-05-21 17:23:55', 'log', 'Logged in', NULL),
(593, 40, '2018-05-21 17:24:11', 'prescription', 'Prescribed a medicine to : Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(594, 38, '2018-05-21 17:24:20', 'approvedPrescription', 'Approved prescription for: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(595, 38, '2018-05-21 17:29:01', 'log', 'Logged out', NULL),
(596, 41, '2018-05-21 17:29:04', 'log', 'Logged in', NULL),
(597, 41, '2018-05-21 17:29:10', 'bed', 'allotted bed number 1 for ER patient Roberto Garciaaaashhhqweqwe', 91),
(598, 41, '2018-05-21 17:29:10', 'er', 'Added ER patient Roberto Garciaaaashhhqweqwe', 91),
(599, 40, '2018-05-21 17:29:29', 'labRequest', 'Lab request for : Roberto Garciaaaashhhqweqwe', NULL),
(600, 41, '2018-05-21 17:29:35', 'log', 'Logged out', NULL),
(601, 39, '2018-05-21 17:29:38', 'log', 'Logged in', NULL),
(602, 39, '2018-05-21 17:29:56', 'imgUploadLab', 'Image Upload for patient: Roberto Garciaaaashhhqweqwe', NULL),
(603, 40, '2018-05-21 17:30:27', 'setBedAvailable', 'Set to available bed number: 4', NULL),
(604, 40, '2018-05-21 17:30:32', 'bedDischarge', 'Discharged a patient from bed number : undefined', 90),
(605, 40, '2018-05-21 17:30:32', 'requestConfirmationER', ' Request of Confirmation sent!', 90),
(606, 40, '2018-05-21 17:31:51', 'cancelLabRequest', 'Canceled lab request for: Roberto Garciaaaashhhqweqwe', NULL),
(607, 40, '2018-05-21 17:32:08', 'settingsProfileManagement', 'Edited personal info.', NULL),
(608, 40, '2018-05-21 17:33:16', 'log', 'Logged out', NULL),
(609, 25, '2018-05-21 17:33:21', 'log', 'Logged in', NULL),
(610, 25, '2018-05-21 17:34:01', 'log', 'Logged out', NULL),
(611, 38, '2018-05-21 17:34:06', 'log', 'Logged in', NULL),
(612, 38, '2018-05-21 17:34:12', 'confirmedPharm', 'Confirmed pharm discharge Request for patient Rose Miller', NULL),
(613, 40, '2018-05-21 20:10:03', 'log', 'Logged in', NULL),
(614, 42, '2018-05-21 20:10:20', 'log', 'Logged in', NULL),
(615, 42, '2018-05-21 20:10:28', 'calcelRequestConfirmationER', 'Request of Confirmation Cancelled!', 90),
(616, 42, '2018-05-21 20:10:49', 'log', 'Logged out', NULL),
(617, 25, '2018-05-21 20:10:54', 'log', 'Logged in', NULL),
(618, 25, '2018-05-21 20:11:10', 'addUser', 'Added user: lab2', NULL),
(619, 25, '2018-05-21 20:11:12', 'log', 'Logged out', NULL),
(620, 43, '2018-05-21 20:11:15', 'log', 'Logged in', NULL),
(621, 40, '2018-05-21 20:11:32', 'labRequest', 'Lab request for : Roberto Garciaaaashhhqweqwe', NULL),
(622, 43, '2018-05-21 20:11:48', 'log', 'Logged out', NULL),
(623, 39, '2018-05-21 20:11:50', 'log', 'Logged in', NULL),
(624, 39, '2018-05-21 20:11:57', 'log', 'Logged out', NULL),
(625, 25, '2018-05-21 20:20:03', 'log', 'Logged in', NULL),
(626, 25, '2018-05-21 20:23:07', 'addUser', 'Added user: lab3', NULL),
(627, 25, '2018-05-21 20:23:20', 'removedUser', 'Deactivated user: lab2', NULL),
(628, 25, '2018-05-21 20:23:22', 'removedUser', 'Deactivated user: lab3', NULL),
(629, 25, '2018-05-21 20:23:54', 'addUser', 'Added user: lab123', NULL),
(630, 25, '2018-05-21 20:23:57', 'log', 'Logged out', NULL),
(631, 45, '2018-05-21 20:24:01', 'log', 'Logged in', NULL),
(632, 45, '2018-05-21 20:24:30', 'log', 'Logged out', NULL),
(633, 25, '2018-05-21 20:24:34', 'log', 'Logged in', NULL),
(634, 25, '2018-05-21 20:24:42', 'reactivation', 'Reactivated user: lab2', NULL),
(635, 25, '2018-05-21 20:24:45', 'log', 'Logged out', NULL),
(636, 43, '2018-05-21 20:24:48', 'log', 'Logged in', NULL),
(637, 40, '2018-05-21 20:25:03', 'prescription', 'Prescribed a medicine to : Roberto Garciaaaashhhqweqwe', NULL),
(638, 43, '2018-05-21 20:25:16', 'log', 'Logged out', NULL),
(639, 40, '2018-05-21 20:25:19', 'log', 'Logged in', NULL),
(640, 40, '2018-05-21 20:30:22', 'log', 'Logged out', NULL),
(641, 40, '2018-05-21 20:34:15', 'log', 'Logged out', NULL),
(642, 40, '2018-05-21 20:35:38', 'log', 'Logged in', NULL),
(643, 40, '2018-05-21 20:35:42', 'log', 'Logged out', NULL),
(644, 40, '2018-05-21 20:36:28', 'log', 'Logged in', NULL),
(645, 40, '2018-05-21 20:41:30', 'log', 'Logged out', NULL),
(646, 40, '2018-05-23 00:36:04', 'log', 'Logged in', NULL),
(647, 40, '2018-05-23 00:37:08', 'cancelLabRequest', 'Canceled lab request for: Roberto Garciaaaashhhqweqwe', NULL),
(648, 40, '2018-05-23 00:37:20', 'cancelPrescription', 'Canceled prescription for: Roberto Garciaaaashhhqweqwe', NULL),
(649, 40, '2018-05-23 00:37:28', 'setBedAvailable', 'Set to available bed number: 1', NULL),
(650, 40, '2018-05-23 00:37:30', 'bedDischarge', 'Discharged a patient from bed number : undefined', 91),
(651, 40, '2018-05-23 00:37:30', 'requestConfirmationER', ' Request of Confirmation sent!', 91),
(652, 39, '2018-05-23 00:37:45', 'log', 'Logged in', NULL);
INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`, `patient_id`) VALUES
(653, 39, '2018-05-23 00:37:47', 'confirmedLab', 'Confirmed lab discharge Request for patient Roberto Garciaaaashhhqweqwe', NULL),
(654, 39, '2018-05-23 00:37:49', 'log', 'Logged out', NULL),
(655, 38, '2018-05-23 00:37:52', 'log', 'Logged in', NULL),
(656, 38, '2018-05-23 00:37:53', 'confirmedPharm', 'Confirmed pharm discharge Request for patient Roberto Garciaaaashhhqweqwe', NULL),
(657, 40, '2018-05-23 00:37:58', 'confirmedHisto', 'Confirmed Discharge Request for patient Roberto Garciaaaashhhqweqwe', NULL),
(658, 38, '2018-05-23 00:38:03', 'log', 'Logged out', NULL),
(659, 41, '2018-05-23 00:38:06', 'log', 'Logged in', NULL),
(660, 41, '2018-05-23 00:38:09', 'bed', 'allotted bed number 1 for ER patient Roberto Garciaaaashhhqweqwe', 91),
(661, 41, '2018-05-23 00:38:09', 'er', 'Added ER patient Roberto Garciaaaashhhqweqwe', 91),
(662, 40, '2018-05-23 00:38:16', 'labRequest', 'Lab request for : Roberto Garciaaaashhhqweqwe', NULL),
(663, 41, '2018-05-23 00:38:20', 'log', 'Logged out', NULL),
(664, 45, '2018-05-23 00:38:25', 'log', 'Logged in', NULL),
(665, 45, '2018-05-23 00:39:01', 'imgUploadLab', 'Image Upload for patient: Roberto Garciaaaashhhqweqwe', NULL),
(666, 45, '2018-05-23 00:39:17', 'confirmedLabRequest', 'Confirmed lab request for: Roberto Garciaaaashhhqweqwe', NULL),
(667, 41, '2018-05-23 00:43:54', 'log', 'Logged in', NULL),
(668, 41, '2018-05-23 00:43:57', 'log', 'Logged out', NULL),
(669, 40, '2018-05-23 00:44:00', 'log', 'Logged in', NULL),
(670, 40, '2018-05-23 00:49:30', 'log', 'Logged out', NULL),
(671, 40, '2018-05-23 00:50:32', 'log', 'Logged in', NULL),
(672, 41, '2018-05-23 00:55:09', 'log', 'Logged in', NULL),
(673, 40, '2018-05-23 00:57:32', 'log', 'Logged out', NULL),
(674, 41, '2018-05-23 00:57:35', 'log', 'Logged in', NULL),
(675, 41, '2018-05-23 00:58:43', 'log', 'Logged out', NULL),
(676, 41, '2018-05-23 00:59:20', 'log', 'Logged in', NULL),
(677, 41, '2018-05-23 00:59:35', 'add', 'Added: Cadet - qweSampul', NULL),
(678, 41, '2018-05-23 01:00:18', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(679, 41, '2018-05-23 01:00:29', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(680, 41, '2018-05-23 01:00:34', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(681, 41, '2018-05-23 01:00:49', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(682, 41, '2018-05-23 01:01:35', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(683, 41, '2018-05-23 01:02:00', 'patientInfoEdit', 'Edited patient Information of qweSampul', 106),
(684, 41, '2018-05-23 01:02:28', 'setBedUnavailable', 'Set to unavailable bed number: 4', NULL),
(685, 41, '2018-05-23 01:02:39', 'setBedAvailable', 'Set to available bed number: 4', NULL),
(686, 41, '2018-05-23 01:02:51', 'settingsProfileManagement', 'Edited personal info.', NULL),
(687, 41, '2018-05-23 01:03:06', 'log', 'Logged out', NULL),
(688, 40, '2018-05-23 01:03:09', 'log', 'Logged in', NULL),
(689, 40, '2018-05-23 01:03:30', 'bedDischarge', 'Discharged a patient from bed number : undefined', 90),
(690, 40, '2018-05-23 01:03:30', 'requestConfirmationER', ' Request of Confirmation sent!', 90),
(691, 40, '2018-05-23 01:08:10', 'prescription', 'Prescribed a medicine to : Rose Miller', NULL),
(692, 39, '2018-05-25 02:01:42', 'log', 'Logged in', NULL),
(693, 39, '2018-05-25 02:03:26', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(694, 41, '2018-05-25 02:03:44', 'log', 'Logged in', NULL),
(695, 39, '2018-05-25 02:07:36', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(696, 41, '2018-05-25 02:12:16', 'log', 'Logged in', NULL),
(697, 41, '2018-05-25 02:12:25', 'log', 'Logged out', NULL),
(698, 40, '2018-05-25 02:12:28', 'log', 'Logged in', NULL),
(699, 39, '2018-05-25 02:13:05', 'log', 'Logged in', NULL),
(700, 39, '2018-05-25 02:13:45', 'log', 'Logged in', NULL),
(701, 39, '2018-05-25 02:14:16', 'log', 'Logged in', NULL),
(702, 39, '2018-05-25 02:14:34', 'log', 'Logged in', NULL),
(703, 39, '2018-05-25 02:14:42', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(704, 40, '2018-05-25 02:14:54', 'log', 'Logged in', NULL),
(705, 39, '2018-05-25 02:16:05', 'log', 'Logged in', NULL),
(706, 39, '2018-05-25 02:16:14', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(707, 39, '2018-05-25 02:20:36', 'log', 'Logged in', NULL),
(708, 39, '2018-05-25 02:20:43', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(709, 39, '2018-05-25 02:21:40', 'log', 'Logged in', NULL),
(710, 39, '2018-05-25 02:21:48', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(711, 39, '2018-05-25 02:29:04', 'log', 'Logged in', NULL),
(712, 39, '2018-05-25 02:29:12', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(713, 39, '2018-05-25 02:30:00', 'log', 'Logged in', NULL),
(714, 39, '2018-05-25 02:30:07', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(715, 39, '2018-05-25 02:30:22', 'log', 'Logged in', NULL),
(716, 39, '2018-05-25 02:30:29', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(717, 39, '2018-05-25 02:32:44', 'log', 'Logged in', NULL),
(718, 39, '2018-05-25 02:32:52', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(719, 40, '2018-05-25 02:33:08', 'log', 'Logged in', NULL),
(720, 39, '2018-05-25 02:37:16', 'log', 'Logged in', NULL),
(721, 39, '2018-05-25 02:37:20', 'log', 'Logged out', NULL),
(722, 41, '2018-05-25 02:37:22', 'log', 'Logged in', NULL),
(723, 41, '2018-05-25 02:39:29', 'log', 'Logged out', NULL),
(724, 40, '2018-05-25 02:39:32', 'log', 'Logged in', NULL),
(725, 40, '2018-05-25 02:40:18', 'log', 'Logged in', NULL),
(726, 40, '2018-05-25 02:41:09', 'log', 'Logged in', NULL),
(727, 40, '2018-05-25 02:41:31', 'log', 'Logged in', NULL),
(728, 39, '2018-05-25 02:51:09', 'log', 'Logged in', NULL),
(729, 39, '2018-05-25 02:51:14', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(730, 39, '2018-05-25 02:51:24', 'imgUploadLab', 'Image Upload for patient: Tom Aldrin III blah blahsasdasdaasdasda', NULL),
(731, 40, '2018-05-25 02:55:16', 'log', 'Logged in', NULL),
(732, 41, '2018-05-25 02:55:50', 'log', 'Logged in', NULL),
(733, 40, '2018-05-25 03:09:34', 'log', 'Logged in', NULL),
(734, 40, '2018-05-25 03:19:02', 'log', 'Logged out', NULL),
(735, 40, '2018-05-25 03:30:25', 'log', 'Logged in', NULL),
(736, 40, '2018-05-25 03:36:56', 'log', 'Logged in', NULL),
(737, 40, '2018-05-25 03:37:40', 'log', 'Logged in', NULL),
(738, 40, '2018-05-25 03:38:18', 'log', 'Logged in', NULL),
(739, 40, '2018-05-25 03:40:56', 'prescription', 'Prescribed a medicine to : Rose Miller', NULL),
(740, 40, '2018-05-25 03:41:33', 'prescription', 'Prescribed a medicine to : Rose Miller', NULL),
(741, 40, '2018-05-25 03:43:19', 'prescription', 'Prescribed a medicine to : Roberto Garciaaaashhhqweqwe', NULL),
(742, 40, '2018-05-25 03:44:23', 'prescription', 'Prescribed a medicine to : Roberto Garciaaaashhhqweqwe', NULL),
(743, 40, '2018-05-25 03:45:31', 'log', 'Logged in', NULL),
(744, 40, '2018-05-25 03:52:34', 'log', 'Logged in', NULL),
(745, 40, '2018-05-25 04:09:14', 'log', 'Logged in', NULL),
(746, 40, '2018-05-25 04:10:16', 'log', 'Logged in', NULL),
(747, 40, '2018-05-25 04:20:43', 'log', 'Logged in', NULL),
(748, 40, '2018-05-25 04:24:32', 'log', 'Logged in', NULL),
(749, 40, '2018-05-25 04:25:57', 'log', 'Logged in', NULL),
(750, 40, '2018-05-25 04:27:37', 'log', 'Logged in', NULL),
(751, 40, '2018-05-25 04:27:57', 'log', 'Logged in', NULL),
(752, 40, '2018-05-25 04:28:47', 'log', 'Logged in', NULL),
(753, 40, '2018-05-25 04:29:11', 'log', 'Logged in', NULL),
(754, 40, '2018-05-25 04:30:00', 'log', 'Logged in', NULL),
(755, 40, '2018-05-25 04:30:20', 'log', 'Logged in', NULL),
(756, 40, '2018-05-25 04:31:51', 'log', 'Logged in', NULL),
(757, 40, '2018-05-25 04:39:13', 'log', 'Logged out', NULL),
(758, 40, '2018-05-25 04:40:34', 'log', 'Logged in', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_timestamp` timestamp NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `remarks` text,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`, `remarks`) VALUES
(1, '2018-04-24 02:00:00', 40, 90, 'Check-up');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
CREATE TABLE IF NOT EXISTS `bed` (
  `bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL,
  `allotment_timestamp` datetime DEFAULT NULL,
  `description` text,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `status`, `allotment_timestamp`, `description`, `patient_id`) VALUES
(1, 'occupied', '2018-05-23 00:38:09', NULL, 91),
(2, 'occupied', '2018-05-21 15:14:07', NULL, 98),
(3, 'occupied', '2018-05-21 14:23:04', NULL, 93),
(4, 'Unoccupied', NULL, NULL, NULL),
(5, 'occupied', '2018-05-21 15:21:38', NULL, 88),
(6, 'occupied', '2018-05-21 15:26:22', NULL, 89),
(7, 'Unoccupied', NULL, NULL, NULL),
(8, 'Unoccupied', NULL, NULL, NULL),
(9, 'Unoccupied', NULL, NULL, NULL),
(10, 'occupied', '2018-05-21 15:21:44', NULL, 95),
(11, 'Unoccupied', NULL, NULL, NULL),
(12, 'Unoccupied', NULL, NULL, NULL),
(13, 'Unoccupied', NULL, NULL, NULL),
(14, 'Unoccupied', NULL, NULL, NULL),
(15, 'Unoccupied', NULL, NULL, NULL),
(16, 'Unoccupied', NULL, NULL, NULL),
(17, 'Unoccupied', NULL, NULL, NULL),
(18, 'Unoccupied', NULL, NULL, NULL),
(19, 'Unoccupied', NULL, NULL, NULL),
(20, 'Unoccupied', NULL, NULL, NULL),
(21, 'Unoccupied', NULL, NULL, NULL),
(22, 'Unoccupied', NULL, NULL, NULL),
(23, 'Unoccupied', NULL, NULL, NULL),
(24, 'Unoccupied', NULL, NULL, NULL),
(25, 'Unoccupied', NULL, NULL, NULL),
(26, 'Unoccupied', NULL, NULL, NULL),
(27, 'Unoccupied', NULL, NULL, NULL),
(28, 'Unoccupied', NULL, NULL, NULL),
(29, 'Unoccupied', NULL, NULL, NULL),
(30, 'Unoccupied', NULL, NULL, NULL),
(31, 'Unoccupied', NULL, NULL, NULL),
(32, 'Unoccupied', NULL, NULL, NULL),
(33, 'Unoccupied', NULL, NULL, NULL),
(34, 'Unoccupied', NULL, NULL, NULL),
(35, 'Unoccupied', NULL, NULL, NULL),
(36, 'Unoccupied', NULL, NULL, NULL),
(37, 'Unoccupied', NULL, NULL, NULL),
(38, 'Unoccupied', NULL, NULL, NULL),
(39, 'Unoccupied', NULL, NULL, NULL),
(40, 'Unoccupied', NULL, NULL, NULL),
(41, 'Unoccupied', NULL, NULL, NULL),
(42, 'Unoccupied', NULL, NULL, NULL),
(43, 'Unoccupied', NULL, NULL, NULL),
(44, 'Unoccupied', NULL, NULL, NULL),
(45, 'Unoccupied', NULL, NULL, NULL),
(46, 'Unoccupied', NULL, NULL, NULL),
(47, 'Unoccupied', NULL, NULL, NULL),
(48, 'Unoccupied', NULL, NULL, NULL),
(49, 'Unoccupied', NULL, NULL, NULL),
(50, 'Unoccupied', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bed_counter`
--

DROP TABLE IF EXISTS `bed_counter`;
CREATE TABLE IF NOT EXISTS `bed_counter` (
  `counter_id` int(11) NOT NULL AUTO_INCREMENT,
  `allotment_timestamp` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `bed_num` int(11) NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_counter`
--

INSERT INTO `bed_counter` (`counter_id`, `allotment_timestamp`, `patient_id`, `bed_num`) VALUES
(1, '2018-05-21', 98, 2),
(2, '2018-05-21', 90, 4),
(3, '2018-05-21', 88, 5),
(4, '2018-05-21', 95, 10),
(5, '2018-05-21', 89, 6),
(6, '2018-05-21', 91, 1),
(7, '2018-05-23', 91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chart_count`
--

DROP TABLE IF EXISTS `chart_count`;
CREATE TABLE IF NOT EXISTS `chart_count` (
  `chart_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_stamp` datetime NOT NULL,
  `patient_name` text NOT NULL,
  `patient_type` text NOT NULL,
  PRIMARY KEY (`chart_count_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_count`
--

INSERT INTO `chart_count` (`chart_count_id`, `date_stamp`, `patient_name`, `patient_type`) VALUES
(1, '2018-05-18 16:08:40', 'qwe', 'Cadet'),
(2, '2018-05-18 16:10:12', 'qwe', 'Military Officer'),
(3, '2018-05-18 16:11:22', 'qwe', 'Military Officer'),
(4, '2018-05-23 00:59:35', 'qweSampul', 'Cadet');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `diag_id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis` text NOT NULL,
  `date` timestamp NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`diag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `family_history`
--

DROP TABLE IF EXISTS `family_history`;
CREATE TABLE IF NOT EXISTS `family_history` (
  `fh_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_history`
--

INSERT INTO `family_history` (`fh_id`, `name`) VALUES
(1, NULL),
(2, 'DM'),
(3, 'CVD'),
(4, 'CA'),
(5, 'Mental Illness'),
(6, 'Asthma'),
(7, 'Hypertension');

-- --------------------------------------------------------

--
-- Table structure for table `immunization`
--

DROP TABLE IF EXISTS `immunization`;
CREATE TABLE IF NOT EXISTS `immunization` (
  `name` varchar(15) DEFAULT NULL,
  `immu_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`immu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immunization`
--

INSERT INTO `immunization` (`name`, `immu_id`) VALUES
(NULL, 1),
('DFT', 2),
('Polio', 3),
('Measles', 4),
('MMR', 5),
('Hepatitis A', 6),
('Hepatitis B', 7),
('Tyroid', 8),
('Chicken Pox', 9),
('Meningcoccemia', 10),
('Rabies', 11),
('HIB', 12),
('Influenza', 13),
('Phenomia', 14),
('Tetanus Toxoid', 15),
('BCD', 16);

-- --------------------------------------------------------

--
-- Table structure for table `lab_counter`
--

DROP TABLE IF EXISTS `lab_counter`;
CREATE TABLE IF NOT EXISTS `lab_counter` (
  `lab_counter_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL,
  `patient_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`lab_counter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_counter`
--

INSERT INTO `lab_counter` (`lab_counter_id`, `timestamp`, `patient_id`, `type`, `name`) VALUES
(1, '2018-04-22 14:16:01', 93, 'X-Ray', 'Tom Aldrin III'),
(2, '2018-04-22 14:17:16', 89, 'Parasitology', 'Carla Chicoine'),
(3, '2018-04-23 02:07:56', 91, 'Blood Chemistry', 'Roberto Garcia'),
(4, '2018-05-18 10:46:00', 93, 'Blood Chemistry', 'Tom Aldrin III'),
(5, '2018-05-18 11:40:21', 98, 'Blood Chemistry', 'Miguel Santos'),
(6, '2018-05-18 11:53:10', 90, 'Blood Chemistry', 'Rose Miller'),
(7, '2018-05-21 09:29:29', 91, 'Blood Chemistry', 'Roberto Garciaaaashhhqweqwe'),
(8, '2018-05-21 12:11:32', 91, 'Blood Chemistry', 'Roberto Garciaaaashhhqweqwe'),
(9, '2018-05-22 16:38:16', 91, 'Blood Chemistry', 'Roberto Garciaaaashhhqweqwe');

-- --------------------------------------------------------

--
-- Table structure for table `lab_request`
--

DROP TABLE IF EXISTS `lab_request`;
CREATE TABLE IF NOT EXISTS `lab_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `remarks` text NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `lab_status` varchar(20) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`request_id`, `type`, `timestamp`, `remarks`, `doctor_id`, `patient_id`, `lab_status`) VALUES
(1, 'X-Ray', '2018-04-22 14:16:01', 'Send back results asap', 40, 93, 'confirmed'),
(3, 'Blood Chemistry', '2018-04-23 02:07:56', 'blood test', 40, 91, 'confirmed'),
(4, 'Blood Chemistry', '2018-05-18 10:46:00', 'qwe', 42, 93, 'pending'),
(7, 'Blood Chemistry', '2018-05-22 16:38:16', '', 40, 91, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `med_id` int(11) NOT NULL AUTO_INCREMENT,
  `med_name` text NOT NULL,
  PRIMARY KEY (`med_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`med_id`, `med_name`) VALUES
(1, 'gamot1'),
(2, 'gamo2');

-- --------------------------------------------------------

--
-- Table structure for table `opd_count`
--

DROP TABLE IF EXISTS `opd_count`;
CREATE TABLE IF NOT EXISTS `opd_count` (
  `opd_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_stamp` timestamp NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`opd_count_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd_count`
--

INSERT INTO `opd_count` (`opd_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-04-22 14:11:27', 90),
(2, '2018-04-22 14:11:54', 89),
(3, '2018-04-22 14:12:28', 98),
(4, '2018-04-22 14:13:03', 93),
(5, '2018-04-22 14:13:38', 88),
(6, '2018-04-22 14:14:08', 97),
(7, '2018-04-23 02:05:04', 91);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `unit` text NOT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `status` varchar(7) NOT NULL,
  `birth_date` date NOT NULL,
  `address` text NOT NULL,
  `religion` text,
  `blood_type` varchar(2) DEFAULT NULL,
  `allergies` text,
  `father` text,
  `mother` text,
  `birth_history` text,
  `SN` text NOT NULL,
  `immunization` text,
  `family_history` text,
  `rank` text,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `SN`, `immunization`, `family_history`, `rank`) VALUES
(88, 'Military Officer', 'Greg Chicoine', 32, '', 'M', 'Married', '1985-10-01', '27 Montebello Subdivision, Baguio City', 'Anglican', 'A', 'Peanuts', 'Elmer Chicoine\n:Doctor', 'Mary Chicoine\n:Doctor', '', '', 'BCD:1985-11-01\n\n', 'DM\nCA\n\n', '0'),
(89, 'Military Dependent', 'Carla Chicoine', 15, '', 'F', 'Single', '2002-09-29', '23 Sta. Barbara, Caguio City', 'Anglican', 'A', '', 'Greg Chicoine\n:Military Officer', 'Carrie Chicoine\n:Housewife', '', '', '\n', 'Asthma\n\n', '0'),
(90, 'Civilian', 'Rose Miller', 29, '', 'F', 'Married', '1988-11-11', 'Pines Village, Baguio City', 'Roman Catholic', 'B', '', 'Karl Miller\n:Fireman', 'Rachel Miller\n:Nurse', '', '', 'Chicken Pox:1998-04-15\n\n', 'CVD\n\n', '0'),
(91, 'Authorized Civilian', 'Roberto Garciaaaashhhqweqwe', 37, '', 'M', 'Married', '1980-08-18', 'Camp Bado, Dangwa, La Trinidad', 'Roman Catholic', 'AB', '', 'Marcello Garcia:', 'Maria Garcia:', '', '', '', 'Mental Illness\r\n\r\n', ''),
(92, 'Cadet', 'David Estrella', 27, '14th Infantry Battalion', 'M', 'Single', '1990-09-16', 'Unit 6, Sta. Cecilia Compound, Baguio City', 'Born Again', 'O', 'Cheese', 'Carlo Estrella\n:Barista', 'Jaimie Estrella\n:Waitress', '', '', '\n', 'CA\n\n', '0'),
(93, 'Cadet', 'Tom Aldrin III blah blahsasdasdaasdasda', 27, '14th Infantry Battalion', 'M', 'Single', '1991-01-02', '17 Richgate Subdivision, Baguio City', 'Iglesia ni Cristo', 'A', '', 'Tom Aldrin II:Doctor', 'May Aldrin:Housewife', '', '', '', 'DM\r\n\r\n', ''),
(94, 'Cadet', 'Hailey Sanchez', 26, '17th Infantry Battalion', 'F', 'Single', '1991-08-08', '15 Richgate Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Carlo Sanchez\n:Police Officer', 'May Sanchez\n:Police Officer', '', '', '\n', 'CA\nCVD\n\n', '0'),
(95, 'Military Officer', 'Teo Boston', 32, '', 'M', 'Married', '1985-09-19', 'Arc Residences Compound, Baguio City', 'Roman Catholic', 'B', '', 'Carlos Boston\n:Military Officer', 'Carla Boston\n:Housewife', '', '', '\n', '\n', '0'),
(96, 'Military Officer', 'Rachelle Ortega', 28, '', 'F', 'Maried', '1989-12-18', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Paulo Ortega:Politician', 'Paula Ortega:Housewife', '', '', '', 'Asthma\r\n\r\n', '0'),
(97, 'Military Dependent', 'Mikhee Ortega', 12, '', 'F', 'Single', '2005-07-27', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', 'Kiwi', 'Rodolfo Ortega\n:Chef', 'Rachelle Ortega\n:Military Officer', '', '', '\n', '\n', '0'),
(98, 'Civilian', 'Miguel Santos', 30, '', 'M', 'Married', '1987-05-16', '29 Lower Liwanag, Loakan, Baguio City', '', 'A', '', 'Conrad Santos\n:Professor', 'Mylene Santos\n:Professor', '', '', '\n', 'Hypertension\n\n', '0'),
(99, 'Civilian', 'Joey Cortez', 27, '', 'M', 'Single', '1990-11-17', '26 Upper Liwanag, Loakan, Baguio City', '', 'B', '', 'Joseph Cortez\n:Journalist', 'Josephine Cortez\n:Professor', '', '', '\n', '\n', '0'),
(100, 'Authorized Civilian', 'Melissa Corpuzal', 10, '', 'F', 'Single', '2007-12-06', '18 Pines Compound, Kias, Baguio City', '', 'O', '', 'Derick Corpuz:Fireman', 'Leslie Corpuz:Police Officer', '', 'undefined', '', 'Asthma\r\newan\r\n', ''),
(101, 'Military Dependent', 'Joey Tribbiani', 25, '', 'M', 'Single', '1992-09-18', 'sabvjkasbnjkvasb j', '', 'A', '', 'bhbhjbhj\n:', 'vbhjvbhjbhj\n:', '', '', '\n', '\n', '0'),
(102, 'Military Officer', 'Phoebe Buffay', 18, '', 'F', 'Single', '1999-09-09', 'bhjkvbjh', '', 'A', '', 'vjhvbhj\n:', 'jbhj\n:bh', '', '0-17278', '\n', '\n', '0'),
(103, 'Cadet', 'qwe', 0, '', 'M', 'Single', '2018-05-02', 'e', 'qwe', ' ', '', 'e\n:e', 'e\n:e', '', '', '\n', '\n', '4C Cadet'),
(104, 'Military Officer', 'qwe', 0, '', 'M', 'Single', '2018-05-02', 'e', '', ' ', '', 'e\n:e', 'e\n:e', '', '', '\n', '\n', 'tangina'),
(105, 'Military Officer', 'qwe', 0, '', 'M', 'Single', '2018-05-03', 'qwe', '', ' ', '', 'e\n:e', 'e\n:e', '', '', '\n', '\n', ''),
(106, 'Civilian', 'qweSampul', 0, 'qwe', 'F', 'Single', '2018-05-02', 'eqwe', 'qwe', ' a', 'qwe', 'qwe', 'qwe', 'qwe', '123', 'qwe', 'qwe', 'hoy');

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
CREATE TABLE IF NOT EXISTS `patient_history` (
  `histo_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_stamp` timestamp NOT NULL,
  `initial_assessment` text,
  `lab` text,
  `medicine` text,
  `diagnosis` text,
  `bed` text,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `vitals` text,
  `status` text NOT NULL,
  `request` varchar(10) DEFAULT NULL,
  `pharm_confirm` varchar(10) DEFAULT 'pending',
  `lab_confirm` varchar(10) DEFAULT 'pending',
  `lab_img` blob,
  PRIMARY KEY (`histo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`histo_id`, `date_stamp`, `initial_assessment`, `lab`, `medicine`, `diagnosis`, `bed`, `patient_id`, `doctor_id`, `vitals`, `status`, `request`, `pharm_confirm`, `lab_confirm`, `lab_img`) VALUES
(1, '2018-04-22 14:10:12', NULL, NULL, NULL, NULL, '1, ', 100, 40, NULL, 'confirmed', NULL, '', '', NULL),
(2, '2018-04-22 14:11:27', 'High temperature and migraine', 'Type: Blood Chemistry\n Remarks: qwe\n', 'Paracetamol,10,500mg,every 6 hours\nsolmux,3,3,3 week\nwat,123,fuck,daw,the\n,456,pak,sila,da\n,,,,generic\n', NULL, '4, ', 90, 40, 'BP: 90/70\nCR: 15\nPR: 16\nRR: 12\n TEMP: 38\nWT: 51', 'pending', 'pending', 'pending', 'pending', NULL),
(3, '2018-04-22 14:11:54', 'Stomach pain', 'Type: Parasitology\n Remarks: Send back results asap\n', NULL, NULL, NULL, 89, 40, 'BP: 100/90\nCR: 10\nPR: 12\nRR: 13\n TEMP: 37\nWT: 65', 'confirmed', 'confirmed', 'pending', 'pending', NULL),
(4, '2018-04-22 14:12:28', 'Leg fracture', 'Type: Blood Chemistry\n Remarks: \n', NULL, NULL, '3, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, ', 98, 40, 'BP: 120/110\nCR: 12\nPR: 12\nRR: 10\n TEMP: 37\nWT: 54', 'pending', NULL, 'pending', 'pending', NULL),
(5, '2018-04-22 14:13:03', 'Back pain', 'Type: X-Ray\n Remarks: Send back results asap\nType: Blood Chemistry\n Remarks: qwe\n', 'qwe,3,qwe,qwe\nblah,qwe,e,e,3\ngamotTO,3,qwe,qwe,ewan\n', NULL, '3, ', 93, 40, 'BP: 120/100\nCR: 12\nPR: 11\nRR: 15\n TEMP: 37\nWT: 60', 'pending', NULL, '', '', 0x63626562326463353862373637633063313233326535393966363533343936370a39346266633438313562653861313738616333383738303165333438626530310a66323463653463626234303035613239653337343166613664326536346435320a34353065343738383237323865323339376462313232323165323937303732350a36643862643636393733653536346337383532656438626230383263303862390a),
(6, '2018-04-22 14:13:38', 'Headache', NULL, 'Biogesic,6,500mg,3x a day\n', NULL, NULL, 88, 40, 'BP: 100/80\nCR: 12\nPR: 16\nRR: 14\n TEMP: 37\nWT: 68', 'confirmed', NULL, '', '', NULL),
(8, '2018-04-22 14:14:14', NULL, NULL, NULL, NULL, '4, 10, ', 95, 40, NULL, 'pending', NULL, '', '', NULL),
(9, '2018-04-23 02:05:04', 'check up', 'Type: Blood Chemistry\n Remarks: blood test\n', NULL, NULL, NULL, 91, 40, 'BP: 1/3\nCR: 3\nPR: 3\nRR: 3\n TEMP: 3\nWT: 3', 'confirmed', NULL, '', '', NULL),
(10, '2018-04-23 02:35:04', NULL, NULL, NULL, NULL, '2, 5, ', 88, 40, NULL, 'pending', NULL, '', '', NULL),
(11, '2018-04-23 02:50:18', NULL, NULL, NULL, NULL, '1, ', 91, 42, NULL, 'confirmed', NULL, '', '', NULL),
(12, '2018-04-23 02:54:54', NULL, NULL, NULL, NULL, '1, ', 91, 40, NULL, 'confirmed', NULL, '', '', NULL),
(13, '2018-05-18 12:34:27', NULL, NULL, NULL, NULL, '1, 1, 1, ', 91, 40, NULL, 'confirmed', 'confirmed', 'confirmed', 'confirmed', NULL),
(14, '2018-05-21 07:26:22', NULL, NULL, NULL, NULL, '6, ', 89, 40, NULL, 'pending', NULL, 'pending', 'pending', NULL),
(15, '2018-05-21 09:29:10', NULL, 'Type: Blood Chemistry\n Remarks: \nType: Blood Chemistry\n Remarks: \n', 'qwe,3,qwe,qwe,qwe\n', NULL, '1, ', 91, 40, NULL, 'confirmed', 'confirmed', 'confirmed', 'confirmed', 0x6330393135383431653535353632383333666431343564626330353937393434),
(16, '2018-05-22 16:38:09', NULL, 'Type: Blood Chemistry\n Remarks: \n', ',,,,hoy\n,u,ka,,pak\n', NULL, '1, ', 91, 40, NULL, 'pending', NULL, 'pending', 'pending', 0x3161356565303463343364353035616331373233613132633730356632306636);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_stamp` timestamp NOT NULL,
  `medicine` text NOT NULL,
  `quantity` text NOT NULL,
  `dosage` text NOT NULL,
  `timeframe` text NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(12) NOT NULL,
  `brand` text,
  PRIMARY KEY (`prescription_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_name` text NOT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank_name`) VALUES
(1, '4C Cadet'),
(2, '3C Cadet'),
(3, '2C Cadet'),
(4, '1C Cadet'),
(5, 'Minister Marshal'),
(6, 'General'),
(7, 'Lieutenant General'),
(8, 'Major General'),
(9, 'Brigadier General'),
(10, 'Colonel'),
(11, 'Lieutenant Colonel'),
(12, 'Major'),
(13, 'Captain'),
(14, 'Lieutenant'),
(15, 'Alferez Second Lieutenant'),
(16, 'Sergeant'),
(17, 'Corporal'),
(18, 'General/Admiral'),
(19, 'Lieutenant General/Vice Admiral'),
(20, 'Major General/Rear Admiral'),
(21, 'Brigadier General/Commodore'),
(22, 'Colonel/Captain'),
(23, 'Lieutenant Colonel/Commander'),
(24, 'Major/Lieutenant Commander'),
(25, 'Captain/Lieutenant Senior Grade'),
(26, 'First Lieutenant/Lieutenant Junior Grade'),
(27, 'Second Lieutenant/Ensign'),
(28, 'Chief Master Sergeant'),
(29, 'Senior Master Sergeant'),
(30, 'Master Sergeant'),
(31, 'Technical Sergeant'),
(32, 'Staff Sergeant'),
(33, 'Private First Class'),
(34, 'Private'),
(35, 'Airman First Class'),
(36, 'Airman Second Class'),
(37, 'Airman Recruit'),
(38, 'Master Chief Petty Officer'),
(39, 'Senior Chief Petty Officer'),
(40, 'Chief Petty Officer'),
(41, 'Petty Officer, First Class'),
(42, 'Petty Officer, Second Class'),
(43, 'Petty Officer, Third Class'),
(44, 'Seaman First Class'),
(45, 'Seaman Second Glass'),
(46, 'Apprentice Seaman'),
(47, 'Brigadier General'),
(48, 'Colonel'),
(49, 'Lieutenant Colonel'),
(50, 'Major'),
(51, 'Captain'),
(52, 'Lieutenant'),
(53, 'Alferez Second Lieutenant'),
(54, 'Sergeant'),
(55, 'Corporal'),
(56, 'General/Admiral'),
(57, 'Lieutenant General/Vice Admiral'),
(58, 'Major General/Rear Admiral'),
(59, 'Brigadier General/Commodore'),
(60, 'Colonel/Captain'),
(61, 'Lieutenant Colonel/Commander'),
(62, 'Major/Lieutenant Commander'),
(63, 'Captain/Lieutenant Senior Grade'),
(64, 'First Lieutenant/Lieutenant Junior Grade'),
(65, 'Second Lieutenant/Ensign'),
(66, 'Chief Master Sergeant'),
(67, 'Senior Master Sergeant'),
(68, 'Master Sergeant'),
(69, 'Technical Sergeant'),
(70, 'Staff Sergeant'),
(71, 'Private First Class'),
(72, 'Private'),
(73, 'Airman First Class'),
(74, 'Airman Second Class'),
(75, 'Airman Recruit'),
(76, 'Master Chief Petty Officer'),
(77, 'Senior Chief Petty Officer'),
(78, 'Chief Petty Officer'),
(79, 'Petty Officer, First Class'),
(80, 'Petty Officer, Second Class'),
(81, 'Petty Officer, Third Class'),
(82, 'Seaman First Class'),
(83, 'Seaman Second Glass'),
(84, 'Apprentice Seaman');

-- --------------------------------------------------------

--
-- Table structure for table `todo_list`
--

DROP TABLE IF EXISTS `todo_list`;
CREATE TABLE IF NOT EXISTS `todo_list` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`todo_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_list`
--

INSERT INTO `todo_list` (`todo_id`, `status`, `description`, `date`, `account_id`) VALUES
(1, 'urgent', 'General Meeting at Lim Hall', '2018-05-12 08:00:00', 25),
(2, 'general', 'Department Meeting', '2018-05-07 10:00:00', 41),
(3, 'urgent', 'General Meeting at Lim Hall', '2018-05-07 08:00:00', 40);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`, `status`) VALUES
(25, 'admin', '$2a$10$ezo.TIL9X06nBeej9SWsd.cGKphNYOrWmZKPvv59sfS0JUsu5wk86', 'admin', 'Anthony Grubat', 28, 'M', '68 Grayville, Baguio City', '9718236712', 'active'),
(38, 'pharm', '$2a$10$XbmMdh3j6COxrrPoZRo6L.8lkjp4SLPLzX1SiMyjvZz6rktfFDiXa', 'pharmacist', 'Alyssa Mendoza', 26, 'F', '23 Green Acres, Hillside, Baguio City', '9185362142', 'active'),
(39, 'lab', '$2a$10$YjaVhL3i3Jp6p0dE5GzBKOGJIKEvALDBOhFkO82nJN/c9A8dvszB2', 'laboratorist', 'Dominique Valdez', 27, 'F', '89 Woodsgate Square Subdivision, Baguio City', '9183241523', 'active'),
(40, 'doctor', '$2a$10$kDE19DErM2VVWpUDvgLrIOJ1W9qbDRgcqoXoijzvhXpsXMkPTkqs6', 'doctor', 'Jeffrey Maneclang', 29, 'M', 'Camp Dangwa, La Trinidad, Benguet', '9063452820', 'active'),
(41, 'nurse', '$2a$10$ba3obrkiv1P0/2yiLVzHZOt2epjsqbr6TJOCO8CxesTuSkBHp3fk2', 'nurse', 'Kyla Corpuzqwe', 27, 'F', '12 Dizon Subdivision, Baguio City', '9173629080', 'active'),
(42, 'doctor2', '$2a$10$wb/2vU3faoS3bVKRjjGNFe2.UYieqh3YXzUMEy4tspHrAZFdyjqwO', 'doctor', 'doctor2', 26, 'M', 'lower baguio', '29873', 'active'),
(43, 'lab2', '$2a$10$a6gC.7dfZJVal/oIRj//v.KsQt./sCptOj8Y/6XAQnThz5KTM.V8q', 'pharmacist', 'lab2', 2, 'M', 'qwe', '129038', 'active'),
(44, 'lab3', '$2a$10$DHqae2unP6MVuSio.a5rbOcF4pDFNi/7gts9EvgipJ69K7mbFSOaa', 'pharmacist', 'lab3', 4, 'M', 'qwe', '123', 'deactivated'),
(45, 'lab123', '$2a$10$2GpSgfkVVEMQe37ApW8ZC.qf6VPs6v1wG4eZPtEE16cdRBPLU.aRC', 'laboratorist', 'lab123', 4, 'F', 'qwe', '123', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ward_count`
--

DROP TABLE IF EXISTS `ward_count`;
CREATE TABLE IF NOT EXISTS `ward_count` (
  `ward_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_stamp` timestamp NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`ward_count_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_count`
--

INSERT INTO `ward_count` (`ward_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-04-22 14:10:12', 100),
(2, '2018-04-22 14:14:14', 95),
(3, '2018-04-22 14:16:13', 98),
(4, '2018-04-23 02:35:04', 88),
(5, '2018-04-23 02:50:18', 91),
(6, '2018-04-23 02:54:54', 91),
(7, '2018-05-18 11:08:22', 98),
(8, '2018-05-18 11:08:27', 98),
(9, '2018-05-18 11:43:25', 98),
(10, '2018-05-18 11:51:26', 98),
(11, '2018-05-18 12:34:27', 91),
(12, '2018-05-19 13:50:32', 91),
(13, '2018-05-21 03:28:19', 91),
(14, '2018-05-21 03:36:56', 98),
(15, '2018-05-21 06:23:04', 93),
(16, '2018-05-21 06:49:18', 98),
(17, '2018-05-21 06:51:37', 98),
(18, '2018-05-21 07:03:59', 98),
(19, '2018-05-21 07:05:59', 98),
(20, '2018-05-21 07:07:48', 98),
(21, '2018-05-21 07:11:27', 98),
(22, '2018-05-21 07:11:50', 98),
(23, '2018-05-21 07:14:07', 98),
(24, '2018-05-21 07:21:30', 90),
(25, '2018-05-21 07:21:38', 88),
(26, '2018-05-21 07:21:44', 95),
(27, '2018-05-21 07:26:22', 89),
(28, '2018-05-21 09:29:10', 91),
(29, '2018-05-22 16:38:09', 91);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `user_accounts` (`account_id`);

--
-- Constraints for table `todo_list`
--
ALTER TABLE `todo_list`
  ADD CONSTRAINT `todo_list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
