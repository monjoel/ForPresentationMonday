-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 18, 2018 at 05:58 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

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
(137, 41, '2018-05-18 11:55:08', 'log', 'Logged in', NULL),
(138, 41, '2018-05-18 12:13:53', 'log', 'Logged in', NULL),
(139, 41, '2018-05-18 12:18:16', 'log', 'Logged in', NULL),
(140, 41, '2018-05-18 12:49:41', 'log', 'Logged in', NULL),
(141, 41, '2018-05-18 12:55:38', 'log', 'Logged in', NULL),
(142, 41, '2018-05-18 13:02:42', 'log', 'Logged in', NULL),
(143, 41, '2018-05-18 13:05:56', 'log', 'Logged in', NULL),
(144, 41, '2018-05-18 13:09:01', 'log', 'Logged in', NULL),
(145, 41, '2018-05-18 13:10:38', 'log', 'Logged in', NULL),
(146, 41, '2018-05-18 13:16:40', 'log', 'Logged in', NULL),
(147, 41, '2018-05-18 13:21:06', 'log', 'Logged in', NULL),
(148, 41, '2018-05-18 13:22:45', 'log', 'Logged in', NULL),
(149, 41, '2018-05-18 13:27:24', 'log', 'Logged in', NULL),
(150, 41, '2018-05-18 13:36:09', 'log', 'Logged in', NULL),
(151, 41, '2018-05-18 13:38:27', 'log', 'Logged in', NULL),
(152, 41, '2018-05-18 13:39:38', 'log', 'Logged in', NULL),
(153, 41, '2018-05-18 13:41:06', 'log', 'Logged in', NULL),
(154, 41, '2018-05-18 13:52:34', 'log', 'Logged in', NULL);

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
(1, 'Unoccupied', NULL, NULL, NULL),
(2, 'occupied', '2018-04-23 10:35:04', NULL, 88),
(3, 'Unoccupied', NULL, NULL, NULL),
(4, 'Unoccupied', NULL, NULL, NULL),
(5, 'Unoccupied', NULL, NULL, NULL),
(6, 'Unoccupied', NULL, NULL, NULL),
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_counter`
--

INSERT INTO `lab_counter` (`lab_counter_id`, `timestamp`, `patient_id`, `type`, `name`) VALUES
(1, '2018-04-22 14:16:01', 93, 'X-Ray', 'Tom Aldrin III'),
(2, '2018-04-22 14:17:16', 89, 'Parasitology', 'Carla Chicoine'),
(3, '2018-04-23 02:07:56', 91, 'Blood Chemistry', 'Roberto Garcia');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`request_id`, `type`, `timestamp`, `remarks`, `doctor_id`, `patient_id`, `lab_status`) VALUES
(1, 'X-Ray', '2018-04-22 14:16:01', 'Send back results asap', 40, 93, 'confirmed'),
(2, 'Parasitology', '2018-04-22 14:17:16', 'Send back results asap', 40, 89, 'pending'),
(3, 'Blood Chemistry', '2018-04-23 02:07:56', 'blood test', 40, 91, 'confirmed');

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
  `rank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `SN`, `immunization`, `family_history`, `rank_id`) VALUES
