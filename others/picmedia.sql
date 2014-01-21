-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2014 at 02:27 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `picmedia`
--
CREATE DATABASE IF NOT EXISTS `picmedia` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `picmedia`;

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PhotoID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserID` bigint(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Caption` varchar(200) DEFAULT NULL,
  `UploadDate` datetime NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `Src` text NOT NULL,
  PRIMARY KEY (`PhotoID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE IF NOT EXISTS `timeline` (
  `TimelineID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserID` bigint(20) NOT NULL,
  `PostDate` datetime NOT NULL,
  `Content` text NOT NULL,
  PRIMARY KEY (`TimelineID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `UserID` bigint(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `UserID` bigint(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `timeline`
--
ALTER TABLE `timeline`
  ADD CONSTRAINT `timeline_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
