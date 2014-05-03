-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2012 at 09:43 PM
-- Server version: 5.1.61
-- PHP Version: 5.3.5-1ubuntu7.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oldschema`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_uname` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_passwd` blob NOT NULL,
  `user_fname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_token` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_gender` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_address` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_city` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_postal` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_country` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_contact_no` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_status` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'Inactive',
  `user_online` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'No',
  `user_last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_logout_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_uname` (`user_uname`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `user_token` (`user_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_uname`, `user_email`, `user_passwd`, `user_fname`, `user_lname`, `user_token`, `user_gender`, `user_address`, `user_city`, `user_postal`, `user_country`, `user_contact_no`, `user_status`, `user_online`, `user_last_login`, `user_logout_time`) VALUES
(1, 'admin', 'admin@el.com', 0x9df9b96e442b, 'Super', 'Administrator', 'none', 'Male', '', '', '', '', '', 'Active', 'No', '2012-02-16 15:52:01', '2011-12-13 15:57:10'),
(2, 'guser', 'nitesh.apte@el.com', 0x9df9b96e442b, 'Nitesh', 'Apte', 'wsse4d', 'Male', '', '', '', '', '', 'Inactive', 'No', '2011-10-19 13:47:50', '0000-00-00 00:00:00'),
(8, '32c786bf', 'el.comr@gmail.com', 0x3332633738366266, 'F1', 'L1', '32c786bf', '', '', '', '', '', '', 'Active', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '9cae8262', 'nitesh.el.comapte@el.com', 0x3963616538323632, 'F2', 'L2', '9cae8262', '', '', '', '', '', '', 'Active', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2b15e984', 'chanel.comep@gmail.com', 0x3262313565393834, 'F3', 'L3', '2b15e984', '', '', '', '', '', '', 'Inactive', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '233618a0', 'prael.comdra@csinc.in', 0x3233333631386130, 'F4', 'L4', '233618a0', '', '', '', '', '', '', 'Inactive', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '7330895f', 'promotional@el.com', 0x0f98f8ad04fc638d, 'Promotional', 'Admin', '7330895f', '', '', '', '', '', '', 'Active', 'No', '2011-11-25 22:15:01', '2011-11-25 22:19:14'),
(15, 'cbdbb6f8', 'event@el.com', 0xd0c5aa7bbaf038b7, 'Event', 'Admin', 'cbdbb6f8', '', '', '', '', '', '', 'Active', 'No', '2011-12-09 17:21:49', '2011-11-25 16:38:08'),
(16, '4b8c38a0', 'news@el.com', 0xa0921d3ab950c3df, 'News', 'Admin', '4b8c38a0', '', '', '', '', '', '', 'Active', 'No', '2011-12-09 16:52:45', '2011-11-23 12:32:45'),
(17, '705d0284', 'question@el.com', 0x0f157e726f84036a, 'Question', 'Admin', '705d0284', '', '', '', '', '', '', 'Active', 'No', '2011-12-15 11:50:40', '2011-11-25 17:29:27'),
(18, '6276efda', 'nitesh@el.com', 0xdfa26468c432b172, 'Nitesh1', 'Apte', '6276efda', '', '', '', '', '', '9922939828', 'Active', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '21dd5f14', 'some@some.com', 0xa868a82732644567, 'SomeFirstname', 'SomeLAstName', '21dd5f14', '', '', '', '', '', '3442344545251244', 'Active', 'No', '2011-11-11 19:44:54', '2011-11-01 00:00:00'),
(21, 'cb950bf8', 'rael.comdha.mel.com@radmoh.com', 0xd0c5e7aa34ed34bb, 'Radha', 'Mohan', 'cb950bf8', '', '', '', '', '', '98978989989', 'Inactive', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '738e2bc6', 'niteel.comshapte@el.com', 0x0f984f5ed6bbaa13, 'Nitesh', 'Apte', '738e2bc6', '', '', '', '', '', '99999999999', 'Inactive', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '4eb8e6b2', 'dada@assdfs.com', 0xa0eea493cafbb134, 'nitesh', 'apye', '4eb8e6b2', '', '', '', '', '', '808534085034', 'Inactive', 'No', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
