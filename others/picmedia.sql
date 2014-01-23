-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2014 at 11:27 AM
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
-- Table structure for table `humanrelation`
--

CREATE TABLE IF NOT EXISTS `humanrelation` (
  `HumanRelationID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FollowerID` bigint(20) NOT NULL,
  `FollowingID` bigint(20) NOT NULL,
  PRIMARY KEY (`HumanRelationID`),
  KEY `FollowerID` (`FollowerID`),
  KEY `FollowingID` (`FollowingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `Description` text,
  PRIMARY KEY (`PhotoID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photocomment`
--

CREATE TABLE IF NOT EXISTS `photocomment` (
  `PhotoCommentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PhotoID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Date` datetime NOT NULL,
  `Comment` text NOT NULL,
  PRIMARY KEY (`PhotoCommentID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photolike`
--

CREATE TABLE IF NOT EXISTS `photolike` (
  `PhotoLikeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PhotoID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `DateLike` datetime NOT NULL,
  PRIMARY KEY (`PhotoLikeID`),
  KEY `PhotoID` (`PhotoID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phototag`
--

CREATE TABLE IF NOT EXISTS `phototag` (
  `PhotoTagID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PhotoID` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Date` datetime NOT NULL,
  `LeftCoordinate` int(11) NOT NULL,
  `TopCoordinate` int(11) NOT NULL,
  `TagWidth` int(11) NOT NULL,
  `TagHeight` int(11) NOT NULL,
  PRIMARY KEY (`PhotoTagID`),
  KEY `PhotoID` (`PhotoID`),
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
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `TagLine` varchar(200) DEFAULT NULL,
  `PhotoUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`UserID`, `UserName`, `Password`, `FullName`, `Email`, `Photo`, `TagLine`, `PhotoUrl`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@picmedia.com', 'admin.jpg', 'being God isn''t that bad', NULL),
(2, 'aongko', 'aongko', 'Andrew Ongko', 'Andrew.Ongko@gmail.com', NULL, NULL, NULL),
(3, 'DeimonDB', 'DeimonDB', 'Teddy Budiono Hermawan', 'caladbolg_student@hotmail.com', NULL, NULL, NULL),
(4, 'Silvranz', 'silvranz', 'Nicholas', 'silvranz@gmail.com', NULL, NULL, NULL),
(5, 'kokki100', 'kokki100', 'Daniel Agusta', 'combination1234@gmail.com', NULL, NULL, NULL),
(6, 'akurniawan', 'akurniawan', 'Aditya Kurniawan', 'aditya.kurniawan25@gmail.com', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `humanrelation`
--
ALTER TABLE `humanrelation`
  ADD CONSTRAINT `humanrelation_ibfk_2` FOREIGN KEY (`FollowingID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `humanrelation_ibfk_1` FOREIGN KEY (`FollowerID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `photocomment`
--
ALTER TABLE `photocomment`
  ADD CONSTRAINT `photocomment_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `photo` (`PhotoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `photocomment_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `photolike`
--
ALTER TABLE `photolike`
  ADD CONSTRAINT `photolike_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `photo` (`PhotoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `photolike_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phototag`
--
ALTER TABLE `phototag`
  ADD CONSTRAINT `phototag_ibfk_1` FOREIGN KEY (`PhotoID`) REFERENCES `photo` (`PhotoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phototag_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userlogin` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
