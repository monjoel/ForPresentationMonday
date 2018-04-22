-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2018 at 03:08 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`, `patient_id`) VALUES
(51, 48, '2018-03-31 13:50:05', 'log', 'Logged in', NULL),
(52, 47, '2018-03-31 13:50:14', 'log', 'Logged in', NULL),
(53, 47, '2018-03-31 13:52:10', 'log', 'Logged out', NULL),
(54, 47, '2018-03-31 13:52:20', 'log', 'Logged in', NULL),
(55, 47, '2018-03-31 13:53:04', 'patientInfoEdit', 'Edited patient Information of qwe', 90),
(56, 47, '2018-03-31 13:53:40', 'delTodo', 'Deleted data from todo List', NULL),
(57, 48, '2018-03-31 13:54:12', 'initialAssessment', 'assessment for undefined', 90),
(58, 48, '2018-03-31 14:01:41', 'add', 'Added: Military Officer - qwe', NULL),
(59, 48, '2018-03-31 14:01:49', 'er', 'ER for undefined', 91),
(60, 47, '2018-03-31 14:02:23', 'patientInfoEdit', 'Edited patient Information of qwe', 90),
(61, 47, '2018-03-31 14:02:37', 'labRequest', 'Lab request for : qwe', NULL),
(62, 47, '2018-03-31 14:03:19', 'diagnosis', 'diagnosis for : qwe', NULL),
(63, 47, '2018-03-31 14:03:24', 'diagnosis', 'diagnosis for : qwe', NULL),
(64, 47, '2018-03-31 14:04:06', 'appointment', 'Set Appointment with undefined on 2018-04-04 08:09:00', NULL),
(65, 48, '2018-03-31 14:04:10', 'add', 'Added: Military Officer - mon', NULL),
(66, 47, '2018-03-31 14:04:16', 'cancelAppointment', 'Canceled appointment with: qwe', NULL),
(67, 48, '2018-03-31 14:04:37', 'initialAssessment', 'assessment for undefined', 92),
(68, 48, '2018-03-31 14:07:59', 'log', 'Logged in', NULL),
(69, 48, '2018-03-31 14:08:27', 'add', 'Added: Civilian - qwe', NULL),
(70, 48, '2018-03-31 14:08:38', 'initialAssessment', 'assessment for undefined', 93),
(71, 48, '2018-03-31 14:08:54', 'add', 'Added: Civilian - aasd', NULL),
(72, 48, '2018-03-31 14:08:58', 'er', 'ER for aasd', 94),
(73, 48, '2018-03-31 14:38:58', 'add', 'Added: Military Officer - qwe', NULL),
(74, 48, '2018-03-31 15:08:39', 'log', 'Logged in', NULL),
(75, 48, '2018-03-31 15:09:01', 'add', 'Added: Authorized Civilian - poopio', NULL),
(76, 48, '2018-03-31 15:22:50', 'log', 'Logged in', NULL),
(77, 48, '2018-03-31 15:23:09', 'add', 'Added: Civilian - kasdl', NULL),
(78, 48, '2018-03-31 15:24:04', 'add', 'Added: Authorized Civilian - clawds', NULL),
(79, 48, '2018-03-31 15:24:19', 'initialAssessment', 'assessment for undefined', 96),
(80, 48, '2018-03-31 15:24:23', 'er', 'ER for undefined', 95),
(81, 48, '2018-03-31 15:24:46', 'urgentTodo', 'Added to do urgent: asdsd', NULL),
(82, 48, '2018-03-31 15:26:10', 'add', 'Added: Military Officer - lad', NULL),
(83, 48, '2018-03-31 15:27:00', 'generalTodo', 'Added to do general: dsgdsg', NULL),
(84, 48, '2018-03-31 15:27:48', 'log', 'Logged out', NULL),
(85, 47, '2018-03-31 15:27:52', 'log', 'Logged in', NULL),
(86, 47, '2018-03-31 15:28:03', 'urgentTodo', 'Added to do urgent: asgsdagdsgdsa', NULL),
(87, 47, '2018-03-31 15:28:52', 'log', 'Logged out', NULL),
(88, 44, '2018-03-31 15:28:57', 'log', 'Logged in', NULL),
(89, 44, '2018-03-31 15:31:30', 'urgentTodo', 'Added to do urgent: dsgdsgdsgds', NULL),
(90, 44, '2018-03-31 15:31:47', 'log', 'Logged in', NULL),
(91, 44, '2018-03-31 15:32:01', 'generalTodo', 'Added to do general: dsagbsdagdsagdsa', NULL),
(92, 44, '2018-03-31 15:32:08', 'log', 'Logged out', NULL),
(93, 45, '2018-03-31 15:32:11', 'log', 'Logged in', NULL),
(94, 45, '2018-03-31 15:32:22', 'generalTodo', 'Added to do general: sagasdgds', NULL),
(95, 45, '2018-03-31 15:32:29', 'log', 'Logged out', NULL),
(96, 25, '2018-03-31 15:32:35', 'log', 'Logged in', NULL),
(97, 25, '2018-03-31 15:32:48', 'generalTodo', 'Added to do general: sadgbsdfahgsdfagdsa', NULL),
(98, 25, '2018-03-31 15:33:58', 'log', 'Logged out', NULL),
(99, 48, '2018-03-31 15:34:46', 'log', 'Logged in', NULL),
(100, 48, '2018-03-31 15:36:37', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(101, 48, '2018-03-31 15:36:38', 'bedDischarge', 'Discharged a patient from bed number : 2', NULL),
(102, 48, '2018-03-31 15:36:39', 'bedDischarge', 'Discharged a patient from bed number : 3', NULL),
(103, 47, '2018-03-31 15:44:15', 'log', 'Logged in', NULL),
(104, 48, '2018-03-31 15:44:32', 'log', 'Logged in', NULL),
(105, 48, '2018-03-31 15:47:05', 'add', 'Added: Military Dependent - George Chicoine', NULL),
(106, 48, '2018-03-31 15:47:45', 'urgentTodo', 'Added to do urgent: General Meeting at Lim Hall', NULL),
(107, 48, '2018-03-31 15:48:01', 'delTodo', 'Deleted data from todo List', NULL),
(108, 48, '2018-03-31 15:49:37', 'add', 'Added: Cadet - Kathy Schwalbe', NULL),
(109, 48, '2018-03-31 15:50:47', 'initialAssessment', 'assessment for undefined', 101),
(110, 48, '2018-03-31 15:52:24', 'er', 'ER for undefined', 100),
(111, 48, '2018-03-31 15:53:25', 'bedDischarge', 'Discharged a patient from bed number : 25', NULL),
(112, 48, '2018-03-31 15:54:36', 'patientInfoEdit', 'Edited patient Information of Kathy Schwalbe', 101),
(113, 48, '2018-03-31 15:55:40', 'settingsProfileManagement', 'Edited personal info.', NULL),
(114, 48, '2018-03-31 15:55:40', 'log', 'Logged out', NULL),
(115, 48, '2018-03-31 15:55:53', 'log', 'Logged in', NULL),
(116, 48, '2018-03-31 15:56:03', 'log', 'Logged out', NULL),
(117, 47, '2018-03-31 15:56:37', 'log', 'Logged out', NULL),
(118, 48, '2018-03-31 16:02:46', 'log', 'Logged in', NULL),
(119, 47, '2018-03-31 16:02:50', 'log', 'Logged in', NULL),
(120, 48, '2018-03-31 16:04:03', 'add', 'Added: Authorized Civilian - Sam Conception', NULL),
(121, 48, '2018-03-31 16:05:28', 'add', 'Added: Military Dependent - Markis Valdez', NULL),
(122, 48, '2018-03-31 16:05:52', 'initialAssessment', 'assessment for undefined', 102),
(123, 48, '2018-03-31 16:06:15', 'er', 'ER for undefined', 103),
(124, 48, '2018-03-31 16:07:44', 'add', 'Added: Civilian - Cassandra Prades', NULL),
(125, 48, '2018-03-31 16:07:52', 'er', 'ER for Cassandra Prades', 104),
(126, 47, '2018-03-31 16:08:50', 'bedDischarge', 'Discharged a patient from bed number : 1', 104),
(127, 48, '2018-03-31 16:09:51', 'add', 'Added: Military Officer - Cherry Peach', NULL),
(128, 48, '2018-03-31 16:11:08', 'add', 'Added: Cadet - Alexander Pierce II', NULL),
(129, 48, '2018-03-31 16:11:45', 'initialAssessment', 'assessment for undefined', 106),
(130, 48, '2018-03-31 16:12:09', 'er', 'ER for Cherry Peach', 105),
(131, 48, '2018-03-31 16:13:23', 'log', 'Logged out', NULL),
(132, 45, '2018-03-31 16:13:26', 'log', 'Logged in', NULL),
(133, 47, '2018-03-31 16:13:40', 'log', 'Logged out', NULL),
(134, 44, '2018-03-31 16:15:34', 'log', 'Logged in', NULL),
(135, 45, '2018-03-31 16:15:45', 'log', 'Logged out', NULL),
(136, 47, '2018-03-31 16:15:49', 'log', 'Logged in', NULL),
(137, 47, '2018-03-31 16:16:31', 'log', 'Logged out', NULL),
(138, 47, '2018-03-31 16:16:44', 'log', 'Logged in', NULL),
(139, 47, '2018-03-31 16:17:33', 'appointment', 'Set Appointment with undefined on 2018-04-04 10:00:00', NULL),
(140, 47, '2018-03-31 16:17:53', 'cancelAppointment', 'Canceled appointment with: Cassandra Prades', NULL),
(141, 47, '2018-03-31 16:18:21', 'bedDischarge', 'Discharged a patient from bed number : 5', 103),
(142, 47, '2018-03-31 16:18:59', 'patientInfoEdit', 'Edited patient Information of Sam Conception', 102),
(143, 47, '2018-03-31 16:20:14', 'prescription', 'Prescribed a medicine to : Kathy Schwalbe', NULL),
(144, 44, '2018-03-31 16:20:42', 'log', 'Logged out', NULL),
(145, 45, '2018-03-31 16:20:46', 'log', 'Logged in', NULL),
(146, 47, '2018-03-31 16:21:39', 'bed', 'Alloted bed number: 23 to patient:Alexander Pierce II', 106),
(147, 47, '2018-03-31 16:22:25', 'diagnosis', 'diagnosis for : Alexander Pierce II', NULL),
(148, 47, '2018-03-31 16:23:20', 'labRequest', 'Lab request for : Sam Conception', NULL),
(149, 45, '2018-03-31 16:24:03', 'log', 'Logged out', NULL),
(150, 44, '2018-03-31 16:26:02', 'log', 'Logged in', NULL),
(151, 44, '2018-03-31 16:27:05', 'log', 'Logged out', NULL),
(152, 44, '2018-03-31 16:27:41', 'log', 'Logged in', NULL),
(153, 44, '2018-03-31 16:29:31', 'approvedPrescription', 'Approved prescription for: Kathy Schwalbe', NULL),
(154, 44, '2018-03-31 16:31:33', 'settingsProfileManagement', 'Edited personal info.', NULL),
(155, 44, '2018-03-31 16:32:20', 'log', 'Logged out', NULL),
(156, 45, '2018-03-31 16:33:28', 'log', 'Logged in', NULL),
(157, 45, '2018-03-31 16:34:11', 'log', 'Logged out', NULL),
(158, 45, '2018-03-31 16:34:32', 'log', 'Logged in', NULL),
(159, 45, '2018-03-31 16:35:13', 'cancelLabRequest', 'Cancelled lab request for: Sam Conception', NULL),
(160, 47, '2018-03-31 16:36:12', 'cancelLabRequest', 'Canceled lab request for: Sam Conception', NULL),
(161, 47, '2018-03-31 16:36:34', 'settingsProfileManagement', 'Edited personal info.', NULL),
(162, 47, '2018-03-31 16:36:43', 'log', 'Logged out', NULL),
(163, 48, '2018-04-01 10:05:07', 'log', 'Logged in', NULL),
(164, 48, '2018-04-01 10:07:32', 'add', 'Added: Military Officer - Jacko Guerell', NULL),
(165, 48, '2018-04-01 10:09:21', 'add', 'Added: Authorized Civilian - Lily Corpuz', NULL),
(166, 25, '2018-04-01 10:11:45', 'log', 'Logged out', NULL),
(167, 25, '2018-04-01 10:13:28', 'log', 'Logged in', NULL),
(168, 25, '2018-04-01 10:14:18', 'urgentTodo', 'Added to do urgent: Seminar at CEISC Bldg', NULL),
(169, 25, '2018-04-01 10:14:40', 'generalTodo', 'Added to do general: General Meeting at Lim Hall', NULL),
(170, 25, '2018-04-01 10:29:32', 'addUser', 'Added user: Molly Graves', NULL),
(171, 25, '2018-04-01 10:31:15', 'addUser', 'Added user: Jennifer Pineda', NULL),
(172, 25, '2018-04-01 10:32:04', 'removedUser', 'removed user: Jennifer Pineda', NULL),
(173, 25, '2018-04-01 10:32:19', 'log', 'Logged out', NULL),
(174, 25, '2018-04-01 10:32:22', 'log', 'Logged in', NULL),
(175, 25, '2018-04-01 10:33:09', 'log', 'Logged out', NULL),
(176, 48, '2018-04-01 10:33:13', 'log', 'Logged in', NULL),
(177, 48, '2018-04-01 10:38:51', 'generalTodo', 'Added to do general: Meeting with Department Head', NULL),
(178, 48, '2018-04-01 10:47:23', 'log', 'Logged out', NULL),
(179, 25, '2018-04-01 10:47:30', 'log', 'Logged in', NULL),
(180, 25, '2018-04-01 10:52:36', 'log', 'Logged out', NULL),
(181, 48, '2018-04-01 10:52:43', 'log', 'Logged in', NULL),
(182, 48, '2018-04-01 10:57:13', 'log', 'Logged out', NULL),
(183, 25, '2018-04-01 10:57:16', 'log', 'Logged in', NULL),
(184, 25, '2018-04-01 10:57:35', 'log', 'Logged out', NULL),
(185, 48, '2018-04-01 10:57:39', 'log', 'Logged in', NULL),
(186, 48, '2018-04-01 10:58:46', 'initialAssessment', 'assessment for undefined', 107),
(187, 47, '2018-04-01 11:00:17', 'log', 'Logged in', NULL),
(188, 47, '2018-04-01 11:00:49', 'generalTodo', 'Added to do general: Meeting with Department Head', NULL),
(189, 47, '2018-04-01 11:01:45', 'urgentTodo', 'Added to do urgent: Seminar at BGH', NULL),
(190, 48, '2018-04-01 11:03:50', 'log', 'Logged out', NULL),
(191, 47, '2018-04-01 11:03:54', 'log', 'Logged in', NULL),
(192, 47, '2018-04-01 11:24:32', 'appointment', 'Set Appointment with undefined on 2018-04-10 13:00:00', NULL),
(193, 47, '2018-04-01 11:25:03', 'appointment', 'Set Appointment with undefined on 2018-04-05 09:00:00', NULL),
(194, 47, '2018-04-01 11:26:15', 'prescription', 'Prescribed a medicine to : Kathy Schwalbe', NULL),
(195, 47, '2018-04-01 11:29:21', 'labRequest', 'Lab request for : Sam Conception', NULL),
(196, 47, '2018-04-01 11:29:37', 'labRequest', 'Lab request for : Cassandra Prades', NULL),
(197, 47, '2018-04-01 11:38:04', 'log', 'Logged out', NULL),
(198, 44, '2018-04-01 11:38:07', 'log', 'Logged in', NULL),
(199, 44, '2018-04-01 12:25:35', 'generalTodo', 'Added to do general: Meeting at Lopez Hall', NULL),
(200, 44, '2018-04-01 12:27:36', 'approvedPrescription', 'Approved prescription for: Kathy Schwalbe', NULL),
(201, 44, '2018-04-01 12:28:17', 'log', 'Logged out', NULL),
(202, 48, '2018-04-01 12:29:53', 'log', 'Logged in', NULL),
(203, 48, '2018-04-01 12:30:53', 'log', 'Logged out', NULL),
(204, 45, '2018-04-01 12:30:56', 'log', 'Logged in', NULL),
(205, 45, '2018-04-01 12:31:10', 'generalTodo', 'Added to do general: Meeting at Lopez Hall', NULL),
(206, 45, '2018-04-01 12:32:01', 'log', 'Logged out', NULL),
(207, 44, '2018-04-01 12:32:05', 'log', 'Logged in', NULL),
(208, 44, '2018-04-01 12:37:35', 'log', 'Logged out', NULL),
(209, 25, '2018-04-01 12:37:41', 'log', 'Logged in', NULL),
(210, 25, '2018-04-01 12:38:22', 'addUser', 'Added user: Geraldine Ocampo', NULL),
(211, 25, '2018-04-01 12:39:06', 'log', 'Logged out', NULL),
(212, 48, '2018-04-01 12:39:14', 'log', 'Logged in', NULL),
(213, 48, '2018-04-01 12:39:28', 'log', 'Logged out', NULL),
(214, 25, '2018-04-01 12:39:43', 'log', 'Logged in', NULL),
(215, 25, '2018-04-01 12:40:30', 'addUser', 'Added user: Kaila Geronimo', NULL),
(216, 25, '2018-04-01 12:40:37', 'log', 'Logged out', NULL),
(217, 48, '2018-04-01 12:40:40', 'log', 'Logged in', NULL),
(218, 48, '2018-04-01 12:41:10', 'initialAssessment', 'assessment for undefined', 108),
(219, 48, '2018-04-01 12:41:36', 'log', 'Logged out', NULL),
(220, 45, '2018-04-01 12:41:38', 'log', 'Logged in', NULL),
(221, 45, '2018-04-01 12:41:44', 'confirmedLabRequest', 'Confirmed lab request for: Sam Conception', NULL),
(222, 45, '2018-04-01 12:44:54', 'log', 'Logged out', NULL),
(223, 44, '2018-04-01 12:44:57', 'log', 'Logged in', NULL),
(224, 44, '2018-04-01 12:48:56', 'log', 'Logged out', NULL),
(225, 25, '2018-04-01 12:49:01', 'log', 'Logged in', NULL),
(226, 25, '2018-04-01 12:49:46', 'log', 'Logged out', NULL),
(227, 47, '2018-04-01 12:49:50', 'log', 'Logged in', NULL),
(228, 47, '2018-04-01 12:50:06', 'settingsProfileManagement', 'Edited personal info.', NULL),
(229, 47, '2018-04-01 12:50:06', 'log', 'Logged out', NULL),
(230, 47, '2018-04-01 12:50:09', 'log', 'Logged in', NULL),
(231, 47, '2018-04-01 12:52:36', 'log', 'Logged out', NULL),
(232, 48, '2018-04-01 12:52:39', 'log', 'Logged in', NULL),
(233, 48, '2018-04-01 13:03:17', 'log', 'Logged out', NULL),
(234, 45, '2018-04-01 13:03:27', 'log', 'Logged in', NULL),
(235, 45, '2018-04-01 13:06:57', 'log', 'Logged out', NULL),
(236, 45, '2018-04-01 13:07:01', 'log', 'Logged in', NULL),
(237, 45, '2018-04-01 13:13:28', 'log', 'Logged out', NULL),
(238, 25, '2018-04-01 13:13:30', 'log', 'Logged in', NULL),
(239, 25, '2018-04-01 13:16:48', 'log', 'Logged in', NULL),
(240, 25, '2018-04-01 13:18:33', 'log', 'Logged in', NULL),
(241, 25, '2018-04-01 13:22:09', 'log', 'Logged in', NULL),
(242, 25, '2018-04-01 13:22:16', 'settingsProfileManagement', 'Edited personal info.', NULL),
(243, 25, '2018-04-01 13:24:25', 'log', 'Logged in', NULL),
(244, 25, '2018-04-01 13:25:04', 'addUser', 'Added user: Jerry Ferrel', NULL),
(245, 44, '2018-04-01 13:33:47', 'log', 'Logged in', NULL),
(246, 44, '2018-04-01 13:35:20', 'log', 'Logged in', NULL),
(247, 25, '2018-04-01 13:54:25', 'log', 'Logged in', NULL),
(248, 25, '2018-04-01 13:54:39', 'removedUser', 'removed user: Kaila Geronimo', NULL),
(249, 25, '2018-04-01 13:54:56', 'log', 'Logged out', NULL),
(250, 25, '2018-04-01 13:54:59', 'log', 'Logged in', NULL),
(251, 25, '2018-04-01 13:55:55', 'log', 'Logged out', NULL),
(252, 47, '2018-04-01 13:56:01', 'log', 'Logged in', NULL),
(253, 47, '2018-04-01 13:57:11', 'log', 'Logged out', NULL),
(254, 48, '2018-04-01 13:57:14', 'log', 'Logged in', NULL),
(255, 48, '2018-04-01 13:59:49', 'log', 'Logged out', NULL),
(256, 45, '2018-04-01 13:59:52', 'log', 'Logged in', NULL),
(257, 45, '2018-04-01 14:00:59', 'log', 'Logged out', NULL),
(258, 44, '2018-04-01 14:01:02', 'log', 'Logged in', NULL),
(259, 44, '2018-04-01 14:01:32', 'log', 'Logged out', NULL),
(260, 48, '2018-04-01 14:01:35', 'log', 'Logged in', NULL),
(261, 48, '2018-04-01 14:01:59', 'patientInfoEdit', 'Edited patient Information of Sam Conception', 102),
(262, 48, '2018-04-01 14:04:05', 'add', 'Added: Civilian - Patricia Gomez', NULL),
(263, 48, '2018-04-01 14:07:05', 'add', 'Added: Cadet - France Willard', NULL),
(264, 48, '2018-04-01 14:07:34', 'bed', 'allotted bed number 6 for ER patient France Willard', 110),
(265, 48, '2018-04-01 14:07:34', 'er', 'Added ER patient France Willard', 110),
(266, 48, '2018-04-01 14:08:49', 'add', 'Added: Authorized Civilian - Mae Rosario', NULL),
(267, 48, '2018-04-01 14:09:17', 'bedDischarge', 'Discharged a patient from bed number : 23', NULL),
(268, 48, '2018-04-01 14:11:31', 'log', 'Logged out', NULL),
(269, 47, '2018-04-01 14:11:34', 'log', 'Logged in', NULL),
(270, 47, '2018-04-01 14:11:47', 'labRequest', 'Lab request for : Lily Corpuz', NULL),
(271, 47, '2018-04-01 14:11:57', 'labRequest', 'Lab request for : Jacko Guerell', NULL),
(272, 47, '2018-04-01 14:11:59', 'log', 'Logged out', NULL),
(273, 45, '2018-04-01 14:12:02', 'log', 'Logged in', NULL),
(274, 48, '2018-04-01 14:15:28', 'log', 'Logged in', NULL),
(275, 48, '2018-04-01 14:16:10', 'log', 'Logged out', NULL),
(276, 45, '2018-04-01 14:16:13', 'log', 'Logged in', NULL),
(277, 45, '2018-04-01 14:17:59', 'log', 'Logged out', NULL),
(278, 48, '2018-04-01 16:06:45', 'log', 'Logged in', NULL),
(279, 48, '2018-04-01 16:15:35', 'log', 'Logged out', NULL),
(280, 44, '2018-04-01 16:15:38', 'log', 'Logged in', NULL),
(281, 44, '2018-04-01 16:15:45', 'log', 'Logged out', NULL),
(282, 47, '2018-04-01 16:15:50', 'log', 'Logged in', NULL),
(283, 47, '2018-04-01 16:16:37', 'prescription', 'Prescribed a medicine to : Kathy Schwalbe', NULL),
(284, 47, '2018-04-01 16:16:40', 'log', 'Logged out', NULL),
(285, 44, '2018-04-01 16:16:43', 'log', 'Logged in', NULL),
(286, 44, '2018-04-01 16:24:46', 'log', 'Logged out', NULL),
(287, 25, '2018-04-01 16:25:32', 'log', 'Logged in', NULL),
(288, 25, '2018-04-01 16:54:22', 'log', 'Logged in', NULL),
(289, 25, '2018-04-01 16:54:26', 'log', 'Logged out', NULL),
(290, 48, '2018-04-01 16:54:28', 'log', 'Logged in', NULL),
(291, 48, '2018-04-01 16:54:32', 'log', 'Logged out', NULL),
(292, 47, '2018-04-01 16:54:35', 'log', 'Logged in', NULL),
(293, 47, '2018-04-01 16:54:42', 'log', 'Logged out', NULL),
(294, 25, '2018-04-01 19:09:07', 'log', 'Logged in', NULL),
(295, 25, '2018-04-01 20:56:02', 'log', 'Logged in', NULL),
(296, 25, '2018-04-01 20:57:58', 'log', 'Logged out', NULL),
(297, 44, '2018-04-01 20:58:01', 'log', 'Logged in', NULL),
(298, 44, '2018-04-01 20:58:16', 'settingsProfileManagement', 'Edited personal info.', NULL),
(299, 44, '2018-04-01 20:58:16', 'log', 'Logged out', NULL),
(300, 25, '2018-04-01 20:58:25', 'log', 'Logged in', NULL),
(301, 25, '2018-04-01 22:08:48', 'log', 'Logged out', NULL),
(302, 44, '2018-04-01 22:08:54', 'log', 'Logged in', NULL),
(303, 44, '2018-04-01 22:09:02', 'approvedPrescription', 'Approved prescription for: Kathy Schwalbe', NULL),
(304, 44, '2018-04-01 22:09:05', 'log', 'Logged out', NULL),
(305, 47, '2018-04-01 22:09:08', 'log', 'Logged in', NULL),
(306, 47, '2018-04-01 22:21:43', 'log', 'Logged out', NULL),
(307, 48, '2018-04-01 22:21:47', 'log', 'Logged in', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`, `remarks`) VALUES
(1, '2018-04-10 05:00:00', 47, 107, 'Follow-up check-up'),
(2, '2018-04-05 01:00:00', 47, 108, 'Follow-up check-up');

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
(1, 'Unoccupied', NULL, NULL, NULL),
(2, 'Unoccupied', NULL, NULL, NULL),
(3, 'Unoccupied', NULL, NULL, NULL),
(4, 'occupied', '2018-03-31 16:12:09', NULL, 105),
(5, 'Unoccupied', NULL, NULL, NULL),
(6, 'occupied', '2018-04-01 14:07:34', NULL, 110),
(7, 'Unoccupied', NULL, NULL, NULL),
(8, 'Unoccupied', NULL, NULL, NULL),
(9, 'Unoccupied', NULL, NULL, NULL),
(10, 'Unoccupied', NULL, NULL, NULL),
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`diag_id`, `diagnosis`, `date`, `patient_id`, `doctor_id`) VALUES
(3, 'Extreme discomfort caused by stomach pains', '2018-03-31 08:22:25', 106, 47);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`request_id`, `type`, `timestamp`, `remarks`, `doctor_id`, `patient_id`, `lab_status`) VALUES
(1, 'Hematology', '2018-04-01 03:29:21', 'Return results ASAP', 47, 102, 'confirmed'),
(2, 'Blood Chemistry', '2018-04-01 03:29:37', 'Return results ASAP', 47, 104, 'pending'),
(3, 'Microscopy', '2018-04-01 06:11:47', 'Return results', 47, 108, 'pending'),
(4, 'X-Ray', '2018-04-01 06:11:57', 'Return results asap', 47, 107, 'pending');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd_count`
--

INSERT INTO `opd_count` (`opd_count_id`, `date_stamp`, `patient_id`) VALUES
(7, '2018-03-31 08:11:45', 106),
(6, '2018-03-31 08:05:52', 102),
(5, '2018-03-31 07:50:47', 101),
(8, '2018-04-01 02:58:46', 107),
(9, '2018-04-01 04:41:10', 108);

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
  `address` varchar(30) NOT NULL,
  `religion` varchar(15) DEFAULT NULL,
  `blood_type` varchar(2) DEFAULT NULL,
  `allergies` text,
  `father` text,
  `mother` text,
  `birth_history` text,
  `rankORsn` varchar(20) DEFAULT NULL,
  `immunization` text,
  `family_history` text,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `rankORsn`, `immunization`, `family_history`) VALUES
(100, 'Military Dependent', 'George Chicoine', 29, '4th Infantry Battalion', 'M', 'Single', '1988-09-07', 'Tuba, Benguet', 'Roman Catholic', 'A', 'Peanuts', 'Mark Chicoine\n:Police Officer', 'Wendy Chicoine\n:Housewife', '', '232435', 'BCD:2018-03-06\nHepatitis A:2018-01-01\n\n', 'CA\nDM\n\n'),
(101, 'Cadet', 'Kathy Schwalbe', 21, '1st Class', 'F', 'Single', '1996-08-02', 'Gabriela Silang, Baguio City', 'Born Again', 'B', '', 'Peter Schwalbe:Doctor', 'Carrie Schwalbe:Doctor', '', '', '', ''),
(102, 'military officer', 'Sam Conception', 20, '', 'M', 'Single', '1997-05-06', 'Pasig City', '', 'O', '', 'Cardo Conception:Businessman', 'Carol Conception:Businesswoman', '', '', '', ''),
(103, 'Military Dependent', 'Markis Valdez', 16, '', 'M', 'Single', '2001-07-08', 'Campo Sioco, Baguio City', 'Roman Catholic', 'A', '', 'Clark Valdez\n:OFW', 'Cassie Valdez\n:Housewife', '', '', '\n', 'CVD\n\n'),
(104, 'Civilian', 'Cassandra Prades', 19, '', 'F', 'Single', '1998-09-01', 'Calasiao, Pangasinan', 'Baptist', 'AB', '', 'Chad Prades\n:Fireman', 'Charrie Prades\n:Dentist', '', '', '\n', '\n'),
(105, 'Military Officer', 'Cherry Peach', 27, '7th Battalion', 'F', 'Married', '1991-03-02', 'Loakan, Baguio City', '', 'A', '', 'Freddie Peach\n:Preacher', 'Maricar Peach\n:Veterenarian', '', '18264', '\n', '\n'),
(106, 'Cadet', 'Alexander Pierce II', 21, '', 'M', 'Single', '1996-05-12', 'Subic, Zamales', '', 'A', '', 'Alexander Pierce I\n:Seaman', 'Cara Pierce\n:Housewife', '', '', '\n', '\n'),
(107, 'Military Officer', 'Jacko Guerell', 25, '', 'M', 'Single', '1992-05-03', 'La Trinidad, Benguet', '', 'A', '', 'Richard Guerell\n:Lawyer', 'May Guerell\n:Lawyer', '', '89124', '\n', '\n'),
(108, 'Authorized Civilian', 'Lily Corpuz', 15, '', 'F', 'Single', '2002-07-03', 'Hillside, Baguio City', '', 'AB', '', 'Ted Corpuz\n:Doctor', 'Alyson Corpuz\n:Nurse', '', '', '\n', '\n'),
(109, 'Civilian', 'Patricia Gomez', 24, '', 'F', 'Single', '1993-09-01', 'Crystal Cave, Baguio City', 'Anglican', 'B', '', 'Reinier Gomez\n:Doctor', 'Paula Gomez\n:Housewife', '', '', '\n', 'Mental Illness\n\n'),
(110, 'Cadet', 'France Willard', 27, '1st Class', 'M', 'Single', '1990-10-10', 'La Union', '', 'A', '', 'Richard Willard\n:Farmer', 'Perla Willard\n:Farmer', '', '', 'Rabies:1995-03-05\n\n', '\n'),
(111, 'Authorized Civilian', 'Mae Rosario', 11, '', 'F', 'Single', '2006-11-02', 'Pias, Baguio City', '', 'A', '', 'Jeff Rosario\n:Manager', 'Kyla Rosario\n:Teacher', '', '', '\n', 'CVD\n\n');

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
  PRIMARY KEY (`histo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`histo_id`, `date_stamp`, `initial_assessment`, `lab`, `medicine`, `diagnosis`, `bed`, `patient_id`, `doctor_id`, `vitals`, `status`) VALUES
