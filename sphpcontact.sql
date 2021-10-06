-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 07:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sphpcontact`
--

-- --------------------------------------------------------

--
-- Table structure for table `ab_person`
--

CREATE TABLE `ab_person` (
  `PersonID` int(11) NOT NULL,
  `PersonFirstName` varchar(255) DEFAULT NULL,
  `PersonLastName` varchar(255) DEFAULT NULL,
  `PersonEmail` varchar(255) DEFAULT NULL,
  `PersonBirthDate` date DEFAULT NULL,
  `PersonIsActive` int(11) DEFAULT NULL,
  `GenderID` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL,
  `CurrencyID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ab_person`
--

INSERT INTO `ab_person` (`PersonID`, `PersonFirstName`, `PersonLastName`, `PersonEmail`, `PersonBirthDate`, `PersonIsActive`, `GenderID`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`, `CurrencyID`) VALUES
(2, 'John', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-09-21 16:31:31', '2021-09-21 16:31:42', NULL, 0),
(3, 'Hello', 'John', NULL, '2021-09-22', 1, 2, NULL, NULL, NULL, '2021-09-21 16:32:41', '2021-09-22 15:21:13', NULL, 0),
(4, 'DEF', 'Inc', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-09-21 16:32:51', '2021-09-22 14:19:41', NULL, 0),
(5, 'wick', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2021-09-21 16:34:24', NULL, NULL, 0),
(8, 'Linkin', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Park', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'Chester', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Numb', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ab_personaddress`
--

CREATE TABLE `ab_personaddress` (
  `PersonAddressID` int(11) NOT NULL,
  `PersonAddressType` varchar(255) DEFAULT NULL,
  `PersonAddressName` varchar(255) DEFAULT NULL,
  `PersonAddressStreet` varchar(255) DEFAULT NULL,
  `PersonAddressCity` varchar(255) DEFAULT NULL,
  `PersonAddressState` varchar(255) DEFAULT NULL,
  `PersonAddressZip` varchar(255) DEFAULT NULL,
  `PersonAddressIsActive` int(255) DEFAULT NULL,
  `CountryID` int(11) DEFAULT NULL,
  `PersonID` int(11) DEFAULT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ab_personaddress`
--

INSERT INTO `ab_personaddress` (`PersonAddressID`, `PersonAddressType`, `PersonAddressName`, `PersonAddressStreet`, `PersonAddressCity`, `PersonAddressState`, `PersonAddressZip`, `PersonAddressIsActive`, `CountryID`, `PersonID`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, NULL, 'DEF Inc 2', 'dhaka', 'dhaka', 'dhaka', NULL, 1, 109, 10, 2, NULL, NULL, '2021-09-26 15:00:25', NULL, NULL),
(2, NULL, 'D\'cruze33', 'dhaka', 'dhaka', 'dhaka', NULL, 1, 1, 10, 2, NULL, NULL, '2021-09-26 15:50:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_applicationchangelog`
--

CREATE TABLE `sphp_applicationchangelog` (
  `ApplicationChangeLogID` int(11) NOT NULL,
  `ApplicationChangeLogTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ApplicationChangeLogDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationChangeLogTime` datetime NOT NULL,
  `ApplicationChangeLogIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_applicationtraffic`
--

CREATE TABLE `sphp_applicationtraffic` (
  `ApplicationTrafficID` int(11) NOT NULL,
  `ApplicationTrafficServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficHost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficSessionCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficTime` datetime DEFAULT NULL,
  `ApplicationTrafficIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficMethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficProtocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficScript` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficQuery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficReferer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficUserAgent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficResourceUsageDurationUser` int(11) DEFAULT NULL,
  `ApplicationTrafficResourceUsageDurationSystem` int(11) DEFAULT NULL,
  `ApplicationTrafficExecutionBegin` datetime DEFAULT NULL,
  `ApplicationTrafficExecutionEnd` datetime DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ApplicationTrafficLatitude` float(9,5) DEFAULT NULL,
  `ApplicationTrafficLongitude` float(9,5) DEFAULT NULL,
  `ApplicationTrafficMetro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficPostCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApplicationTrafficIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_applicationtraffic`
--

INSERT INTO `sphp_applicationtraffic` (`ApplicationTrafficID`, `ApplicationTrafficServer`, `ApplicationTrafficHost`, `ApplicationTrafficSessionCode`, `ApplicationTrafficTime`, `ApplicationTrafficIP`, `ApplicationTrafficMethod`, `ApplicationTrafficProtocol`, `ApplicationTrafficURL`, `ApplicationTrafficScript`, `ApplicationTrafficQuery`, `ApplicationTrafficReferer`, `ApplicationTrafficUserAgent`, `ApplicationTrafficResourceUsageDurationUser`, `ApplicationTrafficResourceUsageDurationSystem`, `ApplicationTrafficExecutionBegin`, `ApplicationTrafficExecutionEnd`, `UserID`, `ApplicationTrafficLatitude`, `ApplicationTrafficLongitude`, `ApplicationTrafficMetro`, `ApplicationTrafficCity`, `ApplicationTrafficPostCode`, `ApplicationTrafficCountry`, `ApplicationTrafficIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:55:54', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=User/Profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 109375, 609375, '2021-09-19 10:55:54', '2021-09-19 10:55:54', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-19 10:55:54', '2021-09-19 10:55:54', NULL),
(2, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:55:55', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/profile', '_Script=User/Profile', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 187500, 625000, '2021-09-19 10:55:55', '2021-09-19 10:55:55', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-19 10:55:55', '2021-09-19 10:55:55', NULL),
(3, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:55:57', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signout', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/Profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 640625, '2021-09-19 10:55:57', '2021-09-19 10:55:57', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-19 10:55:57', '2021-09-19 10:55:57', NULL),
(4, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:31', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signout', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 15625, 312500, '2021-09-19 10:58:31', '2021-09-19 10:58:31', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-19 10:58:31', '2021-09-19 10:58:31', NULL),
(5, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:33', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 31250, 312500, '2021-09-19 10:58:33', '2021-09-19 10:58:33', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-19 10:58:33', '2021-09-19 10:58:33', NULL),
(6, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:35', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 46875, 312500, '2021-09-19 10:58:35', '2021-09-19 10:58:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-19 10:58:35', '2021-09-19 10:58:35', NULL),
(7, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:42', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 46875, 328125, '2021-09-19 10:58:42', '2021-09-19 10:58:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-19 10:58:42', '2021-09-19 10:58:42', NULL),
(8, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:44', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 78125, 328125, '2021-09-19 10:58:44', '2021-09-19 10:58:44', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-19 10:58:44', '2021-09-19 10:58:44', NULL),
(9, 'localhost', 'localhost', 'kk7jtoc689ujevn6htsiu7pj2t', '2021-09-19 10:58:46', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/profile', '_Script=User/Profile', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 78125, 343750, '2021-09-19 10:58:46', '2021-09-19 10:58:46', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-19 10:58:46', '2021-09-19 10:58:46', NULL),
(10, 'localhost', 'localhost:8012', '5g1otq2jk0s0d1dcrvhedokksv', '2021-09-20 10:46:33', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 187500, 218750, '2021-09-20 10:46:33', '2021-09-20 10:46:33', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-20 10:46:33', '2021-09-20 10:46:33', NULL),
(11, 'localhost', 'localhost', '5g1otq2jk0s0d1dcrvhedokksv', '2021-09-20 10:46:42', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 218750, '2021-09-20 10:46:42', '2021-09-20 10:46:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-20 10:46:42', '2021-09-20 10:46:42', NULL),
(12, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:02', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 31250, 562500, '2021-09-21 14:32:02', '2021-09-21 14:32:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:02', '2021-09-21 14:32:02', NULL),
(13, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:04', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 593750, '2021-09-21 14:32:04', '2021-09-21 14:32:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:04', '2021-09-21 14:32:04', NULL),
(14, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:06', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=User/Profile', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 14:32:06', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:06', NULL, NULL),
(15, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:20', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 609375, '2021-09-21 14:32:20', '2021-09-21 14:32:20', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:20', '2021-09-21 14:32:20', NULL),
(16, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:23', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 609375, '2021-09-21 14:32:22', '2021-09-21 14:32:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:23', '2021-09-21 14:32:23', NULL),
(17, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:30', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 625000, '2021-09-21 14:32:29', '2021-09-21 14:32:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-21 14:32:30', '2021-09-21 14:32:30', NULL),
(18, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:32', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 671875, '2021-09-21 14:32:32', '2021-09-21 14:32:32', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-21 14:32:32', '2021-09-21 14:32:32', NULL),
(19, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:34', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/profile', '_Script=User/Profile', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 687500, '2021-09-21 14:32:34', '2021-09-21 14:32:34', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-21 14:32:34', '2021-09-21 14:32:34', NULL),
(20, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:39', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=User/Profile', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 687500, '2021-09-21 14:32:39', '2021-09-21 14:32:39', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-21 14:32:39', '2021-09-21 14:32:39', NULL),
(21, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:40', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signout', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 718750, '2021-09-21 14:32:40', '2021-09-21 14:32:40', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-21 14:32:40', '2021-09-21 14:32:40', NULL),
(22, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 14:32:41', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 734375, '2021-09-21 14:32:41', '2021-09-21 14:32:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 14:32:41', '2021-09-21 14:32:41', NULL),
(23, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:08:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 937500, '2021-09-21 16:08:12', '2021-09-21 16:08:12', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:08:12', '2021-09-21 16:08:12', NULL),
(24, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:09:58', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 656250, 953125, '2021-09-21 16:09:57', '2021-09-21 16:09:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:09:58', '2021-09-21 16:09:58', NULL),
(25, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:09:59', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:09:59', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:09:59', NULL, NULL),
(26, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:10:03', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 703125, 953125, '2021-09-21 16:10:02', '2021-09-21 16:10:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:10:03', '2021-09-21 16:10:03', NULL),
(27, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:16:51', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:16:51', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:16:51', NULL, NULL),
(28, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:21:30', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:21:30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:21:30', NULL, NULL),
(29, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:22:20', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:22:20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:22:20', NULL, NULL),
(30, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:22:39', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 484375, '2021-09-21 16:22:39', '2021-09-21 16:22:40', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:22:39', '2021-09-21 16:22:40', NULL),
(31, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:22:43', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 781250, 515625, '2021-09-21 16:22:43', '2021-09-21 16:22:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:22:43', '2021-09-21 16:22:43', NULL),
(32, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:22:44', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 515625, '2021-09-21 16:22:44', '2021-09-21 16:22:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:22:44', '2021-09-21 16:22:44', NULL),
(33, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:26:44', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:26:44', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:26:44', NULL, NULL),
(34, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:27:25', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 312500, 765625, '2021-09-21 16:27:25', '2021-09-21 16:27:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:27:25', '2021-09-21 16:27:25', NULL),
(35, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:27:34', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 812500, '2021-09-21 16:27:34', '2021-09-21 16:27:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:27:34', '2021-09-21 16:27:34', NULL),
(36, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:29:00', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-21 16:29:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:29:00', NULL, NULL),
(37, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:30:34', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 921875, '2021-09-21 16:30:34', '2021-09-21 16:30:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:30:34', '2021-09-21 16:30:34', NULL),
(38, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:30:38', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnDelete&_Script=management/generic/person&PersonID=1&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 921875, '2021-09-21 16:30:38', '2021-09-21 16:30:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:30:38', '2021-09-21 16:30:38', NULL),
(39, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:30:40', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?btnDelete&_Script=management/generic/person&PersonID=1&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 828125, 921875, '2021-09-21 16:30:40', '2021-09-21 16:30:40', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:30:40', '2021-09-21 16:30:40', NULL),
(40, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:30:41', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 843750, 921875, '2021-09-21 16:30:41', '2021-09-21 16:30:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:30:41', '2021-09-21 16:30:41', NULL),
(41, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:31:05', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 890625, 953125, '2021-09-21 16:31:05', '2021-09-21 16:31:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:31:05', '2021-09-21 16:31:05', NULL),
(42, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:31:31', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 906250, 953125, '2021-09-21 16:31:30', '2021-09-21 16:31:31', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:31:31', '2021-09-21 16:31:31', NULL),
(43, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:31:32', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 937500, 968750, '2021-09-21 16:31:32', '2021-09-21 16:31:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:31:32', '2021-09-21 16:31:32', NULL),
(44, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:31:35', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 968750, 968750, '2021-09-21 16:31:35', '2021-09-21 16:31:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:31:35', '2021-09-21 16:31:35', NULL),
(45, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:31:42', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 984375, 0, '2021-09-21 16:31:42', '2021-09-21 16:31:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:31:42', '2021-09-21 16:31:42', NULL),
(46, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:03', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 15625, 0, '2021-09-21 16:32:03', '2021-09-21 16:32:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:03', '2021-09-21 16:32:03', NULL),
(47, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:35', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 15625, 46875, '2021-09-21 16:32:35', '2021-09-21 16:32:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:35', '2021-09-21 16:32:35', NULL),
(48, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:41', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 31250, 78125, '2021-09-21 16:32:41', '2021-09-21 16:32:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:41', '2021-09-21 16:32:41', NULL),
(49, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:43', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 109375, '2021-09-21 16:32:43', '2021-09-21 16:32:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:43', '2021-09-21 16:32:43', NULL),
(50, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:45', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 109375, 140625, '2021-09-21 16:32:45', '2021-09-21 16:32:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:45', '2021-09-21 16:32:45', NULL),
(51, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:51', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 109375, 156250, '2021-09-21 16:32:51', '2021-09-21 16:32:51', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:51', '2021-09-21 16:32:51', NULL),
(52, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:32:53', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 125000, 171875, '2021-09-21 16:32:53', '2021-09-21 16:32:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:32:53', '2021-09-21 16:32:53', NULL),
(53, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:33:46', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 171875, 171875, '2021-09-21 16:33:46', '2021-09-21 16:33:46', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:33:46', '2021-09-21 16:33:46', NULL),
(54, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:33:50', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 203125, 187500, '2021-09-21 16:33:50', '2021-09-21 16:33:50', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:33:50', '2021-09-21 16:33:50', NULL),
(55, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:33:57', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=def&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 187500, '2021-09-21 16:33:57', '2021-09-21 16:33:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:33:57', '2021-09-21 16:33:57', NULL),
(56, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:06', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=def&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 234375, 203125, '2021-09-21 16:34:06', '2021-09-21 16:34:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:06', '2021-09-21 16:34:06', NULL),
(57, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:10', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Search_PersonIsActive=0&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 250000, 218750, '2021-09-21 16:34:10', '2021-09-21 16:34:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:10', '2021-09-21 16:34:10', NULL),
(58, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:13', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Search_PersonIsActive=0&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 281250, 234375, '2021-09-21 16:34:13', '2021-09-21 16:34:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:13', '2021-09-21 16:34:13', NULL),
(59, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:17', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 343750, 234375, '2021-09-21 16:34:17', '2021-09-21 16:34:17', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:17', '2021-09-21 16:34:17', NULL),
(60, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:24', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 250000, '2021-09-21 16:34:24', '2021-09-21 16:34:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:24', '2021-09-21 16:34:24', NULL),
(61, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 375000, 265625, '2021-09-21 16:34:26', '2021-09-21 16:34:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:26', '2021-09-21 16:34:26', NULL),
(62, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:32', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 390625, 265625, '2021-09-21 16:34:31', '2021-09-21 16:34:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:32', '2021-09-21 16:34:32', NULL),
(63, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:46', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 265625, '2021-09-21 16:34:46', '2021-09-21 16:34:46', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:46', '2021-09-21 16:34:46', NULL),
(64, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:53', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 421875, 281250, '2021-09-21 16:34:53', '2021-09-21 16:34:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:53', '2021-09-21 16:34:54', NULL),
(65, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:56', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 437500, 296875, '2021-09-21 16:34:56', '2021-09-21 16:34:56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:56', '2021-09-21 16:34:56', NULL),
(66, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:34:57', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 437500, 296875, '2021-09-21 16:34:57', '2021-09-21 16:34:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:34:57', '2021-09-21 16:34:57', NULL),
(67, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:01', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 453125, 296875, '2021-09-21 16:35:01', '2021-09-21 16:35:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:01', '2021-09-21 16:35:01', NULL),
(68, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:03', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 468750, 296875, '2021-09-21 16:35:03', '2021-09-21 16:35:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:03', '2021-09-21 16:35:03', NULL),
(69, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:06', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_PersonFirstName=hello&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 468750, 312500, '2021-09-21 16:35:06', '2021-09-21 16:35:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:06', '2021-09-21 16:35:06', NULL),
(70, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:24', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 484375, 343750, '2021-09-21 16:35:24', '2021-09-21 16:35:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:24', '2021-09-21 16:35:24', NULL),
(71, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 500000, 343750, '2021-09-21 16:35:26', '2021-09-21 16:35:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:26', '2021-09-21 16:35:26', NULL),
(72, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:35:30', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 359375, '2021-09-21 16:35:30', '2021-09-21 16:35:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:35:30', '2021-09-21 16:35:30', NULL),
(73, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:36:01', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 531250, 359375, '2021-09-21 16:36:01', '2021-09-21 16:36:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:36:01', '2021-09-21 16:36:01', NULL),
(74, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:36:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 562500, 375000, '2021-09-21 16:36:12', '2021-09-21 16:36:12', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:36:12', '2021-09-21 16:36:12', NULL),
(75, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:37:26', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 578125, 390625, '2021-09-21 16:37:25', '2021-09-21 16:37:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:37:26', '2021-09-21 16:37:26', NULL),
(76, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:38:20', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 390625, '2021-09-21 16:38:20', '2021-09-21 16:38:20', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:38:20', '2021-09-21 16:38:20', NULL),
(77, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:38:39', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 656250, 406250, '2021-09-21 16:38:39', '2021-09-21 16:38:40', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:38:40', '2021-09-21 16:38:40', NULL),
(78, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:40:43', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 656250, 437500, '2021-09-21 16:40:43', '2021-09-21 16:40:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:40:43', '2021-09-21 16:40:43', NULL),
(79, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:41:25', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 703125, 437500, '2021-09-21 16:41:25', '2021-09-21 16:41:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:41:25', '2021-09-21 16:41:26', NULL),
(80, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:41:57', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 437500, '2021-09-21 16:41:57', '2021-09-21 16:41:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:41:57', '2021-09-21 16:41:57', NULL),
(81, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:43:48', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 781250, 437500, '2021-09-21 16:43:48', '2021-09-21 16:43:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:43:48', '2021-09-21 16:43:48', NULL),
(82, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:43:51', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 812500, 437500, '2021-09-21 16:43:50', '2021-09-21 16:43:51', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:43:51', '2021-09-21 16:43:51', NULL),
(83, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:08', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 843750, 453125, '2021-09-21 16:46:08', '2021-09-21 16:46:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:08', '2021-09-21 16:46:08', NULL),
(84, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=2', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 859375, 453125, '2021-09-21 16:46:10', '2021-09-21 16:46:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:10', '2021-09-21 16:46:10', NULL),
(85, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:22', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=1', 'https://localhost/sphptemplate/?_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 906250, 453125, '2021-09-21 16:46:22', '2021-09-21 16:46:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:22', '2021-09-21 16:46:22', NULL),
(86, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:23', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=2', 'https://localhost/sphptemplate/?_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 921875, 468750, '2021-09-21 16:46:23', '2021-09-21 16:46:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:23', '2021-09-21 16:46:23', NULL);
INSERT INTO `sphp_applicationtraffic` (`ApplicationTrafficID`, `ApplicationTrafficServer`, `ApplicationTrafficHost`, `ApplicationTrafficSessionCode`, `ApplicationTrafficTime`, `ApplicationTrafficIP`, `ApplicationTrafficMethod`, `ApplicationTrafficProtocol`, `ApplicationTrafficURL`, `ApplicationTrafficScript`, `ApplicationTrafficQuery`, `ApplicationTrafficReferer`, `ApplicationTrafficUserAgent`, `ApplicationTrafficResourceUsageDurationUser`, `ApplicationTrafficResourceUsageDurationSystem`, `ApplicationTrafficExecutionBegin`, `ApplicationTrafficExecutionEnd`, `UserID`, `ApplicationTrafficLatitude`, `ApplicationTrafficLongitude`, `ApplicationTrafficMetro`, `ApplicationTrafficCity`, `ApplicationTrafficPostCode`, `ApplicationTrafficCountry`, `ApplicationTrafficIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(87, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:34', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=2', 'https://localhost/sphptemplate/?_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 937500, 500000, '2021-09-21 16:46:34', '2021-09-21 16:46:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:34', '2021-09-21 16:46:34', NULL),
(88, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:46:38', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&OrderBy=PersonFirstName&Order=ASC&Page=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 937500, 531250, '2021-09-21 16:46:38', '2021-09-21 16:46:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:46:38', '2021-09-21 16:46:38', NULL),
(89, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:48:03', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 953125, 546875, '2021-09-21 16:48:03', '2021-09-21 16:48:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:48:03', '2021-09-21 16:48:03', NULL),
(90, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:48:11', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 984375, 562500, '2021-09-21 16:48:11', '2021-09-21 16:48:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:48:11', '2021-09-21 16:48:11', NULL),
(91, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:48:49', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 15625, 562500, '2021-09-21 16:48:49', '2021-09-21 16:48:49', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:48:49', '2021-09-21 16:48:49', NULL),
(92, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:49:09', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 46875, 578125, '2021-09-21 16:49:09', '2021-09-21 16:49:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:49:09', '2021-09-21 16:49:09', NULL),
(93, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:52:19', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 593750, '2021-09-21 16:52:19', '2021-09-21 16:52:19', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:52:19', '2021-09-21 16:52:19', NULL),
(94, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:52:22', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 609375, '2021-09-21 16:52:22', '2021-09-21 16:52:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:52:22', '2021-09-21 16:52:22', NULL),
(95, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:52:48', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 109375, 640625, '2021-09-21 16:52:48', '2021-09-21 16:52:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:52:48', '2021-09-21 16:52:48', NULL),
(96, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:52:53', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 171875, 640625, '2021-09-21 16:52:53', '2021-09-21 16:52:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:52:53', '2021-09-21 16:52:53', NULL),
(97, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:53:19', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 250000, 640625, '2021-09-21 16:53:19', '2021-09-21 16:53:19', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:53:19', '2021-09-21 16:53:19', NULL),
(98, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:57:04', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 343750, 687500, '2021-09-21 16:57:04', '2021-09-21 16:57:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:57:04', '2021-09-21 16:57:04', NULL),
(99, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 16:59:44', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 718750, '2021-09-21 16:59:44', '2021-09-21 16:59:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 16:59:44', '2021-09-21 16:59:44', NULL),
(100, 'localhost', 'localhost', 'ij3431t254rig1e5u82mg1sg9b', '2021-09-21 17:02:38', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 765625, '2021-09-21 17:02:37', '2021-09-21 17:02:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-21 17:02:38', '2021-09-21 17:02:38', NULL),
(101, 'localhost', 'localhost:8012', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 13:05:39', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 296875, 390625, '2021-09-22 13:05:39', '2021-09-22 13:05:39', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 13:05:39', '2021-09-22 13:05:39', NULL),
(102, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 13:05:44', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 312500, 390625, '2021-09-22 13:05:43', '2021-09-22 13:05:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 13:05:44', '2021-09-22 13:05:44', NULL),
(103, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 13:07:39', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 437500, 500000, '2021-09-22 13:07:39', '2021-09-22 13:07:40', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 13:07:39', '2021-09-22 13:07:40', NULL),
(104, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 13:40:35', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 484375, 531250, '2021-09-22 13:40:34', '2021-09-22 13:40:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 13:40:35', '2021-09-22 13:40:35', NULL),
(105, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 500000, 578125, '2021-09-22 14:19:12', '2021-09-22 14:19:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:12', '2021-09-22 14:19:13', NULL),
(106, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:18', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 578125, '2021-09-22 14:19:18', '2021-09-22 14:19:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:18', '2021-09-22 14:19:18', NULL),
(107, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:41', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=4&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 609375, '2021-09-22 14:19:41', '2021-09-22 14:19:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:41', '2021-09-22 14:19:41', NULL),
(108, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:43', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 546875, 625000, '2021-09-22 14:19:43', '2021-09-22 14:19:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:43', '2021-09-22 14:19:43', NULL),
(109, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:47', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 562500, 625000, '2021-09-22 14:19:47', '2021-09-22 14:19:47', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:47', '2021-09-22 14:19:47', NULL),
(110, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:53', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 593750, 640625, '2021-09-22 14:19:53', '2021-09-22 14:19:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:53', '2021-09-22 14:19:53', NULL),
(111, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:19:55', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 640625, '2021-09-22 14:19:55', '2021-09-22 14:19:55', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:19:55', '2021-09-22 14:19:55', NULL),
(112, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:20:01', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 671875, 640625, '2021-09-22 14:20:00', '2021-09-22 14:20:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:20:01', '2021-09-22 14:20:01', NULL),
(113, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:20:07', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 687500, 671875, '2021-09-22 14:20:07', '2021-09-22 14:20:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:20:07', '2021-09-22 14:20:07', NULL),
(114, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:20:09', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 718750, 671875, '2021-09-22 14:20:09', '2021-09-22 14:20:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:20:09', '2021-09-22 14:20:09', NULL),
(115, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:26:52', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 546875, 171875, '2021-09-22 14:26:52', '2021-09-22 14:26:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:26:52', '2021-09-22 14:26:52', NULL),
(116, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:26:54', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 562500, 187500, '2021-09-22 14:26:53', '2021-09-22 14:26:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:26:54', '2021-09-22 14:26:54', NULL),
(117, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:28:11', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person&SucceededAction=Input&SucceededAction=Input&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 593750, 218750, '2021-09-22 14:28:11', '2021-09-22 14:28:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:28:11', '2021-09-22 14:28:11', NULL),
(118, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:28:24', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 234375, '2021-09-22 14:28:24', '2021-09-22 14:28:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:28:24', '2021-09-22 14:28:24', NULL),
(119, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:28:25', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 687500, 250000, '2021-09-22 14:28:25', '2021-09-22 14:28:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:28:25', '2021-09-22 14:28:25', NULL),
(120, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:32:18', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 750000, 250000, '2021-09-22 14:32:18', '2021-09-22 14:32:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:32:18', '2021-09-22 14:32:18', NULL),
(121, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:34:00', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 265625, '2021-09-22 14:34:00', '2021-09-22 14:34:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:34:00', '2021-09-22 14:34:00', NULL),
(122, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:38:27', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 312500, '2021-09-22 14:38:27', '2021-09-22 14:38:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:38:27', '2021-09-22 14:38:27', NULL),
(123, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:40:22', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-22 14:40:21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:40:22', NULL, NULL),
(124, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:41:37', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 859375, 312500, '2021-09-22 14:41:36', '2021-09-22 14:41:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:41:37', '2021-09-22 14:41:37', NULL),
(125, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:41:39', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 906250, 359375, '2021-09-22 14:41:38', '2021-09-22 14:41:39', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:41:39', '2021-09-22 14:41:39', NULL),
(126, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:43:19', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-22 14:43:19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:43:19', NULL, NULL),
(127, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:44:51', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 921875, 390625, '2021-09-22 14:44:51', '2021-09-22 14:44:51', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:44:51', '2021-09-22 14:44:51', NULL),
(128, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:44:53', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 937500, 453125, '2021-09-22 14:44:53', '2021-09-22 14:44:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:44:53', '2021-09-22 14:44:53', NULL),
(129, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 14:44:56', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 953125, 468750, '2021-09-22 14:44:56', '2021-09-22 14:44:56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 14:44:56', '2021-09-22 14:44:56', NULL),
(130, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:00:37', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 46875, 531250, '2021-09-22 15:00:37', '2021-09-22 15:00:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:00:37', '2021-09-22 15:00:37', NULL),
(131, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:01:21', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 546875, '2021-09-22 15:01:21', '2021-09-22 15:01:21', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:01:21', '2021-09-22 15:01:21', NULL),
(132, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:01:24', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 546875, '2021-09-22 15:01:23', '2021-09-22 15:01:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:01:24', '2021-09-22 15:01:24', NULL),
(133, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:13:06', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 750000, '2021-09-22 15:13:06', '2021-09-22 15:13:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:13:06', '2021-09-22 15:13:07', NULL),
(134, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:13:34', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 531250, 828125, '2021-09-22 15:13:34', '2021-09-22 15:13:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:13:34', '2021-09-22 15:13:34', NULL),
(135, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:13:48', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 593750, 843750, '2021-09-22 15:13:47', '2021-09-22 15:13:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:13:48', '2021-09-22 15:13:48', NULL),
(136, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:14:02', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 859375, '2021-09-22 15:14:02', '2021-09-22 15:14:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:14:02', '2021-09-22 15:14:02', NULL),
(137, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:15:42', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 671875, 921875, '2021-09-22 15:15:42', '2021-09-22 15:15:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:15:42', '2021-09-22 15:15:42', NULL),
(138, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:15:45', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 703125, 953125, '2021-09-22 15:15:45', '2021-09-22 15:15:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:15:45', '2021-09-22 15:15:45', NULL),
(139, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:17:04', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 984375, '2021-09-22 15:17:04', '2021-09-22 15:17:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:17:04', '2021-09-22 15:17:04', NULL),
(140, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:17:25', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 31250, '2021-09-22 15:17:25', '2021-09-22 15:17:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:17:25', '2021-09-22 15:17:25', NULL),
(141, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:21:07', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', 'btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 93750, '2021-09-22 15:21:07', '2021-09-22 15:21:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:21:07', '2021-09-22 15:21:07', NULL),
(142, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:21:13', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person', 'https://localhost/sphptemplate/?btnInput&_Script=management/generic/person&PersonID=3&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 109375, '2021-09-22 15:21:12', '2021-09-22 15:21:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:21:13', '2021-09-22 15:21:13', NULL),
(143, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:21:14', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 859375, 109375, '2021-09-22 15:21:14', '2021-09-22 15:21:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:21:14', '2021-09-22 15:21:14', NULL),
(144, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:30:46', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 875000, 109375, '2021-09-22 15:30:46', '2021-09-22 15:30:46', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:30:46', '2021-09-22 15:30:46', NULL),
(145, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:31:02', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 890625, 109375, '2021-09-22 15:31:02', '2021-09-22 15:31:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:31:02', '2021-09-22 15:31:02', NULL),
(146, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:31:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 906250, 109375, '2021-09-22 15:31:12', '2021-09-22 15:31:12', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:31:12', '2021-09-22 15:31:12', NULL),
(147, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:32:36', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 921875, 125000, '2021-09-22 15:32:36', '2021-09-22 15:32:36', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:32:36', '2021-09-22 15:32:36', NULL),
(148, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:32:54', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-22 15:32:54', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:32:54', NULL, NULL),
(149, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:33:18', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-22 15:33:18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:33:18', NULL, NULL),
(150, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:33:31', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 968750, 171875, '2021-09-22 15:33:31', '2021-09-22 15:33:31', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:33:31', '2021-09-22 15:33:31', NULL),
(151, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:36:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 984375, 234375, '2021-09-22 15:36:10', '2021-09-22 15:36:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:36:10', '2021-09-22 15:36:10', NULL),
(152, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:36:22', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 0, 250000, '2021-09-22 15:36:22', '2021-09-22 15:36:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:36:22', '2021-09-22 15:36:22', NULL),
(153, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:40:54', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 296875, '2021-09-22 15:40:54', '2021-09-22 15:40:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:40:54', '2021-09-22 15:40:54', NULL),
(154, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:41:00', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 125000, 312500, '2021-09-22 15:41:00', '2021-09-22 15:41:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:41:00', '2021-09-22 15:41:00', NULL),
(155, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:18', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 343750, '2021-09-22 15:45:18', '2021-09-22 15:45:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:18', '2021-09-22 15:45:18', NULL),
(156, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:23', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 343750, '2021-09-22 15:45:23', '2021-09-22 15:45:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:23', '2021-09-22 15:45:23', NULL),
(157, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:27', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_GenderID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 171875, 375000, '2021-09-22 15:45:27', '2021-09-22 15:45:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:27', '2021-09-22 15:45:27', NULL),
(158, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:30', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_GenderID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 171875, 390625, '2021-09-22 15:45:29', '2021-09-22 15:45:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:30', '2021-09-22 15:45:30', NULL),
(159, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:32', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_GenderID=1&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 203125, 390625, '2021-09-22 15:45:32', '2021-09-22 15:45:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:32', '2021-09-22 15:45:32', NULL),
(160, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:45:36', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Search_GenderID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_GenderID=1&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 406250, '2021-09-22 15:45:36', '2021-09-22 15:45:36', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:45:36', '2021-09-22 15:45:36', NULL),
(161, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 15:49:41', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=management/generic/person&Search_GenderID=2&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 421875, 421875, '2021-09-22 15:49:40', '2021-09-22 15:49:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 15:49:41', '2021-09-22 15:49:41', NULL),
(162, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 16:43:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/person&Page=1&OrderBy=PersonFirstName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 109375, 156250, '2021-09-22 16:43:10', '2021-09-22 16:43:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 16:43:10', '2021-09-22 16:43:10', NULL),
(163, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 16:43:32', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-22 16:43:32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 16:43:32', NULL, NULL),
(164, 'localhost', 'localhost', 'p9a56630s9jvnpk1tnndh9ibu3', '2021-09-22 16:43:58', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 203125, '2021-09-22 16:43:58', '2021-09-22 16:43:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-22 16:43:58', '2021-09-22 16:43:58', NULL),
(165, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:10:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 265625, 218750, '2021-09-26 11:10:15', '2021-09-26 11:10:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:10:15', '2021-09-26 11:10:15', NULL),
(166, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:10:19', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 328125, 265625, '2021-09-26 11:10:18', '2021-09-26 11:10:19', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:10:19', '2021-09-26 11:10:19', NULL),
(167, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:13:59', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 11:13:59', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:13:59', NULL, NULL),
(168, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:14:23', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 312500, '2021-09-26 11:14:23', '2021-09-26 11:14:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:14:23', '2021-09-26 11:14:23', NULL),
(169, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:14:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 343750, '2021-09-26 11:14:26', '2021-09-26 11:14:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:14:26', '2021-09-26 11:14:26', NULL);
INSERT INTO `sphp_applicationtraffic` (`ApplicationTrafficID`, `ApplicationTrafficServer`, `ApplicationTrafficHost`, `ApplicationTrafficSessionCode`, `ApplicationTrafficTime`, `ApplicationTrafficIP`, `ApplicationTrafficMethod`, `ApplicationTrafficProtocol`, `ApplicationTrafficURL`, `ApplicationTrafficScript`, `ApplicationTrafficQuery`, `ApplicationTrafficReferer`, `ApplicationTrafficUserAgent`, `ApplicationTrafficResourceUsageDurationUser`, `ApplicationTrafficResourceUsageDurationSystem`, `ApplicationTrafficExecutionBegin`, `ApplicationTrafficExecutionEnd`, `UserID`, `ApplicationTrafficLatitude`, `ApplicationTrafficLongitude`, `ApplicationTrafficMetro`, `ApplicationTrafficCity`, `ApplicationTrafficPostCode`, `ApplicationTrafficCountry`, `ApplicationTrafficIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(170, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:08', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 453125, 343750, '2021-09-26 11:15:08', '2021-09-26 11:15:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:08', '2021-09-26 11:15:08', NULL),
(171, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 531250, 343750, '2021-09-26 11:15:10', '2021-09-26 11:15:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:10', '2021-09-26 11:15:10', NULL),
(172, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:11', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 546875, 343750, '2021-09-26 11:15:11', '2021-09-26 11:15:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:11', '2021-09-26 11:15:11', NULL),
(173, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:17', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 562500, 359375, '2021-09-26 11:15:17', '2021-09-26 11:15:17', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-26 11:15:17', '2021-09-26 11:15:17', NULL),
(174, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:19', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 593750, 359375, '2021-09-26 11:15:19', '2021-09-26 11:15:19', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:15:19', '2021-09-26 11:15:19', NULL),
(175, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:21', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 359375, '2021-09-26 11:15:21', '2021-09-26 11:15:21', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:15:21', '2021-09-26 11:15:21', NULL),
(176, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:24', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signout', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 687500, 375000, '2021-09-26 11:15:24', '2021-09-26 11:15:24', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 11:15:24', '2021-09-26 11:15:24', NULL),
(177, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:30', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 421875, '2021-09-26 11:15:30', '2021-09-26 11:15:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:30', '2021-09-26 11:15:30', NULL),
(178, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:56', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 750000, 421875, '2021-09-26 11:15:56', '2021-09-26 11:15:56', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:56', '2021-09-26 11:15:56', NULL),
(179, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:57', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 750000, 421875, '2021-09-26 11:15:57', '2021-09-26 11:15:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:57', '2021-09-26 11:15:57', NULL),
(180, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:58', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 453125, '2021-09-26 11:15:58', '2021-09-26 11:15:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:58', '2021-09-26 11:15:58', NULL),
(181, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:15:59', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 453125, '2021-09-26 11:15:59', '2021-09-26 11:15:59', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:15:59', '2021-09-26 11:15:59', NULL),
(182, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:16:00', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 781250, 453125, '2021-09-26 11:16:00', '2021-09-26 11:16:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:16:00', '2021-09-26 11:16:00', NULL),
(183, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:01', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 468750, '2021-09-26 11:18:01', '2021-09-26 11:18:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:01', '2021-09-26 11:18:01', NULL),
(184, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:03', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 828125, 484375, '2021-09-26 11:18:03', '2021-09-26 11:18:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:03', '2021-09-26 11:18:03', NULL),
(185, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:06', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 843750, 484375, '2021-09-26 11:18:06', '2021-09-26 11:18:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:06', '2021-09-26 11:18:06', NULL),
(186, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:07', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 859375, 484375, '2021-09-26 11:18:07', '2021-09-26 11:18:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:07', '2021-09-26 11:18:07', NULL),
(187, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:07', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 890625, 484375, '2021-09-26 11:18:07', '2021-09-26 11:18:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:07', '2021-09-26 11:18:07', NULL),
(188, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:08', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 921875, 484375, '2021-09-26 11:18:07', '2021-09-26 11:18:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:08', '2021-09-26 11:18:08', NULL),
(189, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:08', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 937500, 500000, '2021-09-26 11:18:08', '2021-09-26 11:18:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:08', '2021-09-26 11:18:08', NULL),
(190, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:09', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 953125, 515625, '2021-09-26 11:18:08', '2021-09-26 11:18:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:09', '2021-09-26 11:18:09', NULL),
(191, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:09', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 968750, 515625, '2021-09-26 11:18:09', '2021-09-26 11:18:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:09', '2021-09-26 11:18:09', NULL),
(192, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 0, 515625, '2021-09-26 11:18:09', '2021-09-26 11:18:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:10', '2021-09-26 11:18:10', NULL),
(193, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:10', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 31250, 531250, '2021-09-26 11:18:10', '2021-09-26 11:18:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:10', '2021-09-26 11:18:10', NULL),
(194, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:13', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 46875, 531250, '2021-09-26 11:18:13', '2021-09-26 11:18:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:13', '2021-09-26 11:18:13', NULL),
(195, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:13', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 78125, 531250, '2021-09-26 11:18:13', '2021-09-26 11:18:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:13', '2021-09-26 11:18:13', NULL),
(196, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:14', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 531250, '2021-09-26 11:18:14', '2021-09-26 11:18:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:14', '2021-09-26 11:18:14', NULL),
(197, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 125000, 531250, '2021-09-26 11:18:15', '2021-09-26 11:18:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:15', '2021-09-26 11:18:15', NULL),
(198, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:16', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 125000, 546875, '2021-09-26 11:18:16', '2021-09-26 11:18:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:16', '2021-09-26 11:18:16', NULL),
(199, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:39', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 546875, '2021-09-26 11:18:39', '2021-09-26 11:18:39', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:18:39', '2021-09-26 11:18:39', NULL),
(200, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:45', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 562500, '2021-09-26 11:18:45', '2021-09-26 11:18:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-26 11:18:45', '2021-09-26 11:18:45', NULL),
(201, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:18:47', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 562500, '2021-09-26 11:18:47', '2021-09-26 11:18:47', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:18:47', '2021-09-26 11:18:47', NULL),
(202, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:19:00', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 171875, 593750, '2021-09-26 11:19:00', '2021-09-26 11:19:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:19:00', '2021-09-26 11:19:00', NULL),
(203, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:19:06', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 203125, 671875, '2021-09-26 11:19:06', '2021-09-26 11:19:06', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:19:06', '2021-09-26 11:19:06', NULL),
(204, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:19:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signout', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 203125, 703125, '2021-09-26 11:19:11', '2021-09-26 11:19:12', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 11:19:12', '2021-09-26 11:19:12', NULL),
(205, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:19:13', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 218750, 703125, '2021-09-26 11:19:13', '2021-09-26 11:19:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:19:13', '2021-09-26 11:19:13', NULL),
(206, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:19:14', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 250000, 718750, '2021-09-26 11:19:14', '2021-09-26 11:19:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:19:14', '2021-09-26 11:19:14', NULL),
(207, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:25:38', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 265625, 750000, '2021-09-26 11:25:38', '2021-09-26 11:25:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:25:38', '2021-09-26 11:25:38', NULL),
(208, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:26:27', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 312500, 750000, '2021-09-26 11:26:27', '2021-09-26 11:26:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:26:27', '2021-09-26 11:26:27', NULL),
(209, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:26:28', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 328125, 750000, '2021-09-26 11:26:28', '2021-09-26 11:26:28', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:26:28', '2021-09-26 11:26:28', NULL),
(210, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:26:30', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 328125, 765625, '2021-09-26 11:26:30', '2021-09-26 11:26:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:26:30', '2021-09-26 11:26:30', NULL),
(211, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:26:32', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 343750, 765625, '2021-09-26 11:26:32', '2021-09-26 11:26:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:26:32', '2021-09-26 11:26:32', NULL),
(212, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:27:13', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=User/SignOut', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 343750, 781250, '2021-09-26 11:27:13', '2021-09-26 11:27:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:27:13', '2021-09-26 11:27:13', NULL),
(213, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:27:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=User/SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 828125, '2021-09-26 11:27:15', '2021-09-26 11:27:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:27:15', '2021-09-26 11:27:15', NULL),
(214, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:27:18', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 828125, '2021-09-26 11:27:18', '2021-09-26 11:27:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 11:27:18', '2021-09-26 11:27:18', NULL),
(215, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:27:24', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 390625, 859375, '2021-09-26 11:27:23', '2021-09-26 11:27:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-26 11:27:24', '2021-09-26 11:27:24', NULL),
(216, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:27:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 390625, 875000, '2021-09-26 11:27:25', '2021-09-26 11:27:26', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:27:26', '2021-09-26 11:27:26', NULL),
(217, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:28:05', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 906250, '2021-09-26 11:28:04', '2021-09-26 11:28:05', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:28:05', '2021-09-26 11:28:05', NULL),
(218, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:28:28', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 421875, 921875, '2021-09-26 11:28:28', '2021-09-26 11:28:28', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:28:28', '2021-09-26 11:28:28', NULL),
(219, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:33:45', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 437500, 968750, '2021-09-26 11:33:45', '2021-09-26 11:33:45', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:33:45', '2021-09-26 11:33:45', NULL),
(220, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:33:46', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 453125, 968750, '2021-09-26 11:33:46', '2021-09-26 11:33:46', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:33:46', '2021-09-26 11:33:46', NULL),
(221, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:33:48', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 468750, 984375, '2021-09-26 11:33:48', '2021-09-26 11:33:48', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:33:48', '2021-09-26 11:33:48', NULL),
(222, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:34:11', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 484375, 15625, '2021-09-26 11:34:11', '2021-09-26 11:34:11', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:34:11', '2021-09-26 11:34:11', NULL),
(223, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:34:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 31250, '2021-09-26 11:34:12', '2021-09-26 11:34:12', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:34:12', '2021-09-26 11:34:12', NULL),
(224, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:35:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 62500, '2021-09-26 11:35:15', '2021-09-26 11:35:15', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:35:15', '2021-09-26 11:35:15', NULL),
(225, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 11:35:16', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 78125, '2021-09-26 11:35:16', '2021-09-26 11:35:16', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 11:35:16', '2021-09-26 11:35:16', NULL),
(226, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:06:14', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 531250, 78125, '2021-09-26 12:06:14', '2021-09-26 12:06:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:06:14', '2021-09-26 12:06:14', NULL),
(227, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:06:50', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 562500, 78125, '2021-09-26 12:06:50', '2021-09-26 12:06:50', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:06:50', '2021-09-26 12:06:50', NULL),
(228, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:07:45', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 578125, 93750, '2021-09-26 12:07:45', '2021-09-26 12:07:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:07:45', '2021-09-26 12:07:45', NULL),
(229, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:08:13', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 593750, 109375, '2021-09-26 12:08:13', '2021-09-26 12:08:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:08:13', '2021-09-26 12:08:13', NULL),
(230, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:22:25', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 109375, '2021-09-26 12:22:25', '2021-09-26 12:22:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:22:25', '2021-09-26 12:22:25', NULL),
(231, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 12:22:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 625000, 125000, '2021-09-26 12:22:26', '2021-09-26 12:22:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 12:22:26', '2021-09-26 12:22:26', NULL),
(232, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:38:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 656250, 187500, '2021-09-26 14:38:14', '2021-09-26 14:38:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 14:38:15', '2021-09-26 14:38:15', NULL),
(233, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:38:17', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Home', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 703125, 265625, '2021-09-26 14:38:17', '2021-09-26 14:38:17', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 14:38:17', '2021-09-26 14:38:17', NULL),
(234, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:52:44', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 296875, '2021-09-26 14:52:44', '2021-09-26 14:52:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 14:52:44', '2021-09-26 14:52:44', NULL),
(235, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:52:47', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 750000, 296875, '2021-09-26 14:52:47', '2021-09-26 14:52:47', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 14:52:47', '2021-09-26 14:52:47', NULL),
(236, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:52:53', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 296875, '2021-09-26 14:52:53', '2021-09-26 14:52:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-26 14:52:53', '2021-09-26 14:52:53', NULL),
(237, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:52:55', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 828125, 296875, '2021-09-26 14:52:55', '2021-09-26 14:52:55', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 14:52:55', '2021-09-26 14:52:55', NULL),
(238, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:52:57', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 859375, 312500, '2021-09-26 14:52:57', '2021-09-26 14:52:57', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 14:52:57', '2021-09-26 14:52:57', NULL),
(239, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:53:07', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/PersonAddress', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:53:06', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:53:07', NULL, NULL),
(240, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:53:18', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/personaddress', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:53:18', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:53:18', NULL, NULL),
(241, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:54:40', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/personaddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:54:40', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:54:40', NULL, NULL),
(242, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:54:59', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/personaddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:54:59', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:54:59', NULL, NULL),
(243, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:56:01', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/personaddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:56:01', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:56:01', NULL, NULL),
(244, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:56:24', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=Management/Generic/personaddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 93750, 46875, '2021-09-26 14:56:23', '2021-09-26 14:56:24', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 14:56:24', '2021-09-26 14:56:24', NULL),
(245, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:56:29', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=management/generic/personaddress&Page=1&OrderBy=PersonAddressName%20ASC,%20PersonAddressName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 156250, 62500, '2021-09-26 14:56:29', '2021-09-26 14:56:29', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 14:56:29', '2021-09-26 14:56:29', NULL),
(246, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 14:59:49', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/personaddress', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress&Page=1&OrderBy=PersonAddressName%20ASC,%20PersonAddressName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 14:59:49', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 14:59:49', NULL, NULL),
(247, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:00:00', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/personaddress', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 15:00:00', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 15:00:00', NULL, NULL),
(248, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:00:24', '::1', 'POST', 'HTTP', 'sphptemplate/', NULL, '_Script=management/generic/personaddress', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 15:00:24', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 15:00:24', NULL, NULL),
(249, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:00', '::1', 'POST', 'HTTP', 'sphptemplate/', 'home', '_Script=management/generic/personaddress', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 703125, 218750, '2021-09-26 15:50:00', '2021-09-26 15:50:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 15:50:00', '2021-09-26 15:50:00', NULL),
(250, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:02', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 781250, 265625, '2021-09-26 15:50:02', '2021-09-26 15:50:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 15:50:02', '2021-09-26 15:50:02', NULL),
(251, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:03', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/PersonAddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 265625, '2021-09-26 15:50:03', '2021-09-26 15:50:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 15:50:03', '2021-09-26 15:50:03', NULL),
(252, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:04', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/PersonAddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 296875, '2021-09-26 15:50:04', '2021-09-26 15:50:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-26 15:50:04', '2021-09-26 15:50:04', NULL),
(253, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:13', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 796875, 312500, '2021-09-26 15:50:13', '2021-09-26 15:50:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-26 15:50:13', '2021-09-26 15:50:13', NULL),
(254, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 812500, 328125, '2021-09-26 15:50:15', '2021-09-26 15:50:15', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:50:15', '2021-09-26 15:50:15', NULL),
(255, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:16', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/PersonAddress', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 15:50:16', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 15:50:16', NULL, NULL),
(256, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:36', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=Management/Generic/PersonAddress', 'https://localhost/sphptemplate/?_Script=Management/Generic/PersonAddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 906250, 390625, '2021-09-26 15:50:36', '2021-09-26 15:50:36', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:50:36', '2021-09-26 15:50:36', NULL),
(257, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:38', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=management/generic/personaddress&Page=1&OrderBy=PersonAddressName%20ASC,%20PersonAddressName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/PersonAddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 984375, 484375, '2021-09-26 15:50:38', '2021-09-26 15:50:38', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:50:38', '2021-09-26 15:50:38', NULL),
(258, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:48', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=management/generic/personaddress', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress&Page=1&OrderBy=PersonAddressName%20ASC,%20PersonAddressName&Order=ASC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 31250, 484375, '2021-09-26 15:50:48', '2021-09-26 15:50:48', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:50:48', '2021-09-26 15:50:48', NULL),
(259, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:50', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', '_Script=Management/Generic/PersonAddress&SucceededAction=Input', 'https://localhost/sphptemplate/?_Script=management/generic/personaddress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 500000, '2021-09-26 15:50:50', '2021-09-26 15:50:50', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:50:50', '2021-09-26 15:50:50', NULL),
(260, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:50:54', '::1', 'GET', 'HTTP', 'sphptemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/PersonAddress&SucceededAction=Input', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', NULL, NULL, '2021-09-26 15:50:54', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-09-26 15:50:54', NULL, NULL),
(261, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:51:35', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 62500, 562500, '2021-09-26 15:51:35', '2021-09-26 15:51:35', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:51:35', '2021-09-26 15:51:35', NULL),
(262, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:52:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 140625, 625000, '2021-09-26 15:52:12', '2021-09-26 15:52:12', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:52:12', '2021-09-26 15:52:12', NULL),
(263, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:53:22', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 234375, 671875, '2021-09-26 15:53:22', '2021-09-26 15:53:22', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:53:22', '2021-09-26 15:53:22', NULL),
(264, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:53:28', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/report/personreport', 'btnReport&_Script=Management/report/personreport&PersonID=10&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 250000, 687500, '2021-09-26 15:53:28', '2021-09-26 15:53:28', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:53:28', '2021-09-26 15:53:28', NULL);
INSERT INTO `sphp_applicationtraffic` (`ApplicationTrafficID`, `ApplicationTrafficServer`, `ApplicationTrafficHost`, `ApplicationTrafficSessionCode`, `ApplicationTrafficTime`, `ApplicationTrafficIP`, `ApplicationTrafficMethod`, `ApplicationTrafficProtocol`, `ApplicationTrafficURL`, `ApplicationTrafficScript`, `ApplicationTrafficQuery`, `ApplicationTrafficReferer`, `ApplicationTrafficUserAgent`, `ApplicationTrafficResourceUsageDurationUser`, `ApplicationTrafficResourceUsageDurationSystem`, `ApplicationTrafficExecutionBegin`, `ApplicationTrafficExecutionEnd`, `UserID`, `ApplicationTrafficLatitude`, `ApplicationTrafficLongitude`, `ApplicationTrafficMetro`, `ApplicationTrafficCity`, `ApplicationTrafficPostCode`, `ApplicationTrafficCountry`, `ApplicationTrafficIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(265, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:53:50', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 281250, 703125, '2021-09-26 15:53:50', '2021-09-26 15:53:50', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:53:50', '2021-09-26 15:53:50', NULL),
(266, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:53:52', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 296875, 750000, '2021-09-26 15:53:52', '2021-09-26 15:53:52', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:53:52', '2021-09-26 15:53:52', NULL),
(267, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:53:54', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/report/personaddress', 'btnReport&_Script=Management/report/personaddress&PersonID=10&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 328125, 750000, '2021-09-26 15:53:54', '2021-09-26 15:53:54', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:53:54', '2021-09-26 15:53:54', NULL),
(268, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:54:08', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 359375, 765625, '2021-09-26 15:54:08', '2021-09-26 15:54:08', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:54:08', '2021-09-26 15:54:08', NULL),
(269, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:54:11', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/personaddress', 'btnReport&_Script=Management/generic/personaddress&PersonID=10&Page=1&OrderBy=PersonFirstName&Order=ASC', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 390625, 765625, '2021-09-26 15:54:11', '2021-09-26 15:54:11', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:54:11', '2021-09-26 15:54:11', NULL),
(270, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:54:14', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 796875, '2021-09-26 15:54:13', '2021-09-26 15:54:14', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:54:14', '2021-09-26 15:54:14', NULL),
(271, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:57:58', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 859375, '2021-09-26 15:57:58', '2021-09-26 15:57:58', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:57:58', '2021-09-26 15:57:58', NULL),
(272, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 15:59:18', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 453125, 859375, '2021-09-26 15:59:18', '2021-09-26 15:59:18', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 15:59:18', '2021-09-26 15:59:18', NULL),
(273, 'localhost', 'localhost', 'q6hof7tn3gep2t7242iilkm307', '2021-09-26 16:00:21', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 468750, 875000, '2021-09-26 16:00:20', '2021-09-26 16:00:21', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-26 16:00:21', '2021-09-26 16:00:21', NULL),
(274, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:15:53', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 234375, 203125, '2021-09-27 15:15:53', '2021-09-27 15:15:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 15:15:53', '2021-09-27 15:15:53', NULL),
(275, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:09', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 406250, 437500, '2021-09-27 15:17:08', '2021-09-27 15:17:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 15:17:09', '2021-09-27 15:17:09', NULL),
(276, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:12', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 453125, 453125, '2021-09-27 15:17:12', '2021-09-27 15:17:12', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 15:17:12', '2021-09-27 15:17:12', NULL),
(277, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:15', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 484375, 453125, '2021-09-27 15:17:14', '2021-09-27 15:17:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 15:17:15', '2021-09-27 15:17:15', NULL),
(278, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:23', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 500000, 453125, '2021-09-27 15:17:23', '2021-09-27 15:17:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-27 15:17:23', '2021-09-27 15:17:23', NULL),
(279, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:25', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 500000, 468750, '2021-09-27 15:17:25', '2021-09-27 15:17:25', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 15:17:25', '2021-09-27 15:17:25', NULL),
(280, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:26', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 515625, 468750, '2021-09-27 15:17:26', '2021-09-27 15:17:26', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 15:17:26', '2021-09-27 15:17:26', NULL),
(281, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 15:17:30', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/user', '_Script=Management/Generic/User', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 546875, 500000, '2021-09-27 15:17:30', '2021-09-27 15:17:30', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 15:17:30', '2021-09-27 15:17:30', NULL),
(282, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:15', '::1', 'POST', 'HTTP', 'sphptemplate/', 'home', '_Script=management/generic/user&Page=1&OrderBy=UserLastActiveTime&Order=DESC', 'https://localhost/sphptemplate/?_Script=Management/Generic/User', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 609375, 578125, '2021-09-27 16:16:15', '2021-09-27 16:16:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 16:16:15', '2021-09-27 16:16:15', NULL),
(283, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:18', '::1', 'GET', 'HTTP', 'sphptemplate/', 'user/signin', '_Script=User/SignIn', 'https://localhost/sphptemplate/?_Script=management/generic/user&Page=1&OrderBy=UserLastActiveTime&Order=DESC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 687500, 703125, '2021-09-27 16:16:17', '2021-09-27 16:16:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-09-27 16:16:18', '2021-09-27 16:16:18', NULL),
(284, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:27', '::1', 'POST', 'HTTP', 'sphptemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/sphptemplate/?_Script=User/SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 734375, '2021-09-27 16:16:27', '2021-09-27 16:16:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-09-27 16:16:27', '2021-09-27 16:16:27', NULL),
(285, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:28', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'https://localhost/sphptemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 734375, 734375, '2021-09-27 16:16:28', '2021-09-27 16:16:28', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 16:16:28', '2021-09-27 16:16:28', NULL),
(286, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:43', '::1', 'GET', 'HTTP', 'sphptemplate/', 'management/generic/user', '_Script=Management/Generic/User', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 765625, 734375, '2021-09-27 16:16:43', '2021-09-27 16:16:43', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 16:16:43', '2021-09-27 16:16:43', NULL),
(287, 'localhost', 'localhost', 'dsosqvr3noh2ai0dirjnoe6tmt', '2021-09-27 16:16:45', '::1', 'POST', 'HTTP', 'sphptemplate/', 'management/generic/user', '_Script=management/generic/user&Page=1&OrderBy=UserLastActiveTime&Order=DESC', 'https://localhost/sphptemplate/?_Script=Management/Generic/User', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 781250, 765625, '2021-09-27 16:16:45', '2021-09-27 16:16:45', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-09-27 16:16:45', '2021-09-27 16:16:45', NULL),
(288, 'localhost', 'localhost:8012', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:01:35', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'http://localhost:8012/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 734375, 562500, '2021-10-04 11:01:34', '2021-10-04 11:01:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:01:35', '2021-10-04 11:01:35', NULL),
(289, 'localhost', 'localhost:8012', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:01:37', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, 'http://localhost:8012/sphptemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 734375, 578125, '2021-10-04 11:01:37', '2021-10-04 11:01:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:01:37', '2021-10-04 11:01:37', NULL),
(290, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:01:40', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 734375, 609375, '2021-10-04 11:01:40', '2021-10-04 11:01:40', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:01:40', '2021-10-04 11:01:40', NULL),
(291, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:01:41', '::1', 'GET', 'HTTP', 'sphptemplate/', 'home', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 781250, 609375, '2021-10-04 11:01:40', '2021-10-04 11:01:41', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:01:41', '2021-10-04 11:01:41', NULL),
(292, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:14:13', '::1', 'GET', 'HTTP', 'responsivetemplate/', NULL, '_Script=Management/Generic/Person', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, NULL, '2021-10-04 11:14:13', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-10-04 11:14:13', NULL, NULL),
(293, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:15:28', '::1', 'GET', 'HTTP', 'responsivetemplate/', NULL, '_Script=Management/Generic/Person', 'https://localhost/responsivetemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, NULL, '2021-10-04 11:15:28', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2021-10-04 11:15:28', NULL, NULL),
(294, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:17:26', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/person', '_Script=Management/Generic/Person', 'https://localhost/responsivetemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 406250, 421875, '2021-10-04 11:17:26', '2021-10-04 11:17:26', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:17:26', '2021-10-04 11:17:26', NULL),
(295, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:17:48', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/user', '_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'https://localhost/responsivetemplate/?_Script=Management/Generic/Person', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 484375, 500000, '2021-10-04 11:17:47', '2021-10-04 11:17:48', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:17:48', '2021-10-04 11:17:48', NULL),
(296, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:17:50', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/usergroup', '_Script=Management/Generic/UserGroup&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=UserGroup', 'https://localhost/responsivetemplate/?_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 500000, 515625, '2021-10-04 11:17:50', '2021-10-04 11:17:50', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:17:50', '2021-10-04 11:17:50', NULL),
(297, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:18:46', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/user', '_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'https://localhost/responsivetemplate/?_Script=Management/Generic/UserGroup&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=UserGroup', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 531250, 531250, '2021-10-04 11:18:46', '2021-10-04 11:18:46', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:18:46', '2021-10-04 11:18:46', NULL),
(298, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:20:07', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/user', '_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'https://localhost/responsivetemplate/?_Script=Management/Generic/UserGroup&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=UserGroup', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 546875, 546875, '2021-10-04 11:20:07', '2021-10-04 11:20:07', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:20:07', '2021-10-04 11:20:07', NULL),
(299, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:22:47', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'home', '?_Script=User/Impersonate', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 578125, 562500, '2021-10-04 11:22:46', '2021-10-04 11:22:47', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:22:47', '2021-10-04 11:22:47', NULL),
(300, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:22:52', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'user/impersonate', '_Script=User/Impersonate', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 625000, 625000, '2021-10-04 11:22:52', '2021-10-04 11:22:52', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:22:52', '2021-10-04 11:22:52', NULL),
(301, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:22:56', '::1', 'POST', 'HTTP', 'responsivetemplate/', 'user/impersonate', '_Script=user/impersonate', 'https://localhost/responsivetemplate/?_Script=User/Impersonate', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 640625, 640625, '2021-10-04 11:22:56', '2021-10-04 11:22:56', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 13, NULL, '2021-10-04 11:22:56', '2021-10-04 11:22:56', NULL),
(302, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:22:57', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'home', NULL, 'https://localhost/responsivetemplate/?_Script=user/impersonate', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 656250, 640625, '2021-10-04 11:22:57', '2021-10-04 11:22:57', 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, 13, NULL, '2021-10-04 11:22:57', '2021-10-04 11:22:57', NULL),
(303, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:03', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'user/signout', '_Script=User/SignOut&_LeftPanelNavigation_PadKey=User&_LeftPanelNavigation_ItemKey=SignOut', 'https://localhost/responsivetemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 687500, 640625, '2021-10-04 11:23:03', '2021-10-04 11:23:03', 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, NULL, NULL, '2021-10-04 11:23:03', '2021-10-04 11:23:03', NULL),
(304, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:05', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'home', NULL, 'https://localhost/responsivetemplate/?_Script=User/SignOut&_LeftPanelNavigation_PadKey=User&_LeftPanelNavigation_ItemKey=SignOut', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 703125, 640625, '2021-10-04 11:23:05', '2021-10-04 11:23:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:23:05', '2021-10-04 11:23:05', NULL),
(305, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:06', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'user/signin', '_Script=User/SignIn&_LeftPanelNavigation_PadKey=User&_LeftPanelNavigation_ItemKey=SignIn', 'https://localhost/responsivetemplate/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 718750, 640625, '2021-10-04 11:23:06', '2021-10-04 11:23:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:23:06', '2021-10-04 11:23:06', NULL),
(306, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:15', '::1', 'POST', 'HTTP', 'responsivetemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/responsivetemplate/?_Script=User/SignIn&_LeftPanelNavigation_PadKey=User&_LeftPanelNavigation_ItemKey=SignIn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 718750, 656250, '2021-10-04 11:23:15', '2021-10-04 11:23:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-04 11:23:15', '2021-10-04 11:23:15', NULL),
(307, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:26', '::1', 'POST', 'HTTP', 'responsivetemplate/', 'user/signinaction', '_Script=User/SignInAction', 'https://localhost/responsivetemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 734375, 687500, '2021-10-04 11:23:25', '2021-10-04 11:23:26', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, '2021-10-04 11:23:26', '2021-10-04 11:23:26', NULL),
(308, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:27', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'home', NULL, 'https://localhost/responsivetemplate/?_Script=User/SignInAction', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 734375, 734375, '2021-10-04 11:23:27', '2021-10-04 11:23:27', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:23:27', '2021-10-04 11:23:27', NULL),
(309, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:44', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'management/generic/user', '_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'https://localhost/responsivetemplate/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 796875, 796875, '2021-10-04 11:23:44', '2021-10-04 11:23:44', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:23:44', '2021-10-04 11:23:44', NULL),
(310, 'localhost', 'localhost', 'f39u29e63mum2q942ov3laoctc', '2021-10-04 11:23:49', '::1', 'GET', 'HTTP', 'responsivetemplate/', 'home', NULL, 'https://localhost/responsivetemplate/?_Script=Management/Generic/User&_LeftPanelNavigation_PadKey=Administration&_LeftPanelNavigation_ItemKey=User', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 812500, 875000, '2021-10-04 11:23:48', '2021-10-04 11:23:49', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 2, NULL, '2021-10-04 11:23:49', '2021-10-04 11:23:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_country`
--

CREATE TABLE `sphp_country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(85) COLLATE utf8_unicode_ci NOT NULL,
  `CountryCode` int(11) NOT NULL DEFAULT 0,
  `CountryISOCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CountryISOCode2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CountryFlag` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CountryMap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LanguageID` int(11) DEFAULT NULL,
  `CurrencyID` int(11) DEFAULT NULL,
  `CountryIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `TimeInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_country`
--

INSERT INTO `sphp_country` (`CountryID`, `CountryName`, `CountryCode`, `CountryISOCode`, `CountryISOCode2`, `CountryFlag`, `CountryMap`, `LanguageID`, `CurrencyID`, `CountryIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Bangladesh', 88, 'BD', 'BGD', '6E4759C6EFA74AC381AEAB0AA8031AF40E26BE4359DC41EB8F601352E7CD1CA9.png', '', 2, NULL, 1, 0, 2, 0, '2015-02-06 01:11:08', '2019-02-10 10:43:09', '0000-00-00 00:00:00'),
(2, 'United States', 1, 'USA', NULL, 'A18E14552118430BB21FF1C636EC18DE8AB1B6A43E4A482587E9D09308B58D5E.png', '', 1, NULL, 1, 0, 2, 0, '2015-02-06 01:11:08', '2019-02-10 12:37:01', '0000-00-00 00:00:00'),
(3, 'United Kingdom', 44, 'UK', NULL, 'A381C122043448D9A6F925CEA8B807468E940F8F0F09472EB67EA6F5FD8C926B.png', '', 8, NULL, 1, 0, 2, 0, '2015-02-06 01:11:25', '2019-02-10 12:37:11', '0000-00-00 00:00:00'),
(4, 'Afghanistan', 93, 'AF', NULL, '', '', NULL, NULL, 1, 124, 2, 0, '2015-02-14 23:25:16', '2015-03-04 02:59:24', '0000-00-00 00:00:00'),
(7, 'France', 33, 'FRA', NULL, '', '', NULL, NULL, 1, 1, 2, 0, '2015-03-02 02:57:00', '2015-03-02 19:28:24', '0000-00-00 00:00:00'),
(11, 'Belarus', 375, 'BY', NULL, 'BA5ECE60A45D44CBAFB610DF85422E79E8680B92492345A8B8280F3C326F170A.png', '', 3, NULL, 1, 1, 2, 0, '2015-03-03 16:29:15', '2019-02-10 12:28:47', '0000-00-00 00:00:00'),
(13, 'Ukraine', 38, 'UA', NULL, 'BD16646DE4B24904926986FE5A96A3703B8B511341904BAC9873B83C8130B081.png', '', 24, NULL, 1, 1, 2, 0, '2015-03-05 11:48:21', '2019-02-10 12:37:40', '0000-00-00 00:00:00'),
(14, 'China', 86, 'CN', NULL, 'DB6634A88C39423DA0871AB535FBDE832BE12C0F119C40DDA0F073CF4705033E.png', '', 4, NULL, 1, 1, 2, 0, '2015-03-06 02:25:53', '2019-02-10 12:40:22', '0000-00-00 00:00:00'),
(15, 'India', 91, 'IN', NULL, '', '', NULL, NULL, 1, 1, 2, 0, '2015-03-06 04:28:49', '2015-03-06 16:26:23', '0000-00-00 00:00:00'),
(16, 'Canada', 1, 'CA', NULL, '3B7CCC5E4C63426B937A6F19D01EB01285E22BE54F774EE3BF082AC146AF88FF.png', '', 1, NULL, 1, 2, 2, 0, '2015-03-06 16:31:18', '2019-02-10 12:40:12', '0000-00-00 00:00:00'),
(17, 'Hong Kong', 852, 'HK', NULL, '', '', NULL, NULL, 1, 1, 2, 0, '2015-03-08 11:28:20', '2015-03-08 16:14:09', '0000-00-00 00:00:00'),
(18, 'Netherlands', 31, 'NL', NULL, '', '', NULL, NULL, 1, 2, 2, 0, '2015-03-09 05:53:49', '2015-03-09 05:55:53', '0000-00-00 00:00:00'),
(19, 'Japan', 81, 'JP', NULL, '', '', NULL, NULL, 1, 2, 0, 0, '2015-03-09 22:29:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Bulgaria', 359, 'BG', NULL, '782B5E9CC1C74894B8ADAA17DB33618AFDFC0ABD93D64640A4E1A896ADCA4A05.png', '', 3, NULL, 1, 2, 2, 0, '2015-03-10 02:23:14', '2019-02-10 12:28:07', '0000-00-00 00:00:00'),
(21, 'Sweden', 45, 'SE', NULL, 'C53F09495A444AFEA15E5D2DDA578CC2F82095C3448E43EAA9AF97F8587EA69B.png', '', 3, NULL, 1, 2, 2, 0, '2015-03-10 02:23:59', '2019-02-10 12:33:22', '0000-00-00 00:00:00'),
(22, 'Germany', 49, 'DE', NULL, '', '', NULL, NULL, 1, 2, 0, 0, '2015-03-16 04:01:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Australia', 61, 'AU', NULL, '606AF98BFD7A4DE8B3FBA84B81724E6298504010782C45489DE93D0FF5D77D02.png', '', 1, NULL, 1, 2, 2, 0, '2015-03-19 11:44:56', '2019-02-10 12:39:49', '0000-00-00 00:00:00'),
(24, 'Russia', 7, 'RU', NULL, '', '', NULL, NULL, 1, 2, 0, 0, '2015-03-20 04:13:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Other', 0, 'OTHER', NULL, '', '', NULL, NULL, 1, 2, 0, 0, '2015-03-21 18:47:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Saudi Arabia', 966, 'KSA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Andorra', 376, 'AD', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'United Arab Emirates', 971, 'AE', NULL, '971FD6E982BA4361BF8275315C5C605878358368F2384A048F436E9811FF0F42.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:30:43', '0000-00-00 00:00:00'),
(99, 'Antigua and Barbuda', 1268, 'AG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Anguilla', 1264, 'AI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Albania', 355, 'AL', NULL, '57E13336DCC44424B3A5DCF4C6BB169D3BF3254F198F40389174EECD0486E0EA.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:29:40', '0000-00-00 00:00:00'),
(102, 'Armenia', 374, 'AM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Angola', 244, 'AO', NULL, '2612B41E2EE34E25A8D313E6C5553A187F5C837DF8FF4048AFF6E1438C746087.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:29:15', '0000-00-00 00:00:00'),
(104, 'Antarctica', 0, 'AQ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Argentina', 54, 'AR', NULL, '781FCB5DBDA940859C0500F7869E7F93DBC9424338A649A1B98B2B6211F29DE0.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 10:46:50', '0000-00-00 00:00:00'),
(106, 'American Samoa', 1684, 'AS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Austria', 43, 'AT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Aruba', 297, 'AW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Ã…land Islands', 358, 'AX', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 05:35:28', '0000-00-00 00:00:00'),
(110, 'Azerbaijan', 994, 'AZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Bosnia and Herzegovina', 387, 'BA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Barbados', 1246, 'BB', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Belgium', 32, 'BE', NULL, '0FAE601B68BA41F2A9E01CDC3EBE7AD7AB4DDA62FEBF42EBB18F8D7EDA3D4792.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:28:27', '0000-00-00 00:00:00'),
(114, 'Burkina Faso', 226, 'BF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Bahrain', 973, 'BH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Burundi', 257, 'BI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Benin', 229, 'BJ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Saint BarthÃ©lemy', 590, 'BL', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:20:04', '0000-00-00 00:00:00'),
(119, 'Bermuda', 1441, 'BM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Brunei Darussalam', 673, 'BN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Bolivia', 591, 'BO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Caribbean Netherlands', 5997, 'BQ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Brazil', 55, 'BR', NULL, 'E53D748F54CF43D0869A49178C03171565DDFD0271C04F9BBE9A296DE3C4F55B.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:20:49', '0000-00-00 00:00:00'),
(124, 'Bahamas', 1242, 'BS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Bhutan', 975, 'BT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Bouvet Island', 0, 'BV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Botswana', 267, 'BW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Belize', 501, 'BZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Cocos (Keeling) Islands', 61, 'CC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Central African Republic', 236, 'CF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Congo', 242, 'CG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Switzerland', 41, 'CH', NULL, 'AEEFF27537CB42D2A546AEB268D88BC27755618C1FA84A12B9932414389059CB.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:33:31', '0000-00-00 00:00:00'),
(133, 'CÃ´te d\'Ivoire', 225, 'CI', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:19:00', '0000-00-00 00:00:00'),
(134, 'Cook Islands', 682, 'CK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Chile', 56, 'CL', NULL, '3A540B1DCB934573AE26B37A5D7A43AEF0011F1A77C04F9EA3821880E2DC4A18.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:21:41', '0000-00-00 00:00:00'),
(136, 'Cameroon', 237, 'CM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Colombia', 57, 'CO', NULL, 'D91823A2F5E04B1692D0948A00319DBF90E6B6F7DFE447998F890C2DA5798D57.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:21:28', '0000-00-00 00:00:00'),
(138, 'Costa Rica', 506, 'CR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Cuba', 53, 'CU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Cape Verde', 238, 'CV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'CuraÃ§ao', 5999, 'CW', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:19:18', '0000-00-00 00:00:00'),
(142, 'Christmas Island', 61, 'CX', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Cyprus', 357, 'CY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Czech Republic', 420, 'CZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Djibouti', 253, 'DJ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Denmark', 45, 'DK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Dominica', 1767, 'DM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Dominican Republic', 1809, 'DO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Algeria', 213, 'DZ', NULL, '93EF98BA598343DF93A989AD4ECCF48B03749CA3B03741A59F74BD0279668E75.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 10:45:10', '0000-00-00 00:00:00'),
(150, 'Ecuador', 593, 'EC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Estonia', 372, 'EE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Egypt', 20, 'EG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Western Sahara', 212, 'EH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Eritrea', 291, 'ER', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Spain', 34, 'ES', NULL, 'A63A69F6F4DB49CEA857AF97DB33348D600A4BAB694B4F9096BFBC5B9821032F.png', '', 22, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:38:18', '0000-00-00 00:00:00'),
(156, 'Ethiopia', 251, 'ET', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Finland', 358, 'FI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Fiji', 679, 'FJ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Falkland Islands', 500, 'FK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Micronesia', 691, 'FM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Faroe Islands', 298, 'FO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Gabon', 241, 'GA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Grenada', 1473, 'GD', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Georgia', 995, 'GE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'French Guiana', 594, 'GF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Guernsey', 44, 'GG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Ghana', 233, 'GH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Gibraltar', 350, 'GI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Greenland', 299, 'GL', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Gambia', 220, 'GM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Guinea', 224, 'GN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Guadeloupe', 590, 'GP', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Equatorial Guinea', 240, 'GQ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Greece', 30, 'GR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'South Georgia and the South Sandwich Islands', 500, 'GS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Guatemala', 502, 'GT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Guam', 1671, 'GU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Guinea-Bissau', 245, 'GW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Guyana', 592, 'GY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Heard and McDonald Islands', 0, 'HM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Honduras', 504, 'HN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Croatia', 385, 'HR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Haiti', 509, 'HT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Hungary', 36, 'HU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Indonesia', 62, 'ID', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Ireland', 353, 'IE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Israel', 972, 'IL', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Isle of Man', 44, 'IM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'British Indian Ocean Territory', 246, 'IO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Iraq', 964, 'IQ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Iran', 98, 'IR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Iceland', 354, 'IS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Italy', 39, 'IT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Jersey', 44, 'JE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Jamaica', 1876, 'JM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Jordan', 962, 'JO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Kenya', 254, 'KE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Kyrgyzstan', 996, 'KG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Cambodia', 855, 'KH', NULL, '001D93E496284251BE97211ACFF566F2AD9D1AEB379F4C5B9784BFDE685C6DDE.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:27:38', '0000-00-00 00:00:00'),
(200, 'Kiribati', 686, 'KI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Comoros', 269, 'KM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Saint Kitts and Nevis', 1869, 'KN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'North Korea', 850, 'KP', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'South Korea', 82, 'KR', NULL, '', '', 14, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:38:33', '0000-00-00 00:00:00'),
(205, 'Kuwait', 965, 'KW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Cayman Islands', 1345, 'KY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Kazakhstan', 76, 'KZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Lao People\'s Democratic Republic', 856, 'LA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Lebanon', 961, 'LB', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Saint Lucia', 1758, 'LC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Liechtenstein', 423, 'LI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Sri Lanka', 94, 'LK', NULL, 'E22951E58D08438782FA8E5D8AB96C982396E38569EA405F8AD8BAC5F4C5158A.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:32:59', '0000-00-00 00:00:00'),
(213, 'Liberia', 231, 'LR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Lesotho', 266, 'LS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Lithuania', 370, 'LT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Luxembourg', 352, 'LU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Latvia', 371, 'LV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Libya', 218, 'LY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Morocco', 212, 'MA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Monaco', 377, 'MC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Moldova', 373, 'MD', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Montenegro', 382, 'ME', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Saint-Martin (France)', 590, 'MF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Madagascar', 261, 'MG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Marshall Islands', 692, 'MH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Macedonia', 389, 'MK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Mali', 223, 'ML', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Myanmar', 95, 'MM', 'MYN', '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Mongolia', 976, 'MN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Macau', 853, 'MO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Northern Mariana Islands', 1670, 'MP', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Martinique', 596, 'MQ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Mauritania', 222, 'MR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Montserrat', 1664, 'MS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Malta', 356, 'MT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Mauritius', 230, 'MU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Maldives', 960, 'MV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Malawi', 265, 'MW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Mexico', 52, 'MX', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Malaysia', 60, 'MY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Mozambique', 258, 'MZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Namibia', 264, 'NA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'New Caledonia', 687, 'NC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Niger', 227, 'NE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Norfolk Island', 672, 'NF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Nigeria', 234, 'NG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Nicaragua', 505, 'NI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Norway', 47, 'NO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Nepal', 977, 'NP', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Nauru', 674, 'NR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Niue', 683, 'NU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'New Zealand', 64, 'NZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Oman', 968, 'OM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Panama', 507, 'PA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Peru', 51, 'PE', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'French Polynesia', 689, 'PF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Papua New Guinea', 675, 'PG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Philippines', 63, 'PH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Pakistan', 92, 'PK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Poland', 48, 'PL', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'St. Pierre and Miquelon', 508, 'PM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Pitcairn', 64, 'PN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Puerto Rico', 1787, 'PR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Palestine', 970, 'PS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Portugal', 351, 'PT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'Palau', 680, 'PW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'Paraguay', 595, 'PY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Qatar', 974, 'QA', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'RÃ©union', 262, 'RE', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:19:44', '0000-00-00 00:00:00'),
(270, 'Romania', 40, 'RO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Serbia', 381, 'RS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Rwanda', 250, 'RW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Solomon Islands', 677, 'SB', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Seychelles', 248, 'SC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Sudan', 249, 'SD', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Singapore', 65, 'SG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Saint Helena', 290, 'SH', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Slovenia', 386, 'SI', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Svalbard and Jan Mayen Islands', 4779, 'SJ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Slovakia', 421, 'SK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Sierra Leone', 232, 'SL', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'San Marino', 378, 'SM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Senegal', 221, 'SN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'Somalia', 252, 'SO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Suriname', 597, 'SR', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'South Sudan', 211, 'SS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Sao Tome and Principe', 239, 'ST', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'El Salvador', 503, 'SV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Sint Maarten (Dutch part)', 1721, 'SX', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Syria', 963, 'SY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Swaziland', 268, 'SZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Turks and Caicos Islands', 1649, 'TC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Chad', 235, 'TD', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'French Southern Territories', 0, 'TF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Togo', 228, 'TG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Thailand', 66, 'TH', NULL, '6D1220E57D084D638DE5AD1D481E22B49C36273CF654414DB5BB6FB6C5751CE1.png', '', 23, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:37:59', '0000-00-00 00:00:00'),
(297, 'Tajikistan', 992, 'TJ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Tokelau', 690, 'TK', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Timor-Leste', 670, 'TL', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Turkmenistan', 993, 'TM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Tunisia', 216, 'TN', NULL, 'ACA659F736104E7F8D2013E6A9C55180B90174568FDC4AC7885BDCC487A71DC1.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:31:39', '0000-00-00 00:00:00'),
(302, 'Tonga', 676, 'TO', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Turkey', 90, 'TR', NULL, '606ECF36742E495ABF2698234EE873D18F000140FBD249F0B8DDA24B201F9451.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:31:05', '0000-00-00 00:00:00'),
(304, 'Trinidad and Tobago', 1868, 'TT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Tuvalu', 688, 'TV', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Taiwan', 886, 'TW', NULL, 'EEE8ED4F00844D3B9E43B2770285B577404BCAA665994F0796B039B3A135DBC3.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:33:41', '0000-00-00 00:00:00'),
(307, 'Tanzania', 255, 'TZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Uganda', 256, 'UG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'United States Minor Outlying Islands', 0, 'UM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Uruguay', 598, 'UY', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Uzbekistan', 998, 'UZ', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Vatican', 379, 'VA', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:32:57', '0000-00-00 00:00:00'),
(313, 'Saint Vincent and the Grenadines', 1784, 'VC', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Venezuela', 58, 'VE', NULL, '04FD76ABF7F145529A2271F60D75E818DC18046307CA4137B6C0EA44DA52FC9A.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:31:20', '0000-00-00 00:00:00'),
(315, 'Virgin Islands (British)', 1284, 'VG', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Virgin Islands (U.S.)', 1340, 'VI', NULL, '', '', NULL, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2015-09-07 06:31:22', '0000-00-00 00:00:00'),
(317, 'Vietnam', 84, 'VN', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Vanuatu', 678, 'VU', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Wallis and Futuna Islands', 681, 'WF', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Samoa', 685, 'WS', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Yemen', 967, 'YE', NULL, '6F79D202276748C4837D8022B1CAB384EE53F9B7037B4F55A9C7B7A6462C4120.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:34:17', '0000-00-00 00:00:00'),
(322, 'Mayotte', 262, 'YT', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'South Africa', 27, 'ZA', NULL, 'B5FC589064E746738B1BAE9623D783D94F95A7E9C2904D44880076C78A8F816F.png', '', 3, NULL, 1, 0, 2, 0, '0000-00-00 00:00:00', '2019-02-10 12:38:47', '0000-00-00 00:00:00'),
(324, 'Zambia', 260, 'ZM', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Zimbabwe', 263, 'ZW', NULL, '', '', NULL, NULL, 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sphp_countrystate`
--

CREATE TABLE `sphp_countrystate` (
  `CountryStateID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `StateName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CountryStateIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_countrystate`
--

INSERT INTO `sphp_countrystate` (`CountryStateID`, `CountryID`, `StateName`, `CountryStateIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 1, 'Dhaka', 1, NULL, NULL, NULL, '2020-06-29 09:07:07', NULL, NULL),
(2, 1, 'Barishal', 1, NULL, NULL, NULL, '2020-06-29 09:11:42', NULL, NULL),
(3, 1, 'Chittagong', 1, NULL, NULL, NULL, '2020-06-29 09:11:42', NULL, NULL),
(4, 1, 'Comilla', 1, NULL, NULL, NULL, '2020-06-29 09:11:42', NULL, NULL),
(5, 1, 'Tangail', 1, NULL, NULL, NULL, '2020-06-29 15:37:56', NULL, NULL),
(6, 1, 'Kustia', 1, NULL, NULL, NULL, '2020-06-29 16:02:12', NULL, NULL),
(7, 1, '', 1, NULL, NULL, NULL, '2020-06-30 11:51:10', NULL, NULL),
(8, 1, 'Chattogram', 1, NULL, NULL, NULL, '2020-07-01 00:11:04', NULL, NULL),
(9, 1, 'Feni', 1, NULL, NULL, NULL, '2020-07-02 12:19:37', NULL, NULL),
(10, 1, 'Laxmipur', 1, NULL, NULL, NULL, '2020-07-08 12:40:44', NULL, NULL),
(11, 1, 'Rajshahi', 1, NULL, NULL, NULL, '2020-07-09 14:34:09', NULL, NULL),
(12, 1, 'Cox\'s Bazar', 1, NULL, NULL, NULL, '2020-07-14 18:57:12', NULL, NULL),
(13, 1, 'Dinajpur', 1, NULL, NULL, NULL, '2020-07-15 16:25:07', NULL, NULL),
(14, 1, 'Gopalgonj', 1, NULL, NULL, NULL, '2020-07-15 19:02:38', NULL, NULL),
(15, 1, 'Jessore', 1, NULL, NULL, NULL, '2020-07-16 18:35:31', NULL, NULL),
(16, 1, 'Netrokuna', 1, NULL, NULL, NULL, '2020-07-16 23:24:16', NULL, NULL),
(17, 1, 'Dhak', 1, NULL, NULL, NULL, '2020-07-19 17:48:01', NULL, NULL),
(18, 1, 'Narayangonj', 1, NULL, NULL, NULL, '2020-07-20 12:11:46', NULL, NULL),
(19, 1, 'Kishargonj', 1, NULL, NULL, NULL, '2020-07-21 15:19:01', NULL, NULL),
(20, 1, ' Bagerhat', 1, NULL, NULL, NULL, '2020-07-22 13:47:48', NULL, NULL),
(21, 1, 'Bagerhat.', 1, NULL, NULL, NULL, '2020-07-22 14:00:22', NULL, NULL),
(22, 1, 'Kushtia', 1, NULL, NULL, NULL, '2020-07-22 17:42:13', NULL, NULL),
(23, 1, 'Sylhet', 1, NULL, NULL, NULL, '2020-07-22 19:30:52', NULL, NULL),
(24, 1, 'Pabna', 1, NULL, NULL, NULL, '2020-07-22 20:11:56', NULL, NULL),
(25, 1, 'Bagherhat', 1, NULL, NULL, NULL, '2020-07-23 12:00:59', NULL, NULL),
(26, 1, 'Jhenaidah', 1, NULL, NULL, NULL, '2020-07-26 15:23:22', NULL, NULL),
(27, 1, 'Gazipur', 1, NULL, NULL, NULL, '2020-07-27 14:33:21', NULL, NULL),
(28, 1, 'Khilgaon', 1, NULL, NULL, NULL, '2020-08-02 11:15:24', NULL, NULL),
(29, 1, 'Naogaon', 1, NULL, NULL, NULL, '2020-08-06 14:19:46', NULL, NULL),
(30, 1, 'ctg', 1, NULL, NULL, NULL, '2020-08-08 14:12:50', NULL, NULL),
(31, 1, 'Uttara', 1, NULL, NULL, NULL, '2020-08-09 17:17:48', NULL, NULL),
(32, 1, 'Bagura', 1, NULL, NULL, NULL, '2020-08-11 15:32:12', NULL, NULL),
(33, 1, 'bandorbon', 1, NULL, NULL, NULL, '2020-08-13 10:25:45', NULL, NULL),
(34, 1, 'Thakurgaon', 1, NULL, NULL, NULL, '2020-08-13 13:51:31', NULL, NULL),
(35, 1, ' Jhenaidah', 1, NULL, NULL, NULL, '2020-08-17 18:48:16', NULL, NULL),
(36, 1, 'panchagor', 1, NULL, NULL, NULL, '2020-08-17 19:21:57', NULL, NULL),
(37, 1, 'Chadpur', 1, NULL, NULL, NULL, '2020-08-18 12:28:11', NULL, NULL),
(38, 1, 'Khulna', 1, NULL, NULL, NULL, '2020-08-18 21:20:08', NULL, NULL),
(39, 1, 'Noaga ', 1, NULL, NULL, NULL, '2020-08-20 18:30:07', NULL, NULL),
(40, 1, 'Lalmonirhat', 1, NULL, NULL, NULL, '2020-08-20 21:17:03', NULL, NULL),
(41, 1, ' Jamalpur', 1, NULL, NULL, NULL, '2020-08-22 10:08:51', NULL, NULL),
(42, 1, 'Rajbari ', 1, NULL, NULL, NULL, '2020-08-22 13:44:58', NULL, NULL),
(43, 1, 'Savar', 1, NULL, NULL, NULL, '2020-08-24 23:05:25', NULL, NULL),
(44, 1, 'shirajgonj', 1, NULL, NULL, NULL, '2020-08-25 12:23:40', NULL, NULL),
(45, 1, 'Madaripur', 1, NULL, NULL, NULL, '2020-08-27 13:10:57', NULL, NULL),
(46, 1, 'noakhali', 1, NULL, NULL, NULL, '2020-08-29 17:09:40', NULL, NULL),
(47, 1, 'Satkhira', 1, NULL, NULL, NULL, '2020-08-29 20:43:19', NULL, NULL),
(48, 1, 'rangpur', 1, NULL, NULL, NULL, '2020-09-21 15:34:38', NULL, NULL),
(49, 1, 'Lokkhipur ', 1, NULL, NULL, NULL, '2020-09-22 10:52:38', NULL, NULL),
(50, 1, 'Mymensingh', 1, NULL, NULL, NULL, '2020-10-10 12:19:18', NULL, NULL),
(51, 1, 'Barisal', 1, NULL, NULL, NULL, '2020-10-10 15:00:30', NULL, NULL),
(52, 1, 'Raipur', 1, NULL, NULL, NULL, '2020-10-12 17:29:44', NULL, NULL),
(53, 1, 'Narshingdi', 1, NULL, NULL, NULL, '2020-10-13 18:49:56', NULL, NULL),
(54, 1, 'Bogra', 1, NULL, NULL, NULL, '2020-10-17 16:25:24', NULL, NULL),
(55, 1, ' kishorgonj', 1, NULL, NULL, NULL, '2020-10-17 16:49:21', NULL, NULL),
(56, 1, 'Chadhpur ', 1, NULL, NULL, NULL, '2020-10-18 13:24:26', NULL, NULL),
(57, 1, 'norsindi', 1, NULL, NULL, NULL, '2020-10-18 16:23:00', NULL, NULL),
(58, 1, 'bogura', 1, NULL, NULL, NULL, '2020-10-19 13:39:26', NULL, NULL),
(59, 1, 'pirojpur', 1, NULL, NULL, NULL, '2020-10-19 16:34:57', NULL, NULL),
(60, 1, 'Kishorganj', 1, NULL, NULL, NULL, '2020-10-20 15:13:30', NULL, NULL),
(61, 1, 'Gaibandha', 1, NULL, NULL, NULL, '2020-10-21 11:37:10', NULL, NULL),
(62, 1, 'Rajhshahi', 1, NULL, NULL, NULL, '2020-10-21 13:11:26', NULL, NULL),
(63, 1, 'Laksmipur', 1, NULL, NULL, NULL, '2020-10-25 18:05:04', NULL, NULL),
(64, 1, ' Dhaka', 1, NULL, NULL, NULL, '2020-11-01 12:29:22', NULL, NULL),
(65, 1, ' Lobon chora', 1, NULL, NULL, NULL, '2020-11-03 18:18:14', NULL, NULL),
(66, 1, 'Narsingdi ', 1, NULL, NULL, NULL, '2020-11-04 18:34:35', NULL, NULL),
(67, 1, 'Manikganj', 1, NULL, NULL, NULL, '2020-11-05 14:38:13', NULL, NULL),
(68, 1, 'Brahmanbaria', 1, NULL, NULL, NULL, '2020-11-07 11:01:32', NULL, NULL),
(69, 1, 'Shariatpur', 1, NULL, NULL, NULL, '2020-11-07 17:49:26', NULL, NULL),
(70, 1, ' Nokhali Sadar', 1, NULL, NULL, NULL, '2020-11-09 13:20:40', NULL, NULL),
(71, 1, 'Joypurhat', 1, NULL, NULL, NULL, '2020-11-09 16:51:41', NULL, NULL),
(72, 1, 'Shariyatpur', 1, NULL, NULL, NULL, '2020-11-11 18:32:22', NULL, NULL),
(73, 1, 'Chandpur', 1, NULL, NULL, NULL, '2020-11-12 12:17:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_currency`
--

CREATE TABLE `sphp_currency` (
  `CurrencyID` int(11) NOT NULL,
  `CurrencyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyCode2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencySymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyMajorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyMinorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CurrencyIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_currency`
--

INSERT INTO `sphp_currency` (`CurrencyID`, `CurrencyName`, `CurrencyCode`, `CurrencyCode2`, `CurrencySymbol`, `CurrencyMajorName`, `CurrencyMinorName`, `CurrencyIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Bangladeshi Taka', 'BDT', 'BDT', 'Tk', 'Taka', 'Paisa', 1, NULL, NULL, NULL, '2019-02-03 14:06:12', '2019-02-03 14:06:12', NULL),
(2, 'Pakistani Rupee', 'PKR', 'PKR', 'Rs', 'Rupee', 'Paisa', 1, NULL, NULL, NULL, '2019-02-03 14:06:12', '2019-02-03 14:06:12', NULL),
(3, 'Indian Rupee', 'INR', 'INR', 'Rs', 'Rupee', 'Paisa', 1, NULL, NULL, NULL, '2019-02-03 14:06:12', '2019-02-03 14:06:12', NULL),
(4, 'British Pound', 'GBP', 'GBP', '£', 'Pound', 'Starling', 1, NULL, NULL, NULL, '2019-02-03 14:06:12', '2019-02-03 14:06:12', NULL),
(5, 'US Dollar', 'USD', 'US$', '$', 'Dollar', 'Cent', 1, NULL, NULL, NULL, '2019-02-03 14:06:12', '2019-02-03 14:06:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_datatype`
--

CREATE TABLE `sphp_datatype` (
  `DataTypeID` int(11) NOT NULL,
  `DataTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataTypeIdentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataTypeIcon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DataTypeIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_gender`
--

CREATE TABLE `sphp_gender` (
  `GenderID` int(11) NOT NULL,
  `GenderName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GenderIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_gender`
--

INSERT INTO `sphp_gender` (`GenderID`, `GenderName`, `GenderIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Female', 1, NULL, NULL, NULL, '2019-02-03 14:06:13', '2019-02-03 14:06:13', NULL),
(2, 'Male', 1, NULL, NULL, NULL, '2019-02-03 14:06:13', '2019-02-03 14:06:13', NULL),
(3, 'Other', 1, NULL, NULL, NULL, '2019-02-03 14:06:13', '2019-02-03 14:06:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_language`
--

CREATE TABLE `sphp_language` (
  `LanguageID` int(11) NOT NULL,
  `LanguageName` varchar(85) COLLATE utf8_unicode_ci NOT NULL,
  `LanguageNameNative` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LanguageCode` varchar(85) COLLATE utf8_unicode_ci NOT NULL,
  `LanguageRegionalCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LanguageIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) NOT NULL DEFAULT 0,
  `UserIDUpdated` int(11) NOT NULL DEFAULT 0,
  `UserIDLocked` int(11) NOT NULL DEFAULT 0,
  `TimeInserted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeLocked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_language`
--

INSERT INTO `sphp_language` (`LanguageID`, `LanguageName`, `LanguageNameNative`, `LanguageCode`, `LanguageRegionalCode`, `LanguageIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'English (United States)', 'English (United States)', 'EN', 'US', 1, 151, 0, 0, '2015-02-09 17:54:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Bengali (Bangladesh)', 'বাংলা (বাংলাদেশী)', 'BN', 'BD', 1, 151, 2, 0, '2015-02-09 18:23:56', '2019-02-10 09:50:21', '0000-00-00 00:00:00'),
(3, 'Arabic', 'عربى', 'AR', NULL, 1, 124, 2, 0, '2015-02-10 00:48:37', '2019-02-10 10:33:21', '0000-00-00 00:00:00'),
(4, 'Chinese (Simplified)', '簡體中文）', 'ZH', 'HANS', 1, 124, 2, 0, '2015-02-10 00:50:56', '2019-02-10 10:32:52', '0000-00-00 00:00:00'),
(5, 'Chinese (Traditional)', '中國傳統的）', 'ZH', 'HANT', 1, 124, 2, 0, '2015-02-10 00:51:39', '2019-02-10 10:32:26', '0000-00-00 00:00:00'),
(6, 'Czech', 'čeština', 'CS', NULL, 1, 124, 2, 0, '2015-02-10 00:52:11', '2019-02-10 10:34:24', '0000-00-00 00:00:00'),
(7, 'Danish', 'Dansk', 'DA', NULL, 1, 124, 0, 0, '2015-02-10 00:54:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'English (United Kingdom)', 'English (United Kingdom)', 'EN', 'UK', 1, 124, 0, 0, '2015-02-10 00:55:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'French', 'franÃ§ais', 'FR', NULL, 1, 124, 2, 0, '2015-02-10 00:55:38', '2015-03-10 02:06:16', '0000-00-00 00:00:00'),
(10, 'German', 'Deutsch', 'DE', NULL, 1, 124, 0, 0, '2015-02-10 00:55:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Hindi', 'हिंदी', 'HI', NULL, 1, 124, 2, 0, '2015-02-10 00:56:09', '2019-02-10 10:37:28', '0000-00-00 00:00:00'),
(12, 'Irish', 'Gaeilge', 'GA', NULL, 1, 124, 0, 0, '2015-02-10 00:56:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Japanese', '日本人', 'JA', NULL, 1, 124, 2, 0, '2015-02-10 00:56:35', '2019-02-10 10:38:45', '0000-00-00 00:00:00'),
(14, 'Korean', '한국어', 'KO', NULL, 1, 124, 2, 0, '2015-02-10 00:56:47', '2019-02-10 10:39:09', '0000-00-00 00:00:00'),
(15, 'Lao', 'àºžàº²àºªàº²àº¥àº²àº§', 'LO', NULL, 1, 124, 2, 0, '2015-02-10 00:57:00', '2015-03-10 02:07:42', '0000-00-00 00:00:00'),
(16, 'Malayalam', 'മലയാളം', 'ML', NULL, 1, 124, 2, 0, '2015-02-10 00:57:13', '2019-02-10 10:38:13', '0000-00-00 00:00:00'),
(17, 'Nepali', 'à¤¨à¥‡à¤ªà¤¾à¤²à¥€', 'NE', NULL, 1, 124, 2, 0, '2015-02-10 00:57:29', '2015-03-10 02:08:27', '0000-00-00 00:00:00'),
(18, 'Oriya', 'à¬“à¬¡à¬¼à¬¿à¬†', 'OR', NULL, 1, 124, 2, 0, '2015-02-10 00:57:42', '2015-03-10 02:08:45', '0000-00-00 00:00:00'),
(19, 'Polish', 'polski', 'PL', NULL, 1, 124, 2, 0, '2015-02-10 00:57:55', '2015-03-10 02:09:35', '0000-00-00 00:00:00'),
(20, 'Quechua', 'Kichwa', 'QU', NULL, 1, 124, 0, 0, '2015-02-10 00:58:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Russian', 'русский', 'RU', NULL, 1, 124, 2, 0, '2015-02-10 00:58:30', '2019-02-10 10:36:51', '0000-00-00 00:00:00'),
(22, 'Spanish', 'espaÃ±ol', 'ES', NULL, 1, 124, 2, 0, '2015-02-10 00:58:42', '2015-03-10 00:04:04', '0000-00-00 00:00:00'),
(23, 'Thai', 'ไทย', 'TH', NULL, 1, 124, 2, 0, '2015-02-10 00:58:59', '2019-02-10 10:36:12', '0000-00-00 00:00:00'),
(24, 'Ukrainian', 'Українська', 'UK', NULL, 1, 124, 2, 0, '2015-02-10 00:59:14', '2019-02-10 10:35:32', '0000-00-00 00:00:00'),
(25, 'Vietnamese', 'Tiếng Việt', 'VI', NULL, 1, 124, 2, 0, '2015-02-10 00:59:28', '2019-02-10 10:40:15', '0000-00-00 00:00:00'),
(26, 'Welsh', 'Cymraeg', 'CY', NULL, 1, 124, 0, 0, '2015-02-10 00:59:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Xhosa', 'isiXhosa', 'XH', NULL, 1, 124, 0, 0, '2015-02-10 00:59:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Yoruba', 'YorÃ¹bÃ¡', 'YO', NULL, 1, 124, 2, 0, '2015-02-10 01:00:14', '2015-03-10 00:06:20', '0000-00-00 00:00:00'),
(29, 'Zhuang', 'VaÆ…cueÅ‹Æ…', 'ZA', NULL, 1, 124, 2, 0, '2015-02-10 01:00:28', '2015-03-10 02:11:59', '0000-00-00 00:00:00'),
(30, 'Mongiliea', 'Mongli', 'MG', NULL, 1, 294, 0, 0, '2015-02-12 16:23:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Belarusian', 'беларускі', 'BE', NULL, 1, 2, 2, 0, '2015-03-04 02:54:42', '2019-02-10 10:34:00', '0000-00-00 00:00:00'),
(32, 'Pashto', 'Ù¾ÚšØªÙˆ', 'PS', NULL, 1, 2, 2, 0, '2015-03-04 02:59:07', '2015-03-10 02:09:07', '0000-00-00 00:00:00'),
(33, 'Dutch', 'Nederlands', 'NL', NULL, 1, 2, 0, 0, '2015-03-09 05:55:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sphp_log`
--

CREATE TABLE `sphp_log` (
  `LogID` int(11) NOT NULL,
  `LogTime` datetime NOT NULL,
  `LogType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogSource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogSubject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogAction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogDataType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogData` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogCallerFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogCallerFileLine` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `LogIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_log`
--

INSERT INTO `sphp_log` (`LogID`, `LogTime`, `LogType`, `LogSource`, `LogSubject`, `LogAction`, `LogDescription`, `LogDataType`, `LogData`, `LogCallerFile`, `LogCallerFileLine`, `UserID`, `LogIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, '2021-09-19 10:58:31', 'SECURITY', 'Application', 'User', 'Sign out', 'Guest Visitor (GUEST)', 'JSON', '{\"User\":{\"Email\":\"Guest@localhost\"}}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-19 10:58:31', NULL, NULL),
(2, '2021-09-19 10:58:42', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-19 10:58:42', NULL, NULL),
(3, '2021-09-21 14:32:30', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-21 14:32:30', NULL, NULL),
(4, '2021-09-21 14:32:40', 'SECURITY', 'Application', 'User', 'Sign out', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"}}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-21 14:32:40', NULL, NULL),
(5, '2021-09-21 16:30:38', 'APPLICATION', 'Database', 'Person', 'Remove', 'Guest Visitor (GUEST)', 'JSON', '{\"WhereClause\":[\"PersonID IN (1)\"]}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:30:38', NULL, NULL),
(6, '2021-09-21 16:31:31', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"2\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:31:31', NULL, NULL),
(7, '2021-09-21 16:31:42', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"2\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:31:42', NULL, NULL),
(8, '2021-09-21 16:32:41', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"3\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:32:41', NULL, NULL),
(9, '2021-09-21 16:32:51', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"4\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:32:51', NULL, NULL),
(10, '2021-09-21 16:34:24', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"5\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:34:24', NULL, NULL),
(11, '2021-09-21 16:34:54', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"6\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:34:54', NULL, NULL),
(12, '2021-09-21 16:35:01', 'APPLICATION', 'Database', 'Person', 'Add new', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"7\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:35:01', NULL, NULL),
(13, '2021-09-21 16:35:24', 'APPLICATION', 'Database', 'Person', 'Remove', 'Guest Visitor (GUEST)', 'JSON', '{\"WhereClause\":[\"PersonID IN (7, 6)\"]}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-21 16:35:24', NULL, NULL),
(14, '2021-09-22 14:19:18', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"4\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-22 14:19:18', NULL, NULL),
(15, '2021-09-22 14:19:41', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"4\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-22 14:19:41', NULL, NULL),
(16, '2021-09-22 14:19:53', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"3\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-22 14:19:53', NULL, NULL),
(17, '2021-09-22 14:20:07', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"3\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-22 14:20:07', NULL, NULL),
(18, '2021-09-22 15:21:13', 'APPLICATION', 'Database', 'Person', 'Edit', 'Guest Visitor (GUEST)', 'JSON', '{\"ID\":\"3\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-09-22 15:21:13', NULL, NULL),
(19, '2021-09-26 11:15:17', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 11:15:17', NULL, NULL),
(20, '2021-09-26 11:15:24', 'SECURITY', 'Application', 'User', 'Sign out', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"}}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 11:15:24', NULL, NULL),
(21, '2021-09-26 11:18:45', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 11:18:45', NULL, NULL),
(22, '2021-09-26 11:19:12', 'SECURITY', 'Application', 'User', 'Sign out', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"}}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 11:19:12', NULL, NULL),
(23, '2021-09-26 11:27:24', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 11:27:24', NULL, NULL),
(24, '2021-09-26 14:52:53', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 14:52:53', NULL, NULL),
(25, '2021-09-26 15:50:13', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 15:50:13', NULL, NULL),
(26, '2021-09-26 15:50:48', 'APPLICATION', 'Database', 'Person address', 'Add new', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"ID\":\"2\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-26 15:50:48', NULL, NULL),
(27, '2021-09-27 15:17:23', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-27 15:17:23', NULL, NULL),
(28, '2021-09-27 16:16:27', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-09-27 16:16:27', NULL, NULL),
(29, '2021-10-04 11:22:56', 'SECURITY', 'Session', 'User', 'Impersonate', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Name\":\"Anup Mondal\",\"Email\":\"anup@bondstein.com\",\"UserGroupIdentifierHighest\":\"CUSTOMER\"}}', '', 0, 2, 1, 2, NULL, NULL, '2021-10-04 11:22:56', NULL, NULL),
(30, '2021-10-04 11:23:03', 'SECURITY', 'Application', 'User', 'Sign out', 'Anup Mondal (CUSTOMER)', 'JSON', '{\"User\":{\"Email\":\"anup@bondstein.com\"}}', '', 0, 13, 1, 13, NULL, NULL, '2021-10-04 11:23:03', NULL, NULL),
(31, '2021-10-04 11:23:15', 'SECURITY', 'Application', 'User', 'Sign in', 'Authentication failed', 'JSON', '{\"Email\":\"Administrator@System.Dom\",\"IP\":\"::1\"}', '', 0, 0, 1, 0, NULL, NULL, '2021-10-04 11:23:15', NULL, NULL),
(32, '2021-10-04 11:23:26', 'SECURITY', 'Application', 'User', 'Sign in', 'System Administrator (ADMINISTRATOR)', 'JSON', '{\"User\":{\"Email\":\"Administrator@System.Dom\"},\"IP\":\"::1\"}', '', 0, 2, 1, 2, NULL, NULL, '2021-10-04 11:23:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_measure`
--

CREATE TABLE `sphp_measure` (
  `MeasureID` int(11) NOT NULL,
  `MeasureName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeasureCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeasureSymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeasureTypeID` int(11) DEFAULT NULL,
  `MeasureIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_measure`
--

INSERT INTO `sphp_measure` (`MeasureID`, `MeasureName`, `MeasureCode`, `MeasureSymbol`, `MeasureTypeID`, `MeasureIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Nos', 'Nos', 'x', 1, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:19:10', NULL),
(2, 'Pc', 'Pc', 'x', 1, 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(3, 'Gram', 'G', 'G', 3, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:23', NULL),
(4, 'Kilogram', 'Kg', 'Kg', 3, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:46', NULL),
(5, 'Celcius', 'C', '°', 5, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:04', NULL),
(6, 'Farenhite', 'F', '°', 5, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:16', NULL),
(7, 'Inch', 'In', 'In', 2, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:36', NULL),
(8, 'Meter', 'M', 'M', 2, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:53', NULL),
(9, 'Centimeter', 'Cm', 'Cm', 2, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:18:10', NULL),
(10, 'Mililitre', 'ml', 'ml', 4, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:19:01', NULL),
(11, 'Piece', 's', 's', 1, 1, NULL, 2, NULL, '2019-02-03 14:06:16', '2019-02-05 09:19:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_measuretype`
--

CREATE TABLE `sphp_measuretype` (
  `MeasureTypeID` int(11) NOT NULL,
  `MeasureTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeasureTypeIdentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MeasureTypeIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_measuretype`
--

INSERT INTO `sphp_measuretype` (`MeasureTypeID`, `MeasureTypeName`, `MeasureTypeIdentifier`, `MeasureTypeIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Count', 'COUNT', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(2, 'Length', 'LENGTH', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(3, 'Weight', 'WEIGHT', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(4, 'Volume', 'VOLUME', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(5, 'Temperature', 'TEMPERATURE', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL),
(6, 'Force', 'FORCE', 1, NULL, NULL, NULL, '2019-02-03 14:06:16', '2019-02-03 14:06:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_notification`
--

CREATE TABLE `sphp_notification` (
  `NotificationID` int(11) NOT NULL,
  `NotificationSignature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationEventTime` datetime NOT NULL,
  `NotificationSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `NotificationMessage` text COLLATE utf8_unicode_ci NOT NULL,
  `NotificationTypeID` int(11) DEFAULT NULL,
  `NotificationSourceID` int(11) DEFAULT NULL,
  `NotificationTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationFrom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserIDFrom` int(11) DEFAULT NULL,
  `UserIDTo` int(11) DEFAULT NULL,
  `NotificationAttemptTime` datetime DEFAULT NULL,
  `NotificationAttempt` int(11) NOT NULL DEFAULT 0,
  `NotificationSentTime` datetime DEFAULT NULL,
  `NotificationIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_notificationsource`
--

CREATE TABLE `sphp_notificationsource` (
  `NotificationSourceID` int(11) NOT NULL,
  `NotificationSourceName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationSourceIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationSourceIsActive` tinyint(11) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_notificationsource`
--

INSERT INTO `sphp_notificationsource` (`NotificationSourceID`, `NotificationSourceName`, `NotificationSourceIdentifier`, `NotificationSourceIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'System', 'SYSTEM', 1, NULL, NULL, NULL, '2019-09-05 07:46:05', NULL, NULL),
(2, 'Manual', 'MANUAL', 1, NULL, NULL, NULL, '2019-09-05 07:46:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_notificationtype`
--

CREATE TABLE `sphp_notificationtype` (
  `NotificationTypeID` int(11) NOT NULL,
  `NotificationTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationTypeIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NotificationTypeIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_notificationtype`
--

INSERT INTO `sphp_notificationtype` (`NotificationTypeID`, `NotificationTypeName`, `NotificationTypeIdentifier`, `NotificationTypeIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Mobile SMS', 'MOBILE_SMS', 1, NULL, NULL, NULL, '2019-09-03 12:08:55', NULL, NULL),
(2, 'Email', 'EMAIL', 1, NULL, NULL, NULL, '2019-09-03 12:08:55', NULL, NULL),
(3, 'Push', 'PUSH', 1, NULL, NULL, NULL, '2020-09-22 19:18:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_system_content`
--

CREATE TABLE `sphp_system_content` (
  `SystemContentID` int(11) NOT NULL,
  `SystemContentName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentIdentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentIsActive` tinyint(1) DEFAULT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_system_contentitem`
--

CREATE TABLE `sphp_system_contentitem` (
  `SystemContentItemID` int(11) NOT NULL,
  `SystemContentItemName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemCaption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemIcon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemPicture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemBanner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentItemApplicationURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SystemContentID` int(11) DEFAULT NULL,
  `SystemContentItemIsActive` tinyint(1) DEFAULT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_system_contentitemusergroup`
--

CREATE TABLE `sphp_system_contentitemusergroup` (
  `SystemContentItemUserGroupID` int(11) NOT NULL,
  `SystemContentItemID` int(11) DEFAULT NULL,
  `UserGroupID` int(11) DEFAULT NULL,
  `SystemContentItemUserGroupIsActive` tinyint(1) DEFAULT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_user`
--

CREATE TABLE `sphp_user` (
  `UserID` int(11) NOT NULL,
  `UserSignInName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPasswordHash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserNameFirst` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserNameMiddle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserNameLast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserBirthDate` date DEFAULT NULL,
  `UserDeathDate` date DEFAULT NULL,
  `GenderID` int(11) DEFAULT NULL,
  `UserPhoneMobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPhoneHome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPhoneWork` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPhoneOther` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPicture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPictureThumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressStreet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressPoliceStation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserAddressCountryID` int(11) DEFAULT NULL,
  `LanguageID` int(11) DEFAULT NULL,
  `UserSignUpTime` datetime DEFAULT NULL,
  `UserSignUpActivationKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserSignUpIsActivated` tinyint(1) NOT NULL,
  `UserPasswordResetKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserPasswordResetAttemptTime` datetime DEFAULT NULL,
  `UserPasswordResetAttemptCount` int(11) DEFAULT NULL,
  `UserIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_user`
--

INSERT INTO `sphp_user` (`UserID`, `UserSignInName`, `UserEmail`, `UserPasswordHash`, `UserNameFirst`, `UserNameMiddle`, `UserNameLast`, `UserBirthDate`, `UserDeathDate`, `GenderID`, `UserPhoneMobile`, `UserPhoneHome`, `UserPhoneWork`, `UserPhoneOther`, `UserURL`, `UserPicture`, `UserPictureThumbnail`, `UserAddressStreet`, `UserAddressPoliceStation`, `UserAddressCity`, `UserAddressZIP`, `UserAddressState`, `UserAddressCountryID`, `LanguageID`, `UserSignUpTime`, `UserSignUpActivationKey`, `UserSignUpIsActivated`, `UserPasswordResetKey`, `UserPasswordResetAttemptTime`, `UserPasswordResetAttemptCount`, `UserIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Guest', 'Guest@System.Dom', NULL, 'Guest', NULL, 'Visitor', '0000-00-00', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-02-03 14:06:14', '2019-02-03 14:06:14', NULL),
(2, 'Administrator', 'Administrator@System.Dom', '5f4dcc3b5aa765d61d8327deb882cf99', 'System', NULL, 'Administrator', '2019-01-31', NULL, 3, '+00000000', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 24, NULL, '2019-02-03 14:06:14', '2019-10-23 18:51:03', NULL),
(3, 'Member', 'Member@System.Dom', '5f4dcc3b5aa765d61d8327deb882cf99', 'General', NULL, 'User', '0000-00-00', NULL, 3, '+0000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, 2, NULL, '2019-02-03 14:06:14', '2019-02-10 08:55:35', NULL),
(8, 'Shahriar', 'Shahriar@SingularityBD.Com', '8dd43ae0638e1ce2690e2e3cfa653923', 'Shahriar', NULL, 'Kabir', '1978-07-19', NULL, 2, '+8801847464939', NULL, NULL, NULL, NULL, NULL, NULL, 'L#5, H#147, R#1, Baridhara DOHS', NULL, 'Dhaka', NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, 1, 2, 2, NULL, '2019-07-23 00:27:57', '2020-12-31 12:16:17', NULL),
(13, 'anup', 'anup@bondstein.com', 'bda3083124482f58ea35b182d658db99', 'Anup', NULL, 'Mondal', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, 1, 21, 2, NULL, '2020-10-27 16:57:56', '2021-01-13 16:25:14', NULL),
(14, 'anup12', 'anup12.m@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'anup12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31 00:00:00', '7F9DCE4D37E4446488FD30E482DA37F65344B90C28C94808AFA2865686FD2FAC', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-31 13:29:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_userdevice`
--

CREATE TABLE `sphp_userdevice` (
  `UserDeviceID` int(11) NOT NULL,
  `UserDeviceIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserDeviceUserAgent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserDeviceIP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserDeviceCountry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserDeviceCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserDeviceLatitude` float(13,9) DEFAULT NULL,
  `UserDeviceLongitude` float(13,9) DEFAULT NULL,
  `UserDeviceIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_userdevice`
--

INSERT INTO `sphp_userdevice` (`UserDeviceID`, `UserDeviceIdentifier`, `UserDeviceUserAgent`, `UserDeviceIP`, `UserDeviceCountry`, `UserDeviceCity`, `UserDeviceLatitude`, `UserDeviceLongitude`, `UserDeviceIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'ae372a61c5c72cfeb0d832a33924ae21-bca09089869a0310bf1d23d65cebb8d4-f966a21085a2e12b815620a177298d01-f0z43h00wk34nxz9jjfcby68f4ecorz1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0', '127.0.0.1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-15 14:32:25', NULL, NULL),
(2, 'd0f7d9822d2310f204d922bc95899247-1f552c5f2a0bbbbd9ff6a1c3bfdd5ef9-77c17cfe67dc99fb9abdb2929b8a480f-ck494tktojwo6l5g7utis6lf6wqs1xs1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-15 15:07:48', NULL, NULL),
(3, '2c84f8a642c4b770348c2aa295320925-bca09089869a0310bf1d23d65cebb8d4-0c0dd7d643c411575ebd99c708e5f1b7-g83egatavodd4yidmkk0mtj85vqyl6jr', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0', '127.0.0.1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-15 15:09:21', NULL, NULL),
(4, '35e4ccdf94af0f9ae3425f23e285dce8-bca09089869a0310bf1d23d65cebb8d4-f663467ef2a93f68324c2996ce525285-8z0eb63l60y5mrjy39rlz2sxpawru0l9', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0', '127.0.0.1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-15 15:42:49', NULL, NULL),
(5, '53c615fa63c0af00afdf09280eba102d-8d3fec2581d3961f3037851d5cc0039c-fto7id1651foclts5ggukf8ave-4b9lwd2d291sjc7ctdmospazkfkyo91w', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-16 15:09:55', NULL, NULL),
(6, '29a7f1faef252e55bd85fba574032ea7-8d3fec2581d3961f3037851d5cc0039c-9rd4v73ss99ua1iq1f45r8tqfs-al47b0ppfxabest7td2j4r8wajz5hetj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-17 14:49:45', NULL, NULL),
(7, '814394dd5e290329a5a8578e99979a7c-8d3fec2581d3961f3037851d5cc0039c-op793fkr64reba1hdo0r6t44kf-0fwqkg6fyfl7ouqok54j2pof0ifhmeal', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-17 17:05:05', NULL, NULL),
(8, 'b9abf6a39916a09fd36afbac04b0d4d7-8d3fec2581d3961f3037851d5cc0039c-0iaiva1l27b9jfhmta8cd1j2pj-3shxgqh8tkajs1p851fm8qxkzo8hhx7b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-23 14:33:33', NULL, NULL),
(9, 'f0f82ea7d47027d9b0b778bb357b6e46-8d3fec2581d3961f3037851d5cc0039c-mqe828mmeh3gdcgas55k56pqq8-rovj9itcef2qkqnij6h36aat0hlq46ts', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-23 16:25:08', NULL, NULL),
(10, 'f0291c76cd4b7e448ed2bc1b9b166406-57c2b4c157dca444b0d506e0ab9928a2-2umfaq4ns1oglsduv2v5d97qsm-c1kidkgf49k91zpbooagqs47e1g6ts2j', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-25 10:55:04', NULL, NULL),
(11, '700a488e42f0162a7ac44b086984c4d2-57c2b4c157dca444b0d506e0ab9928a2-0v12nesju40vqqnsmvm62qjf8b-b6dr4ygp27sd3p79nq1vrmec2ns9qqqi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', '::1', '', '', NULL, NULL, 1, 0, NULL, NULL, '2020-11-26 13:18:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_usergroup`
--

CREATE TABLE `sphp_usergroup` (
  `UserGroupID` int(11) NOT NULL,
  `UserGroupName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserGroupIdentifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserGroupWeight` float(11,3) NOT NULL,
  `UserGroupIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_usergroup`
--

INSERT INTO `sphp_usergroup` (`UserGroupID`, `UserGroupName`, `UserGroupIdentifier`, `UserGroupWeight`, `UserGroupIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 'Guest', 'GUEST', 10.000, 1, NULL, NULL, NULL, '2019-02-03 14:06:14', '2019-02-03 14:06:14', NULL),
(2, 'Administrator', 'ADMINISTRATOR', 100.000, 1, NULL, 24, NULL, '2019-02-03 14:06:14', '2019-09-30 01:59:01', NULL),
(3, 'Member', 'MEMBER', 50.000, 1, NULL, 24, NULL, '2019-02-03 14:06:14', '2019-09-30 01:59:08', NULL),
(4, 'Provider', 'PROVIDER', 75.000, 1, 24, NULL, NULL, '2019-09-30 01:58:53', NULL, NULL),
(5, 'Customer', 'CUSTOMER', 65.000, 1, 24, NULL, NULL, '2019-09-30 01:59:28', NULL, NULL),
(6, 'Distributor', 'DISTRIBUTOR', 72.000, 1, 24, NULL, NULL, '2020-05-11 06:57:56', NULL, NULL),
(7, 'Distributor agent', 'DISTRIBUTOR_AGENT', 69.000, 1, 24, NULL, NULL, '2020-05-11 06:58:19', NULL, NULL),
(8, 'Developer', 'DEVELOPER', 95.000, 1, 24, NULL, NULL, '2020-06-16 21:40:17', NULL, NULL),
(9, 'Technician', 'TECHNICIAN', 60.000, 1, 24, NULL, NULL, '2020-06-27 17:17:46', NULL, NULL),
(10, 'Operations', 'OPERATIONS', 85.000, 1, 24, NULL, NULL, '2020-07-20 22:37:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_useruserdevice`
--

CREATE TABLE `sphp_useruserdevice` (
  `UserUserDeviceID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserDeviceID` int(11) NOT NULL,
  `UserUserDeviceTimeActiveLast` datetime DEFAULT NULL,
  `UserUserDeviceIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_useruserdevice`
--

INSERT INTO `sphp_useruserdevice` (`UserUserDeviceID`, `UserID`, `UserDeviceID`, `UserUserDeviceTimeActiveLast`, `UserUserDeviceIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(1, 0, 1, '2020-11-15 14:40:08', 1, 0, NULL, NULL, '2020-11-15 14:40:08', NULL, NULL),
(2, 0, 5, '2020-11-23 13:15:16', 1, 0, NULL, NULL, '2020-11-16 15:41:42', NULL, NULL),
(4, 2, 5, '2020-11-16 16:54:14', 1, 2, NULL, NULL, '2020-11-16 16:54:14', NULL, NULL),
(12, 0, 8, '2020-11-23 16:20:59', 1, 0, NULL, NULL, '2020-11-23 16:20:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sphp_useruserdevicenotification`
--

CREATE TABLE `sphp_useruserdevicenotification` (
  `UserUserDeviceNotificationID` int(11) NOT NULL,
  `UserUserDeviceID` int(11) NOT NULL,
  `NotificationID` int(11) NOT NULL,
  `UserUserDeviceNotificationIsRead` tinyint(1) NOT NULL DEFAULT 0,
  `UserUserDeviceNotificationIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sphp_userusergroup`
--

CREATE TABLE `sphp_userusergroup` (
  `UserUserGroupID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `UserGroupID` int(11) DEFAULT NULL,
  `UserUserGroupIsActive` tinyint(1) NOT NULL,
  `UserIDInserted` int(11) DEFAULT NULL,
  `UserIDUpdated` int(11) DEFAULT NULL,
  `UserIDLocked` int(11) DEFAULT NULL,
  `TimeInserted` datetime DEFAULT NULL,
  `TimeUpdated` datetime DEFAULT NULL,
  `TimeLocked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sphp_userusergroup`
--

INSERT INTO `sphp_userusergroup` (`UserUserGroupID`, `UserID`, `UserGroupID`, `UserUserGroupIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `TimeInserted`, `TimeUpdated`, `TimeLocked`) VALUES
(8, 3, 3, 1, 2, NULL, NULL, '2019-02-10 08:55:35', NULL, NULL),
(17, 1, 1, 1, NULL, NULL, NULL, '2019-02-11 10:57:35', NULL, NULL),
(37, 2, 2, 1, 24, NULL, NULL, '2019-10-23 18:51:03', NULL, NULL),
(1255, 13, 5, 1, 2, NULL, NULL, '2021-01-13 16:25:14', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ab_person`
--
ALTER TABLE `ab_person`
  ADD PRIMARY KEY (`PersonID`),
  ADD KEY `PersonFirstName` (`PersonFirstName`),
  ADD KEY `PersonEmail` (`PersonEmail`),
  ADD KEY `GenderID` (`GenderID`);

--
-- Indexes for table `ab_personaddress`
--
ALTER TABLE `ab_personaddress`
  ADD PRIMARY KEY (`PersonAddressID`),
  ADD KEY `PersonAddressName` (`PersonAddressName`),
  ADD KEY `PersonID` (`PersonID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- Indexes for table `sphp_applicationchangelog`
--
ALTER TABLE `sphp_applicationchangelog`
  ADD PRIMARY KEY (`ApplicationChangeLogID`);

--
-- Indexes for table `sphp_applicationtraffic`
--
ALTER TABLE `sphp_applicationtraffic`
  ADD PRIMARY KEY (`ApplicationTrafficID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `sphp_country`
--
ALTER TABLE `sphp_country`
  ADD PRIMARY KEY (`CountryID`),
  ADD UNIQUE KEY `CountryName` (`CountryName`),
  ADD UNIQUE KEY `CountryISOCode` (`CountryISOCode`),
  ADD KEY `CountryIsActive` (`CountryIsActive`),
  ADD KEY `CountryCode` (`CountryCode`),
  ADD KEY `LanguageID` (`LanguageID`),
  ADD KEY `CurrencyID` (`CurrencyID`);

--
-- Indexes for table `sphp_countrystate`
--
ALTER TABLE `sphp_countrystate`
  ADD PRIMARY KEY (`CountryStateID`),
  ADD UNIQUE KEY `UniqueData` (`CountryID`,`StateName`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `StateName` (`StateName`),
  ADD KEY `CountryStateIsActive` (`CountryStateIsActive`);

--
-- Indexes for table `sphp_currency`
--
ALTER TABLE `sphp_currency`
  ADD PRIMARY KEY (`CurrencyID`),
  ADD UNIQUE KEY `CurrencyName` (`CurrencyName`);

--
-- Indexes for table `sphp_datatype`
--
ALTER TABLE `sphp_datatype`
  ADD PRIMARY KEY (`DataTypeID`),
  ADD UNIQUE KEY `DataTypeName` (`DataTypeName`),
  ADD UNIQUE KEY `DataTypeIdentifier` (`DataTypeIdentifier`);

--
-- Indexes for table `sphp_gender`
--
ALTER TABLE `sphp_gender`
  ADD PRIMARY KEY (`GenderID`),
  ADD UNIQUE KEY `GenderName` (`GenderName`);

--
-- Indexes for table `sphp_language`
--
ALTER TABLE `sphp_language`
  ADD PRIMARY KEY (`LanguageID`),
  ADD UNIQUE KEY `LanguageName` (`LanguageName`),
  ADD UNIQUE KEY `LanguageNameInNativeLanguage` (`LanguageNameNative`),
  ADD KEY `LanguageIsActive` (`LanguageIsActive`);

--
-- Indexes for table `sphp_log`
--
ALTER TABLE `sphp_log`
  ADD PRIMARY KEY (`LogID`);

--
-- Indexes for table `sphp_measure`
--
ALTER TABLE `sphp_measure`
  ADD PRIMARY KEY (`MeasureID`),
  ADD KEY `MeasureTypeID` (`MeasureTypeID`);

--
-- Indexes for table `sphp_measuretype`
--
ALTER TABLE `sphp_measuretype`
  ADD PRIMARY KEY (`MeasureTypeID`),
  ADD UNIQUE KEY `MeasureTypeName` (`MeasureTypeName`),
  ADD UNIQUE KEY `MeasureTypeIdentifier` (`MeasureTypeIdentifier`);

--
-- Indexes for table `sphp_notification`
--
ALTER TABLE `sphp_notification`
  ADD PRIMARY KEY (`NotificationID`),
  ADD UNIQUE KEY `UniqueNotification` (`NotificationEventTime`,`NotificationSubject`,`NotificationSignature`,`NotificationTypeID`,`NotificationTo`) USING BTREE,
  ADD KEY `NotificationEventTime` (`NotificationEventTime`),
  ADD KEY `NotificationSentTime` (`NotificationSentTime`),
  ADD KEY `NotificationAttempt` (`NotificationAttempt`),
  ADD KEY `NotificationSourceID` (`NotificationSourceID`),
  ADD KEY `NotificationTypeID` (`NotificationTypeID`),
  ADD KEY `NotificationIsActive` (`NotificationIsActive`) USING BTREE,
  ADD KEY `UserIDFrom` (`UserIDFrom`),
  ADD KEY `UserIDTo` (`UserIDTo`),
  ADD KEY `TimeInserted` (`TimeInserted`);

--
-- Indexes for table `sphp_notificationsource`
--
ALTER TABLE `sphp_notificationsource`
  ADD PRIMARY KEY (`NotificationSourceID`),
  ADD UNIQUE KEY `NotificationSourceName` (`NotificationSourceName`),
  ADD UNIQUE KEY `NotificationSourceIdentifier` (`NotificationSourceIdentifier`),
  ADD KEY `NotificationSourceIsActive` (`NotificationSourceIsActive`);

--
-- Indexes for table `sphp_notificationtype`
--
ALTER TABLE `sphp_notificationtype`
  ADD PRIMARY KEY (`NotificationTypeID`),
  ADD UNIQUE KEY `NotificationTypeName` (`NotificationTypeName`),
  ADD UNIQUE KEY `NotificationTypeIdentifier` (`NotificationTypeIdentifier`);

--
-- Indexes for table `sphp_system_content`
--
ALTER TABLE `sphp_system_content`
  ADD PRIMARY KEY (`SystemContentID`),
  ADD UNIQUE KEY `SystemContentName` (`SystemContentName`),
  ADD UNIQUE KEY `SystemContentIdentifier` (`SystemContentIdentifier`);

--
-- Indexes for table `sphp_system_contentitem`
--
ALTER TABLE `sphp_system_contentitem`
  ADD PRIMARY KEY (`SystemContentItemID`),
  ADD UNIQUE KEY `SystemContentItemName` (`SystemContentItemName`),
  ADD UNIQUE KEY `SystemContentItemCaption` (`SystemContentItemCaption`),
  ADD UNIQUE KEY `SystemContentItemApplicationURL` (`SystemContentItemApplicationURL`),
  ADD KEY `SystemContentID` (`SystemContentID`);

--
-- Indexes for table `sphp_system_contentitemusergroup`
--
ALTER TABLE `sphp_system_contentitemusergroup`
  ADD PRIMARY KEY (`SystemContentItemUserGroupID`),
  ADD KEY `SystemContentItemID` (`SystemContentItemID`),
  ADD KEY `UserGroupID` (`UserGroupID`);

--
-- Indexes for table `sphp_user`
--
ALTER TABLE `sphp_user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserSignInName`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD KEY `GenderID` (`GenderID`),
  ADD KEY `UserAddressCountryID` (`UserAddressCountryID`),
  ADD KEY `LanguageID` (`LanguageID`);

--
-- Indexes for table `sphp_userdevice`
--
ALTER TABLE `sphp_userdevice`
  ADD PRIMARY KEY (`UserDeviceID`),
  ADD UNIQUE KEY `UserDeviceIdentifier` (`UserDeviceIdentifier`),
  ADD KEY `UserDeviceIsActive` (`UserDeviceIsActive`),
  ADD KEY `TimeInserted` (`TimeInserted`);

--
-- Indexes for table `sphp_usergroup`
--
ALTER TABLE `sphp_usergroup`
  ADD PRIMARY KEY (`UserGroupID`),
  ADD UNIQUE KEY `UserGroupName` (`UserGroupName`),
  ADD UNIQUE KEY `UserGroupIdentifier` (`UserGroupIdentifier`);

--
-- Indexes for table `sphp_useruserdevice`
--
ALTER TABLE `sphp_useruserdevice`
  ADD PRIMARY KEY (`UserUserDeviceID`),
  ADD UNIQUE KEY `UniqueData` (`UserID`,`UserDeviceID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `UserDeviceID` (`UserDeviceID`),
  ADD KEY `UserUserDeviceIsActive` (`UserUserDeviceIsActive`),
  ADD KEY `UserUserDeviceTimeActiveLast` (`UserUserDeviceTimeActiveLast`);

--
-- Indexes for table `sphp_useruserdevicenotification`
--
ALTER TABLE `sphp_useruserdevicenotification`
  ADD PRIMARY KEY (`UserUserDeviceNotificationID`),
  ADD UNIQUE KEY `UniqueData` (`UserUserDeviceID`,`NotificationID`),
  ADD KEY `UserUserDeviceID` (`UserUserDeviceID`),
  ADD KEY `NotificationID` (`NotificationID`),
  ADD KEY `UserUserDeviceNotificationIsRead` (`UserUserDeviceNotificationIsRead`),
  ADD KEY `UserUserDeviceNotificationIsActive` (`UserUserDeviceNotificationIsActive`),
  ADD KEY `TimeInserted` (`TimeInserted`);

--
-- Indexes for table `sphp_userusergroup`
--
ALTER TABLE `sphp_userusergroup`
  ADD PRIMARY KEY (`UserUserGroupID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `UserGroupID` (`UserGroupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ab_person`
--
ALTER TABLE `ab_person`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ab_personaddress`
--
ALTER TABLE `ab_personaddress`
  MODIFY `PersonAddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sphp_applicationchangelog`
--
ALTER TABLE `sphp_applicationchangelog`
  MODIFY `ApplicationChangeLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_applicationtraffic`
--
ALTER TABLE `sphp_applicationtraffic`
  MODIFY `ApplicationTrafficID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `sphp_country`
--
ALTER TABLE `sphp_country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `sphp_countrystate`
--
ALTER TABLE `sphp_countrystate`
  MODIFY `CountryStateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sphp_currency`
--
ALTER TABLE `sphp_currency`
  MODIFY `CurrencyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sphp_datatype`
--
ALTER TABLE `sphp_datatype`
  MODIFY `DataTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_gender`
--
ALTER TABLE `sphp_gender`
  MODIFY `GenderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sphp_language`
--
ALTER TABLE `sphp_language`
  MODIFY `LanguageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sphp_log`
--
ALTER TABLE `sphp_log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sphp_measure`
--
ALTER TABLE `sphp_measure`
  MODIFY `MeasureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sphp_measuretype`
--
ALTER TABLE `sphp_measuretype`
  MODIFY `MeasureTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sphp_notification`
--
ALTER TABLE `sphp_notification`
  MODIFY `NotificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_notificationsource`
--
ALTER TABLE `sphp_notificationsource`
  MODIFY `NotificationSourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sphp_notificationtype`
--
ALTER TABLE `sphp_notificationtype`
  MODIFY `NotificationTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sphp_system_content`
--
ALTER TABLE `sphp_system_content`
  MODIFY `SystemContentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_system_contentitem`
--
ALTER TABLE `sphp_system_contentitem`
  MODIFY `SystemContentItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_system_contentitemusergroup`
--
ALTER TABLE `sphp_system_contentitemusergroup`
  MODIFY `SystemContentItemUserGroupID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_user`
--
ALTER TABLE `sphp_user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `sphp_userdevice`
--
ALTER TABLE `sphp_userdevice`
  MODIFY `UserDeviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sphp_usergroup`
--
ALTER TABLE `sphp_usergroup`
  MODIFY `UserGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sphp_useruserdevice`
--
ALTER TABLE `sphp_useruserdevice`
  MODIFY `UserUserDeviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sphp_useruserdevicenotification`
--
ALTER TABLE `sphp_useruserdevicenotification`
  MODIFY `UserUserDeviceNotificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sphp_userusergroup`
--
ALTER TABLE `sphp_userusergroup`
  MODIFY `UserUserGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
