-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 10:22 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-meter`
--

-- --------------------------------------------------------

--
-- Table structure for table `date_wise`
--

CREATE TABLE `date_wise` (
  `id` int(11) NOT NULL,
  `meterId` int(11) NOT NULL,
  `date` date NOT NULL,
  `units_date` int(11) NOT NULL,
  `max_units_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_wise`
--

INSERT INTO `date_wise` (`id`, `meterId`, `date`, `units_date`, `max_units_date`) VALUES
(30, 1001, '2019-09-30', 17, 25),
(29, 1001, '2019-09-29', 17, 25),
(28, 1001, '2019-09-28', 17, 25),
(27, 1001, '2019-09-27', 17, 25),
(26, 1001, '2019-09-26', 17, 25),
(25, 1001, '2019-09-25', 17, 25),
(24, 1001, '2019-09-24', 17, 25),
(23, 1001, '2019-09-23', 17, 25),
(22, 1001, '2019-09-22', 17, 25),
(21, 1001, '2019-09-21', 17, 25),
(20, 1001, '2019-09-20', 17, 25),
(19, 1001, '2019-09-19', 14, 25),
(18, 1001, '2019-09-18', 14, 25),
(17, 1001, '2019-09-17', 14, 25),
(16, 1001, '2019-09-16', 14, 25),
(15, 1001, '2019-09-15', 14, 25),
(14, 1001, '2019-09-14', 14, 25),
(13, 1001, '2019-09-13', 18, 25),
(12, 1001, '2019-09-12', 18, 25),
(11, 1001, '2019-09-11', 18, 25),
(10, 1001, '2019-09-10', 18, 25),
(9, 1001, '2019-09-09', 18, 25),
(8, 1001, '2019-09-08', 11, 25),
(7, 1001, '2019-09-07', 15, 25),
(6, 1001, '2019-09-06', 15, 25),
(5, 1001, '2019-09-05', 15, 25),
(4, 1001, '2019-09-04', 15, 25),
(3, 1001, '2019-09-03', 15, 25),
(2, 1001, '2019-09-02', 15, 25),
(1, 1001, '2019-09-01', 11, 25);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `meterId` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `meterId`, `password`) VALUES
(1, 1001, 'user1001'),
(2, 1002, 'user1002'),
(3, 1003, 'user1004');

-- --------------------------------------------------------

--
-- Table structure for table `month_wise`
--

CREATE TABLE `month_wise` (
  `id` int(11) NOT NULL,
  `meterId` int(11) NOT NULL,
  `month_date` date NOT NULL,
  `units` float NOT NULL,
  `rooms` int(11) NOT NULL,
  `max_limit` float NOT NULL,
  `cost` float NOT NULL,
  `pred_units` float NOT NULL,
  `pred_cost` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_wise`
--

INSERT INTO `month_wise` (`id`, `meterId`, `month_date`, `units`, `rooms`, `max_limit`, `cost`, `pred_units`, `pred_cost`) VALUES
(1, 1001, '2019-09-01', 520, 4, 600, 1912, 550, 2110),
(2, 1001, '2019-08-01', 530, 4, 600, 1978, 530, 2176),
(3, 1001, '2019-07-01', 525, 4, 600, 1912, 550, 2110),
(4, 1001, '2019-06-01', 580, 4, 600, 2308, 600, 2440),
(5, 1001, '2019-05-01', 585, 4, 600, 2308, 595, 2440),
(6, 1001, '2019-04-01', 555, 4, 600, 2110, 580, 2308),
(7, 1001, '2019-03-01', 540, 4, 600, 1978, 570, 2176),
(8, 1001, '2019-02-01', 570, 4, 600, 2176, 595, 2440),
(9, 1001, '2019-01-01', 560, 4, 600, 2176, 580, 2308);

-- --------------------------------------------------------

--
-- Table structure for table `room_wise`
--

CREATE TABLE `room_wise` (
  `id` int(11) NOT NULL,
  `meterId` int(11) NOT NULL,
  `month_date` date NOT NULL,
  `name` varchar(20) NOT NULL,
  `current_units` float NOT NULL,
  `predicted_units` float NOT NULL,
  `max_pred_units` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_wise`
--

INSERT INTO `room_wise` (`id`, `meterId`, `month_date`, `name`, `current_units`, `predicted_units`, `max_pred_units`) VALUES
(1, 1001, '2019-09-01', 'Bedroom1', 131, 143, 150),
(2, 1001, '2019-09-01', 'Bedroom2', 85, 102, 110),
(3, 1001, '2019-09-01', 'Hall', 164, 188, 190),
(4, 1001, '2019-09-01', 'Kitchen', 43, 62, 70),
(5, 1001, '2019-09-01', 'Misc', 107, 116, 120),
(6, 1001, '2019-08-01', 'Bedroom1', 133, 138, 140),
(7, 1001, '2019-08-01', 'Bedroom2', 83, 95, 100),
(8, 1001, '2019-08-01', 'Hall', 160, 170, 175),
(9, 1001, '2019-08-01', 'Kitchen', 41, 49, 52),
(10, 1001, '2019-08-01', 'Misc', 103, 110, 115),
(11, 1001, '2019-07-01', 'Bedroom1', 137, 145, 150),
(12, 1001, '2019-07-01', 'Bedroom2', 80, 90, 95),
(13, 1001, '2019-07-01', 'Hall', 160, 172, 175),
(14, 1001, '2019-07-01', 'Kitchen', 43, 50, 55),
(15, 1001, '2019-07-01', 'Misc', 105, 110, 115);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `date_wise`
--
ALTER TABLE `date_wise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_wise`
--
ALTER TABLE `month_wise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_wise`
--
ALTER TABLE `room_wise`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `date_wise`
--
ALTER TABLE `date_wise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `month_wise`
--
ALTER TABLE `month_wise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_wise`
--
ALTER TABLE `room_wise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
