-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2016 at 04:35 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'ruhina05', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_reserve`
--

CREATE TABLE `bus_reserve` (
  `id` int(50) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `bus_info` varchar(100) NOT NULL,
  `city_from` varchar(50) NOT NULL,
  `city_to` varchar(50) NOT NULL,
  `seat` int(100) NOT NULL,
  `fare` int(100) NOT NULL,
  `dtime` time NOT NULL,
  `arrtime` time NOT NULL,
  `dept_date` date NOT NULL,
  `arr_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_reserve`
--

INSERT INTO `bus_reserve` (`id`, `bus_name`, `bus_info`, `city_from`, `city_to`, `seat`, `fare`, `dtime`, `arrtime`, `dept_date`, `arr_date`) VALUES
(1, 'Ena Transport (Pvt) Ltd', 'Hino, AK1J Super Plus ', 'Dhaka', 'Cox''s Bazar', 100, 500, '02:00:00', '06:30:00', '2016-07-21', '2016-07-22'),
(2, 'Green Line Paribahan', 'Scania, Business Class AC', '1', '2', 150, 500, '00:00:01', '00:00:09', '0000-00-00', '0000-00-00'),
(3, 'Soudia Air Con', 'Mercedes Benz, AC, AC', 'Dhaka', 'Khulna', 35, 1100, '02:00:00', '05:30:00', '2016-07-21', '2016-07-22'),
(4, 'Saintmartin Paribahan', 'Hino, 1J Pluss AC', 'Dhaka', 'Bogra', 50, 430, '01:00:00', '17:41:00', '2016-07-21', '2016-07-23'),
(5, 'Soudia Air Con', 'Scania, Business Class AC', 'Bogra', 'Dhaka', 45, 360, '15:00:00', '18:00:00', '2016-07-22', '2016-07-25'),
(6, 'Ena Transport (Pvt) Ltd', 'Hino, AK1J Super Plus ', 'Dhaka', 'Bogra', 46, 360, '22:00:00', '01:00:00', '2016-07-21', '2016-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_list`
--

CREATE TABLE `reserve_list` (
  `id` int(11) NOT NULL,
  `total_reserve` varchar(11) NOT NULL,
  `busno` varchar(30) NOT NULL,
  `transaction_code` varchar(10) NOT NULL,
  `setnum` varchar(100) NOT NULL,
  `seat_remain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve_list`
--

INSERT INTO `reserve_list` (`id`, `total_reserve`, `busno`, `transaction_code`, `setnum`, `seat_remain`) VALUES
(40, '4', '4', 'gvoat65p', '1, 2, 3, 4, ', ''),
(41, '6', '4', '0wa54bwa', '5, 6, 7, 8, 9, 10, ', ''),
(42, '3', '6', '34xfmgd7', '1, 2, 3, ', ''),
(43, '3', '6', '6ex4ycux', '4, 5, 6, ', '');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_section`
--

CREATE TABLE `reserve_section` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `seat` varchar(11) NOT NULL,
  `setnum` varchar(100) NOT NULL,
  `transaction_code` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `payable` varchar(11) NOT NULL,
  `busno` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve_section`
--

INSERT INTO `reserve_section` (`id`, `firstname`, `lastname`, `contact`, `address`, `seat`, `setnum`, `transaction_code`, `status`, `payable`, `busno`, `date`) VALUES
(17, 'ashna', 'aman', '0839454', 'faeraerfeere ', '50', '1, 2, 3, 4, ', 'gvoat65p', '', '1720', '4', '2016-07-21'),
(18, 'ayesha', 'erere', '64534342', 'fereraerereraerfer', '46', '5, 6, 7, 8, 9, 10, ', '0wa54bwa', '', '2580', '4', '2016-07-21'),
(19, 'fdefedfe', 'ererrde ', 'aerearer ', 'ereareggtare', '46', '1, 2, 3, ', '34xfmgd7', '', '1080', '6', '2016-07-21'),
(20, 'rfgrtae', 'tgeraerf', '867675', 'feraere', '43', '4, 5, 6, ', '6ex4ycux', '', '1080', '6', '2016-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `route_one`
--

CREATE TABLE `route_one` (
  `route_id` int(10) NOT NULL,
  `route_to` varchar(50) NOT NULL,
  `route_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_one`
--

INSERT INTO `route_one` (`route_id`, `route_to`, `route_from`) VALUES
(1, 'Dhaka', 'Dhaka'),
(2, 'Dinajpur', 'Dinajpur'),
(3, 'Cox''s Bazar', 'Cox''s Bazar'),
(4, 'Bogra', 'Bogra'),
(5, 'Khulna', 'Khulna'),
(6, 'Moulvibazar', 'Moulvibazar'),
(7, 'Jessore', 'Jessore'),
(8, 'Tangail', 'Tangail'),
(9, 'Panchagor', 'Panchagor'),
(10, 'Feni', 'Feni'),
(11, 'Noagaon', 'Noagaon'),
(12, 'Sylhet', 'Sylhet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_reserve`
--
ALTER TABLE `bus_reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve_list`
--
ALTER TABLE `reserve_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve_section`
--
ALTER TABLE `reserve_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_one`
--
ALTER TABLE `route_one`
  ADD PRIMARY KEY (`route_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bus_reserve`
--
ALTER TABLE `bus_reserve`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reserve_list`
--
ALTER TABLE `reserve_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `reserve_section`
--
ALTER TABLE `reserve_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `route_one`
--
ALTER TABLE `route_one`
  MODIFY `route_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
