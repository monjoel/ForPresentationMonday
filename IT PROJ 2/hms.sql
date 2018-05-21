-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 21, 2018 at 11:32 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`, `patient_id`) VALUES
(1, 25, '2018-05-21 17:49:52', 'log', 'Logged in', NULL),
(2, 25, '2018-05-21 17:51:00', 'settingsProfileManagement', 'Edited personal info.', NULL),
(3, 25, '2018-05-21 17:51:00', 'log', 'Logged out', NULL),
(4, 25, '2018-05-21 17:51:04', 'log', 'Logged in', NULL),
(5, 25, '2018-05-21 17:51:30', 'removedUser', 'Deactivated user: doctor2', NULL),
(6, 25, '2018-05-21 17:51:52', 'log', 'Logged out', NULL),
(7, 25, '2018-05-21 17:51:57', 'log', 'Logged in', NULL),
(8, 25, '2018-05-21 17:52:35', 'generalTodo', 'Added to do general: General Meeting at Lim Hall', NULL),
(9, 25, '2018-05-21 17:53:14', 'urgentTodo', 'Added to do urgent: Appointment with FDPSH Head', NULL),
(10, 25, '2018-05-21 17:53:22', 'log', 'Logged out', NULL),
(11, 40, '2018-05-21 17:53:38', 'log', 'Logged in', NULL),
(12, 40, '2018-05-21 17:53:53', 'settingsProfileManagement', 'Edited personal info.', NULL),
(13, 40, '2018-05-21 17:53:53', 'log', 'Logged out', NULL),
(14, 40, '2018-05-21 17:53:58', 'log', 'Logged in', NULL),
(15, 40, '2018-05-21 17:56:37', 'setBedUnavailable', 'Set to unavailable bed number: 4', NULL),
(16, 40, '2018-05-21 17:56:47', 'setBedUnavailable', 'Set to unavailable bed number: 10', NULL),
(17, 40, '2018-05-21 17:57:29', 'generalTodo', 'Added to do general: General Meeting at Lim Hall', NULL),
(18, 40, '2018-05-21 17:57:37', 'log', 'Logged out', NULL),
(19, 41, '2018-05-21 17:57:40', 'log', 'Logged in', NULL),
(20, 41, '2018-05-21 17:57:52', 'settingsProfileManagement', 'Edited personal info.', NULL),
(21, 41, '2018-05-21 17:57:52', 'log', 'Logged out', NULL),
(22, 41, '2018-05-21 17:58:00', 'log', 'Logged in', NULL),
(23, 41, '2018-05-21 18:00:02', 'add', 'Added: Military Officer - Lyka Mendoza', NULL),
(24, 41, '2018-05-21 18:04:39', 'add', 'Added: Military Officer - Jake I. Aguinalde', NULL),
(25, 41, '2018-05-21 18:08:01', 'add', 'Added: Authorized Civilian - Eugine M. Magdalo', NULL),
(26, 41, '2018-05-21 18:10:23', 'add', 'Added: Civilian - Rebecca K. Magsaka', NULL),
(27, 41, '2018-05-21 18:14:34', 'add', 'Added: Military Dependent - Alvin H. Tolentino', NULL),
(28, 41, '2018-05-21 18:18:37', 'add', 'Added: Military Officer - Marjorie P. Quibads', NULL),
(29, 41, '2018-05-21 18:21:58', 'add', 'Added: Civilian - Franco S. Romano', NULL),
(30, 41, '2018-05-21 18:23:49', 'add', 'Added: Authorized Civilian - James C. Lamano', NULL),
(31, 41, '2018-05-21 18:26:30', 'add', 'Added: Military Officer - Clint H. Abellada', NULL),
(32, 41, '2018-05-21 18:29:15', 'add', 'Added: Cadet - Fevin L. Pasallo', NULL),
(33, 41, '2018-05-21 18:30:53', 'add', 'Added: Civilian - Marco Y. Sugtan', NULL),
(34, 41, '2018-05-21 18:33:21', 'add', 'Added: Military Dependent - Ernesto C. Mabun', NULL),
(35, 41, '2018-05-21 18:35:28', 'add', 'Added: Cadet - Karlo F. Dumlayo', NULL),
(36, 41, '2018-05-21 18:39:56', 'add', 'Added: Cadet - Angela D. Magiba', NULL),
(37, 41, '2018-05-21 18:44:23', 'add', 'Added: Authorized Civilian - Jenny E. Polino', NULL),
(38, 41, '2018-05-21 18:46:45', 'add', 'Added: Military Officer - Gardo O. Bernardino', NULL),
(39, 41, '2018-05-21 18:48:56', 'add', 'Added: Cadet - Ding A. Bato', NULL),
(40, 41, '2018-05-21 18:51:07', 'add', 'Added: Civilian - Karl N. Mendoza', NULL),
(41, 41, '2018-05-21 18:53:53', 'add', 'Added: Military Dependent - Samuel L. Guilang', NULL),
(42, 41, '2018-05-21 18:56:00', 'add', 'Added: Military Dependent - Victor G. Bayasen', NULL),
(43, 41, '2018-05-21 18:58:12', 'log', 'Logged in', NULL),
(44, 41, '2018-05-21 19:00:12', 'add', 'Added: Authorized Civilian - JC R. Rivera', NULL),
(45, 41, '2018-05-21 19:01:13', 'add', 'Added: Military Dependent - Jaimie C. Lorezo', NULL),
(46, 41, '2018-05-21 19:02:33', 'add', 'Added: Cadet - Jefferson Mendez', NULL),
(47, 41, '2018-05-21 19:03:04', 'initialAssessment', 'Outpatient Assessment for Lyka Mendoza', 106),
(48, 41, '2018-05-21 19:03:31', 'initialAssessment', 'Outpatient Assessment for Jake I. Aguinalde', 107),
(49, 41, '2018-05-21 19:03:50', 'initialAssessment', 'Outpatient Assessment for Eugine M. Magdalo', 108),
(50, 41, '2018-05-21 19:04:13', 'initialAssessment', 'Outpatient Assessment for Rebecca K. Magsaka', 109),
(51, 41, '2018-05-21 19:04:32', 'initialAssessment', 'Outpatient Assessment for Alvin H. Tolentino', 110),
(52, 41, '2018-05-21 19:04:45', 'bed', 'allotted bed number 1 for ER patient Marjorie P. Quibads', 111),
(53, 41, '2018-05-21 19:04:45', 'er', 'Added ER patient Marjorie P. Quibads', 111),
(54, 41, '2018-05-21 19:04:52', 'bed', 'allotted bed number 49 for ER patient Franco S. Romano', 112),
(55, 41, '2018-05-21 19:04:52', 'er', 'Added ER patient Franco S. Romano', 112),
(56, 41, '2018-05-21 19:04:58', 'bed', 'allotted bed number 13 for ER patient Fevin L. Pasallo', 115),
(57, 41, '2018-05-21 19:04:58', 'er', 'Added ER patient Fevin L. Pasallo', 115),
(58, 41, '2018-05-21 19:05:45', 'add', 'Added: Cadet - Joseph R. Carlos', NULL),
(59, 41, '2018-05-21 19:08:04', 'patientInfoEdit', 'Edited patient Information of Jefferson Mendez', 128),
(60, 41, '2018-05-21 19:08:33', 'log', 'Logged out', NULL),
(61, 40, '2018-05-21 19:08:37', 'log', 'Logged in', NULL),
(62, 40, '2018-05-21 19:08:47', 'setBedUnavailable', 'Set to unavailable bed number: 5', NULL),
(63, 40, '2018-05-21 19:08:52', 'setBedUnavailable', 'Set to unavailable bed number: 6', NULL),
(64, 40, '2018-05-21 19:10:59', 'appointment', 'Set Appointment with Jake I. Aguinalde on 2018-06-02 10:00:00', NULL),
(65, 40, '2018-05-21 19:11:17', 'appointment', 'Set Appointment with Marjorie P. Quibads on 2018-07-01 10:00:00', NULL),
(66, 40, '2018-05-21 19:13:18', 'bed', 'Alloted bed number: 8 to patient:Rebecca K. Magsaka', 109),
(67, 40, '2018-05-21 19:14:04', 'prescription', 'Prescribed a medicine to : Rebecca K. Magsaka', NULL),
(68, 40, '2018-05-21 19:14:23', 'setBedAvailable', 'Set to available bed number: 13', NULL),
(69, 40, '2018-05-21 19:22:58', 'log', 'Logged out', NULL),
(70, 40, '2018-05-21 19:24:05', 'log', 'Logged in', NULL),
(71, 40, '2018-05-21 19:28:31', 'labRequest', 'Lab request for : Jake I. Aguinalde', NULL),
(72, 40, '2018-05-21 19:28:48', 'labRequest', 'Lab request for : Eugine M. Magdalo', NULL),
(73, 40, '2018-05-21 19:28:54', 'bed', 'Alloted bed number: 9 to patient:Alvin H. Tolentino', 110),
(74, 40, '2018-05-21 19:29:00', 'setBedAvailable', 'Set to available bed number: 9', NULL),
(75, 40, '2018-05-21 19:29:15', 'requestConfirmationOPD', 'Request of Confirmation sent!', 106),
(76, 40, '2018-05-21 19:29:52', 'prescription', 'Prescribed a medicine to : Alvin H. Tolentino', NULL),
(77, 40, '2018-05-21 19:30:32', 'prescription', 'Prescribed a medicine to : Marjorie P. Quibads', NULL),
(78, 40, '2018-05-21 19:30:49', 'labRequest', 'Lab request for : Fevin L. Pasallo', NULL),
(79, 40, '2018-05-21 19:31:00', 'log', 'Logged out', NULL),
(80, 38, '2018-05-21 19:31:03', 'log', 'Logged in', NULL),
(81, 38, '2018-05-21 19:31:12', 'settingsProfileManagement', 'Edited personal info.', NULL),
(82, 38, '2018-05-21 19:31:12', 'log', 'Logged out', NULL),
(83, 38, '2018-05-21 19:31:15', 'log', 'Logged in', NULL),
(84, 38, '2018-05-21 19:31:21', 'approvedPrescription', 'Approved prescription for: Marjorie P. Quibads', NULL),
(85, 38, '2018-05-21 19:31:46', 'generalTodo', 'Added to do general: General Meeting at Lim Hall', NULL),
(86, 38, '2018-05-21 19:31:50', 'log', 'Logged out', NULL),
(87, 39, '2018-05-21 19:31:56', 'log', 'Logged in', NULL),
(88, 39, '2018-05-21 19:32:05', 'settingsProfileManagement', 'Edited personal info.', NULL),
(89, 39, '2018-05-21 19:32:05', 'log', 'Logged out', NULL),
(90, 39, '2018-05-21 19:32:09', 'log', 'Logged in', NULL),
(91, 39, '2018-05-21 19:32:17', 'confirmedLabRequest', 'Confirmed lab request for: Jake I. Aguinalde', NULL),
(92, 39, '2018-05-21 19:32:31', 'log', 'Logged out', NULL);

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
(1, '2018-06-02 02:00:00', 40, 107, 'check-up'),
(2, '2018-07-01 02:00:00', 40, 111, 'check-up');

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
(1, 'occupied', '2018-05-21 19:04:45', NULL, 111),
(2, 'Unoccupied', NULL, NULL, 98),
(3, 'Unoccupied', NULL, NULL, 93),
(4, 'unavailable', NULL, NULL, NULL),
(5, 'unavailable', NULL, NULL, 88),
(6, 'unavailable', NULL, NULL, 89),
(7, 'Unoccupied', NULL, NULL, NULL),
(8, 'occupied', '2018-05-21 19:13:18', NULL, 109),
(9, 'Unoccupied', NULL, NULL, NULL),
(10, 'unavailable', NULL, NULL, 95),
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
(49, 'occupied', '2018-05-21 19:04:52', NULL, 112),
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_counter`
--

