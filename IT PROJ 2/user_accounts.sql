-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 21, 2018 at 03:46 AM
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
(25, 'admin', '$2a$10$ezo.TIL9X06nBeej9SWsd.cGKphNYOrWmZKPvv59sfS0JUsu5wk86', 'admin', 'Anthony Grubat', 28, 'M', '68 Grayville, Baguio City', '9718236712', 'active'),
(38, 'pharm', '$2a$10$XbmMdh3j6COxrrPoZRo6L.8lkjp4SLPLzX1SiMyjvZz6rktfFDiXa', 'pharmacist', 'Alyssa Mendoza', 26, 'F', '23 Green Acres, Hillside, Baguio City', '9185362142', 'active'),
(39, 'lab', '$2a$10$YjaVhL3i3Jp6p0dE5GzBKOGJIKEvALDBOhFkO82nJN/c9A8dvszB2', 'laboratorist', 'Dominique Valdez', 27, 'F', '89 Woodsgate Square Subdivision, Baguio City', '9183241523', 'active'),
(40, 'doctor', '$2a$10$kDE19DErM2VVWpUDvgLrIOJ1W9qbDRgcqoXoijzvhXpsXMkPTkqs6', 'doctor', 'Jeffrey Maneclang', 29, 'M', 'Camp Dangwa, La Trinidad, Benguet', '9063452819', 'active'),
(41, 'nurse', '$2a$10$ba3obrkiv1P0/2yiLVzHZOt2epjsqbr6TJOCO8CxesTuSkBHp3fk2', 'nurse', 'Kyla Corpuz', 27, 'F', '12 Dizon Subdivision, Baguio City', '9173629081', 'active'),
(42, 'doctor2', '$2a$10$wb/2vU3faoS3bVKRjjGNFe2.UYieqh3YXzUMEy4tspHrAZFdyjqwO', 'doctor', 'doctor2', 26, 'M', 'lower baguio', '29873', 'active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
