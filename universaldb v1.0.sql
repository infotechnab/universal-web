-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2013 at 10:49 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`aid`, `title`, `body`, `status`, `image`) VALUES
(1, 'Universal', 'Universal Office Suppliers launched a Official Web Site.', 1, '0');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
(1, 'siteurl', 'www.universaloffice.com.np.com'),
(2, 'title', 'Universal'),
(3, 'keywords', 'cctv'),
(4, 'description', 'Security Product Suppliers');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pid`, `title`, `body`, `image`, `status`, `date`) VALUES
(1, 'Introduction', 'Universal Office Suppliers is established in January 2010, under the supervision from a team of Universal Trade Center London & Universal Trade Center Gugangzhou China.  Universal Office Suppliers deals with office automation and the field of technology marketing of bank equipment.  We undertake value added marketing, sales, distribution and technological services.\r\n<br/>\r\nWe import goods/ equipment from India and third country. Driven by competitiveness, we constantly redefine our quality standards. Our machines have become the benchmark for several other companies which are in their respective pursuit of excellence. We make a concerted effort to control quality and ensure customer satisfaction. We also offer an optimal after sales service. Our aim is to deliver an unparalleled level of service with one thing in mind – ''your complete satisfaction''.', 'introduction.jpg', 1, '2013-07-31 06:32:28'),
(2, 'About Us', 'Universal Office Suppliers is managed by the best professionals from the field of marketing with sufficient experience. We have a technical back up of well-trained maintenance technician.\r\n', 'about_us.jpg', 1, '2013-08-12 06:00:44'),
(3, 'Mission/Vision', 'Customer satisfaction through excellence in quality is our mission. So, each and every activity in our field is subject to stringent quality checks. Our company has always endeavored for attaining impeccable quality.\r\n\r\n ', 'Mission_vision.jpg', 1, '2013-07-31 09:03:31'),
(4, 'Objective', 'As ‘state-of-the-art’ equipment in office automation products, we intend to improve the quality of our products with consistent efforts and investments, and provide cost effective and innovative products and services to our fast expanding lists of satisfied clients.\r\n<br/>', 'Objective2.jpg', 1, '2013-08-01 05:51:46'),
(5, 'CCTV Surveillance System', 'cctv', 'cctv.jpg', 1, '2013-08-12 05:58:07'),
(6, 'Note Counting Machine', 'Ntoe Conting Machine', 'currency.jpg', 1, '2013-08-12 06:01:27'),
(7, 'Metal Detector', 'Metal Detector', 'Metal-Detector-Terascan.jpg', 1, '2013-08-12 06:02:09'),
(8, 'Fake Note Detector', 'Fake Note Detector', 'fake_note_detector_sld-16.jpg', 1, '2013-08-12 06:02:37'),
(9, 'Electronics Time Attendance', 'Electronics Time Attendance', 'fingerprint-time-attendance.jpg', 1, '2013-08-12 06:03:51'),
(10, 'ATM Paper Roll', 'ATM Paper Roll', 'atm_roll_paper.jpg', 1, '2013-08-12 06:04:21'),
(11, 'Fire Extinguisher', 'Fire Extinguisher', 'fire_extinguishers.jpg', 1, '2013-08-12 06:04:50'),
(12, 'Cheque Writer', 'Cheque Writer', 'check_writer.jpg', 1, '2013-08-12 06:05:12'),
(13, 'Queue Liner Poles', 'Queue Liner Poles', 'queue_line_pole.jpg', 1, '2013-08-12 06:05:43'),
(14, 'EPABX', 'Queue Liner Poles', 'epabx.jpg', 1, '2013-08-12 06:08:53'),
(15, 'Door Access System Lock', 'Door Access System Lock', 'door_acess.png', 1, '2013-08-12 06:09:40'),
(16, 'Note Binding Machine', 'Note Binding Machine', 'note-binding-machine.jpg', 1, '2013-08-12 06:10:03'),
(17, 'Door Alarm', 'Door Alarm', 'door-alarms.jpg', 1, '2013-08-12 06:10:20'),
(18, 'Display Stand', 'Display Stand', 'display_stands.jpg', 1, '2013-08-12 06:10:42'),
(19, 'Services', 'We are renowned for Bank equipments that are customized to suit the requirements of our clients. We unveil our special range of quality products.', 'services.jpg', 1, '2013-08-12 06:11:04'),
(20, 'Contact us', 'Head Office : Babarmahal-11, (Opp. Tax Office), Kathmandu, Nepal <br/> <br/>\r\n\r\nContact : 01-4228420, 9851116170, 9843150555, 9807497400 <br/><br/>\r\n\r\nEmail : universalnp@gmail.com <br/><br/>\r\n\r\nBranch Office : Butwal, Rupandehi <br/><br/>\r\n\r\nContact : 9847131310 <br/><br/>\r\n', 'contactus_banner.jpg', 1, '2013-08-01 06:03:30');

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
