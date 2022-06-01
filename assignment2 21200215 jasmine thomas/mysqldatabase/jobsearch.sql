-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 09, 2020 at 02:21 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
CREATE TABLE IF NOT EXISTS `advertise` (
  `advID` int(11) NOT NULL AUTO_INCREMENT,
  `empID` int(11) NOT NULL,
  `jobID` int(11) NOT NULL,
  PRIMARY KEY (`advID`),
  KEY `empID` (`empID`),
  KEY `jobID` (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE IF NOT EXISTS `employer` (
  `empID` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `number` varchar(12) NOT NULL,
  `address` varchar(40) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `jobID` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(10) NOT NULL,
  `responsibilities` varchar(10) NOT NULL,
  `requirements` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `salary` int(12) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertise`
--
ALTER TABLE `advertise`
  ADD CONSTRAINT `advertise_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `employer` (`empID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `advertise_ibfk_2` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