INSERT INTO `bed_counter` (`counter_id`, `allotment_timestamp`, `patient_id`, `bed_num`) VALUES
(1, '2018-05-21', 111, 1),
(2, '2018-05-21', 112, 49),
(3, '2018-05-21', 115, 13),
(4, '2018-05-21', 109, 8),
(5, '2018-05-21', 110, 9);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_count`
--

INSERT INTO `chart_count` (`chart_count_id`, `date_stamp`, `patient_name`, `patient_type`) VALUES
(1, '2018-05-21 18:00:02', 'Lyka Mendoza', 'Military Officer'),
(2, '2018-05-21 18:04:39', 'Jake I. Aguinalde', 'Military Officer'),
(3, '2018-05-21 18:08:00', 'Eugine M. Magdalo', 'Authorized Civilian'),
(4, '2018-05-21 18:10:23', 'Rebecca K. Magsaka', 'Civilian'),
(5, '2018-05-21 18:14:34', 'Alvin H. Tolentino', 'Military Dependent'),
(6, '2018-05-21 18:18:37', 'Marjorie P. Quibads', 'Military Officer'),
(7, '2018-05-21 18:21:58', 'Franco S. Romano', 'Civilian'),
(8, '2018-05-21 18:23:49', 'James C. Lamano', 'Authorized Civilian'),
(9, '2018-05-21 18:26:29', 'Clint H. Abellada', 'Military Officer'),
(10, '2018-05-21 18:29:15', 'Fevin L. Pasallo', 'Cadet'),
(11, '2018-05-21 18:30:53', 'Marco Y. Sugtan', 'Civilian'),
(12, '2018-05-21 18:33:21', 'Ernesto C. Mabun', 'Military Dependent'),
(13, '2018-05-21 18:35:28', 'Karlo F. Dumlayo', 'Cadet'),
(14, '2018-05-21 18:39:55', 'Angela D. Magiba', 'Cadet'),
(15, '2018-05-21 18:44:23', 'Jenny E. Polino', 'Authorized Civilian'),
(16, '2018-05-21 18:46:45', 'Gardo O. Bernardino', 'Military Officer'),
(17, '2018-05-21 18:48:56', 'Ding A. Bato', 'Cadet'),
(18, '2018-05-21 18:51:07', 'Karl N. Mendoza', 'Civilian'),
(19, '2018-05-21 18:53:53', 'Samuel L. Guilang', 'Military Dependent'),
(20, '2018-05-21 18:56:00', 'Victor G. Bayasen', 'Military Dependent'),
(21, '2018-05-21 19:00:12', 'JC R. Rivera', 'Authorized Civilian'),
(22, '2018-05-21 19:01:13', 'Jaimie C. Lorezo', 'Military Dependent'),
(23, '2018-05-21 19:02:33', 'Jefferson Mendez', 'Cadet'),
(24, '2018-05-21 19:05:45', 'Joseph R. Carlos', 'Cadet');

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
(1, '2018-05-21 11:28:31', 107, 'X-Ray', 'Jake I. Aguinalde'),
(2, '2018-05-21 11:28:48', 108, 'Hematology', 'Eugine M. Magdalo'),
(3, '2018-05-21 11:30:49', 115, 'Blood Chemistry', 'Fevin L. Pasallo');

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
(1, 'X-Ray', '2018-05-21 11:28:31', 'send back actual results', 40, 107, 'confirmed'),
(2, 'Hematology', '2018-05-21 11:28:48', 'send back digitized result', 40, 108, 'pending'),
(3, 'Blood Chemistry', '2018-05-21 11:30:49', 'send back actual results', 40, 115, 'pending');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd_count`
--