(8, '2018-03-31 07:50:47', 'Coughs and Colds', NULL, 'Solmux,9,50mg,3x a day\nNeozep,12,50mg,every 6 hours\nDynatusin,1,500mL,every 8 hours\n', NULL, NULL, 101, 47, 'BP: 120/90\nCR: 12\nPR: 24\nRR: 10\n TEMP: 37\nWT: 56', 'pending'),
(9, '2018-03-31 07:52:24', NULL, NULL, NULL, NULL, '25, ', 100, 47, NULL, 'pending'),
(10, '2018-03-31 08:05:52', 'Fever', 'Type: Blood Chemistry\n Remarks: Return results ASAP\nType: Hematology\n Remarks: Return results ASAP\n', NULL, NULL, NULL, 102, 47, 'BP: 120/90\nCR: 12\nPR: 23\nRR: 12\n TEMP: 38\nWT: 45', 'pending'),
(11, '2018-03-31 08:06:15', NULL, NULL, NULL, NULL, '5, ', 103, 47, NULL, 'pending'),
(12, '2018-03-31 08:07:52', NULL, 'Type: Blood Chemistry\n Remarks: Return results ASAP\n', NULL, NULL, '1, ', 104, 47, NULL, 'pending'),
(13, '2018-03-31 08:11:45', 'Stomach Pains', NULL, NULL, 'Extreme discomfort caused by stomach pains\n', '23, ', 106, 47, 'BP: 120/80\nCR: 13\nPR: 25\nRR: 14\n TEMP: 36\nWT: 67', 'pending'),
(14, '2018-03-31 08:12:09', NULL, NULL, NULL, NULL, '4, ', 105, 47, NULL, 'pending'),
(15, '2018-04-01 02:58:46', 'Headache', 'Type: X-Ray\n Remarks: Return results asap\n', NULL, NULL, NULL, 107, 47, 'BP: 120/90\nCR: 14\nPR: 21\nRR: 23\n TEMP: 37\nWT: 67', 'pending'),
(16, '2018-04-01 04:41:10', 'Mild fever', 'Type: Microscopy\n Remarks: Return results\n', NULL, NULL, NULL, 108, 47, 'BP: 120/90\nCR: 10\nPR: 18\nRR: 32\n TEMP: 38\nWT: 60', 'pending'),
(17, '2018-04-01 06:07:34', NULL, NULL, NULL, NULL, '6, ', 110, 47, NULL, 'pending');

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
  PRIMARY KEY (`prescription_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_stamp`, `medicine`, `quantity`, `dosage`, `timeframe`, `doctor_id`, `patient_id`, `status`) VALUES
