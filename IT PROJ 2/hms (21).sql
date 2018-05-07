-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2018 at 02:22 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

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
(66, 40, '2018-04-22 22:21:54', 'log', 'Logged out', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `status`, `allotment_timestamp`, `description`, `patient_id`) VALUES
(1, 'occupied', '2018-04-22 22:10:12', NULL, 100),
(2, 'Unoccupied', NULL, NULL, NULL),
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_counter`
--

INSERT INTO `lab_counter` (`lab_counter_id`, `timestamp`, `patient_id`, `type`, `name`) VALUES
(1, '2018-04-22 14:16:01', 93, 'X-Ray', 'Tom Aldrin III'),
(2, '2018-04-22 14:17:16', 89, 'Parasitology', 'Carla Chicoine');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`request_id`, `type`, `timestamp`, `remarks`, `doctor_id`, `patient_id`, `lab_status`) VALUES
(1, 'X-Ray', '2018-04-22 14:16:01', 'Send back results asap', 40, 93, 'confirmed'),
(2, 'Parasitology', '2018-04-22 14:17:16', 'Send back results asap', 40, 89, 'pending');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd_count`
--

INSERT INTO `opd_count` (`opd_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-04-22 14:11:27', 90),
(2, '2018-04-22 14:11:54', 89),
(3, '2018-04-22 14:12:28', 98),
(4, '2018-04-22 14:13:03', 93),
(5, '2018-04-22 14:13:38', 88),
(6, '2018-04-22 14:14:08', 97);

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
  `rankORsn` varchar(20) DEFAULT NULL,
  `immunization` text,
  `family_history` text,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `rankORsn`, `immunization`, `family_history`) VALUES
(88, 'Military Officer', 'Greg Chicoine', 32, '', 'M', 'Married', '1985-10-01', '27 Montebello Subdivision, Baguio City', 'Anglican', 'A', 'Peanuts', 'Elmer Chicoine\n:Doctor', 'Mary Chicoine\n:Doctor', '', '89163', 'BCD:1985-11-01\n\n', 'DM\nCA\n\n'),
(89, 'Military Dependent', 'Carla Chicoine', 15, '', 'F', 'Single', '2002-09-29', '23 Sta. Barbara, Caguio City', 'Anglican', 'A', '', 'Greg Chicoine\n:Military Officer', 'Carrie Chicoine\n:Housewife', '', '', '\n', 'Asthma\n\n'),
(90, 'Civilian', 'Rose Miller', 29, '', 'F', 'Married', '1988-11-11', 'Pines Village, Baguio City', 'Roman Catholic', 'B', '', 'Karl Miller\n:Fireman', 'Rachel Miller\n:Nurse', '', '', 'Chicken Pox:1998-04-15\n\n', 'CVD\n\n'),
(91, 'Authorized Civilian', 'Roberto Garcia', 37, '', 'M', 'Married', '1980-08-18', 'Camp Bado, Dangwa, La Trinidad', 'Roman Catholic', 'AB', '', 'Marcello Garcia\n:', 'Maria Garcia\n:', '', '', '\n', 'Mental Illness\n\n'),
(92, 'Cadet', 'David Estrella', 27, '14th Infantry Battalion', 'M', 'Single', '1990-09-16', 'Unit 6, Sta. Cecilia Compound, Baguio City', 'Born Again', 'O', 'Cheese', 'Carlo Estrella\n:Barista', 'Jaimie Estrella\n:Waitress', '', '', '\n', 'CA\n\n'),
(93, 'Cadet', 'Tom Aldrin III', 27, '14th Infantry Battalion', 'M', 'Single', '1991-01-02', '17 Richgate Subdivision, Baguio City', 'Iglesia ni Cristo', 'A', '', 'Tom Aldrin II\n:Doctor', 'May Aldrin\n:Housewife', '', '', '\n', 'DM\n\n'),
(94, 'Cadet', 'Hailey Sanchez', 26, '17th Infantry Battalion', 'F', 'Single', '1991-08-08', '15 Richgate Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Carlo Sanchez\n:Police Officer', 'May Sanchez\n:Police Officer', '', '', '\n', 'CA\nCVD\n\n'),
(95, 'Military Officer', 'Teo Boston', 32, '', 'M', 'Married', '1985-09-19', 'Arc Residences Compound, Baguio City', 'Roman Catholic', 'B', '', 'Carlos Boston\n:Military Officer', 'Carla Boston\n:Housewife', '', '89172', '\n', '\n'),
(96, 'Military Officer', 'Rachelle Ortega', 28, '', 'F', 'Maried', '1989-12-18', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', '', 'Paulo Ortega:Politician', 'Paula Ortega:Housewife', '', '89164', '', 'Asthma\r\n\r\n'),
(97, 'Military Dependent', 'Mikhee Ortega', 12, '', 'F', 'Single', '2005-07-27', '19 Woodsville Subdivision, Baguio City', 'Roman Catholic', 'A', 'Kiwi', 'Rodolfo Ortega\n:Chef', 'Rachelle Ortega\n:Military Officer', '', '', '\n', '\n'),
(98, 'Civilian', 'Miguel Santos', 30, '', 'M', 'Married', '1987-05-16', '29 Lower Liwanag, Loakan, Baguio City', '', 'A', '', 'Conrad Santos\n:Professor', 'Mylene Santos\n:Professor', '', '', '\n', 'Hypertension\n\n'),
(99, 'Civilian', 'Joey Cortez', 27, '', 'M', 'Single', '1990-11-17', '26 Upper Liwanag, Loakan, Baguio City', '', 'B', '', 'Joseph Cortez\n:Journalist', 'Josephine Cortez\n:Professor', '', '', '\n', '\n'),
(100, 'Authorized Civilian', 'Melissa Corpuz', 10, '', 'F', 'Single', '2007-12-06', '18 Pines Compound, Kias, Baguio City', '', 'O', '', 'Derick Corpuz\n:Fireman', 'Leslie Corpuz\n:Police Officer', '', '', '\n', 'Asthma\n\n');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`histo_id`, `date_stamp`, `initial_assessment`, `lab`, `medicine`, `diagnosis`, `bed`, `patient_id`, `doctor_id`, `vitals`, `status`) VALUES
(1, '2018-04-22 14:10:12', NULL, NULL, NULL, NULL, '1, ', 100, 40, NULL, 'pending'),
(2, '2018-04-22 14:11:27', 'High temperature and migraine', NULL, 'Paracetamol,10,500mg,every 6 hours\n', NULL, NULL, 90, 40, 'BP: 90/70\nCR: 15\nPR: 16\nRR: 12\n TEMP: 38\nWT: 51', 'pending'),
(3, '2018-04-22 14:11:54', 'Stomach pain', 'Type: Parasitology\n Remarks: Send back results asap\n', NULL, NULL, NULL, 89, 40, 'BP: 100/90\nCR: 10\nPR: 12\nRR: 13\n TEMP: 37\nWT: 65', 'pending'),
(4, '2018-04-22 14:12:28', 'Leg fracture', NULL, NULL, NULL, '3, ', 98, 40, 'BP: 120/110\nCR: 12\nPR: 12\nRR: 10\n TEMP: 37\nWT: 54', 'pending'),
(5, '2018-04-22 14:13:03', 'Back pain', 'Type: X-Ray\n Remarks: Send back results asap\n', NULL, NULL, NULL, 93, 40, 'BP: 120/100\nCR: 12\nPR: 11\nRR: 15\n TEMP: 37\nWT: 60', 'pending'),
(6, '2018-04-22 14:13:38', 'Headache', NULL, 'Biogesic,6,500mg,3x a day\n', NULL, NULL, 88, 40, 'BP: 100/80\nCR: 12\nPR: 16\nRR: 14\n TEMP: 37\nWT: 68', 'confirmed'),
(7, '2018-04-22 14:14:08', 'High temperature', NULL, 'Paracetamol,12,300mg,every 8 hours\n', NULL, NULL, 97, 40, 'BP: 120/90\nCR: 14\nPR: 16\nRR: 14\n TEMP: 38.5\nWT: 52', 'pending'),
(8, '2018-04-22 14:14:14', NULL, NULL, NULL, NULL, '4, ', 95, 40, NULL, 'pending');

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
(1, '2018-04-22 14:17:49', 'Paracetamol', '10', '500mg', 'every 6 hours', 40, 90, 'pending'),
(2, '2018-04-22 14:18:17', 'Paracetamol', '12', '300mg', 'every 8 hours', 40, 97, 'pending'),
(3, '2018-04-22 14:19:11', 'Biogesic', '6', '500mg', '3x a day', 40, 88, 'confirmed');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`) VALUES
(25, 'admin', '$2a$10$ezo.TIL9X06nBeej9SWsd.cGKphNYOrWmZKPvv59sfS0JUsu5wk86', 'admin', 'Anthony Grubat', 28, 'M', '68 Grayville, Baguio City', '9718236712'),
(38, 'pharm', '$2a$10$XbmMdh3j6COxrrPoZRo6L.8lkjp4SLPLzX1SiMyjvZz6rktfFDiXa', 'pharmacist', 'Alyssa Mendoza', 26, 'F', '23 Green Acres, Hillside, Baguio City', '9185362142'),
(39, 'lab', '$2a$10$YjaVhL3i3Jp6p0dE5GzBKOGJIKEvALDBOhFkO82nJN/c9A8dvszB2', 'laboratorist', 'Dominique Valdez', 27, 'F', '89 Woodsgate Square Subdivision, Baguio City', '9183241523'),
(40, 'doctor', '$2a$10$kDE19DErM2VVWpUDvgLrIOJ1W9qbDRgcqoXoijzvhXpsXMkPTkqs6', 'doctor', 'Jeffrey Maneclang', 29, 'M', 'Camp Dangwa, La Trinidad, Benguet', '9063452819'),
(41, 'nurse', '$2a$10$ba3obrkiv1P0/2yiLVzHZOt2epjsqbr6TJOCO8CxesTuSkBHp3fk2', 'nurse', 'Kyla Corpuz', 27, 'F', '12 Dizon Subdivision, Baguio City', '9173629081');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_count`
--

INSERT INTO `ward_count` (`ward_count_id`, `date_stamp`, `patient_id`) VALUES
(1, '2018-04-22 14:10:12', 100),
(2, '2018-04-22 14:14:14', 95),
(3, '2018-04-22 14:16:13', 98);

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
