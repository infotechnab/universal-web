-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 14, 2013 at 04:46 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `universaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`aid`, `title`, `body`, `status`, `image`) VALUES
(1, 'Universal', 'lksjflksjdflksjfdsfsdfsdf  sadfdshfdsf\r\nafsdfdsfhds''fsdf sdfsdfdsfh dsfsdjfklsdf sdfdskfsdklf sdfdkfkldsfj dskfjdksfjlkdsf dfkdsfjds fdfkldsjfds fjdkfdsklfjds fkldsfjlksdjf ds fdfjdslkfj sdflkdfklsdfj sdfdskljflksdj fdsfdsjfkljds fdsjkfldsj fsdkfjsldkjf dsfklsdfj fgffdgfdgdfgdfgdfgdfgdfgdfgdfgdfgfdgdfgdfgdfdskfkldsjf dsklfjldsjf ', 1, '8_n2.jpg'),
(3, 'ewrwer', 'werwerwer\r\nsdfsdfsdf', 1, 'login_page14.png');

-- --------------------------------------------------------

--
-- Table structure for table `gadget`
--

CREATE TABLE IF NOT EXISTS `gadget` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `gadget`
--

INSERT INTO `gadget` (`gid`, `title`, `body`, `status`) VALUES
(1, 'Contact', '9847131310', 1),
(2, 'Branch Office', 'Butwal, Rupandehi', 1),
(3, 'Contact', '01-4228420,  9851116170, 9843150555, 9807497400', 1),
(4, 'Email', 'universalnp@gmail.com', 1),
(5, 'Head Office', 'Babarmahal-11, (Opp. Tax Office), Kathmandu, Nepal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `login`, `passwd`) VALUES
(1, 'Universal', 'Suppliers', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE IF NOT EXISTS `meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `name`, `value`) VALUES
(1, 'siteurl', 'www.alternativeconceptnepal.com'),
(2, 'title', 'lsjj chaged again sdfsd'),
(3, 'keywords', 'lsjldjflsldjf ljsldjfl sldfjlsdjf'),
(4, 'description', 'jsldjf lls dfljs dlfjlss');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `body` longtext CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `image`, `status`, `date`) VALUES
(1, 'Introduction', 'We import goods/ equipment from India and third country. Driven by competitiveness, we constantly redefine our quality standards. Our machines have become the benchmark for several other companies which are in their respective pursuit of excellence. We make a concerted effort to control quality and ensure customer satisfaction. We also offer an optimal after sales service. Our aim is to deliver an unparalleled level of service with one thing in mind – ''your complete satisfaction''.\r\n<br/>', 'cblordrd4.gif', 0, '2013-07-31 06:32:28'),
(2, 'About Us', 's;f', 'default2.jpg', 1, '2013-08-12 06:00:44'),
(3, 'Mission/Vision', 'We import goods/ equipment from India and third country. Driven by competitiveness, we constantly redefine our quality standards. Our machines have become the benchmark for several other companies which are in their respective pursuit of excellence. We make a concerted effort to control quality and ensure customer satisfaction. We also offer an optimal after sales service. Our aim is to deliver an unparalleled level of service with one thing in mind – ''your complete satisfaction''.\r\n<br/>', 'kh1.jpg', 0, '2013-07-31 09:03:31'),
(4, 'Objective', 'As ‘state-of-the-art’ equipment in office automation products, we intend to improve the quality of our products with consistent efforts and investments, and provide cost effective and innovative products and services to our fast expanding lists of satisfied clients.\r\n<br/>', 'my_frnsn.jpg', 0, '2013-08-01 05:51:46'),
(5, 'CCTV Surveillance System', 'fsdf', 'default.jpg', 1, '2013-08-12 05:58:07'),
(6, 'Note Counting Machine', 'sdhfkhfs', 'default3.jpg', 1, '2013-08-12 06:01:27'),
(7, 'Metal Detector', 'sdlfjf', 'default4.jpg', 1, '2013-08-12 06:02:09'),
(8, 'Fake Note Detector', 'lsdjfsdf', 'default5.jpg', 1, '2013-08-12 06:02:37'),
(9, 'Electronics Time Attendance', 'ksdjfsl', 'default6.jpg', 1, '2013-08-12 06:03:51'),
(10, 'ATM Paper Roll', 'lsdkjf', 'default7.jpg', 1, '2013-08-12 06:04:21'),
(11, 'Fire Extinguisher', 'dlkjf', 'default8.jpg', 1, '2013-08-12 06:04:50'),
(12, 'Cheque Writer', 'sdfj', 'default9.jpg', 1, '2013-08-12 06:05:12'),
(13, 'Queue Liner Poles', 'lsdjf', 'default10.jpg', 1, '2013-08-12 06:05:43'),
(14, 'EPABX', 'dljf', 'default11.jpg', 1, '2013-08-12 06:08:53'),
(15, 'Door Access System Lock', ';lsfdj', 'default12.jpg', 1, '2013-08-12 06:09:40'),
(16, 'Note Binding Machine', 'slkdfj', 'default13.jpg', 1, '2013-08-12 06:10:03'),
(17, 'Door Alarm', 'lsjdf', 'default14.jpg', 1, '2013-08-12 06:10:20'),
(18, 'Display Stand', 'sdhf', 'default15.jpg', 1, '2013-08-12 06:10:42'),
(19, 'Services', 'slkdf', '8_n1.jpg', 1, '2013-08-12 06:11:04'),
(20, 'Contact us', '\r\n\r\nHead Office : Babarmahal-11, (Opp. Tax Office), Kathmandu, Nepal\r\n\r\nContact : 01-4228420, 9851116170, 9843150555, 9807497400\r\n\r\nEmail : universalnp@gmail.com\r\n\r\nBranch Office : Butwal, Rupandehi\r\n\r\nContact : 9847131310\r\n', '', 1, '2013-08-01 06:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sid`, `image`, `title`) VALUES
(3, 'cctv_camera_alarm_cctv_ir_camera_surveillance_ir_equipment1.jpg', 'IR Camera'),
(4, 'iphoneapplehomecctvsecurity.jpg', 'Mobile View'),
(7, 'untitled2.jpg', 'Dome Camera');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
