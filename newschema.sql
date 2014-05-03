-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2012 at 09:41 PM
-- Server version: 5.1.61
-- PHP Version: 5.3.5-1ubuntu7.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newschema`
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
  `user_created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_logout_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_uname` (`user_uname`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `user_token` (`user_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_table`
--
