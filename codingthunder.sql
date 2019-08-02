-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2019 at 04:26 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`srno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'Jigar', 'jigar@gmail.com', '1234567890', 'Hello World', '2019-07-30 07:26:37'),
(2, 'Vijay Barad', 'vijay@gmail.com', '7894561230', 'dfjsldjsedwke', '2019-07-30 08:05:31'),
(3, 'Vijay Barad', 'vijay@gmail.com', '7894561230', 'hghjhggfhg', '2019-07-30 09:51:24'),
(4, 'Vijay Barad', 'vijay@gmail.com', '7894561230', 'weiwiruwioeuroiwe\r\n', '2019-07-30 09:55:59'),
(5, 'Vijay Barad', 'vijay@gmail.com', '7894561230', 'eflsjfdsldfj', '2019-07-30 10:04:38'),
(6, 'Maulik Savaliay', 'maulik@gmail.com', '8140006049', 'HEELOO I AM MAULIK', '2019-07-31 11:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`srno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is My First Post''s Title', 'This is My First Post', 'first-post', 'Hello World.... This is My First Post On flask framwork of Python', 'home-bg.jpg', '2019-08-02 15:24:52'),
(2, 'Flask - Python Framework', 'It is My Second Post', 'flask-post', 'Welcome to Flask’s documentation. Get started with Installation and then get an overview with the Quickstart. There is also a more detailed Tutorial that shows how to create a small but complete application with Flask. Common patterns are described in the Patterns for Flask section. The rest of the docs describe each component of Flask in detail, with a full reference in the API section.', '', '2019-08-02 03:09:58'),
(3, 'Meet Django\r\n', 'this artical about what is django??', 'django-art', 'Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.', '', '2019-08-02 03:14:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