(1, '2018-03-31 08:20:14', 'Solmux', '9', '50mg', '3x a day', 47, 101, 'confirmed'),
(2, '2018-04-01 03:26:15', 'Neozep', '12', '50mg', 'every 6 hours', 47, 101, 'confirmed'),
(3, '2018-04-01 08:16:37', 'Dynatusin', '1', '500mL', 'every 8 hours', 47, 101, 'confirmed');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_list`
--

INSERT INTO `todo_list` (`todo_id`, `status`, `description`, `date`, `account_id`) VALUES
(1, 'urgent', 'Seminar at CEISC Bldg', '2018-04-17 10:00:00', 25),
(2, 'general', 'General Meeting at Lim Hall', '2018-04-10 15:00:00', 25),
(3, 'general', 'Meeting with Department Head', '2018-04-03 08:00:00', 48),
(4, 'general', 'Meeting with Department Head', '2018-04-03 08:00:00', 47),
(5, 'urgent', 'Seminar at BGH', '2018-04-04 09:00:00', 47),
(6, 'general', 'Meeting at Lopez Hall', '2018-04-09 09:00:00', 44),
(7, 'general', 'Meeting at Lopez Hall', '2018-04-09 09:00:00', 45);

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
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`) VALUES
(25, 'admin', '$2a$10$Ukc5O4P6sSV2ZnGbP.jeAOCU2LNzN2BSzIht7IMj.uwM7EeFr0J2m', 'admin', 'Anthony Grubat', 28, 'M', 'PMA Baguio', '9718236712'),
(44, 'pharm', '$2a$10$C9QozoNmaP4PPQ2ufWovROl5MtQLlbrKd7vaDVPUGSpGDiWhomXG2', 'pharmacist', 'Jennie Reyes', 22, 'F', 'Camp 8, Baguio City', '9176541234'),
(45, 'lab', '$2a$10$HNIaxBHtq28Ou6jUrxsfD.iUOOg5YL7pH9VRxbbE6yxNHEUUvxenS', 'laboratorist', 'Marco Javier', 21, 'M', 'San Vicente, Baguio City', '09187564123'),
(47, 'doctor', '$2a$10$o34jCMmEFbhBLVzUfrHm8uA/BITAEaSpIKN3Hj2j2Z260NHJnX3cW', 'doctor', 'Johnyy Deep', 23, 'M', 'Sta. Monica Subd., Subic', '9176789453'),
(48, 'nurse', '$2a$10$aLIOVImb0kniVWsHOlJmI.aAk5qUixNxapVSKrQMgQa6Piyp4oN7m', 'nurse', 'Jolly Garcia', 22, 'F', 'Camp 7, Baguio City', '9176321345'),
(49, 'doc', '$2a$10$HQGDBXw6zvtis7NJo9Uc7e4T6gY2iP.pEoFAecvn.K/LNxZ5Vuor2', 'doctor', 'Molly Graves', 27, 'F', 'Suello Village, Baguio City', '09187364521'),
(51, 'n', '$2a$10$lRIRbUS/lKktkfBmCl0mc.l6XzdIpLObS50V6.EWPuaftBh/.3ZG2', 'nurse', 'Geraldine Ocampo', 29, 'F', 'Diego Silang, Baguio City', '09187463251'),
(53, 'docc', '$2a$10$OTOe2tWti7GFI6BNMegQqOmttK.xa9izlaoeD9kMympVJdwaHqxSe', 'doctor', 'Jerry Ferrel', 29, 'M', 'Mines View, Baguio City', '09187362514');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_count`
--

INSERT INTO `ward_count` (`ward_count_id`, `date_stamp`, `patient_id`) VALUES
(6, '2018-03-31 08:07:52', 104),
(5, '2018-03-31 08:06:15', 103),
(4, '2018-03-31 07:52:24', 100),
(7, '2018-03-31 08:12:09', 105),
(8, '2018-03-31 08:21:39', 106),
(9, '2018-04-01 06:07:34', 110);

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
