-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2019 at 03:37 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_circle`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `psw`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_register1`
--

DROP TABLE IF EXISTS `user_register1`;
CREATE TABLE IF NOT EXISTS `user_register1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `height` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `psw` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register1`
--

INSERT INTO `user_register1` (`id`, `name`, `email`, `address`, `hobbies`, `height`, `weight`, `phone`, `psw`) VALUES
(1, 'vasu', 'vasu@gmail.com', 'Victoria, Melbourne', 'Reading, Gyming', '6.0 Feet', '52 KG', '8885642457', '123'),
(2, 'Elliot', 'e@gmail.com', 'Melbourne', 'Hacking', '5.5 Feet', '60 KG', '8985656642', '123'),
(3, 'Tony Stark', 'tony@yahoo.com', 'Perth', 'Robotics', '5.8 Feet', '58 KG', '8985685642', '123'),
(5, 'Darline', 'd@g.com', 'victoria', 'software making', '5.5 Feet', '55 KG', '8989545462', '123'),
(6, 'denish', 'd@g.com', 'victoria', 'Game making', '5.5 Feet', '55 KG', '8989545462', '1212');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