INSERT INTO `opd_count` (`opd_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-05-21 11:03:04', 106),
(2, '2018-05-21 11:03:31', 107),
(3, '2018-05-21 11:03:50', 108),
(4, '2018-05-21 11:04:13', 109),
(5, '2018-05-21 11:04:32', 110);

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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `SN`, `immunization`, `family_history`, `rank`) VALUES
(106, 'Military Officer', 'Lyka Mendoza', 31, '', 'F', 'Single', '1987-05-12', '45 Upper Liwanag, Loakan, Baguio City', 'Roman Catholic', 'B', '', 'Ramon Mendoza\n:Fireman', 'Leah Mendoza\n:Housewife', '', '0-98364', '\n', 'DM\n\n', 'Major'),
(107, 'Military Officer', 'Jake I. Aguinalde', 33, '', 'M', 'Single', '1985-02-21', '#22 Victoria Village, Quezon Hill Baguio City', 'Roman Catholic', 'AB', '', 'Mark G. Aguinalde\n:', 'Carla I. Aguinalde\n:', '', '', '\n', '\n', 'Colonel/Captain'),
(108, 'Authorized Civilian', 'Eugine M. Magdalo', 37, '', 'M', 'Married', '1980-12-25', '#1 Atin St. Middle Quezon Hill, Baguio City', 'Iglesia', 'O', '', 'Roberto F. Magdalo\n:Electrician', 'Juana M. Magdalo\n:Housewife', '', '', '\n', '\n', ''),
(109, 'Civilian', 'Rebecca K. Magsaka', 27, '', 'F', 'Single', '1990-07-01', '#177 Road 1 Leonila Hill, Baguio City', 'Roman Catholic', 'O', '', 'Jordan L. Magasaka\n:Teacher', 'Mary K. Magsaka\n:Housewife', '', '', '\n', '\n', ''),
(110, 'Military Dependent', 'Alvin H. Tolentino', 39, '', 'M', 'Married', '1978-09-12', '#201 Upper QM Baguio City', 'Born Again', 'A', 'Peanuts', 'Joselito J. Tolentino\n:Bus Driver', 'Joselita H. Tolentino\n:Teacher', '', '', '\n', 'Mental Illness\n\n', ''),
(111, 'Military Officer', 'Marjorie P. Quibads', 33, '', 'F', 'Single', '1984-07-17', '#78 Camp 8 Baguio City', 'Roman Catholic', 'B', '', 'Jose E. Quibads\n:Chef', 'Rosemary P. Quibads\n:Housewife', '', '', '\n', 'Asthma\nCA\n\n', 'Technical Sergeant'),
(112, 'Civilian', 'Franco S. Romano', 27, '', 'M', 'Single', '1990-06-11', '#65 San Vicente, Kennon Road Baguio City', 'Roman Catholic', 'B', '', 'Julio V. Romano\n:OFW', 'Jessica S. Romano\n:Housewife', '', '', '\n', '\n', ''),
(115, 'Cadet', 'Fevin L. Pasallo', 24, '', 'F', 'Single', '1994-05-06', '#98 Asin Road Baguio City', 'Roman Catholic', 'O', '', 'Reggie J. Passalo\n:Engineer', 'Natasha Passalo\n:', '', '', '\n', '\n\n\n\n\n\n', '3C Cadet'),
(116, 'Civilian', 'Marco Y. Sugtan', 40, '', 'M', 'Single', '1978-05-09', '#51 Pinsao Baguio City', '', 'O', '', 'Mario J. Sugtan\n:', 'Allysa Y. Sugtan\n:', '', '', '\n', '\n', ''),
(118, 'Cadet', 'Karlo F. Dumlayo', 28, '', 'M', 'Single', '1990-05-20', '#654 Mines View Baguio City', '', 'O', '', 'Anton K . Dumlayo\n:', 'Camille F. Dumlayo\n:', '', '', '\n', '\n', '1C Cadet'),
(119, 'Cadet', 'Angela D. Magiba', 22, '', 'F', 'Single', '1996-04-05', '#54 Loakan Baguio City', 'Roman Catholic', 'O', '', 'Hoselito S. Magiba\n:Doctor', 'Anna D. Magiba\n:Housewife', '', '', '\n', '\n', '1C Cadet'),
(120, 'Authorized Civilian', 'Jenny E. Polino', 29, '', 'F', 'Single', '1988-08-27', '#34 Upper Quezon Hill Baguio City', 'Roman Catholic', 'AB', '', 'Bernard L. Polino\n:Police', 'Helena E. Polino\n:Police', '', '', '\n', '\n', ''),
(121, 'Military Officer', 'Gardo O. Bernardino', 27, '', 'M', 'Married', '1990-06-19', '#78 Camp 7 Baguio City', 'Roman Catholic', 'B', '', 'George A. Bernardino\n:', 'Elaine O. Bernardino\n:', '', '', '\n', '\n', 'Apprentice Seaman'),
(122, 'Cadet', 'Ding A. Bato', 22, '', 'M', 'Single', '1995-09-10', '#101 Trancoville Baguio City', '', ' ', '', 'Rommel J. Bato\n:', 'Georgia A. Bato\n:', '', '', '\n', '\n', '4C Cadet'),
(123, 'Civilian', 'Karl N. Mendoza', 30, '', 'M', 'Single', '1987-11-03', '#155 Brookside Baguio City', '', 'AB', '', 'Markis I. Mendoza\n:', 'Fiona N. Mendoza\n:', '', '', '\n', '\n', ''),
(124, 'Military Dependent', 'Samuel L. Guilang', 38, '', 'M', 'Married', '1980-03-05', '#40 Tuba Benguet', '', 'A', '', 'Henry W. Guilang\n:', 'Ronalyn L. Guilang\n:', '', '', '\n', '\n', ''),
(125, 'Military Dependent', 'Victor G. Bayasen', 30, '', 'M', 'Married', '1987-07-01', '#3 Camp 7 Baguio City', '', ' ', '', 'Johnny C. Bayasen\n:', 'Karla G. Bayasen\n:', '', '', '\n', '\n', ''),
(126, 'Authorized Civilian', 'JC R. Rivera', 16, '', 'M', 'Single', '2001-09-18', '23 Upper Bonifacio St., Baguio City', '', 'A', '', 'Miguel Rivera\n:', 'Marian Rivera\n:', '', '', '\n', '\n', ''),
(127, 'Military Dependent', 'Jaimie C. Lorezo', 12, '', 'F', 'Single', '2005-08-28', '57 Upper Gabriela Silang, Baguio City', '', 'A', '', 'Hans Lorezo\n:', 'Maya Lorezo\n:', '', '', '\n', 'CVD\n\n', ''),
(128, 'Cadet', 'Jefferson Mendez', 21, '', 'M', 'Maried', '1996-09-10', '67 Woodsville Subdivision, Baguio City', '', 'A', '', 'Karl Mendez:', 'Karla Mendez:', '', '', '', '', ''),
(129, 'Cadet', 'Joseph R. Carlos', 22, '', 'M', 'Single', '1995-10-10', '46 Upper Liwanag, Loakan, Baguio City', '', ' ', '', 'Jenmar Carlos\n:', 'Jenny Carlos\n:', '', '', '\n', '\n', '3C Cadet');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`histo_id`, `date_stamp`, `initial_assessment`, `lab`, `medicine`, `diagnosis`, `bed`, `patient_id`, `doctor_id`, `vitals`, `status`, `request`, `pharm_confirm`, `lab_confirm`, `lab_img`) VALUES
(1, '2018-05-21 11:03:04', 'coughs and colds', NULL, NULL, NULL, NULL, 106, 40, 'BP: 120/90\nCR: 12\nPR: 13\nRR: 14\n TEMP: 37\nWT: 51', 'pending', 'pending', 'pending', 'pending', NULL),
(2, '2018-05-21 11:03:31', 'fever', 'Type: X-Ray\n Remarks: send back actual results\n', NULL, NULL, NULL, 107, 40, 'BP: 120/90\nCR: 12\nPR: 12\nRR: 14\n TEMP: 38\nWT: 48', 'pending', NULL, 'pending', 'pending', NULL),
(3, '2018-05-21 11:03:50', 'fever', 'Type: Hematology\n Remarks: send back digitized result\n', NULL, NULL, NULL, 108, 40, 'BP: 120/90\nCR: 10\nPR: 11\nRR: 12\n TEMP: 39\nWT: 51', 'pending', NULL, 'pending', 'pending', NULL),
(4, '2018-05-21 11:04:13', 'stomach pain', NULL, 'diatabs,2,50mg,every 8 hrs,generic\n', NULL, '8, ', 109, 40, 'BP: 120/90\nCR: 12\nPR: 10\nRR: 10\n TEMP: 37\nWT: 56', 'pending', NULL, 'pending', 'pending', NULL),
(5, '2018-05-21 11:04:32', 'headache', NULL, 'advil,12,50mg,every 6 hrs,generic\n', NULL, '9, ', 110, 40, 'BP: 120/90\nCR: 13\nPR: 12\nRR: 10\n TEMP: 37\nWT: 67', 'pending', NULL, 'pending', 'pending', NULL),
(6, '2018-05-21 11:04:45', NULL, NULL, 'ibuprofen medicol,12,500mg,every 6 hrs,generic\n', NULL, '1, ', 111, 40, NULL, 'pending', NULL, 'pending', 'pending', NULL),
(7, '2018-05-21 11:04:52', NULL, NULL, NULL, NULL, '49, ', 112, 40, NULL, 'pending', NULL, 'pending', 'pending', NULL),
(8, '2018-05-21 11:04:58', NULL, 'Type: Blood Chemistry\n Remarks: send back actual results\n', NULL, NULL, '13, ', 115, 40, NULL, 'pending', NULL, 'pending', 'pending', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_stamp`, `medicine`, `quantity`, `dosage`, `timeframe`, `doctor_id`, `patient_id`, `status`, `brand`) VALUES
(1, '2018-05-21 11:14:04', 'diatabs', '2', '50mg', 'every 8 hrs', 40, 109, 'pending', 'generic'),
(2, '2018-05-21 11:29:52', 'advil', '12', '50mg', 'every 6 hrs', 40, 110, 'pending', 'generic'),
(3, '2018-05-21 11:30:32', 'ibuprofen medicol', '12', '500mg', 'every 6 hrs', 40, 111, 'confirmed', 'generic');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_list`
--

INSERT INTO `todo_list` (`todo_id`, `status`, `description`, `date`, `account_id`) VALUES
(1, 'general', 'General Meeting at Lim Hall', '2018-06-01 10:00:00', 25),
(2, 'urgent', 'Appointment with FDPSH Head', '2018-06-20 08:00:00', 25),
(3, 'general', 'General Meeting at Lim Hall', '2018-06-01 10:00:00', 40),
(4, 'general', 'General Meeting at Lim Hall', '2018-06-01 10:00:00', 38);

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`, `status`) VALUES
(25, 'admin', '$2a$10$JAFl/z3KFZiKgw1P2INj4uYph7Xk35DMTgSEvJzDj.Xl1htYYpbYG', 'admin', 'Anthony Grubat', 28, 'M', '68 Grayville, Baguio City', '9718236712', 'active'),
(38, 'pharm', '$2a$10$qmRfi6167C8vQ65qU0zzEuE3ApWjpM2glZ5QLaCGa5rBAGWqoXFm6', 'pharmacist', 'Alyssa Mendoza', 26, 'F', '23 Green Acres, Hillside, Baguio City', '9185362142', 'active'),
(39, 'lab', '$2a$10$EMelCFWWUhY5TjzIXTew4uqn9jMvi3n7l9EEVMAbbJ.XQIR1tiuTG', 'laboratorist', 'Dominique Valdez', 27, 'F', '89 Woodsgate Square Subdivision, Baguio City', '9183241523', 'active'),
(40, 'doctor', '$2a$10$eTOXP.OWg8iwKhXJDYFQMezGKejKhgztD2X.LewlIgs/sQBo99H5a', 'doctor', 'Jeffrey Maneclang', 29, 'M', 'Camp Dangwa, La Trinidad, Benguet', '9063452820', 'active'),
(41, 'nurse', '$2a$10$.jEpCQE2DsnjuoAPvWs8OOy.L2SioA3DuC16N33o5z2oT5DRwc6GG', 'nurse', 'Kyla Corpuz', 27, 'F', '12 Dizon Subdivision, Baguio City', '9173629080', 'active'),
(42, 'doctor2', '$2a$10$wb/2vU3faoS3bVKRjjGNFe2.UYieqh3YXzUMEy4tspHrAZFdyjqwO', 'doctor', 'doctor2', 26, 'M', 'lower baguio', '29873', 'deactivated');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_count`
--

INSERT INTO `ward_count` (`ward_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-05-21 11:04:45', 111),
(2, '2018-05-21 11:04:52', 112),
(3, '2018-05-21 11:04:58', 115),
(4, '2018-05-21 11:13:18', 109),
(5, '2018-05-21 11:28:54', 110);

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