(88, 'Military Officer', 'Greg Chicoine', 32, '', 'M', 'Married', '1985-10-01', '27 Montebello Subdivision, Baguio City', 'Anglican', 'A', 'Peanuts', 'Elmer Chicoine\n:Doctor', 'Mary Chicoine\n:Doctor', '', '', 'BCD:1985-11-01\n\n', 'DM\nCA\n\n', 12),
(89, 'Military Dependent', 'Carla Chicoine', 15, '', 'F', 'Single', '2002-09-29', '23 Sta. Barbara, Caguio City', 'Anglican', 'A', '', 'Greg Chicoine\n:Military Officer', 'Carrie Chicoine\n:Housewife', '', '', '\n', 'Asthma\n\n', 45),
(90, 'Civilian', 'Rose Miller', 29, '', 'F', 'Married', '1988-11-11', 'Pines Village, Baguio City', 'Roman Catholic', 'B', '', 'Karl Miller\n:Fireman', 'Rachel Miller\n:Nurse', '', '', 'Chicken Pox:1998-04-15\n\n', 'CVD\n\n', 1),
(91, 'Authorized Civilian', 'Roberto Garcia', 37, '', 'M', 'Married', '1980-08-18', 'Camp Bado, Dangwa, La Trinidad', 'Roman Catholic', 'AB', '', 'Marcello Garcia\n:', 'Maria Garcia\n:', '', '', '\n', 'Mental Illness\n\n', 4),
(92, 'Cadet', 'David Estrella', 27, '14th Infantry Battalion', 'M', 'Single', '1990-09-16', 'Unit 6, Sta. Cecilia Compound, Baguio City', 'Born Again', 'O', 'Cheese', 'Carlo Estrella\n:Barista', 'Jaimie Estrella\n:Waitress', '', '', '\n', 'CA\n\n', 39),
(93, 'Cadet', 'Tom Aldrin III', 27, '14th Infantry Battalion', 'M', 'Single', '1991-01-02', '17 Richgate Subdivision, Baguio City', 'Iglesia ni Cristo', 'A', '', 'Tom Aldrin II\n:Doctor', 'May Aldrin\n:Housewife', '', '', '\n', 'DM\n\n', 50),
(94, 'Cadet', 'Hailey Sanchez', 26, '17th Infantry Battalion', 'F', 'Single', '1991-08-08', '15 Richgate Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Carlo Sanchez\n:Police Officer', 'May Sanchez\n:Police Officer', '', '', '\n', 'CA\nCVD\n\n', 51),
(95, 'Military Officer', 'Teo Boston', 32, '', 'M', 'Married', '1985-09-19', 'Arc Residences Compound, Baguio City', 'Roman Catholic', 'B', '', 'Carlos Boston\n:Military Officer', 'Carla Boston\n:Housewife', '', '', '\n', '\n', 10),
(96, 'Military Officer', 'Rachelle Ortega', 28, '', 'F', 'Maried', '1989-12-18', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Paulo Ortega:Politician', 'Paula Ortega:Housewife', '', '', '', 'Asthma\r\n\r\n', 12),
(97, 'Military Dependent', 'Mikhee Ortega', 12, '', 'F', 'Single', '2005-07-27', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', 'Kiwi', 'Rodolfo Ortega\n:Chef', 'Rachelle Ortega\n:Military Officer', '', '', '\n', '\n', 12),
(98, 'Civilian', 'Miguel Santos', 30, '', 'M', 'Married', '1987-05-16', '29 Lower Liwanag, Loakan, Baguio City', '', 'A', '', 'Conrad Santos\n:Professor', 'Mylene Santos\n:Professor', '', '', '\n', 'Hypertension\n\n', 35),
(99, 'Civilian', 'Joey Cortez', 27, '', 'M', 'Single', '1990-11-17', '26 Upper Liwanag, Loakan, Baguio City', '', 'B', '', 'Joseph Cortez\n:Journalist', 'Josephine Cortez\n:Professor', '', '', '\n', '\n', 76),
(100, 'Authorized Civilian', 'Melissa Corpuz', 10, '', 'F', 'Single', '2007-12-06', '18 Pines Compound, Kias, Baguio City', '', 'O', '', 'Derick Corpuz:Fireman', 'Leslie Corpuz:Police Officer', '', 'undefined', '', 'Asthma\r\n\r\n', 60),
(101, 'Military Dependent', 'Joey Tribbiani', 25, '', 'M', 'Single', '1992-09-18', 'sabvjkasbnjkvasb j', '', 'A', '', 'bhbhjbhj\n:', 'vbhjvbhjbhj\n:', '', '', '\n', '\n', 29),
(102, 'Military Officer', 'Phoebe Buffay', 18, '', 'F', 'Single', '1999-09-09', 'bhjkvbjh', '', 'A', '', 'vjhvbhj\n:', 'jbhj\n:bh', '', '0-17278', '\n', '\n', 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`histo_id`, `date_stamp`, `initial_assessment`, `lab`, `medicine`, `diagnosis`, `bed`, `patient_id`, `doctor_id`, `vitals`, `status`) VALUES
(1, '2018-04-22 14:10:12', NULL, NULL, NULL, NULL, '1, ', 100, 40, NULL, 'confirmed'),
(2, '2018-04-22 14:11:27', 'High temperature and migraine', NULL, 'Paracetamol,10,500mg,every 6 hours\nsolmux,3,3,3 week\n', NULL, NULL, 90, 40, 'BP: 90/70\nCR: 15\nPR: 16\nRR: 12\n TEMP: 38\nWT: 51', 'pending'),
(3, '2018-04-22 14:11:54', 'Stomach pain', 'Type: Parasitology\n Remarks: Send back results asap\n', NULL, NULL, NULL, 89, 40, 'BP: 100/90\nCR: 10\nPR: 12\nRR: 13\n TEMP: 37\nWT: 65', 'pending'),
(4, '2018-04-22 14:12:28', 'Leg fracture', NULL, NULL, NULL, '3, ', 98, 40, 'BP: 120/110\nCR: 12\nPR: 12\nRR: 10\n TEMP: 37\nWT: 54', 'pending'),
(5, '2018-04-22 14:13:03', 'Back pain', 'Type: X-Ray\n Remarks: Send back results asap\n', NULL, NULL, NULL, 93, 40, 'BP: 120/100\nCR: 12\nPR: 11\nRR: 15\n TEMP: 37\nWT: 60', 'pending'),
(6, '2018-04-22 14:13:38', 'Headache', NULL, 'Biogesic,6,500mg,3x a day\n', NULL, NULL, 88, 40, 'BP: 100/80\nCR: 12\nPR: 16\nRR: 14\n TEMP: 37\nWT: 68', 'confirmed'),
(7, '2018-04-22 14:14:08', 'High temperature', NULL, 'Paracetamol,12,300mg,every 8 hours\n', NULL, NULL, 97, 40, 'BP: 120/90\nCR: 14\nPR: 16\nRR: 14\n TEMP: 38.5\nWT: 52', 'pending'),
(8, '2018-04-22 14:14:14', NULL, NULL, NULL, NULL, '4, ', 95, 40, NULL, 'pending'),
(9, '2018-04-23 02:05:04', 'check up', 'Type: Blood Chemistry\n Remarks: blood test\n', NULL, NULL, NULL, 91, 40, 'BP: 1/3\nCR: 3\nPR: 3\nRR: 3\n TEMP: 3\nWT: 3', 'confirmed'),
(10, '2018-04-23 02:35:04', NULL, NULL, NULL, NULL, '2, ', 88, 40, NULL, 'pending'),
(11, '2018-04-23 02:50:18', NULL, NULL, NULL, NULL, '1, ', 91, 42, NULL, 'confirmed'),
(12, '2018-04-23 02:54:54', NULL, NULL, NULL, NULL, '1, ', 91, 40, NULL, 'confirmed');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_stamp`, `medicine`, `quantity`, `dosage`, `timeframe`, `doctor_id`, `patient_id`, `status`) VALUES
(1, '2018-04-22 14:17:49', 'Paracetamol', '10', '500mg', 'every 6 hours', 40, 90, 'pending'),
(2, '2018-04-22 14:18:17', 'Paracetamol', '12', '300mg', 'every 8 hours', 40, 97, 'pending'),
(3, '2018-04-22 14:19:11', 'Biogesic', '6', '500mg', '3x a day', 40, 88, 'confirmed'),
(4, '2018-04-23 02:25:39', 'solmux', '3', '3', '3 week', 40, 90, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_name` text NOT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank_name`) VALUES
(1, '4CL'),
(2, '3CL'),
(3, '2CL'),
(4, '1CL'),
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
(84, 'Apprentice Seaman'),
(0, '');

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
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`) VALUES
(25, 'admin', '$2a$10$ezo.TIL9X06nBeej9SWsd.cGKphNYOrWmZKPvv59sfS0JUsu5wk86', 'admin', 'Anthony Grubat', 28, 'M', '68 Grayville, Baguio City', '9718236712'),
(38, 'pharm', '$2a$10$XbmMdh3j6COxrrPoZRo6L.8lkjp4SLPLzX1SiMyjvZz6rktfFDiXa', 'pharmacist', 'Alyssa Mendoza', 26, 'F', '23 Green Acres, Hillside, Baguio City', '9185362142'),
(39, 'lab', '$2a$10$YjaVhL3i3Jp6p0dE5GzBKOGJIKEvALDBOhFkO82nJN/c9A8dvszB2', 'laboratorist', 'Dominique Valdez', 27, 'F', '89 Woodsgate Square Subdivision, Baguio City', '9183241523'),
(40, 'doctor', '$2a$10$kDE19DErM2VVWpUDvgLrIOJ1W9qbDRgcqoXoijzvhXpsXMkPTkqs6', 'doctor', 'Jeffrey Maneclang', 29, 'M', 'Camp Dangwa, La Trinidad, Benguet', '9063452819'),
(41, 'nurse', '$2a$10$ba3obrkiv1P0/2yiLVzHZOt2epjsqbr6TJOCO8CxesTuSkBHp3fk2', 'nurse', 'Kyla Corpuz', 27, 'F', '12 Dizon Subdivision, Baguio City', '9173629081'),
(42, 'doctor2', '$2a$10$wb/2vU3faoS3bVKRjjGNFe2.UYieqh3YXzUMEy4tspHrAZFdyjqwO', 'doctor', 'doctor2', 26, 'M', 'lower baguio', '29873');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_count`
--

INSERT INTO `ward_count` (`ward_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-04-22 14:10:12', 100),
(2, '2018-04-22 14:14:14', 95),
(3, '2018-04-22 14:16:13', 98),
(4, '2018-04-23 02:35:04', 88),
(5, '2018-04-23 02:50:18', 91),
(6, '2018-04-23 02:54:54', 91);

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
