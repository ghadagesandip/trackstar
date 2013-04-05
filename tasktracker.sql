-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2013 at 09:10 PM
-- Server version: 5.1.63
-- PHP Version: 5.3.5-1ubuntu7.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tasktracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue`
--

CREATE TABLE IF NOT EXISTS `tbl_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `project_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_issue_project` (`project_id`),
  KEY `FK_issue_owner` (`owner_id`),
  KEY `FK_issue_requester` (`requester_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_issue`
--

INSERT INTO `tbl_issue` (`id`, `name`, `description`, `project_id`, `type_id`, `status_id`, `owner_id`, `requester_id`, `create_time`, `create_user_id`, `update_time`, `update_user_id`) VALUES
(1, 'asd', 'asd a', 1, 1, 1, 1, 2, '0000-00-00 00:00:00', 5, '0000-00-00 00:00:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE IF NOT EXISTS `tbl_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` text,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`id`, `name`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`) VALUES
(1, 'Pixelcms', 'cms project', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(2, 'ISF', 'cms', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL),
(3, 'WWISE', 'CMS', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_user_assignment`
--

CREATE TABLE IF NOT EXISTS `tbl_project_user_assignment` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `FK_user_project` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project_user_assignment`
--

INSERT INTO `tbl_project_user_assignment` (`project_id`, `user_id`, `create_time`, `create_user_id`, `update_time`, `update_user_id`) VALUES
(1, 1, NULL, 0, NULL, 0),
(1, 2, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `last_login_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `username`, `password`, `last_login_time`, `create_time`, `create_user_id`, `update_time`, `update_user_id`) VALUES
(1, 'test1@notanaddress.com', 'Test_User_One', '5a105e8b9d40e1329780d62ea2265d8a', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 'test2@notanaddress.com', 'Test_User_Two', 'ad0234829205b9033196ba818f7a872b', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
