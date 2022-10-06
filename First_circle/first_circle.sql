-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 10:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `BSB_no` int(50) NOT NULL,
  `acc_no` int(50) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `psw`, `BSB_no`, `acc_no`, `balance`) VALUES
(11101, 'David Conner', 'david123', 63120, 10045578, '$45000');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `show_trans`
--

CREATE TABLE `show_trans` (
  `client_id` int(50) NOT NULL,
  `trans_id` int(50) NOT NULL,
  `recieptno` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transferfunds`
--

CREATE TABLE `transferfunds` (
  `Trans_id` int(50) NOT NULL,
  `client_id` int(50) NOT NULL,
  `payee_BSB` int(50) NOT NULL,
  `payee_accNO` int(50) NOT NULL,
  `payee_name` varchar(50) NOT NULL,
  `mbno` int(50) NOT NULL,
  `amt` varchar(50) NOT NULL,
  `desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transferfunds`
--

INSERT INTO `transferfunds` (`Trans_id`, `client_id`, `payee_BSB`, `payee_accNO`, `payee_name`, `mbno`, `amt`, `desc`) VALUES
(23434, 11101, 11102, 10046798, 'Arjun Kapoor', 443356998, '-$7800', 'Payment for Air ticket Melb-Bris.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `show_trans`
--
ALTER TABLE `show_trans`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `recieptno` (`recieptno`),
  ADD KEY `trans_id` (`trans_id`);

--
-- Indexes for table `transferfunds`
--
ALTER TABLE `transferfunds`
  ADD PRIMARY KEY (`Trans_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11103;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `show_trans`
--
ALTER TABLE `show_trans`
  ADD CONSTRAINT `show_trans_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `show_trans_ibfk_3` FOREIGN KEY (`trans_id`) REFERENCES `transferfunds` (`Trans_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
